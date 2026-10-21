run "test" {
  assert {
    condition     = file(local_file.test.filename) == "Hello wold!"
    error_message = "Incorrect content in ${local_file.test.filename}."
  }
}
