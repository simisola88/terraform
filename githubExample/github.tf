provider "github" {
    token = "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"
}

# Add a user to the organizatio

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}