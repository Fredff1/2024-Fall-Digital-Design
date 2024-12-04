# 23302010034 傅子澈 CPU设计Project

## PJ任务要求

一、项目介绍、要求和提示
	在这个项目中，我们最终需要完成一个能够实现指定RISC-V指令功能的简单单周期CPU的电路设计。附录中，提供了关于这两者的介绍和一个单周期CPU电路设计的实例。当然，我们需要完成的工作比这个实例还要简单得多，因为我们只要求完成的单周期CPU接收并正确处理RISC-V指令的一个很小的子集，同时也减少了对电路中存储设备规模的要求。
对于这个32位单周期CPU电路，我们有一些具体的要求：
	1. 该CPU需要完成的指令有以下9个：
add，sub，or，slt，addi，ori，slti，sw，lw
每条指令长度都为32bits，具体细节参考附件或者说明文档。
	2. 该CPU的部件资源包括：1）X0-X31共32通用寄存器；2）特殊寄存器PC（program counter）和指令暂存寄存器IR（instruction Register）。以上寄存器都是32bits字长。
	3. 存储器包括256bytes的memory（地址为0~255，采用little endian方式存储数据或者指令）。其中地址0~127存放程序指令（最多32条指令），地址128~255存放数据。也可以使用两块128byte的独立存储器；
	4. 最后的波形仿真应当采用功能仿真，且所有存储器件中的数据都应当被显示。
		
设计的正确性，将由功能仿真的结果来检验。一方面，大家应当自行进行功能仿真的测试，并将结果提交；另一方面，我们也会对大家提交的程序进行相关测试。

二、项目提交
	1. 最终提交时间为期末考试之前，提交内容包括：所有基本部件的程序代码（以Project的形式，不能只有.v文件），每条指令的执行仿真波形图（加简要说明），实验报告和文件清单，所有内容应当被打成一个压缩包上传，文件名为“学号+姓名+prj”。

注意事项：
(a) 	CPU设计可以直接使用表达式实现，但是推荐使用经典的多部件组合方式，具体参考附件I。如果使用多个基本部件实现，要对各个部件功能进行说明。
(b) 	实验报告包括但不限于对功能仿真波形图的介绍和说明，以及指令处理的具体过程，以及对CPU所能完成的所有功能和相关性能分析。
(c) 	可以分两阶段实现：第一步指令存放在IR寄存器，直接对单条命令解析实现所需功能；第二步，若干条指令代码存放在存储器从0x00开始的存储空间，根据PC寄存器的值进行指令读取到IR，再解析执行，同时更新PC寄存器指向下一条指令。
(d) 	实现上面的9条指令后，如果有余力，可以尝试实现beq指令（有额外加分）。
(e) 	在设计文档的内容中包括但不限于CPU的电路示意图、CPU如何实现其功能、怎样通过改进设计提高其性能以及自己在项目中的体会和感受。

三、项目的评分
	项目的基准分为100分，主要包括对以下几项的考核：
1）	指令功能的实现（程序代码）每条5分，共45分；
2）	指令实现设计思路与仿真结果（波形图或者输出结果），共30分；
3）	实验报告及感想体会，共25分；
4）	额外实现beq指令（主要是pc寄存器更新策略），附加分10分。

程序会考察程序的正确、规范等性质；波形图会考察其代表性和体现出的程序性能；文档会考察文档内容是否完整，是否能体现出正确的设计思路，以及是否对单周期CPU的实现进行了自己的思考等。本project对文档有较高的要求，如果有同学能够提出更好的改进意见和建议，请在文档中特别注明，会酌情予以加分。


## 设计的前期准备

### 需求分析

要求支持的指令主要分为三类：算术类、读写以及跳转。在这个基础上，我们规划CPU的基本模块
CPU需要实现的模块包括：

- 程序计数器（PC）管理指令的地址，需要支持跳转和正常递增
- 指令存储器（Instruction Memory）按照PC提供的地址，读取相应的指令，大小为128byte
- 寄存器组（register）32个通用寄存器和一个Instruction register存储正在执行的指令
- 算术逻辑单元（ALU）执行核心的计算，支持算数类的指令
- 数据存储器，存储另外128byte的数据吗，用于支持读写指令 其中地址为128byte，但考虑拓展性，我选择将地址信号拓展到16位
- 指令译码模块（Instruction Decoder）在controller中负责提取指令的字段
- 控制器（Controller）译码读出的指令并将其转化为具体的控制信号
- 最上层的综合所有模块，封装完整的CPU模块
- 单元测试和仿真
  
### 信号接口设计

#### 程序计数器（PC）

- input clk 时钟信号 位宽 1
- input reset 复位信号，用于重置到0 位宽 1
- input pc_update 为1时才允许更新地址 位宽 1
- input next_pc 为beq准备的，若为0，正常更新（地址+4），否则，跳转到对应的地址 位宽 16
- output pc_output 当前需要执行的指令的地址 位宽 16
  
#### 指令存储器（Instruction Memory）和寄存器

- input address 执行指令的地址 位宽 16
- input flag 是否读取 位宽 1
- output instruction 具体的指令 位宽 32

#### 通用寄存器组

- input clk 位宽 1
- input reg_id_1,reg_id_2 两个源寄存器的编号 位宽 5
- input operation_type 0代表只读1和2，1代表写1读2，2代表读写1，读2 位宽 2
- input write_data 写入的寄存器的数据 位宽 32
- output reg_data_1,reg_data_2 读出的信号 位宽 32

#### ALU

- input num_1 第一个操作数 位宽 32(4字节)
- input num_2 第二个操作数 位宽 32
- input alu_control 位宽 3
- output result 位宽 32
- output is_zero 是否为0 位宽 1

#### 数据存储器

- input address 访问地址 位宽 16
- input write_data 需要写入的数据，位宽 32
- input read_flag 读取的使能信号 位宽 1
- input write_flag 写入的使能信号 位宽 1
- output data_read 读取的数据 位宽 32

#### 控制器

- input instruction 输入的指令 位宽 32
- output alu_2_type alu第二个操作数是寄存器还是立即数 位宽 2（留冗余）
- output mem_read,mem_write 读写存储器的信号 位宽 1
- output reg_read,reg_write 读写寄存器的信号 位宽 1
- output branch 分支信号 位宽 1
- output alu_op_type alu操作类型信号 位宽 3

#### 上层的cpu模块

- input clk 时钟信号 位宽 1
- input reset 复位信号 位宽 1
- output result 指令执行的结果，例如算术指令会直接将其赋值位计算得到的结果，读取指令会显示读取的内容，写入和跳转指令会显示0/1，用于仿真时方便追踪
- ...其他信号，视仿真时观察的需求进行增删

### 指令执行流程

#### 算数

- PC更新，给出当前的地址
- 指令存储器取出对应地址指令并放入指令暂存寄存器
- Controller接受指令并更改更新信号
- ALU根据信号，取出对应的数据并进行计算得到结果
- 结果根据控制信号写入新的寄存器

#### 读写

- PC更新，给出当前的地址
- 指令存储器取出对应地址指令并放入指令暂存寄存器
- Controller接受指令并更改更新信号
- 数据存储器根据信号进行更新
  
#### 跳转

- PC更新，给出当前的地址
- 指令存储器取出对应地址指令并放入指令暂存寄存器
- Controller接受指令并更改更新信号
- PC根据信号进行更新

## 实现流程



