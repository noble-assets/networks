# Running a Full Node

## Step 1: Installing

First things first, let's install the `nobled` daemon on your machine.

```shell
git clone https://github.com/noble-assets/noble
cd noble
git checkout v4.0.1
make install
```

Please note that the above instructions assume that you have Go installed. If everything is configured correctly with your Go path, you should be able to verify that `nobled` has been installed correctly by running `nobled version`.

## Step 2: Initialising

Next, you will want to initialise your full node.

```shell
nobled init <your moniker here>
```

This will initialise the `.noble` directory on your machine.

## Step 3: Configuring

Next, you will want to fetch the [`grand-rehearsal-1` genesis file](../genesis.json) and place it at `.noble/config/genesis.json`.

Below you will find a list of peers exposed by a few of the validators currently running on the standalone `grand-rehearsal-1` network. You can go ahead and put these as your `persistent_peers` setting inside the `.noble/config/config.toml` file.

```shell
# Stakecito
047173cca5b39aa7c9cd63a141cf6fcd7d37bc3b@65.108.13.110:26665

# Luganodes
f1ce0625eb26180f43df75419c918c5ff26287d6@57.128.144.141:26665

# strangelove
1e44b16e762c052dbd57b8f6ff0a47665e1f3ae5@38.109.200.36:44442

# Cosmostation
d1c49d301b92fb1209f70e9d195a4ccda33e6f23@222.106.187.14:57000

# a41
322c99b1da10dc08f2fcb97b78f704ea09614221@211.219.19.69:36656

# SG-1
65694f7b352211222f49c81e8d14f08ffecb63e0@65.108.141.57:36656

# DSRV
6fcf2b6148ec269f7d5240b59210b761e31e0901@46.101.195.113:46656
```

## Step 4: Running

Finally, you will be able to start syncing your node.

```shell
nobled start
```
