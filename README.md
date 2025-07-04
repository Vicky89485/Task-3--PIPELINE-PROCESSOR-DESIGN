# Task-3--PIPELINE-PROCESSOR-DESIGN

company : CODTECH IT SOLUTIONS 
NAME : ARIGELLA VIJAY KUMAR 
Intern ID:CT04DG3476
DOMAIN : VLSI
BATCH DURATION :  June 23rd, 2025 to July 23rd, 2025. 
MENTOR  NAME : Neela Santhosh Kumar 

In this task, I designed and simulated a simple 4-stage pipelined processor using Verilog Hardware Description Language (HDL). The objective was to understand how a pipelined architecture can improve the throughput of a processor and how each instruction flows through different stages of the pipeline. Pipeline design is one of the fundamental concepts in modern processor architectures and is widely used to improve instruction-level parallelism and overall performance.

The processor designed in this task includes four major stages: Fetch (IF), Decode (ID), Execute (EX), and Write Back (WB). During the Fetch stage, instructions are fetched from memory. In the Decode stage, the instruction is decoded to understand what operation needs to be performed and to prepare the necessary operands. The Execute stage performs the actual operation, such as addition, subtraction, or load, and in the final Write Back stage, the result of the execution is written back to the register file or memory.

The processor supports three basic instructions: ADD, SUB, and LOAD. These are identified using the two most significant bits of the instruction input. The ADD instruction performs addition of two registers (regA and regB), SUB performs subtraction of these two registers, and LOAD assigns a new data value from the data_in input. The use of registers regA and regB demonstrates how operands are stored and utilized in a processor.

For implementing this processor, I wrote a Verilog module named PipelineProcessor. This module contains intermediate pipeline registers (IF_ID_instr and ID_EX_instr) that hold instruction values as they flow through the pipeline stages. A separate register EX_WB_result is used to store the output from the Execute stage before it is written back in the Write Back stage. The output result register finally holds the processed data and reflects the final output of each instruction.

A dedicated testbench module (PipelineProcessor_tb) was written to verify the correctness of this processor. The testbench generates a clock signal, applies a reset pulse to initialize the registers and pipeline stages, and then sequentially sends instructions for ADD, SUB, and LOAD operations. Additionally, a data_in value was provided to test the LOAD instruction functionality. The testbench uses `$dumpfile` and `$dumpvars` system tasks to generate waveform data, which can be visualized using waveform viewers like EPWave on EDA Playground.

By observing the waveform, I could verify the correct flow of instructions through the pipeline stages and the correct output results for each instruction. The ADD instruction produced a sum of regA and regB, the SUB instruction produced the difference, and the LOAD instruction loaded the new data value successfully. The waveform also clearly shows the propagation delay of each instruction as it passes through different pipeline stages, which is a critical aspect of pipelined architectures.

This task helped me understand not only how pipelined processors operate but also the importance of intermediate registers in each stage and the timing synchronization required for correct functionality. Through this practical implementation, I strengthened my skills in Verilog design, testbench writing, waveform analysis, and pipeline debugging. This knowledge is fundamental for anyone aiming to work in processor design, VLSI, or digital system architecture.

All the design code, testbench, and simulation screenshots have been organized and stored in my GitHub repository for further review and demonstration. This hands-on experience has given me a solid foundation and confidence to work on more advanced processor architectures and complex pipelined systems in the future.

OUT PUT OF THE TASK 
<img width="1913" height="645" alt="Image" src="https://github.com/user-attachments/assets/94bb46be-3842-4299-8f38-6b08c1dfd4cf" />


