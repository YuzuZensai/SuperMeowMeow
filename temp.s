	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.global	baseX
	.section	.rodata
	.align	2
	.type	baseX, %object
	.size	baseX, 4
baseX:
	.word	-999292928
	.global	baseY
	.align	2
	.type	baseY, %object
	.size	baseY, 4
baseY:
	.word	-1006174208
	.global	targetAspectRatio
	.align	2
	.type	targetAspectRatio, %object
	.size	targetAspectRatio, 4
targetAspectRatio:
	.word	1071877689
	.global	targetFps
	.align	2
	.type	targetFps, %object
	.size	targetFps, 4
targetFps:
	.word	300
	.global	bgmVolume
	.align	2
	.type	bgmVolume, %object
	.size	bgmVolume, 4
bgmVolume:
	.word	1048576000
	.global	gameDuration
	.align	2
	.type	gameDuration, %object
	.size	gameDuration, 4
gameDuration:
	.word	1123024896
	.global	DebugFpsHistory
	.bss
	.align	2
	.type	DebugFpsHistory, %object
	.size	DebugFpsHistory, 2000
DebugFpsHistory:
	.space	2000
	.global	DebugFpsHistoryIndex
	.align	2
	.type	DebugFpsHistoryIndex, %object
	.size	DebugFpsHistoryIndex, 4
DebugFpsHistoryIndex:
	.space	4
	.global	DebugFrameTimeHistory
	.align	2
	.type	DebugFrameTimeHistory, %object
	.size	DebugFrameTimeHistory, 2000
DebugFrameTimeHistory:
	.space	2000
	.global	DebugFrameTimeHistoryIndex
	.align	2
	.type	DebugFrameTimeHistoryIndex, %object
	.size	DebugFrameTimeHistoryIndex, 4
DebugFrameTimeHistoryIndex:
	.space	4
	.global	DebugLogs
	.align	2
	.type	DebugLogs, %object
	.size	DebugLogs, 200
DebugLogs:
	.space	200
	.global	DebugLogsIndex
	.align	2
	.type	DebugLogsIndex, %object
	.size	DebugLogsIndex, 4
DebugLogsIndex:
	.space	4
	.global	debugToolToggles
	.data
	.align	2
	.type	debugToolToggles, %object
	.size	debugToolToggles, 4
debugToolToggles:
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.global	MAIN_BROWN
	.align	2
	.type	MAIN_BROWN, %object
	.size	MAIN_BROWN, 4
MAIN_BROWN:
	.byte	-106
	.byte	104
	.byte	81
	.byte	-1
	.global	MAIN_ORANGE
	.align	2
	.type	MAIN_ORANGE, %object
	.size	MAIN_ORANGE, 4
MAIN_ORANGE:
	.byte	-11
	.byte	-89
	.byte	-128
	.byte	-1
	.global	logoTexture
	.bss
	.align	2
	.type	logoTexture, %object
	.size	logoTexture, 20
logoTexture:
	.space	20
	.global	splashBackgroundTexture
	.align	2
	.type	splashBackgroundTexture, %object
	.size	splashBackgroundTexture, 20
splashBackgroundTexture:
	.space	20
	.global	splashOverlayTexture
	.align	2
	.type	splashOverlayTexture, %object
	.size	splashOverlayTexture, 20
splashOverlayTexture:
	.space	20
	.global	backgroundTexture
	.align	2
	.type	backgroundTexture, %object
	.size	backgroundTexture, 20
backgroundTexture:
	.space	20
	.global	backgroundOverlayTexture
	.align	2
	.type	backgroundOverlayTexture, %object
	.size	backgroundOverlayTexture, 20
backgroundOverlayTexture:
	.space	20
	.global	backgroundOverlaySidebarTexture
	.align	2
	.type	backgroundOverlaySidebarTexture, %object
	.size	backgroundOverlaySidebarTexture, 20
backgroundOverlaySidebarTexture:
	.space	20
	.global	pawTexture
	.align	2
	.type	pawTexture, %object
	.size	pawTexture, 20
pawTexture:
	.space	20
	.global	checkbox
	.align	2
	.type	checkbox, %object
	.size	checkbox, 20
checkbox:
	.space	20
	.global	checkboxChecked
	.align	2
	.type	checkboxChecked, %object
	.size	checkboxChecked, 20
checkboxChecked:
	.space	20
	.global	left_arrow
	.align	2
	.type	left_arrow, %object
	.size	left_arrow, 20
left_arrow:
	.space	20
	.global	right_arrow
	.align	2
	.type	right_arrow, %object
	.size	right_arrow, 20
right_arrow:
	.space	20
	.global	bubbles
	.align	2
	.type	bubbles, %object
	.size	bubbles, 20
bubbles:
	.space	20
	.global	cloud1Texture
	.align	2
	.type	cloud1Texture, %object
	.size	cloud1Texture, 20
cloud1Texture:
	.space	20
	.global	cloud2Texture
	.align	2
	.type	cloud2Texture, %object
	.size	cloud2Texture, 20
cloud2Texture:
	.space	20
	.global	cloud3Texture
	.align	2
	.type	cloud3Texture, %object
	.size	cloud3Texture, 20
cloud3Texture:
	.space	20
	.global	star1Texture
	.align	2
	.type	star1Texture, %object
	.size	star1Texture, 20
star1Texture:
	.space	20
	.global	star2Texture
	.align	2
	.type	star2Texture, %object
	.size	star2Texture, 20
star2Texture:
	.space	20
	.global	meowFont
	.align	2
	.type	meowFont, %object
	.size	meowFont, 40
meowFont:
	.space	40
	.global	selectFx
	.align	2
	.type	selectFx, %object
	.size	selectFx, 24
selectFx:
	.space	24
	.global	hoverFx
	.align	2
	.type	hoverFx, %object
	.size	hoverFx, 24
hoverFx:
	.space	24
	.global	boongFx
	.align	2
	.type	boongFx, %object
	.size	boongFx, 24
boongFx:
	.space	24
	.global	angry1Fx
	.align	2
	.type	angry1Fx, %object
	.size	angry1Fx, 24
angry1Fx:
	.space	24
	.global	angry2Fx
	.align	2
	.type	angry2Fx, %object
	.size	angry2Fx, 24
angry2Fx:
	.space	24
	.global	angry3Fx
	.align	2
	.type	angry3Fx, %object
	.size	angry3Fx, 24
angry3Fx:
	.space	24
	.global	angry4Fx
	.align	2
	.type	angry4Fx, %object
	.size	angry4Fx, 24
angry4Fx:
	.space	24
	.global	bottle1Fx
	.align	2
	.type	bottle1Fx, %object
	.size	bottle1Fx, 24
bottle1Fx:
	.space	24
	.global	bottle2Fx
	.align	2
	.type	bottle2Fx, %object
	.size	bottle2Fx, 24
bottle2Fx:
	.space	24
	.global	bottle3Fx
	.align	2
	.type	bottle3Fx, %object
	.size	bottle3Fx, 24
bottle3Fx:
	.space	24
	.global	confused1Fx
	.align	2
	.type	confused1Fx, %object
	.size	confused1Fx, 24
confused1Fx:
	.space	24
	.global	confused2Fx
	.align	2
	.type	confused2Fx, %object
	.size	confused2Fx, 24
confused2Fx:
	.space	24
	.global	confused3Fx
	.align	2
	.type	confused3Fx, %object
	.size	confused3Fx, 24
confused3Fx:
	.space	24
	.global	confused4Fx
	.align	2
	.type	confused4Fx, %object
	.size	confused4Fx, 24
confused4Fx:
	.space	24
	.global	correctFx
	.align	2
	.type	correctFx, %object
	.size	correctFx, 24
correctFx:
	.space	24
	.global	drop1Fx
	.align	2
	.type	drop1Fx, %object
	.size	drop1Fx, 24
drop1Fx:
	.space	24
	.global	drop2Fx
	.align	2
	.type	drop2Fx, %object
	.size	drop2Fx, 24
drop2Fx:
	.space	24
	.global	drop3Fx
	.align	2
	.type	drop3Fx, %object
	.size	drop3Fx, 24
drop3Fx:
	.space	24
	.global	pickup1Fx
	.align	2
	.type	pickup1Fx, %object
	.size	pickup1Fx, 24
pickup1Fx:
	.space	24
	.global	pickup2Fx
	.align	2
	.type	pickup2Fx, %object
	.size	pickup2Fx, 24
pickup2Fx:
	.space	24
	.global	pickup3Fx
	.align	2
	.type	pickup3Fx, %object
	.size	pickup3Fx, 24
pickup3Fx:
	.space	24
	.global	pour1Fx
	.align	2
	.type	pour1Fx, %object
	.size	pour1Fx, 24
pour1Fx:
	.space	24
	.global	pour2Fx
	.align	2
	.type	pour2Fx, %object
	.size	pour2Fx, 24
pour2Fx:
	.space	24
	.global	pour3Fx
	.align	2
	.type	pour3Fx, %object
	.size	pour3Fx, 24
pour3Fx:
	.space	24
	.global	stir1Fx
	.align	2
	.type	stir1Fx, %object
	.size	stir1Fx, 24
stir1Fx:
	.space	24
	.global	stir2Fx
	.align	2
	.type	stir2Fx, %object
	.size	stir2Fx, 24
stir2Fx:
	.space	24
	.global	stir3Fx
	.align	2
	.type	stir3Fx, %object
	.size	stir3Fx, 24
stir3Fx:
	.space	24
	.global	flickFx
	.align	2
	.type	flickFx, %object
	.size	flickFx, 24
flickFx:
	.space	24
	.global	menuBgm
	.align	2
	.type	menuBgm, %object
	.size	menuBgm, 36
menuBgm:
	.space	36
	.global	menuFallingItemTextures
	.align	2
	.type	menuFallingItemTextures, %object
	.size	menuFallingItemTextures, 160
menuFallingItemTextures:
	.space	160
	.global	teaPowderTexture
	.align	2
	.type	teaPowderTexture, %object
	.size	teaPowderTexture, 20
teaPowderTexture:
	.space	20
	.global	cocoaPowderTexture
	.align	2
	.type	cocoaPowderTexture, %object
	.size	cocoaPowderTexture, 20
cocoaPowderTexture:
	.space	20
	.global	caramelSauceTexture
	.align	2
	.type	caramelSauceTexture, %object
	.size	caramelSauceTexture, 20
caramelSauceTexture:
	.space	20
	.global	chocolateSauceTexture
	.align	2
	.type	chocolateSauceTexture, %object
	.size	chocolateSauceTexture, 20
chocolateSauceTexture:
	.space	20
	.global	condensedMilkTexture
	.align	2
	.type	condensedMilkTexture, %object
	.size	condensedMilkTexture, 20
condensedMilkTexture:
	.space	20
	.global	normalMilkTexture
	.align	2
	.type	normalMilkTexture, %object
	.size	normalMilkTexture, 20
normalMilkTexture:
	.space	20
	.global	marshMellowTexture
	.align	2
	.type	marshMellowTexture, %object
	.size	marshMellowTexture, 20
marshMellowTexture:
	.space	20
	.global	whippedCreamTexture
	.align	2
	.type	whippedCreamTexture, %object
	.size	whippedCreamTexture, 20
whippedCreamTexture:
	.space	20
	.global	hotWaterTexture
	.align	2
	.type	hotWaterTexture, %object
	.size	hotWaterTexture, 20
hotWaterTexture:
	.space	20
	.global	greenChonTexture
	.align	2
	.type	greenChonTexture, %object
	.size	greenChonTexture, 20
greenChonTexture:
	.space	20
	.global	cocoaChonTexture
	.align	2
	.type	cocoaChonTexture, %object
	.size	cocoaChonTexture, 20
cocoaChonTexture:
	.space	20
	.global	trashCanTexture
	.align	2
	.type	trashCanTexture, %object
	.size	trashCanTexture, 20
trashCanTexture:
	.space	20
	.text
	.align	2
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	StringFromDifficultyEnum, %function
StringFromDifficultyEnum:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r2, .L3
	ldr	r3, [fp, #-8]
	ldr	r3, [r2, r3, lsl #2]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L4:
	.align	2
.L3:
	.word	strings.0
	.size	StringFromDifficultyEnum, .-StringFromDifficultyEnum
	.global	customersImageData
	.bss
	.align	2
	.type	customersImageData, %object
	.size	customersImageData, 480
customersImageData:
	.space	480
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	StringFromCustomerEmotionEnum, %function
StringFromCustomerEmotionEnum:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r2, .L7
	ldr	r3, [fp, #-8]
	ldr	r3, [r2, r3, lsl #2]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	strings.1
	.size	StringFromCustomerEmotionEnum, .-StringFromCustomerEmotionEnum
	.align	2
	.global	CreateCustomer
	.syntax unified
	.arm
	.fpu vfp
	.type	CreateCustomer, %function
CreateCustomer:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-104]
	str	r1, [fp, #-108]
	vstr.64	d0, [fp, #-116]
	vstr.64	d1, [fp, #-124]
	vstr.64	d2, [fp, #-132]
	vmov.f32	s14, s6
	vmov.f32	s15, s7
	str	r3, [fp, #-148]
	vstr.64	d4, [fp, #-156]
	mov	r3, r2
	strb	r3, [fp, #-133]
	vstr.32	s14, [fp, #-144]
	vstr.32	s15, [fp, #-140]
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-100]
	ldrd	r2, [fp, #-116]
	strd	r2, [fp, #-92]
	ldrd	r2, [fp, #-124]
	strd	r2, [fp, #-84]
	ldrd	r2, [fp, #-132]
	strd	r2, [fp, #-76]
	mov	r3, #0
	strb	r3, [fp, #-68]
	ldrb	r3, [fp, #-133]
	strb	r3, [fp, #-67]
	mov	r3, #0
	strb	r3, [fp, #-66]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-36]
	sub	r3, fp, #32
	sub	r2, fp, #144
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, [fp, #-148]
	str	r3, [fp, #-24]
	mov	r3, #0
	strb	r3, [fp, #-20]
	ldrd	r2, [fp, #-156]
	strd	r2, [fp, #-12]
	ldr	r3, [fp, #-104]
	mov	r0, r3
	sub	r3, fp, #100
	mov	r2, #96
	mov	r1, r3
	bl	memcpy
	ldr	r0, [fp, #-104]
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	CreateCustomer, .-CreateCustomer
	.global	teaPowder
	.bss
	.align	2
	.type	teaPowder, %object
	.size	teaPowder, 64
teaPowder:
	.space	64
	.global	cocoaPowder
	.align	2
	.type	cocoaPowder, %object
	.size	cocoaPowder, 64
cocoaPowder:
	.space	64
	.global	normalMilk
	.align	2
	.type	normalMilk, %object
	.size	normalMilk, 64
normalMilk:
	.space	64
	.global	condensedMilk
	.align	2
	.type	condensedMilk, %object
	.size	condensedMilk, 64
condensedMilk:
	.space	64
	.global	marshMellow
	.align	2
	.type	marshMellow, %object
	.size	marshMellow, 64
marshMellow:
	.space	64
	.global	whippedCream
	.align	2
	.type	whippedCream, %object
	.size	whippedCream, 64
whippedCream:
	.space	64
	.global	caramelSauce
	.align	2
	.type	caramelSauce, %object
	.size	caramelSauce, 64
caramelSauce:
	.space	64
	.global	chocolateSauce
	.align	2
	.type	chocolateSauce, %object
	.size	chocolateSauce, 64
chocolateSauce:
	.space	64
	.global	hotWater
	.align	2
	.type	hotWater, %object
	.size	hotWater, 64
hotWater:
	.space	64
	.global	greenChon
	.align	2
	.type	greenChon, %object
	.size	greenChon, 64
greenChon:
	.space	64
	.global	cocoaChon
	.align	2
	.type	cocoaChon, %object
	.size	cocoaChon, 64
cocoaChon:
	.space	64
	.global	trashCan
	.align	2
	.type	trashCan, %object
	.size	trashCan, 64
trashCan:
	.space	64
	.global	plate
	.align	2
	.type	plate, %object
	.size	plate, 28
plate:
	.space	28
	.text
	.align	2
	.global	GetRandomDoubleValue
	.syntax unified
	.arm
	.fpu vfp
	.type	GetRandomDoubleValue, %function
GetRandomDoubleValue:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	vstr.64	d0, [fp, #-36]
	vstr.64	d1, [fp, #-44]
	vldr.64	d6, [fp, #-44]
	vldr.64	d7, [fp, #-36]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-12]
	vldr.64	d5, .L12
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
.L13:
	.align	3
.L12:
	.word	-4194304
	.word	1105199103
	.size	GetRandomDoubleValue, .-GetRandomDoubleValue
	.global	oricupPosition
	.section	.rodata
	.align	2
	.type	oricupPosition, %object
	.size	oricupPosition, 8
oricupPosition:
	.word	1135575040
	.word	1121583104
	.global	oriwaterPosition
	.align	2
	.type	oriwaterPosition, %object
	.size	oriwaterPosition, 8
oriwaterPosition:
	.word	1142292480
	.word	1129447424
	.global	oricaramelPosition
	.align	2
	.type	oricaramelPosition, %object
	.size	oricaramelPosition, 8
oricaramelPosition:
	.word	-1002405888
	.word	1121452032
	.global	orichocolatePosition
	.align	2
	.type	orichocolatePosition, %object
	.size	orichocolatePosition, 8
orichocolatePosition:
	.word	-1000210432
	.word	1124728832
	.global	oriteapowderPosition
	.align	2
	.type	oriteapowderPosition, %object
	.size	oriteapowderPosition, 8
oriteapowderPosition:
	.word	-1009614848
	.word	1125187584
	.global	oricocoapowderPosition
	.align	2
	.type	oricocoapowderPosition, %object
	.size	oricocoapowderPosition, 8
oricocoapowderPosition:
	.word	-1005780992
	.word	1127284736
	.global	oriplatePosition
	.align	2
	.type	oriplatePosition, %object
	.size	oriplatePosition, 8
oriplatePosition:
	.word	-1020329984
	.word	1133903872
	.global	oriplateCupPosition
	.align	2
	.type	oriplateCupPosition, %object
	.size	oriplateCupPosition, 8
oriplateCupPosition:
	.word	-1042284544
	.word	1133903872
	.global	oricondensedmilkPosition
	.align	2
	.type	oricondensedmilkPosition, %object
	.size	oricondensedmilkPosition, 8
oricondensedmilkPosition:
	.word	1133346816
	.word	1134428160
	.global	orimilkPosition
	.align	2
	.type	orimilkPosition, %object
	.size	orimilkPosition, 8
orimilkPosition:
	.word	1126170624
	.word	1135280128
	.global	orimarshmellowPosition
	.align	2
	.type	orimarshmellowPosition, %object
	.size	orimarshmellowPosition, 8
orimarshmellowPosition:
	.word	-1007648768
	.word	1134559232
	.global	oriwhippedPosition
	.align	2
	.type	oriwhippedPosition, %object
	.size	oriwhippedPosition, 8
oriwhippedPosition:
	.word	-1004470272
	.word	1134559232
	.global	oricupsPostion
	.align	2
	.type	oricupsPostion, %object
	.size	oricupsPostion, 8
oricupsPostion:
	.word	1136852992
	.word	1117782016
	.global	hiddenPosition
	.align	2
	.type	hiddenPosition, %object
	.size	hiddenPosition, 8
hiddenPosition:
	.word	-985956352
	.word	-985956352
	.global	trashCanPosition
	.bss
	.align	2
	.type	trashCanPosition, %object
	.size	trashCanPosition, 8
trashCanPosition:
	.space	8
	.local	global_score
	.comm	global_score,4,4
	.global	triggerHotWater
	.type	triggerHotWater, %object
	.size	triggerHotWater, 1
triggerHotWater:
	.space	1
	.global	boilingTime
	.data
	.align	3
	.type	boilingTime, %object
	.size	boilingTime, 8
boilingTime:
	.word	0
	.word	1074003968
	.global	lastBoongBoongBoongTime
	.bss
	.align	3
	.type	lastBoongBoongBoongTime, %object
	.size	lastBoongBoongBoongTime, 8
lastBoongBoongBoongTime:
	.space	8
	.global	dragAndDropLocked
	.type	dragAndDropLocked, %object
	.size	dragAndDropLocked, 1
dragAndDropLocked:
	.space	1
	.text
	.align	2
	.global	ExitApplication
	.syntax unified
	.arm
	.fpu vfp
	.type	ExitApplication, %function
ExitApplication:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	UnloadGlobalAssets
	mov	r0, #0
	bl	exit
	.size	ExitApplication, .-ExitApplication
	.section	.rodata
	.align	2
.LC14:
	.ascii	"trashCanPosition.x: %f, trashCanPosition.y: %f, tra"
	.ascii	"shCanTexture.width: %d, trashCanTexture.height: %d\012"
	.ascii	"\000"
	.align	2
.LC15:
	.ascii	"Cup Positon x: %f, y: %f, cupTexture.width: %d, cup"
	.ascii	"Texture.height: %d\012\000"
	.align	2
.LC16:
	.ascii	"CheckCollisionRecs(trashCanBond, cupBond) %d\012\000"
	.align	2
.LC17:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/combination"
	.ascii	"/EMPTY.png\000"
	.text
	.align	2
	.global	DragAndDropCup
	.syntax unified
	.arm
	.fpu vfp
	.type	DragAndDropCup, %function
DragAndDropCup:
	@ args = 4, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #268
	str	r0, [fp, #-224]
	str	r1, [fp, #-228]
	str	r2, [fp, #-232]
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-84]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #44]	@ float
	str	r3, [fp, #-76]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-72]	@ float
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-100]	@ float
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-96]	@ float
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-92]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-88]
	mov	r0, #0
	bl	IsMouseButtonDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-68]
	vstr.32	s15, [fp, #-64]
	ldr	r3, [fp, #-232]
	vldr.32	s14, [fp, #-68]
	vldr.32	s15, [fp, #-64]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-108]
	vstr.32	s15, [fp, #-104]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-124]	@ float
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #28]	@ float
	str	r3, [fp, #-120]	@ float
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-116]	@ float
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-112]	@ float
	ldr	r3, .L44+4
	vldr.32	s15, [r3]
	vcvt.f64.f32	d6, s15
	ldr	r3, .L44+4
	vldr.32	s15, [r3, #4]
	vcvt.f64.f32	d7, s15
	ldr	r3, .L44+8
	ldr	r3, [r3, #4]
	ldr	r2, .L44+8
	ldr	r2, [r2, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r0, .L44+12
	bl	LogDebug
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-140]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-136]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-132]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-128]
	ldr	r3, [fp, #-224]
	vldr.32	s15, [r3, #20]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-224]
	vldr.32	s15, [r3, #24]
	vcvt.f64.f32	d7, s15
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-224]
	ldr	r2, [r2, #8]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r0, .L44+16
	bl	LogDebug
	vldr.32	s8, [fp, #-140]
	vldr.32	s9, [fp, #-136]
	vldr.32	s10, [fp, #-132]
	vldr.32	s11, [fp, #-128]
	vldr.32	s12, [fp, #-124]
	vldr.32	s13, [fp, #-120]
	vldr.32	s14, [fp, #-116]
	vldr.32	s15, [fp, #-112]
	vmov.f32	s4, s8
	vmov.f32	s5, s9
	vmov.f32	s6, s10
	vmov.f32	s7, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	CheckCollisionRecs
	mov	r3, r0
	mov	r1, r3
	ldr	r0, .L44+20
	bl	LogDebug
	vldr.32	s8, [fp, #-140]
	vldr.32	s9, [fp, #-136]
	vldr.32	s10, [fp, #-132]
	vldr.32	s11, [fp, #-128]
	vldr.32	s12, [fp, #-124]
	vldr.32	s13, [fp, #-120]
	vldr.32	s14, [fp, #-116]
	vldr.32	s15, [fp, #-112]
	vmov.f32	s4, s8
	vmov.f32	s5, s9
	vmov.f32	s6, s10
	vmov.f32	s7, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	CheckCollisionRecs
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	strb	r2, [r3, #72]
.L17:
	ldr	r3, [fp, #-224]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L18
	vldr.32	s10, [fp, #-84]
	vldr.32	s11, [fp, #-80]
	vldr.32	s12, [fp, #-76]
	vldr.32	s13, [fp, #-72]
	vldr.32	s14, [fp, #-108]
	vldr.32	s15, [fp, #-104]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L44+56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L19
	ldr	r2, [fp, #-224]
	ldr	r3, .L44+56
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L18
.L19:
	ldr	r3, .L44+44
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-224]
	vldr.32	s14, [r3, #44]
	vldr.32	s13, .L44+60
	vdiv.f32	s15, s14, s13
	ldr	r3, .L44+48
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-224]
	vldr.32	s14, [r3, #48]
	vldr.32	s13, .L44+60
	vdiv.f32	s15, s14, s13
	ldr	r3, .L44+52
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-108]	@ float
	str	r3, [fp, #-20]	@ float
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-24]	@ float
	ldr	r3, .L44+48
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-20]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #20]
	ldr	r3, .L44+52
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-24]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #24]
	ldr	r3, [fp, #-224]
	ldr	r2, .L44+56
	str	r3, [r2]
	ldr	r3, [fp, #-224]
	b	.L38
.L18:
	ldr	r3, [fp, #-224]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L44+24
	str	r3, [fp, #-156]	@ float
	ldr	r3, .L44+28
	str	r3, [fp, #-152]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-148]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-144]
	vldr.32	s10, [fp, #-156]
	vldr.32	s11, [fp, #-152]
	vldr.32	s12, [fp, #-148]
	vldr.32	s13, [fp, #-144]
	vldr.32	s14, [fp, #-108]
	vldr.32	s15, [fp, #-104]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	ldr	r3, .L44+44
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	ldr	r3, .L44+48
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #8]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	ldr	r3, .L44+52
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-108]	@ float
	str	r3, [fp, #-28]	@ float
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r3, .L44+48
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-28]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #20]
	ldr	r3, .L44+52
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-32]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #24]
	ldr	r4, [fp, #-224]
	sub	r3, fp, #260
	ldr	r1, .L44+40
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #260
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, [fp, #-224]
	ldr	r2, .L44+56
	str	r3, [r2]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [fp, #-224]
	mov	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [fp, #-224]
	b	.L38
.L16:
	mov	r0, #0
	bl	IsMouseButtonReleased
	mov	r3, r0
	cmp	r3, #0
	beq	.L23
	ldr	r3, .L44+44
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L44+56
	mov	r2, #0
	str	r2, [r3]
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-60]
	vstr.32	s15, [fp, #-56]
	ldr	r3, [fp, #-232]
	vldr.32	s14, [fp, #-60]
	vldr.32	s15, [fp, #-56]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-164]
	vstr.32	s15, [fp, #-160]
	ldr	r3, [fp, #-236]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-236]
	add	r3, r3, #96
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-236]
	add	r3, r3, #192
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-192]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-188]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #44]	@ float
	str	r3, [fp, #-184]	@ float
	ldr	r3, [fp, #-224]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-180]	@ float
	vldr.32	s15, [fp, #-160]
	vldr.32	s14, .L44
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L24
	ldr	r3, [fp, #-224]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L24
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L26
.L45:
	.align	2
.L44:
	.word	1097859072
	.word	trashCanPosition
	.word	trashCanTexture
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	1136852992
	.word	1117782016
	.word	customersImageData
	.word	global_score
	.word	.LC17
	.word	isObjectBeingDragged.13
	.word	offsetX.12
	.word	offsetY.11
	.word	current_dragging.14
	.word	1073741824
.L35:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-164]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L27
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-164]
	ldr	r3, [r3, #68]	@ float
	str	r3, [fp, #-208]	@ float
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-164]
	ldr	r3, [r3, #72]	@ float
	str	r3, [fp, #-204]	@ float
	ldr	r1, .L44+32
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-200]
	ldr	r1, .L44+32
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-196]
	vldr.32	s14, [fp, #-192]
	vldr.32	s15, [fp, #-208]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L27
	vldr.32	s14, [fp, #-188]
	vldr.32	s15, [fp, #-204]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L27
	vldr.32	s14, [fp, #-192]
	vldr.32	s15, [fp, #-184]
	vadd.f32	s14, s14, s15
	vldr.32	s13, [fp, #-208]
	vldr.32	s15, [fp, #-200]
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L27
	vldr.32	s14, [fp, #-188]
	vldr.32	s15, [fp, #-180]
	vadd.f32	s14, s14, s15
	vldr.32	s13, [fp, #-204]
	vldr.32	s15, [fp, #-196]
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L27
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r2, [r3, #-164]
	ldr	r3, [fp, #-224]
	add	r3, r3, #76
	mov	r1, r3
	mov	r0, r2
	bl	validiator
	mov	r3, r0
	strb	r3, [fp, #-33]
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L33
	ldr	r3, .L44+36
	ldr	r3, [r3]
	add	r3, r3, #50
	ldr	r2, .L44+36
	str	r3, [r2]
	mov	r0, #5
	bl	PlaySoundFx
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-164]
	mov	r2, #0
	strb	r2, [r3, #33]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-164]
	mov	r0, r3
	bl	RemoveCustomer
	b	.L34
.L33:
	ldr	r3, .L44+36
	ldr	r3, [r3]
	sub	r3, r3, #50
	ldr	r2, .L44+36
	str	r3, [r2]
	mov	r0, #4
	bl	PlaySoundFx
.L34:
	ldr	r4, [fp, #-224]
	sub	r3, fp, #260
	ldr	r1, .L44+40
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #260
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	strb	r2, [r3, #56]
	ldr	r3, [fp, #-224]
	mov	r2, #0
	strb	r2, [r3, #72]
	ldr	r3, [fp, #-224]
	b	.L38
.L27:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L26:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L35
.L24:
	mov	r3, #10
	str	r3, [fp, #-40]
	mvn	r3, #39
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-228]
	vldr.32	s14, [r3, #20]
	ldr	r3, [fp, #-40]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-224]
	vldr.32	s13, [r3, #44]
	vldr.32	s12, .L44+60
	vdiv.f32	s15, s13, s12
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #20]
	ldr	r3, [fp, #-228]
	vldr.32	s14, [r3, #24]
	ldr	r3, [fp, #-44]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #8]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-224]
	vldr.32	s13, [r3, #48]
	vldr.32	s12, .L44+60
	vdiv.f32	s15, s13, s12
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #24]
.L23:
	ldr	r3, .L44+44
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L36
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-52]
	vstr.32	s15, [fp, #-48]
	ldr	r3, [fp, #-232]
	vldr.32	s14, [fp, #-52]
	vldr.32	s15, [fp, #-48]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-216]
	vstr.32	s15, [fp, #-212]
	vldr.32	s14, [fp, #-216]
	ldr	r3, .L44+48
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #20]
	vldr.32	s14, [fp, #-212]
	ldr	r3, .L44+52
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-224]
	vstr.32	s15, [r3, #24]
.L36:
	ldr	r3, .L44+56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L37
	ldr	r3, .L44+56
	ldr	r3, [r3]
	b	.L38
.L37:
	mov	r3, #0
.L38:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	DragAndDropCup, .-DragAndDropCup
	.section	.rodata
	.align	2
.LC18:
	.ascii	"update CUP IMAGE \012\000"
	.align	2
.LC19:
	.ascii	"GP\000"
	.align	2
.LC20:
	.ascii	"CP\000"
	.align	2
.LC21:
	.ascii	"Y\000"
	.align	2
.LC22:
	.ascii	"N\000"
	.align	2
.LC23:
	.ascii	"CM\000"
	.align	2
.LC24:
	.ascii	"MI\000"
	.align	2
.LC25:
	.ascii	"MA\000"
	.align	2
.LC26:
	.ascii	"WC\000"
	.align	2
.LC27:
	.ascii	"CA\000"
	.align	2
.LC28:
	.ascii	"CH\000"
	.align	2
.LC29:
	.ascii	"\000"
	.align	2
.LC30:
	.ascii	"EMPTY\000"
	.align	2
.LC31:
	.ascii	".png\000"
	.align	2
.LC32:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/combination"
	.ascii	"/\000"
	.align	2
.LC33:
	.ascii	"Powder type: %d, Water: %d, Creamer: %d, Topping: %"
	.ascii	"d, Sauce: %d\012\000"
	.align	2
.LC34:
	.ascii	"NEW CUP IMAGE IS %s\012\000"
	.text
	.align	2
	.global	UpdateCupImage
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateCupImage, %function
UpdateCupImage:
	@ args = 0, pretend = 0, frame = 1136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #1136
	sub	sp, sp, #12
	str	r0, [fp, #-1120]
	str	r1, [fp, #-1124]
	ldr	r0, .L72
	bl	LogDebug
	mov	r3, #0
	strb	r3, [fp, #-112]
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #52]
	cmp	r3, #1
	beq	.L47
	cmp	r3, #2
	beq	.L48
	b	.L50
.L47:
	sub	r3, fp, #112
	ldr	r1, .L72+4
	mov	r0, r3
	bl	FTStrcat
	b	.L50
.L48:
	sub	r3, fp, #112
	ldr	r1, .L72+8
	mov	r0, r3
	bl	FTStrcat
	nop
.L50:
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [fp, #-1120]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L52
	cmp	r3, #1
	bne	.L68
	sub	r3, fp, #112
	ldr	r1, .L72+12
	mov	r0, r3
	bl	FTStrcat
	b	.L51
.L52:
	sub	r3, fp, #112
	ldr	r1, .L72+16
	mov	r0, r3
	bl	FTStrcat
	b	.L51
.L67:
	nop
	b	.L51
.L68:
	nop
.L51:
	ldr	r3, [fp, #-1120]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #60]
	cmp	r3, #3
	beq	.L55
	cmp	r3, #4
	beq	.L56
	b	.L54
.L55:
	sub	r3, fp, #112
	ldr	r1, .L72+20
	mov	r0, r3
	bl	FTStrcat
	b	.L54
.L56:
	sub	r3, fp, #112
	ldr	r1, .L72+24
	mov	r0, r3
	bl	FTStrcat
	b	.L54
.L69:
	nop
.L54:
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #64]
	cmp	r3, #5
	beq	.L59
	cmp	r3, #6
	beq	.L60
	b	.L58
.L59:
	sub	r3, fp, #112
	ldr	r1, .L72+28
	mov	r0, r3
	bl	FTStrcat
	b	.L58
.L60:
	sub	r3, fp, #112
	ldr	r1, .L72+32
	mov	r0, r3
	bl	FTStrcat
	b	.L58
.L70:
	nop
.L58:
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #68]
	cmp	r3, #7
	beq	.L63
	cmp	r3, #8
	beq	.L64
	b	.L62
.L63:
	sub	r3, fp, #112
	ldr	r1, .L72+36
	mov	r0, r3
	bl	FTStrcat
	b	.L62
.L64:
	sub	r3, fp, #112
	ldr	r1, .L72+40
	mov	r0, r3
	bl	FTStrcat
	b	.L62
.L71:
	nop
.L62:
	sub	r3, fp, #112
	ldr	r1, .L72+44
	mov	r0, r3
	bl	FTStrcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L66
	sub	r3, fp, #112
	ldr	r1, .L72+48
	mov	r0, r3
	bl	FTStrcat
.L66:
	ldr	r3, [fp, #-1120]
	add	r3, r3, #76
	sub	r2, fp, #112
	mov	r1, r2
	mov	r0, r3
	bl	strcpy
	sub	r3, fp, #112
	ldr	r1, .L72+52
	mov	r0, r3
	bl	FTStrcat
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #12
	ldr	r2, .L72+56
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	str	r0, [ip]
	add	ip, ip, #4
	strb	r1, [ip]
	sub	r2, fp, #112
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r2
	mov	r0, r3
	bl	FTStrcat
	ldr	r3, [fp, #-1120]
	ldr	r1, [r3, #52]
	ldr	r3, [fp, #-1120]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r3, [fp, #-1120]
	ldr	r0, [r3, #60]
	ldr	r3, [fp, #-1120]
	ldr	r3, [r3, #64]
	ldr	r2, [fp, #-1120]
	ldr	r2, [r2, #68]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	mov	r2, ip
	ldr	r0, .L72+60
	bl	LogDebug
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	ldr	r0, .L72+64
	bl	LogDebug
	ldr	r4, [fp, #-1120]
	sub	r2, fp, #1136
	sub	r2, r2, #12
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	mov	r0, r2
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #1136
	sub	ip, ip, #12
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L73:
	.align	2
.L72:
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.size	UpdateCupImage, .-UpdateCupImage
	.align	2
	.global	UpdateCup
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateCup, %function
UpdateCup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L86
	ldr	r3, [fp, #-12]
	ldr	r2, .L87
	cmp	r3, r2
	bne	.L77
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L77
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3, #52]
	b	.L78
.L77:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+4
	cmp	r3, r2
	bne	.L79
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L79
	ldr	r3, [fp, #-8]
	mov	r2, #2
	str	r2, [r3, #52]
	b	.L78
.L79:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+8
	cmp	r3, r2
	bne	.L80
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #56]
	mov	r0, #8
	bl	PlaySoundFx
	mov	r0, #9
	bl	PlaySoundFx
	b	.L78
.L80:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+12
	cmp	r3, r2
	bne	.L81
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L81
	ldr	r3, [fp, #-8]
	mov	r2, #3
	str	r2, [r3, #60]
	b	.L78
.L81:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+16
	cmp	r3, r2
	bne	.L82
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L82
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [fp, #-8]
	mov	r2, #4
	str	r2, [r3, #60]
	mov	r0, #8
	bl	PlaySoundFx
	b	.L78
.L82:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+20
	cmp	r3, r2
	bne	.L83
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [fp, #-8]
	mov	r2, #5
	str	r2, [r3, #64]
	b	.L78
.L83:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+24
	cmp	r3, r2
	bne	.L84
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [fp, #-8]
	mov	r2, #6
	str	r2, [r3, #64]
	b	.L78
.L84:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+28
	cmp	r3, r2
	bne	.L85
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L85
	ldr	r3, [fp, #-8]
	mov	r2, #7
	str	r2, [r3, #68]
	mov	r0, #3
	bl	PlaySoundFx
	b	.L78
.L85:
	ldr	r3, [fp, #-12]
	ldr	r2, .L87+32
	cmp	r3, r2
	bne	.L78
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [fp, #-8]
	mov	r2, #8
	str	r2, [r3, #68]
	mov	r0, #3
	bl	PlaySoundFx
.L78:
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	UpdateCupImage
	b	.L74
.L86:
	nop
.L74:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L88:
	.align	2
.L87:
	.word	teaPowder
	.word	cocoaPowder
	.word	hotWater
	.word	condensedMilk
	.word	normalMilk
	.word	marshMellow
	.word	whippedCream
	.word	caramelSauce
	.word	chocolateSauce
	.size	UpdateCup, .-UpdateCup
	.align	2
	.global	DragAndDropIngredient
	.syntax unified
	.arm
	.fpu vfp
	.type	DragAndDropIngredient, %function
DragAndDropIngredient:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #96
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	str	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #28]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-60]	@ float
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-56]	@ float
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-52]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-48]
	mov	r0, #0
	bl	IsMouseButtonDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L90
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-28]
	vstr.32	s15, [fp, #-24]
	ldr	r3, [fp, #-88]
	vldr.32	s14, [fp, #-28]
	vldr.32	s15, [fp, #-24]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-68]
	vstr.32	s15, [fp, #-64]
	vldr.32	s10, [fp, #-44]
	vldr.32	s11, [fp, #-40]
	vldr.32	s12, [fp, #-36]
	vldr.32	s13, [fp, #-32]
	vldr.32	s14, [fp, #-68]
	vldr.32	s15, [fp, #-64]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L90
	ldr	r3, .L101+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L92
	ldr	r2, [fp, #-80]
	ldr	r3, .L101+4
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L90
.L92:
	ldr	r3, [fp, #-80]
	ldr	r2, .L101+8
	cmp	r3, r2
	bne	.L93
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L93
	ldr	r3, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3, #20]
	mov	r0, #11
	bl	PlaySoundFx
	ldr	r0, [fp, #-80]
	bl	boilWater
	b	.L90
.L93:
	ldr	r3, .L101+12
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	vldr.32	s14, [r3, #48]
	vldr.32	s13, .L101
	vdiv.f32	s15, s14, s13
	ldr	r3, .L101+16
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-80]
	vldr.32	s14, [r3, #52]
	vldr.32	s13, .L101
	vdiv.f32	s15, s14, s13
	ldr	r3, .L101+20
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-68]	@ float
	str	r3, [fp, #-8]	@ float
	ldr	r3, [fp, #-64]	@ float
	str	r3, [fp, #-12]	@ float
	ldr	r3, .L101+16
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-8]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-80]
	vstr.32	s15, [r3, #24]
	ldr	r3, .L101+20
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-12]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-80]
	vstr.32	s15, [r3, #28]
	ldr	r3, [fp, #-80]
	ldr	r2, .L101+4
	str	r3, [r2]
	ldr	r3, [fp, #-80]
	b	.L100
.L90:
	mov	r0, #0
	bl	IsMouseButtonReleased
	mov	r3, r0
	cmp	r3, #0
	beq	.L95
	ldr	r3, .L101+12
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L101+4
	mov	r2, #0
	str	r2, [r3]
	vldr.32	s8, [fp, #-60]
	vldr.32	s9, [fp, #-56]
	vldr.32	s10, [fp, #-52]
	vldr.32	s11, [fp, #-48]
	vldr.32	s12, [fp, #-44]
	vldr.32	s13, [fp, #-40]
	vldr.32	s14, [fp, #-36]
	vldr.32	s15, [fp, #-32]
	vmov.f32	s4, s8
	vmov.f32	s5, s9
	vmov.f32	s6, s10
	vmov.f32	s7, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	CheckCollisionRecs
	mov	r3, r0
	cmp	r3, #0
	beq	.L96
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L95
	ldr	r3, [fp, #-80]
	ldr	r2, .L101+8
	cmp	r3, r2
	bne	.L97
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L97
	ldr	r3, .L101+24
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, [fp, #-80]
	mov	r2, #1
	str	r2, [r3, #60]
.L97:
	ldr	r1, [fp, #-80]
	ldr	r0, [fp, #-84]
	bl	UpdateCup
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #32]	@ float
	ldr	r3, [fp, #-80]
	str	r2, [r3, #24]	@ float
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #36]	@ float
	ldr	r3, [fp, #-80]
	str	r2, [r3, #28]	@ float
	b	.L95
.L96:
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #32]	@ float
	ldr	r3, [fp, #-80]
	str	r2, [r3, #24]	@ float
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #36]	@ float
	ldr	r3, [fp, #-80]
	str	r2, [r3, #28]	@ float
.L95:
	ldr	r3, .L101+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L98
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-20]
	vstr.32	s15, [fp, #-16]
	ldr	r3, [fp, #-88]
	vldr.32	s14, [fp, #-20]
	vldr.32	s15, [fp, #-16]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-76]
	vstr.32	s15, [fp, #-72]
	vldr.32	s14, [fp, #-76]
	ldr	r3, .L101+16
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-80]
	vstr.32	s15, [r3, #24]
	vldr.32	s14, [fp, #-72]
	ldr	r3, .L101+20
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-80]
	vstr.32	s15, [r3, #28]
.L98:
	ldr	r3, .L101+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L99
	ldr	r3, .L101+4
	ldr	r3, [r3]
	b	.L100
.L99:
	mov	r3, #0
.L100:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L102:
	.align	2
.L101:
	.word	1073741824
	.word	current_dragging.10
	.word	hotWater
	.word	isObjectBeingDragged.9
	.word	offsetX.8
	.word	offsetY.7
	.word	triggerHotWater
	.size	DragAndDropIngredient, .-DragAndDropIngredient
	.align	2
	.global	DragAndDropIngredientPop
	.syntax unified
	.arm
	.fpu vfp
	.type	DragAndDropIngredientPop, %function
DragAndDropIngredientPop:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #112
	str	r0, [fp, #-96]
	str	r1, [fp, #-100]
	str	r2, [fp, #-104]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #28]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-60]	@ float
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #28]	@ float
	str	r3, [fp, #-56]	@ float
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-52]	@ float
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-48]	@ float
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #20]	@ float
	str	r3, [fp, #-76]	@ float
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-72]	@ float
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-68]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-64]
	mov	r0, #0
	bl	IsMouseButtonDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L104
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-28]
	vstr.32	s15, [fp, #-24]
	ldr	r3, [fp, #-108]
	vldr.32	s14, [fp, #-28]
	vldr.32	s15, [fp, #-24]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-84]
	vstr.32	s15, [fp, #-80]
	vldr.32	s10, [fp, #-44]
	vldr.32	s11, [fp, #-40]
	vldr.32	s12, [fp, #-36]
	vldr.32	s13, [fp, #-32]
	vldr.32	s14, [fp, #-84]
	vldr.32	s15, [fp, #-80]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	bne	.L105
	vldr.32	s10, [fp, #-60]
	vldr.32	s11, [fp, #-56]
	vldr.32	s12, [fp, #-52]
	vldr.32	s13, [fp, #-48]
	vldr.32	s14, [fp, #-84]
	vldr.32	s15, [fp, #-80]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L104
.L105:
	ldr	r3, .L114+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L107
	ldr	r2, [fp, #-96]
	ldr	r3, .L114+4
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L104
.L107:
	ldr	r3, .L114+8
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-100]
	vldr.32	s14, [r3, #48]
	vldr.32	s13, .L114
	vdiv.f32	s15, s14, s13
	ldr	r3, .L114+12
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-100]
	vldr.32	s14, [r3, #52]
	vldr.32	s13, .L114
	vdiv.f32	s15, s14, s13
	ldr	r3, .L114+16
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-84]	@ float
	str	r3, [fp, #-8]	@ float
	ldr	r3, [fp, #-80]	@ float
	str	r3, [fp, #-12]	@ float
	ldr	r3, .L114+12
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-8]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-100]
	vstr.32	s15, [r3, #24]
	ldr	r3, .L114+16
	vldr.32	s15, [r3]
	vldr.32	s14, [fp, #-12]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-100]
	vstr.32	s15, [r3, #28]
	ldr	r3, [fp, #-96]
	ldr	r2, .L114+4
	str	r3, [r2]
	ldr	r3, [fp, #-96]
	b	.L113
.L104:
	mov	r0, #0
	bl	IsMouseButtonReleased
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	ldr	r3, .L114+8
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L114+4
	mov	r2, #0
	str	r2, [r3]
	vldr.32	s8, [fp, #-76]
	vldr.32	s9, [fp, #-72]
	vldr.32	s10, [fp, #-68]
	vldr.32	s11, [fp, #-64]
	vldr.32	s12, [fp, #-60]
	vldr.32	s13, [fp, #-56]
	vldr.32	s14, [fp, #-52]
	vldr.32	s15, [fp, #-48]
	vmov.f32	s4, s8
	vmov.f32	s5, s9
	vmov.f32	s6, s10
	vmov.f32	s7, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	CheckCollisionRecs
	mov	r3, r0
	cmp	r3, #0
	beq	.L110
	ldr	r3, [fp, #-96]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
	ldr	r1, [fp, #-96]
	ldr	r0, [fp, #-104]
	bl	UpdateCup
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #32]	@ float
	ldr	r3, [fp, #-100]
	str	r2, [r3, #24]	@ float
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #36]	@ float
	ldr	r3, [fp, #-100]
	str	r2, [r3, #28]	@ float
	b	.L109
.L110:
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #32]	@ float
	ldr	r3, [fp, #-100]
	str	r2, [r3, #24]	@ float
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #36]	@ float
	ldr	r3, [fp, #-100]
	str	r2, [r3, #28]	@ float
.L109:
	ldr	r3, .L114+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L111
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-20]
	vstr.32	s15, [fp, #-16]
	ldr	r3, [fp, #-108]
	vldr.32	s14, [fp, #-20]
	vldr.32	s15, [fp, #-16]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-92]
	vstr.32	s15, [fp, #-88]
	vldr.32	s14, [fp, #-92]
	ldr	r3, .L114+12
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-100]
	vstr.32	s15, [r3, #24]
	vldr.32	s14, [fp, #-88]
	ldr	r3, .L114+16
	vldr.32	s15, [r3]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-100]
	vstr.32	s15, [r3, #28]
.L111:
	ldr	r3, .L114+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L112
	ldr	r3, .L114+4
	ldr	r3, [r3]
	b	.L113
.L112:
	mov	r3, #0
.L113:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L115:
	.align	2
.L114:
	.word	1073741824
	.word	current_dragging.6
	.word	isObjectBeingDragged.5
	.word	offsetX.4
	.word	offsetY.3
	.size	DragAndDropIngredientPop, .-DragAndDropIngredientPop
	.global	__aeabi_idiv
	.align	2
	.global	frameRect
	.syntax unified
	.arm
	.fpu vfp
	.type	frameRect, %function
frameRect:
	@ args = 72, pretend = 16, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	add	ip, fp, #4
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #8]
	ldr	r1, [fp, #68]
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #72]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-28]
	sub	ip, fp, #24
	sub	r3, fp, #40
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-24]	@ float
	ldr	r1, [fp, #-20]	@ float
	ldr	r2, [fp, #-16]	@ float
	ldr	r3, [fp, #-12]	@ float
	vmov	s12, r0
	vmov	s13, r1
	vmov	s14, r2
	vmov	s15, r3
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #16
	bx	lr
	.size	frameRect, .-frameRect
	.align	2
	.global	frameRectCup
	.syntax unified
	.arm
	.fpu vfp
	.type	frameRectCup, %function
frameRectCup:
	@ args = 164, pretend = 16, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	add	ip, fp, #4
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #8]
	ldr	r1, [fp, #160]
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #164]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-28]
	sub	ip, fp, #24
	sub	r3, fp, #40
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	r0, [fp, #-24]	@ float
	ldr	r1, [fp, #-20]	@ float
	ldr	r2, [fp, #-16]	@ float
	ldr	r3, [fp, #-12]	@ float
	vmov	s12, r0
	vmov	s13, r1
	vmov	s14, r2
	vmov	s15, r3
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #16
	bx	lr
	.size	frameRectCup, .-frameRectCup
	.align	2
	.global	tickBoil
	.syntax unified
	.arm
	.fpu vfp
	.type	tickBoil, %function
tickBoil:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	vpush.64	{d8}
	add	fp, sp, #12
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, .L129+16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L120
	ldr	r3, .L129+20
	vldr.64	d7, [r3]
	vldr.64	d6, .L129
	vadd.f64	d8, d7, d6
	bl	GetTime
	vmov.f64	d7, d0
	vcmpe.f64	d8, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L128
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #56]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #60]
	b	.L120
.L128:
	ldr	r3, .L129+24
	vldr.64	d7, [r3]
	vldr.64	d6, .L129+8
	vadd.f64	d8, d7, d6
	bl	GetTime
	vmov.f64	d7, d0
	vcmpe.f64	d8, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L120
	ldr	r3, .L129+28
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	StopSound
	mov	r0, #10
	bl	PlaySoundFx
	ldr	r3, [fp, #-24]
	mov	r2, #1
	strb	r2, [r3, #20]
	bl	GetTime
	vmov.f64	d7, d0
	ldr	r3, .L129+24
	vstr.64	d7, [r3]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #60]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	ble	.L125
	mov	r3, #1
	str	r3, [fp, #-16]
.L125:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #60]
.L120:
	sub	sp, fp, #12
	@ sp needed
	vldm	sp!, {d8}
	pop	{fp, pc}
.L130:
	.align	3
.L129:
	.word	0
	.word	1074266112
	.word	0
	.word	1071644672
	.word	triggerHotWater
	.word	boilingTime
	.word	lastBoongBoongBoongTime
	.word	boongFx
	.size	tickBoil, .-tickBoil
	.align	2
	.global	highlightItem
	.syntax unified
	.arm
	.fpu vfp
	.type	highlightItem, %function
highlightItem:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #96
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-20]
	vstr.32	s15, [fp, #-16]
	ldr	r3, [fp, #-52]
	vldr.32	s14, [fp, #-20]
	vldr.32	s15, [fp, #-16]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-28]
	vstr.32	s15, [fp, #-24]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #24]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #28]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #48]	@ float
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #52]	@ float
	str	r3, [fp, #-32]	@ float
	vldr.32	s10, [fp, #-44]
	vldr.32	s11, [fp, #-40]
	vldr.32	s12, [fp, #-36]
	vldr.32	s13, [fp, #-32]
	vldr.32	s14, [fp, #-28]
	vldr.32	s15, [fp, #-24]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L132
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #56]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #60]
	cmp	r2, r3
	ble	.L132
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-48]
	ldr	r2, [r2, #60]
	add	r2, r2, #1
	ldr	r4, [fp, #-48]
	ldr	r5, [fp, #-48]
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	mov	r3, #1
	b	.L134
.L132:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #56]
	ldr	r2, [fp, #-48]
	ldr	r2, [r2, #60]
	ldr	r4, [fp, #-48]
	ldr	r5, [fp, #-48]
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	mov	r3, #0
.L134:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	highlightItem, .-highlightItem
	.global	menuCustomer1
	.bss
	.align	3
	.type	menuCustomer1, %object
	.size	menuCustomer1, 96
menuCustomer1:
	.space	96
	.global	menuCustomer2
	.align	3
	.type	menuCustomer2, %object
	.size	menuCustomer2, 96
menuCustomer2:
	.space	96
	.global	menuFallingItems
	.align	2
	.type	menuFallingItems, %object
	.size	menuFallingItems, 480
menuFallingItems:
	.space	480
	.global	options
	.align	2
	.type	options, %object
	.size	options, 4
options:
	.space	4
	.global	movingClouds
	.align	2
	.type	movingClouds, %object
	.size	movingClouds, 280
movingClouds:
	.space	280
	.global	movingStars
	.align	2
	.type	movingStars, %object
	.size	movingStars, 72
movingStars:
	.space	72
	.global	currentBgm
	.align	2
	.type	currentBgm, %object
	.size	currentBgm, 4
currentBgm:
	.space	4
	.global	isCurrentBgmPaused
	.type	isCurrentBgmPaused, %object
	.size	isCurrentBgmPaused, 1
isCurrentBgmPaused:
	.space	1
	.global	loadDurationTimer
	.align	3
	.type	loadDurationTimer, %object
	.size	loadDurationTimer, 8
loadDurationTimer:
	.space	8
	.global	isGlobalAssetsLoadFinished
	.type	isGlobalAssetsLoadFinished, %object
	.size	isGlobalAssetsLoadFinished, 1
isGlobalAssetsLoadFinished:
	.space	1
	.global	currentColorIndex
	.data
	.align	2
	.type	currentColorIndex, %object
	.size	currentColorIndex, 4
currentColorIndex:
	.word	3
	.global	dayNightCycleDuration
	.align	2
	.type	dayNightCycleDuration, %object
	.size	dayNightCycleDuration, 4
dayNightCycleDuration:
	.word	1123024896
	.global	colorTransitionTime
	.align	2
	.type	colorTransitionTime, %object
	.size	colorTransitionTime, 4
colorTransitionTime:
	.word	1056964608
	.section	.rodata
	.align	2
.LC35:
	.ascii	"%Y-%m-%d %H:%M:%S\000"
	.align	2
.LC36:
	.ascii	"[%s] \000"
	.align	2
.LC37:
	.ascii	"[DEBUG]: \000"
	.align	2
.LC38:
	.ascii	"[INFO] : \000"
	.align	2
.LC39:
	.ascii	"[WARN] : \000"
	.align	2
.LC40:
	.ascii	"[ERROR]: \000"
	.align	2
.LC41:
	.ascii	"[FATAL]: \000"
	.text
	.align	2
	.global	CustomLogger
	.syntax unified
	.arm
	.fpu vfp
	.type	CustomLogger, %function
CustomLogger:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #104
	str	r0, [fp, #-96]
	str	r1, [fp, #-100]
	str	r2, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-84]
	sub	r3, fp, #80
	mov	r2, #60
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r0, #0
	bl	time
	mov	r3, r0
	str	r3, [fp, #-88]
	sub	r3, fp, #88
	mov	r0, r3
	bl	localtime
	str	r0, [fp, #-12]
	sub	r0, fp, #84
	ldr	r3, [fp, #-12]
	ldr	r2, .L148
	mov	r1, #64
	bl	strftime
	sub	r3, fp, #84
	mov	r1, r3
	ldr	r0, .L148+4
	bl	printf
	ldr	r3, [fp, #-104]
	ldr	r2, [fp, #-100]
	mov	r1, #0
	mov	r0, #0
	bl	vsnprintf
	mov	r3, r0
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-96]
	sub	r3, r3, #2
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L147
.L138:
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L137
.L142:
	ldr	r0, .L148+8
	bl	printf
	b	.L143
.L141:
	ldr	r0, .L148+12
	bl	printf
	b	.L143
.L140:
	ldr	r0, .L148+16
	bl	printf
	b	.L143
.L139:
	ldr	r0, .L148+20
	bl	printf
	b	.L143
.L137:
	ldr	r0, .L148+24
	bl	printf
	b	.L143
.L147:
	nop
.L143:
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-104]
	ldr	r2, [fp, #-100]
	ldr	r0, [fp, #-20]
	bl	vsnprintf
	ldr	r3, .L148+28
	ldr	r3, [r3]
	cmp	r3, #25
	bne	.L144
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L145
.L146:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	ldr	r0, .L148+32
	ldr	r3, [fp, #-8]
	ldr	r1, .L148+32
	lsl	r3, r3, #3
	add	r3, r0, r3
	lsl	r2, r2, #3
	add	r2, r1, r2
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L145:
	ldr	r3, [fp, #-8]
	cmp	r3, #23
	ble	.L146
	ldr	r3, .L148+28
	mov	r2, #24
	str	r2, [r3]
.L144:
	ldr	r3, .L148+28
	ldr	r3, [r3]
	ldr	r1, .L148+32
	ldr	r2, [fp, #-96]
	str	r2, [r1, r3, lsl #3]
	ldr	r3, .L148+28
	ldr	r3, [r3]
	ldr	r2, .L148+32
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	str	r2, [r3, #4]
	ldr	r3, .L148+28
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L148+28
	str	r3, [r2]
	ldr	r0, [fp, #-20]
	bl	puts
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L149:
	.align	2
.L148:
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	DebugLogsIndex
	.word	DebugLogs
	.size	CustomLogger, .-CustomLogger
	.align	2
	.global	LogDebug
	.syntax unified
	.arm
	.fpu vfp
	.type	LogDebug, %function
LogDebug:
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	add	r3, fp, #8
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #4]
	mov	r0, #2
	bl	CustomLogger
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #16
	bx	lr
	.size	LogDebug, .-LogDebug
	.align	2
	.global	Log
	.syntax unified
	.arm
	.fpu vfp
	.type	Log, %function
Log:
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #20
	str	r0, [fp, #-20]
	add	r3, fp, #8
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-20]
	bl	CustomLogger
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #12
	bx	lr
	.size	Log, .-Log
	.section	.rodata
	.align	2
.LC0:
	.byte	80
	.byte	80
	.byte	80
	.byte	-1
	.align	2
.LC1:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.align	2
.LC2:
	.byte	-3
	.byte	-7
	.byte	0
	.byte	-1
	.align	2
.LC3:
	.byte	-26
	.byte	41
	.byte	55
	.byte	-1
	.align	2
.LC4:
	.byte	-1
	.byte	-95
	.byte	0
	.byte	-1
	.text
	.align	2
	.global	GetTextColorFromLogType
	.syntax unified
	.arm
	.fpu vfp
	.type	GetTextColorFromLogType, %function
GetTextColorFromLogType:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #2
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L153
.L155:
	.word	.L159
	.word	.L158
	.word	.L157
	.word	.L156
	.word	.L154
.L159:
	ldr	r3, .L162
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L161
.L158:
	ldr	r3, .L162+4
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L161
.L157:
	ldr	r3, .L162+8
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L161
.L156:
	ldr	r3, .L162+12
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L161
.L154:
	ldr	r3, .L162+16
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	b	.L161
.L153:
	ldr	r3, .L162+4
	ldr	r3, [r3]
	str	r3, [fp, #-8]
.L161:
	mov	r3, #0
	ldrb	r2, [fp, #-8]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #255
	orr	r3, r2, r3
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #65280
	lsl	r2, r2, #8
	orr	r3, r2, r3
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #16711680
	lsl	r2, r2, #16
	orr	r3, r2, r3
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #-16777216
	lsl	r2, r2, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L163:
	.align	2
.L162:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	GetTextColorFromLogType, .-GetTextColorFromLogType
	.section	.rodata
	.align	2
.LC42:
	.ascii	"Ingredient\000"
	.align	2
.LC43:
	.ascii	"%s | XY %.2f,%.2f\000"
	.align	2
.LC5:
	.byte	-11
	.byte	-11
	.byte	-11
	.byte	-1
	.align	2
.LC6:
	.byte	-126
	.byte	-126
	.byte	-126
	.byte	-1
	.text
	.align	2
	.global	DrawDragableItemFrame
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawDragableItemFrame, %function
DrawDragableItemFrame:
	@ args = 64, pretend = 16, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #84
	add	ip, fp, #4
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, .L167+12
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	vldr.32	s10, [fp, #28]
	vldr.32	s11, [fp, #32]
	vldr.32	s12, [fp, #44]
	vldr.32	s13, [fp, #48]
	vldr.32	s14, [fp, #52]
	vldr.32	s15, [fp, #56]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #4]
	ldr	r3, [fp, #20]
	str	r3, [sp]
	add	r3, fp, #4
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
	ldr	r3, .L167+16
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L166
	ldr	r3, .L167+20
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L166
	ldr	r3, [fp, #28]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #32]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #52]	@ float
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #56]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r3, .L167+24
	ldr	r3, [r3]
	str	r3, [fp, #-48]
	vldr.32	s12, [fp, #-44]
	vldr.32	s13, [fp, #-40]
	vldr.32	s14, [fp, #-36]
	vldr.32	s15, [fp, #-32]
	ldr	r0, [fp, #-48]
	vldr.32	s4, .L167
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	vldr.32	s15, [fp, #28]
	vcvt.s32.f32	s16, s15
	vldr.32	s15, [fp, #32]
	vldr.32	s14, .L167+4
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L167+28
	ldr	r3, [r3]
	str	r3, [fp, #-52]
	vldr.32	s0, .L167+8
	ldr	r0, [fp, #-52]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #300
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	vldr.32	s15, [fp, #28]
	vcvt.f64.f32	d6, s15
	vldr.32	s15, [fp, #32]
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L167+32
	ldr	r0, .L167+36
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #28]	@ float
	str	r3, [fp, #-60]	@ float
	vldr.32	s15, [fp, #32]
	vldr.32	s14, .L167+4
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-56]
	ldr	r3, .L167+40
	ldr	r3, [r3]
	str	r3, [fp, #-64]
	vldr.32	s14, [fp, #-60]
	vldr.32	s15, [fp, #-56]
	ldr	r4, .L167+44
	ldr	r3, [fp, #-64]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L167
	vldr.32	s2, .L167+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L166:
	nop
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, lr}
	add	sp, sp, #16
	bx	lr
.L168:
	.align	2
.L167:
	.word	1065353216
	.word	1101004800
	.word	1060320051
	.word	.LC5
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	.LC6
	.word	.LC42
	.word	.LC43
	.word	.LC1
	.word	meowFont
	.size	DrawDragableItemFrame, .-DrawDragableItemFrame
	.section	.rodata
	.align	2
.LC44:
	.ascii	"[Yes]\000"
	.align	2
.LC45:
	.ascii	"[No]\000"
	.align	2
.LC46:
	.ascii	"%d | XY %.2f,%.2f | R %.2f | G %.2f | Behide %s\000"
	.text
	.align	2
	.global	DrawMenuFallingItems
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawMenuFallingItems, %function
DrawMenuFallingItems:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8, d9}
	add	fp, sp, #24
	sub	sp, sp, #236
	vstr.64	d0, [fp, #-220]
	mov	r3, r0
	strb	r3, [fp, #-221]
	ldrb	r3, [fp, #-221]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L170
	mov	r3, #0
	b	.L171
.L170:
	mov	r3, #11
.L171:
	str	r3, [fp, #-40]
	ldrb	r3, [fp, #-221]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L172
	mov	r3, #11
	b	.L173
.L172:
	mov	r3, #20
.L173:
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-32]
	b	.L174
.L185:
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, .L188+4
	add	r3, r3, r2
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #16]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-220]
	vmul.f64	d7, d5, d7
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #4]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #20]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-220]
	vmul.f64	d7, d5, d7
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #8]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #12]
	ldr	r1, .L188+8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L188
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-68]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #12]
	ldr	r1, .L188+8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L188
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-64]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #12]
	mov	r3, #0
	str	r3, [fp, #-84]	@ float
	mov	r3, #0
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-48]
	ldr	r1, [r3, #12]
	ldr	r0, .L188+8
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r0, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-76]
	ldr	r3, [fp, #-48]
	ldr	r1, [r3, #12]
	ldr	r0, .L188+8
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r0, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-72]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-100]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-96]	@ float
	ldr	r3, [fp, #-48]
	ldr	r1, [r3, #12]
	ldr	r0, .L188+8
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r0, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-92]
	ldr	r3, [fp, #-48]
	ldr	r1, [r3, #12]
	ldr	r0, .L188+8
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r0, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-88]
	ldr	r3, [fp, #-48]
	vldr.32	s10, [r3, #8]
	ldr	r3, .L188+44
	ldr	r3, [r3]
	str	r3, [fp, #-104]
	vldr.32	s8, [fp, #-68]
	vldr.32	s9, [fp, #-64]
	vldr.32	s5, [fp, #-100]
	vldr.32	s6, [fp, #-96]
	vldr.32	s7, [fp, #-92]
	vldr.32	s11, [fp, #-88]
	vldr.32	s12, [fp, #-84]
	vldr.32	s13, [fp, #-80]
	vldr.32	s14, [fp, #-76]
	vldr.32	s15, [fp, #-72]
	ldr	r1, .L188+8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r2, [fp, #-104]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s5
	vmov.f32	s5, s6
	vmov.f32	s6, s7
	vmov.f32	s7, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTexturePro
	ldr	r3, .L188+12
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L175
	ldr	r3, .L188+16
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L175
	vldr.32	s15, [fp, #-68]
	vneg.f32	s14, s15
	vldr.32	s15, [fp, #-64]
	vneg.f32	s15, s15
	vstr.32	s14, [fp, #-208]
	vstr.32	s15, [fp, #-204]
	vldr.32	s15, [fp, #-68]
	vneg.f32	s15, s15
	ldr	r3, [fp, #-64]	@ float
	vstr.32	s15, [fp, #-200]
	str	r3, [fp, #-196]	@ float
	ldr	r2, [fp, #-68]	@ float
	ldr	r3, [fp, #-64]	@ float
	str	r2, [fp, #-192]	@ float
	str	r3, [fp, #-188]	@ float
	ldr	r3, [fp, #-68]	@ float
	vldr.32	s15, [fp, #-64]
	vneg.f32	s15, s15
	str	r3, [fp, #-184]	@ float
	vstr.32	s15, [fp, #-180]
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L176
.L189:
	.align	2
.L188:
	.word	1073741824
	.word	menuFallingItems
	.word	menuFallingItemTextures
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	.LC6
	.word	550
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC1
	.word	meowFont
	.word	1016003125
	.word	1060320051
	.word	1065353216
	.word	1149698048
	.word	1148846080
	.word	-999292928
	.word	1156579328
	.word	1101004800
	.word	-1006174208
.L177:
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #180
	vldr.32	s15, [r3]
	vcvt.f64.f32	d8, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vldr.32	s14, .L188+52
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	cos
	vmov.f64	d7, d0
	vmul.f64	d8, d8, d7
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #176
	vldr.32	s15, [r3]
	vcvt.f64.f32	d9, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vldr.32	s14, .L188+52
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sin
	vmov.f64	d7, d0
	vmul.f64	d7, d9, d7
	vsub.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-52]
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #180
	vldr.32	s15, [r3]
	vcvt.f64.f32	d8, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vldr.32	s14, .L188+52
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sin
	vmov.f64	d7, d0
	vmul.f64	d8, d8, d7
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #176
	vldr.32	s15, [r3]
	vcvt.f64.f32	d9, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vldr.32	s14, .L188+52
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	cos
	vmov.f64	d7, d0
	vmul.f64	d7, d9, d7
	vadd.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-56]
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3]
	vldr.32	s15, [fp, #-52]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #180
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3, #4]
	vldr.32	s15, [fp, #-56]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #3
	sub	r2, fp, #28
	add	r3, r2, r3
	sub	r3, r3, #176
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L176:
	ldr	r3, [fp, #-36]
	cmp	r3, #3
	ble	.L177
	ldr	r3, .L188+20
	ldr	r3, [r3]
	str	r3, [fp, #-140]
	vldr.32	s12, [fp, #-200]
	vldr.32	s13, [fp, #-196]
	vldr.32	s14, [fp, #-208]
	vldr.32	s15, [fp, #-204]
	ldr	r0, [fp, #-140]
	vldr.32	s4, .L188+60
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawLineEx
	ldr	r3, .L188+20
	ldr	r3, [r3]
	str	r3, [fp, #-144]
	vldr.32	s12, [fp, #-192]
	vldr.32	s13, [fp, #-188]
	vldr.32	s14, [fp, #-200]
	vldr.32	s15, [fp, #-196]
	ldr	r0, [fp, #-144]
	vldr.32	s4, .L188+60
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawLineEx
	ldr	r3, .L188+20
	ldr	r3, [r3]
	str	r3, [fp, #-148]
	vldr.32	s12, [fp, #-184]
	vldr.32	s13, [fp, #-180]
	vldr.32	s14, [fp, #-192]
	vldr.32	s15, [fp, #-188]
	ldr	r0, [fp, #-148]
	vldr.32	s4, .L188+60
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawLineEx
	ldr	r3, .L188+20
	ldr	r3, [r3]
	str	r3, [fp, #-152]
	vldr.32	s12, [fp, #-208]
	vldr.32	s13, [fp, #-204]
	vldr.32	s14, [fp, #-184]
	vldr.32	s15, [fp, #-180]
	ldr	r0, [fp, #-152]
	vldr.32	s4, .L188+60
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawLineEx
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.s32.f32	s16, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vcvt.s32.f32	s17, s15
	ldr	r3, .L188+24
	ldr	r3, [r3]
	str	r3, [fp, #-156]
	vldr.32	s0, .L188+56
	ldr	r0, [fp, #-156]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [sp]
	mov	r3, #20
	ldr	r2, .L188+28
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d4, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vcvt.f64.f32	d7, s15
	ldr	r3, [fp, #-48]
	vldr.32	s13, [r3, #8]
	vcvt.f64.f32	d6, s13
	ldr	r3, [fp, #-48]
	vldr.32	s11, [r3, #16]
	vcvt.f64.f32	d5, s11
	ldrb	r3, [fp, #-221]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	ldr	r3, .L188+32
	b	.L179
.L178:
	ldr	r3, .L188+36
.L179:
	str	r3, [sp, #24]
	vstr.64	d5, [sp, #16]
	vstr.64	d6, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d4
	ldr	r1, [fp, #-32]
	ldr	r0, .L188+40
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-164]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-160]	@ float
	ldr	r3, .L188+44
	ldr	r3, [r3]
	str	r3, [fp, #-168]
	vldr.32	s14, [fp, #-164]
	vldr.32	s15, [fp, #-160]
	ldr	r4, .L188+48
	ldr	r3, [fp, #-168]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L188+60
	vldr.32	s2, .L188+80
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L175:
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3, #4]
	vldr.32	s13, .L188+84
	vldr.32	s15, .L188+64
	vadd.f32	s15, s13, s15
	vldr.32	s13, .L188+68
	vadd.f32	s15, s15, s13
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L180
	vldr.32	s15, .L188+72
	vcvt.f64.f32	d7, s15
	vldr.32	s12, .L188+72
	vldr.32	s13, .L188+76
	vadd.f32	s13, s12, s13
	vldr.32	s12, .L188+80
	vsub.f32	s13, s13, s12
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s18, d7
	vldr.32	s15, .L188+84
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L190
	vldr.64	d0, .L190+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vsub.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s18, [r3]
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #4]
	mov	r1, #7
	mov	r0, #0
	bl	GetRandomValue
	mov	r2, r0
	ldr	r3, [fp, #-48]
	str	r2, [r3, #12]
	vldr.64	d1, .L190+16
	vldr.64	d0, .L190+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #16]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #16]
	vldr.32	s14, .L190+48
	vmul.f32	s15, s15, s14
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #16]
	vldr.64	d1, .L190+32
	vldr.64	d0, .L190+40
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #8]
	mov	r1, #3
	mvn	r0, #2
	bl	GetRandomValue
	vmov	s15, r0	@ int
	vcvt.f32.s32	s15, s15
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #20]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #20]
	vldr.32	s14, .L190+48
	vmul.f32	s15, s15, s14
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3, #20]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #20]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	cmp	r3, #0
	rsblt	r3, r3, #0
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #16]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L182
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #16]	@ float
	ldr	r3, [fp, #-48]
	str	r2, [r3, #20]	@ float
.L182:
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #20]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L180
	ldr	r3, [fp, #-48]
	ldr	r2, .L190+52
	str	r2, [r3, #20]	@ float
.L180:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L174:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L185
	nop
	nop
	sub	sp, fp, #24
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, fp, pc}
.L191:
	.align	3
.L190:
	.word	0
	.word	1083129856
	.word	0
	.word	1080623104
	.word	0
	.word	1074266112
	.word	0
	.word	1072693248
	.word	0
	.word	1081507840
	.word	0
	.word	-1065975808
	.word	1120403456
	.word	1120403456
	.size	DrawMenuFallingItems, .-DrawMenuFallingItems
	.section	.rodata
	.align	2
.LC47:
	.ascii	"Stars\000"
	.align	2
.LC48:
	.ascii	"%s | XY %.2f,%.2f | Speed %.2f | Scale %.2f\000"
	.align	2
.LC49:
	.ascii	"Cloud\000"
	.text
	.align	2
	.global	DrawMovingCloudAndStar
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawMovingCloudAndStar, %function
DrawMovingCloudAndStar:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #164
	vstr.64	d0, [fp, #-148]
	mov	r3, #7
	str	r3, [fp, #-32]
	mov	r3, #2
	str	r3, [fp, #-36]
	bl	IsNight
	mov	r3, r0
	cmp	r3, #0
	beq	.L193
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L194
.L206:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L234+24
	add	r3, r3, r2
	str	r3, [fp, #-48]
	mov	r3, #0
	strb	r3, [fp, #-49]
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vldr.32	s14, .L234+32
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L195
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3]
	vldr.32	s13, .L234+32
	vldr.32	s15, .L234+28
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L195
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L234+16
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L195
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3, #4]
	vldr.32	s13, .L234+16
	vldr.32	s15, .L234+20
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L195
	mov	r3, #1
	b	.L200
.L195:
	mov	r3, #0
.L200:
	strb	r3, [fp, #-50]
	ldrb	r3, [fp, #-50]
	and	r3, r3, #1
	strb	r3, [fp, #-50]
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L201
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-148]
	vmul.f64	d7, d5, d7
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L234+32
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L202
	vldr.32	s14, .L234+32
	vldr.32	s15, .L234+28
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L234
	vldr.64	d0, .L234+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vadd.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3]
	b	.L202
.L235:
	.align	3
.L234:
	.word	0
	.word	1082081280
	.word	0
	.word	1079574528
	.word	-1006174208
	.word	1149698048
	.word	movingStars
	.word	1156579328
	.word	-999292928
.L201:
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #8]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-148]
	vmul.f64	d7, d5, d7
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-48]
	vldr.32	s14, [r3]
	vldr.32	s13, .L234+32
	vldr.32	s15, .L234+28
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L202
	vldr.32	s13, .L234+32
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vsub.f32	s15, s13, s15
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L236
	vldr.64	d0, .L236+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vsub.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-48]
	vstr.32	s15, [r3]
.L202:
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vcvt.s32.f32	s15, s15
	vmov	r0, s15	@ int
	ldr	r3, .L236+36
	ldr	r3, [r3]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-64]
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [r3, #32]
	str	r2, [sp]
	add	r3, r3, #16
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldr	r3, .L236+40
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L205
	ldr	r3, .L236+44
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L205
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-76]	@ float
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-72]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-68]
	ldr	r3, .L236+48
	ldr	r3, [r3]
	str	r3, [fp, #-84]
	vldr.32	s12, [fp, #-80]
	vldr.32	s13, [fp, #-76]
	vldr.32	s14, [fp, #-72]
	vldr.32	s15, [fp, #-68]
	ldr	r0, [fp, #-84]
	vldr.32	s4, .L236+16
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.s32.f32	s16, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L236+20
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L236+52
	ldr	r3, [r3]
	str	r3, [fp, #-88]
	vldr.32	s0, .L236+24
	ldr	r0, [fp, #-88]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #300
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d4, s15
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vcvt.f64.f32	d7, s15
	ldr	r3, [fp, #-48]
	vldr.32	s13, [r3, #8]
	vcvt.f64.f32	d6, s13
	ldr	r3, [fp, #-48]
	vldr.32	s11, [r3, #12]
	vcvt.f64.f32	d5, s11
	vstr.64	d5, [sp, #16]
	vstr.64	d6, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d4
	ldr	r1, .L236+56
	ldr	r0, .L236+60
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-96]	@ float
	ldr	r3, [fp, #-48]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L236+20
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-92]
	ldr	r3, .L236+36
	ldr	r3, [r3]
	str	r3, [fp, #-100]
	vldr.32	s14, [fp, #-96]
	vldr.32	s15, [fp, #-92]
	ldr	r4, .L236+64
	ldr	r3, [fp, #-100]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L236+16
	vldr.32	s2, .L236+20
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L205:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L194:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L206
	b	.L233
.L193:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L208
.L220:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, .L236+68
	add	r3, r3, r2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #36]
	strb	r3, [fp, #-41]
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vldr.32	s14, .L236+72
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L209
	ldr	r3, [fp, #-40]
	vldr.32	s14, [r3]
	vldr.32	s13, .L236+72
	vldr.32	s15, .L236+76
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L209
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L236+28
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L209
	ldr	r3, [fp, #-40]
	vldr.32	s14, [r3, #4]
	vldr.32	s13, .L236+28
	vldr.32	s15, .L236+32
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L209
	mov	r3, #1
	b	.L214
.L237:
	.align	3
.L236:
	.word	0
	.word	1082081280
	.word	0
	.word	1079574528
	.word	1065353216
	.word	1101004800
	.word	1060320051
	.word	-1006174208
	.word	1149698048
	.word	.LC1
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	.LC6
	.word	.LC47
	.word	.LC48
	.word	meowFont
	.word	movingClouds
	.word	-999292928
	.word	1156579328
.L209:
	mov	r3, #0
.L214:
	strb	r3, [fp, #-42]
	ldrb	r3, [fp, #-42]
	and	r3, r3, #1
	strb	r3, [fp, #-42]
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L215
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #8]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-148]
	vmul.f64	d7, d5, d7
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-40]
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L236+72
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L216
	vldr.32	s14, .L236+72
	vldr.32	s15, .L236+76
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L238
	vldr.64	d0, .L238+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vadd.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3]
	vldr.32	s15, .L238+24
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L238+16
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3, #4]
	b	.L216
.L215:
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #8]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-148]
	vmul.f64	d7, d5, d7
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-40]
	vldr.32	s14, [r3]
	vldr.32	s13, .L238+28
	vldr.32	s15, .L238+32
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L216
	vldr.32	s13, .L238+28
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vsub.f32	s15, s13, s15
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L238
	vldr.64	d0, .L238+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vsub.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3]
	vldr.32	s15, .L238+24
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L238+16
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, [fp, #-40]
	vstr.32	s15, [r3, #4]
.L216:
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #4]
	vcvt.s32.f32	s15, s15
	vmov	r0, s15	@ int
	ldr	r3, .L238+48
	ldr	r3, [r3]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-104]
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [r3, #32]
	str	r2, [sp]
	add	r3, r3, #16
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldr	r3, .L238+52
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L219
	ldr	r3, .L238+56
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L219
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-120]	@ float
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #4]	@ float
	str	r3, [fp, #-116]	@ float
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-112]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-108]
	ldr	r3, .L238+60
	ldr	r3, [r3]
	str	r3, [fp, #-124]
	vldr.32	s12, [fp, #-120]
	vldr.32	s13, [fp, #-116]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-108]
	ldr	r0, [fp, #-124]
	vldr.32	s4, .L238+36
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vcvt.s32.f32	s16, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L238+40
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L238+64
	ldr	r3, [r3]
	str	r3, [fp, #-128]
	vldr.32	s0, .L238+44
	ldr	r0, [fp, #-128]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #300
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3]
	vcvt.f64.f32	d4, s15
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #4]
	vcvt.f64.f32	d7, s15
	ldr	r3, [fp, #-40]
	vldr.32	s13, [r3, #8]
	vcvt.f64.f32	d6, s13
	ldr	r3, [fp, #-40]
	vldr.32	s11, [r3, #12]
	vcvt.f64.f32	d5, s11
	vstr.64	d5, [sp, #16]
	vstr.64	d6, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d4
	ldr	r1, .L238+68
	ldr	r0, .L238+72
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-136]	@ float
	ldr	r3, [fp, #-40]
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L238+40
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-132]
	ldr	r3, .L238+48
	ldr	r3, [r3]
	str	r3, [fp, #-140]
	vldr.32	s14, [fp, #-136]
	vldr.32	s15, [fp, #-132]
	ldr	r4, .L238+76
	ldr	r3, [fp, #-140]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L238+36
	vldr.32	s2, .L238+40
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L219:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L208:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L220
.L233:
	nop
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, pc}
.L239:
	.align	3
.L238:
	.word	0
	.word	1082081280
	.word	0
	.word	1079574528
	.word	0
	.word	0
	.word	-1006174208
	.word	-999292928
	.word	1156579328
	.word	1065353216
	.word	1101004800
	.word	1060320051
	.word	.LC1
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	.LC6
	.word	.LC49
	.word	.LC48
	.word	meowFont
	.size	DrawMovingCloudAndStar, .-DrawMovingCloudAndStar
	.align	2
	.global	RandomCustomerTimeoutBasedOnDifficulty
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomCustomerTimeoutBasedOnDifficulty, %function
RandomCustomerTimeoutBasedOnDifficulty:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L247+40
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L241
.L243:
	.word	.L245
	.word	.L244
	.word	.L242
	.word	.L245
	.word	.L244
	.word	.L242
.L245:
	vldr.64	d1, .L247
	vldr.64	d0, .L247+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L246
.L244:
	vldr.64	d1, .L247+16
	vldr.64	d0, .L247+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L246
.L242:
	vldr.64	d1, .L247+24
	vldr.64	d0, .L247+32
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L246
.L241:
	vldr.64	d1, .L247
	vldr.64	d0, .L247+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
.L246:
	vmov.f64	d0, d7
	pop	{fp, pc}
.L248:
	.align	3
.L247:
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
RandomCustomerInitialResetBasedOnDifficulty:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, .L256+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L250
.L252:
	.word	.L254
	.word	.L253
	.word	.L251
	.word	.L254
	.word	.L253
	.word	.L251
.L254:
	vldr.64	d1, .L256
	vldr.64	d0, .L256+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-16]
	vstr.64	d7, [r3]
	ldr	r3, [fp, #-16]
	add	r4, r3, #8
	vldr.64	d1, .L256+16
	vldr.64	d0, .L256+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	ldr	r3, [fp, #-16]
	add	r4, r3, #16
	vldr.64	d1, .L256+32
	vldr.64	d0, .L256+40
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	b	.L255
.L253:
	vldr.64	d1, .L256
	vldr.64	d0, .L256+48
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-16]
	vstr.64	d7, [r3]
	ldr	r3, [fp, #-16]
	add	r4, r3, #8
	vldr.64	d1, .L256+40
	vldr.64	d0, .L256+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	ldr	r3, [fp, #-16]
	add	r4, r3, #16
	vldr.64	d1, .L256+56
	vldr.64	d0, .L256+64
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	b	.L255
.L251:
	vldr.64	d1, .L256+8
	vldr.64	d0, .L256+48
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-16]
	vstr.64	d7, [r3]
	ldr	r3, [fp, #-16]
	add	r4, r3, #8
	vldr.64	d1, .L256
	vldr.64	d0, .L256+72
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	ldr	r3, [fp, #-16]
	add	r4, r3, #16
	vldr.64	d1, .L256+40
	vldr.64	d0, .L256
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	b	.L255
.L250:
	vldr.64	d1, .L256
	vldr.64	d0, .L256+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	ldr	r3, [fp, #-16]
	vstr.64	d7, [r3]
	ldr	r3, [fp, #-16]
	add	r4, r3, #8
	vldr.64	d1, .L256+16
	vldr.64	d0, .L256+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	ldr	r3, [fp, #-16]
	add	r4, r3, #16
	vldr.64	d1, .L256+32
	vldr.64	d0, .L256+40
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vstr.64	d7, [r4]
	nop
.L255:
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L257:
	.align	3
.L256:
	.word	0
	.word	1075314688
	.word	0
	.word	1074790400
	.word	0
	.word	1076756480
	.word	0
	.word	1075052544
	.word	0
	.word	1077477376
	.word	0
	.word	1076101120
	.word	0
	.word	1073741824
	.word	0
	.word	1077149696
	.word	0
	.word	1076363264
	.word	0
	.word	1074266112
	.word	options
	.size	RandomCustomerInitialResetBasedOnDifficulty, .-RandomCustomerInitialResetBasedOnDifficulty
	.align	2
	.global	RandomCustomerResetBasedOnDifficulty
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomCustomerResetBasedOnDifficulty, %function
RandomCustomerResetBasedOnDifficulty:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L265+40
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L259
.L261:
	.word	.L263
	.word	.L262
	.word	.L260
	.word	.L263
	.word	.L262
	.word	.L260
.L263:
	vldr.64	d1, .L265
	vldr.64	d0, .L265+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L264
.L262:
	vldr.64	d1, .L265+8
	vldr.64	d0, .L265+16
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L264
.L260:
	vldr.64	d1, .L265+24
	vldr.64	d0, .L265+32
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L264
.L259:
	vldr.64	d1, .L265
	vldr.64	d0, .L265+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
.L264:
	vmov.f64	d0, d7
	pop	{fp, pc}
.L266:
	.align	3
.L265:
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
.LC50:
	.ascii	"New order: %s\000"
	.text
	.align	2
	.global	RandomGenerateOrder
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomGenerateOrder, %function
RandomGenerateOrder:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
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
	beq	.L268
	ldr	r1, .L279
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.L269
.L268:
	ldr	r1, .L279+4
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.L269:
	ldr	r1, .L279+8
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	mov	r1, #100
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L278
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L272
	ldr	r1, .L279+12
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.L273
.L272:
	ldr	r1, .L279+16
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.L273:
	mov	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	ble	.L274
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L274
	mov	r3, #1
	strb	r3, [fp, #-5]
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L275
	ldr	r1, .L279+20
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.L274
.L275:
	ldr	r1, .L279+24
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.L274:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L276
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	ble	.L276
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L276
	mov	r1, #1
	mov	r0, #0
	bl	GetRandomValue
	mov	r3, r0
	cmp	r3, #0
	beq	.L277
	ldr	r1, .L279+28
	ldr	r0, [fp, #-16]
	bl	FTStrcat
	b	.L276
.L277:
	ldr	r1, .L279+32
	ldr	r0, [fp, #-16]
	bl	FTStrcat
.L276:
	ldr	r1, [fp, #-16]
	ldr	r0, .L279+36
	bl	TextFormat
	mov	r3, r0
	mov	r0, r3
	bl	LogDebug
	b	.L267
.L278:
	nop
.L267:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L280:
	.align	2
.L279:
	.word	.LC20
	.word	.LC19
	.word	.LC21
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC50
	.size	RandomGenerateOrder, .-RandomGenerateOrder
	.section	.rodata
	.align	2
.LC51:
	.ascii	"CPY\000"
	.align	2
.LC52:
	.ascii	"GPY\000"
	.align	2
.LC53:
	.ascii	"%s | Blink %s (%.2f) %.2f/%.2f\000"
	.align	2
.LC54:
	.ascii	"Timeout %.2f/%.2f\000"
	.align	2
.LC55:
	.ascii	"Reset %.2f/%.2f\000"
	.align	2
.LC56:
	.ascii	"Visible %s | Order %s\000"
	.text
	.align	2
	.global	DrawCustomer
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawCustomer, %function
DrawCustomer:
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #24
	sub	sp, sp, #316
	str	r0, [fp, #-304]
	ldr	r2, [fp, #-304]
	sub	r3, fp, #104
	add	r2, r2, #68
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, [fp, #-304]
	ldr	r3, [r3, #76]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-304]
	cmp	r3, #0
	beq	.L312
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L313
	ldr	r3, [fp, #-304]
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L285
	cmp	r3, #2
	bhi	.L314
	cmp	r3, #0
	beq	.L287
	cmp	r3, #1
	beq	.L288
	b	.L314
.L287:
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L289
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	sub	ip, fp, #96
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L290
.L289:
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	sub	ip, fp, #96
	add	lr, r3, #4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L290:
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-108]
	vldr.32	s14, [fp, #-104]
	vldr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-108]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-80]
	str	r3, [sp]
	sub	r3, fp, #96
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	b	.L284
.L288:
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L292
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #40
	sub	ip, fp, #76
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L293
.L292:
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #56
	sub	ip, fp, #76
	add	lr, r3, #4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L293:
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-112]
	vldr.32	s14, [fp, #-104]
	vldr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-112]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-60]
	str	r3, [sp]
	sub	r3, fp, #76
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	b	.L284
.L285:
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L294
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #80
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L295
.L294:
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #96
	sub	ip, fp, #56
	add	lr, r3, #4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L295:
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-116]
	vldr.32	s14, [fp, #-104]
	vldr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-116]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	sub	r3, fp, #56
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	b	.L284
.L313:
	nop
	b	.L284
.L314:
	nop
.L284:
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L296
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L296
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+8
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-124]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-120]
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-128]
	vldr.32	s14, [fp, #-124]
	vldr.32	s15, [fp, #-120]
	ldr	r3, .L315+16
	ldr	r2, [fp, #-128]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+20
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L297
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+108
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-136]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-132]
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-140]
	vldr.32	s14, [fp, #-136]
	vldr.32	s15, [fp, #-132]
	ldr	r3, .L315+24
	ldr	r2, [fp, #-140]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	b	.L298
.L297:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+28
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L298
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+108
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-148]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-144]
	ldr	r3, .L315+12
	ldr	r3, [r3]
	str	r3, [fp, #-152]
	vldr.32	s14, [fp, #-148]
	vldr.32	s15, [fp, #-144]
	ldr	r3, .L315+32
	ldr	r2, [fp, #-152]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L315
	vldr.32	s2, .L315+4
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
.L298:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+36
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L299
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+112
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-160]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-156]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-164]
	vldr.32	s10, [fp, #-160]
	vldr.32	s11, [fp, #-156]
	ldr	r3, .L315+40
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+40
	ldr	r2, [fp, #-164]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
	b	.L300
.L316:
	.align	2
.L315:
	.word	1056964608
	.word	0
	.word	1135542272
	.word	.LC1
	.word	bubbles
	.word	.LC51
	.word	cocoaChon
	.word	.LC52
	.word	greenChon
	.word	.LC23
	.word	condensedMilk
	.word	.LC24
	.word	normalMilk
	.word	.LC25
	.word	marshMellow
	.word	.LC26
	.word	whippedCream
	.word	.LC27
	.word	caramelSauce
	.word	.LC28
	.word	.LC5
	.word	chocolateSauce
	.word	options
	.word	debugToolToggles
	.word	customersImageData
	.word	.LC3
	.word	1120403456
	.word	1136361472
	.word	1137999872
	.word	1125515264
	.word	1065353216
.L299:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+44
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L300
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+112
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-172]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-168]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-176]
	vldr.32	s10, [fp, #-172]
	vldr.32	s11, [fp, #-168]
	ldr	r3, .L315+48
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+48
	ldr	r2, [fp, #-176]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
.L300:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+52
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L301
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+108
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-184]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+116
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-180]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-188]
	vldr.32	s10, [fp, #-184]
	vldr.32	s11, [fp, #-180]
	ldr	r3, .L315+56
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+56
	ldr	r2, [fp, #-188]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
	b	.L302
.L301:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+60
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L302
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+108
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-196]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+116
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-192]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-200]
	vldr.32	s10, [fp, #-196]
	vldr.32	s11, [fp, #-192]
	ldr	r3, .L315+64
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+64
	ldr	r2, [fp, #-200]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
.L302:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+68
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L303
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+112
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-208]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+116
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-204]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-212]
	vldr.32	s10, [fp, #-208]
	vldr.32	s11, [fp, #-204]
	ldr	r3, .L315+72
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+72
	ldr	r2, [fp, #-212]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
	b	.L296
.L303:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	ldr	r1, .L315+76
	mov	r0, r3
	bl	strstr
	mov	r3, r0
	cmp	r3, #0
	beq	.L296
	vldr.32	s15, [fp, #-104]
	vldr.32	s14, .L315+112
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-220]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L315+116
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-216]
	ldr	r3, .L315+80
	ldr	r3, [r3]
	str	r3, [fp, #-224]
	vldr.32	s10, [fp, #-220]
	vldr.32	s11, [fp, #-216]
	ldr	r3, .L315+84
	vldr.32	s12, [r3, #40]
	vldr.32	s13, [r3, #44]
	vldr.32	s14, [r3, #48]
	vldr.32	s15, [r3, #52]
	ldr	r3, .L315+84
	ldr	r2, [fp, #-224]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
.L296:
	ldr	r3, .L315+88
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	ldr	r3, .L315+92
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-240]	@ float
	ldr	r3, [fp, #-100]	@ float
	str	r3, [fp, #-236]	@ float
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #4
	ldr	r3, [r3]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-232]
	ldr	r1, .L315+96
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #8
	ldr	r3, [r3]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-228]
	ldr	r3, .L315+100
	ldr	r3, [r3]
	str	r3, [fp, #-244]
	vldr.32	s12, [fp, #-240]
	vldr.32	s13, [fp, #-236]
	vldr.32	s14, [fp, #-232]
	vldr.32	s15, [fp, #-228]
	ldr	r0, [fp, #-244]
	vldr.32	s4, .L315+120
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	vldr.32	s15, [fp, #-104]
	vcvt.s32.f32	s16, s15
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L317
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L317+12
	ldr	r3, [r3]
	str	r3, [fp, #-248]
	vldr.32	s0, .L317+4
	ldr	r0, [fp, #-248]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, #60
	mov	r2, #500
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, [fp, #-304]
	ldr	r3, [r3]
	mov	r0, r3
	bl	StringFromCustomerEmotionEnum
	mov	r6, r0
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L306
	ldr	lr, .L317+16
	b	.L307
.L306:
	ldr	lr, .L317+20
.L307:
	ldr	r3, [fp, #-304]
	ldrd	r2, [r3, #24]
	ldr	r1, [fp, #-304]
	ldrd	r0, [r1, #8]
	ldr	ip, [fp, #-304]
	ldrd	r4, [ip, #16]
	strd	r4, [sp, #16]
	strd	r0, [sp, #8]
	strd	r2, [sp]
	mov	r2, lr
	mov	r1, r6
	ldr	r0, .L317+24
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-256]	@ float
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L317
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-252]
	ldr	r3, .L317+28
	ldr	r3, [r3]
	str	r3, [fp, #-260]
	vldr.32	s14, [fp, #-256]
	vldr.32	s15, [fp, #-252]
	ldr	r4, .L317+32
	ldr	r3, [fp, #-260]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L317+8
	vldr.32	s2, .L317
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L308
	ldr	r3, [fp, #-304]
	vldr.64	d7, [r3, #56]
	vcvt.f32.f64	s15, d7
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-304]
	ldr	r3, [r3, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r0, .L317+36
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-280]	@ float
	ldr	r3, [fp, #-100]	@ float
	str	r3, [fp, #-276]	@ float
	ldr	r3, .L317+28
	ldr	r3, [r3]
	str	r3, [fp, #-284]
	vldr.32	s14, [fp, #-280]
	vldr.32	s15, [fp, #-276]
	ldr	r4, .L317+32
	ldr	r3, [fp, #-284]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L317+8
	vldr.32	s2, .L317
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	b	.L309
.L308:
	ldr	r3, [fp, #-304]
	vldr.64	d7, [r3, #56]
	vcvt.f32.f64	s15, d7
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-304]
	vldr.64	d7, [r3, #88]
	vcvt.f32.f64	s15, d7
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r0, .L317+40
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-292]	@ float
	ldr	r3, [fp, #-100]	@ float
	str	r3, [fp, #-288]	@ float
	ldr	r3, .L317+28
	ldr	r3, [r3]
	str	r3, [fp, #-296]
	vldr.32	s14, [fp, #-292]
	vldr.32	s15, [fp, #-288]
	ldr	r4, .L317+32
	ldr	r3, [fp, #-296]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L317+8
	vldr.32	s2, .L317
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L309:
	ldr	r3, [fp, #-304]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L310
	ldr	r1, .L317+16
	b	.L311
.L310:
	ldr	r1, .L317+20
.L311:
	ldr	r3, [fp, #-304]
	add	r3, r3, #34
	mov	r2, r3
	ldr	r0, .L317+44
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-104]	@ float
	str	r3, [fp, #-268]	@ float
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L317
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-264]
	ldr	r3, .L317+28
	ldr	r3, [r3]
	str	r3, [fp, #-272]
	vldr.32	s14, [fp, #-268]
	vldr.32	s15, [fp, #-264]
	ldr	r4, .L317+32
	ldr	r3, [fp, #-272]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L317+8
	vldr.32	s2, .L317
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	b	.L281
.L312:
	nop
.L281:
	sub	sp, fp, #24
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r6, fp, pc}
.L318:
	.align	2
.L317:
	.word	1101004800
	.word	1060320051
	.word	1065353216
	.word	.LC6
	.word	.LC44
	.word	.LC45
	.word	.LC53
	.word	.LC1
	.word	meowFont
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.size	DrawCustomer, .-DrawCustomer
	.align	2
	.global	UpdateMenuCustomerBlink
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateMenuCustomerBlink, %function
UpdateMenuCustomerBlink:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	vstr.64	d0, [fp, #-20]
	ldr	r3, [fp, #-8]
	vldr.64	d6, [r3, #8]
	vldr.64	d7, [fp, #-20]
	vadd.f64	d7, d6, d7
	ldr	r3, [fp, #-8]
	vstr.64	d7, [r3, #8]
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L320
	ldr	r3, [fp, #-8]
	vldr.64	d6, [r3, #8]
	ldr	r3, [fp, #-8]
	vldr.64	d7, [r3, #16]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L320
	ldr	r1, [fp, #-8]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #8]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3, #32]
	b	.L326
.L320:
	ldr	r3, [fp, #-8]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L326
	ldr	r3, [fp, #-8]
	vldr.64	d6, [r3, #8]
	ldr	r3, [fp, #-8]
	vldr.64	d7, [r3, #24]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bgt	.L325
	b	.L326
.L325:
	ldr	r1, [fp, #-8]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #32]
.L326:
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	UpdateMenuCustomerBlink, .-UpdateMenuCustomerBlink
	.align	2
	.global	DrawCustomerInMenu
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawCustomerInMenu, %function
DrawCustomerInMenu:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	vstr.64	d0, [fp, #-12]
	vldr.64	d0, [fp, #-12]
	ldr	r0, .L334
	bl	UpdateMenuCustomerBlink
	vldr.64	d0, [fp, #-12]
	ldr	r0, .L334+4
	bl	UpdateMenuCustomerBlink
	ldr	r3, .L334+8
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L328
.L330:
	.word	.L332
	.word	.L331
	.word	.L329
	.word	.L332
	.word	.L331
	.word	.L329
.L332:
	ldr	r3, .L334
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L334+4
	mov	r2, #0
	str	r2, [r3]
	b	.L333
.L331:
	ldr	r3, .L334
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L334+4
	mov	r2, #1
	str	r2, [r3]
	b	.L333
.L329:
	ldr	r3, .L334
	mov	r2, #2
	str	r2, [r3]
	ldr	r3, .L334+4
	mov	r2, #2
	str	r2, [r3]
	b	.L333
.L328:
	ldr	r3, .L334
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L334+4
	mov	r2, #0
	str	r2, [r3]
	nop
.L333:
	ldr	r0, .L334
	bl	DrawCustomer
	ldr	r0, .L334+4
	bl	DrawCustomer
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L335:
	.align	2
.L334:
	.word	menuCustomer1
	.word	menuCustomer2
	.word	options
	.size	DrawCustomerInMenu, .-DrawCustomerInMenu
	.align	2
	.global	DrawOuterWorld
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawOuterWorld, %function
DrawOuterWorld:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	vldr.32	s15, .L337
	vcvt.s32.f32	s13, s15
	vldr.32	s14, .L337+4
	vldr.32	s15, .L337+8
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	mov	r3, #0
	strb	r3, [fp, #-8]
	mov	r3, #0
	strb	r3, [fp, #-7]
	mov	r3, #0
	strb	r3, [fp, #-6]
	mvn	r3, #0
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	mov	r3, #2000
	mov	r2, #1920
	vmov	r1, s15	@ int
	vmov	r0, s13	@ int
	bl	DrawRectangle
	vldr.32	s15, .L337
	vcvt.s32.f32	s13, s15
	vldr.32	s14, .L337+4
	vldr.32	s15, .L337+12
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	mov	r3, #0
	strb	r3, [fp, #-12]
	mov	r3, #0
	strb	r3, [fp, #-11]
	mov	r3, #0
	strb	r3, [fp, #-10]
	mvn	r3, #0
	strb	r3, [fp, #-9]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	mov	r3, #2000
	mov	r2, #1920
	vmov	r1, s15	@ int
	vmov	r0, s13	@ int
	bl	DrawRectangle
	vldr.32	s14, .L337
	vldr.32	s15, .L337+8
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s14, s15
	vldr.32	s15, .L337+4
	vcvt.s32.f32	s15, s15
	mov	r3, #0
	strb	r3, [fp, #-16]
	mov	r3, #0
	strb	r3, [fp, #-15]
	mov	r3, #0
	strb	r3, [fp, #-14]
	mvn	r3, #0
	strb	r3, [fp, #-13]
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	ldr	r3, .L337+20
	mov	r2, #2000
	vmov	r1, s15	@ int
	vmov	r0, s14	@ int
	bl	DrawRectangle
	vldr.32	s14, .L337
	vldr.32	s15, .L337+16
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s14, s15
	vldr.32	s15, .L337+4
	vcvt.s32.f32	s15, s15
	mov	r3, #0
	strb	r3, [fp, #-20]
	mov	r3, #0
	strb	r3, [fp, #-19]
	mov	r3, #0
	strb	r3, [fp, #-18]
	mvn	r3, #0
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, .L337+20
	mov	r2, #2000
	vmov	r1, s15	@ int
	vmov	r0, s14	@ int
	bl	DrawRectangle
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L338:
	.align	2
.L337:
	.word	-999292928
	.word	-1006174208
	.word	1157234688
	.word	1149698048
	.word	1156579328
	.word	1080
	.size	DrawOuterWorld, .-DrawOuterWorld
	.align	2
	.global	SetRuntimeResolution
	.syntax unified
	.arm
	.fpu vfp
	.type	SetRuntimeResolution, %function
SetRuntimeResolution:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-20]
	bl	SetWindowSize
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-8]
	vldr.32	s14, .L345
	vldr.32	s15, [fp, #-8]
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L344
	ldr	r3, [fp, #-24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L345+4
	vdiv.f32	s15, s14, s13
	b	.L342
.L344:
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L345+8
	vdiv.f32	s15, s14, s13
.L342:
	vstr.32	s15, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]	@ float
	str	r2, [r3, #20]	@ float
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L345+12
	vdiv.f32	s15, s14, s13
	ldr	r3, [fp, #-16]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L345+12
	vdiv.f32	s15, s14, s13
	ldr	r3, [fp, #-16]
	vstr.32	s15, [r3, #4]
	ldr	r3, .L345+16
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, .L345+16
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	str	r2, [r3, #4]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L346:
	.align	2
.L345:
	.word	1071877689
	.word	1149698048
	.word	1156579328
	.word	1073741824
	.word	options
	.size	SetRuntimeResolution, .-SetRuntimeResolution
	.align	2
	.global	IsMousePositionInGameWindow
	.syntax unified
	.arm
	.fpu vfp
	.type	IsMousePositionInGameWindow, %function
IsMousePositionInGameWindow:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-12]
	vstr.32	s15, [fp, #-8]
	ldr	r3, [fp, #-24]
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-8]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-20]
	vstr.32	s15, [fp, #-16]
	vldr.32	s15, [fp, #-20]
	vldr.32	s14, .L359
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L348
	vldr.32	s14, [fp, #-20]
	vldr.32	s13, .L359
	vldr.32	s15, .L359+4
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L348
	vldr.32	s15, [fp, #-16]
	vldr.32	s14, .L359+8
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L348
	vldr.32	s14, [fp, #-16]
	vldr.32	s13, .L359+8
	vldr.32	s15, .L359+12
	vadd.f32	s15, s13, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L348
	mov	r3, #1
	b	.L353
.L348:
	mov	r3, #0
.L353:
	and	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L360:
	.align	2
.L359:
	.word	-999292928
	.word	1156579328
	.word	-1006174208
	.word	1149698048
	.size	IsMousePositionInGameWindow, .-IsMousePositionInGameWindow
	.align	2
	.global	DrawDebugLogs
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawDebugLogs, %function
DrawDebugLogs:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #20
	sub	sp, sp, #72
	str	r0, [fp, #-56]
	vldr.32	s15, .L369
	vcvt.s32.f32	s16, s15
	vldr.32	s14, .L369+4
	vldr.32	s15, .L369+8
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L369+12
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L369+16
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L369+36
	ldr	r3, [r3]
	str	r3, [fp, #-40]
	vldr.32	s0, .L369+20
	ldr	r0, [fp, #-40]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, #520
	mov	r2, #1920
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L362
.L366:
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #24
	str	r3, [fp, #-28]
	ldr	r2, .L369+40
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L367
	ldr	r2, .L369+40
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #3
	add	r3, r2, r3
	ldr	r5, [r3, #4]
	vldr.32	s14, .L369
	vldr.32	s15, .L369+24
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-48]
	vldr.32	s14, .L369+4
	vldr.32	s15, .L369+8
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L369+12
	vsub.f32	s14, s15, s14
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-44]
	ldr	r2, .L369+40
	ldr	r3, [fp, #-28]
	ldr	r3, [r2, r3, lsl #3]
	mov	r0, r3
	bl	GetTextColorFromLogType
	mov	r3, r0
	str	r3, [fp, #-32]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-44]
	ldr	r4, .L369+44
	ldr	r3, [fp, #-32]
	str	r3, [sp, #28]
	str	r5, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L369+28
	vldr.32	s2, .L369+32
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L362:
	ldr	r3, [fp, #-24]
	cmp	r3, #24
	ble	.L366
	b	.L368
.L367:
	nop
.L368:
	nop
	sub	sp, fp, #20
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, fp, pc}
.L370:
	.align	2
.L369:
	.word	-999292928
	.word	-1006174208
	.word	1149698048
	.word	1101004800
	.word	1140457472
	.word	1060320051
	.word	1092616192
	.word	1065353216
	.word	1098907648
	.word	.LC6
	.word	DebugLogs
	.word	meowFont
	.size	DrawDebugLogs, .-DrawDebugLogs
	.section	.rodata
	.align	2
.LC57:
	.ascii	"FPS\000"
	.align	2
.LC58:
	.ascii	"%.2f\000"
	.align	2
.LC59:
	.ascii	"0\000"
	.align	2
.LC7:
	.byte	0
	.byte	-28
	.byte	48
	.byte	-1
	.text
	.align	2
	.global	DrawFpsGraph
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawFpsGraph, %function
DrawFpsGraph:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #156
	str	r0, [fp, #-128]
	mov	r3, #500
	str	r3, [fp, #-32]
	mov	r3, #200
	str	r3, [fp, #-36]
	vldr.32	s14, .L398+64
	vldr.32	s15, .L398+68
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L398+92
	vsub.f32	s14, s15, s14
	ldr	r3, [fp, #-32]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-40]
	vldr.32	s14, .L398+76
	vldr.32	s15, .L398
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-16]	@ float
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L372
.L375:
	ldr	r2, .L398+12
	ldr	r3, [fp, #-20]
	ldr	r3, [r2, r3, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-16]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L373
	ldr	r2, .L398+12
	ldr	r3, [fp, #-20]
	ldr	r3, [r2, r3, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-16]
.L373:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L372:
	ldr	r3, [fp, #-20]
	cmp	r3, #500
	blt	.L375
	ldr	r3, .L398+44
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-16]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L394
	ldr	r3, [fp, #-36]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, .L398+44
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
	b	.L378
.L394:
	ldr	r3, [fp, #-36]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s14, [fp, #-16]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
.L378:
	ldr	r3, .L398+36
	ldr	r3, [r3]
	str	r3, [fp, #-72]
	vldr.32	s0, .L398+4
	ldr	r0, [fp, #-72]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	str	r3, [sp]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-44]
	ldr	r0, [fp, #-40]
	bl	DrawRectangle
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L379
.L385:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L398+16
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	sub	r1, r3, #1
	ldr	r3, .L398+20
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L398+12
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L398+16
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r1, r2, r3
	ldr	r3, .L398+20
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L398+12
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-60]
	ldr	r3, .L398+16
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r1, r2, r3
	ldr	r3, .L398+20
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L398+12
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, .L398+44
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-64]
	vldr.32	s15, [fp, #-64]
	vldr.32	s14, .L398+8
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L395
	ldr	r3, .L398+24
	ldr	r3, [r3]
	str	r3, [fp, #-112]
	b	.L382
.L395:
	vldr.32	s15, [fp, #-64]
	vldr.32	s14, .L398+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L396
	ldr	r3, .L398+28
	ldr	r3, [r3]
	str	r3, [fp, #-112]
	b	.L382
.L399:
	.align	2
.L398:
	.word	1103626240
	.word	1060320051
	.word	1063675494
	.word	DebugFpsHistory
	.word	DebugFpsHistoryIndex
	.word	274877907
	.word	.LC7
	.word	.LC2
	.word	.LC3
	.word	.LC6
	.word	.LC57
	.word	options
	.word	.LC58
	.word	.LC1
	.word	meowFont
	.word	.LC59
	.word	-999292928
	.word	1156579328
	.word	1112014848
	.word	-1006174208
	.word	1084227584
	.word	1101004800
	.word	1073741824
	.word	1097859072
.L396:
	ldr	r3, .L398+32
	ldr	r3, [r3]
	str	r3, [fp, #-112]
.L382:
	ldr	r3, [fp, #-112]
	str	r3, [sp]
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-52]
	ldr	r1, [fp, #-56]
	ldr	r0, [fp, #-48]
	bl	DrawLine
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L379:
	ldr	r3, [fp, #-28]
	cmp	r3, #500
	blt	.L385
	vldr.32	s14, .L398+64
	vldr.32	s15, .L398+68
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L398+72
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-80]
	vldr.32	s14, .L398+76
	vldr.32	s15, .L398+80
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-76]
	ldr	r3, .L398+36
	ldr	r3, [r3]
	str	r3, [fp, #-84]
	vldr.32	s14, [fp, #-80]
	vldr.32	s15, [fp, #-76]
	ldr	r4, .L398+56
	ldr	r3, [fp, #-84]
	str	r3, [sp, #28]
	ldr	r3, .L398+40
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L398+88
	vldr.32	s2, .L398+84
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L398+44
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-16]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L397
	vldr.32	s15, [fp, #-16]
	b	.L388
.L397:
	ldr	r3, .L398+44
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
.L388:
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r0, .L398+48
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-40]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-92]
	ldr	r3, [fp, #-44]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-88]
	ldr	r3, .L398+52
	ldr	r3, [r3]
	str	r3, [fp, #-96]
	vldr.32	s14, [fp, #-92]
	vldr.32	s15, [fp, #-88]
	ldr	r4, .L398+56
	ldr	r3, [fp, #-96]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L398+88
	vldr.32	s2, .L398+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-40]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-104]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	sub	r3, r3, #30
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-100]
	ldr	r3, .L398+52
	ldr	r3, [r3]
	str	r3, [fp, #-108]
	vldr.32	s14, [fp, #-104]
	vldr.32	s15, [fp, #-100]
	ldr	r4, .L398+56
	ldr	r3, [fp, #-108]
	str	r3, [sp, #28]
	ldr	r3, .L398+60
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L398+88
	vldr.32	s2, .L398+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	DrawFpsGraph, .-DrawFpsGraph
	.section	.rodata
	.align	2
.LC60:
	.ascii	"Frame Time (ms)\000"
	.text
	.align	2
	.global	DrawFrameTime
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawFrameTime, %function
DrawFrameTime:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #164
	str	r0, [fp, #-136]
	mov	r3, #500
	str	r3, [fp, #-28]
	mov	r3, #200
	str	r3, [fp, #-32]
	vldr.32	s14, .L427+76
	vldr.32	s15, .L427+84
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L427+100
	vsub.f32	s14, s15, s14
	ldr	r3, [fp, #-28]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-36]
	vldr.32	s14, .L427
	vldr.32	s15, .L427+4
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-40]
	ldr	r3, .L427+24
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L427+8
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-16]	@ float
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L401
.L404:
	ldr	r2, .L427+28
	ldr	r3, [fp, #-20]
	ldr	r3, [r2, r3, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-16]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L402
	ldr	r2, .L427+28
	ldr	r3, [fp, #-20]
	ldr	r3, [r2, r3, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-16]
.L402:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L401:
	ldr	r3, [fp, #-20]
	cmp	r3, #500
	blt	.L404
	ldr	r3, .L427+24
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L427+8
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-48]
	vldr.32	s15, [fp, #-16]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L423
	ldr	r3, [fp, #-32]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s14, [fp, #-16]
	vdiv.f32	s15, s13, s14
	b	.L407
.L423:
	vldr.32	s15, .L427+12
.L407:
	vstr.32	s15, [fp, #-52]
	ldr	r3, .L427+52
	ldr	r3, [r3]
	str	r3, [fp, #-80]
	vldr.32	s0, .L427+16
	ldr	r0, [fp, #-80]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-40]
	ldr	r0, [fp, #-36]
	bl	DrawRectangle
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L408
.L414:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L427+32
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	sub	r1, r3, #1
	ldr	r3, .L427+36
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L427+28
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-52]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L427+32
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r1, r2, r3
	ldr	r3, .L427+36
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L427+28
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-52]
	vmul.f32	s15, s13, s15
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [fp, #-68]
	ldr	r3, .L427+32
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r1, r2, r3
	ldr	r3, .L427+36
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L427+28
	ldr	r3, [r3, r2, lsl #2]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s14, [fp, #-48]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-72]
	vldr.32	s15, [fp, #-72]
	vldr.32	s14, .L427+12
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L424
	ldr	r3, .L427+40
	ldr	r3, [r3]
	str	r3, [fp, #-120]
	b	.L411
.L424:
	vldr.32	s15, [fp, #-72]
	vldr.32	s14, .L427+20
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L425
	ldr	r3, .L427+44
	ldr	r3, [r3]
	str	r3, [fp, #-120]
	b	.L411
.L428:
	.align	2
.L427:
	.word	-1006174208
	.word	1132396544
	.word	1148846080
	.word	1065353216
	.word	1060320051
	.word	1069547520
	.word	options
	.word	DebugFrameTimeHistory
	.word	DebugFrameTimeHistoryIndex
	.word	274877907
	.word	.LC7
	.word	.LC2
	.word	.LC3
	.word	.LC6
	.word	.LC60
	.word	.LC58
	.word	.LC1
	.word	meowFont
	.word	.LC59
	.word	-999292928
	.word	1124532224
	.word	1156579328
	.word	1112014848
	.word	1101004800
	.word	1073741824
	.word	1097859072
.L425:
	ldr	r3, .L427+48
	ldr	r3, [r3]
	str	r3, [fp, #-120]
.L411:
	ldr	r3, [fp, #-120]
	str	r3, [sp]
	ldr	r3, [fp, #-68]
	ldr	r2, [fp, #-60]
	ldr	r1, [fp, #-64]
	ldr	r0, [fp, #-56]
	bl	DrawLine
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L408:
	ldr	r3, [fp, #-24]
	cmp	r3, #500
	blt	.L414
	vldr.32	s14, .L427+76
	vldr.32	s15, .L427+80
	vsub.f32	s15, s14, s15
	vldr.32	s14, .L427+84
	vadd.f32	s15, s15, s14
	vldr.32	s14, .L427+88
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-88]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #25
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-84]
	ldr	r3, .L427+52
	ldr	r3, [r3]
	str	r3, [fp, #-92]
	vldr.32	s14, [fp, #-88]
	vldr.32	s15, [fp, #-84]
	ldr	r4, .L427+68
	ldr	r3, [fp, #-92]
	str	r3, [sp, #28]
	ldr	r3, .L427+56
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L427+96
	vldr.32	s2, .L427+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	vldr.32	s14, [fp, #-16]
	vldr.32	s15, [fp, #-48]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L426
	vldr.32	s15, [fp, #-16]
	b	.L417
.L426:
	vldr.32	s15, [fp, #-48]
.L417:
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r0, .L427+60
	bl	TextFormat
	mov	r2, r0
	ldr	r3, [fp, #-36]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-40]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-96]
	ldr	r3, .L427+64
	ldr	r3, [r3]
	str	r3, [fp, #-104]
	vldr.32	s14, [fp, #-100]
	vldr.32	s15, [fp, #-96]
	ldr	r4, .L427+68
	ldr	r3, [fp, #-104]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L427+96
	vldr.32	s2, .L427+100
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-36]
	add	r3, r3, #10
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-112]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	sub	r3, r3, #30
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-108]
	ldr	r3, .L427+64
	ldr	r3, [r3]
	str	r3, [fp, #-116]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-108]
	ldr	r4, .L427+68
	ldr	r3, [fp, #-116]
	str	r3, [sp, #28]
	ldr	r3, .L427+72
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L427+96
	vldr.32	s2, .L427+100
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	DrawFrameTime, .-DrawFrameTime
	.align	2
	.global	UpdateDebugFpsHistory
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateDebugFpsHistory, %function
UpdateDebugFpsHistory:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	ldr	r3, .L430
	ldr	r4, [r3]
	bl	GetFPS
	mov	r3, r0
	ldr	r2, .L430+4
	str	r3, [r2, r4, lsl #2]
	ldr	r3, .L430
	ldr	r3, [r3]
	add	r1, r3, #1
	ldr	r3, .L430+8
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L430
	str	r2, [r3]
	nop
	pop	{r4, r5, fp, pc}
.L431:
	.align	2
.L430:
	.word	DebugFpsHistoryIndex
	.word	DebugFpsHistory
	.word	274877907
	.size	UpdateDebugFpsHistory, .-UpdateDebugFpsHistory
	.align	2
	.global	UpdateDebugFrameTimeHistory
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateDebugFrameTimeHistory, %function
UpdateDebugFrameTimeHistory:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	bl	GetFrameTime
	vmov.f32	s15, s0
	vldr.32	s14, .L433
	vmul.f32	s15, s15, s14
	ldr	r3, .L433+4
	ldr	r3, [r3]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r2, .L433+8
	str	r1, [r2, r3, lsl #2]
	ldr	r3, .L433+4
	ldr	r3, [r3]
	add	r1, r3, #1
	ldr	r3, .L433+12
	smull	r2, r3, r3, r1
	asr	r2, r3, #5
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r1, r3
	ldr	r3, .L433+4
	str	r2, [r3]
	nop
	pop	{fp, pc}
.L434:
	.align	2
.L433:
	.word	1148846080
	.word	DebugFrameTimeHistoryIndex
	.word	DebugFrameTimeHistory
	.word	274877907
	.size	UpdateDebugFrameTimeHistory, .-UpdateDebugFrameTimeHistory
	.section	.rodata
	.align	2
.LC61:
	.ascii	"%d FPS | Target FPS %d | Window (%dx%d) | Render (%"
	.ascii	"dx%d) | Fullscreen \000"
	.align	2
.LC62:
	.ascii	"Cursor %.2f,%.2f (%dx%d) | World %.2f,%.2f (%dx%d) "
	.ascii	"| R Base World %.2f,%.2f\000"
	.align	2
.LC63:
	.ascii	"Zoom %.2f | In View %s\000"
	.text
	.align	2
	.global	DrawDebugStats
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawDebugStats, %function
DrawDebugStats:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #148
	str	r0, [fp, #-104]
	vldr.32	s15, .L447
	vcvt.s32.f32	s16, s15
	vldr.32	s15, .L447+4
	vcvt.s32.f32	s17, s15
	ldr	r3, .L447+40
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	vldr.32	s0, .L447+8
	ldr	r0, [fp, #-32]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	str	r3, [sp]
	mov	r3, #70
	ldr	r2, .L447+44
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, .L447+48
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	bl	GetFPS
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, .L447+8
	vmul.f32	s15, s15, s13
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L446
	ldr	r3, .L447+56
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	b	.L438
.L446:
	ldr	r3, [fp, #-24]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, .L447+12
	vmul.f32	s15, s15, s13
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L438
	ldr	r3, .L447+60
	ldr	r3, [r3]
	str	r3, [fp, #-36]
.L438:
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-48]
	vstr.32	s15, [fp, #-44]
	ldr	r3, [fp, #-104]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-44]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-56]
	vstr.32	s15, [fp, #-52]
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r0, [r3]
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L447+52
	ldr	r2, [r2]
	ldrb	r2, [r2, #12]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L440
	ldr	r2, .L447+64
	b	.L441
.L440:
	ldr	r2, .L447+68
.L441:
	str	r2, [sp, #12]
	ldr	r2, .L447+72
	str	r2, [sp, #8]
	mov	r2, #1920
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	mov	r2, r1
	ldr	r1, [fp, #-24]
	ldr	r0, .L447+76
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L447
	vldr.32	s15, .L447+16
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-64]
	vldr.32	s14, .L447+4
	vldr.32	s15, .L447+20
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-60]
	vldr.32	s14, [fp, #-64]
	vldr.32	s15, [fp, #-60]
	ldr	r4, .L447+80
	ldr	r3, [fp, #-36]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L447+24
	vldr.32	s2, .L447+28
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	vldr.32	s15, [fp, #-48]
	vcvt.f64.f32	d2, s15
	vldr.32	s15, [fp, #-44]
	vcvt.f64.f32	d7, s15
	ldr	r3, .L447+52
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, .L447+52
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	vldr.32	s13, [fp, #-56]
	vcvt.f64.f32	d6, s13
	vldr.32	s11, [fp, #-52]
	vcvt.f64.f32	d5, s11
	vldr.32	s9, [fp, #-56]
	vldr.32	s8, .L447
	vsub.f32	s9, s9, s8
	vcvt.f64.f32	d4, s9
	vldr.32	s7, [fp, #-52]
	vldr.32	s6, .L447+4
	vsub.f32	s7, s7, s6
	vcvt.f64.f32	d3, s7
	vstr.64	d3, [sp, #48]
	vstr.64	d4, [sp, #40]
	ldr	r1, .L447+72
	str	r1, [sp, #36]
	mov	r1, #1920
	str	r1, [sp, #32]
	vstr.64	d5, [sp, #24]
	vstr.64	d6, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d2
	ldr	r0, .L447+84
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L447
	vldr.32	s15, .L447+16
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-72]
	vldr.32	s14, .L447+4
	vldr.32	s15, .L447+32
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-68]
	ldr	r3, .L447+88
	ldr	r3, [r3]
	str	r3, [fp, #-76]
	vldr.32	s14, [fp, #-72]
	vldr.32	s15, [fp, #-68]
	ldr	r4, .L447+80
	ldr	r3, [fp, #-76]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L447+24
	vldr.32	s2, .L447+28
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-104]
	vldr.32	s15, [r3, #20]
	vcvt.f64.f32	d8, s15
	ldr	r0, [fp, #-104]
	bl	IsMousePositionInGameWindow
	mov	r3, r0
	cmp	r3, #0
	beq	.L442
	ldr	r3, .L447+64
	b	.L443
.L442:
	ldr	r3, .L447+68
.L443:
	str	r3, [sp]
	vmov	r2, r3, d8
	ldr	r0, .L447+92
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L447
	vldr.32	s15, .L447+16
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-84]
	vldr.32	s14, .L447+4
	vldr.32	s15, .L447+36
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-80]
	ldr	r3, .L447+88
	ldr	r3, [r3]
	str	r3, [fp, #-88]
	vldr.32	s14, [fp, #-84]
	vldr.32	s15, [fp, #-80]
	ldr	r4, .L447+80
	ldr	r3, [fp, #-88]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L447+24
	vldr.32	s2, .L447+28
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	nop
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, pc}
.L448:
	.align	2
.L447:
	.word	-999292928
	.word	-1006174208
	.word	1060320051
	.word	1063675494
	.word	1092616192
	.word	1084227584
	.word	1073741824
	.word	1101004800
	.word	1103626240
	.word	1110704128
	.word	.LC6
	.word	1100
	.word	.LC7
	.word	options
	.word	.LC3
	.word	.LC2
	.word	.LC44
	.word	.LC45
	.word	1080
	.word	.LC61
	.word	meowFont
	.word	.LC62
	.word	.LC1
	.word	.LC63
	.size	DrawDebugStats, .-DrawDebugStats
	.section	.rodata
	.align	2
.LC64:
	.ascii	"Debug Tools\000"
	.align	2
.LC65:
	.ascii	"[On]\000"
	.align	2
.LC66:
	.ascii	"[Off]\000"
	.align	2
.LC67:
	.ascii	"Logs | %s | F1\000"
	.align	2
.LC68:
	.ascii	"Stats | %s | F2\000"
	.align	2
.LC69:
	.ascii	"Graph | %s | F3\000"
	.align	2
.LC70:
	.ascii	"Objects | %s | F4\000"
	.text
	.align	2
	.global	DrawDebugOverlay
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawDebugOverlay, %function
DrawDebugOverlay:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #148
	str	r0, [fp, #-128]
	ldr	r3, .L474+48
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L450
	ldr	r0, .L474+52
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L451
	ldr	r3, .L474+108
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L474+108
	strb	r2, [r3]
	b	.L450
.L451:
	ldr	r0, .L474+56
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L452
	ldr	r3, .L474+108
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L474+108
	strb	r2, [r3, #1]
	b	.L450
.L452:
	mov	r0, #292
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L453
	ldr	r3, .L474+108
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L474+108
	strb	r2, [r3, #2]
	b	.L450
.L453:
	ldr	r0, .L474+60
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L450
	ldr	r3, .L474+108
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, .L474+108
	strb	r2, [r3, #3]
.L450:
	bl	UpdateDebugFpsHistory
	bl	UpdateDebugFrameTimeHistory
	vldr.32	s14, .L474
	vldr.32	s15, .L474+4
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+12
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s16, s15
	vldr.32	s14, .L474+16
	vldr.32	s15, .L474+20
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+24
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L474+64
	ldr	r3, [r3]
	str	r3, [fp, #-44]
	vldr.32	s0, .L474+28
	ldr	r0, [fp, #-44]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, #140
	mov	r2, #300
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	vldr.32	s14, .L474
	vldr.32	s15, .L474+4
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+120
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-52]
	vldr.32	s14, .L474+16
	vldr.32	s15, .L474+20
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+32
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-48]
	ldr	r3, .L474+100
	ldr	r3, [r3]
	str	r3, [fp, #-56]
	vldr.32	s14, [fp, #-52]
	vldr.32	s15, [fp, #-48]
	ldr	r4, .L474+104
	ldr	r3, [fp, #-56]
	str	r3, [sp, #28]
	ldr	r3, .L474+68
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L474+136
	vldr.32	s2, .L474+140
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L474+108
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L454
	ldr	r3, .L474+72
	b	.L455
.L454:
	ldr	r3, .L474+88
.L455:
	mov	r1, r3
	ldr	r0, .L474+76
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L474
	vldr.32	s15, .L474+4
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+120
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-64]
	vldr.32	s14, .L474+16
	vldr.32	s15, .L474+20
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+36
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-60]
	ldr	r3, .L474+108
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L456
	ldr	r3, .L474+96
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	b	.L457
.L456:
	ldr	r3, .L474+100
	ldr	r3, [r3]
	str	r3, [fp, #-36]
.L457:
	vldr.32	s14, [fp, #-64]
	vldr.32	s15, [fp, #-60]
	ldr	r4, .L474+104
	ldr	r3, [fp, #-36]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L474+136
	vldr.32	s2, .L474+140
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L474+108
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	ldr	r3, .L474+72
	b	.L459
.L458:
	ldr	r3, .L474+88
.L459:
	mov	r1, r3
	ldr	r0, .L474+80
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L474
	vldr.32	s15, .L474+4
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+120
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-80]
	vldr.32	s14, .L474+16
	vldr.32	s15, .L474+20
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+40
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-76]
	ldr	r3, .L474+108
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L460
	ldr	r3, .L474+96
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	b	.L461
.L460:
	ldr	r3, .L474+100
	ldr	r3, [r3]
	str	r3, [fp, #-32]
.L461:
	vldr.32	s14, [fp, #-80]
	vldr.32	s15, [fp, #-76]
	ldr	r4, .L474+104
	ldr	r3, [fp, #-32]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L474+136
	vldr.32	s2, .L474+140
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L474+108
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L462
	ldr	r3, .L474+72
	b	.L463
.L462:
	ldr	r3, .L474+88
.L463:
	mov	r1, r3
	ldr	r0, .L474+84
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L474
	vldr.32	s15, .L474+4
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+120
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-96]
	vldr.32	s14, .L474+16
	vldr.32	s15, .L474+20
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+8
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+44
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-92]
	ldr	r3, .L474+108
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L464
	ldr	r3, .L474+96
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	b	.L465
.L464:
	ldr	r3, .L474+100
	ldr	r3, [r3]
	str	r3, [fp, #-28]
.L465:
	vldr.32	s14, [fp, #-96]
	vldr.32	s15, [fp, #-92]
	ldr	r4, .L474+104
	ldr	r3, [fp, #-28]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L474+136
	vldr.32	s2, .L474+140
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L474+108
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L466
	ldr	r3, .L474+72
	b	.L467
.L475:
	.align	2
.L474:
	.word	-999292928
	.word	1156579328
	.word	1097859072
	.word	1133903872
	.word	-1006174208
	.word	1149698048
	.word	1121714176
	.word	1060320051
	.word	1120403456
	.word	1117782016
	.word	1114636288
	.word	1109393408
	.word	options
	.word	290
	.word	291
	.word	293
	.word	.LC6
	.word	.LC64
	.word	.LC65
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC66
	.word	.LC70
	.word	.LC7
	.word	.LC1
	.word	meowFont
	.word	debugToolToggles
	.word	-999292928
	.word	1156579328
	.word	1133576192
	.word	-1006174208
	.word	1149698048
	.word	1097859072
	.word	1073741824
	.word	1101004800
.L466:
	ldr	r3, .L474+88
.L467:
	mov	r1, r3
	ldr	r0, .L474+92
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L474+112
	vldr.32	s15, .L474+116
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+132
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+120
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-112]
	vldr.32	s14, .L474+124
	vldr.32	s15, .L474+128
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L474+132
	vsub.f32	s15, s15, s14
	vldr.32	s14, .L474+140
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-108]
	ldr	r3, .L474+108
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L468
	ldr	r3, .L474+96
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	b	.L469
.L468:
	ldr	r3, .L474+100
	ldr	r3, [r3]
	str	r3, [fp, #-24]
.L469:
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-108]
	ldr	r4, .L474+104
	ldr	r3, [fp, #-24]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L474+136
	vldr.32	s2, .L474+140
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L474+108
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L470
	ldr	r0, [fp, #-128]
	bl	DrawDebugLogs
.L470:
	ldr	r3, .L474+108
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L471
	ldr	r0, [fp, #-128]
	bl	DrawDebugStats
.L471:
	ldr	r3, .L474+108
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L473
	ldr	r0, [fp, #-128]
	bl	DrawFpsGraph
	ldr	r0, [fp, #-128]
	bl	DrawFrameTime
.L473:
	nop
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, pc}
	.size	DrawDebugOverlay, .-DrawDebugOverlay
	.align	2
	.global	CreateCustomerWithOrder
	.syntax unified
	.arm
	.fpu vfp
	.type	CreateCustomerWithOrder, %function
CreateCustomerWithOrder:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #136
	str	r0, [fp, #-104]
	str	r1, [fp, #-108]
	vstr.64	d0, [fp, #-116]
	str	r2, [fp, #-120]
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	str	r3, [fp, #-132]
	vstr.64	d2, [fp, #-140]
	vstr.32	s14, [fp, #-128]
	vstr.32	s15, [fp, #-124]
	sub	r0, fp, #100
	vldr.32	s14, [fp, #-128]
	vldr.32	s15, [fp, #-124]
	vldr.64	d4, [fp, #-140]
	ldr	r3, [fp, #-132]
	vmov.f32	s6, s14
	vmov.f32	s7, s15
	mov	r2, #1
	vldr.64	d2, .L478
	vldr.64	d1, .L478+8
	vldr.64	d0, .L478+8
	mov	r1, #0
	bl	CreateCustomer
	sub	r3, fp, #100
	mov	r0, r3
	bl	RandomCustomerBlinkTime
	ldrd	r2, [fp, #-116]
	strd	r2, [fp, #-44]
	ldr	r3, [fp, #-120]
	ldr	r2, [fp, #-108]
	mul	r3, r2, r3
	str	r3, [fp, #-36]
	mov	r3, #0
	strb	r3, [fp, #-66]
	sub	r3, fp, #100
	add	r3, r3, #34
	mov	r0, r3
	bl	RandomGenerateOrder
	ldr	r3, [fp, #-104]
	mov	r0, r3
	sub	r3, fp, #100
	mov	r2, #96
	mov	r1, r3
	bl	memcpy
	ldr	r0, [fp, #-104]
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L479:
	.align	3
.L478:
	.word	0
	.word	1070596096
	.word	0
	.word	0
	.size	CreateCustomerWithOrder, .-CreateCustomerWithOrder
	.align	2
	.global	render_customers
	.syntax unified
	.arm
	.fpu vfp
	.type	render_customers, %function
render_customers:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L481
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	DrawCustomer
.L481:
	ldr	r3, [fp, #-8]
	add	r3, r3, #96
	cmp	r3, #0
	beq	.L482
	ldr	r3, [fp, #-8]
	add	r3, r3, #96
	mov	r0, r3
	bl	DrawCustomer
.L482:
	ldr	r3, [fp, #-8]
	add	r3, r3, #192
	cmp	r3, #0
	beq	.L484
	ldr	r3, [fp, #-8]
	add	r3, r3, #192
	mov	r0, r3
	bl	DrawCustomer
.L484:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	render_customers, .-render_customers
	.align	2
	.global	RemoveCustomer
	.syntax unified
	.arm
	.fpu vfp
	.type	RemoveCustomer, %function
RemoveCustomer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	strb	r2, [r3, #33]
	ldr	r1, [fp, #-8]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #56]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #64]
	bl	RandomCustomerResetBasedOnDifficulty
	vmov.f64	d7, d0
	ldr	r3, [fp, #-8]
	vstr.64	d7, [r3, #88]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	RemoveCustomer, .-RemoveCustomer
	.align	2
	.global	UpdateCustomerState
	.syntax unified
	.arm
	.fpu vfp
	.type	UpdateCustomerState, %function
UpdateCustomerState:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	vstr.32	s0, [fp, #-20]
	ldr	r3, [fp, #-16]
	vldr.64	d6, [r3, #56]
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vadd.f64	d7, d6, d7
	ldr	r3, [fp, #-16]
	vstr.64	d7, [r3, #56]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L487
	ldr	r3, [fp, #-16]
	vldr.64	d7, [r3, #56]
	vcvt.f32.f64	s14, d7
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L500
	ldr	r3, [fp, #-16]
	vldr.64	d7, [r3, #56]
	vcvt.f32.f64	s13, d7
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L504
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L501
	ldr	r3, [fp, #-16]
	mov	r2, #2
	str	r2, [r3]
	b	.L503
.L501:
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L504+4
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L502
	ldr	r3, [fp, #-16]
	mov	r2, #1
	str	r2, [r3]
	b	.L503
.L502:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
	b	.L503
.L500:
	mov	r0, #2
	bl	PlaySoundFx
	ldr	r0, [fp, #-16]
	bl	RemoveCustomer
	ldr	r3, .L504+8
	ldr	r3, [r3]
	sub	r3, r3, #50
	ldr	r2, .L504+8
	str	r3, [r2]
	b	.L503
.L487:
	ldr	r3, [fp, #-16]
	vldr.64	d7, [r3, #56]
	vcvt.f32.f64	s15, d7
	vcvt.f64.f32	d6, s15
	ldr	r3, [fp, #-16]
	vldr.64	d7, [r3, #88]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bgt	.L499
	b	.L503
.L499:
	ldr	r1, [fp, #-16]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1, #56]
	bl	RandomCustomerTimeoutBasedOnDifficulty
	vmov.f64	d7, d0
	vcvt.s32.f64	s15, d7
	vmov	r2, s15	@ int
	ldr	r3, [fp, #-16]
	str	r2, [r3, #64]
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #33]
	ldr	r3, [fp, #-16]
	add	r3, r3, #34
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #34
	mov	r0, r3
	bl	RandomGenerateOrder
.L503:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L505:
	.align	2
.L504:
	.word	1061158912
	.word	1056964608
	.word	global_score
	.size	UpdateCustomerState, .-UpdateCustomerState
	.align	2
	.global	Tick
	.syntax unified
	.arm
	.fpu vfp
	.type	Tick, %function
Tick:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	vstr.32	s0, [fp, #-12]
	ldr	r3, [fp, #-8]
	vldr.32	s0, [fp, #-12]
	mov	r0, r3
	bl	UpdateCustomerState
	ldr	r3, [fp, #-8]
	add	r3, r3, #96
	vldr.32	s0, [fp, #-12]
	mov	r0, r3
	bl	UpdateCustomerState
	ldr	r3, [fp, #-8]
	add	r3, r3, #192
	vldr.32	s0, [fp, #-12]
	mov	r0, r3
	bl	UpdateCustomerState
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	Tick, .-Tick
	.align	2
	.global	PlaySoundFx
	.syntax unified
	.arm
	.fpu vfp
	.type	PlaySoundFx, %function
PlaySoundFx:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #120
	str	r0, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, .L524
	ldr	r3, [r3]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L523
	ldr	r3, [fp, #-112]
	cmp	r3, #11
	ldrls	pc, [pc, r3, asl #2]
	b	.L507
.L511:
	.word	.L522
	.word	.L521
	.word	.L520
	.word	.L519
	.word	.L518
	.word	.L517
	.word	.L516
	.word	.L515
	.word	.L514
	.word	.L513
	.word	.L512
	.word	.L510
.L520:
	ldr	r3, .L524+4
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+8
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+12
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+16
	sub	ip, fp, #32
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #3
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L519:
	ldr	r3, .L524+20
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+24
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+28
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L518:
	ldr	r3, .L524+32
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+36
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+40
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+44
	sub	ip, fp, #32
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #3
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L517:
	ldr	r3, .L524+48
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L516:
	ldr	r3, .L524+52
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+56
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+60
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L515:
	ldr	r3, .L524+64
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+68
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+72
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L514:
	ldr	r3, .L524+76
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+80
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+84
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L513:
	ldr	r3, .L524+88
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+92
	sub	ip, fp, #80
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	ldr	r3, .L524+96
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r1, #2
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L512:
	ldr	r3, .L524+100
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L522:
	ldr	r3, .L524+104
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L521:
	ldr	r3, .L524+108
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L510:
	ldr	r3, .L524+112
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	b	.L507
.L523:
	nop
.L507:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L525:
	.align	2
.L524:
	.word	options
	.word	angry1Fx
	.word	angry2Fx
	.word	angry3Fx
	.word	angry4Fx
	.word	bottle1Fx
	.word	bottle2Fx
	.word	bottle3Fx
	.word	confused1Fx
	.word	confused2Fx
	.word	confused3Fx
	.word	confused4Fx
	.word	correctFx
	.word	drop1Fx
	.word	drop2Fx
	.word	drop3Fx
	.word	pickup1Fx
	.word	pickup2Fx
	.word	pickup3Fx
	.word	pour1Fx
	.word	pour2Fx
	.word	pour3Fx
	.word	stir1Fx
	.word	stir2Fx
	.word	stir3Fx
	.word	boongFx
	.word	hoverFx
	.word	selectFx
	.word	flickFx
	.size	PlaySoundFx, .-PlaySoundFx
	.align	2
	.global	WindowUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	WindowUpdate, %function
WindowUpdate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #52
	str	r0, [fp, #-32]
	bl	IsWindowResized
	mov	r3, r0
	cmp	r3, #0
	beq	.L527
	bl	GetScreenWidth
	str	r0, [fp, #-16]
	bl	GetScreenHeight
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
	vldr.32	s14, .L539
	vldr.32	s15, [fp, #-24]
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L537
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L539+4
	vdiv.f32	s15, s14, s13
	b	.L530
.L537:
	ldr	r3, [fp, #-16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L539+8
	vdiv.f32	s15, s14, s13
.L530:
	vstr.32	s15, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]	@ float
	str	r2, [r3, #20]	@ float
	ldr	r3, [fp, #-16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L539+12
	vdiv.f32	s15, s14, s13
	ldr	r3, [fp, #-32]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L539+12
	vdiv.f32	s15, s14, s13
	ldr	r3, [fp, #-32]
	vstr.32	s15, [r3, #4]
	ldr	r3, .L539+16
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r3, .L539+16
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #4]
.L527:
	ldr	r0, .L539+20
	bl	IsKeyDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L531
	ldr	r0, .L539+24
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	bne	.L532
.L531:
	ldr	r0, .L539+28
	bl	IsKeyDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L533
	ldr	r0, .L539+24
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L533
.L532:
	ldr	r2, .L539+32
	mov	r1, #1920
	ldr	r0, [fp, #-32]
	bl	SetRuntimeResolution
	bl	ToggleFullscreen
.L533:
	mov	r0, #256
	bl	IsKeyPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L534
	bl	ExitApplication
.L534:
	ldr	r3, .L539+36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L538
	ldr	r3, .L539+36
	ldr	r4, [r3]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	UpdateMusicStream
.L538:
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L540:
	.align	2
.L539:
	.word	1071877689
	.word	1149698048
	.word	1156579328
	.word	1073741824
	.word	options
	.word	342
	.word	257
	.word	346
	.word	1080
	.word	currentBgm
	.size	WindowUpdate, .-WindowUpdate
	.section	.rodata
	.align	2
.LC71:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/backg"
	.ascii	"rounds/main.png\000"
	.align	2
.LC72:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/backg"
	.ascii	"rounds/main_overlay_1.png\000"
	.align	2
.LC73:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/backg"
	.ascii	"rounds/main_overlay_2.png\000"
	.align	2
.LC74:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/paw.png\000"
	.align	2
.LC75:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/checkbox.png\000"
	.align	2
.LC76:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/checkbox_checked.png\000"
	.align	2
.LC77:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/left_arrow.png\000"
	.align	2
.LC78:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/right_arrow.png\000"
	.align	2
.LC79:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/hover"
	.ascii	".wav\000"
	.align	2
.LC80:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/selec"
	.ascii	"t.wav\000"
	.align	2
.LC81:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/boong"
	.ascii	".wav\000"
	.align	2
.LC82:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/angry"
	.ascii	"_1.wav\000"
	.align	2
.LC83:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/angry"
	.ascii	"_2.wav\000"
	.align	2
.LC84:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/angry"
	.ascii	"_3.wav\000"
	.align	2
.LC85:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/angry"
	.ascii	"_4.wav\000"
	.align	2
.LC86:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/bottl"
	.ascii	"e_1.wav\000"
	.align	2
.LC87:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/bottl"
	.ascii	"e_2.wav\000"
	.align	2
.LC88:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/bottl"
	.ascii	"e_3.wav\000"
	.align	2
.LC89:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/confu"
	.ascii	"sed_1.wav\000"
	.align	2
.LC90:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/confu"
	.ascii	"sed_2.wav\000"
	.align	2
.LC91:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/confu"
	.ascii	"sed_3.wav\000"
	.align	2
.LC92:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/confu"
	.ascii	"sed_4.wav\000"
	.align	2
.LC93:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/corre"
	.ascii	"ct.wav\000"
	.align	2
.LC94:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/drop_"
	.ascii	"1.wav\000"
	.align	2
.LC95:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/drop_"
	.ascii	"2.wav\000"
	.align	2
.LC96:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/drop_"
	.ascii	"3.wav\000"
	.align	2
.LC97:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/picku"
	.ascii	"p_1.wav\000"
	.align	2
.LC98:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/picku"
	.ascii	"p_2.wav\000"
	.align	2
.LC99:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/picku"
	.ascii	"p_3.wav\000"
	.align	2
.LC100:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/pour_"
	.ascii	"1.wav\000"
	.align	2
.LC101:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/pour_"
	.ascii	"2.wav\000"
	.align	2
.LC102:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/pour_"
	.ascii	"3.wav\000"
	.align	2
.LC103:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/stir_"
	.ascii	"1.wav\000"
	.align	2
.LC104:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/stir_"
	.ascii	"2.wav\000"
	.align	2
.LC105:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/stir_"
	.ascii	"3.wav\000"
	.align	2
.LC106:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/flick"
	.ascii	".wav\000"
	.align	2
.LC107:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/cara.png\000"
	.align	2
.LC108:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/cmilk.png\000"
	.align	2
.LC109:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/cocoa.png\000"
	.align	2
.LC110:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/gar.png\000"
	.align	2
.LC111:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/marshmello.png\000"
	.align	2
.LC112:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/matcha.png\000"
	.align	2
.LC113:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/milk.png\000"
	.align	2
.LC114:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/falli"
	.ascii	"ng_items/wcream.png\000"
	.align	2
.LC115:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/GP.png\000"
	.align	2
.LC116:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/CP.png\000"
	.align	2
.LC117:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/CA.png\000"
	.align	2
.LC118:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/CH.png\000"
	.align	2
.LC119:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/CM.png\000"
	.align	2
.LC120:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/MI.png\000"
	.align	2
.LC121:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/MA.png\000"
	.align	2
.LC122:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/WC.png\000"
	.align	2
.LC123:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/GAR.png\000"
	.align	2
.LC124:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/greenchon.png\000"
	.align	2
.LC125:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/cocoachon.png\000"
	.align	2
.LC126:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/spritesheet"
	.ascii	"s/TRASHCAN.png\000"
	.align	2
.LC127:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/happy.png\000"
	.align	2
.LC128:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/happy_eyes_closed.png\000"
	.align	2
.LC129:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/frustrated.png\000"
	.align	2
.LC130:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/frustrated_eyes_closed.png\000"
	.align	2
.LC131:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/angry.png\000"
	.align	2
.LC132:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/customer_%d/angry_eyes_closed.png\000"
	.align	2
.LC133:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/cloud_1.png\000"
	.align	2
.LC134:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/cloud_2.png\000"
	.align	2
.LC135:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/cloud_3.png\000"
	.align	2
.LC136:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/star_1.png\000"
	.align	2
.LC137:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/sprit"
	.ascii	"e/star_2.png\000"
	.align	2
.LC138:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/bubbles.png\000"
	.align	2
.LC139:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/bgm/Y"
	.ascii	"ojo_Summer_My_Heart.wav\000"
	.text
	.align	2
	.global	LoadGlobalAssets
	.syntax unified
	.arm
	.fpu vfp
	.type	LoadGlobalAssets, %function
LoadGlobalAssets:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #196
	bl	GetTime
	vstr.64	d0, [fp, #-28]
	ldr	r4, .L544+56
	sub	r3, fp, #68
	ldr	r1, .L544+60
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+64
	sub	r3, fp, #68
	ldr	r1, .L544+68
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+72
	sub	r3, fp, #68
	ldr	r1, .L544+76
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+80
	sub	r3, fp, #68
	ldr	r1, .L544+84
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+88
	sub	r3, fp, #68
	ldr	r1, .L544+92
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+96
	sub	r3, fp, #68
	ldr	r1, .L544+100
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+104
	sub	r3, fp, #68
	ldr	r1, .L544+108
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+124
	sub	r3, fp, #68
	ldr	r1, .L544+132
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+136
	sub	r3, fp, #68
	ldr	r1, .L544+140
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+144
	sub	r3, fp, #68
	ldr	r1, .L544+152
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+160
	sub	r3, fp, #68
	ldr	r1, .L544+164
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+168
	sub	r3, fp, #68
	ldr	r1, .L544+172
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+176
	sub	r3, fp, #68
	ldr	r1, .L544+180
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+184
	sub	r3, fp, #68
	ldr	r1, .L544+188
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+192
	sub	r3, fp, #68
	ldr	r1, .L544+196
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+200
	sub	r3, fp, #68
	ldr	r1, .L544+204
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+208
	sub	r3, fp, #68
	ldr	r1, .L544+212
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+216
	sub	r3, fp, #68
	ldr	r1, .L544+220
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+224
	sub	r3, fp, #68
	ldr	r1, .L544+228
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+232
	sub	r3, fp, #68
	ldr	r1, .L544+236
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+240
	sub	r3, fp, #68
	ldr	r1, .L544+244
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+248
	sub	r3, fp, #68
	ldr	r1, .L544+252
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+256
	sub	r3, fp, #68
	ldr	r1, .L544+260
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+264
	sub	r3, fp, #68
	ldr	r1, .L544+268
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+272
	sub	r3, fp, #68
	ldr	r1, .L544+276
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+280
	sub	r3, fp, #68
	ldr	r1, .L544+284
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+288
	sub	r3, fp, #68
	ldr	r1, .L544+292
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+296
	sub	r3, fp, #68
	ldr	r1, .L544+300
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+304
	sub	r3, fp, #68
	ldr	r1, .L544+308
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+312
	sub	r3, fp, #68
	ldr	r1, .L544+316
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+320
	sub	r3, fp, #68
	ldr	r1, .L544+324
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+328
	sub	r3, fp, #68
	ldr	r1, .L544+332
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+336
	sub	r3, fp, #68
	ldr	r1, .L544+340
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+344
	sub	r3, fp, #68
	ldr	r1, .L544+348
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+352
	sub	r3, fp, #68
	ldr	r1, .L544+356
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+360
	sub	r3, fp, #68
	ldr	r1, .L544+364
	mov	r0, r3
	bl	LoadSound
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+372
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+376
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #20
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+380
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #40
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+384
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #60
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+388
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #80
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+392
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #100
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+396
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #120
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+368
	sub	r3, fp, #68
	ldr	r1, .L544+400
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #140
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L544+404
	sub	r3, fp, #68
	ldr	r1, .L544+408
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+412
	sub	r3, fp, #68
	ldr	r1, .L544+416
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+420
	sub	r3, fp, #68
	ldr	r1, .L544+424
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+428
	sub	r3, fp, #68
	ldr	r1, .L544+432
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+436
	sub	r3, fp, #68
	ldr	r1, .L544+440
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+444
	sub	r3, fp, #68
	ldr	r1, .L544+448
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+452
	sub	r3, fp, #68
	ldr	r1, .L544+456
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+460
	sub	r3, fp, #68
	ldr	r1, .L544+464
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+468
	sub	r3, fp, #68
	ldr	r1, .L544+472
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+476
	sub	r3, fp, #68
	ldr	r1, .L544+480
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+484
	sub	r3, fp, #68
	ldr	r1, .L544+488
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+492
	sub	r3, fp, #68
	ldr	r1, .L544+496
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L542
.L543:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+500
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r4, r0, r3
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+508
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r4, r3, #16
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #4
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+512
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r4, r3, #40
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+516
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r4, r3, #56
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #4
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+520
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r4, r3, #80
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r1, r3
	ldr	r0, .L544+524
	bl	TextFormat
	mov	r1, r0
	ldr	r0, .L544+504
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r4, r3, #96
	sub	r3, fp, #68
	mov	r0, r3
	bl	LoadTexture
	add	ip, r4, #4
	sub	lr, fp, #68
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L542:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L543
	ldr	r4, .L544+528
	sub	r3, fp, #68
	ldr	r1, .L544+532
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+536
	sub	r3, fp, #68
	ldr	r1, .L544+540
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+544
	sub	r3, fp, #68
	ldr	r1, .L544+548
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+552
	sub	r3, fp, #68
	ldr	r1, .L544+556
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+560
	sub	r3, fp, #68
	ldr	r1, .L544+564
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+568
	sub	r3, fp, #68
	ldr	r1, .L544+572
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #68
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L544+576
	sub	r3, fp, #108
	ldr	r1, .L544+580
	mov	r0, r3
	bl	LoadMusicStream
	mov	lr, r4
	sub	ip, fp, #108
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	vldr.32	s14, .L544+112
	vldr.32	s15, .L544+116
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-36]
	vldr.32	s14, .L544+120
	vldr.32	s15, .L544+128
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	ldr	r4, .L544+584
	sub	r0, fp, #204
	vldr.32	s14, [fp, #-36]
	vldr.32	s15, [fp, #-32]
	vldr.64	d4, .L544
	mov	r3, #1
	vmov.f32	s6, s14
	vmov.f32	s7, s15
	mov	r2, #1
	vldr.64	d2, .L544+8
	vldr.64	d1, .L544+16
	vldr.64	d0, .L544+24
	mov	r1, #0
	bl	CreateCustomer
	mov	r0, r4
	sub	r3, fp, #204
	mov	r2, #96
	mov	r1, r3
	bl	memcpy
	vldr.32	s14, .L544+112
	vldr.32	s15, .L544+148
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-44]
	vldr.32	s14, .L544+120
	vldr.32	s15, .L544+156
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-40]
	ldr	r4, .L544+588
	sub	r0, fp, #204
	vldr.32	s14, [fp, #-44]
	vldr.32	s15, [fp, #-40]
	vldr.64	d4, .L544
	mov	r3, #2
	vmov.f32	s6, s14
	vmov.f32	s7, s15
	mov	r2, #1
	vldr.64	d2, .L544+32
	vldr.64	d1, .L544+40
	vldr.64	d0, .L544+48
	mov	r1, #0
	bl	CreateCustomer
	mov	r0, r4
	sub	r3, fp, #204
	mov	r2, #96
	mov	r1, r3
	bl	memcpy
	ldr	r0, .L544+584
	bl	RandomCustomerBlinkTime
	ldr	r0, .L544+588
	bl	RandomCustomerBlinkTime
	ldr	r3, .L544+584
	mov	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, .L544+588
	mov	r2, #1
	strb	r2, [r3, #80]
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-28]
	vsub.f64	d7, d6, d7
	ldr	r3, .L544+592
	vstr.64	d7, [r3]
	ldr	r3, .L544+596
	mov	r2, #1
	strb	r2, [r3]
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L545:
	.align	3
.L544:
	.word	0
	.word	0
	.word	0
	.word	1070596096
	.word	0
	.word	1074790400
	.word	0
	.word	1073741824
	.word	858993459
	.word	1070805811
	.word	-858993459
	.word	1075104972
	.word	-1717986918
	.word	1071225241
	.word	backgroundTexture
	.word	.LC71
	.word	backgroundOverlayTexture
	.word	.LC72
	.word	backgroundOverlaySidebarTexture
	.word	.LC73
	.word	pawTexture
	.word	.LC74
	.word	checkbox
	.word	.LC75
	.word	checkboxChecked
	.word	.LC76
	.word	left_arrow
	.word	.LC77
	.word	-999292928
	.word	1143111680
	.word	-1006174208
	.word	right_arrow
	.word	1113325568
	.word	.LC78
	.word	hoverFx
	.word	.LC79
	.word	selectFx
	.word	1150681088
	.word	.LC80
	.word	1112539136
	.word	boongFx
	.word	.LC81
	.word	angry1Fx
	.word	.LC82
	.word	angry2Fx
	.word	.LC83
	.word	angry3Fx
	.word	.LC84
	.word	angry4Fx
	.word	.LC85
	.word	bottle1Fx
	.word	.LC86
	.word	bottle2Fx
	.word	.LC87
	.word	bottle3Fx
	.word	.LC88
	.word	confused1Fx
	.word	.LC89
	.word	confused2Fx
	.word	.LC90
	.word	confused3Fx
	.word	.LC91
	.word	confused4Fx
	.word	.LC92
	.word	correctFx
	.word	.LC93
	.word	drop1Fx
	.word	.LC94
	.word	drop2Fx
	.word	.LC95
	.word	drop3Fx
	.word	.LC96
	.word	pickup1Fx
	.word	.LC97
	.word	pickup2Fx
	.word	.LC98
	.word	pickup3Fx
	.word	.LC99
	.word	pour1Fx
	.word	.LC100
	.word	pour2Fx
	.word	.LC101
	.word	pour3Fx
	.word	.LC102
	.word	stir1Fx
	.word	.LC103
	.word	stir2Fx
	.word	.LC104
	.word	stir3Fx
	.word	.LC105
	.word	flickFx
	.word	.LC106
	.word	menuFallingItemTextures
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	teaPowderTexture
	.word	.LC115
	.word	cocoaPowderTexture
	.word	.LC116
	.word	caramelSauceTexture
	.word	.LC117
	.word	chocolateSauceTexture
	.word	.LC118
	.word	condensedMilkTexture
	.word	.LC119
	.word	normalMilkTexture
	.word	.LC120
	.word	marshMellowTexture
	.word	.LC121
	.word	whippedCreamTexture
	.word	.LC122
	.word	hotWaterTexture
	.word	.LC123
	.word	greenChonTexture
	.word	.LC124
	.word	cocoaChonTexture
	.word	.LC125
	.word	trashCanTexture
	.word	.LC126
	.word	.LC127
	.word	customersImageData
	.word	.LC128
	.word	.LC129
	.word	.LC130
	.word	.LC131
	.word	.LC132
	.word	cloud1Texture
	.word	.LC133
	.word	cloud2Texture
	.word	.LC134
	.word	cloud3Texture
	.word	.LC135
	.word	star1Texture
	.word	.LC136
	.word	star2Texture
	.word	.LC137
	.word	bubbles
	.word	.LC138
	.word	menuBgm
	.word	.LC139
	.word	menuCustomer1
	.word	menuCustomer2
	.word	loadDurationTimer
	.word	isGlobalAssetsLoadFinished
	.size	LoadGlobalAssets, .-LoadGlobalAssets
	.align	2
	.global	UnloadGlobalAssets
	.syntax unified
	.arm
	.fpu vfp
	.type	UnloadGlobalAssets, %function
UnloadGlobalAssets:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	ldr	r3, .L551
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+4
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+8
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+12
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r4, .L551+16
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	bl	UnloadFont
	ldr	r3, .L551+20
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+24
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+28
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+32
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+36
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadSound
	ldr	r3, .L551+40
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadSound
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L547
.L548:
	ldr	r1, .L551+44
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L547:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L548
	ldr	r3, .L551+48
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+52
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, .L551+56
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L549
.L550:
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	ldr	r2, [r3, #20]
	str	r2, [sp]
	add	r3, r3, #4
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #40
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #56
	ldr	r2, [r3, #20]
	str	r2, [sp]
	add	r3, r3, #4
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #80
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r1, .L551+60
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #4
	sub	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #96
	ldr	r2, [r3, #20]
	str	r2, [sp]
	add	r3, r3, #4
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L549:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L550
	ldr	r4, .L551+64
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	UnloadMusicStream
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L552:
	.align	2
.L551:
	.word	backgroundTexture
	.word	backgroundOverlayTexture
	.word	backgroundOverlaySidebarTexture
	.word	pawTexture
	.word	meowFont
	.word	checkbox
	.word	checkboxChecked
	.word	left_arrow
	.word	right_arrow
	.word	hoverFx
	.word	selectFx
	.word	menuFallingItemTextures
	.word	logoTexture
	.word	splashBackgroundTexture
	.word	splashOverlayTexture
	.word	customersImageData
	.word	menuBgm
	.size	UnloadGlobalAssets, .-UnloadGlobalAssets
	.align	2
	.global	StopBgm
	.syntax unified
	.arm
	.fpu vfp
	.type	StopBgm, %function
StopBgm:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-16]
	ldr	r4, [fp, #-16]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldm	r4, {r0, r1, r2, r3}
	bl	StopMusicStream
	ldr	r3, .L554
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L554+4
	mov	r2, #0
	str	r2, [r3]
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L555:
	.align	2
.L554:
	.word	isCurrentBgmPaused
	.word	currentBgm
	.size	StopBgm, .-StopBgm
	.align	2
	.global	ColorAlphaOverride
	.syntax unified
	.arm
	.fpu vfp
	.type	ColorAlphaOverride, %function
ColorAlphaOverride:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	vstr.32	s0, [fp, #-20]
	ldrb	r0, [fp, #-16]	@ zero_extendqisi2
	ldrb	r1, [fp, #-15]	@ zero_extendqisi2
	ldrb	r2, [fp, #-14]	@ zero_extendqisi2
	vldr.32	s15, [fp, #-20]
	vldr.32	s14, .L558
	vmul.f32	s15, s15, s14
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-24]	@ int
	ldrb	r3, [fp, #-24]
	uxtb	r3, r3
	strb	r0, [fp, #-8]
	strb	r1, [fp, #-7]
	strb	r2, [fp, #-6]
	strb	r3, [fp, #-5]
	mov	r3, #0
	ldrb	r2, [fp, #-8]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #255
	orr	r3, r2, r3
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #65280
	lsl	r2, r2, #8
	orr	r3, r2, r3
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #16711680
	lsl	r2, r2, #16
	orr	r3, r2, r3
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #-16777216
	lsl	r2, r2, #24
	orr	r3, r2, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L559:
	.align	2
.L558:
	.word	1132396544
	.size	ColorAlphaOverride, .-ColorAlphaOverride
	.align	2
	.global	ColorLerp
	.syntax unified
	.arm
	.fpu vfp
	.type	ColorLerp, %function
ColorLerp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	vstr.32	s0, [fp, #-24]
	vldr.32	s15, [fp, #-24]
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L562
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vldr.64	d1, .L562+8
	vmov.f64	d0, d7
	bl	fmin
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-24]
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	rsb	r3, r3, #255
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-16]
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	rsb	r3, r3, #255
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-15]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	rsb	r3, r3, #255
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-14]
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-20]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-12]
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-19]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-11]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-10]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r2, r3
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	sub	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [fp, #-24]
	vmul.f32	s15, s13, s15
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-28]	@ int
	ldrb	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-9]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-8]
	mov	r3, #0
	ldrb	r2, [fp, #-8]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #255
	orr	r3, r2, r3
	ldrb	r2, [fp, #-7]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #65280
	lsl	r2, r2, #8
	orr	r3, r2, r3
	ldrb	r2, [fp, #-6]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #16711680
	lsl	r2, r2, #16
	orr	r3, r2, r3
	ldrb	r2, [fp, #-5]	@ zero_extendqisi2
	uxtb	r2, r2
	bic	r3, r3, #-16777216
	lsl	r2, r2, #24
	orr	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L563:
	.align	3
.L562:
	.word	0
	.word	0
	.word	0
	.word	1072693248
	.size	ColorLerp, .-ColorLerp
	.section	.rodata
	.align	2
.LC140:
	.ascii	"Time %.2f/%.2f | Phrase %d/%d\000"
	.text
	.align	2
	.global	DrawDayNightCycle
	.syntax unified
	.arm
	.fpu vfp
	.type	DrawDayNightCycle, %function
DrawDayNightCycle:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #16
	sub	sp, sp, #124
	vstr.64	d0, [fp, #-108]
	mvn	r3, #82
	strb	r3, [fp, #-56]
	mvn	r3, #39
	strb	r3, [fp, #-55]
	mvn	r3, #25
	strb	r3, [fp, #-54]
	mvn	r3, #0
	strb	r3, [fp, #-53]
	mov	r3, #0
	strb	r3, [fp, #-52]
	mov	r3, #102
	strb	r3, [fp, #-51]
	mvn	r3, #51
	strb	r3, [fp, #-50]
	mvn	r3, #0
	strb	r3, [fp, #-49]
	mvn	r3, #10
	strb	r3, [fp, #-48]
	mvn	r3, #94
	strb	r3, [fp, #-47]
	mov	r3, #59
	strb	r3, [fp, #-46]
	mvn	r3, #0
	strb	r3, [fp, #-45]
	mov	r3, #0
	strb	r3, [fp, #-44]
	mov	r3, #0
	strb	r3, [fp, #-43]
	mov	r3, #102
	strb	r3, [fp, #-42]
	mvn	r3, #0
	strb	r3, [fp, #-41]
	ldr	r3, .L572+48
	vldr.32	s14, [r3]
	vldr.32	s13, .L572+8
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
	ldr	r3, .L572+52
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, .L572+52
	ldr	r3, [r3]
	add	r3, r3, #1
	and	r3, r3, #3
	str	r3, [fp, #-32]
	ldr	r3, .L572+56
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L572
	vmov.f64	d0, d7
	bl	fmin
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-36]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r3, [r3, #-36]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r3, [r3, #-36]
	str	r3, [fp, #-80]
	vldr.32	s0, [fp, #-36]
	ldr	r1, [fp, #-80]
	ldr	r0, [fp, #-76]
	bl	ColorLerp
	mov	r3, r0
	str	r3, [fp, #-84]
	vldr.32	s15, .L572+12
	vcvt.s32.f32	s14, s15
	vldr.32	s15, .L572+16
	vcvt.s32.f32	s15, s15
	ldr	r3, [fp, #-84]
	str	r3, [sp]
	ldr	r3, .L572+60
	mov	r2, #1920
	vmov	r1, s15	@ int
	vmov	r0, s14	@ int
	bl	DrawRectangle
	vldr.64	d0, [fp, #-108]
	bl	DrawMovingCloudAndStar
	ldr	r3, .L572+64
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L565
	ldr	r3, .L572+68
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L565
	vldr.32	s14, .L572+12
	vldr.32	s15, .L572+20
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s16, s15
	vldr.32	s14, .L572+16
	vldr.32	s15, .L572+24
	vadd.f32	s15, s14, s15
	vcvt.s32.f32	s17, s15
	ldr	r3, .L572+72
	ldr	r3, [r3]
	str	r3, [fp, #-88]
	vldr.32	s0, .L572+28
	ldr	r0, [fp, #-88]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #400
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r3, .L572+56
	vldr.32	s14, [r3]
	ldr	r3, .L572+48
	vldr.32	s15, [r3]
	vmul.f32	s15, s14, s15
	vcvt.f64.f32	d6, s15
	ldr	r3, .L572+48
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	ldr	r3, .L572+52
	ldr	r3, [r3]
	add	r3, r3, #1
	mov	r2, #4
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r0, .L572+76
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L572+12
	vldr.32	s15, .L572+32
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L572+20
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-96]
	vldr.32	s14, .L572+16
	vldr.32	s15, .L572+24
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-92]
	ldr	r3, .L572+80
	ldr	r3, [r3]
	str	r3, [fp, #-100]
	vldr.32	s14, [fp, #-96]
	vldr.32	s15, [fp, #-92]
	ldr	r4, .L572+84
	ldr	r3, [fp, #-100]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L572+36
	vldr.32	s2, .L572+40
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L565:
	ldr	r3, .L572+56
	vldr.32	s15, [r3]
	vldr.32	s14, .L572+44
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L570
	ldr	r2, .L572+52
	ldr	r3, [fp, #-32]
	str	r3, [r2]
	ldr	r3, .L572+56
	mov	r2, #0
	str	r2, [r3]	@ float
	b	.L571
.L570:
	bl	GetFrameTime
	vmov.f32	s14, s0
	vldr.32	s15, [fp, #-24]
	vmul.f32	s14, s14, s15
	ldr	r3, .L572+56
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	ldr	r3, .L572+56
	vstr.32	s15, [r3]
.L571:
	nop
	sub	sp, fp, #16
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, fp, pc}
.L573:
	.align	3
.L572:
	.word	0
	.word	1072693248
	.word	1082130432
	.word	-999292928
	.word	-1006174208
	.word	1140457472
	.word	1103626240
	.word	1060320051
	.word	1156579328
	.word	1073741824
	.word	1101004800
	.word	1065353216
	.word	dayNightCycleDuration
	.word	currentColorIndex
	.word	colorTransitionTime
	.word	1080
	.word	options
	.word	debugToolToggles
	.word	.LC6
	.word	.LC140
	.word	.LC1
	.word	meowFont
	.size	DrawDayNightCycle, .-DrawDayNightCycle
	.section	.rodata
	.align	2
.LC141:
	.ascii	"Music\000"
	.align	2
.LC142:
	.ascii	"Sound FX\000"
	.align	2
.LC143:
	.ascii	"Fullscreen\000"
	.align	2
.LC144:
	.ascii	"Debug\000"
	.align	2
.LC145:
	.ascii	"Difficulty\000"
	.align	2
.LC146:
	.ascii	"Resolution\000"
	.align	2
.LC147:
	.ascii	"%dx%d\000"
	.align	2
.LC148:
	.ascii	"Target FPS\000"
	.align	2
.LC149:
	.ascii	"%d FPS\000"
	.align	2
.LC150:
	.ascii	"Back\000"
	.text
	.align	2
	.global	OptionsUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	OptionsUpdate, %function
OptionsUpdate:
	@ args = 0, pretend = 0, frame = 784
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #816
	str	r0, [fp, #-792]
	vldr.32	s14, .L698
	vldr.32	s15, .L698+4
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-292]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-288]
	ldr	r3, .L698+40
	str	r3, [fp, #-284]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-280]	@ float
	ldr	r3, [fp, #-292]	@ float
	str	r3, [fp, #-308]	@ float
	ldr	r3, [fp, #-288]	@ float
	str	r3, [fp, #-304]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-300]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-296]	@ float
	vldr.32	s15, [fp, #-292]
	vldr.32	s14, .L698+16
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-324]
	ldr	r3, [fp, #-288]	@ float
	str	r3, [fp, #-320]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-316]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-312]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+4
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-340]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+20
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-336]
	ldr	r3, .L698+40
	str	r3, [fp, #-332]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-328]	@ float
	ldr	r3, [fp, #-340]	@ float
	str	r3, [fp, #-356]	@ float
	ldr	r3, [fp, #-336]	@ float
	str	r3, [fp, #-352]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-348]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-344]	@ float
	vldr.32	s15, [fp, #-340]
	vldr.32	s14, .L698+16
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-372]
	ldr	r3, [fp, #-336]	@ float
	str	r3, [fp, #-368]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-364]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-360]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+24
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-388]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-384]
	ldr	r3, .L698+40
	str	r3, [fp, #-380]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-376]	@ float
	ldr	r3, [fp, #-388]	@ float
	str	r3, [fp, #-404]	@ float
	ldr	r3, [fp, #-384]	@ float
	str	r3, [fp, #-400]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-396]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-392]	@ float
	vldr.32	s15, [fp, #-388]
	vldr.32	s14, .L698+16
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-420]
	ldr	r3, [fp, #-384]	@ float
	str	r3, [fp, #-416]	@ float
	ldr	r3, .L698+48
	str	r3, [fp, #-412]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-408]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+28
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-436]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-432]
	ldr	r3, .L698+52
	str	r3, [fp, #-428]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-424]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+28
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-452]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+20
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-448]
	ldr	r3, .L698+56
	str	r3, [fp, #-444]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-440]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+32
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-468]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-464]
	ldr	r3, .L698+60
	str	r3, [fp, #-460]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-456]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+32
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-484]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+20
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-480]
	ldr	r3, .L698+52
	str	r3, [fp, #-476]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-472]	@ float
	vldr.32	s14, .L698
	vldr.32	s15, .L698+28
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-500]
	vldr.32	s14, .L698+8
	vldr.32	s15, .L698+36
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-496]
	ldr	r3, .L698+52
	str	r3, [fp, #-492]	@ float
	ldr	r3, .L698+44
	str	r3, [fp, #-488]	@ float
	mov	r3, #1
	strb	r3, [fp, #-13]
	bl	GetTime
	vstr.64	d0, [fp, #-28]
	mov	r3, #0
	strb	r3, [fp, #-29]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]	@ float
	ldr	r2, .L698+64
	ldr	r3, .L698+68
	strd	r2, [fp, #-68]
	ldr	r2, .L698+64
	ldr	r3, .L698+68
	strd	r2, [fp, #-76]
	mov	r3, #1
	strb	r3, [fp, #-41]
	mov	r3, #0
	strb	r3, [fp, #-42]
	ldr	r0, .L698+76
	bl	PlayBgmIfStopped
	b	.L575
.L699:
	.align	2
.L698:
	.word	-999292928
	.word	1145241600
	.word	-1006174208
	.word	1142210560
	.word	1133248512
	.word	1143521280
	.word	1150681088
	.word	1120403456
	.word	1137180672
	.word	1146224640
	.word	1135214592
	.word	1116471296
	.word	1114636288
	.word	1128792064
	.word	1132068864
	.word	1133903872
	.word	1717986918
	.word	1071015526
	.word	1080
	.word	menuBgm
	.word	options
	.word	1065353216
	.word	backgroundTexture
.L695:
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-28]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-84]
	bl	GetTime
	vstr.64	d0, [fp, #-28]
	ldr	r0, [fp, #-792]
	bl	WindowUpdate
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L576
	vldr.32	s15, [fp, #-40]
	vcvt.f64.f32	d6, s15
	vldr.64	d4, [fp, #-84]
	vldr.64	d5, [fp, #-68]
	vdiv.f64	d7, d4, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-40]
	vldr.32	s15, [fp, #-40]
	vldr.32	s14, .L698+84
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L576
	mov	r3, #1065353216
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	strb	r3, [fp, #-41]
.L576:
	ldrb	r3, [fp, #-42]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L578
	vldr.32	s15, [fp, #-40]
	vcvt.f64.f32	d6, s15
	vldr.64	d4, [fp, #-84]
	vldr.64	d5, [fp, #-76]
	vdiv.f64	d7, d4, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-40]
	vldr.32	s15, [fp, #-40]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bhi	.L578
	mov	r3, #0
	str	r3, [fp, #-40]	@ float
	mov	r3, #0
	strb	r3, [fp, #-42]
	mov	r1, #0
	ldr	r0, [fp, #-792]
	bl	MainMenuUpdate
.L578:
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-276]
	vstr.32	s15, [fp, #-272]
	ldr	r3, [fp, #-792]
	vldr.32	s14, [fp, #-276]
	vldr.32	s15, [fp, #-272]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-508]
	vstr.32	s15, [fp, #-504]
	vldr.32	s10, [fp, #-324]
	vldr.32	s11, [fp, #-320]
	vldr.32	s12, [fp, #-316]
	vldr.32	s13, [fp, #-312]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-43]
	vldr.32	s10, [fp, #-308]
	vldr.32	s11, [fp, #-304]
	vldr.32	s12, [fp, #-300]
	vldr.32	s13, [fp, #-296]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-44]
	vldr.32	s10, [fp, #-372]
	vldr.32	s11, [fp, #-368]
	vldr.32	s12, [fp, #-364]
	vldr.32	s13, [fp, #-360]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-45]
	vldr.32	s10, [fp, #-356]
	vldr.32	s11, [fp, #-352]
	vldr.32	s12, [fp, #-348]
	vldr.32	s13, [fp, #-344]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-46]
	vldr.32	s10, [fp, #-420]
	vldr.32	s11, [fp, #-416]
	vldr.32	s12, [fp, #-412]
	vldr.32	s13, [fp, #-408]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-47]
	vldr.32	s10, [fp, #-404]
	vldr.32	s11, [fp, #-400]
	vldr.32	s12, [fp, #-396]
	vldr.32	s13, [fp, #-392]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-48]
	vldr.32	s10, [fp, #-436]
	vldr.32	s11, [fp, #-432]
	vldr.32	s12, [fp, #-428]
	vldr.32	s13, [fp, #-424]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-49]
	vldr.32	s10, [fp, #-452]
	vldr.32	s11, [fp, #-448]
	vldr.32	s12, [fp, #-444]
	vldr.32	s13, [fp, #-440]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-50]
	vldr.32	s10, [fp, #-468]
	vldr.32	s11, [fp, #-464]
	vldr.32	s12, [fp, #-460]
	vldr.32	s13, [fp, #-456]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-51]
	vldr.32	s10, [fp, #-484]
	vldr.32	s11, [fp, #-480]
	vldr.32	s12, [fp, #-476]
	vldr.32	s13, [fp, #-472]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-52]
	vldr.32	s10, [fp, #-500]
	vldr.32	s11, [fp, #-496]
	vldr.32	s12, [fp, #-492]
	vldr.32	s13, [fp, #-488]
	vldr.32	s14, [fp, #-508]
	vldr.32	s15, [fp, #-504]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-53]
	ldrb	r3, [fp, #-13]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L580
	mov	r0, #0
	bl	IsMouseButtonPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L580
	ldrb	r3, [fp, #-41]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L580
	ldrb	r3, [fp, #-42]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L580
	ldrb	r3, [fp, #-43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L581
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L582
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #3
	str	r2, [r3, #16]
	b	.L583
.L582:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #3
	bne	.L584
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1
	str	r2, [r3, #16]
	b	.L583
.L584:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L585
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #4
	str	r2, [r3, #16]
	b	.L583
.L585:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #4
	bne	.L586
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #2
	str	r2, [r3, #16]
	b	.L583
.L586:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L583
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #5
	str	r2, [r3, #16]
.L583:
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L581:
	ldrb	r3, [fp, #-44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L587
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	bne	.L588
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #2
	str	r2, [r3, #16]
	b	.L589
.L588:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L590
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #4
	str	r2, [r3, #16]
	b	.L589
.L590:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #4
	bne	.L591
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1
	str	r2, [r3, #16]
	b	.L589
.L591:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L592
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #3
	str	r2, [r3, #16]
	b	.L589
.L592:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #3
	bne	.L589
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3, #16]
.L589:
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L587:
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L593
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #1280
	bne	.L594
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1920
	str	r2, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r2, .L698+72
	str	r2, [r3, #4]
	b	.L595
.L594:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #1280
	blt	.L596
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #720
	bge	.L595
.L596:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1280
	str	r2, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #720
	str	r2, [r3, #4]
.L595:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r0, [fp, #-792]
	bl	SetRuntimeResolution
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L593:
	ldrb	r3, [fp, #-46]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L597
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #1920
	bne	.L598
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1280
	str	r2, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #720
	str	r2, [r3, #4]
	b	.L599
.L598:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #1920
	bgt	.L600
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, .L698+72
	cmp	r3, r2
	ble	.L599
.L600:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1920
	str	r2, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r2, .L698+72
	str	r2, [r3, #4]
.L599:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r0, [fp, #-792]
	bl	SetRuntimeResolution
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L597:
	ldrb	r3, [fp, #-47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L601
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #30
	bne	.L602
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #60
	str	r2, [r3, #8]
	b	.L603
.L602:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #60
	bne	.L604
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #120
	str	r2, [r3, #8]
	b	.L603
.L604:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #120
	bne	.L605
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #144
	str	r2, [r3, #8]
	b	.L603
.L605:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #144
	bne	.L606
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #240
	str	r2, [r3, #8]
	b	.L603
.L606:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #240
	bne	.L603
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #1000
	str	r2, [r3, #8]
.L603:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	SetTargetFPS
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L601:
	ldrb	r3, [fp, #-48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L607
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #60
	bne	.L608
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #30
	str	r2, [r3, #8]
	b	.L609
.L608:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #120
	bne	.L610
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #60
	str	r2, [r3, #8]
	b	.L609
.L610:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #144
	bne	.L611
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #120
	str	r2, [r3, #8]
	b	.L609
.L611:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #240
	bne	.L612
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #144
	str	r2, [r3, #8]
	b	.L609
.L612:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #1000
	bne	.L609
	ldr	r3, .L698+80
	ldr	r3, [r3]
	mov	r2, #240
	str	r2, [r3, #8]
.L609:
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	SetTargetFPS
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L607:
	ldrb	r3, [fp, #-51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L613
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L698+80
	ldr	r3, [r3]
	and	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #12]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r0, [fp, #-792]
	bl	SetRuntimeResolution
	bl	ToggleFullscreen
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L613:
	ldrb	r3, [fp, #-52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L614
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L698+80
	ldr	r3, [r3]
	and	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #20]
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L614:
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L615
	mov	r3, #1
	strb	r3, [fp, #-42]
	mov	r0, #1
	bl	PlaySoundFx
	b	.L580
.L615:
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L616
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L698+80
	ldr	r3, [r3]
	and	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #22]
	mov	r0, #1
	bl	PlaySoundFx
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L617
	ldr	r0, .L698+76
	bl	PlayBgm
	b	.L580
.L617:
	ldr	r0, .L698+76
	bl	PauseBgm
	b	.L580
.L616:
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L580
	ldr	r3, .L698+80
	ldr	r3, [r3]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L698+80
	ldr	r3, [r3]
	and	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #21]
	mov	r0, #1
	bl	PlaySoundFx
.L580:
	ldrb	r3, [fp, #-41]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L618
	ldrb	r3, [fp, #-42]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L618
	ldrb	r3, [fp, #-43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L619
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L620
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L621
.L620:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L621:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L653
.L619:
	ldrb	r3, [fp, #-44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L623
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L624
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	beq	.L625
.L624:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L625:
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L653
.L623:
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L626
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L627
	ldr	r3, [fp, #-36]
	cmp	r3, #2
	beq	.L628
.L627:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L628:
	mov	r3, #2
	str	r3, [fp, #-36]
	b	.L653
.L626:
	ldrb	r3, [fp, #-46]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L629
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L630
	ldr	r3, [fp, #-36]
	cmp	r3, #3
	beq	.L631
.L630:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L631:
	mov	r3, #3
	str	r3, [fp, #-36]
	b	.L653
.L629:
	ldrb	r3, [fp, #-47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L632
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L633
	ldr	r3, [fp, #-36]
	cmp	r3, #4
	beq	.L634
.L633:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L634:
	mov	r3, #4
	str	r3, [fp, #-36]
	b	.L653
.L632:
	ldrb	r3, [fp, #-48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L635
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L636
	ldr	r3, [fp, #-36]
	cmp	r3, #5
	beq	.L637
.L636:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L637:
	mov	r3, #5
	str	r3, [fp, #-36]
	b	.L653
.L635:
	ldrb	r3, [fp, #-51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L638
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L639
	ldr	r3, [fp, #-36]
	cmp	r3, #6
	beq	.L640
.L639:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L640:
	mov	r3, #6
	str	r3, [fp, #-36]
	b	.L653
.L638:
	ldrb	r3, [fp, #-52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L641
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L642
	ldr	r3, [fp, #-36]
	cmp	r3, #7
	beq	.L643
.L642:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L643:
	mov	r3, #7
	str	r3, [fp, #-36]
	b	.L653
.L641:
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L644
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L645
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	beq	.L646
.L645:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L646:
	mov	r3, #8
	str	r3, [fp, #-36]
	b	.L653
.L644:
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L647
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L648
	ldr	r3, [fp, #-36]
	cmp	r3, #9
	beq	.L649
.L648:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L649:
	mov	r3, #9
	str	r3, [fp, #-36]
	b	.L653
.L647:
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L650
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L651
	ldr	r3, [fp, #-36]
	cmp	r3, #10
	beq	.L652
.L651:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
.L652:
	mov	r3, #10
	str	r3, [fp, #-36]
	b	.L653
.L650:
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	strb	r3, [fp, #-29]
	b	.L653
.L618:
	mov	r3, #0
	strb	r3, [fp, #-43]
	mov	r3, #0
	strb	r3, [fp, #-44]
	mov	r3, #0
	strb	r3, [fp, #-45]
	mov	r3, #0
	strb	r3, [fp, #-46]
	mov	r3, #0
	strb	r3, [fp, #-47]
	mov	r3, #0
	strb	r3, [fp, #-48]
	mov	r3, #0
	strb	r3, [fp, #-49]
	mov	r3, #0
	strb	r3, [fp, #-50]
	mov	r3, #0
	strb	r3, [fp, #-51]
	mov	r3, #0
	strb	r3, [fp, #-52]
	mov	r3, #0
	strb	r3, [fp, #-53]
.L653:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L654
	mov	r3, #0
	strb	r3, [fp, #-13]
.L654:
	bl	BeginDrawing
	mov	r3, #0
	strb	r3, [fp, #-512]
	mov	r3, #0
	strb	r3, [fp, #-511]
	mov	r3, #0
	strb	r3, [fp, #-510]
	mvn	r3, #0
	strb	r3, [fp, #-509]
	ldr	r0, [fp, #-512]
	bl	ClearBackground
	ldr	r3, [fp, #-792]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L698+88
	ldr	r3, [r3, #4]
	str	r3, [fp, #-88]
	ldr	r3, .L698+88
	ldr	r3, [r3, #8]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-88]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L700
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-96]
	ldr	r3, [fp, #-92]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L700+4
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-100]
	vldr.64	d0, [fp, #-84]
	bl	DrawDayNightCycle
	mov	r0, #1
	vldr.64	d0, [fp, #-84]
	bl	DrawMenuFallingItems
	vldr.64	d0, [fp, #-84]
	bl	DrawCustomerInMenu
	ldr	r3, .L700+8
	str	r3, [fp, #-520]	@ float
	ldr	r3, .L700+12
	str	r3, [fp, #-516]	@ float
	vldr.32	s15, [fp, #-96]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-100]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-524]
	vldr.32	s14, [fp, #-520]
	vldr.32	s15, [fp, #-516]
	ldr	r3, .L700+16
	ldr	r2, [fp, #-524]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	mov	r0, #0
	vldr.64	d0, [fp, #-84]
	bl	DrawMenuFallingItems
	ldr	r3, .L700+32
	ldr	r3, [r3]
	ldrb	r3, [r3, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L655
	ldr	r3, .L700+36
	sub	ip, fp, #268
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L656
.L655:
	ldr	r3, .L700+40
	sub	ip, fp, #268
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L656:
	vldr.32	s15, [fp, #-436]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-532]
	vldr.32	s15, [fp, #-432]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-528]
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-536]
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L657
	vldr.32	s15, .L700+88
	b	.L658
.L657:
	vldr.32	s15, [fp, #-40]
.L658:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-536]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-248]
	vldr.32	s14, [fp, #-532]
	vldr.32	s15, [fp, #-528]
	ldr	r3, [fp, #-248]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-252]
	str	r3, [sp]
	sub	r3, fp, #268
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+72
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-436]
	vldr.32	s14, .L700+100
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-544]
	vldr.32	s15, [fp, #-432]
	vldr.32	s14, .L700+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-540]
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L659
	vldr.32	s15, .L700+88
	b	.L660
.L659:
	vldr.32	s15, [fp, #-40]
.L660:
	ldr	r3, .L700+60
	vmov.f32	s0, s15
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-244]
	vldr.32	s14, [fp, #-544]
	vldr.32	s15, [fp, #-540]
	ldr	r4, .L700+64
	ldr	r3, [fp, #-244]
	str	r3, [sp, #28]
	ldr	r3, .L700+20
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L700+80
	vldr.32	s2, .L700+84
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L700+32
	ldr	r3, [r3]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L661
	ldr	r3, .L700+36
	sub	ip, fp, #240
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L662
.L661:
	ldr	r3, .L700+40
	sub	ip, fp, #240
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L662:
	vldr.32	s15, [fp, #-452]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-552]
	vldr.32	s15, [fp, #-448]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-548]
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-556]
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L663
	vldr.32	s15, .L700+88
	b	.L664
.L663:
	vldr.32	s15, [fp, #-40]
.L664:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-556]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-220]
	vldr.32	s14, [fp, #-552]
	vldr.32	s15, [fp, #-548]
	ldr	r3, [fp, #-220]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-224]
	str	r3, [sp]
	sub	r3, fp, #240
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+72
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-452]
	vldr.32	s14, .L700+100
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-564]
	vldr.32	s15, [fp, #-448]
	vldr.32	s14, .L700+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-560]
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L665
	vldr.32	s15, .L700+88
	b	.L666
.L665:
	vldr.32	s15, [fp, #-40]
.L666:
	ldr	r3, .L700+60
	vmov.f32	s0, s15
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-216]
	vldr.32	s14, [fp, #-564]
	vldr.32	s15, [fp, #-560]
	ldr	r4, .L700+64
	ldr	r3, [fp, #-216]
	str	r3, [sp, #28]
	ldr	r3, .L700+24
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L700+80
	vldr.32	s2, .L700+84
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L700+32
	ldr	r3, [r3]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L667
	ldr	r3, .L700+36
	sub	ip, fp, #212
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L668
.L701:
	.align	2
.L700:
	.word	1156579328
	.word	1149698048
	.word	-999292928
	.word	-1006174208
	.word	backgroundOverlayTexture
	.word	.LC141
	.word	.LC142
	.word	.LC143
	.word	options
	.word	checkboxChecked
	.word	checkbox
	.word	.LC144
	.word	left_arrow
	.word	.LC1
	.word	right_arrow
	.word	MAIN_BROWN
	.word	meowFont
	.word	.LC145
	.word	1042983595
	.word	1102053376
	.word	1073741824
	.word	1107296256
	.word	1061158912
	.word	1045220557
	.word	0
	.word	1117782016
	.word	1092616192
.L667:
	ldr	r3, .L700+40
	sub	ip, fp, #212
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L668:
	vldr.32	s15, [fp, #-468]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-572]
	vldr.32	s15, [fp, #-464]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-568]
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-576]
	ldrb	r3, [fp, #-51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L669
	vldr.32	s15, .L700+88
	b	.L670
.L669:
	vldr.32	s15, [fp, #-40]
.L670:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-576]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-192]
	vldr.32	s14, [fp, #-572]
	vldr.32	s15, [fp, #-568]
	ldr	r3, [fp, #-192]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-196]
	str	r3, [sp]
	sub	r3, fp, #212
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+72
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-468]
	vldr.32	s14, .L700+100
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-584]
	vldr.32	s15, [fp, #-464]
	vldr.32	s14, .L700+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-580]
	ldrb	r3, [fp, #-51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L671
	vldr.32	s15, .L700+88
	b	.L672
.L671:
	vldr.32	s15, [fp, #-40]
.L672:
	ldr	r3, .L700+60
	vmov.f32	s0, s15
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-188]
	vldr.32	s14, [fp, #-584]
	vldr.32	s15, [fp, #-580]
	ldr	r4, .L700+64
	ldr	r3, [fp, #-188]
	str	r3, [sp, #28]
	ldr	r3, .L700+28
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L700+80
	vldr.32	s2, .L700+84
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L700+32
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L673
	ldr	r3, .L700+36
	sub	ip, fp, #184
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	b	.L674
.L673:
	ldr	r3, .L700+40
	sub	ip, fp, #184
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
.L674:
	vldr.32	s15, [fp, #-484]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-592]
	vldr.32	s15, [fp, #-480]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-588]
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-596]
	ldrb	r3, [fp, #-52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L675
	vldr.32	s15, .L700+88
	b	.L676
.L675:
	vldr.32	s15, [fp, #-40]
.L676:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-596]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-164]
	vldr.32	s14, [fp, #-592]
	vldr.32	s15, [fp, #-588]
	ldr	r3, [fp, #-164]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-168]
	str	r3, [sp]
	sub	r3, fp, #184
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+72
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-484]
	vldr.32	s14, .L700+100
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-604]
	vldr.32	s15, [fp, #-480]
	vldr.32	s14, .L700+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-600]
	ldrb	r3, [fp, #-52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L677
	vldr.32	s15, .L700+88
	b	.L678
.L677:
	vldr.32	s15, [fp, #-40]
.L678:
	ldr	r3, .L700+60
	vmov.f32	s0, s15
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-160]
	vldr.32	s14, [fp, #-604]
	vldr.32	s15, [fp, #-600]
	ldr	r4, .L700+64
	ldr	r3, [fp, #-160]
	str	r3, [sp, #28]
	ldr	r3, .L700+44
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L700+80
	vldr.32	s2, .L700+84
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-308]	@ float
	str	r3, [fp, #-612]	@ float
	ldr	r3, [fp, #-304]	@ float
	str	r3, [fp, #-608]	@ float
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-616]
	ldrb	r3, [fp, #-44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L679
	vldr.32	s15, .L700+88
	b	.L680
.L679:
	vldr.32	s15, [fp, #-40]
.L680:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-616]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-156]
	vldr.32	s14, [fp, #-612]
	vldr.32	s15, [fp, #-608]
	ldr	r3, .L700+48
	ldr	r2, [fp, #-156]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+92
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, [fp, #-324]	@ float
	str	r3, [fp, #-624]	@ float
	ldr	r3, [fp, #-320]	@ float
	str	r3, [fp, #-620]	@ float
	ldr	r3, .L700+52
	ldr	r3, [r3]
	str	r3, [fp, #-628]
	ldrb	r3, [fp, #-43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L681
	vldr.32	s15, .L700+88
	b	.L682
.L681:
	vldr.32	s15, [fp, #-40]
.L682:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-628]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-152]
	vldr.32	s14, [fp, #-624]
	vldr.32	s15, [fp, #-620]
	ldr	r3, .L700+56
	ldr	r2, [fp, #-152]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L700+92
	vldr.32	s2, .L700+96
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-292]
	vldr.32	s14, .L700+100
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-636]
	vldr.32	s15, [fp, #-288]
	vldr.32	s14, .L700+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-632]
	ldr	r3, .L700+60
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-148]
	vldr.32	s14, [fp, #-636]
	vldr.32	s15, [fp, #-632]
	ldr	r4, .L700+64
	ldr	r3, [fp, #-148]
	str	r3, [sp, #28]
	ldr	r3, .L700+68
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L702+48
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	StringFromDifficultyEnum
	mov	r5, r0
	vldr.32	s15, [fp, #-292]
	vldr.32	s14, .L702+72
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-644]
	vldr.32	s15, [fp, #-288]
	vldr.32	s14, .L702+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-640]
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-144]
	vldr.32	s14, [fp, #-644]
	vldr.32	s15, [fp, #-640]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-144]
	str	r3, [sp, #28]
	str	r5, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-356]	@ float
	str	r3, [fp, #-652]	@ float
	ldr	r3, [fp, #-352]	@ float
	str	r3, [fp, #-648]	@ float
	ldr	r3, .L702+36
	ldr	r3, [r3]
	str	r3, [fp, #-656]
	ldrb	r3, [fp, #-46]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L683
	vldr.32	s15, .L702
	b	.L684
.L683:
	vldr.32	s15, [fp, #-40]
.L684:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-656]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-140]
	vldr.32	s14, [fp, #-652]
	vldr.32	s15, [fp, #-648]
	ldr	r3, .L702+4
	ldr	r2, [fp, #-140]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L702+60
	vldr.32	s2, .L702+64
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, [fp, #-372]	@ float
	str	r3, [fp, #-664]	@ float
	ldr	r3, [fp, #-352]	@ float
	str	r3, [fp, #-660]	@ float
	ldr	r3, .L702+36
	ldr	r3, [r3]
	str	r3, [fp, #-668]
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L685
	vldr.32	s15, .L702
	b	.L686
.L685:
	vldr.32	s15, [fp, #-40]
.L686:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-668]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-136]
	vldr.32	s14, [fp, #-664]
	vldr.32	s15, [fp, #-660]
	ldr	r3, .L702+16
	ldr	r2, [fp, #-136]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L702+60
	vldr.32	s2, .L702+64
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-340]
	vldr.32	s14, .L702+72
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-676]
	vldr.32	s15, [fp, #-336]
	vldr.32	s14, .L702+68
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-672]
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-132]
	vldr.32	s14, [fp, #-676]
	vldr.32	s15, [fp, #-672]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-132]
	str	r3, [sp, #28]
	ldr	r3, .L702+8
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L702+48
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, .L702+48
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r0, .L702+12
	bl	TextFormat
	mov	r5, r0
	vldr.32	s15, [fp, #-340]
	vldr.32	s14, .L702+72
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-684]
	vldr.32	s15, [fp, #-336]
	vldr.32	s14, .L702+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-680]
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-128]
	vldr.32	s14, [fp, #-684]
	vldr.32	s15, [fp, #-680]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-128]
	str	r3, [sp, #28]
	str	r5, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-404]	@ float
	str	r3, [fp, #-692]	@ float
	ldr	r3, [fp, #-400]	@ float
	str	r3, [fp, #-688]	@ float
	ldr	r3, .L702+36
	ldr	r3, [r3]
	str	r3, [fp, #-696]
	ldrb	r3, [fp, #-48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L687
	vldr.32	s15, .L702
	b	.L688
.L687:
	vldr.32	s15, [fp, #-40]
.L688:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-696]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-124]
	vldr.32	s14, [fp, #-692]
	vldr.32	s15, [fp, #-688]
	ldr	r3, .L702+4
	ldr	r2, [fp, #-124]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L702+60
	vldr.32	s2, .L702+64
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, [fp, #-420]	@ float
	str	r3, [fp, #-704]	@ float
	ldr	r3, [fp, #-400]	@ float
	str	r3, [fp, #-700]	@ float
	ldr	r3, .L702+36
	ldr	r3, [r3]
	str	r3, [fp, #-708]
	ldrb	r3, [fp, #-47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L689
	vldr.32	s15, .L702
	b	.L690
.L703:
	.align	2
.L702:
	.word	1061158912
	.word	left_arrow
	.word	.LC146
	.word	.LC147
	.word	right_arrow
	.word	.LC148
	.word	.LC149
	.word	MAIN_ORANGE
	.word	MAIN_BROWN
	.word	.LC1
	.word	meowFont
	.word	.LC150
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	1045220557
	.word	0
	.word	1092616192
	.word	1117782016
	.word	1109917696
	.word	1114636288
	.word	1101004800
	.word	1073741824
	.word	1107296256
	.word	1065353216
.L689:
	vldr.32	s15, [fp, #-40]
.L690:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-708]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-120]
	vldr.32	s14, [fp, #-704]
	vldr.32	s15, [fp, #-700]
	ldr	r3, .L702+16
	ldr	r2, [fp, #-120]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vldr.32	s3, .L702+60
	vldr.32	s2, .L702+64
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-388]
	vldr.32	s14, .L702+72
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-716]
	vldr.32	s15, [fp, #-384]
	vldr.32	s14, .L702+68
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-712]
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-116]
	vldr.32	s14, [fp, #-716]
	vldr.32	s15, [fp, #-712]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-116]
	str	r3, [sp, #28]
	ldr	r3, .L702+20
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L702+48
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r0, .L702+24
	bl	TextFormat
	mov	r5, r0
	vldr.32	s15, [fp, #-388]
	vldr.32	s14, .L702+72
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-724]
	vldr.32	s15, [fp, #-384]
	vldr.32	s14, .L702+76
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-720]
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-112]
	vldr.32	s14, [fp, #-724]
	vldr.32	s15, [fp, #-720]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-112]
	str	r3, [sp, #28]
	str	r5, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L691
	ldr	r3, .L702+28
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-108]
	b	.L692
.L691:
	ldr	r3, .L702+32
	vldr.32	s0, [fp, #-40]
	ldr	r0, [r3]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-108]
.L692:
	vldr.32	s12, [fp, #-500]
	vldr.32	s13, [fp, #-496]
	vldr.32	s14, [fp, #-492]
	vldr.32	s15, [fp, #-488]
	ldr	r0, [fp, #-108]
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleRec
	vldr.32	s15, [fp, #-500]
	vldr.32	s14, .L702+80
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-732]
	vldr.32	s15, [fp, #-496]
	vldr.32	s14, .L702+84
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-728]
	ldr	r3, .L702+36
	ldr	r3, [r3]
	str	r3, [fp, #-736]
	vldr.32	s0, [fp, #-40]
	ldr	r0, [fp, #-736]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-104]
	vldr.32	s14, [fp, #-732]
	vldr.32	s15, [fp, #-728]
	ldr	r4, .L702+40
	ldr	r3, [fp, #-104]
	str	r3, [sp, #28]
	ldr	r3, .L702+44
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L702+88
	vldr.32	s2, .L702+92
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L702+48
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L693
	ldr	r3, .L702+52
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L693
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-740]
	vldr.32	s12, [fp, #-292]
	vldr.32	s13, [fp, #-288]
	vldr.32	s14, [fp, #-284]
	vldr.32	s15, [fp, #-280]
	ldr	r0, [fp, #-740]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-744]
	vldr.32	s12, [fp, #-308]
	vldr.32	s13, [fp, #-304]
	vldr.32	s14, [fp, #-300]
	vldr.32	s15, [fp, #-296]
	ldr	r0, [fp, #-744]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-748]
	vldr.32	s12, [fp, #-324]
	vldr.32	s13, [fp, #-320]
	vldr.32	s14, [fp, #-316]
	vldr.32	s15, [fp, #-312]
	ldr	r0, [fp, #-748]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-752]
	vldr.32	s12, [fp, #-340]
	vldr.32	s13, [fp, #-336]
	vldr.32	s14, [fp, #-332]
	vldr.32	s15, [fp, #-328]
	ldr	r0, [fp, #-752]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-756]
	vldr.32	s12, [fp, #-356]
	vldr.32	s13, [fp, #-352]
	vldr.32	s14, [fp, #-348]
	vldr.32	s15, [fp, #-344]
	ldr	r0, [fp, #-756]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-760]
	vldr.32	s12, [fp, #-372]
	vldr.32	s13, [fp, #-368]
	vldr.32	s14, [fp, #-364]
	vldr.32	s15, [fp, #-360]
	ldr	r0, [fp, #-760]
	vldr.32	s4, .L702+96
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L702+56
	ldr	r3, [r3]
	str	r3, [fp, #-764]
	vldr.32	s12, [fp, #-388]
	vldr.32	s13, [fp, #-384]
	vldr.32	s14, [fp, #-380]
	vldr.32	s15, [fp, #-376]
	ldr	r0, [fp, #-764]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-768]
	vldr.32	s12, [fp, #-404]
	vldr.32	s13, [fp, #-400]
	vldr.32	s14, [fp, #-396]
	vldr.32	s15, [fp, #-392]
	ldr	r0, [fp, #-768]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-772]
	vldr.32	s12, [fp, #-420]
	vldr.32	s13, [fp, #-416]
	vldr.32	s14, [fp, #-412]
	vldr.32	s15, [fp, #-408]
	ldr	r0, [fp, #-772]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-776]
	vldr.32	s12, [fp, #-436]
	vldr.32	s13, [fp, #-432]
	vldr.32	s14, [fp, #-428]
	vldr.32	s15, [fp, #-424]
	ldr	r0, [fp, #-776]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-780]
	vldr.32	s12, [fp, #-452]
	vldr.32	s13, [fp, #-448]
	vldr.32	s14, [fp, #-444]
	vldr.32	s15, [fp, #-440]
	ldr	r0, [fp, #-780]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-784]
	vldr.32	s12, [fp, #-468]
	vldr.32	s13, [fp, #-464]
	vldr.32	s14, [fp, #-460]
	vldr.32	s15, [fp, #-456]
	ldr	r0, [fp, #-784]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L704+4
	ldr	r3, [r3]
	str	r3, [fp, #-788]
	vldr.32	s12, [fp, #-484]
	vldr.32	s13, [fp, #-480]
	vldr.32	s14, [fp, #-476]
	vldr.32	s15, [fp, #-472]
	ldr	r0, [fp, #-788]
	vldr.32	s4, .L704
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
.L693:
	bl	DrawOuterWorld
	ldr	r3, .L704+8
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L694
	ldr	r0, [fp, #-792]
	bl	DrawDebugOverlay
.L694:
	bl	EndMode2D
	bl	EndDrawing
.L575:
	bl	WindowShouldClose
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L695
	bl	ExitApplication
	nop
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
.L705:
	.align	2
.L704:
	.word	1065353216
	.word	.LC3
	.word	options
	.size	OptionsUpdate, .-OptionsUpdate
	.section	.rodata
	.align	2
.LC151:
	.ascii	"New random customer texture: %d\000"
	.text
	.align	2
	.global	RandomCustomerTexture
	.syntax unified
	.arm
	.fpu vfp
	.type	RandomCustomerTexture, %function
RandomCustomerTexture:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r1, #3
	mov	r0, #0
	bl	GetRandomIntValue
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L708
	bl	LogDebug
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L709:
	.align	2
.L708:
	.word	.LC151
	.size	RandomCustomerTexture, .-RandomCustomerTexture
	.section	.rodata
	.align	2
.LC152:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/MAT.png\000"
	.align	2
.LC153:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets//spriteshee"
	.ascii	"ts/CUPS.png\000"
	.align	2
.LC154:
	.ascii	"Powder type: %d, Water: %d, Creamer: %d\000"
	.align	2
.LC155:
	.ascii	"Topping: %d, Sauce: %d\000"
	.align	2
.LC156:
	.ascii	"Cup\000"
	.align	2
.LC157:
	.ascii	"%s | XY %.2f,%.2f | Active %s\000"
	.align	2
.LC158:
	.ascii	"Cups\000"
	.align	2
.LC159:
	.ascii	"%s | XY %.2f,%.2f | Grabbable %s\000"
	.align	2
.LC160:
	.ascii	"Plate\000"
	.align	2
.LC161:
	.ascii	"Score: %d\000"
	.align	2
.LC162:
	.ascii	"End\000"
	.align	2
.LC8:
	.word	1145077760
	.word	-1007026176
	.word	1124859904
	.word	1116471296
	.text
	.align	2
	.global	GameUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	GameUpdate, %function
GameUpdate:
	@ args = 0, pretend = 0, frame = 1976
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	vpush.64	{d8}
	add	fp, sp, #20
	sub	sp, sp, #2128
	str	r0, [fp, #-1992]
	bl	GetTime
	vstr.64	d0, [fp, #-28]
	mov	r3, #0
	strb	r3, [fp, #-38]
	mov	r3, #0
	strb	r3, [fp, #-29]
	mov	r3, #0
	strb	r3, [fp, #-30]
	mov	r3, #0
	strb	r3, [fp, #-31]
	ldr	r3, .L790+8
	mov	r2, #3
	str	r2, [r3]
	vldr.32	s14, .L790
	vldr.32	s15, .L790+4
	vmul.f32	s15, s14, s15
	ldr	r3, .L790+12
	vstr.32	s15, [r3]
	ldr	r3, .L790+16
	ldr	r2, .L790+20
	str	r2, [r3]	@ float
	mov	r3, #0
	strb	r3, [fp, #-32]
	sub	r3, fp, #288
	mov	r2, #156
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #288
	ldr	r1, .L790+24
	mov	r0, r3
	bl	LoadTexture
	sub	r3, fp, #132
	ldr	r1, .L790+28
	mov	r0, r3
	bl	LoadTexture
	ldr	r3, .L790+32
	mov	lr, r3
	sub	ip, fp, #132
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r3, .L790+32
	ldr	r2, .L790+36
	add	r3, r3, #20
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	sub	r3, fp, #344
	ldr	r1, .L790+40
	mov	r0, r3
	bl	LoadTexture
	ldr	r3, .L790+44
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+44
	ldr	r3, .L790+48
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+44
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+44
	ldr	r2, .L790+52
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+44
	ldr	r2, .L790+52
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+44
	mov	r2, #3
	str	r2, [r3, #56]
	ldr	r3, .L790+44
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+44
	ldr	r3, [r3, #56]
	ldr	r2, .L790+44
	ldr	r2, [r2, #60]
	ldr	r4, .L790+44
	ldr	r5, .L790+44
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+56
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+56
	ldr	r3, .L790+60
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+56
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+56
	ldr	r2, .L790+64
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+56
	ldr	r2, .L790+64
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+56
	mov	r2, #3
	str	r2, [r3, #56]
	ldr	r3, .L790+56
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+56
	ldr	r3, [r3, #56]
	ldr	r2, .L790+56
	ldr	r2, [r2, #60]
	ldr	r4, .L790+56
	ldr	r5, .L790+56
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+68
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+68
	ldr	r3, .L790+72
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+68
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+68
	ldr	r2, .L790+76
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+68
	ldr	r2, .L790+76
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+68
	mov	r2, #3
	str	r2, [r3, #56]
	ldr	r3, .L790+68
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+68
	ldr	r3, [r3, #56]
	ldr	r2, .L790+68
	ldr	r2, [r2, #60]
	ldr	r4, .L790+68
	ldr	r5, .L790+68
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+88
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+88
	ldr	r3, .L790+80
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+88
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+88
	ldr	r2, .L790+84
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+88
	ldr	r2, .L790+84
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+88
	mov	r2, #3
	str	r2, [r3, #56]
	ldr	r3, .L790+88
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+88
	ldr	r3, [r3, #56]
	ldr	r2, .L790+88
	ldr	r2, [r2, #60]
	b	.L791
.L792:
	.align	2
.L790:
	.word	1123024896
	.word	1077936128
	.word	currentColorIndex
	.word	dayNightCycleDuration
	.word	colorTransitionTime
	.word	1045220557
	.word	.LC17
	.word	.LC152
	.word	plate
	.word	oriplatePosition
	.word	.LC153
	.word	teaPowder
	.word	teaPowderTexture
	.word	oriteapowderPosition
	.word	cocoaPowder
	.word	cocoaPowderTexture
	.word	oricocoapowderPosition
	.word	caramelSauce
	.word	caramelSauceTexture
	.word	oricaramelPosition
	.word	chocolateSauceTexture
	.word	orichocolatePosition
	.word	chocolateSauce
	.word	condensedMilkTexture
	.word	oricondensedmilkPosition
	.word	condensedMilk
	.word	normalMilkTexture
	.word	orimilkPosition
	.word	normalMilk
	.word	marshMellowTexture
	.word	orimarshmellowPosition
	.word	marshMellow
	.word	whippedCreamTexture
	.word	oriwhippedPosition
	.word	whippedCream
	.word	hotWaterTexture
	.word	oriwaterPosition
	.word	hotWater
	.word	greenChonTexture
	.word	greenChon
	.word	cocoaChonTexture
	.word	hiddenPosition
	.word	cocoaChon
	.word	trashCanTexture
	.word	trashCanPosition
	.word	trashCan
.L791:
	ldr	r4, .L790+88
	ldr	r5, .L790+88
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+100
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+100
	ldr	r3, .L790+92
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+100
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+100
	ldr	r2, .L790+96
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+100
	ldr	r2, .L790+96
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+100
	mov	r2, #2
	str	r2, [r3, #56]
	ldr	r3, .L790+100
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+100
	ldr	r3, [r3, #56]
	ldr	r2, .L790+100
	ldr	r2, [r2, #60]
	ldr	r4, .L790+100
	ldr	r5, .L790+100
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+112
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+112
	ldr	r3, .L790+104
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+112
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+112
	ldr	r2, .L790+108
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+112
	ldr	r2, .L790+108
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+112
	mov	r2, #2
	str	r2, [r3, #56]
	ldr	r3, .L790+112
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+112
	ldr	r3, [r3, #56]
	ldr	r2, .L790+112
	ldr	r2, [r2, #60]
	ldr	r4, .L790+112
	ldr	r5, .L790+112
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+124
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+124
	ldr	r3, .L790+116
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+124
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+124
	ldr	r2, .L790+120
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+124
	ldr	r2, .L790+120
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+124
	mov	r2, #2
	str	r2, [r3, #56]
	ldr	r3, .L790+124
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+124
	ldr	r3, [r3, #56]
	ldr	r2, .L790+124
	ldr	r2, [r2, #60]
	ldr	r4, .L790+124
	ldr	r5, .L790+124
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+136
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+136
	ldr	r3, .L790+128
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+136
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+136
	ldr	r2, .L790+132
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+136
	ldr	r2, .L790+132
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+136
	mov	r2, #2
	str	r2, [r3, #56]
	ldr	r3, .L790+136
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+136
	ldr	r3, [r3, #56]
	ldr	r2, .L790+136
	ldr	r2, [r2, #60]
	ldr	r4, .L790+136
	ldr	r5, .L790+136
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+148
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+148
	ldr	r3, .L790+140
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+148
	mov	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, .L790+148
	ldr	r2, .L790+144
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+148
	ldr	r2, .L790+144
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+148
	mov	r2, #17
	str	r2, [r3, #56]
	ldr	r3, .L790+148
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+148
	ldr	r3, [r3, #56]
	ldr	r2, .L790+148
	ldr	r2, [r2, #60]
	ldr	r4, .L790+148
	ldr	r5, .L790+148
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+148
	mov	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, .L790+156
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+156
	ldr	r3, .L790+152
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+156
	ldr	r2, .L790+164
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+156
	ldr	r2, .L790+164
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+156
	mov	r2, #1
	str	r2, [r3, #56]
	ldr	r3, .L790+156
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+156
	ldr	r3, [r3, #56]
	ldr	r2, .L790+156
	ldr	r2, [r2, #60]
	ldr	r4, .L790+156
	ldr	r5, .L790+156
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+168
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+168
	ldr	r3, .L790+160
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+168
	ldr	r2, .L790+164
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+168
	ldr	r2, .L790+164
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+168
	mov	r2, #1
	str	r2, [r3, #56]
	ldr	r3, .L790+168
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+168
	ldr	r3, [r3, #56]
	ldr	r2, .L790+168
	ldr	r2, [r2, #60]
	ldr	r4, .L790+168
	ldr	r5, .L790+168
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	ldr	r3, .L790+180
	mov	r0, r3
	mov	r3, #64
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r2, .L790+180
	ldr	r3, .L790+172
	mov	ip, r2
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L790+180
	ldr	r2, .L790+176
	add	r3, r3, #24
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+180
	ldr	r2, .L790+176
	add	r3, r3, #32
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L790+180
	mov	r2, #1
	str	r2, [r3, #60]
	ldr	r3, .L790+180
	mov	r2, #2
	str	r2, [r3, #56]
	ldr	r3, .L790+180
	ldr	r3, [r3, #56]
	ldr	r2, .L790+180
	ldr	r2, [r2, #60]
	ldr	r4, .L790+180
	ldr	r5, .L790+180
	str	r2, [sp, #52]
	str	r3, [sp, #48]
	mov	lr, sp
	add	ip, r5, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	bl	frameRect
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [r4, #40]
	vstr.32	s13, [r4, #44]
	vstr.32	s14, [r4, #48]
	vstr.32	s15, [r4, #52]
	mov	r3, #0
	str	r3, [fp, #-36]
	vldr.32	s14, .L793+8
	vldr.32	s15, .L793+12
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1680
	vstr.32	s15, [r3]
	vldr.32	s14, .L793+16
	vldr.32	s15, .L793+20
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1680
	vstr.32	s15, [r3, #4]
	vldr.32	s14, .L793+8
	vldr.32	s15, .L793+24
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vstr.32	s15, [r3]
	vldr.32	s14, .L793+16
	vldr.32	s15, .L793+20
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vstr.32	s15, [r3, #4]
	vldr.32	s14, .L793+8
	vldr.32	s15, .L793+28
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1696
	vstr.32	s15, [r3]
	vldr.32	s14, .L793+16
	vldr.32	s15, .L793+20
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1696
	vstr.32	s15, [r3, #4]
	ldr	r3, .L793+32
	sub	ip, fp, #1728
	sub	ip, ip, #4
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	sub	r3, fp, #1744
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r0, r3
	bl	RandomCustomerInitialResetBasedOnDifficulty
	bl	RandomCustomerTimeoutBasedOnDifficulty
	vmov.f64	d7, d0
	vcvt.s32.f64	s16, d7
	bl	RandomCustomerTexture
	mov	r2, r0
	sub	r3, fp, #1744
	sub	r3, r3, #4
	vldr.64	d7, [r3, #-8]
	sub	r0, fp, #1200
	sub	r0, r0, #4
	sub	r0, r0, #8
	sub	r3, fp, #20
	sub	r3, r3, #1680
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1664
	sub	r3, r3, #12
	vldr.32	s13, [r3]
	vmov.f64	d2, d7
	mov	r3, r2
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov	r2, s16	@ int
	vldr.64	d0, .L793
	mov	r1, #1
	bl	CreateCustomerWithOrder
	bl	RandomCustomerTimeoutBasedOnDifficulty
	vmov.f64	d7, d0
	vcvt.s32.f64	s16, d7
	bl	RandomCustomerTexture
	mov	r2, r0
	sub	r3, fp, #1744
	sub	r3, r3, #4
	vldr.64	d7, [r3]
	sub	r0, fp, #1296
	sub	r0, r0, #4
	sub	r0, r0, #8
	sub	r3, fp, #20
	sub	r3, r3, #1680
	sub	r3, r3, #8
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1680
	sub	r3, r3, #4
	vldr.32	s13, [r3]
	vmov.f64	d2, d7
	mov	r3, r2
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov	r2, s16	@ int
	vldr.64	d0, .L793
	mov	r1, #1
	bl	CreateCustomerWithOrder
	bl	RandomCustomerTimeoutBasedOnDifficulty
	vmov.f64	d7, d0
	vcvt.s32.f64	s16, d7
	bl	RandomCustomerTexture
	mov	r2, r0
	sub	r3, fp, #1744
	sub	r3, r3, #4
	vldr.64	d7, [r3, #8]
	sub	r0, fp, #1392
	sub	r0, r0, #4
	sub	r0, r0, #8
	sub	r3, fp, #20
	sub	r3, r3, #1696
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1680
	sub	r3, r3, #12
	vldr.32	s13, [r3]
	vmov.f64	d2, d7
	mov	r3, r2
	vmov.f32	s2, s12
	vmov.f32	s3, s13
	vmov	r2, s16	@ int
	vldr.64	d0, .L793
	mov	r1, #1
	bl	CreateCustomerWithOrder
	mov	r3, #0
	strb	r3, [fp, #-1179]
	mov	r3, #0
	strb	r3, [fp, #-1275]
	mov	r3, #0
	strb	r3, [fp, #-1371]
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	sub	r1, fp, #1200
	sub	r1, r1, #4
	sub	r1, r1, #8
	mov	r2, #96
	mov	r0, r3
	bl	memcpy
	sub	r3, fp, #1584
	sub	r3, r3, #4
	sub	r3, r3, #8
	sub	r1, fp, #1296
	sub	r1, r1, #4
	sub	r1, r1, #8
	mov	r2, #96
	mov	r0, r3
	bl	memcpy
	sub	r3, fp, #1488
	sub	r3, r3, #4
	sub	r3, r3, #8
	sub	r1, fp, #1392
	sub	r1, r1, #4
	sub	r1, r1, #8
	mov	r2, #96
	mov	r0, r3
	bl	memcpy
	b	.L711
.L794:
	.align	3
.L793:
	.word	0
	.word	0
	.word	-999292928
	.word	1112014848
	.word	-1006174208
	.word	1120403456
	.word	1143111680
	.word	1151090688
	.word	.LC8
	.word	greenChon
	.word	cocoaChon
	.word	plate
	.word	dragAndDropLocked
	.word	teaPowder
	.word	cocoaPowder
	.word	condensedMilk
	.word	normalMilk
	.word	whippedCream
	.word	marshMellow
	.word	caramelSauce
	.word	chocolateSauce
	.word	trashCan
	.word	currentColorIndex
	.word	options
	.word	hotWater
	.word	backgroundTexture
.L789:
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-28]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-52]
	bl	GetTime
	vstr.64	d0, [fp, #-28]
	ldr	r0, [fp, #-1992]
	bl	WindowUpdate
	mov	r3, #0
	strb	r3, [fp, #-37]
	mov	r0, #0
	bl	IsMouseButtonDown
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L712
	ldr	r3, .L793+48
	mov	r2, #0
	strb	r2, [r3]
.L712:
	ldr	r3, .L793+48
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L713
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L714
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+52
	cmp	r3, r2
	bne	.L715
.L714:
	sub	r2, fp, #288
	ldr	r3, [fp, #-1992]
	ldr	r1, .L793+36
	ldr	r0, .L793+52
	bl	DragAndDropIngredientPop
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L715
	mov	r3, #1
	strb	r3, [fp, #-37]
.L715:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L716
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+56
	cmp	r3, r2
	bne	.L717
.L716:
	sub	r2, fp, #288
	ldr	r3, [fp, #-1992]
	ldr	r1, .L793+40
	ldr	r0, .L793+56
	bl	DragAndDropIngredientPop
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L717
	mov	r3, #1
	strb	r3, [fp, #-37]
.L717:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L718
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+60
	cmp	r3, r2
	bne	.L719
.L718:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+60
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L719
	mov	r3, #1
	strb	r3, [fp, #-37]
.L719:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L720
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+64
	cmp	r3, r2
	bne	.L721
.L720:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+64
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L721
	mov	r3, #1
	strb	r3, [fp, #-37]
.L721:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L722
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+68
	cmp	r3, r2
	bne	.L723
.L722:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+68
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L723
	mov	r3, #1
	strb	r3, [fp, #-37]
.L723:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L724
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+72
	cmp	r3, r2
	bne	.L725
.L724:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+72
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L725
	mov	r3, #1
	strb	r3, [fp, #-37]
.L725:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L726
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+76
	cmp	r3, r2
	bne	.L727
.L726:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+76
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L727
	mov	r3, #1
	strb	r3, [fp, #-37]
.L727:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L728
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+80
	cmp	r3, r2
	bne	.L729
.L728:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+80
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L729
	mov	r3, #1
	strb	r3, [fp, #-37]
.L729:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L730
	ldr	r3, [fp, #-36]
	ldr	r2, .L793+96
	cmp	r3, r2
	bne	.L731
.L730:
	sub	r3, fp, #288
	ldr	r2, [fp, #-1992]
	mov	r1, r3
	ldr	r0, .L793+96
	bl	DragAndDropIngredient
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L731
	mov	r3, #1
	strb	r3, [fp, #-37]
.L731:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L732
	sub	r3, fp, #288
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	bne	.L713
.L732:
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	sub	r0, fp, #288
	ldr	r2, .L793+84
	str	r2, [sp]
	ldr	r2, [fp, #-1992]
	ldr	r1, .L793+44
	bl	DragAndDropCup
	str	r0, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L713
	mov	r3, #1
	strb	r3, [fp, #-37]
.L713:
	ldr	r3, .L793+48
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L733
	ldrb	r3, [fp, #-37]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L733
	mov	r0, #0
	bl	IsMouseButtonDown
	mov	r3, r0
	cmp	r3, #0
	beq	.L733
	ldr	r3, .L793+48
	mov	r2, #1
	strb	r2, [r3]
.L733:
	ldrb	r3, [fp, #-38]
	strb	r3, [fp, #-53]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L734
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L734
	mov	r0, #7
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-29]
	b	.L735
.L734:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L735
	ldrb	r2, [fp, #-53]	@ zero_extendqisi2
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L736
	mov	r0, #6
	bl	PlaySoundFx
.L736:
	mov	r3, #0
	strb	r3, [fp, #-29]
.L735:
	mov	r3, #0
	strb	r3, [fp, #-30]
	mov	r0, #0
	bl	IsMouseButtonUp
	mov	r3, r0
	cmp	r3, #0
	beq	.L737
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+52
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L738
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L739
.L738:
	mov	r3, #1
	b	.L740
.L739:
	mov	r3, #0
.L740:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+56
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L741
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L742
.L741:
	mov	r3, #1
	b	.L743
.L742:
	mov	r3, #0
.L743:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+60
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L744
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L745
.L744:
	mov	r3, #1
	b	.L746
.L745:
	mov	r3, #0
.L746:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+64
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L747
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L748
.L747:
	mov	r3, #1
	b	.L749
.L748:
	mov	r3, #0
.L749:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+68
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L750
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L751
.L750:
	mov	r3, #1
	b	.L752
.L751:
	mov	r3, #0
.L752:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+72
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L753
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L754
.L753:
	mov	r3, #1
	b	.L755
.L754:
	mov	r3, #0
.L755:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+76
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L756
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L757
.L756:
	mov	r3, #1
	b	.L758
.L757:
	mov	r3, #0
.L758:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+80
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L759
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L760
.L759:
	mov	r3, #1
	b	.L761
.L760:
	mov	r3, #0
.L761:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+96
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L762
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L763
.L762:
	mov	r3, #1
	b	.L764
.L763:
	mov	r3, #0
.L764:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	ldr	r1, [fp, #-1992]
	ldr	r0, .L793+84
	bl	highlightItem
	mov	r3, r0
	cmp	r3, #0
	bne	.L765
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L766
.L765:
	mov	r3, #1
	b	.L767
.L766:
	mov	r3, #0
.L767:
	strb	r3, [fp, #-30]
	ldrb	r3, [fp, #-30]
	and	r3, r3, #1
	strb	r3, [fp, #-30]
	b	.L768
.L737:
	mov	r3, #0
	strb	r3, [fp, #-30]
.L768:
	ldrb	r3, [fp, #-30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L769
	ldrb	r3, [fp, #-31]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L769
	mov	r3, #1
	strb	r3, [fp, #-31]
	b	.L770
.L769:
	ldrb	r3, [fp, #-30]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L770
	mov	r3, #0
	strb	r3, [fp, #-31]
.L770:
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-112]
	vstr.32	s15, [fp, #-108]
	ldr	r3, [fp, #-1992]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-108]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	sub	r3, fp, #20
	sub	r3, r3, #1744
	vstr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1728
	sub	r3, r3, #12
	vstr.32	s15, [r3]
	ldr	r2, [fp, #-268]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	ldr	r2, [fp, #-264]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #4
	str	r2, [r3, #4]	@ float
	ldr	r2, [fp, #-244]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #4
	str	r2, [r3, #8]	@ float
	ldr	r2, [fp, #-240]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #4
	str	r2, [r3, #12]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #4
	vldr.32	s10, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1808
	vldr.32	s11, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1792
	sub	r3, r3, #12
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1792
	sub	r3, r3, #8
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1744
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1728
	sub	r3, r3, #12
	vldr.32	s15, [r3]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	cmp	r3, #0
	beq	.L771
	mov	r3, #2
	str	r3, [sp, #144]
	mov	r3, #2
	str	r3, [sp, #140]
	mov	r0, sp
	sub	r3, fp, #272
	mov	r2, #140
	mov	r1, r3
	bl	memcpy
	sub	r3, fp, #288
	ldm	r3, {r0, r1, r2, r3}
	bl	frameRectCup
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [fp, #-252]
	vstr.32	s13, [fp, #-248]
	vstr.32	s14, [fp, #-244]
	vstr.32	s15, [fp, #-240]
	b	.L772
.L771:
	mov	r3, #1
	str	r3, [sp, #144]
	mov	r3, #2
	str	r3, [sp, #140]
	mov	r0, sp
	sub	r3, fp, #272
	mov	r2, #140
	mov	r1, r3
	bl	memcpy
	sub	r3, fp, #288
	ldm	r3, {r0, r1, r2, r3}
	bl	frameRectCup
	vmov.f32	s12, s0
	vmov.f32	s13, s1
	vmov.f32	s14, s2
	vmov.f32	s15, s3
	vstr.32	s12, [fp, #-252]
	vstr.32	s13, [fp, #-248]
	vstr.32	s14, [fp, #-244]
	vstr.32	s15, [fp, #-240]
.L772:
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-104]
	vstr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-1992]
	vldr.32	s14, [fp, #-104]
	vldr.32	s15, [fp, #-100]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	sub	r3, fp, #20
	sub	r3, r3, #1744
	sub	r3, r3, #8
	vstr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1744
	sub	r3, r3, #4
	vstr.32	s15, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1712
	vldr.32	s10, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #12
	vldr.32	s11, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #4
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1744
	sub	r3, r3, #8
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1744
	sub	r3, r3, #4
	vldr.32	s15, [r3]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-54]
	mov	r3, #0
	str	r3, [fp, #-60]
	ldrb	r3, [fp, #-32]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L773
	ldr	r3, .L793+88
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L773
	mov	r3, #1
	strb	r3, [fp, #-32]
.L773:
	ldrb	r3, [fp, #-32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L774
	ldr	r3, .L793+88
	ldr	r3, [r3]
	cmp	r3, #1
	ble	.L774
	ldr	r3, .L793+92
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #3
	beq	.L774
	ldr	r3, .L793+92
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #4
	beq	.L774
	ldr	r3, .L793+92
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	beq	.L774
	ldr	r0, [fp, #-1992]
	bl	endgameUpdate
.L774:
	vldr.64	d7, [fp, #-52]
	vcvt.f32.f64	s15, d7
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	vmov.f32	s0, s15
	mov	r0, r3
	bl	Tick
	ldr	r0, .L793+96
	bl	tickBoil
	bl	BeginDrawing
	mov	r3, #0
	strb	r3, [fp, #-1776]
	mov	r3, #0
	strb	r3, [fp, #-1775]
	mov	r3, #0
	strb	r3, [fp, #-1774]
	mvn	r3, #0
	strb	r3, [fp, #-1773]
	ldr	r0, [fp, #-1776]
	bl	ClearBackground
	ldr	r3, [fp, #-1992]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L793+100
	ldr	r3, [r3, #4]
	str	r3, [fp, #-64]
	ldr	r3, .L793+100
	ldr	r3, [r3, #8]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L795
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-72]
	ldr	r3, [fp, #-68]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L795+4
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-76]
	vldr.64	d0, [fp, #-52]
	bl	DrawDayNightCycle
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r0, r3
	bl	render_customers
	ldr	r2, .L795+28
	sub	r3, fp, #20
	sub	r3, r3, #1760
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	ldr	r2, .L795+32
	sub	r3, fp, #20
	sub	r3, r3, #1760
	sub	r3, r3, #4
	str	r2, [r3, #4]	@ float
	vldr.32	s15, [fp, #-72]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-76]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1788]
	sub	r3, fp, #20
	sub	r3, r3, #1760
	sub	r3, r3, #4
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1760
	vldr.32	s15, [r3]
	ldr	r3, .L795+36
	ldr	r2, [fp, #-1788]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L795+8
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, .L795+12
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	vldr.32	s15, .L795+16
	vcvt.s32.f32	s15, s15
	vmov	r0, s15	@ int
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1792]
	ldr	r3, .L795+40
	ldr	r2, [fp, #-1792]
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldr	r4, .L795+44
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+48
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+52
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+56
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	vldr.32	s15, .L795+20
	vcvt.s32.f32	s15, s15
	vmov	r2, s15	@ int
	vldr.32	s15, .L795+24
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1796]
	ldr	r3, [fp, #-1796]
	str	r3, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r3, [fp, #-328]
	str	r3, [sp]
	sub	r3, fp, #344
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldr	r4, .L795+60
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+64
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+68
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+72
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+76
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r4, .L795+80
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	stm	lr, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	bl	DrawDragableItemFrame
	ldr	r3, .L795+84
	vldr.32	s15, [r3, #24]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r3, .L795+84
	vldr.32	s15, [r3, #28]
	vcvt.s32.f32	s15, s15
	vmov	r0, s15	@ int
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1800]
	ldr	r3, .L795+84
	ldr	r2, [fp, #-1800]
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldr	r3, .L795+88
	vldr.32	s15, [r3, #24]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	ldr	r3, .L795+88
	vldr.32	s15, [r3, #28]
	vcvt.s32.f32	s15, s15
	vmov	r0, s15	@ int
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1804]
	ldr	r3, .L795+88
	ldr	r2, [fp, #-1804]
	str	r2, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	DrawTexture
	ldrb	r3, [fp, #-216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L775
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1836]
	vldr.32	s10, [fp, #-268]
	vldr.32	s11, [fp, #-264]
	vldr.32	s12, [fp, #-252]
	vldr.32	s13, [fp, #-248]
	vldr.32	s14, [fp, #-244]
	b	.L796
.L797:
	.align	2
.L795:
	.word	1156579328
	.word	1149698048
	.word	0
	.word	-1020329984
	.word	1133903872
	.word	1136852992
	.word	1117782016
	.word	-999292928
	.word	-1006174208
	.word	backgroundOverlayTexture
	.word	plate
	.word	trashCan
	.word	hotWater
	.word	condensedMilk
	.word	normalMilk
	.word	cocoaPowder
	.word	teaPowder
	.word	chocolateSauce
	.word	caramelSauce
	.word	marshMellow
	.word	whippedCream
	.word	greenChon
	.word	cocoaChon
	.word	options
	.word	debugToolToggles
	.word	.LC6
	.word	.LC154
	.word	.LC155
	.word	.LC44
	.word	.LC45
	.word	.LC156
	.word	.LC157
	.word	.LC1
	.word	meowFont
	.word	1136852992
	.word	1117782016
	.word	.LC3
	.word	1060320051
	.word	1109393408
	.word	1114636288
	.word	1065353216
	.word	1101004800
.L796:
	vldr.32	s15, [fp, #-240]
	ldr	r3, [fp, #-1836]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-272]
	str	r3, [sp]
	sub	r3, fp, #288
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s4, s10
	vmov.f32	s5, s11
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawTextureRec
.L775:
	ldr	r3, .L795+92
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L776
	ldr	r3, .L795+96
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L776
	ldr	r2, [fp, #-268]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #8
	str	r2, [r3]	@ float
	ldr	r2, [fp, #-264]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #8
	str	r2, [r3, #4]	@ float
	ldr	r2, [fp, #-244]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #8
	str	r2, [r3, #8]	@ float
	ldr	r2, [fp, #-240]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #8
	str	r2, [r3, #12]	@ float
	ldr	r3, .L795+144
	ldr	r3, [r3]
	str	r3, [fp, #-1856]
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #8
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1824
	sub	r3, r3, #4
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1824
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1808
	sub	r3, r3, #12
	vldr.32	s15, [r3]
	ldr	r0, [fp, #-1856]
	vldr.32	s4, .L795+160
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	vldr.32	s15, [fp, #-268]
	vcvt.s32.f32	s16, s15
	vldr.32	s15, [fp, #-264]
	vldr.32	s14, .L795+156
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s17, s15
	ldr	r3, .L795+100
	ldr	r3, [r3]
	str	r3, [fp, #-1860]
	vldr.32	s0, .L795+148
	ldr	r0, [fp, #-1860]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	str	r3, [sp]
	mov	r3, #60
	mov	r2, #400
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	ldr	r1, [fp, #-236]
	ldrb	r3, [fp, #-232]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	ldr	r0, .L795+104
	bl	TextFormat
	mov	r1, r0
	ldr	r2, [fp, #-268]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1840
	sub	r3, r3, #8
	str	r2, [r3]	@ float
	vldr.32	s15, [fp, #-264]
	vldr.32	s14, .L795+164
	vsub.f32	s15, s15, s14
	sub	r3, fp, #20
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vstr.32	s15, [r3, #4]
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1872]
	sub	r3, fp, #20
	sub	r3, r3, #1840
	sub	r3, r3, #8
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1840
	sub	r3, r3, #4
	vldr.32	s15, [r3]
	ldr	r4, .L795+132
	ldr	r3, [fp, #-1872]
	str	r3, [sp, #28]
	str	r1, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L795+160
	vldr.32	s2, .L795+164
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, [fp, #-224]
	ldr	r2, [fp, #-220]
	mov	r1, r3
	ldr	r0, .L795+108
	bl	TextFormat
	mov	r1, r0
	ldr	r2, [fp, #-268]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1856
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	vldr.32	s15, [fp, #-264]
	vldr.32	s14, .L795+152
	vsub.f32	s15, s15, s14
	sub	r3, fp, #20
	sub	r3, r3, #1856
	sub	r3, r3, #4
	vstr.32	s15, [r3, #4]
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1884]
	sub	r3, fp, #20
	sub	r3, r3, #1856
	sub	r3, r3, #4
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1856
	vldr.32	s15, [r3]
	ldr	r4, .L795+132
	ldr	r3, [fp, #-1884]
	str	r3, [sp, #28]
	str	r1, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L795+160
	vldr.32	s2, .L795+164
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	vldr.32	s15, [fp, #-268]
	vcvt.f64.f32	d6, s15
	vldr.32	s15, [fp, #-264]
	vcvt.f64.f32	d7, s15
	ldrb	r3, [fp, #-216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L777
	ldr	r3, .L795+112
	b	.L778
.L777:
	ldr	r3, .L795+116
.L778:
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L795+120
	ldr	r0, .L795+124
	bl	TextFormat
	mov	r1, r0
	ldr	r2, [fp, #-268]	@ float
	sub	r3, fp, #20
	sub	r3, r3, #1872
	str	r2, [r3]	@ float
	vldr.32	s15, [fp, #-264]
	vldr.32	s14, .L795+156
	vsub.f32	s15, s15, s14
	sub	r3, fp, #20
	sub	r3, r3, #1872
	vstr.32	s15, [r3, #4]
	ldr	r3, .L795+128
	ldr	r3, [r3]
	str	r3, [fp, #-1896]
	sub	r3, fp, #20
	sub	r3, r3, #1872
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1856
	sub	r3, r3, #12
	vldr.32	s15, [r3]
	ldr	r4, .L795+132
	ldr	r3, [fp, #-1896]
	str	r3, [sp, #28]
	str	r1, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L795+160
	vldr.32	s2, .L795+164
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r2, .L795+136
	sub	r3, fp, #20
	sub	r3, r3, #1888
	sub	r3, r3, #4
	str	r2, [r3]	@ float
	ldr	r2, .L795+140
	sub	r3, fp, #20
	sub	r3, r3, #1888
	sub	r3, r3, #4
	str	r2, [r3, #4]	@ float
	ldr	r3, [fp, #-340]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	sub	r3, fp, #20
	sub	r3, r3, #1888
	sub	r3, r3, #4
	vstr.32	s15, [r3, #8]
	ldr	r3, [fp, #-336]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	sub	r3, fp, #20
	sub	r3, r3, #1888
	sub	r3, r3, #4
	vstr.32	s15, [r3, #12]
	ldr	r3, .L795+144
	ldr	r3, [r3]
	str	r3, [fp, #-1916]
	sub	r3, fp, #20
	sub	r3, r3, #1888
	sub	r3, r3, #4
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1888
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1872
	sub	r3, r3, #12
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1872
	sub	r3, r3, #8
	vldr.32	s15, [r3]
	ldr	r0, [fp, #-1916]
	vldr.32	s4, .L798+88
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	vldr.32	s15, .L798
	vcvt.s32.f32	s16, s15
	vldr.32	s14, .L798+72
	vldr.32	s15, .L798+100
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s17, s15
	ldr	r3, .L798+32
	ldr	r3, [r3]
	str	r3, [fp, #-1920]
	vldr.32	s0, .L798+76
	ldr	r0, [fp, #-1920]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #400
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	vldr.32	s15, .L798
	vcvt.f64.f32	d6, s15
	vldr.32	s15, .L798+72
	vcvt.f64.f32	d7, s15
	ldrb	r3, [fp, #-216]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L779
	ldr	r3, .L798+4
	b	.L780
.L799:
	.align	2
.L798:
	.word	1136852992
	.word	.LC45
	.word	.LC44
	.word	.LC158
	.word	.LC159
	.word	1136852992
	.word	1133903872
	.word	plate
	.word	.LC6
	.word	.LC160
	.word	.LC43
	.word	-1020329984
	.word	global_score
	.word	.LC161
	.word	.LC1
	.word	meowFont
	.word	options
	.word	.LC3
	.word	1117782016
	.word	1060320051
	.word	-1020329984
	.word	1133903872
	.word	1065353216
	.word	-999292928
	.word	-1006174208
	.word	1101004800
	.word	1073741824
	.word	1104150528
.L779:
	ldr	r3, .L798+8
.L780:
	str	r3, [sp, #8]
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L798+12
	ldr	r0, .L798+16
	bl	TextFormat
	mov	r2, r0
	ldr	r1, .L798+20
	sub	r3, fp, #20
	sub	r3, r3, #1904
	sub	r3, r3, #4
	str	r1, [r3]	@ float
	vldr.32	s14, .L798+72
	vldr.32	s15, .L798+100
	vsub.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1904
	sub	r3, r3, #4
	vstr.32	s15, [r3, #4]
	ldr	r3, .L798+56
	ldr	r3, [r3]
	str	r3, [fp, #-1932]
	sub	r3, fp, #20
	sub	r3, r3, #1904
	sub	r3, r3, #4
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1904
	vldr.32	s15, [r3]
	ldr	r4, .L798+60
	ldr	r3, [fp, #-1932]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L798+88
	vldr.32	s2, .L798+100
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r2, .L798+44
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #8
	str	r2, [r3]	@ float
	ldr	r2, .L798+24
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #8
	str	r2, [r3, #4]	@ float
	ldr	r3, .L798+28
	ldr	r3, [r3, #4]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #8
	vstr.32	s15, [r3, #8]
	ldr	r3, .L798+28
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #8
	vstr.32	s15, [r3, #12]
	ldr	r3, .L798+68
	ldr	r3, [r3]
	str	r3, [fp, #-1952]
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #8
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1920
	sub	r3, r3, #4
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1920
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1904
	sub	r3, r3, #12
	vldr.32	s15, [r3]
	ldr	r0, [fp, #-1952]
	vldr.32	s4, .L798+88
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	vldr.32	s15, .L798+80
	vcvt.s32.f32	s16, s15
	vldr.32	s14, .L798+84
	vldr.32	s15, .L798+100
	vsub.f32	s15, s14, s15
	vcvt.s32.f32	s17, s15
	ldr	r3, .L798+32
	ldr	r3, [r3]
	str	r3, [fp, #-1956]
	vldr.32	s0, .L798+76
	ldr	r0, [fp, #-1956]
	bl	Fade
	mov	r3, r0
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	str	r3, [sp]
	mov	r3, #20
	mov	r2, #300
	vmov	r1, s17	@ int
	vmov	r0, s16	@ int
	bl	DrawRectangle
	vldr.32	s15, .L798+80
	vcvt.f64.f32	d6, s15
	vldr.32	s15, .L798+84
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L798+36
	ldr	r0, .L798+40
	bl	TextFormat
	mov	r2, r0
	ldr	r1, .L798+44
	sub	r3, fp, #20
	sub	r3, r3, #1936
	sub	r3, r3, #8
	str	r1, [r3]	@ float
	vldr.32	s14, .L798+84
	vldr.32	s15, .L798+100
	vsub.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1936
	sub	r3, r3, #8
	vstr.32	s15, [r3, #4]
	ldr	r3, .L798+56
	ldr	r3, [r3]
	str	r3, [fp, #-1968]
	sub	r3, fp, #20
	sub	r3, r3, #1936
	sub	r3, r3, #8
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1936
	sub	r3, r3, #4
	vldr.32	s15, [r3]
	ldr	r4, .L798+60
	ldr	r3, [fp, #-1968]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L798+88
	vldr.32	s2, .L798+100
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
.L776:
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	vldr.64	d0, [fp, #-52]
	mov	r0, r3
	bl	UpdateMenuCustomerBlink
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	add	r3, r3, #96
	vldr.64	d0, [fp, #-52]
	mov	r0, r3
	bl	UpdateMenuCustomerBlink
	sub	r3, fp, #1680
	sub	r3, r3, #4
	sub	r3, r3, #8
	add	r3, r3, #192
	vldr.64	d0, [fp, #-52]
	mov	r0, r3
	bl	UpdateMenuCustomerBlink
	ldr	r3, .L798+48
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L798+52
	bl	TextFormat
	mov	r2, r0
	vldr.32	s14, .L798+92
	vldr.32	s15, .L798+100
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1792
	vstr.32	s15, [r3]
	vldr.32	s14, .L798+96
	vldr.32	s15, .L798+100
	vadd.f32	s15, s14, s15
	sub	r3, fp, #20
	sub	r3, r3, #1792
	vstr.32	s15, [r3, #4]
	ldr	r3, .L798+56
	ldr	r3, [r3]
	str	r3, [fp, #-1816]
	sub	r3, fp, #20
	sub	r3, r3, #1792
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1776
	sub	r3, r3, #12
	vldr.32	s15, [r3]
	ldr	r4, .L798+60
	ldr	r3, [fp, #-1816]
	str	r3, [sp, #28]
	str	r2, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L798+104
	vldr.32	s2, .L798+108
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	bl	DrawOuterWorld
	ldr	r3, .L798+64
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L781
	ldr	r0, [fp, #-1992]
	bl	DrawDebugOverlay
.L781:
	ldr	r3, .L798+64
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #3
	beq	.L782
	ldr	r3, .L798+64
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #4
	beq	.L782
	ldr	r3, .L798+64
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #5
	bne	.L783
.L782:
	ldr	r3, .L798+68
	ldr	r3, [r3]
	str	r3, [fp, #-1972]
	ldrb	r3, [fp, #-54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L784
	vldr.32	s15, .L800
	b	.L785
.L784:
	vldr.32	s15, .L800+4
.L785:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-1972]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-84]
	sub	r3, fp, #20
	sub	r3, r3, #1712
	vldr.32	s12, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #12
	vldr.32	s13, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #8
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1696
	sub	r3, r3, #4
	vldr.32	s15, [r3]
	ldr	r0, [fp, #-84]
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleRec
	sub	r3, fp, #20
	sub	r3, r3, #1712
	vldr.32	s15, [r3]
	vldr.32	s14, .L800+8
	vadd.f32	s15, s15, s14
	sub	r3, fp, #20
	sub	r3, r3, #1952
	sub	r3, r3, #8
	vstr.32	s15, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1712
	vldr.32	s15, [r3, #4]
	vldr.32	s14, .L800+12
	vadd.f32	s15, s15, s14
	sub	r3, fp, #20
	sub	r3, r3, #1952
	sub	r3, r3, #8
	vstr.32	s15, [r3, #4]
	ldr	r3, .L800+24
	ldr	r3, [r3]
	str	r3, [fp, #-1984]
	ldrb	r3, [fp, #-54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L786
	vldr.32	s15, .L800
	b	.L787
.L786:
	vldr.32	s15, .L800+4
.L787:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-1984]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-80]
	sub	r3, fp, #20
	sub	r3, r3, #1952
	sub	r3, r3, #8
	vldr.32	s14, [r3]
	sub	r3, fp, #20
	sub	r3, r3, #1952
	sub	r3, r3, #4
	vldr.32	s15, [r3]
	ldr	r4, .L800+28
	ldr	r3, [fp, #-80]
	str	r3, [sp, #28]
	ldr	r3, .L800+32
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L800+16
	vldr.32	s2, .L800+20
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	mov	r0, #0
	bl	IsMouseButtonPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L783
	ldrb	r3, [fp, #-54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L783
	mov	r0, #0
	bl	IsMouseButtonPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L783
	ldrb	r3, [fp, #-54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L783
	ldr	r0, [fp, #-1992]
	bl	endgameUpdate
.L783:
	bl	EndMode2D
	bl	EndDrawing
.L711:
	bl	WindowShouldClose
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L789
	ldr	r3, .L800+36
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	bl	CloseWindow
	nop
	sub	sp, fp, #20
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, fp, pc}
.L801:
	.align	2
.L800:
	.word	1056964608
	.word	1065353216
	.word	1109917696
	.word	1102053376
	.word	1073741824
	.word	1107296256
	.word	.LC1
	.word	meowFont
	.word	.LC162
	.word	backgroundTexture
	.size	GameUpdate, .-GameUpdate
	.align	2
	.global	ResetGameState
	.syntax unified
	.arm
	.fpu vfp
	.type	ResetGameState, %function
ResetGameState:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	ldr	r3, .L803
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L803+4
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L803+8
	mov	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, .L803+8
	mov	r2, #1
	str	r2, [r3, #60]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L804:
	.align	2
.L803:
	.word	global_score
	.word	triggerHotWater
	.word	hotWater
	.size	ResetGameState, .-ResetGameState
	.section	.rodata
	.align	2
.LC163:
	.ascii	"Score\000"
	.align	2
.LC164:
	.ascii	"%d\000"
	.align	2
.LC165:
	.ascii	"Menu\000"
	.align	2
.LC9:
	.word	-1014333440
	.word	-1016004608
	.word	1142292480
	.word	1138819072
	.align	2
.LC10:
	.word	-1017577472
	.word	-1019019264
	.word	1139802112
	.word	1135869952
	.align	2
.LC11:
	.word	-1054867456
	.word	1113325568
	.text
	.align	2
	.global	endgameUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	endgameUpdate, %function
endgameUpdate:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #212
	str	r0, [fp, #-184]
	ldr	r3, .L814+40
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r3, .L814+40
	ldr	r3, [r3, #8]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L814
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-24]
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L814+4
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-28]
	ldr	r3, .L814+44
	sub	ip, fp, #76
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	vldr.32	s14, [fp, #-76]
	vldr.32	s13, [fp, #-68]
	vldr.32	s12, .L814+120
	vdiv.f32	s15, s13, s12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	vldr.32	s14, [fp, #-72]
	vldr.32	s13, [fp, #-64]
	vldr.32	s12, .L814+120
	vdiv.f32	s15, s13, s12
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-36]
	vldr.32	s15, [fp, #-32]
	vldr.32	s14, .L814+8
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-92]
	vldr.32	s15, [fp, #-36]
	vldr.32	s14, .L814+12
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-88]
	ldr	r3, .L814+48
	str	r3, [fp, #-84]	@ float
	ldr	r3, .L814+52
	str	r3, [fp, #-80]	@ float
	b	.L806
.L813:
	ldr	r0, [fp, #-184]
	bl	WindowUpdate
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-60]
	vstr.32	s15, [fp, #-56]
	ldr	r3, [fp, #-184]
	vldr.32	s14, [fp, #-60]
	vldr.32	s15, [fp, #-56]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-100]
	vstr.32	s15, [fp, #-96]
	vldr.32	s10, [fp, #-92]
	vldr.32	s11, [fp, #-88]
	vldr.32	s12, [fp, #-84]
	vldr.32	s13, [fp, #-80]
	vldr.32	s14, [fp, #-100]
	vldr.32	s15, [fp, #-96]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-37]
	bl	BeginDrawing
	ldr	r3, .L814+56
	ldr	r3, [r3]
	str	r3, [fp, #-104]
	ldr	r0, [fp, #-104]
	bl	ClearBackground
	ldr	r3, [fp, #-184]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L814+60
	str	r3, [fp, #-112]	@ float
	ldr	r3, .L814+64
	str	r3, [fp, #-108]	@ float
	vldr.32	s15, [fp, #-24]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-28]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L814+96
	ldr	r3, [r3]
	str	r3, [fp, #-116]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-108]
	ldr	r3, .L814+40
	ldr	r2, [fp, #-116]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L814+16
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, .L814+68
	vldr.32	s12, [fp, #-76]
	vldr.32	s13, [fp, #-72]
	vldr.32	s14, [fp, #-68]
	vldr.32	s15, [fp, #-64]
	ldr	r0, [r3]
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleRec
	ldr	r3, .L814+72
	sub	ip, fp, #132
	ldm	r3, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	ldr	r3, .L814+96
	ldr	r3, [r3]
	str	r3, [fp, #-136]
	vldr.32	s12, [fp, #-132]
	vldr.32	s13, [fp, #-128]
	vldr.32	s14, [fp, #-124]
	vldr.32	s15, [fp, #-120]
	ldr	r0, [fp, #-136]
	vldr.32	s4, .L814+20
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	mov	r1, #55
	ldr	r0, .L814+76
	bl	MeasureText
	mov	r3, r0
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-32]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-144]
	vldr.32	s15, [fp, #-36]
	vldr.32	s14, .L814+24
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-140]
	ldr	r3, .L814+96
	ldr	r3, [r3]
	str	r3, [fp, #-148]
	vldr.32	s14, [fp, #-144]
	vldr.32	s15, [fp, #-140]
	ldr	r4, .L814+100
	ldr	r3, [fp, #-148]
	str	r3, [sp, #28]
	ldr	r3, .L814+76
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L814+120
	vldr.32	s2, .L814+28
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L814+80
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L814+84
	bl	TextFormat
	str	r0, [fp, #-44]
	mov	r1, #100
	ldr	r0, [fp, #-44]
	bl	MeasureText
	mov	r3, r0
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [fp, #-32]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-156]
	vldr.32	s15, [fp, #-36]
	vldr.32	s14, .L814+32
	vsub.f32	s15, s15, s14
	vstr.32	s15, [fp, #-152]
	ldr	r3, .L814+96
	ldr	r3, [r3]
	str	r3, [fp, #-160]
	vldr.32	s14, [fp, #-156]
	vldr.32	s15, [fp, #-152]
	ldr	r4, .L814+100
	ldr	r3, [fp, #-160]
	str	r3, [sp, #28]
	ldr	r3, [fp, #-44]
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L814+120
	vldr.32	s2, .L814+36
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L814+88
	ldr	r3, [r3]
	str	r3, [fp, #-164]
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L807
	vldr.32	s15, .L814+112
	b	.L808
.L815:
	.align	2
.L814:
	.word	1156579328
	.word	1149698048
	.word	1119092736
	.word	1112014848
	.word	0
	.word	1084227584
	.word	1125515264
	.word	1113325568
	.word	1117782016
	.word	1120403456
	.word	backgroundTexture
	.word	.LC9
	.word	1128792064
	.word	1116471296
	.word	.LC5
	.word	-999292928
	.word	-1006174208
	.word	MAIN_BROWN
	.word	.LC10
	.word	.LC163
	.word	global_score
	.word	.LC164
	.word	.LC3
	.word	.LC11
	.word	.LC1
	.word	meowFont
	.word	.LC165
	.word	options
	.word	1056964608
	.word	1065353216
	.word	1073741824
	.word	1107296256
.L807:
	vldr.32	s15, .L814+116
.L808:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-164]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-52]
	vldr.32	s12, [fp, #-92]
	vldr.32	s13, [fp, #-88]
	vldr.32	s14, [fp, #-84]
	vldr.32	s15, [fp, #-80]
	ldr	r0, [fp, #-52]
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleRec
	ldr	r2, .L814+92
	sub	r3, fp, #172
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	ldr	r3, .L814+96
	ldr	r3, [r3]
	str	r3, [fp, #-176]
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L809
	vldr.32	s15, .L814+112
	b	.L810
.L809:
	vldr.32	s15, .L814+116
.L810:
	vmov.f32	s0, s15
	ldr	r0, [fp, #-176]
	bl	ColorAlphaOverride
	mov	r3, r0
	str	r3, [fp, #-48]
	vldr.32	s14, [fp, #-172]
	vldr.32	s15, [fp, #-168]
	ldr	r4, .L814+100
	ldr	r3, [fp, #-48]
	str	r3, [sp, #28]
	ldr	r3, .L814+104
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L814+120
	vldr.32	s2, .L814+124
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	mov	r0, #0
	bl	IsMouseButtonPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L811
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L811
	bl	ResetGameState
	mov	r1, #0
	ldr	r0, [fp, #-184]
	bl	MainMenuUpdate
.L811:
	ldr	r3, .L814+108
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L812
	ldr	r0, [fp, #-184]
	bl	DrawDebugOverlay
.L812:
	bl	EndMode2D
	bl	EndDrawing
.L806:
	bl	WindowShouldClose
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L813
	nop
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	endgameUpdate, .-endgameUpdate
	.section	.rodata
	.align	2
.LC166:
	.ascii	"Start Game\000"
	.align	2
.LC167:
	.ascii	"Settings\000"
	.align	2
.LC168:
	.ascii	"Exit\000"
	.text
	.align	2
	.global	MainMenuUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	MainMenuUpdate, %function
MainMenuUpdate:
	@ args = 0, pretend = 0, frame = 448
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	vpush.64	{d8, d9}
	add	fp, sp, #24
	sub	sp, sp, #484
	str	r0, [fp, #-464]
	mov	r3, r1
	strb	r3, [fp, #-465]
	mov	r3, #1065353216
	str	r3, [fp, #-72]	@ float
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	bl	GetTime
	vstr.64	d0, [fp, #-44]
	ldr	r3, .L859+24
	ldr	r3, [r3, #4]
	str	r3, [fp, #-76]
	ldr	r3, .L859+24
	ldr	r3, [r3, #8]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-76]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L859+8
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-84]
	ldr	r3, [fp, #-80]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L859+12
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-48]	@ float
	mov	r3, #0
	strb	r3, [fp, #-49]
	ldrb	r3, [fp, #-465]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eor	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [fp, #-50]
	ldrb	r3, [fp, #-50]
	and	r3, r3, #1
	strb	r3, [fp, #-50]
	mov	r3, #0
	strb	r3, [fp, #-51]
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L817
	ldr	r3, .L859+28
	str	r3, [fp, #-48]	@ float
.L817:
	ldr	r2, .L859+32
	vldr.32	s14, .L859+80
	vldr.32	s15, .L859+12
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L859+16
	vsub.f32	s15, s15, s14
	ldr	r3, .L859+36
	str	r2, [r3]	@ float
	ldr	r3, .L859+36
	vstr.32	s15, [r3, #4]
	ldr	r0, .L859+40
	bl	PlayBgmIfStopped
	ldrb	r3, [fp, #-465]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L818
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L859
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L859+44
	vstr.32	s16, [r3]
	ldr	r3, .L859+44
	vstr.32	s15, [r3, #4]
	ldr	r3, .L859+44
	ldr	r2, .L859+48
	str	r2, [r3, #8]	@ float
	ldr	r3, .L859+44
	mov	r2, #1065353216
	str	r2, [r3, #12]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+52
	add	ip, r3, #16
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L859+44
	mov	r2, #0
	strb	r2, [r3, #36]
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L859
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L859+44
	vstr.32	s16, [r3, #40]
	ldr	r3, .L859+44
	vstr.32	s15, [r3, #44]
	ldr	r3, .L859+44
	ldr	r2, .L859+56
	str	r2, [r3, #48]	@ float
	ldr	r3, .L859+44
	mov	r2, #1065353216
	str	r2, [r3, #52]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+60
	add	ip, r3, #56
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L859+44
	mov	r2, #0
	strb	r2, [r3, #76]
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L859
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L859+44
	vstr.32	s16, [r3, #80]
	ldr	r3, .L859+44
	vstr.32	s15, [r3, #84]
	ldr	r3, .L859+44
	ldr	r2, .L859+64
	str	r2, [r3, #88]	@ float
	ldr	r3, .L859+44
	mov	r2, #1073741824
	str	r2, [r3, #92]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+68
	add	ip, r3, #96
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L859+44
	mov	r2, #1
	strb	r2, [r3, #116]
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L859
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L859+44
	vstr.32	s16, [r3, #120]
	ldr	r3, .L859+44
	vstr.32	s15, [r3, #124]
	ldr	r3, .L859+44
	ldr	r2, .L859+48
	str	r2, [r3, #128]	@ float
	ldr	r3, .L859+44
	mov	r2, #1065353216
	str	r2, [r3, #132]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+52
	add	ip, r3, #136
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L859+44
	mov	r2, #0
	strb	r2, [r3, #156]
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L859
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L859+44
	vstr.32	s16, [r3, #160]
	ldr	r3, .L859+44
	vstr.32	s15, [r3, #164]
	ldr	r3, .L859+44
	ldr	r2, .L859+72
	str	r2, [r3, #168]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+76
	str	r2, [r3, #172]	@ float
	ldr	r3, .L859+44
	ldr	r2, .L859+60
	add	ip, r3, #176
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L859+44
	mov	r2, #0
	strb	r2, [r3, #196]
	vldr.32	s14, .L859+20
	vldr.32	s15, .L859+16
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L859+20
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	b	.L860
.L861:
	.align	3
.L859:
	.word	0
	.word	0
	.word	1156579328
	.word	1149698048
	.word	1128792064
	.word	-999292928
	.word	splashBackgroundTexture
	.word	1148190720
	.word	-999292928
	.word	trashCanPosition
	.word	menuBgm
	.word	movingClouds
	.word	1132068864
	.word	cloud1Texture
	.word	1128792064
	.word	cloud2Texture
	.word	1125515264
	.word	cloud3Texture
	.word	1120403456
	.word	1071225242
	.word	-1006174208
.L860:
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L859+80
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L862
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L862+12
	vstr.32	s16, [r3, #200]
	ldr	r3, .L862+12
	vstr.32	s15, [r3, #204]
	ldr	r3, .L862+12
	ldr	r2, .L862+16
	str	r2, [r3, #208]	@ float
	ldr	r3, .L862+12
	mov	r2, #1065353216
	str	r2, [r3, #212]	@ float
	ldr	r3, .L862+12
	ldr	r2, .L862+20
	add	ip, r3, #216
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L862+12
	mov	r2, #1
	strb	r2, [r3, #236]
	vldr.32	s14, .L862+56
	vldr.32	s15, .L862+8
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L862+56
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s16, d7
	vldr.32	s15, .L862+68
	vcvt.f64.f32	d7, s15
	vldr.64	d1, .L862
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r3, .L862+12
	vstr.32	s16, [r3, #240]
	ldr	r3, .L862+12
	vstr.32	s15, [r3, #244]
	ldr	r3, .L862+12
	ldr	r2, .L862+24
	str	r2, [r3, #248]	@ float
	ldr	r3, .L862+12
	mov	r2, #1065353216
	str	r2, [r3, #252]	@ float
	ldr	r3, .L862+12
	ldr	r2, .L862+20
	add	ip, r3, #256
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	ldr	r3, .L862+12
	mov	r2, #1
	strb	r2, [r3, #276]
	vldr.32	s14, .L862+56
	vldr.32	s15, .L862+8
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L862+56
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r2, .L862+28
	ldr	r3, .L862+32
	vstr.32	s15, [r3]
	ldr	r3, .L862+32
	str	r2, [r3, #4]	@ float
	ldr	r3, .L862+32
	ldr	r2, .L862+36
	str	r2, [r3, #8]	@ float
	ldr	r3, .L862+32
	ldr	r2, .L862+40
	str	r2, [r3, #12]	@ float
	ldr	r3, .L862+32
	ldr	r2, .L862+44
	add	ip, r3, #16
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	vldr.32	s14, .L862+56
	vldr.32	s15, .L862+8
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vldr.32	s13, .L862+56
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r2, .L862+28
	ldr	r3, .L862+32
	vstr.32	s15, [r3, #36]
	ldr	r3, .L862+32
	str	r2, [r3, #40]	@ float
	ldr	r3, .L862+32
	ldr	r2, .L862+48
	str	r2, [r3, #44]	@ float
	ldr	r3, .L862+32
	mov	r2, #1073741824
	str	r2, [r3, #48]	@ float
	ldr	r3, .L862+32
	ldr	r2, .L862+52
	add	ip, r3, #52
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L819
.L863:
	.align	3
.L862:
	.word	0
	.word	0
	.word	1128792064
	.word	movingClouds
	.word	1128792064
	.word	cloud3Texture
	.word	1125515264
	.word	-1006174208
	.word	movingStars
	.word	1112014848
	.word	1077936128
	.word	star1Texture
	.word	1103626240
	.word	star2Texture
	.word	-999292928
	.word	1156579328
	.word	1101004800
	.word	-1006174208
.L823:
	vldr.32	s15, .L862+56
	vcvt.f64.f32	d7, s15
	vldr.32	s12, .L862+56
	vldr.32	s13, .L862+60
	vadd.f32	s13, s12, s13
	vldr.32	s12, .L862+64
	vsub.f32	s13, s13, s12
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s18, d7
	vldr.32	s15, .L862+68
	vcvt.f64.f32	d8, s15
	vldr.64	d1, .L864
	vldr.64	d0, .L864+8
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vsub.f64	d7, d8, d7
	vcvt.f32.f64	s15, d7
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	vstr.32	s18, [r3]
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #4
	vstr.32	s15, [r3]
	mov	r1, #7
	mov	r0, #0
	bl	GetRandomValue
	mov	r1, r0
	ldr	r0, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #12
	str	r1, [r3]
	vldr.64	d1, .L864+16
	vldr.64	d0, .L864+24
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #8
	vstr.32	s15, [r3]
	vldr.64	d1, .L864+32
	vldr.64	d0, .L864+40
	bl	GetRandomDoubleValue
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	vstr.32	s15, [r3]
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	vldr.32	s15, [r3]
	vldr.32	s14, .L864+48
	vmul.f32	s15, s15, s14
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	vstr.32	s15, [r3]
	mov	r1, #3
	mvn	r0, #2
	bl	GetRandomValue
	vmov	s15, r0	@ int
	vcvt.f32.s32	s15, s15
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	vstr.32	s15, [r3]
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	vldr.32	s15, [r3]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	cmp	r3, #0
	rsblt	r3, r3, #0
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	vldr.32	s15, [r3]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L820
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #16
	ldr	r1, [r3]	@ float
	ldr	r0, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #20
	str	r1, [r3]	@ float
.L820:
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	vldr.32	s15, [r3]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L822
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	mov	r2, #1065353216
	str	r2, [r3]	@ float
.L822:
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	vldr.32	s15, [r3]
	vldr.32	s14, .L864+48
	vmul.f32	s15, s15, s14
	ldr	r1, .L864+52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #20
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L819:
	ldr	r3, [fp, #-56]
	cmp	r3, #19
	ble	.L823
.L818:
	mov	r3, #0
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #0
	strb	r3, [fp, #-65]
	b	.L824
.L865:
	.align	3
.L864:
	.word	0
	.word	1083129856
	.word	0
	.word	1080623104
	.word	0
	.word	1081507840
	.word	0
	.word	-1065975808
	.word	0
	.word	1074266112
	.word	0
	.word	1072693248
	.word	1120403456
	.word	menuFallingItems
	.word	1137180672
	.word	1120403456
	.word	GameUpdate
	.word	OptionsUpdate
	.word	.LC5
	.word	backgroundTexture
	.word	1114636288
	.word	1126170624
	.word	-999292928
	.word	1112014848
	.word	-1006174208
	.word	1142292480
	.word	1135542272
.L855:
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-44]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-100]
	bl	GetTime
	vstr.64	d0, [fp, #-44]
	ldrb	r3, [fp, #-49]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L825
	bl	GetFrameTime
	vmov.f32	s15, s0
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [fp, #-36]
	vadd.f64	d7, d6, d7
	vstr.64	d7, [fp, #-36]
.L825:
	ldr	r0, [fp, #-464]
	bl	WindowUpdate
	vldr.32	s14, .L864+88
	vldr.32	s15, .L864+92
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-48]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-288]
	vldr.32	s14, .L864+96
	vldr.32	s15, .L864+100
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L864+80
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-284]
	ldr	r3, .L864+56
	str	r3, [fp, #-280]	@ float
	ldr	r3, .L864+60
	str	r3, [fp, #-276]	@ float
	vldr.32	s14, .L864+88
	vldr.32	s15, .L864+92
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-48]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-304]
	vldr.32	s14, .L864+96
	vldr.32	s15, .L864+100
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L864+84
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-300]
	ldr	r3, .L864+56
	str	r3, [fp, #-296]	@ float
	ldr	r3, .L864+60
	str	r3, [fp, #-292]	@ float
	vldr.32	s14, .L864+88
	vldr.32	s15, .L864+92
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-48]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-320]
	vldr.32	s14, .L864+96
	vldr.32	s15, .L864+100
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L864+104
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-316]
	ldr	r3, .L864+56
	str	r3, [fp, #-312]	@ float
	ldr	r3, .L864+60
	str	r3, [fp, #-308]	@ float
	bl	GetMousePosition
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-184]
	vstr.32	s15, [fp, #-180]
	ldr	r3, [fp, #-464]
	vldr.32	s14, [fp, #-184]
	vldr.32	s15, [fp, #-180]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	GetScreenToWorld2D
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vstr.32	s14, [fp, #-328]
	vstr.32	s15, [fp, #-324]
	vldr.32	s10, [fp, #-288]
	vldr.32	s11, [fp, #-284]
	vldr.32	s12, [fp, #-280]
	vldr.32	s13, [fp, #-276]
	vldr.32	s14, [fp, #-328]
	vldr.32	s15, [fp, #-324]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-101]
	vldr.32	s10, [fp, #-304]
	vldr.32	s11, [fp, #-300]
	vldr.32	s12, [fp, #-296]
	vldr.32	s13, [fp, #-292]
	vldr.32	s14, [fp, #-328]
	vldr.32	s15, [fp, #-324]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-102]
	vldr.32	s10, [fp, #-320]
	vldr.32	s11, [fp, #-316]
	vldr.32	s12, [fp, #-312]
	vldr.32	s13, [fp, #-308]
	vldr.32	s14, [fp, #-328]
	vldr.32	s15, [fp, #-324]
	vmov.f32	s2, s10
	vmov.f32	s3, s11
	vmov.f32	s4, s12
	vmov.f32	s5, s13
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	CheckCollisionPointRec
	mov	r3, r0
	strb	r3, [fp, #-103]
	mov	r0, #0
	bl	IsMouseButtonPressed
	mov	r3, r0
	cmp	r3, #0
	beq	.L826
	ldrb	r3, [fp, #-51]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L826
	ldrb	r3, [fp, #-50]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L826
	ldrb	r3, [fp, #-101]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L827
	mov	r0, #1
	bl	PlaySoundFx
	ldr	r3, .L864+64
	str	r3, [fp, #-64]
	mov	r3, #1
	strb	r3, [fp, #-51]
	b	.L826
.L827:
	ldrb	r3, [fp, #-102]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L828
	mov	r0, #1
	bl	PlaySoundFx
	ldr	r3, .L864+68
	str	r3, [fp, #-64]
	mov	r3, #1
	strb	r3, [fp, #-51]
	b	.L826
.L828:
	ldrb	r3, [fp, #-103]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L826
	bl	ExitApplication
.L826:
	ldrb	r3, [fp, #-101]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L829
	ldrb	r3, [fp, #-65]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L830
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L831
.L830:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-65]
.L831:
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L832
.L829:
	ldrb	r3, [fp, #-102]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L833
	ldrb	r3, [fp, #-65]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L834
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	beq	.L835
.L834:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-65]
.L835:
	mov	r3, #1
	str	r3, [fp, #-60]
	b	.L832
.L833:
	ldrb	r3, [fp, #-103]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L836
	ldrb	r3, [fp, #-65]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L837
	ldr	r3, [fp, #-60]
	cmp	r3, #2
	beq	.L838
.L837:
	mov	r0, #0
	bl	PlaySoundFx
	mov	r3, #1
	strb	r3, [fp, #-65]
.L838:
	mov	r3, #2
	str	r3, [fp, #-60]
	b	.L832
.L836:
	mov	r3, #0
	str	r3, [fp, #-60]
	mov	r3, #0
	strb	r3, [fp, #-65]
.L832:
	bl	BeginDrawing
	ldr	r3, [fp, #-464]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L864+72
	ldr	r3, [r3]
	str	r3, [fp, #-332]
	ldr	r0, [fp, #-332]
	bl	ClearBackground
	ldr	r3, .L864+76
	ldr	r3, [r3, #4]
	str	r3, [fp, #-108]
	ldr	r3, .L864+76
	ldr	r3, [r3, #8]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-108]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L866
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-116]
	ldr	r3, [fp, #-112]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L866+4
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-120]
	ldr	r3, .L866+32
	ldr	r3, [r3, #4]
	str	r3, [fp, #-124]
	ldr	r3, .L866+32
	ldr	r3, [r3, #8]
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-124]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, .L866
	vdiv.f32	s14, s13, s15
	vldr.32	s13, .L866+8
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-132]
	ldr	r3, [fp, #-128]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, .L866+4
	vdiv.f32	s14, s13, s15
	vldr.32	s13, .L866+8
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-136]
	vldr.64	d0, [fp, #-100]
	bl	DrawDayNightCycle
	mov	r0, #1
	vldr.64	d0, [fp, #-100]
	bl	DrawMenuFallingItems
	vldr.64	d0, [fp, #-100]
	bl	DrawCustomerInMenu
	ldr	r3, .L866+36
	str	r3, [fp, #-340]	@ float
	ldr	r3, .L866+40
	str	r3, [fp, #-336]	@ float
	vldr.32	s15, [fp, #-116]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-120]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L866+44
	ldr	r3, [r3]
	str	r3, [fp, #-344]
	vldr.32	s14, [fp, #-340]
	vldr.32	s15, [fp, #-336]
	ldr	r3, .L866+48
	ldr	r2, [fp, #-344]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L866+12
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	mov	r0, #0
	vldr.64	d0, [fp, #-100]
	bl	DrawMenuFallingItems
	ldrb	r3, [fp, #-51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L839
	ldr	r3, .L866+52
	str	r3, [fp, #-140]	@ float
	ldr	r3, .L866+56
	str	r3, [fp, #-144]	@ float
	vldr.32	s13, [fp, #-140]
	vldr.32	s14, [fp, #-144]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-148]
	vldr.32	s15, [fp, #-48]
	vcvt.f64.f32	d6, s15
	vldr.32	s15, [fp, #-148]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-100]
	vmul.f64	d7, d5, d7
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-48]
	vldr.32	s15, [fp, #-48]
	vldr.32	s14, .L866+16
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	blt	.L839
	mov	r3, #0
	str	r3, [fp, #-48]	@ float
	mov	r3, #0
	strb	r3, [fp, #-51]
	ldr	r3, [fp, #-64]
	ldr	r0, [fp, #-464]
	blx	r3
	b	.L854
.L839:
	ldrb	r3, [fp, #-50]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L842
	ldr	r3, .L866+52
	str	r3, [fp, #-152]	@ float
	ldr	r3, .L866+56
	str	r3, [fp, #-156]	@ float
	vldr.32	s13, [fp, #-152]
	vldr.32	s14, [fp, #-156]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-160]
	vldr.32	s15, [fp, #-48]
	vcvt.f64.f32	d6, s15
	vldr.32	s15, [fp, #-160]
	vcvt.f64.f32	d5, s15
	vldr.64	d7, [fp, #-100]
	vmul.f64	d7, d5, d7
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-48]
	vldr.32	s15, [fp, #-48]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bhi	.L842
	mov	r3, #0
	str	r3, [fp, #-48]	@ float
	mov	r3, #0
	strb	r3, [fp, #-50]
.L842:
	vldr.32	s14, .L866+20
	vldr.32	s15, [fp, #-48]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-352]
	ldr	r3, .L866+40
	str	r3, [fp, #-348]	@ float
	vldr.32	s15, [fp, #-116]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-120]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L866+44
	ldr	r3, [r3]
	str	r3, [fp, #-356]
	vldr.32	s14, [fp, #-352]
	vldr.32	s15, [fp, #-348]
	ldr	r3, .L866+60
	ldr	r2, [fp, #-356]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L866+12
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s14, .L866+20
	vldr.32	s15, [fp, #-48]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-364]
	vldr.32	s14, .L866+24
	vldr.32	s15, .L866+28
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-360]
	vldr.32	s15, [fp, #-132]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-136]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L866+44
	ldr	r3, [r3]
	str	r3, [fp, #-368]
	vldr.32	s14, [fp, #-364]
	vldr.32	s15, [fp, #-360]
	ldr	r3, .L866+32
	ldr	r2, [fp, #-368]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L866+12
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, [fp, #-288]
	vldr.32	s14, .L866+100
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-376]
	vldr.32	s15, [fp, #-284]
	vldr.32	s14, .L866+104
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-372]
	ldrb	r3, [fp, #-101]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L844
	ldr	r3, .L866+72
	ldr	r3, [r3]
	str	r3, [fp, #-176]
	b	.L845
.L867:
	.align	2
.L866:
	.word	1156579328
	.word	1149698048
	.word	1082130432
	.word	0
	.word	1148190720
	.word	-999292928
	.word	-1006174208
	.word	1112014848
	.word	logoTexture
	.word	-999292928
	.word	-1006174208
	.word	.LC1
	.word	backgroundOverlayTexture
	.word	1147207680
	.word	1058642330
	.word	backgroundOverlaySidebarTexture
	.word	.LC166
	.word	.LC167
	.word	MAIN_ORANGE
	.word	MAIN_BROWN
	.word	meowFont
	.word	.LC168
	.word	options
	.word	debugToolToggles
	.word	.LC3
	.word	1109393408
	.word	1097859072
	.word	1073741824
	.word	1114636288
	.word	1065353216
.L844:
	ldr	r3, .L866+76
	ldr	r3, [r3]
	str	r3, [fp, #-176]
.L845:
	vldr.32	s14, [fp, #-376]
	vldr.32	s15, [fp, #-372]
	ldr	r4, .L866+80
	ldr	r3, [fp, #-176]
	str	r3, [sp, #28]
	ldr	r3, .L866+64
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L866+108
	vldr.32	s2, .L866+112
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	vldr.32	s15, [fp, #-304]
	vldr.32	s14, .L866+100
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-384]
	vldr.32	s15, [fp, #-300]
	vldr.32	s14, .L866+104
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-380]
	ldrb	r3, [fp, #-102]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L846
	ldr	r3, .L866+72
	ldr	r3, [r3]
	str	r3, [fp, #-172]
	b	.L847
.L846:
	ldr	r3, .L866+76
	ldr	r3, [r3]
	str	r3, [fp, #-172]
.L847:
	vldr.32	s14, [fp, #-384]
	vldr.32	s15, [fp, #-380]
	ldr	r4, .L866+80
	ldr	r3, [fp, #-172]
	str	r3, [sp, #28]
	ldr	r3, .L866+68
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L866+108
	vldr.32	s2, .L866+112
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	vldr.32	s15, [fp, #-320]
	vldr.32	s14, .L866+100
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-392]
	vldr.32	s15, [fp, #-316]
	vldr.32	s14, .L866+104
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-388]
	ldrb	r3, [fp, #-103]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L848
	ldr	r3, .L866+72
	ldr	r3, [r3]
	str	r3, [fp, #-168]
	b	.L849
.L848:
	ldr	r3, .L866+76
	ldr	r3, [r3]
	str	r3, [fp, #-168]
.L849:
	vldr.32	s14, [fp, #-392]
	vldr.32	s15, [fp, #-388]
	ldr	r4, .L866+80
	ldr	r3, [fp, #-168]
	str	r3, [sp, #28]
	ldr	r3, .L866+84
	str	r3, [sp, #24]
	mov	lr, sp
	add	ip, r4, #16
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldm	r4, {r0, r1, r2, r3}
	vldr.32	s3, .L866+108
	vldr.32	s2, .L866+112
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextEx
	ldr	r3, .L866+88
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L850
	ldr	r3, .L866+92
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L850
	ldr	r3, .L866+96
	ldr	r3, [r3]
	str	r3, [fp, #-396]
	vldr.32	s12, [fp, #-288]
	vldr.32	s13, [fp, #-284]
	vldr.32	s14, [fp, #-280]
	vldr.32	s15, [fp, #-276]
	ldr	r0, [fp, #-396]
	vldr.32	s4, .L866+116
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L866+96
	ldr	r3, [r3]
	str	r3, [fp, #-400]
	vldr.32	s12, [fp, #-304]
	vldr.32	s13, [fp, #-300]
	vldr.32	s14, [fp, #-296]
	vldr.32	s15, [fp, #-292]
	ldr	r0, [fp, #-400]
	vldr.32	s4, .L866+116
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
	ldr	r3, .L866+96
	ldr	r3, [r3]
	str	r3, [fp, #-404]
	vldr.32	s12, [fp, #-320]
	vldr.32	s13, [fp, #-316]
	vldr.32	s14, [fp, #-312]
	vldr.32	s15, [fp, #-308]
	ldr	r0, [fp, #-404]
	vldr.32	s4, .L866+116
	vmov.f32	s0, s12
	vmov.f32	s1, s13
	vmov.f32	s2, s14
	vmov.f32	s3, s15
	bl	DrawRectangleLinesEx
.L850:
	bl	DrawOuterWorld
	ldrb	r3, [fp, #-465]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L851
	vldr.32	s15, [fp, #-72]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [fp, #-36]
	vdiv.f64	d5, d6, d7
	vldr.64	d1, .L868
	vmov.f64	d0, d5
	bl	fmin
	vmov.f64	d7, d0
	vldr.64	d6, .L868
	vsub.f64	d7, d6, d7
	vldr.64	d6, .L868+8
	vmul.f64	d7, d7, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-164]
	ldrb	r3, [fp, #-49]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L852
	vldr.32	s15, [fp, #-164]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L852
	ldr	r3, .L868+20
	str	r3, [fp, #-412]	@ float
	ldr	r3, .L868+24
	str	r3, [fp, #-408]	@ float
	vldr.32	s15, [fp, #-84]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-88]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	mvn	r3, #0
	strb	r3, [fp, #-416]
	mvn	r3, #0
	strb	r3, [fp, #-415]
	mvn	r3, #0
	strb	r3, [fp, #-414]
	vldr.32	s15, [fp, #-164]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-472]	@ int
	ldrb	r3, [fp, #-472]
	uxtb	r3, r3
	strb	r3, [fp, #-413]
	vldr.32	s14, [fp, #-412]
	vldr.32	s15, [fp, #-408]
	ldr	r3, .L868+28
	ldr	r2, [fp, #-416]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L868+16
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	b	.L851
.L852:
	mov	r3, #1
	strb	r3, [fp, #-49]
.L851:
	ldr	r3, .L868+32
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L853
	ldr	r0, [fp, #-464]
	bl	DrawDebugOverlay
.L853:
	bl	EndMode2D
	bl	EndDrawing
.L824:
	bl	WindowShouldClose
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L855
.L854:
	ldr	r3, .L868+36
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	bl	UnloadTexture
	bl	CloseWindow
	nop
	sub	sp, fp, #24
	@ sp needed
	vldm	sp!, {d8-d9}
	pop	{r4, fp, pc}
.L869:
	.align	3
.L868:
	.word	0
	.word	1072693248
	.word	0
	.word	1081073664
	.word	0
	.word	-999292928
	.word	-1006174208
	.word	splashBackgroundTexture
	.word	options
	.word	backgroundTexture
	.size	MainMenuUpdate, .-MainMenuUpdate
	.section	.rodata
	.align	2
.LC169:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/audio/Meow1"
	.ascii	".mp3\000"
	.text
	.align	2
	.global	SplashUpdate
	.syntax unified
	.arm
	.fpu vfp
	.type	SplashUpdate, %function
SplashUpdate:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-200]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-12]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-44]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-52]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-60]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-68]
	bl	LoadGlobalAssets
	mov	r1, #1
	ldr	r0, [fp, #-200]
	bl	MainMenuUpdate
	bl	GetTime
	vstr.64	d0, [fp, #-76]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-20]
	ldr	r3, .L892+36
	ldr	r3, [r3, #4]
	str	r3, [fp, #-80]
	ldr	r3, .L892+36
	ldr	r3, [r3, #8]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-80]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L892+16
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-88]
	ldr	r3, [fp, #-84]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L892+20
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-92]
	bl	BeginDrawing
	ldr	r3, [fp, #-200]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L892+40
	ldr	r3, [r3]
	str	r3, [fp, #-100]
	ldr	r0, [fp, #-100]
	bl	ClearBackground
	ldr	r3, .L892+44
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L871
	ldr	r0, [fp, #-200]
	bl	DrawDebugOverlay
.L871:
	bl	EndMode2D
	bl	EndDrawing
	b	.L872
.L874:
	ldr	r0, [fp, #-200]
	bl	WindowUpdate
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-76]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-20]
	bl	BeginDrawing
	ldr	r3, [fp, #-200]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-36]
	vdiv.f64	d5, d6, d7
	vldr.64	d1, .L892
	vmov.f64	d0, d5
	bl	fmin
	vmov.f64	d7, d0
	vldr.64	d6, .L892
	vsub.f64	d7, d6, d7
	vldr.64	d6, .L892+8
	vmul.f64	d7, d7, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-96]
	ldr	r3, .L892+48
	str	r3, [fp, #-132]	@ float
	ldr	r3, .L892+52
	str	r3, [fp, #-128]	@ float
	vldr.32	s15, [fp, #-88]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-92]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L892+56
	ldr	r3, [r3]
	str	r3, [fp, #-136]
	vldr.32	s14, [fp, #-132]
	vldr.32	s15, [fp, #-128]
	ldr	r3, .L892+36
	ldr	r2, [fp, #-136]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L892+24
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	vldr.32	s15, .L892+28
	vcvt.s32.f32	s14, s15
	vldr.32	s15, .L892+32
	vcvt.s32.f32	s13, s15
	mvn	r3, #0
	strb	r3, [fp, #-140]
	mvn	r3, #0
	strb	r3, [fp, #-139]
	mvn	r3, #0
	strb	r3, [fp, #-138]
	vldr.32	s15, [fp, #-96]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-204]	@ int
	ldrb	r3, [fp, #-204]
	uxtb	r3, r3
	strb	r3, [fp, #-137]
	ldr	r3, [fp, #-140]
	str	r3, [sp]
	ldr	r3, .L892+60
	mov	r2, #1920
	vmov	r1, s13	@ int
	vmov	r0, s14	@ int
	bl	DrawRectangle
	ldr	r3, .L892+44
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L873
	ldr	r0, [fp, #-200]
	bl	DrawDebugOverlay
.L873:
	bl	EndMode2D
	bl	EndDrawing
.L872:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-36]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L874
	sub	r3, fp, #124
	ldr	r1, .L892+64
	mov	r0, r3
	bl	LoadSound
	mov	r2, sp
	sub	r3, fp, #108
	ldm	r3, {r0, r1}
	stm	r2, {r0, r1}
	sub	r3, fp, #124
	ldm	r3, {r0, r1, r2, r3}
	bl	PlaySound
	mov	r3, #1
	strb	r3, [fp, #-21]
	bl	GetTime
	vstr.64	d0, [fp, #-76]
	b	.L875
.L884:
	ldr	r0, [fp, #-200]
	bl	WindowUpdate
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-76]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-28]
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-44]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L890
	vldr.64	d5, [fp, #-20]
	vldr.64	d6, [fp, #-44]
	vdiv.f64	d7, d5, d6
	vldr.64	d6, .L892+8
	vmul.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-28]
	b	.L878
.L890:
	vldr.64	d6, [fp, #-44]
	vldr.64	d7, [fp, #-52]
	vadd.f64	d7, d6, d7
	vldr.64	d6, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L891
	mov	r3, #255
	str	r3, [fp, #-28]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L878
	bl	LoadGlobalAssets
	mov	r3, #0
	strb	r3, [fp, #-21]
	b	.L878
.L893:
	.align	3
.L892:
	.word	0
	.word	1072693248
	.word	0
	.word	1081073664
	.word	1156579328
	.word	1149698048
	.word	0
	.word	-999292928
	.word	-1006174208
	.word	splashBackgroundTexture
	.word	.LC5
	.word	options
	.word	-999292928
	.word	-1006174208
	.word	.LC1
	.word	1080
	.word	.LC169
.L891:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-44]
	vsub.f64	d6, d6, d7
	vldr.64	d7, [fp, #-52]
	vsub.f64	d6, d6, d7
	vldr.64	d7, [fp, #-60]
	vdiv.f64	d5, d6, d7
	vldr.64	d1, .L894
	vmov.f64	d0, d5
	bl	fmin
	vmov.f64	d7, d0
	vldr.64	d6, .L894
	vsub.f64	d7, d6, d7
	vldr.64	d6, .L894+8
	vmul.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [fp, #-28]
.L878:
	vldr.64	d6, [fp, #-44]
	vldr.64	d7, [fp, #-52]
	vadd.f64	d7, d6, d7
	vldr.64	d6, [fp, #-20]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L881
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L881
	vldr.64	d7, [fp, #-12]
	vldr.64	d6, .L894+16
	vadd.f64	d7, d7, d6
	vstr.64	d7, [fp, #-12]
.L881:
	bl	BeginDrawing
	ldr	r3, [fp, #-200]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L894+28
	ldr	r3, [r3]
	str	r3, [fp, #-144]
	ldr	r0, [fp, #-144]
	bl	ClearBackground
	ldr	r3, .L894+32
	str	r3, [fp, #-152]	@ float
	ldr	r3, .L894+36
	str	r3, [fp, #-148]	@ float
	vldr.32	s15, [fp, #-88]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-92]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L894+40
	ldr	r3, [r3]
	str	r3, [fp, #-156]
	vldr.32	s14, [fp, #-152]
	vldr.32	s15, [fp, #-148]
	ldr	r3, .L894+44
	ldr	r2, [fp, #-156]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L894+24
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, .L894+32
	str	r3, [fp, #-164]	@ float
	ldr	r3, .L894+36
	str	r3, [fp, #-160]	@ float
	vldr.32	s15, [fp, #-88]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-92]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	mvn	r3, #0
	strb	r3, [fp, #-168]
	mvn	r3, #0
	strb	r3, [fp, #-167]
	mvn	r3, #0
	strb	r3, [fp, #-166]
	ldr	r3, [fp, #-28]
	uxtb	r3, r3
	strb	r3, [fp, #-165]
	vldr.32	s14, [fp, #-164]
	vldr.32	s15, [fp, #-160]
	ldr	r3, .L894+48
	ldr	r2, [fp, #-168]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L894+24
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, .L894+52
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L883
	ldr	r0, [fp, #-200]
	bl	DrawDebugOverlay
.L883:
	bl	EndMode2D
	bl	EndDrawing
.L875:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-12]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L884
	bl	GetTime
	vstr.64	d0, [fp, #-76]
	b	.L885
.L886:
	ldr	r0, [fp, #-200]
	bl	WindowUpdate
	bl	GetTime
	vmov.f64	d6, d0
	vldr.64	d7, [fp, #-76]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [fp, #-20]
	bl	BeginDrawing
	ldr	r3, [fp, #-200]
	mov	ip, sp
	add	r2, r3, #16
	ldm	r2, {r0, r1}
	stm	ip, {r0, r1}
	ldm	r3, {r0, r1, r2, r3}
	bl	BeginMode2D
	ldr	r3, .L894+28
	ldr	r3, [r3]
	str	r3, [fp, #-172]
	ldr	r0, [fp, #-172]
	bl	ClearBackground
	ldr	r3, .L894+32
	str	r3, [fp, #-180]	@ float
	ldr	r3, .L894+36
	str	r3, [fp, #-176]	@ float
	vldr.32	s15, [fp, #-88]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-92]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L894+40
	ldr	r3, [r3]
	str	r3, [fp, #-184]
	vldr.32	s14, [fp, #-180]
	vldr.32	s15, [fp, #-176]
	ldr	r3, .L894+44
	ldr	r2, [fp, #-184]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L894+24
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	ldr	r3, .L894+32
	str	r3, [fp, #-192]	@ float
	ldr	r3, .L894+36
	str	r3, [fp, #-188]	@ float
	vldr.32	s15, [fp, #-88]
	vcvt.f64.f32	d7, s15
	vldr.32	s13, [fp, #-92]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	fmax
	vmov.f64	d7, d0
	vcvt.f32.f64	s13, d7
	ldr	r3, .L894+40
	ldr	r3, [r3]
	str	r3, [fp, #-196]
	vldr.32	s14, [fp, #-192]
	vldr.32	s15, [fp, #-188]
	ldr	r3, .L894+48
	ldr	r2, [fp, #-196]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	str	r2, [sp]
	ldm	r3, {r0, r1, r2, r3}
	vmov.f32	s3, s13
	vldr.32	s2, .L894+24
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	DrawTextureEx
	bl	EndMode2D
	bl	EndDrawing
.L885:
	vldr.64	d6, [fp, #-20]
	vldr.64	d7, [fp, #-68]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bmi	.L886
	mov	r1, #1
	ldr	r0, [fp, #-200]
	bl	MainMenuUpdate
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L895:
	.align	3
.L894:
	.word	0
	.word	1072693248
	.word	0
	.word	1081073664
	.word	-1717986918
	.word	1069128089
	.word	0
	.word	.LC5
	.word	-999292928
	.word	-1006174208
	.word	.LC1
	.word	splashBackgroundTexture
	.word	splashOverlayTexture
	.word	options
	.size	SplashUpdate, .-SplashUpdate
	.section	.rodata
	.align	2
.LC170:
	.ascii	"Min : %f, Max : %f, Value : %f\000"
	.align	2
.LC171:
	.ascii	"SuperMeowMeow\000"
	.align	2
.LC172:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/font/SantJo"
	.ascii	"anDespi-Regular.otf\000"
	.align	2
.LC173:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/eleme"
	.ascii	"nts/studio_logo.png\000"
	.align	2
.LC174:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/backg"
	.ascii	"rounds/splash.png\000"
	.align	2
.LC175:
	.ascii	"/home/yuzu/Desktop/SuperMeowMeow/assets/image/backg"
	.ascii	"rounds/splash_overlay.png\000"
	.align	2
.LC12:
	.word	1148190720
	.word	1141309440
	.align	2
.LC13:
	.word	1280
	.word	720
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #164
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L897
.L898:
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-28]
	ldr	r2, .L900
	ldr	r3, .L900+4
	strd	r2, [fp, #-36]
	vldr.64	d1, [fp, #-36]
	vldr.64	d0, [fp, #-28]
	bl	GetRandomDoubleValue
	vstr.64	d0, [fp, #-44]
	ldrd	r2, [fp, #-44]
	strd	r2, [sp, #8]
	ldrd	r2, [fp, #-36]
	strd	r2, [sp]
	ldrd	r2, [fp, #-28]
	ldr	r0, .L900+8
	bl	LogDebug
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L897:
	ldr	r3, [fp, #-16]
	cmp	r3, #9
	ble	.L898
	mov	r0, #4
	bl	SetConfigFlags
	mov	r0, #32
	bl	SetConfigFlags
	ldr	r0, .L900+12
	bl	SetTraceLogCallback
	ldr	r2, .L900+16
	ldr	r1, .L900+20
	mov	r0, #1920
	bl	InitWindow
	bl	InitAudioDevice
	mov	r1, #200
	mov	r0, #200
	bl	SetWindowPosition
	sub	r3, fp, #68
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	mov	r3, #0
	str	r3, [fp, #-60]	@ float
	mov	r3, #0
	str	r3, [fp, #-56]	@ float
	ldr	r2, .L900+24
	sub	r3, fp, #68
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	mov	r3, #0
	str	r3, [fp, #-52]	@ float
	mov	r3, #1065353216
	str	r3, [fp, #-48]	@ float
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r2, .L900+28
	sub	r3, fp, #108
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	mov	r3, #120
	str	r3, [fp, #-100]
	mov	r3, #0
	strb	r3, [fp, #-96]
	mov	r3, #1
	strb	r3, [fp, #-88]
	mov	r3, #1
	strb	r3, [fp, #-86]
	mov	r3, #1
	strb	r3, [fp, #-87]
	ldr	r2, .L900+32
	sub	r3, fp, #108
	str	r3, [r2]
	ldr	r3, .L900+32
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	SetTargetFPS
	ldr	r3, .L900+32
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, .L900+32
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	sub	r3, fp, #68
	mov	r0, r3
	bl	SetRuntimeResolution
	ldr	r4, .L900+36
	sub	r0, fp, #156
	mov	r3, #250
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #256
	ldr	r1, .L900+40
	bl	LoadFontEx
	mov	lr, r4
	sub	ip, fp, #156
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	ldr	r3, .L900+36
	mov	r2, #3
	str	r2, [sp, #4]
	ldr	r2, [r3, #28]
	str	r2, [sp]
	add	r3, r3, #12
	ldm	r3, {r0, r1, r2, r3}
	bl	SetTextureFilter
	ldr	r4, .L900+44
	sub	r3, fp, #156
	ldr	r1, .L900+48
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #156
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L900+52
	sub	r3, fp, #156
	ldr	r1, .L900+56
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #156
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	ldr	r4, .L900+60
	sub	r3, fp, #156
	ldr	r1, .L900+64
	mov	r0, r3
	bl	LoadTexture
	mov	lr, r4
	sub	ip, fp, #156
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldr	r3, [ip]
	str	r3, [lr]
	mov	r0, #0
	bl	SetExitKey
	sub	r3, fp, #68
	mov	r0, r3
	bl	SplashUpdate
	bl	UnloadGlobalAssets
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L901:
	.align	2
.L900:
	.word	-171798692
	.word	1079077928
	.word	.LC170
	.word	CustomLogger
	.word	.LC171
	.word	1080
	.word	.LC12
	.word	.LC13
	.word	options
	.word	meowFont
	.word	.LC172
	.word	logoTexture
	.word	.LC173
	.word	splashBackgroundTexture
	.word	.LC174
	.word	splashOverlayTexture
	.word	.LC175
	.size	main, .-main
	.local	current_dragging.14
	.comm	current_dragging.14,4,4
	.local	isObjectBeingDragged.13
	.comm	isObjectBeingDragged.13,1,1
	.local	offsetX.12
	.comm	offsetX.12,4,4
	.local	offsetY.11
	.comm	offsetY.11,4,4
	.local	current_dragging.10
	.comm	current_dragging.10,4,4
	.local	isObjectBeingDragged.9
	.comm	isObjectBeingDragged.9,1,1
	.local	offsetX.8
	.comm	offsetX.8,4,4
	.local	offsetY.7
	.comm	offsetY.7,4,4
	.local	current_dragging.6
	.comm	current_dragging.6,4,4
	.local	isObjectBeingDragged.5
	.comm	isObjectBeingDragged.5,1,1
	.local	offsetX.4
	.comm	offsetX.4,4,4
	.local	offsetY.3
	.comm	offsetY.3,4,4
	.local	isHovering.2
	.comm	isHovering.2,1,1
	.section	.rodata
	.align	2
.LC176:
	.ascii	"Happy\000"
	.align	2
.LC177:
	.ascii	"Frustrated\000"
	.align	2
.LC178:
	.ascii	"Angry\000"
	.data
	.align	2
	.type	strings.1, %object
	.size	strings.1, 12
strings.1:
	.word	.LC176
	.word	.LC177
	.word	.LC178
	.section	.rodata
	.align	2
.LC179:
	.ascii	"Easy\000"
	.align	2
.LC180:
	.ascii	"Medium\000"
	.align	2
.LC181:
	.ascii	"Hard\000"
	.align	2
.LC182:
	.ascii	"Freeplay (E)\000"
	.align	2
.LC183:
	.ascii	"Freeplay (M)\000"
	.align	2
.LC184:
	.ascii	"Freeplay (H)\000"
	.data
	.align	2
	.type	strings.0, %object
	.size	strings.0, 24
strings.0:
	.word	.LC179
	.word	.LC180
	.word	.LC181
	.word	.LC182
	.word	.LC183
	.word	.LC184
	.ident	"GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
	.section	.note.GNU-stack,"",%progbits
