; ModuleID = 'testcase2.ll'
source_filename = "testcase2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z11MayPointsToIPiiEvT_T0_ = comdat any

$_Z11MayPointsToIPPiS0_EvT_T0_ = comdat any

@a = dso_local global i32* null, align 8, !dbg !0
@b = dso_local global i32* null, align 8, !dbg !6
@c = dso_local global i32** null, align 8, !dbg !10
@x = dso_local global i32 0, align 4, !dbg !13
@y = dso_local global i32 0, align 4, !dbg !15
@w = dso_local global i32* null, align 8, !dbg !17
@s = dso_local global i32** null, align 8, !dbg !19
@u = dso_local global i32 0, align 4, !dbg !21

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !27 {
bb:
  store i32* @x, i32** @a, align 8, !dbg !30
  %tmp1 = load i32*, i32** @a, align 8, !dbg !31
  %tmp2 = load i32, i32* @x, align 4, !dbg !32
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp1, i32 %tmp2), !dbg !33
  store i32* @y, i32** @b, align 8, !dbg !34
  %tmp3 = load i32*, i32** @b, align 8, !dbg !35
  %tmp4 = load i32, i32* @y, align 4, !dbg !36
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp3, i32 %tmp4), !dbg !37
  store i32** @a, i32*** @c, align 8, !dbg !38
  %tmp5 = load i32**, i32*** @c, align 8, !dbg !39
  %tmp6 = load i32*, i32** @a, align 8, !dbg !40
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp5, i32* %tmp6), !dbg !41
  %tmp7 = load i32**, i32*** @c, align 8, !dbg !42
  store i32** %tmp7, i32*** @s, align 8, !dbg !43
  %tmp8 = load i32**, i32*** @s, align 8, !dbg !44
  %tmp9 = load i32*, i32** @a, align 8, !dbg !45
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp8, i32* %tmp9), !dbg !46
  store i32** @w, i32*** @s, align 8, !dbg !47
  %tmp10 = load i32**, i32*** @s, align 8, !dbg !48
  %tmp11 = load i32*, i32** @w, align 8, !dbg !49
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp10, i32* %tmp11), !dbg !50
  store i32* @u, i32** @w, align 8, !dbg !51
  %tmp12 = load i32*, i32** @w, align 8, !dbg !52
  %tmp13 = load i32, i32* @u, align 4, !dbg !53
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp12, i32 %tmp13), !dbg !54
  store i32 9, i32* @u, align 4, !dbg !55
  %tmp14 = load i32, i32* @x, align 4, !dbg !56
  %tmp15 = icmp eq i32 %tmp14, 5, !dbg !58
  br i1 %tmp15, label %bb16, label %bb22, !dbg !59

bb16:                                             ; preds = %bb
  %tmp17 = load i32**, i32*** @c, align 8, !dbg !60
  store i32* @y, i32** %tmp17, align 8, !dbg !62
  %tmp18 = load i32*, i32** @a, align 8, !dbg !63
  %tmp19 = load i32, i32* @y, align 4, !dbg !64
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp18, i32 %tmp19), !dbg !65
  store i32** @a, i32*** @s, align 8, !dbg !66
  %tmp20 = load i32**, i32*** @s, align 8, !dbg !67
  %tmp21 = load i32*, i32** @a, align 8, !dbg !68
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp20, i32* %tmp21), !dbg !69
  br label %bb27, !dbg !70

bb22:                                             ; preds = %bb
  store i32* @x, i32** @b, align 8, !dbg !71
  %tmp23 = load i32*, i32** @b, align 8, !dbg !73
  %tmp24 = load i32, i32* @x, align 4, !dbg !74
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp23, i32 %tmp24), !dbg !75
  store i32** @b, i32*** @s, align 8, !dbg !76
  %tmp25 = load i32**, i32*** @s, align 8, !dbg !77
  %tmp26 = load i32*, i32** @b, align 8, !dbg !78
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp25, i32* %tmp26), !dbg !79
  br label %bb27

bb27:                                             ; preds = %bb22, %bb16
  br label %bb28, !dbg !80

bb28:                                             ; preds = %bb31, %bb27
  %tmp29 = load i32, i32* @u, align 4, !dbg !81
  %tmp30 = icmp sgt i32 %tmp29, 10, !dbg !82
  br i1 %tmp30, label %bb31, label %bb51, !dbg !80

bb31:                                             ; preds = %bb28
  %tmp32 = load i32**, i32*** @s, align 8, !dbg !83
  store i32* @u, i32** %tmp32, align 8, !dbg !85
  %tmp33 = load i32*, i32** @a, align 8, !dbg !86
  %tmp34 = load i32, i32* @x, align 4, !dbg !87
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp33, i32 %tmp34), !dbg !88
  %tmp35 = load i32*, i32** @a, align 8, !dbg !89
  %tmp36 = load i32, i32* @y, align 4, !dbg !90
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp35, i32 %tmp36), !dbg !91
  %tmp37 = load i32*, i32** @b, align 8, !dbg !92
  %tmp38 = load i32, i32* @x, align 4, !dbg !93
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp37, i32 %tmp38), !dbg !94
  %tmp39 = load i32*, i32** @b, align 8, !dbg !95
  %tmp40 = load i32, i32* @y, align 4, !dbg !96
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp39, i32 %tmp40), !dbg !97
  %tmp41 = load i32**, i32*** @s, align 8, !dbg !98
  %tmp42 = load i32*, i32** @a, align 8, !dbg !99
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp41, i32* %tmp42), !dbg !100
  %tmp43 = load i32**, i32*** @s, align 8, !dbg !101
  %tmp44 = load i32*, i32** @b, align 8, !dbg !102
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp43, i32* %tmp44), !dbg !103
  %tmp45 = load i32*, i32** @a, align 8, !dbg !104
  %tmp46 = load i32, i32* @u, align 4, !dbg !105
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp45, i32 %tmp46), !dbg !106
  %tmp47 = load i32*, i32** @b, align 8, !dbg !107
  %tmp48 = load i32, i32* @u, align 4, !dbg !108
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp47, i32 %tmp48), !dbg !109
  %tmp49 = load i32, i32* @u, align 4, !dbg !110
  %tmp50 = add nsw i32 %tmp49, -1, !dbg !110
  store i32 %tmp50, i32* @u, align 4, !dbg !110
  br label %bb28, !dbg !80, !llvm.loop !111

bb51:                                             ; preds = %bb28
  ret i32 0, !dbg !113
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !114 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !123, metadata !DIExpression()), !dbg !122
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !125 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !133, metadata !DIExpression()), !dbg !132
  ret void, !dbg !134
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !135 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !138, metadata !DIExpression()), !dbg !137
  ret void, !dbg !139
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !140 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !143, metadata !DIExpression()), !dbg !142
  ret void, !dbg !144
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase2.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !10, !13, !15, !17, !19, !21}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 5, type: !12, isLocal: false, isDefinition: true)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 7, type: !9, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 7, type: !9, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "w", scope: !2, file: !3, line: 9, type: !8, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 10, type: !12, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 11, type: !9, isLocal: false, isDefinition: true)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 10.0.0 "}
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 12, type: !28, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!9}
!30 = !DILocation(line: 15, column: 6, scope: !27)
!31 = !DILocation(line: 16, column: 18, scope: !27)
!32 = !DILocation(line: 16, column: 20, scope: !27)
!33 = !DILocation(line: 16, column: 5, scope: !27)
!34 = !DILocation(line: 20, column: 6, scope: !27)
!35 = !DILocation(line: 21, column: 18, scope: !27)
!36 = !DILocation(line: 21, column: 20, scope: !27)
!37 = !DILocation(line: 21, column: 5, scope: !27)
!38 = !DILocation(line: 25, column: 6, scope: !27)
!39 = !DILocation(line: 26, column: 18, scope: !27)
!40 = !DILocation(line: 26, column: 20, scope: !27)
!41 = !DILocation(line: 26, column: 5, scope: !27)
!42 = !DILocation(line: 31, column: 9, scope: !27)
!43 = !DILocation(line: 31, column: 7, scope: !27)
!44 = !DILocation(line: 32, column: 18, scope: !27)
!45 = !DILocation(line: 32, column: 20, scope: !27)
!46 = !DILocation(line: 32, column: 5, scope: !27)
!47 = !DILocation(line: 36, column: 6, scope: !27)
!48 = !DILocation(line: 37, column: 18, scope: !27)
!49 = !DILocation(line: 37, column: 20, scope: !27)
!50 = !DILocation(line: 37, column: 5, scope: !27)
!51 = !DILocation(line: 41, column: 6, scope: !27)
!52 = !DILocation(line: 42, column: 18, scope: !27)
!53 = !DILocation(line: 42, column: 20, scope: !27)
!54 = !DILocation(line: 42, column: 5, scope: !27)
!55 = !DILocation(line: 47, column: 7, scope: !27)
!56 = !DILocation(line: 49, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !27, file: !3, line: 49, column: 8)
!58 = !DILocation(line: 49, column: 9, scope: !57)
!59 = !DILocation(line: 49, column: 8, scope: !27)
!60 = !DILocation(line: 51, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !3, line: 50, column: 5)
!62 = !DILocation(line: 51, column: 9, scope: !61)
!63 = !DILocation(line: 52, column: 22, scope: !61)
!64 = !DILocation(line: 52, column: 24, scope: !61)
!65 = !DILocation(line: 52, column: 9, scope: !61)
!66 = !DILocation(line: 56, column: 10, scope: !61)
!67 = !DILocation(line: 57, column: 22, scope: !61)
!68 = !DILocation(line: 57, column: 24, scope: !61)
!69 = !DILocation(line: 57, column: 9, scope: !61)
!70 = !DILocation(line: 60, column: 5, scope: !61)
!71 = !DILocation(line: 63, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !57, file: !3, line: 62, column: 5)
!73 = !DILocation(line: 64, column: 22, scope: !72)
!74 = !DILocation(line: 64, column: 24, scope: !72)
!75 = !DILocation(line: 64, column: 9, scope: !72)
!76 = !DILocation(line: 68, column: 10, scope: !72)
!77 = !DILocation(line: 69, column: 22, scope: !72)
!78 = !DILocation(line: 69, column: 24, scope: !72)
!79 = !DILocation(line: 69, column: 9, scope: !72)
!80 = !DILocation(line: 89, column: 5, scope: !27)
!81 = !DILocation(line: 89, column: 11, scope: !27)
!82 = !DILocation(line: 89, column: 12, scope: !27)
!83 = !DILocation(line: 92, column: 4, scope: !84)
!84 = distinct !DILexicalBlock(scope: !27, file: !3, line: 90, column: 5)
!85 = !DILocation(line: 92, column: 6, scope: !84)
!86 = !DILocation(line: 94, column: 15, scope: !84)
!87 = !DILocation(line: 94, column: 17, scope: !84)
!88 = !DILocation(line: 94, column: 3, scope: !84)
!89 = !DILocation(line: 95, column: 15, scope: !84)
!90 = !DILocation(line: 95, column: 17, scope: !84)
!91 = !DILocation(line: 95, column: 3, scope: !84)
!92 = !DILocation(line: 96, column: 15, scope: !84)
!93 = !DILocation(line: 96, column: 17, scope: !84)
!94 = !DILocation(line: 96, column: 3, scope: !84)
!95 = !DILocation(line: 97, column: 15, scope: !84)
!96 = !DILocation(line: 97, column: 17, scope: !84)
!97 = !DILocation(line: 97, column: 3, scope: !84)
!98 = !DILocation(line: 98, column: 15, scope: !84)
!99 = !DILocation(line: 98, column: 17, scope: !84)
!100 = !DILocation(line: 98, column: 3, scope: !84)
!101 = !DILocation(line: 99, column: 15, scope: !84)
!102 = !DILocation(line: 99, column: 17, scope: !84)
!103 = !DILocation(line: 99, column: 3, scope: !84)
!104 = !DILocation(line: 102, column: 21, scope: !84)
!105 = !DILocation(line: 102, column: 23, scope: !84)
!106 = !DILocation(line: 102, column: 9, scope: !84)
!107 = !DILocation(line: 103, column: 21, scope: !84)
!108 = !DILocation(line: 103, column: 23, scope: !84)
!109 = !DILocation(line: 103, column: 9, scope: !84)
!110 = !DILocation(line: 106, column: 4, scope: !84)
!111 = distinct !{!111, !80, !112}
!112 = !DILocation(line: 107, column: 5, scope: !27)
!113 = !DILocation(line: 108, column: 5, scope: !27)
!114 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !115, file: !115, line: 6, type: !116, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !118, retainedNodes: !4)
!115 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !8, !9}
!118 = !{!119, !120}
!119 = !DITemplateTypeParameter(name: "T", type: !8)
!120 = !DITemplateTypeParameter(name: "U", type: !9)
!121 = !DILocalVariable(arg: 1, scope: !114, file: !115, line: 6, type: !8)
!122 = !DILocation(line: 0, scope: !114)
!123 = !DILocalVariable(arg: 2, scope: !114, file: !115, line: 6, type: !9)
!124 = !DILocation(line: 9, column: 1, scope: !114)
!125 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !115, file: !115, line: 6, type: !126, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !128, retainedNodes: !4)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !12, !8}
!128 = !{!129, !130}
!129 = !DITemplateTypeParameter(name: "T", type: !12)
!130 = !DITemplateTypeParameter(name: "U", type: !8)
!131 = !DILocalVariable(arg: 1, scope: !125, file: !115, line: 6, type: !12)
!132 = !DILocation(line: 0, scope: !125)
!133 = !DILocalVariable(arg: 2, scope: !125, file: !115, line: 6, type: !8)
!134 = !DILocation(line: 9, column: 1, scope: !125)
!135 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !115, file: !115, line: 16, type: !116, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !118, retainedNodes: !4)
!136 = !DILocalVariable(arg: 1, scope: !135, file: !115, line: 16, type: !8)
!137 = !DILocation(line: 0, scope: !135)
!138 = !DILocalVariable(arg: 2, scope: !135, file: !115, line: 16, type: !9)
!139 = !DILocation(line: 19, column: 1, scope: !135)
!140 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !115, file: !115, line: 16, type: !126, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !128, retainedNodes: !4)
!141 = !DILocalVariable(arg: 1, scope: !140, file: !115, line: 16, type: !12)
!142 = !DILocation(line: 0, scope: !140)
!143 = !DILocalVariable(arg: 2, scope: !140, file: !115, line: 16, type: !8)
!144 = !DILocation(line: 19, column: 1, scope: !140)
