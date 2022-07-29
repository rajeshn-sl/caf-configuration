
# Azure Active Directory Domain Services (AADDS)

## Select the correct branch for the landingzones code

Note you need to adjust the branch 2112.int to deploy the AADDS services

## []

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t ngen.it

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-id.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level2/identity/identity_level2_aadds/prod \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription be0c51ca-5776-4386-b228-c6421801eeea \
  -tfstate identity_level2_aadds.tfstate \
  -env ngen \
  -level level2 \
  -p ${TF_DATA_DIR}/identity_level2_aadds.tfstate.tfplan \
  -a plan

```

