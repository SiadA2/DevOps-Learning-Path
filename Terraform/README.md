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

- Reusability: Because our infrastructure is provisioned through code rather than manually, we can reuse our configurations across several projects

- Readability: The fact that we've provisioned our infrastructure through code also means that we can add variables and comments which I will touch upon later on. This is good for presentation.

## The Terraform State

Now, the Terraform state is one of the most important concepts within Terraform. It's the mechanism in which our code on Terraform is turned into infrastructure on the cloud. It also allows us to really leverage Terraform's idempotency. The Terraform state also splits into two:

- Current state: This is a summary of the infrastructure that has already been created on the cloud by terraform. It's stored in files that are suffixed by ```.tfstate```.

- Desired state: This is a summary of infrastructure already created on the cloud by Terraform as well as any additions you want to make. It's usually in a file suffixed by ```.tf```.

So, here's where these concepts come in. When we want to create infrastructure using Terraform, Terraform compares the current state to the desired state, then makes the necessary changes to the current state, ensuring that it matches the desired state. Not the other way round. This is a brief summary of the mechanism that Terraform uses to update cloud infrastructure.

## Terraform Backend

In short, the terraform backend referes to where our current statefile (```*.tfstate```) is stored. The Terraform backend is of two types, and each type have their specific purposes:

- Local backend: As hinted by the name in this type of backend, this is when your backend is stored on your local machine. This is the most cost-efficient & convenient option if you're the only person working on your infrastructure. However, once you start to work on infrastructure as part of large teams, this options becomes far less viable. I'll explain this below.

- Remote backend: In principle, there's nothing stopping multiple people working on the same infrastructure with their own local statefiles. But imagine if Terraform tried to update it's statefile. What statefile does it emulate? What happens if everyone has a different current state? So many questions, hence we just use a remote backend instead.

A remote backend essentially refers to a storage location somewhere on the cloud (Amazon S3, for example) that acts as a single source of truth for our infrastructure state.

## State-Locking

We've just mentioned remote backends and how they allow collaboration across teams. However, we still haven't answered one question. What happens if two people try to make changes to the statefile at the same time? Well, the Terraform statefile actually doesn't react well to that. It can absolutely wreck your statefile, causing things such as race conditions, data corruption and incomplete statfile updates.

The way we prevent this is through Terraform state-locking. This effectively locks the statefile when it's being changed, preventing anyone else from changing the statefile.

On AWS, we most commonly achieve state-locking by locking the remote statefile through DynamoDB. However, recently, a new state-locking mechanism has been released: native S3 locking. S3 now has the capability to lock the statefile without the need for a DynamoDB, saving cloud costs.

