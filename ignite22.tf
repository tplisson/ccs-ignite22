resource "azurerm_resource_group" "ignite22" {
  name     = "ignite22"
  location = "Canada Central"
}

### ACI resource with CORRECT configuration
resource "azurerm_container_group" "ignite22_pass_01" {
  name                = "ignite22pass01"
  location            = azurerm_resource_group.ignite22.location
  resource_group_name = azurerm_resource_group.ignite22.name
  ip_address_type     = "Public"
  dns_name_label      = "ignite22pass01"
  os_type             = "Linux"
  container {
    name   = "ignite22-hello-world"
    image  = "ignite22.azurecr.io/ignite22-hello-world:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}

### ACI resource with INCORRECT configuration
resource "azurerm_container_group" "ignite22_fail_01" {
  name                = "ignite22fail01"
  location            = azurerm_resource_group.ignite22.location
  resource_group_name = azurerm_resource_group.ignite22.name
  ip_address_type     = "Public"
  dns_name_label      = "ignite22fail01"
  os_type             = "Linux"
  container {
    name   = "mcr-helloworld"
    image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}

### ACI resource with INCORRECT configuration
resource "azurerm_container_group" "ignite22_fail_02" {
  name                = "ignite22fail02"
  location            = azurerm_resource_group.ignite22.location
  resource_group_name = azurerm_resource_group.ignite22.name
  ip_address_type     = "Public"
  dns_name_label      = "ignite22fail02"
  os_type             = "Linux"
  container {
    name   = "dh-hello-world"
    image  = "docker.io/library/hello-world:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 443
      protocol = "TCP"
    }
  }
}
