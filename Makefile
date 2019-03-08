GO := go

MOD := $(shell awk '{print $$2}' go.mod)
PRE := dev
REL := $(shell git describe --tags --candidates=1 --dirty=-$(PRE))
REV := $(shell git rev-parse --short HEAD)

build:
	$(GO) build -ldflags "-X $(MOD)/version.Release=$(REL) -X $(MOD)/version.Revision=$(REV)" .
