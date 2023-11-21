# Grand Rehearsal 1

The Noble Core Team is conducting a testnet rehearsal in coordination with both the [Informal Systems](https://informal.systems) and [Hypha](https://hypha.coop) teams. These rehearsals are to test Noble's migration from a standalone Proof of Authority (PoA) chain to a consumer chain. All current validators of the `grand-1` network are automatically included in this rehearsal network and expected to spin up the necessary infrastructure.

## Schedule

| Date                                                                             | Description                                 |
|----------------------------------------------------------------------------------|---------------------------------------------|
| [2023-11-14T11:28:58Z](https://testnet.mintscan.io/noble-testnet/blocks/3910193) | Export `grand-1` as `grand-rehearsal-1`     |
| 2023-11-22T17:00:00Z                                                             | `grand-rehearsal-1` starts producing blocks |

## Instructions

Reiterating, only validators of the current `grand-1` network will be able to participate in the genesis event of this new `grand-rehearsal-1` chain. That said, you will first need to install the correct version of `nobled` in order to start your validator. Please run the following commands:

```shell
git clone https://github.com/strangelove-ventures/noble.git
cd noble
git checkout v4.0.1
make install
```

If you've configured your PATH correctly, you should be able to run `nobled version` and it should return `v4.0.1`.

Next, you will want to initialise your validators home directory with the following command:

```shell
nobled init <insert your moniker here> --chain-id grand-rehearsal-1
```

This should create the `$HOME/.noble` directory.

After, you can copy the correct `genesis.json` file:

```shell
wget -P $HOME/.noble/config https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/testnet/grand-rehearsal-1/genesis.json
```

The final step is to copy your `priv_validator_key.json` file from your `grand-1` validator into `$HOME/.noble/config/priv_validator_key.json`.

Once all these steps are completed, you will be able to run your validator via `nobled start` and participate in the launch of the network!
