resource "azurerm_resource_group" "resource_group" {
  name     = var.RESOURCE_GROUP_NAME
  location = "East US"
}

resource "azuread_group" "owner_group" {
  display_name     = var.dl_display_name 
  types            = ["Unified"]
  security_enabled = true
  mail_enabled     = true
  external_senders_allowed = true
  mail_nickname    = var.dl_display_name 
  description      = "DL containing owners of a project in Wiz"
  owners           = [data.azuread_user.owner_user.id] 
}