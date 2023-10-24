.data
    .align 3
min: .double 0.0
max: .double 1.0

.text
    .align 2
    .global GetRandomDoubleValue


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
	push	{fp, lr}
	add	fp, sp, #4
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
	push	{fp, lr}
	add	fp, sp, #4
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

.global boilWater
boilWater:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
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

.global IsNight
IsNight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
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
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr