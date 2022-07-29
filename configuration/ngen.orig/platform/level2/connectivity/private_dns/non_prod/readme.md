
# Private DNS Zones

## Select the correct branch for the landingzones code

Note you need to adjust the branch 2112.int to deploy the connectivity services

## []

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t ngen.it

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-co.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level2/connectivity/private_dns/non_prod \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription faf9172c-904b-490b-9dff-42f5fe4f35cb \
  -tfstate connectivity_private_dns_non_prod.tfstate \
  -env ngen \
  -level level2 \
  -p ${TF_DATA_DIR}/connectivity_private_dns_non_prod.tfstate.tfplan \
  -a plan

```

