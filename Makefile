VC=v

fmt:
	find . -type f -name '*.v' | xargs -n1 $(VC) fmt -w

test:
	$(VC) test tests/hello_test.v

run:
	$(VC) run examples/hello_world.v

.PHONY: test format
