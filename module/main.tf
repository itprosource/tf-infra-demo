module "main" {

  source = ".."  

  name = "main"

  subnets = {
    web = "10.0.1.0/24",
    app = "10.1.1.0/24",
    db = "10.2.1.0/24"
  }

}