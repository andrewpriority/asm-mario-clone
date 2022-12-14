#####################################################################
#
# CSCB58 Winter 2022 Assembly Final Project
# University of Toronto, Scarborough
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4 (update this as needed)
# - Unit height in pixels: 4 (update this as needed)
# - Display width in pixels: 256 (update this as needed)
# - Display height in pixels: 256 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
#####################################################################

.eqv BASE_ADDRESS 0x10008000
.eqv REFRESH_RATE 20

.data
	playerScore: .word 0
	coinPosArray: .word 6024, 5144, 6480, 5568, 9096

.text
.globl main

# Bitmap display starter code


CLEAR_SCREEN: 
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0x000000 			# $t1 stores the black colour code
	li $t4, 0				# $t4 stores the incremented counter var
	li $t5, 16384				# $t5 stores the max value
LOOP_CLEAR_SCREEN:
	beq $t4, $t5, CLEAR_SCREEN_END 		# if exit condition is fulfilled, exit
	add $t6, $t4, $t0
	sw $t1, 0($t6)
	 
	addi $t4, $t4, 4			# increment counter var
	j LOOP_CLEAR_SCREEN
CLEAR_SCREEN_END:
	jr $ra
	
RENDER_TOP_BAR: 
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0x000000 			# $t1 stores the black colour code
	li $t4, 0				# $t4 stores the incremented counter var
	li $t5, 1792				# $t5 stores the max value
LOOP_RENDER_TOP_BAR:
	beq $t4, $t5, RENDER_TOP_BAR_END 		# if exit condition is fulfilled, exit
	add $t6, $t4, $t0
	sw $t1, 0($t6)
	 
	addi $t4, $t4, 4			# increment counter var
	j LOOP_RENDER_TOP_BAR
RENDER_TOP_BAR_END:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0xffffff 			# $t1 stores the white colour code
	
	addi $t0, $t0, 260
	
	sw $t1, 0($t0)
	sw $t1, 4($t0)
	sw $t1, 8($t0)
	sw $t1, 16($t0)
	sw $t1, 20($t0)
	sw $t1, 24($t0)
	sw $t1, 32($t0)
	sw $t1, 36($t0)
	sw $t1, 40($t0)
	sw $t1, 48($t0)
	sw $t1, 52($t0)
	sw $t1, 64($t0)
	sw $t1, 68($t0)
	sw $t1, 72($t0)
	sw $t1, 256($t0)
	sw $t1, 272($t0)
	sw $t1, 288($t0)
	sw $t1, 296($t0)
	sw $t1, 304($t0)
	sw $t1, 312($t0)
	sw $t1, 320($t0)
	sw $t1, 336($t0)
	sw $t1, 512($t0)
	sw $t1, 516($t0)
	sw $t1, 520($t0)
	sw $t1, 528($t0)
	sw $t1, 544($t0)
	sw $t1, 552($t0)
	sw $t1, 560($t0)
	sw $t1, 564($t0)
	sw $t1, 576($t0)
	sw $t1, 580($t0)
	sw $t1, 584($t0)
	sw $t1, 776($t0)
	sw $t1, 784($t0)
	sw $t1, 800($t0)
	sw $t1, 808($t0)
	sw $t1, 816($t0)
	sw $t1, 824($t0)
	sw $t1, 832($t0)
	sw $t1, 848($t0)
	sw $t1, 1024($t0)
	sw $t1, 1028($t0)
	sw $t1, 1032($t0)
	sw $t1, 1040($t0)
	sw $t1, 1044($t0)
	sw $t1, 1048($t0)
	sw $t1, 1056($t0)
	sw $t1, 1060($t0)
	sw $t1, 1064($t0)
	sw $t1, 1072($t0)
	sw $t1, 1080($t0)
	sw $t1, 1088($t0)
	sw $t1, 1092($t0)
	sw $t1, 1096($t0)
	
	jr $ra
	
	
RENDER_START_SCREEN:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0xffffff 			# $t2 stores the white colour code
	li $t3, 0xc7c7c7 			# $t3 stores the gray colour code
	li $t4, 0x808080 			# $t4 stores the other gray colour code
	li $t5, 0x000000			# $t5 stores the black colour code
	
	sw $t1, 2836($t0)
	sw $t1, 2840($t0)
	sw $t1, 2852($t0)
	sw $t1, 2864($t0)
	sw $t1, 2868($t0)
	sw $t1, 2872($t0)
	sw $t1, 2884($t0)
	sw $t1, 2888($t0)
	sw $t1, 2892($t0)
	sw $t1, 2896($t0)
	sw $t1, 2900($t0)
	sw $t1, 3092($t0)
	sw $t1, 3096($t0)
	sw $t1, 3100($t0)
	sw $t1, 3108($t0)
	sw $t1, 3116($t0)
	sw $t1, 3132($t0)
	sw $t1, 3148($t0)
	sw $t1, 3348($t0)
	sw $t1, 3356($t0)
	sw $t1, 3364($t0)
	sw $t1, 3372($t0)
	sw $t1, 3388($t0)
	sw $t1, 3404($t0)
	sw $t1, 3604($t0)
	sw $t1, 3612($t0)
	sw $t1, 3620($t0)
	sw $t1, 3628($t0)
	sw $t1, 3644($t0)
	sw $t1, 3660($t0)
	sw $t1, 3860($t0)
	sw $t1, 3872($t0)
	sw $t1, 3876($t0)
	sw $t1, 3884($t0)
	sw $t1, 3900($t0)
	sw $t1, 3916($t0)
	sw $t1, 4116($t0)
	sw $t1, 4132($t0)
	sw $t1, 4144($t0)
	sw $t1, 4148($t0)
	sw $t1, 4152($t0)
	sw $t1, 4172($t0)
	sw $t2, 4628($t0)
	sw $t2, 4632($t0)
	sw $t2, 4636($t0)
	sw $t2, 4640($t0)
	sw $t2, 4652($t0)
	sw $t2, 4656($t0)
	sw $t2, 4660($t0)
	sw $t2, 4664($t0)
	sw $t2, 4684($t0)
	sw $t2, 4688($t0)
	sw $t2, 4692($t0)
	sw $t2, 4696($t0)
	sw $t2, 4700($t0)
	sw $t2, 4704($t0)
	sw $t2, 4724($t0)
	sw $t2, 4728($t0)
	sw $t2, 4732($t0)
	sw $t2, 4736($t0)
	sw $t2, 4740($t0)
	sw $t2, 4744($t0)
	sw $t2, 4764($t0)
	sw $t2, 4768($t0)
	sw $t2, 4772($t0)
	sw $t2, 4776($t0)
	sw $t2, 4780($t0)
	sw $t2, 4784($t0)
	sw $t2, 4788($t0)
	sw $t2, 4792($t0)
	sw $t2, 4812($t0)
	sw $t2, 4816($t0)
	sw $t2, 4820($t0)
	sw $t2, 4824($t0)
	sw $t2, 4828($t0)
	sw $t2, 4832($t0)
	sw $t2, 4884($t0)
	sw $t2, 4888($t0)
	sw $t2, 4892($t0)
	sw $t2, 4896($t0)
	sw $t2, 4908($t0)
	sw $t2, 4912($t0)
	sw $t2, 4916($t0)
	sw $t2, 4920($t0)
	sw $t2, 4940($t0)
	sw $t2, 4944($t0)
	sw $t2, 4948($t0)
	sw $t2, 4952($t0)
	sw $t2, 4956($t0)
	sw $t2, 4960($t0)
	sw $t2, 4980($t0)
	sw $t2, 4984($t0)
	sw $t2, 4988($t0)
	sw $t2, 4992($t0)
	sw $t2, 4996($t0)
	sw $t2, 5000($t0)
	sw $t2, 5020($t0)
	sw $t2, 5024($t0)
	sw $t2, 5028($t0)
	sw $t2, 5032($t0)
	sw $t2, 5036($t0)
	sw $t2, 5040($t0)
	sw $t2, 5044($t0)
	sw $t2, 5048($t0)
	sw $t2, 5068($t0)
	sw $t2, 5072($t0)
	sw $t2, 5076($t0)
	sw $t2, 5080($t0)
	sw $t2, 5084($t0)
	sw $t2, 5088($t0)
	sw $t2, 5140($t0)
	sw $t2, 5144($t0)
	sw $t2, 5156($t0)
	sw $t2, 5160($t0)
	sw $t2, 5172($t0)
	sw $t2, 5176($t0)
	sw $t2, 5188($t0)
	sw $t2, 5192($t0)
	sw $t2, 5220($t0)
	sw $t2, 5224($t0)
	sw $t2, 5236($t0)
	sw $t2, 5240($t0)
	sw $t2, 5260($t0)
	sw $t2, 5264($t0)
	sw $t2, 5288($t0)
	sw $t2, 5292($t0)
	sw $t2, 5316($t0)
	sw $t2, 5320($t0)
	sw $t2, 5348($t0)
	sw $t2, 5352($t0)
	sw $t2, 5396($t0)
	sw $t2, 5400($t0)
	sw $t2, 5412($t0)
	sw $t2, 5416($t0)
	sw $t2, 5428($t0)
	sw $t2, 5432($t0)
	sw $t2, 5444($t0)
	sw $t2, 5448($t0)
	sw $t2, 5476($t0)
	sw $t2, 5480($t0)
	sw $t2, 5492($t0)
	sw $t2, 5496($t0)
	sw $t2, 5516($t0)
	sw $t2, 5520($t0)
	sw $t2, 5544($t0)
	sw $t2, 5548($t0)
	sw $t2, 5572($t0)
	sw $t2, 5576($t0)
	sw $t2, 5604($t0)
	sw $t2, 5608($t0)
	sw $t2, 5652($t0)
	sw $t2, 5656($t0)
	sw $t2, 5668($t0)
	sw $t2, 5672($t0)
	sw $t2, 5684($t0)
	sw $t2, 5688($t0)
	sw $t2, 5700($t0)
	sw $t2, 5704($t0)
	sw $t2, 5732($t0)
	sw $t2, 5736($t0)
	sw $t2, 5748($t0)
	sw $t2, 5752($t0)
	sw $t2, 5772($t0)
	sw $t2, 5776($t0)
	sw $t2, 5800($t0)
	sw $t2, 5804($t0)
	sw $t2, 5828($t0)
	sw $t2, 5832($t0)
	sw $t2, 5860($t0)
	sw $t2, 5864($t0)
	sw $t2, 5908($t0)
	sw $t2, 5912($t0)
	sw $t2, 5924($t0)
	sw $t2, 5928($t0)
	sw $t2, 5940($t0)
	sw $t2, 5944($t0)
	sw $t2, 5956($t0)
	sw $t2, 5960($t0)
	sw $t2, 5988($t0)
	sw $t2, 5992($t0)
	sw $t2, 6004($t0)
	sw $t2, 6008($t0)
	sw $t2, 6028($t0)
	sw $t2, 6032($t0)
	sw $t2, 6056($t0)
	sw $t2, 6060($t0)
	sw $t2, 6084($t0)
	sw $t2, 6088($t0)
	sw $t2, 6116($t0)
	sw $t2, 6120($t0)
	sw $t2, 6164($t0)
	sw $t2, 6168($t0)
	sw $t2, 6196($t0)
	sw $t2, 6200($t0)
	sw $t2, 6212($t0)
	sw $t2, 6216($t0)
	sw $t2, 6220($t0)
	sw $t2, 6224($t0)
	sw $t2, 6228($t0)
	sw $t2, 6232($t0)
	sw $t2, 6236($t0)
	sw $t2, 6240($t0)
	sw $t2, 6244($t0)
	sw $t2, 6248($t0)
	sw $t2, 6260($t0)
	sw $t2, 6264($t0)
	sw $t2, 6268($t0)
	sw $t2, 6272($t0)
	sw $t2, 6276($t0)
	sw $t2, 6280($t0)
	sw $t2, 6312($t0)
	sw $t2, 6316($t0)
	sw $t2, 6340($t0)
	sw $t2, 6344($t0)
	sw $t2, 6372($t0)
	sw $t2, 6376($t0)
	sw $t2, 6420($t0)
	sw $t2, 6424($t0)
	sw $t2, 6452($t0)
	sw $t2, 6456($t0)
	sw $t2, 6468($t0)
	sw $t2, 6472($t0)
	sw $t2, 6476($t0)
	sw $t2, 6480($t0)
	sw $t2, 6484($t0)
	sw $t2, 6488($t0)
	sw $t2, 6492($t0)
	sw $t2, 6496($t0)
	sw $t2, 6500($t0)
	sw $t2, 6504($t0)
	sw $t2, 6516($t0)
	sw $t2, 6520($t0)
	sw $t2, 6524($t0)
	sw $t2, 6528($t0)
	sw $t2, 6532($t0)
	sw $t2, 6536($t0)
	sw $t2, 6568($t0)
	sw $t2, 6572($t0)
	sw $t2, 6596($t0)
	sw $t2, 6600($t0)
	sw $t2, 6628($t0)
	sw $t2, 6632($t0)
	sw $t2, 6676($t0)
	sw $t2, 6680($t0)
	sw $t2, 6708($t0)
	sw $t2, 6712($t0)
	sw $t2, 6724($t0)
	sw $t2, 6728($t0)
	sw $t2, 6756($t0)
	sw $t2, 6760($t0)
	sw $t2, 6772($t0)
	sw $t2, 6776($t0)
	sw $t2, 6796($t0)
	sw $t2, 6800($t0)
	sw $t2, 6824($t0)
	sw $t2, 6828($t0)
	sw $t2, 6852($t0)
	sw $t2, 6856($t0)
	sw $t2, 6884($t0)
	sw $t2, 6888($t0)
	sw $t2, 6932($t0)
	sw $t2, 6936($t0)
	sw $t2, 6964($t0)
	sw $t2, 6968($t0)
	sw $t2, 6980($t0)
	sw $t2, 6984($t0)
	sw $t2, 7012($t0)
	sw $t2, 7016($t0)
	sw $t2, 7028($t0)
	sw $t2, 7032($t0)
	sw $t2, 7052($t0)
	sw $t2, 7056($t0)
	sw $t2, 7080($t0)
	sw $t2, 7084($t0)
	sw $t2, 7108($t0)
	sw $t2, 7112($t0)
	sw $t2, 7140($t0)
	sw $t2, 7144($t0)
	sw $t2, 7188($t0)
	sw $t2, 7192($t0)
	sw $t2, 7220($t0)
	sw $t2, 7224($t0)
	sw $t2, 7236($t0)
	sw $t2, 7240($t0)
	sw $t2, 7268($t0)
	sw $t2, 7272($t0)
	sw $t2, 7284($t0)
	sw $t2, 7288($t0)
	sw $t2, 7308($t0)
	sw $t2, 7312($t0)
	sw $t2, 7324($t0)
	sw $t2, 7328($t0)
	sw $t2, 7332($t0)
	sw $t2, 7336($t0)
	sw $t2, 7340($t0)
	sw $t2, 7344($t0)
	sw $t2, 7348($t0)
	sw $t2, 7352($t0)
	sw $t2, 7372($t0)
	sw $t2, 7376($t0)
	sw $t2, 7380($t0)
	sw $t2, 7384($t0)
	sw $t2, 7388($t0)
	sw $t2, 7392($t0)
	sw $t2, 7444($t0)
	sw $t2, 7448($t0)
	sw $t2, 7476($t0)
	sw $t2, 7480($t0)
	sw $t2, 7492($t0)
	sw $t2, 7496($t0)
	sw $t2, 7524($t0)
	sw $t2, 7528($t0)
	sw $t2, 7540($t0)
	sw $t2, 7544($t0)
	sw $t2, 7564($t0)
	sw $t2, 7568($t0)
	sw $t2, 7580($t0)
	sw $t2, 7584($t0)
	sw $t2, 7588($t0)
	sw $t2, 7592($t0)
	sw $t2, 7596($t0)
	sw $t2, 7600($t0)
	sw $t2, 7604($t0)
	sw $t2, 7608($t0)
	sw $t2, 7628($t0)
	sw $t2, 7632($t0)
	sw $t2, 7636($t0)
	sw $t2, 7640($t0)
	sw $t2, 7644($t0)
	sw $t2, 7648($t0)
	sw $t2, 8080($t0)
	sw $t2, 8084($t0)
	sw $t2, 8088($t0)
	sw $t2, 8100($t0)
	sw $t2, 8104($t0)
	sw $t2, 8108($t0)
	sw $t2, 8124($t0)
	sw $t2, 8128($t0)
	sw $t2, 8132($t0)
	sw $t2, 8148($t0)
	sw $t2, 8152($t0)
	sw $t2, 8156($t0)
	sw $t2, 8336($t0)
	sw $t2, 8348($t0)
	sw $t2, 8356($t0)
	sw $t2, 8368($t0)
	sw $t2, 8376($t0)
	sw $t2, 8392($t0)
	sw $t2, 8400($t0)
	sw $t2, 8592($t0)
	sw $t2, 8604($t0)
	sw $t2, 8612($t0)
	sw $t2, 8624($t0)
	sw $t2, 8632($t0)
	sw $t2, 8648($t0)
	sw $t2, 8656($t0)
	sw $t2, 8848($t0)
	sw $t2, 8852($t0)
	sw $t2, 8856($t0)
	sw $t2, 8868($t0)
	sw $t2, 8872($t0)
	sw $t2, 8876($t0)
	sw $t2, 8888($t0)
	sw $t2, 8904($t0)
	sw $t2, 8916($t0)
	sw $t2, 8920($t0)
	sw $t2, 8924($t0)
	sw $t2, 9104($t0)
	sw $t2, 9116($t0)
	sw $t2, 9124($t0)
	sw $t2, 9136($t0)
	sw $t2, 9144($t0)
	sw $t2, 9160($t0)
	sw $t2, 9184($t0)
	sw $t2, 9360($t0)
	sw $t2, 9372($t0)
	sw $t2, 9380($t0)
	sw $t2, 9392($t0)
	sw $t2, 9400($t0)
	sw $t2, 9416($t0)
	sw $t2, 9440($t0)
	sw $t2, 9448($t0)
	sw $t2, 9452($t0)
	sw $t2, 9616($t0)
	sw $t2, 9620($t0)
	sw $t2, 9624($t0)
	sw $t2, 9636($t0)
	sw $t2, 9648($t0)
	sw $t2, 9660($t0)
	sw $t2, 9664($t0)
	sw $t2, 9668($t0)
	sw $t2, 9680($t0)
	sw $t2, 9684($t0)
	sw $t2, 9688($t0)
	sw $t2, 9692($t0)
	sw $t2, 9704($t0)
	sw $t2, 9708($t0)
	sw $t4, 11588($t0)
	sw $t4, 11592($t0)
	sw $t4, 11596($t0)
	sw $t4, 11600($t0)
	sw $t4, 11604($t0)
	sw $t4, 11608($t0)
	sw $t4, 11612($t0)
	sw $t4, 11616($t0)
	sw $t4, 11844($t0)
	sw $t3, 11848($t0)
	sw $t3, 11852($t0)
	sw $t3, 11856($t0)
	sw $t3, 11860($t0)
	sw $t3, 11864($t0)
	sw $t3, 11868($t0)
	sw $t4, 11872($t0)
	sw $t3, 11888($t0)
	sw $t3, 11892($t0)
	sw $t3, 11896($t0)
	sw $t3, 11904($t0)
	sw $t3, 11908($t0)
	sw $t3, 11912($t0)
	sw $t3, 11924($t0)
	sw $t3, 11936($t0)
	sw $t3, 11940($t0)
	sw $t3, 11952($t0)
	sw $t3, 11956($t0)
	sw $t3, 11960($t0)
	sw $t4, 12100($t0)
	sw $t3, 12104($t0)
	sw $t5, 12108($t0)
	sw $t5, 12112($t0)
	sw $t5, 12116($t0)
	sw $t3, 12120($t0)
	sw $t3, 12124($t0)
	sw $t4, 12128($t0)
	sw $t3, 12144($t0)
	sw $t3, 12164($t0)
	sw $t3, 12176($t0)
	sw $t3, 12184($t0)
	sw $t3, 12192($t0)
	sw $t3, 12200($t0)
	sw $t3, 12212($t0)
	sw $t4, 12356($t0)
	sw $t3, 12360($t0)
	sw $t5, 12364($t0)
	sw $t3, 12368($t0)
	sw $t3, 12372($t0)
	sw $t5, 12376($t0)
	sw $t3, 12380($t0)
	sw $t4, 12384($t0)
	sw $t3, 12400($t0)
	sw $t3, 12404($t0)
	sw $t3, 12408($t0)
	sw $t3, 12420($t0)
	sw $t3, 12432($t0)
	sw $t3, 12440($t0)
	sw $t3, 12448($t0)
	sw $t3, 12456($t0)
	sw $t3, 12468($t0)
	sw $t4, 12612($t0)
	sw $t3, 12616($t0)
	sw $t5, 12620($t0)
	sw $t5, 12624($t0)
	sw $t5, 12628($t0)
	sw $t3, 12632($t0)
	sw $t3, 12636($t0)
	sw $t4, 12640($t0)
	sw $t3, 12664($t0)
	sw $t3, 12676($t0)
	sw $t3, 12688($t0)
	sw $t3, 12692($t0)
	sw $t3, 12696($t0)
	sw $t3, 12704($t0)
	sw $t3, 12708($t0)
	sw $t3, 12724($t0)
	sw $t4, 12868($t0)
	sw $t3, 12872($t0)
	sw $t5, 12876($t0)
	sw $t3, 12880($t0)
	sw $t3, 12884($t0)
	sw $t3, 12888($t0)
	sw $t3, 12892($t0)
	sw $t4, 12896($t0)
	sw $t3, 12912($t0)
	sw $t3, 12916($t0)
	sw $t3, 12920($t0)
	sw $t3, 12932($t0)
	sw $t3, 12944($t0)
	sw $t3, 12952($t0)
	sw $t3, 12960($t0)
	sw $t3, 12968($t0)
	sw $t3, 12980($t0)
	sw $t4, 13124($t0)
	sw $t3, 13128($t0)
	sw $t3, 13132($t0)
	sw $t3, 13136($t0)
	sw $t3, 13140($t0)
	sw $t3, 13144($t0)
	sw $t3, 13148($t0)
	sw $t4, 13152($t0)
	sw $t4, 13380($t0)
	sw $t4, 13384($t0)
	sw $t4, 13388($t0)
	sw $t4, 13392($t0)
	sw $t4, 13396($t0)
	sw $t4, 13400($t0)
	sw $t4, 13404($t0)
	sw $t4, 13408($t0)

	jr $ra
	

RENDER_WIN_SCREEN:
	jal CLEAR_SCREEN
	
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0x000000 			# $t1 stores the black colour code
	li $t2, 0xc7c7c7 			# $t2 stores the gray colour code
	li $t3, 0xffffff 			# $t3 stores the white colour code
	li $t4, 0x808080 			# $t4 stores the other gray colour code
	
	sw $t3, 3644($t0)
	sw $t3, 3648($t0)
	sw $t3, 3676($t0)
	sw $t3, 3680($t0)
	sw $t3, 3700($t0)
	sw $t3, 3704($t0)
	sw $t3, 3708($t0)
	sw $t3, 3712($t0)
	sw $t3, 3716($t0)
	sw $t3, 3720($t0)
	sw $t3, 3740($t0)
	sw $t3, 3744($t0)
	sw $t3, 3772($t0)
	sw $t3, 3776($t0)
	sw $t3, 3900($t0)
	sw $t3, 3904($t0)
	sw $t3, 3932($t0)
	sw $t3, 3936($t0)
	sw $t3, 3956($t0)
	sw $t3, 3960($t0)
	sw $t3, 3964($t0)
	sw $t3, 3968($t0)
	sw $t3, 3972($t0)
	sw $t3, 3976($t0)
	sw $t3, 3996($t0)
	sw $t3, 4000($t0)
	sw $t3, 4028($t0)
	sw $t3, 4032($t0)
	sw $t3, 4164($t0)
	sw $t3, 4168($t0)
	sw $t3, 4180($t0)
	sw $t3, 4184($t0)
	sw $t3, 4204($t0)
	sw $t3, 4208($t0)
	sw $t3, 4236($t0)
	sw $t3, 4240($t0)
	sw $t3, 4252($t0)
	sw $t3, 4256($t0)
	sw $t3, 4284($t0)
	sw $t3, 4288($t0)
	sw $t3, 4420($t0)
	sw $t3, 4424($t0)
	sw $t3, 4436($t0)
	sw $t3, 4440($t0)
	sw $t3, 4460($t0)
	sw $t3, 4464($t0)
	sw $t3, 4492($t0)
	sw $t3, 4496($t0)
	sw $t3, 4508($t0)
	sw $t3, 4512($t0)
	sw $t3, 4540($t0)
	sw $t3, 4544($t0)
	sw $t3, 4684($t0)
	sw $t3, 4688($t0)
	sw $t3, 4716($t0)
	sw $t3, 4720($t0)
	sw $t3, 4748($t0)
	sw $t3, 4752($t0)
	sw $t3, 4764($t0)
	sw $t3, 4768($t0)
	sw $t3, 4796($t0)
	sw $t3, 4800($t0)
	sw $t3, 4940($t0)
	sw $t3, 4944($t0)
	sw $t3, 4972($t0)
	sw $t3, 4976($t0)
	sw $t3, 5004($t0)
	sw $t3, 5008($t0)
	sw $t3, 5020($t0)
	sw $t3, 5024($t0)
	sw $t3, 5052($t0)
	sw $t3, 5056($t0)
	sw $t3, 5196($t0)
	sw $t3, 5200($t0)
	sw $t3, 5228($t0)
	sw $t3, 5232($t0)
	sw $t3, 5260($t0)
	sw $t3, 5264($t0)
	sw $t3, 5276($t0)
	sw $t3, 5280($t0)
	sw $t3, 5308($t0)
	sw $t3, 5312($t0)
	sw $t3, 5452($t0)
	sw $t3, 5456($t0)
	sw $t3, 5484($t0)
	sw $t3, 5488($t0)
	sw $t3, 5516($t0)
	sw $t3, 5520($t0)
	sw $t3, 5532($t0)
	sw $t3, 5536($t0)
	sw $t3, 5564($t0)
	sw $t3, 5568($t0)
	sw $t3, 5708($t0)
	sw $t3, 5712($t0)
	sw $t3, 5748($t0)
	sw $t3, 5752($t0)
	sw $t3, 5756($t0)
	sw $t3, 5760($t0)
	sw $t3, 5764($t0)
	sw $t3, 5768($t0)
	sw $t3, 5796($t0)
	sw $t3, 5800($t0)
	sw $t3, 5804($t0)
	sw $t3, 5808($t0)
	sw $t3, 5812($t0)
	sw $t3, 5816($t0)
	sw $t3, 5964($t0)
	sw $t3, 5968($t0)
	sw $t3, 6004($t0)
	sw $t3, 6008($t0)
	sw $t3, 6012($t0)
	sw $t3, 6016($t0)
	sw $t3, 6020($t0)
	sw $t3, 6024($t0)
	sw $t3, 6052($t0)
	sw $t3, 6056($t0)
	sw $t3, 6060($t0)
	sw $t3, 6064($t0)
	sw $t3, 6068($t0)
	sw $t3, 6072($t0)
	sw $t3, 6716($t0)
	sw $t3, 6720($t0)
	sw $t3, 6748($t0)
	sw $t3, 6752($t0)
	sw $t3, 6772($t0)
	sw $t3, 6776($t0)
	sw $t3, 6780($t0)
	sw $t3, 6784($t0)
	sw $t3, 6788($t0)
	sw $t3, 6792($t0)
	sw $t3, 6812($t0)
	sw $t3, 6816($t0)
	sw $t3, 6820($t0)
	sw $t3, 6824($t0)
	sw $t3, 6844($t0)
	sw $t3, 6848($t0)
	sw $t3, 6972($t0)
	sw $t3, 6976($t0)
	sw $t3, 7004($t0)
	sw $t3, 7008($t0)
	sw $t3, 7028($t0)
	sw $t3, 7032($t0)
	sw $t3, 7036($t0)
	sw $t3, 7040($t0)
	sw $t3, 7044($t0)
	sw $t3, 7048($t0)
	sw $t3, 7068($t0)
	sw $t3, 7072($t0)
	sw $t3, 7076($t0)
	sw $t3, 7080($t0)
	sw $t3, 7100($t0)
	sw $t3, 7104($t0)
	sw $t3, 7228($t0)
	sw $t3, 7232($t0)
	sw $t3, 7260($t0)
	sw $t3, 7264($t0)
	sw $t3, 7276($t0)
	sw $t3, 7280($t0)
	sw $t3, 7308($t0)
	sw $t3, 7312($t0)
	sw $t3, 7324($t0)
	sw $t3, 7328($t0)
	sw $t3, 7332($t0)
	sw $t3, 7336($t0)
	sw $t3, 7340($t0)
	sw $t3, 7344($t0)
	sw $t3, 7356($t0)
	sw $t3, 7360($t0)
	sw $t3, 7484($t0)
	sw $t3, 7488($t0)
	sw $t3, 7516($t0)
	sw $t3, 7520($t0)
	sw $t3, 7532($t0)
	sw $t3, 7536($t0)
	sw $t3, 7564($t0)
	sw $t3, 7568($t0)
	sw $t3, 7580($t0)
	sw $t3, 7584($t0)
	sw $t3, 7588($t0)
	sw $t3, 7592($t0)
	sw $t3, 7596($t0)
	sw $t3, 7600($t0)
	sw $t3, 7612($t0)
	sw $t3, 7616($t0)
	sw $t3, 7740($t0)
	sw $t3, 7744($t0)
	sw $t3, 7756($t0)
	sw $t3, 7760($t0)
	sw $t3, 7772($t0)
	sw $t3, 7776($t0)
	sw $t3, 7788($t0)
	sw $t3, 7792($t0)
	sw $t3, 7820($t0)
	sw $t3, 7824($t0)
	sw $t3, 7836($t0)
	sw $t3, 7840($t0)
	sw $t3, 7852($t0)
	sw $t3, 7856($t0)
	sw $t3, 7868($t0)
	sw $t3, 7872($t0)
	sw $t3, 7996($t0)
	sw $t3, 8000($t0)
	sw $t3, 8012($t0)
	sw $t3, 8016($t0)
	sw $t3, 8028($t0)
	sw $t3, 8032($t0)
	sw $t3, 8044($t0)
	sw $t3, 8048($t0)
	sw $t3, 8076($t0)
	sw $t3, 8080($t0)
	sw $t3, 8092($t0)
	sw $t3, 8096($t0)
	sw $t3, 8108($t0)
	sw $t3, 8112($t0)
	sw $t3, 8124($t0)
	sw $t3, 8128($t0)
	sw $t3, 8252($t0)
	sw $t3, 8256($t0)
	sw $t3, 8268($t0)
	sw $t3, 8272($t0)
	sw $t3, 8284($t0)
	sw $t3, 8288($t0)
	sw $t3, 8300($t0)
	sw $t3, 8304($t0)
	sw $t3, 8332($t0)
	sw $t3, 8336($t0)
	sw $t3, 8348($t0)
	sw $t3, 8352($t0)
	sw $t3, 8372($t0)
	sw $t3, 8376($t0)
	sw $t3, 8380($t0)
	sw $t3, 8384($t0)
	sw $t3, 8508($t0)
	sw $t3, 8512($t0)
	sw $t3, 8524($t0)
	sw $t3, 8528($t0)
	sw $t3, 8540($t0)
	sw $t3, 8544($t0)
	sw $t3, 8556($t0)
	sw $t3, 8560($t0)
	sw $t3, 8588($t0)
	sw $t3, 8592($t0)
	sw $t3, 8604($t0)
	sw $t3, 8608($t0)
	sw $t3, 8628($t0)
	sw $t3, 8632($t0)
	sw $t3, 8636($t0)
	sw $t3, 8640($t0)
	sw $t3, 8772($t0)
	sw $t3, 8776($t0)
	sw $t3, 8788($t0)
	sw $t3, 8792($t0)
	sw $t3, 8820($t0)
	sw $t3, 8824($t0)
	sw $t3, 8828($t0)
	sw $t3, 8832($t0)
	sw $t3, 8836($t0)
	sw $t3, 8840($t0)
	sw $t3, 8860($t0)
	sw $t3, 8864($t0)
	sw $t3, 8892($t0)
	sw $t3, 8896($t0)
	sw $t3, 9028($t0)
	sw $t3, 9032($t0)
	sw $t3, 9044($t0)
	sw $t3, 9048($t0)
	sw $t3, 9076($t0)
	sw $t3, 9080($t0)
	sw $t3, 9084($t0)
	sw $t3, 9088($t0)
	sw $t3, 9092($t0)
	sw $t3, 9096($t0)
	sw $t3, 9116($t0)
	sw $t3, 9120($t0)
	sw $t3, 9148($t0)
	sw $t3, 9152($t0)
	sw $t4, 10292($t0)
	sw $t4, 10296($t0)
	sw $t4, 10300($t0)
	sw $t4, 10304($t0)
	sw $t4, 10308($t0)
	sw $t4, 10312($t0)
	sw $t4, 10316($t0)
	sw $t4, 10320($t0)
	sw $t4, 10548($t0)
	sw $t2, 10552($t0)
	sw $t2, 10556($t0)
	sw $t2, 10560($t0)
	sw $t2, 10564($t0)
	sw $t2, 10568($t0)
	sw $t2, 10572($t0)
	sw $t4, 10576($t0)
	sw $t2, 10592($t0)
	sw $t2, 10596($t0)
	sw $t2, 10608($t0)
	sw $t2, 10612($t0)
	sw $t2, 10616($t0)
	sw $t2, 10624($t0)
	sw $t2, 10628($t0)
	sw $t2, 10632($t0)
	sw $t2, 10640($t0)
	sw $t2, 10644($t0)
	sw $t2, 10648($t0)
	sw $t2, 10660($t0)
	sw $t2, 10672($t0)
	sw $t2, 10676($t0)
	sw $t2, 10688($t0)
	sw $t2, 10692($t0)
	sw $t2, 10696($t0)
	sw $t4, 10804($t0)
	sw $t2, 10808($t0)
	sw $t1, 10812($t0)
	sw $t1, 10816($t0)
	sw $t1, 10820($t0)
	sw $t2, 10824($t0)
	sw $t2, 10828($t0)
	sw $t4, 10832($t0)
	sw $t2, 10848($t0)
	sw $t2, 10856($t0)
	sw $t2, 10864($t0)
	sw $t2, 10880($t0)
	sw $t2, 10900($t0)
	sw $t2, 10912($t0)
	sw $t2, 10920($t0)
	sw $t2, 10928($t0)
	sw $t2, 10936($t0)
	sw $t2, 10948($t0)
	sw $t4, 11060($t0)
	sw $t2, 11064($t0)
	sw $t1, 11068($t0)
	sw $t2, 11072($t0)
	sw $t2, 11076($t0)
	sw $t1, 11080($t0)
	sw $t2, 11084($t0)
	sw $t4, 11088($t0)
	sw $t2, 11104($t0)
	sw $t2, 11112($t0)
	sw $t2, 11120($t0)
	sw $t2, 11124($t0)
	sw $t2, 11136($t0)
	sw $t2, 11140($t0)
	sw $t2, 11144($t0)
	sw $t2, 11156($t0)
	sw $t2, 11168($t0)
	sw $t2, 11176($t0)
	sw $t2, 11184($t0)
	sw $t2, 11192($t0)
	sw $t2, 11204($t0)
	sw $t4, 11316($t0)
	sw $t2, 11320($t0)
	sw $t1, 11324($t0)
	sw $t1, 11328($t0)
	sw $t1, 11332($t0)
	sw $t2, 11336($t0)
	sw $t2, 11340($t0)
	sw $t4, 11344($t0)
	sw $t2, 11360($t0)
	sw $t2, 11364($t0)
	sw $t2, 11376($t0)
	sw $t2, 11400($t0)
	sw $t2, 11412($t0)
	sw $t2, 11424($t0)
	sw $t2, 11428($t0)
	sw $t2, 11432($t0)
	sw $t2, 11440($t0)
	sw $t2, 11444($t0)
	sw $t2, 11460($t0)
	sw $t4, 11572($t0)
	sw $t2, 11576($t0)
	sw $t1, 11580($t0)
	sw $t2, 11584($t0)
	sw $t2, 11588($t0)
	sw $t2, 11592($t0)
	sw $t2, 11596($t0)
	sw $t4, 11600($t0)
	sw $t2, 11616($t0)
	sw $t2, 11624($t0)
	sw $t2, 11632($t0)
	sw $t2, 11636($t0)
	sw $t2, 11640($t0)
	sw $t2, 11648($t0)
	sw $t2, 11652($t0)
	sw $t2, 11656($t0)
	sw $t2, 11668($t0)
	sw $t2, 11680($t0)
	sw $t2, 11688($t0)
	sw $t2, 11696($t0)
	sw $t2, 11704($t0)
	sw $t2, 11716($t0)
	sw $t4, 11828($t0)
	sw $t2, 11832($t0)
	sw $t2, 11836($t0)
	sw $t2, 11840($t0)
	sw $t2, 11844($t0)
	sw $t2, 11848($t0)
	sw $t2, 11852($t0)
	sw $t4, 11856($t0)
	sw $t4, 12084($t0)
	sw $t4, 12088($t0)
	sw $t4, 12092($t0)
	sw $t4, 12096($t0)
	sw $t4, 12100($t0)
	sw $t4, 12104($t0)
	sw $t4, 12108($t0)
	sw $t4, 12112($t0)
	
	j LOOP_GAME_OVER

RENDER_GAME_OVER_SCREEN:
	jal CLEAR_SCREEN
	
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0x000000 			# $t1 stores the black colour code
	li $t2, 0xc7c7c7 			# $t2 stores the gray colour code
	li $t3, 0xffffff 			# $t3 stores the white colour code
	li $t4, 0x808080 			# $t4 stores the other gray colour code
	
	sw $t3, 3632($t0)
        sw $t3, 3636($t0)
        sw $t3, 3640($t0)
        sw $t3, 3644($t0)
        sw $t3, 3648($t0)
        sw $t3, 3652($t0)
        sw $t3, 3680($t0)
        sw $t3, 3684($t0)
        sw $t3, 3688($t0)
        sw $t3, 3692($t0)
        sw $t3, 3696($t0)
        sw $t3, 3700($t0)
        sw $t3, 3720($t0)
        sw $t3, 3724($t0)
        sw $t3, 3728($t0)
        sw $t3, 3732($t0)
        sw $t3, 3744($t0)
        sw $t3, 3748($t0)
        sw $t3, 3752($t0)
        sw $t3, 3756($t0)
        sw $t3, 3768($t0)
        sw $t3, 3772($t0)
        sw $t3, 3776($t0)
        sw $t3, 3780($t0)
        sw $t3, 3784($t0)
        sw $t3, 3788($t0)
        sw $t3, 3792($t0)
        sw $t3, 3796($t0)
        sw $t3, 3888($t0)
        sw $t3, 3892($t0)
        sw $t3, 3896($t0)
        sw $t3, 3900($t0)
        sw $t3, 3904($t0)
        sw $t3, 3908($t0)
        sw $t3, 3936($t0)
        sw $t3, 3940($t0)
        sw $t3, 3944($t0)
        sw $t3, 3948($t0)
        sw $t3, 3952($t0)
        sw $t3, 3956($t0)
        sw $t3, 3976($t0)
        sw $t3, 3980($t0)
        sw $t3, 3984($t0)
        sw $t3, 3988($t0)
        sw $t3, 4000($t0)
        sw $t3, 4004($t0)
        sw $t3, 4008($t0)
        sw $t3, 4012($t0)
        sw $t3, 4024($t0)
        sw $t3, 4028($t0)
        sw $t3, 4032($t0)
        sw $t3, 4036($t0)
        sw $t3, 4040($t0)
        sw $t3, 4044($t0)
        sw $t3, 4048($t0)
        sw $t3, 4052($t0)
        sw $t3, 4136($t0)
        sw $t3, 4140($t0)
        sw $t3, 4184($t0)
        sw $t3, 4188($t0)
        sw $t3, 4192($t0)
        sw $t3, 4196($t0)
        sw $t3, 4208($t0)
        sw $t3, 4212($t0)
        sw $t3, 4216($t0)
        sw $t3, 4220($t0)
        sw $t3, 4232($t0)
        sw $t3, 4236($t0)
        sw $t3, 4248($t0)
        sw $t3, 4252($t0)
        sw $t3, 4264($t0)
        sw $t3, 4268($t0)
        sw $t3, 4280($t0)
        sw $t3, 4284($t0)
        sw $t3, 4392($t0)
        sw $t3, 4396($t0)
        sw $t3, 4440($t0)
        sw $t3, 4444($t0)
        sw $t3, 4448($t0)
        sw $t3, 4452($t0)
        sw $t3, 4464($t0)
        sw $t3, 4468($t0)
        sw $t3, 4472($t0)
        sw $t3, 4476($t0)
        sw $t3, 4488($t0)
        sw $t3, 4492($t0)
        sw $t3, 4504($t0)
        sw $t3, 4508($t0)
        sw $t3, 4520($t0)
        sw $t3, 4524($t0)
        sw $t3, 4536($t0)
        sw $t3, 4540($t0)
        sw $t3, 4648($t0)
        sw $t3, 4652($t0)
        sw $t3, 4672($t0)
        sw $t3, 4676($t0)
        sw $t3, 4680($t0)
        sw $t3, 4684($t0)
        sw $t3, 4696($t0)
        sw $t3, 4700($t0)
        sw $t3, 4728($t0)
        sw $t3, 4732($t0)
        sw $t3, 4744($t0)
        sw $t3, 4748($t0)
        sw $t3, 4760($t0)
        sw $t3, 4764($t0)
        sw $t3, 4776($t0)
        sw $t3, 4780($t0)
        sw $t3, 4792($t0)
        sw $t3, 4796($t0)
        sw $t3, 4800($t0)
        sw $t3, 4804($t0)
        sw $t3, 4808($t0)
        sw $t3, 4812($t0)
        sw $t3, 4816($t0)
        sw $t3, 4820($t0)
        sw $t3, 4904($t0)
        sw $t3, 4908($t0)
        sw $t3, 4928($t0)
        sw $t3, 4932($t0)
        sw $t3, 4936($t0)
        sw $t3, 4940($t0)
        sw $t3, 4952($t0)
        sw $t3, 4956($t0)
        sw $t3, 4984($t0)
        sw $t3, 4988($t0)
        sw $t3, 5000($t0)
        sw $t3, 5004($t0)
        sw $t3, 5016($t0)
        sw $t3, 5020($t0)
        sw $t3, 5032($t0)
        sw $t3, 5036($t0)
        sw $t3, 5048($t0)
        sw $t3, 5052($t0)
        sw $t3, 5056($t0)
        sw $t3, 5060($t0)
        sw $t3, 5064($t0)
        sw $t3, 5068($t0)
        sw $t3, 5072($t0)
        sw $t3, 5076($t0)
        sw $t3, 5160($t0)
        sw $t3, 5164($t0)
        sw $t3, 5192($t0)
        sw $t3, 5196($t0)
        sw $t3, 5208($t0)
        sw $t3, 5212($t0)
        sw $t3, 5216($t0)
        sw $t3, 5220($t0)
        sw $t3, 5224($t0)
        sw $t3, 5228($t0)
        sw $t3, 5232($t0)
        sw $t3, 5236($t0)
        sw $t3, 5240($t0)
        sw $t3, 5244($t0)
        sw $t3, 5256($t0)
        sw $t3, 5260($t0)
        sw $t3, 5288($t0)
        sw $t3, 5292($t0)
        sw $t3, 5304($t0)
        sw $t3, 5308($t0)
        sw $t3, 5416($t0)
        sw $t3, 5420($t0)
        sw $t3, 5448($t0)
        sw $t3, 5452($t0)
        sw $t3, 5464($t0)
        sw $t3, 5468($t0)
        sw $t3, 5472($t0)
        sw $t3, 5476($t0)
        sw $t3, 5480($t0)
        sw $t3, 5484($t0)
        sw $t3, 5488($t0)
        sw $t3, 5492($t0)
        sw $t3, 5496($t0)
        sw $t3, 5500($t0)
        sw $t3, 5512($t0)
        sw $t3, 5516($t0)
        sw $t3, 5544($t0)
        sw $t3, 5548($t0)
        sw $t3, 5560($t0)
        sw $t3, 5564($t0)
        sw $t3, 5680($t0)
        sw $t3, 5684($t0)
        sw $t3, 5688($t0)
        sw $t3, 5692($t0)
        sw $t3, 5696($t0)
        sw $t3, 5700($t0)
        sw $t3, 5720($t0)
        sw $t3, 5724($t0)
        sw $t3, 5752($t0)
        sw $t3, 5756($t0)
        sw $t3, 5768($t0)
        sw $t3, 5772($t0)
        sw $t3, 5800($t0)
        sw $t3, 5804($t0)
        sw $t3, 5816($t0)
        sw $t3, 5820($t0)
        sw $t3, 5824($t0)
        sw $t3, 5828($t0)
        sw $t3, 5832($t0)
        sw $t3, 5836($t0)
        sw $t3, 5840($t0)
        sw $t3, 5844($t0)
        sw $t3, 5936($t0)
        sw $t3, 5940($t0)
        sw $t3, 5944($t0)
        sw $t3, 5948($t0)
        sw $t3, 5952($t0)
        sw $t3, 5956($t0)
        sw $t3, 5976($t0)
        sw $t3, 5980($t0)
        sw $t3, 6008($t0)
        sw $t3, 6012($t0)
        sw $t3, 6024($t0)
        sw $t3, 6028($t0)
        sw $t3, 6056($t0)
        sw $t3, 6060($t0)
        sw $t3, 6072($t0)
        sw $t3, 6076($t0)
        sw $t3, 6080($t0)
        sw $t3, 6084($t0)
        sw $t3, 6088($t0)
        sw $t3, 6092($t0)
        sw $t3, 6096($t0)
        sw $t3, 6100($t0)
        sw $t3, 6704($t0)
        sw $t3, 6708($t0)
        sw $t3, 6712($t0)
        sw $t3, 6716($t0)
        sw $t3, 6720($t0)
        sw $t3, 6724($t0)
        sw $t3, 6744($t0)
        sw $t3, 6748($t0)
        sw $t3, 6776($t0)
        sw $t3, 6780($t0)
        sw $t3, 6792($t0)
        sw $t3, 6796($t0)
        sw $t3, 6800($t0)
        sw $t3, 6804($t0)
        sw $t3, 6808($t0)
        sw $t3, 6812($t0)
        sw $t3, 6816($t0)
        sw $t3, 6820($t0)
        sw $t3, 6832($t0)
        sw $t3, 6836($t0)
        sw $t3, 6840($t0)
        sw $t3, 6844($t0)
        sw $t3, 6848($t0)
        sw $t3, 6852($t0)
        sw $t3, 6856($t0)
        sw $t3, 6860($t0)
        sw $t3, 6960($t0)
        sw $t3, 6964($t0)
        sw $t3, 6968($t0)
        sw $t3, 6972($t0)
        sw $t3, 6976($t0)
        sw $t3, 6980($t0)
        sw $t3, 7000($t0)
        sw $t3, 7004($t0)
        sw $t3, 7032($t0)
        sw $t3, 7036($t0)
        sw $t3, 7048($t0)
        sw $t3, 7052($t0)
        sw $t3, 7056($t0)
        sw $t3, 7060($t0)
        sw $t3, 7064($t0)
        sw $t3, 7068($t0)
        sw $t3, 7072($t0)
        sw $t3, 7076($t0)
        sw $t3, 7088($t0)
        sw $t3, 7092($t0)
        sw $t3, 7096($t0)
        sw $t3, 7100($t0)
        sw $t3, 7104($t0)
        sw $t3, 7108($t0)
        sw $t3, 7112($t0)
        sw $t3, 7116($t0)
        sw $t3, 7208($t0)
        sw $t3, 7212($t0)
        sw $t3, 7240($t0)
        sw $t3, 7244($t0)
        sw $t3, 7256($t0)
        sw $t3, 7260($t0)
        sw $t3, 7288($t0)
        sw $t3, 7292($t0)
        sw $t3, 7304($t0)
        sw $t3, 7308($t0)
        sw $t3, 7344($t0)
        sw $t3, 7348($t0)
        sw $t3, 7376($t0)
        sw $t3, 7380($t0)
        sw $t3, 7464($t0)
        sw $t3, 7468($t0)
        sw $t3, 7496($t0)
        sw $t3, 7500($t0)
        sw $t3, 7512($t0)
        sw $t3, 7516($t0)
        sw $t3, 7544($t0)
        sw $t3, 7548($t0)
        sw $t3, 7560($t0)
        sw $t3, 7564($t0)
        sw $t3, 7600($t0)
        sw $t3, 7604($t0)
        sw $t3, 7632($t0)
        sw $t3, 7636($t0)
        sw $t3, 7720($t0)
        sw $t3, 7724($t0)
        sw $t3, 7752($t0)
        sw $t3, 7756($t0)
        sw $t3, 7768($t0)
        sw $t3, 7772($t0)
        sw $t3, 7800($t0)
        sw $t3, 7804($t0)
        sw $t3, 7816($t0)
        sw $t3, 7820($t0)
        sw $t3, 7824($t0)
        sw $t3, 7828($t0)
        sw $t3, 7832($t0)
        sw $t3, 7836($t0)
        sw $t3, 7840($t0)
        sw $t3, 7844($t0)
        sw $t3, 7856($t0)
        sw $t3, 7860($t0)
        sw $t3, 7888($t0)
        sw $t3, 7892($t0)
        sw $t3, 7976($t0)
        sw $t3, 7980($t0)
        sw $t3, 8008($t0)
        sw $t3, 8012($t0)
        sw $t3, 8024($t0)
        sw $t3, 8028($t0)
        sw $t3, 8056($t0)
        sw $t3, 8060($t0)
        sw $t3, 8072($t0)
        sw $t3, 8076($t0)
        sw $t3, 8080($t0)
        sw $t3, 8084($t0)
        sw $t3, 8088($t0)
        sw $t3, 8092($t0)
        sw $t3, 8096($t0)
        sw $t3, 8100($t0)
        sw $t3, 8112($t0)
        sw $t3, 8116($t0)
        sw $t3, 8144($t0)
        sw $t3, 8148($t0)
        sw $t3, 8232($t0)
        sw $t3, 8236($t0)
        sw $t3, 8264($t0)
        sw $t3, 8268($t0)
        sw $t3, 8288($t0)
        sw $t3, 8292($t0)
        sw $t3, 8304($t0)
        sw $t3, 8308($t0)
        sw $t3, 8328($t0)
        sw $t3, 8332($t0)
        sw $t3, 8368($t0)
        sw $t3, 8372($t0)
        sw $t3, 8376($t0)
        sw $t3, 8380($t0)
        sw $t3, 8384($t0)
        sw $t3, 8388($t0)
        sw $t3, 8392($t0)
        sw $t3, 8396($t0)
        sw $t3, 8488($t0)
        sw $t3, 8492($t0)
        sw $t3, 8520($t0)
        sw $t3, 8524($t0)
        sw $t3, 8544($t0)
        sw $t3, 8548($t0)
        sw $t3, 8560($t0)
        sw $t3, 8564($t0)
        sw $t3, 8584($t0)
        sw $t3, 8588($t0)
        sw $t3, 8624($t0)
        sw $t3, 8628($t0)
        sw $t3, 8632($t0)
        sw $t3, 8636($t0)
        sw $t3, 8640($t0)
        sw $t3, 8644($t0)
        sw $t3, 8648($t0)
        sw $t3, 8652($t0)
        sw $t3, 8752($t0)
        sw $t3, 8756($t0)
        sw $t3, 8760($t0)
        sw $t3, 8764($t0)
        sw $t3, 8768($t0)
        sw $t3, 8772($t0)
        sw $t3, 8808($t0)
        sw $t3, 8812($t0)
        sw $t3, 8840($t0)
        sw $t3, 8844($t0)
        sw $t3, 8848($t0)
        sw $t3, 8852($t0)
        sw $t3, 8856($t0)
        sw $t3, 8860($t0)
        sw $t3, 8864($t0)
        sw $t3, 8868($t0)
        sw $t3, 8880($t0)
        sw $t3, 8884($t0)
        sw $t3, 8912($t0)
        sw $t3, 8916($t0)
        sw $t3, 9008($t0)
        sw $t3, 9012($t0)
        sw $t3, 9016($t0)
        sw $t3, 9020($t0)
        sw $t3, 9024($t0)
        sw $t3, 9028($t0)
        sw $t3, 9064($t0)
        sw $t3, 9068($t0)
        sw $t3, 9096($t0)
        sw $t3, 9100($t0)
        sw $t3, 9104($t0)
        sw $t3, 9108($t0)
        sw $t3, 9112($t0)
        sw $t3, 9116($t0)
        sw $t3, 9120($t0)
        sw $t3, 9124($t0)
        sw $t3, 9136($t0)
        sw $t3, 9140($t0)
        sw $t3, 9168($t0)
        sw $t3, 9172($t0)
        sw $t4, 10292($t0)
        sw $t4, 10296($t0)
        sw $t4, 10300($t0)
        sw $t4, 10304($t0)
        sw $t4, 10308($t0)
        sw $t4, 10312($t0)
        sw $t4, 10316($t0)
        sw $t4, 10320($t0)
        sw $t4, 10548($t0)
        sw $t2, 10552($t0)
        sw $t2, 10556($t0)
        sw $t2, 10560($t0)
        sw $t2, 10564($t0)
        sw $t2, 10568($t0)
        sw $t2, 10572($t0)
        sw $t4, 10576($t0)
        sw $t2, 10592($t0)
        sw $t2, 10596($t0)
        sw $t2, 10608($t0)
        sw $t2, 10612($t0)
        sw $t2, 10616($t0)
        sw $t2, 10624($t0)
        sw $t2, 10628($t0)
        sw $t2, 10632($t0)
        sw $t2, 10640($t0)
        sw $t2, 10644($t0)
        sw $t2, 10648($t0)
        sw $t2, 10660($t0)
        sw $t2, 10672($t0)
        sw $t2, 10676($t0)
        sw $t2, 10688($t0)
        sw $t2, 10692($t0)
        sw $t2, 10696($t0)
        sw $t4, 10804($t0)
        sw $t2, 10808($t0)
        sw $t1, 10812($t0)
        sw $t1, 10816($t0)
        sw $t1, 10820($t0)
        sw $t2, 10824($t0)
        sw $t2, 10828($t0)
        sw $t4, 10832($t0)
        sw $t2, 10848($t0)
        sw $t2, 10856($t0)
        sw $t2, 10864($t0)
        sw $t2, 10880($t0)
        sw $t2, 10900($t0)
        sw $t2, 10912($t0)
        sw $t2, 10920($t0)
        sw $t2, 10928($t0)
        sw $t2, 10936($t0)
        sw $t2, 10948($t0)
        sw $t4, 11060($t0)
        sw $t2, 11064($t0)
        sw $t1, 11068($t0)
        sw $t2, 11072($t0)
        sw $t2, 11076($t0)
        sw $t1, 11080($t0)
        sw $t2, 11084($t0)
        sw $t4, 11088($t0)
        sw $t2, 11104($t0)
        sw $t2, 11112($t0)
        sw $t2, 11120($t0)
        sw $t2, 11124($t0)
        sw $t2, 11136($t0)
        sw $t2, 11140($t0)
        sw $t2, 11144($t0)
        sw $t2, 11156($t0)
        sw $t2, 11168($t0)
        sw $t2, 11176($t0)
        sw $t2, 11184($t0)
        sw $t2, 11192($t0)
        sw $t2, 11204($t0)
        sw $t4, 11316($t0)
        sw $t2, 11320($t0)
        sw $t1, 11324($t0)
        sw $t1, 11328($t0)
        sw $t1, 11332($t0)
        sw $t2, 11336($t0)
        sw $t2, 11340($t0)
        sw $t4, 11344($t0)
        sw $t2, 11360($t0)
        sw $t2, 11364($t0)
        sw $t2, 11376($t0)
        sw $t2, 11400($t0)
        sw $t2, 11412($t0)
        sw $t2, 11424($t0)
        sw $t2, 11428($t0)
        sw $t2, 11432($t0)
        sw $t2, 11440($t0)
        sw $t2, 11444($t0)
        sw $t2, 11460($t0)
        sw $t4, 11572($t0)
        sw $t2, 11576($t0)
        sw $t1, 11580($t0)
        sw $t2, 11584($t0)
        sw $t2, 11588($t0)
        sw $t2, 11592($t0)
        sw $t2, 11596($t0)
        sw $t4, 11600($t0)
        sw $t2, 11616($t0)
        sw $t2, 11624($t0)
        sw $t2, 11632($t0)
        sw $t2, 11636($t0)
        sw $t2, 11640($t0)
        sw $t2, 11648($t0)
        sw $t2, 11652($t0)
        sw $t2, 11656($t0)
        sw $t2, 11668($t0)
        sw $t2, 11680($t0)
        sw $t2, 11688($t0)
        sw $t2, 11696($t0)
        sw $t2, 11704($t0)
        sw $t2, 11716($t0)
        sw $t4, 11828($t0)
        sw $t2, 11832($t0)
        sw $t2, 11836($t0)
        sw $t2, 11840($t0)
        sw $t2, 11844($t0)
        sw $t2, 11848($t0)
        sw $t2, 11852($t0)
        sw $t4, 11856($t0)
        sw $t4, 12084($t0)
        sw $t4, 12088($t0)
        sw $t4, 12092($t0)
        sw $t4, 12096($t0)
        sw $t4, 12100($t0)
        sw $t4, 12104($t0)
        sw $t4, 12108($t0)
        sw $t4, 12112($t0)

LOOP_GAME_OVER:
	li $t9, 0xffff0000 			# read keyboard
	lw $t8, 0($t9)
	bne $t8, 1, LOOP_GAME_OVER
	
	lw $t2, 4($t9) 				# load char into $t2
	beq $t2, 0x70, main			# ASCII code of 'p' is 0x70
	
	j LOOP_GAME_OVER
	
DISPLAY_MARIO_RIGHT:
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0x0000ff 			# $t2 stores the blue colour code
	li $t3, 0xfeb280 			# $t3 stores the skin colour code
	li $t4, 0x2a1001 			# $t4 stores the brown colour code
	li $t5, 0x5b93fb 			# $t5 stores the background colour code
	
	sw $t5, 0($s0)				# draw hat
	sw $t1, 4($s0)                             
        sw $t1, 8($s0)
        sw $t5, 12($s0)
        sw $t5, 16($s0)

        sw $t1, 256($s0)
        sw $t1, 260($s0)
        sw $t1, 264($s0)
        sw $t1, 268($s0)
        sw $t1, 272($s0)

        sw $t4, 512($s0)                        # draw face/hair
        sw $t3, 516($s0)
        sw $t4, 520($s0)
        sw $t3, 524($s0)
        sw $t5, 528($s0)

        sw $t4, 768($s0)
        sw $t3, 772($s0)
        sw $t3, 776($s0)
        sw $t3, 780($s0)
        sw $t3, 784($s0)

	sw $t5, 1024($s0)
        sw $t3, 1028($s0)
        sw $t4, 1032($s0)
        sw $t4, 1036($s0)
        sw $t5, 1040($s0)

        sw $t2, 1280($s0)                       # draw body
        sw $t1, 1284($s0)
        sw $t2, 1288($s0)
        sw $t1, 1292($s0)
        sw $t2, 1296($s0)

        sw $t2, 1536($s0)
        sw $t1, 1540($s0)
        sw $t2, 1544($s0)
        sw $t1, 1548($s0)
        sw $t2, 1552($s0)

        sw $t3, 1792($s0)
        sw $t1, 1796($s0)
        sw $t1, 1800($s0)
        sw $t1, 1804($s0)
        sw $t3, 1808($s0)

        sw $t1, 2048($s0)                       # draw legs
        sw $t1, 2052($s0)
        sw $t1, 2056($s0)
        sw $t1, 2060($s0)
        sw $t1, 2064($s0)

        sw $t4, 2304($s0)
        sw $t4, 2308($s0)
        sw $t5, 2312($s0)
        sw $t4, 2316($s0)
        sw $t4, 2320($s0)
	
	jr $ra
	
DISPLAY_MARIO_RIGHT_WALK:
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0x0000ff 			# $t2 stores the blue colour code
	li $t3, 0xfeb280 			# $t3 stores the skin colour code
	li $t4, 0x2a1001 			# $t4 stores the brown colour code
	li $t5, 0x5b93fb 			# $t5 stores the background colour code

	sw $t5, 16($s0)				# draw hat
	sw $t5, 12($s0)                              
        sw $t1, 8($s0)
        sw $t1, 4($s0)
        sw $t5, 0($s0)

        sw $t1, 272($s0)
        sw $t1, 268($s0)
        sw $t1, 264($s0)
        sw $t1, 260($s0)
        sw $t1, 256($s0)

        sw $t5, 528($s0)                        # draw face/hair
        sw $t3, 524($s0)
        sw $t4, 520($s0)
        sw $t3, 516($s0)
        sw $t4, 512($s0)

        sw $t3, 784($s0)
        sw $t3, 780($s0)
        sw $t3, 776($s0)
        sw $t3, 772($s0)
        sw $t4, 768($s0)


	sw $t4, 1036($s0)
        sw $t4, 1032($s0)
        sw $t3, 1028($s0)
        sw $t5, 1024($s0)
        sw $t5, 1020($s0)

        sw $t5, 1296($s0)                       # draw body
        sw $t2, 1292($s0)
        sw $t1, 1288($s0)
        sw $t1, 1284($s0)
        sw $t2, 1280($s0)

        sw $t2, 1552($s0)
        sw $t1, 1548($s0)
        sw $t1, 1544($s0)
        sw $t3, 1540($s0)
        sw $t2, 1536($s0)

        sw $t3, 1808($s0)
        sw $t1, 1804($s0)
        sw $t1, 1800($s0)
        sw $t1, 1796($s0)
        sw $t1, 1792($s0)
	
        sw $t5, 2064($s0)                       # draw legs
        sw $t1, 2060($s0)
        sw $t5, 2056($s0)
        sw $t1, 2052($s0)
        sw $t5, 2048($s0)

        sw $t4, 2320($s0)
        sw $t4, 2316($s0)
        sw $t5, 2312($s0)
        sw $t4, 2308($s0)
        sw $t5, 2304($s0)
	
	jr $ra
	
	
DISPLAY_MARIO_LEFT:
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0x0000ff 			# $t2 stores the blue colour code
	li $t3, 0xfeb280 			# $t3 stores the skin colour code
	li $t4, 0x2a1001 			# $t4 stores the brown colour code
	li $t5, 0x5b93fb 			# $t5 stores the background colour code
	
	sw $t5, 16($s0)				# draw hat
	sw $t1, 12($s0)                              
        sw $t1, 8($s0)
        sw $t5, 4($s0)
        sw $t5, 0($s0)

        sw $t1, 272($s0)
        sw $t1, 268($s0)
        sw $t1, 264($s0)
        sw $t1, 260($s0)
        sw $t1, 256($s0)

        sw $t4, 528($s0)                        # draw face/hair
        sw $t3, 524($s0)
        sw $t4, 520($s0)
        sw $t3, 516($s0)
        sw $t5, 512($s0)

        sw $t4, 784($s0)
        sw $t3, 780($s0)
        sw $t3, 776($s0)
        sw $t3, 772($s0)
        sw $t3, 768($s0)

	sw $t5, 1040($s0)
        sw $t3, 1036($s0)
        sw $t4, 1032($s0)
        sw $t4, 1028($s0)
        sw $t5, 1024($s0)

        sw $t2, 1296($s0)                       # draw body
        sw $t1, 1292($s0)
        sw $t2, 1288($s0)
        sw $t1, 1284($s0)
        sw $t2, 1280($s0)

        sw $t2, 1552($s0)
        sw $t1, 1548($s0)
        sw $t2, 1544($s0)
        sw $t1, 1540($s0)
        sw $t2, 1536($s0)

        sw $t3, 1808($s0)
        sw $t1, 1804($s0)
        sw $t1, 1800($s0)
        sw $t1, 1796($s0)
        sw $t3, 1792($s0)

        sw $t1, 2064($s0)                       # draw legs
        sw $t1, 2060($s0)
        sw $t1, 2056($s0)
        sw $t1, 2052($s0)
        sw $t1, 2048($s0)

        sw $t4, 2320($s0)
        sw $t4, 2316($s0)
        sw $t5, 2312($s0)
        sw $t4, 2308($s0)
        sw $t4, 2304($s0)
        
        jr $ra
        
DISPLAY_MARIO_LEFT_WALK:
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0x0000ff 			# $t2 stores the blue colour code
	li $t3, 0xfeb280 			# $t3 stores the skin colour code
	li $t4, 0x2a1001 			# $t4 stores the brown colour code
	li $t5, 0x5b93fb 			# $t5 stores the background colour code
	
	sw $t5, 16($s0)				# draw hat
	sw $t1, 12($s0)                              
        sw $t1, 8($s0)
        sw $t5, 4($s0)
        sw $t5, 0($s0)

        sw $t1, 272($s0)
        sw $t1, 268($s0)
        sw $t1, 264($s0)
        sw $t1, 260($s0)
        sw $t1, 256($s0)

        sw $t4, 528($s0)                        # draw face/hair
        sw $t3, 524($s0)
        sw $t4, 520($s0)
        sw $t3, 516($s0)
        sw $t5, 512($s0)

        sw $t4, 784($s0)
        sw $t3, 780($s0)
        sw $t3, 776($s0)
        sw $t3, 772($s0)
        sw $t3, 768($s0)

	sw $t5, 1044($s0)
	sw $t5, 1040($s0)
        sw $t3, 1036($s0)
        sw $t4, 1032($s0)
        sw $t4, 1028($s0)

        sw $t2, 1296($s0)                       # draw body
        sw $t1, 1292($s0)
        sw $t1, 1288($s0)
        sw $t2, 1284($s0)
        sw $t5, 1280($s0)

        sw $t2, 1552($s0)
        sw $t3, 1548($s0)
        sw $t1, 1544($s0)
        sw $t1, 1540($s0)
        sw $t2, 1536($s0)

        sw $t1, 1808($s0)
        sw $t1, 1804($s0)
        sw $t1, 1800($s0)
        sw $t1, 1796($s0)
        sw $t3, 1792($s0)
	
        sw $t5, 2064($s0)                       # draw legs
        sw $t1, 2060($s0)
        sw $t5, 2056($s0)
        sw $t1, 2052($s0)
        sw $t5, 2048($s0)

        sw $t5, 2320($s0)
        sw $t4, 2316($s0)
        sw $t5, 2312($s0)
        sw $t4, 2308($s0)
        sw $t4, 2304($s0)
        
        jr $ra
        
DISPLAY_MARIO_DEAD:
	li $t1, 0xff0000 			# $t1 stores the red colour code
	li $t2, 0xAA1B1B 			# $t2 stores the dark red colour code
	li $t3, 0xD10303 			# $t3 stores the medium red colour code
	li $t4, 0xE6AD67 			# $t4 stores the hand colour code
	li $t5, 0xffd9ab 			# $t5 stores the face colour code
	li $t6, 0x032AAF			# $t6 stores the dark blue colour code
	li $t7, 0x003AFF			# $t7 stores the blue colour code
	li $t8, 0x2a1001 			# $t8 stores the brown colour code
	li $t9, 0x5b93fb 			# $t9 stores the background colour code
	
	sw $t9, 0($s0)
	sw $t9, 4($s0)
	sw $t1, 8($s0)
	sw $t1, 12($s0)
	sw $t9, 16($s0)
	
	sw $t9, 256($s0)
	sw $t1, 260($s0)
	sw $t1, 264($s0)
	sw $t1, 268($s0)
	sw $t1, 272($s0)
	
	sw $t1, 512($s0)
	sw $t1, 516($s0)
	sw $t5, 520($s0)
	sw $t4, 524($s0)
	sw $t8, 528($s0)
	
	sw $t9, 768($s0)
	sw $t4, 772($s0)
	sw $t4, 776($s0)
	sw $t4, 780($s0)
	sw $t9, 784($s0)
	
	sw $t5, 1024($s0)
	sw $t9, 1028($s0)
	sw $t4, 1032($s0)
	sw $t4, 1036($s0)
	sw $t5, 1040($s0)
	
	sw $t4, 1280($s0)
	sw $t7, 1284($s0)
	sw $t1, 1288($s0)
	sw $t7, 1292($s0)
	sw $t4, 1296($s0)
	
	sw $t7, 1536($s0)
	sw $t6, 1540($s0)
	sw $t3, 1544($s0)
	sw $t6, 1548($s0)
	sw $t7, 1552($s0)
	
	sw $t9, 1792($s0)
	sw $t3, 1796($s0)
	sw $t1, 1800($s0)
	sw $t3, 1804($s0)
	sw $t9, 1808($s0)
	
	sw $t8, 2048($s0)
	sw $t1, 2052($s0)
	sw $t3, 2056($s0)
	sw $t1, 2060($s0)
	sw $t8, 2064($s0)
	
	sw $t8, 2304($s0)
	sw $t3, 2308($s0)
	sw $t9, 2312($s0)
	sw $t3, 2316($s0)
	sw $t8, 2320($s0)
        
        jr $ra
     
RENDER_CLOUDS:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0xFFFFFF			# $t1 stores the white color for cloud
	li $t2, 0xcecece			# $t1 stores the gray color for cloud
	
	sw $t1, 2588($t0)
	
	sw $t1, 2836($t0)
	sw $t1, 2840($t0)
	sw $t2, 2844($t0)
	sw $t1, 2848($t0)
	sw $t1, 2856($t0)
	
	sw $t1, 3088($t0)
	sw $t1, 3092($t0)
	sw $t2, 3096($t0)
	sw $t2, 3100($t0)
	sw $t1, 3104($t0)
	sw $t1, 3108($t0)
	sw $t1, 3112($t0)
	sw $t1, 3116($t0)
	
	sw $t1, 3348($t0)
	sw $t1, 3352($t0)
	sw $t1, 3356($t0)
	sw $t1, 3360($t0)
	sw $t2, 3364($t0)
	sw $t1, 3368($t0)
	sw $t1, 3372($t0)
	sw $t1, 3376($t0)
	
	sw $t1, 3608($t0)
	sw $t2, 3612($t0)
	sw $t2, 3616($t0)
	sw $t2, 3620($t0)
	sw $t1, 3624($t0)
	sw $t1, 3628($t0)
	
	sw $t2, 3868($t0)
	sw $t1, 3876($t0)
	sw $t2, 3880($t0)
	
	
	
	sw $t1, 3164($t0)

        sw $t1, 3412($t0)
        sw $t1, 3416($t0)
        sw $t2, 3420($t0)
        sw $t1, 3424($t0)
        sw $t1, 3432($t0)

        sw $t1, 3664($t0)
        sw $t1, 3668($t0)
        sw $t2, 3672($t0)
        sw $t2, 3676($t0)
        sw $t1, 3680($t0)
        sw $t1, 3684($t0)
        sw $t1, 3688($t0)
        sw $t1, 3692($t0)

        sw $t1, 3924($t0)
        sw $t1, 3928($t0)
        sw $t1, 3932($t0)
        sw $t1, 3936($t0)
        sw $t2, 3940($t0)
        sw $t1, 3944($t0)
        sw $t1, 3948($t0)
        sw $t1, 3952($t0)

        sw $t1, 4184($t0)
        sw $t2, 4188($t0)
        sw $t2, 4192($t0)
        sw $t2, 4196($t0)
        sw $t1, 4200($t0)
        sw $t1, 4204($t0)

        sw $t2, 4444($t0)
        sw $t1, 4452($t0)
        sw $t2, 4456($t0)
        sw $t1, 2912($t0)

        sw $t1, 3160($t0)
        sw $t1, 3164($t0)
        sw $t2, 3168($t0)
        sw $t1, 3172($t0)
        sw $t1, 3180($t0)

        sw $t1, 3412($t0)
        sw $t1, 3416($t0)
        sw $t2, 3420($t0)
        sw $t2, 3424($t0)
        sw $t1, 3428($t0)
        sw $t1, 3432($t0)
        sw $t1, 3436($t0)
        sw $t1, 3440($t0)

        sw $t1, 3672($t0)
        sw $t1, 3676($t0)
        sw $t1, 3680($t0)
        sw $t1, 3684($t0)
        sw $t2, 3688($t0)
        sw $t1, 3692($t0)
        sw $t1, 3696($t0)
        sw $t1, 3700($t0)

        sw $t1, 3932($t0)
        sw $t2, 3936($t0)
        sw $t2, 3940($t0)
        sw $t2, 3944($t0)
        sw $t1, 3948($t0)
        sw $t1, 3952($t0)

        sw $t2, 4192($t0)
        sw $t1, 4200($t0)
        sw $t2, 4204($t0)
        
        
        
        
        sw $t1, 4012($t0)

        sw $t1, 4260($t0)
        sw $t1, 4264($t0)
        sw $t2, 4268($t0)
        sw $t1, 4272($t0)
        sw $t1, 4280($t0)

        sw $t1, 4512($t0)
        sw $t1, 4516($t0)
        sw $t2, 4520($t0)
        sw $t2, 4524($t0)
        sw $t1, 4528($t0)
        sw $t1, 4532($t0)
        sw $t1, 4536($t0)
        sw $t1, 4540($t0)

        sw $t1, 4772($t0)
        sw $t1, 4776($t0)
        sw $t1, 4780($t0)
        sw $t1, 4784($t0)
        sw $t2, 4788($t0)
        sw $t1, 4792($t0)
        sw $t1, 4796($t0)
        sw $t1, 4800($t0)

        sw $t1, 5032($t0)
        sw $t2, 5036($t0)
        sw $t2, 5040($t0)
        sw $t2, 5044($t0)
        sw $t1, 5048($t0)
        sw $t1, 5052($t0)

        sw $t2, 5292($t0)
        sw $t1, 5300($t0)
        sw $t2, 5304($t0)
        
        
        sw $t1, 3744($t0)

        sw $t1, 3992($t0)
        sw $t1, 3996($t0)
        sw $t2, 4000($t0)
        sw $t1, 4004($t0)
        sw $t1, 4012($t0)

        sw $t1, 4244($t0)
        sw $t1, 4248($t0)
        sw $t2, 4252($t0)
        sw $t2, 4256($t0)
        sw $t1, 4260($t0)
        sw $t1, 4264($t0)
        sw $t1, 4268($t0)
        sw $t1, 4272($t0)

        sw $t1, 4504($t0)
        sw $t1, 4508($t0)
        sw $t1, 4512($t0)
        sw $t1, 4516($t0)
        sw $t2, 4520($t0)
        sw $t1, 4524($t0)
        sw $t1, 4528($t0)
        sw $t1, 4532($t0)

        sw $t1, 4764($t0)
        sw $t2, 4768($t0)
        sw $t2, 4772($t0)
        sw $t2, 4776($t0)
        sw $t1, 4780($t0)
        sw $t1, 4784($t0)

        sw $t2, 5024($t0)
        sw $t1, 5032($t0)
        sw $t2, 5036($t0)
        
        
        sw $t1, 2780($t0)

        sw $t1, 3028($t0)
        sw $t1, 3032($t0)
        sw $t2, 3036($t0)
        sw $t1, 3040($t0)
        sw $t1, 3048($t0)

        sw $t1, 3280($t0)
        sw $t1, 3284($t0)
        sw $t2, 3288($t0)
        sw $t2, 3292($t0)
        sw $t1, 3296($t0)
        sw $t1, 3300($t0)
        sw $t1, 3304($t0)
        sw $t1, 3308($t0)

        sw $t1, 3540($t0)
        sw $t1, 3544($t0)
        sw $t1, 3548($t0)
        sw $t1, 3552($t0)
        sw $t2, 3556($t0)
        sw $t1, 3560($t0)
        sw $t1, 3564($t0)
        sw $t1, 3568($t0)

        sw $t1, 3800($t0)
        sw $t2, 3804($t0)
        sw $t2, 3808($t0)
        sw $t2, 3812($t0)
        sw $t1, 3816($t0)
        sw $t1, 3820($t0)

        sw $t2, 4060($t0)
        sw $t1, 4068($t0)
        sw $t2, 4072($t0)
        
        jr $ra   
        
RENDER_PLATFORM1:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0xef9801			# $t1 stores the main color for block
	li $t2, 0x6a1109			# $t2 stores the outer color for block
	li $t3, 0xde8d01			# $t3 stores the intermediate color for block
	
	# block 1
	sw $t2, 10268($t0)
        sw $t2, 10272($t0)
        sw $t2, 10276($t0)
        sw $t2, 10280($t0)

        sw $t2, 10520($t0)
        sw $t3, 10524($t0)
        sw $t3, 10528($t0)
        sw $t3, 10532($t0)
        sw $t3, 10536($t0)
        sw $t2, 10540($t0)

        sw $t2, 10776($t0)
        sw $t3, 10780($t0)
        sw $t1, 10784($t0)
        sw $t1, 10788($t0)
        sw $t3, 10792($t0)
        sw $t2, 10796($t0)

        sw $t2, 11032($t0)
        sw $t3, 11036($t0)
        sw $t1, 11040($t0)
        sw $t1, 11044($t0)
        sw $t3, 11048($t0)
        sw $t2, 11052($t0)
        
        sw $t2, 11288($t0)
        sw $t3, 11292($t0)
        sw $t3, 11296($t0)
        sw $t3, 11300($t0)
        sw $t3, 11304($t0)
        sw $t2, 11308($t0)

       	sw $t2, 11548($t0)
        sw $t2, 11552($t0)
        sw $t2, 11556($t0)
        sw $t2, 11560($t0)
        
        # block 2
        sw $t2, 10284($t0)
        sw $t2, 10288($t0)
        sw $t2, 10292($t0)
        sw $t2, 10296($t0)
        sw $t2, 10300($t0)
        sw $t2, 10304($t0)

        sw $t2, 10540($t0)
        sw $t3, 10544($t0)
        sw $t3, 10548($t0)
        sw $t3, 10552($t0)
        sw $t3, 10556($t0)
        sw $t2, 10560($t0)

        sw $t2, 10796($t0)
        sw $t3, 10800($t0)
        sw $t1, 10804($t0)
        sw $t1, 10808($t0)
        sw $t3, 10812($t0)
        sw $t2, 10816($t0)

        sw $t2, 11052($t0)
        sw $t3, 11056($t0)
        sw $t1, 11060($t0)
        sw $t1, 11064($t0)
        sw $t3, 11068($t0)
        sw $t2, 11072($t0)

        sw $t2, 11308($t0)
        sw $t3, 11312($t0)
        sw $t3, 11316($t0)
        sw $t3, 11320($t0)
        sw $t3, 11324($t0)
        sw $t2, 11328($t0)

	sw $t2, 11564($t0)
        sw $t2, 11568($t0)
        sw $t2, 11572($t0)
        sw $t2, 11576($t0)
        sw $t2, 11580($t0)
        sw $t2, 11584($t0)
	
	
	# block 3
	sw $t2, 10304($t0)
        sw $t2, 10308($t0)
        sw $t2, 10312($t0)
        sw $t2, 10316($t0)
        sw $t2, 10320($t0)
        sw $t2, 10324($t0)

        sw $t2, 10560($t0)
        sw $t3, 10564($t0)
        sw $t3, 10568($t0)
        sw $t3, 10572($t0)
        sw $t3, 10576($t0)
        sw $t2, 10580($t0)

        sw $t2, 10816($t0)
        sw $t3, 10820($t0)
        sw $t1, 10824($t0)
        sw $t1, 10828($t0)
        sw $t3, 10832($t0)
        sw $t2, 10836($t0)

        sw $t2, 11072($t0)
        sw $t3, 11076($t0)
        sw $t1, 11080($t0)
        sw $t1, 11084($t0)
        sw $t3, 11088($t0)
        sw $t2, 11092($t0)

        sw $t2, 11328($t0)
        sw $t3, 11332($t0)
        sw $t3, 11336($t0)
        sw $t3, 11340($t0)
        sw $t3, 11344($t0)
        sw $t2, 11348($t0)

        sw $t2, 11584($t0)
        sw $t2, 11588($t0)
        sw $t2, 11592($t0)
        sw $t2, 11596($t0)
        sw $t2, 11600($t0)
        sw $t2, 11604($t0)
        
        # block 4
        sw $t2, 10324($t0)
        sw $t2, 10328($t0)
        sw $t2, 10332($t0)
        sw $t2, 10336($t0)
        sw $t2, 10340($t0)

        sw $t2, 10580($t0)
        sw $t3, 10584($t0)
        sw $t3, 10588($t0)
        sw $t3, 10592($t0)
        sw $t3, 10596($t0)
        sw $t2, 10600($t0)

        sw $t2, 10836($t0)
        sw $t3, 10840($t0)
        sw $t1, 10844($t0)
        sw $t1, 10848($t0)
        sw $t3, 10852($t0)
        sw $t2, 10856($t0)

        sw $t2, 11092($t0)
        sw $t3, 11096($t0)
        sw $t1, 11100($t0)
        sw $t1, 11104($t0)
        sw $t3, 11108($t0)
        sw $t2, 11112($t0)

        sw $t2, 11348($t0)
        sw $t3, 11352($t0)
        sw $t3, 11356($t0)
        sw $t3, 11360($t0)
        sw $t3, 11364($t0)
        sw $t2, 11368($t0)

        sw $t2, 11604($t0)
        sw $t2, 11608($t0)
        sw $t2, 11612($t0)
        sw $t2, 11616($t0)
        sw $t2, 11620($t0)
	
	jr $ra
	
RENDER_PLATFORM2:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0xef9801			# $t1 stores the main color for block
	li $t2, 0x6a1109			# $t2 stores the outer color for block
	li $t3, 0xde8d01			# $t3 stores the intermediate color for block
	
	# block 1
	sw $t2, 8360($t0)
        sw $t2, 8364($t0)
        sw $t2, 8368($t0)
        sw $t2, 8372($t0)

        sw $t2, 8612($t0)
        sw $t3, 8616($t0)
        sw $t3, 8620($t0)
        sw $t3, 8624($t0)
        sw $t3, 8628($t0)
        sw $t2, 8632($t0)

        sw $t2, 8868($t0)
        sw $t3, 8872($t0)
        sw $t1, 8876($t0)
        sw $t1, 8880($t0)
        sw $t3, 8884($t0)
        sw $t2, 8888($t0)

        sw $t2, 9124($t0)
        sw $t3, 9128($t0)
        sw $t1, 9132($t0)
        sw $t1, 9136($t0)
        sw $t3, 9140($t0)
        sw $t2, 9144($t0)

        sw $t2, 9380($t0)
        sw $t3, 9384($t0)
        sw $t3, 9388($t0)
        sw $t3, 9392($t0)
        sw $t3, 9396($t0)
        sw $t2, 9400($t0)

        sw $t2, 9640($t0)
        sw $t2, 9644($t0)
        sw $t2, 9648($t0)
        sw $t2, 9652($t0)

        # block 2
        sw $t2, 8376($t0)
        sw $t2, 8380($t0)
        sw $t2, 8384($t0)
        sw $t2, 8388($t0)
        sw $t2, 8392($t0)
        sw $t2, 8396($t0)

        sw $t2, 8632($t0)
        sw $t3, 8636($t0)
        sw $t3, 8640($t0)
        sw $t3, 8644($t0)
        sw $t3, 8648($t0)
        sw $t2, 8652($t0)

        sw $t2, 8888($t0)
        sw $t3, 8892($t0)
        sw $t1, 8896($t0)
        sw $t1, 8900($t0)
        sw $t3, 8904($t0)
        sw $t2, 8908($t0)

        sw $t2, 9144($t0)
        sw $t3, 9148($t0)
        sw $t1, 9152($t0)
        sw $t1, 9156($t0)
        sw $t3, 9160($t0)
        sw $t2, 9164($t0)

        sw $t2, 9400($t0)
        sw $t3, 9404($t0)
        sw $t3, 9408($t0)
        sw $t3, 9412($t0)
        sw $t3, 9416($t0)
        sw $t2, 9420($t0)

        sw $t2, 9656($t0)
        sw $t2, 9660($t0)
        sw $t2, 9664($t0)
        sw $t2, 9668($t0)
        sw $t2, 9672($t0)
        sw $t2, 9676($t0)


        # block 3
        sw $t2, 8396($t0)
        sw $t2, 8400($t0)
        sw $t2, 8404($t0)
        sw $t2, 8408($t0)
        sw $t2, 8412($t0)
        sw $t2, 8652($t0)
        sw $t3, 8656($t0)
        sw $t3, 8660($t0)
        sw $t3, 8664($t0)
        sw $t3, 8668($t0)
        sw $t2, 8672($t0)

        sw $t2, 8908($t0)
        sw $t3, 8912($t0)
        sw $t1, 8916($t0)
        sw $t1, 8920($t0)
        sw $t3, 8924($t0)
        sw $t2, 8928($t0)

        sw $t2, 9164($t0)
        sw $t3, 9168($t0)
        sw $t1, 9172($t0)
        sw $t1, 9176($t0)
        sw $t3, 9180($t0)
        sw $t2, 9184($t0)

        sw $t2, 9420($t0)
        sw $t3, 9424($t0)
        sw $t3, 9428($t0)
        sw $t3, 9432($t0)
        sw $t3, 9436($t0)
        sw $t2, 9440($t0)

        sw $t2, 9676($t0)
        sw $t2, 9680($t0)
        sw $t2, 9684($t0)
        sw $t2, 9688($t0)
        sw $t2, 9692($t0)
      
	
	jr $ra
	
RENDER_COIN:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	la $t5, coinPosArray			# load coin pos address
	add $t5, $t5, $s7			# add current coin position index to find address of position
	lw $t5, 0($t5) 				# load coin position from index of array of positions
	add $t0, $t0, $t5			# add the coin position offset
	
	li $t1, 0xf8f800			# $t1 stores the main color for coin
	li $t2, 0xd89e36			# $t2 stores the outer color for coin
	li $t6, 0xf8d81e			# $t3 stores the intermediate color for coin
	
	sw $t2, 0($t0)
        sw $t2, 4($t0)
        sw $t2, 8($t0)

        sw $t2, 252($t0)
        sw $t6, 256($t0)
        sw $t1, 260($t0)
        sw $t6, 264($t0)
        sw $t2, 268($t0)

        sw $t2, 508($t0)
        sw $t6, 512($t0)
        sw $t1, 516($t0)
        sw $t6, 520($t0)
        sw $t2, 524($t0)
        
        sw $t2, 764($t0)
        sw $t6, 768($t0)
        sw $t1, 772($t0)
        sw $t6, 776($t0)
        sw $t2, 780($t0)


        sw $t2, 1024($t0)
        sw $t2, 1028($t0)
        sw $t2, 1032($t0)
        
        jr $ra
        
        
REMOVE_COIN:
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	la $t5, coinPosArray			# load coin pos address
	add $t5, $t5, $s7			# add current coin position index to find address of position
	lw $t5, 0($t5) 				# load coin position from index of array of positions
	add $t0, $t0, $t5			# add the coin position offset
	
	li $t1, 0x5b93fb			# $t1 stores the background color
	
	sw $t1, 0($t0)
        sw $t1, 4($t0)
        sw $t1, 8($t0)

        sw $t1, 252($t0)
        sw $t1, 256($t0)
        sw $t1, 260($t0)
        sw $t1, 264($t0)
        sw $t1, 268($t0)

        sw $t1, 508($t0)
        sw $t1, 512($t0)
        sw $t1, 516($t0)
        sw $t1, 520($t0)
        sw $t1, 524($t0)
        
        sw $t1, 764($t0)
        sw $t1, 768($t0)
        sw $t1, 772($t0)
        sw $t1, 776($t0)
        sw $t1, 780($t0)


        sw $t1, 1024($t0)
        sw $t1, 1028($t0)
        sw $t1, 1032($t0)
        
        jr $ra
        
RENDER_GOOMBA1:
	# $s3 stores the base address for display
	li $t1, 0xbf6f00			# $t1 stores the main color for goomba
	li $t2, 0xffc7b8			# $t2 stores the bottom color for goomba
	li $t3, 0x000000			# $t3 stores the black color for goomba
	li $t4, 0xab6300			# $t4 stores the darker main color for goomba
        li $t5, 0x5b93fb			# $t5 stores the background color
        
        sw $t5, 0($s3)
       	sw $t1, 4($s3)
        sw $t1, 8($s3)
        sw $t1, 12($s3)
        sw $t5, 16($s3)
        
        sw $t1, 256($s3)
        sw $t4, 260($s3)
        sw $t1, 264($s3)
        sw $t4, 268($s3)
        sw $t1, 272($s3)
        
        sw $t1, 512($s3)
        sw $t3, 516($s3)
        sw $t4, 520($s3)
        sw $t3, 524($s3)
        sw $t1, 528($s3)
        
        sw $t5, 768($s3)
        sw $t2, 772($s3)
        sw $t2, 776($s3)
        sw $t2, 780($s3)
        sw $t5, 784($s3)
        
        sw $t3, 1024($s3)
        sw $t3, 1028($s3)
        sw $t2, 1032($s3)
        sw $t3, 1036($s3)
        sw $t3, 1040($s3)
        
        jr $ra

RENDER_GOOMBA1_SQUISHED:
	# $s3 stores the base address for display
	li $t1, 0xbf6f00			# $t1 stores the main color for goomba
	li $t2, 0xffc7b8			# $t2 stores the bottom color for goomba
	li $t3, 0x000000			# $t3 stores the black color for goomba
	li $t4, 0xab6300			# $t4 stores the darker main color for goomba
        li $t5, 0x5b93fb			# $t5 stores the background color                
        
       	sw $t5, 0($s3)
	sw $t5, 4($s3)
	sw $t5, 8($s3)
	sw $t5, 12($s3)
	sw $t5, 16($s3)
	sw $t5, 256($s3)
	sw $t1, 260($s3)
	sw $t1, 264($s3)
	sw $t1, 268($s3)
	sw $t5, 272($s3)
	sw $t1, 512($s3)
	sw $t3, 516($s3)
	sw $t4, 520($s3)
	sw $t3, 524($s3)
	sw $t1, 528($s3)
	sw $t5, 768($s3)
	sw $t2, 772($s3)
	sw $t2, 776($s3)
	sw $t2, 780($s3)
	sw $t5, 784($s3)
	sw $t3, 1024($s3)
	sw $t3, 1028($s3)
	sw $t5, 1032($s3)
	sw $t3, 1036($s3)
	sw $t3, 1040($s3)
	
	jr $ra
	
RENDER_GOOMBA2:
	# $s5 stores the base address for display
	li $t1, 0xbf6f00			# $t1 stores the main color for goomba
	li $t2, 0xffc7b8			# $t2 stores the bottom color for goomba
	li $t3, 0x000000			# $t3 stores the black color for goomba
	li $t4, 0xab6300			# $t4 stores the darker main color for goomba
        li $t5, 0x5b93fb			# $t5 stores the background color
        
        sw $t5, 0($s5)
       	sw $t1, 4($s5)
        sw $t1, 8($s5)
        sw $t1, 12($s5)
        sw $t5, 16($s5)
        
        sw $t1, 256($s5)
        sw $t4, 260($s5)
        sw $t1, 264($s5)
        sw $t4, 268($s5)
        sw $t1, 272($s5)
        
        sw $t1, 512($s5)
        sw $t3, 516($s5)
        sw $t4, 520($s5)
        sw $t3, 524($s5)
        sw $t1, 528($s5)
        
        sw $t5, 768($s5)
        sw $t2, 772($s5)
        sw $t2, 776($s5)
        sw $t2, 780($s5)
        sw $t5, 784($s5)
        
        sw $t3, 1024($s5)
        sw $t3, 1028($s5)
        sw $t2, 1032($s5)
        sw $t3, 1036($s5)
        sw $t3, 1040($s5)
        
        jr $ra

RENDER_GOOMBA2_SQUISHED:
	# $s5 stores the base address for display
	li $t1, 0xbf6f00			# $t1 stores the main color for goomba
	li $t2, 0xffc7b8			# $t2 stores the bottom color for goomba
	li $t3, 0x000000			# $t3 stores the black color for goomba
	li $t4, 0xab6300			# $t4 stores the darker main color for goomba
        li $t5, 0x5b93fb			# $t5 stores the background color                
        
       	sw $t5, 0($s5)
	sw $t5, 4($s5)
	sw $t5, 8($s5)
	sw $t5, 12($s5)
	sw $t5, 16($s5)
	sw $t5, 256($s5)
	sw $t1, 260($s5)
	sw $t1, 264($s5)
	sw $t1, 268($s5)
	sw $t5, 272($s5)
	sw $t1, 512($s5)
	sw $t3, 516($s5)
	sw $t4, 520($s5)
	sw $t3, 524($s5)
	sw $t1, 528($s5)
	sw $t5, 768($s5)
	sw $t2, 772($s5)
	sw $t2, 776($s5)
	sw $t2, 780($s5)
	sw $t5, 784($s5)
	sw $t3, 1024($s5)
	sw $t3, 1028($s5)
	sw $t5, 1032($s5)
	sw $t3, 1036($s5)
	sw $t3, 1040($s5)
	
	jr $ra
                    
main:
	jal CLEAR_SCREEN
	li $s0, BASE_ADDRESS 		# $s0 represents top-left position of mario, mario is 5x10 units
	addi $s0, $s0, 12000
	li $s1, 0x00010000		# $s1 represents player status booleans, collision bits 0:down, 1:up, 2:left, 3:right, stepping bit 4, direction bit 5 (0=right, 1=left), dead bit 6, jumping bit 7
	li $s2, -10			# $s2 represents vertical velocity
	sw $zero, playerScore		# set playerScore to 0 when starting game
	
	li $s3, 8992			# $s3 represents initial goomba1 position, goomba is 5x5 units
	li $s4, 0x00			# $s4 represents goomba1 status, bit 0 is dead, bit 1 is direction (0=right, 1=left)
	addi $s3, $s3, BASE_ADDRESS
	
	li $s5, 7080			# $s5 represents initial goomba2 position, goomba is 5x5 units
	li $s6, 0x00			# $s6 represents goomba2 status, bit 0 is dead, bit 1 is direction (0=right, 1=left)
	addi $s5, $s5, BASE_ADDRESS
	
	li $s7, 0			# $s7 represents coin position index in coinPos array
	
LOOP_START_MENU:
	jal RENDER_START_SCREEN
	
	li $t9, 0xffff0000 			# read keyboard
	lw $t8, 0($t9)	
	beq $t8, 1, KEYPRESS_START
	
	j LOOP_START_MENU
	
KEYPRESS_START:
	lw $t2, 4($t9) 				# load char into $t2
	bne $t2, 0x70, LOOP_START_MENU		# ASCII code of 'a' is 0x70
	
	j START_LEVEL

START_LEVEL:	
	# start level rendering
	li $t0, BASE_ADDRESS 			# $t0 stores the base address for display
	li $t1, 0x6df934			# $t1 stores the green color for ground
	li $t5, 0x5eec18			# $t4 stores the 2nd green color for ground
	li $t6, 0x209802			# $t5 stores the 3rd green color for ground
	li $t7, 0x36cf00			# $t5 stores the 4th green color for ground
	li $t2, 15360				# $t2 stores the incremented counter var
	li $t3, 16384				# $t3 stores the max value
LOOP_RENDER_GROUND:
	beq $t2, $t3, END_RENDER_GROUND 	# if exit condition is fulfilled, exit
	add $t4, $t2, $t0			# set $t4 to pixel address
	sw $t1, 0($t4)				# set ground pixel to color
	sw $t5, 4($t4)				# set ground pixel to color
	sw $t6, 8($t4)				# set ground pixel to color
	sw $t7, 12($t4)				# set ground pixel to color
	addi $t2, $t2, 16			# increment counter var
	j LOOP_RENDER_GROUND
END_RENDER_GROUND:

	li $t1, 0x5b93fb			# $t1 stores the blue color for sky
	li $t2, 0				# $t2 stores the incremented counter var
	li $t3, 15360				# $t3 stores the max value
LOOP_RENDER_SKY:
	beq $t2, $t3, END_RENDER_SKY 		# if exit condition is fulfilled, exit
	add $t4, $t2, $t0			# set $t4 to pixel address
	sw $t1, 0($t4)				# set ground pixel to color
	addi $t2, $t2, 4			# increment counter var
	j LOOP_RENDER_SKY
END_RENDER_SKY:
	jal RENDER_CLOUDS
	
	jal RENDER_TOP_BAR
	
	jal RENDER_PLATFORM1
	jal RENDER_PLATFORM2
	jal RENDER_COIN
	jal RENDER_GOOMBA1
	jal RENDER_GOOMBA2
	
	j TICK_LOOP

DEAD_DISPLAY_HELPER:
	jal DISPLAY_MARIO_DEAD
	j DOWN_FIX_BG

MOVE_DOWN:
	andi $t9, $s1, 0x01
	bnez $t9, TICK_LOOP_AFTER_GRAVITY
	
	addi $s0, $s0, 256			# move character down
	andi $s1, $s1, 0xFFFFFD			# set the up collision flag to false
	
	andi $t0, $s1, 0x40 			# get death status
	bnez $t0, DEAD_DISPLAY_HELPER 		# if dead, display him dead
	
	andi $t0, $s1, 0x20			# get direction status
	beqz $t0, DOWN_RIGHT_DIR		# if they are moving right, keep displaying right
	jal DISPLAY_MARIO_LEFT			# else, display left
	
	j DOWN_FIX_BG
	
DOWN_RIGHT_DIR:
	jal DISPLAY_MARIO_RIGHT
	j DOWN_FIX_BG
	
DOWN_FIX_BG:
	li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, -256($s0)
        sw $t4, -252($s0)
        sw $t4, -248($s0)
        sw $t4, -244($s0)
        sw $t4, -240($s0)
	
	j TICK_LOOP_AFTER_GRAVITY
	
IF_PLAYER_GOING_UP:
	# player hasnt jumped twice
	ori $s1, $s1, 0x80				# set jumping status to 1
	j NOT_JUMPING					# continue jumping
DO_JUMP:
	andi $t1, $s1, 0x80				# get jumping status of player
	bnez $t1, TICK_LOOP_AFTER_KEY			# if player status is jumping
	bgt $s2, 0, IF_PLAYER_GOING_UP		# hack to get around MIPS allowing holding down jump as only 1 keypress

	bgtz $s2, IF_PLAYER_GOING_UP			# if player has positive vertical velocity
NOT_JUMPING:
	addi $s2, $s2, 45				# add 45 to vertical velocity
	andi $s1, $s1, 0xFFFFFE				# set down collision to false
	bgtz $s2, MOVE_UP
	j TICK_LOOP_AFTER_KEY
	
MOVE_UP:
	andi $t9, $s1, 0x02
	bnez $t9, UP_COLLISION_CASE
	
	addi $s0, $s0, -256
	
	addi $s2, $s2, -3 			# subtract from vertical velocity
	
	andi $t0, $s1, 0x20
	beqz $t0, JUMP_RIGHT_DIR
	jal DISPLAY_MARIO_LEFT
	
	j JUMP_FIX_BG
	
UP_COLLISION_CASE:
	addi $s2, $zero, -2
	j TICK_LOOP_AFTER_GRAVITY
	
JUMP_RIGHT_DIR:
	jal DISPLAY_MARIO_RIGHT
	
JUMP_FIX_BG:
	li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, 2560($s0)
        sw $t4, 2564($s0)
        sw $t4, 2568($s0)
        sw $t4, 2572($s0)
        sw $t4, 2576($s0)
	
	j TICK_LOOP_AFTER_GRAVITY
	
	
	
MOVE_LEFT:
	andi $t9, $s1, 0x04			# check if moving left will collide
	bnez $t9, TICK_LOOP_AFTER_KEY		# skip key input
	
	addi $s0, $s0, -4
 	andi $t1, $s1, 0x10    	# get 4th bit of status (stepping), store in $t1
 	ori $s1, $s1, 0x20    	# set 5th bit of status (direction), to left
 	beqz $t1, NO_STEP_LEFT
 	jal DISPLAY_MARIO_LEFT_WALK
 	andi $s1, $s1, 0xFFFFEF
 	
 	li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, 20($s0)
        sw $t4, 276($s0)
        sw $t4, 532($s0)
        sw $t4, 788($s0)
        sw $t4, 1044($s0)
        sw $t4, 1300($s0)
        sw $t4, 1556($s0)
        sw $t4, 1812($s0)
        sw $t4, 2068($s0)
        sw $t4, 2324($s0)
        
 	j TICK_LOOP_AFTER_KEY
NO_STEP_LEFT: 
 	jal DISPLAY_MARIO_LEFT
 	ori $s1, $s1, 0x10
 	
 	li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, 20($s0)
        sw $t4, 276($s0)
        sw $t4, 532($s0)
        sw $t4, 788($s0)
        sw $t4, 1044($s0)
        sw $t4, 1300($s0)
        sw $t4, 1556($s0)
        sw $t4, 1812($s0)
        sw $t4, 2068($s0)
        sw $t4, 2324($s0)
        
	j TICK_LOOP_AFTER_KEY
	
MOVE_RIGHT:
	andi $t9, $s1, 0x08			# check if moving right will collide
	bnez $t9, TICK_LOOP_AFTER_KEY		# skip key input

	addi $s0, $s0, 4
 	andi $t1, $s1, 0x10    			# get 4th bit of status (stepping), store in $t1
 	andi $s1, $s1, 0xFFFFDF
 	beqz $t1, NO_STEP_RIGHT
 	jal DISPLAY_MARIO_RIGHT_WALK
 	andi $s1, $s1, 0xFFFFEF
 	
        li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, -4($s0)
 	sw $t4, 252($s0)
        sw $t4, 508($s0)
        sw $t4, 764($s0)
        sw $t4, 1020($s0)
        sw $t4, 1276($s0)
        sw $t4, 1532($s0)
        sw $t4, 1788($s0)
        sw $t4, 2044($s0)
        sw $t4, 2300($s0)
 	
 	j TICK_LOOP_AFTER_KEY
NO_STEP_RIGHT: 
 	jal DISPLAY_MARIO_RIGHT
 	ori $s1, 0x10
 	
 	li $t4, 0x5b93fb			# $t4 stores the blue color for sky
 	sw $t4, -4($s0)
 	sw $t4, 252($s0)
        sw $t4, 508($s0)
        sw $t4, 764($s0)
        sw $t4, 1020($s0)
        sw $t4, 1276($s0)
        sw $t4, 1532($s0)
        sw $t4, 1788($s0)
        sw $t4, 2044($s0)
        sw $t4, 2300($s0)
        
	j TICK_LOOP_AFTER_KEY
	
	
GOOMBA_DEATH:
	ori $s1, $s1, 0x40			# set death status to 1
	j TICK_LOOP_AFTER_GRAVITY		# jump to end of tick, denying new keyboard input
	
GOOMBA1_SQUASH:
	ori $s4, $s4, 0x01			# set goomba1 death status to 1
	andi $s1, $s1, 0x7F			# set jumping to 0
	jal DO_JUMP
	
GOOMBA2_SQUASH:
	ori $s6, $s6, 0x01			# set goomba2 death status to 1
	andi $s1, $s1, 0x7F			# set jumping to 0
	jal DO_JUMP
	
UPDATE_SCORE_BAR:
	li $t0, BASE_ADDRESS		# $t0 stores baseaddress for display
	addi $t0, $t0, 396		# add offset to base address
	
	lw $t9, playerScore		# $t9 represents player score
	li $t8, 100			# $t8 stores 100 to divide playerscore by
	div $t9, $t8			# divide by 100 to get num of pixels from the left edge to draw
	mflo $t9 			# overwrite $t9 and store the num of coins to draw
	
	li $t5, 0			# incremented var for num coins

LOOP_UPDATE_SCORE_BAR:
	beq $t5, $t9, END_UPDATE_SCORE_BAR	# exit condition
	
	li $t1, 0xf8f800			# $t1 stores the main color for coin
	li $t2, 0xd89e36			# $t2 stores the outer color for coin
	li $t6, 0xf8d81e			# $t3 stores the intermediate color for coin
	
	sw $t2, 0($t0)
        sw $t2, 4($t0)
        sw $t2, 8($t0)

        sw $t2, 252($t0)
        sw $t6, 256($t0)
        sw $t1, 260($t0)
        sw $t6, 264($t0)
        sw $t2, 268($t0)

        sw $t2, 508($t0)
        sw $t6, 512($t0)
        sw $t1, 516($t0)
        sw $t6, 520($t0)
        sw $t2, 524($t0)
        
        sw $t2, 764($t0)
        sw $t6, 768($t0)
        sw $t1, 772($t0)
        sw $t6, 776($t0)
        sw $t2, 780($t0)


        sw $t2, 1024($t0)
        sw $t2, 1028($t0)
        sw $t2, 1032($t0)
		
	addi $t0, $t0, 24
	addi $t5, $t5, 1
		
	j LOOP_UPDATE_SCORE_BAR			# loop back
END_UPDATE_SCORE_BAR:
	jr $ra

	
COIN_COLLIDE_DOWN:
	lw $t9, playerScore		# $t0 represents player score
	addi $t9, $t9, 100		# add 100 to player score
	sw $t9, playerScore		# store new score
	
	move $a0, $ra			# store old $ra
	
	jal UPDATE_SCORE_BAR
	
	jal REMOVE_COIN
	
	addi $s7, $s7, 4 		# increment coin position index
	
	jal RENDER_COIN
	
	move $ra, $a0			# restore old $ra
	
	j NO_DOWN_COLL_COIN
	
COIN_COLLIDE_UP:
	lw $t9, playerScore		# $t0 represents player score
	addi $t9, $t9, 100		# add 100 to player score
	sw $t9, playerScore		# store new score
	
	move $a0, $ra			# store old $ra
	
	jal UPDATE_SCORE_BAR
	
	jal REMOVE_COIN
	
	addi $s7, $s7, 4 		# increment coin position index
	
	jal RENDER_COIN
	
	move $ra, $a0			# restore old $ra
	
	j UP_SUBCASE_AFTER_COIN
	
COIN_COLLIDE_LEFT:
	lw $t9, playerScore		# $t0 represents player score
	addi $t9, $t9, 100		# add 100 to player score
	sw $t9, playerScore		# store new score
	
	move $a0, $ra			# store old $ra
	
	jal UPDATE_SCORE_BAR
	
	jal REMOVE_COIN
	
	addi $s7, $s7, 4 		# increment coin position index
	
	jal RENDER_COIN
	
	move $ra, $a0			# restore old $ra
	
	j LEFT_SUBCASE_AFTER_COIN
	
COIN_COLLIDE_RIGHT:
	lw $t9, playerScore		# $t0 represents player score
	addi $t9, $t9, 100		# add 100 to player score
	sw $t9, playerScore		# store new score
	
	move $a0, $ra			# store old $ra
	
	jal UPDATE_SCORE_BAR
	
	jal REMOVE_COIN
	
	addi $s7, $s7, 4 		# increment coin position index
	
	jal RENDER_COIN
	
	move $ra, $a0			# restore old $ra
	
	j RIGHT_SUBCASE_AFTER_COIN
	
HANDLE_GROUND_COLLISION:
	li $t1, 12800
	addi $t1, $t1, BASE_ADDRESS
	addi $t2, $t1, 255
	blt $s0, $t1, GROUND_ELSE		# if y-pos is ground handle collision
	bgt $s0, $t2, GROUND_ELSE		# if y-pos is ground handle collision
	
	ori $s1, $s1, 0x01 			# set down collision to 1
	andi $s1, $s1, 0x7F			# set jumping to 0
	j HANDLE_UP_SUBCASE
	

COLLIDE_LEFT:
	ori $s1, $s1, 0x04 			# set left collision to 1
	j HANDLE_RIGHT_SUBCASE
	
COLLIDE_RIGHT:
	ori $s1, $s1, 0x08 			# set right collision to 1
	jr $ra
	
COLLIDE_UP:
	ori $s1, $s1, 0x02 			# set up collision to 1
	add $s2, $s2, $zero			# set vertical velocity to 0
	
	j HANDLE_LEFT_SUBCASE
	
COLLIDE_DOWN:
	ori $s1, $s1, 0x01 			# set down collision to 1
	andi $s1, $s1, 0x7F			# set jumping to 0
	j HANDLE_UP_SUBCASE
	
	
	
HANDLE_GENERAL_COLLISION:
	li $t1, 0x6a1109 			# color for platform outside
		
	# handle goomba1 squashes
	addi $t3, $s3, -256			# $t3 stores 1 above top left of goomba position
	addi $t4, $s3, -236			# $t3 stores 1 above top right of goomba position
	addi $t6, $s0, 2580			# $t6 stores right bottom of player position
	addi $t7, $s0, 2560			# $t7 stores right bottom of player position
	blt $t6, $t3, NO_COLL_GOOMBA1		# if right player pos < goomba left pos, no collision possible
	bgt $t7, $t4, NO_COLL_GOOMBA1		# if left player pos > goomba right pos, no collision possible
	
	# else left goomba pos <= player pos <= right goomba pos, so character collides with goomba1
	j GOOMBA1_SQUASH
	
NO_COLL_GOOMBA1:
	# handle goomba2 squashes
	addi $t3, $s5, -256			# $t3 stores 1 above top left of goomba position
	addi $t4, $s5, -236			# $t4 stores 1 above top right of goomba position
	addi $t6, $s0, 2580			# $t6 stores right bottom of player position
	addi $t7, $s0, 2560			# $t7 stores right bottom of player position
	blt $t6, $t3, NO_COLL_GOOMBA2		# if right player pos < goomba left pos, no collision possible
	bgt $t7, $t4, NO_COLL_GOOMBA2		# if left player pos > goomba right pos, no collision possible
	
	# else left goomba pos <= player pos <= right goomba pos, so character collides with goomba2
	j GOOMBA2_SQUASH
	
NO_COLL_GOOMBA2:
	# case for down collision with coin
	li $t1, 0xd89e36			# $t1 stores the outer color for coin
	
	lw $t2, 2560($s0)
	beq $t2, $t1, COIN_COLLIDE_DOWN
	lw $t2, 2564($s0)
	beq $t2, $t1, COIN_COLLIDE_DOWN
	lw $t2, 2568($s0)
	beq $t2, $t1, COIN_COLLIDE_DOWN
	lw $t2, 2572($s0)
	beq $t2, $t1, COIN_COLLIDE_DOWN
	lw $t2, 2576($s0)
	beq $t2, $t1, COIN_COLLIDE_DOWN
	
	
NO_DOWN_COLL_COIN:
	# case for down collision with platform
	li $t1, 0x6a1109 			# color for platform outside
	
	# if character collides down with anything, go to down collide case
	lw $t2, 2560($s0)
	beq $t2, $t1, COLLIDE_DOWN
	lw $t2, 2564($s0)
	beq $t2, $t1, COLLIDE_DOWN
	lw $t2, 2568($s0)
	beq $t2, $t1, COLLIDE_DOWN
	lw $t2, 2572($s0)
	beq $t2, $t1, COLLIDE_DOWN
	lw $t2, 2576($s0)
	beq $t2, $t1, COLLIDE_DOWN
	
	# check if character collides with ground
	j HANDLE_GROUND_COLLISION
	
GROUND_ELSE:
	# if character doesnt collide with platform or ground, set down collide to false
	andi $s1, $s1, 0xFFFFFE
	
HANDLE_UP_SUBCASE:
	li $t1, 0x6a1109 			# color for platform outside
	
	li $t5, 0xbf6f00			# $t5 stores the main color for goomba
	
	# if character collides upwards with anything, go to up collide case
	li $t3, -256			# $t3 stores loop incremented var
	li $t4, -236			# $t4 stores max incremented var value
	
	li $t6, BASE_ADDRESS		# $t6 stores upper bound
	addi $t6, $t6, 1792
UP_SUBCASE_LOOP:
	beq $t3, $t4, UP_SUBCASE_ELSE	# exit condition
	
	add $t2, $t3, $s0		# calculate new pixel address to check, store in $t2
	blt $t2, $t6, COLLIDE_UP	# if new pixel address is beyond upper boundary
	
	lw $t2, 0($t2)			# load pixel color in $t2, overwriting
	
	beq $t2, $t5, GOOMBA_DEATH	# if pixel collides with goomba, go to death condition
	
	li $t8, 0xd89e36		# $t8 stores the outer color for coin
	beq $t2, $t8, COIN_COLLIDE_UP
UP_SUBCASE_AFTER_COIN:
	beq $t2, $t1, COLLIDE_UP	# if pixel color matches platform color, collide up
	
	addi $t3, $t3, 4		# increment counter variable
	
	j UP_SUBCASE_LOOP
UP_SUBCASE_ELSE:
	# else set up collide to false
	andi $s1, $s1, 0xFFFFFD
	
	
	
HANDLE_LEFT_SUBCASE:
	li $t1, 0x6a1109 			# color for platform outside
	
	# if character collides left with anything, go to left collide case
	li $t3, -4			# $t3 stores loop incremented var
	li $t4, 2556			# $t4 stores max incremented var value
	
LEFT_SUBCASE_LOOP:
	beq $t3, $t4, LEFT_SUBCASE_ELSE	# exit condition
	
	add $t2, $t3, $s0		# calculate new pixel address to check, store in $t2
	
	li $t9, 256
	div $s0, $t9			# divide player position by 256 to find modulo 256 of player position
	mfhi $t5			# store remainder in $t5
	beqz $t5, COLLIDE_LEFT		# if player is at boundary, collide left
	
	lw $t2, 0($t2)			# load pixel color in $t2, overwriting
	
	li $t5, 0xbf6f00			# $t5 stores the main color for goomba
	beq $t2, $t5, GOOMBA_DEATH	# if pixel collides with goomba, go to death condition

	li $t8, 0xd89e36		# $t8 stores the outer color for coin
	beq $t2, $t8, COIN_COLLIDE_LEFT
LEFT_SUBCASE_AFTER_COIN:
	beq $t2, $t1, COLLIDE_LEFT	# if pixel color matches platform color, collide left
	
	addi $t3, $t3, 256 		# increment counter variable
	j LEFT_SUBCASE_LOOP
LEFT_SUBCASE_ELSE:
	# else set left collide to false
	andi $s1, $s1, 0xFFFFFB



HANDLE_RIGHT_SUBCASE:
	li $t1, 0x6a1109 # color for platform outside
	
	# if character collides right with anything, go to right collide case
	li $t3, 20			# $t3 stores loop incremented var
	li $t4, 2580			# $t4 stores max incremented var value
	
RIGHT_SUBCASE_LOOP:
	beq $t3, $t4, RIGHT_SUBCASE_ELSE	# exit condition
	
	add $t2, $t3, $s0		# calculate new pixel address to check, store in $t2
	
	li $t7, 256
	li $t8, BASE_ADDRESS
	sub $t9, $s0, $t8
	div $t9, $t7			# divide player position by 256 to find modulo 256 of player position
	mfhi $t5			# store remainder in $t5
	beq $t5, 236, COLLIDE_RIGHT	# if player is at boundary, collide right
	
	lw $t2, 0($t2)			# load pixel color in $t2, overwriting
	
	li $t5, 0xbf6f00			# $t5 stores the main color for goomba
	beq $t2, $t5, GOOMBA_DEATH	# if pixel collides with goomba, go to death condition
	
	li $t8, 0xd89e36		# $t8 stores the outer color for coin
	beq $t2, $t8, COIN_COLLIDE_RIGHT
RIGHT_SUBCASE_AFTER_COIN:
	beq $t2, $t1, COLLIDE_RIGHT
	
	addi $t3, $t3, 256 		# increment counter variable
	j RIGHT_SUBCASE_LOOP
RIGHT_SUBCASE_ELSE:
	# else set right collide to false
	andi $s1, $s1, 0xFFFFF7
	jr $ra
	
	
	
HANDLE_GRAVITY:
	bltz $s2, MOVE_DOWN
	bgtz $s2, MOVE_UP
	
	addi $s2, $s2 -2			# if the velocity is 0, give the player a tick to react at the top of the jump
	
	j TICK_LOOP_AFTER_GRAVITY
	
	
GOOMBA1_DEAD:
	jal RENDER_GOOMBA1_SQUISHED
	j AFTER_GOOMBA1
	
SET_GOOMBA1_RIGHT:
	andi $s4, $s4, 0x0D			# set goomba1 to go right
	j AFTER_GOOMBA1
	
SET_GOOMBA1_LEFT:
	ori $s4, $s4, 0x02			# set goomba1 to go left
	j AFTER_GOOMBA1
	
GOOMBA2_DEAD:
	jal RENDER_GOOMBA2_SQUISHED
	j AFTER_GOOMBA2
	
SET_GOOMBA2_RIGHT:
	andi $s6, $s6, 0x0D			# set goomba2 to go right
	j AFTER_GOOMBA2
	
SET_GOOMBA2_LEFT:
	ori $s6, $s6, 0x02			# set goomba2 to go left
	j AFTER_GOOMBA2
	
	
	
	
	
	
TICK_LOOP: 
	andi $t0, $s1, 0x40 			# get death status
	beqz $t0, TICK_AFTER_DEATH_CHECK	# if player is not dead, keep going with tick loop
	# else
	
	
	addi $t0, $s0, 2560			# calculate player bottom pixel
	li $t1, BASE_ADDRESS			# load base address to calculate bottom of screen
	addi $t1, $t1, 13824			# calculate bottom of screen
	bgt $s0, $t1, RENDER_GAME_OVER_SCREEN # if player reached bottom of screen, go to game over screen
	andi $s1, $s1, 0xFFFFFE			# set down collision to false
	j MOVE_DOWN				# move player down

TICK_AFTER_DEATH_CHECK:

	# if player score is 500, they won the game
	lw $t9, playerScore			# $t9 represents player score
	beq $t9, 500, RENDER_WIN_SCREEN		# render winning screen

	# handle goomba1 movement
	andi $t1, $s4, 0x01			# Get goomba1 dead status
	andi $t0, $s4, 0x02			# Get goomba1 direction status
	
	bnez $t1, GOOMBA1_DEAD			# if goomba1 is dead, skip movement
	# else, goomba is not dead
	bnez $t0, GOOMBA1_GO_LEFT		# if goomba1 direction is left, go left
	
	# else goomba direction is right, go right
	li $t0, BASE_ADDRESS			# load baseaddress to calculate edge of platform
	addi $t0, $t0, 9044			# store edge of platform in $t0, overwriting
	beq $s3, $t0, SET_GOOMBA1_LEFT	# if goomba1 is at edge of platform
	
	# else goomba1 not at edge
	addi $s3, $s3, 4			# move goomba position left
	jal RENDER_GOOMBA1			# render goomba at new position
	
	# fix background
	li $t1, 0x5b93fb			# $t1 stores the blue color for sky
	sw $t1, -4($s3)	
	sw $t1, 252($s3)	
	sw $t1, 508($s3)		
	sw $t1, 764($s3)	
	sw $t1, 1020($s3)	
	
	j AFTER_GOOMBA1
GOOMBA1_GO_LEFT:
	li $t0, BASE_ADDRESS			# load baseaddress to calculate edge of platform
	addi $t0, $t0, 8988			# store edge of platform in $t0, overwriting
	beq $s3, $t0, SET_GOOMBA1_RIGHT		# if goomba1 is at edge of platform, make him go right
	
	# else goomba1 not at edge
	addi $s3, $s3, -4			# move goomba position left
	jal RENDER_GOOMBA1			# render goomba at new position
	
	# fix background
	li $t1, 0x5b93fb			# $t1 stores the blue color for sky
	sw $t1, 20($s3)	
	sw $t1, 276($s3)	
	sw $t1, 532($s3)		
	sw $t1, 788($s3)	
	sw $t1, 1044($s3)	

AFTER_GOOMBA1:

	# handle goomba1 movement
	andi $t1, $s6, 0x01			# Get goomba2 dead status
	andi $t0, $s6, 0x02			# Get goomba2 direction status
	
	bnez $t1, GOOMBA2_DEAD			# if goomba2 is dead, skip movement
	# else, goomba is not dead
	bnez $t0, GOOMBA2_GO_LEFT		# if goomba2 direction is left, go left
	
	# else goomba direction is right, go right
	li $t0, BASE_ADDRESS			# load baseaddress to calculate edge of platform
	addi $t0, $t0, 7116			# store edge of platform in $t0, overwriting
	beq $s5, $t0, SET_GOOMBA2_LEFT		# if goomba2 is at edge of platform
	
	# else goomba1 not at edge
	addi $s5, $s5, 4			# move goomba position left
	jal RENDER_GOOMBA2			# render goomba at new position
	
	# fix background
	li $t1, 0x5b93fb			# $t1 stores the blue color for sky
	sw $t1, -4($s5)	
	sw $t1, 252($s5)	
	sw $t1, 508($s5)		
	sw $t1, 764($s5)	
	sw $t1, 1020($s5)	
	
	j AFTER_GOOMBA2
GOOMBA2_GO_LEFT:
	li $t0, BASE_ADDRESS			# load baseaddress to calculate edge of platform
	addi $t0, $t0, 7080			# store edge of platform in $t0, overwriting
	beq $s5, $t0, SET_GOOMBA2_RIGHT		# if goomba1 is at edge of platform, make him go right
	
	# else goomba1 not at edge
	addi $s5, $s5, -4			# move goomba position left
	jal RENDER_GOOMBA2			# render goomba at new position
	
	# fix background
	li $t1, 0x5b93fb			# $t1 stores the blue color for sky
	sw $t1, 20($s5)	
	sw $t1, 276($s5)	
	sw $t1, 532($s5)		
	sw $t1, 788($s5)	
	sw $t1, 1044($s5)	

AFTER_GOOMBA2:

	li $t9, 0xffff0000 			# read keyboard
	lw $t8, 0($t9)				
	beq $t8, 1, KEYPRESS
	j TICK_LOOP_AFTER_KEY
	
KEYPRESS:
	lw $t2, 4($t9) 				# load char into $t2
	beq $t2, 0x61, MOVE_LEFT		# ASCII code of 'a' is 0x61
	beq $t2, 0x64, MOVE_RIGHT		# ASCII code of 'd' is 0x64
	beq $t2, 0x77, DO_JUMP			# ASCII code of 'w' is 0x77
	beq $t2, 0x70, RENDER_GAME_OVER_SCREEN	# ASCII code of 'p' is 0x70

TICK_LOOP_AFTER_KEY:

	jal HANDLE_GENERAL_COLLISION
	
TICK_LOOP_AFTER_COLLISION:
	
	andi $t1, $s1, 0x01    			# get 1st bit of status (down collision), store in $t1
	beqz $t1, HANDLE_GRAVITY
	
TICK_LOOP_AFTER_GRAVITY: 

	li $a0, REFRESH_RATE
	li $v0, 32
	syscall
	
	j TICK_LOOP
	
	
	
	
	
	
	
	
	
	
	
EXIT:
	li $v0 10
	syscall
