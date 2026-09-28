# Project Catalog

> 个人嵌入式工程项目总账。
>
> 本文档用于统一记录项目体系、项目分类、项目生命周期、项目编号、项目状态以及项目管理原则。
>
> 本文档属于长期稳定的项目管理规则，不记录每日开发过程。具体项目的需求、架构、设计、Bug、测试和 Release 等内容，应记录在对应项目目录中。

---

# 1. 项目体系

整个项目体系采用灵活的 `1 + 4 + N` 模型。

`1 + 4 + N` 是当前长期学习与项目发展的**战略模型**，不是固定的项目数量，也不是要求在某个时间节点完成固定数量的项目。

---

## 1.1 Flagship Project

`Flagship` 代表核心旗舰项目。

旗舰项目具备以下特点：

- 综合性最强
- 开发周期最长
- 涵盖知识范围最广
- 工程化要求最高
- 持续迭代
- 作为核心作品集
- 作为主要面试项目
- 用于综合验证嵌入式软件能力
- 用于实践真实的软件工程流程

旗舰项目不是一次性 Demo。

它应该随着能力提升持续演进，并逐渐加入：

- Requirements
- System Architecture
- Module Design
- ADR
- Coding
- Unit Test
- Integration Test
- Bug Tracking
- Regression Test
- Release
- Review
- Maintenance

当前旗舰项目：

| ID | Project | Status | 核心目标 |
|---|---|---|---|
| F01 | Oscilloscope | Planned | 建立综合性的嵌入式系统开发、架构设计、调试、测试与工程化能力 |

---

# 2. Portfolio Projects

`Portfolio` 代表作品集项目。

这些项目的目的不是与 Flagship Project 竞争，而是围绕核心能力体系，对主项目没有覆盖或覆盖不足的技术能力进行补强。

Portfolio 项目通常具有以下特点：

- 技术主题相对集中
- 项目规模中等
- 可以独立形成完整项目
- 可以展示特定技术能力
- 可以补充 Flagship Project 的能力盲区
- 可以作为实际面试中的辅助项目

当前第一阶段规划的 4 个 Portfolio Projects：

| ID | Project | Status | 核心目标 |
|---|---|---|---|
| P01 | IMU | Planned | 高速数据采集、SPI、FIFO、数据处理与算法 |
| P02 | BMS Monitor | Planned | 多通道数据采集、CAN、状态机、故障处理 |
| P03 | Industrial DAQ | Planned | 工业通信、数据采集、数据处理与系统化设计 |
| P04 | FOC | Planned | 实时控制、ADC、PWM、Timer、控制环 |

这 4 个项目属于当前第一阶段的重点项目。

随着实际学习和职业方向发展，可以继续增加 Portfolio Project。

---

# 3. Future Projects

`N` 代表未来持续增加的其他项目。

N 不提前限定数量。

项目是否进入正式项目体系，应由实际技术价值、能力补充价值、工程价值以及职业方向共同决定，而不是为了满足数量而建立项目。

未来项目可能来自以下方向：

- 技术验证
- 数据采集
- 通信协议
- USB
- CAN
- Ethernet
- Bootloader
- OTA
- 电机控制
- DSP
- FPGA
- SoC
- Zynq
- RISC-V
- 平台迁移
- 工具开发
- Host Tool
- 自动化工具
- 测试工具
- 工业控制
- 其他系统级嵌入式项目

`N` 的意义是保持项目体系具有长期扩展能力。

---

# 4. 项目分类

所有正式进入项目体系的工作，根据性质划分为以下类别。

## 4.1 Flagship

核心旗舰项目。

用于承载最完整、最深入、最系统的工程实践。

当前：

```text
F01 — Oscilloscope
```

---

## 4.2 Portfolio

作品集项目。

用于展示特定技术能力，并补充Flagship Project项目的能力覆盖。

当前：

```text
P01 — IMU
P02 — BMS Monitor
P03 — Industrial DAQ
P04 — FOC
```

---

## 4.3 Experiment

技术实验。

用于验证单一技术问题、设计方案或底层机制。

典型内容：

- C 语言行为验证
- Pointer 实验
- Memory Layout 实验
- Struct Padding
- Ring Buffer 
- DMA Buffer
- Double Buffer
- Cache 
- Memory Coherency
- CRC
- Protocol Parsing
- Interrupt 行为
- RTOS 机制验证

Experiment的目标是：
> 快速、最小化、可重复地验证一个技术问题。

Experiment 不应为了显得“高级”而被包装成完整 Project。

---

## 4.4 Platform

平台相关项目。

用于研究、验证或迁移不同硬件平台上的软件设计。

可能涉及到：

- STM32
- GD32
- AT32
- TI C2000
- TI C5000
- TI C6000
- Zynq
- FPGA
- RISC-V
- 其他 MCU / DSP / SoC

Platform 项目的重点不是收集芯片，而是验证：

- 架构差异
- Toochain 差异
- Driver 差异
- Peripheral 差异
- Memory Architecture 差异
- RTOS 移植
- BSP
- Middleware 迁移
- 软件设计的可移植性

---

## 4.5 Tool

工程工具项目。

用于辅助开发、调试、测试和分析。

可能包括：

- UART Tool
- CAN Analyzer
- Protocol Analyzer
- Oscilloscope Host Tool
- Firmware Tool
- Data Viewer
- Log Analyzer
- 自动化测试工具
- 数据处理工具

这些工具可以独立于 MCU Firmware 存在。

---

## 4.6 Other 

不适合归入以上类别、但具有长期价值的特殊项目。

---

# 5. Project Lifecycle

所有正式项目统一采用以下生命周期：

```text
Idea
  ↓
Planned
  ↓
Active
  ↓
Completed
  ↓
Maintained
  ↓
Archived
````

---

## 5.1 Idea

项目想法已经产生，但尚未进入正式规划。

Idea 阶段只需要明确：

- 项目大致是什么
- 为什么可能值得做
- 可能解决什么问题
- 可能补充什么能力

Idea 不要求建立完整项目目录。

---

## 5.2 Planned

项目已经确认具有实际价值，并进入正式路线规划。

进入 Planned 后，应明确：

- 项目目标
- 技术目标
- 前置知识
- 预计开始阶段
- 预期产出
- 与现有项目的关系

但此时可以尚未开始编码。

---

## 5.3 Active

项目已经正式开始开发。

进入 Active 后，应根据项目规模建立实际工程目录，并开始记录：

- Requirements
- Architecture
- Design
- ADR
- Test
- Bug
- Review
- Release

项目的开发过程以 Git 为主要历史记录。

---

## 5.4 Completed

当前阶段的既定目标已经完成，并形成可交付版本。

Completed 不代表项目永久结束。

项目可以继续进入 Maintained，也可以在条件满足时进入 Archived。

---

## 5.5 Maintained

项目已经完成，但仍然存在：

- Bug 修复
- 性能优化
- 功能扩展
- 平台迁移
- 架构升级
- 工程质量提升

等持续工作。

---

## 5.6 Archived

项目已经停止继续开发，但保留：

- Source Code
- Requirements
- Architecture
- Design 
- ADR
- Bug Records
- Test Reports
- Release Records
- 失败经验
- 经验总结

Archived 的项目原则上不删除。

项目失败、项目终止以及错误方案同样属于个人工程成长履历的一部分。

---

# 6. 项目准入原则

任何新项目进入正式项目体系前，应至少回答以下问题：

## 6.1 为什么做？

必须明确项目的真实目的。

不能仅因为“这个东西看起来很厉害”就建立项目。

---

## 6.2 解决什么问题？

项目应该对应明确的问题、需求和能力目标。

---

## 6.3 对能力地图有什么补充？

至少应明确它补充哪方面能力，例如：

- C
- MCU
- Driver
- DMA
- RTOS
- Protocol
- DSP
- Control
- FPGA
- System Architecture
- Testing 
- Engineering

---

## 6.4 与现有项目有什么区别？

新项目不应简单重复已有项目。

如果已有项目能够覆盖该能力，应优先考虑扩展已有项目，而不是建立新项目。

---

## 6.5 需要哪些前置知识？

必须判断项目当前是否具备合理的启动条件。

不能为了追求项目数量而跳过必要的基础知识。

---

## 6.6 预计在哪个 Stage 开展？

项目应于整体学习路线建立关联。

---

## 6.7 最终形成什么产出？

项目必须明确最终输出，例如:

- Firmware
- Host Tool
- Library
- Driver 
- Middleware
- Test System
- Documentation
- Demo
- Release
- Engineering Case Study

---

# 7. 项目编号规则

项目编号用于长期索引，不代表项目开发顺序。

当前编号体系：

```text
Fxx   → Flagship
Pxx   → Portfolio
Exxx  → Experiment
PLxx  → Platform
Txx   → Tool
Oxx   → Other
```

示例：

```text
F01   — Oscilloscope
P01   — IMU
P02   — BMS Monitor
P03   — Industrial DAQ
P04   — FOC

E001  — RingBuffer Experiment
E002  — Struct Padding Experiment

PL01  — GD32 Migration

T01   — CAN Analyzer

O01   — Other Project
```

编号一旦确定，原则上不因为项目目录顺序变化而随意更改。

---

# 8. Project 与 Experiment 的边界

两者需要明确区分。

**Experiment**

关注：

> 一个技术问题。

典型特点：

- 范围小
- 周期短
- 目标明确
- 重点验证一个技术点
- 可以快速创建与删除实验环境
- 不要求完整项目流程

例如：

```text
验证 RingBuffer 在单生产者 / 单消费者场景下的行为
```

---

**Project**

关注：

> 一个完整系统或完整产品功能。

典型特点：

- 有明确系统目标
- 有多个模块
- 有实际工程约束
- 存在架构设计
- 存在模块协作
- 存在测试
- 存在 Bug
- 存在 Release
- 存在长期维护价值

例如：

```text 
oscilloscope
```

---

# 9. Project 与 Learning 的边界

Learning 记录：

> 为掌握知识而进行的学习。

Project 记录：

> 为解决实际问题而进行的工程实践。

同一个知识点可能同时出现在 Learning 和 Project 中，但两者目的不同。

例如：

```text
学习 volatile
        ↓
learning / docs
```

而：

```text
DMA + Buffer + volatile 导致的实际 Bug
        ↓
Project / Bug
```

前者属于知识。

后者属于工程经验。

两者都应保留。

---

# 10. 项目工程产出原则

对于具有一定规模的正式项目，应逐步形成完整工程记录。

根据项目规模，可建立：

```text 
docs/
├── requirements/
├── architecture/
├── design/
├── adr/
├── test-reports/
├── bugs/
├── milestones/
└── release/
```

---

## 10.1 Requirements

记录：

- 项目目标
- 功能需求
- 性能需求
- 接口需求
- 环境约束
- 资源约束
- 非功能需求

---

## 10.2 Architecture

记录：

- 系统架构
- 数据流
- 模块划分
- 软件层次
- 任务模型
- 数据路径
- 硬件与软件边界

---

## 10.3 Design

记录：

- 模块设计
- API
- 数据结构
- 状态机
- Buffer
- Driver
- Error Handling
- 关键算法

---

## 10.4 ADR

`Architecture Decision Record`

用于记录重要设计决策。

应说明：

- Context
- Options
- Decision
- Reason
- Consequences
- Validation

重点记录：

> 为什么最终选择这个方案。

而不仅仅记录：

> 最后用了什么方案。

---

## 10.5 Test

记录：

- Unit Test
- Integration Test
- System Test 
- Regression Test 
- Performance Test 
- Stress Test 
- Boundary Test 

---

## 10.6 Bug

记录：

- 现象
- 影响
- 环境
- 复现步骤
- 根因
- 修复
- 验证
- 回归测试
- 经验总结

Bug 是项目工程经验的重要组成部分。

---

## 10.7 Release

记录：

- Version
- Release Date
- Changes
- Known Issues
- Verification Result
- Release Artifacts

---

# 11. 项目与 Source Study 的关系

成熟项目源码研究不会直接等同于自己的 Project。

Source Study 的作用是：

```text 
成熟项目
    ↓
源码研究
    ↓
理解设计思想
    ↓
提炼工程方法
    ↓
进行独立实验
    ↓
应用到自己的项目
```

研究目标不是复制代码。

重点研究：

- Architecture
- API Design
- Data Structures
- Driver Abstraction 
- Portability
- RTOS Design 
- Middleware
- Testing
- Build System 
- Reliability

最终需要将有效的设计思想转化为自己的理解和工程能力。

---

# 12. 项目与平台迁移的关系

当一个项目被迁移到另一种 MCU、DSP、SoC 或其他平台时，应重点记录：

- 平台差异
- Driver 差异
- Toolchain 差异
- Memory 差异
- Peripheral 差异
- RTOS Port
- BSP 差异
- 性能差异
- 软件架构中可以复用的部分
- 必须重新实现的部分

平台迁移的真正目标不是：

> “我学会了另一颗芯片。”

而是：

> “我验证了技术方案如何从一个平台迁移到另一个平台。”

---

# 13. 项目管理原则

## 13.1 项目必须服务于能力成长

项目不是为了凑数量。

每个项目都应对应明确的能力目标。

---

## 13.2 能扩展已有项目时，不重复创建项目

如果一个新需求能够自然地成为现有项目的功能扩展，应优先扩展现有项目。

只有当新目标在技术边界、系统目标或工程性质上已经明显独立时，才建立新的 Project。

---

## 13.3 小问题优先使用 Experiment 

不应为了一个小技术问题创建大型 Project。

单一技术验证应优先进入 Experiment。

---

## 13.4 项目规模与工程流程匹配

并不是所有项目都要求完全相同的文档规模。

小型项目可以轻量化。

大型项目逐步采用完整工程流程。

工程规范应与实际复杂度匹配。

---

## 13.5 重要决策必须留下记录

对于影响架构、性能、可靠性、可维护性、平台迁移能力的重大决策，应建立ADR。

---

## 13.6 Bug 是工程资产

Bug不应只被视为需要消灭的问题。

高价值 Bug 应记录：

- 为什么出现
- 为什么之前没有发现
- 根因是什么
- 如何修复
- 如何避免再次发生

这些记录属于个人工程经验。

---

## 13.7 失败项目不等于无价值项目

项目即使最终失败，只要保留：

- 问题
- 过程
- 方案
- 决策
- 实验结果
- 失败原因
- 最终经验

就仍然具有长期价值。

---

## 13.8 不为了目录结构而创建项目

目录结构服务于工程实践。

不能为了填满：

```text
projects/
experiments/
platform/
tools/
```

而人为制造没有实际价值的项目。

---

# 14. 当前项目总览

**Flagship**

```text 
F01 — Oscilloscope
Status: Planned
```

**Portfolio**

```text
P01 — IMU
Status: Planned

P02 — BMS Monitor
Status: Planned

P03 — Industrial DAQ
Status: Planned

P04 — FOC
Status: Planned
```

**Future**

未来项目按照实际技术发展、能力缺口、职业方向以及工程需求逐步进入项目体系。

不预设固定数量。

---

# 15. 长期项目发展模型

项目体系长期遵循：

```text
学习
  ↓
实验
  ↓
理解
  ↓
项目
  ↓
问题
  ↓
Bug / ADR / Test
  ↓
复盘
  ↓
知识沉淀
  ↓
能力提升
  ↓
更复杂的项目
```

因此，Project Catalog 不只是项目列表。

它同时承担：

- 项目路线索引
- 能力成长索引
- 项目生命周期管理
- 工程经验管理
- 长期作品集规划

---

# 16. 最终目标

这个项目体系最终服务于长期的个人嵌入式工程能力建设。

最终目标不是拥有大量项目，而是逐步形成：

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
System Architecture
↓
Testing
↓
Engineering
↓
Cross-Platform Transfer
↓
Independent System Design
```

项目只是承载这些能力成长的载体。

最终形成的是：

> 个人嵌入式工程知识库 + 实验室 + 作品集 + 成长履历。
