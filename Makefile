.PHONY: check test

# analyze the project
check:
	dart analyze .
	dart pub run dart_code_metrics:metrics analyze lib

test:
	dart test
