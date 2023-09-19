#!/bin/bash

# Combine the signatures from the different signers into a single file
nobled tx multisign \
substitute-crescent-unsigned.json \
noble-multisig \
binary-substitute-crescent-signed.json \
chorusone-substitute-crescent-signed.json \
cosmostation-substitute-crescent-signed.json \
Everstake-v3.1.0-substitute-crescent-signed.json \
strangelove-substitute-crescent-signed.json \
--node https://rpc.mainnet.noble.strange.love:443 \
--chain-id noble-1 \
> multisig-substitute-crescent-signed.json

# Broadcast the transaction
nobled tx broadcast \
multisig-substitute-crescent-signed.json \
--chain-id noble-1 \
--node https://rpc.mainnet.noble.strange.love:443