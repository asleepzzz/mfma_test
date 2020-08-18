	.text
	;.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
	.weak	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw ; -- Begin function gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
	.p2align	8
	.type	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw,@function
gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw: ; @gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
; %bb.0:                                ; %entry



.set sgpr_ker_arg,4;


.set sgpr_C,6;
.set sgpr_R,7;
.set sgpr_S,8;

.set sgpr_kevin_test_float_addr,14;
.set sgpr_kevin_test_uint_addr,22;
.set sgpr_A_addr,20;
.set sgpr_B_addr,18;
.set sgpr_C_addr,16;
.set sgpr_buf_A_addr,24;//24 25 26 27
.set sgpr_before_cmp_thread,28;//28 29
.set sgpr_tmp_cmp_thread,30;//30 31
.set Srd127_96, 0x0020000
.set S32,32
.set sgpr_32,32




.set vgpr_store_addr,2;//2 3




.set vgpr_tmp_int,9
.set vgpr_wave_tid,10
.set vgpr_wave_tid_offset_8,11
.set vgpr_wave_tid_offset_2,12
.set vgpr_A_value,18;//18 19
.set vgpr_wave_tid_offset_4,13
.set vgpr_tmp_write_pos,124

.set vgpr_A_mfma_value1,14;14:15
.set vgpr_B_mfma_value1,16;16:!7

.set vgpr_B_tid,8
.set vgpr_tmp,7

.set vgpr_B_ushort1,20
.set vgpr_B_ushort2,21
.set vgpr_B_ushort3,22
.set vgpr_B_ushort4,23


.set vgpr_B_tid_div_4,24
.set vgpr_B_tid_rem_4,25
.set vgpr_B_read_offset_first,26;//26 27

.set vgpr_B_tid_offset_2,28;//28  

s_load_dwordx2 s[sgpr_A_addr:sgpr_A_addr+1], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x0
s_load_dwordx2 s[sgpr_B_addr:sgpr_B_addr+1], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x8
s_load_dwordx2 s[sgpr_C_addr:sgpr_C_addr+1], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x10
;s_load_dword s[sgpr_C], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x18

s_load_dwordx2 s[sgpr_kevin_test_uint_addr:sgpr_kevin_test_uint_addr+1], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x18
s_load_dwordx2 s[sgpr_kevin_test_float_addr:sgpr_kevin_test_float_addr+1], s[sgpr_ker_arg:sgpr_ker_arg+1], 0x20


	v_accvgpr_write_b32 a0, 0
	v_accvgpr_write_b32 a1, 0
	v_accvgpr_write_b32 a2, 0
	v_accvgpr_write_b32 a3, 0
	v_accvgpr_write_b32 a4, 0
	v_accvgpr_write_b32 a5, 0
	v_accvgpr_write_b32 a6, 0
	v_accvgpr_write_b32 a7, 0
	v_accvgpr_write_b32 a8, 0
	v_accvgpr_write_b32 a9, 0
	v_accvgpr_write_b32 a10, 0
	v_accvgpr_write_b32 a11, 0
	v_accvgpr_write_b32 a12, 0
	v_accvgpr_write_b32 a13, 0
	v_accvgpr_write_b32 a14, 0
	v_accvgpr_write_b32 a15, 0
	v_accvgpr_write_b32 a16, 0
	v_accvgpr_write_b32 a17, 0
	v_accvgpr_write_b32 a18, 0
	v_accvgpr_write_b32 a19, 0
	v_accvgpr_write_b32 a20, 0
	v_accvgpr_write_b32 a21, 0
	v_accvgpr_write_b32 a22, 0
	v_accvgpr_write_b32 a23, 0
	v_accvgpr_write_b32 a24, 0
	v_accvgpr_write_b32 a25, 0
	v_accvgpr_write_b32 a26, 0
	v_accvgpr_write_b32 a27, 0
	v_accvgpr_write_b32 a28, 0
	v_accvgpr_write_b32 a29, 0
	v_accvgpr_write_b32 a30, 0
	v_accvgpr_write_b32 a31, 0
	v_accvgpr_write_b32 a32, 0
	v_accvgpr_write_b32 a95, 0
	v_accvgpr_write_b32 a94, 0
	v_accvgpr_write_b32 a93, 0
	v_accvgpr_write_b32 a92, 0
	v_accvgpr_write_b32 a91, 0
	v_accvgpr_write_b32 a90, 0



	v_accvgpr_write_b32 a89, 0
	v_accvgpr_write_b32 a88, 0
	v_accvgpr_write_b32 a87, 0
	v_accvgpr_write_b32 a86, 0
	v_accvgpr_write_b32 a85, 0
	v_accvgpr_write_b32 a84, 0
	v_accvgpr_write_b32 a83, 0
	v_accvgpr_write_b32 a82, 0
	v_accvgpr_write_b32 a81, 0
	v_accvgpr_write_b32 a80, 0
	v_accvgpr_write_b32 a79, 0
	v_accvgpr_write_b32 a78, 0
	v_accvgpr_write_b32 a77, 0
	v_accvgpr_write_b32 a76, 0
	v_accvgpr_write_b32 a75, 0
	v_accvgpr_write_b32 a74, 0
	v_accvgpr_write_b32 a73, 0
	v_accvgpr_write_b32 a72, 0
	v_accvgpr_write_b32 a71, 0
	v_accvgpr_write_b32 a70, 0
	v_accvgpr_write_b32 a69, 0
	v_accvgpr_write_b32 a68, 0
	v_accvgpr_write_b32 a67, 0
	v_accvgpr_write_b32 a66, 0
	v_accvgpr_write_b32 a65, 0
	v_accvgpr_write_b32 a64, 0
	v_accvgpr_write_b32 a63, 0
	v_accvgpr_write_b32 a62, 0
	v_accvgpr_write_b32 a61, 0
	v_accvgpr_write_b32 a60, 0
	v_accvgpr_write_b32 a59, 0
	v_accvgpr_write_b32 a58, 0
	v_accvgpr_write_b32 a57, 0
	v_accvgpr_write_b32 a56, 0
	v_accvgpr_write_b32 a55, 0
	v_accvgpr_write_b32 a54, 0
	v_accvgpr_write_b32 a53, 0
	v_accvgpr_write_b32 a52, 0
	v_accvgpr_write_b32 a51, 0
	v_accvgpr_write_b32 a50, 0
	v_accvgpr_write_b32 a49, 0
	v_accvgpr_write_b32 a48, 0
	v_accvgpr_write_b32 a47, 0
	v_accvgpr_write_b32 a46, 0
	v_accvgpr_write_b32 a45, 0
	v_accvgpr_write_b32 a44, 0
	v_accvgpr_write_b32 a43, 0
	v_accvgpr_write_b32 a42, 0
	v_accvgpr_write_b32 a41, 0
	v_accvgpr_write_b32 a40, 0
	v_accvgpr_write_b32 a39, 0
	v_accvgpr_write_b32 a38, 0
	v_accvgpr_write_b32 a37, 0
	v_accvgpr_write_b32 a36, 0
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a33, 0





	v_accvgpr_write_b32 a127, 0
	v_accvgpr_write_b32 a126, 0
	v_accvgpr_write_b32 a125, 0
	v_accvgpr_write_b32 a124, 0
	v_accvgpr_write_b32 a123, 0
	v_accvgpr_write_b32 a122, 0
	v_accvgpr_write_b32 a121, 0
	v_accvgpr_write_b32 a120, 0
	v_accvgpr_write_b32 a119, 0
	v_accvgpr_write_b32 a118, 0
	v_accvgpr_write_b32 a117, 0
	v_accvgpr_write_b32 a116, 0
	v_accvgpr_write_b32 a115, 0
	v_accvgpr_write_b32 a114, 0
	v_accvgpr_write_b32 a113, 0
	v_accvgpr_write_b32 a112, 0

	v_accvgpr_write_b32 a111, 0
	v_accvgpr_write_b32 a110, 0
	v_accvgpr_write_b32 a109, 0
	v_accvgpr_write_b32 a108, 0
	v_accvgpr_write_b32 a107, 0
	v_accvgpr_write_b32 a106, 0
	v_accvgpr_write_b32 a105, 0
	v_accvgpr_write_b32 a104, 0
	v_accvgpr_write_b32 a103, 0
	v_accvgpr_write_b32 a102, 0
	v_accvgpr_write_b32 a101, 0
	v_accvgpr_write_b32 a100, 0
	v_accvgpr_write_b32 a99, 0
	v_accvgpr_write_b32 a98, 0
	v_accvgpr_write_b32 a97, 0
	v_accvgpr_write_b32 a96, 0
s_waitcnt     lgkmcnt(0);
/*
s_mov_b32 s[sgpr_32],sgpr_32

v_and_b32_e32     v[vgpr_wave_tid], 63, v0;
s_or_saveexec_b64 s[sgpr_before_cmp_thread:sgpr_before_cmp_thread+1],exec
v_cmpx_lt_u32 s[sgpr_tmp_cmp_thread:sgpr_tmp_cmp_thread+1], v0, s[sgpr_32]
;s_cbranch_scc0 read_B

read_A:

//v_mov_b32_e32 v2,s[sgpr_C]
//v_mov_b32_e32 v1,s[sgpr_kevin_test_uint_addr+1]
//v_mov_b32_e32 v0,s[sgpr_kevin_test_uint_addr]
//global_store_dword v[0:1], v2, off offset:0


v_lshlrev_b32_e32 v[vgpr_wave_tid_offset_8], 3, v[vgpr_wave_tid];//every thread read 4 fp16, address: 4*2*tid
v_lshlrev_b32_e32 v[vgpr_wave_tid_offset_4], 2, v[vgpr_wave_tid]
v_lshlrev_b32_e32 v[vgpr_wave_tid_offset_2], 1, v[vgpr_wave_tid]


v_mov_b32_e32 v[vgpr_store_addr],v[vgpr_wave_tid_offset_4]
v_mov_b32_e32 v[vgpr_store_addr+1],0
v_mov_b32_e32 v[vgpr_tmp_int],2
global_store_dword v[vgpr_store_addr:vgpr_store_addr+1], v0, s[sgpr_kevin_test_uint_addr:sgpr_kevin_test_uint_addr+1]

s_waitcnt vmcnt(0)


;here debug
;v_mov_b32_e32 v[vgpr_wave_tid_offset],0
s_mov_b32 s[sgpr_buf_A_addr],s[sgpr_A_addr]
s_mov_b32 s[sgpr_buf_A_addr+1],s[sgpr_A_addr+1]
s_mov_b32 s[sgpr_buf_A_addr+2],-1
s_mov_b32 s[sgpr_buf_A_addr+3],0x40000;Srd127_96

buffer_load_dwordx2 v[vgpr_A_value:vgpr_A_value+1],v[vgpr_wave_tid_offset_8],s[sgpr_buf_A_addr:sgpr_buf_A_addr+3],0, offen offset:0





;v_mov_b32_e32 v[vgpr_wave_tid_offset+1],0
;global_load_ushort v[vgpr_A_value],v[vgpr_wave_tid_offset:vgpr_wave_tid_offset+1],s[sgpr_A_addr:sgpr_A_addr+1]
s_waitcnt vmcnt(0)

*/



/*a store
v_mov_b32_e32 v[vgpr_store_addr],v[vgpr_wave_tid_offset_2]
v_mov_b32_e32 v[vgpr_store_addr+1],0


global_store_short v[vgpr_store_addr:vgpr_store_addr+1], v[vgpr_A_value], s[sgpr_kevin_test_float_addr:sgpr_kevin_test_float_addr+1]
*/

;s_branch read_end


/*
read_B:

s_mov_b64 exec,s[sgpr_before_cmp_thread:sgpr_before_cmp_thread+1]

v_cmpx_ge_u32 s[sgpr_tmp_cmp_thread:sgpr_tmp_cmp_thread+1], v0, s[sgpr_32]

v_mov_b32_e32 v[vgpr_tmp],s[sgpr_32]
v_sub_u32_e32 v[vgpr_B_tid], v0, v[vgpr_tmp]


v_lshrrev_b32_e32 v[vgpr_B_tid_div_4], 2, v[vgpr_B_tid];// /4
v_and_b32_e32     v[vgpr_B_tid_rem_4], 3, v[vgpr_B_tid]; %4

v_lshl_add_u32 v[vgpr_B_read_offset_first],v[vgpr_B_tid_div_4],4,v[vgpr_B_tid_rem_4]

global_load_ushort v[vgpr_B_ushort1], v[vgpr_B_read_offset_first:vgpr_B_read_offset_first+1], s[sgpr_B_addr:sgpr_B_addr+1]


s_waitcnt vmcnt(0)

v_lshlrev_b32_e32 v[vgpr_B_tid_offset_2], 1, v[vgpr_B_tid]

v_mov_b32_e32 v[vgpr_B_ushort1],2.0

;v_mov_b32_e32 v[vgpr_store_addr],v[vgpr_B_tid_offset_2]
v_mov_b32_e32 v[vgpr_store_addr],0
v_mov_b32_e32 v[vgpr_store_addr+1],0
global_store_short v[vgpr_store_addr:vgpr_store_addr+1], v[vgpr_B_ushort1], s[sgpr_kevin_test_float_addr:sgpr_kevin_test_float_addr+1]


s_waitcnt vmcnt(0)

s_mov_b64 exec,s[sgpr_before_cmp_thread:sgpr_before_cmp_thread+1]
;vgpr_B_ushort1

;s_barrier;
*/



read_end:


	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
		.amdhsa_group_segment_fixed_size 24576
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 128
		.amdhsa_next_free_sgpr 33
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 0
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw, .Lfunc_end0-gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 8620
; NumSgprs: 37
; NumVgprs: 117
; NumAgprs: 128
; TotalNumVgprs: 128
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 24576 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 128
; Occupancy: 2
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"HCC clang version 10.0.0 (/data/jenkins-workspace/compute-rocm-rel-3.1/external/hcc-tot/llvm-project/clang 6a70953f87a209f37ea7884abdbb6bcb2d6db732) (based on HCC 3.1.20023-6d267cfb-6a70953f87a )"
	.section	".note.GNU-stack"
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  generic
        .name:           p_wei_global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16
      - .address_space:  generic
        .name:           p_in_global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16
      - .address_space:  generic
        .name:           p_out_global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16

      - .address_space:  generic
        .name:           kevin_int_test
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
        .value_type:     u32
      - .address_space:  generic
        .name:           kevin_float_test
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16




      - .address_space:  generic
        .name:           p_C
        .offset:         40
        .size:           4
        .value_kind:     by_value
        .value_type:     u32
      - .address_space:  generic
        .name:           p_R
        .offset:         44
        .size:           4
        .value_kind:     by_value
        .value_type:     u32
      - .address_space:  generic
        .name:           p_S
        .offset:         48
        .size:           4
        .value_kind:     by_value
        .value_type:     u32


    .group_segment_fixed_size: 24576
    .kernarg_segment_align: 8
    .kernarg_segment_size: 52
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 64
    .name:           gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw.kd
    .vgpr_count:     128
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
