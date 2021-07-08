output "public_ip" {
    value = aws_eip.elastic_public_ip.public_ip
}