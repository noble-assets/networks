# Upgrade to v4.0.0-beta1

## Overview

We are excited to announce the next software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition the network to `v4.0.0-beta1`. 

**Key Details:**
- **Target Block:** [`2954000`](https://testnet.mintscan.io/noble-testnet/blocks/2954000)
- **Estimated Date & Time:** Monday, September 11th, around 12pm EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](ghcr.io/strangelove-ventures/noble:v4.0.0-beta1) or choose the appropriate binary for your system:
   - [AMD](./nobled_linux-amd64)
   - [ARM](./nobled_linux-arm64)

### Using a Container Runtime (e.g. Docker, Containerd, CRI-O, etc)?

Here's a way you can verify that your image has the correct binaries:

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0-beta1 /bin/nobled

# AMD64 hosts
9ace06a7ec3a2f81bef5e8ea6bba912cb5ed500cb4c66a63a2197b2a92952d5f  /bin/nobled

# ARM64 hosts
bc2fcc8050bf702bb728510c1268a05e17128038d8f850c40406359473f0d944  /bin/nobled
```
### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
9ace06a7ec3a2f81bef5e8ea6bba912cb5ed500cb4c66a63a2197b2a92952d5f  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
bc2fcc8050bf702bb728510c1268a05e17128038d8f850c40406359473f0d944  nobled_linux-arm64
```

---
