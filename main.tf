provider  "aws" {

        region = "us-west-1"
        }

terraform {
  backend "s3" {
    bucket         = "onemyterralockbucket"
    key            = "TERRAFORM-STATE/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
resource "aws_vpc" "myvpc01" {
        cidr_block = "10.0.0.0/16"
        }

resource "aws_subnet" "mySub01" {
	vpc_id = aws_vpc.myvpc01.id
	cidr_block = "10.0.11.0/24"
	}

resource "aws_subnet" "mySub02" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.8.0/24"
        }

resource "aws_subnet" "mySub03" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.5.0/24"
        }

resource "aws_subnet" "mySub07" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.7.0/24"
        }
resource "aws_subnet" "mySub06" {
        vpc_id = aws_vpc.myvpc01.id
        cidr_block = "10.0.6.0/24"
        }

