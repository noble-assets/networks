# Noble Chain Information

## Timeline

**2023-02-22** 

Request for gentx files will be sent to the Noble Validators Telegram group.

**2023-02-24** 

at `2023-02-24T23:59:00.000000000Z` the `strangelove` team will create the official [genesis file](https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/testnet/grand-1/genesis.json). We would like to exclude a few invited validators from the original genesis file so we can test adding new validators via the vested accounts create-validator process. We will do this based on who has submitted a PR by EOD. If you miss out on genesis, don't worry, you will be added on genesis day via the multisig after we reach consensus.  This will involve the multi-sig sending you 1000000 ustake, and you running the create-validator tx.

**2023-02-28** 
Genesis is scheduled for `2023-02-28T16:00:00.000000000Z`.  Please have your nodes started by this time.

## Chain Details
- Chain-ID: grand-1
- Tag: [v0.3.0](https://github.com/strangelove-ventures/noble/releases/tag/v0.3.0)

## Binary

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/72469688?tag=v0.3.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

```
git clone https://github.com/strangelove-ventures/noble
cd noble
git checkout v0.3.0
make install
```
### Verify Binary Checksum
Binary checksums can differ based on many things to include go, libc, and make versions. To get a consistent checksum you can use something like docker to verify.

  * [Linux amd64 build](nobled)
  * Version: `v0.3.0`
  * SHA256: `fc92d3b64b0618238b354bd82b31ed4aa35557129d679d90b070643df34c7c38`

  Example of using a volume mount to get the binary outside of the container onto your ubuntu server.
  ```
  #run on your ubuntu server
  # use the `realpath` for the volume mount.
  docker run -v /home/ubuntu/go/bin:/root/go/bin -it --entrypoint /bin/bash ghcr.io/strangelove-ventures/checksum:v.0.1.0
  ```
  ```
  # run inside docker container.
  git clone https://github.com/strangelove-ventures/noble.git
  cd noble
  git fetch
  git checkout v0.3.0
  make install
  sha256sum ~/go/bin/nobled
  ```
  expected return `fc92d3b64b0618238b354bd82b31ed4aa35557129d679d90b070643df34c7c38`  
  
  Now, verify the checksum on your local ubuntu server  
  ```
  #run on your ubuntu server
  sha256sum /home/ubuntu/go/bin/nobled
  ```
  expected return `fc92d3b64b0618238b354bd82b31ed4aa35557129d679d90b070643df34c7c38` 

## Validator Instructions

1) Init Chain. Run:

    `nobled --chain-id grand-1 init <YOUR-MONIKER>`

2) Add or restore key.
```bash
# Create New Key:

nobled keys add [KEY-NAME] 

# Restore existing key with mnemonic seed phrase. 
# You will be prompted to enter mnemonic seed. 

nobled keys add [KEY-NAME]  --recover
```

3) Add genesis account:
```bash
nobled add-genesis-account [ADDRESS_OR_KEY_NAME] 1000000ustake --vesting-amount 1000000ustake  --vesting-end-time 253402261199 
```

4) Create genesis transaction. Run:
```bash
nobled gentx [KEY-NAME] 1000000ustake --chain-id grand-1 --moniker [MONIKER] --identity [KEYBASE_ID] --website [WEBSITE] --security-contact [CONTACT] --details [DETAILS] --note [NODEID@IP:PORT]

```
> **Warning**
> The amount must be exactly 1,000,000 ustake. We need each validator to have equal voting power.

> **Warning**
> The `ustake` given to each validator will be in the form of a [vesting account](https://docs.cosmos.network/v0.45/modules/auth/05_vesting.html). While you will be able to delegate and undelegate, you will not be able to send this `ustake` to another wallet.

>**Note**
> It is not mandatory, but it is recommended to specify a specific `--keyring-backend` when running these commands. Some commands may not default to the same backend.

5) Submit a PR with Gentx
    1) Fork https://github.com/strangelove-ventures/noble-networks.
    2) Copy `${HOME}/.nobled/config/gentx/gentx-XXXXXXXX.json` to  `testnet/grand-1/gentx/VALIDATOR_NAME.json`.
    3) Create a pull request to the main branch of the repository.  
    4) Tag `danbryan` or `boojamya`.

## Strangelove gentx Acceptance.
Strangelove will accept all gentx files on X

```
#!/bin/bash
amount='1000000ustake'
unlock='253402261199'
gentxdir='testnet/grand-1/gentx'

nobled --home . init default

validators=( 
    noble1q422p5m0gej7gp43385thsfpmjuwql72sjfvfx # a41
)

for validator in "${validators[@]}"
do
  nobled --home . add-genesis-account $validator "$amount" --vesting-amount "$amount" --vesting-end-time "$unlock"
  nobled --home . collect-gentxs --gentx-dir "$gentxdir"
done
```