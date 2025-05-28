terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.71"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-iac-terraform"
    storage_account_name = "saiacterraformsujay"
    container_name       = "terraform-backend"
    key                  = "terraform.tfstate"
    subscription_id      = "0ac4cc25-6f80-42f3-90fd-8e388f67a6fd"
    tenant_id            = "4b6ab7a6-89cc-4cc0-954a-3b914e828e09"
  }
}

provider "azurerm" {
  subscription_id = "0ac4cc25-6f80-42f3-90fd-8e388f67a6fd"
  tenant_id       = "4b6ab7a6-89cc-4cc0-954a-3b914e828e09"
  skip_provider_registration = true
  features {
  }
}