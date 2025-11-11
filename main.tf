terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Zero-cost Resource Group only
resource "azurerm_resource_group" "test_rg" {
  name     = "ZeroCost-Test-RG"
  location = "East US"
}

output "rg_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.test_rg.name
}
