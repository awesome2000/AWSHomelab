output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.web_alb.dns_name
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}
