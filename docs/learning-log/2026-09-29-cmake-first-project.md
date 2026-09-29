# CMake First Project Learning Log

日期：2026-09-29

## 一、今日目标

完成第一个基于 GCC + CMake 的 C语言工程，并建立标准 Git 管理流程。


## 二、完成内容

### 1. 开发环境确认

完成：

- VSCode安装
- GCC环境配置
- CMake环境配置
- Git环境配置


### 2. 创建第一个C工程

工程路径：

```text
learning/00_c_language/examples/01_hello_world
```

工程结构：

```text
01_hello_world

├── main.c
├── CMakeLists.txt
├── README.md
└── build/
```

### 3. 学习 CMake 基本流程

掌握：

```text
源码目录：main.c
↓
CMake 配置：CMakeLists.txt
↓
生成构建文件：cmake
↓
编译：cmake -- build
```

## 三、遇到的问题

第一次执行：

```bash
cmake ..
```

出现：

```text
nmake not found
```

原因：

CMake 默认选择了 NMake 生成器。

解决：

指定MinGW生成器:

```bash
cmake -G "MinGW MakeFiles" ..
```

## 四、Git 流程实践

完整执行：

```text
git status 

git add .

git diff --cached --stat

git commit 

git push
```

理解：

```text
工作区

↓

暂存区

↓

本地仓库

↓

远程仓库
```

## 五、今日收获

1.理解源码和编译产物分离的重要性。
2.理解 CMake 不是编译器，而是构建系统生成工具。
3.建立第一次完整工程开发闭环。
4.学习 Git 标准提交流程。

## 六、下一步计划

- 建立 C 语言基础学习目录
- 学习变量、数据类型、内存模型
- 编写更多C语言示例工程
- 逐步形成工程化 C 语言能力
  
---

