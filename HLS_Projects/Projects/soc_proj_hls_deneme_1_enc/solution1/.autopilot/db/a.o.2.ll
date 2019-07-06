; ModuleID = 'C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=21 type=[1 x i8]*]
@str = internal constant [21 x i8] c"acorn128_enc_onebyte\00" ; [#uses=1 type=[21 x i8]*]

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=7]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
define i32 @acorn128_enc_onebyte([293 x i8]* %state, i8 zeroext %plaintextbyte, i8 zeroext %ciphertextbyte, i8 zeroext %ksbyte, i8 zeroext %cabyte, i8 zeroext %cbbyte) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([293 x i8]* %state) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %plaintextbyte) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ciphertextbyte) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %ksbyte) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cabyte) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %cbbyte) nounwind, !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !61), !dbg !65 ; [debug line = 59:40] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbyte}, i64 0, metadata !66), !dbg !67 ; [debug line = 59:66] [debug variable = plaintextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbyte}, i64 0, metadata !68), !dbg !69 ; [debug line = 60:22] [debug variable = ciphertextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ksbyte}, i64 0, metadata !70), !dbg !71 ; [debug line = 60:52] [debug variable = ksbyte]
  call void @llvm.dbg.value(metadata !{i8 %cabyte}, i64 0, metadata !72), !dbg !73 ; [debug line = 60:74] [debug variable = cabyte]
  call void @llvm.dbg.value(metadata !{i8 %cbbyte}, i64 0, metadata !74), !dbg !75 ; [debug line = 60:96] [debug variable = cbbyte]
  call void (...)* @_ssdm_op_SpecInterface([293 x i8]* %state, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %plaintextbyte, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !76 ; [debug line = 64:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %ciphertextbyte, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !78 ; [debug line = 65:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %ksbyte, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !79 ; [debug line = 66:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %cabyte, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !80 ; [debug line = 67:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %cbbyte, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !81 ; [debug line = 68:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !82 ; [debug line = 69:1]
  %cabyte.cast = trunc i8 %cabyte to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast = trunc i8 %cbbyte to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast = trunc i8 %plaintextbyte to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %plaintextbyte.cast, i1 %cabyte.cast, i1 %cbbyte.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast1 = trunc i8 %cabyte to i2, !dbg !83 ; [#uses=1 type=i2] [debug line = 81:2]
  %tmp.23.1 = lshr i2 %cabyte.cast1, 1, !dbg !83  ; [#uses=1 type=i2] [debug line = 81:2]
  %tmp.23.1.cast = trunc i2 %tmp.23.1 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast6 = trunc i8 %cbbyte to i2, !dbg !86 ; [#uses=1 type=i2] [debug line = 82:9]
  %tmp.25.1 = lshr i2 %cbbyte.cast6, 1, !dbg !86  ; [#uses=1 type=i2] [debug line = 82:9]
  %tmp.25.1.cast = trunc i2 %tmp.25.1 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast1 = trunc i8 %plaintextbyte to i2, !dbg !87 ; [#uses=1 type=i2] [debug line = 83:9]
  %tmp.27.1 = lshr i2 %plaintextbyte.cast1, 1, !dbg !87 ; [#uses=1 type=i2] [debug line = 83:9]
  %tmp.27.1.cast = trunc i2 %tmp.27.1 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.1.cast, i1 %tmp.23.1.cast, i1 %tmp.25.1.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast2 = trunc i8 %cabyte to i3, !dbg !83 ; [#uses=1 type=i3] [debug line = 81:2]
  %tmp.23.2 = lshr i3 %cabyte.cast2, 2, !dbg !83  ; [#uses=1 type=i3] [debug line = 81:2]
  %tmp.23.2.cast = trunc i3 %tmp.23.2 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast5 = trunc i8 %cbbyte to i3, !dbg !86 ; [#uses=1 type=i3] [debug line = 82:9]
  %tmp.25.2 = lshr i3 %cbbyte.cast5, 2, !dbg !86  ; [#uses=1 type=i3] [debug line = 82:9]
  %tmp.25.2.cast = trunc i3 %tmp.25.2 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast2 = trunc i8 %plaintextbyte to i3, !dbg !87 ; [#uses=1 type=i3] [debug line = 83:9]
  %tmp.27.2 = lshr i3 %plaintextbyte.cast2, 2, !dbg !87 ; [#uses=1 type=i3] [debug line = 83:9]
  %tmp.27.2.cast = trunc i3 %tmp.27.2 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.2.cast, i1 %tmp.23.2.cast, i1 %tmp.25.2.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast3 = trunc i8 %cabyte to i4, !dbg !83 ; [#uses=1 type=i4] [debug line = 81:2]
  %tmp.23.3 = lshr i4 %cabyte.cast3, 3, !dbg !83  ; [#uses=1 type=i4] [debug line = 81:2]
  %tmp.23.3.cast = trunc i4 %tmp.23.3 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast4 = trunc i8 %cbbyte to i4, !dbg !86 ; [#uses=1 type=i4] [debug line = 82:9]
  %tmp.25.3 = lshr i4 %cbbyte.cast4, 3, !dbg !86  ; [#uses=1 type=i4] [debug line = 82:9]
  %tmp.25.3.cast = trunc i4 %tmp.25.3 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast3 = trunc i8 %plaintextbyte to i4, !dbg !87 ; [#uses=1 type=i4] [debug line = 83:9]
  %tmp.27.3 = lshr i4 %plaintextbyte.cast3, 3, !dbg !87 ; [#uses=1 type=i4] [debug line = 83:9]
  %tmp.27.3.cast = trunc i4 %tmp.27.3 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.3.cast, i1 %tmp.23.3.cast, i1 %tmp.25.3.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast9 = trunc i8 %cabyte to i5, !dbg !83 ; [#uses=1 type=i5] [debug line = 81:2]
  %tmp.23.4 = lshr i5 %cabyte.cast9, 4, !dbg !83  ; [#uses=1 type=i5] [debug line = 81:2]
  %tmp.23.4.cast = trunc i5 %tmp.23.4 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast3 = trunc i8 %cbbyte to i5, !dbg !86 ; [#uses=1 type=i5] [debug line = 82:9]
  %tmp.25.4 = lshr i5 %cbbyte.cast3, 4, !dbg !86  ; [#uses=1 type=i5] [debug line = 82:9]
  %tmp.25.4.cast = trunc i5 %tmp.25.4 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast4 = trunc i8 %plaintextbyte to i5, !dbg !87 ; [#uses=1 type=i5] [debug line = 83:9]
  %tmp.27.4 = lshr i5 %plaintextbyte.cast4, 4, !dbg !87 ; [#uses=1 type=i5] [debug line = 83:9]
  %tmp.27.4.cast = trunc i5 %tmp.27.4 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.4.cast, i1 %tmp.23.4.cast, i1 %tmp.25.4.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast8 = trunc i8 %cabyte to i6, !dbg !83 ; [#uses=1 type=i6] [debug line = 81:2]
  %tmp.23.5 = lshr i6 %cabyte.cast8, 5, !dbg !83  ; [#uses=1 type=i6] [debug line = 81:2]
  %tmp.23.5.cast = trunc i6 %tmp.23.5 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast2 = trunc i8 %cbbyte to i6, !dbg !86 ; [#uses=1 type=i6] [debug line = 82:9]
  %tmp.25.5 = lshr i6 %cbbyte.cast2, 5, !dbg !86  ; [#uses=1 type=i6] [debug line = 82:9]
  %tmp.25.5.cast = trunc i6 %tmp.25.5 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast5 = trunc i8 %plaintextbyte to i6, !dbg !87 ; [#uses=1 type=i6] [debug line = 83:9]
  %tmp.27.5 = lshr i6 %plaintextbyte.cast5, 5, !dbg !87 ; [#uses=1 type=i6] [debug line = 83:9]
  %tmp.27.5.cast = trunc i6 %tmp.27.5 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.5.cast, i1 %tmp.23.5.cast, i1 %tmp.25.5.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %cabyte.cast7 = trunc i8 %cabyte to i7, !dbg !83 ; [#uses=1 type=i7] [debug line = 81:2]
  %tmp.23.6 = lshr i7 %cabyte.cast7, 6, !dbg !83  ; [#uses=1 type=i7] [debug line = 81:2]
  %tmp.23.6.cast = trunc i7 %tmp.23.6 to i1, !dbg !83 ; [#uses=1 type=i1] [debug line = 81:2]
  %cbbyte.cast1 = trunc i8 %cbbyte to i7, !dbg !86 ; [#uses=1 type=i7] [debug line = 82:9]
  %tmp.25.6 = lshr i7 %cbbyte.cast1, 6, !dbg !86  ; [#uses=1 type=i7] [debug line = 82:9]
  %tmp.25.6.cast = trunc i7 %tmp.25.6 to i1, !dbg !86 ; [#uses=1 type=i1] [debug line = 82:9]
  %plaintextbyte.cast6 = trunc i8 %plaintextbyte to i7, !dbg !87 ; [#uses=1 type=i7] [debug line = 83:9]
  %tmp.27.6 = lshr i7 %plaintextbyte.cast6, 6, !dbg !87 ; [#uses=1 type=i7] [debug line = 83:9]
  %tmp.27.6.cast = trunc i7 %tmp.27.6 to i1, !dbg !87 ; [#uses=1 type=i1] [debug line = 83:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.6.cast, i1 %tmp.23.6.cast, i1 %tmp.25.6.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  %tmp.23.7 = lshr i8 %cabyte, 7, !dbg !83        ; [#uses=1 type=i8] [debug line = 81:2]
  %tmp.25.7 = lshr i8 %cbbyte, 7, !dbg !86        ; [#uses=1 type=i8] [debug line = 82:9]
  %tmp.27.7 = lshr i8 %plaintextbyte, 7, !dbg !87 ; [#uses=1 type=i8] [debug line = 83:9]
  %tmp.27.7.cast = trunc i8 %tmp.27.7 to i1, !dbg !88 ; [#uses=1 type=i1] [debug line = 84:9]
  %tmp.23.7.cast = trunc i8 %tmp.23.7 to i1, !dbg !88 ; [#uses=1 type=i1] [debug line = 84:9]
  %tmp.25.7.cast = trunc i8 %tmp.25.7 to i1, !dbg !88 ; [#uses=1 type=i1] [debug line = 84:9]
  call fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* %state, i1 %tmp.27.7.cast, i1 %tmp.23.7.cast, i1 %tmp.25.7.cast) nounwind, !dbg !88 ; [debug line = 84:9]
  ret i32 0, !dbg !89                             ; [debug line = 89:5]
}

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=8]
define internal fastcc void @Encrypt_StateUpdate128_1bit([293 x i8]* nocapture %state, i1 %plaintextbit, i1 %ca, i1 %cb) {
  %state.addr = getelementptr [293 x i8]* %state, i64 0, i64 0 ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !90), !dbg !91 ; [debug line = 33:49] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i1 %plaintextbit}, i64 0, metadata !92), !dbg !93 ; [debug line = 33:70] [debug variable = plaintextbit]
  call void @llvm.dbg.value(metadata !{i1 %ca}, i64 0, metadata !94), !dbg !95 ; [debug line = 33:147] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i1 %cb}, i64 0, metadata !96), !dbg !97 ; [debug line = 33:165] [debug variable = cb]
  %state.addr.1 = getelementptr [293 x i8]* %state, i64 0, i64 235, !dbg !98 ; [#uses=1 type=i8*] [debug line = 39:5]
  %x.assign = load i8* %state.addr.1, align 1, !dbg !98 ; [#uses=2 type=i8] [debug line = 39:5]
  %state.load.cast = trunc i8 %x.assign to i1, !dbg !98 ; [#uses=1 type=i1] [debug line = 39:5]
  %state.addr.2 = getelementptr [293 x i8]* %state, i64 0, i64 230, !dbg !98 ; [#uses=2 type=i8*] [debug line = 39:5]
  %state.load.1 = load i8* %state.addr.2, align 1, !dbg !98 ; [#uses=2 type=i8] [debug line = 39:5]
  %state.addr.3 = getelementptr [293 x i8]* %state, i64 0, i64 289, !dbg !98 ; [#uses=2 type=i8*] [debug line = 39:5]
  %state.load.2 = load i8* %state.addr.3, align 1, !dbg !98 ; [#uses=1 type=i8] [debug line = 39:5]
  %tmp1 = xor i8 %x.assign, %state.load.2, !dbg !98 ; [#uses=1 type=i8] [debug line = 39:5]
  %tmp. = xor i8 %tmp1, %state.load.1, !dbg !98   ; [#uses=1 type=i8] [debug line = 39:5]
  store i8 %tmp., i8* %state.addr.3, align 1, !dbg !98 ; [debug line = 39:5]
  %state.addr.4 = getelementptr [293 x i8]* %state, i64 0, i64 196, !dbg !100 ; [#uses=1 type=i8*] [debug line = 40:5]
  %state.load.3 = load i8* %state.addr.4, align 1, !dbg !100 ; [#uses=2 type=i8] [debug line = 40:5]
  %state.load.3.cast = trunc i8 %state.load.3 to i1, !dbg !100 ; [#uses=1 type=i1] [debug line = 40:5]
  %state.addr.5 = getelementptr [293 x i8]* %state, i64 0, i64 193, !dbg !100 ; [#uses=2 type=i8*] [debug line = 40:5]
  %state.load.4 = load i8* %state.addr.5, align 1, !dbg !100 ; [#uses=2 type=i8] [debug line = 40:5]
  %tmp2 = xor i8 %state.load.1, %state.load.4, !dbg !100 ; [#uses=1 type=i8] [debug line = 40:5]
  %x.assign.1 = xor i8 %tmp2, %state.load.3, !dbg !100 ; [#uses=2 type=i8] [debug line = 40:5]
  %tmp.8.cast = trunc i8 %x.assign.1 to i1, !dbg !100 ; [#uses=2 type=i1] [debug line = 40:5]
  store i8 %x.assign.1, i8* %state.addr.2, align 1, !dbg !100 ; [debug line = 40:5]
  %state.addr.6 = getelementptr [293 x i8]* %state, i64 0, i64 160, !dbg !101 ; [#uses=1 type=i8*] [debug line = 41:5]
  %z.assign.2 = load i8* %state.addr.6, align 1, !dbg !101 ; [#uses=3 type=i8] [debug line = 41:5]
  %state.addr.7 = getelementptr [293 x i8]* %state, i64 0, i64 154, !dbg !101 ; [#uses=2 type=i8*] [debug line = 41:5]
  %state.load.6 = load i8* %state.addr.7, align 1, !dbg !101 ; [#uses=2 type=i8] [debug line = 41:5]
  %tmp3 = xor i8 %state.load.4, %state.load.6, !dbg !101 ; [#uses=1 type=i8] [debug line = 41:5]
  %z.assign = xor i8 %tmp3, %z.assign.2, !dbg !101 ; [#uses=2 type=i8] [debug line = 41:5]
  %tmp.1.cast = trunc i8 %z.assign to i1, !dbg !101 ; [#uses=2 type=i1] [debug line = 41:5]
  store i8 %z.assign, i8* %state.addr.5, align 1, !dbg !101 ; [debug line = 41:5]
  %state.addr.8 = getelementptr [293 x i8]* %state, i64 0, i64 111, !dbg !102 ; [#uses=1 type=i8*] [debug line = 42:5]
  %y.assign.1 = load i8* %state.addr.8, align 1, !dbg !102 ; [#uses=2 type=i8] [debug line = 42:5]
  %state.load.7.cast = trunc i8 %y.assign.1 to i1, !dbg !102 ; [#uses=1 type=i1] [debug line = 42:5]
  %state.addr.9 = getelementptr [293 x i8]* %state, i64 0, i64 107, !dbg !102 ; [#uses=2 type=i8*] [debug line = 42:5]
  %state.load.8 = load i8* %state.addr.9, align 1, !dbg !102 ; [#uses=2 type=i8] [debug line = 42:5]
  %tmp4 = xor i8 %state.load.6, %state.load.8, !dbg !102 ; [#uses=1 type=i8] [debug line = 42:5]
  %tmp.3 = xor i8 %tmp4, %y.assign.1, !dbg !102   ; [#uses=2 type=i8] [debug line = 42:5]
  %tmp.3.cast = trunc i8 %tmp.3 to i1, !dbg !102  ; [#uses=1 type=i1] [debug line = 42:5]
  store i8 %tmp.3, i8* %state.addr.7, align 1, !dbg !102 ; [debug line = 42:5]
  %state.addr.10 = getelementptr [293 x i8]* %state, i64 0, i64 66, !dbg !103 ; [#uses=1 type=i8*] [debug line = 43:5]
  %z.assign.1 = load i8* %state.addr.10, align 1, !dbg !103 ; [#uses=2 type=i8] [debug line = 43:5]
  %state.load.9.cast = trunc i8 %z.assign.1 to i1, !dbg !103 ; [#uses=1 type=i1] [debug line = 43:5]
  %state.addr.11 = getelementptr [293 x i8]* %state, i64 0, i64 61, !dbg !103 ; [#uses=2 type=i8*] [debug line = 43:5]
  %state.load.10 = load i8* %state.addr.11, align 1, !dbg !103 ; [#uses=2 type=i8] [debug line = 43:5]
  %tmp5 = xor i8 %state.load.8, %state.load.10, !dbg !103 ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp.5 = xor i8 %tmp5, %z.assign.1, !dbg !103   ; [#uses=2 type=i8] [debug line = 43:5]
  store i8 %tmp.5, i8* %state.addr.9, align 1, !dbg !103 ; [debug line = 43:5]
  %state.addr.12 = getelementptr [293 x i8]* %state, i64 0, i64 23, !dbg !104 ; [#uses=1 type=i8*] [debug line = 44:5]
  %y.assign.2 = load i8* %state.addr.12, align 1, !dbg !104 ; [#uses=3 type=i8] [debug line = 44:5]
  %state.load.12 = load i8* %state.addr, align 1, !dbg !104 ; [#uses=2 type=i8] [debug line = 44:5]
  %tmp6 = xor i8 %state.load.10, %state.load.12, !dbg !104 ; [#uses=1 type=i8] [debug line = 44:5]
  %y.assign = xor i8 %tmp6, %y.assign.2, !dbg !104 ; [#uses=2 type=i8] [debug line = 44:5]
  %tmp.10.cast = trunc i8 %y.assign to i1, !dbg !104 ; [#uses=2 type=i1] [debug line = 44:5]
  store i8 %y.assign, i8* %state.addr.11, align 1, !dbg !104 ; [debug line = 44:5]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !105), !dbg !107 ; [debug line = 24:37@47:9] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i1 %ca}, i64 0, metadata !108), !dbg !109 ; [debug line = 24:77@47:9] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i1 %cb}, i64 0, metadata !110), !dbg !111 ; [debug line = 24:95@47:9] [debug variable = cb]
  call void @llvm.dbg.value(metadata !{[293 x i8]* %state}, i64 0, metadata !112), !dbg !115 ; [debug line = 19:37@27:11@47:9] [debug variable = state]
  %state.addr.16 = getelementptr [293 x i8]* %state, i64 0, i64 12, !dbg !116 ; [#uses=1 type=i8*] [debug line = 21:5@27:11@47:9]
  %state.load.14 = load i8* %state.addr.16, align 1, !dbg !116 ; [#uses=1 type=i8] [debug line = 21:5@27:11@47:9]
  %state.load.14.cast = trunc i8 %state.load.14 to i1, !dbg !118 ; [#uses=1 type=i1] [debug line = 9:33@21:39@27:11@47:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !120), !dbg !118 ; [debug line = 9:33@21:39@27:11@47:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y.assign}, i64 0, metadata !121), !dbg !122 ; [debug line = 9:49@21:39@27:11@47:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z.assign}, i64 0, metadata !123), !dbg !124 ; [debug line = 9:65@21:39@27:11@47:9] [debug variable = z]
  %tmp.i.i.i = xor i1 %tmp.1.cast, %tmp.10.cast, !dbg !125 ; [#uses=1 type=i1] [debug line = 11:2@21:39@27:11@47:9]
  %tmp.1.i.i.i = and i1 %tmp.i.i.i, %state.load.cast, !dbg !125 ; [#uses=1 type=i1] [debug line = 11:2@21:39@27:11@47:9]
  %tmp.2.i.i.i = and i1 %tmp.1.cast, %tmp.10.cast, !dbg !125 ; [#uses=1 type=i1] [debug line = 11:2@21:39@27:11@47:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !127), !dbg !129 ; [debug line = 14:32@21:80@27:11@47:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y.assign.1}, i64 0, metadata !130), !dbg !131 ; [debug line = 14:48@21:80@27:11@47:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z.assign.1}, i64 0, metadata !132), !dbg !133 ; [debug line = 14:64@21:80@27:11@47:9] [debug variable = z]
  %tmp.i9.i.i = and i1 %state.load.7.cast, %tmp.8.cast, !dbg !134 ; [#uses=1 type=i1] [debug line = 16:2@21:80@27:11@47:9]
  %tmp.4.i.i.i = xor i1 %tmp.8.cast, true, !dbg !134 ; [#uses=1 type=i1] [debug line = 16:2@21:80@27:11@47:9]
  %tmp.5.i.i.i = and i1 %state.load.9.cast, %tmp.4.i.i.i, !dbg !134 ; [#uses=1 type=i1] [debug line = 16:2@21:80@27:11@47:9]
  %tmp8 = xor i1 %state.load.14.cast, %tmp.2.i.i.i, !dbg !128 ; [#uses=1 type=i1] [debug line = 21:80@27:11@47:9]
  %tmp7 = xor i1 %tmp8, %tmp.3.cast, !dbg !128    ; [#uses=1 type=i1] [debug line = 21:80@27:11@47:9]
  %tmp = xor i1 %tmp.i9.i.i, %tmp.5.i.i.i, !dbg !128 ; [#uses=1 type=i1] [debug line = 21:80@27:11@47:9]
  %tmp9 = xor i1 %tmp, %tmp.1.i.i.i, !dbg !128    ; [#uses=1 type=i1] [debug line = 21:80@27:11@47:9]
  %tmp..i.i = xor i1 %tmp9, %tmp7, !dbg !128      ; [#uses=1 type=i1] [debug line = 21:80@27:11@47:9]
  %state.addr.17 = getelementptr [293 x i8]* %state, i64 0, i64 244, !dbg !136 ; [#uses=1 type=i8*] [debug line = 28:39@47:9]
  %x.assign.2 = load i8* %state.addr.17, align 1, !dbg !136 ; [#uses=1 type=i8] [debug line = 28:39@47:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.2}, i64 0, metadata !137), !dbg !138 ; [debug line = 9:33@28:39@47:9] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y.assign.2}, i64 0, metadata !139), !dbg !140 ; [debug line = 9:49@28:39@47:9] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z.assign.2}, i64 0, metadata !141), !dbg !142 ; [debug line = 9:65@28:39@47:9] [debug variable = z]
  %tmp.i.i = xor i8 %z.assign.2, %y.assign.2, !dbg !143 ; [#uses=1 type=i8] [debug line = 11:2@28:39@47:9]
  %tmp.1.i.i = and i8 %tmp.i.i, %x.assign.2, !dbg !143 ; [#uses=1 type=i8] [debug line = 11:2@28:39@47:9]
  %tmp.2.i.i = and i8 %z.assign.2, %y.assign.2, !dbg !143 ; [#uses=1 type=i8] [debug line = 11:2@28:39@47:9]
  %tmp.1.i = and i1 %state.load.3.cast, %ca, !dbg !136 ; [#uses=1 type=i1] [debug line = 28:39@47:9]
  %tmp.2.i = and i1 %tmp..i.i, %cb, !dbg !136     ; [#uses=1 type=i1] [debug line = 28:39@47:9]
  br label %1, !dbg !144                          ; [debug line = 50:10]

; <label>:1                                       ; preds = %3, %0
  %j = phi i9 [ 0, %0 ], [ %j.1, %3 ]             ; [#uses=3 type=i9]
  %exitcond = icmp eq i9 %j, -220, !dbg !144      ; [#uses=1 type=i1] [debug line = 50:10]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 292, i64 292, i64 292) ; [#uses=0 type=i32]
  br i1 %exitcond, label %4, label %3, !dbg !144  ; [debug line = 50:10]

; <label>:3                                       ; preds = %1
  %j.1 = add i9 %j, 1, !dbg !146                  ; [#uses=2 type=i9] [debug line = 50:32]
  %tmp.6 = zext i9 %j.1 to i64, !dbg !146         ; [#uses=1 type=i64] [debug line = 50:32]
  %state.addr.14 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp.6, !dbg !146 ; [#uses=1 type=i8*] [debug line = 50:32]
  %state.load.13 = load i8* %state.addr.14, align 1, !dbg !146 ; [#uses=1 type=i8] [debug line = 50:32]
  %tmp.7 = zext i9 %j to i64, !dbg !146           ; [#uses=1 type=i64] [debug line = 50:32]
  %state.addr.15 = getelementptr [293 x i8]* %state, i64 0, i64 %tmp.7, !dbg !146 ; [#uses=1 type=i8*] [debug line = 50:32]
  store i8 %state.load.13, i8* %state.addr.15, align 1, !dbg !146 ; [debug line = 50:32]
  call void @llvm.dbg.value(metadata !{i9 %j.1}, i64 0, metadata !147), !dbg !149 ; [debug line = 50:27] [debug variable = j]
  br label %1, !dbg !149                          ; [debug line = 50:27]

; <label>:4                                       ; preds = %1
  %tmp10 = xor i8 %state.load.12, %tmp.5, !dbg !150 ; [#uses=1 type=i8] [debug line = 53:5]
  %tmp12 = xor i8 %tmp.2.i.i, %tmp.1.i.i, !dbg !150 ; [#uses=1 type=i8] [debug line = 53:5]
  %tmp11 = xor i8 %tmp12, %tmp10, !dbg !150       ; [#uses=1 type=i8] [debug line = 53:5]
  %tmp13 = xor i1 %tmp.1.i, %tmp.2.i, !dbg !150   ; [#uses=1 type=i1] [debug line = 53:5]
  %tmp15 = xor i1 %plaintextbit, true, !dbg !150  ; [#uses=1 type=i1] [debug line = 53:5]
  %tmp14 = xor i1 %tmp13, %tmp15, !dbg !150       ; [#uses=1 type=i1] [debug line = 53:5]
  %tmp14.cast = zext i1 %tmp14 to i8, !dbg !150   ; [#uses=1 type=i8] [debug line = 53:5]
  %tmp.4 = xor i8 %tmp14.cast, %tmp11, !dbg !150  ; [#uses=1 type=i8] [debug line = 53:5]
  %state.addr.13 = getelementptr [293 x i8]* %state, i64 0, i64 292, !dbg !150 ; [#uses=1 type=i8*] [debug line = 53:5]
  store i8 %tmp.4, i8* %state.addr.13, align 1, !dbg !150 ; [debug line = 53:5]
  ret void
}

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1/solution1/.autopilot/db/source.pragma.2.c", metadata !"c:/vivado_2014.4_hls_workspace", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !13, metadata !17, metadata !20, metadata !23}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"maj", metadata !"maj", metadata !"", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"soc_proj_hls_deneme_1/source.c", metadata !"c:/vivado_2014.4_hls_workspace", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ch", metadata !"ch", metadata !"", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 15} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KSG128", metadata !"KSG128", metadata !"", metadata !6, i32 19, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 20} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"FBK128", metadata !"FBK128", metadata !"", metadata !6, i32 24, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !16, metadata !16, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Encrypt_StateUpdate128_1bit", metadata !"Encrypt_StateUpdate128_1bit", metadata !"", metadata !6, i32 33, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16, metadata !9, metadata !16, metadata !16, metadata !9, metadata !9}
!23 = metadata !{i32 786478, i32 0, metadata !6, metadata !"acorn128_enc_onebyte", metadata !"acorn128_enc_onebyte", metadata !"", metadata !6, i32 59, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 61} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !16, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 7, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"state", metadata !31, metadata !"unsigned char", i32 0, i32 7}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 292, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 7, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"plaintextbyte", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, i32 0}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"ciphertextbyte", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 7, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"ksbyte", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 7, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"cabyte", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 7, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"cbbyte", metadata !37, metadata !"unsigned char", i32 0, i32 7}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"return", metadata !59, metadata !"int", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 1, i32 0}
!61 = metadata !{i32 786689, metadata !23, metadata !"state", null, i32 59, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2344, i64 8, i32 0, i32 0, metadata !9, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 292}      ; [ DW_TAG_subrange_type ]
!65 = metadata !{i32 59, i32 40, metadata !23, null}
!66 = metadata !{i32 786689, metadata !23, metadata !"plaintextbyte", metadata !6, i32 33554491, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 59, i32 66, metadata !23, null}
!68 = metadata !{i32 786689, metadata !23, metadata !"ciphertextbyte", metadata !6, i32 50331708, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 60, i32 22, metadata !23, null}
!70 = metadata !{i32 786689, metadata !23, metadata !"ksbyte", metadata !6, i32 67108924, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 60, i32 52, metadata !23, null}
!72 = metadata !{i32 786689, metadata !23, metadata !"cabyte", metadata !6, i32 83886140, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!73 = metadata !{i32 60, i32 74, metadata !23, null}
!74 = metadata !{i32 786689, metadata !23, metadata !"cbbyte", metadata !6, i32 100663356, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!75 = metadata !{i32 60, i32 96, metadata !23, null}
!76 = metadata !{i32 64, i32 1, metadata !77, null}
!77 = metadata !{i32 786443, metadata !23, i32 61, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 65, i32 1, metadata !77, null}
!79 = metadata !{i32 66, i32 1, metadata !77, null}
!80 = metadata !{i32 67, i32 1, metadata !77, null}
!81 = metadata !{i32 68, i32 1, metadata !77, null}
!82 = metadata !{i32 69, i32 1, metadata !77, null}
!83 = metadata !{i32 81, i32 2, metadata !84, null}
!84 = metadata !{i32 786443, metadata !85, i32 79, i32 5, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !77, i32 78, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 82, i32 9, metadata !84, null}
!87 = metadata !{i32 83, i32 9, metadata !84, null}
!88 = metadata !{i32 84, i32 9, metadata !84, null}
!89 = metadata !{i32 89, i32 5, metadata !77, null}
!90 = metadata !{i32 786689, metadata !20, metadata !"state", null, i32 33, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 33, i32 49, metadata !20, null}
!92 = metadata !{i32 786689, metadata !20, metadata !"plaintextbit", metadata !6, i32 33554465, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 33, i32 70, metadata !20, null}
!94 = metadata !{i32 786689, metadata !20, metadata !"ca", metadata !6, i32 83886113, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 33, i32 147, metadata !20, null}
!96 = metadata !{i32 786689, metadata !20, metadata !"cb", metadata !6, i32 100663329, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 33, i32 165, metadata !20, null}
!98 = metadata !{i32 39, i32 5, metadata !99, null}
!99 = metadata !{i32 786443, metadata !20, i32 34, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 40, i32 5, metadata !99, null}
!101 = metadata !{i32 41, i32 5, metadata !99, null}
!102 = metadata !{i32 42, i32 5, metadata !99, null}
!103 = metadata !{i32 43, i32 5, metadata !99, null}
!104 = metadata !{i32 44, i32 5, metadata !99, null}
!105 = metadata !{i32 786689, metadata !17, metadata !"state", null, i32 24, metadata !62, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 47, i32 9, metadata !99, null}
!107 = metadata !{i32 24, i32 37, metadata !17, metadata !106}
!108 = metadata !{i32 786689, metadata !17, metadata !"ca", metadata !6, i32 50331672, metadata !9, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 24, i32 77, metadata !17, metadata !106}
!110 = metadata !{i32 786689, metadata !17, metadata !"cb", metadata !6, i32 67108888, metadata !9, i32 0, metadata !106} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 24, i32 95, metadata !17, metadata !106}
!112 = metadata !{i32 786689, metadata !13, metadata !"state", null, i32 19, metadata !62, i32 0, metadata !113} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 27, i32 11, metadata !114, metadata !106}
!114 = metadata !{i32 786443, metadata !17, i32 25, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 19, i32 37, metadata !13, metadata !113}
!116 = metadata !{i32 21, i32 5, metadata !117, metadata !113}
!117 = metadata !{i32 786443, metadata !13, i32 20, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!118 = metadata !{i32 9, i32 33, metadata !5, metadata !119}
!119 = metadata !{i32 21, i32 39, metadata !117, metadata !113}
!120 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777225, metadata !9, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554441, metadata !9, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 9, i32 49, metadata !5, metadata !119}
!123 = metadata !{i32 786689, metadata !5, metadata !"z", metadata !6, i32 50331657, metadata !9, i32 0, metadata !119} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 9, i32 65, metadata !5, metadata !119}
!125 = metadata !{i32 11, i32 2, metadata !126, metadata !119}
!126 = metadata !{i32 786443, metadata !5, i32 10, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !6, i32 16777230, metadata !9, i32 0, metadata !128} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 21, i32 80, metadata !117, metadata !113}
!129 = metadata !{i32 14, i32 32, metadata !12, metadata !128}
!130 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !6, i32 33554446, metadata !9, i32 0, metadata !128} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 14, i32 48, metadata !12, metadata !128}
!132 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !6, i32 50331662, metadata !9, i32 0, metadata !128} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 14, i32 64, metadata !12, metadata !128}
!134 = metadata !{i32 16, i32 2, metadata !135, metadata !128}
!135 = metadata !{i32 786443, metadata !12, i32 15, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 28, i32 39, metadata !114, metadata !106}
!137 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777225, metadata !9, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 9, i32 33, metadata !5, metadata !136}
!139 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554441, metadata !9, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 9, i32 49, metadata !5, metadata !136}
!141 = metadata !{i32 786689, metadata !5, metadata !"z", metadata !6, i32 50331657, metadata !9, i32 0, metadata !136} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 9, i32 65, metadata !5, metadata !136}
!143 = metadata !{i32 11, i32 2, metadata !126, metadata !136}
!144 = metadata !{i32 50, i32 10, metadata !145, null}
!145 = metadata !{i32 786443, metadata !99, i32 50, i32 5, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 50, i32 32, metadata !145, null}
!147 = metadata !{i32 786688, metadata !99, metadata !"j", metadata !6, i32 35, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!149 = metadata !{i32 50, i32 27, metadata !145, null}
!150 = metadata !{i32 53, i32 5, metadata !99, null}
