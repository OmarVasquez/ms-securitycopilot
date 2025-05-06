# Bicep for Microsoft Security Copilot Compute Capacities

This Bicep template is designed to deploy a Microsoft Security Copilot Compute Capacity resource. The resource is defined using the `Microsoft.SecurityCopilot/capacities@2024-11-01-preview` API, which is currently in **preview**. As of now, there is no official documentation available for this API.

## Prerequisites

1. **Azure CLI**: Ensure you have the Azure CLI installed and updated to the latest version.
2. **Permissions**: You must have at least the **Contributor** role assigned to the target resource group to deploy this resource.

## Parameters

The following parameters are used in the deployment:

- **capacityName**: The name of the compute capacity. Must be between 3 and 63 characters.
- **geo**: The geographical location for the resource. Allowed values are:
  - `US`
  - `EU`
  - `ANZ`
  - `UK`
- **numberOfUnits**: The number of compute units to allocate.
- **crossGeoCompute**: Specifies whether cross-geo compute is allowed. Allowed values are:
  - `Allowed`
  - `NotAllowed`

## Deployment

To deploy this Bicep template using the Azure CLI, use the following command:

```bash
az deployment group create --resource-group <RESOURCE_GROUP_NAME> --template-file "main.bicep" --parameters "main.bicepparam"