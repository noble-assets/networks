#!/bin/bash

# Combine the signatures from the different signers into a single file
nobled tx multisign \
substitute-evmos-unsigned.json \
noble-multisig \
binary-substitute-evmos-signed.json \
chorusone-substitute-evmos-signed.json \
cosmostation-substitute-evmos-signed.json \
Everstake-substitute-evmos-signed.json \
strangelove-substitute-evmos-signed.json \
--node https://rpc.mainnet.noble.strange.love:443 \
--chain-id noble-1 \
> multisig-substitute-evmos-signed.json

# Broadcast the transaction
nobled tx broadcast \
multisig-substitute-evmos-signed.json \
--chain-id noble-1 \
--node https://rpc.mainnet.noble.strange.love:443