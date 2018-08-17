
TESTS:=$(wildcard tests/*.sh)
SRC:=$(wildcard src/*)

# Run tests outside the project directory so that they cannot interfere with the project's
# own history directory
BUILDDIR:=/tmp/pottery-build

check: $(TESTS:tests/%.sh=$(BUILDDIR)/tests/%.diff)
	@echo SUCCESS

$(BUILDDIR)/tests/%.diff: $(BUILDDIR)/tests/%.output tests/%.expected
	@diff --side-by-side $^ > $@ || ! cat $@

$(BUILDDIR)/tests/%.output: tests/%.sh tests/%.expected $(SRC)
	@echo TEST: $*
	@rm -rf $(dir $@)/$*
	@mkdir -p $(dir $@)/$*
	@(cd $(dir $@)/$* && \
	  PATH=/bin:/usr/bin:$(abspath src):$(abspath tests) \
	  TEST_TIME=1992-01-12T16:34:23Z \
	  VISUAL= \
	  EDITOR= \
	  PS4='+ ' \
	    /bin/sh -v $(abspath $<) > $(abspath $@) 2>&1) || ! cat $@

clean:
	rm -rf $(BUILDDIR)

show-%:
	@echo "$* ($(flavor $*)) = $($*)"

.PHONY: all clean
.PRECIOUS: $(BUILDDIR)/tests/%.output
.DELETE_ON_ERROR:
