.global _start
_start:
    MOV R0, #35
    MOV R1, #14
    MOV R5, #15

    CMP R0, R1  //campare the value in R0 to the value in R1(SUBS R0,R1 without the result )
    BGT greater //if R0 > R1, branch to the label 'greater'
    BLT lesser  //If R0 < R1 , branch to the label 'lesser'
    BEQ equaler  //If R0 = R1 , branch to the label 'equaler'


greater:
    LSL R5, #2 //Logical shift left the value in R5 x2 -> Equivalent to multiplying by 2^2

    //Sequence to terminate the program
    MOV R0, R5 //Indicates this program executed successfully
    MOV R7, #1
    SWI 0

lesser:
    LSR R5, #1 //Logical shift right the value in R5 -> Equivalent to multiplying by 2^1

        //Sequence to terminate the program
    MOV R0, R5 //Indicates this program executed successfully
    MOV R7, #1
    SWI 0

equaler:
    ROR R5, #2 //Perform a right rotation on R5

            //Sequence to terminate the program
    MOV R0, R5 //Indicates this program executed successfully
    MOV R7, #1
    SWI 0
    