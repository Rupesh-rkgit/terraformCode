` main.tf: Defines the Terraform version, provider, and initializes basic resources like the VPC.`

`variables.tf: Declares variables for customization, such as AWS region, CIDR blocks, and database credentials.`

`vpc.tf: Sets up the VPC, subnets (public and private), internet gateway, NAT gateway, and route tables.`

`security_group.tf: Defines security groups for the ALB, EC2 instances, and RDS cluster, controlling inbound and outbound traffic.`

`ec2.tf: Creates a launch template for EC2 instances, specifying the AMI, instance type, and user data for web server setup.`

`autoscaling.tf: Configures an Autoscaling group to manage EC2 instances, ensuring scalability and high availability. Also includes scaling policies for automated scaling.`

`alb.tf: Sets up an Application Load Balancer (ALB) to distribute traffic to the EC2 instances, providing a single entry point for users.`

`rds.tf: Creates an RDS Aurora MySQL cluster for the database, including subnet groups, cluster instances, and security configurations.`

`output.tf: Defines outputs for accessing resources like the ALB's DNS name after deployment.`
