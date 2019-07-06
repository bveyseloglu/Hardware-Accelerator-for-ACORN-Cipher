; ModuleID = 'C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1_dec/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=21 type=[1 x i8]*]
@str = internal constant [21 x i8] c"acorn128_dec_onebyte\00" ; [#uses=1 type=[21 x i8]*]
@str3 = internal constant [7 x i8] c"RAM_1P\00"   ; [#uses=2 type=[7 x i8]*]
@str4 = internal constant [1 x i8] zeroinitializer ; [#uses=10 type=[1 x i8]*]

; [#uses=7]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
define i32 @acorn128_dec_onebyte([293 x i8]* %state, i8 zeroext %plaintextbyte, i8 zeroext %ciphertextbyte, i8 zeroext %ksbyte, i8 zeroext %cabyte, i8 zeroext %cbbyte) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([293 x i8]* %state) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %plaintextbyte) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ciphertextbyte) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ksbyte) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cabyte) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cbbyte) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %cbbyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %cbbyte) nounwind ; [#uses=8 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %cbbyte_read}, i64 0, metadata !34), !dbg !44 ; [debug line = 49:96] [debug variable = cbbyte]
  %cabyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %cabyte) nounwind ; [#uses=8 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %cabyte_read}, i64 0, metadata !45), !dbg !46 ; [debug line = 49:74] [debug variable = cabyte]
  %ciphertextbyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %ciphertextbyte) nounwind ; [#uses=8 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbyte_read}, i64 0, metadata !47), !dbg !48 ; [debug line = 49:22] [debug variable = ciphertextbyte]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !49), !dbg !53 ; [debug line = 48:40] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbyte}, i64 0, metadata !54), !dbg !55 ; [debug line = 48:66] [debug variable = plaintextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbyte}, i64 0, metadata !47), !dbg !48 ; [debug line = 49:22] [debug variable = ciphertextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ksbyte}, i64 0, metadata !56), !dbg !57 ; [debug line = 49:52] [debug variable = ksbyte]
  call void @llvm.dbg.value(metadata !{i8 %cabyte}, i64 0, metadata !45), !dbg !46 ; [debug line = 49:74] [debug variable = cabyte]
  call void @llvm.dbg.value(metadata !{i8 %cbbyte}, i64 0, metadata !34), !dbg !44 ; [debug line = 49:96] [debug variable = cbbyte]
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([293 x i8]* %state, [1 x i8]* @str4, [7 x i8]* @str3, [1 x i8]* @str4, i32 -1, [1 x i8]* @str4, [1 x i8]* @str4, [1 x i8]* @str4) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecInterface([293 x i8]* %state, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %plaintextbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !58 ; [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %ciphertextbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !60 ; [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %ksbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !61 ; [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %cabyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !62 ; [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %cbbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !63 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !64 ; [debug line = 58:1]
  %tmp = trunc i8 %cabyte_read to i1, !dbg !65    ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_1 = trunc i8 %cbbyte_read to i1, !dbg !68  ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_2 = trunc i8 %ciphertextbyte_read to i1, !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_2, i1 %tmp, i1 %tmp_1) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 1), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 1), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 1), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_5, i1 %tmp_3, i1 %tmp_4) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 2), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 2), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 2), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_8, i1 %tmp_6, i1 %tmp_7) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 3), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 3), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 3), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_11, i1 %tmp_9, i1 %tmp_10) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 4), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 4), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 4), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_14, i1 %tmp_12, i1 %tmp_13) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 5), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 5), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 5), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_17, i1 %tmp_15, i1 %tmp_16) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 6), !dbg !65 ; [#uses=1 type=i1] [debug line = 67:2]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 6), !dbg !68 ; [#uses=1 type=i1] [debug line = 68:9]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 6), !dbg !69 ; [#uses=1 type=i1] [debug line = 69:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_20, i1 %tmp_18, i1 %tmp_19) nounwind, !dbg !70 ; [debug line = 70:9]
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %ciphertextbyte_read, i32 7), !dbg !70 ; [#uses=1 type=i1] [debug line = 70:9]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 7), !dbg !70 ; [#uses=1 type=i1] [debug line = 70:9]
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 7), !dbg !70 ; [#uses=1 type=i1] [debug line = 70:9]
  call fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_21, i1 %tmp_22, i1 %tmp_23) nounwind, !dbg !70 ; [debug line = 70:9]
  ret i32 0, !dbg !71                             ; [debug line = 74:5]
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=8]
define internal fastcc void @acorn128_dec_onebyte_Decrypt_StateUpdate128_1bit([293 x i8]* nocapture %state, i1 %ciphertextbit, i1 %ca, i1 %cb) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([293 x i8]* %state, [1 x i8]* @str4, [7 x i8]* @str3, [1 x i8]* @str4, i32 -1, [1 x i8]* @str4, [1 x i8]* @str4, [1 x i8]* @str4) ; [#uses=0 type=i32]
  %cb_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %cb) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %cb_read}, i64 0, metadata !72), !dbg !76 ; [debug line = 27:165] [debug variable = cb]
  call void @llvm.dbg.value(metadata !{i1 %cb_read}, i64 0, metadata !77), !dbg !83 ; [debug line = 17:95@39:9] [debug variable = cb]
  %ca_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %ca) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %ca_read}, i64 0, metadata !84), !dbg !85 ; [debug line = 27:147] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i1 %ca_read}, i64 0, metadata !86), !dbg !87 ; [debug line = 17:77@39:9] [debug variable = ca]
  %ciphertextbit_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %ciphertextbit) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %ciphertextbit_read}, i64 0, metadata !88), !dbg !89 ; [debug line = 27:99] [debug variable = ciphertextbit]
  %ciphertextbit_cast = zext i1 %ciphertextbit_read to i8 ; [#uses=1 type=i8]
  %state_addr = getelementptr [293 x i8]* %state, i64 0, i64 0 ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !90), !dbg !91 ; [debug line = 27:49] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i1 %ciphertextbit}, i64 0, metadata !88), !dbg !89 ; [debug line = 27:99] [debug variable = ciphertextbit]
  call void @llvm.dbg.value(metadata !{i1 %ca}, i64 0, metadata !84), !dbg !85 ; [debug line = 27:147] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i1 %cb}, i64 0, metadata !72), !dbg !76 ; [debug line = 27:165] [debug variable = cb]
  %state_addr_1 = getelementptr [293 x i8]* %state, i64 0, i64 235, !dbg !92 ; [#uses=1 type=i8*] [debug line = 32:5]
  %state_load = load i8* %state_addr_1, align 1, !dbg !92 ; [#uses=2 type=i8] [debug line = 32:5]
  %state_addr_2 = getelementptr [293 x i8]* %state, i64 0, i64 230, !dbg !92 ; [#uses=2 type=i8*] [debug line = 32:5]
  %state_load_1 = load i8* %state_addr_2, align 1, !dbg !92 ; [#uses=2 type=i8] [debug line = 32:5]
  %state_addr_3 = getelementptr [293 x i8]* %state, i64 0, i64 289, !dbg !92 ; [#uses=2 type=i8*] [debug line = 32:5]
  %state_load_2 = load i8* %state_addr_3, align 1, !dbg !92 ; [#uses=1 type=i8] [debug line = 32:5]
  %tmp1 = xor i8 %state_load, %state_load_2, !dbg !92 ; [#uses=1 type=i8] [debug line = 32:5]
  %tmp_s = xor i8 %tmp1, %state_load_1, !dbg !92  ; [#uses=1 type=i8] [debug line = 32:5]
  store i8 %tmp_s, i8* %state_addr_3, align 1, !dbg !92 ; [debug line = 32:5]
  %state_addr_4 = getelementptr [293 x i8]* %state, i64 0, i64 196, !dbg !93 ; [#uses=1 type=i8*] [debug line = 33:5]
  %state_load_3 = load i8* %state_addr_4, align 1, !dbg !93 ; [#uses=2 type=i8] [debug line = 33:5]
  %tmp_24 = trunc i8 %state_load_3 to i1, !dbg !93 ; [#uses=1 type=i1] [debug line = 33:5]
  %state_addr_5 = getelementptr [293 x i8]* %state, i64 0, i64 193, !dbg !93 ; [#uses=2 type=i8*] [debug line = 33:5]
  %state_load_4 = load i8* %state_addr_5, align 1, !dbg !93 ; [#uses=2 type=i8] [debug line = 33:5]
  %tmp2 = xor i8 %state_load_1, %state_load_4, !dbg !93 ; [#uses=1 type=i8] [debug line = 33:5]
  %x_assign_1 = xor i8 %tmp2, %state_load_3, !dbg !93 ; [#uses=3 type=i8] [debug line = 33:5]
  store i8 %x_assign_1, i8* %state_addr_2, align 1, !dbg !93 ; [debug line = 33:5]
  %state_addr_6 = getelementptr [293 x i8]* %state, i64 0, i64 160, !dbg !94 ; [#uses=1 type=i8*] [debug line = 34:5]
  %state_load_5 = load i8* %state_addr_6, align 1, !dbg !94 ; [#uses=3 type=i8] [debug line = 34:5]
  %state_addr_7 = getelementptr [293 x i8]* %state, i64 0, i64 154, !dbg !94 ; [#uses=2 type=i8*] [debug line = 34:5]
  %state_load_6 = load i8* %state_addr_7, align 1, !dbg !94 ; [#uses=2 type=i8] [debug line = 34:5]
  %tmp3 = xor i8 %state_load_4, %state_load_6, !dbg !94 ; [#uses=1 type=i8] [debug line = 34:5]
  %z_assign = xor i8 %tmp3, %state_load_5, !dbg !94 ; [#uses=3 type=i8] [debug line = 34:5]
  store i8 %z_assign, i8* %state_addr_5, align 1, !dbg !94 ; [debug line = 34:5]
  %state_addr_8 = getelementptr [293 x i8]* %state, i64 0, i64 111, !dbg !95 ; [#uses=1 type=i8*] [debug line = 35:5]
  %state_load_7 = load i8* %state_addr_8, align 1, !dbg !95 ; [#uses=2 type=i8] [debug line = 35:5]
  %state_addr_9 = getelementptr [293 x i8]* %state, i64 0, i64 107, !dbg !95 ; [#uses=2 type=i8*] [debug line = 35:5]
  %state_load_8 = load i8* %state_addr_9, align 1, !dbg !95 ; [#uses=2 type=i8] [debug line = 35:5]
  %tmp4 = xor i8 %state_load_6, %state_load_8, !dbg !95 ; [#uses=1 type=i8] [debug line = 35:5]
  %tmp_3 = xor i8 %tmp4, %state_load_7, !dbg !95  ; [#uses=2 type=i8] [debug line = 35:5]
  store i8 %tmp_3, i8* %state_addr_7, align 1, !dbg !95 ; [debug line = 35:5]
  %state_addr_10 = getelementptr [293 x i8]* %state, i64 0, i64 66, !dbg !96 ; [#uses=1 type=i8*] [debug line = 36:5]
  %state_load_9 = load i8* %state_addr_10, align 1, !dbg !96 ; [#uses=2 type=i8] [debug line = 36:5]
  %state_addr_11 = getelementptr [293 x i8]* %state, i64 0, i64 61, !dbg !96 ; [#uses=2 type=i8*] [debug line = 36:5]
  %state_load_10 = load i8* %state_addr_11, align 1, !dbg !96 ; [#uses=2 type=i8] [debug line = 36:5]
  %tmp5 = xor i8 %state_load_8, %state_load_10, !dbg !96 ; [#uses=1 type=i8] [debug line = 36:5]
  %tmp_5 = xor i8 %tmp5, %state_load_9, !dbg !96  ; [#uses=2 type=i8] [debug line = 36:5]
  store i8 %tmp_5, i8* %state_addr_9, align 1, !dbg !96 ; [debug line = 36:5]
  %state_addr_12 = getelementptr [293 x i8]* %state, i64 0, i64 23, !dbg !97 ; [#uses=1 type=i8*] [debug line = 37:5]
  %state_load_11 = load i8* %state_addr_12, align 1, !dbg !97 ; [#uses=3 type=i8] [debug line = 37:5]
  %state_load_12 = load i8* %state_addr, align 1, !dbg !97 ; [#uses=2 type=i8] [debug line = 37:5]
  %tmp6 = xor i8 %state_load_10, %state_load_12, !dbg !97 ; [#uses=1 type=i8] [debug line = 37:5]
  %y_assign = xor i8 %tmp6, %state_load_11, !dbg !97 ; [#uses=3 type=i8] [debug line = 37:5]
  store i8 %y_assign, i8* %state_addr_11, align 1, !dbg !97 ; [debug line = 37:5]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !98), !dbg !99 ; [debug line = 17:37@39:9] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i1 %ca}, i64 0, metadata !86), !dbg !87 ; [debug line = 17:77@39:9] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i1 %cb}, i64 0, metadata !77), !dbg !83 ; [debug line = 17:95@39:9] [debug variable = cb]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !100), !dbg !106 ; [debug line = 12:37@20:11@39:9] [debug variable = state]
  %state_addr_16 = getelementptr [293 x i8]* %state, i64 0, i64 12, !dbg !107 ; [#uses=1 type=i8*] [debug line = 14:5@20:11@39:9]
  %state_load_14 = load i8* %state_addr_16, align 1, !dbg !107 ; [#uses=1 type=i8] [debug line = 14:5@20:11@39:9]
  call void @llvm.dbg.value(metadata !{i8 %state_load}, i64 0, metadata !109), !dbg !114 ; [debug line = 2:33@14:39@20:11@39:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y_assign}, i64 0, metadata !115), !dbg !116 ; [debug line = 2:49@14:39@20:11@39:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z_assign}, i64 0, metadata !117), !dbg !118 ; [debug line = 2:65@14:39@20:11@39:9] [debug variable = z]
  %tmp_i_i_i = xor i8 %z_assign, %y_assign, !dbg !119 ; [#uses=1 type=i8] [debug line = 4:2@14:39@20:11@39:9]
  %tmp_1_i_i_i = and i8 %tmp_i_i_i, %state_load, !dbg !119 ; [#uses=1 type=i8] [debug line = 4:2@14:39@20:11@39:9]
  %tmp_2_i_i_i = and i8 %z_assign, %y_assign, !dbg !119 ; [#uses=1 type=i8] [debug line = 4:2@14:39@20:11@39:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !121), !dbg !124 ; [debug line = 7:32@14:80@20:11@39:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %state_load_7}, i64 0, metadata !125), !dbg !126 ; [debug line = 7:48@14:80@20:11@39:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %state_load_9}, i64 0, metadata !127), !dbg !128 ; [debug line = 7:64@14:80@20:11@39:9] [debug variable = z]
  %tmp_i9_i_i = and i8 %state_load_7, %x_assign_1, !dbg !129 ; [#uses=1 type=i8] [debug line = 9:2@14:80@20:11@39:9]
  %tmp_4_i_i_i = xor i8 %x_assign_1, 1, !dbg !129 ; [#uses=1 type=i8] [debug line = 9:2@14:80@20:11@39:9]
  %tmp_5_i_i_i = and i8 %tmp_4_i_i_i, %state_load_9, !dbg !129 ; [#uses=1 type=i8] [debug line = 9:2@14:80@20:11@39:9]
  %tmp = xor i8 %tmp_1_i_i_i, %state_load_14, !dbg !123 ; [#uses=1 type=i8] [debug line = 14:80@20:11@39:9]
  %tmp9 = xor i8 %tmp, %tmp_2_i_i_i, !dbg !123    ; [#uses=1 type=i8] [debug line = 14:80@20:11@39:9]
  %tmp7 = xor i8 %tmp_i9_i_i, %tmp_5_i_i_i, !dbg !123 ; [#uses=1 type=i8] [debug line = 14:80@20:11@39:9]
  %tmp8 = xor i8 %tmp7, %tmp_3, !dbg !123         ; [#uses=1 type=i8] [debug line = 14:80@20:11@39:9]
  %tmp_i_i = xor i8 %tmp8, %tmp9, !dbg !123       ; [#uses=2 type=i8] [debug line = 14:80@20:11@39:9]
  %tmp_25 = trunc i8 %tmp_i_i to i1, !dbg !131    ; [#uses=1 type=i1] [debug line = 21:39@39:9]
  %state_addr_17 = getelementptr [293 x i8]* %state, i64 0, i64 244, !dbg !131 ; [#uses=1 type=i8*] [debug line = 21:39@39:9]
  %state_load_15 = load i8* %state_addr_17, align 1, !dbg !131 ; [#uses=1 type=i8] [debug line = 21:39@39:9]
  call void @llvm.dbg.value(metadata !{i8 %state_load_15}, i64 0, metadata !132), !dbg !133 ; [debug line = 2:33@21:39@39:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %state_load_11}, i64 0, metadata !134), !dbg !135 ; [debug line = 2:49@21:39@39:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %state_load_5}, i64 0, metadata !136), !dbg !137 ; [debug line = 2:65@21:39@39:9] [debug variable = z]
  %tmp_i_i_2 = xor i8 %state_load_5, %state_load_11, !dbg !138 ; [#uses=1 type=i8] [debug line = 4:2@21:39@39:9]
  %tmp_1_i_i = and i8 %tmp_i_i_2, %state_load_15, !dbg !138 ; [#uses=1 type=i8] [debug line = 4:2@21:39@39:9]
  %tmp_2_i_i = and i8 %state_load_5, %state_load_11, !dbg !138 ; [#uses=1 type=i8] [debug line = 4:2@21:39@39:9]
  %tmp_1_i = and i1 %tmp_24, %ca_read, !dbg !131  ; [#uses=1 type=i1] [debug line = 21:39@39:9]
  %tmp_2_i = and i1 %tmp_25, %cb_read, !dbg !131  ; [#uses=1 type=i1] [debug line = 21:39@39:9]
  br label %1, !dbg !139                          ; [debug line = 41:10]

; <label>:1                                       ; preds = %2, %0
  %j = phi i9 [ 0, %0 ], [ %j_1, %2 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %j, -220, !dbg !139      ; [#uses=1 type=i1] [debug line = 41:10]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 292, i64 292, i64 292) ; [#uses=0 type=i32]
  %j_1 = add i9 %j, 1, !dbg !141                  ; [#uses=2 type=i9] [debug line = 41:32]
  br i1 %exitcond, label %3, label %2, !dbg !139  ; [debug line = 41:10]

; <label>:2                                       ; preds = %1
  %tmp_6 = zext i9 %j_1 to i64, !dbg !141         ; [#uses=1 type=i64] [debug line = 41:32]
  %state_addr_14 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp_6, !dbg !141 ; [#uses=1 type=i8*] [debug line = 41:32]
  %state_load_13 = load i8* %state_addr_14, align 1, !dbg !141 ; [#uses=1 type=i8] [debug line = 41:32]
  %tmp_7 = zext i9 %j to i64, !dbg !141           ; [#uses=1 type=i64] [debug line = 41:32]
  %state_addr_15 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp_7, !dbg !141 ; [#uses=1 type=i8*] [debug line = 41:32]
  store i8 %state_load_13, i8* %state_addr_15, align 1, !dbg !141 ; [debug line = 41:32]
  call void @llvm.dbg.value(metadata !{i9 %j_1}, i64 0, metadata !142), !dbg !144 ; [debug line = 41:27] [debug variable = j]
  br label %1, !dbg !144                          ; [debug line = 41:27]

; <label>:3                                       ; preds = %1
  %tmp10 = xor i8 %tmp_i_i, %ciphertextbit_cast, !dbg !145 ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp11 = xor i1 %tmp_2_i, %tmp_1_i, !dbg !145   ; [#uses=1 type=i1] [debug line = 43:5]
  %tmp15_cast = zext i1 %tmp11 to i8, !dbg !145   ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp12 = xor i8 %tmp15_cast, %tmp10, !dbg !145  ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp13 = xor i8 %tmp_2_i_i, %tmp_1_i_i, !dbg !145 ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp14 = xor i8 %state_load_12, 1, !dbg !145    ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp15 = xor i8 %tmp14, %tmp_5, !dbg !145       ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp16 = xor i8 %tmp15, %tmp13, !dbg !145       ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp_4 = xor i8 %tmp16, %tmp12, !dbg !145       ; [#uses=1 type=i8] [debug line = 43:5]
  %state_addr_13 = getelementptr [293 x i8]* %state, i64 0, i64 292, !dbg !145 ; [#uses=1 type=i8*] [debug line = 43:5]
  store i8 %tmp_4, i8* %state_addr_13, align 1, !dbg !145 ; [debug line = 43:5]
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=3]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=21]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_4 = shl i8 1, %empty                     ; [#uses=1 type=i8]
  %empty_5 = and i8 %0, %empty_4                  ; [#uses=1 type=i8]
  %empty_6 = icmp ne i8 %empty_5, 0               ; [#uses=1 type=i1]
  ret i1 %empty_6
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"state", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 292, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 7, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"plaintextbyte", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, i32 0}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 7, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"ciphertextbyte", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 7, metadata !18}
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !"ksbyte", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"cabyte", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"cbbyte", metadata !10, metadata !"unsigned char", i32 0, i32 7}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 31, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"return", metadata !32, metadata !"int", i32 0, i32 31}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 1, i32 0}
!34 = metadata !{i32 786689, metadata !35, metadata !"cbbyte", metadata !36, i32 100663345, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 786478, i32 0, metadata !36, metadata !"acorn128_dec_onebyte", metadata !"acorn128_dec_onebyte", metadata !"", metadata !36, i32 48, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 50} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786473, metadata !"soc_proj_hls_deneme_1_dec/source_dec.c", metadata !"c:/vivado_2014.4_hls_workspace", null} ; [ DW_TAG_file_type ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !41, metadata !41, metadata !41, metadata !41}
!39 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ]
!41 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 49, i32 96, metadata !35, null}
!45 = metadata !{i32 786689, metadata !35, metadata !"cabyte", metadata !36, i32 83886129, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 49, i32 74, metadata !35, null}
!47 = metadata !{i32 786689, metadata !35, metadata !"ciphertextbyte", metadata !36, i32 50331697, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 49, i32 22, metadata !35, null}
!49 = metadata !{i32 786689, metadata !35, metadata !"state", null, i32 48, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2344, i64 8, i32 0, i32 0, metadata !41, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786465, i64 0, i64 292}      ; [ DW_TAG_subrange_type ]
!53 = metadata !{i32 48, i32 40, metadata !35, null}
!54 = metadata !{i32 786689, metadata !35, metadata !"plaintextbyte", metadata !36, i32 33554480, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 48, i32 66, metadata !35, null}
!56 = metadata !{i32 786689, metadata !35, metadata !"ksbyte", metadata !36, i32 67108913, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 49, i32 52, metadata !35, null}
!58 = metadata !{i32 53, i32 1, metadata !59, null}
!59 = metadata !{i32 786443, metadata !35, i32 50, i32 1, metadata !36, i32 6} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 54, i32 1, metadata !59, null}
!61 = metadata !{i32 55, i32 1, metadata !59, null}
!62 = metadata !{i32 56, i32 1, metadata !59, null}
!63 = metadata !{i32 57, i32 1, metadata !59, null}
!64 = metadata !{i32 58, i32 1, metadata !59, null}
!65 = metadata !{i32 67, i32 2, metadata !66, null}
!66 = metadata !{i32 786443, metadata !67, i32 65, i32 5, metadata !36, i32 8} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 786443, metadata !59, i32 64, i32 5, metadata !36, i32 7} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 68, i32 9, metadata !66, null}
!69 = metadata !{i32 69, i32 9, metadata !66, null}
!70 = metadata !{i32 70, i32 9, metadata !66, null}
!71 = metadata !{i32 74, i32 5, metadata !59, null}
!72 = metadata !{i32 786689, metadata !73, metadata !"cb", metadata !36, i32 100663323, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 786478, i32 0, metadata !36, metadata !"Decrypt_StateUpdate128_1bit", metadata !"Decrypt_StateUpdate128_1bit", metadata !"", metadata !36, i32 27, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 28} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !40, metadata !40, metadata !41, metadata !40, metadata !41, metadata !41}
!76 = metadata !{i32 27, i32 165, metadata !73, null}
!77 = metadata !{i32 786689, metadata !78, metadata !"cb", metadata !36, i32 67108881, metadata !41, i32 0, metadata !81} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 786478, i32 0, metadata !36, metadata !"FBK128", metadata !"FBK128", metadata !"", metadata !36, i32 17, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 18} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !41, metadata !40, metadata !40, metadata !41, metadata !41}
!81 = metadata !{i32 39, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !73, i32 28, i32 1, metadata !36, i32 4} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 17, i32 95, metadata !78, metadata !81}
!84 = metadata !{i32 786689, metadata !73, metadata !"ca", metadata !36, i32 83886107, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 27, i32 147, metadata !73, null}
!86 = metadata !{i32 786689, metadata !78, metadata !"ca", metadata !36, i32 50331665, metadata !41, i32 0, metadata !81} ; [ DW_TAG_arg_variable ]
!87 = metadata !{i32 17, i32 77, metadata !78, metadata !81}
!88 = metadata !{i32 786689, metadata !73, metadata !"ciphertextbit", metadata !36, i32 50331675, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 27, i32 99, metadata !73, null}
!90 = metadata !{i32 786689, metadata !73, metadata !"state", null, i32 27, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 27, i32 49, metadata !73, null}
!92 = metadata !{i32 32, i32 5, metadata !82, null}
!93 = metadata !{i32 33, i32 5, metadata !82, null}
!94 = metadata !{i32 34, i32 5, metadata !82, null}
!95 = metadata !{i32 35, i32 5, metadata !82, null}
!96 = metadata !{i32 36, i32 5, metadata !82, null}
!97 = metadata !{i32 37, i32 5, metadata !82, null}
!98 = metadata !{i32 786689, metadata !78, metadata !"state", null, i32 17, metadata !50, i32 0, metadata !81} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 17, i32 37, metadata !78, metadata !81}
!100 = metadata !{i32 786689, metadata !101, metadata !"state", null, i32 12, metadata !50, i32 0, metadata !104} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 786478, i32 0, metadata !36, metadata !"KSG128", metadata !"KSG128", metadata !"", metadata !36, i32 12, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 13} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !41, metadata !40}
!104 = metadata !{i32 20, i32 11, metadata !105, metadata !81}
!105 = metadata !{i32 786443, metadata !78, i32 18, i32 1, metadata !36, i32 3} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 12, i32 37, metadata !101, metadata !104}
!107 = metadata !{i32 14, i32 5, metadata !108, metadata !104}
!108 = metadata !{i32 786443, metadata !101, i32 13, i32 1, metadata !36, i32 2} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 786689, metadata !110, metadata !"x", metadata !36, i32 16777218, metadata !41, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 786478, i32 0, metadata !36, metadata !"maj", metadata !"maj", metadata !"", metadata !36, i32 2, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 3} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !41, metadata !41, metadata !41, metadata !41}
!113 = metadata !{i32 14, i32 39, metadata !108, metadata !104}
!114 = metadata !{i32 2, i32 33, metadata !110, metadata !113}
!115 = metadata !{i32 786689, metadata !110, metadata !"y", metadata !36, i32 33554434, metadata !41, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 2, i32 49, metadata !110, metadata !113}
!117 = metadata !{i32 786689, metadata !110, metadata !"z", metadata !36, i32 50331650, metadata !41, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 2, i32 65, metadata !110, metadata !113}
!119 = metadata !{i32 4, i32 2, metadata !120, metadata !113}
!120 = metadata !{i32 786443, metadata !110, i32 3, i32 1, metadata !36, i32 0} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786689, metadata !122, metadata !"x", metadata !36, i32 16777223, metadata !41, i32 0, metadata !123} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 786478, i32 0, metadata !36, metadata !"ch", metadata !"ch", metadata !"", metadata !36, i32 7, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 8} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 14, i32 80, metadata !108, metadata !104}
!124 = metadata !{i32 7, i32 32, metadata !122, metadata !123}
!125 = metadata !{i32 786689, metadata !122, metadata !"y", metadata !36, i32 33554439, metadata !41, i32 0, metadata !123} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 7, i32 48, metadata !122, metadata !123}
!127 = metadata !{i32 786689, metadata !122, metadata !"z", metadata !36, i32 50331655, metadata !41, i32 0, metadata !123} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 7, i32 64, metadata !122, metadata !123}
!129 = metadata !{i32 9, i32 2, metadata !130, metadata !123}
!130 = metadata !{i32 786443, metadata !122, i32 8, i32 1, metadata !36, i32 1} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 21, i32 39, metadata !105, metadata !81}
!132 = metadata !{i32 786689, metadata !110, metadata !"x", metadata !36, i32 16777218, metadata !41, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 2, i32 33, metadata !110, metadata !131}
!134 = metadata !{i32 786689, metadata !110, metadata !"y", metadata !36, i32 33554434, metadata !41, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!135 = metadata !{i32 2, i32 49, metadata !110, metadata !131}
!136 = metadata !{i32 786689, metadata !110, metadata !"z", metadata !36, i32 50331650, metadata !41, i32 0, metadata !131} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 2, i32 65, metadata !110, metadata !131}
!138 = metadata !{i32 4, i32 2, metadata !120, metadata !131}
!139 = metadata !{i32 41, i32 10, metadata !140, null}
!140 = metadata !{i32 786443, metadata !82, i32 41, i32 5, metadata !36, i32 5} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 41, i32 32, metadata !140, null}
!142 = metadata !{i32 786688, metadata !82, metadata !"j", metadata !36, i32 29, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!144 = metadata !{i32 41, i32 27, metadata !140, null}
!145 = metadata !{i32 43, i32 5, metadata !82, null}
