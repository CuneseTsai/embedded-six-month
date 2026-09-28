# Platform Roadmap

> 本文定义个人嵌入式工程能力的长期平台发展路线。
>
> 平台学习的目标不是“会多少芯片”，而是通过不同平台建立：
>
> - 对底层硬件的理解
> - 对不同架构与外设模型的适应能力
> - 对实时系统与计算平台的理解
> - 对软硬件协同的理解
> - 对不同工程约束的处理能力
> - 最终形成跨平台迁移技术方案与独立进行系统设计的能力

---

# 1. Platform Strategy

平台能力是长期嵌入式工程能力的重要组成部分。

单一 MCU 平台可以帮助建立扎实的底层能力，但如果长期只停留在一个芯片生态中，容易形成：

- API 依赖
- HAL 依赖
- SDK 依赖
- 特定厂商工具链依赖
- 特定芯片架构思维
- 对其他平台缺乏迁移能力

因此，平台学习采用：

> **主平台深耕 + 同类平台迁移 + 异构平台拓展 + 系统级平台升级**

而不是：

> **不停换芯片、不停学寄存器、不停积累型号数量。**

平台数量不是目标。

真正的目标是：

> **当芯片、架构、SDK、RTOS、编译器甚至计算平台发生变化时，仍然能够快速理解系统并迁移技术方案。**

---

# 2. Long-Term Platform Capability

长期目标不是成为某一个 MCU 的“熟练使用者”，而是逐渐形成以下能力：

```text
熟悉单一 MCU
        ↓
理解 MCU 架构
        ↓
理解常见 MCU 外设模型
        ↓
理解不同厂商 MCU 的差异
        ↓
掌握不同 MCU 平台迁移
        ↓
理解 DSP / FPGA / SoC
        ↓
理解 Embedded Linux
        ↓
理解异构计算系统
        ↓
掌握 Hardware / Software Co-design
        ↓
平台独立进行系统设计
```

最终希望达到：

> **技术方案独立于具体芯片存在，芯片只是实现方案的载体。**

例如：

```text
需求：
高速数据采集 → 缓冲 → 处理 → 输出
```

不应该只想到：

```text
STM32 + ADC + DMA
```

而应该能够进一步抽象为：

```text
数据源
↓
采集接口
↓
采样时序
↓
DMA / Buffer
↓
数据搬运
↓
数据处理
↓
缓存 / 队列
↓
协议 / 输出
↓
上层应用
```

然后根据约束选择：

```text
MCU
DSP
FPGA
SoC
Embedded Linux
```

甚至组合使用。

---

# 3. Platform Hierarchy

长期平台体系分为六个层级。

```text
Level 1
MCU

Level 2
MCU Migration

Level 3
DSP / FPGA

Level 4
SoC / Heterogeneous Computing

Level 5
Embedded Linux

Level 6
Hardware / Software Co-design
```

对应能力：

| Level | 平台方向 | 核心能力 |
|---|---|---|
| L1 | MCU | 底层、外设、RTOS、驱动 |
| L2 | MCU Migration | 跨厂商、跨架构迁移 |
| L3 | DSP / FPGA | 高性能计算、并行处理、实时数据流 |
| L4 | SoC | CPU + FPGA / Accelerator |
| L5 | Embedded Linux | 复杂系统、驱动、应用、网络 |
| L6 | 异构系统 | 系统级软硬件协同设计 |

---

# 4. Main Platform

## 4.1 STM32

STM32 是当前阶段的核心主平台。

不是因为 STM32 是唯一重要的平台，而是因为它适合作为：

> **建立完整嵌入式工程能力的主训练场。**

当前已有基础：

```text
STM32F1
STM32F4
STM32H7
```

其中：

- STM32F1：基础 MCU / 外设 / 中断 / DMA / 定时器等
- STM32F4：更复杂的 MCU 能力与性能
- STM32H7：高性能 MCU、Cache、Memory、DMA、总线、实时性等高级问题

---

## 4.2 STM32 的学习重点

STM32 不追求“所有型号都学”。

重点是通过不同代际理解 MCU 平台的演进。

### F1

重点：

- Cortex-M 基础
- GPIO
- UART
- SPI
- I2C
- Timer
- ADC
- DMA
- Interrupt
- Clock
- Startup
- Memory

目标：

> 建立 MCU 基础模型。

---

### F4

重点：

- 更复杂外设
- DMA
- Timer
- ADC
- SPI
- UART
- Ethernet
- USB
- Cache / Memory 基础认知
- DSP / Floating Point 基础

目标：

> 从“会使用外设”进入“理解 MCU 系统”。

---

### H7

重点：

- Cortex-M7
- Cache
- MPU
- Memory Architecture
- Bus Matrix
- DMA
- D-Cache / I-Cache
- SRAM 分区
- DMA Buffer
- Interrupt
- 高速外设
- RTOS
- Performance
- Debugging

尤其关注：

```text
CPU
↓
Cache
↓
Memory
↓
DMA
↓
Peripheral
```

之间的真实数据流。

目标：

> 建立高性能 MCU 系统级思维。

---

# 5. STM32 Mainline Depth

STM32 是主平台，因此允许达到较高深度。

重点不是：

```text
“我知道多少 STM32 API”
```

而是：

```text
Hardware
↓
Reference Manual
↓
Register
↓
HAL / LL
↓
Driver
↓
Middleware
↓
RTOS
↓
Application
```

能够在不同抽象层之间切换。

---

# 6. MCU Platform Migration

STM32 深入之后，不应继续无限扩展 STM32 型号。

下一步应该开始：

> **跨 MCU 厂商迁移。**

重点平台：

```text
STM32
├── GD32
└── AT32
```

---

# 7. GD32 / AT32

GD32 / AT32 的主要价值不是增加一个“会用的 MCU 品牌”。

真正价值是训练：

> **同类 MCU 平台迁移能力。**

例如：

```text
STM32 UART
        ↓
GD32 UART
        ↓
AT32 UART
```

真正应该比较的是：

- Clock
- GPIO
- UART
- SPI
- Timer
- ADC
- DMA
- Interrupt
- NVIC
- Startup
- Linker Script
- Memory
- Peripheral Register
- SDK
- HAL
- Toolchain
- Debugging

---

# 8. MCU Migration Exercise

未来可以进行专门的 Migration Project。

例如：

```text
STM32 Project
      ↓
GD32 Port
      ↓
AT32 Port
```

要求不是简单修改：

```c
HAL_UART_Init(...)
```

而是建立：

```text
Application
    ↓
Platform-independent Interface
    ↓
MCU Driver
    ↓
Hardware
```

例如：

```text
Application
    ↓
uart_write()
    ↓
platform_uart_write()
    ↓
STM32 UART Driver
```

迁移时：

```text
STM32 Driver
        ↓
GD32 Driver
        ↓
AT32 Driver
```

上层业务尽量不修改。

这类练习对长期工程能力非常重要。

---

# 9. Platform Abstraction

跨平台能力最终要形成自己的抽象意识。

例如：

```text
Application
│
├── Sensor
├── Data Processing
├── Protocol
├── State Machine
└── Control
        │
        ↓
Platform Abstraction
        │
        ├── GPIO
        ├── UART
        ├── SPI
        ├── I2C
        ├── Timer
        ├── DMA
        ├── Interrupt
        ├── ADC
        └── PWM
                │
                ↓
        Platform Driver
                │
                ├── STM32
                ├── GD32
                └── AT32
```

最终目标：

> **把平台差异限制在合理边界内。**

但必须避免过度抽象。

原则：

> **先有真实需求，再抽象。**

不要为了“看起来高级”提前设计巨大的 HAL Framework。

---

# 10. DSP Platform

MCU 能解决大量实时控制与数据采集问题，但当系统进入：

- 高频数据处理
- 大量乘加运算
- 数字滤波
- FFT
- 电机控制
- 电源控制
- 音频
- 高速信号处理
- 高性能控制算法

就需要进一步理解 DSP。

---

# 11. TI DSP Roadmap

长期关注 TI DSP 体系：

```text
TI C2000
TI C5000
TI C6000
```

但三者的学习优先级不同。

---

## 11.1 C2000

C2000 与以下方向高度相关：

- Motor Control
- Power Electronics
- Digital Power
- BMS
- Real-time Control
- ADC
- PWM
- Timer
- Control Loop

因此：

> **C2000 是长期值得重点接触的平台。**

尤其适合连接：

```text
ADC
↓
Sampling
↓
Control Algorithm
↓
PWM
↓
Power Stage
↓
Motor
```

与未来的：

```text
FOC
BMS
电机控制
电源控制
机器人执行机构
```

形成连接。

---

## 11.2 C5000

C5000 更适合作为：

> DSP 架构与低功耗数字信号处理方向的认知平台。

当前阶段不需要投入大量时间。

达到：

```text
知道
↓
理解 DSP 基本架构
↓
能够阅读相关代码
```

即可。

---

## 11.3 C6000

C6000 更适合作为：

> 高性能 DSP / 信号处理架构的长期研究方向。

重点理解：

- DSP Architecture
- Pipeline
- Parallelism
- SIMD
- Memory
- DMA
- Cache
- DSP Optimization
- Compiler Optimization
- Signal Processing

当前阶段不要求全面掌握。

长期可以作为：

```text
高性能数据处理
↓
算法优化
↓
DSP
```

方向拓展。

---

# 12. DSP Learning Principle

学习 DSP 平台时，不应该变成：

> “再学一套寄存器。”

重点应该转向：

```text
为什么 MCU 不够？

↓
为什么需要 DSP？

↓
DSP 如何提高数据处理能力？

↓
数据如何进入 DSP？

↓
DMA 如何搬运？

↓
Memory 如何组织？

↓
算法如何执行？

↓
如何优化？

↓
如何验证实时性？
```

因此：

> DSP 学习的核心是 **计算模型 + 数据流 + 性能 + 实时性**。

---

# 13. FPGA Platform

FPGA 是长期平台路线中的重要组成部分。

尤其适用于：

- 高速数据采集
- 高速信号处理
- 并行计算
- 多通道采样
- 精确时序
- 协议处理
- 图像处理
- 雷达
- 通信
- 仪器仪表

---

# 14. FPGA Learning Goal

FPGA 不要求当前阶段直接成为专业 FPGA 工程师。

第一目标：

> **理解 FPGA 与 MCU / DSP 的本质区别。**

MCU：

```text
Sequential Program
↓
CPU
↓
Instruction Execution
```

FPGA：

```text
Hardware Logic
↓
Parallel Execution
↓
Pipeline
↓
Data Flow
```

核心认知变化：

```text
软件执行模型
        ↓
硬件数据流模型
```

---

# 15. FPGA Core Knowledge

长期需要掌握：

### HDL

- Verilog
- SystemVerilog 基础

### Digital Logic

- Combinational Logic
- Sequential Logic
- Flip-Flop
- Register
- Counter
- FSM
- FIFO
- RAM
- ROM

### Timing

- Clock
- Clock Domain
- Setup
- Hold
- Timing Constraint
- CDC

### Data Processing

- Pipeline
- Parallelism
- Throughput
- Latency
- Buffer

### Interface

- UART
- SPI
- I2C
- AXI
- Memory Interface
- High-speed Interface

---

# 16. FPGA 与 MCU 的组合

长期真正值得掌握的不是：

```text
MCU vs FPGA
```

而是：

```text
MCU + FPGA
```

例如高速采集：

```text
Sensor / ADC
       ↓
     FPGA
       ↓
Parallel Processing
       ↓
FIFO
       ↓
MCU
       ↓
Protocol / UI / Control
```

或者：

```text
ADC
 ↓
FPGA
 ↓
Filtering / FFT
 ↓
Memory
 ↓
MCU / Linux
 ↓
Application
```

这才是更接近复杂工程系统的思维。

---

# 17. Zynq / SoC Platform

FPGA 进一步发展后，进入：

> **CPU + FPGA 的异构 SoC。**

重点平台：

```text
Xilinx Zynq-7000
```

例如：

```text
Zynq-7010
```

---

# 18. Zynq Learning Goal

Zynq 的核心价值不是再学一个芯片。

而是理解：

```text
ARM CPU
+
FPGA Fabric
+
Memory
+
Peripheral
+
Interconnect
```

构成的异构系统。

---

# 19. Zynq Architecture

长期需要理解：

```text
ARM Cortex-A
        │
        ├── DDR
        │
        ├── Peripheral
        │
        └── AXI
              │
              ↓
        FPGA Fabric
              │
              ├── Custom Logic
              ├── DSP
              ├── FIFO
              ├── DMA
              └── Accelerator
```

这将成为从：

```text
MCU
```

走向：

```text
复杂计算系统
```

的重要桥梁。

---

# 20. Zynq 与 Embedded Linux

Zynq 是连接：

```text
MCU
↓
SoC
↓
Embedded Linux
```

的重要平台。

可以形成：

```text
ARM
↓
Boot
↓
U-Boot
↓
Linux Kernel
↓
Driver
↓
User Space
```

同时：

```text
Linux
↓
FPGA
↓
Hardware Accelerator
```

构成完整系统。

---

# 21. Embedded Linux

Embedded Linux 是长期平台路线的重要组成部分。

它代表：

> 从“实时 MCU 系统”进入“复杂计算与软件系统”。

---

# 22. Embedded Linux Learning Scope

长期重点：

### Linux 基础

- Process
- Thread
- Memory
- File System
- IPC
- Signal
- Socket

### Kernel

- Kernel Architecture
- Scheduler
- Memory
- Interrupt
- DMA
- Device Model

### Driver

- Character Device
- Platform Driver
- Device Tree
- GPIO
- I2C
- SPI
- UART
- DMA

### Build

- Cross Compilation
- Buildroot
- Yocto
- CMake
- Make
- Toolchain

### System

- Bootloader
- Kernel
- Root Filesystem
- Device Tree
- Driver
- Application

---

# 23. Embedded Linux Depth

当前阶段不要求马上深入 Linux Kernel。

学习路径：

```text
知道 Linux
    ↓
能够搭建 Linux
    ↓
能够开发应用
    ↓
理解 Driver
    ↓
理解 Device Tree
    ↓
理解 Kernel
    ↓
能够修改 Driver
    ↓
能够分析系统问题
```

最终形成：

> **MCU + RTOS + Embedded Linux**

三种系统思维。

---

# 24. MCU / RTOS / Linux Comparison

长期应该能够理解不同系统的边界。

| 项目 | MCU Bare Metal | MCU + RTOS | Embedded Linux |
|---|---|---|---|
| 系统复杂度 | 低 | 中 | 高 |
| 实时性 | 强 | 强 | 依赖系统设计 |
| 资源 | 少 | 中 | 多 |
| 启动速度 | 快 | 快 | 相对复杂 |
| 应用复杂度 | 低 | 中 | 高 |
| 多任务 | 手动 | RTOS | OS |
| 网络能力 | 有限/专用 | 较强 | 强 |
| 文件系统 | 简单 | 可集成 | 完整 |
| 驱动体系 | 自己设计 | 自己/RTOS | Kernel Driver |
| GUI | 有限 | 可集成 | 强 |
| 高级应用 | 有限 | 中 | 强 |

目标不是认为某个平台“更高级”。

而是：

> **根据系统约束选择平台。**

---

# 25. Platform Selection

未来面对一个项目，不应该首先问：

> “用 STM32 还是别的芯片？”

而应该先分析：

```text
Requirements
↓
Performance
↓
Sampling Rate
↓
Latency
↓
Throughput
↓
Memory
↓
Power
↓
Cost
↓
Interface
↓
Real-time Requirement
↓
Algorithm Complexity
↓
Software Complexity
↓
Safety / Reliability
↓
Production Constraints
↓
Platform Selection
```

---

# 26. Platform Decision Matrix

长期形成以下选择意识。

### MCU

适合：

- 控制
- 采集
- 通信
- 状态机
- 实时任务
- 中低复杂度算法

---

### DSP

适合：

- 高强度数学计算
- 信号处理
- 控制算法
- 高频实时计算

---

### FPGA

适合：

- 高吞吐
- 强并行
- 精确时序
- 高速采集
- 硬件数据流

---

### SoC

适合：

- CPU + FPGA
- 高性能数据处理
- 硬件加速
- 复杂控制系统

---

### Embedded Linux

适合：

- 网络
- 文件系统
- GUI
- 高级应用
- 大规模软件
- AI / Vision
- 复杂协议

---

# 27. Robotics / Control / Navigation Direction

长期职业技术路线可能逐步向：

```text
Embedded
↓
Control
↓
Signal Processing
↓
Robotics
↓
Motion Control
↓
Inertial Navigation
↓
System Architecture
```

因此平台路线需要覆盖：

```text
MCU
+
DSP
+
FPGA
+
SoC
+
Embedded Linux
```

但并不意味着每个平台都要达到同样深度。

---

# 28. Platform Depth Levels

平台学习统一采用分层深度。

## L1 — Know

目标：

- 知道平台是什么
- 知道主要应用
- 知道核心架构
- 能够找到资料

例如：

```text
C5000
```

可以停留在 L1。

---

## L2 — Understand

目标：

- 理解架构
- 理解主要模块
- 能阅读基本代码
- 能解释设计思想

例如：

```text
Linux
```

早期可以达到 L2。

---

## L3 — Use

目标：

- 能独立搭建环境
- 能完成项目
- 能调试
- 能查资料
- 能解决常见问题

例如：

```text
GD32
AT32
```

可以达到 L3。

---

## L4 — Engineering

目标：

- 能做系统设计
- 能进行平台迁移
- 能定位复杂问题
- 能进行性能分析
- 能做架构取舍
- 能维护长期项目

例如：

```text
STM32
RTOS
Embedded Linux
```

长期应该逐步达到 L4。

---

## L5 — Architecture

目标：

- 能跨平台设计系统
- 能做平台选型
- 能进行 Hardware / Software Co-design
- 能处理复杂约束
- 能设计系统架构
- 能带领项目技术方向

这是长期目标。

---

# 29. Platform Roadmap

整体路线：

```text
                    ┌── GD32
                    │
STM32 ──────────────┼── AT32
  │                 │
  │                 └── Other MCU
  │
  ├── RTOS
  │
  ├── DSP
  │      └── TI C2000
  │      └── TI C6000
  │
  ├── FPGA
  │
  ├── Zynq / SoC
  │
  └── Embedded Linux
```

能力演进：

```text
STM32
  ↓
MCU Migration
  ↓
DSP / FPGA
  ↓
SoC
  ↓
Embedded Linux
  ↓
Heterogeneous System
  ↓
System Architecture
```

---

# 30. Six-Month Stage

当前六个月阶段不追求同时学习所有平台。

主线：

```text
STM32
    ↓
RTOS
    ↓
Driver
    ↓
Middleware
    ↓
System Architecture
    ↓
Engineering
```

辅线：

```text
GD32 / AT32
```

用于理解 MCU Migration。

平台拓展：

```text
FPGA
DSP
Linux
Zynq
```

暂时以认知和路线规划为主。

---

# 31. Project Platform Mapping

当前项目体系与平台路线对应如下。

## F01 Oscilloscope

主平台：

```text
STM32
```

重点：

- ADC
- DMA
- Timer
- Interrupt
- Buffer
- RingBuffer
- Trigger
- DSP
- RTOS
- Driver
- Testing
- Architecture

长期可扩展：

```text
STM32
↓
GD32 / AT32
↓
FPGA
↓
Zynq
```

目标：

> 建立完整的数据采集系统工程能力。

---

## P01 IMU

主平台：

```text
STM32
```

重点：

- SPI
- FIFO
- DMA
- Timestamp
- Buffer
- Filtering
- Sensor Driver
- Data Processing

长期可连接：

```text
DSP
FPGA
Embedded Linux
```

目标：

> 建立高速传感器数据链路与实时数据处理能力。

---

## P02 BMS Monitor

主平台：

```text
STM32
```

重点：

- ADC
- CAN
- State Machine
- Fault Handling
- Communication
- Storage
- Event

长期可连接：

```text
TI C2000
```

目标：

> 建立工业控制与状态管理能力。

---

## P03 Industrial DAQ

主平台：

```text
STM32
```

重点：

- Data Acquisition
- DMA
- Buffer
- Industrial Communication
- Protocol
- Data Processing
- Storage

长期可扩展：

```text
STM32
↓
FPGA
↓
Zynq
↓
Embedded Linux
```

目标：

> 建立复杂数据采集系统能力。

---

## P04 FOC

主平台：

```text
STM32
```

长期迁移：

```text
STM32
↓
TI C2000
```

重点：

- ADC
- PWM
- Timer
- DMA
- Interrupt
- Control Loop
- Real-time
- Motor Control

目标：

> 建立实时控制系统能力。

---

# 32. Platform × Source Study

平台学习与源码学习必须形成联动。

例如：

```text
STM32
    ↓
FreeRTOS
    ↓
RTOS Architecture
```

```text
STM32
    ↓
TinyUSB
    ↓
USB Stack
```

```text
STM32
    ↓
FatFS
    ↓
Filesystem / Storage
```

```text
Zynq
    ↓
U-Boot
    ↓
Linux
```

```text
Embedded Linux
    ↓
Linux Kernel
    ↓
Driver Model
```

最终形成：

```text
Platform
    ↓
Project
    ↓
Source Study
    ↓
Architecture
    ↓
Implementation
    ↓
Verification
```

---

# 33. Cross-Platform Transfer

跨平台能力必须通过真实迁移形成，而不是通过阅读形成。

建议长期采用：

```text
Original Project
        ↓
Platform Analysis
        ↓
Identify Platform-dependent Code
        ↓
Define Interface
        ↓
Port Driver
        ↓
Port Build System
        ↓
Port Test
        ↓
Performance Comparison
        ↓
Document Differences
```

最终形成：

```text
Project
├── application/
├── middleware/
├── driver/
└── platform/
      ├── stm32/
      ├── gd32/
      ├── at32/
      └── ...
```

---

# 34. What Should Be Platform-independent?

长期应该优先保持以下模块的平台独立性：

```text
Application Logic
Business Logic
State Machine
Protocol Logic
Data Processing
Algorithm
Configuration
Test Logic
```

平台相关部分：

```text
Startup
Clock
GPIO
UART
SPI
I2C
ADC
PWM
Timer
DMA
Interrupt
Memory
Cache
RTOS Port
Driver
```

因此：

```text
Application
        ↓
Core Logic
        ↓
Platform Interface
        ↓
Platform Driver
        ↓
Hardware
```

这是长期工程能力的重要组成部分。

---

# 35. Platform Abstraction Rules

跨平台设计遵循以下原则。

## Rule 1

不要为了迁移而迁移。

---

## Rule 2

不要为了抽象而抽象。

---

## Rule 3

先完成真实项目，再提取共性。

---

## Rule 4

平台相关代码必须有明确边界。

---

## Rule 5

业务逻辑尽量减少对具体 MCU API 的依赖。

---

## Rule 6

性能敏感路径允许保留平台特化实现。

---

## Rule 7

抽象不能隐藏真实硬件约束。

---

## Rule 8

任何抽象都必须能够被调试。

---

# 36. Platform Learning Method

学习新平台时，不采用：

> 从第一页开始把整本 Reference Manual 看完。

而采用问题驱动。

---

## Step 1 — Platform Overview

了解：

- CPU
- Memory
- Bus
- Peripheral
- DMA
- Interrupt
- Clock
- Debug
- Toolchain

---

## Step 2 — Build Environment

能够：

```text
Build
Flash
Debug
Run
```

---

## Step 3 — Minimal Program

完成：

```text
Startup
↓
Clock
↓
GPIO
↓
UART
```

---

## Step 4 — Core Peripheral

根据项目需求学习：

```text
Timer
ADC
SPI
I2C
DMA
PWM
CAN
USB
Ethernet
```

---

## Step 5 — Runtime

学习：

```text
Interrupt
DMA
RTOS
Memory
Cache
```

---

## Step 6 — Driver

实现：

```text
Peripheral Driver
```

---

## Step 7 — Project

进入真实项目。

---

## Step 8 — Debug

主动制造和分析：

- Race Condition
- Buffer Overflow
- DMA Error
- Cache Coherency
- Timing Error
- Interrupt Priority
- Deadlock
- Data Loss
- Throughput Bottleneck

---

## Step 9 — Migration

尝试：

```text
Platform A
↓
Platform B
```

---

## Step 10 — Architecture

总结：

```text
哪些能力属于平台？
哪些能力属于系统？
哪些能力属于算法？
哪些能力属于工程方法？
```

---

# 37. Platform Documentation

每一个重要平台都应该逐步形成自己的知识记录。

建议：

```text
platform/
    README.md
    architecture.md
    memory.md
    peripheral.md
    interrupt.md
    dma.md
    toolchain.md
    debugging.md
    migration.md
    performance.md
    notes/
```

不要求一次性建立全部文件。

随着真实项目需要逐步产生。

---

# 38. Platform Decision Record

重要平台选型应该记录：

```text
Requirement
↓
Candidate Platforms
↓
Constraints
↓
Comparison
↓
Decision
↓
Trade-offs
↓
Verification
```

例如：

```text
为什么使用 STM32？
为什么不是 FPGA？
为什么不是 C2000？
为什么不是 Linux SoC？
```

不是为了证明某个平台最好。

而是记录：

> **在当时的需求和约束下，为什么做出这个技术选择。**

---

# 39. Performance Awareness

随着平台能力提高，不能只关注：

```text
功能是否正确
```

还需要关注：

```text
CPU Load
Memory Usage
Latency
Throughput
Interrupt Frequency
DMA Efficiency
Cache Effect
Power
Temperature
Boot Time
Response Time
Jitter
```

最终从：

> “程序能不能跑”

升级为：

> “系统是否满足工程约束”。

---

# 40. Hardware / Software Co-design

长期最终目标：

```text
Requirement
      ↓
System Architecture
      ↓
Hardware / Software Partition
      ↓
Platform Selection
      ↓
Algorithm
      ↓
Implementation
      ↓
Verification
```

例如高速数据采集：

### 方案 A

```text
MCU
↓
ADC
↓
DMA
↓
DSP
```

### 方案 B

```text
ADC
↓
FPGA
↓
FIFO
↓
MCU
```

### 方案 C

```text
ADC
↓
FPGA
↓
DSP / Accelerator
↓
ARM
↓
Linux
```

真正高级的能力不是知道三种方案。

而是能够回答：

```text
为什么选择 A？

什么时候应该选择 B？

什么时候 C 才值得？

代价是什么？

瓶颈在哪里？

怎么验证？
```

---

# 41. AI-assisted Platform Learning

AI 可以成为平台学习的重要工具，但不能替代验证。

推荐流程：

```text
Requirement
↓
AI 辅助拆解
↓
Human Architecture
↓
AI 辅助比较
↓
Human Decision
↓
AI 辅助查资料 / 写代码
↓
Human Review
↓
Build
↓
Run
↓
Test
↓
Debug
↓
Verify
```

AI 可以帮助：

- 快速理解 Reference Manual
- 对比平台差异
- 生成驱动模板
- 生成寄存器配置代码
- 生成测试代码
- 分析编译错误
- 分析日志
- 辅助定位 Bug
- 辅助阅读源码
- 辅助整理文档

但必须坚持：

> **AI 输出必须经过源码、官方文档、编译、运行、测试或硬件实验验证。**

尤其不能把：

```text
AI 说这个寄存器应该这样配置
```

当作：

```text
硬件事实
```

---

# 42. Platform Learning and AI Era

AI 时代平台学习的重点会逐渐从：

```text
记 API
记寄存器
记 SDK
记函数
```

转向：

```text
理解架构
理解约束
理解数据流
理解时序
理解硬件
理解系统
理解 trade-off
```

因此平台学习不应该减少底层能力。

相反：

> **越往系统架构方向发展，越需要能够理解底层真实发生了什么。**

---

# 43. Avoid Platform Collecting

必须避免：

```text
STM32
GD32
AT32
NXP
TI
Renesas
Infineon
ESP32
RP2040
...
```

然后每个平台只会：

```text
GPIO
UART
SPI
```

这种学习方式会造成：

> 广度增加，但系统能力没有增加。

真正有效的广度应该是：

```text
STM32
↓
理解 MCU

GD32 / AT32
↓
理解迁移

C2000
↓
理解实时控制 / DSP

FPGA
↓
理解并行数据流

Zynq
↓
理解异构计算

Linux
↓
理解复杂软件系统
```

每个平台都承担不同的认知任务。

---

# 44. Platform Expansion Trigger

只有满足以下条件之一，才扩展新的平台：

### Trigger 1

当前项目真实需要。

### Trigger 2

当前平台无法满足性能需求。

### Trigger 3

需要进行迁移能力训练。

### Trigger 4

需要理解新的计算模型。

### Trigger 5

目标行业具有明确的平台需求。

### Trigger 6

需要验证某种系统架构。

否则：

> 不主动增加平台数量。

---

# 45. Long-Term Platform Sequence

长期推荐路线：

```text
Phase 1
STM32
    ↓
MCU Fundamentals

Phase 2
STM32 + RTOS
    ↓
Real-time System

Phase 3
STM32 + Driver + Middleware
    ↓
Engineering

Phase 4
GD32 / AT32
    ↓
MCU Migration

Phase 5
TI C2000
    ↓
Real-time Control / DSP

Phase 6
FPGA
    ↓
Parallel Data Processing

Phase 7
Zynq
    ↓
Heterogeneous Computing

Phase 8
Embedded Linux
    ↓
Complex Embedded System

Phase 9
MCU + DSP + FPGA + SoC + Linux
    ↓
System-level Architecture

Phase 10
Hardware / Software Co-design
    ↓
Independent System Design
```

---

# 46. Current Priority

当前阶段的优先级必须保持清晰。

## Priority A — Deep

```text
C
STM32
DMA
Interrupt
RTOS
Driver
Middleware
System Architecture
Testing
Engineering
```

---

## Priority B — Practice / Migration

```text
GD32
AT32
```

主要用于：

```text
MCU Migration
Platform Abstraction
```

---

## Priority C — Long-term Expansion

```text
TI C2000
FPGA
Embedded Linux
Zynq
```

当前以：

```text
Understanding
+
Small Experiments
+
Source Study
```

为主。

---

## Priority D — Awareness

```text
TI C5000
TI C6000
Other MCU Families
Other SoC
Other FPGA Families
```

当前阶段：

```text
Know
+
Understand
```

即可。

---

# 47. Relationship With Learning Roadmap

平台路线不是独立学习线。

它应该嵌入整体能力成长。

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
Project
↓
System Architecture
↓
Platform Migration
↓
DSP / FPGA / SoC
↓
Embedded Linux
↓
Hardware / Software Co-design
```

---

# 48. Relationship With Project Roadmap

项目是平台能力的主要载体。

```text
F01 Oscilloscope
        ↓
STM32
        ↓
DMA / ADC / Timer / Buffer
        ↓
RTOS / Driver / DSP
        ↓
System Architecture
```

```text
P01 IMU
        ↓
STM32
        ↓
SPI / FIFO / DMA
        ↓
Data Processing
        ↓
Sensor Driver
```

```text
P02 BMS
        ↓
STM32
        ↓
ADC / CAN / State Machine
        ↓
Control / Fault Handling
        ↓
C2000 Migration
```

```text
P03 Industrial DAQ
        ↓
STM32
        ↓
Acquisition / Communication
        ↓
FPGA
        ↓
Zynq / Linux
```

```text
P04 FOC
        ↓
STM32
        ↓
ADC / PWM / Timer
        ↓
Control Loop
        ↓
C2000
```

因此：

> **项目推动平台学习，而不是平台推动项目。**

---

# 49. Platform Capability Matrix

长期可以使用以下矩阵跟踪能力。

| Platform | Depth Target | Main Purpose | Current Role |
|---|---:|---|---|
| STM32 | L4-L5 | 主平台 / MCU / 工程能力 | Core |
| GD32 | L3 | MCU Migration | Secondary |
| AT32 | L3 | MCU Migration | Secondary |
| TI C2000 | L3-L4 | Control / DSP | Long-term |
| TI C5000 | L1-L2 | DSP Awareness | Awareness |
| TI C6000 | L2-L3 | High-performance DSP | Long-term |
| FPGA | L3-L4 | Parallel Processing | Long-term |
| Zynq | L2-L4 | Heterogeneous SoC | Long-term |
| Embedded Linux | L3-L4 | Complex Embedded System | Long-term |
| Linux Kernel | L2-L4 | System / Driver | Source Study |

这里的 Depth Target 是长期目标，不代表必须在当前阶段完成。

---

# 50. Final Capability Model

平台能力最终应该形成：

```text
                System Architecture
                        │
        ┌───────────────┼───────────────┐
        │               │               │
       MCU             DSP             FPGA
        │               │               │
        └───────────────┼───────────────┘
                        │
                       SoC
                        │
                 Embedded Linux
                        │
                        ↓
              Heterogeneous System
                        │
                        ↓
          Hardware / Software Co-design
```

同时拥有：

```text
底层能力
+
算法能力
+
驱动能力
+
实时系统能力
+
数据流能力
+
平台迁移能力
+
系统架构能力
+
工程能力
```

最终目标不是：

> “我会多少种芯片。”

而是：

> **面对一个真实工程问题，可以从需求出发分析约束，选择合适的平台与架构，完成软硬件设计，实现、调试、验证和优化，并能够在平台变化后迁移核心技术方案。**

---

# 51. Final Principles

## Principle 1 — Depth Before Breadth

先建立主平台深度，再扩展平台广度。

---

## Principle 2 — Project-driven

平台学习必须服务于项目。

---

## Principle 3 — Platform Is Not the Goal

芯片只是载体。

真正需要掌握的是：

```text
Architecture
Data Flow
Timing
Memory
Concurrency
Interface
Performance
Reliability
```

---

## Principle 4 — Migration Is the Test

真正的跨平台能力不是：

> “我学过两个 MCU。”

而是：

> “我能把一个系统从平台 A 迁移到平台 B。”

---

## Principle 5 — Constraints Matter

平台选择必须建立在：

```text
Performance
Cost
Power
Memory
Latency
Throughput
Real-time
Development Cost
Production
Reliability
```

等真实约束之上。

---

## Principle 6 — Do Not Over-abstract

抽象应该来自真实变化，而不是来自想象中的未来。

---

## Principle 7 — Verify on Hardware

最终必须回到：

```text
Build
↓
Flash
↓
Run
↓
Measure
↓
Debug
↓
Test
↓
Verify
```

---

## Principle 8 — Use AI as Multiplier

AI 可以提高：

```text
学习速度
分析速度
编码速度
阅读速度
调试效率
```

但不能替代：

```text
Architecture
Judgment
Verification
Responsibility
```

---

## Principle 9 — Follow Real Problems

真正需要什么平台，就学习什么平台。

---

## Principle 10 — Long-term Goal

最终目标：

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
Project
↓
Source Study
↓
Testing
↓
Engineering
↓
Platform Migration
↓
DSP / FPGA
↓
SoC
↓
Embedded Linux
↓
Hardware / Software Co-design
↓
System Architecture
↓
Independent System Design
```

---

# 52. Closing

平台学习不是收集芯片。

平台学习的本质，是不断扩大：

> **解决真实工程问题时可选择的技术空间。**

早期：

```text
我会不会这个 MCU？
```

中期：

```text
这个系统应该怎么实现？
```

再往后：

```text
为什么选择这个平台？
```

更进一步：

```text
如果平台换了，方案怎么迁移？
```

最终：

```text
面对需求和约束，
我应该如何设计整个系统？
```

这就是平台能力从：

```text
Device User
```

逐渐走向：

```text
Embedded Engineer
        ↓
System Engineer
        ↓
System Architect
```

的过程。

因此，本仓库的平台路线遵循：

> **一条主平台深挖，多个平台承担不同认知任务；以项目为牵引，以迁移为验证，以系统架构为最终目标。**

平台的增加不是终点。

**能够脱离具体平台进行技术方案思考，并在新的平台上重新落地，才是最终目标。**
