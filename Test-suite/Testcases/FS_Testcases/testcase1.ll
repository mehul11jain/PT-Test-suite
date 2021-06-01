; ModuleID = 'testcase1.ll'
source_filename = "testcase1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z12MustPointsToIPPPiS1_EvT_T0_ = comdat any

$_Z11MayPointsToIPPPiS1_EvT_T0_ = comdat any

$_Z11MayPointsToIPPiS0_EvT_T0_ = comdat any

@p = dso_local global i32*** null, align 8, !dbg !0
@q = dso_local global i32** null, align 8, !dbg !6
@a = dso_local global i32** null, align 8, !dbg !11
@b = dso_local global i32** null, align 8, !dbg !13
@c = dso_local global i32* null, align 8, !dbg !15
@m = dso_local global i32* null, align 8, !dbg !17
@n = dso_local global i32* null, align 8, !dbg !19
@d = dso_local global i32 0, align 4, !dbg !21

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !28 {
bb:
  store i32* @d, i32** @m, align 8, !dbg !31
  %tmp1 = load i32*, i32** @m, align 8, !dbg !32
  %tmp2 = load i32, i32* @d, align 4, !dbg !33
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp1, i32 %tmp2), !dbg !34
  store i32** @c, i32*** @b, align 8, !dbg !35
  store i32** @c, i32*** @a, align 8, !dbg !36
  %tmp3 = load i32**, i32*** @a, align 8, !dbg !37
  %tmp4 = load i32*, i32** @c, align 8, !dbg !38
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp3, i32* %tmp4), !dbg !39
  %tmp5 = load i32**, i32*** @b, align 8, !dbg !40
  %tmp6 = load i32*, i32** @c, align 8, !dbg !41
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp5, i32* %tmp6), !dbg !42
  %tmp7 = load i32**, i32*** @a, align 8, !dbg !43
  %tmp8 = icmp ne i32** %tmp7, null, !dbg !43
  br i1 %tmp8, label %bb9, label %bb14, !dbg !45

bb9:                                              ; preds = %bb
  store i32*** @a, i32**** @p, align 8, !dbg !46
  %tmp10 = load i32***, i32**** @p, align 8, !dbg !48
  %tmp11 = load i32**, i32*** @a, align 8, !dbg !49
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp10, i32** %tmp11), !dbg !50
  store i32** @c, i32*** @q, align 8, !dbg !51
  %tmp12 = load i32**, i32*** @q, align 8, !dbg !52
  %tmp13 = load i32*, i32** @c, align 8, !dbg !53
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp12, i32* %tmp13), !dbg !54
  br label %bb19, !dbg !55

bb14:                                             ; preds = %bb
  store i32*** @b, i32**** @p, align 8, !dbg !56
  %tmp15 = load i32***, i32**** @p, align 8, !dbg !58
  %tmp16 = load i32**, i32*** @b, align 8, !dbg !59
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp15, i32** %tmp16), !dbg !60
  store i32** @c, i32*** @q, align 8, !dbg !61
  %tmp17 = load i32**, i32*** @q, align 8, !dbg !62
  %tmp18 = load i32*, i32** @c, align 8, !dbg !63
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp17, i32* %tmp18), !dbg !64
  br label %bb19

bb19:                                             ; preds = %bb14, %bb9
  %tmp20 = load i32*, i32** @m, align 8, !dbg !65
  %tmp21 = load i32**, i32*** @a, align 8, !dbg !66
  store i32* %tmp20, i32** %tmp21, align 8, !dbg !67
  %tmp22 = load i32*, i32** @c, align 8, !dbg !68
  %tmp23 = load i32, i32* @d, align 4, !dbg !69
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp22, i32 %tmp23), !dbg !70
  %tmp24 = load i32***, i32**** @p, align 8, !dbg !71
  %tmp25 = load i32**, i32*** @a, align 8, !dbg !72
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp24, i32** %tmp25), !dbg !73
  %tmp26 = load i32***, i32**** @p, align 8, !dbg !74
  %tmp27 = load i32**, i32*** @b, align 8, !dbg !75
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp26, i32** %tmp27), !dbg !76
  %tmp28 = load i32**, i32*** @q, align 8, !dbg !77
  %tmp29 = load i32*, i32** @c, align 8, !dbg !78
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !79
  %tmp30 = load i32**, i32*** @b, align 8, !dbg !80
  %tmp31 = load i32*, i32** %tmp30, align 8, !dbg !81
  store i32* %tmp31, i32** @n, align 8, !dbg !82
  %tmp32 = load i32*, i32** @n, align 8, !dbg !83
  %tmp33 = load i32, i32* @d, align 4, !dbg !84
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !85
  %tmp34 = load i32***, i32**** @p, align 8, !dbg !86
  store i32** @n, i32*** %tmp34, align 8, !dbg !87
  %tmp35 = load i32**, i32*** @a, align 8, !dbg !88
  %tmp36 = load i32*, i32** @n, align 8, !dbg !89
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp35, i32* %tmp36), !dbg !90
  %tmp37 = load i32**, i32*** @b, align 8, !dbg !91
  %tmp38 = load i32*, i32** @n, align 8, !dbg !92
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp37, i32* %tmp38), !dbg !93
  %tmp39 = load i32**, i32*** @a, align 8, !dbg !94
  %tmp40 = load i32*, i32** @c, align 8, !dbg !95
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp39, i32* %tmp40), !dbg !96
  %tmp41 = load i32**, i32*** @b, align 8, !dbg !97
  %tmp42 = load i32*, i32** @c, align 8, !dbg !98
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp41, i32* %tmp42), !dbg !99
  ret i32 0, !dbg !100
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !101 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !110, metadata !DIExpression()), !dbg !109
  ret void, !dbg !111
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !112 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !120, metadata !DIExpression()), !dbg !119
  ret void, !dbg !121
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !122 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !130, metadata !DIExpression()), !dbg !129
  ret void, !dbg !131
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !132 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !135, metadata !DIExpression()), !dbg !134
  ret void, !dbg !136
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !137 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !140, metadata !DIExpression()), !dbg !139
  ret void, !dbg !141
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !3, line: 4, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase1.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !11, !13, !15, !17, !19, !21}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 4, type: !10, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!24 = !{i32 7, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"clang version 10.0.0 "}
!28 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 5, type: !29, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{!10}
!31 = !DILocation(line: 7, column: 7, scope: !28)
!32 = !DILocation(line: 8, column: 18, scope: !28)
!33 = !DILocation(line: 8, column: 20, scope: !28)
!34 = !DILocation(line: 8, column: 5, scope: !28)
!35 = !DILocation(line: 10, column: 11, scope: !28)
!36 = !DILocation(line: 10, column: 7, scope: !28)
!37 = !DILocation(line: 11, column: 18, scope: !28)
!38 = !DILocation(line: 11, column: 20, scope: !28)
!39 = !DILocation(line: 11, column: 5, scope: !28)
!40 = !DILocation(line: 12, column: 18, scope: !28)
!41 = !DILocation(line: 12, column: 20, scope: !28)
!42 = !DILocation(line: 12, column: 5, scope: !28)
!43 = !DILocation(line: 14, column: 8, scope: !44)
!44 = distinct !DILexicalBlock(scope: !28, file: !3, line: 14, column: 8)
!45 = !DILocation(line: 14, column: 8, scope: !28)
!46 = !DILocation(line: 16, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !3, line: 15, column: 5)
!48 = !DILocation(line: 17, column: 22, scope: !47)
!49 = !DILocation(line: 17, column: 24, scope: !47)
!50 = !DILocation(line: 17, column: 9, scope: !47)
!51 = !DILocation(line: 20, column: 11, scope: !47)
!52 = !DILocation(line: 21, column: 22, scope: !47)
!53 = !DILocation(line: 21, column: 24, scope: !47)
!54 = !DILocation(line: 21, column: 9, scope: !47)
!55 = !DILocation(line: 24, column: 5, scope: !47)
!56 = !DILocation(line: 27, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !44, file: !3, line: 26, column: 5)
!58 = !DILocation(line: 28, column: 22, scope: !57)
!59 = !DILocation(line: 28, column: 24, scope: !57)
!60 = !DILocation(line: 28, column: 9, scope: !57)
!61 = !DILocation(line: 31, column: 11, scope: !57)
!62 = !DILocation(line: 32, column: 22, scope: !57)
!63 = !DILocation(line: 32, column: 24, scope: !57)
!64 = !DILocation(line: 32, column: 9, scope: !57)
!65 = !DILocation(line: 40, column: 7, scope: !28)
!66 = !DILocation(line: 40, column: 3, scope: !28)
!67 = !DILocation(line: 40, column: 5, scope: !28)
!68 = !DILocation(line: 41, column: 18, scope: !28)
!69 = !DILocation(line: 41, column: 20, scope: !28)
!70 = !DILocation(line: 41, column: 5, scope: !28)
!71 = !DILocation(line: 42, column: 17, scope: !28)
!72 = !DILocation(line: 42, column: 19, scope: !28)
!73 = !DILocation(line: 42, column: 5, scope: !28)
!74 = !DILocation(line: 43, column: 17, scope: !28)
!75 = !DILocation(line: 43, column: 19, scope: !28)
!76 = !DILocation(line: 43, column: 5, scope: !28)
!77 = !DILocation(line: 44, column: 18, scope: !28)
!78 = !DILocation(line: 44, column: 20, scope: !28)
!79 = !DILocation(line: 44, column: 5, scope: !28)
!80 = !DILocation(line: 50, column: 7, scope: !28)
!81 = !DILocation(line: 50, column: 6, scope: !28)
!82 = !DILocation(line: 50, column: 4, scope: !28)
!83 = !DILocation(line: 51, column: 15, scope: !28)
!84 = !DILocation(line: 51, column: 17, scope: !28)
!85 = !DILocation(line: 51, column: 2, scope: !28)
!86 = !DILocation(line: 53, column: 3, scope: !28)
!87 = !DILocation(line: 53, column: 5, scope: !28)
!88 = !DILocation(line: 54, column: 14, scope: !28)
!89 = !DILocation(line: 54, column: 16, scope: !28)
!90 = !DILocation(line: 54, column: 2, scope: !28)
!91 = !DILocation(line: 55, column: 14, scope: !28)
!92 = !DILocation(line: 55, column: 16, scope: !28)
!93 = !DILocation(line: 55, column: 2, scope: !28)
!94 = !DILocation(line: 56, column: 17, scope: !28)
!95 = !DILocation(line: 56, column: 19, scope: !28)
!96 = !DILocation(line: 56, column: 5, scope: !28)
!97 = !DILocation(line: 57, column: 14, scope: !28)
!98 = !DILocation(line: 57, column: 16, scope: !28)
!99 = !DILocation(line: 57, column: 2, scope: !28)
!100 = !DILocation(line: 60, column: 1, scope: !28)
!101 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !102, file: !102, line: 6, type: !103, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !105, retainedNodes: !4)
!102 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !9, !10}
!105 = !{!106, !107}
!106 = !DITemplateTypeParameter(name: "T", type: !9)
!107 = !DITemplateTypeParameter(name: "U", type: !10)
!108 = !DILocalVariable(arg: 1, scope: !101, file: !102, line: 6, type: !9)
!109 = !DILocation(line: 0, scope: !101)
!110 = !DILocalVariable(arg: 2, scope: !101, file: !102, line: 6, type: !10)
!111 = !DILocation(line: 9, column: 1, scope: !101)
!112 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !102, file: !102, line: 6, type: !113, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !115, retainedNodes: !4)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !8, !9}
!115 = !{!116, !117}
!116 = !DITemplateTypeParameter(name: "T", type: !8)
!117 = !DITemplateTypeParameter(name: "U", type: !9)
!118 = !DILocalVariable(arg: 1, scope: !112, file: !102, line: 6, type: !8)
!119 = !DILocation(line: 0, scope: !112)
!120 = !DILocalVariable(arg: 2, scope: !112, file: !102, line: 6, type: !9)
!121 = !DILocation(line: 9, column: 1, scope: !112)
!122 = distinct !DISubprogram(name: "MustPointsTo<int ***, int **>", linkageName: "_Z12MustPointsToIPPPiS1_EvT_T0_", scope: !102, file: !102, line: 6, type: !123, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !125, retainedNodes: !4)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !23, !8}
!125 = !{!126, !127}
!126 = !DITemplateTypeParameter(name: "T", type: !23)
!127 = !DITemplateTypeParameter(name: "U", type: !8)
!128 = !DILocalVariable(arg: 1, scope: !122, file: !102, line: 6, type: !23)
!129 = !DILocation(line: 0, scope: !122)
!130 = !DILocalVariable(arg: 2, scope: !122, file: !102, line: 6, type: !8)
!131 = !DILocation(line: 9, column: 1, scope: !122)
!132 = distinct !DISubprogram(name: "MayPointsTo<int ***, int **>", linkageName: "_Z11MayPointsToIPPPiS1_EvT_T0_", scope: !102, file: !102, line: 16, type: !123, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !125, retainedNodes: !4)
!133 = !DILocalVariable(arg: 1, scope: !132, file: !102, line: 16, type: !23)
!134 = !DILocation(line: 0, scope: !132)
!135 = !DILocalVariable(arg: 2, scope: !132, file: !102, line: 16, type: !8)
!136 = !DILocation(line: 19, column: 1, scope: !132)
!137 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !102, file: !102, line: 16, type: !113, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !115, retainedNodes: !4)
!138 = !DILocalVariable(arg: 1, scope: !137, file: !102, line: 16, type: !8)
!139 = !DILocation(line: 0, scope: !137)
!140 = !DILocalVariable(arg: 2, scope: !137, file: !102, line: 16, type: !9)
!141 = !DILocation(line: 19, column: 1, scope: !137)
