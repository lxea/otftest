run "test" {
  assert {
    condition     = file(local_file.test.filename) == "Helo wold!"
    error_message = "Incorrect content in ${local_file.test.filename}."
  }
}

run "main" {
  command = plan

  variables {
    instances = -1
	blobs = 10
  }

  expect_failures = [
    var.instances,
    var.blobs,	
  ]

  
}



run "test2" {

  assert {
    condition     = file(local_file.test.filename) == "Hello wold!"
    error_message = "Incorrect content in ${local_file.test.filename}."
  }
}

