# v0.4.1 Neon
## Description
This is a proposal to do a software upgrade to the `v0.4.1` software tag of the Noble codebase on block height `302000`, which is estimated to occur on `Monday 20th March 17:00 UTC`. Block times have high variance, so please monitor the chain for more precise time estimates.  

 

## Upgrade Features 
This upgrade adds the following features:  

 

### Highlights
- circle-tokenfactory module added. Currently, this is a copy of tokenfactory
- Minor changes to the paused state of the tokenfactory. See descriptions in: #127, #124
- Changed from using base64 encoding to bech32 for public keys in msgs/queries for tokenfactories
- Added tx upgrade CLI commands for use by Prams Authority

### What's Changed
- Update Play Script by @boojamya in #109
- Update readme by @boojamya in #113
- refactor: use bech32 string representation of address in msgs/queries by @jtieri in #125
- Allow Minter and MinterController to be configured while paused by @boojamya in #124
- Decouple block ibc middleware by @boojamya in #123
- noble branding by @danbryan in #132
- Add circle-tokenfactory module by @boojamya in #127
- Update Access Control Table by @boojamya in #135
- Readme update by @boojamya in #133
- Implement "Neon" Upgrade Handler by @boojamya in #136
- Upgrade CLI methods by @agouin in #130
 

## Getting Prepared for the Upgrade 

https://github.com/strangelove-ventures/noble#build-and-install-to-go-bin-path  

 

## Details of Upgrade Time 
The proposal targets the upgrade proposal block to be `302000`, anticipated to be on `Monday 20th March 17:00 UTC`. Note that block times have high variance, so keep monitoring the time. See countdown [here](https://testnet.mintscan.io/noble-testnet/blocks/302000).  

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.  

In the event of an issue at upgrade time, we should coordinate via the validators channel in telegram to come to a quick emergency consensus and mitigate any further issues.

## Chain Details
```
chain-id = "grand-1"
minimum-gas-prices = "0.0uusdc"
```
## Persistent Peers
```
#Strangelove
38179b18853d6a8cb86b99881e02cf72f18b9d0f@34.127.46.223:26656
57546d799a1cdef74b9a174052821a6e93636dfc@34.145.87.4:26656
6b76ad22a73897e3c39c7d87b7d12a3b7d690bff@34.168.48.128:26656

#B-Harvest
f8a0d8942bcf02b94ed875ded9cb23944a53e48a@141.95.97.28:15656

#Everstake
d82829d886635ffcfcef66adfaa725acb522e1c6@83.136.255.243:26656
```

## Endpoints
RPC: 
* https://rpc.testnet.noble.strange.love:443  

API:
* https://api.testnet.noble.strange.love:443  

## Block Explorer  
https://explore.strange.love  
https://www.mintscan.io/noble  


## Binary

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/72469688?tag=v0.3.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

```
git clone https://github.com/strangelove-ventures/noble
cd noble
git checkout v0.4.1
make install
```
### Verify Binary Checksum
Binary checksums can differ based on many things to include go, libc, and make versions. To get a consistent checksum you can use something like docker to verify.

  * [Linux amd64 build](nobled)
  * Version: `v0.4.1`
  * SHA256: `79a0ff3cffa2f8fc812fc05aead2d3b6450ab65989bdfceba2c0323fe999f428`

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
  git checkout v0.4.1
  make install
  sha256sum ~/go/bin/nobled
  ```
  expected return `79a0ff3cffa2f8fc812fc05aead2d3b6450ab65989bdfceba2c0323fe999f428`  
  
  Now, verify the checksum on your local ubuntu server  
  ```
  #run on your ubuntu server
  sha256sum /home/ubuntu/go/bin/nobled
  ```
  expected return `79a0ff3cffa2f8fc812fc05aead2d3b6450ab65989bdfceba2c0323fe999f428` 