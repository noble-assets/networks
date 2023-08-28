# Upgrade to v4.0.0-alpha3

## Overview

We are excited to announce the next software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition the network to `v4.0.0-alpha3`. This upgrade adds TBD.

**Key Details:**
- **Target Block:** [`2772300`](https://testnet.mintscan.io/noble-testnet/blocks/2772300)
- **Estimated Date & Time:** Thursday, August 24th, around 11am EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade time.)*

## Step-by-Step Upgrade Instructions

1. **Set Halt Height:** All validators must set the halt height to `2682700`. There is no on chain instruction to halt.
2. **Use Pre-Built Binaries:** Choose the appropriate binary for your system:
   - [AMD](./nobled_linux-amd64)
   - [ARM](./nobled_linux-arm64)


### Using Docker?

You can grab the binaries directly from the latest image with:

```shell
docker pull ghcr.io/strangelove-ventures/heighliner/noble:v4.0.0-alpha3
docker create -it --entrypoint sh --name amd --platform linux/amd64 ghcr.io/strangelove-ventures/heighliner/noble:v4.0.0-alpha3
docker create -it --entrypoint sh --name arm --platform linux/arm64 ghcr.io/strangelove-ventures/heighliner/noble:v4.0.0-alpha3
docker cp amd:/bin/nobled ./nobled_linux-amd64
docker cp arm:/bin/nobled ./nobled_linux-arm64
docker rm /amd
docker rm /arm
sha256sum nobled_linux-amd64
sha256sum nobled_linux-arm64

```

### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
TBD  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
TBD  nobled_linux-arm64
```

---
