# Upgrade to v4.0.0-alpha3

## Overview

We are excited to announce the next software upgrade for the Noble `grand-1` testnet chain. This upgrade will transition the network to `v4.0.0-alpha3`. This upgrade includes CCTP fixes and resolutions from the audit performed by Oak Security.

**Key Details:**
- **Target Block:** [`2772300`](https://testnet.mintscan.io/noble-testnet/blocks/2772300)
- **Estimated Date & Time:** Wednesday, August 30th, around 11am EST. *(Please note that this is an approximation. Due to varying block times, it's crucial to monitor the chain for the exact upgrade time.)*

## Upgrade Instructions

Once the upgrade height has been reached, your validator will throw a consensus error showing that a new binary is needed to perform the upgrade. It is recommended that you use the release artifacts, either the [docker image](ghcr.io/strangelove-ventures/noble:v4.0.0-alpha3) or choose the appropriate binary for your system:
   - [AMD](./nobled_linux-amd64)
   - [ARM](./nobled_linux-arm64)

### Using a Container Runtime (e.g. Docker, Containerd, CRI-O, etc)?

Here's a way you can verify that your image has the correct binaries:

```shell
$ docker run -it --rm --entrypoint sha256sum ghcr.io/strangelove-ventures/noble:v4.0.0-alpha3 /bin/nobled

# AMD64 hosts
be176545eda5b8c2cfc10b85804f8f81f6840999b2db0926d5398b3d9f07ca3a  /bin/nobled

# ARM64 hosts
74f7c07738f8dc5402ff956e61e3207343a8d51efa0ac5cdba440d6c35738ffc  /bin/nobled
```
### Binary Checksums

Ensure the integrity of your binaries:

```shell
# For AMD:
$ sha256sum nobled_linux-amd64
be176545eda5b8c2cfc10b85804f8f81f6840999b2db0926d5398b3d9f07ca3a  nobled_linux-amd64

# For ARM:
$ sha256sum nobled_linux-arm64
74f7c07738f8dc5402ff956e61e3207343a8d51efa0ac5cdba440d6c35738ffc  nobled_linux-arm64
```

---
