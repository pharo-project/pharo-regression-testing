I provide the infrastructure to run regression tests. Unlike normal tests I will execute each test in a fresh image. Hence the tests can have significant side effects.

A test is considered positive if the newly spawned VM with the test image and script does finish with the exit code 0.