# Upgrade to `v4.1.0-rc.4`

## Overview

We are excited to share the next software upgrade for Noble's testnet Grand (`grand-1`). This upgrade will transition the network to the [`v4.1.0-rc.4`](https://github.com/noble-assets/noble/releases/tag/v4.1.0-rc.4) release of Noble.

**Key Details:**
- **Target Block:** [`6183000`](https://www.mintscan.io/noble-testnet/block/6183000)
- **Estimated Date & Time:** Monday, April 15th, around 2pm UTC. *(This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](https://github.com/noble-assets/noble/pkgs/container/noble/203490566?tag=v4.1.0-rc.4) or the appropriate binary for your system:

- [AMD](https://github.com/noble-assets/noble/releases/download/v4.1.0-rc.4/nobled_linux-amd64)
- [ARM](https://github.com/noble-assets/noble/releases/download/v4.1.0-rc.4/nobled_linux-arm64)

### Binary Checksums

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
15b5a146d074c2d221c363c1adf0df41322858775a353eaacde721397cd16474  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
033941294b6e04351c4e6bee5e253a42f1ff622cd6cf645e18eff01ea7c85da4  nobled_linux-arm64
```
