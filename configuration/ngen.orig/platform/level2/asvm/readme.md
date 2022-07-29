# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t ngen.it

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-idl0.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level2/asvm \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env ngen \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

