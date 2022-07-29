
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t ngen.it -s 78d52edf-7ebb-4929-b499-6122fa31f566

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level1/management \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 78d52edf-7ebb-4929-b499-6122fa31f566 \
  -tfstate management.tfstate \
  -log-severity ERROR \
  -env ngen \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

 [Deploy Enterprise Scale](../../level1/eslz/readme.md)
