#!/bin/bash
nobled tx upgrade software-upgrade \
'neon' \
--upgrade-height 119000 \
--upgrade-info 'https://github.com/strangelove-ventures/noble-networks/blob/main/mainnet/noble-1/chain-upgrades/v2.0.0/README.md' \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--generate-only > neon-upgrade-unsigned.json
