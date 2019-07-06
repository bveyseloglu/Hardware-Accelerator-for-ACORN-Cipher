; ModuleID = 'C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@str = internal constant [21 x i8] c"acorn128_enc_onebyte\00" ; [#uses=1 type=[21 x i8]*]
@kstem.constprop = internal global i8 0           ; [#uses=3 type=i8*]
@kstem.constprop1 = internal global i8 0          ; [#uses=0 type=i8*]
@kstem.constprop2 = internal global i8 0          ; [#uses=0 type=i8*]

; [#uses=2]
define internal fastcc zeroext i8 @maj(i8 zeroext %x, i8 zeroext %y, i8 zeroext %z) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !27), !dbg !28 ; [debug line = 9:33] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !29), !dbg !30 ; [debug line = 9:49] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !31), !dbg !32 ; [debug line = 9:65] [debug variable = z]
  %tmp = xor i8 %z, %y, !dbg !33                  ; [#uses=1 type=i8] [debug line = 11:2]
  %tmp.1 = and i8 %tmp, %x, !dbg !33              ; [#uses=1 type=i8] [debug line = 11:2]
  %tmp.2 = and i8 %z, %y, !dbg !33                ; [#uses=1 type=i8] [debug line = 11:2]
  %tmp.3 = xor i8 %tmp.1, %tmp.2, !dbg !33        ; [#uses=1 type=i8] [debug line = 11:2]
  ret i8 %tmp.3, !dbg !33                         ; [debug line = 11:2]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc zeroext i8 @ch(i8 zeroext %x, i8 zeroext %y, i8 zeroext %z) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !35), !dbg !36 ; [debug line = 14:32] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i8 %y}, i64 0, metadata !37), !dbg !38 ; [debug line = 14:48] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i8 %z}, i64 0, metadata !39), !dbg !40 ; [debug line = 14:64] [debug variable = z]
  %tmp = and i8 %y, %x, !dbg !41                  ; [#uses=1 type=i8] [debug line = 16:2]
  %tmp.4 = xor i8 %x, 1, !dbg !41                 ; [#uses=1 type=i8] [debug line = 16:2]
  %tmp.5 = and i8 %z, %tmp.4, !dbg !41            ; [#uses=1 type=i8] [debug line = 16:2]
  %tmp.6 = xor i8 %tmp.5, %tmp, !dbg !41          ; [#uses=1 type=i8] [debug line = 16:2]
  ret i8 %tmp.6, !dbg !41                         ; [debug line = 16:2]
}

; [#uses=1]
define internal fastcc zeroext i8 @KSG128(i8* %state) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !43), !dbg !44 ; [debug line = 19:37] [debug variable = state]
  %state.addr = getelementptr inbounds i8* %state, i64 12, !dbg !45 ; [#uses=1 type=i8*] [debug line = 21:5]
  %state.load = load i8* %state.addr, align 1, !dbg !45 ; [#uses=2 type=i8] [debug line = 21:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr.1 = getelementptr inbounds i8* %state, i64 154, !dbg !45 ; [#uses=1 type=i8*] [debug line = 21:5]
  %state.load.1 = load i8* %state.addr.1, align 1, !dbg !45 ; [#uses=2 type=i8] [debug line = 21:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.1) nounwind
  %state.addr.2 = getelementptr inbounds i8* %state, i64 235, !dbg !47 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.2 = load i8* %state.addr.2, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.2) nounwind
  %state.addr.3 = getelementptr inbounds i8* %state, i64 61, !dbg !47 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.3 = load i8* %state.addr.3, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.3) nounwind
  %state.addr.4 = getelementptr inbounds i8* %state, i64 193, !dbg !47 ; [#uses=1 type=i8*] [debug line = 21:39]
  %state.load.4 = load i8* %state.addr.4, align 1, !dbg !47 ; [#uses=2 type=i8] [debug line = 21:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.4) nounwind
  %tmp = call fastcc zeroext i8 @maj(i8 zeroext %state.load.2, i8 zeroext %state.load.3, i8 zeroext %state.load.4), !dbg !47 ; [#uses=1 type=i8] [debug line = 21:39]
  %state.addr.5 = getelementptr inbounds i8* %state, i64 230, !dbg !48 ; [#uses=1 type=i8*] [debug line = 21:80]
  %state.load.5 = load i8* %state.addr.5, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 21:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.5) nounwind
  %state.addr.6 = getelementptr inbounds i8* %state, i64 111, !dbg !48 ; [#uses=1 type=i8*] [debug line = 21:80]
  %state.load.6 = load i8* %state.addr.6, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 21:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.6) nounwind
  %state.addr.7 = getelementptr inbounds i8* %state, i64 66, !dbg !48 ; [#uses=1 type=i8*] [debug line = 21:80]
  %state.load.7 = load i8* %state.addr.7, align 1, !dbg !48 ; [#uses=2 type=i8] [debug line = 21:80]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.7) nounwind
  %tmp.7 = call fastcc zeroext i8 @ch(i8 zeroext %state.load.5, i8 zeroext %state.load.6, i8 zeroext %state.load.7), !dbg !48 ; [#uses=1 type=i8] [debug line = 21:80]
  %tmp.8 = xor i8 %state.load.1, %state.load, !dbg !45 ; [#uses=1 type=i8] [debug line = 21:5]
  %tmp.9 = xor i8 %tmp.8, %tmp, !dbg !47          ; [#uses=1 type=i8] [debug line = 21:39]
  %tmp.10 = xor i8 %tmp.9, %tmp.7, !dbg !48       ; [#uses=1 type=i8] [debug line = 21:80]
  ret i8 %tmp.10, !dbg !48                        ; [debug line = 21:80]
}

; [#uses=1]
define internal fastcc zeroext i8 @FBK128(i8* %state, i8 zeroext %ca, i8 zeroext %cb) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !49), !dbg !50 ; [debug line = 24:37] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !51), !dbg !52 ; [debug line = 24:77] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !53), !dbg !54 ; [debug line = 24:95] [debug variable = cb]
  %tmp = call fastcc zeroext i8 @KSG128(i8* %state), !dbg !55 ; [#uses=1 type=i8] [debug line = 27:11]
  store i8 %tmp, i8* @kstem.constprop, align 1, !dbg !55 ; [debug line = 27:11]
  %state.load = load i8* %state, align 1, !dbg !57 ; [#uses=2 type=i8] [debug line = 28:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr = getelementptr inbounds i8* %state, i64 107, !dbg !57 ; [#uses=1 type=i8*] [debug line = 28:5]
  %state.load.8 = load i8* %state.addr, align 1, !dbg !57 ; [#uses=2 type=i8] [debug line = 28:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.8) nounwind
  %state.addr.8 = getelementptr inbounds i8* %state, i64 244, !dbg !58 ; [#uses=1 type=i8*] [debug line = 28:39]
  %state.load.9 = load i8* %state.addr.8, align 1, !dbg !58 ; [#uses=2 type=i8] [debug line = 28:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.9) nounwind
  %state.addr.9 = getelementptr inbounds i8* %state, i64 23, !dbg !58 ; [#uses=1 type=i8*] [debug line = 28:39]
  %state.load.10 = load i8* %state.addr.9, align 1, !dbg !58 ; [#uses=2 type=i8] [debug line = 28:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.10) nounwind
  %state.addr.10 = getelementptr inbounds i8* %state, i64 160, !dbg !58 ; [#uses=1 type=i8*] [debug line = 28:39]
  %state.load.11 = load i8* %state.addr.10, align 1, !dbg !58 ; [#uses=2 type=i8] [debug line = 28:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.11) nounwind
  %tmp.11 = call fastcc zeroext i8 @maj(i8 zeroext %state.load.9, i8 zeroext %state.load.10, i8 zeroext %state.load.11), !dbg !58 ; [#uses=1 type=i8] [debug line = 28:39]
  %state.addr.11 = getelementptr inbounds i8* %state, i64 196, !dbg !58 ; [#uses=1 type=i8*] [debug line = 28:39]
  %state.load.12 = load i8* %state.addr.11, align 1, !dbg !58 ; [#uses=2 type=i8] [debug line = 28:39]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.12) nounwind
  %tmp.12 = and i8 %state.load.12, %ca, !dbg !58  ; [#uses=1 type=i8] [debug line = 28:39]
  %kstem.constprop.load = load i8* @kstem.constprop, align 1, !dbg !58 ; [#uses=1 type=i8] [debug line = 28:39]
  %tmp.13 = and i8 %kstem.constprop.load, %cb, !dbg !58 ; [#uses=1 type=i8] [debug line = 28:39]
  %tmp.14 = xor i8 %state.load, 1, !dbg !58       ; [#uses=1 type=i8] [debug line = 28:39]
  %tmp.15 = xor i8 %tmp.14, %state.load.8, !dbg !58 ; [#uses=1 type=i8] [debug line = 28:39]
  %tmp.16 = xor i8 %tmp.15, %tmp.11, !dbg !58     ; [#uses=1 type=i8] [debug line = 28:39]
  %tmp.17 = xor i8 %tmp.16, %tmp.12, !dbg !58     ; [#uses=1 type=i8] [debug line = 28:39]
  %f = xor i8 %tmp.17, %tmp.13, !dbg !58          ; [#uses=1 type=i8] [debug line = 28:39]
  call void @llvm.dbg.value(metadata !{i8 %f}, i64 0, metadata !59), !dbg !58 ; [debug line = 28:39] [debug variable = f]
  ret i8 %f, !dbg !60                             ; [debug line = 29:5]
}

; [#uses=1]
define internal fastcc void @Encrypt_StateUpdate128_1bit(i8* %state, i8 zeroext %plaintextbit, i8* %ciphertextbit, i8 zeroext %ca, i8 zeroext %cb) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !61), !dbg !62 ; [debug line = 33:49] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbit}, i64 0, metadata !63), !dbg !64 ; [debug line = 33:70] [debug variable = plaintextbit]
  call void @llvm.dbg.value(metadata !{i8* %ciphertextbit}, i64 0, metadata !65), !dbg !66 ; [debug line = 33:99] [debug variable = ciphertextbit]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !67), !dbg !68 ; [debug line = 33:147] [debug variable = ca]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !69), !dbg !70 ; [debug line = 33:165] [debug variable = cb]
  %state.addr = getelementptr inbounds i8* %state, i64 235, !dbg !71 ; [#uses=1 type=i8*] [debug line = 39:5]
  %state.load = load i8* %state.addr, align 1, !dbg !71 ; [#uses=2 type=i8] [debug line = 39:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load) nounwind
  %state.addr.12 = getelementptr inbounds i8* %state, i64 230, !dbg !71 ; [#uses=2 type=i8*] [debug line = 39:5]
  %state.load.13 = load i8* %state.addr.12, align 1, !dbg !71 ; [#uses=4 type=i8] [debug line = 39:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.13) nounwind
  %state.addr.13 = getelementptr inbounds i8* %state, i64 289, !dbg !71 ; [#uses=2 type=i8*] [debug line = 39:5]
  %state.load.14 = load i8* %state.addr.13, align 1, !dbg !71 ; [#uses=2 type=i8] [debug line = 39:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.14) nounwind
  %tmp = xor i8 %state.load.13, %state.load, !dbg !71 ; [#uses=1 type=i8] [debug line = 39:5]
  %tmp.19 = xor i8 %tmp, %state.load.14, !dbg !71 ; [#uses=1 type=i8] [debug line = 39:5]
  store i8 %tmp.19, i8* %state.addr.13, align 1, !dbg !71 ; [debug line = 39:5]
  %state.addr.14 = getelementptr inbounds i8* %state, i64 196, !dbg !73 ; [#uses=1 type=i8*] [debug line = 40:5]
  %state.load.15 = load i8* %state.addr.14, align 1, !dbg !73 ; [#uses=2 type=i8] [debug line = 40:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.15) nounwind
  %state.addr.15 = getelementptr inbounds i8* %state, i64 193, !dbg !73 ; [#uses=2 type=i8*] [debug line = 40:5]
  %state.load.16 = load i8* %state.addr.15, align 1, !dbg !73 ; [#uses=4 type=i8] [debug line = 40:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.16) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.13) nounwind
  %tmp.20 = xor i8 %state.load.15, %state.load.13, !dbg !73 ; [#uses=1 type=i8] [debug line = 40:5]
  %tmp.21 = xor i8 %tmp.20, %state.load.16, !dbg !73 ; [#uses=1 type=i8] [debug line = 40:5]
  store i8 %tmp.21, i8* %state.addr.12, align 1, !dbg !73 ; [debug line = 40:5]
  %state.addr.16 = getelementptr inbounds i8* %state, i64 160, !dbg !74 ; [#uses=1 type=i8*] [debug line = 41:5]
  %state.load.17 = load i8* %state.addr.16, align 1, !dbg !74 ; [#uses=2 type=i8] [debug line = 41:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.17) nounwind
  %state.addr.17 = getelementptr inbounds i8* %state, i64 154, !dbg !74 ; [#uses=2 type=i8*] [debug line = 41:5]
  %state.load.18 = load i8* %state.addr.17, align 1, !dbg !74 ; [#uses=4 type=i8] [debug line = 41:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.18) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.16) nounwind
  %tmp.22 = xor i8 %state.load.17, %state.load.16, !dbg !74 ; [#uses=1 type=i8] [debug line = 41:5]
  %tmp.23 = xor i8 %tmp.22, %state.load.18, !dbg !74 ; [#uses=1 type=i8] [debug line = 41:5]
  store i8 %tmp.23, i8* %state.addr.15, align 1, !dbg !74 ; [debug line = 41:5]
  %state.addr.18 = getelementptr inbounds i8* %state, i64 111, !dbg !75 ; [#uses=1 type=i8*] [debug line = 42:5]
  %state.load.19 = load i8* %state.addr.18, align 1, !dbg !75 ; [#uses=2 type=i8] [debug line = 42:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.19) nounwind
  %state.addr.19 = getelementptr inbounds i8* %state, i64 107, !dbg !75 ; [#uses=2 type=i8*] [debug line = 42:5]
  %state.load.20 = load i8* %state.addr.19, align 1, !dbg !75 ; [#uses=4 type=i8] [debug line = 42:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.20) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.18) nounwind
  %tmp.24 = xor i8 %state.load.19, %state.load.18, !dbg !75 ; [#uses=1 type=i8] [debug line = 42:5]
  %tmp.25 = xor i8 %tmp.24, %state.load.20, !dbg !75 ; [#uses=1 type=i8] [debug line = 42:5]
  store i8 %tmp.25, i8* %state.addr.17, align 1, !dbg !75 ; [debug line = 42:5]
  %state.addr.20 = getelementptr inbounds i8* %state, i64 66, !dbg !76 ; [#uses=1 type=i8*] [debug line = 43:5]
  %state.load.21 = load i8* %state.addr.20, align 1, !dbg !76 ; [#uses=2 type=i8] [debug line = 43:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.21) nounwind
  %state.addr.21 = getelementptr inbounds i8* %state, i64 61, !dbg !76 ; [#uses=2 type=i8*] [debug line = 43:5]
  %state.load.22 = load i8* %state.addr.21, align 1, !dbg !76 ; [#uses=4 type=i8] [debug line = 43:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.22) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.20) nounwind
  %tmp.26 = xor i8 %state.load.21, %state.load.20, !dbg !76 ; [#uses=1 type=i8] [debug line = 43:5]
  %tmp.27 = xor i8 %tmp.26, %state.load.22, !dbg !76 ; [#uses=1 type=i8] [debug line = 43:5]
  store i8 %tmp.27, i8* %state.addr.19, align 1, !dbg !76 ; [debug line = 43:5]
  %state.addr.22 = getelementptr inbounds i8* %state, i64 23, !dbg !77 ; [#uses=1 type=i8*] [debug line = 44:5]
  %state.load.23 = load i8* %state.addr.22, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 44:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.23) nounwind
  %state.load.24 = load i8* %state, align 1, !dbg !77 ; [#uses=2 type=i8] [debug line = 44:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.24) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.22) nounwind
  %tmp.28 = xor i8 %state.load.23, %state.load.22, !dbg !77 ; [#uses=1 type=i8] [debug line = 44:5]
  %tmp.29 = xor i8 %tmp.28, %state.load.24, !dbg !77 ; [#uses=1 type=i8] [debug line = 44:5]
  store i8 %tmp.29, i8* %state.addr.21, align 1, !dbg !77 ; [debug line = 44:5]
  %f = call fastcc zeroext i8 @FBK128(i8* %state, i8 zeroext %ca, i8 zeroext %cb), !dbg !78 ; [#uses=1 type=i8] [debug line = 47:9]
  call void @llvm.dbg.value(metadata !{i8 %f}, i64 0, metadata !79), !dbg !78 ; [debug line = 47:9] [debug variable = f]
  br label %1, !dbg !80                           ; [debug line = 50:10]

; <label>:1                                       ; preds = %2, %0
  %j = phi i32 [ 0, %0 ], [ %j.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %j, 292, !dbg !80       ; [#uses=1 type=i1] [debug line = 50:10]
  br i1 %exitcond, label %3, label %2, !dbg !80   ; [debug line = 50:10]

; <label>:2                                       ; preds = %1
  %j.1 = add i32 %j, 1, !dbg !82                  ; [#uses=2 type=i32] [debug line = 50:32]
  %tmp.33 = zext i32 %j.1 to i64, !dbg !82        ; [#uses=1 type=i64] [debug line = 50:32]
  %state.addr.24 = getelementptr inbounds i8* %state, i64 %tmp.33, !dbg !82 ; [#uses=1 type=i8*] [debug line = 50:32]
  %state.load.25 = load i8* %state.addr.24, align 1, !dbg !82 ; [#uses=2 type=i8] [debug line = 50:32]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %state.load.25) nounwind
  %tmp.34 = zext i32 %j to i64, !dbg !82          ; [#uses=1 type=i64] [debug line = 50:32]
  %state.addr.25 = getelementptr inbounds i8* %state, i64 %tmp.34, !dbg !82 ; [#uses=1 type=i8*] [debug line = 50:32]
  store i8 %state.load.25, i8* %state.addr.25, align 1, !dbg !82 ; [debug line = 50:32]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !83), !dbg !85 ; [debug line = 50:27] [debug variable = j]
  br label %1, !dbg !85                           ; [debug line = 50:27]

; <label>:3                                       ; preds = %1
  %tmp.30 = xor i8 %f, %plaintextbit, !dbg !86    ; [#uses=1 type=i8] [debug line = 53:5]
  %state.addr.23 = getelementptr inbounds i8* %state, i64 292, !dbg !86 ; [#uses=1 type=i8*] [debug line = 53:5]
  store i8 %tmp.30, i8* %state.addr.23, align 1, !dbg !86 ; [debug line = 53:5]
  %kstem.constprop.load = load i8* @kstem.constprop, align 1, !dbg !87 ; [#uses=1 type=i8] [debug line = 54:5]
  %tmp.31 = xor i8 %kstem.constprop.load, %plaintextbit, !dbg !87 ; [#uses=1 type=i8] [debug line = 54:5]
  store i8 %tmp.31, i8* %ciphertextbit, align 1, !dbg !87 ; [debug line = 54:5]
  ret void, !dbg !88                              ; [debug line = 55:1]
}

; [#uses=0]
define i32 @acorn128_enc_onebyte(i8* %state, i8 zeroext %plaintextbyte, i8 zeroext %ciphertextbyte, i8 zeroext %ksbyte, i8 zeroext %cabyte, i8 zeroext %cbbyte) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !89
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @str) nounwind
  %ciphertextbit = alloca i8, align 1             ; [#uses=1 type=i8*]
  %kstem = alloca i8, align 1                     ; [#uses=1 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %state}, i64 0, metadata !95), !dbg !96 ; [debug line = 59:40] [debug variable = state]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbyte}, i64 0, metadata !97), !dbg !98 ; [debug line = 59:66] [debug variable = plaintextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ciphertextbyte}, i64 0, metadata !99), !dbg !100 ; [debug line = 60:22] [debug variable = ciphertextbyte]
  call void @llvm.dbg.value(metadata !{i8 %ksbyte}, i64 0, metadata !101), !dbg !102 ; [debug line = 60:52] [debug variable = ksbyte]
  call void @llvm.dbg.value(metadata !{i8 %cabyte}, i64 0, metadata !103), !dbg !104 ; [debug line = 60:74] [debug variable = cabyte]
  call void @llvm.dbg.value(metadata !{i8 %cbbyte}, i64 0, metadata !105), !dbg !106 ; [debug line = 60:96] [debug variable = cbbyte]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %state, i32 293), !dbg !107 ; [debug line = 61:2]
  call void (...)* @_ssdm_op_SpecInterface(i8* %state, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !109 ; [debug line = 63:1]
  %tmp = zext i8 %plaintextbyte to i32, !dbg !110 ; [#uses=2 type=i32] [debug line = 64:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !110 ; [debug line = 64:1]
  %tmp.35 = zext i8 %ciphertextbyte to i32, !dbg !111 ; [#uses=1 type=i32] [debug line = 65:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.35, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !111 ; [debug line = 65:1]
  %tmp.36 = zext i8 %ksbyte to i32, !dbg !112     ; [#uses=1 type=i32] [debug line = 66:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.36, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !112 ; [debug line = 66:1]
  %tmp.37 = zext i8 %cabyte to i32, !dbg !113     ; [#uses=2 type=i32] [debug line = 67:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.37, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !113 ; [debug line = 67:1]
  %tmp.38 = zext i8 %cbbyte to i32, !dbg !114     ; [#uses=2 type=i32] [debug line = 68:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %tmp.38, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !114 ; [debug line = 68:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !115 ; [debug line = 69:1]
  call void @llvm.dbg.declare(metadata !{i8* %ciphertextbit}, metadata !116), !dbg !117 ; [debug line = 72:32] [debug variable = ciphertextbit]
  call void @llvm.dbg.declare(metadata !{i8* %kstem}, metadata !118), !dbg !119 ; [debug line = 72:46] [debug variable = kstem]
  store i8 0, i8* %kstem, align 1, !dbg !120      ; [debug line = 75:5]
  br label %1, !dbg !121                          ; [debug line = 78:10]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.1, %2 ]             ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i, 8, !dbg !121         ; [#uses=1 type=i1] [debug line = 78:10]
  br i1 %exitcond, label %3, label %2, !dbg !121  ; [debug line = 78:10]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !123 ; [#uses=1 type=i32] [debug line = 79:6]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !125 ; [debug line = 80:1]
  %tmp.39 = zext i8 %i to i32, !dbg !126          ; [#uses=3 type=i32] [debug line = 81:2]
  %tmp.40 = lshr i32 %tmp.37, %tmp.39, !dbg !126  ; [#uses=1 type=i32] [debug line = 81:2]
  %tmp.41 = trunc i32 %tmp.40 to i8, !dbg !126    ; [#uses=1 type=i8] [debug line = 81:2]
  %ca = and i8 %tmp.41, 1, !dbg !126              ; [#uses=1 type=i8] [debug line = 81:2]
  call void @llvm.dbg.value(metadata !{i8 %ca}, i64 0, metadata !127), !dbg !126 ; [debug line = 81:2] [debug variable = ca]
  %tmp.42 = lshr i32 %tmp.38, %tmp.39, !dbg !128  ; [#uses=1 type=i32] [debug line = 82:9]
  %tmp.43 = trunc i32 %tmp.42 to i8, !dbg !128    ; [#uses=1 type=i8] [debug line = 82:9]
  %cb = and i8 %tmp.43, 1, !dbg !128              ; [#uses=1 type=i8] [debug line = 82:9]
  call void @llvm.dbg.value(metadata !{i8 %cb}, i64 0, metadata !129), !dbg !128 ; [debug line = 82:9] [debug variable = cb]
  %tmp.44 = lshr i32 %tmp, %tmp.39, !dbg !130     ; [#uses=1 type=i32] [debug line = 83:9]
  %tmp.45 = trunc i32 %tmp.44 to i8, !dbg !130    ; [#uses=1 type=i8] [debug line = 83:9]
  %plaintextbit = and i8 %tmp.45, 1, !dbg !130    ; [#uses=1 type=i8] [debug line = 83:9]
  call void @llvm.dbg.value(metadata !{i8 %plaintextbit}, i64 0, metadata !131), !dbg !130 ; [debug line = 83:9] [debug variable = plaintextbit]
  call fastcc void @Encrypt_StateUpdate128_1bit(i8* %state, i8 zeroext %plaintextbit, i8* %ciphertextbit, i8 zeroext %ca, i8 zeroext %cb), !dbg !132 ; [debug line = 84:9]
  call void @llvm.dbg.value(metadata !{i8* %ciphertextbit}, i64 0, metadata !116), !dbg !133 ; [debug line = 85:9] [debug variable = ciphertextbit]
  call void @llvm.dbg.value(metadata !{i8* %kstem}, i64 0, metadata !118), !dbg !134 ; [debug line = 86:9] [debug variable = kstem]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !135 ; [#uses=0 type=i32] [debug line = 87:5]
  %i.1 = add i8 %i, 1, !dbg !136                  ; [#uses=1 type=i8] [debug line = 78:24]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !137), !dbg !136 ; [debug line = 78:24] [debug variable = i]
  br label %1, !dbg !136                          ; [debug line = 78:24]

; <label>:3                                       ; preds = %1
  ret i32 0, !dbg !138                            ; [debug line = 89:5]
}

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=7]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=30]
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

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/vivado_2014.4_hls_workspace/soc_proj_hls_deneme_1/solution1/.autopilot/db/source.pragma.2.c", metadata !"c:/vivado_2014.4_hls_workspace", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !12, metadata !13, metadata !17, metadata !20, metadata !23}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"maj", metadata !"maj", metadata !"", metadata !6, i32 9, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @maj, null, null, metadata !10, i32 10} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"soc_proj_hls_deneme_1/source.c", metadata !"c:/vivado_2014.4_hls_workspace", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ch", metadata !"ch", metadata !"", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8, i8, i8)* @ch, null, null, metadata !10, i32 15} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"KSG128", metadata !"KSG128", metadata !"", metadata !6, i32 19, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8*)* @KSG128, null, null, metadata !10, i32 20} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{metadata !9, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"FBK128", metadata !"FBK128", metadata !"", metadata !6, i32 24, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 25} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !16, metadata !16, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Encrypt_StateUpdate128_1bit", metadata !"Encrypt_StateUpdate128_1bit", metadata !"", metadata !6, i32 33, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !10, i32 34} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16, metadata !9, metadata !16, metadata !16, metadata !9, metadata !9}
!23 = metadata !{i32 786478, i32 0, metadata !6, metadata !"acorn128_enc_onebyte", metadata !"acorn128_enc_onebyte", metadata !"", metadata !6, i32 59, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i8, i8, i8, i8, i8)* @acorn128_enc_onebyte, null, null, metadata !10, i32 61} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !16, metadata !9, metadata !9, metadata !9, metadata !9, metadata !9}
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777225, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 9, i32 33, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554441, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 9, i32 49, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"z", metadata !6, i32 50331657, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 9, i32 65, metadata !5, null}
!33 = metadata !{i32 11, i32 2, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 10, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !6, i32 16777230, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 14, i32 32, metadata !12, null}
!37 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !6, i32 33554446, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 14, i32 48, metadata !12, null}
!39 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !6, i32 50331662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 14, i32 64, metadata !12, null}
!41 = metadata !{i32 16, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !12, i32 15, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 786689, metadata !13, metadata !"state", metadata !6, i32 16777235, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 19, i32 37, metadata !13, null}
!45 = metadata !{i32 21, i32 5, metadata !46, null}
!46 = metadata !{i32 786443, metadata !13, i32 20, i32 1, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 21, i32 39, metadata !46, null}
!48 = metadata !{i32 21, i32 80, metadata !46, null}
!49 = metadata !{i32 786689, metadata !17, metadata !"state", metadata !6, i32 16777240, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 24, i32 37, metadata !17, null}
!51 = metadata !{i32 786689, metadata !17, metadata !"ca", metadata !6, i32 50331672, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 24, i32 77, metadata !17, null}
!53 = metadata !{i32 786689, metadata !17, metadata !"cb", metadata !6, i32 67108888, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 24, i32 95, metadata !17, null}
!55 = metadata !{i32 27, i32 11, metadata !56, null}
!56 = metadata !{i32 786443, metadata !17, i32 25, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 28, i32 5, metadata !56, null}
!58 = metadata !{i32 28, i32 39, metadata !56, null}
!59 = metadata !{i32 786688, metadata !56, metadata !"f", metadata !6, i32 26, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 29, i32 5, metadata !56, null}
!61 = metadata !{i32 786689, metadata !20, metadata !"state", metadata !6, i32 16777249, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 33, i32 49, metadata !20, null}
!63 = metadata !{i32 786689, metadata !20, metadata !"plaintextbit", metadata !6, i32 33554465, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 33, i32 70, metadata !20, null}
!65 = metadata !{i32 786689, metadata !20, metadata !"ciphertextbit", metadata !6, i32 50331681, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 33, i32 99, metadata !20, null}
!67 = metadata !{i32 786689, metadata !20, metadata !"ca", metadata !6, i32 83886113, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 33, i32 147, metadata !20, null}
!69 = metadata !{i32 786689, metadata !20, metadata !"cb", metadata !6, i32 100663329, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 33, i32 165, metadata !20, null}
!71 = metadata !{i32 39, i32 5, metadata !72, null}
!72 = metadata !{i32 786443, metadata !20, i32 34, i32 1, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 40, i32 5, metadata !72, null}
!74 = metadata !{i32 41, i32 5, metadata !72, null}
!75 = metadata !{i32 42, i32 5, metadata !72, null}
!76 = metadata !{i32 43, i32 5, metadata !72, null}
!77 = metadata !{i32 44, i32 5, metadata !72, null}
!78 = metadata !{i32 47, i32 9, metadata !72, null}
!79 = metadata !{i32 786688, metadata !72, metadata !"f", metadata !6, i32 36, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 50, i32 10, metadata !81, null}
!81 = metadata !{i32 786443, metadata !72, i32 50, i32 5, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 50, i32 32, metadata !81, null}
!83 = metadata !{i32 786688, metadata !72, metadata !"j", metadata !6, i32 35, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 50, i32 27, metadata !81, null}
!86 = metadata !{i32 53, i32 5, metadata !72, null}
!87 = metadata !{i32 54, i32 5, metadata !72, null}
!88 = metadata !{i32 55, i32 1, metadata !72, null}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"return", metadata !93, metadata !"int", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 1, i32 0}
!95 = metadata !{i32 786689, metadata !23, metadata !"state", metadata !6, i32 16777275, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 59, i32 40, metadata !23, null}
!97 = metadata !{i32 786689, metadata !23, metadata !"plaintextbyte", metadata !6, i32 33554491, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!98 = metadata !{i32 59, i32 66, metadata !23, null}
!99 = metadata !{i32 786689, metadata !23, metadata !"ciphertextbyte", metadata !6, i32 50331708, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 60, i32 22, metadata !23, null}
!101 = metadata !{i32 786689, metadata !23, metadata !"ksbyte", metadata !6, i32 67108924, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 60, i32 52, metadata !23, null}
!103 = metadata !{i32 786689, metadata !23, metadata !"cabyte", metadata !6, i32 83886140, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 60, i32 74, metadata !23, null}
!105 = metadata !{i32 786689, metadata !23, metadata !"cbbyte", metadata !6, i32 100663356, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 60, i32 96, metadata !23, null}
!107 = metadata !{i32 61, i32 2, metadata !108, null}
!108 = metadata !{i32 786443, metadata !23, i32 61, i32 1, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 63, i32 1, metadata !108, null}
!110 = metadata !{i32 64, i32 1, metadata !108, null}
!111 = metadata !{i32 65, i32 1, metadata !108, null}
!112 = metadata !{i32 66, i32 1, metadata !108, null}
!113 = metadata !{i32 67, i32 1, metadata !108, null}
!114 = metadata !{i32 68, i32 1, metadata !108, null}
!115 = metadata !{i32 69, i32 1, metadata !108, null}
!116 = metadata !{i32 786688, metadata !108, metadata !"ciphertextbit", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 72, i32 32, metadata !108, null}
!118 = metadata !{i32 786688, metadata !108, metadata !"kstem", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 72, i32 46, metadata !108, null}
!120 = metadata !{i32 75, i32 5, metadata !108, null}
!121 = metadata !{i32 78, i32 10, metadata !122, null}
!122 = metadata !{i32 786443, metadata !108, i32 78, i32 5, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 79, i32 6, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 79, i32 5, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 80, i32 1, metadata !124, null}
!126 = metadata !{i32 81, i32 2, metadata !124, null}
!127 = metadata !{i32 786688, metadata !108, metadata !"ca", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 82, i32 9, metadata !124, null}
!129 = metadata !{i32 786688, metadata !108, metadata !"cb", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!130 = metadata !{i32 83, i32 9, metadata !124, null}
!131 = metadata !{i32 786688, metadata !108, metadata !"plaintextbit", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 84, i32 9, metadata !124, null}
!133 = metadata !{i32 85, i32 9, metadata !124, null}
!134 = metadata !{i32 86, i32 9, metadata !124, null}
!135 = metadata !{i32 87, i32 5, metadata !124, null}
!136 = metadata !{i32 78, i32 24, metadata !122, null}
!137 = metadata !{i32 786688, metadata !108, metadata !"i", metadata !6, i32 71, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 89, i32 5, metadata !108, null}
