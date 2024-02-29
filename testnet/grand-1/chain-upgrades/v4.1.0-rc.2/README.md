# Upgrade to `v4.1.0-rc.2`

## Overview

We are excited to share the next software upgrade for Noble's testnet Grand (`grand-1`). This upgrade will transition the network to the [`v4.1.0-rc.2`](https://github.com/noble-assets/noble/releases/tag/v4.1.0-rc.2) release of Noble.

**Key Details:**
- **Target Block:** [`5513000`](https://www.mintscan.io/noble-testnet/block/5513000)
- **Estimated Date & Time:** Friday, March 1st, around 4pm UTC. *(This time is not exact as block times vary, so please monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](https://github.com/noble-assets/noble/pkgs/container/noble/184978691?tag=v4.1.0-rc.2) or the appropriate binary for your system:

- [AMD](https://github.com/noble-assets/noble/releases/download/v4.1.0-rc.2/nobled_linux-amd64)
- [ARM](https://github.com/noble-assets/noble/releases/download/v4.1.0-rc.2/nobled_linux-arm64)

### Binary Checksums

Verifying the checksum of your built binary is crucial to ensure you're running the correct version.

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
c96c0b09ae04e2a780393ebcaaa3309270047565b4ce39e54705f8b71a6665d3  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
dafc4c14796b1f8cd30db54c7ef134e24b09f051809cc1f9f0eb6ac858ce5385  nobled_linux-arm64
```
