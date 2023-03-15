##################################################
# VARIABLES                                      #
##################################################
variable "common_tags" {
  type = map(string)
  default = {
    Terraform   = "True"
    Description = "This is a demo built with Terraform"
  }
  description = "Optional Input - A map of key value pairs that is used to tag resources created. (Default: demo map)"
}

variable "tfEnvironmentKey" {
  type        = string
  default     = "Staging"
  description = "Optional Input - Value to describe the environment. Used for tagging. (Default: Staging)"
}

variable "tfRgLocation" {
  type        = string
  default     = "uksouth"
  description = "Optional Input - Location in azure where resources group will be created."
}

variable "tfResourceGroup" {
  type        = string
  default     = "Dest-Arch-MVP-RG"
  description = "Optional Input - Name of the resource group."
}
