.data
.align 3
min: .double 0.0
max: .double 1.0

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

.ADD:
	ADD r0, r0, r1
	BX LR

.SUB:
	SUB r0, r0, r1
	BX LR

.DOUBLE_CONST:
	.word	-4194304
	.word	1105199103
	.size	GetRandomDoubleValue, .-GetRandomDoubleValue
	.align	2
	.global	RandomCustomerBlinkTime
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomCustomerBlinkTime, %function

.global GetRandomDoubleValue
GetRandomDoubleValue:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	SUB	sp, sp, #16
	VSTR.64	d0, [fp, #-12]
	VSTR.64	d1, [fp, #-20]
	BL	rand
	VMOV	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	VLDR.64	d5, .DOUBLE_CONST
	vdiv.f64	d6, d7, d5
	VLDR.64	d5, [fp, #-20]
	VLDR.64	d7, [fp, #-12]
	vsub.f64	d7, d5, d7
	vmul.f64	d6, d6, d7
	VLDR.64	d7, [fp, #-12]
	vadd.f64	d7, d6, d7
	VMOV.f64	d0, d7
	SUB	sp, fp, #4
	@ sp needed
	POP	{fp, pc}

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

.global RandomCustomerBlinkTime
RandomCustomerBlinkTime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	SUB	sp, sp, #8
	STR	r0, [fp, #-8]
	VLDR.64	d1, .L14
	VLDR.64	d0, .L14+8
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	r3, [fp, #-8]
	VSTR.64	d7, [r3, #24]
	VLDR.64	d1, .L14+16
	VLDR.64	d0, .L14+24
	BL	GetRandomDoubleValue
	VMOV.f64	d7, d0
	LDR	r3, [fp, #-8]
	VSTR.64	d7, [r3, #16]
	NOP
	SUB	sp, fp, #4
	@ sp needed
	POP	{fp, pc}

boilWater:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	SUB	sp, sp, #8
	STR	r0, [fp, #-8]
	LDR	r3, [fp, #-8]
	LDRB	r3, [r3, #20]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	CMP	r3, #0
	beq	.L21
	LDR	r3, .L22
	MOV	r2, #1
	STRB	r2, [r3]
	BL	GetTime
	VMOV.f64	d7, d0
	LDR	r3, .L22+4
	VSTR.64	d7, [r3]

.L21:
	NOP
	SUB	sp, fp, #4
	@ sp needed
	POP	{fp, pc}

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
	STR	fp, [sp, #-4]!
	ADD	fp, sp, #0
	LDR	r3, .L207+8
	LDR	r3, [r3]
	CMP	r3, #3
	BNE	.L202
	LDR	r3, .L207+12
	VLDR.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	VLDR.64	d6, .L207
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L202
	MOV	r3, #1
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
	MOV	r3, #0
.L204:
	and	r3, r3, #1
	uxtb	r3, r3
	MOV	r0, r3
	ADD	sp, fp, #0
	@ sp needed
	LDR	fp, [sp], #4
	bx	lr

PlayBgm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{r4, fp, lr}
	ADD	fp, sp, #8
	SUB	sp, sp, #36
	STR	r0, [fp, #-16]
	LDR	r3, .L580+4
	LDR	r3, [r3]
	LDR	r2, [fp, #-16]
	CMP	r2, r3
	BNE	.L576
	LDR	r3, .L580+8
	LDRB	r3, [r3]	@ zero_extendqisi2
	CMP	r3, #0
	beq	.L579
	LDR	r3, .L580+12
	LDR	r3, [r3]
	LDRB	r3, [r3, #22]	@ zero_extendqisi2
	CMP	r3, #0
	beq	.L579
	LDR	r4, [fp, #-16]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	PlayMusicStream
	LDR	r3, [fp, #-16]
	MOV	r2, #1
	STRB	r2, [r3, #24]
	LDR	r3, .L580+8
	MOV	r2, #0
	STRB	r2, [r3]
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
	LDR	r2, .L580+4
	LDR	r3, [fp, #-16]
	STR	r3, [r2]
	LDR	r3, .L580+4
	LDR	r4, [r3]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	StopMusicStream
	LDR	r3, .L580+4
	LDR	r4, [r3]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	PlayMusicStream
	LDR	r3, .L580+4
	LDR	r4, [r3]
	VLDR.32	s15, .L580
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	VMOV.f32	s0, s15
	BL	SetMusicVolume
	LDR	r3, [fp, #-16]
	MOV	r2, #1
	STRB	r2, [r3, #24]
	LDR	r3, .L580+8
	MOV	r2, #0
	STRB	r2, [r3]
	B	.L575
.L579:
	NOP
.L575:
	SUB	sp, fp, #8
	@ sp needed
	POP	{r4, fp, pc}

PlayBgmIfStopped:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{r4, fp, lr}
	ADD	fp, sp, #8
	SUB	sp, sp, #36
	STR	r0, [fp, #-16]
	LDR	r3, .L587+4
	LDR	r3, [r3]
	LDR	r2, [fp, #-16]
	CMP	r2, r3
	BNE	.L583
	LDR	r3, .L587+8
	LDRB	r3, [r3]	@ zero_extendqisi2
	CMP	r3, #0
	beq	.L586
	LDR	r3, .L587+12
	LDR	r3, [r3]
	LDRB	r3, [r3, #22]	@ zero_extendqisi2
	CMP	r3, #0
	beq	.L586
	LDR	r4, [fp, #-16]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	PlayMusicStream
	VLDR.32	s15, .L587
	LDR	r4, [fp, #-16]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	VMOV.f32	s0, s15
	BL	SetMusicVolume
	LDR	r3, [fp, #-16]
	MOV	r2, #1
	STRB	r2, [r3, #24]
	LDR	r3, .L587+8
	MOV	r2, #0
	STRB	r2, [r3]
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
	LDR	r2, .L587+4
	LDR	r3, [fp, #-16]
	STR	r3, [r2]
	LDR	r3, .L587+4
	LDR	r4, [r3]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	PlayMusicStream
	LDR	r3, .L587+4
	LDR	r4, [r3]
	VLDR.32	s15, .L587
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	VMOV.f32	s0, s15
	BL	SetMusicVolume
	LDR	r3, [fp, #-16]
	MOV	r2, #1
	STRB	r2, [r3, #24]
	LDR	r3, .L587+8
	MOV	r2, #0
	STRB	r2, [r3]
	B	.L582
.L586:
	NOP
.L582:
	SUB	sp, fp, #8
	@ sp needed
	POP	{r4, fp, pc}

validiator:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	SUB	sp, sp, #8
	STR	r0, [fp, #-8]
	STR	r1, [fp, #-12]
	LDR	r3, [fp, #-8]
	ADD	r3, r3, #34
	MOV	r2, r3
	LDR	r1, [fp, #-12]
	LDR	r0, .L500
	BL	LogDebug
	LDR	r3, [fp, #-8]
	ADD	r3, r3, #34
	LDR	r1, [fp, #-12]
	MOV	r0, r3
	BL	strcmp
	MOV	r3, r0
	CMP	r3, #0
	BNE	.L498
	MOV	r3, #1
	B	.L499

.L500:
	.word	.LC70
	.size	validiator, .-validiator
	.align	2
	.global	render_customers
	.syntax unified
	.arm
	.fpu vfp
	.type	render_customers, %function
.L498:
	MOV	r3, #0
.L499:
	MOV	r0, r3
	SUB	sp, fp, #4
	@ sp needed
	POP	{fp, pc}

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
	PUSH	{r4, fp, lr}
	ADD	fp, sp, #8
	SUB	sp, sp, #36
	STR	r0, [fp, #-16]
	LDR	r3, .L595
	LDR	r3, [r3]
	LDR	r2, [fp, #-16]
	CMP	r2, r3
	BNE	.L593
	LDR	r3, .L595+4
	LDRB	r3, [r3]	@ zero_extendqisi2
	CMP	r3, #0
	BNE	.L594
	LDR	r4, [fp, #-16]
	MOV	lr, sp
	ADD	ip, r4, #16
	LDMIA	ip!, {r0, r1, r2, r3}
	STMIA	lr!, {r0, r1, r2, r3}
	LDR	r3, [ip]
	STR	r3, [lr]
	LDM	r4, {r0, r1, r2, r3}
	BL	PauseMusicStream
	LDR	r3, .L595+4
	MOV	r2, #1
	STRB	r2, [r3]
	B	.L589

.L595:
	.word	currentBgm
	.word	isCurrentBgmPaused
	.size	PauseBgm, .-PauseBgm
	.align	2
	.global	StopBgm
	.syntax unified
	.arm
	.fpu vfp
	.type	StopBgm, %function

.L593:
	NOP
	B	.L589
.L594:
	NOP
.L589:
	SUB	sp, fp, #8
	@ sp needed
	POP	{r4, fp, pc}

