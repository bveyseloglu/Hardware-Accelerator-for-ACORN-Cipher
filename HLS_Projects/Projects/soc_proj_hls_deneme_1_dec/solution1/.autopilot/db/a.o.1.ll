; ModuleID = 'C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1_dec/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [21 x i8] c"acorn128_dec_onebyte\00" ; [#uses=1 type=[21 x i8]*]

; [#uses=2]
define internal fastcc zeroext i8 @maj(i8 zeroext %x, i8 zeroext %y, i8 zeroext %z) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !27), !dbg !28 ; [debug line = 2:33] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !29), !dbg !30 ; [debug line = 2:49] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !31), !dbg !32 ; [debug line = 2:65] [debug variable = z]
  %tmp = xor i8 %z, %y, !dbg !33                  ; [#uses=1 type=i8] [debug line = 4:2]
  %tmp.1 = and i8 %tmp, %x, !dbg !33              ; [#uses=1 type=i8] [debug line = 4:2]
  %tmp.2 = and i8 %z, %y, !dbg !33                ; [#uses=1 type=i8] [debug line = 4:2]
  %tmp.3 = xor i8 %tmp.1, %tmp.2, !dbg !33        ; [#uses=1 type=i8] [debug line = 4:2]
  ret i8 %tmp.3, !dbg !33                         ; [debug line = 4:2]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc zeroext i8 @ch(i8 zeroext %x, i8 zeroext %y, i8 zeroext %z) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !35), !dbg !36 ; [debug line = 7:32] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !37), !dbg !38 ; [debug line = 7:48] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !39), !dbg !40 ; [debug line = 7:64] [debug variable = z]
  %tmp = and i8 %y, %x, !dbg !41                  ; [#uses=1 type=i8] [debug line = 9:2]
  %tmp.4 = xor i8 %x, 1, !dbg !41                 ; [#uses=1 type=i8] [debug line = 9:2]
  %tmp.5 = and i8 %z, %tmp.4, !dbg !41            ; [#uses=1 type=i8] [debug line = 9:2]
  %tmp.6 = xor i8 %tmp.5, %tmp, !dbg !41          ; [#uses=1 type=i8] [debug line = 9:2]
  ret i8 %tmp.6, !dbg !41                         ; [debug line = 9:2]
}

; [#uses=1]
define internal fastcc zeroext i8 @KSG128(i8* %state) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !43), !dbg !44 ; [debug line = 12:37] [debug variable = state]
  %state.addr = getelementptr inbounds i8* %state, i64 12, !dbg !45 ; [#uses=1 type=i8*] [debug line = 14:5]
  %state.load = load i8* %state.addr, align 1, !dbg !45 ; [#uses=2 type=i8] [debug line = 14:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr.1 = getelementptr inbounds i8* %state, i64 154, !dbg !45 ; [#uses=1 type=i8*] [debug line = 14:5]
  %state.load.1 = load i8* %state.addr.1, align 1, !dbg !45 ; [#uses=2 type=i8] [debug line = 14:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.1) nounwind
  %state.addr.2 = getelementptr inbounds i8* %state, i64 235, !dbg !47 ; [#uses=1 type=i8*] [debug line = 14:39]
  %state.load.2 = load i8* %state.addr.2, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 14:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.2) nounwind
  %state.addr.3 = getelementptr inbounds i8* %state, i64 61, !dbg !47 ; [#uses=1 type=i8*] [debug line = 14:39]
  %state.load.3 = load i8* %state.addr.3, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 14:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.3) nounwind
  %state.addr.4 = getelementptr inbounds i8* %state, i64 193, !dbg !47 ; [#uses=1 type=i8*] [debug line = 14:39]
  %state.load.4 = load i8* %state.addr.4, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 14:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.4) nounwind
  %tmp = call fastcc zeroext i8 @maj(i8 zeroext %state.load.2, i8 zeroext %state.load.3, i8 zeroext %state.load.4), !dbg !47 ; [#uses=1 type=i8] [debug line = 14:39]
  %state.addr.5 = getelementptr inbounds i8* %state, i64 230, !dbg !48 ; [#uses=1 type=i8*] [debug line = 14:80]
  %state.load.5 = load i8* %state.addr.5, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 14:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.5) nounwind
  %state.addr.6 = getelementptr inbounds i8* %state, i64 111, !dbg !48 ; [#uses=1 type=i8*] [debug line = 14:80]
  %state.load.6 = load i8* %state.addr.6, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 14:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.6) nounwind
  %state.addr.7 = getelementptr inbounds i8* %state, i64 66, !dbg !48 ; [#uses=1 type=i8*] [debug line = 14:80]
  %state.load.7 = load i8* %state.addr.7, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 14:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.7) nounwind
  %tmp.7 = call fastcc zeroext i8 @ch(i8 zeroext %state.load.5, i8 zeroext %state.load.6, i8 zeroext %state.load.7), !dbg !48 ; [#uses=1 type=i8] [debug line = 14:80]
  %tmp.8 = xor i8 %state.load.1, %state.load, !dbg !45 ; [#uses=1 type=i8] [debug line = 14:5]
  %tmp.9 = xor i8 %tmp.8, %tmp, !dbg !47          ; [#uses=1 type=i8] [debug line = 14:39]
  %tmp.10 = xor i8 %tmp.9, %tmp.7, !dbg !48       ; [#uses=1 type=i8] [debug line = 14:80]
  ret i8 %tmp.10, !dbg !48                        ; [debug line = 14:80]
}

; [#uses=1]
define internal fastcc zeroext i8 @FBK128(i8* %state, i8* %ks, i8 zeroext %ca, i8 zeroext %cb) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !49), !dbg !50 ; [debug line = 17:37] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8* %ks}, i64 0, metadata !51), !dbg !52 ; [debug line = 17:59] [debug variable = ks]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !53), !dbg !54 ; [debug line = 17:77] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !55), !dbg !56 ; [debug line = 17:95] [debug variable = cb]
  %tmp = call fastcc zeroext i8 @KSG128(i8* %state), !dbg !57 ; [#uses=1 type=i8] [debug line = 20:11]
  store i8 %tmp, i8* %ks, align 1, !dbg !57       ; [debug line = 20:11]
  %state.load = load i8* %state, align 1, !dbg !59 ; [#uses=2 type=i8] [debug line = 21:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr = getelementptr inbounds i8* %state, i64 107, !dbg !59 ; [#uses=1 type=i8*] [debug line = 21:5]
  %state.load.8 = load i8* %state.addr, align 1, !dbg !59 ; [#uses=2 type=i8] [debug line = 21:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.8) nounwind
  %state.addr.8 = getelementptr inbounds i8* %state, i64 244, !dbg !60 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.9 = load i8* %state.addr.8, align 1, !dbg !60 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.9) nounwind
  %state.addr.9 = getelementptr inbounds i8* %state, i64 23, !dbg !60 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.10 = load i8* %state.addr.9, align 1, !dbg !60 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.10) nounwind
  %state.addr.10 = getelementptr inbounds i8* %state, i64 160, !dbg !60 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.11 = load i8* %state.addr.10, align 1, !dbg !60 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  %tmp.11 = call fastcc zeroext i8 @maj(i8 zeroext %state.load.9, i8 zeroext %state.load.10, i8 zeroext %state.load.11), !dbg !60 ; [#uses=1 type=i8] [debug line = 21:39]
  %state.addr.11 = getelementptr inbounds i8* %state, i64 196, !dbg !60 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.12 = load i8* %state.addr.11, align 1, !dbg !60 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %tmp.12 = and i8 %state.load.12, %ca, !dbg !60  ; [#uses=1 type=i8] [debug line = 21:39]
  %ks.load = load i8* %ks, align 1, !dbg !60      ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.13 = and i8 %ks.load, %cb, !dbg !60        ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.14 = xor i8 %state.load, 1, !dbg !60       ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.15 = xor i8 %tmp.14, %state.load.8, !dbg !60 ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.16 = xor i8 %tmp.15, %tmp.11, !dbg !60     ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.17 = xor i8 %tmp.16, %tmp.12, !dbg !60     ; [#uses=1 type=i8] [debug line = 21:39]
  %f = xor i8 %tmp.17, %tmp.13, !dbg !60          ; [#uses=1 type=i8] [debug line = 21:39]
  call void @llvm.dbg.value(metadata !{i8 %f}, i64 0, metadata !61), !dbg !60 ; [debug line = 21:39] [debug variable = f]
  ret i8 %f, !dbg !62                             ; [debug line = 22:5]
}

; [#uses=1]
define internal fastcc void @Decrypt_StateUpdate128_1bit(i8* %state, i8* %plaintextbit, i8 zeroext %ciphertextbit, i8* %ks, i8 zeroext %ca, i8 zeroext %cb) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !63), !dbg !64 ; [debug line = 27:49] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8* %plaintextbit}, i64 0, metadata !65), !dbg !66 ; [debug line = 27:71] [debug variable = plaintextbit]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbit}, i64 0, metadata !67), !dbg !68 ; [debug line = 27:99] [debug variable = ciphertextbit]
  call void @llvm.dbg.value(metadata !{i8* %ks}, i64 0, metadata !69), !dbg !70 ; [debug line = 27:129] [debug variable = ks]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !71), !dbg !72 ; [debug line = 27:147] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !73), !dbg !74 ; [debug line = 27:165] [debug variable = cb]
  %state.addr = getelementptr inbounds i8* %state, i64 235, !dbg !75 ; [#uses=1 type=i8*] [debug line = 32:5]
  %state.load = load i8* %state.addr, align 1, !dbg !75 ; [#uses=2 type=i8] [debug line = 32:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr.12 = getelementptr inbounds i8* %state, i64 230, !dbg !75 ; [#uses=2 type=i8*] [debug line = 32:5]
  %state.load.13 = load i8* %state.addr.12, align 1, !dbg !75 ; [#uses=4 type=i8] [debug line = 32:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.13) nounwind
  %state.addr.13 = getelementptr inbounds i8* %state, i64 289, !dbg !75 ; [#uses=2 type=i8*] [debug line = 32:5]
  %state.load.14 = load i8* %state.addr.13, align 1, !dbg !75 ; [#uses=2 type=i8] [debug line = 32:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.14) nounwind
  %tmp = xor i8 %state.load.13, %state.load, !dbg !75 ; [#uses=1 type=i8] [debug line = 32:5]
  %tmp.19 = xor i8 %tmp, %state.load.14, !dbg !75 ; [#uses=1 type=i8] [debug line = 32:5]
  store i8 %tmp.19, i8* %state.addr.13, align 1, !dbg !75 ; [debug line = 32:5]
  %state.addr.14 = getelementptr inbounds i8* %state, i64 196, !dbg !77 ; [#uses=1 type=i8*] [debug line = 33:5]
  %state.load.15 = load i8* %state.addr.14, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 33:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.15) nounwind
  %state.addr.15 = getelementptr inbounds i8* %state, i64 193, !dbg !77 ; [#uses=2 type=i8*] [debug line = 33:5]
  %state.load.16 = load i8* %state.addr.15, align 1, !dbg !77 ; [#uses=4 type=i8] [debug line = 33:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.16) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.13) nounwind
  %tmp.20 = xor i8 %state.load.15, %state.load.13, !dbg !77 ; [#uses=1 type=i8] [debug line = 33:5]
  %tmp.21 = xor i8 %tmp.20, %state.load.16, !dbg !77 ; [#uses=1 type=i8] [debug line = 33:5]
  store i8 %tmp.21, i8* %state.addr.12, align 1, !dbg !77 ; [debug line = 33:5]
  %state.addr.16 = getelementptr inbounds i8* %state, i64 160, !dbg !78 ; [#uses=1 type=i8*] [debug line = 34:5]
  %state.load.17 = load i8* %state.addr.16, align 1, !dbg !78 ; [#uses=2 type=i8] [debug line = 34:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.17) nounwind
  %state.addr.17 = getelementptr inbounds i8* %state, i64 154, !dbg !78 ; [#uses=2 type=i8*] [debug line = 34:5]
  %state.load.18 = load i8* %state.addr.17, align 1, !dbg !78 ; [#uses=4 type=i8] [debug line = 34:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.18) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.16) nounwind
  %tmp.22 = xor i8 %state.load.17, %state.load.16, !dbg !78 ; [#uses=1 type=i8] [debug line = 34:5]
  %tmp.23 = xor i8 %tmp.22, %state.load.18, !dbg !78 ; [#uses=1 type=i8] [debug line = 34:5]
  store i8 %tmp.23, i8* %state.addr.15, align 1, !dbg !78 ; [debug line = 34:5]
  %state.addr.18 = getelementptr inbounds i8* %state, i64 111, !dbg !79 ; [#uses=1 type=i8*] [debug line = 35:5]
  %state.load.19 = load i8* %state.addr.18, align 1, !dbg !79 ; [#uses=2 type=i8] [debug line = 35:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.19) nounwind
  %state.addr.19 = getelementptr inbounds i8* %state, i64 107, !dbg !79 ; [#uses=2 type=i8*] [debug line = 35:5]
  %state.load.20 = load i8* %state.addr.19, align 1, !dbg !79 ; [#uses=4 type=i8] [debug line = 35:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.20) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.18) nounwind
  %tmp.24 = xor i8 %state.load.19, %state.load.18, !dbg !79 ; [#uses=1 type=i8] [debug line = 35:5]
  %tmp.25 = xor i8 %tmp.24, %state.load.20, !dbg !79 ; [#uses=1 type=i8] [debug line = 35:5]
  store i8 %tmp.25, i8* %state.addr.17, align 1, !dbg !79 ; [debug line = 35:5]
  %state.addr.20 = getelementptr inbounds i8* %state, i64 66, !dbg !80 ; [#uses=1 type=i8*] [debug line = 36:5]
  %state.load.21 = load i8* %state.addr.20, align 1, !dbg !80 ; [#uses=2 type=i8] [debug line = 36:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.21) nounwind
  %state.addr.21 = getelementptr inbounds i8* %state, i64 61, !dbg !80 ; [#uses=2 type=i8*] [debug line = 36:5]
  %state.load.22 = load i8* %state.addr.21, align 1, !dbg !80 ; [#uses=4 type=i8] [debug line = 36:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.22) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.20) nounwind
  %tmp.26 = xor i8 %state.load.21, %state.load.20, !dbg !80 ; [#uses=1 type=i8] [debug line = 36:5]
  %tmp.27 = xor i8 %tmp.26, %state.load.22, !dbg !80 ; [#uses=1 type=i8] [debug line = 36:5]
  store i8 %tmp.27, i8* %state.addr.19, align 1, !dbg !80 ; [debug line = 36:5]
  %state.addr.22 = getelementptr inbounds i8* %state, i64 23, !dbg !81 ; [#uses=1 type=i8*] [debug line = 37:5]
  %state.load.23 = load i8* %state.addr.22, align 1, !dbg !81 ; [#uses=2 type=i8] [debug line = 37:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.23) nounwind
  %state.load.24 = load i8* %state, align 1, !dbg !81 ; [#uses=2 type=i8] [debug line = 37:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.24) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.22) nounwind
  %tmp.28 = xor i8 %state.load.23, %state.load.22, !dbg !81 ; [#uses=1 type=i8] [debug line = 37:5]
  %tmp.29 = xor i8 %tmp.28, %state.load.24, !dbg !81 ; [#uses=1 type=i8] [debug line = 37:5]
  store i8 %tmp.29, i8* %state.addr.21, align 1, !dbg !81 ; [debug line = 37:5]
  %f = call fastcc zeroext i8 @FBK128(i8* %state, i8* %ks, i8 zeroext %ca, i8 zeroext %cb), !dbg !82 ; [#uses=1 type=i8] [debug line = 39:9]
  call void @llvm.dbg.value(metadata !{i8 %f}, i64 0, metadata !83), !dbg !82 ; [debug line = 39:9] [debug variable = f]
  br label %1, !dbg !84                           ; [debug line = 41:10]

; <label>:1                                       ; preds = %2, %0
  %j = phi i32 [ 0, %0 ], [ %j.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 292, !dbg !84       ; [#uses=1 type=i1] [debug line = 41:10]
  br i1 %exitcond, label %3, label %2, !dbg !84   ; [debug line = 41:10]

; <label>:2                                       ; preds = %1
  %j.1 = add i32 %j, 1, !dbg !86                  ; [#uses=2 type=i32] [debug line = 41:32]
  %tmp.33 = zext i32 %j.1 to i64, !dbg !86        ; [#uses=1 type=i64] [debug line = 41:32]
  %state.addr.24 = getelementptr inbounds i8* %state, i64 %tmp.33, !dbg !86 ; [#uses=1 type=i8*] [debug line = 41:32]
  %state.load.25 = load i8* %state.addr.24, align 1, !dbg !86 ; [#uses=2 type=i8] [debug line = 41:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.25) nounwind
  %tmp.34 = zext i32 %j to i64, !dbg !86          ; [#uses=1 type=i64] [debug line = 41:32]
  %state.addr.25 = getelementptr inbounds i8* %state, i64 %tmp.34, !dbg !86 ; [#uses=1 type=i8*] [debug line = 41:32]
  store i8 %state.load.25, i8* %state.addr.25, align 1, !dbg !86 ; [debug line = 41:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !87), !dbg !89 ; [debug line = 41:27] [debug variable = j]
  br label %1, !dbg !89                           ; [debug line = 41:27]

; <label>:3                                       ; preds = %1
  %ks.load = load i8* %ks, align 1, !dbg !90      ; [#uses=1 type=i8] [debug line = 42:5]
  %tmp.30 = xor i8 %ks.load, %ciphertextbit, !dbg !90 ; [#uses=2 type=i8] [debug line = 42:5]
  store i8 %tmp.30, i8* %plaintextbit, align 1, !dbg !90 ; [debug line = 42:5]
  %tmp.31 = xor i8 %tmp.30, %f, !dbg !91          ; [#uses=1 type=i8] [debug line = 43:5]
  %state.addr.23 = getelementptr inbounds i8* %state, i64 292, !dbg !91 ; [#uses=1 type=i8*] [debug line = 43:5]
  store i8 %tmp.31, i8* %state.addr.23, align 1, !dbg !91 ; [debug line = 43:5]
  ret void, !dbg !92                              ; [debug line = 44:1]
}

; [#uses=0]
define i32 @acorn128_dec_onebyte(i8* %state, i8 zeroext %plaintextbyte, i8 zeroext %ciphertextbyte, i8 zeroext %ksbyte, i8 zeroext %cabyte, i8 zeroext %cbbyte) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !93
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %plaintextbit = alloca i8, align 1              ; [#uses=1 type=i8*]
  %ks = alloca i8, align 1                        ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !99), !dbg !100 ; [debug line = 48:40] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbyte}, i64 0, metadata !101), !dbg !102 ; [debug line = 48:66] [debug variable = plaintextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbyte}, i64 0, metadata !103), !dbg !104 ; [debug line = 49:22] [debug variable = ciphertextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ksbyte}, i64 0, metadata !105), !dbg !106 ; [debug line = 49:52] [debug variable = ksbyte]
  call void @llvm.dbg.value(metadata !{i8 %cabyte}, i64 0, metadata !107), !dbg !108 ; [debug line = 49:74] [debug variable = cabyte]
  call void @llvm.dbg.value(metadata !{i8 %cbbyte}, i64 0, metadata !109), !dbg !110 ; [debug line = 49:96] [debug variable = cbbyte]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %state, i32 293), !dbg !111 ; [debug line = 50:2]
  call void (...)* @_ssdm_op_SpecInterface(i8* %state, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !113 ; [debug line = 52:1]
  %tmp = zext i8 %plaintextbyte to i32, !dbg !114 ; [#uses=1 type=i32] [debug line = 53:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !114 ; [debug line = 53:1]
  %tmp.35 = zext i8 %ciphertextbyte to i32, !dbg !115 ; [#uses=2 type=i32] [debug line = 54:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.35, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !115 ; [debug line = 54:1]
  %tmp.36 = zext i8 %ksbyte to i32, !dbg !116     ; [#uses=1 type=i32] [debug line = 55:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.36, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !116 ; [debug line = 55:1]
  %tmp.37 = zext i8 %cabyte to i32, !dbg !117     ; [#uses=2 type=i32] [debug line = 56:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.37, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !117 ; [debug line = 56:1]
  %tmp.38 = zext i8 %cbbyte to i32, !dbg !118     ; [#uses=2 type=i32] [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.38, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !118 ; [debug line = 57:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !119 ; [debug line = 58:1]
  call void @llvm.dbg.declare(metadata !{i8* %plaintextbit}, metadata !120), !dbg !121 ; [debug line = 61:19] [debug variable = plaintextbit]
  call void @llvm.dbg.declare(metadata !{i8* %ks}, metadata !122), !dbg !123 ; [debug line = 61:47] [debug variable = ks]
  br label %1, !dbg !124                          ; [debug line = 64:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.1, %2 ]             ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, 8, !dbg !124         ; [#uses=1 type=i1] [debug line = 64:10]
  br i1 %exitcond, label %3, label %2, !dbg !124  ; [debug line = 64:10]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !126 ; [#uses=1 type=i32] [debug line = 65:6]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !128 ; [debug line = 66:1]
  %tmp.39 = zext i8 %i to i32, !dbg !129          ; [#uses=3 type=i32] [debug line = 67:2]
  %tmp.40 = lshr i32 %tmp.37, %tmp.39, !dbg !129  ; [#uses=1 type=i32] [debug line = 67:2]
  %tmp.41 = trunc i32 %tmp.40 to i8, !dbg !129    ; [#uses=1 type=i8] [debug line = 67:2]
  %ca = and i8 %tmp.41, 1, !dbg !129              ; [#uses=1 type=i8] [debug line = 67:2]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !130), !dbg !129 ; [debug line = 67:2] [debug variable = ca]
  %tmp.42 = lshr i32 %tmp.38, %tmp.39, !dbg !131  ; [#uses=1 type=i32] [debug line = 68:9]
  %tmp.43 = trunc i32 %tmp.42 to i8, !dbg !131    ; [#uses=1 type=i8] [debug line = 68:9]
  %cb = and i8 %tmp.43, 1, !dbg !131              ; [#uses=1 type=i8] [debug line = 68:9]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !132), !dbg !131 ; [debug line = 68:9] [debug variable = cb]
  %tmp.44 = lshr i32 %tmp.35, %tmp.39, !dbg !133  ; [#uses=1 type=i32] [debug line = 69:9]
  %tmp.45 = trunc i32 %tmp.44 to i8, !dbg !133    ; [#uses=1 type=i8] [debug line = 69:9]
  %ciphertextbit = and i8 %tmp.45, 1, !dbg !133   ; [#uses=1 type=i8] [debug line = 69:9]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbit}, i64 0, metadata !134), !dbg !133 ; [debug line = 69:9] [debug variable = ciphertextbit]
  call fastcc void @Decrypt_StateUpdate128_1bit(i8* %state, i8* %plaintextbit, i8 zeroext %ciphertextbit, i8* %ks, i8 zeroext %ca, i8 zeroext %cb), !dbg !135 ; [debug line = 70:9]
  call void @llvm.dbg.value(metadata !{i8* %plaintextbit}, i64 0, metadata !120), !dbg !136 ; [debug line = 71:9] [debug variable = plaintextbit]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !137 ; [#uses=0 type=i32] [debug line = 72:5]
  %i.1 = add i8 %i, 1, !dbg !138                  ; [#uses=1 type=i8] [debug line = 64:24]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !139), !dbg !138 ; [debug line = 64:24] [debug variable = i]
  br label %1, !dbg !138                          ; [debug line = 64:24]

; <label>:3                                       ; preds = %1
  ret i32 0, !dbg !140                            ; [debug line = 74:5]
}

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=31]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=33]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1_dec/solution1/.autopilot/db/source_dec.pragma.2.c", metadata !"c:/vivado_2014.4_hls_workspace", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !13, metadata !17, metadata !20, metadata !23}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"maj", metadata !"maj", metadata !"", metadata !6, i32 2, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @maj, null, null, metadata !10, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"soc_proj_hls_deneme_1_dec/source_dec.c", metadata !"c:/vivado_2014.4_hls_workspace", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ch", metadata !"ch", metadata !"", metadata !6, i32 7, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @ch, null, null, metadata !10, i32 8} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KSG128", metadata !"KSG128", metadata !"", metadata !6, i32 12, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8*)* @KSG128, null, null, metadata !10, i32 13} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"FBK128", metadata !"FBK128", metadata !"", metadata !6, i32 17, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8*, i8*, i8, i8)* @FBK128, null, null, metadata !10, i32 18} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !16, metadata !16, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Decrypt_StateUpdate128_1bit", metadata !"Decrypt_StateUpdate128_1bit", metadata !"", metadata !6, i32 27, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8, i8*, i8, i8)* @Decrypt_StateUpdate128_1bit, null, null, metadata !10, i32 28} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16, metadata !16, metadata !9, metadata !16, metadata !9, metadata !9}
!23 = metadata !{i32 786478, i32 0, metadata !6, metadata !"acorn128_dec_onebyte", metadata !"acorn128_dec_onebyte", metadata !"", metadata !6, i32 48, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8, i8, i8, i8, i8)* @acorn128_dec_onebyte, null, null, metadata !10, i32 50} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !16, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777218, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 2, i32 33, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554434, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 2, i32 49, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"z", metadata !6, i32 50331650, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 2, i32 65, metadata !5, null}
!33 = metadata !{i32 4, i32 2, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 3, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !6, i32 16777223, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 7, i32 32, metadata !12, null}
!37 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !6, i32 33554439, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 7, i32 48, metadata !12, null}
!39 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !6, i32 50331655, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 7, i32 64, metadata !12, null}
!41 = metadata !{i32 9, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !12, i32 8, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786689, metadata !13, metadata !"state", metadata !6, i32 16777228, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 12, i32 37, metadata !13, null}
!45 = metadata !{i32 14, i32 5, metadata !46, null}
!46 = metadata !{i32 786443, metadata !13, i32 13, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 14, i32 39, metadata !46, null}
!48 = metadata !{i32 14, i32 80, metadata !46, null}
!49 = metadata !{i32 786689, metadata !17, metadata !"state", metadata !6, i32 16777233, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 17, i32 37, metadata !17, null}
!51 = metadata !{i32 786689, metadata !17, metadata !"ks", metadata !6, i32 33554449, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 17, i32 59, metadata !17, null}
!53 = metadata !{i32 786689, metadata !17, metadata !"ca", metadata !6, i32 50331665, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 17, i32 77, metadata !17, null}
!55 = metadata !{i32 786689, metadata !17, metadata !"cb", metadata !6, i32 67108881, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 17, i32 95, metadata !17, null}
!57 = metadata !{i32 20, i32 11, metadata !58, null}
!58 = metadata !{i32 786443, metadata !17, i32 18, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 21, i32 5, metadata !58, null}
!60 = metadata !{i32 21, i32 39, metadata !58, null}
!61 = metadata !{i32 786688, metadata !58, metadata !"f", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 22, i32 5, metadata !58, null}
!63 = metadata !{i32 786689, metadata !20, metadata !"state", metadata !6, i32 16777243, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 27, i32 49, metadata !20, null}
!65 = metadata !{i32 786689, metadata !20, metadata !"plaintextbit", metadata !6, i32 33554459, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 27, i32 71, metadata !20, null}
!67 = metadata !{i32 786689, metadata !20, metadata !"ciphertextbit", metadata !6, i32 50331675, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 27, i32 99, metadata !20, null}
!69 = metadata !{i32 786689, metadata !20, metadata !"ks", metadata !6, i32 67108891, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 27, i32 129, metadata !20, null}
!71 = metadata !{i32 786689, metadata !20, metadata !"ca", metadata !6, i32 83886107, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 27, i32 147, metadata !20, null}
!73 = metadata !{i32 786689, metadata !20, metadata !"cb", metadata !6, i32 100663323, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 27, i32 165, metadata !20, null}
!75 = metadata !{i32 32, i32 5, metadata !76, null}
!76 = metadata !{i32 786443, metadata !20, i32 28, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 33, i32 5, metadata !76, null}
!78 = metadata !{i32 34, i32 5, metadata !76, null}
!79 = metadata !{i32 35, i32 5, metadata !76, null}
!80 = metadata !{i32 36, i32 5, metadata !76, null}
!81 = metadata !{i32 37, i32 5, metadata !76, null}
!82 = metadata !{i32 39, i32 9, metadata !76, null}
!83 = metadata !{i32 786688, metadata !76, metadata !"f", metadata !6, i32 30, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 41, i32 10, metadata !85, null}
!85 = metadata !{i32 786443, metadata !76, i32 41, i32 5, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 41, i32 32, metadata !85, null}
!87 = metadata !{i32 786688, metadata !76, metadata !"j", metadata !6, i32 29, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!89 = metadata !{i32 41, i32 27, metadata !85, null}
!90 = metadata !{i32 42, i32 5, metadata !76, null}
!91 = metadata !{i32 43, i32 5, metadata !76, null}
!92 = metadata !{i32 44, i32 1, metadata !76, null}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"return", metadata !97, metadata !"int", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 1, i32 0}
!99 = metadata !{i32 786689, metadata !23, metadata !"state", metadata !6, i32 16777264, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 48, i32 40, metadata !23, null}
!101 = metadata !{i32 786689, metadata !23, metadata !"plaintextbyte", metadata !6, i32 33554480, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 48, i32 66, metadata !23, null}
!103 = metadata !{i32 786689, metadata !23, metadata !"ciphertextbyte", metadata !6, i32 50331697, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 49, i32 22, metadata !23, null}
!105 = metadata !{i32 786689, metadata !23, metadata !"ksbyte", metadata !6, i32 67108913, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 49, i32 52, metadata !23, null}
!107 = metadata !{i32 786689, metadata !23, metadata !"cabyte", metadata !6, i32 83886129, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 49, i32 74, metadata !23, null}
!109 = metadata !{i32 786689, metadata !23, metadata !"cbbyte", metadata !6, i32 100663345, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 49, i32 96, metadata !23, null}
!111 = metadata !{i32 50, i32 2, metadata !112, null}
!112 = metadata !{i32 786443, metadata !23, i32 50, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 52, i32 1, metadata !112, null}
!114 = metadata !{i32 53, i32 1, metadata !112, null}
!115 = metadata !{i32 54, i32 1, metadata !112, null}
!116 = metadata !{i32 55, i32 1, metadata !112, null}
!117 = metadata !{i32 56, i32 1, metadata !112, null}
!118 = metadata !{i32 57, i32 1, metadata !112, null}
!119 = metadata !{i32 58, i32 1, metadata !112, null}
!120 = metadata !{i32 786688, metadata !112, metadata !"plaintextbit", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 61, i32 19, metadata !112, null}
!122 = metadata !{i32 786688, metadata !112, metadata !"ks", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 61, i32 47, metadata !112, null}
!124 = metadata !{i32 64, i32 10, metadata !125, null}
!125 = metadata !{i32 786443, metadata !112, i32 64, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 65, i32 6, metadata !127, null}
!127 = metadata !{i32 786443, metadata !125, i32 65, i32 5, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 66, i32 1, metadata !127, null}
!129 = metadata !{i32 67, i32 2, metadata !127, null}
!130 = metadata !{i32 786688, metadata !112, metadata !"ca", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 68, i32 9, metadata !127, null}
!132 = metadata !{i32 786688, metadata !112, metadata !"cb", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 69, i32 9, metadata !127, null}
!134 = metadata !{i32 786688, metadata !112, metadata !"ciphertextbit", metadata !6, i32 61, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 70, i32 9, metadata !127, null}
!136 = metadata !{i32 71, i32 9, metadata !127, null}
!137 = metadata !{i32 72, i32 5, metadata !127, null}
!138 = metadata !{i32 64, i32 24, metadata !125, null}
!139 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 60, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!140 = metadata !{i32 74, i32 5, metadata !112, null}
