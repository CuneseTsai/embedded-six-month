# Six-Month Roadmap

> 本文定义当前阶段未来六个月的具体学习、项目与工程实践路线。
>
> 六个月不是终点，而是从“已有一些嵌入式基础”进入“能够独立进行较完整嵌入式工程开发”的第一阶段。
>
> 本阶段的核心不是学完多少知识，而是完成一次完整的能力跃迁：
>
> ```text
> 知识碎片
>     ↓
> 基础能力恢复
>     ↓
> 实践能力
>     ↓
> 工程能力
>     ↓
> 系统化能力
>     ↓
> 项目经验
>     ↓
> 可验证的作品集
> ```
>
> 最终希望形成：
>
> ```text
> C
> ↓
> MCU
> ↓
> Peripheral
> ↓
> DMA / Interrupt
> ↓
> RTOS
> ↓
> Driver
> ↓
> Middleware
> ↓
> Project
> ↓
> Testing
> ↓
> Engineering
> ↓
> System Architecture
> ```
>
> 并开始建立：
>
> ```text
> Platform Migration
> Source Study
> Cross-platform Thinking
> ```
>
> 为后续 DSP / FPGA / SoC / Embedded Linux 等方向打基础。

---

# 1. Six-Month Mission

六个月阶段的核心任务不是：

> “把嵌入式所有知识学一遍。”

而是：

> **通过一套连续项目，重新建立完整的嵌入式软件工程能力，并形成可以用于求职展示和技术面试的真实项目经历。**

本阶段最终应该能够：

- 熟练使用 C 进行嵌入式开发
- 熟悉 STM32 开发流程
- 理解 MCU 基本架构
- 熟练处理常见外设
- 理解 Interrupt / DMA / Buffer / RingBuffer
- 理解 RTOS 基本机制并能够实际使用
- 能够独立编写基础 Driver
- 能够组织 Middleware
- 能够进行模块化设计
- 能够进行基本系统架构设计
- 能够进行 Unit Test / Integration Test
- 能够进行 Debug / Bug Analysis
- 能够使用 Git 管理工程
- 能够阅读成熟开源工程
- 能够完成一个较完整的旗舰项目
- 能够解释自己的设计选择
- 开始具备跨平台迁移意识

---

# 2. Six-Month End State

六个月结束时，不以：

```text
学了多少课程
看了多少视频
写了多少代码
```

作为主要评价标准。

而以：

```text
我能不能独立完成一个中等复杂度嵌入式项目？
```

作为核心标准。

理想能力画像：

```text
C
│
├── Language Fundamentals
├── Pointer / Memory
├── Struct / Union / Enum
├── Function / Module
├── Preprocessor
├── Build
└── Debug
        │
        ↓
MCU
│
├── Clock
├── GPIO
├── UART
├── SPI
├── I2C
├── Timer
├── ADC
├── PWM
├── CAN
└── DMA
        │
        ↓
System
│
├── Interrupt
├── Buffer
├── RingBuffer
├── State Machine
├── RTOS
├── Driver
└── Middleware
        │
        ↓
Engineering
│
├── Git
├── CMake
├── Testing
├── Static Analysis
├── Formatting
├── Documentation
├── Debugging
└── CI
        │
        ↓
Architecture
│
├── Module Design
├── Interface Design
├── Data Flow
├── Task Design
├── Error Handling
├── Performance
└── Trade-offs
        │
        ↓
Project
│
└── Oscilloscope
```

---

# 3. Six-Month Strategy

本阶段采用：

> **1 + 4 + N**

项目结构。

```text
1
Flagship Project
│
└── F01 Oscilloscope

4
Portfolio Projects
│
├── P01 IMU
├── P02 BMS Monitor
├── P03 Industrial DAQ
└── P04 FOC

N
Experiments / Tools / Platform / Future Projects
```

但需要明确：

> `1 + 4 + N` 是当前阶段的项目组织策略，不是永久限制。

项目数量不是目标。

真正目标：

```text
Capability Growth
```

---

# 4. Core Learning Model

整个六个月采用：

```text
Theory
↓
Small Experiment
↓
Mini Project
↓
Engineering Practice
↓
Formal Project
↓
Review
```

而不是：

```text
Video
↓
Follow Tutorial
↓
Copy Code
↓
Finish
```

每一个重要知识点都尽量经过：

```text
理解
↓
实现
↓
调试
↓
验证
↓
记录
```

---

# 5. Learning Depth

本阶段统一采用五级能力模型。

## L1 — Know

知道：

- 是什么
- 有什么作用
- 在哪里使用
- 如何查资料

---

## L2 — Understand

能够：

- 解释原理
- 解释基本机制
- 阅读基本代码
- 理解常见使用方式

---

## L3 — Use

能够：

- 独立实现
- 独立调试
- 独立完成常见任务
- 在项目中稳定使用

---

## L4 — Analyze / Design

能够：

- 分析复杂问题
- 设计模块
- 分析性能
- 定位复杂 Bug
- 比较方案
- 解释 Trade-off

---

## L5 — Master / Architect

能够：

- 设计完整系统
- 处理复杂约束
- 进行跨平台迁移
- 指导他人
- 建立方法论
- 从需求出发进行系统设计

---

# 6. Six-Month Priority

六个月阶段不是所有知识都追求同样深度。

## Core

必须重点掌握：

```text
C
STM32
Peripheral
Interrupt
DMA
Buffer
RTOS
Driver
Git
Debug
Testing
Engineering
System Architecture
```

目标：

```text
L3 → L4
```

---

## Secondary

需要熟悉：

```text
Middleware
Networking
File System
USB
CAN
Ethernet
Advanced Memory
Cache
Performance
```

目标：

```text
L2 → L3
```

---

## Awareness

建立认知：

```text
FPGA
DSP
Zynq
Embedded Linux
Other MCU
```

目标：

```text
L1 → L2
```

---

# 7. Phase Overview

六个月分为六个主要阶段。

```text
Month 1
C + MCU Fundamentals + Development Environment

Month 2
Peripheral + Interrupt + DMA

Month 3
RTOS + Driver + Middleware

Month 4
Engineering + System Architecture + Portfolio Projects

Month 5
Flagship Oscilloscope Development

Month 6
Flagship Completion + Testing + Optimization + Portfolio + Interview Preparation
```

实际进度允许根据项目情况动态调整。

> 月份是节奏参考，不是绝对截止日期。

---

# 8. Month 1 — C + MCU Foundation

## Goal

重新建立：

```text
C
+
MCU
+
Development Environment
```

三者之间的联系。

---

# 9. Month 1 — C

重点恢复：

### Basic Syntax

- Variable
- Constant
- Operator
- Condition
- Loop
- Function

### Data

- Integer
- Floating Point
- Character
- Array
- String

### Memory

- Pointer
- Array / Pointer Relationship
- Address
- Memory Layout
- Stack
- Heap
- Static Storage

### Composite Type

- Struct
- Union
- Enum
- Typedef

### Function

- Function Pointer
- Callback
- Parameter Passing
- Scope
- Linkage

### Compilation

- Preprocessor
- Macro
- Header
- Source File
- Compilation Unit
- Link
- Object File

### Engineering

- `.c`
- `.h`
- Include Guard
- Module
- Interface

---

# 10. Month 1 — Embedded C

C 学习必须直接进入嵌入式场景。

重点理解：

```text
volatile
const
static
extern
inline
typedef
struct
enum
bit operation
pointer
function pointer
callback
```

重点理解：

```c
volatile
```

为什么存在。

以及：

```text
CPU
Memory
Peripheral Register
Interrupt
DMA
Compiler Optimization
```

之间的关系。

---

# 11. Month 1 — MCU Architecture

恢复：

- Cortex-M 基础
- Register
- Stack
- MSP
- PSP
- Exception
- Interrupt
- NVIC
- Vector Table
- Startup
- Reset Handler
- Clock
- Memory Map
- Flash
- SRAM

目标：

> 能够解释一个 MCU 从 Reset 到 `main()` 发生了什么。

---

# 12. Month 1 — Development Environment

建立自己的现代开发环境：

```text
VS Code
+
CMake
+
Ninja
+
GCC
+
OpenOCD
+
Git
```

逐步加入：

```text
clang-format
cppcheck
CI
```

目标：

> 不再完全依赖 IDE 的“魔法按钮”。

---

# 13. Month 1 — Git

建立基本工作流：

```text
Working Tree
↓
git diff
↓
git add
↓
git commit
↓
git log
```

进一步：

```text
branch
merge
rebase
tag
```

逐步形成：

```text
Feature
↓
Commit
↓
Review
↓
Merge
```

意识。

---

# 14. Month 1 — Output

Month 1 最低输出：

```text
C Exercises
+
MCU Minimal Project
+
Build System
+
Debug Environment
+
Learning Log
```

最终能够：

```text
Build
↓
Flash
↓
Debug
↓
Run
```

---

# 15. Month 1 — Acceptance

必须能够回答：

### C

- Pointer 是什么？
- Array 和 Pointer 的关系是什么？
- Stack 和 Heap 有什么区别？
- `static` 有什么作用？
- `volatile` 为什么重要？
- Struct 和 Union 的区别是什么？
- Function Pointer 有什么用途？

### MCU

- MCU 启动过程是什么？
- Vector Table 是什么？
- Interrupt 是怎么进入 Handler 的？
- Flash 与 SRAM 有什么区别？
- Register 是什么？
- Clock 为什么重要？

### Toolchain

- Source File 如何变成 ELF？
- Compiler 做什么？
- Linker 做什么？
- Linker Script 为什么存在？

---

# 16. Month 2 — Peripheral / Interrupt / DMA

## Goal

从：

```text
会写 C
```

进入：

```text
会操作 MCU
```

再进入：

```text
理解数据流
```

---

# 17. Month 2 — Basic Peripheral

重点：

```text
GPIO
UART
SPI
I2C
Timer
ADC
PWM
CAN
```

不是每一个都要求深入到同样程度。

重点是建立统一模型：

```text
Clock
↓
Peripheral
↓
Register
↓
Driver
↓
Application
```

---

# 18. UART

完成：

```text
Polling
↓
Interrupt
↓
DMA
```

逐步理解：

```text
TX
RX
Buffer
Interrupt
DMA
RingBuffer
Idle Line
```

重点形成：

> UART 不只是“发送字符串”。

而是：

```text
Data Source
↓
Buffer
↓
Transport
↓
Buffer
↓
Parser
```

---

# 19. SPI

重点：

- Master / Slave
- Clock
- CPOL
- CPHA
- Chip Select
- Full Duplex
- Transaction
- DMA

连接：

```text
MCU
↓
SPI
↓
Sensor
```

为 P01 IMU 做准备。

---

# 20. I2C

重点：

- Address
- Start
- Stop
- ACK
- NACK
- Master
- Slave
- Bus
- Error Handling

目标：

> 能独立调试常见 I2C 通信问题。

---

# 21. Timer

重点：

- Counter
- Prescaler
- Period
- Input Capture
- Output Compare
- PWM
- Update Event

理解：

```text
Timer
↓
Interrupt
↓
Periodic Task
```

以及：

```text
Timer
↓
PWM
↓
Motor / Control
```

---

# 22. ADC

重点：

- Sampling
- Resolution
- Conversion
- Trigger
- Scan
- Continuous
- DMA

核心数据流：

```text
ADC
↓
DMA
↓
Buffer
↓
Processing
```

这是整个六个月最重要的数据流模型之一。

---

# 23. DMA

DMA 是 Month 2 的核心。

必须重点理解：

```text
CPU
Memory
DMA
Peripheral
```

之间的关系。

重点：

- Source
- Destination
- Transfer Width
- Transfer Length
- Increment
- Circular Mode
- Normal Mode
- Interrupt
- Half Transfer
- Transfer Complete

以及：

```text
DMA + UART
DMA + ADC
DMA + SPI
DMA + Timer
```

---

# 24. Buffer / RingBuffer

必须真正理解：

```text
Buffer
```

以及：

```text
RingBuffer
```

重点：

- Head
- Tail
- Capacity
- Read
- Write
- Full
- Empty
- Overflow
- Wrap-around

进一步理解：

```text
Producer
↓
Buffer
↓
Consumer
```

这是后续：

```text
RTOS
Sensor
DAQ
Oscilloscope
Protocol
```

的共同基础。

---

# 25. Interrupt

重点：

```text
Interrupt Source
↓
NVIC
↓
ISR
↓
Flag / Event
↓
Processing
```

进一步理解：

- Interrupt Priority
- Preemption
- ISR Restrictions
- Latency
- Jitter
- Shared Resource
- Deferred Processing

原则：

> ISR 尽量短。

复杂处理：

```text
ISR
↓
Event
↓
Task
```

---

# 26. Month 2 — Mini Projects

建议完成：

### E001 UART Framework

```text
UART
+
Interrupt
+
DMA
+
RingBuffer
+
Command Parser
```

---

### E002 ADC Data Acquisition

```text
Timer
↓
ADC
↓
DMA
↓
Buffer
↓
Processing
```

---

### E003 SPI Sensor Demo

```text
SPI
↓
Sensor
↓
DMA
↓
Buffer
↓
Data Processing
```

---

# 27. Month 2 — Acceptance

必须能够解释：

```text
为什么使用 DMA？
```

```text
什么时候使用 Interrupt？
```

```text
为什么 RingBuffer 有用？
```

```text
DMA 数据什么时候可以被 CPU 读取？
```

```text
为什么 ISR 不应该做复杂计算？
```

```text
Producer / Consumer 如何设计？
```

---

# 28. Month 3 — RTOS / Driver / Middleware

## Goal

从：

```text
单线程裸机
```

进入：

```text
多任务实时系统
```

并开始形成：

```text
Driver
+
Middleware
+
Application
```

分层意识。

---

# 29. Month 3 — FreeRTOS

重点：

- Task
- Scheduler
- Context Switch
- Queue
- Semaphore
- Mutex
- Event Group
- Software Timer
- Task Notification
- Memory
- Interrupt Interaction

---

# 30. RTOS Core Model

必须理解：

```text
Task
↓
Scheduler
↓
Context Switch
```

以及：

```text
ISR
↓
RTOS API
↓
Task Wakeup
```

---

# 31. Synchronization

重点比较：

```text
Queue
Semaphore
Mutex
Event
Notification
```

不要只记 API。

必须回答：

> 什么问题应该使用什么同步机制？

---

# 32. Concurrency

开始主动寻找：

- Race Condition
- Deadlock
- Priority Inversion
- Starvation
- Shared Resource
- Critical Section

形成：

> 并发系统思维。

---

# 33. Driver

开始建立自己的 Driver 结构。

例如：

```text
Application
↓
Sensor API
↓
Sensor Driver
↓
SPI Driver
↓
HAL / LL
↓
Hardware
```

Driver 应该逐渐具备：

- Init
- Deinit
- Read
- Write
- Configure
- Error Handling
- State

---

# 34. Middleware

逐步接触：

```text
FatFS
TinyUSB
Networking
Protocol Stack
```

重点学习：

> Middleware 如何位于 Driver 与 Application 之间。

---

# 35. Source Study

Month 3 开始正式进入：

```text
source-study/
```

重点：

### FreeRTOS

目标：

```text
L3 → L4
```

重点阅读：

- Task
- Scheduler
- Queue
- Semaphore
- Mutex
- Timer
- Memory
- Interrupt Port

---

# 36. Month 3 — Mini Project

### E004 RTOS Data Pipeline

```text
ADC / Sensor
↓
DMA
↓
Buffer
↓
Task
↓
Processing
↓
Queue
↓
Output
```

要求：

- 多 Task
- Queue
- Synchronization
- Error Handling
- Logging
- Timing Measurement

---

# 37. Month 3 — Acceptance

能够解释：

```text
为什么需要 RTOS？
```

```text
Task 和 Interrupt 如何协作？
```

```text
Queue 和 Mutex 的区别是什么？
```

```text
Priority Inversion 是什么？
```

```text
Driver 与 Application 为什么要分离？
```

```text
Middleware 为什么存在？
```

---

# 38. Month 4 — Engineering / Architecture

## Goal

从：

```text
“代码能运行”
```

升级到：

```text
“项目可以长期维护”
```

---

# 39. Engineering Workflow

开始建立：

```text
Requirement
↓
Design
↓
Implementation
↓
Build
↓
Test
↓
Debug
↓
Review
↓
Release
```

---

# 40. Documentation

正式项目逐步增加：

```text
README
Requirements
Architecture
Design
ADR
Test Plan
Test Report
Bug Record
Release Note
Review
```

---

# 41. Requirement

学习把需求写成：

```text
Functional Requirement
Non-functional Requirement
Constraint
Acceptance Criteria
```

例如：

```text
系统需要以 XX kHz 采样
```

进一步变成：

```text
Sampling Rate
Latency
Buffer Size
CPU Load
Data Loss
Accuracy
```

等可验证指标。

---

# 42. Architecture

开始画：

```text
System Architecture
Module Architecture
Data Flow
Task Model
State Machine
```

例如：

```text
Sensor
↓
Driver
↓
Acquisition
↓
Buffer
↓
Processing
↓
Storage / Communication
```

---

# 43. ADR

开始记录关键技术决策。

例如：

```text
ADR-001
为什么使用 DMA？

ADR-002
为什么使用 RingBuffer？

ADR-003
为什么选择 Queue 而不是共享 Buffer？

ADR-004
为什么选择某种 Task Architecture？

ADR-005
为什么采用某种 Buffer Size？
```

重点：

```text
Context
Options
Decision
Trade-offs
Consequences
```

---

# 44. Testing

开始建立：

```text
Unit Test
Integration Test
System Test
Regression Test
```

嵌入式环境下可以采用：

```text
Host-side Test
+
Target-side Test
```

---

# 45. Static Analysis

加入：

```text
clang-format
cppcheck
Compiler Warning
```

逐步形成：

```text
Format
↓
Build
↓
Static Analysis
↓
Test
```

---

# 46. CI

逐步建立最小 CI：

```text
Push
↓
Build
↓
Static Analysis
↓
Test
```

以后再扩展：

```text
Artifact
Release
Hardware-in-the-loop
```

---

# 47. Month 4 — Portfolio Projects

Month 4 开始正式推动：

```text
P01 IMU
P02 BMS Monitor
P03 Industrial DAQ
P04 FOC
```

不要求四个项目全部做到与旗舰项目相同深度。

它们的作用不同。

---

# 48. P01 IMU

重点：

```text
SPI
FIFO
DMA
Timestamp
Buffer
Filtering
Sensor Driver
Data Processing
```

目标：

> 建立高速传感器数据链路能力。

---

# 49. P02 BMS Monitor

重点：

```text
ADC
CAN
State Machine
Fault Handling
Event
Communication
Storage
```

目标：

> 建立工业监控与状态管理能力。

---

# 50. P03 Industrial DAQ

重点：

```text
Acquisition
DMA
Buffer
Industrial Communication
Protocol
Data Processing
Storage
```

目标：

> 建立复杂数据采集系统思维。

---

# 51. P04 FOC

重点：

```text
ADC
PWM
Timer
DMA
Interrupt
Control Loop
Real-time
```

目标：

> 建立实时控制系统认知。

---

# 52. Month 4 — Acceptance

必须开始能够回答：

```text
这个系统有哪些模块？
```

```text
模块之间如何通信？
```

```text
数据从哪里来，到哪里去？
```

```text
哪些任务是实时的？
```

```text
哪些代码运行在 ISR？
```

```text
哪些代码运行在 Task？
```

```text
系统的主要瓶颈是什么？
```

```text
出现 Bug 时如何定位？
```

---

# 53. Month 5 — F01 Oscilloscope

## Goal

进入六个月的核心项目：

> **F01 Oscilloscope**

这是整个阶段最重要的工程实践。

---

# 54. F01 Position

示波器项目不是：

```text
ADC
↓
画波形
```

而是：

```text
Requirement
↓
Architecture
↓
Hardware
↓
Acquisition
↓
DMA
↓
Buffer
↓
Trigger
↓
Processing
↓
Display
↓
Testing
↓
Optimization
↓
Release
```

完整体现：

```text
Embedded
+
Data Acquisition
+
Real-time
+
DSP
+
RTOS
+
Driver
+
Engineering
```

---

# 55. F01 Core Data Flow

核心数据流：

```text
Analog Signal
      ↓
ADC
      ↓
DMA
      ↓
Acquisition Buffer
      ↓
Trigger
      ↓
Waveform Buffer
      ↓
Processing
      ↓
Display / Output
```

---

# 56. F01 Software Architecture

建议逐步形成：

```text
Application
│
├── UI / Command
├── Measurement
├── Trigger
└── System Control
        │
        ↓
Processing
│
├── Scaling
├── Filtering
├── FFT
└── Measurement
        │
        ↓
Acquisition
│
├── ADC
├── DMA
├── Buffer
└── Sampling
        │
        ↓
Driver
│
├── ADC Driver
├── Timer Driver
├── DMA Driver
└── Display Driver
        │
        ↓
HAL / LL
        │
        ↓
Hardware
```

---

# 57. F01 Engineering Documents

必须逐步形成：

```text
requirements.md
architecture.md
design.md
adr/
test-plan.md
test-report.md
bug-log.md
release-notes.md
review.md
```

---

# 58. F01 Important Problems

重点主动解决：

```text
Sampling
↓
DMA
↓
Buffer
↓
Trigger
↓
Processing
```

之间的真实问题。

例如：

- Buffer Overflow
- Data Loss
- Timing Error
- DMA Boundary
- Interrupt Latency
- CPU Load
- Cache Problem
- RingBuffer Problem
- Trigger Accuracy
- Data Synchronization
- Display Bottleneck

---

# 59. F01 Testing

逐步建立：

```text
Unit Test
↓
Driver Test
↓
Acquisition Test
↓
Signal Test
↓
System Test
↓
Performance Test
```

尽可能使用：

```text
Known Signal
+
Expected Result
```

进行验证。

---

# 60. Month 6 — Completion / Optimization / Portfolio

## Goal

从：

```text
项目开发
```

进入：

```text
项目交付
```

---

# 61. F01 Finalization

重点：

- Bug Fix
- Performance Optimization
- Documentation
- Test
- Review
- Refactoring
- Release

---

# 62. Performance Analysis

至少记录：

```text
CPU Usage
Memory Usage
Sampling Rate
Throughput
Latency
Buffer Usage
Processing Time
Interrupt Frequency
```

形成：

```text
Requirement
↓
Measurement
↓
Comparison
↓
Optimization
↓
Verification
```

---

# 63. Bug Database

不要删除 Bug。

建立：

```text
Bug ID
Date
Symptom
Environment
Reproduction
Root Cause
Fix
Verification
Lesson
```

Bug 是项目经验的重要组成部分。

---

# 64. Final Review

对 F01 做一次正式 Review：

### Architecture

- 是否合理？
- 是否存在过度耦合？

### Driver

- 是否清晰？
- 是否可迁移？

### RTOS

- Task 是否合理？
- Priority 是否合理？

### Buffer

- 是否可能 Overflow？
- 是否存在 Race Condition？

### Performance

- CPU 是否足够？
- Memory 是否足够？

### Test

- 核心功能是否覆盖？

### Documentation

- 是否能够让未来的自己重新理解项目？

---

# 65. Six-Month Portfolio Output

六个月结束时，希望至少形成：

```text
01
C / MCU Foundation

02
UART / SPI / I2C / ADC / DMA / Interrupt

03
FreeRTOS

04
Driver / Middleware

05
Engineering Toolchain

06
Source Study

07
P01 IMU

08
P02 BMS Monitor

09
P03 Industrial DAQ

10
P04 FOC

11
F01 Oscilloscope
```

其中：

> F01 是核心。

其他项目承担能力补充作用。

---

# 66. Source Study Schedule

源码学习不能独立成为“第二套课程”。

应该穿插在项目中。

例如：

```text
FreeRTOS
    ↓
学习 RTOS
    ↓
F01 / E004
```

```text
TinyUSB
    ↓
学习 USB Architecture
    ↓
后续项目
```

```text
FatFS
    ↓
学习 Storage / Filesystem
    ↓
DAQ / BMS
```

```text
Linux Kernel
    ↓
学习 Driver / System Architecture
    ↓
长期平台扩展
```

原则：

> **项目遇到问题 → 找成熟实现 → 研究 → 提炼 → 回到自己的项目。**

---

# 67. Weekly Execution Model

每周不采用固定“每天必须学几小时”的机械模式。

采用：

```text
Weekly Goal
↓
Task Breakdown
↓
Implementation
↓
Verification
↓
Documentation
↓
Review
```

每周至少形成：

```text
1 个明确目标
+
若干可执行 Task
+
1 个可验证结果
+
1 次总结
```

---

# 68. Daily Execution Model

工作日可采用：

```text
Theory
↓
Reading
↓
Small Experiment
↓
Documentation
```

空闲时间：

```text
Coding
↓
Debug
↓
Hardware Experiment
```

周末：

```text
Project Integration
↓
Testing
↓
Review
↓
Learning Log
```

实际时间根据工作和生活动态调整。

---

# 69. Learning Log

每天 / 每次学习尽量记录：

```text
Date
Goal
What I Learned
What I Implemented
Problem
Root Cause
Solution
What I Still Don't Understand
Next Step
```

推荐：

```text
docs/learning-log/YYYY-MM-DD.md
```

---

# 70. Learning Log Principle

Learning Log 不是流水账。

不要只写：

```text
今天学习了 DMA。
```

而应该写：

```text
今天实现 ADC + DMA Circular Mode。

问题：
第一次读取 Buffer 时数据偶尔异常。

分析：
DMA 与 CPU 同时访问 Buffer。

验证：
调整 Buffer Ownership 与处理时机。

结果：
问题消失。

结论：
DMA 数据处理必须考虑 Producer / Consumer 时序。
```

这样未来才能真正变成：

```text
知识
+
经验
+
Bug
+
方法
```

---

# 71. Git Workflow

正式项目统一：

```text
main
│
├── feature/xxx
├── fix/xxx
├── refactor/xxx
└── experiment/xxx
```

Commit 尽量表达真实变化。

例如：

```text
feat: add uart dma rx
fix: handle ringbuffer overflow
refactor: separate adc driver
test: add acquisition buffer test
docs: update acquisition architecture
```

---

# 72. Engineering Workflow

逐渐形成：

```text
Issue
↓
Branch
↓
Implementation
↓
Test
↓
Review
↓
Commit
↓
Merge
```

不要求一开始完全模拟大型企业流程。

而是逐渐建立：

> 可追踪、可复现、可回滚、可验证。

---

# 73. Six-Month Review Points

每个月进行一次 Review。

---

## Month 1 Review

检查：

```text
C
MCU
Toolchain
Git
```

---

## Month 2 Review

检查：

```text
Peripheral
Interrupt
DMA
Buffer
```

---

## Month 3 Review

检查：

```text
RTOS
Driver
Middleware
Concurrency
```

---

## Month 4 Review

检查：

```text
Architecture
Testing
Engineering
Portfolio
```

---

## Month 5 Review

检查：

```text
F01
Acquisition
DMA
Buffer
Trigger
Processing
```

---

## Month 6 Review

检查：

```text
F01
Testing
Performance
Documentation
Portfolio
Interview
```

---

# 74. Six-Month Acceptance Model

最终不采用：

```text
“我学完了。”
```

而采用能力验收。

---

## Level 1 — Explain

能够解释：

```text
原理
架构
机制
```

---

## Level 2 — Implement

能够：

```text
独立写代码
```

---

## Level 3 — Debug

能够：

```text
定位问题
```

---

## Level 4 — Design

能够：

```text
设计模块
```

---

## Level 5 — Defend

能够回答：

```text
为什么这样设计？
```

---

## Level 6 — Transfer

能够：

```text
迁移到另一个平台
```

六个月的核心目标：

> 核心知识逐渐达到 L3-L4，并开始进入 L5-L6 的训练。

---

# 75. Interview-oriented Verification

六个月结束后，针对核心项目进行“反向面试”。

不能只回答：

> “我用了 DMA。”

而要能够回答：

```text
为什么用 DMA？

DMA 如何工作？

Buffer 怎么设计？

Buffer 多大？

为什么这么大？

如何处理 Overflow？

CPU 与 DMA 如何同步？

中断频率是多少？

CPU Load 怎么测？

出现数据异常如何定位？

为什么这样设计？

如果换一个 MCU 怎么迁移？
```

---

# 76. Project Interview Depth

每个核心项目至少准备：

```text
Requirement
Architecture
Key Design
Important Code
Important Bug
Performance
Testing
Trade-off
Lessons Learned
```

尤其是：

> **Bug + Trade-off + Decision**

这些内容最容易形成真实工程经验。

---

# 77. Six-Month Career Goal

六个月结束后，不追求：

> “看起来像有十年经验。”

而应该达到：

> **能够真实地解释自己做过什么、为什么这么做、遇到过什么问题、如何解决、最终结果如何。**

最终形成：

```text
真实代码
+
真实项目
+
真实 Bug
+
真实设计
+
真实测试
+
真实 Trade-off
```

这比堆砌大量“学习过的技术名词”更重要。

---

# 78. Platform Expansion Boundary

六个月期间：

### Main

```text
STM32
```

### Migration

```text
GD32
AT32
```

### Awareness / Small Exploration

```text
C2000
FPGA
Zynq
Embedded Linux
```

不允许因为：

> “这个平台以后可能有用。”

就大规模开启新的学习线。

只有：

```text
项目需求
+
明确能力缺口
+
行业方向
+
迁移训练
```

之一成立时，才扩展。

---

# 79. Six-Month Anti-patterns

必须主动避免以下模式。

## 1. Tutorial Addiction

不断看教程，却不写代码。

---

## 2. Platform Collecting

不停换 MCU。

---

## 3. Knowledge Hoarding

不停整理知识，却不做项目。

---

## 4. Overengineering

项目刚开始就设计巨大的 Framework。

---

## 5. Premature Optimization

没有测量就优化。

---

## 6. Blind Copying

复制别人代码但不知道为什么。

---

## 7. AI Dependency

AI 写代码，自己不理解。

---

## 8. Documentation Addiction

花大量时间整理文档，却没有真实产出。

---

## 9. Endless Refactoring

不断修改仓库结构，却不进入学习和项目。

---

## 10. Perfectionism

因为无法一次做到企业级，就迟迟不开始。

---

# 80. Engineering Quality Growth

不要要求：

> 第一个项目就达到“5 年经验工程师”的全部水平。

而采用：

```text
Version 0.1
能运行

Version 0.2
结构清晰

Version 0.3
模块化

Version 0.4
加入测试

Version 0.5
加入错误处理

Version 0.6
性能分析

Version 0.7
架构重构

Version 1.0
Release
```

工程能力通过迭代产生。

---

# 81. Six-Month Knowledge Loop

整个阶段形成闭环：

```text
学习
↓
实践
↓
遇到问题
↓
查资料
↓
源码研究
↓
解决问题
↓
记录
↓
抽象
↓
项目应用
↓
复盘
↓
形成能力
```

最终：

```text
Knowledge
↓
Experience
↓
Engineering Method
```

---

# 82. Final Six-Month Capability Map

六个月结束时，理想能力结构：

```text
                    System Architecture
                            │
             ┌──────────────┼──────────────┐
             │              │              │
          Software        Hardware       Algorithm
             │              │              │
             └──────────────┼──────────────┘
                            │
                         MCU / RTOS
                            │
                ┌───────────┼───────────┐
                │           │           │
              Driver     Middleware   Data Flow
                │           │           │
                └───────────┼───────────┘
                            │
                         Testing
                            │
                        Engineering
                            │
                         Project
                            │
                         Review
```

---

# 83. End-of-Stage Deliverables

六个月结束时，仓库应逐渐具备：

```text
learning/
    ├── C / MCU knowledge
    ├── Peripheral
    ├── DMA / Interrupt
    ├── RTOS
    └── Memory / System

projects/
    ├── flagship/
    │     └── 01_oscilloscope/
    │
    └── portfolio/
          ├── 01_imu/
          ├── 02_bms_monitor/
          ├── 03_industrial_daq/
          └── 04_foc/

source-study/
    ├── freertos/
    ├── zephyr/
    ├── tinyusb/
    ├── fatfs/
    ├── uboot/
    └── ...

docs/
    ├── roadmap/
    ├── learning-log/
    └── ...

labs/
    └── experiments/

scripts/
    └── development-tools/
```

实际目录根据项目发展动态产生，不要求一开始全部填满。

---

# 84. Final Six-Month Milestone

最终目标不是：

```text
完成六个月计划
```

而是：

```text
六个月之后，
我已经拥有一个真正属于自己的嵌入式工程体系。
```

这个体系包括：

```text
基础知识
+
代码
+
实验
+
项目
+
源码研究
+
Bug
+
测试
+
架构
+
工程文档
+
Git History
```

这些东西共同构成：

> **可持续积累的个人工程资产。**

---

# 85. Long-Term Continuation

六个月结束后，不意味着路线重新开始。

而是进入下一阶段：

```text
Stage 1
Foundation + Engineering
        ↓
Stage 2
Advanced System
        ↓
Stage 3
Cross-platform
        ↓
Stage 4
DSP / FPGA / SoC
        ↓
Stage 5
Embedded Linux
        ↓
Stage 6
Robotics / Control / Navigation
        ↓
Stage 7
System Architecture
```

后续重点逐渐从：

```text
“我会什么？”
```

转向：

```text
“我能解决什么问题？”
```

再进一步：

```text
“我能设计什么系统？”
```

最终：

```text
“我能否从需求出发，
独立完成一个复杂系统的技术方案？”
```

---

# 86. Final Principles

## Principle 1 — Project First

项目是能力增长的主线。

---

## Principle 2 — Theory Supports Practice

理论为实践服务。

---

## Principle 3 — Depth Before Breadth

核心能力优先深入。

---

## Principle 4 — Engineering Over Demo

不要满足于：

```text
能跑
```

而要逐渐追求：

```text
正确
+
稳定
+
可维护
+
可测试
+
可解释
+
可扩展
```

---

## Principle 5 — Real Bugs Are Valuable

Bug 不是失败。

Bug 是工程经验。

---

## Principle 6 — Decisions Must Be Explainable

重要技术选择必须能够解释：

```text
Why?
```

---

## Principle 7 — Measure Before Optimizing

没有测量，不做性能结论。

---

## Principle 8 — AI Is a Multiplier

AI 用来：

```text
加速学习
加速编码
加速分析
加速调试
加速文档
```

但：

```text
Architecture
Decision
Verification
Responsibility
```

仍然由自己掌握。

---

## Principle 9 — Keep the History

项目不应该只有最终代码。

应该保留：

```text
Idea
↓
Plan
↓
Implementation
↓
Bug
↓
Fix
↓
Refactor
↓
Test
↓
Release
↓
Review
```

这才是真正的工程成长记录。

---

## Principle 10 — Small Things Every Day

长期能力不是靠某一天突然爆发。

而是：

```text
每天学习一点
每天写一点
每天实验一点
每天解决一个问题
每天记录一点
```

最终形成：

```text
Small Progress
↓
Compound Growth
↓
Engineering Capability
```

---

# 87. Final Roadmap

整个六个月可以最终浓缩为：

```text
                    ┌───────────────┐
                    │      C        │
                    └───────┬───────┘
                            ↓
                    ┌───────────────┐
                    │     MCU       │
                    │    STM32      │
                    └───────┬───────┘
                            ↓
                  ┌───────────────────┐
                  │ Peripheral        │
                  │ GPIO/UART/SPI/I2C │
                  │ Timer/ADC/PWM/CAN │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ DMA / Interrupt   │
                  │ Buffer / RingBuf  │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │      RTOS         │
                  │     FreeRTOS      │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Driver / Middleware│
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Engineering       │
                  │ Git/CMake/Test/CI │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Architecture      │
                  └─────────┬─────────┘
                            ↓
             ┌──────────────┼──────────────┐
             ↓              ↓              ↓
          P01 IMU       P02 BMS       P03/P04
             │              │              │
             └──────────────┼──────────────┘
                            ↓
                  ┌───────────────────┐
                  │ F01 Oscilloscope │
                  │    Flagship       │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Testing / Debug   │
                  │ Performance       │
                  │ Documentation     │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Engineering       │
                  │ Capability        │
                  └─────────┬─────────┘
                            ↓
                  ┌───────────────────┐
                  │ Platform Transfer │
                  └─────────┬─────────┘
                            ↓
                 DSP / FPGA / SoC / Linux
                            ↓
                  System Architecture
```

---

# 88. Final Definition of Success

六个月结束时，如果能够做到：

```text
我能读懂 C 代码
        ↓
我能写 C 代码
        ↓
我能写 MCU 程序
        ↓
我能理解外设
        ↓
我能使用 DMA / Interrupt
        ↓
我能设计 Buffer / RingBuffer
        ↓
我能使用 RTOS
        ↓
我能写 Driver
        ↓
我能组织 Middleware
        ↓
我能拆解一个系统
        ↓
我能设计模块
        ↓
我能写测试
        ↓
我能定位 Bug
        ↓
我能分析性能
        ↓
我能解释技术决策
        ↓
我能完成一个完整项目
        ↓
我能把项目经验沉淀下来
```

那么第一阶段就达到了核心目标。

而下一阶段不再是：

> **重新学习嵌入式。**

而是：

> **在已经建立的工程基础上，继续向更复杂的平台、更复杂的系统、更高性能的数据处理、更强的控制与算法能力，以及最终的系统架构能力推进。**

---

# 89. Closing

这六个月的真正主线只有一句话：

> **用项目把知识串起来，用工程把能力固化下来，用复盘把经验沉淀下来。**

最终形成：

```text
学习
↓
实验
↓
项目
↓
Bug
↓
Debug
↓
Test
↓
Review
↓
Architecture
↓
Engineering
↓
Capability
```

而这个仓库，则持续记录整个过程。

它不是一个“学习资料仓库”。

它是：

> **个人嵌入式工程知识库 + 实验室 + 作品集 + 成长履历。**

六个月只是第一阶段。

真正的长期目标是：

```text
Embedded Developer
        ↓
Embedded Engineer
        ↓
System Engineer
        ↓
Cross-platform Engineer
        ↓
System Architect
```

最终做到：

> **面对真实工程问题，能够从需求、约束和数据流出发，独立分析问题、选择平台、设计架构、实现系统、验证结果，并能够将技术方案迁移到不同的平台和应用场景。**