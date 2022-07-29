
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t ngen.it

rover \
  --impersonate-sp-from-keyvault-url https://ngen-id.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level2/identity/identity_level2/prod \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription be0c51ca-5776-4386-b228-c6421801eeea \
  -tfstate identity_level2.tfstate \
  -log-severity ERROR \
  -env ngen \
  -level level2 \
  -p ${TF_DATA_DIR}/identity_level2.tfstate.tfplan \
  -a plan

```


# Next steps

 [Deploy Enterprise Scale](../../level1/eslz/readme.md)
