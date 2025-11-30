CC=gcc
CFLAGS=-Wall -Wextra -O2

SRC_DIR=src
TEST_DIR=tests
BUILD_DIR=build
ARTIFACT_DIR=artifact

all: build

build:
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(SRC_DIR)/hello.c -o $(BUILD_DIR)/hello

test:
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(TEST_DIR)/test_hello.c $(SRC_DIR)/hello.c -o $(BUILD_DIR)/test_hello
	./$(BUILD_DIR)/test_hello

package: build
	mkdir -p $(ARTIFACT_DIR)
	tar -czf $(ARTIFACT_DIR)/hello-artifact.tar.gz $(BUILD_DIR)
