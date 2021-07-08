resource "random_string" "rds_db_password" {
  length  = 34
  special = false
}

resource "aws_db_subnet_group" "default" {
  name       = "dbsubnet"
  subnet_ids = [aws_subnet.public.id,aws_subnet.private.id]
}

resource "aws_db_instance" "db" {
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  max_allocated_storage   = var.max_allocated_storage
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = var.db_name
  identifier              = "db-${var.db_name}"
  username                = "admin"
  password                = random_string.rds_db_password.result
  parameter_group_name    = var.parameter_group_name
  db_subnet_group_name    = aws_db_subnet_group.default.name
  vpc_security_group_ids  = list(aws_security_group.rds_db.id)
  skip_final_snapshot = true

  publicly_accessible     = var.publicly_accessible
}


resource "aws_security_group" "rds_db" {
  name   = "rds-${var.db_name}"
  vpc_id = aws_vpc.dev.id
}

resource "aws_security_group_rule" "rds_db_inbound" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = [var.cidr_subnet]
  security_group_id = aws_security_group.rds_db.id
  description       = "Docker server access"
}
