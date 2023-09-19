#!/bin/bash

# Combine the signatures from the different signers into a single file
nobled tx multisign \
noble-v3.1.0-unsigned.json \
noble-multisig \
binary-noble-v3.1.0-signed.json \
chorusone-noble-v3.1.0-signed.json \
cosmostation-noble-v3.1.0-signed.json \
Everstake-v3.1.0-noble-v3.1.0-signed.json \
strangelove-noble-v3.1.0-signed.json \
--node https://rpc.mainnet.noble.strange.love:443 \
--chain-id noble-1 \
> multisig-noble-v3.1.0-signed.json

# Broadcast the transaction
nobled tx broadcast \
multisig-noble-v3.1.0-signed.json \
--chain-id noble-1 \
--node https://rpc.mainnet.noble.strange.love:443