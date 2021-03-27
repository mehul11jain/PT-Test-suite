; ModuleID = 'testcase1.ll'
source_filename = "testcase1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPPPiS1_EvT_T0_ = comdat any

$_Z15DoesNotPointsToIPPPiS1_EvT_T0_ = comdat any

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z15DoesNotPointsToIPPiS0_EvT_T0_ = comdat any

$_Z11MayPointsToIPPPiS1_EvT_T0_ = comdat any

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

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
  store i32** @c, i32*** @b, align 8, !dbg !32
  store i32** @c, i32*** @a, align 8, !dbg !33
  %tmp1 = load i32**, i32*** @a, align 8, !dbg !34
  %tmp2 = icmp ne i32** %tmp1, null, !dbg !34
  br i1 %tmp2, label %bb3, label %bb14, !dbg !36

bb3:                                              ; preds = %bb
  store i32*** @a, i32**** @p, align 8, !dbg !37
  %tmp4 = load i32***, i32**** @p, align 8, !dbg !39
  %tmp5 = load i32**, i32*** @a, align 8, !dbg !40
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp4, i32** %tmp5), !dbg !41
  %tmp6 = load i32***, i32**** @p, align 8, !dbg !42
  %tmp7 = load i32**, i32*** @b, align 8, !dbg !43
  call void @_Z15DoesNotPointsToIPPPiS1_EvT_T0_(i32*** %tmp6, i32** %tmp7), !dbg !44
  store i32** @c, i32*** @q, align 8, !dbg !45
  %tmp8 = load i32**, i32*** @q, align 8, !dbg !46
  %tmp9 = load i32*, i32** @c, align 8, !dbg !47
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp8, i32* %tmp9), !dbg !48
  %tmp10 = load i32**, i32*** @q, align 8, !dbg !49
  %tmp11 = load i32*, i32** @m, align 8, !dbg !50
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp10, i32* %tmp11), !dbg !51
  %tmp12 = load i32**, i32*** @q, align 8, !dbg !52
  %tmp13 = load i32*, i32** @n, align 8, !dbg !53
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp12, i32* %tmp13), !dbg !54
  br label %bb25, !dbg !55

bb14:                                             ; preds = %bb
  store i32*** @b, i32**** @p, align 8, !dbg !56
  %tmp15 = load i32***, i32**** @p, align 8, !dbg !58
  %tmp16 = load i32**, i32*** @b, align 8, !dbg !59
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp15, i32** %tmp16), !dbg !60
  %tmp17 = load i32***, i32**** @p, align 8, !dbg !61
  %tmp18 = load i32**, i32*** @a, align 8, !dbg !62
  call void @_Z15DoesNotPointsToIPPPiS1_EvT_T0_(i32*** %tmp17, i32** %tmp18), !dbg !63
  store i32** @c, i32*** @q, align 8, !dbg !64
  %tmp19 = load i32**, i32*** @q, align 8, !dbg !65
  %tmp20 = load i32*, i32** @c, align 8, !dbg !66
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp19, i32* %tmp20), !dbg !67
  %tmp21 = load i32**, i32*** @q, align 8, !dbg !68
  %tmp22 = load i32*, i32** @m, align 8, !dbg !69
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp21, i32* %tmp22), !dbg !70
  %tmp23 = load i32**, i32*** @q, align 8, !dbg !71
  %tmp24 = load i32*, i32** @n, align 8, !dbg !72
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp23, i32* %tmp24), !dbg !73
  br label %bb25

bb25:                                             ; preds = %bb14, %bb3
  %tmp26 = load i32***, i32**** @p, align 8, !dbg !74
  %tmp27 = load i32**, i32*** @a, align 8, !dbg !75
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp26, i32** %tmp27), !dbg !76
  %tmp28 = load i32***, i32**** @p, align 8, !dbg !77
  %tmp29 = load i32**, i32*** @b, align 8, !dbg !78
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp28, i32** %tmp29), !dbg !79
  %tmp30 = load i32**, i32*** @q, align 8, !dbg !80
  %tmp31 = load i32*, i32** @c, align 8, !dbg !81
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !82
  %tmp32 = load i32**, i32*** @q, align 8, !dbg !83
  %tmp33 = load i32*, i32** @m, align 8, !dbg !84
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp32, i32* %tmp33), !dbg !85
  %tmp34 = load i32**, i32*** @q, align 8, !dbg !86
  %tmp35 = load i32*, i32** @n, align 8, !dbg !87
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp34, i32* %tmp35), !dbg !88
  %tmp36 = load i32*, i32** @m, align 8, !dbg !89
  %tmp37 = load i32**, i32*** @a, align 8, !dbg !90
  store i32* %tmp36, i32** %tmp37, align 8, !dbg !91
  %tmp38 = load i32*, i32** @c, align 8, !dbg !92
  %tmp39 = load i32, i32* @d, align 4, !dbg !93
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp38, i32 %tmp39), !dbg !94
  %tmp40 = load i32**, i32*** @b, align 8, !dbg !95
  %tmp41 = load i32*, i32** %tmp40, align 8, !dbg !96
  store i32* %tmp41, i32** @n, align 8, !dbg !97
  %tmp42 = load i32*, i32** @n, align 8, !dbg !98
  %tmp43 = load i32, i32* @d, align 4, !dbg !99
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp42, i32 %tmp43), !dbg !100
  %tmp44 = load i32***, i32**** @p, align 8, !dbg !101
  store i32** @n, i32*** %tmp44, align 8, !dbg !102
  %tmp45 = load i32**, i32*** @a, align 8, !dbg !103
  %tmp46 = load i32*, i32** @n, align 8, !dbg !104
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp45, i32* %tmp46), !dbg !105
  %tmp47 = load i32**, i32*** @b, align 8, !dbg !106
  %tmp48 = load i32*, i32** @n, align 8, !dbg !107
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp47, i32* %tmp48), !dbg !108
  %tmp49 = load i32**, i32*** @a, align 8, !dbg !109
  %tmp50 = load i32*, i32** @c, align 8, !dbg !110
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp49, i32* %tmp50), !dbg !111
  %tmp51 = load i32**, i32*** @b, align 8, !dbg !112
  %tmp52 = load i32*, i32** @c, align 8, !dbg !113
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp51, i32* %tmp52), !dbg !114
  %tmp53 = load i32**, i32*** @a, align 8, !dbg !115
  %tmp54 = load i32*, i32** @m, align 8, !dbg !116
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp53, i32* %tmp54), !dbg !117
  %tmp55 = load i32**, i32*** @b, align 8, !dbg !118
  %tmp56 = load i32*, i32** @m, align 8, !dbg !119
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp55, i32* %tmp56), !dbg !120
  ret i32 0, !dbg !121
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !122 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !131, metadata !DIExpression()), !dbg !130
  ret void, !dbg !132
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z15DoesNotPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !133 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !136, metadata !DIExpression()), !dbg !135
  ret void, !dbg !137
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !138 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !146, metadata !DIExpression()), !dbg !145
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !148 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !151, metadata !DIExpression()), !dbg !150
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !153 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !156, metadata !DIExpression()), !dbg !155
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !158 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !166, metadata !DIExpression()), !dbg !165
  ret void, !dbg !167
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !168 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !171, metadata !DIExpression()), !dbg !170
  ret void, !dbg !172
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
!3 = !DIFile(filename: "testcase1.cpp", directory: "/home/mehul/Desktop/SVF-example/testcases")
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
!32 = !DILocation(line: 8, column: 11, scope: !28)
!33 = !DILocation(line: 8, column: 7, scope: !28)
!34 = !DILocation(line: 9, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !3, line: 9, column: 8)
!36 = !DILocation(line: 9, column: 8, scope: !28)
!37 = !DILocation(line: 11, column: 11, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !3, line: 10, column: 5)
!39 = !DILocation(line: 12, column: 22, scope: !38)
!40 = !DILocation(line: 12, column: 24, scope: !38)
!41 = !DILocation(line: 12, column: 9, scope: !38)
!42 = !DILocation(line: 13, column: 25, scope: !38)
!43 = !DILocation(line: 13, column: 27, scope: !38)
!44 = !DILocation(line: 13, column: 9, scope: !38)
!45 = !DILocation(line: 15, column: 11, scope: !38)
!46 = !DILocation(line: 16, column: 22, scope: !38)
!47 = !DILocation(line: 16, column: 24, scope: !38)
!48 = !DILocation(line: 16, column: 9, scope: !38)
!49 = !DILocation(line: 17, column: 25, scope: !38)
!50 = !DILocation(line: 17, column: 27, scope: !38)
!51 = !DILocation(line: 17, column: 9, scope: !38)
!52 = !DILocation(line: 18, column: 25, scope: !38)
!53 = !DILocation(line: 18, column: 27, scope: !38)
!54 = !DILocation(line: 18, column: 9, scope: !38)
!55 = !DILocation(line: 19, column: 5, scope: !38)
!56 = !DILocation(line: 22, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !35, file: !3, line: 21, column: 5)
!58 = !DILocation(line: 23, column: 22, scope: !57)
!59 = !DILocation(line: 23, column: 24, scope: !57)
!60 = !DILocation(line: 23, column: 9, scope: !57)
!61 = !DILocation(line: 24, column: 25, scope: !57)
!62 = !DILocation(line: 24, column: 27, scope: !57)
!63 = !DILocation(line: 24, column: 9, scope: !57)
!64 = !DILocation(line: 26, column: 11, scope: !57)
!65 = !DILocation(line: 27, column: 22, scope: !57)
!66 = !DILocation(line: 27, column: 24, scope: !57)
!67 = !DILocation(line: 27, column: 9, scope: !57)
!68 = !DILocation(line: 28, column: 25, scope: !57)
!69 = !DILocation(line: 28, column: 27, scope: !57)
!70 = !DILocation(line: 28, column: 9, scope: !57)
!71 = !DILocation(line: 29, column: 25, scope: !57)
!72 = !DILocation(line: 29, column: 27, scope: !57)
!73 = !DILocation(line: 29, column: 9, scope: !57)
!74 = !DILocation(line: 33, column: 17, scope: !28)
!75 = !DILocation(line: 33, column: 19, scope: !28)
!76 = !DILocation(line: 33, column: 5, scope: !28)
!77 = !DILocation(line: 34, column: 17, scope: !28)
!78 = !DILocation(line: 34, column: 19, scope: !28)
!79 = !DILocation(line: 34, column: 5, scope: !28)
!80 = !DILocation(line: 35, column: 18, scope: !28)
!81 = !DILocation(line: 35, column: 20, scope: !28)
!82 = !DILocation(line: 35, column: 5, scope: !28)
!83 = !DILocation(line: 36, column: 21, scope: !28)
!84 = !DILocation(line: 36, column: 23, scope: !28)
!85 = !DILocation(line: 36, column: 5, scope: !28)
!86 = !DILocation(line: 37, column: 21, scope: !28)
!87 = !DILocation(line: 37, column: 23, scope: !28)
!88 = !DILocation(line: 37, column: 5, scope: !28)
!89 = !DILocation(line: 40, column: 7, scope: !28)
!90 = !DILocation(line: 40, column: 3, scope: !28)
!91 = !DILocation(line: 40, column: 5, scope: !28)
!92 = !DILocation(line: 41, column: 18, scope: !28)
!93 = !DILocation(line: 41, column: 20, scope: !28)
!94 = !DILocation(line: 41, column: 5, scope: !28)
!95 = !DILocation(line: 43, column: 7, scope: !28)
!96 = !DILocation(line: 43, column: 6, scope: !28)
!97 = !DILocation(line: 43, column: 4, scope: !28)
!98 = !DILocation(line: 44, column: 15, scope: !28)
!99 = !DILocation(line: 44, column: 17, scope: !28)
!100 = !DILocation(line: 44, column: 2, scope: !28)
!101 = !DILocation(line: 46, column: 3, scope: !28)
!102 = !DILocation(line: 46, column: 4, scope: !28)
!103 = !DILocation(line: 47, column: 14, scope: !28)
!104 = !DILocation(line: 47, column: 16, scope: !28)
!105 = !DILocation(line: 47, column: 2, scope: !28)
!106 = !DILocation(line: 48, column: 14, scope: !28)
!107 = !DILocation(line: 48, column: 16, scope: !28)
!108 = !DILocation(line: 48, column: 2, scope: !28)
!109 = !DILocation(line: 49, column: 17, scope: !28)
!110 = !DILocation(line: 49, column: 19, scope: !28)
!111 = !DILocation(line: 49, column: 5, scope: !28)
!112 = !DILocation(line: 50, column: 14, scope: !28)
!113 = !DILocation(line: 50, column: 16, scope: !28)
!114 = !DILocation(line: 50, column: 2, scope: !28)
!115 = !DILocation(line: 51, column: 21, scope: !28)
!116 = !DILocation(line: 51, column: 23, scope: !28)
!117 = !DILocation(line: 51, column: 5, scope: !28)
!118 = !DILocation(line: 52, column: 21, scope: !28)
!119 = !DILocation(line: 52, column: 23, scope: !28)
!120 = !DILocation(line: 52, column: 5, scope: !28)
!121 = !DILocation(line: 53, column: 1, scope: !28)
!122 = distinct !DISubprogram(name: "MustPointsTo<int ***, int **>", linkageName: "_Z12MustPointsToIPPPiS1_EvT_T0_", scope: !123, file: !123, line: 6, type: !124, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !126, retainedNodes: !4)
!123 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/SVF-example/testcases")
!124 = !DISubroutineType(types: !125)
!125 = !{null, !23, !8}
!126 = !{!127, !128}
!127 = !DITemplateTypeParameter(name: "T", type: !23)
!128 = !DITemplateTypeParameter(name: "U", type: !8)
!129 = !DILocalVariable(arg: 1, scope: !122, file: !123, line: 6, type: !23)
!130 = !DILocation(line: 0, scope: !122)
!131 = !DILocalVariable(arg: 2, scope: !122, file: !123, line: 6, type: !8)
!132 = !DILocation(line: 9, column: 1, scope: !122)
!133 = distinct !DISubprogram(name: "DoesNotPointsTo<int ***, int **>", linkageName: "_Z15DoesNotPointsToIPPPiS1_EvT_T0_", scope: !123, file: !123, line: 11, type: !124, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !126, retainedNodes: !4)
!134 = !DILocalVariable(arg: 1, scope: !133, file: !123, line: 11, type: !23)
!135 = !DILocation(line: 0, scope: !133)
!136 = !DILocalVariable(arg: 2, scope: !133, file: !123, line: 11, type: !8)
!137 = !DILocation(line: 14, column: 1, scope: !133)
!138 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !123, file: !123, line: 6, type: !139, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !141, retainedNodes: !4)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !8, !9}
!141 = !{!142, !143}
!142 = !DITemplateTypeParameter(name: "T", type: !8)
!143 = !DITemplateTypeParameter(name: "U", type: !9)
!144 = !DILocalVariable(arg: 1, scope: !138, file: !123, line: 6, type: !8)
!145 = !DILocation(line: 0, scope: !138)
!146 = !DILocalVariable(arg: 2, scope: !138, file: !123, line: 6, type: !9)
!147 = !DILocation(line: 9, column: 1, scope: !138)
!148 = distinct !DISubprogram(name: "DoesNotPointsTo<int **, int *>", linkageName: "_Z15DoesNotPointsToIPPiS0_EvT_T0_", scope: !123, file: !123, line: 11, type: !139, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !141, retainedNodes: !4)
!149 = !DILocalVariable(arg: 1, scope: !148, file: !123, line: 11, type: !8)
!150 = !DILocation(line: 0, scope: !148)
!151 = !DILocalVariable(arg: 2, scope: !148, file: !123, line: 11, type: !9)
!152 = !DILocation(line: 14, column: 1, scope: !148)
!153 = distinct !DISubprogram(name: "MayPointsTo<int ***, int **>", linkageName: "_Z11MayPointsToIPPPiS1_EvT_T0_", scope: !123, file: !123, line: 16, type: !124, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !126, retainedNodes: !4)
!154 = !DILocalVariable(arg: 1, scope: !153, file: !123, line: 16, type: !23)
!155 = !DILocation(line: 0, scope: !153)
!156 = !DILocalVariable(arg: 2, scope: !153, file: !123, line: 16, type: !8)
!157 = !DILocation(line: 19, column: 1, scope: !153)
!158 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !123, file: !123, line: 6, type: !159, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !161, retainedNodes: !4)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !9, !10}
!161 = !{!162, !163}
!162 = !DITemplateTypeParameter(name: "T", type: !9)
!163 = !DITemplateTypeParameter(name: "U", type: !10)
!164 = !DILocalVariable(arg: 1, scope: !158, file: !123, line: 6, type: !9)
!165 = !DILocation(line: 0, scope: !158)
!166 = !DILocalVariable(arg: 2, scope: !158, file: !123, line: 6, type: !10)
!167 = !DILocation(line: 9, column: 1, scope: !158)
!168 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !123, file: !123, line: 16, type: !139, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !141, retainedNodes: !4)
!169 = !DILocalVariable(arg: 1, scope: !168, file: !123, line: 16, type: !8)
!170 = !DILocation(line: 0, scope: !168)
!171 = !DILocalVariable(arg: 2, scope: !168, file: !123, line: 16, type: !9)
!172 = !DILocation(line: 19, column: 1, scope: !168)
