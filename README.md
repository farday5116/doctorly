# doctorly

1. Task 1 - Ansible script used to create and build app locally.

2. Task 2 - Terraform and Ansible used to create and build script using EC2 on an ASG with user data to bootstrap it. I made the Terraform apply interactive (leaving the default values blank) to allow for customization. The Terraform script is designed to scale an EC2 instance from an AMI that already has the files from task 1 manually copied and saved as an AMI.

3. Task 3 - Using Cloudwatch metrics and log steam I'd monitor the EC2 instance. Cloudwatch included in Task 2.
