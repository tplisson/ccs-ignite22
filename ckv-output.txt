
       _               _              
   ___| |__   ___  ___| | _______   __
  / __| '_ \ / _ \/ __| |/ / _ \ \ / /
 | (__| | | |  __/ (__|   < (_) \ V / 
  \___|_| |_|\___|\___|_|\_\___/ \_/  
                                      
By bridgecrew.io | version: 2.1.255 

terraform scan results:

Passed checks: 1, Failed checks: 1, Skipped checks: 0

Check: ignite22: "PANW Policy ignite22 - Ensure Azure ACI images are obtained from PANW approved private repositories"
	PASSED for resource: azurerm_container_group.ignite22_pass_01
	File: /ignite22.tf:7-24
Check: ignite22: "PANW Policy ignite22 - Ensure Azure ACI images are obtained from PANW approved private repositories"
	FAILED for resource: azurerm_container_group.ignite22_fail_01
	File: /ignite22.tf:27-44

		27 | resource "azurerm_container_group" "ignite22_fail_01" {
		28 |   name                = "ignite22fail01"
		29 |   location            = azurerm_resource_group.ignite22.location
		30 |   resource_group_name = azurerm_resource_group.ignite22.name
		31 |   ip_address_type     = "Private"
		32 |   dns_name_label      = "aci-label"
		33 |   os_type             = "Linux"
		34 |   container {
		35 |     name   = "hello-world"
		36 |     image  = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
		37 |     cpu    = "0.5"
		38 |     memory = "1.5"
		39 |     ports {
		40 |       port     = 443
		41 |       protocol = "TCP"
		42 |     }
		43 |   }
		44 | }

