# grand-1

- Chain-ID: grand-1
- Tag: [v0.3.0](https://github.com/strangelove-ventures/noble/releases/tag/v0.3.0)
- [Heighliner Image](https://github.com/strangelove-ventures/noble/pkgs/container/noble/72469688?tag=v0.3.0)

## Validator Instructions

1) Build binary
```bash
    git clone https://github.com/strangelove-ventures/noble
    cd noble
    git checkout v0.3.0
    make install
```

2) Init Chain. Run:

    `nobled --chain-id grand-1 init <YOUR-MONIKER>`

3) Add or restore key.
```
# Create New Key:

nobled keys add <KEY-NAME> --keyring-backend os

# Restore existing key with mnemonic seed phrase. 
# You will be prompted to enter mnemonic seed. 

nobled keys add <KEY-NAME> --keyring-backend os --recover
```

4) Add genesis account:

    `nobled add-genesis-account <ADDRESS_OR_KEY_NAME> 1000000ustake --keyring-backend os`

5) Create genesis transaction. Run:
    ```bash
    nobled gentx <KEY-NAME> "1000000ustake" --chain-id grand-1 --keyring-backend os

    # Feel free to fill out other optional flags
    ```

    NOTE - Please Read
    - The amount must be exactly 1,000,000 ustake. We need each validator to have equal voting power.
    - The `ustake` given to each validator will be in the form of a vesting account; you will not be able to send this `ustake` to another wallet.

6) Submit PR with Gentx
    1) Copy the contents of ${HOME}/.nobled/config/gentx/gentx-XXXXXXXX.json.
    2) Fork https://github.com/strangelove-ventures/noble-testnet
    3) Create a file gentx-{{VALIDATOR_NAME}}.json under the networks/testnet/grand-1/gentx folder in the forked repo, paste the copied text into the file.
    4)Create a Pull Request to the main branch of the repository


### Vesting Accounts
Vesting accounts allow for assets to be delegated and undelegated, but the assets cannot be transferred to another account until vested.

More information on vesting accounts is available [here](https://docs.cosmos.network/v0.45/modules/auth/05_vesting.html)