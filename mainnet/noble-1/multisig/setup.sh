names=""

cd public-keys
index=0
for file in *; do
  name="nmm-"
  name+=${file//".json"/""}

  pubkey=$(cat $file)
  nobled keys add "$name" --pubkey $pubkey --output json > /dev/null

  if [ -$index -ne 0 ]; then
    names+=","
  fi
  names+=$name

  index+=1
done
cd ..

nobled keys add nmm --multisig $names --multisig-threshold 5 --output json > nmm.json
