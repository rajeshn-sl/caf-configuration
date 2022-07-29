#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Launchpad"
    alias           = "ngen-launchpad"
    subscription_id = "57aa6402-87b9-48a3-8920-40ab37157498"
  }
  management = {
    name            = "ngen-management"
    alias           = "ngen-management"
    subscription_id = "78d52edf-7ebb-4929-b499-6122fa31f566"
  }
  identity = {
    name            = "ngen-identity"
    alias           = "ngen-identity"
    subscription_id = "be0c51ca-5776-4386-b228-c6421801eeea"
  }
  connectivity = {
    name            = "ngen-connectivity"
    alias           = "ngen-connectivity"
    subscription_id = "faf9172c-904b-490b-9dff-42f5fe4f35cb"
  }

}