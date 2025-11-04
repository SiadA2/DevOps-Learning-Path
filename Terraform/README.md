# Terraform 

## What is Infrastructure as Code (IaC)? 

Terraform is an example of what's known as infrastructure as code. Before we delve into Terraform, let's first understand what we're working with. 

Infrastructure as Code is self-explanatory, with the definition being in the name itself. It's a way of provisioning cloud infrastructure as lines of code, which provides advantages over provisioning resources manually, which I'll get into later on.

## What is Terraform?

As I mentioned above, Terraform is an example of an IaC tool, created by HashiCorp. Now, more specifically, it's actually a type of infrastructure orchestration, which makes it different from tools such as ansible, which is an example of configuration management. Now, that part probably sounds confusing. Allow me to break it down to you:

Infrastructure Orchestration: Focuses on defining the infrasructure we want, such as EC2 instances and VPCs

Configuration Management: Focuses on defining the intricate configurations of existing infrastructure, for example, what we want installed on our EC2 instance 

Now that's out of the way, another feature of Terraform is that it's cloud-native, meaning that it can be used across different cloud providers, from AWS to Azure and GCP. This makes it different to CloudFormation which is specific to AWS only. 

## Benefits of using Terraform

As I alluded to earlier, Terraform has several advantages. They are: 

- Idempotency: This essentially means Terraform will not re-create copies of existing infrastructure. For example if you've created two subnets and we decide we want to create one more, Terraform is smart enough to understand that and add the extra subnet, rather than creating three new subnets.

- Reusability: 

