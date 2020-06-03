#
# This is a project Makefile. It is assumed the directory this Makefile resides in is a
# project subdirectory.
#

# Use this esp-idf commit in build
CURRENT_IDF := cc9b06d4daa27c4c6555fa80b838b3471dd4128d

TMP := $(shell cd $(IDF_PATH) && git checkout -f .)
TMP := $(shell cd $(IDF_PATH) && git checkout -f $(CURRENT_IDF))
TMP := $(shell cd $(IDF_PATH) && git submodule update -f --init --recursive)
TMP := $(shell cd $(IDF_PATH) && git reset --hard)

PROJECT_NAME := hello-world

include $(IDF_PATH)/make/project.mk

