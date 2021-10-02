.arm.little

.open "code_orig.bin","code.bin",0x100000

.org 0x3a4908
	b 0x3a492c

.org 0x3a1e30 ; reenable pairing up with no movement
	b 0x3a1e74

.Close
