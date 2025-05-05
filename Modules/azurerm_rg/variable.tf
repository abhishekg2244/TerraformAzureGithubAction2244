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