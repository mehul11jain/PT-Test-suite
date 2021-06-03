; ModuleID = 'testcase6.ll'
source_filename = "testcase6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z11MayPointsToIPPiS0_EvT_T0_ = comdat any

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z11MayPointsToIPiiEvT_T0_ = comdat any

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

@p = dso_local global i32** null, align 8, !dbg !0
@q = dso_local global i32** null, align 8, !dbg !6
@r = dso_local global i32** null, align 8, !dbg !11
@a = dso_local global i32* null, align 8, !dbg !13
@b = dso_local global i32* null, align 8, !dbg !15
@c = dso_local global i32* null, align 8, !dbg !17
@d = dso_local global i32* null, align 8, !dbg !19
@e = dso_local global i32* null, align 8, !dbg !21
@m = dso_local global i32 0, align 4, !dbg !23

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !29 {
bb:
  store i32** @a, i32*** @q, align 8, !dbg !32
  br label %bb1, !dbg !33

bb1:                                              ; preds = %bb36, %bb
  store i32** @a, i32*** @r, align 8, !dbg !34
  %tmp2 = load i32**, i32*** @q, align 8, !dbg !36
  %tmp3 = load i32*, i32** @b, align 8, !dbg !37
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp2, i32* %tmp3), !dbg !38
  %tmp4 = load i32**, i32*** @q, align 8, !dbg !39
  %tmp5 = load i32*, i32** @a, align 8, !dbg !40
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp4, i32* %tmp5), !dbg !41
  %tmp6 = load i32**, i32*** @r, align 8, !dbg !42
  %tmp7 = load i32*, i32** @a, align 8, !dbg !43
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp6, i32* %tmp7), !dbg !44
  %tmp8 = load i32*, i32** @b, align 8, !dbg !45
  %tmp9 = load i32, i32* @m, align 4, !dbg !46
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp8, i32 %tmp9), !dbg !47
  %tmp10 = load i32*, i32** @a, align 8, !dbg !48
  %tmp11 = load i32, i32* @m, align 4, !dbg !49
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp10, i32 %tmp11), !dbg !50
  %tmp12 = load i32**, i32*** @q, align 8, !dbg !51
  store i32* @m, i32** %tmp12, align 8, !dbg !52
  %tmp13 = load i32**, i32*** @q, align 8, !dbg !53
  %tmp14 = load i32*, i32** @b, align 8, !dbg !54
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp13, i32* %tmp14), !dbg !55
  %tmp15 = load i32**, i32*** @q, align 8, !dbg !56
  %tmp16 = load i32*, i32** @a, align 8, !dbg !57
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp15, i32* %tmp16), !dbg !58
  %tmp17 = load i32**, i32*** @r, align 8, !dbg !59
  %tmp18 = load i32*, i32** @a, align 8, !dbg !60
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp17, i32* %tmp18), !dbg !61
  %tmp19 = load i32*, i32** @b, align 8, !dbg !62
  %tmp20 = load i32, i32* @m, align 4, !dbg !63
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp19, i32 %tmp20), !dbg !64
  %tmp21 = load i32*, i32** @a, align 8, !dbg !65
  %tmp22 = load i32, i32* @m, align 4, !dbg !66
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp21, i32 %tmp22), !dbg !67
  %tmp23 = load i32, i32* @m, align 4, !dbg !68
  %tmp24 = icmp ne i32 %tmp23, 0, !dbg !68
  br i1 %tmp24, label %bb25, label %bb34, !dbg !70

bb25:                                             ; preds = %bb1
  store i32** @b, i32*** @q, align 8, !dbg !71
  %tmp26 = load i32**, i32*** @q, align 8, !dbg !73
  %tmp27 = load i32*, i32** @b, align 8, !dbg !74
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp26, i32* %tmp27), !dbg !75
  %tmp28 = load i32**, i32*** @r, align 8, !dbg !76
  %tmp29 = load i32*, i32** @a, align 8, !dbg !77
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !78
  %tmp30 = load i32*, i32** @b, align 8, !dbg !79
  %tmp31 = load i32, i32* @m, align 4, !dbg !80
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp30, i32 %tmp31), !dbg !81
  %tmp32 = load i32*, i32** @a, align 8, !dbg !82
  %tmp33 = load i32, i32* @m, align 4, !dbg !83
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !84
  br label %bb35, !dbg !85

bb34:                                             ; preds = %bb1
  br label %bb37, !dbg !86

bb35:                                             ; preds = %bb25
  br label %bb36, !dbg !88

bb36:                                             ; preds = %bb35
  br i1 true, label %bb1, label %bb37, !dbg !88, !llvm.loop !89

bb37:                                             ; preds = %bb36, %bb34
  %tmp38 = load i32**, i32*** @q, align 8, !dbg !91
  %tmp39 = load i32*, i32** %tmp38, align 8, !dbg !92
  store i32* %tmp39, i32** @e, align 8, !dbg !93
  %tmp40 = load i32**, i32*** @q, align 8, !dbg !94
  %tmp41 = load i32*, i32** @b, align 8, !dbg !95
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp40, i32* %tmp41), !dbg !96
  %tmp42 = load i32**, i32*** @q, align 8, !dbg !97
  %tmp43 = load i32*, i32** @a, align 8, !dbg !98
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp42, i32* %tmp43), !dbg !99
  %tmp44 = load i32*, i32** @a, align 8, !dbg !100
  %tmp45 = load i32, i32* @m, align 4, !dbg !101
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp44, i32 %tmp45), !dbg !102
  %tmp46 = load i32*, i32** @b, align 8, !dbg !103
  %tmp47 = load i32, i32* @m, align 4, !dbg !104
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp46, i32 %tmp47), !dbg !105
  %tmp48 = load i32*, i32** @e, align 8, !dbg !106
  %tmp49 = load i32, i32* @m, align 4, !dbg !107
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp48, i32 %tmp49), !dbg !108
  %tmp50 = load i32**, i32*** @r, align 8, !dbg !109
  %tmp51 = load i32*, i32** @a, align 8, !dbg !110
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp50, i32* %tmp51), !dbg !111
  store i32** @e, i32*** @q, align 8, !dbg !112
  %tmp52 = load i32**, i32*** @q, align 8, !dbg !113
  %tmp53 = load i32*, i32** @e, align 8, !dbg !114
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp52, i32* %tmp53), !dbg !115
  %tmp54 = load i32*, i32** @a, align 8, !dbg !116
  %tmp55 = load i32, i32* @m, align 4, !dbg !117
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp54, i32 %tmp55), !dbg !118
  %tmp56 = load i32*, i32** @b, align 8, !dbg !119
  %tmp57 = load i32, i32* @m, align 4, !dbg !120
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp56, i32 %tmp57), !dbg !121
  %tmp58 = load i32*, i32** @e, align 8, !dbg !122
  %tmp59 = load i32, i32* @m, align 4, !dbg !123
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp58, i32 %tmp59), !dbg !124
  %tmp60 = load i32**, i32*** @r, align 8, !dbg !125
  %tmp61 = load i32*, i32** @a, align 8, !dbg !126
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp60, i32* %tmp61), !dbg !127
  ret i32 0, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !129 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !138, metadata !DIExpression()), !dbg !137
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !140 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !143, metadata !DIExpression()), !dbg !142
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !145 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !151, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !153, metadata !DIExpression()), !dbg !152
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !155 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !158, metadata !DIExpression()), !dbg !157
  ret void, !dbg !159
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase6.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !11, !13, !15, !17, !19, !21, !23}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "r", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.0 "}
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 6, type: !30, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!10}
!32 = !DILocation(line: 8, column: 7, scope: !29)
!33 = !DILocation(line: 9, column: 5, scope: !29)
!34 = !DILocation(line: 11, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !29, file: !3, line: 10, column: 5)
!36 = !DILocation(line: 13, column: 21, scope: !35)
!37 = !DILocation(line: 13, column: 23, scope: !35)
!38 = !DILocation(line: 13, column: 9, scope: !35)
!39 = !DILocation(line: 14, column: 21, scope: !35)
!40 = !DILocation(line: 14, column: 23, scope: !35)
!41 = !DILocation(line: 14, column: 9, scope: !35)
!42 = !DILocation(line: 16, column: 22, scope: !35)
!43 = !DILocation(line: 16, column: 24, scope: !35)
!44 = !DILocation(line: 16, column: 9, scope: !35)
!45 = !DILocation(line: 17, column: 21, scope: !35)
!46 = !DILocation(line: 17, column: 23, scope: !35)
!47 = !DILocation(line: 17, column: 9, scope: !35)
!48 = !DILocation(line: 18, column: 21, scope: !35)
!49 = !DILocation(line: 18, column: 23, scope: !35)
!50 = !DILocation(line: 18, column: 9, scope: !35)
!51 = !DILocation(line: 20, column: 10, scope: !35)
!52 = !DILocation(line: 20, column: 12, scope: !35)
!53 = !DILocation(line: 21, column: 21, scope: !35)
!54 = !DILocation(line: 21, column: 23, scope: !35)
!55 = !DILocation(line: 21, column: 9, scope: !35)
!56 = !DILocation(line: 22, column: 21, scope: !35)
!57 = !DILocation(line: 22, column: 23, scope: !35)
!58 = !DILocation(line: 22, column: 9, scope: !35)
!59 = !DILocation(line: 23, column: 22, scope: !35)
!60 = !DILocation(line: 23, column: 24, scope: !35)
!61 = !DILocation(line: 23, column: 9, scope: !35)
!62 = !DILocation(line: 24, column: 21, scope: !35)
!63 = !DILocation(line: 24, column: 23, scope: !35)
!64 = !DILocation(line: 24, column: 9, scope: !35)
!65 = !DILocation(line: 25, column: 21, scope: !35)
!66 = !DILocation(line: 25, column: 23, scope: !35)
!67 = !DILocation(line: 25, column: 9, scope: !35)
!68 = !DILocation(line: 27, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !35, file: !3, line: 27, column: 13)
!70 = !DILocation(line: 27, column: 13, scope: !35)
!71 = !DILocation(line: 29, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 28, column: 9)
!73 = !DILocation(line: 30, column: 26, scope: !72)
!74 = !DILocation(line: 30, column: 28, scope: !72)
!75 = !DILocation(line: 30, column: 13, scope: !72)
!76 = !DILocation(line: 31, column: 26, scope: !72)
!77 = !DILocation(line: 31, column: 28, scope: !72)
!78 = !DILocation(line: 31, column: 13, scope: !72)
!79 = !DILocation(line: 32, column: 25, scope: !72)
!80 = !DILocation(line: 32, column: 27, scope: !72)
!81 = !DILocation(line: 32, column: 13, scope: !72)
!82 = !DILocation(line: 33, column: 25, scope: !72)
!83 = !DILocation(line: 33, column: 27, scope: !72)
!84 = !DILocation(line: 33, column: 13, scope: !72)
!85 = !DILocation(line: 34, column: 9, scope: !72)
!86 = !DILocation(line: 37, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !69, file: !3, line: 36, column: 9)
!88 = !DILocation(line: 40, column: 5, scope: !35)
!89 = distinct !{!89, !33, !90}
!90 = !DILocation(line: 40, column: 15, scope: !29)
!91 = !DILocation(line: 49, column: 10, scope: !29)
!92 = !DILocation(line: 49, column: 9, scope: !29)
!93 = !DILocation(line: 49, column: 7, scope: !29)
!94 = !DILocation(line: 52, column: 17, scope: !29)
!95 = !DILocation(line: 52, column: 19, scope: !29)
!96 = !DILocation(line: 52, column: 5, scope: !29)
!97 = !DILocation(line: 53, column: 17, scope: !29)
!98 = !DILocation(line: 53, column: 19, scope: !29)
!99 = !DILocation(line: 53, column: 5, scope: !29)
!100 = !DILocation(line: 54, column: 17, scope: !29)
!101 = !DILocation(line: 54, column: 19, scope: !29)
!102 = !DILocation(line: 54, column: 5, scope: !29)
!103 = !DILocation(line: 55, column: 17, scope: !29)
!104 = !DILocation(line: 55, column: 19, scope: !29)
!105 = !DILocation(line: 55, column: 5, scope: !29)
!106 = !DILocation(line: 56, column: 18, scope: !29)
!107 = !DILocation(line: 56, column: 20, scope: !29)
!108 = !DILocation(line: 56, column: 5, scope: !29)
!109 = !DILocation(line: 57, column: 18, scope: !29)
!110 = !DILocation(line: 57, column: 20, scope: !29)
!111 = !DILocation(line: 57, column: 5, scope: !29)
!112 = !DILocation(line: 61, column: 7, scope: !29)
!113 = !DILocation(line: 62, column: 18, scope: !29)
!114 = !DILocation(line: 62, column: 20, scope: !29)
!115 = !DILocation(line: 62, column: 5, scope: !29)
!116 = !DILocation(line: 63, column: 17, scope: !29)
!117 = !DILocation(line: 63, column: 19, scope: !29)
!118 = !DILocation(line: 63, column: 5, scope: !29)
!119 = !DILocation(line: 64, column: 17, scope: !29)
!120 = !DILocation(line: 64, column: 19, scope: !29)
!121 = !DILocation(line: 64, column: 5, scope: !29)
!122 = !DILocation(line: 65, column: 18, scope: !29)
!123 = !DILocation(line: 65, column: 20, scope: !29)
!124 = !DILocation(line: 65, column: 5, scope: !29)
!125 = !DILocation(line: 66, column: 18, scope: !29)
!126 = !DILocation(line: 66, column: 20, scope: !29)
!127 = !DILocation(line: 66, column: 5, scope: !29)
!128 = !DILocation(line: 67, column: 1, scope: !29)
!129 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !130, file: !130, line: 16, type: !131, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !133, retainedNodes: !4)
!130 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!131 = !DISubroutineType(types: !132)
!132 = !{null, !8, !9}
!133 = !{!134, !135}
!134 = !DITemplateTypeParameter(name: "T", type: !8)
!135 = !DITemplateTypeParameter(name: "U", type: !9)
!136 = !DILocalVariable(arg: 1, scope: !129, file: !130, line: 16, type: !8)
!137 = !DILocation(line: 0, scope: !129)
!138 = !DILocalVariable(arg: 2, scope: !129, file: !130, line: 16, type: !9)
!139 = !DILocation(line: 19, column: 1, scope: !129)
!140 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !130, file: !130, line: 6, type: !131, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !133, retainedNodes: !4)
!141 = !DILocalVariable(arg: 1, scope: !140, file: !130, line: 6, type: !8)
!142 = !DILocation(line: 0, scope: !140)
!143 = !DILocalVariable(arg: 2, scope: !140, file: !130, line: 6, type: !9)
!144 = !DILocation(line: 9, column: 1, scope: !140)
!145 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !130, file: !130, line: 16, type: !146, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !148, retainedNodes: !4)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !9, !10}
!148 = !{!149, !150}
!149 = !DITemplateTypeParameter(name: "T", type: !9)
!150 = !DITemplateTypeParameter(name: "U", type: !10)
!151 = !DILocalVariable(arg: 1, scope: !145, file: !130, line: 16, type: !9)
!152 = !DILocation(line: 0, scope: !145)
!153 = !DILocalVariable(arg: 2, scope: !145, file: !130, line: 16, type: !10)
!154 = !DILocation(line: 19, column: 1, scope: !145)
!155 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !130, file: !130, line: 6, type: !146, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !148, retainedNodes: !4)
!156 = !DILocalVariable(arg: 1, scope: !155, file: !130, line: 6, type: !9)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocalVariable(arg: 2, scope: !155, file: !130, line: 6, type: !10)
!159 = !DILocation(line: 9, column: 1, scope: !155)
