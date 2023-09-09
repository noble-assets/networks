#!/bin/bash
nobled tx upgrade software-upgrade \
'argon2' \
--upgrade-height 2954000 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-amd64?checksum=sha256:changeme","linux/arm64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-arm64?checksum=sha256:changeme"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx
