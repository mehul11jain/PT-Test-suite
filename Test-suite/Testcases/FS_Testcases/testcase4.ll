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

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !27 {
bb:
  store i32** @x, i32*** @p, align 8, !dbg !30
  store i32* @a, i32** @x, align 8, !dbg !31
  %tmp1 = load i32**, i32*** @p, align 8, !dbg !32
  %tmp2 = load i32*, i32** @x, align 8, !dbg !33
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp1, i32* %tmp2), !dbg !34
  %tmp3 = load i32*, i32** @x, align 8, !dbg !35
  %tmp4 = load i32, i32* @a, align 4, !dbg !36
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp3, i32 %tmp4), !dbg !37
  %tmp5 = load i32, i32* @a, align 4, !dbg !38
  switch i32 %tmp5, label %bb16 [
    i32 1, label %bb6
    i32 2, label %bb9
    i32 3, label %bb12
    i32 5, label %bb15
  ], !dbg !39

bb6:                                              ; preds = %bb
  store i32* @b, i32** @x, align 8, !dbg !40
  %tmp7 = load i32*, i32** @x, align 8, !dbg !42
  %tmp8 = load i32, i32* @b, align 4, !dbg !43
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp7, i32 %tmp8), !dbg !44
  br label %bb19, !dbg !45

bb9:                                              ; preds = %bb
  store i32* @c, i32** @x, align 8, !dbg !46
  %tmp10 = load i32*, i32** @x, align 8, !dbg !47
  %tmp11 = load i32, i32* @c, align 4, !dbg !48
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp10, i32 %tmp11), !dbg !49
  br label %bb19, !dbg !50

bb12:                                             ; preds = %bb
  store i32* @a, i32** @y, align 8, !dbg !51
  %tmp13 = load i32*, i32** @y, align 8, !dbg !52
  %tmp14 = load i32, i32* @a, align 4, !dbg !53
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp13, i32 %tmp14), !dbg !54
  br label %bb19, !dbg !55

bb15:                                             ; preds = %bb
  br label %bb19, !dbg !56

bb16:                                             ; preds = %bb
  store i32* @b, i32** @y, align 8, !dbg !57
  %tmp17 = load i32*, i32** @y, align 8, !dbg !58
  %tmp18 = load i32, i32* @b, align 4, !dbg !59
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp17, i32 %tmp18), !dbg !60
  br label %bb19, !dbg !61

bb19:                                             ; preds = %bb16, %bb15, %bb12, %bb9, %bb6
  %tmp20 = load i32**, i32*** @p, align 8, !dbg !62
  %tmp21 = load i32*, i32** @x, align 8, !dbg !63
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp20, i32* %tmp21), !dbg !64
  %tmp22 = load i32*, i32** @x, align 8, !dbg !65
  %tmp23 = load i32, i32* @a, align 4, !dbg !66
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp22, i32 %tmp23), !dbg !67
  %tmp24 = load i32*, i32** @x, align 8, !dbg !68
  %tmp25 = load i32, i32* @b, align 4, !dbg !69
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp24, i32 %tmp25), !dbg !70
  %tmp26 = load i32*, i32** @x, align 8, !dbg !71
  %tmp27 = load i32, i32* @c, align 4, !dbg !72
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp26, i32 %tmp27), !dbg !73
  %tmp28 = load i32*, i32** @y, align 8, !dbg !74
  %tmp29 = load i32, i32* @a, align 4, !dbg !75
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp28, i32 %tmp29), !dbg !76
  %tmp30 = load i32*, i32** @y, align 8, !dbg !77
  %tmp31 = load i32, i32* @b, align 4, !dbg !78
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp30, i32 %tmp31), !dbg !79
  %tmp32 = load i32*, i32** @w, align 8, !dbg !80
  %tmp33 = load i32**, i32*** @p, align 8, !dbg !81
  store i32* %tmp32, i32** %tmp33, align 8, !dbg !82
  %tmp34 = load i32*, i32** @y, align 8, !dbg !83
  %tmp35 = load i32, i32* @a, align 4, !dbg !84
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !85
  %tmp36 = load i32*, i32** @y, align 8, !dbg !86
  %tmp37 = load i32, i32* @b, align 4, !dbg !87
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !88
  ret i32 0, !dbg !89
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !90 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !99, metadata !DIExpression()), !dbg !98
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !101 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !107, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !109, metadata !DIExpression()), !dbg !108
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !111 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !114, metadata !DIExpression()), !dbg !113
  ret void, !dbg !115
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
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase4.cpp", directory: "/home/mehul/Desktop/SVF-example/testcases")
!4 = !{}
!5 = !{!0, !6, !10, !12, !15, !17, !19, !21}
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
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 10.0.0 "}
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 4, type: !28, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!9}
!30 = !DILocation(line: 5, column: 7, scope: !27)
!31 = !DILocation(line: 6, column: 4, scope: !27)
!32 = !DILocation(line: 8, column: 15, scope: !27)
!33 = !DILocation(line: 8, column: 17, scope: !27)
!34 = !DILocation(line: 8, column: 2, scope: !27)
!35 = !DILocation(line: 9, column: 15, scope: !27)
!36 = !DILocation(line: 9, column: 17, scope: !27)
!37 = !DILocation(line: 9, column: 2, scope: !27)
!38 = !DILocation(line: 11, column: 9, scope: !27)
!39 = !DILocation(line: 11, column: 2, scope: !27)
!40 = !DILocation(line: 13, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !27, file: !3, line: 11, column: 11)
!42 = !DILocation(line: 14, column: 17, scope: !41)
!43 = !DILocation(line: 14, column: 19, scope: !41)
!44 = !DILocation(line: 14, column: 4, scope: !41)
!45 = !DILocation(line: 15, column: 4, scope: !41)
!46 = !DILocation(line: 17, column: 6, scope: !41)
!47 = !DILocation(line: 18, column: 17, scope: !41)
!48 = !DILocation(line: 18, column: 19, scope: !41)
!49 = !DILocation(line: 18, column: 4, scope: !41)
!50 = !DILocation(line: 19, column: 4, scope: !41)
!51 = !DILocation(line: 21, column: 6, scope: !41)
!52 = !DILocation(line: 22, column: 17, scope: !41)
!53 = !DILocation(line: 22, column: 19, scope: !41)
!54 = !DILocation(line: 22, column: 4, scope: !41)
!55 = !DILocation(line: 23, column: 4, scope: !41)
!56 = !DILocation(line: 25, column: 4, scope: !41)
!57 = !DILocation(line: 27, column: 6, scope: !41)
!58 = !DILocation(line: 28, column: 17, scope: !41)
!59 = !DILocation(line: 28, column: 19, scope: !41)
!60 = !DILocation(line: 28, column: 4, scope: !41)
!61 = !DILocation(line: 29, column: 4, scope: !41)
!62 = !DILocation(line: 31, column: 15, scope: !27)
!63 = !DILocation(line: 31, column: 17, scope: !27)
!64 = !DILocation(line: 31, column: 2, scope: !27)
!65 = !DILocation(line: 32, column: 14, scope: !27)
!66 = !DILocation(line: 32, column: 16, scope: !27)
!67 = !DILocation(line: 32, column: 2, scope: !27)
!68 = !DILocation(line: 33, column: 14, scope: !27)
!69 = !DILocation(line: 33, column: 16, scope: !27)
!70 = !DILocation(line: 33, column: 2, scope: !27)
!71 = !DILocation(line: 34, column: 14, scope: !27)
!72 = !DILocation(line: 34, column: 16, scope: !27)
!73 = !DILocation(line: 34, column: 2, scope: !27)
!74 = !DILocation(line: 35, column: 14, scope: !27)
!75 = !DILocation(line: 35, column: 16, scope: !27)
!76 = !DILocation(line: 35, column: 2, scope: !27)
!77 = !DILocation(line: 36, column: 14, scope: !27)
!78 = !DILocation(line: 36, column: 16, scope: !27)
!79 = !DILocation(line: 36, column: 2, scope: !27)
!80 = !DILocation(line: 37, column: 7, scope: !27)
!81 = !DILocation(line: 37, column: 3, scope: !27)
!82 = !DILocation(line: 37, column: 5, scope: !27)
!83 = !DILocation(line: 39, column: 14, scope: !27)
!84 = !DILocation(line: 39, column: 16, scope: !27)
!85 = !DILocation(line: 39, column: 2, scope: !27)
!86 = !DILocation(line: 40, column: 14, scope: !27)
!87 = !DILocation(line: 40, column: 16, scope: !27)
!88 = !DILocation(line: 40, column: 2, scope: !27)
!89 = !DILocation(line: 42, column: 1, scope: !27)
!90 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !91, file: !91, line: 6, type: !92, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !94, retainedNodes: !4)
!91 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/SVF-example/testcases")
!92 = !DISubroutineType(types: !93)
!93 = !{null, !14, !8}
!94 = !{!95, !96}
!95 = !DITemplateTypeParameter(name: "T", type: !14)
!96 = !DITemplateTypeParameter(name: "U", type: !8)
!97 = !DILocalVariable(arg: 1, scope: !90, file: !91, line: 6, type: !14)
!98 = !DILocation(line: 0, scope: !90)
!99 = !DILocalVariable(arg: 2, scope: !90, file: !91, line: 6, type: !8)
!100 = !DILocation(line: 9, column: 1, scope: !90)
!101 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !91, file: !91, line: 6, type: !102, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !104, retainedNodes: !4)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !8, !9}
!104 = !{!105, !106}
!105 = !DITemplateTypeParameter(name: "T", type: !8)
!106 = !DITemplateTypeParameter(name: "U", type: !9)
!107 = !DILocalVariable(arg: 1, scope: !101, file: !91, line: 6, type: !8)
!108 = !DILocation(line: 0, scope: !101)
!109 = !DILocalVariable(arg: 2, scope: !101, file: !91, line: 6, type: !9)
!110 = !DILocation(line: 9, column: 1, scope: !101)
!111 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !91, file: !91, line: 16, type: !102, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !104, retainedNodes: !4)
!112 = !DILocalVariable(arg: 1, scope: !111, file: !91, line: 16, type: !8)
!113 = !DILocation(line: 0, scope: !111)
!114 = !DILocalVariable(arg: 2, scope: !111, file: !91, line: 16, type: !9)
!115 = !DILocation(line: 19, column: 1, scope: !111)
