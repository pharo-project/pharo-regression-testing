I am a specialized subclass to run in-image regression tests with side-effects. Each test is run in a newly created separate image.

A test is considered positive if the newly spawned VM with the test image and script does finish with the exit code 0.