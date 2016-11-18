`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:40:28 11/01/2016 
// Design Name: 
// Module Name:    Control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Control(clk, reset
//    input [8:0] PCAddr,
//	 output [4:0] sAddr,
//	 output [4:0] tAddr,
//	 output [4:0] dAddr,
//	 output [15:0] ImmData,
//	 output ImmCtrl
    );

input clk;
input reset;

wire [31:0] code;//������
wire [4:0] rs;//rs
wire [4:0] rt;//rt
wire [4:0] rd;//rd
wire [5:0] opcode;//opcode
wire [15:0] Imme;//����������ʮ��λ��
wire [5:0] func;//func��
wire [25:0] JImme;//��תָ���imme

wire [8:0] addr;//pc��ַ
wire [31:0] ALUResult;//alu������
wire [31:0] sData;
wire [31:0] tData;
wire [31:0] LImme;//��չ�����������
wire [31:0] parameterT;//�������ͼĴ���ֵѡ��Ľ��
wire [31:0] ramResult;//ram��������
wire [31:0] writeData;//mux2ѡͨ��д��Ĵ���������
wire [31:0] writeAddr;

reg ramCtrl; //ram д�����
reg muxCtrl1;
reg muxCtrl2;
reg muxCtrl3;
reg [2:0] ALUCtrl;//ALU�����ź�
reg regCtrl;//register��д�����ź�
reg pcCtrl;
reg [8:0] newAddr;
reg ImmCtrl;

assign opcode = code[31:26];
assign rs = code[25:21];
assign rt = code[20:16];
assign rd = code[15:11];
assign Imme = code[15:0];
assign func = code[5:0];
assign JImme = code[25:0];

PC pCounter(clk, reset, pcCtrl, newAddr, addr);
rom mem(.a(addr[8:2]), .clk(clk), .spo(code));
Register register(clk, reset, regCtrl, writeAddr[4:0], writeData, rs, rt, sData, tData);
ALU alu(sData, parameterT, ALUResult, ALUCtrl);//todo aluctrl
ImmExtender immExtender(Imme, ImmCtrl, LImme);//��ʵ�鶼�Ƿ�����չ����ctrΪ1
DataSelector MUX1(LImme, tData, muxCtrl1, parameterT);//ѡ������/�Ĵ���ֵ�� 1Ϊ������
Ram ram(.a(ALUResult[7:2]), .d(tData), .clk(!clk), .we(ramCtrl), .spo(ramResult));
DataSelector MUX2(ramResult, ALUResult, muxCtrl2, writeData); //1Ϊram��ֵ 0Ϊaluresult
DataSelector MUX3({27'b0, rt}, {27'b0, rd}, muxCtrl3, writeAddr); //1Ϊrt 0Ϊrd

always @(opcode or func) begin
	case(opcode)
			//andi
		6'b001100:begin
			muxCtrl1 <= 1;
			muxCtrl2 <= 0;
			muxCtrl3 <= 1;
			ALUCtrl <= 3'b011;
			ramCtrl <= 0;
			regCtrl <= 1;
			pcCtrl <= 0;
			ImmCtrl <= 0;
		end
		//lw
		6'b100011:begin
			muxCtrl1 <= 1;
			muxCtrl2 <= 1;
			muxCtrl3 <= 1;
			ALUCtrl <= 3'b001;
			ramCtrl <= 0;
			regCtrl <= 1;
			pcCtrl <= 0;
			ImmCtrl <= 1;
		end
		//addi
		6'b001000:begin
			muxCtrl1 <= 1;
			muxCtrl2 <= 0;
			muxCtrl3 <= 1;
			ALUCtrl <= 3'b001;
			ramCtrl <= 0;
			regCtrl <= 1;
			pcCtrl <= 0;
			ImmCtrl <= 1;
		end
		//sw
		6'b101011:begin
			muxCtrl1 <= 1;
			muxCtrl2 <= 0;
			muxCtrl3 <= 0;
			ALUCtrl <= 3'b001;
			ramCtrl <= 1;
			regCtrl <= 0;
			pcCtrl <= 0;
			ImmCtrl <= 1;
		end
		//j
		6'b000010:begin
			muxCtrl1 <= 0;//x
			muxCtrl2 <= 0;//x
			muxCtrl3 <= 0;//x
			ImmCtrl <= 1;
			ALUCtrl <= 3'b000;
			ramCtrl <= 0;
			regCtrl <= 0;
			pcCtrl <= 1;
			newAddr <= {JImme[8:2], 2'b00};
		end
		//beq
		6'b000100:begin
			muxCtrl1 <= 1;
			muxCtrl2 <= 0;
			muxCtrl3 <= 0;//x
			ImmCtrl <= 1;
			ALUCtrl <= 3'b110;
			ramCtrl <= 0;
			regCtrl <= 0;
			if (ALUResult[0]) begin
				pcCtrl <= 1;
				newAddr <= {Imme[8:2], 2'b00} + addr;
			end
			else begin
				pcCtrl <= 0;
			end
		end
		//r��ָ��
		6'b000000: begin
			muxCtrl1 <= 0;
			muxCtrl2 <= 0;
			ramCtrl <= 0;
			regCtrl <= 1;
			muxCtrl3 <= 0;
			pcCtrl <= 0;
			case(func)
				//add
				6'b100000:begin
					ALUCtrl <= 3'b001;
				end
				//sub
				6'b100010:begin
					ALUCtrl <= 3'b010;
				end
				//and
				6'b100100:begin
					ALUCtrl <= 3'b011;
				end
				//or
				6'b100101:begin
					ALUCtrl <= 3'b100;
				end
				//slt
				6'b101010:begin
					ALUCtrl <= 3'b101;
				end
			endcase
		end

	/*	default: begin
			muxCtrl1 <= 0;
			muxCtrl2 <= 0;
			muxCtrl3 <= 0;
			ImmCtrl <= 1;
			ALUCtrl <= 3'b000;
			ramCtrl <= 0;
			regCtrl <= 0;
			pcCtrl <= 0;
		end*/
	endcase
end

endmodule
