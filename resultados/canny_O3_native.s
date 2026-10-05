	.file	"canny.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Error allocating the gradient direction image.\n"
	.text
	.p2align 4
	.type	radian_direction.part.0, @function
radian_direction.part.0:
.LFB77:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	popq	%rax	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	leaq	.LC0(%rip), %rdi	#, tmp84
	movl	$47, %edx	#,
	movl	$1, %esi	#,
# canny.c:278: void radian_direction(short int *delta_x, short int *delta_y, int rows,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite@PLT	#
# canny.c:290:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE77:
	.size	radian_direction.part.0, .-radian_direction.part.0
	.p2align 4
	.globl	radian_direction
	.type	radian_direction, @function
radian_direction:
.LFB49:
	.cfi_startproc
	endbr64	
	movl	%edx, %eax	# tmp260, rows
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	imull	%ecx, %eax	# cols, tmp157
# canny.c:280: {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# canny.c:280: {
	movq	%rdi, %rbx	# tmp258, delta_x
	movq	%rsi, %rbp	# tmp259, delta_y
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	$4, %esi	#,
# canny.c:280: {
	movl	%edx, 12(%rsp)	# rows, %sfp
	movq	%r8, %r12	# tmp262, dir_radians
	movl	%r9d, %r15d	# tmp263, xdirtag
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	%ecx, (%rsp)	# cols, %sfp
	movslq	%eax, %rdi	# tmp157,
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	call	calloc@PLT	#
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	(%rsp), %edx	# %sfp, cols
	testq	%rax, %rax	# dirim
	je	.L54	#,
	movq	%rax, %r14	# tmp264, dirim
# canny.c:292:    *dir_radians = dirim;
	movq	%rax, (%r12)	# dirim, *dir_radians_27(D)
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	12(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L50	#,
	testl	%edx, %edx	# cols
	jle	.L50	#,
	cmpl	$1, %r15d	#, xdirtag
	je	.L31	#,
	cmpl	$-1, 96(%rsp)	#, ydirtag
	movslq	%edx, %rax	# cols, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	$0, 24(%rsp)	#, %sfp
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	$0, 8(%rsp)	#, %sfp
	movq	%rax, 16(%rsp)	# cols, %sfp
# canny.c:326:       else return(2*M_PI - ang);
	movl	%edx, 28(%rsp)	# cols, %sfp
	je	.L9	#,
	.p2align 4
	.p2align 3
.L15:
	movslq	24(%rsp), %r15	# %sfp, ivtmp.114
	movq	16(%rsp), %rax	# %sfp, cols
	addq	%r15, %rax	# ivtmp.114, _161
	movq	%rax, (%rsp)	# _161, %sfp
	jmp	.L14	#
	.p2align 4
	.p2align 3
.L56:
# canny.c:325:       if(y >= 0) return(ang);
	testw	%r13w, %r13w	# _114
	js	.L12	#,
.L52:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp175, _127
.L10:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vmovss	%xmm0, (%r14,%r15,4)	# _127, MEM[(float *)dirim_26 + ivtmp.114_166 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%r15	# ivtmp.114
	cmpq	%r15, (%rsp)	# ivtmp.114, %sfp
	je	.L55	#,
.L14:
# canny.c:296:          dx = (double)delta_x[pos];
	movzwl	(%rbx,%r15,2), %r12d	# MEM[(short int *)delta_x_30(D) + ivtmp.114_166 * 2], _111
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	vxorps	%xmm0, %xmm0, %xmm0	# _127
# canny.c:297:          dy = (double)delta_y[pos];
	movzwl	0(%rbp,%r15,2), %r13d	# MEM[(short int *)delta_y_32(D) + ivtmp.114_166 * 2], _114
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	movl	%r12d, %eax	# _111, tmp277
	orw	%r13w, %ax	# _114, tmp277
	je	.L10	#,
# canny.c:297:          dy = (double)delta_y[pos];
	movswl	%r13w, %esi	# _114, _114
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp308
	vcvtsi2sdl	%esi, %xmm3, %xmm0	# _114, tmp308, tmp269
# canny.c:296:          dx = (double)delta_x[pos];
	movswl	%r12w, %esi	# _111, _111
# canny.c:318:    yu = fabs(y);
	vandpd	.LC2(%rip), %xmm0, %xmm0	#, dy, yu
# canny.c:296:          dx = (double)delta_x[pos];
	vcvtsi2sdl	%esi, %xmm3, %xmm1	# _111, tmp309, tmp270
# canny.c:317:    xu = fabs(x);
	vandpd	.LC2(%rip), %xmm1, %xmm1	#, dx, xu
# canny.c:322:    ang = atan(yu/xu);
	vdivsd	%xmm1, %xmm0, %xmm0	# xu, yu, tmp170
	call	atan@PLT	#
# canny.c:324:    if(x >= 0){
	testw	%r12w, %r12w	# _111
	jns	.L56	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	testw	%r13w, %r13w	# _114
	js	.L13	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vmovsd	.LC4(%rip), %xmm5	#, tmp311
	vsubsd	%xmm0, %xmm5, %xmm0	# ang, tmp311, tmp173
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp173, _127
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vmovss	%xmm0, (%r14,%r15,4)	# _127, MEM[(float *)dirim_26 + ivtmp.114_166 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%r15	# ivtmp.114
	cmpq	%r15, (%rsp)	# ivtmp.114, %sfp
	jne	.L14	#,
	.p2align 4
	.p2align 3
.L55:
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	incl	8(%rsp)	# %sfp
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	movl	28(%rsp), %edx	# %sfp, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	8(%rsp), %eax	# %sfp, r
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	addl	%edx, 24(%rsp)	# cols, %sfp
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	cmpl	%eax, 12(%rsp)	# r, %sfp
	jne	.L15	#,
.L50:
# canny.c:305: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L59:
	.cfi_restore_state
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	incl	8(%rsp)	# %sfp
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	movl	28(%rsp), %edi	# %sfp, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	8(%rsp), %eax	# %sfp, r
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	addl	%edi, 24(%rsp)	# cols, %sfp
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	cmpl	%eax, 12(%rsp)	# r, %sfp
	je	.L50	#,
.L9:
	movslq	24(%rsp), %r13	# %sfp, ivtmp.132
	movq	16(%rsp), %rax	# %sfp, cols
	addq	%r13, %rax	# ivtmp.132, _152
	movq	%rax, (%rsp)	# _152, %sfp
	jmp	.L17	#
	.p2align 4
	.p2align 3
.L16:
# canny.c:297:          dy = (double)delta_y[pos];
	movswl	%r15w, %esi	# _73, _73
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp329
	vcvtsi2sdl	%esi, %xmm7, %xmm0	# _73, tmp329, tmp271
# canny.c:296:          dx = (double)delta_x[pos];
	movswl	%r12w, %esi	# _76, _76
# canny.c:318:    yu = fabs(y);
	vandpd	.LC2(%rip), %xmm0, %xmm0	#, dy, yu
# canny.c:296:          dx = (double)delta_x[pos];
	vcvtsi2sdl	%esi, %xmm7, %xmm1	# _76, tmp330, tmp272
# canny.c:317:    xu = fabs(x);
	vandpd	.LC2(%rip), %xmm1, %xmm1	#, dx, xu
# canny.c:322:    ang = atan(yu/xu);
	vdivsd	%xmm1, %xmm0, %xmm0	# xu, yu, tmp187
	call	atan@PLT	#
# canny.c:324:    if(x >= 0){
	testw	%r12w, %r12w	# _76
	js	.L57	#,
# canny.c:325:       if(y >= 0) return(ang);
	testw	%r15w, %r15w	# _73
	jg	.L58	#,
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# ang, prephitmp_66
.L20:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vmovss	%xmm0, (%r14,%r13,4)	# prephitmp_66, MEM[(float *)dirim_26 + ivtmp.132_157 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%r13	# ivtmp.132
	cmpq	%r13, (%rsp)	# ivtmp.132, %sfp
	je	.L59	#,
.L17:
# canny.c:297:          dy = (double)delta_y[pos];
	movzwl	0(%rbp,%r13,2), %r15d	# MEM[(short int *)delta_y_32(D) + ivtmp.132_157 * 2], _73
# canny.c:296:          dx = (double)delta_x[pos];
	movzwl	(%rbx,%r13,2), %r12d	# MEM[(short int *)delta_x_30(D) + ivtmp.132_157 * 2], _76
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	movl	%r15d, %eax	# _73, tmp278
	orw	%r12w, %ax	# _76, tmp278
	jne	.L16	#,
	vxorps	%xmm0, %xmm0, %xmm0	# prephitmp_66
	jmp	.L20	#
	.p2align 4
	.p2align 3
.L12:
# canny.c:326:       else return(2*M_PI - ang);
	vmovsd	.LC3(%rip), %xmm5	#, tmp310
	vsubsd	%xmm0, %xmm5, %xmm0	# ang, tmp310, tmp171
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp171, _127
	jmp	.L10	#
	.p2align 4
	.p2align 3
.L57:
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	testw	%r15w, %r15w	# _73
	jg	.L60	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vmovsd	.LC4(%rip), %xmm2	#, tmp331
	vsubsd	%xmm0, %xmm2, %xmm0	# ang, tmp331, tmp190
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp190, prephitmp_66
	jmp	.L20	#
	.p2align 4
	.p2align 3
.L13:
# canny.c:330:       else return(M_PI + ang);
	vaddsd	.LC4(%rip), %xmm0, %xmm0	#, ang, tmp175
	jmp	.L52	#
	.p2align 4
	.p2align 3
.L58:
# canny.c:326:       else return(2*M_PI - ang);
	vmovsd	.LC3(%rip), %xmm5	#, tmp332
	vsubsd	%xmm0, %xmm5, %xmm0	# ang, tmp332, tmp192
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp192, prephitmp_66
	jmp	.L20	#
	.p2align 4
	.p2align 3
.L60:
# canny.c:330:       else return(M_PI + ang);
	vaddsd	.LC4(%rip), %xmm0, %xmm0	#, ang, tmp188
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp188, prephitmp_66
	jmp	.L20	#
.L31:
	movslq	%edx, %rax	# cols, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	xorl	%edi, %edi	# pos
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	xorl	%esi, %esi	# r
# canny.c:326:       else return(2*M_PI - ang);
	movl	%edx, 28(%rsp)	# cols, %sfp
	movq	%rax, 16(%rsp)	# cols, %sfp
	.p2align 4
	.p2align 3
.L8:
	movq	16(%rsp), %rax	# %sfp, cols
	movslq	%edi, %r15	# pos, ivtmp.147
	movl	%esi, 8(%rsp)	# r, %sfp
	movl	%edi, 24(%rsp)	# pos, %sfp
	movq	%r15, %r13	# ivtmp.147, ivtmp.147
	leaq	(%rax,%r15), %r12	#, _116
	jmp	.L30	#
	.p2align 4
	.p2align 3
.L62:
# canny.c:325:       if(y >= 0) return(ang);
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp337
	vcomisd	%xmm2, %xmm1	# tmp337, dy
	jb	.L48	#,
.L53:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp221, _87
.L23:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vmovss	%xmm0, (%r14,%r13,4)	# _87, MEM[(float *)dirim_26 + ivtmp.147_148 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%r13	# ivtmp.147
	cmpq	%r13, %r12	# ivtmp.147, _116
	je	.L61	#,
.L30:
# canny.c:300:          if(ydirtag == -1) dy = -dy;
	cmpl	$-1, 96(%rsp)	#, ydirtag
# canny.c:297:          dy = (double)delta_y[pos];
	movswl	0(%rbp,%r13,2), %ecx	# MEM[(short int *)delta_y_32(D) + ivtmp.147_148 * 2], MEM[(short int *)delta_y_32(D) + ivtmp.147_148 * 2]
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp333
# canny.c:296:          dx = (double)delta_x[pos];
	movzwl	(%rbx,%r13,2), %r15d	# MEM[(short int *)delta_x_30(D) + ivtmp.147_148 * 2], _6
# canny.c:297:          dy = (double)delta_y[pos];
	vcvtsi2sdl	%ecx, %xmm4, %xmm1	# MEM[(short int *)delta_y_32(D) + ivtmp.147_148 * 2], tmp333, tmp273
# canny.c:300:          if(ydirtag == -1) dy = -dy;
	jne	.L22	#,
# canny.c:300:          if(ydirtag == -1) dy = -dy;
	vxorpd	.LC5(%rip), %xmm1, %xmm1	#, dy, dy
.L22:
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	testw	%r15w, %r15w	# _6
	jne	.L35	#,
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp334
	movl	$0, %eax	#, tmp335
	vxorps	%xmm0, %xmm0, %xmm0	# _87
	vucomisd	%xmm5, %xmm1	# tmp334, dy
	setnp	%cl	#, tmp204
	cmovne	%eax, %ecx	# tmp204,, tmp335, tmp200
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	testb	%cl, %cl	# tmp200
	jne	.L23	#,
.L35:
# canny.c:296:          dx = (double)delta_x[pos];
	movswl	%r15w, %ecx	# _6, _6
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp336
# canny.c:318:    yu = fabs(y);
	vandpd	.LC2(%rip), %xmm1, %xmm2	#, dy, yu
	vmovsd	%xmm1, (%rsp)	# dy, %sfp
# canny.c:296:          dx = (double)delta_x[pos];
	vcvtsi2sdl	%ecx, %xmm6, %xmm0	# _6, tmp336, tmp274
# canny.c:317:    xu = fabs(x);
	vandpd	.LC2(%rip), %xmm0, %xmm0	#, dx, xu
# canny.c:322:    ang = atan(yu/xu);
	vdivsd	%xmm0, %xmm2, %xmm0	# xu, yu, tmp214
	call	atan@PLT	#
# canny.c:324:    if(x >= 0){
	testw	%r15w, %r15w	# _6
	vmovsd	(%rsp), %xmm1	# %sfp, dy
	jle	.L62	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp339
	vcomisd	%xmm6, %xmm1	# tmp339, dy
	jb	.L49	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vmovsd	.LC4(%rip), %xmm4	#, tmp340
	vsubsd	%xmm0, %xmm4, %xmm0	# ang, tmp340, tmp219
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp219, _87
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vmovss	%xmm0, (%r14,%r13,4)	# _87, MEM[(float *)dirim_26 + ivtmp.147_148 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%r13	# ivtmp.147
	cmpq	%r13, %r12	# ivtmp.147, _116
	jne	.L30	#,
	.p2align 4
	.p2align 3
.L61:
	movl	8(%rsp), %esi	# %sfp, r
	movl	24(%rsp), %edi	# %sfp, pos
	movl	28(%rsp), %eax	# %sfp, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	incl	%esi	# r
	addl	%eax, %edi	# cols, pos
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	cmpl	%esi, 12(%rsp)	# r, %sfp
	jne	.L8	#,
# canny.c:305: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L48:
	.cfi_restore_state
# canny.c:326:       else return(2*M_PI - ang);
	vmovsd	.LC3(%rip), %xmm6	#, tmp338
	vsubsd	%xmm0, %xmm6, %xmm0	# ang, tmp338, tmp216
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp216, _87
# canny.c:326:       else return(2*M_PI - ang);
	jmp	.L23	#
	.p2align 4
	.p2align 3
.L49:
# canny.c:330:       else return(M_PI + ang);
	vaddsd	.LC4(%rip), %xmm0, %xmm0	#, ang, tmp221
	jmp	.L53	#
.L54:
	call	radian_direction.part.0	#
	.cfi_endproc
.LFE49:
	.size	radian_direction, .-radian_direction
	.p2align 4
	.globl	angle_radians
	.type	angle_radians, @function
angle_radians:
.LFB50:
	.cfi_startproc
	endbr64	
	vmovsd	%xmm0, %xmm0, %xmm2	# tmp119, x
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp96
	movl	$0, %edx	#, tmp98
	vucomisd	%xmm0, %xmm2	# tmp96, x
	setnp	%al	#, tmp95
	cmovne	%edx, %eax	# tmp95,, tmp98, tmp91
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	testb	%al, %al	# tmp91
	je	.L71	#,
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	vucomisd	%xmm0, %xmm1	# tmp96, y
	setnp	%al	#, tmp103
	cmovne	%edx, %eax	# tmp103,, tmp98, tmp99
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	testb	%al, %al	# tmp99
	je	.L71	#,
# canny.c:332: }
	ret	
	.p2align 4
	.p2align 3
.L71:
# canny.c:314: {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# canny.c:318:    yu = fabs(y);
	vmovq	.LC2(%rip), %xmm3	#, tmp108
	vmovsd	%xmm1, 8(%rsp)	# y, %sfp
# canny.c:317:    xu = fabs(x);
	vmovsd	%xmm2, (%rsp)	# x, %sfp
# canny.c:318:    yu = fabs(y);
	vandpd	%xmm3, %xmm1, %xmm0	# tmp108, y, yu
# canny.c:317:    xu = fabs(x);
	vandpd	%xmm3, %xmm2, %xmm3	# tmp108, x, xu
# canny.c:322:    ang = atan(yu/xu);
	vdivsd	%xmm3, %xmm0, %xmm0	# xu, yu, tmp111
	call	atan@PLT	#
# canny.c:324:    if(x >= 0){
	vmovsd	(%rsp), %xmm2	# %sfp, x
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp112
	vmovsd	8(%rsp), %xmm1	# %sfp, y
	vcomisd	%xmm3, %xmm2	# tmp112, x
	jb	.L77	#,
# canny.c:325:       if(y >= 0) return(ang);
	vcomisd	%xmm3, %xmm1	# tmp112, y
	jnb	.L63	#,
# canny.c:326:       else return(2*M_PI - ang);
	vmovsd	.LC3(%rip), %xmm1	#, tmp114
	vsubsd	%xmm0, %xmm1, %xmm0	# <retval>, tmp114, <retval>
.L63:
# canny.c:332: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L77:
	.cfi_restore_state
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vcomisd	%xmm3, %xmm1	# tmp112, y
	jb	.L78	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vmovsd	.LC4(%rip), %xmm1	#, tmp116
# canny.c:332: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vsubsd	%xmm0, %xmm1, %xmm0	# <retval>, tmp116, <retval>
# canny.c:332: }
	ret	
	.p2align 4
	.p2align 3
.L78:
	.cfi_restore_state
# canny.c:330:       else return(M_PI + ang);
	vaddsd	.LC4(%rip), %xmm0, %xmm0	#, <retval>, <retval>
# canny.c:332: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE50:
	.size	angle_radians, .-angle_radians
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Error allocating the magnitude image.\n"
	.text
	.p2align 4
	.globl	magnitude_x_y
	.type	magnitude_x_y, @function
magnitude_x_y:
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# tmp136, delta_y
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12	# tmp135, delta_x
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movl	%edx, %edi	# rows, tmp115
# canny.c:343: {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	imull	%ecx, %edi	# cols, tmp115
# canny.c:343: {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movl	$2, %esi	#,
# canny.c:343: {
	movq	%r8, %rbx	# tmp139, magnitude
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# canny.c:343: {
	movl	%edx, %r14d	# tmp137, rows
	movl	%ecx, %r15d	# tmp138, cols
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movslq	%edi, %rdi	# tmp115, tmp116
	call	calloc@PLT	#
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movq	%rax, (%rbx)	# _3, *magnitude_31(D)
# canny.c:349:    if((*magnitude = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	testq	%rax, %rax	# _3
	je	.L83	#,
# canny.c:354:    for(r=0,pos=0;r<rows;r++){
	testl	%r14d, %r14d	# rows
	jle	.L94	#,
	testl	%r15d, %r15d	# cols
	jle	.L94	#,
	vmovsd	.LC8(%rip), %xmm4	#, tmp133
	vxorps	%xmm2, %xmm2, %xmm2	# tmp142
# canny.c:354:    for(r=0,pos=0;r<rows;r++){
	xorl	%ecx, %ecx	# pos
# canny.c:354:    for(r=0,pos=0;r<rows;r++){
	xorl	%edx, %edx	# r
	movslq	%r15d, %rsi	# cols, cols
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp125
	.p2align 4
	.p2align 3
.L85:
	movslq	%ecx, %rbx	# pos, ivtmp.172
	leaq	(%rsi,%rbx), %rbp	#, _102
	.p2align 4
	.p2align 3
.L90:
# canny.c:356:          sq1 = (int)delta_x[pos] * (int)delta_x[pos];
	movswl	(%r12,%rbx,2), %r8d	# MEM[(short int *)delta_x_34(D) + ivtmp.172_97 * 2], _8
# canny.c:357:          sq2 = (int)delta_y[pos] * (int)delta_y[pos];
	movswl	0(%r13,%rbx,2), %edi	# MEM[(short int *)delta_y_36(D) + ivtmp.172_97 * 2], _12
# canny.c:356:          sq1 = (int)delta_x[pos] * (int)delta_x[pos];
	imull	%r8d, %r8d	# _8, sq1
# canny.c:357:          sq2 = (int)delta_y[pos] * (int)delta_y[pos];
	imull	%edi, %edi	# _12, sq2
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vcvtsi2ssl	%r8d, %xmm2, %xmm0	# sq1, tmp142, tmp143
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vcvtsi2ssl	%edi, %xmm2, %xmm1	# sq2, tmp142, tmp144
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vaddss	%xmm1, %xmm0, %xmm0	# tmp123, tmp121, tmp124
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# tmp124, _16
	vucomisd	%xmm0, %xmm3	# _16, tmp125
	ja	.L93	#,
	vsqrtsd	%xmm0, %xmm0, %xmm0	# _16, _17
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vaddsd	%xmm4, %xmm0, %xmm0	# tmp133, _17, tmp126
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vcvttsd2sil	%xmm0, %edi	# tmp126, tmp128
	movw	%di, (%rax,%rbx,2)	# tmp128, MEM[(short int *)_3 + ivtmp.172_97 * 2]
# canny.c:355:       for(c=0;c<cols;c++,pos++){
	incq	%rbx	# ivtmp.172
	cmpq	%rbp, %rbx	# _102, ivtmp.172
	jne	.L90	#,
.L89:
# canny.c:354:    for(r=0,pos=0;r<rows;r++){
	incl	%edx	# r
	addl	%r15d, %ecx	# cols, pos
# canny.c:354:    for(r=0,pos=0;r<rows;r++){
	cmpl	%edx, %r14d	# r, rows
	jne	.L85	#,
.L94:
# canny.c:362: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L93:
	.cfi_restore_state
	movq	%rsi, 24(%rsp)	# cols, %sfp
	movl	%ecx, 20(%rsp)	# pos, %sfp
	movl	%edx, 16(%rsp)	# r, %sfp
	movq	%rax, 8(%rsp)	# _3, %sfp
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	call	sqrt@PLT	#
# canny.c:355:       for(c=0;c<cols;c++,pos++){
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp125
	vxorps	%xmm2, %xmm2, %xmm2	# tmp142
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vmovsd	.LC8(%rip), %xmm4	#, tmp133
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	movq	8(%rsp), %rax	# %sfp, _3
# canny.c:355:       for(c=0;c<cols;c++,pos++){
	movl	16(%rsp), %edx	# %sfp, r
	movl	20(%rsp), %ecx	# %sfp, pos
	movq	24(%rsp), %rsi	# %sfp, cols
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vaddsd	%xmm4, %xmm0, %xmm0	# tmp133, tmp141, tmp129
# canny.c:358:          (*magnitude)[pos] = (short)(0.5 + sqrt((float)sq1 + (float)sq2));
	vcvttsd2sil	%xmm0, %edi	# tmp129, tmp131
	movw	%di, (%rax,%rbx,2)	# tmp131, MEM[(short int *)_3 + ivtmp.172_97 * 2]
# canny.c:355:       for(c=0;c<cols;c++,pos++){
	incq	%rbx	# ivtmp.172
	cmpq	%rbp, %rbx	# _102, ivtmp.172
	jne	.L90	#,
	jmp	.L89	#
.L83:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC7(%rip), %rdi	#, tmp119
	movl	$38, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:351:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE51:
	.size	magnitude_x_y, .-magnitude_x_y
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"\n===================== Derivate_x_y ====================="
	.align 8
.LC11:
	.string	"Error allocating the delta_x image.\n"
	.align 8
.LC12:
	.string	"Tiempo primer bloque serial: \t\t%.5g\tsegundos\n"
	.align 8
.LC13:
	.string	"Tiempo segundo bloque serial: \t\t%.5g\tsegundos\n"
	.align 8
.LC14:
	.string	"Tiempo total funcion: \t\t\t%.5g\tsegundos\n"
	.align 8
.LC15:
	.string	"========================================================"
	.text
	.p2align 4
	.globl	derrivative_x_y
	.type	derrivative_x_y, @function
derrivative_x_y:
.LFB52:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13	#,
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r13)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	movq	%rdi, %rbx	# tmp1196, smoothedim
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC9(%rip), %rdi	#, tmp832
# canny.c:378: {
	subq	$168, %rsp	#,
# canny.c:378: {
	movl	%esi, -100(%rbp)	# rows, %sfp
	movl	%edx, %r12d	# tmp1198, cols
	movq	%rcx, %r13	# tmp1199, delta_x
	movl	%esi, %r15d	# tmp1197, rows
	movq	%r8, %r14	# tmp1200, delta_y
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1216
	movq	%rax, -56(%rbp)	# tmp1216, D.10829
	xorl	%eax, %eax	# tmp1216
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	leaq	-80(%rbp), %rax	#, tmp1186
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	imull	%r12d, %r15d	# cols, _1
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movl	$1, %edi	#,
	movq	%rax, %rsi	# tmp1186,
	movq	%rax, -136(%rbp)	# tmp1186, %sfp
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1318
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movl	$2, %esi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-72(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1318, tmp1204
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp1204, tmp834
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_142].tv_sec, tmp1319, tmp1205
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp835, tmp834
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movslq	%r15d, %rax	# _1, _2
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movl	%r15d, -120(%rbp)	# _1, %sfp
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movq	%rax, %rdi	# _2,
	movq	%rax, -168(%rbp)	# _2, %sfp
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovsd	%xmm1, -176(%rbp)	# tmp834, %sfp
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	call	calloc@PLT	#
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movq	%rax, 0(%r13)	# tmp837, *delta_x_113(D)
# canny.c:387:    if(((*delta_x) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	testq	%rax, %rax	# tmp837
	je	.L209	#,
# canny.c:391:    if(((*delta_y) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movq	-168(%rbp), %rdi	# %sfp,
	movl	$2, %esi	#,
	call	calloc@PLT	#
# canny.c:391:    if(((*delta_y) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	movq	%rax, (%r14)	# tmp840, *delta_y_116(D)
# canny.c:391:    if(((*delta_y) = (short *) calloc(rows*cols, sizeof(short))) == NULL){
	testq	%rax, %rax	# tmp840
	je	.L209	#,
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-136(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp1324
# canny.c:403:    for(r=0;r<rows;r++){
	movl	-100(%rbp), %edi	# %sfp,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-72(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1324, tmp1206
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp1206, tmp844
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_142].tv_sec, tmp1325, tmp1207
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp845, tmp844
	vmovsd	%xmm1, -184(%rbp)	# tmp844, %sfp
# canny.c:403:    for(r=0;r<rows;r++){
	testl	%edi, %edi	#
	jle	.L111	#,
	leal	-3(%r12), %edi	#, _771
# canny.c:405:       (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos];
	movq	0(%r13), %rax	# *delta_x_113(D), _18
	movl	%edi, -104(%rbp)	# _771, %sfp
	cmpl	$6, %edi	#, _771
	jbe	.L102	#,
	movq	%rax, %rdx	# _18, tmp857
	subq	%rbx, %rdx	# smoothedim, tmp857
	cmpq	$32, %rdx	#, tmp857
	ja	.L210	#,
.L102:
	movl	-104(%rbp), %edx	# %sfp, _771
	movl	-100(%rbp), %r13d	# %sfp, rows
	movslq	%r12d, %rcx	# cols, cols
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	xorl	%r8d, %r8d	# ivtmp.415
	addq	%rcx, %rcx	# _1286
	movl	$1, %r9d	#, ivtmp.407
# canny.c:403:    for(r=0;r<rows;r++){
	xorl	%r10d, %r10d	# r
	leal	-2(%r12), %r11d	#, tmp1189
	leaq	4(%rdx,%rdx), %rdi	#, ivtmp.412
	.p2align 4
	.p2align 3
.L114:
# canny.c:405:       (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos];
	movzwl	2(%rbx,%r8), %edx	# MEM[(short int *)smoothedim_121(D) + 2B + ivtmp.415_1280 * 1], MEM[(short int *)smoothedim_121(D) + 2B + ivtmp.415_1280 * 1]
	subw	(%rbx,%r8), %dx	# MEM[(short int *)smoothedim_121(D) + ivtmp.415_1280 * 1], tmp925
# canny.c:405:       (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos];
	movw	%dx, (%rax,%r8)	# tmp925, MEM[(short int *)_18 + ivtmp.415_1280 * 1]
# canny.c:406:       pos++;
	movl	%r9d, %edx	# ivtmp.407, pos
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	$2, %r12d	#, cols
	jle	.L112	#,
	movslq	%r9d, %rdx	# ivtmp.407, pos
	addq	%rdx, %rdx	# ivtmp.401
	.p2align 4
	.p2align 3
.L113:
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	2(%rbx,%rdx), %esi	# MEM[(short int *)smoothedim_121(D) + 2B + ivtmp.401_1304 * 1], MEM[(short int *)smoothedim_121(D) + 2B + ivtmp.401_1304 * 1]
	subw	-2(%rbx,%rdx), %si	# MEM[(short int *)smoothedim_121(D) + -2B + ivtmp.401_1304 * 1], tmp930
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%si, (%rax,%rdx)	# tmp930, MEM[(short int *)_18 + ivtmp.401_1304 * 1]
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	addq	$2, %rdx	#, ivtmp.401
	cmpq	%rdx, %rdi	# ivtmp.401, ivtmp.412
	jne	.L113	#,
	leal	(%r11,%r9), %edx	#, pos
.L112:
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movslq	%edx, %rdx	# pos, pos
# canny.c:403:    for(r=0;r<rows;r++){
	incl	%r10d	# r
# canny.c:403:    for(r=0;r<rows;r++){
	addl	%r12d, %r9d	# cols, ivtmp.407
	addq	%rcx, %rdi	# _1286, ivtmp.412
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	addq	%rdx, %rdx	# _824
# canny.c:403:    for(r=0;r<rows;r++){
	addq	%rcx, %r8	# _1286, ivtmp.415
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movzwl	(%rbx,%rdx), %esi	# *_825, *_825
	subw	-2(%rbx,%rdx), %si	# *_829, tmp936
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movw	%si, (%rax,%rdx)	# tmp936, *_833
# canny.c:403:    for(r=0;r<rows;r++){
	cmpl	%r10d, %r13d	# r, rows
	jne	.L114	#,
.L111:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-136(%rbp), %r15	# %sfp, tmp1186
	movl	$1, %edi	#,
	movq	%r15, %rsi	# tmp1186,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp1328
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC12(%rip), %rsi	#, tmp852
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm4, %xmm1	# MEM[(struct timespec *)_142].tv_sec, tmp1329, tmp1209
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-72(%rbp), %xmm4, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1328, tmp1208
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp849, _155
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:413:    double secs_derivate_x = (fin_derivate_x - ini_derivate_x);
	vsubsd	-184(%rbp), %xmm0, %xmm0	# %sfp, _155, secs_derivate_x
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%r15, %rsi	# tmp1186,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp1331
	vcvtsi2sdq	-72(%rbp), %xmm4, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1331, tmp1210
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp1210, tmp854
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm4, %xmm0	# MEM[(struct timespec *)_142].tv_sec, tmp1332, tmp1211
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp855, tmp854
	vmovsd	%xmm1, -88(%rbp)	# tmp854, %sfp
# canny.c:434:     for(r=0;r<cols;r++)
	testl	%r12d, %r12d	# cols
	jle	.L101	#,
	leal	-1(%r12), %eax	#, _624
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movq	(%r14), %rsi	# *delta_y_116(D), _60
	movl	%r12d, %edi	# cols, niters.271
	movslq	%r12d, %rcx	# cols, cols
	cmpl	$6, %eax	#, _624
	jbe	.L118	#,
	leaq	2(%rcx,%rcx), %rdx	#, _628
	movq	%rsi, %r8	# _60, tmp940
	leaq	(%rbx,%rdx), %r9	#, tmp939
	subq	%r9, %r8	# tmp939, tmp940
	cmpq	$28, %r8	#, tmp940
	jbe	.L118	#,
	leaq	2(%rbx), %r9	#, tmp943
	movq	%rsi, %r8	# _60, tmp944
	subq	%r9, %r8	# tmp943, tmp944
	cmpq	$28, %r8	#, tmp944
	jbe	.L118	#,
	cmpl	$14, %eax	#, _624
	jbe	.L151	#,
	leaq	-2(%rbx,%rdx), %rdi	#, vectp.260
	movl	%r12d, %edx	# cols, bnd.256
	xorl	%eax, %eax	# ivtmp.383
	shrl	$4, %edx	#,
	salq	$5, %rdx	#, _1305
	.p2align 4
	.p2align 3
.L120:
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	vmovdqu	(%rdi,%rax), %ymm6	# MEM <vector(16) short int> [(short int *)vectp.260_688 + ivtmp.383_1308 * 1], tmp1371
	vpsubw	(%rbx,%rax), %ymm6, %ymm0	# MEM <vector(16) short int> [(short int *)smoothedim_121(D) + ivtmp.383_1308 * 1], tmp1371, vect__59.267
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	vmovdqu	%ymm0, (%rsi,%rax)	# vect__59.267, MEM <vector(16) short int> [(short int *)_60 + ivtmp.383_1308 * 1]
	addq	$32, %rax	#, ivtmp.383
	cmpq	%rax, %rdx	# ivtmp.383, _1305
	jne	.L120	#,
	movl	%r12d, %eax	# cols, tmp.274
	andl	$-16, %eax	#, tmp.274
	movl	%eax, %edx	# tmp.274,
	cmpl	%eax, %r12d	# tmp.274, cols
	je	.L101	#,
	movl	%r12d, %edi	# cols, niters.271
	subl	%eax, %edi	# tmp.274, niters.271
	leal	-1(%rdi), %r8d	#, tmp953
	cmpl	$6, %r8d	#, tmp953
	jbe	.L123	#,
.L119:
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addq	%rdx, %rcx	# _740, tmp954
	vmovdqu	(%rbx,%rcx,2), %xmm0	# MEM <vector(8) short int> [(short int *)vectp.276_738], vect__665.277
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	vpsubw	(%rbx,%rdx,2), %xmm0, %xmm0	# MEM <vector(8) short int> [(short int *)vectp_smoothedim.280_747], vect__665.277, vect__672.283
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	vmovdqu	%xmm0, (%rsi,%rdx,2)	# vect__672.283, MEM <vector(8) short int> [(short int *)vectp.286_756]
	movl	%edi, %edx	# niters.271, niters_vector_mult_vf.273
	andl	$-8, %edx	#, niters_vector_mult_vf.273
	addl	%edx, %eax	# niters_vector_mult_vf.273, tmp.274
	andl	$7, %edi	#, niters.271
	je	.L101	#,
.L123:
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	leal	(%r12,%rax), %ecx	#, tmp961
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movslq	%eax, %rdi	# tmp.274, tmp.274
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movslq	%ecx, %rcx	# tmp961, tmp962
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	leaq	(%rdi,%rdi), %rdx	#, _975
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_971, *_971
	subw	(%rbx,%rdi,2), %cx	# *_976, tmp965
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, (%rsi,%rdx)	# tmp965, *_980
# canny.c:434:     for(r=0;r<cols;r++)
	leal	1(%rax), %ecx	#, r
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%ecx, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %ecx	# cols, tmp967
	movslq	%ecx, %rcx	# tmp967, tmp968
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_989, *_989
	subw	2(%rbx,%rdx), %cx	# *_994, tmp971
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, 2(%rsi,%rdx)	# tmp971, *_998
# canny.c:434:     for(r=0;r<cols;r++)
	leal	2(%rax), %ecx	#, r
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%ecx, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %ecx	# cols, tmp973
	movslq	%ecx, %rcx	# tmp973, tmp974
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_1007, *_1007
	subw	4(%rbx,%rdx), %cx	# *_1012, tmp977
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, 4(%rsi,%rdx)	# tmp977, *_1016
# canny.c:434:     for(r=0;r<cols;r++)
	leal	3(%rax), %ecx	#, r
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%ecx, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %ecx	# cols, tmp979
	movslq	%ecx, %rcx	# tmp979, tmp980
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_1025, *_1025
	subw	6(%rbx,%rdx), %cx	# *_1030, tmp983
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, 6(%rsi,%rdx)	# tmp983, *_1034
# canny.c:434:     for(r=0;r<cols;r++)
	leal	4(%rax), %ecx	#, r
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%ecx, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %ecx	# cols, tmp985
	movslq	%ecx, %rcx	# tmp985, tmp986
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_1043, *_1043
	subw	8(%rbx,%rdx), %cx	# *_1048, tmp989
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, 8(%rsi,%rdx)	# tmp989, *_1052
# canny.c:434:     for(r=0;r<cols;r++)
	leal	5(%rax), %ecx	#, r
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%ecx, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %ecx	# cols, tmp991
# canny.c:434:     for(r=0;r<cols;r++)
	addl	$6, %eax	#, r
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movslq	%ecx, %rcx	# tmp991, tmp992
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rcx,2), %ecx	# *_1061, *_1061
	subw	10(%rbx,%rdx), %cx	# *_1066, tmp995
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%cx, 10(%rsi,%rdx)	# tmp995, *_1070
# canny.c:434:     for(r=0;r<cols;r++)
	cmpl	%eax, %r12d	# r, cols
	jle	.L101	#,
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	addl	%r12d, %eax	# cols, tmp997
	cltq
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rbx,%rax,2), %eax	# *_714, *_714
	subw	12(%rbx,%rdx), %ax	# *_719, tmp1001
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%ax, 12(%rsi,%rdx)	# tmp1001, *_723
	.p2align 4
	.p2align 3
.L101:
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	movl	-120(%rbp), %eax	# %sfp, tmp.210
	subl	%r12d, %eax	# cols, tmp.210
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%eax, %r12d	# tmp.210, cols
	jge	.L117	#,
	movl	%eax, %edx	# tmp.210, niters.239
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movq	(%r14), %r9	# *delta_y_116(D), _76
	movslq	%r12d, %rcx	# cols, cols
	subl	%r12d, %edx	# cols,
	leal	-1(%rdx), %r10d	#, _438
	cmpl	$6, %r10d	#, _438
	jbe	.L129	#,
	leaq	(%rcx,%rcx), %rsi	#, _441
	leaq	0(,%rcx,4), %rdi	#, _444
	leaq	(%r9,%rsi), %r8	#, _442
	leaq	2(%rbx,%rdi), %r13	#, tmp1009
	movq	%r8, %r11	# _442, tmp1010
	subq	%r13, %r11	# tmp1009, tmp1010
	cmpq	$28, %r11	#, tmp1010
	jbe	.L129	#,
	leaq	2(%rbx), %r13	#, tmp1013
	movq	%r8, %r11	# _442, tmp1014
	subq	%r13, %r11	# tmp1013, tmp1014
	cmpq	$28, %r11	#, tmp1014
	jbe	.L129	#,
	cmpl	$14, %r10d	#, _438
	jbe	.L152	#,
	movl	%edx, %r11d	# niters.239, bnd.224
	addq	%rbx, %rdi	# smoothedim, vectp.228
	xorl	%r10d, %r10d	# ivtmp.365
	shrl	$4, %r11d	#,
	salq	$5, %r11	#, _1316
	.p2align 4
	.p2align 3
.L131:
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	vmovdqu	(%rdi,%r10), %ymm7	# MEM <vector(16) short int> [(short int *)vectp.228_519 + ivtmp.365_1317 * 1], tmp1380
	vpsubw	(%rbx,%r10), %ymm7, %ymm0	# MEM <vector(16) short int> [(short int *)smoothedim_121(D) + ivtmp.365_1317 * 1], tmp1380, vect__75.235
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	vmovdqu	%ymm0, (%r8,%r10)	# vect__75.235, MEM <vector(16) short int> [(short int *)_442 + ivtmp.365_1317 * 1]
	addq	$32, %r10	#, ivtmp.365
	cmpq	%r10, %r11	# ivtmp.365, _1316
	jne	.L131	#,
	movl	%edx, %r8d	# niters.239, niters_vector_mult_vf.225
	andl	$-16, %r8d	#,
	leal	(%r8,%r12), %edi	#, tmp.242
	testb	$15, %dl	#, niters.239
	je	.L117	#,
	subl	%r8d, %edx	# niters_vector_mult_vf.225, niters.239
	leal	-1(%rdx), %r10d	#, tmp1023
	cmpl	$6, %r10d	#, tmp1023
	jbe	.L134	#,
.L130:
	addq	%r8, %rsi	# _582, _583
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	vmovdqu	(%rbx,%rsi,2), %xmm7	# MEM <vector(8) short int> [(short int *)vectp.244_579], tmp1382
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subq	%rcx, %rsi	# cols, tmp1027
	movl	%edx, %ecx	# niters.239, niters_vector_mult_vf.241
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	vpsubw	(%rbx,%r8,2), %xmm7, %xmm0	# MEM <vector(8) short int> [(short int *)vectp_smoothedim.248_589], tmp1382, vect__498.251
	andl	$-8, %ecx	#, niters_vector_mult_vf.241
	addl	%ecx, %edi	# niters_vector_mult_vf.241, tmp.242
	andl	$7, %edx	#, niters.239
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	vmovdqu	%xmm0, (%r9,%rsi,2)	# vect__498.251, MEM <vector(8) short int> [(short int *)vectp.254_598]
	je	.L117	#,
.L134:
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movl	%edi, %esi	# tmp.242, tmp1033
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdi), %edx	#, tmp1031
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%edi, %rcx	# tmp.242, tmp.242
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1033
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%edx, %rdx	# tmp1031, tmp1032
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	addq	%rcx, %rcx	# _291
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1033, tmp1034
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rdx,2), %edx	# *_495, *_495
	subw	(%rbx,%rsi,2), %dx	# *_501, tmp1037
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%dx, (%r9,%rcx)	# tmp1037, *_290
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	leal	1(%rdi), %edx	#, r
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edx, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdx), %esi	#, tmp1039
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edx	# cols, tmp1041
	movslq	%edx, %rdx	# tmp1041, tmp1042
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1039, tmp1040
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_281, *_281
	subw	(%rbx,%rdx,2), %si	# *_706, *_281
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	leal	2(%rdi), %edx	#, r
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 2(%r9,%rcx)	# tmp1045, *_950
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edx, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdx), %esi	#, tmp1047
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edx	# cols, tmp1049
	movslq	%edx, %rdx	# tmp1049, tmp1050
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1047, tmp1048
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_757, *_757
	subw	(%rbx,%rdx,2), %si	# *_618, *_757
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	leal	3(%rdi), %edx	#, r
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 4(%r9,%rcx)	# tmp1053, *_432
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edx, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdx), %esi	#, tmp1055
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edx	# cols, tmp1057
	movslq	%edx, %rdx	# tmp1057, tmp1058
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1055, tmp1056
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_406, *_406
	subw	(%rbx,%rdx,2), %si	# *_355, *_406
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	leal	4(%rdi), %edx	#, r
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 6(%r9,%rcx)	# tmp1061, *_765
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edx, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdx), %esi	#, tmp1063
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edx	# cols, tmp1065
	movslq	%edx, %rdx	# tmp1065, tmp1066
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1063, tmp1064
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_236, *_236
	subw	(%rbx,%rdx,2), %si	# *_422, *_236
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	leal	5(%rdi), %edx	#, r
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 8(%r9,%rcx)	# tmp1069, *_612
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edx, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdx), %esi	#, tmp1071
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edx	# cols, tmp1073
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	addl	$6, %edi	#, r
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1071, tmp1072
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%edx, %rdx	# tmp1073, tmp1074
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_675, *_675
	subw	(%rbx,%rdx,2), %si	# *_613, *_675
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 10(%r9,%rcx)	# tmp1077, *_425
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	cmpl	%edi, %eax	# r, tmp.210
	jle	.L117	#,
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	leal	(%r12,%rdi), %esi	#, tmp1079
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	subl	%r12d, %edi	# cols, tmp1081
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1079, tmp1080
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movslq	%edi, %rdx	# tmp1081, tmp1082
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rbx,%rsi,2), %esi	# *_550, *_550
	subw	(%rbx,%rdx,2), %si	# *_556, *_550
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%si, 12(%r9,%rcx)	# tmp1085, *_562
	.p2align 4
	.p2align 3
.L117:
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%eax, -120(%rbp)	# tmp.210, %sfp
	jle	.L128	#,
	leal	-1(%r12), %r11d	#, _351
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movq	(%r14), %rdx	# *delta_y_116(D), _95
	movl	%r12d, %r10d	# cols, niters.207
	movslq	%r12d, %rcx	# cols, cols
	cmpl	$6, %r11d	#, _351
	jbe	.L139	#,
	movq	-168(%rbp), %rsi	# %sfp, _2
	subq	%rcx, %rsi	# cols, _2
	leaq	(%rsi,%rsi), %rdi	#, _346
	movq	%rsi, %r9	# _347, _340
	leaq	(%rdx,%rdi), %r8	#, _345
	leaq	2(%rbx,%rdi), %r14	#, tmp1110
	subq	%rcx, %r9	# cols, _340
	movq	%r8, %r15	# _345, tmp1111
	leaq	2(%r9,%r9), %r13	#, _338
	subq	%r14, %r15	# tmp1110, tmp1111
	cmpq	$28, %r15	#, tmp1111
	jbe	.L139	#,
	leaq	(%rbx,%r13), %r14	#, tmp1114
	movq	%r8, %r15	# _345, tmp1115
	subq	%r14, %r15	# tmp1114, tmp1115
	cmpq	$28, %r15	#, tmp1115
	jbe	.L139	#,
	cmpl	$14, %r11d	#, _351
	jbe	.L153	#,
	shrl	$4, %r10d	#,
	addq	%rbx, %rdi	# smoothedim, vectp.196
	leaq	-2(%rbx,%r13), %r11	#, vectp.200
	xorl	%ecx, %ecx	# ivtmp.346
	salq	$5, %r10	#, _1335
	.p2align 4
	.p2align 3
.L141:
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	vmovdqu	(%rdi,%rcx), %ymm6	# MEM <vector(16) short int> [(short int *)vectp.196_262 + ivtmp.346_1336 * 1], tmp1402
	vpsubw	(%r11,%rcx), %ymm6, %ymm0	# MEM <vector(16) short int> [(short int *)vectp.200_253 + ivtmp.346_1336 * 1], tmp1402, vect__94.203
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	vmovdqu	%ymm0, (%r8,%rcx)	# vect__94.203, MEM <vector(16) short int> [(short int *)_345 + ivtmp.346_1336 * 1]
	addq	$32, %rcx	#, ivtmp.346
	cmpq	%r10, %rcx	# _1335, ivtmp.346
	jne	.L141	#,
	movl	%r12d, %edi	# cols, niters_vector_mult_vf.193
	andl	$-16, %edi	#,
	addl	%edi, %eax	# niters_vector_mult_vf.193, tmp.210
	cmpl	%r12d, %edi	# cols, niters_vector_mult_vf.193
	je	.L128	#,
	movl	%r12d, %r10d	# cols, niters.207
	subl	%edi, %r10d	# niters_vector_mult_vf.193, niters.207
	leal	-1(%r10), %ecx	#, tmp1124
	cmpl	$6, %ecx	#, tmp1124
	jbe	.L144	#,
.L140:
	leaq	(%rsi,%rdi), %rcx	#, tmp1125
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	addq	%rdi, %r9	# _383, tmp1127
	addq	%rcx, %rcx	# _385
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	vmovdqu	(%rbx,%rcx), %xmm7	# MEM <vector(8) short int> [(short int *)vectp.212_379], tmp1405
	vpsubw	(%rbx,%r9,2), %xmm7, %xmm0	# MEM <vector(8) short int> [(short int *)vectp.216_390], tmp1405, vect__281.219
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	vmovdqu	%xmm0, (%rdx,%rcx)	# vect__281.219, MEM <vector(8) short int> [(short int *)vectp.222_405]
	movl	%r10d, %ecx	# niters.207, niters_vector_mult_vf.209
	andl	$-8, %ecx	#, niters_vector_mult_vf.209
	addl	%ecx, %eax	# niters_vector_mult_vf.209, tmp.210
	andl	$7, %r10d	#, niters.207
	je	.L128	#,
.L144:
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movl	%eax, %edi	# tmp.210, tmp1133
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%eax, %rcx	# tmp.210, tmp.210
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	movl	-120(%rbp), %r14d	# %sfp, _1
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %edi	# cols, tmp1133
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	addq	%rcx, %rcx	# _50
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%edi, %rdi	# tmp1133, tmp1134
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	(%rbx,%rcx), %esi	# *_51, *_51
	subw	(%rbx,%rdi,2), %si	# *_57, tmp1137
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%si, (%rdx,%rcx)	# tmp1137, *_62
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	leal	1(%rax), %esi	#, r
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%esi, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1139
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	2(%rbx,%rcx), %r8d	# *_25, *_25
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1139, tmp1140
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rsi,2), %r8w	# *_31, *_25
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	leal	2(%rax), %esi	#, r
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%r8w, 2(%rdx,%rcx)	# tmp1143, *_134
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%esi, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1145
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	4(%rbx,%rcx), %r8d	# *_68, *_68
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1145, tmp1146
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rsi,2), %r8w	# *_74, *_68
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	leal	3(%rax), %esi	#, r
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%r8w, 4(%rdx,%rcx)	# tmp1149, *_79
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%esi, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1151
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	6(%rbx,%rcx), %r8d	# *_665, *_665
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1151, tmp1152
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rsi,2), %r8w	# *_671, *_665
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	leal	4(%rax), %esi	#, r
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%r8w, 6(%rdx,%rcx)	# tmp1155, *_676
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%esi, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1157
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	8(%rbx,%rcx), %r8d	# *_848, *_848
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1157, tmp1158
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rsi,2), %r8w	# *_854, *_848
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	leal	5(%rax), %esi	#, r
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%r8w, 8(%rdx,%rcx)	# tmp1161, *_859
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%esi, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %esi	# cols, tmp1163
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	10(%rbx,%rcx), %r8d	# *_89, *_89
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	addl	$6, %eax	#, r
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movslq	%esi, %rsi	# tmp1163, tmp1164
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rsi,2), %r8w	# *_96, *_89
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%r8w, 10(%rdx,%rcx)	# tmp1167, *_486
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	cmpl	%eax, %r14d	# r, _1
	jle	.L128	#,
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subl	%r12d, %eax	# cols, tmp1169
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	12(%rbx,%rcx), %esi	# *_203, *_203
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	cltq
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	subw	(%rbx,%rax,2), %si	# *_196, *_203
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%si, 12(%rdx,%rcx)	# tmp1173, *_108
	.p2align 4
	.p2align 3
.L128:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-136(%rbp), %rbx	# %sfp, tmp1186
	movl	$1, %edi	#,
	vzeroupper
	movq	%rbx, %rsi	# tmp1186,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1391
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC13(%rip), %rsi	#, tmp1099
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm5, %xmm1	# MEM[(struct timespec *)_142].tv_sec, tmp1392, tmp1213
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-72(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1391, tmp1212
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp1096, _167
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:444:    double secs_derivate_y = (fin_derivate_y - ini_derivate_y);
	vsubsd	-88(%rbp), %xmm0, %xmm0	# %sfp, _167, secs_derivate_y
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbx, %rsi	# tmp1186,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1394
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC14(%rip), %rsi	#, tmp1105
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-72(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_142].tv_nsec, tmp1394, tmp1214
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-80(%rbp), %xmm5, %xmm1	# MEM[(struct timespec *)_142].tv_sec, tmp1395, tmp1215
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp1102, _173
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:447:    double secs_derivate = (fin_derivate - ini_derivate);
	vsubsd	-176(%rbp), %xmm0, %xmm0	# %sfp, _173, secs_derivate
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	movq	-56(%rbp), %rax	# D.10829, tmp1217
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp1217
	jne	.L211	#,
# canny.c:451: }
	addq	$168, %rsp	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC15(%rip), %rdi	#, tmp1107
# canny.c:451: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-16(%r13), %rsp	#,
	.cfi_def_cfa 7, 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	puts@PLT	#
.L210:
	.cfi_restore_state
	leal	-2(%r12), %r13d	#, niters.304
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	-1(%r12), %edi	#, _329
	movslq	%r12d, %rcx	# cols, cols
	leaq	2(%rax), %r8	#, ivtmp.437
	movl	%edi, %r10d	# _329, ivtmp.431
	movl	%r13d, %r9d	# niters.304, bnd.288
	movl	%r13d, %edi	# niters.304, niters.304
	movl	%r13d, -160(%rbp)	# niters.304, %sfp
	andl	$-16, %r13d	#, niters_vector_mult_vf.289
	shrl	$4, %r9d	#,
	leaq	(%rcx,%rcx), %rdx	#, _1266
	andl	$15, %edi	#, tmp1190
	leal	1(%r13), %esi	#, tmp.290
	salq	$5, %r9	#, _1270
	movl	%r13d, -140(%rbp)	# niters_vector_mult_vf.289, %sfp
	movq	%rdx, -112(%rbp)	# _1266, %sfp
	movl	%esi, -148(%rbp)	# tmp.290, %sfp
# canny.c:406:       pos++;
	movl	$2, %esi	#, tmp866
	movl	%edi, -144(%rbp)	# tmp1190, %sfp
	movq	%rbx, %rdx	# smoothedim, ivtmp.429
	subl	%r12d, %esi	# cols, tmp866
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	xorl	%r11d, %r11d	# ivtmp.438
# canny.c:403:    for(r=0;r<rows;r++){
	xorl	%r15d, %r15d	# r
	movl	%r10d, %edi	# ivtmp.431, _329
# canny.c:406:       pos++;
	movl	%esi, -116(%rbp)	# tmp866, %sfp
	movl	%r12d, %esi	# cols, _904
	movq	%r9, -96(%rbp)	# _1270, %sfp
	movl	%r12d, -88(%rbp)	# cols, %sfp
	subl	%r13d, %esi	# niters_vector_mult_vf.289, _904
	movq	%r14, -192(%rbp)	# delta_y, %sfp
	movq	%rcx, -128(%rbp)	# cols, %sfp
	leal	-2(%rsi), %r13d	#, niters.304
	subl	$3, %esi	#, tmp1193
	movl	%r13d, -152(%rbp)	# niters.304, %sfp
	movl	%esi, -156(%rbp)	# tmp1193, %sfp
	.p2align 4
	.p2align 3
.L110:
# canny.c:405:       (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos];
	movzwl	2(%rdx), %ecx	# MEM[(short int *)_1243 + 2B], MEM[(short int *)_1243 + 2B]
	subw	(%rdx), %cx	# MEM[(short int *)_1243], tmp863
# canny.c:405:       (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos];
	movw	%cx, -2(%r8)	# tmp863, MEM[(short int *)_1249 + -2B]
# canny.c:406:       pos++;
	movl	-116(%rbp), %ecx	# %sfp, tmp865
	addl	%r10d, %ecx	# ivtmp.431, tmp.308
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	$2, -88(%rbp)	#, %sfp
	jle	.L103	#,
	cmpl	$14, -104(%rbp)	#, %sfp
	jbe	.L104	#,
	movq	-96(%rbp), %r9	# %sfp, _1270
	leaq	4(%rdx), %r12	#, vectp.293
	xorl	%esi, %esi	# ivtmp.419
	.p2align 4
	.p2align 3
.L105:
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	vmovdqu	(%r12,%rsi), %ymm2	# MEM <vector(16) short int> [(short int *)vectp.293_875 + ivtmp.419_1273 * 1], tmp1353
	vpsubw	(%rdx,%rsi), %ymm2, %ymm0	# MEM <vector(16) short int> [(short int *)_1243 + ivtmp.419_1273 * 1], tmp1353, vect__32.300
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	vmovdqu	%ymm0, (%r8,%rsi)	# vect__32.300, MEM <vector(16) short int> [(short int *)_1249 + ivtmp.419_1273 * 1]
	addq	$32, %rsi	#, ivtmp.419
	cmpq	%rsi, %r9	# ivtmp.419, _1270
	jne	.L105	#,
	movl	-140(%rbp), %r12d	# %sfp,
	movl	-144(%rbp), %esi	# %sfp,
	movq	%r9, -96(%rbp)	# _1270, %sfp
	addl	%r12d, %ecx	# niters_vector_mult_vf.289, tmp.308
	testl	%esi, %esi	#
	je	.L107	#,
	cmpl	$6, -156(%rbp)	#, %sfp
	movl	-152(%rbp), %r13d	# %sfp, niters.304
	movl	-148(%rbp), %esi	# %sfp, c
	jbe	.L108	#,
.L148:
	leaq	2(%r11,%r12), %r12	#, tmp874
	addq	%r12, %r12	# _944
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	vmovdqu	(%rbx,%r12), %xmm3	# MEM <vector(8) short int> [(short int *)vectp.310_939], tmp1357
	vpsubw	-4(%rbx,%r12), %xmm3, %xmm0	# MEM <vector(8) short int> [(short int *)vectp.314_949], tmp1357, vect__854.317
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	vmovdqu	%xmm0, -2(%rax,%r12)	# vect__854.317, MEM <vector(8) short int> [(short int *)vectp.320_960]
	movl	%r13d, %r12d	# niters.304, _935
	andl	$-8, %r12d	#, _935
	addl	%r12d, %esi	# _935, tmp.307
	addl	%r12d, %ecx	# _935, tmp.308
	andl	$7, %r13d	#, niters.304
	je	.L107	#,
.L108:
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movslq	%ecx, %rcx	# tmp.308, tmp.308
	leaq	2(%rcx,%rcx), %rcx	#, _1079
	leaq	(%rbx,%rcx), %r14	#, _1080
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	(%r14), %r12d	# *_1080, *_1080
	subw	-4(%rbx,%rcx), %r12w	# *_1085, tmp883
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r12w, -2(%rax,%rcx)	# tmp883, *_1089
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	1(%rsi), %r12d	#, c
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%r12d, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	2(%rbx,%rcx), %r9d	# *_1100, tmp888
	subw	-2(%rbx,%rcx), %r9w	# *_1105, tmp888
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	2(%rsi), %r13d	#, c
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r9w, (%rax,%rcx)	# tmp888, *_1109
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%r13d, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	4(%rbx,%rcx), %r13d	# *_1120, *_1120
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	3(%rsi), %r12d	#, c
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	subw	(%r14), %r13w	# *_1080, tmp893
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r13w, 2(%rax,%rcx)	# tmp893, *_1129
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%r12d, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	6(%rbx,%rcx), %r12d	# *_1140, *_1140
	subw	2(%rbx,%rcx), %r12w	# *_1145, tmp898
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r12w, 4(%rax,%rcx)	# tmp898, *_1149
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	4(%rsi), %r12d	#, c
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%r12d, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	8(%rbx,%rcx), %r12d	# *_1160, *_1160
	subw	4(%rbx,%rcx), %r12w	# *_1165, tmp903
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r12w, 6(%rax,%rcx)	# tmp903, *_1169
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	leal	5(%rsi), %r12d	#, c
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%r12d, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	10(%rbx,%rcx), %r12d	# *_1180, *_1180
	subw	6(%rbx,%rcx), %r12w	# *_1185, tmp908
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	addl	$6, %esi	#, c
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	leaq	10(%rcx), %r13	#, _1179
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%r12w, 8(%rax,%rcx)	# tmp908, *_1189
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	cmpl	%esi, %edi	# c, _329
	jle	.L107	#,
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movzwl	12(%rbx,%rcx), %esi	# *_911, *_911
	subw	8(%rbx,%rcx), %si	# *_916, *_911
# canny.c:408:          (*delta_x)[pos] = smoothedim[pos+1] - smoothedim[pos-1];
	movw	%si, (%rax,%r13)	# tmp913, *_920
.L107:
	movl	%r10d, %ecx	# ivtmp.431, tmp.308
.L103:
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movslq	%ecx, %rcx	# tmp.308, tmp.308
# canny.c:403:    for(r=0;r<rows;r++){
	incl	%r15d	# r
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	addq	%rcx, %rcx	# _37
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movzwl	(%rbx,%rcx), %esi	# *_38, *_38
	subw	-2(%rbx,%rcx), %si	# *_42, tmp918
# canny.c:410:       (*delta_x)[pos] = smoothedim[pos] - smoothedim[pos-1];
	movw	%si, (%rax,%rcx)	# tmp918, *_46
# canny.c:403:    for(r=0;r<rows;r++){
	movq	-112(%rbp), %rcx	# %sfp, _1266
	movl	-88(%rbp), %esi	# %sfp, cols
	addq	%rcx, %rdx	# _1266, ivtmp.429
	addq	%rcx, %r8	# _1266, ivtmp.437
	movq	-128(%rbp), %rcx	# %sfp, cols
	addl	%esi, %r10d	# cols, ivtmp.431
	addq	%rcx, %r11	# cols, ivtmp.438
	cmpl	%r15d, -100(%rbp)	# r, %sfp
	jne	.L110	#,
	movq	-192(%rbp), %r14	# %sfp, delta_y
	movl	%esi, %r12d	# cols, cols
	vzeroupper
	jmp	.L111	#
	.p2align 4
	.p2align 3
.L129:
	leaq	(%rdx,%rdx), %rsi	#, _1320
	leaq	(%rbx,%rcx,4), %rdi	#, _1328
	leaq	(%r9,%rcx,2), %r8	#, _1327
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	xorl	%edx, %edx	# ivtmp.361
	.p2align 4
	.p2align 3
.L136:
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movzwl	(%rdi,%rdx), %ecx	# MEM[(short int *)_1328 + ivtmp.361_1332 * 1], MEM[(short int *)_1328 + ivtmp.361_1332 * 1]
	subw	(%rbx,%rdx), %cx	# MEM[(short int *)smoothedim_121(D) + ivtmp.361_1332 * 1], tmp1092
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	movw	%cx, (%r8,%rdx)	# tmp1092, MEM[(short int *)_1327 + ivtmp.361_1332 * 1]
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	addq	$2, %rdx	#, ivtmp.361
	cmpq	%rdx, %rsi	# ivtmp.361, _1320
	jne	.L136	#,
	jmp	.L117	#
	.p2align 4
	.p2align 3
.L118:
	addq	%rcx, %rcx	# _1309
# canny.c:434:     for(r=0;r<cols;r++)
	xorl	%eax, %eax	# ivtmp.379
	leaq	(%rbx,%rcx), %rdi	#, _1311
	.p2align 4
	.p2align 3
.L125:
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movzwl	(%rdi,%rax), %edx	# MEM[(short int *)_1311 + ivtmp.379_1313 * 1], MEM[(short int *)_1311 + ivtmp.379_1313 * 1]
	subw	(%rbx,%rax), %dx	# MEM[(short int *)smoothedim_121(D) + ivtmp.379_1313 * 1], tmp1006
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	movw	%dx, (%rsi,%rax)	# tmp1006, MEM[(short int *)_60 + ivtmp.379_1313 * 1]
# canny.c:434:     for(r=0;r<cols;r++)
	addq	$2, %rax	#, ivtmp.379
	cmpq	%rax, %rcx	# ivtmp.379, _1309
	jne	.L125	#,
	jmp	.L101	#
	.p2align 4
	.p2align 3
.L139:
	movl	-120(%rbp), %edi	# %sfp, _1
	negq	%rcx	# tmp1177
	cltq
	leaq	(%rbx,%rcx,2), %rsi	#, _1338
	.p2align 4
	.p2align 3
.L146:
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movzwl	(%rbx,%rax,2), %ecx	# MEM[(short int *)smoothedim_121(D) + ivtmp.334_1341 * 2], MEM[(short int *)smoothedim_121(D) + ivtmp.334_1341 * 2]
	subw	(%rsi,%rax,2), %cx	# MEM[(short int *)_1338 + ivtmp.334_1341 * 2], tmp1181
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	movw	%cx, (%rdx,%rax,2)	# tmp1181, MEM[(short int *)_95 + ivtmp.334_1341 * 2]
# canny.c:438:     for(r=(rows*cols)-cols;r<rows*cols;r++)
	incq	%rax	# ivtmp.334
	cmpl	%eax, %edi	# ivtmp.334, _1
	jg	.L146	#,
	jmp	.L128	#
.L104:
	movl	-160(%rbp), %r13d	# %sfp, niters.304
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	xorl	%r12d, %r12d	#
# canny.c:407:       for(c=1;c<(cols-1);c++,pos++){
	movl	$1, %esi	#, c
	jmp	.L148	#
.L151:
# canny.c:435:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r];
	xorl	%edx, %edx	#
# canny.c:434:     for(r=0;r<cols;r++)
	xorl	%eax, %eax	# tmp.274
	jmp	.L119	#
.L153:
# canny.c:439:         (*delta_y)[r] = smoothedim[r] - smoothedim[r-cols];
	xorl	%edi, %edi	#
	jmp	.L140	#
.L152:
# canny.c:436:     for(r=cols;r<(rows*cols)-cols;r++)
	movl	%r12d, %edi	# cols, tmp.242
# canny.c:437:         (*delta_y)[r] = smoothedim[r+cols] - smoothedim[r-cols];
	xorl	%r8d, %r8d	#
	jmp	.L130	#
.L209:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC11(%rip), %rdi	#, tmp842
	movl	$36, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:393:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L211:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE52:
	.size	derrivative_x_y, .-derrivative_x_y
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Error callocing the gaussian kernel array.\n"
	.text
	.p2align 4
	.globl	make_gaussian_kernel
	.type	make_gaussian_kernel, @function
make_gaussian_kernel:
.LFB54:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vcvtss2sd	%xmm0, %xmm0, %xmm7	# sigma, _1
# canny.c:558: {
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx	#
	movq	%rdi, %r13	# tmp204, kernel
	movq	%rsi, %r12	# tmp205, windowsize
	subq	$40, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vmulsd	.LC16(%rip), %xmm7, %xmm1	#, _1, tmp152
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vmovsd	.LC18(%rip), %xmm4	#, tmp213
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vmovss	%xmm0, -52(%rbp)	# sigma, %sfp
	vmovsd	%xmm7, -64(%rbp)	# _1, %sfp
	vroundsd	$10, %xmm1, %xmm1, %xmm1	#, tmp152, _3
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vfmadd132sd	.LC17(%rip), %xmm4, %xmm1	#, tmp213, _5
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	vcvttsd2sil	%xmm1, %edi	# _5, _6
# canny.c:563:    center = (*windowsize) / 2;
	movl	%edi, %r14d	# _6, tmp156
# canny.c:562:    *windowsize = 1 + 2 * ceil(2.5 * sigma);
	movl	%edi, (%rsi)	# _6, *windowsize_38(D)
# canny.c:566:    if((*kernel = (float *) calloc((*windowsize), sizeof(float))) == NULL){
	movl	$4, %esi	#,
# canny.c:563:    center = (*windowsize) / 2;
	shrl	$31, %r14d	#, tmp156
	addl	%edi, %r14d	# _6, tmp157
# canny.c:566:    if((*kernel = (float *) calloc((*windowsize), sizeof(float))) == NULL){
	movslq	%edi, %rdi	# _6, _6
	call	calloc@PLT	#
# canny.c:563:    center = (*windowsize) / 2;
	sarl	%r14d	# tmp158
# canny.c:566:    if((*kernel = (float *) calloc((*windowsize), sizeof(float))) == NULL){
	movq	%rax, 0(%r13)	# _11, *kernel_42(D)
# canny.c:566:    if((*kernel = (float *) calloc((*windowsize), sizeof(float))) == NULL){
	testq	%rax, %rax	# _11
	je	.L213	#,
# canny.c:571:    for(i=0;i<(*windowsize);i++){
	movl	(%r12), %edx	# *windowsize_38(D),
	vmovss	-52(%rbp), %xmm0	# %sfp, sigma
	testl	%edx, %edx	#
	jle	.L230	#,
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vmulss	%xmm0, %xmm0, %xmm0	# sigma, sigma, tmp163
	movq	%rax, %rbx	# tmp206, _11
	negl	%r14d	# ivtmp.479
	xorl	%r13d, %r13d	# ivtmp.477
# canny.c:560:    float x, fx, sum=0.0;
	vxorps	%xmm2, %xmm2, %xmm2	# sum
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vcvtss2sd	%xmm0, %xmm0, %xmm5	# tmp163, _18
	vmovsd	%xmm5, -72(%rbp)	# _18, %sfp
	.p2align 4
	.p2align 3
.L216:
# canny.c:572:       x = (float)(i - center);
	vxorps	%xmm3, %xmm3, %xmm3	# tmp216
	vmovss	%xmm2, -52(%rbp)	# sum, %sfp
	vcvtsi2ssl	%r14d, %xmm3, %xmm0	# ivtmp.479, tmp216, tmp209
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# x, _14
	vmulsd	.LC20(%rip), %xmm0, %xmm1	#, _14, tmp165
# canny.c:571:    for(i=0;i<(*windowsize);i++){
	incl	%r14d	# ivtmp.479
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vmulsd	%xmm0, %xmm1, %xmm1	# _14, tmp165, tmp167
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vdivsd	-72(%rbp), %xmm1, %xmm1	# %sfp, tmp167,
	vmovsd	.LC21(%rip), %xmm0	#,
	call	pow@PLT	#
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vmovsd	.LC22(%rip), %xmm5	#, tmp218
	vmulsd	-64(%rbp), %xmm5, %xmm1	# %sfp, tmp218, tmp170
# canny.c:575:       sum += fx;
	vmovss	-52(%rbp), %xmm2	# %sfp, sum
# canny.c:571:    for(i=0;i<(*windowsize);i++){
	movl	(%r12), %edx	# *windowsize_38(D), _26
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp170, tmp207, tmp172
# canny.c:573:       fx = pow(2.71828, -0.5*x*x/(sigma*sigma)) / (sigma * sqrt(6.2831853));
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp172, fx
# canny.c:574:       (*kernel)[i] = fx;
	vmovss	%xmm0, (%rbx,%r13,4)	# fx, MEM[(float *)_11 + ivtmp.477_109 * 4]
# canny.c:571:    for(i=0;i<(*windowsize);i++){
	incq	%r13	# ivtmp.477
# canny.c:575:       sum += fx;
	vaddss	%xmm0, %xmm2, %xmm2	# fx, sum, sum
# canny.c:571:    for(i=0;i<(*windowsize);i++){
	cmpl	%r13d, %edx	# ivtmp.477, _26
	jg	.L216	#,
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	testl	%edx, %edx	# _26
	jle	.L230	#,
	leal	-1(%rdx), %eax	#, tmp173
	cmpl	$6, %eax	#, tmp173
	jbe	.L223	#,
	movl	%edx, %ecx	# _26, bnd.448
	vbroadcastss	%xmm2, %ymm1	# sum, vect_cst__88
	movq	%rbx, %rax	# _11, ivtmp.472
	shrl	$3, %ecx	#,
	salq	$5, %rcx	#, tmp177
	addq	%rbx, %rcx	# _11, _108
	.p2align 4
	.p2align 3
.L219:
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	vmovups	(%rax), %ymm7	# MEM <vector(8) float> [(float *)_107], tmp221
	addq	$32, %rax	#, ivtmp.472
	vdivps	%ymm1, %ymm7, %ymm0	# vect_cst__88, tmp221, vect__31.454
	vmovups	%ymm0, -32(%rax)	# vect__31.454, MEM <vector(8) float> [(float *)_107]
	cmpq	%rax, %rcx	# ivtmp.472, _108
	jne	.L219	#,
	movl	%edx, %eax	# _26, tmp.460
	andl	$-8, %eax	#, tmp.460
	movl	%eax, %esi	# tmp.460,
	cmpl	%eax, %edx	# tmp.460, _26
	je	.L232	#,
	vzeroupper
.L218:
	movl	%edx, %ecx	# _26, niters.457
	subl	%esi, %ecx	# niters_vector_mult_vf.449, niters.457
	leal	-1(%rcx), %edi	#, tmp180
	cmpl	$2, %edi	#, tmp180
	jbe	.L221	#,
	leaq	(%rbx,%rsi,4), %rsi	#, vectp.462
	vshufps	$0, %xmm2, %xmm2, %xmm0	# sum, tmp184
	vmovups	(%rsi), %xmm3	# MEM <vector(4) float> [(float *)vectp.462_118], tmp224
	vdivps	%xmm0, %xmm3, %xmm0	# tmp184, tmp224, vect__37.464
	vmovups	%xmm0, (%rsi)	# vect__37.464, MEM <vector(4) float> [(float *)vectp.462_118]
	testb	$3, %cl	#, niters.457
	je	.L230	#,
	andl	$-4, %ecx	#, niters_vector_mult_vf.459
	addl	%ecx, %eax	# niters_vector_mult_vf.459, tmp.460
.L221:
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	movslq	%eax, %rcx	# tmp.460, tmp.460
	salq	$2, %rcx	#, _29
	leaq	(%rbx,%rcx), %rsi	#, _30
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	vmovss	(%rsi), %xmm0	# *_30, *_30
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_30, tmp189
	vmovss	%xmm0, (%rsi)	# tmp189, *_30
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	leal	1(%rax), %esi	#, i
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	cmpl	%esi, %edx	# i, _26
	jle	.L230	#,
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	leaq	4(%rbx,%rcx), %rsi	#, _34
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	addl	$2, %eax	#, i
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	vmovss	(%rsi), %xmm0	# *_34, *_34
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_34, tmp193
	vmovss	%xmm0, (%rsi)	# tmp193, *_34
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	cmpl	%eax, %edx	# i, _26
	jle	.L230	#,
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	leaq	8(%rbx,%rcx), %rax	#, _102
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	vmovss	(%rax), %xmm0	# *_102, *_102
	vdivss	%xmm2, %xmm0, %xmm0	# sum, *_102, tmp197
	vmovss	%xmm0, (%rax)	# tmp197, *_102
.L230:
# canny.c:585: }
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L232:
	.cfi_restore_state
	vzeroupper
	jmp	.L230	#
.L223:
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	xorl	%esi, %esi	#
# canny.c:578:    for(i=0;i<(*windowsize);i++) (*kernel)[i] /= sum;
	xorl	%eax, %eax	# tmp.460
	jmp	.L218	#
.L213:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC19(%rip), %rdi	#, tmp162
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:568:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE54:
	.size	make_gaussian_kernel, .-make_gaussian_kernel
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"\n==================== Gaussian_Smooth ==================="
	.align 8
.LC24:
	.string	"Error allocating the buffer image.\n"
	.align 8
.LC25:
	.string	"Error allocating the smoothed image.\n"
	.text
	.p2align 4
	.globl	gaussian_smooth
	.type	gaussian_smooth, @function
gaussian_smooth:
.LFB53:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r15	# tmp293, image
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC23(%rip), %rdi	#, tmp207
# canny.c:461: {
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 192
# canny.c:461: {
	movl	%edx, %ebx	# tmp295, cols
	vmovd	%xmm0, %r12d	# tmp296, sigma
	movl	%esi, %ebp	# tmp294, rows
	movq	%rcx, 24(%rsp)	# tmp297, %sfp
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	%ebp, %r13d	# rows, tmp218
	imull	%ebx, %r13d	# cols, tmp218
# canny.c:461: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp314
	movq	%rax, 120(%rsp)	# tmp314, D.10937
	xorl	%eax, %eax	# tmp314
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	leaq	96(%rsp), %rax	#, tmp286
	movl	$1, %edi	#,
	movq	%rax, %rsi	# tmp286,
	movq	%rax, 56(%rsp)	# tmp286, %sfp
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movslq	%r13d, %r13	# tmp218, _3
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
# canny.c:476:    make_gaussian_kernel(sigma, &kernel, &windowsize);
	leaq	84(%rsp), %rsi	#, tmp212
	leaq	88(%rsp), %rdi	#, tmp213
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp301
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp301, tmp209
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp302
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp210, tmp209
# canny.c:476:    make_gaussian_kernel(sigma, &kernel, &windowsize);
	vmovd	%r12d, %xmm0	# sigma,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovsd	%xmm1, 64(%rsp)	# tmp209, %sfp
# canny.c:476:    make_gaussian_kernel(sigma, &kernel, &windowsize);
	call	make_gaussian_kernel	#
# canny.c:477:    center = windowsize / 2;
	movl	84(%rsp), %eax	# windowsize, windowsize
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	$4, %esi	#,
	movq	%r13, %rdi	# _3,
# canny.c:477:    center = windowsize / 2;
	movl	%eax, %r12d	# windowsize, tmp215
	shrl	$31, %r12d	#, tmp215
	addl	%eax, %r12d	# windowsize, tmp216
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	call	calloc@PLT	#
# canny.c:477:    center = windowsize / 2;
	sarl	%r12d	# tmp217
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movq	%rax, 48(%rsp)	# tempim, %sfp
# canny.c:482:    if((tempim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	testq	%rax, %rax	# tempim
	je	.L269	#,
# canny.c:486:    if(((*smoothedim) = (short int *) calloc(rows*cols,
	movq	%r13, %rdi	# _3,
	movl	$2, %esi	#,
	call	calloc@PLT	#
# canny.c:486:    if(((*smoothedim) = (short int *) calloc(rows*cols,
	movq	24(%rsp), %rdi	# %sfp, smoothedim
	movq	%rax, (%rdi)	# tmp222, *smoothedim_85(D)
# canny.c:486:    if(((*smoothedim) = (short int *) calloc(rows*cols,
	testq	%rax, %rax	# tmp222
	je	.L270	#,
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
# canny.c:544:    free(kernel);
	movq	88(%rsp), %r13	# kernel, pretmp_277
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp303
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp303, tmp226
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp304
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp227, tmp226
	vmovsd	%xmm1, 32(%rsp)	# tmp226, %sfp
# canny.c:497:    for(r=0;r<rows;r++){
	testl	%ebp, %ebp	# rows
	jle	.L236	#,
# canny.c:501:          for(cc=(-center);cc<=center;cc++){
	movl	%r12d, %r11d	# tmp217, cc
	negl	%r11d	# cc
	testl	%ebx, %ebx	# cols
	jle	.L236	#,
	movq	48(%rsp), %r9	# %sfp, ivtmp.533
	movslq	%ebx, %r10	# cols, _285
	leal	1(%r12), %edi	#, ivtmp.503
	xorl	%r8d, %r8d	# ivtmp.532
	leaq	0(,%r10,4), %rax	#, _286
	movl	%edi, 12(%rsp)	# ivtmp.503, %sfp
# canny.c:497:    for(r=0;r<rows;r++){
	xorl	%ecx, %ecx	# r
	movl	%ebp, %edi	# rows, rows
	movq	%rax, 16(%rsp)	# _286, %sfp
	.p2align 4
	.p2align 3
.L238:
	movl	12(%rsp), %esi	# %sfp, ivtmp.525
# canny.c:461: {
	movl	%r12d, %r14d	# tmp217, ivtmp.528
	xorl	%ebp, %ebp	# ivtmp.521
	.p2align 4
	.p2align 3
.L242:
# canny.c:501:          for(cc=(-center);cc<=center;cc++){
	cmpl	%r11d, %r12d	# cc, tmp217
	jl	.L252	#,
	movl	%ebp, %eax	# ivtmp.521, ivtmp.517
# canny.c:500:          sum = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# sum
	subl	%r12d, %eax	# tmp217, ivtmp.517
# canny.c:499:          dot = 0.0;
	vmovaps	%xmm3, %xmm1	#, dot
	.p2align 4
	.p2align 3
.L241:
# canny.c:502:             if(((c+cc) >= 0) && ((c+cc) < cols)){
	cmpl	%eax, %ebx	# ivtmp.517, cols
	jle	.L240	#,
	testl	%eax, %eax	# ivtmp.517
	js	.L240	#,
# canny.c:503:                dot += (float)image[r*cols+(c+cc)] * kernel[center+cc];
	leal	(%r14,%rax), %edx	#, tmp235
	movslq	%edx, %rdx	# tmp235, tmp236
# canny.c:503:                dot += (float)image[r*cols+(c+cc)] * kernel[center+cc];
	vmovss	0(%r13,%rdx,4), %xmm2	# *_18, _19
# canny.c:503:                dot += (float)image[r*cols+(c+cc)] * kernel[center+cc];
	leal	(%r8,%rax), %edx	#, tmp237
	movslq	%edx, %rdx	# tmp237, tmp238
# canny.c:503:                dot += (float)image[r*cols+(c+cc)] * kernel[center+cc];
	movzbl	(%r15,%rdx), %edx	# *_11, *_11
	vcvtsi2ssl	%edx, %xmm4, %xmm0	# *_11, tmp300, tmp305
# canny.c:503:                dot += (float)image[r*cols+(c+cc)] * kernel[center+cc];
	vfmadd231ss	%xmm2, %xmm0, %xmm1	# _19, tmp239, dot
# canny.c:504:                sum += kernel[center+cc];
	vaddss	%xmm2, %xmm3, %xmm3	# _19, sum, sum
.L240:
# canny.c:501:          for(cc=(-center);cc<=center;cc++){
	incl	%eax	# ivtmp.517
	cmpl	%eax, %esi	# ivtmp.517, ivtmp.525
	jne	.L241	#,
.L239:
# canny.c:507:          tempim[r*cols+c] = dot/sum;
	vdivss	%xmm3, %xmm1, %xmm1	# sum, dot, tmp241
# canny.c:498:       for(c=0;c<cols;c++){
	incl	%esi	# ivtmp.525
	decl	%r14d	# ivtmp.528
# canny.c:507:          tempim[r*cols+c] = dot/sum;
	vmovss	%xmm1, (%r9,%rbp,4)	# tmp241, MEM[(float *)_14 + ivtmp.521_69 * 4]
# canny.c:498:       for(c=0;c<cols;c++){
	incq	%rbp	# ivtmp.521
	cmpq	%r10, %rbp	# _285, ivtmp.521
	jne	.L242	#,
# canny.c:497:    for(r=0;r<rows;r++){
	movq	16(%rsp), %rax	# %sfp, _286
# canny.c:497:    for(r=0;r<rows;r++){
	incl	%ecx	# r
# canny.c:497:    for(r=0;r<rows;r++){
	addl	%ebx, %r8d	# cols, ivtmp.532
	addq	%rax, %r9	# _286, ivtmp.533
	cmpl	%ecx, %edi	# r, rows
	jne	.L238	#,
	movl	%edi, %ebp	# rows, rows
.L236:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %r15	# %sfp, tmp286
	movl	$1, %edi	#,
	movq	%r15, %rsi	# tmp286,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC12(%rip), %rsi	#, tmp247
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm1	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp307
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp306
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp244, _128
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:511:    double secs_blur_x = (fin_blur_x - ini_blur_x);
	vsubsd	32(%rsp), %xmm0, %xmm0	# %sfp, _128, secs_blur_x
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%r15, %rsi	# tmp286,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp308
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp308, tmp249
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp309
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp250, tmp249
	vmovsd	%xmm1, 72(%rsp)	# tmp249, %sfp
# canny.c:525:    for(c=0;c<cols;c++){
	testl	%ebx, %ebx	# cols
	jle	.L243	#,
# canny.c:530:          for(rr=(-center);rr<=center;rr++){
	movl	%r12d, %r11d	# tmp217, _71
	negl	%r11d	# _71
	testl	%ebp, %ebp	# rows
	jle	.L243	#,
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	movq	24(%rsp), %rax	# %sfp, smoothedim
	vmovsd	.LC8(%rip), %xmm3	#, tmp284
	movslq	%ebx, %r14	# cols, _209
	movl	%r11d, %edx	# _71, ivtmp.512
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vmovsd	.LC26(%rip), %xmm5	#, tmp290
	leaq	(%r14,%r14), %r15	#, _259
	movq	%r14, 40(%rsp)	# _209, %sfp
	movq	48(%rsp), %r14	# %sfp, tempim
	imull	%ebx, %edx	# cols, ivtmp.512
	leal	1(%r12), %edi	#, ivtmp.503
	movl	%edi, 12(%rsp)	# ivtmp.503, %sfp
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	movq	(%rax), %rsi	# *smoothedim_85(D), _50
	xorl	%eax, %eax	# ivtmp.509
	movq	%rax, %r8	# ivtmp.509, ivtmp.509
	movq	%rsi, 32(%rsp)	# _50, %sfp
	.p2align 4
	.p2align 3
.L245:
	movq	32(%rsp), %rax	# %sfp, _50
# canny.c:497:    for(r=0;r<rows;r++){
	movl	%edx, %r10d	# ivtmp.512, ivtmp.506
# canny.c:526:       for(r=0;r<rows;r++){
	xorl	%edi, %edi	# r
	movl	%edx, 16(%rsp)	# ivtmp.512, %sfp
	movl	12(%rsp), %ecx	# %sfp, ivtmp.503
	movq	%r8, 24(%rsp)	# ivtmp.509, %sfp
	leaq	(%rax,%r8,2), %r9	#, ivtmp.501
	.p2align 4
	.p2align 3
.L249:
# canny.c:530:          for(rr=(-center);rr<=center;rr++){
	cmpl	%r11d, %r12d	# _71, tmp217
	jl	.L253	#,
	movl	%edi, %eax	# r, ivtmp.495
# canny.c:528:          sum = 0.0;
	vxorps	%xmm1, %xmm1, %xmm1	# sum
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	movl	%r12d, %r8d	# tmp217, tmp288
# canny.c:530:          for(rr=(-center);rr<=center;rr++){
	movl	%r10d, %edx	# ivtmp.506, ivtmp.496
	subl	%r12d, %eax	# tmp217, ivtmp.495
# canny.c:529:          dot = 0.0;
	vmovaps	%xmm1, %xmm0	#, dot
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	subl	%edi, %r8d	# r, tmp288
	.p2align 4
	.p2align 3
.L248:
# canny.c:531:             if(((r+rr) >= 0) && ((r+rr) < rows)){
	testl	%eax, %eax	# ivtmp.495
	js	.L247	#,
	cmpl	%eax, %ebp	# ivtmp.495, rows
	jle	.L247	#,
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	leal	(%r8,%rax), %esi	#, tmp259
	movslq	%esi, %rsi	# tmp259, tmp260
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	vmovss	0(%r13,%rsi,4), %xmm2	# *_40, _41
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	movslq	%edx, %rsi	# ivtmp.496, ivtmp.496
# canny.c:532:                dot += tempim[(r+rr)*cols+c] * kernel[center+rr];
	vfmadd231ss	(%r14,%rsi,4), %xmm2, %xmm0	# *_34, _41, dot
# canny.c:533:                sum += kernel[center+rr];
	vaddss	%xmm2, %xmm1, %xmm1	# _41, sum, sum
.L247:
# canny.c:530:          for(rr=(-center);rr<=center;rr++){
	incl	%eax	# ivtmp.495
	addl	%ebx, %edx	# cols, ivtmp.496
	cmpl	%ecx, %eax	# ivtmp.503, ivtmp.495
	jne	.L248	#,
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# dot, tmp262
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vcvtss2sd	%xmm1, %xmm1, %xmm1	# sum, _275
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vmulsd	%xmm5, %xmm0, %xmm0	# tmp290, tmp262, _273
.L246:
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vdivsd	%xmm1, %xmm0, %xmm0	# _275, _273, tmp264
# canny.c:526:       for(r=0;r<rows;r++){
	incl	%edi	# r
# canny.c:526:       for(r=0;r<rows;r++){
	incl	%ecx	# ivtmp.503
	addl	%ebx, %r10d	# cols, ivtmp.506
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vaddsd	%xmm3, %xmm0, %xmm0	# tmp284, tmp264, tmp265
# canny.c:536:          (*smoothedim)[r*cols+c] = (short int)(dot*BOOSTBLURFACTOR/sum + 0.5);
	vcvttsd2sil	%xmm0, %eax	# tmp265, tmp267
	movw	%ax, (%r9)	# tmp267, MEM[(short int *)_222]
# canny.c:526:       for(r=0;r<rows;r++){
	addq	%r15, %r9	# _259, ivtmp.501
	cmpl	%edi, %ebp	# r, rows
	jne	.L249	#,
# canny.c:525:    for(c=0;c<cols;c++){
	movl	16(%rsp), %edx	# %sfp, ivtmp.512
	movq	24(%rsp), %r8	# %sfp, ivtmp.509
	incl	%edx	# ivtmp.512
	incq	%r8	# ivtmp.509
	cmpq	%r8, 40(%rsp)	# ivtmp.509, %sfp
	jne	.L245	#,
.L243:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %rbx	# %sfp, tmp286
	movl	$1, %edi	#,
	movq	%rbx, %rsi	# tmp286,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC13(%rip), %rsi	#, tmp274
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm1	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp311
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp310
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp271, _140
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:540:    double secs_blur_y = (fin_blur_y - ini_blur_y);
	vsubsd	72(%rsp), %xmm0, %xmm0	# %sfp, _140, secs_blur_y
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:543:    free(tempim);
	movq	48(%rsp), %rdi	# %sfp,
	call	free@PLT	#
# canny.c:544:    free(kernel);
	movq	%r13, %rdi	# pretmp_277,
	call	free@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbx, %rsi	# tmp286,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp300
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC14(%rip), %rsi	#, tmp280
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	104(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_115].tv_nsec, tmp300, tmp312
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm4	# MEM[(struct timespec *)_115].tv_sec, tmp300, tmp313
	vfmadd132sd	.LC10(%rip), %xmm4, %xmm0	#, tmp277, _146
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:546:    double secs_gaussian_smooth = (fin_gaussian_smooth - ini_gaussian_smooth);
	vsubsd	64(%rsp), %xmm0, %xmm0	# %sfp, _146, secs_gaussian_smooth
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	movq	120(%rsp), %rax	# D.10937, tmp315
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp315
	jne	.L271	#,
# canny.c:549: }
	addq	$136, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC15(%rip), %rdi	#, tmp282
# canny.c:549: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	puts@PLT	#
	.p2align 4
	.p2align 3
.L252:
	.cfi_restore_state
# canny.c:500:          sum = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# sum
# canny.c:499:          dot = 0.0;
	vmovaps	%xmm3, %xmm1	#, dot
	jmp	.L239	#
	.p2align 4
	.p2align 3
.L253:
# canny.c:530:          for(rr=(-center);rr<=center;rr++){
	vxorpd	%xmm1, %xmm1, %xmm1	# _275
	vmovsd	%xmm1, %xmm1, %xmm0	#, _273
	jmp	.L246	#
.L269:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC24(%rip), %rdi	#, tmp221
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:484:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L271:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__stack_chk_fail@PLT	#
.L270:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC25(%rip), %rdi	#, tmp224
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:489:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE53:
	.size	gaussian_smooth, .-gaussian_smooth
	.p2align 4
	.globl	follow_edges
	.type	follow_edges, @function
follow_edges:
.LFB55:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r14	# tmp167, edgemagptr
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %r12d	# tmp168, lowval
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, 1(%rdi)	#, MEM[(unsigned char *)edgemapptr_34(D) + 1B]
# canny.c:614: {
	movq	%rdi, %rbx	# tmp166, edgemapptr
	movl	%ecx, %ebp	# tmp169, cols
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	je	.L283	#,
.L273:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movslq	%ebp, %r13	# cols, _72
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movl	$1, %eax	#, tmp145
	subq	%r13, %rax	# _72, _73
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	(%rbx,%rax), %rdi	#, tempmapptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_74
	je	.L284	#,
.L274:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movq	%rbx, %rdi	# edgemapptr, tempmapptr
	subq	%r13, %rdi	# _72, tempmapptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_94
	je	.L285	#,
.L275:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movq	%r13, %rax	# _72, _113
	notq	%rax	# _113
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	(%rbx,%rax), %rdi	#, tempmapptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_114
	je	.L286	#,
.L276:
	cmpb	$-128, -1(%rbx)	#, MEM[(unsigned char *)edgemapptr_34(D) + -1B]
	je	.L287	#,
.L277:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leal	-1(%rbp), %eax	#, tmp158
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movl	%ebp, %r15d	# cols, tmp157
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	cltq
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	negl	%r15d	# tmp157
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	(%rbx,%rax), %rdi	#, tempmapptr
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movslq	%r15d, %r15	# tmp157, _152
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_154
	je	.L288	#,
.L278:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	(%rbx,%r13), %rdi	#, tempmapptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_174
	je	.L289	#,
.L279:
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	movl	$1, %eax	#, tmp163
	subq	%r15, %rax	# _152, _6
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	(%rbx,%rax), %rdi	#, tempmapptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpb	$-128, (%rdi)	#, *tempmapptr_35
	je	.L290	#,
.L281:
# canny.c:631: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L283:
	.cfi_restore_state
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	2(%rsi), %dx	# MEM[(short int *)edgemagptr_36(D) + 2B], lowval
	jge	.L273	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, 1(%rdi)	#, MEM[(unsigned char *)edgemapptr_34(D) + 1B]
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%dx, %edx	# lowval, lowval
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	2(%rsi), %rsi	#, tempmagptr
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	1(%rdi), %rdi	#, tempmapptr
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	call	follow_edges	#
	jmp	.L273	#
	.p2align 4
	.p2align 3
.L290:
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%rax,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	%r12w, (%rsi)	# lowval, *tempmagptr_37
	jle	.L281	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_35
# canny.c:631: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
# canny.c:631: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movl	%ebp, %ecx	# cols,
# canny.c:631: }
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	jmp	follow_edges	#
	.p2align 4
	.p2align 3
.L289:
	.cfi_restore_state
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%r13,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	(%rsi), %r12w	# *tempmagptr_177, lowval
	jge	.L279	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_174
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L279	#
	.p2align 4
	.p2align 3
.L288:
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%rax,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	(%rsi), %r12w	# *tempmagptr_157, lowval
	jge	.L278	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_154
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L278	#
	.p2align 4
	.p2align 3
.L287:
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	-2(%r14), %r12w	# MEM[(short int *)edgemagptr_36(D) + -2B], lowval
	jge	.L277	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, -1(%rbx)	#, MEM[(unsigned char *)edgemapptr_34(D) + -1B]
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	-2(%r14), %rsi	#, tempmagptr
# canny.c:623:       tempmapptr = edgemapptr - y[i]*cols + x[i];
	leaq	-1(%rbx), %rdi	#, tempmapptr
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L277	#
	.p2align 4
	.p2align 3
.L286:
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%rax,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	(%rsi), %r12w	# *tempmagptr_117, lowval
	jge	.L276	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_114
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L276	#
	.p2align 4
	.p2align 3
.L285:
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	movq	%r13, %rax	# _72, tmp149
	negq	%rax	# tmp149
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%rax,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	(%rsi), %r12w	# *tempmagptr_97, lowval
	jge	.L275	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_94
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L275	#
	.p2align 4
	.p2align 3
.L284:
# canny.c:624:       tempmagptr = edgemagptr - y[i]*cols + x[i];
	leaq	(%r14,%rax,2), %rsi	#, tempmagptr
# canny.c:626:       if((*tempmapptr == POSSIBLE_EDGE) && (*tempmagptr > lowval)){
	cmpw	(%rsi), %r12w	# *tempmagptr_77, lowval
	jge	.L274	#,
# canny.c:627:          *tempmapptr = (unsigned char) EDGE;
	movb	$0, (%rdi)	#, *tempmapptr_74
# canny.c:628:          follow_edges(tempmapptr,tempmagptr, lowval, cols);
	movswl	%r12w, %edx	# lowval, lowval
	movl	%ebp, %ecx	# cols,
	call	follow_edges	#
	jmp	.L274	#
	.cfi_endproc
.LFE55:
	.size	follow_edges, .-follow_edges
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"\n==================== Appy_Hysteresis ==================="
	.align 8
.LC45:
	.string	"Tiempo tercer bloque serial: \t\t%.5g\tsegundos\n"
	.align 8
.LC46:
	.string	"Tiempo cuarto bloque serial: \t\t%.5g\tsegundos\n"
	.text
	.p2align 4
	.globl	apply_hysteresis
	.type	apply_hysteresis, @function
apply_hysteresis:
.LFB56:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13	#,
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r13)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	pushq	%r12	#
	pushq	%rbx	#
	leaq	-131072(%rsp), %r11	#,
.LPSRL0:
	subq	$4096, %rsp	#,
	orq	$0, (%rsp)	#,
	cmpq	%r11, %rsp	#,
	jne	.LPSRL0
	subq	$136, %rsp	#,
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
# canny.c:643: {
	vmovss	%xmm0, -131184(%rbp)	# tmp943, %sfp
	vmovss	%xmm1, -131228(%rbp)	# tmp944, %sfp
	movq	%rdi, -131216(%rbp)	# tmp939, %sfp
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	leaq	-131168(%rbp), %r15	#, tmp890
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC29(%rip), %rdi	#, tmp536
# canny.c:643: {
	movl	%edx, %r14d	# tmp941, rows
	movl	%ecx, %r13d	# tmp942, cols
	movq	%r8, %rbx	# tmp945, edge
	movq	%rsi, %r12	# tmp940, nms
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp979
	movq	%rax, -56(%rbp)	# tmp979, D.11149
	xorl	%eax, %eax	# tmp979
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%r15, %rsi	# tmp890,
	movl	$1, %edi	#,
	movq	%r15, -131200(%rbp)	# tmp890, %sfp
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp1103
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%r15, %rsi	# tmp890,
	movl	$1, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1103, tmp947
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp947, tmp538
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1104, tmp948
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp539, tmp538
	vmovsd	%xmm1, -131224(%rbp)	# tmp538, %sfp
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp1106
	vcvtsi2sdq	-131160(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1106, tmp949
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp949, tmp542
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1107, tmp950
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp543, tmp542
	vmovsd	%xmm1, -131240(%rbp)	# tmp542, %sfp
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	testl	%r14d, %r14d	# rows
	jle	.L292	#,
	testl	%r13d, %r13d	# cols
	jle	.L293	#,
	leal	-1(%r13), %eax	#, _576
	movl	%r13d, %r10d	# cols, _695
	movslq	%r13d, %rcx	# cols, cols
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	xorl	%r9d, %r9d	# pos
	movl	%eax, -131176(%rbp)	# _576, %sfp
	movl	%r13d, %eax	# cols, bnd.613
	andl	$-32, %r10d	#, _695
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	xorl	%r15d, %r15d	# r
	shrl	$5, %eax	#,
	movq	%rcx, %r8	# cols, cols
	salq	$5, %rax	#, bnd.613
	movq	%rax, %r11	# bnd.613, _748
.L321:
	cmpl	$14, -131176(%rbp)	#, %sfp
	movslq	%r9d, %rax	# pos, ivtmp.724
	ja	.L444	#,
	.p2align 4
	.p2align 3
.L294:
	leaq	(%r8,%rax), %rdx	#, _737
	.p2align 4
	.p2align 3
.L318:
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, (%r12,%rax)	#, MEM[(unsigned char *)nms_145(D) + ivtmp.724_719 * 1]
	je	.L315	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	$-1, (%rbx,%rax)	#, MEM[(unsigned char *)edge_117(D) + ivtmp.724_719 * 1]
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	incq	%rax	# ivtmp.724
	cmpq	%rdx, %rax	# _737, ivtmp.724
	jne	.L318	#,
.L317:
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	incl	%r15d	# r
	addl	%r13d, %r9d	# cols, pos
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	cmpl	%r14d, %r15d	# rows, r
	jne	.L321	#,
.L320:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	vzeroupper
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp1121
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC12(%rip), %rsi	#, tmp591
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1121, tmp951
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm6, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1122, tmp952
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp588, _167
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:669:    double secs_hyst_first_for = (fin_hyst_first_for - ini_hyst_first_for);
	vsubsd	-131240(%rbp), %xmm0, %xmm0	# %sfp, _167, secs_hyst_first_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	cmpl	$1, %r13d	#, cols
	jne	.L356	#,
	leal	-1(%r14), %r12d	#, pos
	cmpl	$30, %r12d	#, pos
	jbe	.L360	#,
	movl	%r14d, %edx	# rows, bnd.595
	movq	%rbx, %rax	# edge, ivtmp.707
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	vpcmpeqd	%ymm0, %ymm0, %ymm0	# tmp596
	shrl	$5, %edx	#,
	salq	$5, %rdx	#, tmp595
	leaq	(%rdx,%rbx), %rcx	#, _697
	andl	$32, %edx	#, tmp595
	je	.L326	#,
	leaq	32(%rbx), %rax	#, ivtmp.707
	vmovdqu	%ymm0, (%rbx)	# tmp596, MEM <vector(32) unsigned char> [(unsigned char *)_686]
	cmpq	%rcx, %rax	# _697, ivtmp.707
	je	.L433	#,
	.p2align 4
	.p2align 3
.L326:
	vmovdqu	%ymm0, (%rax)	# tmp596, MEM <vector(32) unsigned char> [(unsigned char *)_686]
	vmovdqu	%ymm0, 32(%rax)	# tmp596, MEM <vector(32) unsigned char> [(unsigned char *)_686]
	addq	$64, %rax	#, ivtmp.707
	cmpq	%rcx, %rax	# _697, ivtmp.707
	jne	.L326	#,
.L433:
	movl	%r14d, %eax	# rows, tmp.606
	andl	$-32, %eax	#, tmp.606
	movl	%eax, %edx	# tmp.606,
	cmpl	%eax, %r14d	# tmp.606, rows
	je	.L445	#,
	vzeroupper
.L325:
	movl	%r14d, %ecx	# rows, niters.603
	subl	%edx, %ecx	# niters_vector_mult_vf.596, niters.603
	leal	-1(%rcx), %esi	#, tmp597
	cmpl	$14, %esi	#, tmp597
	jbe	.L328	#,
# canny.c:674:       edge[pos] = NOEDGE;
	vpcmpeqd	%xmm0, %xmm0, %xmm0	# tmp599
	vmovdqu	%xmm0, (%rbx,%rdx)	# tmp599, MEM <vector(16) unsigned char> [(unsigned char *)vectp_edge.609_561]
	movl	%ecx, %edx	# niters.603, niters_vector_mult_vf.605
	andl	$-16, %edx	#, niters_vector_mult_vf.605
	addl	%edx, %eax	# niters_vector_mult_vf.605, tmp.606
	andl	$15, %ecx	#, niters.603
	je	.L330	#,
.L328:
# canny.c:674:       edge[pos] = NOEDGE;
	movslq	%eax, %rcx	# tmp.606, tmp.606
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	1(%rax), %edx	#, tmp603
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, (%rbx,%rcx)	#, *_600
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# tmp603, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	2(%rax), %edx	#, _34
	movslq	%edx, %rsi	# _34, _34
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_15
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%r14d, %edx	# rows, _34
	jge	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	3(%rax), %edx	#, _311
	movslq	%edx, %rsi	# _311, _311
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_309
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _311, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	4(%rax), %edx	#, _284
	movslq	%edx, %rsi	# _284, _284
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_3
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _284, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	5(%rax), %edx	#, _669
	movslq	%edx, %rsi	# _669, _669
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_674
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _669, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	6(%rax), %edx	#, _448
	movslq	%edx, %rsi	# _448, _448
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_41
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _448, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	7(%rax), %edx	#, _344
	movslq	%edx, %rsi	# _344, _344
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_396
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _344, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	8(%rax), %edx	#, _342
	movslq	%edx, %rsi	# _342, _342
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_57
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _342, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	9(%rax), %edx	#, _688
	movslq	%edx, %rsi	# _688, _688
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_691
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _688, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	10(%rax), %edx	#, _699
	movslq	%edx, %rsi	# _699, _699
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_702
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _699, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	11(%rax), %edx	#, _710
	movslq	%edx, %rsi	# _710, _710
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_713
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _710, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	12(%rax), %edx	#, _721
	movslq	%edx, %rsi	# _721, _721
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_724
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _721, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	leal	13(%rax), %edx	#, _732
	movslq	%edx, %rsi	# _732, _732
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rsi)	#, *_735
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%edx, %r14d	# _732, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	addl	$14, %eax	#, _743
	movslq	%eax, %rdx	# _743, _743
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rbx,%rdx)	#, *_746
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	cmpl	%eax, %r14d	# _743, rows
	jle	.L330	#,
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, 14(%rbx,%rcx)	#, *_543
.L330:
	movl	%r13d, %edx	# cols, _333
	movslq	%r12d, %r12	# pos, _317
	leaq	(%r12,%rdx), %rax	#, tmp619
	testq	%rax, %rax	# tmp619
	jle	.L366	#,
	cmpq	%rdx, %r12	# _333, _317
	jl	.L332	#,
.L366:
# canny.c:679:       edge[c] = NOEDGE;
	movl	$255, %esi	#,
	movq	%rbx, %rdi	# edge,
	movq	%rdx, -131176(%rbp)	# _333, %sfp
	call	memset@PLT	#
# canny.c:680:       edge[pos] = NOEDGE;
	leaq	(%rbx,%r12), %rdi	#, tmp627
	movl	$255, %esi	#,
	movq	-131176(%rbp), %rdx	# %sfp, _333
	call	memset@PLT	#
.L337:
# canny.c:687:    for(r=0;r<32768;r++) hist[r] = 0;
	leaq	-131152(%rbp), %r12	#, tmp891
	movl	$131072, %edx	#,
	xorl	%esi, %esi	#
	movq	%r12, %rdi	# tmp891,
	call	memset@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1128
	movq	-131216(%rbp), %rdi	# %sfp, mag
# canny.c:692:    for(r=0,pos=0;r<rows;r++){
	xorl	%r9d, %r9d	# pos
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1128, tmp953
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp953, tmp634
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1129, tmp954
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp635, tmp634
# canny.c:692:    for(r=0,pos=0;r<rows;r++){
	xorl	%r8d, %r8d	# r
	movslq	%r13d, %rax	# cols, cols
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovq	%xmm1, %r15	# tmp634, _361
# canny.c:692:    for(r=0,pos=0;r<rows;r++){
	testl	%r14d, %r14d	# rows
	jle	.L355	#,
	.p2align 4
	.p2align 3
.L334:
	movslq	%r9d, %rdx	# pos, ivtmp.689
	leaq	(%rax,%rdx), %rcx	#, _149
	.p2align 4
	.p2align 3
.L339:
# canny.c:694: 	 if(edge[pos] == POSSIBLE_EDGE) hist[mag[pos]]++;
	cmpb	$-128, (%rbx,%rdx)	#, MEM[(unsigned char *)edge_117(D) + ivtmp.689_290 * 1]
	jne	.L338	#,
# canny.c:694: 	 if(edge[pos] == POSSIBLE_EDGE) hist[mag[pos]]++;
	movswq	(%rdi,%rdx,2), %rsi	# MEM[(short int *)mag_122(D) + ivtmp.689_290 * 2], _24
	incl	-131152(%rbp,%rsi,4)	# hist[_24]
.L338:
# canny.c:693:       for(c=0;c<cols;c++,pos++){
	incq	%rdx	# ivtmp.689
	cmpq	%rdx, %rcx	# ivtmp.689, _149
	jne	.L339	#,
# canny.c:692:    for(r=0,pos=0;r<rows;r++){
	incl	%r8d	# r
	addl	%r13d, %r9d	# cols, pos
# canny.c:692:    for(r=0,pos=0;r<rows;r++){
	cmpl	%r8d, %r14d	# r, rows
	jne	.L334	#,
.L355:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp1131
# canny.c:698:    double secs_hyst_fourth_for = (fin_hyst_fourth_for - ini_hyst_fourth_for);
	vmovq	%r15, %xmm7	# _361, _361
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC13(%rip), %rsi	#, tmp650
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm6, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1131, tmp955
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm6, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1132, tmp956
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp647, _179
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$2, %edi	#,
	movl	$1, %eax	#,
# canny.c:698:    double secs_hyst_fourth_for = (fin_hyst_fourth_for - ini_hyst_fourth_for);
	vsubsd	%xmm7, %xmm0, %xmm0	# _361, _179, secs_hyst_fourth_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	vmovdqa	.LC27(%rip), %ymm6	#, ivtmp_408
	movl	$16, %esi	#, tmp656
	vpxor	%xmm8, %xmm8, %xmm8	# vect_patt_146.574
	vmovdqa	.LC28(%rip), %ymm5	#, vect_vec_iv_.564
	vmovd	%esi, %xmm11	# tmp656, tmp655
	movl	$65535, %esi	#, tmp673
	vpxor	%xmm2, %xmm2, %xmm2	# vect_numedges_303.565
	vmovd	%esi, %xmm3	# tmp673, tmp672
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	$8, %esi	#, tmp679
	leaq	-131148(%rbp), %rax	#, ivtmp.679
	leaq	-140(%rbp), %rdx	#, _355
	vmovd	%esi, %xmm10	# tmp679, tmp678
# canny.c:703:    for(r=1,numedges=0;r<32768;r++){
	movl	$16, %esi	#, tmp692
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	vmovdqa	%ymm8, %ymm7	#, _410
	vpbroadcastd	%xmm11, %ymm11	# tmp655, tmp655
# canny.c:703:    for(r=1,numedges=0;r<32768;r++){
	vmovd	%esi, %xmm9	# tmp692, tmp691
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vmovdqa	%ymm2, %ymm4	#, tmp660
	vpbroadcastd	%xmm3, %ymm3	# tmp672, tmp672
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vpbroadcastd	%xmm10, %ymm10	# tmp678, tmp678
# canny.c:703:    for(r=1,numedges=0;r<32768;r++){
	vpbroadcastw	%xmm9, %ymm9	# tmp691, tmp691
	.p2align 4
	.p2align 3
.L340:
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vpcmpeqd	(%rax), %ymm4, %ymm0	# MEM <vector(8) int> [(int *)_135], tmp660, tmp661
	vpcmpeqd	32(%rax), %ymm4, %ymm12	# MEM <vector(8) int> [(int *)_135 + 32B], tmp660, tmp666
	vmovdqa	%ymm5, %ymm1	# vect_vec_iv_.564, vect_vec_iv_.564
# canny.c:705:       numedges += hist[r];
	vpaddd	(%rax), %ymm2, %ymm2	# MEM <vector(8) int> [(int *)_135], vect_numedges_303.565, vect_numedges_128.576
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vpcmpeqd	%ymm4, %ymm0, %ymm0	# tmp660, tmp661, tmp663
# canny.c:705:       numedges += hist[r];
	vpaddd	32(%rax), %ymm2, %ymm2	# MEM <vector(8) int> [(int *)_135 + 32B], vect_numedges_128.576, vect_numedges_303.565
	addq	$64, %rax	#, ivtmp.679
	vpaddd	%ymm11, %ymm5, %ymm5	# tmp655, vect_vec_iv_.564, vect_vec_iv_.564
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vpcmpeqd	%ymm4, %ymm12, %ymm12	# tmp660, tmp666, tmp668
	vpand	%ymm0, %ymm3, %ymm0	# tmp663, tmp672, tmp669
	vpand	%ymm12, %ymm3, %ymm12	# tmp668, tmp672, tmp670
	vpackusdw	%ymm12, %ymm0, %ymm0	# tmp670, tmp669, tmp674
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vpaddd	%ymm10, %ymm1, %ymm12	# tmp678, vect_vec_iv_.564, tmp676
	vpand	%ymm1, %ymm3, %ymm1	# vect_vec_iv_.564, tmp672, tmp681
	vpand	%ymm12, %ymm3, %ymm12	# tmp676, tmp672, tmp682
	vpermq	$216, %ymm0, %ymm0	#, tmp674, tmp675
	vpackusdw	%ymm12, %ymm1, %ymm1	# tmp682, tmp681, tmp686
	vpermq	$216, %ymm1, %ymm1	#, tmp686, tmp687
	vpblendvb	%ymm0, %ymm1, %ymm8, %ymm1	# tmp675, tmp687, vect_patt_146.574, tmp688
	vpblendvb	%ymm0, %ymm6, %ymm7, %ymm0	# tmp675, ivtmp_408, _410, tmp689
# canny.c:703:    for(r=1,numedges=0;r<32768;r++){
	vpaddw	%ymm9, %ymm6, %ymm6	# tmp691, ivtmp_408, ivtmp_408
	vmovdqa	%ymm1, %ymm8	# tmp688, vect_patt_146.574
	vmovdqa	%ymm0, %ymm7	# tmp689, _410
	cmpq	%rdx, %rax	# _355, ivtmp.679
	jne	.L340	#,
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vmovq	-140(%rbp), %xmm6	# MEM <vector(2) int> [(int *)&hist + 131012B], MEM <vector(2) int> [(int *)&hist + 131012B]
	vmovdqa	%xmm2, %xmm3	# vect_numedges_303.565, tmp693
	vextracti128	$0x1, %ymm2, %xmm2	# vect_numedges_303.565, tmp694
	vmovq	-132(%rbp), %xmm5	# MEM <vector(2) int> [(int *)&hist + 131020B], MEM <vector(2) int> [(int *)&hist + 131020B]
	vpaddd	%xmm2, %xmm3, %xmm3	# tmp694, tmp693, _452
	vmovq	-124(%rbp), %xmm9	# MEM <vector(2) int> [(int *)&hist + 131028B], MEM <vector(2) int> [(int *)&hist + 131028B]
	vmovq	-116(%rbp), %xmm7	# MEM <vector(2) int> [(int *)&hist + 131036B], MEM <vector(2) int> [(int *)&hist + 131036B]
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	$32765, %esi	#, maximum_mag
# canny.c:705:       numedges += hist[r];
	vmovdqa	%xmm3, %xmm2	# _452, tmp697
	vpsrldq	$8, %xmm3, %xmm3	# _452, tmp698
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	vmovq	-108(%rbp), %xmm4	# MEM <vector(2) int> [(int *)&hist + 131044B], MEM <vector(2) int> [(int *)&hist + 131044B]
	vmovq	-100(%rbp), %xmm8	# MEM <vector(2) int> [(int *)&hist + 131052B], MEM <vector(2) int> [(int *)&hist + 131052B]
# canny.c:705:       numedges += hist[r];
	vpaddd	%xmm3, %xmm2, %xmm2	# tmp698, tmp697, tmp699
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	-92(%rbp), %edx	# hist[32765], _340
	vpxor	%xmm3, %xmm3, %xmm3	# tmp705
	vpshufb	.LC37(%rip), %xmm3, %xmm11	#, tmp705, tmp709
# canny.c:705:       numedges += hist[r];
	vpaddd	%xmm6, %xmm2, %xmm2	# MEM <vector(2) int> [(int *)&hist + 131012B], tmp699, vect_numedges_383.592
	vpaddd	%xmm2, %xmm5, %xmm2	# vect_numedges_383.592, MEM <vector(2) int> [(int *)&hist + 131020B], vect_numedges_383.592
	vpaddd	%xmm9, %xmm2, %xmm2	# MEM <vector(2) int> [(int *)&hist + 131028B], vect_numedges_383.592, vect_numedges_383.592
	vpaddd	%xmm7, %xmm2, %xmm2	# MEM <vector(2) int> [(int *)&hist + 131036B], vect_numedges_383.592, vect_numedges_383.592
	vpaddd	%xmm4, %xmm2, %xmm2	# MEM <vector(2) int> [(int *)&hist + 131044B], vect_numedges_383.592, vect_numedges_383.592
	vpaddd	%xmm2, %xmm8, %xmm2	# vect_numedges_383.592, MEM <vector(2) int> [(int *)&hist + 131052B], vect_numedges_383.592
	vpshufb	.LC36(%rip), %xmm2, %xmm10	#, vect_numedges_383.592, tmp707
	vpor	%xmm11, %xmm10, %xmm10	# tmp709, tmp707, tmp710
	vpaddd	%xmm10, %xmm2, %xmm2	# tmp710, vect_numedges_383.592, tmp711
	vmovd	%xmm2, %eax	# tmp711, stmp_numedges_383.593
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	testl	%edx, %edx	# _340
	jne	.L341	#,
	vmovq	.LC38(%rip), %xmm2	#, tmp724
	vpcmpeqd	%xmm3, %xmm6, %xmm6	# tmp705, MEM <vector(2) int> [(int *)&hist + 131012B], tmp714
	vpcmpeqd	%xmm3, %xmm5, %xmm5	# tmp705, MEM <vector(2) int> [(int *)&hist + 131020B], tmp719
	vpcmpeqd	%xmm3, %xmm6, %xmm6	# tmp705, tmp714, tmp716
	vpcmpeqd	%xmm3, %xmm5, %xmm5	# tmp705, tmp719, tmp721
	vpcmpeqd	%xmm3, %xmm7, %xmm7	# tmp705, MEM <vector(2) int> [(int *)&hist + 131036B], tmp732
	vpcmpeqd	%xmm3, %xmm4, %xmm4	# tmp705, MEM <vector(2) int> [(int *)&hist + 131044B], tmp740
	vpcmpeqd	%xmm3, %xmm8, %xmm8	# tmp705, MEM <vector(2) int> [(int *)&hist + 131052B], tmp745
	vpcmpeqd	%xmm3, %xmm8, %xmm8	# tmp705, tmp745, tmp747
	vpcmpeqd	%xmm3, %xmm7, %xmm7	# tmp705, tmp732, tmp734
	vpcmpeqd	%xmm3, %xmm4, %xmm4	# tmp705, tmp740, tmp742
	vpand	%xmm5, %xmm2, %xmm5	# tmp721, tmp724, tmp723
	vpand	%xmm6, %xmm2, %xmm6	# tmp716, tmp724, tmp722
	vpand	%xmm7, %xmm2, %xmm7	# tmp734, tmp724, tmp736
	vpand	%xmm4, %xmm2, %xmm4	# tmp742, tmp724, tmp748
	vpackusdw	%xmm5, %xmm6, %xmm6	# tmp723, tmp722, mask_patt_52.589
	vpcmpeqd	%xmm3, %xmm9, %xmm5	# tmp705, MEM <vector(2) int> [(int *)&hist + 131028B], tmp727
	vpcmpeqd	%xmm3, %xmm5, %xmm5	# tmp705, tmp727, tmp729
	vmovq	.LC39(%rip), %xmm3	#, tmp751
	vpshufd	$8, %xmm6, %xmm6	#, mask_patt_52.589, mask_patt_52.589
	vpand	%xmm5, %xmm2, %xmm5	# tmp729, tmp724, tmp735
	vpand	%xmm8, %xmm2, %xmm2	# tmp747, tmp724, tmp749
	vpackusdw	%xmm2, %xmm4, %xmm4	# tmp749, tmp748, mask_patt_52.589
	vpxor	%xmm2, %xmm2, %xmm2	# tmp752
	vpackusdw	%xmm7, %xmm5, %xmm5	# tmp736, tmp735, mask_patt_52.589
	vpshufd	$8, %xmm5, %xmm5	#, mask_patt_52.589, mask_patt_52.589
	vpshufd	$8, %xmm4, %xmm4	#, mask_patt_52.589, mask_patt_52.589
	vpblendvb	%xmm6, %xmm3, %xmm2, %xmm2	# mask_patt_52.589, tmp751, tmp752, tmp753
	vmovq	.LC40(%rip), %xmm3	#, tmp754
	vpblendvb	%xmm5, %xmm3, %xmm2, %xmm2	# mask_patt_52.589, tmp754, tmp753, tmp755
	vmovq	.LC41(%rip), %xmm3	#, tmp756
	vpblendvb	%xmm4, %xmm3, %xmm2, %xmm2	# mask_patt_52.589, tmp756, tmp755, tmp757
	vpsrlq	$32, %xmm2, %xmm3	#, tmp757, tmp760
	vpmaxuw	%xmm2, %xmm3, %xmm3	# tmp757, tmp760, tmp761
	vpsrlq	$16, %xmm3, %xmm7	#, tmp761, tmp763
	vpmaxuw	%xmm7, %xmm3, %xmm3	# tmp763, tmp761, tmp758
	vpextrw	$0, %xmm3, %edi	#, tmp758, tmp764
	vextracti128	$0x1, %ymm0, %xmm3	# tmp689, tmp766
	vpmaxuw	%xmm0, %xmm3, %xmm3	# tmp689, tmp766, tmp767
	vmovd	%edi, %xmm7	# tmp764, tmp764
	vpsrldq	$8, %xmm3, %xmm8	#, tmp767, tmp770
	vpmaxuw	%xmm8, %xmm3, %xmm3	# tmp770, tmp767, tmp771
	vpshuflw	$0, %xmm7, %xmm7	# tmp764, tmp765
	vpsrldq	$4, %xmm3, %xmm8	#, tmp771, tmp773
	vpmaxuw	%xmm8, %xmm3, %xmm3	# tmp773, tmp771, tmp774
	vpcmpeqw	%xmm7, %xmm2, %xmm2	# tmp765, tmp757, tmp799
	vpsrldq	$2, %xmm3, %xmm8	#, tmp774, tmp776
	vpmaxuw	%xmm8, %xmm3, %xmm3	# tmp776, tmp774, tmp768
	vpbroadcastw	%xmm3, %ymm3	# tmp768, tmp778
	vpcmpeqw	%ymm3, %ymm0, %ymm0	# tmp778, tmp689, tmp779
	vpand	%ymm1, %ymm0, %ymm0	# tmp688, tmp779, _416
	vextracti128	$0x1, %ymm0, %xmm1	# _416, tmp780
	vpmaxuw	%xmm0, %xmm1, %xmm0	# _416, tmp780, tmp781
	vpsrldq	$8, %xmm0, %xmm1	#, tmp781, tmp784
	vpmaxuw	%xmm1, %xmm0, %xmm0	# tmp784, tmp781, tmp785
	vpsrldq	$4, %xmm0, %xmm1	#, tmp785, tmp787
	vpmaxuw	%xmm1, %xmm0, %xmm0	# tmp787, tmp785, tmp788
	vpsrldq	$2, %xmm0, %xmm1	#, tmp788, tmp790
	vpmaxuw	%xmm1, %xmm0, %xmm0	# tmp790, tmp788, tmp782
	vmovq	.LC42(%rip), %xmm1	#, tmp793
	vpextrw	$0, %xmm0, %edi	#, tmp782, tmp791
	vmovd	%edi, %xmm0	# tmp791, tmp791
	vpshuflw	$0, %xmm0, %xmm0	# tmp791, tmp792
	vpblendvb	%xmm6, %xmm1, %xmm0, %xmm0	# mask_patt_52.589, tmp793, tmp792, tmp794
	vmovq	.LC43(%rip), %xmm1	#, tmp795
	vpblendvb	%xmm5, %xmm1, %xmm0, %xmm0	# mask_patt_52.589, tmp795, tmp794, tmp796
	vmovq	.LC44(%rip), %xmm1	#, tmp797
	vpblendvb	%xmm4, %xmm1, %xmm0, %xmm0	# mask_patt_52.589, tmp797, tmp796, tmp798
	vpand	%xmm0, %xmm2, %xmm2	# tmp798, tmp799, _482
	vpsrlq	$32, %xmm2, %xmm0	#, _482, tmp802
	vpmaxuw	%xmm0, %xmm2, %xmm2	# tmp802, _482, tmp803
	vpsrlq	$16, %xmm2, %xmm0	#, tmp803, tmp805
	vpmaxuw	%xmm0, %xmm2, %xmm2	# tmp805, tmp803, tmp800
	vpextrw	$0, %xmm2, %esi	#, tmp800, maximum_mag
.L341:
# canny.c:705:       numedges += hist[r];
	addl	%edx, %eax	# _340, numedges
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	-88(%rbp), %edx	# hist[32766], _339
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	$32766, %edi	#, tmp913
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vxorps	%xmm5, %xmm5, %xmm5	# tmp1136
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vmovsd	.LC8(%rip), %xmm1	#, tmp895
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	testl	%edx, %edx	# _339
	cmovne	%edi, %esi	# maximum_mag,, tmp913, maximum_mag
# canny.c:705:       numedges += hist[r];
	addl	%edx, %eax	# _339, numedges
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	-84(%rbp), %edx	# hist[32767], _437
# canny.c:704:       if(hist[r] != 0) maximum_mag = r;
	movl	$32767, %edi	#, tmp916
	testl	%edx, %edx	# _437
	cmovne	%edi, %esi	# maximum_mag,, tmp916, maximum_mag
# canny.c:705:       numedges += hist[r];
	addl	%edx, %eax	# _437, numedges
# canny.c:721:    numedges = hist[1];
	movl	-131148(%rbp), %edx	# hist[1], numedges
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vcvtsi2ssl	%eax, %xmm5, %xmm0	# numedges, tmp1136, tmp957
	vmulss	-131228(%rbp), %xmm0, %xmm0	# %sfp, tmp808, tmp809
# canny.c:722:    while((r<(maximum_mag-1)) && (numedges < highcount)){
	movswl	%si, %r8d	# maximum_mag, maximum_mag
	decl	%r8d	# _248
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vcvtss2sd	%xmm0, %xmm0, %xmm0	# tmp809, tmp810
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vaddsd	%xmm1, %xmm0, %xmm0	# tmp895, tmp810, tmp811
# canny.c:708:    highcount = (int)(numedges * thigh + 0.5);
	vcvttsd2sil	%xmm0, %r9d	# tmp811, highcount
# canny.c:722:    while((r<(maximum_mag-1)) && (numedges < highcount)){
	cmpl	%edx, %r9d	# numedges, highcount
	jle	.L363	#,
	cmpw	$2, %si	#, maximum_mag
	jle	.L363	#,
	movl	$2, %eax	#, ivtmp.671
	.p2align 4
	.p2align 3
.L345:
# canny.c:724:       numedges += hist[r];
	addl	(%r12,%rax,4), %edx	# MEM[(int *)&hist + ivtmp.671_551 * 4], numedges
	movq	%rax, %r10	# ivtmp.671, ivtmp.671
# canny.c:722:    while((r<(maximum_mag-1)) && (numedges < highcount)){
	cmpl	%edx, %r9d	# numedges, highcount
	setg	%sil	#, tmp823
# canny.c:722:    while((r<(maximum_mag-1)) && (numedges < highcount)){
	cmpl	%eax, %r8d	# ivtmp.671, _248
	setg	%cl	#, tmp825
# canny.c:722:    while((r<(maximum_mag-1)) && (numedges < highcount)){
	incq	%rax	# ivtmp.671
	testb	%cl, %sil	# tmp825, tmp823
	jne	.L345	#,
# canny.c:727:    lowthreshold = (int)(highthreshold * tlow + 0.5);
	vxorps	%xmm7, %xmm7, %xmm7	# tmp1138
# canny.c:723:       r++;
	movl	%r10d, %r12d	# ivtmp.671, r
# canny.c:727:    lowthreshold = (int)(highthreshold * tlow + 0.5);
	vcvtsi2ssl	%r10d, %xmm7, %xmm0	# ivtmp.671, tmp1138, tmp958
	vmulss	-131184(%rbp), %xmm0, %xmm5	# %sfp, tmp826, tlow
	vmovss	%xmm5, -131184(%rbp)	# tlow, %sfp
.L344:
	vcvtss2sd	-131184(%rbp), %xmm0, %xmm0	# %sfp, tmp827
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movl	$1, %edi	#,
	movq	-131200(%rbp), %rsi	# %sfp,
# canny.c:727:    lowthreshold = (int)(highthreshold * tlow + 0.5);
	vaddsd	%xmm1, %xmm0, %xmm0	# tmp895, tmp827, tmp828
# canny.c:727:    lowthreshold = (int)(highthreshold * tlow + 0.5);
	vcvttsd2sil	%xmm0, %r15d	# tmp828, lowthreshold
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	vzeroupper
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1141
	vcvtsi2sdq	-131160(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1141, tmp959
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp959, tmp831
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1142, tmp960
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp832, tmp831
	vmovsd	%xmm1, -131208(%rbp)	# tmp831, %sfp
# canny.c:743:    for(r=0,pos=0;r<rows;r++){
	testl	%r14d, %r14d	# rows
	jle	.L346	#,
# canny.c:743:    for(r=0,pos=0;r<rows;r++){
	xorl	%ecx, %ecx	# pos
# canny.c:743:    for(r=0,pos=0;r<rows;r++){
	xorl	%r9d, %r9d	# r
	movslq	%r13d, %rax	# cols, cols
# canny.c:747:             follow_edges((edge+pos), (mag+pos), lowthreshold, cols);
	movswl	%r15w, %r15d	# lowthreshold, lowthreshold
	testl	%r13d, %r13d	# cols
	jle	.L346	#,
	movl	%r14d, -131176(%rbp)	# rows, %sfp
	movl	%r12d, %r14d	# r, r
	movl	%r9d, %r12d	# r, r
	movq	-131216(%rbp), %r9	# %sfp, mag
	movl	%r15d, -131180(%rbp)	# lowthreshold, %sfp
	movq	%rax, -131192(%rbp)	# cols, %sfp
	movl	%ecx, %r15d	# pos, pos
	.p2align 4
	.p2align 3
.L347:
	movslq	%r15d, %rdx	# pos, _709
	movq	-131192(%rbp), %rax	# %sfp, cols
	leaq	(%rbx,%rdx), %r10	#, ivtmp.660
	leaq	(%r9,%rdx,2), %r8	#, ivtmp.661
	addq	%rax, %rdx	# cols, tmp838
	leaq	(%r9,%rdx,2), %r11	#, _548
	jmp	.L349	#
	.p2align 4
	.p2align 3
.L348:
# canny.c:744:       for(c=0;c<cols;c++,pos++){
	addq	$2, %r8	#, ivtmp.661
	incq	%r10	# ivtmp.660
	cmpq	%r8, %r11	# ivtmp.661, _548
	je	.L446	#,
.L349:
# canny.c:745: 	 if((edge[pos] == POSSIBLE_EDGE) && (mag[pos] >= highthreshold)){
	cmpb	$-128, (%r10)	#, MEM[(unsigned char *)_43]
	jne	.L348	#,
# canny.c:745: 	 if((edge[pos] == POSSIBLE_EDGE) && (mag[pos] >= highthreshold)){
	movswl	(%r8), %eax	# MEM[(short int *)_46], MEM[(short int *)_46]
# canny.c:745: 	 if((edge[pos] == POSSIBLE_EDGE) && (mag[pos] >= highthreshold)){
	cmpl	%r14d, %eax	# r, MEM[(short int *)_46]
	jl	.L348	#,
# canny.c:747:             follow_edges((edge+pos), (mag+pos), lowthreshold, cols);
	movl	-131180(%rbp), %edx	# %sfp,
# canny.c:746:             edge[pos] = EDGE;
	movb	$0, (%r10)	#, MEM[(unsigned char *)_43]
# canny.c:747:             follow_edges((edge+pos), (mag+pos), lowthreshold, cols);
	movq	%r8, %rsi	# ivtmp.661,
	movq	%r10, %rdi	# ivtmp.660,
	movl	%r13d, %ecx	# cols,
# canny.c:744:       for(c=0;c<cols;c++,pos++){
	addq	$2, %r8	#, ivtmp.661
	incq	%r10	# ivtmp.660
# canny.c:747:             follow_edges((edge+pos), (mag+pos), lowthreshold, cols);
	call	follow_edges	#
# canny.c:744:       for(c=0;c<cols;c++,pos++){
	cmpq	%r8, %r11	# ivtmp.661, _548
	jne	.L349	#,
	.p2align 4
	.p2align 3
.L446:
	addl	%r13d, %r15d	# cols, pos
# canny.c:743:    for(r=0,pos=0;r<rows;r++){
	incl	%r12d	# r
# canny.c:743:    for(r=0,pos=0;r<rows;r++){
	cmpl	%r12d, -131176(%rbp)	# r, %sfp
	jne	.L347	#,
	movl	-131176(%rbp), %r14d	# %sfp, rows
.L346:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %r15	# %sfp, tmp890
	movl	$1, %edi	#,
	movq	%r15, %rsi	# tmp890,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1146
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC45(%rip), %rsi	#, tmp845
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm7, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1147, tmp962
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1146, tmp961
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp842, _191
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:753:    double secs_hyst_fiveth_for = (fin_hyst_fiveth_for - ini_hyst_fiveth_for);
	vsubsd	-131208(%rbp), %xmm0, %xmm0	# %sfp, _191, secs_hyst_fiveth_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%r15, %rsi	# tmp890,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1149
	vcvtsi2sdq	-131160(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1149, tmp963
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp963, tmp847
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1150, tmp964
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp848, tmp847
	vmovq	%xmm1, %r12	# tmp847, _197
# canny.c:760:    for(r=0,pos=0;r<rows;r++){
	testl	%r14d, %r14d	# rows
	jle	.L350	#,
	movslq	%r13d, %rax	# cols, cols
# canny.c:760:    for(r=0,pos=0;r<rows;r++){
	xorl	%edi, %edi	# pos
# canny.c:760:    for(r=0,pos=0;r<rows;r++){
	xorl	%esi, %esi	# r
	addq	%rbx, %rax	# edge, tmp851
	testl	%r13d, %r13d	# cols
	jle	.L350	#,
	.p2align 4
	.p2align 3
.L351:
	movslq	%edi, %rcx	# pos, _314
	leaq	(%rbx,%rcx), %rdx	#, ivtmp.649
	addq	%rax, %rcx	# tmp851, _677
	.p2align 4
	.p2align 3
.L353:
# canny.c:761:       for(c=0;c<cols;c++,pos++) if(edge[pos] != EDGE) edge[pos] = NOEDGE;
	cmpb	$0, (%rdx)	#, MEM[(unsigned char *)_597]
	je	.L352	#,
# canny.c:761:       for(c=0;c<cols;c++,pos++) if(edge[pos] != EDGE) edge[pos] = NOEDGE;
	movb	$-1, (%rdx)	#, MEM[(unsigned char *)_597]
.L352:
# canny.c:761:       for(c=0;c<cols;c++,pos++) if(edge[pos] != EDGE) edge[pos] = NOEDGE;
	incq	%rdx	# ivtmp.649
	cmpq	%rcx, %rdx	# _677, ivtmp.649
	jne	.L353	#,
# canny.c:760:    for(r=0,pos=0;r<rows;r++){
	incl	%esi	# r
	addl	%r13d, %edi	# cols, pos
# canny.c:760:    for(r=0,pos=0;r<rows;r++){
	cmpl	%esi, %r14d	# r, rows
	jne	.L351	#,
.L350:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rbx	# %sfp, tmp890
	movl	$1, %edi	#,
	movq	%rbx, %rsi	# tmp890,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1152
# canny.c:764:    double secs_hyst_sixth_for = (fin_hyst_sixth_for - ini_hyst_sixth_for);
	vmovq	%r12, %xmm4	# _197, _197
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC46(%rip), %rsi	#, tmp857
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm5, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1153, tmp966
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1152, tmp965
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp854, _203
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$2, %edi	#,
	movl	$1, %eax	#,
# canny.c:764:    double secs_hyst_sixth_for = (fin_hyst_sixth_for - ini_hyst_sixth_for);
	vsubsd	%xmm4, %xmm0, %xmm0	# _197, _203, secs_hyst_sixth_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbx, %rsi	# tmp890,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1155
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC14(%rip), %rsi	#, tmp863
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1155, tmp967
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm5, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1156, tmp968
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp860, _209
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:768:    double secs_hyst = (fin_hyst - ini_hyst);
	vsubsd	-131224(%rbp), %xmm0, %xmm0	# %sfp, _209, secs_hyst
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	movq	-56(%rbp), %rax	# D.11149, tmp980
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp980
	jne	.L447	#,
# canny.c:771: }
	addq	$131208, %rsp	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC15(%rip), %rdi	#, tmp865
# canny.c:771: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-16(%r13), %rsp	#,
	.cfi_def_cfa 7, 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	puts@PLT	#
	.p2align 4
	.p2align 3
.L315:
	.cfi_restore_state
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	$-128, (%rbx,%rax)	#, MEM[(unsigned char *)edge_117(D) + ivtmp.724_719 * 1]
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	incq	%rax	# ivtmp.724
	cmpq	%rdx, %rax	# _737, ivtmp.724
	jne	.L318	#,
	jmp	.L317	#
.L444:
	movl	$-128, %eax	#, tmp922
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movl	$-1, %edi	#, tmp921
	vpcmpeqd	%xmm4, %xmm4, %xmm4	# tmp924
	vpcmpeqd	%ymm2, %ymm2, %ymm2	# tmp928
	vmovd	%eax, %xmm3	# tmp922, tmp923
	vmovd	%eax, %xmm1	# tmp922, tmp927
	movl	%r13d, %eax	# cols, niters.624
	movq	%r8, -131208(%rbp)	# cols, %sfp
	subl	%r10d, %eax	# _695, niters.624
	vpbroadcastb	%xmm3, %xmm3	# tmp923, tmp923
	vpbroadcastb	%xmm1, %ymm1	# tmp927, tmp927
	movl	%eax, -131180(%rbp)	# niters.624, %sfp
	decl	%eax	# tmp930
	movl	%eax, -131192(%rbp)	# tmp930, %sfp
	.p2align 4
	.p2align 3
.L319:
	movslq	%r9d, %rax	# pos, ivtmp.724
	leaq	(%rbx,%rax), %rcx	#, _579
	leaq	1(%r12,%rax), %rsi	#, tmp548
	movq	%rcx, %rdx	# _579, tmp549
	subq	%rsi, %rdx	# tmp548, tmp549
	cmpq	$30, %rdx	#, tmp549
	ja	.L448	#,
	movq	-131208(%rbp), %r8	# %sfp, cols
	jmp	.L294	#
	.p2align 4
	.p2align 3
.L448:
	cmpl	$30, -131176(%rbp)	#, %sfp
	jbe	.L358	#,
	leaq	(%r12,%rax), %rsi	#, vectp.618
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	xorl	%edx, %edx	# ivtmp.730
.L296:
	vpcmpeqb	(%rsi,%rdx), %ymm1, %ymm0	# MEM <vector(32) unsigned char> [(unsigned char *)vectp.618_615 + ivtmp.730_738 * 1], tmp927, tmp557
	vpblendvb	%ymm0, %ymm1, %ymm2, %ymm0	# tmp557, tmp927, tmp928, vect__85.621
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	vmovdqu	%ymm0, (%rcx,%rdx)	# vect__85.621, MEM <vector(32) unsigned char> [(unsigned char *)_579 + ivtmp.730_738 * 1]
	addq	$32, %rdx	#, ivtmp.730
	cmpq	%r11, %rdx	# _748, ivtmp.730
	jne	.L296	#,
	leal	(%r9,%r10), %edx	#, tmp.628
	cmpl	%r10d, %r13d	# _695, cols
	je	.L297	#,
	cmpl	$14, -131192(%rbp)	#, %sfp
	movl	-131180(%rbp), %r8d	# %sfp, niters.624
	jbe	.L359	#,
	movl	%r10d, %esi	# _695,
	movl	%r10d, %ecx	# _695, c
.L295:
	addq	%rax, %rsi	# ivtmp.724, _663
	movl	%r8d, %eax	# niters.624, _656
	andl	$-16, %eax	#, _656
	vpcmpeqb	(%r12,%rsi), %xmm3, %xmm0	# MEM <vector(16) unsigned char> [(unsigned char *)vectp.630_660], tmp923, tmp568
	vpblendvb	%xmm0, %xmm3, %xmm4, %xmm0	# tmp568, tmp923, tmp924, vect__597.633
	addl	%eax, %ecx	# _656, tmp.627
	addl	%eax, %edx	# _656, tmp.628
	andl	$15, %r8d	#, niters.624
	vmovdqu	%xmm0, (%rbx,%rsi)	# vect__597.633, MEM <vector(16) unsigned char> [(unsigned char *)vectp.635_672]
	je	.L297	#,
.L298:
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movslq	%edx, %rsi	# tmp.628, _752
	movzbl	(%r12,%rsi), %eax	# *_753, _754
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %al	#, _754
	cmovne	%edi, %eax	# _754,, tmp921, _754
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%al, (%rbx,%rsi)	# _754, *_755
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	1(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	1(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_764, _765
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _765
	cmovne	%edi, %esi	# _765,, tmp921, _765
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _765, *_766
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	2(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	2(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_775, _776
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _776
	cmovne	%edi, %esi	# _776,, tmp921, _776
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _776, *_777
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	3(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	3(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_786, _787
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _787
	cmovne	%edi, %esi	# _787,, tmp921, _787
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _787, *_788
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	4(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	4(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_797, _798
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _798
	cmovne	%edi, %esi	# _798,, tmp921, _798
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _798, *_799
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	5(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	5(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_808, _809
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _809
	cmovne	%edi, %esi	# _809,, tmp921, _809
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _809, *_810
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	6(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	6(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_819, _820
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _820
	cmovne	%edi, %esi	# _820,, tmp921, _820
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _820, *_821
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	7(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	7(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_830, _831
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _831
	cmovne	%edi, %esi	# _831,, tmp921, _831
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _831, *_832
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	8(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	8(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_841, _842
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _842
	cmovne	%edi, %esi	# _842,, tmp921, _842
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _842, *_843
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	9(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	9(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_852, _853
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _853
	cmovne	%edi, %esi	# _853,, tmp921, _853
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _853, *_854
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	10(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	10(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_863, _864
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _864
	cmovne	%edi, %esi	# _864,, tmp921, _864
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _864, *_865
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	11(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	11(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_874, _875
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _875
	cmovne	%edi, %esi	# _875,, tmp921, _875
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _875, *_876
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	12(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	12(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_885, _886
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _886
	cmovne	%edi, %esi	# _886,, tmp921, _886
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _886, *_887
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	13(%rcx), %esi	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	leal	13(%rdx), %eax	#, pos
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%esi, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cltq
	movzbl	(%r12,%rax), %esi	# *_896, _897
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %sil	#, _897
	cmovne	%edi, %esi	# _897,, tmp921, _897
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	addl	$14, %ecx	#, c
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	addl	$14, %edx	#, pos
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%sil, (%rbx,%rax)	# _897, *_898
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	cmpl	%ecx, %r13d	# c, cols
	jle	.L297	#,
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movslq	%edx, %rdx	# pos, _638
	movzbl	(%r12,%rdx), %eax	# *_639, _640
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	cmpb	$-128, %al	#, _640
	cmovne	%edi, %eax	# _640,, tmp921, _640
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movb	%al, (%rbx,%rdx)	# _640, *_641
	.p2align 4
	.p2align 3
.L297:
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	incl	%r15d	# r
	addl	%r13d, %r9d	# cols, pos
# canny.c:661:    for(r=0,pos=0;r<rows;r++){
	cmpl	%r15d, %r14d	# r, rows
	jne	.L319	#,
	jmp	.L320	#
.L358:
# canny.c:663: 	 if(nms[pos] == POSSIBLE_EDGE) edge[pos] = POSSIBLE_EDGE;
	movl	%r13d, %r8d	# cols, niters.624
	movl	%r9d, %edx	# pos, tmp.628
	xorl	%esi, %esi	#
# canny.c:662:       for(c=0;c<cols;c++,pos++){
	xorl	%ecx, %ecx	# c
	jmp	.L295	#
.L359:
	movl	%r10d, %ecx	# _695, tmp.627
	jmp	.L298	#
.L293:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1164
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC12(%rip), %rsi	#, tmp886
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1164, tmp973
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm7, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1165, tmp974
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp883, _269
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:669:    double secs_hyst_first_for = (fin_hyst_first_for - ini_hyst_first_for);
	vsubsd	-131240(%rbp), %xmm0, %xmm0	# %sfp, _269, secs_hyst_first_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
.L356:
	movslq	%r13d, %rax	# cols, cols
	movq	%rbx, %rdx	# edge, ivtmp.717
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	xorl	%ecx, %ecx	# r
	.p2align 4
	.p2align 3
.L323:
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	incl	%ecx	# r
# canny.c:674:       edge[pos] = NOEDGE;
	movb	$-1, (%rdx)	#, MEM[(unsigned char *)_715]
# canny.c:675:       edge[pos+cols-1] = NOEDGE;
	movb	$-1, -1(%rdx,%rax)	#, MEM[(unsigned char *)_715 + -1B + _706 * 1]
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	addq	%rax, %rdx	# cols, ivtmp.717
	cmpl	%ecx, %r14d	# r, rows
	jne	.L323	#,
# canny.c:678:    for(c=0;c<cols;c++,pos++){
	testl	%r13d, %r13d	# cols
	jle	.L331	#,
.L449:
# canny.c:677:    pos = (rows-1) * cols;
	leal	-1(%r14), %r12d	#, tmp618
# canny.c:677:    pos = (rows-1) * cols;
	imull	%r13d, %r12d	# cols, pos
	jmp	.L330	#
.L292:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp1158
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC12(%rip), %rsi	#, tmp871
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131160(%rbp), %xmm7, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1158, tmp969
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm7, %xmm1	# MEM[(struct timespec *)_481].tv_sec, tmp1159, tmp970
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp868, _247
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:669:    double secs_hyst_first_for = (fin_hyst_first_for - ini_hyst_first_for);
	vsubsd	-131240(%rbp), %xmm0, %xmm0	# %sfp, _247, secs_hyst_first_for
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:678:    for(c=0;c<cols;c++,pos++){
	testl	%r13d, %r13d	# cols
	jg	.L449	#,
.L331:
# canny.c:687:    for(r=0;r<32768;r++) hist[r] = 0;
	leaq	-131152(%rbp), %r12	#, tmp891
	movl	$131072, %edx	#,
	xorl	%esi, %esi	#
	movq	%r12, %rdi	# tmp891,
	call	memset@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	-131200(%rbp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp1161
	vcvtsi2sdq	-131160(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_nsec, tmp1161, tmp971
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp971, tmp878
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	-131168(%rbp), %xmm5, %xmm0	# MEM[(struct timespec *)_481].tv_sec, tmp1162, tmp972
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp879, tmp878
	vmovq	%xmm1, %r15	# tmp878, _361
	jmp	.L355	#
.L363:
# canny.c:720:    r = 1;
	movl	$1, %r12d	#, r
	jmp	.L344	#
.L332:
	movslq	%r13d, %rax	# cols, cols
	movq	%rbx, %rdx	# edge, ivtmp.702
	addq	%rbx, %rax	# edge, _506
.L336:
# canny.c:679:       edge[c] = NOEDGE;
	movb	$-1, (%rdx)	#, MEM[(unsigned char *)_623]
# canny.c:680:       edge[pos] = NOEDGE;
	movb	$-1, (%rdx,%r12)	#, MEM[(unsigned char *)_623 + _317 * 1]
# canny.c:678:    for(c=0;c<cols;c++,pos++){
	incq	%rdx	# ivtmp.702
	cmpq	%rdx, %rax	# ivtmp.702, _506
	jne	.L336	#,
	jmp	.L337	#
.L360:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	xorl	%edx, %edx	#
# canny.c:673:    for(r=0,pos=0;r<rows;r++,pos+=cols){
	xorl	%eax, %eax	# tmp.606
	jmp	.L325	#
.L445:
	vzeroupper
	jmp	.L330	#
.L447:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE56:
	.size	apply_hysteresis, .-apply_hysteresis
	.section	.rodata.str1.8
	.align 8
.LC48:
	.string	"\n===================== Non_Max_Supp ====================="
	.align 8
.LC49:
	.string	"Tiempo bloque serial: \t\t\t%.5g\tsegundos\n"
	.text
	.p2align 4
	.globl	non_max_supp
	.type	non_max_supp, @function
non_max_supp:
.LFB57:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r15	# tmp468, gradx
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp467, mag
	subq	$120, %rsp	#,
	.cfi_def_cfa_offset 176
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC48(%rip), %rdi	#, tmp311
# canny.c:782: {
	movq	%r9, %r13	# tmp472, result
	movq	%rdx, %r14	# tmp469, grady
	vmovss	%xmm4, 48(%rsp)	# yperp, %sfp
	vmovss	%xmm3, 24(%rsp)	# xperp, %sfp
	movl	%r8d, 8(%rsp)	# ncols, %sfp
	movl	%ecx, 16(%rsp)	# nrows, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp519
	movq	%rax, 104(%rsp)	# tmp519, D.11220
	xorl	%eax, %eax	# tmp519
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	leaq	80(%rsp), %rsi	#, tmp461
	movl	$1, %edi	#,
	movq	%rsi, 56(%rsp)	# tmp461, %sfp
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp473
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	movl	16(%rsp), %r10d	# %sfp, nrows
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	88(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_nsec, tmp473, tmp474
	vmovsd	%xmm0, %xmm0, %xmm2	# tmp474, tmp313
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	80(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_sec, tmp473, tmp475
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm2	#, tmp314, tmp313
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	movl	8(%rsp), %r8d	# %sfp, ncols
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	vmovss	24(%rsp), %xmm3	# %sfp, xperp
	vmovss	48(%rsp), %xmm4	# %sfp, yperp
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	leal	-1(%r10), %eax	#, tmp316
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	imull	%r8d, %eax	# ncols, _2
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	testl	%r8d, %r8d	# ncols
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	cltq
# canny.c:797:     for(count=0,resultrowptr=result,resultptr=result+ncols*(nrows-1);
	leaq	0(%r13,%rax), %rdi	#, resultptr
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovsd	%xmm2, 72(%rsp)	# tmp313, %sfp
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	jle	.L495	#,
	movl	%r8d, %edx	# ncols, _443
	leaq	(%rax,%rdx), %rcx	#, tmp318
	testq	%rcx, %rcx	# tmp318
	jle	.L484	#,
	cmpq	%rdx, %rax	# _443, _3
	jl	.L454	#,
.L484:
# canny.c:799:         *resultrowptr = *resultptr = (unsigned char) 0;
	xorl	%esi, %esi	#
	movl	%r8d, 32(%rsp)	# ncols, %sfp
	movl	%r10d, 48(%rsp)	# nrows, %sfp
	vmovss	%xmm4, 24(%rsp)	# yperp, %sfp
	vmovss	%xmm3, 16(%rsp)	# xperp, %sfp
	movq	%rdx, 8(%rsp)	# _443, %sfp
	call	memset@PLT	#
# canny.c:799:         *resultrowptr = *resultptr = (unsigned char) 0;
	xorl	%esi, %esi	#
	movq	%r13, %rdi	# result,
	movq	8(%rsp), %rdx	# %sfp, _443
	call	memset@PLT	#
	vmovss	24(%rsp), %xmm4	# %sfp, yperp
	vmovss	16(%rsp), %xmm3	# %sfp, xperp
	movslq	32(%rsp), %rdx	# %sfp,
	movl	48(%rsp), %r10d	# %sfp, nrows
	movq	%rdx, %r8	#,
.L458:
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	movq	%rdx, 40(%rsp)	# _467, %sfp
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	leaq	-1(%r13,%rdx), %rcx	#, resultrowptr
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	testl	%r10d, %r10d	# nrows
	jle	.L453	#,
	xorl	%eax, %eax	# ivtmp.782
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	xorl	%edx, %edx	# count
	cmpl	$1, %r8d	#, ncols
	jne	.L452	#,
	.p2align 4
	.p2align 3
.L459:
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	incl	%edx	# count
# canny.c:804:         *resultptr = *resultrowptr = (unsigned char) 0;
	movb	$0, (%rcx,%rax)	#, MEM[(unsigned char *)resultrowptr_256 + ivtmp.782_407 * 1]
# canny.c:804:         *resultptr = *resultrowptr = (unsigned char) 0;
	movb	$0, 0(%r13,%rax)	#, MEM[(unsigned char *)result_252(D) + ivtmp.782_407 * 1]
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	incq	%rax	# ivtmp.782
	cmpl	%edx, %r10d	# count, nrows
	jne	.L459	#,
	movq	$1, 40(%rsp)	#, %sfp
.L461:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %rsi	# %sfp,
	movl	$1, %edi	#,
	movl	%r10d, 8(%rsp)	# nrows, %sfp
	movl	%r8d, 24(%rsp)	# ncols, %sfp
	vmovss	%xmm4, 32(%rsp)	# yperp, %sfp
	vmovss	%xmm3, 48(%rsp)	# xperp, %sfp
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp473
# canny.c:812:    for(rowcount=1,magrowptr=mag+ncols+1,gxrowptr=gradx+ncols+1,
	movq	40(%rsp), %rsi	# %sfp, _467
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	88(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_nsec, tmp473, tmp476
	vmovsd	%xmm0, %xmm0, %xmm2	# tmp476, tmp335
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	80(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_sec, tmp473, tmp477
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm2	#, tmp336, tmp335
# canny.c:814:       rowcount<nrows-2;
	movl	8(%rsp), %r10d	# %sfp, nrows
# canny.c:812:    for(rowcount=1,magrowptr=mag+ncols+1,gxrowptr=gradx+ncols+1,
	leaq	1(%rsi), %rdx	#, _6
	leaq	(%rdx,%rdx), %rax	#, _7
# canny.c:813:       gyrowptr=grady+ncols+1,resultrowptr=result+ncols+1;
	leaq	0(%r13,%rdx), %r9	#, resultrowptr
# canny.c:812:    for(rowcount=1,magrowptr=mag+ncols+1,gxrowptr=gradx+ncols+1,
	leaq	(%rbx,%rax), %rcx	#, magrowptr
# canny.c:813:       gyrowptr=grady+ncols+1,resultrowptr=result+ncols+1;
	leaq	(%r14,%rax), %rdi	#, gyrowptr
# canny.c:812:    for(rowcount=1,magrowptr=mag+ncols+1,gxrowptr=gradx+ncols+1,
	leaq	(%r15,%rax), %rbx	#, gxrowptr
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovsd	%xmm2, 64(%rsp)	# tmp335, %sfp
# canny.c:814:       rowcount<nrows-2;
	cmpl	$3, %r10d	#, nrows
	jle	.L478	#,
# canny.c:919:                         z1 = *(magptr - ncols);
	movl	$2, %edx	#, tmp338
	movl	24(%rsp), %r8d	# %sfp, ncols
	leaq	-2(%rax), %r14	#, _140
	subq	%rax, %rdx	# _7, tmp338
# canny.c:851:                         z2 = *(magptr - ncols - 1);
	negq	%rax	# _7
# canny.c:919:                         z1 = *(magptr - ncols);
	movq	%rdx, 8(%rsp)	# tmp338, %sfp
# canny.c:920:                         z2 = *(magptr - ncols + 1);
	movl	$1, %edx	#, tmp339
# canny.c:851:                         z2 = *(magptr - ncols - 1);
	movq	%rax, %r13	# _7, _41
# canny.c:920:                         z2 = *(magptr - ncols + 1);
	subq	%rsi, %rdx	# _467, tmp339
	movq	%rdx, 16(%rsp)	# tmp339, %sfp
	cmpl	$3, %r8d	#, ncols
	jle	.L478	#,
	vmovss	48(%rsp), %xmm3	# %sfp, xperp
	leal	-2(%r10), %r15d	#, _448
# canny.c:812:    for(rowcount=1,magrowptr=mag+ncols+1,gxrowptr=gradx+ncols+1,
	movl	$1, %r10d	#, rowcount
	leal	-3(%r8), %r11d	#, _459
	vmovss	32(%rsp), %xmm4	# %sfp, yperp
# canny.c:968:             if ((mag1 > 0.0) || (mag2 > 0.0))
	vxorps	%xmm5, %xmm5, %xmm5	# tmp432
	movl	%r10d, %r8d	# rowcount, rowcount
	movl	%r15d, 52(%rsp)	# _448, %sfp
	.p2align 4
	.p2align 3
.L463:
	leaq	(%rcx,%r14), %r10	#, magrowptr
# canny.c:817:       for(colcount=1,magptr=magrowptr,gxptr=gxrowptr,gyptr=gyrowptr,
	xorl	%edx, %edx	# ivtmp.748
	movq	%r14, 24(%rsp)	# _140, %sfp
	movl	%r8d, 48(%rsp)	# rowcount, %sfp
	movq	%r10, %rsi	# magrowptr, ivtmp.761
	movq	%r10, 32(%rsp)	# magrowptr, %sfp
	jmp	.L476	#
	.p2align 4
	.p2align 3
.L498:
# canny.c:822:             *resultptr = (unsigned char) NOEDGE;
	movb	$-1, (%r9,%rdx)	#, MEM[(unsigned char *)resultrowptr_434 + ivtmp.748_412 * 1]
	xorl	%eax, %eax	# _534
# canny.c:829:          if(gx >= 0){
	testw	%r12w, %r12w	# gx
	js	.L466	#,
.L499:
# canny.c:830:             if(gy >= 0){
	testw	%bp, %bp	# gy
	js	.L467	#,
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	movswl	2(%rsi), %r8d	# MEM[(short int *)_454 + 2B], _506
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	movswl	(%rcx,%r13), %r10d	# MEM[(short int *)magptr_415 + _41 * 1], _510
# canny.c:831:                     if (gx >= gy)
	cmpw	%bp, %r12w	# gy, gx
	jl	.L468	#,
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	movswl	-2(%rcx), %r14d	# MEM[(short int *)magptr_415 + -2B], _21
	movl	%eax, %r15d	# _534, tmp346
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	subl	%r14d, %r10d	# _21, tmp348
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	subl	%r14d, %r15d	# _21, tmp346
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm2	# tmp348, tmp473, tmp482
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	movswl	2(%rcx), %r10d	# MEM[(short int *)magptr_415 + 2B], _30
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp349, tmp350
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%r15d, %xmm1, %xmm0	# tmp346, tmp473, tmp481
# canny.c:838:                         mag1 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp350, mag1
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	subl	%r10d, %r8d	# _30, tmp353
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	subl	%r10d, %eax	# _30, tmp351
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm6	# tmp353, tmp473, tmp484
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp354, tmp355
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%eax, %xmm1, %xmm2	# tmp351, tmp473, tmp483
# canny.c:844:                         mag2 = (m00 - z1)*xperp + (z2 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp355, mag2
.L469:
	movl	$-1, %eax	#, _439
# canny.c:968:             if ((mag1 > 0.0) || (mag2 > 0.0))
	vcomiss	%xmm5, %xmm0	# tmp432, mag1
	jbe	.L496	#,
.L474:
# canny.c:970:                 *resultptr = (unsigned char) NOEDGE;
	movb	%al, (%r9,%rdx)	# _439, MEM[(unsigned char *)resultrowptr_434 + ivtmp.748_412 * 1]
# canny.c:818:          resultptr=resultrowptr;colcount<ncols-2;
	incq	%rdx	# ivtmp.748
# canny.c:819:          colcount++,magptr++,gxptr++,gyptr++,resultptr++){
	addq	$2, %rcx	#, magptr
# canny.c:818:          resultptr=resultrowptr;colcount<ncols-2;
	addq	$2, %rsi	#, ivtmp.761
	cmpq	%r11, %rdx	# _459, ivtmp.748
	je	.L497	#,
.L476:
# canny.c:820:          m00 = *magptr;
	movswl	(%rcx), %eax	# MEM[(short int *)magptr_415],
# canny.c:821:          if(m00 == 0){
	testw	%ax, %ax	# m00
	je	.L498	#,
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	movswl	(%rbx,%rdx,2), %r8d	# MEM[(short int *)gxrowptr_416 + ivtmp.748_412 * 2],
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	vcvtsi2ssl	%eax, %xmm1, %xmm0	# _534, tmp473, tmp478
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	movl	%r8d, %r12d	#,
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	negl	%r8d	# tmp342
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	vcvtsi2ssl	%r8d, %xmm1, %xmm3	# tmp342, tmp473, tmp479
# canny.c:826:             yperp = (gy = *gyptr)/((float)m00);
	movswl	(%rdi,%rdx,2), %r8d	# MEM[(short int *)gyrowptr_418 + ivtmp.748_412 * 2],
# canny.c:825:             xperp = -(gx = *gxptr)/((float)m00);
	vdivss	%xmm0, %xmm3, %xmm3	# _15, tmp343, xperp
# canny.c:826:             yperp = (gy = *gyptr)/((float)m00);
	vcvtsi2ssl	%r8d, %xmm1, %xmm4	# gy, tmp473, tmp480
# canny.c:826:             yperp = (gy = *gyptr)/((float)m00);
	movl	%r8d, %ebp	#,
# canny.c:826:             yperp = (gy = *gyptr)/((float)m00);
	vdivss	%xmm0, %xmm4, %xmm4	# _15, tmp344, yperp
# canny.c:829:          if(gx >= 0){
	testw	%r12w, %r12w	# gx
	jns	.L499	#,
.L466:
# canny.c:898:                 if ((gy = *gyptr) >= 0)
	movzwl	(%rdi,%rdx,2), %ebp	# MEM[(short int *)gyrowptr_418 + ivtmp.748_412 * 2], gy
# canny.c:898:                 if ((gy = *gyptr) >= 0)
	testw	%bp, %bp	# gy
	js	.L471	#,
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movq	16(%rsp), %r15	# %sfp, _143
# canny.c:900:                     if (-gx >= gy)
	movswl	%r12w, %r8d	# gx, gx
# canny.c:913:                         mag2 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movswl	-2(%rsi), %r10d	# MEM[(short int *)_452 + -2B], _524
# canny.c:900:                     if (-gx >= gy)
	negl	%r8d	# tmp390
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movswl	(%rcx,%r15,2), %r14d	# MEM[(short int *)magptr_415 + _143 * 2], _521
# canny.c:900:                     if (-gx >= gy)
	movswl	%bp, %r15d	# gy, gy
# canny.c:900:                     if (-gx >= gy)
	cmpl	%r15d, %r8d	# gy, tmp390
	jl	.L472	#,
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movswl	2(%rcx), %r8d	# MEM[(short int *)magptr_415 + 2B], _120
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	subl	%r8d, %r14d	# _120, tmp394
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movl	%r8d, %r15d	# _120, tmp392
# canny.c:913:                         mag2 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movswl	-2(%rcx), %r8d	# MEM[(short int *)magptr_415 + -2B], _132
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm2	# tmp394, tmp473, tmp498
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp395, tmp396
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	subl	%eax, %r15d	# _534, tmp392
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	vcvtsi2ssl	%r15d, %xmm1, %xmm0	# tmp392, tmp473, tmp497
# canny.c:907:                         mag1 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp396, mag1
# canny.c:913:                         mag2 = (z1 - m00)*xperp + (z2 - z1)*yperp;
	movl	%r8d, %r14d	# _132, tmp397
.L494:
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	subl	%r8d, %r10d	# _532, tmp419
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	subl	%eax, %r14d	# _534, tmp417
	movl	$-1, %eax	#, _439
# canny.c:968:             if ((mag1 > 0.0) || (mag2 > 0.0))
	vcomiss	%xmm5, %xmm0	# tmp432, mag1
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm6	# tmp419, tmp473, tmp508
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp420, tmp421
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm2	# tmp417, tmp473, tmp507
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp421, mag2
# canny.c:968:             if ((mag1 > 0.0) || (mag2 > 0.0))
	ja	.L474	#,
.L496:
# canny.c:968:             if ((mag1 > 0.0) || (mag2 > 0.0))
	vcomiss	%xmm5, %xmm2	# tmp432, mag2
	ja	.L474	#,
# canny.c:974:                 if (mag2 == 0.0)
	vucomiss	%xmm5, %xmm2	# tmp432, mag2
	jp	.L485	#,
	je	.L474	#,
.L485:
	movl	$-128, %eax	#, _439
	jmp	.L474	#
	.p2align 4
	.p2align 3
.L467:
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	movq	16(%rsp), %r15	# %sfp, _143
# canny.c:864:                     if (gx >= -gy)
	movswl	%bp, %r8d	# gy, gy
# canny.c:864:                     if (gx >= -gy)
	movswl	%r12w, %r10d	# gx, gx
# canny.c:864:                     if (gx >= -gy)
	negl	%r8d	# tmp368
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	movswl	(%rcx,%r15,2), %r14d	# MEM[(short int *)magptr_415 + _143 * 2], _513
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	movswl	-2(%rsi), %r15d	# MEM[(short int *)_451 + -2B], _516
# canny.c:864:                     if (gx >= -gy)
	cmpl	%r8d, %r10d	# tmp368, gx
	jl	.L470	#,
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	movswl	-2(%rcx), %r8d	# MEM[(short int *)magptr_415 + -2B], _69
	movl	%eax, %r10d	# _534, tmp369
	subl	%r8d, %r10d	# _69, tmp369
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	subl	%r15d, %r8d	# _516, tmp371
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm2	# tmp371, tmp473, tmp490
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	movswl	2(%rcx), %r8d	# MEM[(short int *)magptr_415 + 2B], _80
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp372, tmp373
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm0	# tmp369, tmp473, tmp489
# canny.c:871:                         mag1 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp373, mag1
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	subl	%r8d, %eax	# _80, tmp374
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	subl	%r14d, %r8d	# _513, tmp376
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm6	# tmp376, tmp473, tmp492
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp377, tmp378
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%eax, %xmm1, %xmm2	# tmp374, tmp473, tmp491
# canny.c:877:                         mag2 = (m00 - z1)*xperp + (z1 - z2)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp378, mag2
	jmp	.L469	#
	.p2align 4
	.p2align 3
.L468:
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	movq	8(%rsp), %r15	# %sfp, _141
	movswl	(%rcx,%r15), %r14d	# MEM[(short int *)magptr_415 + _141 * 1], _43
	movl	%r14d, %r15d	# _43, tmp356
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	subl	%eax, %r14d	# _534, tmp358
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	subl	%r10d, %r15d	# _510, tmp356
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	movswl	(%rsi), %r10d	# MEM[(short int *)_454], _54
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm2	# tmp358, tmp473, tmp486
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp359, tmp360
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r15d, %xmm1, %xmm0	# tmp356, tmp473, tmp485
# canny.c:853:                         mag1 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp360, mag1
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	movl	%r10d, %r14d	# _54, tmp361
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	subl	%eax, %r10d	# _534, tmp363
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm6	# tmp363, tmp473, tmp488
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp364, tmp365
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	subl	%r8d, %r14d	# _506, tmp361
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm2	# tmp361, tmp473, tmp487
# canny.c:859:                         mag2 = (z1 - z2)*xperp + (z1 - m00)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp365, mag2
	jmp	.L469	#
	.p2align 4
	.p2align 3
.L471:
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	movswl	2(%rsi), %r10d	# MEM[(short int *)_453 + 2B], _528
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	movswl	(%rcx,%r13), %r8d	# MEM[(short int *)magptr_415 + _41 * 1], _532
# canny.c:933:                     if (-gx > -gy)
	cmpw	%bp, %r12w	# gy, gx
	jge	.L473	#,
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	movswl	2(%rcx), %r14d	# MEM[(short int *)magptr_415 + 2B], _167
	movl	%r14d, %r15d	# _167, tmp412
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	subl	%r10d, %r14d	# _528, tmp414
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	movswl	-2(%rcx), %r10d	# MEM[(short int *)magptr_415 + -2B], _179
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm2	# tmp414, tmp473, tmp506
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp415, tmp416
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	subl	%eax, %r15d	# _534, tmp412
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vcvtsi2ssl	%r15d, %xmm1, %xmm0	# tmp412, tmp473, tmp505
# canny.c:946:                         mag2 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	movl	%r10d, %r14d	# _179, tmp417
# canny.c:940:                         mag1 = (z1 - m00)*xperp + (z1 - z2)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp416, mag1
	jmp	.L494	#
	.p2align 4
	.p2align 3
.L470:
# canny.c:886:                         mag1 = (z1 - z2)*xperp + (m00 - z1)*yperp;
	movswl	(%rsi), %r8d	# MEM[(short int *)_451], _92
	movl	%r8d, %r10d	# _92, tmp379
	subl	%r15d, %r10d	# _516, tmp379
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	movq	8(%rsp), %r15	# %sfp, _141
# canny.c:886:                         mag1 = (z1 - z2)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm0	# tmp379, tmp473, tmp493
# canny.c:886:                         mag1 = (z1 - z2)*xperp + (m00 - z1)*yperp;
	movl	%eax, %r10d	# _534, tmp381
	subl	%r8d, %r10d	# _92, tmp381
# canny.c:886:                         mag1 = (z1 - z2)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm2	# tmp381, tmp473, tmp494
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp382, tmp383
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	movswl	(%rcx,%r15), %r8d	# MEM[(short int *)magptr_415 + _141 * 1], _106
# canny.c:886:                         mag1 = (z1 - z2)*xperp + (m00 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp383, mag1
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	subl	%r8d, %eax	# _106, tmp386
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	movl	%r8d, %r10d	# _106, tmp384
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	vcvtsi2ssl	%eax, %xmm1, %xmm6	# tmp386, tmp473, tmp496
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp387, tmp388
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	subl	%r14d, %r10d	# _513, tmp384
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm2	# tmp384, tmp473, tmp495
# canny.c:892:                         mag2 = (z1 - z2)*xperp  + (m00 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp388, mag2
	jmp	.L469	#
	.p2align 4
	.p2align 3
.L472:
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	movq	8(%rsp), %r15	# %sfp, _141
	movswl	(%rcx,%r15), %r8d	# MEM[(short int *)magptr_415 + _141 * 1], _147
	subl	%r8d, %r14d	# _147, tmp402
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	subl	%eax, %r8d	# _534, tmp404
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm2	# tmp404, tmp473, tmp502
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	movswl	(%rsi), %r8d	# MEM[(short int *)_452], _159
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp405, tmp406
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r14d, %xmm1, %xmm0	# tmp402, tmp473, tmp501
# canny.c:922:                         mag1 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp406, mag1
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	subl	%r8d, %r10d	# _159, tmp407
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	subl	%eax, %r8d	# _534, tmp409
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm6	# tmp409, tmp473, tmp504
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp410, tmp411
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm2	# tmp407, tmp473, tmp503
# canny.c:928:                         mag2 = (z2 - z1)*xperp + (z1 - m00)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp411, mag2
	jmp	.L469	#
	.p2align 4
	.p2align 3
.L497:
# canny.c:816:       resultrowptr+=ncols){
	movq	40(%rsp), %rax	# %sfp, _467
# canny.c:815:       rowcount++,magrowptr+=ncols,gyrowptr+=ncols,gxrowptr+=ncols,
	movl	48(%rsp), %r8d	# %sfp, rowcount
	movq	24(%rsp), %r14	# %sfp, _140
	movq	32(%rsp), %r10	# %sfp, magrowptr
# canny.c:816:       resultrowptr+=ncols){
	addq	%rax, %r9	# _467, resultrowptr
# canny.c:814:       rowcount<nrows-2;
	movl	52(%rsp), %eax	# %sfp, _448
# canny.c:815:       rowcount++,magrowptr+=ncols,gyrowptr+=ncols,gxrowptr+=ncols,
	incl	%r8d	# rowcount
# canny.c:815:       rowcount++,magrowptr+=ncols,gyrowptr+=ncols,gxrowptr+=ncols,
	movq	%r10, %rcx	# magrowptr, magrowptr
# canny.c:815:       rowcount++,magrowptr+=ncols,gyrowptr+=ncols,gxrowptr+=ncols,
	addq	%r14, %rdi	# _140, gyrowptr
# canny.c:815:       rowcount++,magrowptr+=ncols,gyrowptr+=ncols,gxrowptr+=ncols,
	addq	%r14, %rbx	# _140, gxrowptr
# canny.c:814:       rowcount<nrows-2;
	cmpl	%eax, %r8d	# _448, rowcount
	jne	.L463	#,
.L478:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %rbx	# %sfp, tmp461
	movl	$1, %edi	#,
	movq	%rbx, %rsi	# tmp461,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp473
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC49(%rip), %rsi	#, tmp442
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	80(%rsp), %xmm1, %xmm2	# MEM[(struct timespec *)_370].tv_sec, tmp473, tmp514
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	88(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_nsec, tmp473, tmp513
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vfmadd132sd	.LC10(%rip), %xmm2, %xmm0	#, tmp439, _365
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:982:     double secs_non_max = (fin_non_max - ini_non_max);
	vsubsd	64(%rsp), %xmm0, %xmm0	# %sfp, _365, secs_non_max
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbx, %rsi	# tmp461,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp473
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC14(%rip), %rsi	#, tmp448
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	88(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_nsec, tmp473, tmp515
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	80(%rsp), %xmm1, %xmm1	# MEM[(struct timespec *)_370].tv_sec, tmp473, tmp516
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp445, _371
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:986:     double secs_non_max_supp = (fin_non_max_supp - ini_non_max_supp);
	vsubsd	72(%rsp), %xmm0, %xmm0	# %sfp, _371, secs_non_max_supp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
	movq	104(%rsp), %rax	# D.11220, tmp520
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp520
	jne	.L500	#,
# canny.c:989: }
	addq	$120, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC15(%rip), %rdi	#, tmp450
# canny.c:989: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	jmp	puts@PLT	#
	.p2align 4
	.p2align 3
.L473:
	.cfi_restore_state
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	movswl	(%rsi), %r14d	# MEM[(short int *)_453], _191
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	movq	8(%rsp), %r15	# %sfp, _141
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	subl	%r14d, %r10d	# _191, tmp422
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm0	# tmp422, tmp473, tmp509
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	movl	%eax, %r10d	# _534, tmp424
	subl	%r14d, %r10d	# _191, tmp424
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%r10d, %xmm1, %xmm2	# tmp424, tmp473, tmp510
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	movswl	(%rcx,%r15), %r10d	# MEM[(short int *)magptr_415 + _141 * 1], _204
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vmulss	%xmm4, %xmm2, %xmm2	# yperp, tmp425, tmp426
# canny.c:955:                         mag1 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm2, %xmm0	# xperp, tmp426, mag1
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	subl	%r10d, %eax	# _204, tmp429
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	subl	%r10d, %r8d	# _204, tmp427
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%eax, %xmm1, %xmm6	# tmp429, tmp473, tmp512
	vmulss	%xmm4, %xmm6, %xmm6	# yperp, tmp430, tmp431
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vcvtsi2ssl	%r8d, %xmm1, %xmm2	# tmp427, tmp473, tmp511
# canny.c:961:                         mag2 = (z2 - z1)*xperp + (m00 - z1)*yperp;
	vfmadd132ss	%xmm3, %xmm6, %xmm2	# xperp, tmp431, mag2
	jmp	.L469	#
.L454:
	movslq	%r8d, %rdx	# ncols, _467
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	xorl	%eax, %eax	# ivtmp.796
	.p2align 4
	.p2align 3
.L457:
# canny.c:799:         *resultrowptr = *resultptr = (unsigned char) 0;
	movb	$0, (%rdi,%rax)	#, MEM[(unsigned char *)resultptr_255 + ivtmp.796_403 * 1]
# canny.c:799:         *resultrowptr = *resultptr = (unsigned char) 0;
	movb	$0, 0(%r13,%rax)	#, MEM[(unsigned char *)result_252(D) + ivtmp.796_403 * 1]
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	incq	%rax	# ivtmp.796
	cmpq	%rax, %rdx	# ivtmp.796, _467
	jne	.L457	#,
	jmp	.L458	#
.L495:
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	movslq	%r8d, %rax	# ncols, _467
	movq	%rax, 40(%rsp)	# _467, %sfp
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	leaq	-1(%r13,%rax), %rcx	#, resultrowptr
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	testl	%r10d, %r10d	# nrows
	jle	.L453	#,
.L452:
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	movq	40(%rsp), %rsi	# %sfp, _467
# canny.c:798:         count<ncols; resultptr++,resultrowptr++,count++){
	xorl	%eax, %eax	# ivtmp.791
# canny.c:802:     for(count=0,resultptr=result,resultrowptr=result+ncols-1;
	xorl	%edx, %edx	# count
	.p2align 4
	.p2align 3
.L460:
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	incl	%edx	# count
# canny.c:804:         *resultptr = *resultrowptr = (unsigned char) 0;
	movb	$0, (%rcx,%rax)	#, MEM[(unsigned char *)resultrowptr_466 + ivtmp.791_405 * 1]
# canny.c:804:         *resultptr = *resultrowptr = (unsigned char) 0;
	movb	$0, 0(%r13,%rax)	#, MEM[(unsigned char *)result_252(D) + ivtmp.791_405 * 1]
# canny.c:803:         count<nrows; count++,resultptr+=ncols,resultrowptr+=ncols){
	addq	%rsi, %rax	# _467, ivtmp.791
	cmpl	%edx, %r10d	# count, nrows
	jne	.L460	#,
	jmp	.L461	#
.L453:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	56(%rsp), %rsi	# %sfp,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorps	%xmm1, %xmm1, %xmm1	# tmp473
	vcvtsi2sdq	88(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_nsec, tmp473, tmp517
	vmovsd	%xmm0, %xmm0, %xmm2	# tmp517, tmp452
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	80(%rsp), %xmm1, %xmm0	# MEM[(struct timespec *)_370].tv_sec, tmp473, tmp518
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm2	#, tmp453, tmp452
	vmovsd	%xmm2, 64(%rsp)	# tmp452, %sfp
	jmp	.L478	#
.L500:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE57:
	.size	non_max_supp, .-non_max_supp
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC50:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC51:
	.string	"Error opening the file %s for writing.\n"
	.align 8
.LC52:
	.string	"Error allocating the nms image.\n"
	.align 8
.LC53:
	.string	"Error allocating the edge image.\n"
	.text
	.p2align 4
	.globl	canny
	.type	canny, @function
canny:
.LFB48:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%esi, %r14d	# tmp172, rows
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %r15d	# tmp173, cols
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 192
# canny.c:177: {
	movq	%r8, %rbx	# tmp178, fname
	movl	%esi, 24(%rsp)	# rows, %sfp
	movl	%edx, 28(%rsp)	# cols, %sfp
	vmovss	%xmm1, 56(%rsp)	# tmp175, %sfp
	vmovss	%xmm2, 60(%rsp)	# tmp176, %sfp
	movq	%rcx, 64(%rsp)	# tmp177, %sfp
# canny.c:192:    gaussian_smooth(image, rows, cols, sigma, &smoothedim);
	leaq	88(%rsp), %rcx	#, tmp125
# canny.c:177: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp187
	movq	%rax, 120(%rsp)	# tmp187, D.11274
	xorl	%eax, %eax	# tmp187
# canny.c:192:    gaussian_smooth(image, rows, cols, sigma, &smoothedim);
	call	gaussian_smooth	#
# canny.c:198:    derrivative_x_y(smoothedim, rows, cols, &delta_x, &delta_y);
	movq	88(%rsp), %rdi	# smoothedim, smoothedim.23_1
	leaq	96(%rsp), %rcx	#, tmp127
	leaq	104(%rsp), %r8	#,
	movl	%r15d, %edx	# cols,
	movl	%r14d, %esi	# rows,
	movq	%rdi, 48(%rsp)	# smoothedim.23_1, %sfp
	call	derrivative_x_y	#
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	%r14d, %eax	# rows, tmp128
	imull	%r15d, %eax	# cols, tmp128
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	cltq
	movq	%rax, 40(%rsp)	# _141, %sfp
# canny.c:205:    if(fname != NULL){
	testq	%rbx, %rbx	# fname
	je	.L527	#,
	movq	%rax, %rdi	# _141,
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	movl	$4, %esi	#,
# canny.c:210:       radian_direction(delta_x, delta_y, rows, cols, &dir_radians, -1, -1);
	movq	104(%rsp), %r12	# delta_y, delta_y.24_2
	movq	96(%rsp), %r13	# delta_x, delta_x.25_3
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	call	calloc@PLT	#
	movq	%rax, (%rsp)	# dirim, %sfp
# canny.c:288:    if((dirim = (float *) calloc(rows*cols, sizeof(float))) == NULL){
	testq	%rax, %rax	# dirim
	je	.L504	#,
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	movl	24(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L505	#,
	movslq	28(%rsp), %rsi	# %sfp,
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	xorl	%eax, %eax	# r
	testl	%esi, %esi	# cols
	jle	.L505	#,
	movl	%eax, %edx	# r, r
	movq	%rbx, 72(%rsp)	# fname, %sfp
	movq	%rsi, 32(%rsp)	# cols, %sfp
	.p2align 4
	.p2align 3
.L506:
	movslq	%eax, %rbp	# pos, ivtmp.811
	movl	%edx, 8(%rsp)	# r, %sfp
	movl	%eax, 20(%rsp)	# pos, %sfp
	movq	32(%rsp), %rcx	# %sfp, cols
	leaq	(%rcx,%rbp), %rbx	#, _121
	jmp	.L512	#
	.p2align 4
	.p2align 3
.L529:
# canny.c:325:       if(y >= 0) return(ang);
	testw	%r14w, %r14w	# _68
	jg	.L510	#,
.L526:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp144, _127
.L508:
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	movq	(%rsp), %rax	# %sfp, dirim
	vmovss	%xmm0, (%rax,%rbp,4)	# _127, MEM[(float *)dirim_60 + ivtmp.811_116 * 4]
# canny.c:295:       for(c=0;c<cols;c++,pos++){
	incq	%rbp	# ivtmp.811
	cmpq	%rbx, %rbp	# _121, ivtmp.811
	je	.L528	#,
.L512:
# canny.c:296:          dx = (double)delta_x[pos];
	movzwl	0(%r13,%rbp,2), %r15d	# MEM[(short int *)delta_x.25_3 + ivtmp.811_116 * 2], _65
# canny.c:297:          dy = (double)delta_y[pos];
	movzwl	(%r12,%rbp,2), %r14d	# MEM[(short int *)delta_y.24_2 + ivtmp.811_116 * 2], _68
	vxorps	%xmm0, %xmm0, %xmm0	# _127
# canny.c:320:    if((xu == 0) && (yu == 0)) return(0);
	movl	%r15d, %eax	# _65, tmp188
	orw	%r14w, %ax	# _68, tmp188
	je	.L508	#,
# canny.c:297:          dy = (double)delta_y[pos];
	movswl	%r14w, %esi	# _68, _68
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp212
	vcvtsi2sdl	%esi, %xmm3, %xmm0	# _68, tmp212, tmp185
# canny.c:296:          dx = (double)delta_x[pos];
	movswl	%r15w, %esi	# _65, _65
# canny.c:318:    yu = fabs(y);
	vandpd	.LC2(%rip), %xmm0, %xmm0	#, dy, yu
# canny.c:296:          dx = (double)delta_x[pos];
	vcvtsi2sdl	%esi, %xmm3, %xmm1	# _65, tmp213, tmp186
# canny.c:317:    xu = fabs(x);
	vandpd	.LC2(%rip), %xmm1, %xmm1	#, dx, xu
# canny.c:322:    ang = atan(yu/xu);
	vdivsd	%xmm1, %xmm0, %xmm0	# xu, yu, tmp139
	call	atan@PLT	#
# canny.c:324:    if(x >= 0){
	testw	%r15w, %r15w	# _65
	jns	.L529	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	testw	%r14w, %r14w	# _68
	jg	.L511	#,
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	vmovsd	.LC4(%rip), %xmm5	#, tmp215
	vsubsd	%xmm0, %xmm5, %xmm0	# ang, tmp215, tmp142
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp142, _127
# canny.c:329:       if(y >= 0) return(M_PI - ang);
	jmp	.L508	#
	.p2align 4
	.p2align 3
.L510:
# canny.c:326:       else return(2*M_PI - ang);
	vmovsd	.LC3(%rip), %xmm4	#, tmp214
	vsubsd	%xmm0, %xmm4, %xmm0	# ang, tmp214, tmp140
# canny.c:302:          dirim[pos] = (float)angle_radians(dx, dy);
	vcvtsd2ss	%xmm0, %xmm0, %xmm0	# tmp140, _127
# canny.c:326:       else return(2*M_PI - ang);
	jmp	.L508	#
	.p2align 4
	.p2align 3
.L511:
# canny.c:330:       else return(M_PI + ang);
	vaddsd	.LC4(%rip), %xmm0, %xmm0	#, ang, tmp144
	jmp	.L526	#
	.p2align 4
	.p2align 3
.L528:
	movl	8(%rsp), %edx	# %sfp, r
	movl	20(%rsp), %eax	# %sfp, pos
	movl	28(%rsp), %ecx	# %sfp, cols
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	incl	%edx	# r
	addl	%ecx, %eax	# cols, pos
# canny.c:294:    for(r=0,pos=0;r<rows;r++){
	cmpl	%edx, 24(%rsp)	# r, %sfp
	jne	.L506	#,
	movq	72(%rsp), %rbx	# %sfp, fname
.L505:
# canny.c:215:       if((fpdir = fopen(fname, "wb")) == NULL){
	leaq	.LC50(%rip), %rsi	#, tmp147
	movq	%rbx, %rdi	# fname,
	call	fopen@PLT	#
	movq	%rax, %rcx	# tmp181, tmp148
# canny.c:215:       if((fpdir = fopen(fname, "wb")) == NULL){
	testq	%rax, %rax	# tmp148
	je	.L530	#,
# canny.c:219:       fwrite(dir_radians, sizeof(float), rows*cols, fpdir);
	movq	(%rsp), %rbx	# %sfp, dirim
	movq	40(%rsp), %rdx	# %sfp,
	movl	$4, %esi	#,
	movq	%rax, 8(%rsp)	# tmp148, %sfp
	movq	%rbx, %rdi	# dirim,
	call	fwrite@PLT	#
# canny.c:220:       fclose(fpdir);
	movq	8(%rsp), %rdi	# %sfp,
	call	fclose@PLT	#
# canny.c:221:       free(dir_radians);
	movq	%rbx, %rdi	# dirim,
	call	free@PLT	#
.L503:
# canny.c:228:    magnitude_x_y(delta_x, delta_y, rows, cols, &magnitude);
	movl	28(%rsp), %ecx	# %sfp,
	movl	24(%rsp), %edx	# %sfp,
	leaq	112(%rsp), %r8	#,
	movq	%r12, %rsi	# delta_y.24_2,
	movq	%r13, %rdi	# delta_x.25_3,
	call	magnitude_x_y	#
# canny.c:234:    if((nms = (unsigned char *) calloc(rows*cols,sizeof(unsigned char)))==NULL){
	movq	40(%rsp), %rdi	# %sfp,
	movl	$1, %esi	#,
	call	calloc@PLT	#
	movq	%rax, %rbx	# tmp182, tmp152
# canny.c:234:    if((nms = (unsigned char *) calloc(rows*cols,sizeof(unsigned char)))==NULL){
	testq	%rax, %rax	# tmp152
	je	.L531	#,
# canny.c:239:    non_max_supp(magnitude, delta_x, delta_y, rows, cols, nms);
	movq	112(%rsp), %rbp	# magnitude, magnitude.34_13
	movl	28(%rsp), %r8d	# %sfp,
	movq	%rax, %r9	# tmp152,
	movq	%r12, %rdx	# delta_y.24_2,
	movl	24(%rsp), %ecx	# %sfp,
	movq	%r13, %rsi	# delta_x.25_3,
	movq	%rbp, %rdi	# magnitude.34_13,
	call	non_max_supp	#
# canny.c:245:    if((*edge=(unsigned char *)calloc(rows*cols,sizeof(unsigned char))) ==NULL){
	movq	40(%rsp), %rdi	# %sfp,
	movl	$1, %esi	#,
	call	calloc@PLT	#
	movq	%rax, %r8	# tmp183, tmp155
# canny.c:245:    if((*edge=(unsigned char *)calloc(rows*cols,sizeof(unsigned char))) ==NULL){
	movq	64(%rsp), %rax	# %sfp, edge
	movq	%r8, (%rax)	# tmp155, *edge_38(D)
# canny.c:245:    if((*edge=(unsigned char *)calloc(rows*cols,sizeof(unsigned char))) ==NULL){
	testq	%r8, %r8	# tmp155
	je	.L532	#,
# canny.c:250:    apply_hysteresis(magnitude, nms, rows, cols, tlow, thigh, *edge);
	vmovss	60(%rsp), %xmm1	# %sfp,
	movq	%rbx, %rsi	# tmp152,
	movq	%rbp, %rdi	# magnitude.34_13,
	vmovss	56(%rsp), %xmm0	# %sfp,
	movl	28(%rsp), %ecx	# %sfp,
	movl	24(%rsp), %edx	# %sfp,
	call	apply_hysteresis	#
# canny.c:256:    free(smoothedim);
	movq	48(%rsp), %rdi	# %sfp,
	call	free@PLT	#
# canny.c:257:    free(delta_x);
	movq	%r13, %rdi	# delta_x.25_3,
	call	free@PLT	#
# canny.c:258:    free(delta_y);
	movq	%r12, %rdi	# delta_y.24_2,
	call	free@PLT	#
# canny.c:259:    free(magnitude);
	movq	%rbp, %rdi	# magnitude.34_13,
	call	free@PLT	#
# canny.c:260:    free(nms);
	movq	120(%rsp), %rax	# D.11274, tmp189
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	jne	.L533	#,
# canny.c:261: }
	addq	$136, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# canny.c:260:    free(nms);
	movq	%rbx, %rdi	# tmp152,
# canny.c:261: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# canny.c:260:    free(nms);
	jmp	free@PLT	#
.L527:
	.cfi_restore_state
# canny.c:210:       radian_direction(delta_x, delta_y, rows, cols, &dir_radians, -1, -1);
	movq	104(%rsp), %r12	# delta_y, delta_y.24_2
	movq	96(%rsp), %r13	# delta_x, delta_x.25_3
	jmp	.L503	#
.L533:
# canny.c:260:    free(nms);
	call	__stack_chk_fail@PLT	#
.L532:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC53(%rip), %rdi	#, tmp157
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:247:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L531:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC52(%rip), %rdi	#, tmp154
	movl	$32, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:236:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L530:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# fname,
	leaq	.LC51(%rip), %rdx	#, tmp150
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:217:          exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L504:
	call	radian_direction.part.0	#
	.cfi_endproc
.LFE48:
	.size	canny, .-canny
	.section	.rodata.str1.1
.LC54:
	.string	"r"
	.section	.rodata.str1.8
	.align 8
.LC55:
	.string	"Error reading the file %s in read_pgm_image().\n"
	.section	.rodata.str1.1
.LC56:
	.string	"P5"
	.section	.rodata.str1.8
	.align 8
.LC57:
	.string	"The file %s is not in PGM format in "
	.section	.rodata.str1.1
.LC58:
	.string	"read_pgm_image().\n"
.LC59:
	.string	"%d %d"
	.section	.rodata.str1.8
	.align 8
.LC60:
	.string	"Memory allocation failure in read_pgm_image().\n"
	.align 8
.LC61:
	.string	"Error reading the image data in read_pgm_image().\n"
	.text
	.p2align 4
	.globl	read_pgm_image
	.type	read_pgm_image, @function
read_pgm_image:
.LFB73:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r15	# tmp141, infilename
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r14	# tmp142, image
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
# canny.c:1014: {
	movq	%rdx, %r13	# tmp143, rows
# canny.c:1022:    if(infilename == NULL) fp = stdin;
	movq	stdin(%rip), %rbx	# stdin, fp
# canny.c:1014: {
	movq	%rcx, %r12	# tmp144, cols
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp148
	movq	%rax, 72(%rsp)	# tmp148, D.11286
	xorl	%eax, %eax	# tmp148
# canny.c:1022:    if(infilename == NULL) fp = stdin;
	testq	%rdi, %rdi	# infilename
	je	.L536	#,
# canny.c:1024:       if((fp = fopen(infilename, "r")) == NULL){
	leaq	.LC54(%rip), %rsi	#, tmp112
	call	fopen@PLT	#
	movq	%rax, %rbx	# tmp145, fp
# canny.c:1024:       if((fp = fopen(infilename, "r")) == NULL){
	testq	%rax, %rax	# fp
	je	.L556	#,
.L536:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	%rsp, %rbp	#, tmp140
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp140,
	call	fgets@PLT	#
# canny.c:1036:    if(strncmp(buf,"P5",2) != 0){
	cmpw	$13648, (%rsp)	#, MEM <char[1:2]> [(void *)&buf]
	je	.L540	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%r15, %rcx	# infilename,
	leaq	.LC57(%rip), %rdx	#, tmp120
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$18, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC58(%rip), %rdi	#, tmp122
	call	fwrite@PLT	#
# canny.c:1039:       if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	je	.L537	#,
.L555:
# canny.c:1039:       if(fp != stdin) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L537:
# canny.c:1027:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L534	#
	.p2align 4
	.p2align 3
.L540:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp140,
	call	fgets@PLT	#
# canny.c:1042:    do{ fgets(buf, 70, fp); }while(buf[0] == '#');  /* skip all comment lines */
	cmpb	$35, (%rsp)	#, buf[0]
	je	.L540	#,
# canny.c:1043:    sscanf(buf, "%d %d", cols, rows);
	movq	%r13, %rcx	# rows,
	movq	%r12, %rdx	# cols,
	leaq	.LC59(%rip), %rsi	#, tmp125
	movq	%rbp, %rdi	# tmp140,
	xorl	%eax, %eax	#
	call	__isoc23_sscanf@PLT	#
	.p2align 4
	.p2align 3
.L543:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp140,
	call	fgets@PLT	#
# canny.c:1044:    do{ fgets(buf, 70, fp); }while(buf[0] == '#');  /* skip all comment lines */
	cmpb	$35, (%rsp)	#, buf[0]
	je	.L543	#,
# canny.c:1049:    if(((*image) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movl	0(%r13), %ebp	# *rows_40(D), *rows_40(D)
	imull	(%r12), %ebp	# *cols_39(D), tmp127
# canny.c:1049:    if(((*image) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movslq	%ebp, %rbp	# tmp127, _11
	movq	%rbp, %rdi	# _11,
	call	malloc@PLT	#
	movq	%rax, %rdi	# tmp146, tmp129
# canny.c:1049:    if(((*image) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	%rax, (%r14)	# tmp129, *image_43(D)
# canny.c:1049:    if(((*image) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	testq	%rax, %rax	# tmp129
	je	.L557	#,
# canny.c:1054:    if((*rows) != fread((*image), (*cols), (*rows), fp)){
	movslq	0(%r13), %r13	# *rows_40(D), _16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:215:   return __fread_chk (__ptr, sz, __size, __n, __stream);
	movq	%rbx, %r8	# fp,
	movq	%rbp, %rsi	# _11,
# canny.c:1054:    if((*rows) != fread((*image), (*cols), (*rows), fp)){
	movslq	(%r12), %rdx	# *cols_39(D), *cols_39(D)
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:215:   return __fread_chk (__ptr, sz, __size, __n, __stream);
	movq	%r13, %rcx	# _16,
	call	__fread_chk@PLT	#
# canny.c:1054:    if((*rows) != fread((*image), (*cols), (*rows), fp)){
	cmpq	%rax, %r13	# tmp147, _16
	jne	.L558	#,
# canny.c:1061:    if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	je	.L549	#,
# canny.c:1061:    if(fp != stdin) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L549:
# canny.c:1062:    return(1);
	movl	$1, %eax	#, <retval>
.L534:
# canny.c:1063: }
	movq	72(%rsp), %rdx	# D.11286, tmp149
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp149
	jne	.L559	#,
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L558:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC61(%rip), %rdi	#, tmp136
	call	fwrite@PLT	#
# canny.c:1056:       if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	je	.L547	#,
# canny.c:1056:       if(fp != stdin) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L547:
# canny.c:1057:       free((*image));
	movq	(%r14), %rdi	# *image_43(D), *image_43(D)
	call	free@PLT	#
# canny.c:1027:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L534	#
.L559:
# canny.c:1063: }
	call	__stack_chk_fail@PLT	#
.L557:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC60(%rip), %rdi	#, tmp131
	call	fwrite@PLT	#
# canny.c:1051:       if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	jne	.L555	#,
	jmp	.L537	#
.L556:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%r15, %rcx	# infilename,
	leaq	.LC55(%rip), %rdx	#, tmp115
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1027:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L534	#
	.cfi_endproc
.LFE73:
	.size	read_pgm_image, .-read_pgm_image
	.section	.rodata.str1.1
.LC62:
	.string	"w"
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"Error writing the file %s in write_pgm_image().\n"
	.section	.rodata.str1.1
.LC64:
	.string	"P5\n%d %d\n"
.LC65:
	.string	"# %s\n"
.LC66:
	.string	"%d\n"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"Error writing the image data in write_pgm_image().\n"
	.text
	.p2align 4
	.globl	write_pgm_image
	.type	write_pgm_image, @function
write_pgm_image:
.LFB74:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%r8, %r14	# tmp116, comment
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r13	# tmp113, image
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# canny.c:1073: {
	movslq	%edx, %rbx	# tmp114,
# canny.c:1080:    if(outfilename == NULL) fp = stdout;
	movq	stdout(%rip), %rbp	# stdout, fp
# canny.c:1073: {
	movl	%ecx, %r12d	# tmp115, cols
	movl	%r9d, %r15d	# tmp117, maxval
# canny.c:1080:    if(outfilename == NULL) fp = stdout;
	testq	%rdi, %rdi	# outfilename
	je	.L562	#,
# canny.c:1082:       if((fp = fopen(outfilename, "w")) == NULL){
	leaq	.LC62(%rip), %rsi	#, tmp98
	movq	%rdi, 8(%rsp)	# outfilename, %sfp
	call	fopen@PLT	#
# canny.c:1082:       if((fp = fopen(outfilename, "w")) == NULL){
	testq	%rax, %rax	# fp
	movq	8(%rsp), %rdi	# %sfp, outfilename
# canny.c:1082:       if((fp = fopen(outfilename, "w")) == NULL){
	movq	%rax, %rbp	# tmp118, fp
# canny.c:1082:       if((fp = fopen(outfilename, "w")) == NULL){
	je	.L573	#,
.L562:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	xorl	%eax, %eax	#
	movl	%ebx, %r8d	# rows,
	movl	%r12d, %ecx	# cols,
	leaq	.LC64(%rip), %rdx	#, tmp102
	movl	$2, %esi	#,
	movq	%rbp, %rdi	# fp,
	call	__fprintf_chk@PLT	#
# canny.c:1093:    if(comment != NULL)
	testq	%r14, %r14	# comment
	je	.L564	#,
# canny.c:1094:       if(strlen(comment) <= 70) fprintf(fp, "# %s\n", comment);
	movq	%r14, %rdi	# comment,
	call	strlen@PLT	#
# canny.c:1094:       if(strlen(comment) <= 70) fprintf(fp, "# %s\n", comment);
	cmpq	$70, %rax	#, tmp119
	jbe	.L574	#,
.L564:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	%r15d, %ecx	# maxval,
	leaq	.LC66(%rip), %rdx	#, tmp107
	movl	$2, %esi	#,
	movq	%rbp, %rdi	# fp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1100:    if(rows != fwrite(image, cols, rows, fp)){
	movslq	%r12d, %rsi	# cols, cols
	movq	%rbp, %rcx	# fp,
	movq	%rbx, %rdx	# _3,
	movq	%r13, %rdi	# image,
	call	fwrite@PLT	#
# canny.c:1100:    if(rows != fwrite(image, cols, rows, fp)){
	cmpq	%rax, %rbx	# tmp120, _3
	jne	.L575	#,
# canny.c:1106:    if(fp != stdout) fclose(fp);
	cmpq	%rbp, stdout(%rip)	# fp, stdout
	je	.L568	#,
# canny.c:1106:    if(fp != stdout) fclose(fp);
	movq	%rbp, %rdi	# fp,
	call	fclose@PLT	#
.L568:
# canny.c:1108: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# canny.c:1107:    return(1);
	movl	$1, %eax	#, <retval>
# canny.c:1108: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L574:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	%r14, %rcx	# comment,
	leaq	.LC65(%rip), %rdx	#, tmp106
	movl	$2, %esi	#,
	movq	%rbp, %rdi	# fp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
	jmp	.L564	#
	.p2align 4
	.p2align 3
.L575:
	movq	stderr(%rip), %rcx	# stderr,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC67(%rip), %rdi	#, tmp110
	call	fwrite@PLT	#
# canny.c:1102:       if(fp != stdout) fclose(fp);
	cmpq	%rbp, stdout(%rip)	# fp, stdout
	je	.L563	#,
# canny.c:1102:       if(fp != stdout) fclose(fp);
	movq	%rbp, %rdi	# fp,
	call	fclose@PLT	#
.L563:
# canny.c:1085:          return(0);
	xorl	%eax, %eax	# <retval>
.L576:
# canny.c:1108: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L573:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	%rdi, %rcx	# outfilename,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC63(%rip), %rdx	#, tmp101
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1085:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L576	#
	.cfi_endproc
.LFE74:
	.size	write_pgm_image, .-write_pgm_image
	.section	.rodata.str1.8
	.align 8
.LC68:
	.string	"\n********************************************************"
	.align 8
.LC69:
	.string	"********************* CANNY SERIAL *********************"
	.align 8
.LC70:
	.string	"********************************************************"
	.align 8
.LC71:
	.string	"\n<USAGE> %s image sigma tlow thigh [writedirim]\n"
	.align 8
.LC72:
	.string	"\n      image:      An image to process. Must be in "
	.section	.rodata.str1.1
.LC73:
	.string	"PGM format.\n"
	.section	.rodata.str1.8
	.align 8
.LC74:
	.string	"      sigma:      Standard deviation of the gaussian"
	.section	.rodata.str1.1
.LC75:
	.string	" blur kernel.\n"
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"      tlow:       Fraction (0.0-1.0) of the high "
	.section	.rodata.str1.1
.LC77:
	.string	"edge strength threshold.\n"
	.section	.rodata.str1.8
	.align 8
.LC78:
	.string	"      thigh:      Fraction (0.0-1.0) of the distribution"
	.align 8
.LC79:
	.string	" of non-zero edge\n                  strengths for "
	.align 8
.LC80:
	.string	"hysteresis. The fraction is used to compute\n"
	.align 8
.LC81:
	.string	"                  the high edge strength threshold.\n"
	.align 8
.LC82:
	.string	"      writedirim: Optional argument to output "
	.section	.rodata.str1.1
.LC83:
	.string	"a floating point"
.LC84:
	.string	" direction image.\n\n"
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"Error reading the input image, %s.\n"
	.align 8
.LC86:
	.string	"%s_s_%3.2f_l_%3.2f_h_%3.2f.fim"
	.align 8
.LC87:
	.string	"\nTiempo canny() (sin E/S): %.5g segundos\n"
	.section	.rodata.str1.1
.LC88:
	.string	""
	.section	.rodata.str1.8
	.align 8
.LC89:
	.string	"Error writing the edge image, %s.\n"
	.align 8
.LC90:
	.string	"\nTiempo total del programa: %.5g segundos\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB47:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r14	# tmp232, argv
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx	# tmp231, argc
	subq	$344, %rsp	#,
	.cfi_def_cfa_offset 400
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC68(%rip), %rdi	#, tmp148
# canny.c:80: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp248
	movq	%rax, 328(%rsp)	# tmp248, D.11310
	xorl	%eax, %eax	# tmp248
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
	leaq	.LC69(%rip), %rdi	#, tmp149
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	leaq	48(%rsp), %rbp	#, tmp228
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
	leaq	.LC70(%rip), %rdi	#, tmp150
	call	puts@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbp, %rsi	# tmp228,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp252
	vcvtsi2sdq	56(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_70].tv_nsec, tmp252, tmp240
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp240, tmp152
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	48(%rsp), %xmm4, %xmm0	# MEM[(struct timespec *)_70].tv_sec, tmp253, tmp241
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp153, tmp152
	vmovsd	%xmm1, (%rsp)	# tmp152, %sfp
# canny.c:103:    if(argc < 5){
	cmpl	$4, %ebx	#, argc
	jle	.L592	#,
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	movq	16(%r14), %rdi	# MEM[(char * *)argv_38(D) + 16B], MEM[(char * *)argv_38(D) + 16B]
	xorl	%esi, %esi	#
# canny.c:121:    infilename = argv[1];
	movq	8(%r14), %r15	# MEM[(char * *)argv_38(D) + 8B], infilename
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	call	strtod@PLT	#
	movq	24(%r14), %rdi	# MEM[(char * *)argv_38(D) + 24B], MEM[(char * *)argv_38(D) + 24B]
	xorl	%esi, %esi	#
# canny.c:122:    sigma = atof(argv[2]);
	vcvtsd2ss	%xmm0, %xmm0, %xmm6	# tmp233, sigma
	vmovd	%xmm6, %r12d	# sigma, sigma
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	call	strtod@PLT	#
	movq	32(%r14), %rdi	# MEM[(char * *)argv_38(D) + 32B], MEM[(char * *)argv_38(D) + 32B]
	xorl	%esi, %esi	#
# canny.c:123:    tlow = atof(argv[3]);
	vcvtsd2ss	%xmm0, %xmm0, %xmm7	# tmp234, tlow
	vmovd	%xmm7, %r13d	# tlow, tlow
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	call	strtod@PLT	#
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	leaq	28(%rsp), %rcx	#, tmp186
	leaq	24(%rsp), %rdx	#, tmp187
# canny.c:124:    thigh = atof(argv[4]);
	vcvtsd2ss	%xmm0, %xmm0, %xmm2	# tmp235, thigh
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	leaq	32(%rsp), %rsi	#, tmp188
	movq	%r15, %rdi	# infilename,
# canny.c:124:    thigh = atof(argv[4]);
	vmovd	%xmm2, %r14d	# thigh, thigh
# canny.c:126:    if(argc == 6) dirfilename = infilename;
	cmpl	$6, %ebx	#, argc
	je	.L593	#,
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	call	read_pgm_image	#
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	testl	%eax, %eax	# tmp238
	je	.L584	#,
.L585:
# canny.c:80: {
	xorl	%ebx, %ebx	# dirfilename
.L582:
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbp, %rsi	# tmp228,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp261
# canny.c:148:    canny(image, rows, cols, sigma, tlow, thigh, &edge, dirfilename);
	movq	32(%rsp), %r15	# image, image.17_26
	movq	%rbx, %r8	# dirfilename,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	56(%rsp), %xmm3, %xmm0	# MEM[(struct timespec *)_70].tv_nsec, tmp261, tmp242
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp242, tmp197
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	48(%rsp), %xmm3, %xmm0	# MEM[(struct timespec *)_70].tv_sec, tmp262, tmp243
	vfmadd132sd	.LC10(%rip), %xmm0, %xmm1	#, tmp198, tmp197
# canny.c:148:    canny(image, rows, cols, sigma, tlow, thigh, &edge, dirfilename);
	movl	28(%rsp), %edx	# cols,
	movl	24(%rsp), %esi	# rows,
	leaq	40(%rsp), %rcx	#, tmp200
	vmovd	%r14d, %xmm2	# thigh,
	vmovd	%r12d, %xmm0	# sigma,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	64(%rsp), %rbx	#, tmp209
# canny.c:148:    canny(image, rows, cols, sigma, tlow, thigh, &edge, dirfilename);
	movq	%r15, %rdi	# image.17_26,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vmovsd	%xmm1, 8(%rsp)	# tmp197, %sfp
# canny.c:148:    canny(image, rows, cols, sigma, tlow, thigh, &edge, dirfilename);
	vmovd	%r13d, %xmm1	# tlow,
	call	canny	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbp, %rsi	# tmp228,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp264
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC87(%rip), %rsi	#, tmp208
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	56(%rsp), %xmm3, %xmm0	# MEM[(struct timespec *)_70].tv_nsec, tmp264, tmp244
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	48(%rsp), %xmm3, %xmm1	# MEM[(struct timespec *)_70].tv_sec, tmp265, tmp245
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp205, _71
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:149:    printf("\nTiempo canny() (sin E/S): %.5g segundos\n", now() - ini_canny);
	vsubsd	8(%rsp), %xmm0, %xmm0	# %sfp, _71, tmp207
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	vmovdqa	.LC91(%rip), %xmm0	#, tmp230
# canny.c:158:    if(write_pgm_image(outfilename, edge, rows, cols, "", 255) == 0){
	movl	$255, %r9d	#,
	leaq	.LC88(%rip), %r8	#,
	movl	28(%rsp), %ecx	# cols,
	movl	24(%rsp), %edx	# rows,
	movq	%rbx, %rdi	# tmp209,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movw	$109, 80(%rsp)	#, MEM <char[1:18]> [(void *)&outfilename]
# canny.c:158:    if(write_pgm_image(outfilename, edge, rows, cols, "", 255) == 0){
	movq	40(%rsp), %rsi	# edge,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	vmovdqa	%xmm0, 64(%rsp)	# tmp230, MEM <char[1:18]> [(void *)&outfilename]
# canny.c:158:    if(write_pgm_image(outfilename, edge, rows, cols, "", 255) == 0){
	call	write_pgm_image	#
# canny.c:158:    if(write_pgm_image(outfilename, edge, rows, cols, "", 255) == 0){
	testl	%eax, %eax	# tmp237
	je	.L594	#,
# canny.c:162:    free(image);
	movq	%r15, %rdi	# image.17_26,
	call	free@PLT	#
# canny.c:50:    clock_gettime(CLOCK_MONOTONIC, &ts);
	movq	%rbp, %rsi	# tmp228,
	movl	$1, %edi	#,
	call	clock_gettime@PLT	#
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vxorpd	%xmm5, %xmm5, %xmm5	# tmp267
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC90(%rip), %rsi	#, tmp222
	movl	$2, %edi	#,
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	56(%rsp), %xmm5, %xmm0	# MEM[(struct timespec *)_70].tv_nsec, tmp267, tmp246
# canny.c:51:    return ts.tv_sec + ts.tv_nsec * 1e-9;
	vcvtsi2sdq	48(%rsp), %xmm5, %xmm1	# MEM[(struct timespec *)_70].tv_sec, tmp268, tmp247
	vfmadd132sd	.LC10(%rip), %xmm1, %xmm0	#, tmp219, _83
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# canny.c:164:    double secs = (fin - ini);
	vsubsd	(%rsp), %xmm0, %xmm0	# %sfp, _83, secs
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# canny.c:167: }
	movq	328(%rsp), %rax	# D.11310, tmp249
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp249
	jne	.L595	#,
	addq	$344, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L593:
	.cfi_restore_state
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	call	read_pgm_image	#
# canny.c:133:    if(read_pgm_image(infilename, &image, &rows, &cols) == 0){
	testl	%eax, %eax	# tmp236
	je	.L584	#,
# canny.c:142:    if(dirfilename != NULL){
	testq	%r15, %r15	# infilename
	je	.L585	#,
# canny.c:143:       sprintf(composedfname, "%s_s_%3.2f_l_%3.2f_h_%3.2f.fim", infilename,
	vmovd	%r12d, %xmm7	# sigma, sigma
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	vmovd	%r13d, %xmm6	# tlow, tlow
	leaq	192(%rsp), %rbx	#, tmp194
	movq	%r15, %r8	# infilename,
# canny.c:143:       sprintf(composedfname, "%s_s_%3.2f_l_%3.2f_h_%3.2f.fim", infilename,
	vcvtss2sd	%xmm7, %xmm7, %xmm0	# sigma, tmp193
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:30:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	vmovd	%r14d, %xmm7	# thigh, thigh
	leaq	.LC86(%rip), %rcx	#, tmp195
	movl	$128, %edx	#,
	vcvtss2sd	%xmm7, %xmm7, %xmm2	# thigh,
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# tmp194,
	movl	$3, %eax	#,
	vcvtss2sd	%xmm6, %xmm6, %xmm1	# tlow,
	call	__sprintf_chk@PLT	#
	jmp	.L582	#
.L584:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%r15, %rcx	# infilename,
	leaq	.LC85(%rip), %rdx	#, tmp190
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:135:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L595:
# canny.c:167: }
	call	__stack_chk_fail@PLT	#
.L592:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	(%r14), %rcx	# *argv_38(D),
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC71(%rip), %rdx	#, tmp156
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC72(%rip), %rdi	#, tmp158
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC73(%rip), %rdi	#, tmp160
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC74(%rip), %rdi	#, tmp162
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$14, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC75(%rip), %rdi	#, tmp164
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$49, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC76(%rip), %rdi	#, tmp166
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$25, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC77(%rip), %rdi	#, tmp168
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$56, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC78(%rip), %rdi	#, tmp170
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC79(%rip), %rdi	#, tmp172
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC80(%rip), %rdi	#, tmp174
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC81(%rip), %rdi	#, tmp176
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC82(%rip), %rdi	#, tmp178
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC83(%rip), %rdi	#, tmp180
	call	fwrite@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC84(%rip), %rdi	#, tmp182
	movl	$19, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# canny.c:118:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L594:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	movq	%rbx, %rcx	# tmp209,
	leaq	.LC89(%rip), %rdx	#, tmp216
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
# canny.c:160:       exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE47:
	.size	main, .-main
	.section	.rodata.str1.8
	.align 8
.LC92:
	.string	"Error reading the file %s in read_ppm_image().\n"
	.section	.rodata.str1.1
.LC93:
	.string	"P6"
	.section	.rodata.str1.8
	.align 8
.LC94:
	.string	"The file %s is not in PPM format in "
	.section	.rodata.str1.1
.LC95:
	.string	"read_ppm_image().\n"
	.section	.rodata.str1.8
	.align 8
.LC96:
	.string	"Memory allocation failure in read_ppm_image().\n"
	.text
	.p2align 4
	.globl	read_ppm_image
	.type	read_ppm_image, @function
read_ppm_image:
.LFB75:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r14	# tmp180, image_blu
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r12	# tmp178, image_red
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
# canny.c:1123: {
	movq	%rdx, %r13	# tmp179, image_grn
# canny.c:1132:    if(infilename == NULL) fp = stdin;
	movq	stdin(%rip), %rbx	# stdin, fp
# canny.c:1123: {
	movq	%r8, %r15	# tmp181, rows
	movq	%rdi, 8(%rsp)	# infilename, %sfp
	movq	%r9, (%rsp)	# tmp182, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp190
	movq	%rax, 88(%rsp)	# tmp190, D.11349
	xorl	%eax, %eax	# tmp190
# canny.c:1132:    if(infilename == NULL) fp = stdin;
	testq	%rdi, %rdi	# infilename
	je	.L598	#,
# canny.c:1134:       if((fp = fopen(infilename, "r")) == NULL){
	leaq	.LC54(%rip), %rsi	#, tmp137
	call	fopen@PLT	#
	movq	%rax, %rbx	# tmp183, fp
# canny.c:1134:       if((fp = fopen(infilename, "r")) == NULL){
	testq	%rax, %rax	# fp
	je	.L624	#,
.L598:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	leaq	16(%rsp), %rbp	#, tmp176
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp176,
	call	fgets@PLT	#
# canny.c:1146:    if(strncmp(buf,"P6",2) != 0){
	cmpw	$13904, 16(%rsp)	#, MEM <char[1:2]> [(void *)&buf]
	je	.L602	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	8(%rsp), %rcx	# %sfp,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC94(%rip), %rdx	#, tmp145
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
	movq	stderr(%rip), %rcx	# stderr,
	movl	$18, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC95(%rip), %rdi	#, tmp147
	call	fwrite@PLT	#
# canny.c:1149:       if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	je	.L599	#,
.L620:
# canny.c:1149:       if(fp != stdin) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L599:
# canny.c:1137:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L596	#
	.p2align 4
	.p2align 3
.L602:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp176,
	call	fgets@PLT	#
# canny.c:1152:    do{ fgets(buf, 70, fp); }while(buf[0] == '#');  /* skip all comment lines */
	cmpb	$35, 16(%rsp)	#, buf[0]
	je	.L602	#,
# canny.c:1153:    sscanf(buf, "%d %d", cols, rows);
	movq	(%rsp), %rdx	# %sfp,
	movq	%r15, %rcx	# rows,
	leaq	.LC59(%rip), %rsi	#, tmp150
	movq	%rbp, %rdi	# tmp176,
	xorl	%eax, %eax	#
	call	__isoc23_sscanf@PLT	#
	.p2align 4
	.p2align 3
.L605:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:200:     return __fgets_alias (__s, __n, __stream);
	movq	%rbx, %rdx	# fp,
	movl	$70, %esi	#,
	movq	%rbp, %rdi	# tmp176,
	call	fgets@PLT	#
# canny.c:1154:    do{ fgets(buf, 70, fp); }while(buf[0] == '#');  /* skip all comment lines */
	cmpb	$35, 16(%rsp)	#, buf[0]
	je	.L605	#,
# canny.c:1159:    if(((*image_red) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	(%rsp), %rax	# %sfp, cols
	movl	(%r15), %edi	# *rows_65(D), *rows_65(D)
	imull	(%rax), %edi	# *cols_64(D), tmp152
# canny.c:1159:    if(((*image_red) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movslq	%edi, %rdi	# tmp152, tmp154
	call	malloc@PLT	#
# canny.c:1159:    if(((*image_red) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	%rax, (%r12)	# tmp155, *image_red_68(D)
# canny.c:1159:    if(((*image_red) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	testq	%rax, %rax	# tmp155
	je	.L622	#,
# canny.c:1164:    if(((*image_grn) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	(%rsp), %rax	# %sfp, cols
	movl	(%r15), %edi	# *rows_65(D), *rows_65(D)
	imull	(%rax), %edi	# *cols_64(D), tmp158
# canny.c:1164:    if(((*image_grn) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movslq	%edi, %rdi	# tmp158, tmp160
	call	malloc@PLT	#
# canny.c:1164:    if(((*image_grn) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	%rax, 0(%r13)	# tmp161, *image_grn_71(D)
# canny.c:1164:    if(((*image_grn) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	testq	%rax, %rax	# tmp161
	je	.L622	#,
# canny.c:1169:    if(((*image_blu) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	(%rsp), %rax	# %sfp, cols
	movl	(%r15), %edi	# *rows_65(D), *rows_65(D)
	imull	(%rax), %edi	# *cols_64(D), tmp164
# canny.c:1169:    if(((*image_blu) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movslq	%edi, %rdi	# tmp164, tmp166
	call	malloc@PLT	#
# canny.c:1169:    if(((*image_blu) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	movq	%rax, (%r14)	# tmp167, *image_blu_74(D)
# canny.c:1169:    if(((*image_blu) = (unsigned char *) malloc((*rows)*(*cols))) == NULL){
	testq	%rax, %rax	# tmp167
	je	.L622	#,
# canny.c:1175:    size = (*rows)*(*cols);
	movq	(%rsp), %rax	# %sfp, cols
	movl	(%r15), %r15d	# *rows_65(D), *rows_65(D)
	imull	(%rax), %r15d	# *cols_64(D), size
# canny.c:1176:    for(p=0;p<size;p++){
	testl	%r15d, %r15d	# size
	jle	.L610	#,
	movslq	%r15d, %r15	# size, _102
	xorl	%ebp, %ebp	# ivtmp.836
	.p2align 4
	.p2align 3
.L611:
# canny.c:1177:       (*image_red)[p] = (unsigned char)fgetc(fp);
	movq	%rbx, %rdi	# fp,
	call	fgetc@PLT	#
# canny.c:1177:       (*image_red)[p] = (unsigned char)fgetc(fp);
	movq	(%r12), %rdx	# *image_red_68(D), *image_red_68(D)
# canny.c:1178:       (*image_grn)[p] = (unsigned char)fgetc(fp);
	movq	%rbx, %rdi	# fp,
# canny.c:1177:       (*image_red)[p] = (unsigned char)fgetc(fp);
	movb	%al, (%rdx,%rbp)	# tmp187, *_34
# canny.c:1178:       (*image_grn)[p] = (unsigned char)fgetc(fp);
	call	fgetc@PLT	#
# canny.c:1179:       (*image_blu)[p] = (unsigned char)fgetc(fp);
	movq	%rbx, %rdi	# fp,
# canny.c:1178:       (*image_grn)[p] = (unsigned char)fgetc(fp);
	movq	0(%r13), %rdx	# *image_grn_71(D), *image_grn_71(D)
# canny.c:1178:       (*image_grn)[p] = (unsigned char)fgetc(fp);
	movb	%al, (%rdx,%rbp)	# tmp188, *_39
# canny.c:1179:       (*image_blu)[p] = (unsigned char)fgetc(fp);
	call	fgetc@PLT	#
# canny.c:1179:       (*image_blu)[p] = (unsigned char)fgetc(fp);
	movq	(%r14), %rdx	# *image_blu_74(D), *image_blu_74(D)
# canny.c:1179:       (*image_blu)[p] = (unsigned char)fgetc(fp);
	movb	%al, (%rdx,%rbp)	# tmp189, *_43
# canny.c:1176:    for(p=0;p<size;p++){
	incq	%rbp	# ivtmp.836
	cmpq	%r15, %rbp	# _102, ivtmp.836
	jne	.L611	#,
.L610:
# canny.c:1182:    if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	je	.L613	#,
# canny.c:1182:    if(fp != stdin) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L613:
# canny.c:1183:    return(1);
	movl	$1, %eax	#, <retval>
.L596:
# canny.c:1184: }
	movq	88(%rsp), %rdx	# D.11349, tmp191
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp191
	jne	.L625	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L622:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC96(%rip), %rdi	#, tmp169
	call	fwrite@PLT	#
# canny.c:1171:       if(fp != stdin) fclose(fp);
	cmpq	%rbx, stdin(%rip)	# fp, stdin
	jne	.L620	#,
	jmp	.L599	#
.L625:
# canny.c:1184: }
	call	__stack_chk_fail@PLT	#
.L624:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	8(%rsp), %rcx	# %sfp,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC92(%rip), %rdx	#, tmp140
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1137:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L596	#
	.cfi_endproc
.LFE75:
	.size	read_ppm_image, .-read_ppm_image
	.section	.rodata.str1.1
.LC97:
	.string	"P6\n%d %d\n"
	.text
	.p2align 4
	.globl	write_ppm_image
	.type	write_ppm_image, @function
write_ppm_image:
.LFB76:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r14	# tmp125, image_blu
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %r12	# tmp123, image_red
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# canny.c:1195: {
	movq	%rdx, %r13	# tmp124, image_grn
# canny.c:1203:    if(outfilename == NULL) fp = stdout;
	movq	stdout(%rip), %rbx	# stdout, fp
# canny.c:1195: {
	movslq	%r8d, %rbp	# tmp126,
	movslq	%r9d, %r15	# tmp127,
# canny.c:1203:    if(outfilename == NULL) fp = stdout;
	testq	%rdi, %rdi	# outfilename
	je	.L628	#,
# canny.c:1205:       if((fp = fopen(outfilename, "w")) == NULL){
	leaq	.LC62(%rip), %rsi	#, tmp106
	movq	%rdi, 8(%rsp)	# outfilename, %sfp
	call	fopen@PLT	#
# canny.c:1205:       if((fp = fopen(outfilename, "w")) == NULL){
	testq	%rax, %rax	# fp
	movq	8(%rsp), %rdi	# %sfp, outfilename
# canny.c:1205:       if((fp = fopen(outfilename, "w")) == NULL){
	movq	%rax, %rbx	# tmp128, fp
# canny.c:1205:       if((fp = fopen(outfilename, "w")) == NULL){
	je	.L640	#,
.L628:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	xorl	%eax, %eax	#
	movl	%ebp, %r8d	# rows,
	movl	%r15d, %ecx	# cols,
	leaq	.LC97(%rip), %rdx	#, tmp110
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# fp,
	call	__fprintf_chk@PLT	#
# canny.c:1216:    if(comment != NULL)
	cmpq	$0, 80(%rsp)	#, comment
	je	.L630	#,
# canny.c:1217:       if(strlen(comment) <= 70) fprintf(fp, "# %s\n", comment);
	movq	80(%rsp), %rdi	# comment,
	call	strlen@PLT	#
# canny.c:1217:       if(strlen(comment) <= 70) fprintf(fp, "# %s\n", comment);
	cmpq	$70, %rax	#, tmp129
	jbe	.L641	#,
.L630:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	88(%rsp), %ecx	# maxval,
# canny.c:1223:    size = (long)rows * (long)cols;
	imulq	%r15, %rbp	# cols, size
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	leaq	.LC66(%rip), %rdx	#, tmp115
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# fp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1224:    for(p=0;p<size;p++){      /* Write the image in pixel interleaved format. */
	testq	%rbp, %rbp	# size
	jle	.L631	#,
# canny.c:1224:    for(p=0;p<size;p++){      /* Write the image in pixel interleaved format. */
	xorl	%r15d, %r15d	# p
	.p2align 4
	.p2align 3
.L632:
# canny.c:1225:       fputc(image_red[p], fp);
	movzbl	(%r12,%r15), %edi	# MEM[(unsigned char *)image_red_35(D) + _50 * 1], MEM[(unsigned char *)image_red_35(D) + _50 * 1]
	movq	%rbx, %rsi	# fp,
	call	fputc@PLT	#
# canny.c:1226:       fputc(image_grn[p], fp);
	movzbl	0(%r13,%r15), %edi	# MEM[(unsigned char *)image_grn_37(D) + _50 * 1], MEM[(unsigned char *)image_grn_37(D) + _50 * 1]
	movq	%rbx, %rsi	# fp,
	call	fputc@PLT	#
# canny.c:1227:       fputc(image_blu[p], fp);
	movzbl	(%r14,%r15), %edi	# MEM[(unsigned char *)image_blu_39(D) + _50 * 1], MEM[(unsigned char *)image_blu_39(D) + _50 * 1]
	movq	%rbx, %rsi	# fp,
# canny.c:1224:    for(p=0;p<size;p++){      /* Write the image in pixel interleaved format. */
	incq	%r15	# p
# canny.c:1227:       fputc(image_blu[p], fp);
	call	fputc@PLT	#
# canny.c:1224:    for(p=0;p<size;p++){      /* Write the image in pixel interleaved format. */
	cmpq	%r15, %rbp	# p, size
	jne	.L632	#,
.L631:
# canny.c:1230:    if(fp != stdout) fclose(fp);
	cmpq	%rbx, stdout(%rip)	# fp, stdout
	je	.L634	#,
# canny.c:1230:    if(fp != stdout) fclose(fp);
	movq	%rbx, %rdi	# fp,
	call	fclose@PLT	#
.L634:
# canny.c:1231:    return(1);
	movl	$1, %eax	#, <retval>
.L626:
# canny.c:1232: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L641:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:79:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	80(%rsp), %rcx	# comment,
	leaq	.LC65(%rip), %rdx	#, tmp114
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# fp,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
	jmp	.L630	#
.L640:
	movq	%rdi, %rcx	# outfilename,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC63(%rip), %rdx	#, tmp109
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# canny.c:1208:          return(0);
	xorl	%eax, %eax	# <retval>
	jmp	.L626	#
	.cfi_endproc
.LFE76:
	.size	write_ppm_image, .-write_ppm_image
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	1413754136
	.long	1075388923
	.align 8
.LC4:
	.long	1413754136
	.long	1074340347
	.section	.rodata.cst16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC10:
	.long	-400107883
	.long	1041313291
	.align 8
.LC16:
	.long	0
	.long	1074003968
	.align 8
.LC17:
	.long	0
	.long	1073741824
	.align 8
.LC18:
	.long	0
	.long	1072693248
	.align 8
.LC20:
	.long	0
	.long	-1075838976
	.align 8
.LC21:
	.long	-1783957616
	.long	1074118409
	.align 8
.LC22:
	.long	533000694
	.long	1074007443
	.align 8
.LC26:
	.long	0
	.long	1079410688
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC27:
	.value	1
	.value	2
	.value	3
	.value	4
	.value	5
	.value	6
	.value	7
	.value	8
	.value	9
	.value	10
	.value	11
	.value	12
	.value	13
	.value	14
	.value	15
	.value	16
	.align 32
.LC28:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.section	.rodata.cst16
	.align 16
.LC36:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.align 16
.LC37:
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.byte	-128
	.section	.rodata.cst8
	.align 8
.LC38:
	.long	65535
	.long	65535
	.set	.LC39,.LC27
	.set	.LC40,.LC27+8
	.set	.LC41,.LC27+16
	.align 8
.LC42:
	.value	32753
	.value	32754
	.value	32755
	.value	32756
	.align 8
.LC43:
	.value	32757
	.value	32758
	.value	32759
	.value	32760
	.align 8
.LC44:
	.value	32761
	.value	32762
	.value	32763
	.value	32764
	.section	.rodata.cst16
	.align 16
.LC91:
	.quad	8313484818954415465
	.quad	7453508426323817061
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
