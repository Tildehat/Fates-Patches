.arm.little

.open "code_orig.bin","code.bin",0x100000

texFile__TryRead equ 0x4e0be4

.org 0x1512E0
drawUnique:
	add r1,sp,#0x10
	bl texFile__TryRead ; see if the unique sprite exist
	cmp	r0, #0
	beq 0x1d6fec ; doesn't so attempt load normal body sprites
	ldrh r2,[r4,#0x12] 
	orr r2,#0x1000
	strh r2,[r4,#0x12] ; store flag so that when grabbing anime.bin this string is flagged as being in the romfs
	add	r1,sp,#0x10 ; cleanup
	add	r0,r6,#0x138
	mov	r2,#2
	b 0x1d6fd4
	
.org 0x1d6f9c
	nop
	
.org 0x1d6fd0
	b drawUnique