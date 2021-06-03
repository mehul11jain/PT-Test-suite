; ModuleID = 'testcase4.ll'
source_filename = "testcase4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

$_Z11MayPointsToIPiiEvT_T0_ = comdat any

@x = dso_local global i32* null, align 8, !dbg !0
@y = dso_local global i32* null, align 8, !dbg !6
@w = dso_local global i32* null, align 8, !dbg !10
@p = dso_local global i32** null, align 8, !dbg !12
@q = dso_local global i32** null, align 8, !dbg !15
@a = dso_local global i32 0, align 4, !dbg !17
@b = dso_local global i32 0, align 4, !dbg !19
@c = dso_local global i32 0, align 4, !dbg !21
@d = dso_local global i32 0, align 4, !dbg !23

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !29 {
bb:
  store i32** @x, i32*** @p, align 8, !dbg !32
  %tmp1 = load i32**, i32*** @p, align 8, !dbg !33
  %tmp2 = load i32*, i32** @x, align 8, !dbg !34
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp1, i32* %tmp2), !dbg !35
  store i32* @a, i32** @x, align 8, !dbg !36
  %tmp3 = load i32**, i32*** @p, align 8, !dbg !37
  %tmp4 = load i32*, i32** @x, align 8, !dbg !38
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp3, i32* %tmp4), !dbg !39
  %tmp5 = load i32*, i32** @x, align 8, !dbg !40
  %tmp6 = load i32, i32* @a, align 4, !dbg !41
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp5, i32 %tmp6), !dbg !42
  %tmp7 = load i32, i32* @a, align 4, !dbg !43
  switch i32 %tmp7, label %bb26 [
    i32 1, label %bb8
    i32 2, label %bb13
    i32 3, label %bb18
    i32 5, label %bb25
  ], !dbg !44

bb8:                                              ; preds = %bb
  store i32* @b, i32** @x, align 8, !dbg !45
  %tmp9 = load i32*, i32** @x, align 8, !dbg !47
  %tmp10 = load i32, i32* @b, align 4, !dbg !48
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp9, i32 %tmp10), !dbg !49
  %tmp11 = load i32**, i32*** @p, align 8, !dbg !50
  %tmp12 = load i32*, i32** @x, align 8, !dbg !51
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp11, i32* %tmp12), !dbg !52
  br label %bb33, !dbg !53

bb13:                                             ; preds = %bb
  store i32* @c, i32** @x, align 8, !dbg !54
  %tmp14 = load i32*, i32** @x, align 8, !dbg !55
  %tmp15 = load i32, i32* @c, align 4, !dbg !56
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp14, i32 %tmp15), !dbg !57
  %tmp16 = load i32**, i32*** @p, align 8, !dbg !58
  %tmp17 = load i32*, i32** @x, align 8, !dbg !59
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp16, i32* %tmp17), !dbg !60
  br label %bb33, !dbg !61

bb18:                                             ; preds = %bb
  store i32* @a, i32** @y, align 8, !dbg !62
  %tmp19 = load i32*, i32** @y, align 8, !dbg !63
  %tmp20 = load i32, i32* @a, align 4, !dbg !64
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp19, i32 %tmp20), !dbg !65
  %tmp21 = load i32*, i32** @x, align 8, !dbg !66
  %tmp22 = load i32, i32* @a, align 4, !dbg !67
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp21, i32 %tmp22), !dbg !68
  %tmp23 = load i32**, i32*** @p, align 8, !dbg !69
  %tmp24 = load i32*, i32** @x, align 8, !dbg !70
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp23, i32* %tmp24), !dbg !71
  br label %bb33, !dbg !72

bb25:                                             ; preds = %bb
  br label %bb33, !dbg !73

bb26:                                             ; preds = %bb
  store i32* @b, i32** @y, align 8, !dbg !74
  %tmp27 = load i32*, i32** @y, align 8, !dbg !75
  %tmp28 = load i32, i32* @b, align 4, !dbg !76
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp27, i32 %tmp28), !dbg !77
  %tmp29 = load i32*, i32** @x, align 8, !dbg !78
  %tmp30 = load i32, i32* @a, align 4, !dbg !79
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp29, i32 %tmp30), !dbg !80
  %tmp31 = load i32**, i32*** @p, align 8, !dbg !81
  %tmp32 = load i32*, i32** @x, align 8, !dbg !82
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp31, i32* %tmp32), !dbg !83
  br label %bb33, !dbg !84

bb33:                                             ; preds = %bb26, %bb25, %bb18, %bb13, %bb8
  %tmp34 = load i32**, i32*** @p, align 8, !dbg !85
  store i32* @d, i32** %tmp34, align 8, !dbg !86
  %tmp35 = load i32*, i32** @x, align 8, !dbg !87
  %tmp36 = load i32, i32* @d, align 4, !dbg !88
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp35, i32 %tmp36), !dbg !89
  %tmp37 = load i32*, i32** @y, align 8, !dbg !90
  %tmp38 = load i32, i32* @a, align 4, !dbg !91
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp37, i32 %tmp38), !dbg !92
  %tmp39 = load i32*, i32** @y, align 8, !dbg !93
  %tmp40 = load i32, i32* @b, align 4, !dbg !94
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp39, i32 %tmp40), !dbg !95
  %tmp41 = load i32**, i32*** @p, align 8, !dbg !96
  %tmp42 = load i32*, i32** @x, align 8, !dbg !97
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp41, i32* %tmp42), !dbg !98
  ret i32 0, !dbg !99
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !100 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !109, metadata !DIExpression()), !dbg !108
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !111 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !119, metadata !DIExpression()), !dbg !118
  ret void, !dbg !120
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !121 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !124, metadata !DIExpression()), !dbg !123
  ret void, !dbg !125
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
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase4.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !10, !12, !15, !17, !19, !21, !23}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "w", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !3, line: 3, type: !14, isLocal: false, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 3, type: !14, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.0 "}
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 4, type: !30, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!9}
!32 = !DILocation(line: 5, column: 7, scope: !29)
!33 = !DILocation(line: 6, column: 15, scope: !29)
!34 = !DILocation(line: 6, column: 17, scope: !29)
!35 = !DILocation(line: 6, column: 2, scope: !29)
!36 = !DILocation(line: 7, column: 4, scope: !29)
!37 = !DILocation(line: 8, column: 18, scope: !29)
!38 = !DILocation(line: 8, column: 20, scope: !29)
!39 = !DILocation(line: 8, column: 5, scope: !29)
!40 = !DILocation(line: 9, column: 15, scope: !29)
!41 = !DILocation(line: 9, column: 17, scope: !29)
!42 = !DILocation(line: 9, column: 2, scope: !29)
!43 = !DILocation(line: 12, column: 9, scope: !29)
!44 = !DILocation(line: 12, column: 2, scope: !29)
!45 = !DILocation(line: 14, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !3, line: 12, column: 11)
!47 = !DILocation(line: 15, column: 17, scope: !46)
!48 = !DILocation(line: 15, column: 19, scope: !46)
!49 = !DILocation(line: 15, column: 4, scope: !46)
!50 = !DILocation(line: 16, column: 26, scope: !46)
!51 = !DILocation(line: 16, column: 28, scope: !46)
!52 = !DILocation(line: 16, column: 13, scope: !46)
!53 = !DILocation(line: 17, column: 4, scope: !46)
!54 = !DILocation(line: 19, column: 6, scope: !46)
!55 = !DILocation(line: 20, column: 17, scope: !46)
!56 = !DILocation(line: 20, column: 19, scope: !46)
!57 = !DILocation(line: 20, column: 4, scope: !46)
!58 = !DILocation(line: 21, column: 26, scope: !46)
!59 = !DILocation(line: 21, column: 28, scope: !46)
!60 = !DILocation(line: 21, column: 13, scope: !46)
!61 = !DILocation(line: 22, column: 4, scope: !46)
!62 = !DILocation(line: 24, column: 6, scope: !46)
!63 = !DILocation(line: 25, column: 17, scope: !46)
!64 = !DILocation(line: 25, column: 19, scope: !46)
!65 = !DILocation(line: 25, column: 4, scope: !46)
!66 = !DILocation(line: 26, column: 26, scope: !46)
!67 = !DILocation(line: 26, column: 28, scope: !46)
!68 = !DILocation(line: 26, column: 13, scope: !46)
!69 = !DILocation(line: 27, column: 26, scope: !46)
!70 = !DILocation(line: 27, column: 28, scope: !46)
!71 = !DILocation(line: 27, column: 13, scope: !46)
!72 = !DILocation(line: 28, column: 4, scope: !46)
!73 = !DILocation(line: 30, column: 4, scope: !46)
!74 = !DILocation(line: 32, column: 6, scope: !46)
!75 = !DILocation(line: 33, column: 17, scope: !46)
!76 = !DILocation(line: 33, column: 19, scope: !46)
!77 = !DILocation(line: 33, column: 4, scope: !46)
!78 = !DILocation(line: 34, column: 26, scope: !46)
!79 = !DILocation(line: 34, column: 28, scope: !46)
!80 = !DILocation(line: 34, column: 13, scope: !46)
!81 = !DILocation(line: 35, column: 26, scope: !46)
!82 = !DILocation(line: 35, column: 28, scope: !46)
!83 = !DILocation(line: 35, column: 13, scope: !46)
!84 = !DILocation(line: 36, column: 4, scope: !46)
!85 = !DILocation(line: 46, column: 3, scope: !29)
!86 = !DILocation(line: 46, column: 5, scope: !29)
!87 = !DILocation(line: 47, column: 18, scope: !29)
!88 = !DILocation(line: 47, column: 20, scope: !29)
!89 = !DILocation(line: 47, column: 5, scope: !29)
!90 = !DILocation(line: 48, column: 14, scope: !29)
!91 = !DILocation(line: 48, column: 16, scope: !29)
!92 = !DILocation(line: 48, column: 2, scope: !29)
!93 = !DILocation(line: 49, column: 14, scope: !29)
!94 = !DILocation(line: 49, column: 16, scope: !29)
!95 = !DILocation(line: 49, column: 2, scope: !29)
!96 = !DILocation(line: 50, column: 15, scope: !29)
!97 = !DILocation(line: 50, column: 17, scope: !29)
!98 = !DILocation(line: 50, column: 2, scope: !29)
!99 = !DILocation(line: 52, column: 1, scope: !29)
!100 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !101, file: !101, line: 6, type: !102, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !104, retainedNodes: !4)
!101 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!102 = !DISubroutineType(types: !103)
!103 = !{null, !14, !8}
!104 = !{!105, !106}
!105 = !DITemplateTypeParameter(name: "T", type: !14)
!106 = !DITemplateTypeParameter(name: "U", type: !8)
!107 = !DILocalVariable(arg: 1, scope: !100, file: !101, line: 6, type: !14)
!108 = !DILocation(line: 0, scope: !100)
!109 = !DILocalVariable(arg: 2, scope: !100, file: !101, line: 6, type: !8)
!110 = !DILocation(line: 9, column: 1, scope: !100)
!111 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !101, file: !101, line: 6, type: !112, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !114, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !8, !9}
!114 = !{!115, !116}
!115 = !DITemplateTypeParameter(name: "T", type: !8)
!116 = !DITemplateTypeParameter(name: "U", type: !9)
!117 = !DILocalVariable(arg: 1, scope: !111, file: !101, line: 6, type: !8)
!118 = !DILocation(line: 0, scope: !111)
!119 = !DILocalVariable(arg: 2, scope: !111, file: !101, line: 6, type: !9)
!120 = !DILocation(line: 9, column: 1, scope: !111)
!121 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !101, file: !101, line: 16, type: !112, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !114, retainedNodes: !4)
!122 = !DILocalVariable(arg: 1, scope: !121, file: !101, line: 16, type: !8)
!123 = !DILocation(line: 0, scope: !121)
!124 = !DILocalVariable(arg: 2, scope: !121, file: !101, line: 16, type: !9)
!125 = !DILocation(line: 19, column: 1, scope: !121)
