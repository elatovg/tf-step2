data "terraform_remote_state" "step1" {
  backend = "remote"
  config = {
    organization = "gcp-example"
    workspaces = {
      name = "tf-step1"
    }
  }
}