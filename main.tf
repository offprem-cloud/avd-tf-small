# Create Resource Group - This will host all subsequent deployed resources
resource "azurerm_resource_group" "avdrg1" {
  name     = var.rgname
  location = var.region
}

# Create Workspace
resource "azurerm_virtual_desktop_workspace" "avdws1" {
  name                = var.workspace
  location            = var.region
  resource_group_name = azurerm_resource_group.avdrg1.name

  friendly_name = var.workspacefriendlyname
  description   = var.workspacedesc
}

# Create "Pooled" AVD Host Pool
resource "azurerm_virtual_desktop_host_pool" "avdhp1" {
  location            = var.region
  resource_group_name = azurerm_resource_group.avdrg1.name

  name                     = var.pooledhpname
  friendly_name            = var.pooledhpfriendlyname
  description              = var.pooledhpdescription
  type                     = "Pooled"
  maximum_sessions_allowed = 10
  load_balancer_type       = "DepthFirst"
}

#Create RemoteApp Application Group
resource "azurerm_virtual_desktop_application_group" "avdplrag1" {
  name                = var.pooledhpremoteappname
  location            = var.region
  resource_group_name = azurerm_resource_group.avdrg1.name

  type          = "RemoteApp"
  host_pool_id  = azurerm_virtual_desktop_host_pool.avdhp1.id
  friendly_name = var.pooledhpremoteappfriendlyname
  description   = var.pooledhpremoteappdescription
  depends_on = [
    azurerm_virtual_desktop_host_pool.avdhp1, azurerm_virtual_desktop_workspace.avdws1
  ]
}

#Create Desktop Application Group
resource "azurerm_virtual_desktop_application_group" "avdpldag1" {
  name                = var.pooledhpdesktopappname
  location            = var.region
  resource_group_name = azurerm_resource_group.avdrg1.name

  type          = "Desktop"
  host_pool_id  = azurerm_virtual_desktop_host_pool.avdhp1.id
  friendly_name = var.pooledhpdesktopappfriendlyname
  description   = var.pooledhpdesktopappdescription
}


# Associate RemoteApp Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspaceremoteapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.avdws1.id
  application_group_id = azurerm_virtual_desktop_application_group.avdplrag1.id

}

# Associate Desktop Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktop" {
  workspace_id         = azurerm_virtual_desktop_workspace.avdws1.id
  application_group_id = azurerm_virtual_desktop_application_group.avdpldag1.id
}