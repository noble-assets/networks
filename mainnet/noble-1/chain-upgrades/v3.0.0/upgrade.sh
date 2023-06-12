#!/bin/bash
nobled tx upgrade software-upgrade \
'radon' \
--upgrade-height 1296000 \
--upgrade-info 'https://github.com/strangelove-ventures/noble-networks/blob/main/mainnet/noble-1/chain-upgrades/v3.0.0/README.md' \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--generate-only > radon-upgrade-unsigned.json
