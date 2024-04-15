# `v4.1.0` — Fusion Upgrade

## Description

This proposal will perform a software upgrade of the Noble chain to the [`v4.1.0`](https://github.com/noble-assets/noble/releases/tag/v4.1.0) release. The upgrade is planned for block [`5797500`](https://www.mintscan.io/noble/blocks/5797500), estimated to occur on Wed, April 17th, around 14:00 UTC. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely adding the `x/forwarding` module. For a more in-depth description, please check out the [release notes](https://github.com/noble-assets/noble/releases/tag/v4.1.0) and well as the [changelog](https://github.com/noble-assets/noble/blob/v4.1.0/CHANGELOG.md).

## NMM Instructions

To perform this upgrade, we must first collect the signatures of all participants of the Noble Maintenance Multisig.

First, make sure your environment is set up following the [multisig](../../multisig) instructions.

After, you can sign the upgrade using the following command:

```shell
# NOTE: You must replace the "from" field with your address.
nobled tx sign unsigned.json \
  --multisig noble1z5asz4edtrnayjjxzxetkvwear0f2dd8amwkhd \
  --from noble1svj4j8tt2wfd8wsswn274h2kkpp5phstfppt2r \
  --ledger \
  --chain-id noble-1 \
  --node https://noble-rpc.polkachu.com:443
```

Once you have signed, please share your signature with the Noble Core Team. Once enough signatures (5/7) have been collected, we will broadcast the upgrade on chain.

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is recommended that you build this from source using the following instructions:

```shell
# Clone the repository
git clone https://github.com/noble-assets/noble
# Navigate to the repository
cd noble
# Checkout the release tag
git checkout v4.1.0
# Build from source
make install
```

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
9f07dceccc8c7805f4c2ad3f67830780d91a117fc66b3e81e65f554c0795c1d8  ./nobled_linux-amd64
72ccfc54ce83f667fec95e3005731f111ba45b0f14dab6aaf1d6b259e6348830  ./nobled_linux-arm64
```
