output "name" {
  value = [for subnet in aws_subnet.private_subnets : subnet.id]
}

output "test" {
  value = values({ for sub in aws_subnet.private_subnets : sub.id => sub.arn })
}
