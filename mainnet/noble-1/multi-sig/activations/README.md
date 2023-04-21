# Placeholder for Activations


## Strangelove will run these commands to create the unsigned transactions
### Activate Luganodes
```
nobled tx vesting create-vesting-account noble1sayrgdn28wsprrf2xm34kjaxe29uy9jknrq2ew 1000000ustake 95625100799 \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--node https://rpc.noble.strange.love:443 \
--generate-only > activate-luganodes-unsigned.json
```

### Activate DSRV

```
nobled tx vesting create-vesting-account noble1zttnm2cl60m5ffsrfeqtzkmtvepl4hwnsqg9fd 1000000ustake 95625100799 \
--from noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \
--node https://rpc.noble.strange.love:443 \
--generate-only > activate-dsrv-unsigned.json
```

## Multi-sig participants
Strangelove will combine these files to create `activate-luga-and-dsrv-unsigned.json`.

Each other member will sign `activate-luga-and-dsrv-unsigned.json` following the example below, and then upload their signed part to this repo.

### Strangelove example
```
nobled tx sign activate-luga-and-dsrv-unsigned.json \
--multisig=noble1tq944l2tgxugwvu74yke37yt7pa27p8467rxg5 \ #keep this as is
--from noble130mdu9a0etmeuw52qfxk73pn0ga6gawkt8zz65 \ #change this to match your key
--chain-id noble-1 \
-sign-mode amino-json \ # for ledgers
--offline \
--sequence 1 \ # this will change each new transaction.
--account-number 7 # this will never change on mainnet
--output-document=strangelove-activate-luga-and-dsrv-signed.json
```

Then submit a PR to this folder with your signed transactions. The file should be called `changeme-activate-luga-and-dsrv-signed.json` where `changeme` is your `moniker`

Once we have 5/7 collected, Strangelove will broadcast the transactions initiating the noble chain to upgrade at the specified time.

```
 nobled tx broadcast activate-luga-and-dsrv-unsigned.json \
  --node https://rpc.noble.strange.love:443 \
  --chain-id noble-1
  ```
