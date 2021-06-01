; ModuleID = 'testcase1.ll'
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

bb1:                                              ; preds = %bb20, %bb
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
  %tmp8 = load i32**, i32*** @q, align 8, !dbg !45
  store i32* @m, i32** %tmp8, align 8, !dbg !46
  %tmp9 = load i32*, i32** @b, align 8, !dbg !47
  %tmp10 = load i32, i32* @m, align 4, !dbg !48
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp9, i32 %tmp10), !dbg !49
  %tmp11 = load i32*, i32** @a, align 8, !dbg !50
  %tmp12 = load i32, i32* @m, align 4, !dbg !51
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp11, i32 %tmp12), !dbg !52
  %tmp13 = load i32, i32* @m, align 4, !dbg !53
  %tmp14 = icmp ne i32 %tmp13, 0, !dbg !53
  br i1 %tmp14, label %bb15, label %bb18, !dbg !55

bb15:                                             ; preds = %bb1
  store i32** @b, i32*** @q, align 8, !dbg !56
  %tmp16 = load i32**, i32*** @q, align 8, !dbg !58
  %tmp17 = load i32*, i32** @b, align 8, !dbg !59
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp16, i32* %tmp17), !dbg !60
  br label %bb19, !dbg !61

bb18:                                             ; preds = %bb1
  br label %bb21, !dbg !62

bb19:                                             ; preds = %bb15
  br label %bb20, !dbg !64

bb20:                                             ; preds = %bb19
  br i1 true, label %bb1, label %bb21, !dbg !64, !llvm.loop !65

bb21:                                             ; preds = %bb20, %bb18
  %tmp22 = load i32**, i32*** @q, align 8, !dbg !67
  %tmp23 = load i32*, i32** %tmp22, align 8, !dbg !68
  store i32* %tmp23, i32** @e, align 8, !dbg !69
  %tmp24 = load i32**, i32*** @q, align 8, !dbg !70
  %tmp25 = load i32*, i32** @b, align 8, !dbg !71
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp24, i32* %tmp25), !dbg !72
  %tmp26 = load i32**, i32*** @q, align 8, !dbg !73
  %tmp27 = load i32*, i32** @a, align 8, !dbg !74
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp26, i32* %tmp27), !dbg !75
  %tmp28 = load i32*, i32** @a, align 8, !dbg !76
  %tmp29 = load i32, i32* @m, align 4, !dbg !77
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp28, i32 %tmp29), !dbg !78
  %tmp30 = load i32*, i32** @b, align 8, !dbg !79
  %tmp31 = load i32, i32* @m, align 4, !dbg !80
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp30, i32 %tmp31), !dbg !81
  %tmp32 = load i32*, i32** @e, align 8, !dbg !82
  %tmp33 = load i32, i32* @m, align 4, !dbg !83
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !84
  %tmp34 = load i32**, i32*** @r, align 8, !dbg !85
  %tmp35 = load i32*, i32** @a, align 8, !dbg !86
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp34, i32* %tmp35), !dbg !87
  store i32** @e, i32*** @q, align 8, !dbg !88
  %tmp36 = load i32**, i32*** @q, align 8, !dbg !89
  %tmp37 = load i32*, i32** @e, align 8, !dbg !90
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp36, i32* %tmp37), !dbg !91
  ret i32 0, !dbg !92
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !93 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !102, metadata !DIExpression()), !dbg !101
  ret void, !dbg !103
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !104 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !107, metadata !DIExpression()), !dbg !106
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !109 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !117, metadata !DIExpression()), !dbg !116
  ret void, !dbg !118
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !119 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !122, metadata !DIExpression()), !dbg !121
  ret void, !dbg !123
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
!45 = !DILocation(line: 18, column: 10, scope: !35)
!46 = !DILocation(line: 18, column: 12, scope: !35)
!47 = !DILocation(line: 19, column: 21, scope: !35)
!48 = !DILocation(line: 19, column: 23, scope: !35)
!49 = !DILocation(line: 19, column: 9, scope: !35)
!50 = !DILocation(line: 20, column: 21, scope: !35)
!51 = !DILocation(line: 20, column: 23, scope: !35)
!52 = !DILocation(line: 20, column: 9, scope: !35)
!53 = !DILocation(line: 21, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !35, file: !3, line: 21, column: 13)
!55 = !DILocation(line: 21, column: 13, scope: !35)
!56 = !DILocation(line: 23, column: 15, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !3, line: 22, column: 9)
!58 = !DILocation(line: 24, column: 26, scope: !57)
!59 = !DILocation(line: 24, column: 28, scope: !57)
!60 = !DILocation(line: 24, column: 13, scope: !57)
!61 = !DILocation(line: 25, column: 9, scope: !57)
!62 = !DILocation(line: 28, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !3, line: 27, column: 9)
!64 = !DILocation(line: 31, column: 5, scope: !35)
!65 = distinct !{!65, !33, !66}
!66 = !DILocation(line: 31, column: 15, scope: !29)
!67 = !DILocation(line: 40, column: 10, scope: !29)
!68 = !DILocation(line: 40, column: 9, scope: !29)
!69 = !DILocation(line: 40, column: 7, scope: !29)
!70 = !DILocation(line: 43, column: 17, scope: !29)
!71 = !DILocation(line: 43, column: 19, scope: !29)
!72 = !DILocation(line: 43, column: 5, scope: !29)
!73 = !DILocation(line: 44, column: 17, scope: !29)
!74 = !DILocation(line: 44, column: 19, scope: !29)
!75 = !DILocation(line: 44, column: 5, scope: !29)
!76 = !DILocation(line: 45, column: 17, scope: !29)
!77 = !DILocation(line: 45, column: 19, scope: !29)
!78 = !DILocation(line: 45, column: 5, scope: !29)
!79 = !DILocation(line: 46, column: 17, scope: !29)
!80 = !DILocation(line: 46, column: 19, scope: !29)
!81 = !DILocation(line: 46, column: 5, scope: !29)
!82 = !DILocation(line: 47, column: 18, scope: !29)
!83 = !DILocation(line: 47, column: 20, scope: !29)
!84 = !DILocation(line: 47, column: 5, scope: !29)
!85 = !DILocation(line: 48, column: 18, scope: !29)
!86 = !DILocation(line: 48, column: 20, scope: !29)
!87 = !DILocation(line: 48, column: 5, scope: !29)
!88 = !DILocation(line: 52, column: 7, scope: !29)
!89 = !DILocation(line: 53, column: 18, scope: !29)
!90 = !DILocation(line: 53, column: 20, scope: !29)
!91 = !DILocation(line: 53, column: 5, scope: !29)
!92 = !DILocation(line: 54, column: 1, scope: !29)
!93 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !94, file: !94, line: 16, type: !95, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !97, retainedNodes: !4)
!94 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!95 = !DISubroutineType(types: !96)
!96 = !{null, !8, !9}
!97 = !{!98, !99}
!98 = !DITemplateTypeParameter(name: "T", type: !8)
!99 = !DITemplateTypeParameter(name: "U", type: !9)
!100 = !DILocalVariable(arg: 1, scope: !93, file: !94, line: 16, type: !8)
!101 = !DILocation(line: 0, scope: !93)
!102 = !DILocalVariable(arg: 2, scope: !93, file: !94, line: 16, type: !9)
!103 = !DILocation(line: 19, column: 1, scope: !93)
!104 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !94, file: !94, line: 6, type: !95, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !97, retainedNodes: !4)
!105 = !DILocalVariable(arg: 1, scope: !104, file: !94, line: 6, type: !8)
!106 = !DILocation(line: 0, scope: !104)
!107 = !DILocalVariable(arg: 2, scope: !104, file: !94, line: 6, type: !9)
!108 = !DILocation(line: 9, column: 1, scope: !104)
!109 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !94, file: !94, line: 16, type: !110, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !112, retainedNodes: !4)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !9, !10}
!112 = !{!113, !114}
!113 = !DITemplateTypeParameter(name: "T", type: !9)
!114 = !DITemplateTypeParameter(name: "U", type: !10)
!115 = !DILocalVariable(arg: 1, scope: !109, file: !94, line: 16, type: !9)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocalVariable(arg: 2, scope: !109, file: !94, line: 16, type: !10)
!118 = !DILocation(line: 19, column: 1, scope: !109)
!119 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !94, file: !94, line: 6, type: !110, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !112, retainedNodes: !4)
!120 = !DILocalVariable(arg: 1, scope: !119, file: !94, line: 6, type: !9)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(arg: 2, scope: !119, file: !94, line: 6, type: !10)
!123 = !DILocation(line: 9, column: 1, scope: !119)
