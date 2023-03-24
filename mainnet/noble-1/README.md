![Noble banner](https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/Twitter_Banner.png)
# Noble Chain Information

## Permissioned Network  
Noble is a permissioned network. Unlike permissionless Proof of Stake chains, the only way of participating in the Noble mainnet is through a delegation of staking tokens by the Noble Maintenance Multisig (NMM). 

 We’re currently capped for participation and chose validators based on number of factors including 
- Running validator on Cosmos Hub 
- Geographic distribution of nodes 
- Community contributions (educational content, events/marketing presence, etc) 
- Infrastructure development (block explorers, wallets, core Cosmos stack development, testing, etc) 
- Significant ATOM stake (1%+ voting power)

We will reach out in the future if we're looking to expand the val set.

## Overview
On March 27, 2023 at approximately 5PM UTC, Noble will launch with the FRNZ token, a limited-supply token designed to be redeemed for a physical asset. The FRNZ token does not have governance or staking utility. It is purely designed to showcase the asset issuance functionality of the Noble chain via token minting, burning and transfers using the Inter-Blcockchain Communication (IBC) protocol. Future chain upgrades will be initiated once Noble adds support for native assets. 

## Timeline

**2023-03-20** 

Request for gentx files will be sent to the Noble Validators Telegram group.

**2023-03-24** 

at `2023-03-24T23:59:00.000000000Z` the `strangelove` team will create the official [genesis file](https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/mainnet/noble-1/genesis.json). 

**2023-03-27** 
Genesis is scheduled for `2023-03-27T16:00:00.000000000Z`.  Please have your nodes started by this time.

## Chain Details
```
chain-id = "noble-1"
minimum-gas-prices = "0.0uusdc"
```
## Persistent Peers
```
#Strangelove
f0496ab244c4bc607948934fb261bf5ca124377d@34.168.216.136:26656
cca1c141e0bc7c4c0e8570e76278227547199f34@34.82.228.108:26656
bac93149f2d2f8cdebcae6f7ede003c6d55e9bc5@35.185.245.19:26656
```

## Binary

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/78874895?tag=v1.0.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

```
git clone https://github.com/strangelove-ventures/noble
cd noble
git checkout v1.0.0
make install
```
### Verify Binary Checksum
Binary checksums can differ based on many things to include go, libc, and make versions. To get a consistent checksum you can use something like docker to verify.

  * [Linux amd64 build](nobled)
  * Version: `v1.0.0`
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
  git checkout v1.0.0
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

    `nobled --chain-id noble-1 init <YOUR-MONIKER>`

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
nobled gentx [KEY-NAME] 1000000ustake --chain-id noble-1 --moniker [MONIKER] --identity [KEYBASE_ID] --website [WEBSITE] --security-contact [CONTACT] --details [DETAILS] --note [NODEID@IP:PORT]

```
> **Warning**
> The amount must be exactly 1,000,000 ustake. We need each validator to have equal voting power.

> **Warning**
> The `ustake` given to each validator will be in the form of a [vesting account](https://docs.cosmos.network/v0.45/modules/auth/05_vesting.html). While you will be able to delegate and undelegate, you will not be able to send this `ustake` to another wallet.

>**Note**
> It is not mandatory, but it is recommended to specify a specific `--keyring-backend` when running these commands. Some commands may not default to the same backend.

5) Submit a PR with Gentx
    1) Fork https://github.com/strangelove-ventures/noble-networks.
    2) Copy `${HOME}/.nobled/config/gentx/gentx-XXXXXXXX.json` to  `mainnet/noble-1/gentx/VALIDATOR_NAME.json`.
    3) Create a pull request to the main branch of the repository.  
    4) Tag `danbryan` or `boojamya`.
