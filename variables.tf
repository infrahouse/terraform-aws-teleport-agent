variable "external_id" {
  description = "External ID value that provided by Teleport administrator"
  type        = string
  default = null
}

variable "teleport_agent_role_name" {
  description = "What name to give to Teleport agent role."
  type = string
  default = "teleport-agent"
}
variable "trusted_account_id" {
  description = "AWS Account ID that runs Teleport cluster"
  type = string
}

