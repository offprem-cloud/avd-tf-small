variable "rgname" {
  description = "Resource Group Name"
  default     = "RSLW-DEV-TF-AVD-RG"
}

variable "region" {
  description = "Region"
  default     = "centralus"
}

variable "pooledhpname" {
  description = "Pooled Host Pool Name"
  default     = "RSLW-DEV-TF-Pooled-HP"
}

variable "pooledhpfriendlyname" {
  description = "Pooled Host Pool Friendly Name"
  default     = "RSLW-DEV Pooled Host Pool"
}

variable "pooledhpdescription" {
  description = "Pooled Host Pool Description"
  default     = "RSLW-DEV Pooled Host Pool"
}

variable "pooledhpremoteappname" {
  description = "Pooled Host Pool RemoteApp App Group Name"
  default     = "RSLW-DEV-TF-Pooled-RAG"
}

variable "pooledhpremoteappfriendlyname" {
  description = "Pooled Host Pool RemoteApp App Group Friendly Name"
  default     = "RSLW-DEV Pooled Host Pool Remote Apps"
}

variable "pooledhpremoteappdescription" {
  description = "Pooled Host Pool RemoteApp App Group Description"
  default     = "RSLW-DEV Pooled Host Pool Remote Apps"
}

variable "pooledhpdesktopappname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  default     = "RSLW-DEV-TF-Pooled-DAG"
}

variable "pooledhpdesktopappfriendlyname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  default     = "RSLW-DEV Pooled Host Pool Remote Apps"
}

variable "pooledhpdesktopappdescription" {
  description = "Pooled Host Pool Desktop App Group Description"
  default     = "RSLW-DEV Pooled Host Pool Remote Apps"
}

variable "workspace" {
  description = "AVD Workspace Name"
  default     = "RSLW-DEV-TF-Workspace"
}

variable "workspacefriendlyname" {
  description = "AVD Workspace Friendly Name"
  default     = "RSLW-DEV-TF-Workspace"
}

variable "workspacedesc" {
  description = "AVD Workspace Description"
  default     = "RSLW-DEV-TF-Workspace"
}