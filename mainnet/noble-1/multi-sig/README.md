![Noble banner](https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/Twitter_Banner.png)
# Noble Multi-Sig mainnet Participants
During the noble mainnet, we will be testing several multi-sig activities.  One of the first activities will be to manually send stake to a new validator. We have identified strangelove, noble, and everstake to be the multi-sig members for the mainnet.  For mainnet additional organiztions will be included.

## How to create a multi-sig
Create a new key to be used in the mainnet multi-sig. We recommend you use a ledger.

### Install noble
```
git clone https://github.com/strangelove-ventures/noble.git
cd noble
git checkout v1.0.0
make install
```
### Create the key
This is an example of how strangelove will create their noble key for multi-sig
```
nobled keys add strangelove --ledger

- name: strangelove
type: ledger
address: noble......
pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A1SgSrlikj83agLUJPYDuWTjPkw4rPzkWgMMy/5RxANy"}'
```
### Publish your public key
The public key is used to verify that you are who you say you are.  This should be known to the world, so anyone can easily verify if an action taken on the blockchain is from the real you or an impersonator. 

_Note: You must have a github account for this._

* Goto https://github.com/strangelove-ventures/noble-networks
* Click Fork in the top right.  
* Keep all the default values and click `Create fork`
* Click mainnet/noble-1
* Click multi-sig
* Click `Add file` , then 'Create new file'
* In `Name your file` use your company name, example `company-pub.json`  
* in the box bellow, paste only your public key, EG
```
{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A1SgSrlikj83agLUJPYDuWTjPkw4rPzkWgMMy/5RxANy"}
```
* Under Commit new file add a title of `Company public key`. No description is needed. Click `commit new file` at the bottom. This will take you back to your fork.
* Click `Contribute` , then `Open Pull Request`, then `Create pull request`.
* At this point strangelove will review the PR and accept it into the multi-sig


## Prepare your noble keys

### Import trusted participants
import all trusted participants. Please verify these against the PRs teams completed.
```
nobled keys add binary-builders --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AlEoYxw7zwWlqyJnuyDmyX6FATXKBe81fqSystV58wQD"}'
nobled keys add chorus-ones --pubkey='pubkey: '{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AkVbSTHLqFZKBm2N5wtX5D8tVIEOhxqtN9DKG+8W/6ty"}'\n
nobled keys add chorus-one --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AkVbSTHLqFZKBm2N5wtX5D8tVIEOhxqtN9DKG+8W/6ty"}'\n
nobled keys add cosmostation --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"Au8rAVDDah4KkMUMSPZfH7I2jAkKqs1yRzPAu9XlwSIt"}'
nobled keys add everstake --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AkX8sxQogbXf1snynqbVKobS6Yei2pRAzuJAekqqMQI7"}'
nobled keys add iqlusion --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A/TP2SSCqNvfTMskFU5ajgSU2CV/ZEtb11u9yw9WwbsH"}'
nobled keys add noble --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AlHU9GTWbG2pDsmZPnOqgDHgPD0eingaAjCRLI8LCXS3"}'
nobled keys add strangelove --pubkey='{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A1SgSrlikj83agLUJPYDuWTjPkw4rPzkWgMMy/5RxANy"}'
```

### Create the multisig account

All members should create the multi-sig wallet.
```
nobled keys add noble-multisig \                                  
--multisig-threshold=5 \
--multisig=binary-builders,chorus-one,cosmostation,everstake,iqlusion,noble,strangelove

- name: noble-multisig
type: multi
address: noble1553j0zdxvnfty72t4vkrm72afrvk33unxdgy9g
pubkey: '{"@type":"/cosmos.crypto.multisig.LegacyAminoPubKey","threshold":2,"public_keys":[{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A24Ms1KsY/WVrg6j+pleIfvnFdjrU0/eB0ha1FRE6hD+"},{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"AlRjzl11UtfHJUMTf/IatbiUxOGxnk+E7J9DMFTIb0Uf"},{"@type":"/cosmos.crypto.secp256k1.PubKey","key":"A2AC4WxQQZxeuSRrI1ey+kyGSgpbeV0dKcFzWbTcjeYy"}]}'
```