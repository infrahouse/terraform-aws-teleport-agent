data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::${var.trusted_account_id}:root"]
      type        = "AWS"
    }
    dynamic condition {
      for_each = var.external_id != null ? [1] :[]
      content {
        test = "StringEquals"
        values = [
          var.external_id
        ]
        variable = "sts:ExternalId"

      }
    }
    }
}

data "aws_iam_policy_document" "TeleportEC2Discovery" {
  statement {
    actions = [
      "ec2:DescribeInstances",
      "ssm:DescribeInstanceInformation",
      "ssm:GetCommandInvocation",
      "ssm:ListCommandInvocations",
      "ssm:SendCommand"
    ]
    resources = ["*"]
  }
}

