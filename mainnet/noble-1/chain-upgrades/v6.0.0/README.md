# `v6.0.0` — Xenon<sup>54</sup> Upgrade

## Description

This proposal will perform a software upgrade of the Noble chain to the [`v6.0.0`](https://github.com/noble-assets/noble/releases/tag/v6.0.0) release. The upgrade is planned for block [`11110000`](https://www.mintscan.io/noble/block/11110000), estimated to occur on Thu, August 29th, around 16:00 UTC. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely adding the `x/halo` module, allowing for the native issuance of [Hashnote's US Yield Coin (**USYC**)](https://usyc.hashnote.com) asset. For a more in-depth description, please check out the [release notes](https://github.com/noble-assets/noble/releases/tag/v6.0.0) and well as the [changelog](https://github.com/noble-assets/noble/blob/v6.0.0/CHANGELOG.md).

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is recommended that you build this from source using the following instructions:

```shell
# Clone the repository
git clone https://github.com/noble-assets/noble
# Navigate to the repository
cd noble
# Checkout the release tag
git checkout v6.0.0
# Build from source
make install
```

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
bdcc52ac80d6a08bb81c7665c0a92600a4772ef97ca1a51ef1e786230bad3ff1  ./nobled_linux-amd64
3838b47c442e9af547de38e744daa5ac75f208f9d0eca9b54b36b9e0445aaf61  ./nobled_linux-arm64
```
