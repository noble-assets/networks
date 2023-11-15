# Upgrade to `v4.1.0-rc.0`

## Overview

We are excited to share the next software upgrade for Noble's testnet Grand (`grand-1`). This upgrade will transition the network to the [`v4.1.0-rc.0`](https://github.com/strangelove-ventures/noble/releases/tag/v4.1.0-rc.0) release of Noble.

**Key Details:**
- **Target Block:** [`3942000`](https://testnet.mintscan.io/noble-testnet/blocks/3942000)
- **Estimated Date & Time:** Thursday, November 16th, around 2:30pm UTC. *(This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](https://github.com/strangelove-ventures/noble/pkgs/container/noble/147904876?tag=v4.1.0-rc.0) or the appropriate binary for your system:

- [AMD](https://github.com/strangelove-ventures/noble/releases/download/v4.1.0-rc.0/nobled_linux-amd64)
- [ARM](https://github.com/strangelove-ventures/noble/releases/download/v4.1.0-rc.0/nobled_linux-arm64)

### Binary Checksums

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
aaa4783346e078d77671944f7eecfd07b8f43c2d637d8dda2a68ae98a19128a9  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
bb506ef3b628fdebf8d6cda9b62639e8b0d348dcf70e3b187cc7fd8f14a7f532  nobled_linux-arm64
```
