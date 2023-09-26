#!/bin/bash
nobled tx upgrade software-upgrade \
'argon3' \
--home /home/danb/.noble_testnet \
--keyring-backend file \
--upgrade-height 3193000 \
--chain-id grand-1 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0/nobled_linux-amd64?checksum=sha256:changeme","linux/arm64":"https://github.com/strangelove-ventures/noble-networks/raw/main/testnet/grand-1/chain-upgrades/v4.0.0/nobled_linux-arm64?checksum=sha256:changeme"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx \
--node https://rpc.testnet.noble.strange.love:443
