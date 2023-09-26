# Upgrade to v4.0.0-beta2

## Overview

We are excited to announce the next software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition the network to `v4.0.0-beta2`. 

**Key Details:**
- **Target Block:** [`3193000`](https://testnet.mintscan.io/noble-testnet/blocks/3193000)
- **Estimated Date & Time:** Wednesday, September 27th, around 12pm EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is required that you use the release artifacts, either the [docker image](ghcr.io/strangelove-ventures/noble:v4.0.0-beta2) or choose the appropriate binary for your system:
   - [AMD](https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-beta2/nobled_linux-amd64)
   - [ARM](https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-beta2/nobled_linux-arm64)

### Using a Container Runtime (e.g. Docker, Containerd, CRI-O, etc)?

Here's a way you can verify that your image has the correct binaries:

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0-beta2 /bin/nobled

# AMD64 hosts
cfc918a28f25ddfcb5c2c7003b3ce8633648bbccb7ca22f9bcbd37ee0f71f8fa  /bin/nobled

# ARM64 hosts
29d6ad5cd9484d113c6215947b559a96e10184f00424236a566ff950a4630467  /bin/nobled
```
### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
cfc918a28f25ddfcb5c2c7003b3ce8633648bbccb7ca22f9bcbd37ee0f71f8fa  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
29d6ad5cd9484d113c6215947b559a96e10184f00424236a566ff950a4630467  nobled_linux-arm64
```

---
