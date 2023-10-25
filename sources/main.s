.data
.align 3
min: .double 0.0
max: .double 1.0

.text
.align 2

.global ADD
.global sub
.global boilWater
.global IsNight
.global PlayBgm
.global PlayBgmIfStopped
.global validiator
.global PauseBgm

.ADD:
	ADD r0, r0, r1
	BX LR

.sub:
	sub r0, r0, r1
	BX LR

.L11:
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
	sub	sp, sp, #16
	vstr.64	d0, [fp, #-12]
	vstr.64	d1, [fp, #-20]
	bl	rand
	vmov	s15, r0	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L11
	vdiv.f64	d6, d7, d5
	vldr.64	d5, [fp, #-20]
	vldr.64	d7, [fp, #-12]
	vsub.f64	d7, d5, d7
	vmul.f64	d6, d6, d7
	vldr.64	d7, [fp, #-12]
	vadd.f64	d7, d6, d7
	vmov.f64	d0, d7
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}

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
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	vldr.64	d1, .L14
	vldr.64	d0, .L14+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-8]
	vstr.64	d7, [r3, #24]
	vldr.64	d1, .L14+16
	vldr.64	d0, .L14+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-8]
	vstr.64	d7, [r3, #16]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}

boilWater:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L21
	ldr	r3, .L22
	mov	r2, #1
	strb	r2, [r3]
	bl	GetTime
	vmov.f64	d7, d0
	ldr	r3, .L22+4
	vstr.64	d7, [r3]

.L21:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}

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
	str	fp, [sp, #-4]!
	ADD	fp, sp, #0
	ldr	r3, .L207+8
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L202
	ldr	r3, .L207+12
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L207
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L202
	mov	r3, #1
	b	.L204

.L207:
	.word	-1717986918
	.word	1071225241
	.word	currentColorIndex
	.word	colorTransitionTime
	.size	IsNight, .-IsNight
	.section	.rodata
	.align	2

.L202:
	mov	r3, #0
.L204:
	and	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	ADD	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr

PlayBgm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{r4, fp, lr}
	ADD	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-16]
	ldr	r3, .L580+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L576
	ldr	r3, .L580+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L579
	ldr	r3, .L580+12
	ldr	r3, [r3]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L579
	ldr	r4, [fp, #-16]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	PlayMusicStream
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, .L580+8
	mov	r2, #0
	strb	r2, [r3]
	b	.L579

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
	ldr	r2, .L580+4
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r3, .L580+4
	ldr	r4, [r3]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	StopMusicStream
	ldr	r3, .L580+4
	ldr	r4, [r3]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	PlayMusicStream
	ldr	r3, .L580+4
	ldr	r4, [r3]
	vldr.32	s15, .L580
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	vmov.f32	s0, s15
	bl	SetMusicVolume
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, .L580+8
	mov	r2, #0
	strb	r2, [r3]
	b	.L575
.L579:
	nop
.L575:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}

PlayBgmIfStopped:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{r4, fp, lr}
	ADD	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-16]
	ldr	r3, .L587+4
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L583
	ldr	r3, .L587+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L586
	ldr	r3, .L587+12
	ldr	r3, [r3]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L586
	ldr	r4, [fp, #-16]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	PlayMusicStream
	vldr.32	s15, .L587
	ldr	r4, [fp, #-16]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	vmov.f32	s0, s15
	bl	SetMusicVolume
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, .L587+8
	mov	r2, #0
	strb	r2, [r3]
	b	.L586
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
	ldr	r2, .L587+4
	ldr	r3, [fp, #-16]
	str	r3, [r2]
	ldr	r3, .L587+4
	ldr	r4, [r3]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	PlayMusicStream
	ldr	r3, .L587+4
	ldr	r4, [r3]
	vldr.32	s15, .L587
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	vmov.f32	s0, s15
	bl	SetMusicVolume
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, .L587+8
	mov	r2, #0
	strb	r2, [r3]
	b	.L582
.L586:
	nop
.L582:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}

validiator:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	PUSH	{fp, lr}
	ADD	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ADD	r3, r3, #34
	mov	r2, r3
	ldr	r1, [fp, #-12]
	ldr	r0, .L500
	bl	LogDebug
	ldr	r3, [fp, #-8]
	ADD	r3, r3, #34
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L498
	mov	r3, #1
	b	.L499

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
	mov	r3, #0
.L499:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}

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
	sub	sp, sp, #36
	str	r0, [fp, #-16]
	ldr	r3, .L595
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bne	.L593
	ldr	r3, .L595+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L594
	ldr	r4, [fp, #-16]
	mov	lr, sp
	ADD	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	PauseMusicStream
	ldr	r3, .L595+4
	mov	r2, #1
	strb	r2, [r3]
	b	.L589

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
	nop
	b	.L589
.L594:
	nop
.L589:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}

.global l_strstr
l_strstr:
    push {r4, r5, r6, lr}
    mov r5, r0
    mov r6, r1
loop1:
    ldrb r4, [r5], #1
    cmp r4, #0
    beq not_found
    mov r0, r5
    mov r1, r6
    bl strcmp
    cmp r0, #0
    bne loop1
    pop {r4, r5, r6, pc}
not_found:
    mov r0, #0
    pop {r4, r5, r6, pc}

.global l_strcat
l_strcat:
    push {r4-r7, lr}
    mov r4, r0
loop2:
    ldrb r5, [r4], #1
    cmp r5, #0
    bne loop2
    sub r4, #1
loop3:
    ldrb r5, [r1], #1
    strb r5, [r4], #1
    cmp r5, #0
    bne loop3
    pop {r4-r7, pc}

.global l_strcmp
l_strcmp:
    push {r4-r6, lr}
loop4:
    ldrb r2, [r0], #1
    ldrb r3, [r1], #1
    cmp r2, r3
    bne done
    cmp r2, #0
    bne loop4
done:
    sub r0, r2, r3
    pop {r4-r6, pc}