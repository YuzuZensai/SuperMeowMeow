.data
.align 3

.text
.align 2

.global ADD
.global SUB
.global boilWater
.global IsNight
.global PlayBgm
.global PlayBgmIfStopped
.global validiator
.global PauseBgm
.global FTStrcmp
.global FTStrcat
.global GetRandomIntValue
.global GetRandomDoubleValue

; Add two integers
ADD:
    ADD R0, R0, R1   ; R0 = R0 + R1
    BX LR            ; Return from the function

; Subtract two integers
SUB:
    SUB R0, R0, R1   ; R0 = R0 - R1
    BX LR            ; Return from the function

GetRandomDoubleValue:
    @ Function prologue
    @ Save the frame pointer and link register
    push    {fp, lr}
    add     fp, sp, #4
    sub     sp, sp, #40
    
    vstr.64 d0, [fp, #-36]  @ Store min in memory
    vstr.64 d1, [fp, #-44]  @ Store max in memory
    
    vldr.64 d6, [fp, #-44]  @ Load max into d6
    vldr.64 d7, [fp, #-36]  @ Load min into d7
    
    vsub.f64 d7, d6, d7     @ Calculate range and store in d7
    vstr.64 d7, [fp, #-12]  @ Store range in memory
    
    vldr.64 d5, .RangeFactor @ Load the division factor into d5
    vldr.64 d6, [fp, #-12]  @ Load range from memory into d6
    
    vdiv.f64 d7, d5, d6     @ Calculate division factor and store in d7
    vstr.64 d7, [fp, #-20]  @ Store division factor in memory
    
    bl  rand               @ Call the random number generator function
    vmov s15, r0           @ Move the result to s15
    
    vcvt.f64.s32 d5, s15   @ Convert the random integer to a double in d5
    vldr.64 d6, [fp, #-20]  @ Load division factor from memory into d6
    
    vdiv.f64 d7, d5, d6     @ Calculate the random double in d7
    
    vldr.64 d6, [fp, #-36]  @ Load min from memory into d6
    vadd.f64 d7, d6, d7     @ Add min to the random double and store in d7
    
    vstr.64 d7, [fp, #-28]  @ Store the result in memory
    nop                    @ No operation
    
    vmov.f64 d0, d7         @ Move the result to d0
    sub sp, fp, #4          @ Restore the stack pointer
    pop {fp, pc}            @ Function epilogue

.RangeFactor:
    .word -4194304           @ Division factor constant

.global RandomCustomerBlinkTime
RandomCustomerBlinkTime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{FP, LR}
	ADD	FP, SP, #4
	SUB	SP, SP, #8
	STR	R0, [FP, #-8]
	VLDR.64	d1, .L14
	VLDR.64	d0, .L14+8
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	R3, [FP, #-8]
	VSTR.64	d7, [R3, #24]
	VLDR.64	d1, .L14+16
	VLDR.64	d0, .L14+24
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	R3, [FP, #-8]
	VSTR.64	d7, [R3, #16]
	NOP
	SUB	SP, FP, #4
	@ SP needed
	POP	{FP, PC}
.L14:
	.word	0
	.word	1071644672
	.word	-1717986918
	.word	1070176665
	.word	0
	.word	1075314688
	.word	0
	.word	1073741824
	.size	RandomCustomerBlinkTime, .-RandomCustomerBlinkTime
	.align	2
	.global	CreateCustomer
	.syntax unified
	.arm
	.fpu vfp
	.type	CreateCustomer, %function

boilWater:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{FP, LR}
	ADD	FP, SP, #4
	SUB	SP, SP, #8
	STR	R0, [FP, #-8]
	LDR	R3, [FP, #-8]
	LDRB	R3, [R3, #20]	@ zero_extendqisi2
	EOR	R3, R3, #1
	UXTB	R3, R3
	CMP	R3, #0
	BEQ	.L21
	LDR	R3, .L22
	MOV	R2, #1
	STRB	R2, [R3]
	BL	GetTime
	VMOV.f64	d7, d0
	LDR	R3, .L22+4
	VSTR.64	d7, [R3]

.L21:
	NOP
	SUB	SP, FP, #4
	@ SP needed
	POP	{FP, PC}

.L22:
	.word	triggerHotWater
	.word	boilingTime
	.size	boilWater, .-boilWater
	.section	.rodata
	.align	2

IsNight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	STR	FP, [SP, #-4]!
	ADD	FP, SP, #0
	LDR	R3, .L207+8
	LDR	R3, [R3]
	CMP	R3, #3
	BNE	.L202
	LDR	R3, .L207+12
	VLDR.32	S15, [R3]
	VCVT.f64.f32	d7, S15
	VLDR.64	d6, .L207
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	BPL	.L202
	MOV	R3, #1
	B	.L204

.L207:
	.word	-1717986918
	.word	1071225241
	.word	currentColorIndex
	.word	colorTransitionTime
	.size	IsNight, .-IsNight
	.section	.rodata
	.align	2

.L202:
	MOV	R3, #0
.L204:
	and	R3, R3, #1
	UXTB	R3, R3
	MOV	R0, R3
	ADD	SP, FP, #0
	@ SP needed
	LDR	FP, [SP], #4
	BX	LR

PlayBgm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{R4, FP, LR}
	ADD	FP, SP, #8
	SUB	SP, SP, #36
	STR	R0, [FP, #-16]
	LDR	R3, .L580+4
	LDR	R3, [R3]
	LDR	R2, [FP, #-16]
	CMP	R2, R3
	BNE	.L576
	LDR	R3, .L580+8
	LDRB	R3, [R3]	@ zero_extendqisi2
	CMP	R3, #0
	BEQ	.L579
	LDR	R3, .L580+12
	LDR	R3, [R3]
	LDRB	R3, [R3, #22]	@ zero_extendqisi2
	CMP	R3, #0
	BEQ	.L579
	LDR	R4, [FP, #-16]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	LDR	R3, [FP, #-16]
	MOV	R2, #1
	STRB	R2, [R3, #24]
	LDR	R3, .L580+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.L579

.L580:
	.word	1048576000
	.word	currentBgm
	.word	isCurrentBgmPaused
	.word	options
	.size	PlayBgm, .-PlayBgm
	.align	2
	.global	PlayBgmIfStopped
	.syntax unified
	.arm
	.fpu vfp
	.type	PlayBgmIfStopped, %function

.L576:
	LDR	R2, .L580+4
	LDR	R3, [FP, #-16]
	STR	R3, [R2]
	LDR	R3, .L580+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	StopMusicStream
	LDR	R3, .L580+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	LDR	R3, .L580+4
	LDR	R4, [R3]
	VLDR.32	S15, .L580
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	VMOV.f32	S0, S15
	BL	SetMusicVolume
	LDR	R3, [FP, #-16]
	MOV	R2, #1
	STRB	R2, [R3, #24]
	LDR	R3, .L580+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.L575
.L579:
	NOP
.L575:
	SUB	SP, FP, #8
	@ SP needed
	POP	{R4, FP, PC}

PlayBgmIfStopped:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{R4, FP, LR}
	ADD	FP, SP, #8
	SUB	SP, SP, #36
	STR	R0, [FP, #-16]
	LDR	R3, .L587+4
	LDR	R3, [R3]
	LDR	R2, [FP, #-16]
	CMP	R2, R3
	BNE	.L583
	LDR	R3, .L587+8
	LDRB	R3, [R3]	@ zero_extendqisi2
	CMP	R3, #0
	BEQ	.L586
	LDR	R3, .L587+12
	LDR	R3, [R3]
	LDRB	R3, [R3, #22]	@ zero_extendqisi2
	CMP	R3, #0
	BEQ	.L586
	LDR	R4, [FP, #-16]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	VLDR.32	S15, .L587
	LDR	R4, [FP, #-16]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	VMOV.f32	S0, S15
	BL	SetMusicVolume
	LDR	R3, [FP, #-16]
	MOV	R2, #1
	STRB	R2, [R3, #24]
	LDR	R3, .L587+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.L586
.L587:
	.word	1048576000
	.word	currentBgm
	.word	isCurrentBgmPaused
	.word	options
	.size	PlayBgmIfStopped, .-PlayBgmIfStopped
	.align	2
	.global	PauseBgm
	.syntax unified
	.arm
	.fpu vfp
	.type	PauseBgm, %function
.L583:
	LDR	R2, .L587+4
	LDR	R3, [FP, #-16]
	STR	R3, [R2]
	LDR	R3, .L587+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	LDR	R3, .L587+4
	LDR	R4, [R3]
	VLDR.32	S15, .L587
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	VMOV.f32	S0, S15
	BL	SetMusicVolume
	LDR	R3, [FP, #-16]
	MOV	R2, #1
	STRB	R2, [R3, #24]
	LDR	R3, .L587+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.L582
.L586:
	NOP
.L582:
	SUB	SP, FP, #8
	@ SP needed
	POP	{R4, FP, PC}

validiator:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{FP, LR}
	ADD	FP, SP, #4
	SUB	SP, SP, #8
	STR	R0, [FP, #-8]
	STR	R1, [FP, #-12]
	LDR	R3, [FP, #-8]
	ADD	R3, R3, #34
	MOV	R2, R3
	LDR	R1, [FP, #-12]
	LDR	R0, .LogDebugHandler
	BL	LogDebug
	LDR	R3, [FP, #-8]
	ADD	R3, R3, #34
	LDR	R1, [FP, #-12]
	MOV	R0, R3
	BL	strcmp
	MOV	R3, R0
	CMP	R3, #0
	BNE	.DebugLogHandlerCheck
	MOV	R3, #1
	B	.DebugLogHandlerEnd

.LogDebugHandler:
	.word	.LC70
	.size	validiator, .-validiator
	.align	2
	.global	render_customers
	.syntax unified
	.arm
	.fpu vfp
	.type	render_customers, %function
.DebugLogHandlerCheck:
	MOV	R3, #0
.DebugLogHandlerEnd:
	MOV	R0, R3
	SUB	SP, FP, #4
	@ SP needed
	POP	{FP, PC}

.LC70:
	.ascii	"Validating order: %s against %s\000"
	.text
	.align	2
	.global	validiator
	.syntax unified
	.arm
	.fpu vfp
	.type	validiator, %function

PauseBgm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{R4, FP, LR}
	ADD	FP, SP, #8
	SUB	SP, SP, #36
	STR	R0, [FP, #-16]
	LDR	R3, .PauseBgmHandler
	LDR	R3, [R3]
	LDR	R2, [FP, #-16]
	CMP	R2, R3
	BNE	.PauseBgmCheck
	LDR	R3, .PauseBgmHandler+4
	LDRB	R3, [R3]	@ zero_extendqisi2
	CMP	R3, #0
	BNE	.PauseBgmCheckB
	LDR	R4, [FP, #-16]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PauseMusicStream
	LDR	R3, .PauseBgmHandler+4
	MOV	R2, #1
	STRB	R2, [R3]
	B	.PauseBgmEnd

.PauseBgmHandler:
	.word	currentBgm
	.word	isCurrentBgmPaused
	.size	PauseBgm, .-PauseBgm
	.align	2
	.global	StopBgm
	.syntax unified
	.arm
	.fpu vfp
	.type	StopBgm, %function

.PauseBgmCheck:
	NOP
	B	.PauseBgmEnd
.PauseBgmCheckB:
	NOP
.PauseBgmEnd:
	SUB	SP, FP, #8
	@ SP needed
	POP	{R4, FP, PC}

square:
        PUSH    {R7}
        SUB     SP, SP, #12
        ADD     R7, SP, #0
        STR     R0, [R7, #4]
        LDR     R3, [R7, #4]
        mul     R3, R3, R3
        MOV     R0, R3
        ADDS    R7, R7, #12
        MOV     SP, R7
        LDR     R7, [SP], #4
        BX      LR

FTStrcmp:
        PUSH    {R7}
        SUB     SP, SP, #20
        ADD     R7, SP, #0
        STR     R0, [R7, #4]
        STR     R1, [R7]
        MOVS    R3, #0
        STR     R3, [R7, #12]
        B       .CmpStart
.CmpContinue:
        LDR     R3, [R7, #12]
        ADDS    R3, R3, #1
        STR     R3, [R7, #12]
.CmpStart:
        LDR     R3, [R7, #12]
        LDR     R2, [R7, #4]
        ADD     R3, R3, R2
        LDRB    R2, [R3]        
        LDR     R3, [R7, #12]
        LDR     R1, [R7]
        ADD     R3, R3, R1
        LDRB    R3, [R3]        
        CMP     R2, R3
        BNE     .CmpEnd
        LDR     R3, [R7, #12]
        LDR     R2, [R7, #4]
        ADD     R3, R3, R2
        LDRB    R3, [R3]        
        CMP     R3, #0
        BEQ     .CmpEnd
        LDR     R3, [R7, #12]
        LDR     R2, [R7]
        ADD     R3, R3, R2
        LDRB    R3, [R3]        
        CMP     R3, #0
        BNE     .CmpContinue
.CmpEnd:
        LDR     R3, [R7, #12]
        LDR     R2, [R7, #4]
        ADD     R3, R3, R2
        LDRB    R3, [R3]        
        MOV     R1, R3
        LDR     R3, [R7, #12]
        LDR     R2, [R7]
        ADD     R3, R3, R2
        LDRB    R3, [R3]        
        SUBS    R3, R1, R3
        MOV     R0, R3
        ADDS    R7, R7, #20
        MOV     SP, R7
        LDR     R7, [SP], #4
        BX      LR


FTStrcat:
        PUSH    {R7}
        SUB     SP, SP, #20
        ADD     R7, SP, #0
        STR     R0, [R7, #4]
        STR     R1, [R7]
        MOVS    R3, #0
        STR     R3, [R7, #12]
        B       .CatDecide
.CatContinue:
        LDR     R3, [R7, #12]
        ADDS    R3, R3, #1
        STR     R3, [R7, #12]
.CatDecide:
        LDR     R3, [R7, #12]
        LDR     R2, [R7, #4]
        ADD     R3, R3, R2
        LDRB    R3, [R3]
        CMP     R3, #0
        BNE     .CatContinue
        MOVS    R3, #0
        STR     R3, [R7, #8]
        B       .CatStart
.CatContinue2:
        LDR     R3, [R7, #8]
        LDR     R2, [R7]
        ADD     R2, R2, R3
        LDR     R1, [R7, #12]
        LDR     R3, [R7, #8]
        ADD     R3, R3, R1
        MOV     R1, R3
        LDR     R3, [R7, #4]
        ADD     R3, R3, R1
        LDRB    R2, [R2]
        STRB    R2, [R3]
        LDR     R3, [R7, #8]
        ADDS    R3, R3, #1
        STR     R3, [R7, #8]
.CatStart:
        LDR     R3, [R7, #8]
        LDR     R2, [R7]
        ADD     R3, R3, R2
        LDRB    R3, [R3]
        CMP     R3, #0
        BNE     .CatContinue2
        LDR     R2, [R7, #12]
        LDR     R3, [R7, #8]
        ADD     R3, R3, R2
        MOV     R2, R3
        LDR     R3, [R7, #4]
        ADD     R3, R3, R2
        MOVS    R2, #0
        STRB    R2, [R3]
        LDR     R3, [R7, #4]
        MOV     R0, R3
        ADDS    R7, R7, #20
        MOV     SP, R7
        LDR     R7, [SP], #4
        BX      LR		

FTStrcpy:
        PUSH    {R7}
        SUB     SP, SP, #20
        ADD     R7, SP, #0
        STR     R0, [R7, #4]
        STR     R1, [R7]
        MOVS    R3, #0
        STR     R3, [R7, #12]
        B       .CpyStart
.CpyLoop:
        LDR     R3, [R7, #12]
        LDR     R2, [R7]
        ADD     R2, R2, R3
        LDR     R3, [R7, #12]
        LDR     R1, [R7, #4]
        ADD     R3, R3, R1
        LDRB    R2, [R2]
        STRB    R2, [R3]
        LDR     R3, [R7, #12]
        ADDS    R3, R3, #1
        STR     R3, [R7, #12]
.CpyStart:
        LDR     R3, [R7, #12]
        LDR     R2, [R7]
        ADD     R3, R3, R2
        LDRB    R3, [R3]
        CMP     R3, #0
        BNE     .CpyLoop
        LDR     R3, [R7, #12]
        LDR     R2, [R7, #4]
        ADD     R3, R3, R2
        MOVS    R2, #0
        STRB    R2, [R3]
        LDR     R3, [R7, #4]
        MOV     R0, R3
        ADDS    R7, R7, #20
        MOV     SP, R7
        LDR     R7, [SP], #4
        BX      LR

GetRandomIntValue:
        PUSH    {R7, lr}
        SUB     SP, SP, #24
        add     R7, SP, #0
        STR     R0, [R7, #4]
        STR     R1, [R7]
        MOVS    R3, #0
        STR     R3, [R7, #12]
        MOVS    R3, #0
        STR     R3, [R7, #20]
        MOVS    R3, #0
        STR     R3, [R7, #16]
        LDR     R2, [R7, #4]
        LDR     R3, [R7]
        CMP     R2, R3
        bge     .calculateRandomIntSwap
        LDR     R3, [R7, #4]
        STR     R3, [R7, #20]
        LDR     R3, [R7]
        ADDS    R3, R3, #1
        STR     R3, [R7, #16]
        B       .calculateRandomInt
.calculateRandomIntSwap:
        LDR     R3, [R7]
        ADDS    R3, R3, #1
        STR     R3, [R7, #20]
        LDR     R3, [R7, #4]
        STR     R3, [R7, #16]
.calculateRandomInt:
        BL      rand
        LDR     R2, [R7, #16]
        LDR     R3, [R7, #20]
        SUBS    R3, R2, R3
        MOV     R1, R3
        BL      __aeabi_idivmod
        MOV     R3, R1
        MOV     R2, R3
        LDR     R3, [R7, #20]
        add     R3, R3, R2
        STR     R3, [R7, #12]
        LDR     R3, [R7, #12]
        MOV     R0, R3
        ADDS    R7, R7, #24
        MOV     SP, R7
        POP     {R7, PC}
