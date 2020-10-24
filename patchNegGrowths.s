.arm.little

.open "code_orig.bin","code.bin",0x100000


;neg growths
.org 0x3d81f4
	sublt	r5,r5,#1
	add		r0,r7,#0xc8
	sublt	r8,r8,#1
	
.org 0x3d8258
	sublt	r5,r5,#1
	sublt	r8,r8,#1
.Close
