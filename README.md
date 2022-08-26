# social-site
Azure static site for ADB2C, MSAL, scopes and functions

## Installation

1. Create application in Azure Active Directory
    `az ad app create --displayName "Github Workflow Deployer"`
2. Create federated credential using policy\main.json
    `az ad app federated-credential create --id {applicationId guid from Step 1} --parameters @main.json`
3. Create a service principal to connect
    `az ad sp create --id {applicationID guid from Step 1}`
4. Assign the appropriate role
    `az role assignment create --assignee {applicationId guid from step1} --role Contributor --scope "\subscriptions\{subscriptionId}" --description "Deployment workflow permissions for main branch"`
4. Assign the clientId, tenantId and subscriptionId as secrets AZURE_CLIENT_ID, AZURE_TENANT_ID and AZURE_SUBSCRIPTION_ID

