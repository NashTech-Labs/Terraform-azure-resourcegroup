terraform {

  required_providers {

    azurerm = {

      source  = "hashicorp/azurerm"

      version = "3.44.1"

    }

  }

}




provider "azurerm" {

  features {




  }

}

##################################################
# RESOURCES                                      #
##################################################
resource "azurerm_resource_group" "compute_networking_rg" {
  name     = var.tfResourceGroup
  location = var.tfRgLocation
  tags     = merge(var.common_tags, { Purpose = "Destination-Arch-ResourceGroup-${var.tfEnvironmentKey}" })
}
