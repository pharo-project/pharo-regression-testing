I provide the infrastructure to run regression tests. Unlike normal tests I will execute each test in a fresh image. Hence the tests can have significant side effects.

I provide the basic infrastructure to save copies of this image and run them separately.

TODO: currently a lot of features are hacked in here, the TestCase instead of using a different test runner.