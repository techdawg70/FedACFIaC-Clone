# Assign the role "Storage Blob Data Contributor " to the group "CSE Trimax Migration" at the sainfrahubgovaz001 resource level
az role assignment create --role "Storage Blob Data Contributor" --assignee-object-id 36043f14-e415-48fd-953f-a8a1759a3452 --scope /subscriptions/fa01b7dd-1dbe-47a5-9988-9bc187096458/resourceGroups/rg-infra-hub-govaz-001/providers/Microsoft.Storage/storageAccounts/sainfrahubgovaz001