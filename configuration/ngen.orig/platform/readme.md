
# Generate the terraform configuration files

To execute this step you need to login with one of the CAF maintainers accounts:
  - rajeshn@ngen.it

```bash
rover login -t ngen.it

rover ignite \
  --playbook /tf/caf/landingzones/templates/platform/ansible.yaml \
  -e base_templates_folder=/tf/caf/landingzones/templates/platform \
  -e resource_template_folder=/tf/caf/landingzones/templates/resources \
  -e config_folder=/tf/caf/orgs/ngen/platform
  ```

Get started with the [launchpad](./platform/level0/launchpad)