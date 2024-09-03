resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = aws_subnet.private[*].id

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_rds_cluster" "main" {
  cluster_identifier      = "main-cluster"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.5"
  availability_zones      = slice(data.aws_availability_zones.available.names, 0, 2)
  database_name           = var.db_name
  master_username         = var.db_username
  master_password         = var.db_password
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  db_subnet_group_name    = aws_db_subnet_group.main.name
  vpc_security_group_ids  = [aws_security_group.rds.id]

  skip_final_snapshot = true
}

resource "aws_rds_cluster_instance" "main" {
  count              = 2
  identifier         = "main-cluster-instance-${count.index}"
  cluster_identifier = aws_rds_cluster.main.id
  instance_class     = "db.t3.small"
  engine             = aws_rds_cluster.main.engine
  engine_version     = aws_rds_cluster.main.engine_version
}

# "5.7.mysql_aurora.2.10.2"
