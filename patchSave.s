.arm.little

.open "code_orig.bin","code.bin",0x100000
.loadtable "unicode.tbl"

.org 0x151310
SaveFileNamePoinTable:
.word 0x6b086a, 0x6b08a4, 0x6b08de, 0x6b096c, 0x6b09ac, 0x6b09d0, 0x6b09f4, 0x6b0a18, 0x6b0a3c, Slot10, Slot11, Slot12, Slot13, Slot14, Slot15, Slot16, Slot17, Slot18, Slot19, Slot20, Slot21, Slot22, Slot23, Slot24,  Slot25, Slot26, Slot27, Slot28, Slot29, Slot30,Slot31, Slot32, Slot33, Slot34,  Slot35, Slot36, Slot37, Slot38, Slot39

Slot10:
.string "ext:/Chapter6.bak"
Slot11:
.string "ext:/Chapter7.bak"
Slot12:
.string "ext:/Chapter8.bak"
Slot13:
.string "ext:/Chapter9.bak"
Slot14:
.string "ext:/Chapter10.bak"
Slot15:
.string "ext:/Chapter11.bak"
Slot16:
.string "ext:/Chapter12.bak"
Slot17:
.string "ext:/Chapter13.bak"
Slot18:
.string "ext:/Chapter14.bak"
Slot19:
.string "ext:/Chapter15.bak"
Slot20:
.string "ext:/Chapter16.bak"
Slot21:
.string "ext:/Chapter17.bak"
Slot22:
.string "ext:/Chapter18.bak"
Slot23:
.string "ext:/Chapter19.bak"
Slot24:
.string "ext:/Chapter20.bak"
Slot25:
.string "ext:/Chapter21.bak"
Slot26:
.string "ext:/Chapter22.bak"
Slot27:
.string "ext:/Chapter23.bak"
Slot28:
.string "ext:/Chapter24.bak"
Slot29:
.string "ext:/Chapter25.bak"
Slot30:
.string "ext:/Chapter26.bak"
Slot31:
.string "ext:/Chapter27.bak"
Slot32:
.string "ext:/Chapter28.bak"
Slot33:
.string "ext:/Chapter29.bak"
Slot34:
.string "ext:/Chapter30.bak"
Slot35:
.string "ext:/Chapter31.bak"
Slot36:
.string "ext:/Chapter32.bak"
Slot37:
.string "ext:/Chapter33.bak"
Slot38:
.string "ext:/Chapter34.bak"
Slot39:
.string "ext:/Chapter35.bak"


;For More Save Slots
.org 0x178f94
.word SaveFileNamePoinTable
	
.org 0x178f04
	cmp r1,#39 ; amount of save slots
.org 0x178920
	mov r0,#39 ; amount of save slots
	
.org 0x2147c4
	movge r0,#13 ; loops
.org 0x214a84
	cmp	r10,#13 ; loops
	
.org 0x214aac
	mov	r2,#0x4000
	
.Close
