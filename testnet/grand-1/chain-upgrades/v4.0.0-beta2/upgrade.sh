#!/bin/bash
nobled tx upgrade software-upgrade \
'v4.0.0-beta2' \
--upgrade-height 3193000 \
--chain-id grand-1 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-beta2/nobled_linux-amd64?checksum=sha256:cfc918a28f25ddfcb5c2c7003b3ce8633648bbccb7ca22f9bcbd37ee0f71f8fa","linux/arm64":"https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-beta2/nobled_linux-arm64?checksum=sha256:29d6ad5cd9484d113c6215947b559a96e10184f00424236a566ff950a4630467"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0-beta2/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx \
--node https://rpc.testnet.noble.strange.love:443
