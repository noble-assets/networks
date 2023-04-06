#!/bin/bash
nobled tx upgrade software-upgrade \
'raydon' \
--upgrade-height 119000 \
--upgrade-info 'https://github.com/strangelove-ventures/noble-networks/blob/main/mainnet/noble-1/chain-upgrades/v2.0.0/README.md' \
--from noble10uu75g7zl0gnzt0wz46htgqnl5ml27dnthcztx \
--generate-only > raydon-upgrade-unsigned.json
