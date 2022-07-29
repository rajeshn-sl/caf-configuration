# Launchpad - ngen

## Pre-requisites

This scenario requires the following privileges:

| Component          | Privileges         |
|--------------------|--------------------|
| Active Directory   | None               |
| Azure subscription | Subscription owner |

## Deployment

### Pre-requisite

Elevate your credentials to the tenant root level to have enough privileges to create the management group hierarchy.

```bash
# Login to the subscription Launchpad with an account owner.
rover login -t ngen.it
az rest --method post --url "/providers/Microsoft.Authorization/elevateAccess?api-version=2016-07-01"

```

### Launchpad

```bash
# Login to the subscription Launchpad with an account owner.
rover login -t ngen.it -s 57aa6402-87b9-48a3-8920-40ab37157498

cd /tf/caf/landingzones
git fetch origin
git checkout 2112.int

rover \
  --impersonate-sp-from-keyvault-url https://ngen-idl0.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/configuration/ngen/platform/level0/launchpad \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate caf_launchpad.tfstate \
  -log-severity ERROR \
  -launchpad \
  -env ngen \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml contoso.caf.platform.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  --impersonate-sp-from-keyvault-url https://ngen-idl0.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_launchpad \
  -var-folder /tf/caf/configuration/ngen/platform/level0/launchpad \
  -tfstate_subscription_id 57aa6402-87b9-48a3-8920-40ab37157498 \
  -target_subscription 57aa6402-87b9-48a3-8920-40ab37157498 \
  -tfstate caf_launchpad.tfstate \
  -log-severity ERROR \
  -launchpad \
  -env ngen \
  -level level0 \
  -p ${TF_DATA_DIR}/caf_launchpad.tfstate.tfplan \
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

Execute a rover logout and rover login in order to make sure your azure sessions has the Azure groups membership updated.

```bash
rover logout

rover login -t ngen.it

```

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the credentials landing zone](../credentials/readme.md)
