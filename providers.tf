
provider "google" {
  access_token = data.terraform_remote_state.step1.outputs.gcp_auth_token
}