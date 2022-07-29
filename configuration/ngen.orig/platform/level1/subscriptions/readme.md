
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Launchpad with the user rajeshn@ngen.it
rover login -t ngen.it -s 57aa6402-87b9-48a3-8920-40ab37157498

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level1/subscriptions \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate platform_subscriptions.tfstate \
  -log-severity ERROR \
  -env ngen \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)