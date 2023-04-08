#!/bin/bash
nobled tx upgrade software-upgrade \
'raydon' \
--upgrade-height 645000 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble/releases/download/v0.5.0/nobled-v0.5.0-linux-amd64?checksum=sha256:949e84d7600f8520d4eecfd2aa67c81f6b25a3c48f8a66fdc58ba1ee19f9c91a"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v0.5.0/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx
