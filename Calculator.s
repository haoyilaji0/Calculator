.globl main
.globl dojia
.globl dojian
.globl searchagain
.globl searchagain2
.globl jiansearchagain
.globl jiansearchagain2
.globl jialoop
.globl jiajialoop
.globl jiajiajialoop
.globl jianloop
.globl jianjianloop
.globl jianjianjianloop
.globl jia
.globl jian
.globl chuu
.globl chuchuchuloop
.globl chuchuloop
.globl chuloop
.globl dochu
.globl chusearchagain
.globl chusearahagain2
.globl chen
.globl chenchenchenloop
.globl chenchenloop
.globl chenloop
.globl chensearchagain
.globl chensearchagain2
.globl dochen
.globl chen_loop
.globl chen_shift
.globl small
.globl big
.globl meet
.globl divloop
.globl ready
.globl mready
.globl mdivloop
.globl mmeet
.globl mbig
.globl msmall 
.globl whitespace
.globl plus
.globl minus
.globl times
.globl chu
.globl remain
.globl expon
.globl assi
.globl number
.globl loop
.globl null
.globl vv
.globl paradone
.globl ww
.globl xx
.globl yy
.globl check
.globl zz
.globl open
.globl close
.globl mult_10
.globl twice
.globl done
.globl haha
.globl close2
.globl firstv
.globl firstw
.globl firstx
.globl firsty
.globl dokong
.globl kongsearchagain
.globl kong
.globl kongloop
.globl kongkongloop
.globl check1 #aaaa
.globl firstz
.globl dopara
.globl open1
.globl open2
.globl see
.globl msee
.globl open3
.globl close2
.globl close3
.globl close4
.globl doplus
.globl dominus
.globl donecheck5
.globl paraloop
.globl done1
.globl mchuu
.globl mchuchuchuloop
.globl mchuchuloop
.globl mchuloop
.globl mdochu
.globl mchusearchagain
.globl mchusearahagain2












.data
v: .half 3 #memory address at 0x10000000,Variable v
w: .half 15 #0x10000002 Variable w
x: .half 231 #0x10000004 Variable x	 
y: .half 100 #0x10000006 Variable y
z: .half 25  #0x10000008 Variable z
expression: .asciiz"v=3*x-y+17" #0x1000000A creates a null-terminated character string.

.text
main:	lui $t0, 0x1000 #load upper address of rexpression to $t0
 	addi $t0,$t0,10 # add 10 to it,$t0 becomes 0x1000000A #---------t0 is memory address---------------------------
        add $s5,$s5,$sp # stack poiner points before v
loop:   lb $a0, ($t0) #load the value at $t0 to $a0#-------------------a0 is value at memory address
	add $0,$0,$0 #NOP
	xor $t1,$t1,$t1 #clear $t1

	addi $t1, $t1,32 #add ascii code for whitespace#-----------------t1 is ascii for to compare
	beq $a0, $t1,whitespace #branch to whitespace #--------------t1 is clear after every bench
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,43 #add ascii code for plus
	beq $a0, $t1,plus #branch to plus
	or $0,$0,$0 #NOP
        
        xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,40 #add ascii code for (
	beq $a0, $t1,open #branch to plus
	or $0,$0,$0 #NOP
 
        xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,41 #add ascii code for )
	beq $a0, $t1,close #branch to plus
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,45 #add ascii code for minus
	beq $a0, $t1,minus #branch to minus
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,42 #add ascii code for times
	beq $a0, $t1,times #branch to times
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,47 #add ascii code for chu
	beq $a0, $t1,chu #branch to chu
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,37 #add ascii code for remainder
	beq $a0, $t1,remain #branch to remainder
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,94 #add ascii code for expon
	beq $a0, $t1,expon #branch to expon
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,61 #add ascii code for assignment
	beq $a0, $t1,assi #branch to assignment
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,48 #add ascii code for number0
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,49 #add ascii code for number1
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,50 #add ascii code for number2
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,51 #add ascii code for number3
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,52 #add ascii code for number4
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,53 #add ascii code for number5
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,54 #add ascii code for number6
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,55 #add ascii code for number7
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,56 #add ascii code for number8
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,57 #add ascii code for number9
	beq $a0, $t1,number #branch to number
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,118 #add ascii code for v
	beq $a0, $t1,vv #branch to vv
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,119 #add ascii code for w
	beq $a0, $t1,ww #branch to ww
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,120 #add ascii code for x
	beq $a0, $t1,xx #branch to xx
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,121 #add ascii code for y
	beq $a0, $t1,yy #branch to yy
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,122 #add ascii code for z
	beq $a0, $t1,zz #branch to zz
	or $0,$0,$0 #NOP

#	xor $t1,$t1,$t1 #clear $t1
#	beq $a0, $t1,null #branch to null
#	or $0,$0,$0 #NOP
# t1 compare,t0 address $a0 value at memory address t7 check for null compare#----------------------------------

	
plus:	addi $sp,$sp,-4 #allocate space,pre-Push
	xor $t7,$t7,$t7
	addi $t7,$t7, 32767
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7        
	j loop
	or $0,$0,$0 #NOP

minus:	addi $sp,$sp,-4 #allocate space,pre-Push
        xor $t7,$t7,$t7
        addi $t7,$t7, 32766 
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7
	 j loop
	or $0,$0,$0 #NOP

times:	addi $sp,$sp,-4 #allocate space,pre-Push
	xor $t7,$t7,$t7
        addi $t7,$t7, 32765
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7        
	j loop
	or $0,$0,$0 #NOP

chu:	addi $sp,$sp,-4 #allocate space,pre-Push
	xor $t7,$t7,$t7
        addi $t7,$t7, 32764
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7       
	 j loop
	or $0,$0,$0 #NOP

remain: addi $sp,$sp,-4 #allocate space,pre-Push
        xor $t7,$t7,$t7
        addi $t7,$t7, 32763
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7        
	j loop
	or $0,$0,$0 #NOP

expon:	addi $sp,$sp,-4 #allocate space,pre-Push
	xor $t7,$t7,$t7
        addi $t7,$t7, 32762
        sw $t7,($sp)
        sb $t1,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7        
	j loop
	or $0,$0,$0 #NOP

assi:	addi $sp,$sp,-4 #allocate space,pre-Push
        xor $t7,$t7,$t7
        addi $t7,$t7, 32761
        sw $t7,($sp)
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7    
	    j loop
	or $0,$0,$0 #NOP

number: addi $t1,$t1,-48 #restore it to decimal value let's say 2
twice: addi $t0,$t0,1 # increase $t0 by 1 let's say there is a 1
        xor $t7,$t7,$t7 #clear $t2
 	   lb  $t7, 0($t0)
       add $0,$0,$0 #nop
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,48 #add ascii code for number0 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,49 #add ascii code for number1 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,50 #add ascii code for number2 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,51 #add ascii code for number3
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,52 #add ascii code for number4 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,53 #add ascii code for number5 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,54 #add ascii code for number6 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,55 #add ascii code for number7 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,56 #add ascii code for number8 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        xor $t2,$t2,$t2 #clear $t2
        addi $t2, $t2,57 #add ascii code for number9 
        beq $t2, $t7,mult_10 #branch to number
	 or $0,$0,$0 #NOP
        addi $sp, $sp,-4 #no more number then it will store t1
        sb $t1,($sp)
         or $0,$0,$0 #NOP
        beq $t7, $0,null #jump to null
         or $0,$0,$0 #NOP
        j loop
          or $0,$0,$0 #NOP     
vv:	xor $t1,$t1,$t1 #clear $t1
	lui $t4, 0x1000 #load upper address of rexpression to $t4
	addi $sp,$sp,-4 #allocate space,pre-Push
	lh $t1, 0($t4) #load halfword value of v
	add $0, $0, $0 #nop
        sh $t1,($sp)#store value of v on the stack
        add $0, $0, $0#nop
	xor $t1,$t1,$t1 #clear $t1
	xor $t4,$t4,$t4 #clear $t4
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7

	j loop
	or $0,$0,$0 #NOP

ww:	xor $t1,$t1,$t1 #clear $t1
	lui $t4, 0x1000 #load upper address of rexpression to $t4
	addi $t4, $t4, 2 #address of w
	addi $sp,$sp,-4 #allocate space,pre-Push
	lh $t1, 0($t4) #load halfword value of w
	add $0, $0, $0 #nop
        sh $t1,($sp)#store value of w on the stack
        add $0, $0, $0#nop
	xor $t1,$t1,$t1 #clear $t1
 	xor $t4,$t4,$t4 #clear $t4
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7
	j loop
	or $0,$0,$0 #NOP

xx:	xor $t1,$t1,$t1 #clear $t1
	lui $t4, 0x1000 #load upper address of rexpression to $t4
	addi $t4, $t4, 4 #address of w
	addi $sp,$sp,-4 #allocate space,pre-Push
	lh $t1, 0($t4) #load halfword value of x
	add $0, $0, $0 #nop
        sh $t1,($sp)#store value of w on the stack
        add $0, $0, $0#nop
 	xor $t1,$t1,$t1 #clear $t1
	xor $t4,$t4,$t4 #clear $t4
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7
        j loop
	or $0,$0,$0 #NOP

yy:	xor $t1,$t1,$t1 #clear $t1
	lui $t4, 0x1000 #load upper address of rexpression to $t4
	addi $t4, $t4, 6 #address of y
	addi $sp,$sp,-4 #allocate space,pre-Push
	lh $t1, 0($t4) #load halfword value of w
	add $0, $0, $0 #nop
        sh $t1,($sp)#store value of w on the stack
        add $0, $0, $0#nop
 	xor $t1,$t1,$t1 #clear $t1
	xor $t4,$t4,$t4 #clear $t4
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7
	 j loop
	or $0,$0,$0 #NOP

zz:	xor $t1,$t1,$t1 #clear $t1
	lui $t4, 0x1000 #load upper address of rexpression to $t4
	addi $t4, $t4, 8 #address of z
	addi $sp,$sp,-4 #allocate space,pre-Push
	lh $t1, 0($t4) #load halfword value of z
	add $0, $0, $0 #nop
        sh $t1,($sp)#store value of w on the stack
        add $0, $0, $0#nop
	xor $t1,$t1,$t1 #clear $t1
	xor $t4,$t4,$t4 #clear $t4
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
	xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
	or $0,$0,$0 #NOP
	 beq $t7, $0,null #jump to null 
	or $0,$0,$0 #NOP
	xor $t7,$t7,$t7 #clear $t7
	j loop
	or $0,$0,$0 #NOP



whitespace: 	addi $t0,$t0,1 # increase $t0 by 1
		xor $a0,$a0,$a0 #clear $a0
		xor $t7,$t7,$t7#clear t7
		lb $t7, 0($t0)
		or $0,$0,$0 #NOP
	 	beq $t7, $0,null #jump to null 
		or $0,$0,$0 #NOP
		xor $t7,$t7,$t7 #clear $t7
		 j loop
		or $0,$0,$0 #NOP

close: addi $sp,$sp,-4 #allocate space,pre-Push
        xor $t7,$t7,$t7
        addi $t7,$t7, 32759
        sw $t7,($sp)
	or $0,$0,$0 #NOP
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
        xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
        or $0,$0,$0 #NOP
         beq $t7, $0,null #jump to null
        or $0,$0,$0 #NOP
        xor $t7,$t7,$t7 #clear $t7
        j loop
	or $0,$0,$0 #NOP


open: addi $sp,$sp,-4 #allocate space,pre-Push
        xor $t7,$t7,$t7
        addi $t7,$t7, 32760
        sw $t7,($sp)	
	 or $0,$0,$0 #NOP
        addi $t0,$t0,1 # increase $t0 by 1
        xor $a0,$a0,$a0 #clear $a0
        xor $t7,$t7,$t7#clear t7
	lb $t7, 0($t0)
        or $0,$0,$0 #NOP
         beq $t7, $0,null #jump to null
        or $0,$0,$0 #NOP
        xor $t7,$t7,$t7 #clear $t7
        j loop
	or $0,$0,$0 #NOP



#everything is on the stack now, clear all register
# 
#-------------------------------------------------------------------------Done checking string 
null: #  xor $t7,$t7,$t7 #clear $t7 compare null
	xor $t1,$t1,$t1 #clear $t1 ascii to compare with  
 #       xor $t4,$t4,$t4 #clear $t4 variale address
#	xor $a0,$a0,$a0 #clear $a0 value at address
        xor $t0,$t0,$t0 #clear $t0 address usde to check string
#	xor $t2,$t2,$t2 #clear $t2
#	xor $t5,$t5,$t5 #clear $5
#	xor $a1,$a1,$a1 #clear $a1
#	xor $t3,$t3,$t3	#clear $t3
#	xor $s1,$s1,$s1 #clear $s1
#	add $s1,$sp,$s1 #s1 is sp
#	xor $v0,$v0,$v0	#clear $v0
#	xor $a2,$a2,$a2 #clear $a2
	xor $s4,$s4,$s4 #clear $s4
#	xor $t9,$t9,$t9 #everything store in here
	add $s4,$s4,$sp #$s4 is $sp which is in the bottom
	xor $s0,$s0,$s0			#$s4 is equal to sp at first, changed to the address to nearest )
#-------------------------------------------------------------------------------	
#	lw $t0,	0($s4) #Load The Element at the bottom of the Stack
#        or $0,$0,$0 #NOP
#	addi $sp, $sp, 4   # Increment stack pointer by 4
	

	addi $s5,$s5,-8 #$S5 points to equal sign
        add $s0,$s0,$s5
#Now $a0 has the last elment of the stack. which in the case 17,or )
#       addi $sp,$sp,4 #move stack up 4 
#	 xor $t1,$t1,$t1 #clear $t1
#check:  addi $t1, $t1,41 #add ascii code for closing bracket
#        beq $t0, $t1,close2 #branch to closing )
#        or $0,$0,$0 #NOP
#        xor $t1,$t1,$t1 #clear up t1


mchuloop:
lw $t0,($s4) #load the first element of s4
or $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32763 #search for +
or $0,$0,$0
beq $t1,$t0,mchuu #found + bench to x
or $0,$0,$0
addi $s4,$s4,4
bne $s4,$s5,mchuloop
or $0,$0,$0
jal donecheck #restore s4
or $0,$0,$0
chenloop:
lw $t0,($s4) #load the first element of s4
or $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32765 #search for +
or $0,$0,$0
beq $t1,$t0,chen #found + bench to x
or $0,$0,$0
addi $s4,$s4,4
bne $s4,$s5,chenloop
or $0,$0,$0
jal donecheck #restore s4
or $0,$0,$0
chuloop:
lw $t0,($s4) #load the first element of s4
or $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32764 #search for +
or $0,$0,$0
beq $t1,$t0,chuu #found + bench to x
or $0,$0,$0
addi $s4,$s4,4
bne $s4,$s5,chuloop
or $0,$0,$0
jal donecheck #restore s4
or $0,$0,$0
jialoop:
lw $t0,($s5) #load the first element of s4
xor $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32767 #search for +
xor $0,$0,$0
beq $t1,$t0,jia #found + bench to x
xor $0,$0,$0
lw $t0,($s5)
xor $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32766
xor $0,$0,$0
beq $t1,$t0,jian
or$0,$0,$0
addi $s5,$s5,-4
bne $s4,$s5,jialoop
xor $0,$0,$0
jal donechecks5 #restore s4
xor $0,$0,$0 
kongloop: #search for order of operation
lw $t0,($s4)
xor $0,$0,$0
xor $t1,$t1,$t1
addi $t1,$t1,32758 #search for space
xor $0,$0,$0
beq $t1,$t0,kong
xor $0,$0,$0
addi $s4,$s4,4
bne $s4,$s5,kongloop
xor $0,$0,$0
jal donecheck
xor $0,$0,$0
addi$s5,$s5,4
xor $0,$0,$0


kong:
   xor $s7,$s7,$s7
   add $s7,$s7,$s4 #s7 is s4 at first
   addi $s7,$s7,4
kongkongloop:   xor $t0,$t0,$t0
       	xor $t1,$t1,$t1
       	addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,kongsearchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       j dokong
       or $0,$0,$0



dokong: #s8 upper num,s7 loweer num, s4 is *
           xor $t1,$t1,$t1
           xor $t0,$t0,$t0
           xor $t3,$t3,$t3
           lw $t1, ($s7)
           or $0,$0,$0
	   xor $t9,$t9,$t9
           add $t9,$t9,$t1
	   j done
           or $0,$0,$0








kongsearchagain: addi $s7,$s7,4
             j kongkongloop
             or$0,$0,$0













chen: xor $s8,$s8,$s8
   xor $s7,$s7,$s7
   add $s7,$s7,$s4 #s7 is s4 at first
   add $s8,$s8,$s4 #s8 is s4 at first
   addi $s7,$s7,4
   addi $s8,$s8,-4
chenchenloop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,chensearchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,chensearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,chensearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,chensearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,chensearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,chensearchagain
       or $0,$0,$0 #nop
chenchenchenloop:xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s8)
       or$0,$0,$0
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,chensearchagain2
       or $0,$0,$0 #nop

       j dochen
       or $0,$0,$0

chensearchagain: addi $s7,$s7,4
             j jiajialoop
             or$0,$0,$0

chensearchagain2: addi $s8,$s8,-4
              j jiajiajialoop
              or$0,$0,$0


dochen:    xor $t1,$t1,$t1
           xor $t0,$t0,$t0
           xor $t3,$t3,$t3
	   xor $t6,$t6,$t6 #counter
	   addi $t6,$t6,16	
	   xor $t5,$t5,$t5 #test result
	   xor $t4,$t4,$t4	#t4 is the product
           lw $t1, ($s7) #t1 multipiler
           or $0,$0,$0
           lw $t0, ($s8)#t0 multiplicand
           or $0,$0,$0 # load multi routine
chen_loop: andi $t5, $t1, 1         #t5 is one when t1 is one, 
	   beq $t5, 0, chen_shift
	   add $0,$0,$0
	   add $t4, $t4, $t0
chen_shift:
	   sll $t0, $t0, 1
	   srl $t1, $t1, 1
	   addi $t6,$t6,-1	
	   bne $t6, $0, chen_loop
	   or $0,$0,$0
           sw $t4, ($s4)
           or $0,$0,$0
           xor $t0,$t0,$t0
           addi $t0,$t0,32758
           sw $t0, ($s7)
           or $0,$0,$0
           sw $t0, ($s8)
           or $0,$0,$0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
           j chenloop
           or $0,$0,$0


chuu: xor $s8,$s8,$s8
   xor $s7,$s7,$s7
   add $s7,$s7,$s4 #s7 is s4 at first
   add $s8,$s8,$s4 #s8 is s4 at first
   addi $s7,$s7,4
   addi $s8,$s8,-4
chuchuloop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,chusearchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,chusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,chusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,chusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,chusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,chusearchagain
       or $0,$0,$0 #nop
chuchuchuloop:xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s8)
       or$0,$0,$0
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,chusearchagain2
       or $0,$0,$0 #nop

       j dochu
       or $0,$0,$0

chusearchagain: addi $s7,$s7,4
             j chuchuloop
             or$0,$0,$0

chusearchagain2: addi $s8,$s8,-4
              j chuchuchuloop
              or$0,$0,$0

dochu:	   


	   xor $t1,$t1,$t1 #t1 is Dividend
           xor $t0,$t0,$t0 #t0 is Divisor
           xor $t3,$t3,$t3 #t3 is zero
	   xor $t8,$t8,$t8 #counter start at 0
	   xor $t7,$t7,$t7 #t7 is remainder
           xor $t6,$t6,$t6 #t6 is counter,later become 17
           xor $t4,$t4,$t4 #t4 is quotient
           lw $t1, ($s7)   #t1 is dividend loaded from s7
           or $0,$0,$0     #nop
           lw $t0, ($s8)   #t0 divisor loaded from s8
	   or $0,$0,$0     #nop
	   add $t7,$t7,$t1
	   or $0,$0,$0
           or $0,$0,$0
check1:    or $0,$0,$0
           or $0,$0,$0  
	   j ready
	   or $0,$0,$0       	   













ready:	sll $t0,$t0,16         ##shift left 16bits divisor
	addi $t6,$t6,17 #couter maybe 16
divloop:sub $t7,$t7,$t0 #substract divisor from remainder t2= t2-a2
	bgez $t7, big #jump to label big if t2 >=0  Branch on greater than or equal to zero jump to Laber big	
	or $0,$0,$0 #NOP
	j small  # otherwise jump to big (If –else)
    	or $0,$0,$0 #NOP








big: 	sll $t4, $t4, 1 #shift logical(Quotient reg v1) left by 1
	addi $t4,$t4, 1 #add 1 to rightmost bit
	j meet #meet at the end 
	or $0,$0,$0







small: add $t7, $t7, $t0 # t2 = t2+ a2 restore the orignal value of remainder
	sll $t4 $t4, 1 #Shift Quotient reg(v1) Logically Left by 1
	j meet		#return back to routine
	or $0, $0,$0 #NOP




meet:   srl $t0, $t0, 1		#shift divisor to the right for 1 bit,End of process
	addi $t8, $t8, 1		#counter
	bne $t8,$t6, divloop		# if t8>0, go to loop t8 is 17 initially loop 16time
	or $0,$0,$0 #Nop
	sw $t4, ($s4)
           or $0,$0,$0
           xor $t0,$t0,$t0
           addi $t0,$t0,32758
           sw $t0, ($s7)
           or $0,$0,$0
           sw $t0, ($s8)
           or $0,$0,$0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
           j chuloop
           or $0,$0,$0



        
jia: xor $s8,$s8,$s8
   xor $s7,$s7,$s7
   add $s7,$s7,$s5 #s7 is s4 at first
   add $s8,$s8,$s5 #s8 is s4 at first
   addi $s7,$s7,4
   addi $s8,$s8,-4
jiajialoop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,searchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,searchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,searchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,searchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,searchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,searchagain
       or $0,$0,$0 #nop
jiajiajialoop:xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space 
       lw $t0,($s8)
       or$0,$0,$0
       beq $t1,$t0,searchagain2
       or $0,$0,$0
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,searchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,searchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,searchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,searchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,searchagain2
       or $0,$0,$0 #nop
       
       j dojia
       or $0,$0,$0

searchagain: addi $s7,$s7,4
             j jiajialoop
             or$0,$0,$0

searchagain2: addi $s8,$s8,-4
              j jiajiajialoop
              or$0,$0,$0


dojia: #s8 upper num,s7 loweer num, s4 is *
           xor $t1,$t1,$t1
           xor $t0,$t0,$t0
           xor $t3,$t3,$t3
           lw $t1, ($s7)
           or $0,$0,$0
           lw $t0, ($s8)
           or $0,$0,$0
           add $t3,$t1,$t0
           sw $t3, ($s5)
           or $0,$0,$0
           xor $t0,$t0,$t0
           addi $t0,$t0,32758
           sw $t0, ($s7)
           or $0,$0,$0
           sw $t0, ($s8)
           or $0,$0,$0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
           j jialoop
           or $0,$0,$0


jian: xor $s8,$s8,$s8
   xor $s7,$s7,$s7
   add $s7,$s7,$s5 #s7 is s4 at first
   add $s8,$s8,$s5 #s8 is s4 at first
jianjianloop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,jiansearchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,jiansearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,jiansearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,jiansearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,jiansearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,jiansearchagain
       or $0,$0,$0 #nop
jianjianjianloop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space 
       lw $t0,($s8)
       or$0,$0,$0
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,jiansearchagain2
       or $0,$0,$0 #nop
       
       j dojian
       or $0,$0,$0

jiansearchagain: addi $s7,$s7,4
             j jianjianloop
             or$0,$0,$0

jiansearchagain2: addi $s8,$s8,-4
              j jianjianloop
              or$0,$0,$0


dojian: #s8 upper num,s7 loweer num, s4 is *
           xor $t1,$t1,$t1
           xor $t0,$t0,$t0
           xor $t3,$t3,$t3
           lw $t1, ($s7)
           or $0,$0,$0
           lw $t0, ($s8)
           or $0,$0,$0
           sub $t3,$t1,$t0
           sw $t3, ($s5)
           or $0,$0,$0
           xor $t0,$t0,$t0
           addi $t0,$t0,32758
           sw $t0, ($s7)
           or $0,$0,$0
           sw $t0, ($s8)
           or $0,$0,$0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
           j jialoop
           or $0,$0,$0

donecheck: xor $s4,$s4,$s4
           add $s4,$s4,$sp
	   xor $s8,$s8,$s8
	   xor $s7,$s7,$s7
	   add $s8,$s8,$s4
	   add  $s7,$s7,$s4
           addi $s7,$s7,4
	   addi $s8,$s8,-4
           jr $ra
           or $0,$0,$0


donechecks5: xor $s5,$s5,$s5
           add $s5,$s5,$s0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
	   xor $s4,$s4,$s4
	   add $s4,$s4,$sp
           add $s8,$s8,$s4
           add  $s7,$s7,$s4
           addi $s7,$s7,4
           addi $s8,$s8,-4
           jr $ra
           or $0,$0,$0










        xor $t1,$t1,$t1 #clear $t1
        addi $t1, $t1,43 #add ascii code for plus
        beq $a0, $t1,plus2 #branch to plus
        or $0,$0,$0 #NOP

        xor $t1,$t1,$t1 #clear $t1
        addi $t1, $t1,45 #add ascii code for minus
        beq $a0, $t1,minus2 #branch to minus
        or $0,$0,$0 #NOP


        j number3
        or $0,$0,$0

number3: add $s4,$s4,4
         lw $t0, 0($s4) #Load The Element at the bottom of the Stack
         or $0,$0,$0 #NOP
         
        xor $t1,$t1,$t1 #clear $t1
        addi $t1, $t1,43 #add ascii code for plus
        beq $a0, $t1,plus2 #branch to plus
        or $0,$0,$0 #NOP

        xor $t1,$t1,$t1 #clear $t1
        addi $t1, $t1,45 #add ascii code for minus
        beq $a0, $t1,minus2 #branch to minus
        or $0,$0,$0 #NOP


#plus2: $s4




















	xor $t1,$t1,$t1 #clear $t1
	addi $sp,$sp,4 #next element in the stack
	lh $t2,($sp) #load the next element in the stack	or $0,$0,$0 #NOP
	addi $t1,$t1,61 #ascii code for = 
	beq $t2,$t1,done #we reach to equal sign
	or$0,$0,$0 #nop















	xor $t1,$t1,$t1 #clear $t1
        addi $t1, $t1,43 #add ascii code for number
        beq $a0, $t1,plus2 #branch to plus
        or $0,$0,$0 #NOP

	





	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,43 #add ascii code for plus
	beq $a0, $t1,plus2 #branch to plus
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,45 #add ascii code for minus
	beq $a0, $t1,minus2 #branch to minus
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,42 #add ascii code for times
	beq $a0, $t1,times2 #branch to times
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,47 #add ascii code for chu
	beq $a0, $t1,chu2 #branch to chu
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,37 #add ascii code for remainder
	beq $a0, $t1,remain2 #branch to remainder
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,94 #add ascii code for expon
	beq $a0, $t1,expon2 #branch to expon
	or $0,$0,$0 #NOP
	
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,61 #add ascii code for assignment
	beq $a0, $t1,assi2 #branch to assignment
	or $0,$0,$0 #NOP
#-------------------------------------------------------------------------------------------------above is just operator
	xor $t1,$t1,$t1 #clear $t1
	addi $t1, $t1,0 #add ascii code for number0
	beq $a0, $t1,number2 #branch to number
	or $0,$0,$0 #NOP

	xor $t1,$t1,$t1 #clear $t1
#----------------------------------------------------------------------------------------------variables
mult_10:
 addi $t2,$t2,-48 #restore it to decimal value let's say 2
 sll $t3,$t1 ,3   #mult by 8
 sll $t5,$t1,1 #mult 2
 add $t1,$t5,$t3 #mult 10
 add $t1,$t2,$t1
 xor $t2,$t2,$t2
 j twice  #repalced with branch
 or $0,$0,$0 #NOP

done:   xor $t2,$t2,$t2 #clear t2  #we hit equal sign
	xor $t6,$t6,$t6
	xor $t8,$t8,$t8 #address at v
 #	add $t9,$a0,$t9 #a0 is number and t9 is result
	xor $t5,$t5,$t5

#	addi $sp,$sp,4 #first element
	lui $t6, 0x1000 #load upper address of rexpression to $t0
        addi $t6,$t6,10 # add 10 to it,$t0 becomes 0x1000000A #---------t0 is memory address---------------------------
	lui $t8,0x1000 #load v in t8

done1:	xor $t3,$t3,$t3 #clear $t1
        xor $t5,$t5,$t5
        addi $t3, $t3,118 #add ascii code for v
        lb $t5,($t6) #load v
        or $0,$0,$0 #nop
        beq $t5, $t3,firstv #branch to vv
        or $0,$0,$0 #NOP

	xor $t5,$t5,$t5 #clear t5
        xor $t3,$t3,$t3 #clear $t1
        addi $t3, $t3,119 #add ascii code for w
        lb $t5,($t6) #load v
        or $0,$0,$0 #nop
	beq $t5, $t3,firstw #branch to ww
        or $0,$0,$0 #NOP
		
	xor $t5,$t5,$t5 #clear t5
        xor $t3,$t3,$t3 #clear $t1
        addi $t3, $t3,120 #add ascii code for x
	lb $t5,($t6) #load v
        or $0,$0,$0 #nop
	beq $t5, $t3,firstx #branch to xx
        or $0,$0,$0 #NOP

	xor $t5,$t5,$t5 #clear t5
        xor $t3,$t3,$t3 #clear $t1
        addi $t3, $t3,121 #add ascii code for y
	lb $t5,($t6) #load v
        or $0,$0,$0 #nop
        beq $t5, $t3,firsty #branch to yy
        or $0,$0,$0 #NOP
	
	xor $t5,$t5,$t5 #clear t5
        xor $t3,$t3,$t3 #clear $t1
        addi $t3, $t3,122 #add ascii code for z
	lb $t5,($t6) #load v
        or $0,$0,$0 #nop
        beq $t5, $t3,firstz #branch to zz
        or $0,$0,$0 #NOP
	addi $t6,$t6,1
	j done1 #skip untill we find vwxyz
	or $0,$0,$0





firstv: 
	sh $t9, ($t8) #store everything in v
	or $0,$0,$0
	xor $t7,$t7,$t7
	j haha
	or$0,$0,$0

firstw: xor $t7,$t7,$t7
	sh $t9, 2($t8) #store everything in w
        or $0,$0,$0
	j haha
        or$0,$0,$0


firstx: sh $t9, 4($t8) #store everything in x
        or $0,$0,$0
	j haha
        or$0,$0,$0

	
firsty: sh $t9, 6($t8) #store everything in y
        or $0,$0,$0
	j haha
        or$0,$0,$0


firstz: sh $t9, 8($t8) #store everything in z
        or $0,$0,$0
	j haha
        or$0,$0,$0

haha: or $0,$0,$0
       or $0,$0,$0
		or $0,$0,$0
		or $0,$0,$0
		or $0,$0,$0

close3:  addi $s4,$s4,4 #add 4 to s4 = stack pointer
	 xor $t4,$t4,$t4 #clear t4
	 xor $t5,$t5,$t5 #clear t5
	 addi $t4,$t4,41 #ascii for closing
	 lw $t5,($s4)	
	 or $0,$0,$0 #nop 
	 beq $t4,$t5,close4
	 or$0,$0,$0
	 j close2  #$s4 holds the closing bracket near =
	 or $0,$0,$0

close2:  #add $s6,$sp,$s6 #store the ) we have seen  at s6
	# addi $s5,$s5,-8
	 bne $s4,$s5,close3 #s5 +4 point v,+8 point =
	 or $0,$0,$0 #nop
#	 xor $s7,$s7,$s7 #clear t7
see:     add $s7,$s7,$s5 #$s7 holds the TOP address of $sp which is the bottom of the stack
	 j open1      #!!!!!! $s6 closest to = ),$sp at bot,8($s5) is =    
	 or $0,$0,$0#nop



close4: xor $s6,$s6,$s6
	add $s6,$s4,$s6 #update s6 untill we reach = ,s6 is the closest )  to equal 
	j close2
	or $0,$0,$0 #nop


open2:  addi$s7,$s7,-4 #MINUS 4 to $s7 is stack poiter
	xor $t4,$t4,$t4
	xor $t5,$t5,$t5
	addi $t4, $t4,40 #add ascii code for open
        lh $t5,($s7) #load the byte at address s7
        or $0,$0,$0 #nop
        beq $t4,$t5,open3
        or$0,$0,$0#nop
        j open1
        or $0,$0,$0#nop


open1:  #	add $s7,$sp,$sp #$s7 holds the address of $sp which is the bottom of the stack
       xor $t2,$t2,$t2
       addi $t2,$t2,32
        #xor $s5,$s5,$s5
       sw $t2, ($s6) #store garbage
        or $0,$0,$0
	bne $s7,$s6,open2 
	or$0,$0,$0
	j dopara # $s2 has the closest open, and $s4 has the cloeset closing. 
	or $0,$0,$0 #nop


open3: xor $s2,$s2,$s2
	add $s2,$s2,$s7 #$s2 is the closested ( open to equal
	j open1
	or $0,$0,$0

dopara:#$s6 closing para, $s2 open para,$t7 is s6
       xor $t7,$t7,$t7
       add $t7,$t7,$s6 
       xor $a0,$a0,$a0
       lw $a0,($t7)          
       xor $t1,$t1,$t1 #clear $t1
          #add $a0, $a0, $s2 #a0 =$s2
paraloop:	#xor $t1,$t1,$t1 #clear $t1
	#addi $t1, $t1,94 #add ascii code for expon
	#beq $a0, $t1,expon #branch to expon
	#or $0,$0,$0 #NOP

	

	

	#xor $t1,$t1,$t1 #clear $t1
	#addi $t1, $t1,42 #add ascii code for times
	#beq $a0, $t1,times #branch to times
	#or $0,$0,$0 #NOP

	#xor $t1,$t1,$t1 #clear $t1
	#addi $t1, $t1,47 #add ascii code for chu
	#beq $a0, $t1,chu #branch to chu
	#or $0,$0,$0 #NOP

	#xor $t1,$t1,$t1 #clear $t1
	#addi $t1, $t1,37 #add ascii code for remainder
	#beq $a0, $t1,remain #branch to remainder
	#or $0,$0,$0 #NOP


       xor $t1,$t1,$t1 #clear $t1
       addi $t1, $t1,43 #add ascii code for plus
	beq $a0, $t1,doplus #branch to plus
	or $0,$0,$0 #NOP
            
        xor $t1,$t1,$t1 #clear $t1
       addi $t1, $t1,45 #add ascii code for plus
        beq $a0, $t1,dominus #branch to plus
        or $0,$0,$0 #NOP

      
       addi $t7,$t7,4
       bne $t7,$s2,paraloop
       or $0,$0,$0
       j paradone
       or $0,$0,$0

doplus: 
       xor $t2,$t2,$t2
       addi $t2,$t2,32
        xor $t1,$t1,$t1
        xor $t3,$t3,$t3
        lw $t1,4($t7)
        or $0,$0,$0
        lw $t2,-4($t7)
        or $0,$0,$0
        add $t3,$t2,$t1
        xor $t2,$t2,$t2
        addi $t2,$t2,32
        sw $t3 ,($t7) #store the value
        or $0,$0,$0
        sw $t2, -4($t7) #store garbage	
        or $0,$0,$0
        sw $t2, 4($t7) #store garbage
        or $0,$0,$0
        xor $t7,$t7,$t7 
        j dopara
        or $0,$0,$0

dominus:
        xor $t2,$t2,$t2
        addi $t2,$t2,32
        xor $t1,$t1,$t1
        xor $t3,$t3,$t3
        lw $t1,4($t7)
        or $0,$0,$0
        lw $t2,-4($t7)
        or $0,$0,$0
        sub $t3,$t1,$t2
        xor $t2,$t2,$t2
        addi $t2,$t2,32
        sw $t3 ,($t7) #store the value
        or $0,$0,$0
        sw $t2, -4($t7) #store garbage
        or $0,$0,$0
        sw $t2, 4($t7) #store garbage
        or $0,$0,$0
        xor $t7,$t7,$t7
        j dopara
        or $0,$0,$0
paradone: addi $t2,$t2,32
        sw $t2 ,($s2) #store the value
        or $0,$0,$0
        sw $t2, ($s6) #store garbage
        or $0,$0,$0
        j null
        or $0,$0,$0






#-

mchuu: xor $s8,$s8,$s8
   xor $s7,$s7,$s7
   add $s7,$s7,$s4 #s7 is s4 at first
   add $s8,$s8,$s4 #s8 is s4 at first
   addi $s7,$s7,4
   addi $s8,$s8,-4
mchuchuloop: xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s7)
       or$0,$0,$0
       beq $t1,$t0,mchusearchagain #search untill we found a number skip anyother
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,mchusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,mchusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,mchusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,mchusearchagain
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,mchusearchagain
       or $0,$0,$0 #nop
mchuchuchuloop:xor $t0,$t0,$t0
       xor $t1,$t1,$t1
       addi $t1,$t1,32758 #space
       lw $t0,($s8)
       or$0,$0,$0
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0
       xor $t1,$t1,$t1
       addi $t1,$t1,32767 #plus
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32766 #-
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32765 #*
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32764 #/
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0 #nop
       xor $t1,$t1,$t1
       addi $t1,$t1,32763 #%
       beq $t1,$t0,mchusearchagain2
       or $0,$0,$0 #nop

       j mdochu
       or $0,$0,$0

mchusearchagain: addi $s7,$s7,4
             j mchuchuloop
             or$0,$0,$0

mchusearchagain2: addi $s8,$s8,-4
              j mchuchuchuloop
              or$0,$0,$0

mdochu:	   


	   xor $t1,$t1,$t1 #t1 is Dividend
           xor $t0,$t0,$t0 #t0 is Divisor
           xor $t3,$t3,$t3 #t3 is zero
	   xor $t8,$t8,$t8 #counter start at 0
	   xor $t7,$t7,$t7 #t7 is remainder
           xor $t6,$t6,$t6 #t6 is counter,later become 17
           xor $t4,$t4,$t4 #t4 is quotient
           lw $t1, ($s7)   #t1 is dividend loaded from s7
           or $0,$0,$0     #nop
           lw $t0, ($s8)   #t0 divisor loaded from s8
	   or $0,$0,$0     #nop
	   add $t7,$t7,$t1
	   or $0,$0,$0
           or $0,$0,$0
	   or $0,$0,$0
           or $0,$0,$0  
	   j mready
	   or $0,$0,$0       	   













mready:	sll $t0,$t0,16         ##shift left 16bits divisor
	addi $t6,$t6,17 #couter maybe 16
mdivloop:sub $t7,$t7,$t0 #substract divisor from remainder t2= t2-a2
	bgez $t7, mbig #jump to label big if t2 >=0  Branch on greater than or equal to zero jump to Laber big	
	or $0,$0,$0 #NOP
	j msmall  # otherwise jump to big (If –else)
    	or $0,$0,$0 #NOP








mbig: 	sll $t4, $t4, 1 #shift logical(Quotient reg v1) left by 1
	addi $t4,$t4, 1 #add 1 to rightmost bit
	j mmeet #meet at the end 
	or $0,$0,$0







msmall: add $t7, $t7, $t0 # t2 = t2+ a2 restore the orignal value of remainder
	sll $t4 $t4, 1 #Shift Quotient reg(v1) Logically Left by 1
	j mmeet		#return back to routine
	or $0, $0,$0 #NOP




mmeet:   srl $t0, $t0, 1		#shift divisor to the right for 1 bit,End of process
	addi $t8, $t8, 1		#counter
	bne $t8,$t6, mdivloop		# if t8>0, go to loop t8 is 17 initially loop 16time
	or $0,$0,$0 #Nop
	sw $t7, ($s4)
           or $0,$0,$0
           xor $t0,$t0,$t0
           addi $t0,$t0,32758
           sw $t0, ($s7)
           or $0,$0,$0
           sw $t0, ($s8)
           or $0,$0,$0
           xor $s8,$s8,$s8
           xor $s7,$s7,$s7
           j mchuloop
           or $0,$0,$0




	
































