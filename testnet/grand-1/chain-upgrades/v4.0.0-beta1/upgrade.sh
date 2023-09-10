#!/bin/bash
nobled tx upgrade software-upgrade \
'argon3' \
--upgrade-height 2954000 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-amd64?checksum=sha256:8e000d450d9948bfc8c700907b482e97cf75c5f2a83e67ff1ef9294507bd31ce","linux/arm64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-arm64?checksum=sha256:6568fe0e5375c33005156da0af7a2ef5f986cdf4dd758d1ea4b8c4a6dbdf93c0"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx
