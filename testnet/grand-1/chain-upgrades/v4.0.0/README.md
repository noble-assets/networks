# Upgrade to v4.0.0

## Overview

We are excited to announce the next software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition the network to `v4.0.0`. 

**Key Details:**
- **Target Block:** [`3193000`](https://testnet.mintscan.io/noble-testnet/blocks/3193000)
- **Estimated Date & Time:** Monday, September 11th, around 12pm EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](ghcr.io/strangelove-ventures/noble:v4.0.0) or choose the appropriate binary for your system:
   - [AMD](./nobled_linux-amd64)
   - [ARM](./nobled_linux-arm64)

### Using a Container Runtime (e.g. Docker, Containerd, CRI-O, etc)?

Here's a way you can verify that your image has the correct binaries:

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0 /bin/nobled

# AMD64 hosts
changeme  /bin/nobled

# ARM64 hosts
changeme  /bin/nobled
```
### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
changeme  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
changeme  nobled_linux-arm64
```

---
