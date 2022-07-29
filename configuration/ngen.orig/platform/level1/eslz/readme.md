# Enterprise scale

## Deploy Enterprise Scale

Note you need to adjust the branch to deploy Enterprise Scale to 2112.int

```bash
az account clear
# login a with a user member of the caf-platform-maintainers group
rover login -t ngen.it

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-es.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution/add-ons/caf_eslz \
  -var-folder /tf/caf/configuration/ngen/platform/level1/eslz \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate eslz.tfstate \
  -log-severity ERROR \
  -env ngen \
  -level level1 \
  -p ${TF_DATA_DIR}/eslz.tfstate.tfplan \
  -a plan

```

# Next steps

 [Deploy Connectivity](../../level2/connectivity/readme.md)
