# v0.5.0 radon
## Description
This is a proposal to do a software upgrade to the `v0.5.0` software tag of the Noble codebase on block height `645000`, which is estimated to occur on `Wed Apr 12 2023 01:38:20 GMT-0400`. Block times have high variance, so please monitor the chain for more precise time estimates.  

 

## Upgrade Features 
This upgrade adds the following features:  

### Highlights
- Global min-fee module  
- Tariff module  

### What's Changed
[changelog](https://github.com/strangelove-ventures/noble/releases/tag/v0.5.0)
 

## Getting Prepared for the Upgrade 

https://github.com/strangelove-ventures/noble#build-and-install-to-go-bin-path  

 

## Details of Upgrade Time 
The proposal targets the upgrade proposal block to be `645000`, anticipated to be on `Wednesday 12th April 17:30 UTC`. Note that block times have high variance, so keep monitoring the time. See countdown [here](https://testnet.mintscan.io/noble-testnet/blocks/645000).  

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.  

In the event of an issue at upgrade time, we should coordinate via the validators channel in telegram to come to a quick emergency consensus and mitigate any further issues.

## Chain Details
```
chain-id = "grand-1"
minimum-gas-prices = "0.0uusdc"
```
## Persistent Peers
```
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

Docker images are available [here](https://github.com/strangelove-ventures/noble/pkgs/container/noble/83866075?tag=v0.5.0). You can generate the binary by building from the Official Repo. Or alternatively you can use the Verify process below to build inside docker and guarantee you have the correct source.

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
  * SHA256: `949e84d7600f8520d4eecfd2aa67c81f6b25a3c48f8a66fdc58ba1ee19f9c91a`

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
  expected return `949e84d7600f8520d4eecfd2aa67c81f6b25a3c48f8a66fdc58ba1ee19f9c91a`  
  
  Now, verify the checksum on your local ubuntu server  
  ```
  #run on your ubuntu server
  sha256sum /home/ubuntu/go/bin/nobled
  ```
  expected return `949e84d7600f8520d4eecfd2aa67c81f6b25a3c48f8a66fdc58ba1ee19f9c91a` 
