`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RHIT 24-25 Team
// Engineer: Ben McDaniel
// 
// Create Date: 12/16/2024
// Design Name: B3WishboneInterface
// Module Name: B3WishboneInterface
// Project Name: NPU
// Description: Default handler for B3 wb communication, to be used with all
//              modules in userspace.
//////////////////////////////////////////////////////////////////////////////////


module B3WishboneInterface#(
    parameter PERIPHERAL_ADDR_START = 0,
    parameter PERIPHERAL_ADDR_END = 1
)(
    //Management Space WB
    input wb3_clk_i,
    input wb3_rst_i,
    input wbs3_stb_i,
    input wbs3_cyc_i,
    input wbs3_we_i,
    input [3:0] wbs3_sel_i,
    input [31:0] wbs3_dat_i,
    input [31:0] wbs3_adr_i,
    
    output reg wbs3_ack_o, //note, changed to reg from previous def
    output reg [31:0] wbs3_dat_o, //note, changed to reg from previous def
    
    
    //io for perhiperals
    output reg per_write, per_read,
    input wire[31:0] data_from_per,
    output reg[31:0] data_to_per
    
    );
    
    reg[1:0] currentState, nextState;
    parameter IDLE = 2'b00, READ =2'b01, WRITE =2'b10, ERROR = 2'b11;
    wire is_peripheral = (wbs3_adr_i >= PERIPHERAL_ADDR_START && wbs3_adr_i <= PERIPHERAL_ADDR_END);
    
    //State change logic
    always @ (posedge wb3_clk_i) begin
        if(wb3_rst_i) begin
            currentState <= IDLE;
        end else begin
            currentState <= nextState;
        end
    end 
    
    
    //Next state logic
    always @ (*) begin
        case(currentState)
            IDLE: begin
                if(wbs3_stb_i && wbs3_cyc_i && is_peripheral) begin
                    case(wbs3_we_i) 
                        0: nextState <= READ;
                        1: nextState <= WRITE;
                        default: nextState <= IDLE;
                    endcase
                end
            end
            READ: begin
                case(wbs3_ack_o)
                    0: nextState <= READ;
                    1: nextState <= IDLE;
                    default: nextState <= READ;
                endcase
            end
            WRITE: begin
                case(wbs3_ack_o)
                    0: nextState <= WRITE;
                    1: nextState <= IDLE;
                    default: nextState <= WRITE;
                endcase
            end
            ERROR: begin
                nextState <= IDLE;
            end
            default: begin
                nextState <= IDLE;
            end
        endcase 
    end 
    
    
    
    //data interfacing with perhiperal
    always @(currentState) begin
        if (wb3_rst_i) begin
            wbs3_ack_o <= 0;
            wbs3_dat_o <= 32'b0;
            per_write <= 0;
            per_read <= 0;
            data_to_per <= 32'b0;
        end else begin
            case (currentState)
                IDLE: begin
                    wbs3_ack_o <= 0;
                    per_write <= 0;
                    per_read <= 0;
                    data_to_per <= 32'b0;
                end

                READ: begin
                    // Peripheral read operation
                    per_read <= 1;
                    wbs3_ack_o <= 1;
                    wbs3_dat_o <= data_from_per; // Return data from the peripheral
                end

                WRITE: begin
                    // Peripheral write operation
                    per_write <= 1;
                    data_to_per <= wbs3_dat_i;  // Send data to the peripheral
                    wbs3_ack_o <= 1;
                end

                ERROR: begin
                    wbs3_ack_o <= 0;
                    per_write <= 0;
                    per_read <= 0;
                    data_to_per <= 32'b0;
                end

                default: begin
                    wbs3_ack_o <= 0;
                    per_write <= 0;
                    per_read <= 0;
                    data_to_per <= 32'b0;
                end
            endcase
        end
    end
    
endmodule
