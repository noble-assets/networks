# v0.4.0 Neon
## Description
This is a proposal to do a software upgrade to the `v0.4.0` software tag of the Noble codebase on block height `302000`, which is estimated to occur on `Monday 20th March 17:00 UTC`. Block times have high variance, so please monitor the chain for more precise time estimates.  

 

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