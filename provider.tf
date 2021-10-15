# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

# Get AzureRM Terraforn Provider
provider "azurerm" {
  # version = "2.31.1" #Required for AVD
  features {}
}