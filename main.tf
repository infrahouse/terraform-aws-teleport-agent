resource "aws_iam_policy" "TeleportEC2Discovery" {
  name_prefix = "teleport-ec2-discovery-"
  description = "Teleport uses these permissions to discover EC2 instances and install Teleport on them."
  policy      = data.aws_iam_policy_document.TeleportEC2Discovery.json
}

resource "aws_iam_role" "teleport-agent" {
  name = "teleport-agent"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy_attachment" "TeleportEC2Discovery" {
  policy_arn = aws_iam_policy.TeleportEC2Discovery.arn
  role       = aws_iam_role.teleport-agent.name
}
