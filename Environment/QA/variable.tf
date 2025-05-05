variable "name" {
    type = any
  
}

variable "location" {
   type = any
}

variable "tags" {
  type = any
}

variable "lock_level" {
  description = "The level of the management lock (CanNotDelete or ReadOnly). Leave empty for no lock."
  type        = string
  default     = ""
}

variable "sadetails" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    account_tier         = string
    account_replication_type = string
  }))
  
}
