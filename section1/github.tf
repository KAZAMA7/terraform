
resource "github_repository" "test-terraform" {
  name        = "test-terraform"
  description = "My awesome codebase"

  visibility = "public"
}
