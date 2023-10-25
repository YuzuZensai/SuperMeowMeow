.data
.align 3

.text
.align 2

.global ADD
.global Ran
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
.global RandomGenerateOrder
.global RandomCustomerBlinkTime
.global RandomCustomerResetBasedOnDifficulty
.global RandomCustomerTimeoutBasedOnDifficulty
@ Adds two values
.ADD:
	ADD R0, R0, R1
	BX LR

@ Subtracts one value from another
.SUB:
	SUB R0, R0, R1
	BX LR

@ RandomCustomerResetBasedOnDifficulty
RandomCustomerResetBasedOnDifficulty:
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .RandomCustomerResetBasedOnDifficultyVars2+40
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.RandomCustomerResetBasedOnDifficultyDefault
.RandomCustomerResetBasedOnDifficultyVars:
	.word	.RandomCustomerResetBasedOnDifficultyDefaultEasy
	.word	.RandomCustomerResetBasedOnDifficultyDefaultMedium
	.word	.RandomCustomerResetBasedOnDifficultyDefaultHard
	.word	.RandomCustomerResetBasedOnDifficultyDefaultEasy
	.word	.RandomCustomerResetBasedOnDifficultyDefaultMedium
	.word	.RandomCustomerResetBasedOnDifficultyDefaultHard
.RandomCustomerResetBasedOnDifficultyDefaultEasy:
	vldr.64	d1, .RandomCustomerResetBasedOnDifficultyVars2
	vldr.64	d0, .RandomCustomerResetBasedOnDifficultyVars2+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerResetBasedOnDifficultyReturn
.RandomCustomerResetBasedOnDifficultyDefaultMedium:
	vldr.64	d1, .RandomCustomerResetBasedOnDifficultyVars2+8
	vldr.64	d0, .RandomCustomerResetBasedOnDifficultyVars2+16
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerResetBasedOnDifficultyReturn
.RandomCustomerResetBasedOnDifficultyDefaultHard:
	vldr.64	d1, .RandomCustomerResetBasedOnDifficultyVars2+24
	vldr.64	d0, .RandomCustomerResetBasedOnDifficultyVars2+32
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerResetBasedOnDifficultyReturn
.RandomCustomerResetBasedOnDifficultyDefault:
	vldr.64	d1, .RandomCustomerResetBasedOnDifficultyVars2
	vldr.64	d0, .RandomCustomerResetBasedOnDifficultyVars2+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
.RandomCustomerResetBasedOnDifficultyReturn:
	vmov.f64	d0, d7
	pop	{fp, pc}
.RandomCustomerResetBasedOnDifficultyAlign:
	.align	3
.RandomCustomerResetBasedOnDifficultyVars2:
	.word	0
	.word	1078525952
	.word	0
	.word	1077805056
	.word	0
	.word	1076756480
	.word	0
	.word	1076101120
	.word	0
	.word	1072693248
	.word	options
	.size	RandomCustomerResetBasedOnDifficulty, .-RandomCustomerResetBasedOnDifficulty
	.section	.rodata
	.align	2


@RandomGenerateOrder
RandomGenerateOrder:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomValue
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3]
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.RandomOrderGenerated
	ldr	r1, .FunctionConstants
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.GenerateCP
.RandomOrderGenerated:
	ldr	r1, .FunctionConstants+4
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.GenerateCP:
	ldr	r1, .FunctionConstants+8
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	mov	r1, #100
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	GenerateMA
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.GenerateGP
	ldr	r1, .FunctionConstants+12
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.AddYToOrder
.GenerateGP:
	ldr	r1, .FunctionConstants+16
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.AddYToOrder:
	mov	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	ble	.GenerateCM
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.GenerateCM
	mov	r3, #1
	strb	r3, [fp, #-5]
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.GenerateTeaWithoutCreamer
	ldr	r1, .FunctionConstants+20
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.GenerateCM
.GenerateTeaWithoutCreamer:
	ldr	r1, .FunctionConstants+24
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.GenerateCM:
	ldrb	r3, [fp, #-5]
	cmp	r3, #0
	beq	.CheckForTopping
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	ble	.CheckForTopping
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.CheckForTopping
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.GenerateMI
	ldr	r1, .FunctionConstants+28
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.CheckForTopping
.GenerateMI:
	ldr	r1, .FunctionConstants+32
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.CheckForTopping:
	ldr	r1, [fp, #-16]
	ldr	r0, .FunctionConstants+36
	bl	TextFormat
	mov	r3, r0
	mov	r0, r3
	bl	LogDebug
	b	LogOrder
GenerateMA:
	nop
LogOrder:
	sub	sp, fp, #4
	pop	{fp, pc}
.RandRandomGenerateOrderAlign:
	.align	2
.OrderCP:
	.ascii	"CP\000"
	.align	2
.OrderGP:
	.ascii	"GP\000"
	.align	2
.OrderY:
	.ascii	"Y\000"
	.align	2
.OrderCM:
	.ascii	"CM\000"
	.align	2
.OrderMI:
	.ascii	"MI\000"
	.align	2
.OrderMA:
	.ascii	"MA\000"
	.align	2
.OrderWC:
	.ascii	"WC\000"
	.align	2
.OrderCA:
	.ascii	"CA\000"
	.align	2
.OrderCH:
	.ascii	"CH\000"
	.align	2
.NewOrderDebugString:
	.ascii	"New order: %s\000"
	.text
	.align	2
	.global	RandomGenerateOrder
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomGenerateOrder, %function
.FunctionConstantsAlign:
	.align	2
.FunctionConstants:
	.word	.OrderCP
	.word	.OrderGP
	.word	.OrderY
	.word	.OrderCM
	.word	.OrderMI
	.word	.OrderMA
	.word	.OrderWC
	.word	.OrderCA
	.word	.OrderCH
	.word	.NewOrderDebugString
	.size	RandomGenerateOrder, .-RandomGenerateOrder
	.section	.rodata
	.align	2
StringConstantCPY:
	.ascii	"CPY\000"
	.align	2
StringConstantGPY:
	.ascii	"GPY\000"
	.align	2
StringConstantDebugFormat:
	.ascii	"%s | Blink %s (%.2f) %.2f/%.2f\000"
	.align	2
StringConstantTimeoutFormat:
	.ascii	"Timeout %.2f/%.2f\000"
	.align	2
StringConstantResetFormat:
	.ascii	"Reset %.2f/%.2f\000"
	.align	2
StringConstantVisibleOrderFormat:
	.ascii	"Visible %s | Order %s\000"
	.text
	.align	2
	.global	DrawCustomer
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawCustomer, %function

@ RandomCustomerTimeoutBasedOnDifficulty
RandomCustomerTimeoutBasedOnDifficulty:
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .RandomCustomerTimeoutBasedOnDifficultyVars+40
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	RandomCustomerTimeoutBasedOnDifficultyDefault
.RandomCustomerTimeoutBasedOnDifficultyT:
	.word	RandomCustomerTimeoutBasedOnDifficultyEasy
	.word	.RandomCustomerTimeoutBasedOnDifficultyMedium
	.word	.RandomCustomerTimeoutBasedOnDifficultyHard
	.word	RandomCustomerTimeoutBasedOnDifficultyEasy
	.word	.RandomCustomerTimeoutBasedOnDifficultyMedium
	.word	.RandomCustomerTimeoutBasedOnDifficultyHard
RandomCustomerTimeoutBasedOnDifficultyEasy:
	vldr.64	d1, .RandomCustomerTimeoutBasedOnDifficultyVars
	vldr.64	d0, .RandomCustomerTimeoutBasedOnDifficultyVars+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerTimeoutBasedOnDifficultyExit
.RandomCustomerTimeoutBasedOnDifficultyMedium:
	vldr.64	d1, .RandomCustomerTimeoutBasedOnDifficultyVars+16
	vldr.64	d0, .RandomCustomerTimeoutBasedOnDifficultyVars+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerTimeoutBasedOnDifficultyExit
.RandomCustomerTimeoutBasedOnDifficultyHard:
	vldr.64	d1, .RandomCustomerTimeoutBasedOnDifficultyVars+24
	vldr.64	d0, .RandomCustomerTimeoutBasedOnDifficultyVars+32
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.RandomCustomerTimeoutBasedOnDifficultyExit
RandomCustomerTimeoutBasedOnDifficultyDefault:
	vldr.64	d1, .RandomCustomerTimeoutBasedOnDifficultyVars
	vldr.64	d0, .RandomCustomerTimeoutBasedOnDifficultyVars+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
.RandomCustomerTimeoutBasedOnDifficultyExit:
	vmov.f64	d0, d7
	pop	{fp, pc}
.RandomCustomerTimeoutBasedOnDifficultyAlign:
	.align	3
.RandomCustomerTimeoutBasedOnDifficultyVars:
	.word	0
	.word	1080213504
	.word	0
	.word	1079246848
	.word	0
	.word	1078853632
	.word	0
	.word	1078198272
	.word	0
	.word	1077149696
	.word	options
	.size	RandomCustomerTimeoutBasedOnDifficulty, .-RandomCustomerTimeoutBasedOnDifficulty
	.align	2
	.global	RandomCustomerInitialResetBasedOnDifficulty
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomCustomerInitialResetBasedOnDifficulty, %function

@ RandomCustomerBlinkTime
RandomCustomerBlinkTime:
	PUSH	{FP, LR}
	ADD	FP, SP, #4
	SUB	SP, SP, #8
	STR	R0, [FP, #-8]
	VLDR.64	d1, .RandomCustomerBlinkTimeVars
	VLDR.64	d0, .RandomCustomerBlinkTimeVars+8
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	R3, [FP, #-8]
	VSTR.64	d7, [R3, #24]
	VLDR.64	d1, .RandomCustomerBlinkTimeVars+16
	VLDR.64	d0, .RandomCustomerBlinkTimeVars+24
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	R3, [FP, #-8]
	VSTR.64	d7, [R3, #16]
	NOP
	SUB	SP, FP, #4
	POP	{FP, PC}
.RandomCustomerBlinkTimeVars:
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

@ IsNight
IsNight:
	STR	FP, [SP, #-4]!
	ADD	FP, SP, #0
	LDR	R3, .colorTransitionData+8
	LDR	R3, [R3]
	CMP	R3, #3
	BNE	.checkIfNight
	LDR	R3, .colorTransitionData+12
	VLDR.32	S15, [R3]
	VCVT.f64.f32	d7, S15
	VLDR.64	d6, .colorTransitionData
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	BPL	.checkIfNight
	MOV	R3, #1
	B	.returnIsNight

@ colorTransitionData
.colorTransitionData:
	.word	-1717986918
	.word	1071225241
	.word	currentColorIndex
	.word	colorTransitionTime
	.size	IsNight, .-IsNight
	.section	.rodata
	.align	2

@ checkIfNight
.checkIfNight:
	MOV	R3, #0

@ returnIsNight
.returnIsNight:
	and	R3, R3, #1
	UXTB	R3, R3
	MOV	R0, R3
	ADD	SP, FP, #0
	LDR	FP, [SP], #4
	BX	LR

@ Play Bgm
PlayBgm:
	PUSH	{R4, FP, LR}
	ADD	FP, SP, #8
	SUB	SP, SP, #36
	STR	R0, [FP, #-16]
	LDR	R3, .PlayBgmConstants_Start+4
	LDR	R3, [R3]
	LDR	R2, [FP, #-16]
	CMP	R2, R3
	BNE	.PlayBgmIfStopped_Continue
	LDR	R3, .PlayBgmConstants_Start+8
	LDRB	R3, [R3]
	CMP	R3, #0
	BEQ	.PlayBgmIfStopped_End
	LDR	R3, .PlayBgmConstants_Start+12
	LDR	R3, [R3]
	LDRB	R3, [R3, #22]	
	CMP	R3, #0
	BEQ	.PlayBgmIfStopped_End
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
	LDR	R3, .PlayBgmConstants_Start+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.PlayBgmIfStopped_End

.PlayBgmConstants_Start:
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

.PlayBgmIfStopped_Continue:
	LDR	R2, .PlayBgmConstants_Start+4
	LDR	R3, [FP, #-16]
	STR	R3, [R2]
	LDR	R3, .PlayBgmConstants_Start+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	StopMusicStream
	LDR	R3, .PlayBgmConstants_Start+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	LDR	R3, .PlayBgmConstants_Start+4
	LDR	R4, [R3]
	VLDR.32	S15, .PlayBgmConstants_Start
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
	LDR	R3, .PlayBgmConstants_Start+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.PlayBgmIfStopped_Start
.PlayBgmIfStopped_End:
	NOP
.PlayBgmIfStopped_Start:
	SUB	SP, FP, #8
	POP	{R4, FP, PC}

@ PlayBgmIfStopped
PlayBgmIfStopped:
	PUSH	{R4, FP, LR}
	ADD	FP, SP, #8
	SUB	SP, SP, #36
	STR	R0, [FP, #-16]
	LDR	R3, .CheckBgmStopped+4
	LDR	R3, [R3]
	LDR	R2, [FP, #-16]
	CMP	R2, R3
	BNE	.BgmStoppedHandler
	LDR	R3, .CheckBgmStopped+8
	LDRB	R3, [R3]	
	CMP	R3, #0
	BEQ	.BgmNotStoppedHandler
	LDR	R3, .CheckBgmStopped+12
	LDR	R3, [R3]
	LDRB	R3, [R3, #22]	
	CMP	R3, #0
	BEQ	.BgmNotStoppedHandler
	LDR	R4, [FP, #-16]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	VLDR.32	S15, .CheckBgmStopped
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
	LDR	R3, .CheckBgmStopped+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.BgmNotStoppedHandler
.CheckBgmStopped:
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
.BgmStoppedHandler:
	LDR	R2, .CheckBgmStopped+4
	LDR	R3, [FP, #-16]
	STR	R3, [R2]
	LDR	R3, .CheckBgmStopped+4
	LDR	R4, [R3]
	MOV	LR, SP
	ADD	IP, R4, #16
	LDMIA	IP!, {R0, R1, R2, R3}
	STMIA	LR!, {R0, R1, R2, R3}
	LDR	R3, [IP]
	STR	R3, [LR]
	LDM	R4, {R0, R1, R2, R3}
	BL	PlayMusicStream
	LDR	R3, .CheckBgmStopped+4
	LDR	R4, [R3]
	VLDR.32	S15, .CheckBgmStopped
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
	LDR	R3, .CheckBgmStopped+8
	MOV	R2, #0
	STRB	R2, [R3]
	B	.BgmCleanupAndExit
.BgmNotStoppedHandler:
	NOP
.BgmCleanupAndExit:
	SUB	SP, FP, #8
	POP	{R4, FP, PC}

@ Pause BGM
PauseBgm:
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
	LDRB	R3, [R3]	
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
	POP	{R4, FP, PC}

@ Square the number
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

@ strcat
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

@ Random float
GetRandomDoubleValue:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	vstr.64	d0, [fp, #-36]
	vstr.64	d1, [fp, #-44]
	vldr.64	d6, [fp, #-44]
	vldr.64	d7, [fp, #-36]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-12]
	vldr.64	d5, .GetRandomDoubleValueData
	vldr.64	d6, [fp, #-12]
	vdiv.f64	d7, d5, d6
	vstr.64	d7, [fp, #-20]
	bl	rand
	vmov	s15, r0	@ int
	vcvt.f64.s32	d5, s15
	vldr.64	d6, [fp, #-20]
	vdiv.f64	d7, d5, d6
	vldr.64	d6, [fp, #-36]
	vadd.f64	d7, d6, d7
	vstr.64	d7, [fp, #-28]
	nop
	vmov.f64	d0, d7
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.GetRandomDoubleValueAlign:
	.align	3
.GetRandomDoubleValueData:
	.word	-4194304
	.word	1105199103
	.size	GetRandomDoubleValue, .-GetRandomDoubleValue
	.global	oricupPosition
	.section	.rodata
	.align	2
	.type	oricupPosition, %object
	.size	oricupPosition, 8

@ Random Int
GetRandomIntValue:
        @ Function start
        PUSH    {R7, lr}
        SUB     SP, SP, #24
        add     R7, SP, #0
        STR     R0, [R7, #4]
        STR     R1, [R7]

        @ Initialize some variables
        MOVS    R3, #0
        STR     R3, [R7, #12]
        MOVS    R3, #0
        STR     R3, [R7, #20]
        MOVS    R3, #0
        STR     R3, [R7, #16]

        @ Compare two values
        LDR     R2, [R7, #4]
        LDR     R3, [R7]
        CMP     R2, R3
        bge     .calculateRandomIntSwap

        @ Swap values if needed
        LDR     R3, [R7, #4]
        STR     R3, [R7, #20]
        LDR     R3, [R7]
        ADDS    R3, R3, #1
        STR     R3, [R7, #16]
        B       .calculateRandomInt

.calculateRandomIntSwap:
        @ Adjust values for swapping
        LDR     R3, [R7]
        ADDS    R3, R3, #1
        STR     R3, [R7, #20]
        LDR     R3, [R7, #4]
        STR     R3, [R7, #16]

.calculateRandomInt:
        @ Generate a random integer
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

        @ Function end
        ADDS    R7, R7, #24
        MOV     SP, R7
        POP     {R7, PC}

@ Validiator
validiator:
    PUSH    {FP, LR}
    ADD     FP, SP, #4
    SUB     SP, SP, #8

    @ Save R0 and R1
    STR     R0, [FP, #-8]
    STR     R1, [FP, #-12]

    @ Calculate and copy values
    LDR     R3, [FP, #-8]
    ADD     R3, R3, #34
    MOV     R2, R3

    @ Call LogDebug function
    LDR     R1, [FP, #-12]
    LDR     R0, .LogDebugHandler
    BL      LogDebug

    @ Compare and set values
    LDR     R3, [FP, #-8]
    ADD     R3, R3, #34
    LDR     R1, [FP, #-12]
    MOV     R0, R3
    BL      FTStrcmp
    MOV     R3, R0

    @ Check and branch
    CMP     R3, #0
    BNE     .DebugLogHandlerCheck
    MOV     R3, #1
    B       .DebugLogHandlerEnd

.LogDebugHandler:
    .word   .LogMsgFormat 
    .size   validiator, .-validiator
    .align  2
    .global render_customers
    .syntax unified
    .arm
    .fpu vfp
    .type   render_customers, %function

.DebugLogHandlerCheck:
    MOV     R3, #0
.DebugLogHandlerEnd:
    MOV     R0, R3
    SUB     SP, FP, #4
    POP     {FP, PC}

.LogMsgFormat:
    .ascii  "Validating order: %s against %s\000" 
    .text
    .align  2
    .global validiator
    .syntax unified
    .arm
    .fpu vfp
    .type   validiator, %function

@ Boil water
boilWater:
    PUSH    {FP, LR}      @ Push FP and LR onto the stack
    ADD     FP, SP, #4    @ Set up the frame pointer
    SUB     SP, SP, #8    @ Allocate space for local variables
    STR     R0, [FP, #-8] @ Store the argument in the stack frame

    @ Load a byte from the address stored in R3 and toggle its bits
    LDR     R3, [FP, #-8]
    LDRB    R3, [R3, #20]
    EOR     R3, R3, #1
    UXTB    R3, R3

    @ Compare R3 with 0 and branch to LabelZero if equal
    CMP     R3, #0
    BEQ     .LabelZero

    @ Store 1 in the address pointed by R3
    LDR     R3, .LabelNonZero
    MOV     R2, #1
    STRB    R2, [R3]

    @ Call the GetTime function and store the result in a double-precision float register
    BL      GetTime
    VMOV.f64 d7, d0

    @ Store the result in the address pointed by R3
    LDR     R3, .LabelNonZero+4
    VSTR.64 d7, [R3]

.LabelZero:  @ Label for the branch target when R3 is equal to 0
    @ Clean up the stack frame and return
    SUB     SP, FP, #4
    POP     {FP, PC}

.LabelNonZero:  @ Label for some specific functionality, please specify the actual purpose
    .word   triggerHotWater  @ Define a word with the address of triggerHotWater
    .word   boilingTime     @ Define a word with the address of boilingTime
    .size   boilWater, .-boilWater  @ Calculate the size of the boilWater function

@ strcmp
FTStrcmp:
	@ Save the value of R7 on the stack
	PUSH    {R7}

	@ Allocate 20 bytes of space on the stack for local variables
	SUB     SP, SP, #20
	ADD     R7, SP, #0

	@ Store the value of R0 (parameter 1) at a specific location in memory
	STR     R0, [R7, #4]

	@ Store the value of R1 (parameter 2) at a specific location in memory
	STR     R1, [R7]

	@ Initialize R3 to 0
	MOVS    R3, #0
	STR     R3, [R7, #12]

	@ Branch to the .CmpStart label to begin comparison (not shown in the provided code)
	B       .CmpStart

@strcpy
FTStrcpy:
    @ Initialize stack frame
    PUSH    {R7}
    SUB     SP, SP, #20
    ADD     R7, SP, #0
    STR     R0, [R7, #4]    
    STR     R1, [R7]        
    MOVS    R3, #0          
    STR     R3, [R7, #12]   
    B       .CpyStart       @ Jump to the start of the copy process

.CpyLoop:
    LDR     R3, [R7, #12]   
    LDR     R2, [R7]  

	@ Calculate the destination address with offset      
    ADD     R2, R2, R3
    LDR     R3, [R7, #12]  
    LDR     R1, [R7, #4]   

	@ Calculate the source address with offset
    ADD     R3, R3, R1  

	@ Load a byte from source and store in destination   
    LDRB    R2, [R2]        
    STRB    R2, [R3]
    LDR     R3, [R7, #12]   
    ADDS    R3, R3, #1      
    STR     R3, [R7, #12]   

.CpyStart:
    LDR     R3, [R7, #12]   
    LDR     R2, [R7]        
    ADD     R3, R3, R2      @ Calculate the current destination address
    LDRB    R3, [R3]        @ Load a byte from the current destination

	@ Compare it with null terminator (end of string)
    CMP     R3, #0      
	@ If not the end, continue the copy loop    
    BNE     .CpyLoop       

    LDR     R3, [R7, #12]   
    LDR     R2, [R7, #4]    

	@ Calculate the final source address
    ADD     R3, R3, R2     

	@ Set a null terminator at the end
    MOVS    R2, #0          
    STRB    R2, [R3]
    LDR     R3, [R7, #4]    
    MOV     R0, R3          
    ADDS    R7, R7, #20     
    MOV     SP, R7
    LDR     R7, [SP], #4
    BX      LR    
