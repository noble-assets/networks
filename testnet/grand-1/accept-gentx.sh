#!/bin/bash
set -eux
# quick script to import all the gentx files with vested balances into the chain genesis.

# Each Validator will recieve 1000000ustake
amount='1000000ustake'

# This is the epoch time when it will unlock
unlock='531800807734'
noble_template_path='/home/danb/code/github/strangelove-ventures/noble-networks/testnet/grand-1/gentx/genesis.json'

# create noble env
# nobled init default

# custom noble template
cp $noble_template_path ~/.noble/config/genesis.json

# Find all the vals and created vested accounts.
vals=()
while IFS='' read -r val; do
    vals+=("$val")
done <<<"$(find . -name "*.json" ! -name 'genesis.json' -exec jq -r '.body.messages[].delegator_address' {} \;)"

for val in "${vals[@]}"
do
  nobled add-genesis-account "$val" "$amount" --vesting-amount "$amount" --vesting-end-time "$unlock"
done

# Collect the gentx
# nobled collect-gentxs --gentx-dir .

# Create the chain genesis.
cp ~/.noble/config/genesis.json ../genesis.json