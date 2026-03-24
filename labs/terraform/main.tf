# Create the resource group
resource "azurerm_resource_group" "main" {
  name     = "terraform-test"
  location = "eastus"

  tags = {
    Name        = "terraform-test"
    Environment = "Lab"
    Managed_By  = "Terraform"
  }
}

# Create the virtual network
resource "azurerm_virtual_network" "main" {
  name                = "terraform-network-test"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.0.0.0/16"]

  tags = {
    Name        = "terraform-network-test"
    Environment = "Lab"
    Managed_By  = "Terraform"
  }
}