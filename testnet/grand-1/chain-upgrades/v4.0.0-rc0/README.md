# Upgrade to `v4.0.0-rc0`

## Overview

We are excited to share the next software upgrade for Noble's testnet Grand (`grand-1`). This upgrade will transition the network to the [`v4.0.0-rc0`](https://github.com/strangelove-ventures/noble/releases/tag/v4.0.0-rc0) release of Noble.

**Key Details:**
- **Target Block:** [`3748000`](https://testnet.mintscan.io/noble-testnet/blocks/3748000)
- **Estimated Date & Time:** Friday, November 3rd, around 3pm UTC. *(This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](https://github.com/strangelove-ventures/noble/pkgs/container/noble/143371323?tag=v4.0.0-rc0) or the appropriate binary for your system:

- [AMD](https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-rc0/nobled_linux-amd64)
- [ARM](https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-rc0/nobled_linux-arm64)

### Binary Checksums

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
73a56fddb340e6dae161987d3f6d1aac3d01bc5df9efa1693b42ba01e79d72d1  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
2d489395c684a0d6f7b00c092866805a5f98a453a1908135bd7e5d93aa21b6e0  nobled_linux-arm64
```
