package e2e_test

import (
	"context"
	"encoding/json"
	"testing"
	"time"

	"github.com/strangelove-ventures/interchaintest/v4"
	"github.com/strangelove-ventures/interchaintest/v4/chain/cosmos"
	"github.com/strangelove-ventures/interchaintest/v4/ibc"
	"github.com/stretchr/testify/require"
	"go.uber.org/zap/zaptest"
)

func TestGenesis(t *testing.T) {
	ctx := context.Background()
	logger := zaptest.NewLogger(t)
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
						Version:    "v4.0.1",
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
				ModifyGenesis: func(cc ibc.ChainConfig, b []byte) ([]byte, error) {
					var gen map[string]any
					err := json.Unmarshal(b, &gen)
					if err != nil {
						return nil, err
					}
					gen["genesis_time"] = time.Now().UTC().Format(time.RFC3339)
					return json.Marshal(gen)
				},
			},
		},
	})

	chains, err := factory.Chains(t.Name())
	require.NoError(t, err)

	noble := chains[0].(*cosmos.CosmosChain)

	err = noble.StartWithGenesisFile(ctx, t.Name(), client, network, "../genesis.json")
	require.NoError(t, err)
}
