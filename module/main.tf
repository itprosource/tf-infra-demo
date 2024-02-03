module "main" {

  source = "../"  

  vpc_name = "main"

  subnets = {
    web = "10.0.1.0/24",
    app = "10.0.10.0/24",
    db = "10.0.100.0/24"
  }

}
