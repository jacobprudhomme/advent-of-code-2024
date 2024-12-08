SHELL     := /bin/bash
CFACC     := /usr/local/bin/cfa
CFA_FLAGS :=

SOURCE_DIR := src
BUILD_DIR  := build
SOURCES    := $(wildcard $(SOURCE_DIR)/day*.cfa)
TARGETS    := $(SOURCES:$(SOURCE_DIR)/%.cfa=%)

.PHONY: all
all: $(TARGETS)

$(TARGETS): $(SOURCES)
	mkdir -p $(BUILD_DIR)
	$(CFACC) $(CFA_FLAGS) $^ -o $(BUILD_DIR)/$@

.PHONY: clean
clean:
	rm -rf build
