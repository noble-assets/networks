# `v3.1.0` — argon<sup>86</sup> Upgrade

## Description

This proposal will perform a software upgrade of the Noble chain to the [`v3.1.0`](https://github.com/strangelove-ventures/noble/releases/tag/v3.1.0) release. The upgrade is planned for block [`2672000`](https://www.mintscan.io/noble/blocks/2672000), estimated to occur on Wed, September 20th, around 16:12 UTC. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely changeme. For a more in-depth description, please check out the [release notes](https://github.com/strangelove-ventures/noble/releases/tag/v3.1.0) and well as the [full changelog](https://github.com/strangelove-ventures/noble/compare/v2.0.0...v3.1.0).

## NMM Instructions

To perform this upgrade, we must first collect the signatures of all participants of the Noble Maintenance Multisig.

First, make sure your environment is set up following the [multisig](https://github.com/strangelove-ventures/noble-networks/tree/main/mainnet/noble-1/multi-sig) instructions.

After, you can sign the upgrade using the following command:

```shell
# Example using Strangelove's address.
# NOTE: You must replace the "from" field with your address.
nobled tx sign unsigned.json \
  --multisig noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
  --from noble130mdu9a0etmeuw52qfxk73pn0ga6gawkt8zz65 \
  --chain-id noble-1 \
  --account-number 7 \
  --sequence 2 \
  --sign-mode amino-json \
  --offline \
  --output-document "signatures/strangelove.json"
```

Once you have signed, please submit a PR to this repository. Once enough signatures (5/7) have been collected, we will broadcast the upgrade on chain.

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is recommended that you build this from source using the following instructions:

```shell
# Clone the repository
git clone https://github.com/strangelove-ventures/noble
# Navigate to the repository
cd noble
# Checkout the release tag
git checkout v3.1.0
# Build from source
make install
```

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
changeme  nobled_darwin_amd64
changeme  nobled_darwin_arm64
changeme  nobled_linux_amd64
changeme  nobled_linux_arm64
```
