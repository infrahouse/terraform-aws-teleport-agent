output "teleport_agent_role_name" {
  description = "Created Teleport agent role name."
  value = aws_iam_role.teleport-agent.name
}

output "teleport_agent_role_arn" {
  description = "Created Teleport agent role ARN."
  value = aws_iam_role.teleport-agent.arn
}
