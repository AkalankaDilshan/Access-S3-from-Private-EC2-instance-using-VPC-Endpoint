terraform {
  cloud {

    organization = "ZeroCloud"

    workspaces {
      name = "Access-S3-from-Private-EC2-instance-using-VPC-Endpoint"
    }
  }
}
