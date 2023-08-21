# `v4.0.0-alpha2` Upgrade

## Description

This proposal will perform a software upgrade of the Noble `grand-1` testnet chain to the [`v4.0.0-alpha2`](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2) release. The upgrade is planned for block [`2667500`](https://testnet.mintscan.io/noble-testnet/blocks/2667500), estimated to occur on Wed, August 23rd, around 11am EST. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely adding a Circle CCTP module and a Router module. For a more in-depth description, please check out the [release notes](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2) and well as the [full changelog](https://github.com/strangelove-ventures/noble/compare/v3.0.0...v4.0.0-alpha2).

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use this release artifact [binary](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2).

Verifying the checksum of your binary is crucial to ensure you're running the correct version.

### Docker

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0-alpha2 /bin/nobled
6d876ff2cbe626672d8cb155360c95436a5c79f0f7bbd78362b124496eb939eb  /bin/nobled

```

### Binary

```shell
$ sha256sum nobled
6d876ff2cbe626672d8cb155360c95436a5c79f0f7bbd78362b124496eb939eb  nobled
```
