resource "aws_s3_bucket" "ci_cd_lab_bucky" {

    bucket = "terraform-ci-cd-lab-17"

    tags = {
      Environment = "dev"
      ManagedBy = "terraform-ci-cd"
    }
  
}