# Placeholder for Activations

### Activate Luganodes
nobled tx vesting create-vesting-account CHANGEME 1000000ustake 531800807734 \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--node https://rpc.noble.strange.love:443 \
--generate-only > activate-luganodes-unsigned.json


### Activate DSRV
nobled tx vesting create-vesting-account CHANGEME 1000000ustake 531800807734 \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--node https://rpc.noble.strange.love:443 \
--generate-only > activate-dsrv-unsigned.json


## Multi-sig participants
Strangelove has created neon-upgrade-unsigned.json. Please sign by doing the following command Please ensure you have prepared your keys before hand

### Strangelove example
nobled tx sign neon-upgrade-unsigned.json \
--multisig=noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \ #keep this as is
--from noble130mdu9a0etmeuw52qfxk73pn0ga6gawkt8zz65 \ #change this to match your key
--chain-id noble-1 \
-sign-mode amino-json \ # for ledgers
--offline \
--sequence 0 \ # this will be updated by strangelove for all events.
--account-number 7 # this will never change on mainnet
--output-document=strangelove-neon-upgrade-signed.json
Then submit a PR to this folder with your signed transactions.

Once we have 5/7 collected, Strangelove will broadcast the transactions initiating the noble chain to upgrade at the specified time.