
### Generate launchpad credentials

```bash
# For manual bootstrap:
# Login to the subscription Launchpad with the user rajeshn@ngen.it
rover login -t ngen.it

rover \
  --impersonate-sp-from-keyvault-url https://ngen-id.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level0/credentials \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate launchpad_credentials_rotation.tfstate \
  -launchpad \
  -log-severity ERROR \
  -env ngen \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials_rotation.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml contoso.caf.platform.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  --impersonate-sp-from-keyvault-url https://ngen-id.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/ngen/platform/level0/credentials \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate launchpad_credentials_rotation.tfstate \
  -launchpad \
  -log-severity ERROR \
  -env ngen \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials_rotation.tfstate.tfplan \
  -a apply

```

```bash
# On success, re-execute the rover ignite

rover ignite \
  --playbook /tf/caf/landingzones/templates/platform/ansible.yaml \
  -e base_templates_folder=/tf/caf/landingzones/templates/platform \
  -e resource_template_folder=/tf/caf/landingzones/templates/resources \
  -e config_folder=/tf/caf/orgs/ngen/platform

```

Now if you refresh the readme of the credentials deployment, you will notice the rover command has been updated to impersonate the execution of the rover based on the credentials that have just been created and stored in the keyvault. The goal here is to execute the deployment steps using the same privileges that will be used later when using a pipeline.

Just re-execute the plan/apply command as above and you will notice the rover will login as the identity service principal. When executed, execute a rover logout as the next step will be executed under a different security context.

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the subscription services](../../level1/subscriptions/readme.md)
