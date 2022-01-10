# To Enforce the policy to allow only when ec2_instance uses Custom VPC
#### 1).Created a Terraform System in Styra DAS
#### 2).Installed a OPA in Ec2 Instance to intergrate with Styra DAS
#### 3).Installed a Terraform 
#### 4).Using terraform Modules created a ec2 with vpc 
#### 5).Run the commands to initialize and to create a binary file
     * terraform init
     * terraform plan --out tfplan.binary
#### 6).To convert into JSON File
     * terraform show -json tfplan.binary > tfplan.json
#### 7). Add a BuidIn Policy to Make the Decision
     * Go to Terraform System 
     * Click on Policy and click on rules.rego
     * Click on add Rules and select "Prohibit EC2 instance without a VPC"
#### 8). Run the command to enfore the policy and makes decision 
     * ./styra vet tfplan.json
#### 9).To Check the Decisions 
     * Go to system and click on Decisions
