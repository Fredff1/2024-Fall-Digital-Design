# Lab_1_1 3-8 译码器

## 实验目的
根据教材4－9节，设计3－8译码器 
    1．写出3－8译码器真值表，通过化简写出译码器布尔表达式 
    2．使用Verilog HDL实现，用vivado仿真并下载到实验板进行验证 
输入使用板上的switch拨段开关，输出使用板上的led灯。
该实验需要完成上述所有要求
## 实验步骤

### 1 真值表和逻辑表达式

#### 1.1 3-8译码器真值表如图所示

<table>
    <tr>
        <th colspan="3">Input</th>
        <th colspan="8" >Output</th>
    </tr>
    <tr>
        <td>x</td>
        <td>y</td>
        <td>z</td>
        <td>D_0</td>
        <td>D_1</td>
        <td>D_2</td>
        <td>D_3</td>
        <td>D_4</td>
        <td>D_5</td>
        <td>D_6</td>
        <td>D_7</td>
    <tr>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>0</td>
        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr>
        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
    </tr>
    <tr>
        <td>1</td><td>1</td><td>1</td><td>0</td> <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td>
    </tr>
    
</table>

#### 1.2 将真值表转化为逻辑表达式：

##### 因为输出有8个且每次只有一种输出为真，直接观察就可以得到对应的逻辑表达式，即
D0 = (~x)&(~y)&(~z) 
D1 = (~x)&(~y)&(z)
D2 = (~x)&(y)&(~z)
D3 = (~x)&(y)&(z)
D4 = (x)&(~y)&(~z)
D5 = (x)&(~y)&(z) 
D6 = (x)&(y)&(~z)
D7 = (x)&(y)&(z)  

#### 1.4 分析问题

在这里，输入正好有8种，我们可以直接映射过去，无需更多操作

#### 1.3 转化为verilog描述



##### 代码

```verilog

module decoder_3_8( 
    input wire x,
    input wire y,
    input wire z,

    output wire [7:0] D
    
);

    assign D[0] = (~x)&(~y)&(~z);
    assign D[1] = (~x)&(~y)&(z);
    assign D[2] = (~x)&(y)&(~z)
    assign D[3] = (~x)&(y)&(z);
    assign D[4] = (x)&(~y)&(~z);
    assign D[5] = (x)&(~y)&(z);
    assign D[6] = (x)&(y)&(~z);
    assign D[7] = (x)&(y)&(z);

endmodule

```

#### 1.4生成比特流并导入实验板上
