; ModuleID = 'C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = internal constant [21 x i8] c"acorn128_enc_onebyte\00"
@str3 = internal constant [7 x i8] c"RAM_1P\00"
@str4 = internal constant [1 x i8] zeroinitializer

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define i32 @acorn128_enc_onebyte([293 x i8]* %state, i8 zeroext %plaintextbyte, i8 zeroext %ciphertextbyte, i8 zeroext %ksbyte, i8 zeroext %cabyte, i8 zeroext %cbbyte) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([293 x i8]* %state) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %plaintextbyte) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ciphertextbyte) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ksbyte) nounwind, !map !16
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cabyte) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cbbyte) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !28
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %cbbyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %cbbyte) nounwind
  %cabyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %cabyte) nounwind
  %plaintextbyte_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %plaintextbyte) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([293 x i8]* %state, [1 x i8]* @str4, [7 x i8]* @str3, [1 x i8]* @str4, i32 -1, [1 x i8]* @str4, [1 x i8]* @str4, [1 x i8]* @str4) nounwind
  call void (...)* @_ssdm_op_SpecInterface([293 x i8]* %state, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %plaintextbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %ciphertextbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %ksbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %cabyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %cbbyte, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = trunc i8 %cabyte_read to i1
  %tmp_1 = trunc i8 %cbbyte_read to i1
  %tmp_2 = trunc i8 %plaintextbyte_read to i1
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_2, i1 %tmp, i1 %tmp_1) nounwind
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 1)
  %tmp_4 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 1)
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 1)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_5, i1 %tmp_3, i1 %tmp_4) nounwind
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 2)
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 2)
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 2)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_8, i1 %tmp_6, i1 %tmp_7) nounwind
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 3)
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 3)
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 3)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_11, i1 %tmp_9, i1 %tmp_10) nounwind
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 4)
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 4)
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 4)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_14, i1 %tmp_12, i1 %tmp_13) nounwind
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 5)
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 5)
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 5)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_17, i1 %tmp_15, i1 %tmp_16) nounwind
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 6)
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 6)
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 6)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_20, i1 %tmp_18, i1 %tmp_19) nounwind
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %plaintextbyte_read, i32 7)
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cabyte_read, i32 7)
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %cbbyte_read, i32 7)
  call fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp_21, i1 %tmp_22, i1 %tmp_23) nounwind
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc void @acorn128_enc_onebyte_Encrypt_StateUpdate128_1bit([293 x i8]* nocapture %state, i1 %plaintextbit, i1 %ca, i1 %cb) {
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([293 x i8]* %state, [1 x i8]* @str4, [7 x i8]* @str3, [1 x i8]* @str4, i32 -1, [1 x i8]* @str4, [1 x i8]* @str4, [1 x i8]* @str4)
  %cb_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %cb)
  %ca_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %ca)
  %plaintextbit_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %plaintextbit)
  %state_addr = getelementptr [293 x i8]* %state, i64 0, i64 0
  %state_addr_1 = getelementptr [293 x i8]* %state, i64 0, i64 235
  %state_load = load i8* %state_addr_1, align 1
  %tmp_24 = trunc i8 %state_load to i1
  %state_addr_2 = getelementptr [293 x i8]* %state, i64 0, i64 230
  %state_load_1 = load i8* %state_addr_2, align 1
  %state_addr_3 = getelementptr [293 x i8]* %state, i64 0, i64 289
  %state_load_2 = load i8* %state_addr_3, align 1
  %tmp1 = xor i8 %state_load, %state_load_2
  %tmp_s = xor i8 %tmp1, %state_load_1
  store i8 %tmp_s, i8* %state_addr_3, align 1
  %state_addr_4 = getelementptr [293 x i8]* %state, i64 0, i64 196
  %state_load_3 = load i8* %state_addr_4, align 1
  %tmp_25 = trunc i8 %state_load_3 to i1
  %state_addr_5 = getelementptr [293 x i8]* %state, i64 0, i64 193
  %state_load_4 = load i8* %state_addr_5, align 1
  %tmp2 = xor i8 %state_load_1, %state_load_4
  %x_assign_1 = xor i8 %tmp2, %state_load_3
  %tmp_26 = trunc i8 %x_assign_1 to i1
  store i8 %x_assign_1, i8* %state_addr_2, align 1
  %state_addr_6 = getelementptr [293 x i8]* %state, i64 0, i64 160
  %state_load_5 = load i8* %state_addr_6, align 1
  %state_addr_7 = getelementptr [293 x i8]* %state, i64 0, i64 154
  %state_load_6 = load i8* %state_addr_7, align 1
  %tmp3 = xor i8 %state_load_4, %state_load_6
  %z_assign = xor i8 %tmp3, %state_load_5
  %tmp_27 = trunc i8 %z_assign to i1
  store i8 %z_assign, i8* %state_addr_5, align 1
  %state_addr_8 = getelementptr [293 x i8]* %state, i64 0, i64 111
  %state_load_7 = load i8* %state_addr_8, align 1
  %tmp_28 = trunc i8 %state_load_7 to i1
  %state_addr_9 = getelementptr [293 x i8]* %state, i64 0, i64 107
  %state_load_8 = load i8* %state_addr_9, align 1
  %tmp4 = xor i8 %state_load_6, %state_load_8
  %tmp_3 = xor i8 %tmp4, %state_load_7
  %tmp_29 = trunc i8 %tmp_3 to i1
  store i8 %tmp_3, i8* %state_addr_7, align 1
  %state_addr_10 = getelementptr [293 x i8]* %state, i64 0, i64 66
  %state_load_9 = load i8* %state_addr_10, align 1
  %tmp_30 = trunc i8 %state_load_9 to i1
  %state_addr_11 = getelementptr [293 x i8]* %state, i64 0, i64 61
  %state_load_10 = load i8* %state_addr_11, align 1
  %tmp5 = xor i8 %state_load_8, %state_load_10
  %tmp_5 = xor i8 %tmp5, %state_load_9
  store i8 %tmp_5, i8* %state_addr_9, align 1
  %state_addr_12 = getelementptr [293 x i8]* %state, i64 0, i64 23
  %state_load_11 = load i8* %state_addr_12, align 1
  %state_load_12 = load i8* %state_addr, align 1
  %tmp6 = xor i8 %state_load_10, %state_load_12
  %y_assign = xor i8 %tmp6, %state_load_11
  %tmp_31 = trunc i8 %y_assign to i1
  store i8 %y_assign, i8* %state_addr_11, align 1
  %state_addr_16 = getelementptr [293 x i8]* %state, i64 0, i64 12
  %state_load_14 = load i8* %state_addr_16, align 1
  %tmp_32 = trunc i8 %state_load_14 to i1
  %tmp_i_i_i = xor i1 %tmp_27, %tmp_31
  %tmp_1_i_i_i = and i1 %tmp_i_i_i, %tmp_24
  %tmp_2_i_i_i = and i1 %tmp_27, %tmp_31
  %tmp_i9_i_i = and i1 %tmp_28, %tmp_26
  %tmp_4_i_i_i = xor i1 %tmp_26, true
  %tmp_5_i_i_i = and i1 %tmp_30, %tmp_4_i_i_i
  %tmp8 = xor i1 %tmp_32, %tmp_2_i_i_i
  %tmp7 = xor i1 %tmp8, %tmp_29
  %tmp = xor i1 %tmp_i9_i_i, %tmp_5_i_i_i
  %tmp9 = xor i1 %tmp, %tmp_1_i_i_i
  %tmp_i_i = xor i1 %tmp9, %tmp7
  %state_addr_17 = getelementptr [293 x i8]* %state, i64 0, i64 244
  %state_load_15 = load i8* %state_addr_17, align 1
  %tmp_i_i_2 = xor i8 %state_load_5, %state_load_11
  %tmp_1_i_i = and i8 %tmp_i_i_2, %state_load_15
  %tmp_2_i_i = and i8 %state_load_5, %state_load_11
  %tmp_1_i = and i1 %tmp_25, %ca_read
  %tmp_2_i = and i1 %tmp_i_i, %cb_read
  br label %1

; <label>:1                                       ; preds = %2, %0
  %j = phi i9 [ 0, %0 ], [ %j_1, %2 ]
  %exitcond = icmp eq i9 %j, -220
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 292, i64 292, i64 292)
  %j_1 = add i9 %j, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_6 = zext i9 %j_1 to i64
  %state_addr_14 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp_6
  %state_load_13 = load i8* %state_addr_14, align 1
  %tmp_7 = zext i9 %j to i64
  %state_addr_15 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp_7
  store i8 %state_load_13, i8* %state_addr_15, align 1
  br label %1

; <label>:3                                       ; preds = %1
  %tmp10 = xor i8 %state_load_12, %tmp_5
  %tmp12 = xor i8 %tmp_2_i_i, %tmp_1_i_i
  %tmp11 = xor i8 %tmp12, %tmp10
  %tmp13 = xor i1 %tmp_1_i, %tmp_2_i
  %tmp15 = xor i1 %plaintextbit_read, true
  %tmp14 = xor i1 %tmp13, %tmp15
  %tmp14_cast = zext i1 %tmp14 to i8
  %tmp_4 = xor i8 %tmp14_cast, %tmp11
  %state_addr_13 = getelementptr [293 x i8]* %state, i64 0, i64 292
  store i8 %tmp_4, i8* %state_addr_13, align 1
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_4 = shl i8 1, %empty
  %empty_5 = and i8 %0, %empty_4
  %empty_6 = icmp ne i8 %empty_5, 0
  ret i1 %empty_6
}

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
