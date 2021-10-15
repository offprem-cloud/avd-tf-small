output "resource_group_name" {
  description = "Resource Group Name:"
  value       = azurerm_resource_group.avdrg1.name
}

output "workspace_name" {
  description = "WS Name:"
  value       = azurerm_virtual_desktop_workspace.avdws1.name
}