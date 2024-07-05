# `v5.0.0` — Krypton<sup>36</sup> Upgrade

## Description

This proposal will perform a software upgrade of the Noble chain to the [`v5.0.0`](https://github.com/noble-assets/noble/releases/tag/v5.0.0) release. The upgrade is planned for block [`7947000`](https://www.mintscan.io/noble/block/7947000), estimated to occur on Tue, July 9th, around 15:30 UTC. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely adding the `x/aura` module, allowing for the native issuance of [Ondo's US Dollar Yield (**USDY**)](https://ondo.finance/usdy) asset. For a more in-depth description, please check out the [release notes](https://github.com/noble-assets/noble/releases/tag/v5.0.0) and well as the [changelog](https://github.com/noble-assets/noble/blob/v5.0.0/CHANGELOG.md).

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is recommended that you build this from source using the following instructions:

```shell
# Clone the repository
git clone https://github.com/noble-assets/noble
# Navigate to the repository
cd noble
# Checkout the release tag
git checkout v5.0.0
# Build from source
make install
```

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
23b2d0ebd740337846c008765639601361118a1b994b9455cfdd6de92f734480  ./nobled_linux-amd64
2613a68eface75386139b17f213fae471d1e98e5dd565a4edd9a9c6adac6fd38  ./nobled_linux-arm64
```
