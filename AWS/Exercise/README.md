# Basic System Design Implementation With AWS

<div>
    <img src="./images/Screenshot 2025-10-23 080752.png" alt="Diagram" width="600"/>
</div>

Here is a setup of an AWS Network, implementing some of the System-Design principles as defined by the AWS Well-Architectured framework at a basic level and getting hands-on with some common AWS tools.

### Tools and skills implemented

- System Design 
- VPCs and AWS Networking 
- EC2 
- Cloud security 

## System Design & Architecture

- VPC split across 2 AZs for High-Availability and Reliability
- 1 NAT Gateway to minimise Elastic IP usage

## VPCs and AWS Networking

- Private instances routed to the internet via a NAT Gateway
- Route tables configured with routes to the Internet Gateway, ensuring internet access
- Security groups configured with expliciit inbound/outbound rules, implementing both Implicit Deny and Privellege Of Least Access

## EC2 

- Public/private key pairs for SSH connections to the instances
- Deployed using AWS's Ubuntu AMIs
- Bastion host configured in ```eu-west-2b``` to restrict access to the private instance

## Cloud Security

- IAM user instead of root to reduce the chances of accidental damage
- Both root and IAM users configured with MFA for hardening

## How to setup 

### Prerequisites:

- AWS account with an IAM user configured w/ MFA.
- A basic understanding of AWS & Networking

### Steps:

#### Creating Our VPCs and Subnets

1. Login to your IAM user account on AWS. It should forward you to the management console page.
2. On the top-left of the page, in the search bar, type in 'VPC'. Click on the VPC option that shows up
3. Click 'Create VPC' 
4. From there, follow the steps in the management console to create your VPC. Make sure to inlciude things such as name and CIDR block notation. Leave the rest of the settings as their defaults and finalise your VPC creation
5. You should be forwarded back to the main VPC page. From here, from here, click on 'subnets' in the left hand pane, and click 'create subnet'. You want to create 2 pubic & 2 private subnets, and one of each for each availity zone.




