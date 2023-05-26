.arm.little

.open "code_orig.bin","code.bin",0x100000

.org 0x151820
RemovePairUp:
	ldr r0,=0x6d7ed0
	ldr r0,[r0]
	ldr r0,[r0,#4]
	tst r0,#0x10000 ; Test for ev::ChapterSetHideDouble flag
	bne 0x3832cc
	ldr r0,=0x6d70a8
	b 0x383254 ; return
.pool

.org 0x383250 ;map__anonymous_namespace__Double__BuildAttribute + 4C
	b RemovePairUp

.Close
