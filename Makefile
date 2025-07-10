# 跨平台兼容的 Makefile，主要作为 CMake 的包装器

# 检测操作系统
ifeq ($(OS),Windows_NT)
    # Windows 系统
    MKDIR = mkdir
    RMDIR = rmdir /s /q
    CMAKE = cmake
    CMAKE_GENERATOR = "MinGW Makefiles"
    EXE_EXT = .exe
    BUILD_DIR = build
else
    # Linux/Unix 系统
    MKDIR = mkdir -p
    RMDIR = rm -rf
    CMAKE = cmake
    CMAKE_GENERATOR = "Unix Makefiles"
    EXE_EXT =
    BUILD_DIR = build
endif

# 默认目标
all: configure build

# 配置项目
configure:
	@$(MKDIR) $(BUILD_DIR)
	@cd $(BUILD_DIR) && $(CMAKE) .. -G $(CMAKE_GENERATOR)

# 构建项目
build:
	@cd $(BUILD_DIR) && $(CMAKE) --build .

# 运行程序
run: build
	@cd $(BUILD_DIR) && ./calculator$(EXE_EXT)

# 清理构建
clean:
	@$(RMDIR) $(BUILD_DIR)

# 重新构建
rebuild: clean all

.PHONY: all configure build run clean rebuild