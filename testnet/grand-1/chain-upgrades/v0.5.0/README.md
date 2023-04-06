# v0.5.0 raydon
## Description
This is a proposal to do a software upgrade to the `v0.5.0` software tag of the Noble codebase on block height `637000`, which is estimated to occur on `Tuesday 11th April 17:00 UTC`. Block times have high variance, so please monitor the chain for more precise time estimates.  

 

## Upgrade Features 
This upgrade adds the following features:  

### Highlights
- changeme

### What's Changed
[changelog](https://github.com/strangelove-ventures/noble/releases/tag/changeme)
 

## Getting Prepared for the Upgrade 

https://github.com/strangelove-ventures/noble#build-and-install-to-go-bin-path  

 

## Details of Upgrade Time 
The proposal targets the upgrade proposal block to be `637000`, anticipated to be on `Tuesday 11th April 17:00 UTC`. Note that block times have high variance, so keep monitoring the time. See countdown [here](https://testnet.mintscan.io/noble-testnet/blocks/637000).  

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
* https://rpc.mainnet.noble.strange.love:443  
* https://rpc-noble-ia.cosmosia.notional.ventures:443

API:
* https://api.mainnet.noble.strange.love:443  
* https://api-noble-ia.cosmosia.notional.ventures:443

## Block Explorer  
https://explore.strange.love  
https://www.mintscan.io/noble  

## Binary

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/81507034?tag=v0.5.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

```
git clone https://github.com/strangelove-ventures/noble
cd noble
git checkout v0.5.0
make install
```
### Verify Binary Checksum
Binary checksums can differ based on many things to include go, libc, and make versions. To get a consistent checksum you can use something like docker to verify.

  * [Linux amd64 build](nobled)
  * Version: `v0.5.0`
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
  git checkout v0.5.0
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
