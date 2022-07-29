# Virtual Wan

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t ngen.it

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-co.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level2/connectivity/virtual_wan \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription faf9172c-904b-490b-9dff-42f5fe4f35cb \
  -tfstate connectivity_virtual_wan.tfstate \
  -env ngen \
  -level level2 \
  -p ${TF_DATA_DIR}/connectivity_virtual_wan.tfstate.tfplan \
  -a plan

```
