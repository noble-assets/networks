#!/bin/bash
nobled tx upgrade software-upgrade \
'argon3' \
--upgrade-height 2954000 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-amd64?checksum=sha256:9ace06a7ec3a2f81bef5e8ea6bba912cb5ed500cb4c66a63a2197b2a92952d5f","linux/arm64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/nobled_linux-arm64?checksum=sha256:bc2fcc8050bf702bb728510c1268a05e17128038d8f850c40406359473f0d944"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0-beta1/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx
