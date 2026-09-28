# Source Study Roadmap

> 本文档定义个人嵌入式工程知识库中的 **Source Study（优秀工程源码研究）体系与长期路线**。
>
> Source Study 不是为了“看过多少开源项目”，也不是为了复制优秀项目的代码，而是通过研究成熟工程，学习经过长期实践验证的软件架构、模块设计、抽象方式、数据结构、并发模型、驱动模型、错误处理、测试方法、构建系统、可移植性以及工程决策。
>
> 本路线最终服务于整个个人嵌入式工程成长体系：
>
> **C → MCU → Peripheral → DMA / Interrupt → RTOS → Driver → Middleware → Source Study → System Architecture → Testing → Engineering → Cross-platform Transfer → Independent System Design**
>
> 最终目标：
>
> **从“会写嵌入式代码”，逐渐成长为能够理解、设计、实现、调试、验证和迁移完整 Embedded System 的工程师。**

---

# 1. Source Study 的定位

Source Study 是整个知识体系中的一个独立能力模块。

它解决的问题不是：

> “我还缺哪些 API 没学过？”

而是：

> **“成熟工程师和优秀工程团队，是如何解决复杂嵌入式软件问题的？”**

通过研究优秀开源工程，逐步学习：

- Architecture
- Module Design
- Interface Design
- Data Structure
- Concurrency
- Scheduling
- Memory Management
- Interrupt
- DMA
- Driver Model
- Hardware Abstraction
- Middleware
- Protocol Stack
- State Machine
- Error Handling
- Configuration
- Portability
- Build System
- Testing
- Debugging
- Performance
- Reliability
- Documentation
- Versioning
- Long-term Maintenance

最终形成属于自己的：

> **Engineering Judgment**

即：

> 面对一个工程问题时，不仅知道“怎么写”，还知道“为什么这样设计、还有哪些方案、各自代价是什么、在什么约束下应该选择哪一种方案，以及如何验证最终结果”。

---

# 2. Source Study 的核心目标

Source Study 最终不是培养：

> “源码阅读能力”

而是培养：

> **从成熟工程中提取设计思想，并迁移到自己项目中的能力。**

完整过程：

```text
成熟工程
    ↓
Architecture
    ↓
Module
    ↓
Mechanism
    ↓
Constraint
    ↓
Trade-off
    ↓
Implementation
    ↓
Test
    ↓
Engineering Principle
    ↓
自己的 Project
    ↓
重新设计 / 实现
    ↓
验证
    ↓
形成自己的 Engineering Judgment
```

最终希望做到：

```text
面对陌生工程
    ↓
快速定位入口
    ↓
建立整体 Architecture Map
    ↓
识别核心模块
    ↓
追踪关键数据流 / 控制流
    ↓
理解核心机制
    ↓
理解设计取舍
    ↓
运行 / Debug / 修改
    ↓
提取可复用设计思想
    ↓
迁移到自己的系统
```

---

# 3. 为什么必须进行 Source Study

仅靠教材、课程和自己的小项目，很容易形成：

```text 
知道概念
    ↓
会调用 API
    ↓
能写 Demo
    ↓
能完成自己的小项目
```

但是举例真正的工程能力仍然存在明显差距。

成熟开源项目提供了另外一条学习路径：

```text
理论
  ↓
自己的实验
  ↓
自己的 Project
  ↓
成熟工程
  ↓
对比
  ↓
发现差距
  ↓
理解成熟设计
  ↓
反哺自己的 Project
```

因此：

> Projects 让我们获得“自己解决问题”的能力

> Source Study 让我们看到“成熟工程是如何解决问题的”。

两者必须形成循环。

---

# 4. Source Study 的基本原则

## 4.1 不追求读完整个项目

大型项目通常拥有数十万、数百万甚至更多代码。

我们的目标不是：

> 从第一行读到最后一行。

而是：

> 带着问题进入源码。

例如：

- Scheduler 为什么这样设计？
- Queue 为什么使用这种数据结构？
- Interrupt 和 Task 如何协作？
- Driver 如何与 Hardware 解耦？
- 不同 MCU 如何复用同一套代码？
- Protocol Stack 为什么要分层？
- Device Model 解决了什么问题？
- Configuration 为什么采用这种机制？
- 为什么这里使用 Callback？
- 为什么这里使用 State Machine？
- 为什么这里必须使用 Lock？
- 这个 Buffer 为什么这么大？
- 这个 Error Handling 为什么这样设计？

---

# 5. Source Study 的阅读顺序

研究一个新项目时，默认按照：

```text 
Project
 ↓
README / Documentation
 ↓
Build System
 ↓
Directory Structure
 ↓
Architecture
 ↓
Entry Point
 ↓
Core Modules
 ↓
Key Data Structures
 ↓
Key Call Chain
 ↓
Critical Mechanism
 ↓
Error Handling
 ↓
Test
 ↓
Portability
 ↓
Performance / Constraint
 ↓
Design Trade-off
```

不要一开始就陷入：

```text
某个 .c 文件
    ↓
某个函数
    ↓
某一行代码
```

然后失去整体认知。

---

# 6. Source Study 的五层深度模型

所有项目都使用统一的深度模型。

---

**Level 1: 认识**

回答：

- 项目是什么？
- 解决什么问题？
- 适用于什么场景？
- 大致架构是什么？
- 核心模块有哪些？

目标：

> 能够向别人解释这个项目“是干什么的”。

---

**Level 2：理解**

能够：

- 看懂主要模块
- 理解主要 API
- 理解主要数据结构
- 理解基本调用关系
- 理解主要数据流
- 理解主要控制流

目标：

> 能够解释项目的基本工作机制。

---

**Level 3：分析**

能够：

- 阅读核心模块源码
- 跟踪关键调用链
- 分析核心数据结构
- 分析状态变化
- 分析异常路径
- 分析资源管理
- 分析并发关系
- 分析关键设计

目标：

> 能够解释“为什么这样实现”。

---


**Level 4：迁移**

能够：

- 提取设计思想
- 在自己的项目中重新设计
- 自己实现核心机制
- 根据自身约束修改方案
- 对不同方案进行 Trade-off
- 通过测试验证设计

目标：

> 能够把成熟工程的思想迁移到自己的系统。

---

**Level 5:深度研究**

能够：

- 深入理解核心实现
- 修改核心模块
- 扩展功能
- 分析性能
- 分析边界条件
- 分析复杂 Bug
- 阅读 Issue / Commit / Design Discussion
- 理解长期演进过程

目标：

> 达到能够参与该类工程开发与维护的水平。

---

# 7. 不同项目不追求相同深度

不是所有源码都需要 Level 5。

原则：

```text
核心能力相关
    → 深入

当前项目相关
    → 深入

长期方向相关
    → 中等深入

建立视野
    → 理解

暂时无关
    → 知道存在
```

避免：

> 为了证明自己“学的认真”，把大量时间投入到当前完全用不到的源码细节。

---

# 8. Source Study 的项目分层

长期源码研究分为：

```text
A. RTOS / Kernel
B. Embedded OS
C. Bootloader / Startup
D. Driver Framework
E. Protocol Stack
F. File System / Storage
G. Embedded Linux
H. Hardware Abstraction
I. Middleware
J. Build / Configuration System
K. Testing / Tooling
L. Application Architecture
```

不同阶段根据实际项目逐步进入。

---

# 9. 第一核心研究对象：FreeRTOS

目录：

```text
source-study/freertos/
```

FreeRTOS是第一阶段最重要的源码研究对象之一。

原因：

- 与 MCU 学习高度相关
- 与当前 STM32 路线直接相关
- 代码规模相对适合学习
- RTOS 核心机制具有代表性
- 能直接服务后续 Projects
- 可以建立 Kernel 思维

---

## 9.1 FreeRTOS 主要研究内容

**Kernel**

重点：

- Scheduler
- Task
- Context Switch
- Tick 
- Priority
- Ready List
- Blocked List 
- Delay 
- Time Management

---

**IPC**

重点：

- Queue
- Semaphore
- Mutex
- Event Group
- Stream Buffer
- Message Buffer

---

**Memory**

重点：

- Heap
- Static Allocation
- Dynamic Allocation
- Memory Fragmentation
- Memory Ownership

---

**Interrupt**

重点：

- ISR
- Deferred Processing
- Interrupt Priority
- FromISR API
- Context Switch Request

---

**Timer**

重点：

- Software Timer
- Timer Service Task 
- Timer Queue

---

**Port Layer**

重点：

- Architecture Port
- Context Switch 
- Stack Frame 
- Interrupt Entry / Exit 
- MCU Architecture Differences

---

## 9.2 FreeRTOS 核心问题

必须逐渐能够回答：

```text
Task 是什么？

Scheduler 如何选择 Task？

Task 为什么会进入 Blocked？

Queue 如何实现？

Semaphore 和 Mutex 有什么区别？

Priority Inversion 是什么？

Critical Section 如何实现？

Interrupt 如何与 Kernel 协作？

Context Switch 发生在哪里？

Tick 的作用是什么？

不同 MCU Architecture 如何 Port？

为什么 Kernel 可以跨 MCU 使用？
```

---

## 9.3 FreeRTOS 最终目标

不是：

> 会用 FreeRTOS

而是：

> **理解RTOS Kernel 的基本设计与实现思想。**

目标深度：

**Level 4**

---

# 10.第二核心研究对象：ThreadX / Azure RTOS

目录：

```text 
source-study/threadx
```

ThreadX 的主要意义不是再学一个 RTOS API。

而是：

> **横向比较不同 RTOS 的设计思想。**

---

## 10.1 重点研究

- Kernel Architecture
- Thread
- Scheduler
- Synchronization
- Queue
- Semaphore
- Mutex
- Event
- Timer
- Memory Pool
- Portability
- Interrupt
- Context Switch

---

## 10.2 与 FreeRTOS 对比

重点建立：

```text 
FreeRTOS
    ↕
ThreadX
```

比较：

- Task/Thread Model
- Scheduler
- IPC
- Memory
- Timer
- Critical Section
- Port Layer
- API Design 
- Configuration 
- Portability

重点不是回答：

> “谁更好？”

而是回答：

> **“同一个工程问题，不同团队为什么会采用不同设计？**

目标深度：

**Level 3**

---

# 11. 第三核心研究对象：μC/OS

目录：

```text
source-study/ucos/
```

μC/OS 主要用于建立经典 Embedded RTOS 认知。

---

## 11.1 重点研究

- Kernel Structure
- Task
- Scheduler
- IPC
- Timer
- Memory 
- Portability
- Critical Section
- Interrupt

---

## 11.2 研究意义

建立：

```text
μC/OS
   ↓
FreeRTOS
   ↓
ThreadX
```

横向认知。

最终形成；

> 不再把某一个 RTOS 当成“RTOS 本身”，而是能够理解 RTOS 背后的共同抽象。

目标深度：

**Level 3**

---

# 12.第四核心研究对象：Zephyr

目录：

```text
source-study/zephyr/
```

Zephyr 是长期路线中非常重要的项目。

它承担的不是单纯的 RTOS 学习，而是：

> **现代 Embedded OS / Embedded Software Platform 学习。**

---

## 12.1 重点研究

**Kernel**

- Scheduler
- Thread
- Synchronization
- Memory
- Timer

**Device Model**

- Device 
- Driver
- Device Instance
- Device Binding 

**Driver**

- Driver API 
- Driver Implementation
- Hardware Abstraction
- Device Access

**Configuration**

- Kconfig
- Configuration System

**Hardware Description**

- Device Tree
- Board Description

**Build**

- CMake
- West
- Build System

**Portability**

- Architecture
- Board
- Soc
- Driver
- Application

---

## 12.2 Zephyr 最重要的学习点

重点理解：

```text
Application
     ↓
Subsystem
     ↓
Driver
     ↓
Device Model
     ↓
HAL
     ↓
SoC
     ↓
Architecture
     ↓
Hardware
```

以及：

```text
Application
     ↓
Configuration
     ↓
Build System
     ↓
Board
     ↓
SoC
     ↓
Driver
```

最终理解：

> **现代嵌入式软件平台是如何组织跨平台生态的。**

目标深度：

**Level 4**

---

# 13.第五核心研究对象：U-Boot

目录：

```text
source-study/uboot/
```

U-Boot 用于把能力从：

> MCU Embedded Software

进一步扩展到：

> Embedded System Software。

---

## 13.1 重点研究

- Boot Flow
- Startup
- Initialization
- Driver Model
- Device Tree
- Command System 
- Environment
- Storage 
- Networking
- Architecture Portability

---

## 13.2 核心认知

建立：

```text
BootROM
   ↓
Bootloader
   ↓
Hardware Initialization
   ↓
Kernel / Application
```

以及：

```text
Hardware
   ↓
Bootloader
   ↓
OS
   ↓
Application
```

之间的系统关系。

目标深度：

**Level 3**

---

# 14.第六核心研究对象：TinyUSB

目录：

```text
source-study/tinyusb/
```

TinyUSB 用于学习：

> **复杂协议栈如何分层、抽象和跨平台。**

---

## 14.1 重点研究

- USB Stack Architecture
- Host
- Device
- Controller
- Endpoint
- Transfer
- Class Driver
- Controller Driver
- Callback
- Buffer
- State Machine
- Portability

---

## 14.2 核心架构

重点理解：

```text
Application
      ↓
USB Class
      ↓
USB Stack
      ↓
Controller Driver
      ↓
MCU Hardware
```

学习：

- 上层协议如何与底层控制器解耦
- Class 与 Controller 如何分离
- Callback 如何使用
- 状态机如何组织
- Buffer 如何管理
- 多 MCU 如何复用代码

目标深度：

**Level 3 ~ Level 4**

---

# 15. 第七核心研究对象：FatFS

目录：

```text
source-study/fatfs/
```

FatFS 与已有嵌入式基础直接相关。

---

## 15.1 重点研究

- File System
- Block Device
- Disk I/O
- Buffer
- Cache
- File Object
- Directory
- Error Handling
- Configuration
- Portability

---

## 15.2 核心架构

重点理解：

```text
Application
     ↓
File System API
     ↓
FatFS
     ↓
Disk I/O Layer
     ↓
SD / SPI Flash / NAND / Other Storage
```

学习：

> **如何通过抽象接口让文件系统与具体存储硬件解耦。**

目标深度：

**Level 3**

---

# 16. 第八核心研究对象：LittleFS

目录：

```text
source-study/littlefs/
```

LittleFS 主要用于学习嵌入式 Flash Storage 的设计。

重点：

- Flash Constraints
- Wear Leveling
- Power Loss
- Metadata
- Block Management
- Cache
- Error Handling
- Recovery

重点理解：

> 为什么嵌入式 Flash 存储不能简单等同于普通磁盘。

目标深度：

**Level 2 ~ Level 3**

具体深度根据项目需求调整。

---

# 17. 第九核心研究对象：Embedded Linux / Linux Kernel

目录：

```text
source-study/linux/
```

Linux Kernel 不要求前期深入。

它的长期作用是：

> **建立系统级工程视野。**

---

## 17.1 第一阶段

重点理解：

- Kernel
- Driver
- Device Tree
- Interrupt
- DMA
- Scheduler
- Memory
- Workqueue
- Synchronization

---

## 17.2 第二阶段

逐渐研究：

- Driver Model
- Subsystem
- Device Model
- Kernel API
- Concurrency
- Memory Management
- Scheduling
- Networking
- Storage

---

## 17.3 第三阶段

根据实际方向深入：

- Linux Driver
- Networking
- Industrial Communication
- Camera
- Audio
- Sensor
- Robotics
- AI Edge
- Real-time

Linux 的学习重点不是：

> “把 Linux Kernel 全读懂。”

而是：

> **理解大型工程如何组织复杂系统。**

目标深度：

**Level 2 → Level 4**

随着职业方向动态提高。

---

# 18. 第十类研究对象：Driver Framework

长期研究：

- Zephyr Driver Model
- Linux Driver Model
- RTOS Driver Architecture
- MCU Vendor HAL
- CMSIS
- BSP
- HAL
- LL
- Bare-metal Driver

重点比较：

```text
Application
     ↓
Driver API
     ↓
Driver
     ↓
HAL / LL
     ↓
Register
     ↓
Hardware
```

研究：

- Abstraction
- Encapsulation
- Interface
- Portability
- Hardware Dependency
- Error Handling

最终目标：

> 能够自己设计稳定、可迁移的 Driver Architecture。

---

# 19. 第十一类研究对象：Middleware

长期研究：

- USB
- TCP/IP
- MQTT
- Modbus
- CAN Stack
- BLE
- File System
- Graphics
- Audio
- Network Stack

重点研究：

```text
Application
    ↓
Middleware
    ↓
Driver
    ↓
Hardware
```

理解：

- 为什么要 Middleware
- Middleware 如何解耦
- Middleware 如何配置
- Middleware 如何跨平台
- Middleware 如何处理错误
- Middleware 如何测试

---

# 20. 第十二类研究对象：Protocol Stack

长期研究：

```text
UART
SPI
I2C
CAN
USB
Ethernet
TCP/IP
BLE
```

重点不是重新学习协议本身。

而是研究：

> **成熟 Protocol Stack 是如何实现的。**

重点：

- Layering
- State Machine
- Buffer
- Packet
- Parser
- Timeout
- Retry
- Error Handling
- Callback
- Async Processing
- Concurrency

---

# 21. 第十三类研究对象：Build System

随着工程复杂度提升，需要研究：

- CMake
- Ninja
- Make
- Kconfig
- West
- GCC
- Clang
- Cross Compilation
- Linker Script
- Dependency Management

重点理解：

```text
Source
 ↓
Configuration
 ↓
Compiler
 ↓
Linker
 ↓
Binary
 ↓
Flash
 ↓
Run
 ↓
Test
```

最终目标：

> **能够理解并维护成熟 Embedded Project 的 Build System。**

---

# 22. 第十四类研究对象：Testing / Tooling

长期研究成熟工程中的：

- Unit Test
- Integration Test
- System Test
- Mock
- Stub
- Test Harness
- Static Analysis
- Code Coverage
- CI
- Regression Test
- Benchmark

重点观察：

> 一个成熟项目如何证明“代码是正确的”。

而不是：

> “程序能跑起来，所以没问题。”

---

# 23. Source Study 与 AI

AI 是 Source Study 的重要辅助工具。

可以使用 AI：

- 解释陌生代码
- 生成模块关系图
- 分析调用链
- 总结数据结构
- 解释复杂算法
- 提供阅读顺序
- 提出关键问题
- 对比两个实现
- 辅助定位代码
- 生成阅读笔记初稿
- 进行 Code Review
- 根据源码提出面试问题
- 模拟技术答辩

但是必须遵循：

> **AI 解释 ≠ 源码事实。**

最终依据必须优先来自：

```text
源码
 ↓
官方 Documentation
 ↓
Test
 ↓
Issue
 ↓
Commit
 ↓
实际运行结果
```

AI 的作用：

```text
降低阅读成本
提高理解效率
帮助建立上下文
提供问题视角
```

而不是：

```text
替代源码阅读
替代验证
替代工程判断
```

---

# 24. AI 辅助源码阅读工作流

推荐工作流：

```text
1. 明确问题
      ↓
2. AI 建立项目背景
      ↓
3. 阅读官方 Documentation
      ↓
4. 定位源码
      ↓
5. 建立 Architecture Map
      ↓
6. AI 辅助解释
      ↓
7. 自己验证源码
      ↓
8. 运行 / Debug
      ↓
9. 修改实验
      ↓
10. 记录结果
      ↓
11. 提取设计思想
      ↓
12. 迁移到自己的 Project
```

---

# 25. Source Study 的输出结构

每个重要研究项目都可以逐渐形成：

```text
source-study/
└── project-name/
    ├── README.md
    ├── architecture.md
    ├── source-map.md
    ├── module-analysis.md
    ├── mechanism/
    ├── design/
    ├── experiments/
    ├── notes/
    ├── bugs/
    └── references/
```

并不要求一开始全部创建。

随着研究深入逐步形成。

---

# 26. Source Study README 应包含什么

每个项目的 `README.md` 建议包含：

```text
# Project Name

## 1. Project Overview

## 2. Why Study It

## 3. Version

## 4. Target

## 5. Architecture

## 6. Core Modules

## 7. Key Questions

## 8. Study Progress

## 9. Important Findings

## 10. Design Lessons

## 11. Experiments

## 12. Transfer to My Projects

## 13. Open Questions

## 14. References
```

---

# 27. Source Study 的记录方式

不要只记录：

```text
今天阅读了 3 个小时。
```

应该记录：

```text
问题
 ↓
源码位置
 ↓
理解
 ↓
验证
 ↓
结论
```

例如：

```text
问题：
FreeRTOS Queue 为什么需要复制数据？

源码：
queue.c / xxx function

理解：
Queue 内部维护固定大小的存储区域。

验证：
修改实验代码并观察行为。

结论：
Queue 的数据复制机制解决了任务之间的数据所有权问题。

迁移：
在自己的 IMU 数据流中考虑 Queue 与 RingBuffer 的适用边界。
```

---

# 28. Source Study 必须关注的工程维度

以后研究任何项目，都尽量从以下维度观察。

## 28.1 Architecture

- 分层
- 模块
- 依赖
- 数据流
- 控制流

## 28.2 Interface

- API
- Callback
- Handle
- Object
- Interface

## 28.3 Data Structure

- Queue
- List
- RingBuffer
- Pool
- Tree
- Hash
- Packet
- State

## 28.4 Concurrency

- Thread
- ISR
- Lock
- Mutex
- Semaphore
- Event
- Atomic
- Critical Section

## 28.5 Memory

- Static
- Dynamic
- Pool
- Stack
- Heap
- Ownership
- Lifetime

## 28.6 Error Handling

- Error Code
- Exception-like mechanism
- Retry
- Timeout
- Recovery
- Fault State

## 28.7 Portability

- Architecture
- SoC
- MCU
- Board
- Driver
- HAL

## 28.8 Configuration

- Compile-time
- Runtime
- Kconfig
- Macro
- Device Tree
- Configuration File

## 28.9 Performance

- CPU
- Memory
- Latency
- Throughput
- Timing
- Power

## 28.10 Testing

- Unit
- Integration
- System
- Regression
- Benchmark

---

# 29. Source Study 与 Projects 的关系

Source Study 必须与 Projects 建立双向反馈。

```text
Source Study
      ↓
设计思想
      ↓
Projects
      ↓
真实问题
      ↓
重新研究 Source
      ↓
新的理解
      ↓
改进 Projects
```

---

# 30. Flagship Project：Oscilloscope

示波器是当前最重要的综合项目。

Source Study 可以围绕：

```text
DMA
Interrupt
RingBuffer
RTOS
Driver
Buffer Management
Trigger
DSP
Data Processing
Testing
Architecture
```

进行。

最终形成：

```text
Source Study
     ↓
Oscilloscope Architecture
     ↓
Implementation
     ↓
Testing
     ↓
Bug
     ↓
Review
```

---

# 31. Portfolio Project：IMU

重点研究：

```text
SPI
FIFO
DMA
Timestamp
Buffer
Driver
Filtering
Data Processing
```

对应源码学习：

```text
Driver
Buffer
Sensor Stack
RTOS
```

---

# 32. Portfolio Project：BMS Monitor

重点研究：

```text
ADC
CAN
State Machine
Fault Handling
Event
Communication
Storage
```

对应源码学习：

```text
CAN Stack
State Machine
Event System
Error Handling
Storage
```

---

# 33. Portfolio Project：Industrial DAQ

重点研究：

```text
Acquisition
Communication
Protocol
Data Processing
Storage
Configuration
```

对应源码学习：

```text
Protocol Stack
Middleware
Driver
File System
Configuration
```

---

# 34. Portfolio Project：FOC

重点研究：

```text
ADC
PWM
Timer
DMA
Interrupt
Control Loop
Real-time
```

对应源码学习：

```text
RTOS
Driver
Timer
ADC
DMA
Control Architecture
```

---

# 35. Source Study 与 Platform Roadmap 的关系

Source Study 不能脱离 Platform。

未来平台迁移：

```text
STM32
   ↓
GD32
   ↓
AT32
   ↓
TI DSP
   ↓
FPGA
   ↓
Zynq
   ↓
Embedded Linux
```

在不同平台研究成熟工程后，逐渐理解：

```text
哪些是平台相关？
哪些是平台无关？
哪些是硬件约束？
哪些是软件抽象？
哪些设计可以迁移？
哪些设计必须重构？
```

最终形成：

> **Platform-independent Engineering Thinking**

---

# 36. Source Study 的长期阶段路线

## Stage 0：准备阶段

建立：

```text
Source Study Method
Git
GitHub
Code Reading
Debugging
Search
Documentation Reading
```

目标：

> 能够正确进入一个陌生工程。

---

## Stage 1：RTOS Kernel

核心：

```text
FreeRTOS
```

重点：

```text
Task
Scheduler
Queue
Semaphore
Mutex
Timer
Memory
Interrupt
Port
```

目标：

**Level 4**

---

## Stage 2：RTOS 横向比较

研究：

```text
FreeRTOS
ThreadX
μC/OS
```

重点：

> 理解 RTOS 的共性与差异。

目标：

**Level 3**

---

## Stage 3：现代 Embedded OS

研究：

```text
Zephyr
```

重点：

```text
Device Model
Driver
Kconfig
Device Tree
Build System
Portability
```

目标：

**Level 4**

---

## Stage 4：Middleware / Protocol

研究：

```text
TinyUSB
FatFS
LittleFS
```

重点：

```text
Layering
Abstraction
Buffer
State Machine
Storage
Protocol
```

目标：

**Level 3 ~ Level 4**

---

## Stage 5：Boot / System

研究：

```text
U-Boot
```

重点：

```text
Boot
Startup
Driver
Device Tree
System Architecture
```

目标：

**Level 3**

---

## Stage 6：Embedded Linux

研究：

```text
Linux Kernel
```

重点：

```text
Driver
Scheduler
Memory
Interrupt
DMA
Device Tree
Subsystem
```

目标：

**Level 2 → Level 4**

---

## Stage 7：长期方向专项研究

根据职业方向逐步深入：

```text
Robotics
Drone
Flight Controller
IMU
Navigation
Motor Control
Industrial Control
DAQ
BMS
Ethernet
AI Edge
```

研究对应成熟开源工程。

目标：

> **让 Source Study 与实际职业方向形成闭环。**

---

# 37. Source Study 的“按需深入”原则

源码研究不按照：

> “今天研究 FreeRTOS，明天研究 Zephyr，后天研究 Linux。”

机械推进。

而应该：

```text
当前 Project
     ↓
遇到工程问题
     ↓
寻找成熟工程
     ↓
研究相关机制
     ↓
理解成熟方案
     ↓
回到 Project
     ↓
验证
```

例如：

```text
Oscilloscope
   ↓
DMA Buffer 管理问题
   ↓
研究成熟 RingBuffer / Buffer Design
   ↓
提取设计思想
   ↓
重新设计
   ↓
测试
```

这样 Source Study 才真正有价值。

---

# 38. Source Study 的反向学习

有时候不是：

```text
先学源码
    ↓
再做项目
```

而是：

```text
先做 Project
    ↓
遇到不会的问题
    ↓
寻找成熟工程
    ↓
研究源码
    ↓
获得解决方案
```

两种方式都允许。

最终形成：

```text
Theory
 ↕
Lab
 ↕
Project
 ↕
Source Study
 ↕
Engineering
```

---

# 39. Source Study 的实验原则

重要源码不要只看。

尽量：

```text
Read
 ↓
Build
 ↓
Run
 ↓
Debug
 ↓
Modify
 ↓
Break
 ↓
Observe
 ↓
Restore
```

例如：

```text
修改 Queue 参数
 ↓
观察行为

修改 Scheduler 参数
 ↓
观察 Timing

修改 Buffer
 ↓
制造 Overflow

修改 Timeout
 ↓
观察状态变化

故意制造错误
 ↓
观察 Error Handling
```

通过实验理解机制。

---

# 40. Source Study 的 Debug 方法

遇到陌生源码：

```text
入口
 ↓
Call Stack
 ↓
关键变量
 ↓
关键数据结构
 ↓
状态变化
 ↓
条件分支
 ↓
异常路径
```

重点建立：

> **动态执行视角**

而不是只停留在静态阅读。

---

# 41. Source Study 的 Commit / Issue 研究

对于重要项目，可以进一步研究：

- Commit
- Issue
- Pull Request
- Release Note
- Design Discussion
- Bug Fix

重点关注：

> 一个成熟工程是如何随着真实问题不断演进的。

尤其关注：

```text
Bug
 ↓
Root Cause
 ↓
Fix
 ↓
Regression
 ↓
Design Change
```

这部分对于培养真正的 Engineering Judgment 非常重要。

---

# 42. Source Study 的 Bug 学习

优秀项目中的 Bug 是非常有价值的学习材料。

重点记录：

```text
Bug
 ↓
Symptom
 ↓
Reproduction
 ↓
Root Cause
 ↓
Fix
 ↓
Why Previous Design Failed
 ↓
Regression Test
 ↓
Lesson
```

最终建立：

> **自己的 Embedded Bug Knowledge Base**

---

# 43. Source Study 的 Design Trade-off 学习

以后研究任何成熟设计，都要问：

```text
为什么选择 A？

为什么不是 B？

A 的优点是什么？

A 的缺点是什么？

A 的成本是什么？

A 在什么约束下更合理？

如果资源发生变化怎么办？

如果平台发生变化怎么办？

如果性能要求提高怎么办？
```

这一步是从：

> Programmer

向：

> Engineer

转变的重要过程。

---

# 44. Source Study 的“不要盲目崇拜开源项目”

成熟项目不代表：

> 每一行代码都是最优解。

必须考虑：

- 历史包袱
- 兼容性
- 向后兼容
- 性能要求
- 硬件约束
- 团队规模
- 产品需求
- 商业需求
- 历史设计

因此研究源码时：

> **理解设计背景比判断代码“好不好”更重要。**

---

# 45. Source Study 与自己的代码风格

研究成熟项目时，同时观察：

- Naming
- File Organization
- Function Size
- Comment
- Header Design
- API Naming
- Error Code
- Macro
- Static Function
- Const
- Volatile
- Struct
- Enum
- Callback
- Configuration

最终形成自己的：

> Embedded Coding Standard

并逐步沉淀到：

```text
docs/engineering/
```

---

# 46. Source Study 与工程化能力

长期研究成熟项目后，希望逐渐建立：

```text
Architecture
+
Coding
+
Build
+
Test
+
Debug
+
CI
+
Documentation
+
Release
+
Maintenance
```

因此 Source Study 最终不是“代码阅读课程”。

它是：

> **工程能力的第二课堂。**

---

# 47. Source Study 的最终输出

长期希望最终形成：

```text
source-study/
├── freertos/
├── threadx/
├── ucos/
├── zephyr/
├── uboot/
├── tinyusb/
├── fatfs/
├── littlefs/
├── linux/
└── ...
```

但这里的“数量”不是目标。

真正目标是：

```text
优秀工程
   ↓
Architecture
   ↓
Mechanism
   ↓
Trade-off
   ↓
Engineering Principle
   ↓
Own Project
   ↓
Own Architecture
```

---

# 48. Source Study 与职业能力的关系

长期职业能力结构：

```text
C
+
Computer Architecture
+
MCU
+
Peripheral
+
DMA
+
Interrupt
+
RTOS
+
Driver
+
Middleware
+
Protocol
+
Algorithm
+
Debugging
+
Testing
+
System Architecture
+
Engineering
+
Source Study
+
Cross-platform
+
AI-assisted Development
```

Source Study 的作用：

> **把零散的知识连接到真实成熟工程。**

---

# 49. Source Study 与 AI-Native Engineering

未来工程工作中：

AI 可以帮助：

```text
代码生成
 ↓
测试生成
 ↓
文档生成
 ↓
代码解释
 ↓
源码搜索
 ↓
Bug 分析
 ↓
方案比较
 ↓
静态分析辅助
 ↓
知识整理
```

但工程师必须掌握：

```text
Requirement
 ↓
Constraint
 ↓
Architecture
 ↓
Trade-off
 ↓
Implementation Review
 ↓
Verification
 ↓
System Validation
```

因此：

> **AI 提高 Source Study 的效率，但不能替代 Engineering Judgment。**

---

# 50. Source Study 的最终能力模型

最终希望达到：

## 第一层

看到陌生项目：

> 不慌。

## 第二层

能够快速：

> 找入口。

## 第三层

能够：

> 建立 Architecture Map。

## 第四层

能够：

> 找核心模块。

## 第五层

能够：

> 跟踪关键数据流和控制流。

## 第六层

能够：

> 理解核心机制。

## 第七层

能够：

> 理解设计约束与 Trade-off。

## 第八层

能够：

> 修改、调试、验证。

## 第九层

能够：

> 提取设计思想。

## 第十层

能够：

> 迁移到自己的项目。

最终：

> **面对陌生 Embedded System，可以快速建立认知并进入工程状态。**

---

# 51. Source Study 的最终路线图

```text
                     Source Study
                          │
        ┌─────────────────┼─────────────────┐
        │                 │                 │
       RTOS             OS/System        Middleware
        │                 │                 │
   ┌────┼────┐       ┌────┼────┐       ┌────┼────┐
   │    │    │       │    │    │       │    │    │
FreeRTOS ThreadX μC/OS Zephyr U-Boot Linux TinyUSB FatFS LittleFS
        │                 │                 │
        └─────────────────┼─────────────────┘
                          ↓
                    Driver Model
                          ↓
                    Architecture
                          ↓
                     Engineering
                          ↓
                 Cross-platform Transfer
                          ↓
                Independent System Design
```

---

# 52. 最终目标

Source Study 最终不是为了成为：

> “源码收藏家”

也不是为了成为：

> “源码阅读者”。

真正目标是：

> **站在成熟工程的肩膀上学习。**

把优秀工程多年积累的：

```text
Architecture
Design
Implementation
Trade-off
Testing
Debugging
Maintenance
```

逐渐转化为自己的：

```text
Knowledge
Experience
Engineering Judgment
System Design Ability
```

最终实现：

```text
学习别人
    ↓
理解别人
    ↓
分析别人
    ↓
验证别人
    ↓
提取思想
    ↓
自己实现
    ↓
自己设计
    ↓
自己取舍
    ↓
自己验证
    ↓
形成自己的工程体系
```

最终能力路径：

```text
C
↓
MCU
↓
Peripheral
↓
DMA / Interrupt
↓
RTOS
↓
Driver
↓
Middleware
↓
Source Study
↓
System Architecture
↓
Testing
↓
Engineering
↓
Cross-platform Transfer
↓
Independent System Design
```

---

# 53. 长期原则

1. 不追求源码数量。
2. 不追求源码全部读完。
3. 不为了“看源码”而看源码。
4. 优先研究与当前 Project 相关的成熟工程。
5. 从问题出发，而不是从文件列表出发。
6. 先 Architecture，再 Module，再 Mechanism，再 Implementation。
7. 必须关注 Constraint。
8. 必须关注 Trade-off。
9. 必须关注 Error Handling。
10. 必须关注 Boundary Condition。
11. 尽可能 Build、Run、Debug、Modify。
12. 不复制代码，以理解设计思想为核心。
13. 不同项目采用不同研究深度。
14. Source Study 必须反哺自己的 Projects。
15. Projects 中遇到的问题可以反向驱动 Source Study。
16. AI 可以提高源码研究效率，但不能替代源码验证。
17. 不盲目崇拜成熟项目，必须理解其历史和约束。
18. 优先学习成熟工程中的设计思想，而不是表面代码风格。
19. 逐步从静态阅读进入动态 Debug。
20. 逐步从代码理解进入工程判断。
21. 随实际项目、技术方向和职业目标动态调整研究重点。
22. 研究成果最终必须沉淀为自己的 Knowledge、Engineering Judgment 和 System Design Ability。

---

# 54. 与整个个人知识库的关系

整个个人嵌入式工程体系最终形成：

```text
                    Personal Embedded Engineering System
                                  │
          ┌───────────────────────┼───────────────────────┐
          │                       │                       │
      Learning                  Labs                  Projects
          │                       │                       │
      理论基础                  实验验证               综合实践
          │                       │                       │
          └───────────────────────┼───────────────────────┘
                                  ↓
                            Source Study
                                  ↓
                          Mature Engineering
                                  ↓
                            Engineering
                                  ↓
                             Review
                                  ↓
                         Knowledge Base
                                  ↓
                     Cross-platform Transfer
                                  ↓
                    Independent System Design
```

最终：

> **Projects 是能力实践。**

> **Labs 是知识验证。**

> **Source Study 是向成熟工程学习。**

> **Engineering 是方法论沉淀。**

> **Review 是持续改进。**

> **Knowledge Base 是长期积累。**

它们共同组成：

> **个人嵌入式工程知识库 + 实验室 + 作品集 + 成长履历。**
