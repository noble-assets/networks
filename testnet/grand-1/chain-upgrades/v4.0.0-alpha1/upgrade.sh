#!/bin/bash
nobled tx upgrade software-upgrade \
'argon' \
--upgrade-height 2142000 \
--upgrade-info '{"binaries":{"linux/amd64":"https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-alpha1/nobled_linux-amd64?checksum=sha256:1155511b2ecc9310df4c5c3f0fa8df98b79f5ef5d82d8a38f137b9915b97a35e","linux/arm64":"https://github.com/strangelove-ventures/noble/releases/download/v4.0.0-alpha1/nobled_linux-arm64?checksum=sha256:9bfb3bc9490d5ea2470b029b09b19ac44d6ad3ba85f000413b0244e9848acece"},"urls":{"docs":"https://github.com/strangelove-ventures/noble-networks/blob/main/testnet/grand-1/chain-upgrades/v4.0.0-alpha1/README.md"}}' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx
