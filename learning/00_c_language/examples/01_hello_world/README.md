# Hello World CMake Project

## 1. 项目简介

这是 Embedded-six-month 学习仓库中的第一个 C 语言工程。

目标：

- 熟悉现代 C 工程目录结构
- 学习 CMake 基本使用流程
- 掌握 GCC 编译链路
- 建立 VSCode + GCC + CMake + Git 的开发习惯


## 2. 开发环境

| 项目 | 配置 |
|---|---|
| OS | Windows |
| IDE | VSCode |
| Compiler | MinGW GCC 16.2.0 |
| Build System | CMake + MinGW Makefiles |
| Version Control | Git |


## 3. 项目结构

```text
├── main.c
├── CMakeLists.txt
├── README.md
└── build/
```

## 4. 构建流程

进入 build 目录：

```bash
mkdir build
cd build
```

生成构建文件：

```bash 
cmake -G "MinGW Makefiles" ..
```

编译：

```bash
cmake --build . 
```

运行：

```bash
./hello_world.exe
```

输出：

```text
Hello Embedded World！
```

# 5. 学习记录

## 已掌握内容

- CMake 基本工作流程
- CMakeLists.txt 基本结构
- GCC编译流程
- Build 目录与源码目录分离
- Git 管理源码和忽略构建产物

## 遇到的问题

第一次执行：

```bash
cmake ..
```

CMake 默认选择：

```text
NMake Makefiles
```

导致：

```text
nmake not found
```

解决：

重新制定 Generator：

```bash
cmake -G "MinGW Makefiles" ..
```

# 6. 后续扩展
后续将在此基础上继续学习：
- C语言基础
- 多文件工程
- 静态库
- 模块化设计
- 单元测试
- 嵌入式工程结构

---
