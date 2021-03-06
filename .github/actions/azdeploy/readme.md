# GitHub Action azdeploy

This action can be used to create or update a resource group in Azure using the [Azure Resource Manager templates](https://azure.microsoft.com/en-in/documentation/articles/resource-group-template-deploy/).<br>
One can also use this to delete a resource group, including all the resources within the resource group.

To be able to deploy resources your Action needs to be logged into Azure. The Action [azlogin](https://github.com/segraef/azlogin) does that for you.

## Usage

```

- uses: segraef/azdeploy@v1
  with:
    resourceGroupName: "rg-deploy"
    location: "westeurope"
    templateFile: "deploy.json"
    parametersFile: "parameters.json"

```

## Requirements

segraef/azlogin@v1

## Variables

- If `resourceGroupCommand` is not specified or is "create"
  - `resourceGroupName` – **Mandatory**
  - `resourceGroupLocation` – **Mandatory**
  - `templateFile` – **Mandatory** - Relative path in your github repository.
  - `parametersFile` – **Mandatory** - Relative path in your github repository.
  - `templateUri` – **Optional** - Template Uri.
  - `parametersUri` – **Optional** - Parameters URI.

- If `scope` is not specified or is "subscription"
  - `location` - **Mandatory**
  - `templateFile` – **Mandatory** - Relative path in your github repository.
  - `parametersFile` – **Mandatory** - Relative path in your github repository.
  - `templateUri` – **Optional** - Template Uri.
  - `parametersUri` – **Optional** - Parameters URI.

-  If `resourceGroupCommand` is "delete"
   - `resourceGroupName` – **Mandatory**