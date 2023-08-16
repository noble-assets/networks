# `v4.0.0-alpha2` Upgrade

## Description

This proposal will perform a software upgrade of the Noble `grand-1` testnet chain to the [`v4.0.0-alpha2`](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2) release. The upgrade is planned for block [`2578000`](https://testnet.mintscan.io/noble-testnet/blocks/2578000), estimated to occur on Wed, August 17th, around 11am EST. This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.

This upgrade includes significant changes, namely adding a Circle CCTP module and a Router module. For a more in-depth description, please check out the [release notes](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2) and well as the [full changelog](https://github.com/strangelove-ventures/noble/compare/v3.0.0...v4.0.0-alpha2).

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use this release artifact [binary](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-alpha2).

Verifying the checksum of your binary is crucial to ensure you're running the correct version.

### Docker

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0-alpha2 /bin/nobled

# AMD64 hosts
1155511b2ecc9310df4c5c3f0fa8df98b79f5ef5d82d8a38f137b9915b97a35e  /bin/nobled

# ARM64 hosts
9bfb3bc9490d5ea2470b029b09b19ac44d6ad3ba85f000413b0244e9848acece  /bin/nobled
```

### Binary

```shell
# AMD64 hosts
$ sha256sum nobled_linux_amd64
1155511b2ecc9310df4c5c3f0fa8df98b79f5ef5d82d8a38f137b9915b97a35e  nobled_linux_amd64

# ARM64 hosts
$ sha256sum nobled_linux_arm64
9bfb3bc9490d5ea2470b029b09b19ac44d6ad3ba85f000413b0244e9848acece  nobled_linux_arm64
```
