# v2.0.0 Neon
## Description
This is a proposal to do a software upgrade to the `v2.0.0` software tag of the Noble codebase on block height `119000`, which is estimated to occur on `Tuesday 04th April 16:00 UTC`. Block times have high variance, so please monitor the chain for more precise time estimates.  

 

## Upgrade Features 
This upgrade adds the following features:  

 

### Highlights
- fiat-tokenfactory module added.

### What's Changed
[changelog](https://github.com/strangelove-ventures/noble/releases/tag/untagged-5240c6e142fc0739718d)
 

## Getting Prepared for the Upgrade 

https://github.com/strangelove-ventures/noble#build-and-install-to-go-bin-path  

 

## Details of Upgrade Time 
The proposal targets the upgrade proposal block to be `119000`, anticipated to be on `Tuesday 04th April 16:00 UTC`. Note that block times have high variance, so keep monitoring the time. See countdown [here](https://www.mintscan.io/noble/blocks/119000).  

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.  

In the event of an issue at upgrade time, we should coordinate via the validators channel in telegram to come to a quick emergency consensus and mitigate any further issues.

## Chain Details
```
chain-id = "noble-1"
minimum-gas-prices = "0.0uusdc"
```
## Persistent Peers
```
#Strangelove
f0496ab244c4bc607948934fb261bf5ca124377d@35.185.197.131:26656
cca1c141e0bc7c4c0e8570e76278227547199f34@34.83.57.80:26656
bac93149f2d2f8cdebcae6f7ede003c6d55e9bc5@35.185.207.177:26656

#Notional
c23fe2dfd8b48bcb3a4c83e0cf5fe52c8c612aab@65.109.31.114:2590

# B-Harvest
a59f269303aea7d535c2cf59781f06119b26715c@18.141.244.198:26656

# Stakecito
3d57632249e613346aee66c4b619e262e5074e91@89.58.13.11:26656

# Cosmostation
90be586a27416b76701c7fe655a4dfbeb654211c@54.193.105.44:26656
```
## Endpoints
RPC: 
* https://rpc.mainnet.noble.strange.love:443  
* https://rpc-noble-ia.cosmosia.notional.ventures:443

API:
* https://api.mainnet.noble.strange.love:443  
* https://api-noble-ia.cosmosia.notional.ventures:443

## Block Explorer  
https://explore.strange.love  
https://www.mintscan.io/noble  

## Binary

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/81507034?tag=v2.0.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

```
git clone https://github.com/strangelove-ventures/noble
cd noble
git checkout v2.0.0
make install
```
### Verify Binary Checksum
Binary checksums can differ based on many things to include go, libc, and make versions. To get a consistent checksum you can use something like docker to verify.

  * [Linux amd64 build](nobled)
  * Version: `v2.0.0`
  * SHA256: `184ef72be58dce19e67823f4648c0b522ce282220b4aeb678dc396ae2d3f8675`

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
  git checkout v2.0.0
  make install
  sha256sum ~/go/bin/nobled
  ```
  expected return `184ef72be58dce19e67823f4648c0b522ce282220b4aeb678dc396ae2d3f8675`  
  
  Now, verify the checksum on your local ubuntu server  
  ```
  #run on your ubuntu server
  sha256sum /home/ubuntu/go/bin/nobled
  ```
  expected return `184ef72be58dce19e67823f4648c0b522ce282220b4aeb678dc396ae2d3f8675` 

## Multi-sig participants

Strangelove has created `neon-upgrade-unsigned.json`.  Please sign by doing the following command Please ensure you have [prepared your keys](https://github.com/strangelove-ventures/noble-networks/tree/main/mainnet/noble-1/multi-sig#prepare-your-noble-keys) before hand

```
# Strangelove example
nobled tx sign neon-upgrade-unsigned.json \
--multisig=noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \ #keep this as is
--from noble130mdu9a0etmeuw52qfxk73pn0ga6gawkt8zz65 \ #change this to match your key
--chain-id noble-1 \
-sign-mode amino-json \ # for ledgers
--offline \
--sequence 0 \ # this will be updated by strangelove for all events.
--account-number 7 # this will never change on mainnet
--output-document=strangelove-neon-upgrade-signed.json
```

Then submit a PR to this folder with your signed transactions.

Once we have 5/7 collected, Strangelove will broadcast the transactions initiating the noble chain to upgrade at the specified time.