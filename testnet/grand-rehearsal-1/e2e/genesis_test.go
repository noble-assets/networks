package e2e_test

import (
	"context"
	"os"
	"testing"

	"github.com/strangelove-ventures/interchaintest/v4"
	"github.com/strangelove-ventures/interchaintest/v4/chain/cosmos"
	"github.com/strangelove-ventures/interchaintest/v4/ibc"
	"github.com/strangelove-ventures/interchaintest/v4/testreporter"
	"github.com/strangelove-ventures/interchaintest/v4/testutil"
	"github.com/stretchr/testify/require"
	"go.uber.org/zap/zaptest"
)

func TestGenesis(t *testing.T) {
	ctx := context.Background()
	logger := zaptest.NewLogger(t)
	reporter := testreporter.NewNopReporter()
	execReporter := reporter.RelayerExecReporter(t)
	client, network := interchaintest.DockerSetup(t)

	factory := interchaintest.NewBuiltinChainFactory(logger, []*interchaintest.ChainSpec{
		{
			ChainConfig: ibc.ChainConfig{
				Type:    "cosmos",
				Name:    "noble",
				ChainID: "grand-rehearsal-1",
				Images: []ibc.DockerImage{
					{
						Repository: "ghcr.io/strangelove-ventures/noble",
						Version:    "v4.0.0",
						UidGid:     "1025:1025",
					},
				},
				Bin:            "nobled",
				Bech32Prefix:   "noble",
				Denom:          "ustake",
				CoinType:       "118",
				GasPrices:      "0.0ustake",
				GasAdjustment:  5,
				TrustingPeriod: "504h",
				NoHostMount:    false,
				ModifyGenesis: func(_ ibc.ChainConfig, _ []byte) ([]byte, error) {
					return os.ReadFile("../genesis.json")
				},
			},
		},
	})

	chains, err := factory.Chains(t.Name())
	require.NoError(t, err)

	noble := chains[0].(*cosmos.CosmosChain)
	interchain := interchaintest.NewInterchain().AddChain(noble)

	require.NoError(t, interchain.Build(ctx, execReporter, interchaintest.InterchainBuildOptions{
		TestName:  t.Name(),
		Client:    client,
		NetworkID: network,
	}))

	t.Cleanup(func() {
		_ = interchain.Close()
	})

	require.NoError(t, testutil.WaitForBlocks(ctx, 10, noble))
}
