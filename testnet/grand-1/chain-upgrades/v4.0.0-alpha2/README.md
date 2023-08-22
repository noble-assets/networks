---

# Upgrade to v4.0.0-alpha2

## Overview

We are excited to announce the upcoming software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition us to `v4.0.0-alpha2`. This upgrades adds stability to the cctp and router modules for continued testing.

**Key Details:**
- **Target Block:** [`2667500`](https://testnet.mintscan.io/noble-testnet/blocks/2667500)
- **Estimated Date & Time:** Wed, August 23rd, around 11am EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade moment.)*

## Step-by-Step Upgrade Instructions

1. **Set Halt Height:** All validators must set the halt height to `2667500`. There is no on chain instruction to halt.
2. **Use Pre-Built Binaries:** Choose the appropriate binary for your system:
   - [AMD](./nobled_linux-amd64)
   - [ARM](./nobled_linux-arm64)


### Using Docker?

Pull the latest image with:

```shell
docker pull ghcr.io/strangelove-ventures/heighliner/noble:v4.0.0-alpha2
```

### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
6d876ff2cbe626672d8cb155360c95436a5c79f0f7bbd78362b124496eb939eb  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
35b03fb0ad2590aa4f74073fea22a6cd2982a5c35bc655e1e8d77dcd775c4591  nobled_linux-arm64
```

---
