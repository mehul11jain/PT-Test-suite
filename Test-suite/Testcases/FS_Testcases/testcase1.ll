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
  store i32** @c, i32*** @a, align 8, !dbg !35
  %tmp3 = load i32**, i32*** @a, align 8, !dbg !36
  %tmp4 = load i32*, i32** @c, align 8, !dbg !37
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp3, i32* %tmp4), !dbg !38
  %tmp5 = load i32*, i32** @m, align 8, !dbg !39
  %tmp6 = load i32, i32* @d, align 4, !dbg !40
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp5, i32 %tmp6), !dbg !41
  store i32** @c, i32*** @b, align 8, !dbg !42
  %tmp7 = load i32**, i32*** @b, align 8, !dbg !43
  %tmp8 = load i32*, i32** @c, align 8, !dbg !44
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp7, i32* %tmp8), !dbg !45
  %tmp9 = load i32**, i32*** @a, align 8, !dbg !46
  %tmp10 = load i32*, i32** @c, align 8, !dbg !47
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp9, i32* %tmp10), !dbg !48
  %tmp11 = load i32*, i32** @m, align 8, !dbg !49
  %tmp12 = load i32, i32* @d, align 4, !dbg !50
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp11, i32 %tmp12), !dbg !51
  %tmp13 = load i32**, i32*** @a, align 8, !dbg !52
  %tmp14 = icmp ne i32** %tmp13, null, !dbg !52
  br i1 %tmp14, label %bb15, label %bb34, !dbg !54

bb15:                                             ; preds = %bb
  store i32*** @a, i32**** @p, align 8, !dbg !55
  %tmp16 = load i32***, i32**** @p, align 8, !dbg !57
  %tmp17 = load i32**, i32*** @a, align 8, !dbg !58
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp16, i32** %tmp17), !dbg !59
  %tmp18 = load i32**, i32*** @b, align 8, !dbg !60
  %tmp19 = load i32*, i32** @c, align 8, !dbg !61
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp18, i32* %tmp19), !dbg !62
  %tmp20 = load i32**, i32*** @a, align 8, !dbg !63
  %tmp21 = load i32*, i32** @c, align 8, !dbg !64
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp20, i32* %tmp21), !dbg !65
  %tmp22 = load i32*, i32** @m, align 8, !dbg !66
  %tmp23 = load i32, i32* @d, align 4, !dbg !67
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp22, i32 %tmp23), !dbg !68
  store i32** @c, i32*** @q, align 8, !dbg !69
  %tmp24 = load i32**, i32*** @q, align 8, !dbg !70
  %tmp25 = load i32*, i32** @c, align 8, !dbg !71
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp24, i32* %tmp25), !dbg !72
  %tmp26 = load i32***, i32**** @p, align 8, !dbg !73
  %tmp27 = load i32**, i32*** @a, align 8, !dbg !74
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp26, i32** %tmp27), !dbg !75
  %tmp28 = load i32**, i32*** @b, align 8, !dbg !76
  %tmp29 = load i32*, i32** @c, align 8, !dbg !77
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !78
  %tmp30 = load i32**, i32*** @a, align 8, !dbg !79
  %tmp31 = load i32*, i32** @c, align 8, !dbg !80
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !81
  %tmp32 = load i32*, i32** @m, align 8, !dbg !82
  %tmp33 = load i32, i32* @d, align 4, !dbg !83
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !84
  br label %bb53, !dbg !85

bb34:                                             ; preds = %bb
  store i32*** @b, i32**** @p, align 8, !dbg !86
  %tmp35 = load i32***, i32**** @p, align 8, !dbg !88
  %tmp36 = load i32**, i32*** @b, align 8, !dbg !89
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp35, i32** %tmp36), !dbg !90
  %tmp37 = load i32**, i32*** @b, align 8, !dbg !91
  %tmp38 = load i32*, i32** @c, align 8, !dbg !92
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp37, i32* %tmp38), !dbg !93
  %tmp39 = load i32**, i32*** @a, align 8, !dbg !94
  %tmp40 = load i32*, i32** @c, align 8, !dbg !95
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp39, i32* %tmp40), !dbg !96
  %tmp41 = load i32*, i32** @m, align 8, !dbg !97
  %tmp42 = load i32, i32* @d, align 4, !dbg !98
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp41, i32 %tmp42), !dbg !99
  store i32** @c, i32*** @q, align 8, !dbg !100
  %tmp43 = load i32**, i32*** @q, align 8, !dbg !101
  %tmp44 = load i32*, i32** @c, align 8, !dbg !102
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp43, i32* %tmp44), !dbg !103
  %tmp45 = load i32***, i32**** @p, align 8, !dbg !104
  %tmp46 = load i32**, i32*** @b, align 8, !dbg !105
  call void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %tmp45, i32** %tmp46), !dbg !106
  %tmp47 = load i32**, i32*** @b, align 8, !dbg !107
  %tmp48 = load i32*, i32** @c, align 8, !dbg !108
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp47, i32* %tmp48), !dbg !109
  %tmp49 = load i32**, i32*** @a, align 8, !dbg !110
  %tmp50 = load i32*, i32** @c, align 8, !dbg !111
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp49, i32* %tmp50), !dbg !112
  %tmp51 = load i32*, i32** @m, align 8, !dbg !113
  %tmp52 = load i32, i32* @d, align 4, !dbg !114
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp51, i32 %tmp52), !dbg !115
  br label %bb53

bb53:                                             ; preds = %bb34, %bb15
  %tmp54 = load i32*, i32** @m, align 8, !dbg !116
  %tmp55 = load i32**, i32*** @a, align 8, !dbg !117
  store i32* %tmp54, i32** %tmp55, align 8, !dbg !118
  %tmp56 = load i32*, i32** @c, align 8, !dbg !119
  %tmp57 = load i32, i32* @d, align 4, !dbg !120
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp56, i32 %tmp57), !dbg !121
  %tmp58 = load i32***, i32**** @p, align 8, !dbg !122
  %tmp59 = load i32**, i32*** @a, align 8, !dbg !123
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp58, i32** %tmp59), !dbg !124
  %tmp60 = load i32***, i32**** @p, align 8, !dbg !125
  %tmp61 = load i32**, i32*** @b, align 8, !dbg !126
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp60, i32** %tmp61), !dbg !127
  %tmp62 = load i32**, i32*** @q, align 8, !dbg !128
  %tmp63 = load i32*, i32** @c, align 8, !dbg !129
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp62, i32* %tmp63), !dbg !130
  %tmp64 = load i32**, i32*** @b, align 8, !dbg !131
  %tmp65 = load i32*, i32** @c, align 8, !dbg !132
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp64, i32* %tmp65), !dbg !133
  %tmp66 = load i32**, i32*** @a, align 8, !dbg !134
  %tmp67 = load i32*, i32** @c, align 8, !dbg !135
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp66, i32* %tmp67), !dbg !136
  %tmp68 = load i32*, i32** @m, align 8, !dbg !137
  %tmp69 = load i32, i32* @d, align 4, !dbg !138
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp68, i32 %tmp69), !dbg !139
  %tmp70 = load i32**, i32*** @b, align 8, !dbg !140
  %tmp71 = load i32*, i32** %tmp70, align 8, !dbg !141
  store i32* %tmp71, i32** @n, align 8, !dbg !142
  %tmp72 = load i32*, i32** @n, align 8, !dbg !143
  %tmp73 = load i32, i32* @d, align 4, !dbg !144
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp72, i32 %tmp73), !dbg !145
  %tmp74 = load i32*, i32** @c, align 8, !dbg !146
  %tmp75 = load i32, i32* @d, align 4, !dbg !147
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp74, i32 %tmp75), !dbg !148
  %tmp76 = load i32***, i32**** @p, align 8, !dbg !149
  %tmp77 = load i32**, i32*** @a, align 8, !dbg !150
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp76, i32** %tmp77), !dbg !151
  %tmp78 = load i32***, i32**** @p, align 8, !dbg !152
  %tmp79 = load i32**, i32*** @b, align 8, !dbg !153
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp78, i32** %tmp79), !dbg !154
  %tmp80 = load i32**, i32*** @q, align 8, !dbg !155
  %tmp81 = load i32*, i32** @c, align 8, !dbg !156
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp80, i32* %tmp81), !dbg !157
  %tmp82 = load i32**, i32*** @b, align 8, !dbg !158
  %tmp83 = load i32*, i32** @c, align 8, !dbg !159
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp82, i32* %tmp83), !dbg !160
  %tmp84 = load i32**, i32*** @a, align 8, !dbg !161
  %tmp85 = load i32*, i32** @c, align 8, !dbg !162
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp84, i32* %tmp85), !dbg !163
  %tmp86 = load i32*, i32** @m, align 8, !dbg !164
  %tmp87 = load i32, i32* @d, align 4, !dbg !165
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp86, i32 %tmp87), !dbg !166
  %tmp88 = load i32***, i32**** @p, align 8, !dbg !167
  store i32** @n, i32*** %tmp88, align 8, !dbg !168
  %tmp89 = load i32**, i32*** @a, align 8, !dbg !169
  %tmp90 = load i32*, i32** @n, align 8, !dbg !170
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp89, i32* %tmp90), !dbg !171
  %tmp91 = load i32**, i32*** @b, align 8, !dbg !172
  %tmp92 = load i32*, i32** @n, align 8, !dbg !173
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp91, i32* %tmp92), !dbg !174
  %tmp93 = load i32**, i32*** @a, align 8, !dbg !175
  %tmp94 = load i32*, i32** @c, align 8, !dbg !176
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp93, i32* %tmp94), !dbg !177
  %tmp95 = load i32**, i32*** @b, align 8, !dbg !178
  %tmp96 = load i32*, i32** @c, align 8, !dbg !179
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp95, i32* %tmp96), !dbg !180
  %tmp97 = load i32*, i32** @m, align 8, !dbg !181
  %tmp98 = load i32, i32* @d, align 4, !dbg !182
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp97, i32 %tmp98), !dbg !183
  %tmp99 = load i32*, i32** @n, align 8, !dbg !184
  %tmp100 = load i32, i32* @d, align 4, !dbg !185
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp99, i32 %tmp100), !dbg !186
  %tmp101 = load i32*, i32** @c, align 8, !dbg !187
  %tmp102 = load i32, i32* @d, align 4, !dbg !188
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp101, i32 %tmp102), !dbg !189
  %tmp103 = load i32***, i32**** @p, align 8, !dbg !190
  %tmp104 = load i32**, i32*** @a, align 8, !dbg !191
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp103, i32** %tmp104), !dbg !192
  %tmp105 = load i32***, i32**** @p, align 8, !dbg !193
  %tmp106 = load i32**, i32*** @b, align 8, !dbg !194
  call void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %tmp105, i32** %tmp106), !dbg !195
  %tmp107 = load i32**, i32*** @q, align 8, !dbg !196
  %tmp108 = load i32*, i32** @c, align 8, !dbg !197
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp107, i32* %tmp108), !dbg !198
  ret i32 0, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !200 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !209, metadata !DIExpression()), !dbg !208
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !211 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !219, metadata !DIExpression()), !dbg !218
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !221 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !229, metadata !DIExpression()), !dbg !228
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPPiS1_EvT_T0_(i32*** %arg, i32** %arg1) #1 comdat !dbg !231 {
bb:
  call void @llvm.dbg.value(metadata i32*** %arg, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32** %arg1, metadata !234, metadata !DIExpression()), !dbg !233
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !236 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !239, metadata !DIExpression()), !dbg !238
  ret void, !dbg !240
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
!35 = !DILocation(line: 10, column: 7, scope: !28)
!36 = !DILocation(line: 11, column: 18, scope: !28)
!37 = !DILocation(line: 11, column: 20, scope: !28)
!38 = !DILocation(line: 11, column: 5, scope: !28)
!39 = !DILocation(line: 12, column: 18, scope: !28)
!40 = !DILocation(line: 12, column: 20, scope: !28)
!41 = !DILocation(line: 12, column: 5, scope: !28)
!42 = !DILocation(line: 14, column: 7, scope: !28)
!43 = !DILocation(line: 15, column: 18, scope: !28)
!44 = !DILocation(line: 15, column: 20, scope: !28)
!45 = !DILocation(line: 15, column: 5, scope: !28)
!46 = !DILocation(line: 16, column: 18, scope: !28)
!47 = !DILocation(line: 16, column: 20, scope: !28)
!48 = !DILocation(line: 16, column: 5, scope: !28)
!49 = !DILocation(line: 17, column: 18, scope: !28)
!50 = !DILocation(line: 17, column: 20, scope: !28)
!51 = !DILocation(line: 17, column: 5, scope: !28)
!52 = !DILocation(line: 19, column: 8, scope: !53)
!53 = distinct !DILexicalBlock(scope: !28, file: !3, line: 19, column: 8)
!54 = !DILocation(line: 19, column: 8, scope: !28)
!55 = !DILocation(line: 21, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !3, line: 20, column: 5)
!57 = !DILocation(line: 22, column: 22, scope: !56)
!58 = !DILocation(line: 22, column: 24, scope: !56)
!59 = !DILocation(line: 22, column: 9, scope: !56)
!60 = !DILocation(line: 23, column: 22, scope: !56)
!61 = !DILocation(line: 23, column: 24, scope: !56)
!62 = !DILocation(line: 23, column: 9, scope: !56)
!63 = !DILocation(line: 24, column: 22, scope: !56)
!64 = !DILocation(line: 24, column: 24, scope: !56)
!65 = !DILocation(line: 24, column: 9, scope: !56)
!66 = !DILocation(line: 25, column: 22, scope: !56)
!67 = !DILocation(line: 25, column: 24, scope: !56)
!68 = !DILocation(line: 25, column: 9, scope: !56)
!69 = !DILocation(line: 28, column: 11, scope: !56)
!70 = !DILocation(line: 29, column: 22, scope: !56)
!71 = !DILocation(line: 29, column: 24, scope: !56)
!72 = !DILocation(line: 29, column: 9, scope: !56)
!73 = !DILocation(line: 30, column: 22, scope: !56)
!74 = !DILocation(line: 30, column: 24, scope: !56)
!75 = !DILocation(line: 30, column: 9, scope: !56)
!76 = !DILocation(line: 31, column: 22, scope: !56)
!77 = !DILocation(line: 31, column: 24, scope: !56)
!78 = !DILocation(line: 31, column: 9, scope: !56)
!79 = !DILocation(line: 32, column: 22, scope: !56)
!80 = !DILocation(line: 32, column: 24, scope: !56)
!81 = !DILocation(line: 32, column: 9, scope: !56)
!82 = !DILocation(line: 33, column: 22, scope: !56)
!83 = !DILocation(line: 33, column: 24, scope: !56)
!84 = !DILocation(line: 33, column: 9, scope: !56)
!85 = !DILocation(line: 36, column: 5, scope: !56)
!86 = !DILocation(line: 39, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !53, file: !3, line: 38, column: 5)
!88 = !DILocation(line: 40, column: 22, scope: !87)
!89 = !DILocation(line: 40, column: 24, scope: !87)
!90 = !DILocation(line: 40, column: 9, scope: !87)
!91 = !DILocation(line: 41, column: 22, scope: !87)
!92 = !DILocation(line: 41, column: 24, scope: !87)
!93 = !DILocation(line: 41, column: 9, scope: !87)
!94 = !DILocation(line: 42, column: 22, scope: !87)
!95 = !DILocation(line: 42, column: 24, scope: !87)
!96 = !DILocation(line: 42, column: 9, scope: !87)
!97 = !DILocation(line: 43, column: 22, scope: !87)
!98 = !DILocation(line: 43, column: 24, scope: !87)
!99 = !DILocation(line: 43, column: 9, scope: !87)
!100 = !DILocation(line: 46, column: 11, scope: !87)
!101 = !DILocation(line: 47, column: 22, scope: !87)
!102 = !DILocation(line: 47, column: 24, scope: !87)
!103 = !DILocation(line: 47, column: 9, scope: !87)
!104 = !DILocation(line: 48, column: 22, scope: !87)
!105 = !DILocation(line: 48, column: 24, scope: !87)
!106 = !DILocation(line: 48, column: 9, scope: !87)
!107 = !DILocation(line: 49, column: 22, scope: !87)
!108 = !DILocation(line: 49, column: 24, scope: !87)
!109 = !DILocation(line: 49, column: 9, scope: !87)
!110 = !DILocation(line: 50, column: 22, scope: !87)
!111 = !DILocation(line: 50, column: 24, scope: !87)
!112 = !DILocation(line: 50, column: 9, scope: !87)
!113 = !DILocation(line: 51, column: 22, scope: !87)
!114 = !DILocation(line: 51, column: 24, scope: !87)
!115 = !DILocation(line: 51, column: 9, scope: !87)
!116 = !DILocation(line: 59, column: 7, scope: !28)
!117 = !DILocation(line: 59, column: 3, scope: !28)
!118 = !DILocation(line: 59, column: 5, scope: !28)
!119 = !DILocation(line: 60, column: 18, scope: !28)
!120 = !DILocation(line: 60, column: 20, scope: !28)
!121 = !DILocation(line: 60, column: 5, scope: !28)
!122 = !DILocation(line: 61, column: 17, scope: !28)
!123 = !DILocation(line: 61, column: 19, scope: !28)
!124 = !DILocation(line: 61, column: 5, scope: !28)
!125 = !DILocation(line: 62, column: 17, scope: !28)
!126 = !DILocation(line: 62, column: 19, scope: !28)
!127 = !DILocation(line: 62, column: 5, scope: !28)
!128 = !DILocation(line: 63, column: 18, scope: !28)
!129 = !DILocation(line: 63, column: 20, scope: !28)
!130 = !DILocation(line: 63, column: 5, scope: !28)
!131 = !DILocation(line: 64, column: 18, scope: !28)
!132 = !DILocation(line: 64, column: 20, scope: !28)
!133 = !DILocation(line: 64, column: 5, scope: !28)
!134 = !DILocation(line: 65, column: 18, scope: !28)
!135 = !DILocation(line: 65, column: 20, scope: !28)
!136 = !DILocation(line: 65, column: 5, scope: !28)
!137 = !DILocation(line: 66, column: 18, scope: !28)
!138 = !DILocation(line: 66, column: 20, scope: !28)
!139 = !DILocation(line: 66, column: 5, scope: !28)
!140 = !DILocation(line: 72, column: 7, scope: !28)
!141 = !DILocation(line: 72, column: 6, scope: !28)
!142 = !DILocation(line: 72, column: 4, scope: !28)
!143 = !DILocation(line: 73, column: 15, scope: !28)
!144 = !DILocation(line: 73, column: 17, scope: !28)
!145 = !DILocation(line: 73, column: 2, scope: !28)
!146 = !DILocation(line: 74, column: 18, scope: !28)
!147 = !DILocation(line: 74, column: 20, scope: !28)
!148 = !DILocation(line: 74, column: 5, scope: !28)
!149 = !DILocation(line: 75, column: 17, scope: !28)
!150 = !DILocation(line: 75, column: 19, scope: !28)
!151 = !DILocation(line: 75, column: 5, scope: !28)
!152 = !DILocation(line: 76, column: 17, scope: !28)
!153 = !DILocation(line: 76, column: 19, scope: !28)
!154 = !DILocation(line: 76, column: 5, scope: !28)
!155 = !DILocation(line: 77, column: 18, scope: !28)
!156 = !DILocation(line: 77, column: 20, scope: !28)
!157 = !DILocation(line: 77, column: 5, scope: !28)
!158 = !DILocation(line: 78, column: 18, scope: !28)
!159 = !DILocation(line: 78, column: 20, scope: !28)
!160 = !DILocation(line: 78, column: 5, scope: !28)
!161 = !DILocation(line: 79, column: 18, scope: !28)
!162 = !DILocation(line: 79, column: 20, scope: !28)
!163 = !DILocation(line: 79, column: 5, scope: !28)
!164 = !DILocation(line: 80, column: 18, scope: !28)
!165 = !DILocation(line: 80, column: 20, scope: !28)
!166 = !DILocation(line: 80, column: 5, scope: !28)
!167 = !DILocation(line: 82, column: 3, scope: !28)
!168 = !DILocation(line: 82, column: 5, scope: !28)
!169 = !DILocation(line: 83, column: 14, scope: !28)
!170 = !DILocation(line: 83, column: 16, scope: !28)
!171 = !DILocation(line: 83, column: 2, scope: !28)
!172 = !DILocation(line: 84, column: 14, scope: !28)
!173 = !DILocation(line: 84, column: 16, scope: !28)
!174 = !DILocation(line: 84, column: 2, scope: !28)
!175 = !DILocation(line: 85, column: 17, scope: !28)
!176 = !DILocation(line: 85, column: 19, scope: !28)
!177 = !DILocation(line: 85, column: 5, scope: !28)
!178 = !DILocation(line: 86, column: 14, scope: !28)
!179 = !DILocation(line: 86, column: 16, scope: !28)
!180 = !DILocation(line: 86, column: 2, scope: !28)
!181 = !DILocation(line: 87, column: 18, scope: !28)
!182 = !DILocation(line: 87, column: 20, scope: !28)
!183 = !DILocation(line: 87, column: 5, scope: !28)
!184 = !DILocation(line: 88, column: 18, scope: !28)
!185 = !DILocation(line: 88, column: 20, scope: !28)
!186 = !DILocation(line: 88, column: 5, scope: !28)
!187 = !DILocation(line: 89, column: 18, scope: !28)
!188 = !DILocation(line: 89, column: 20, scope: !28)
!189 = !DILocation(line: 89, column: 5, scope: !28)
!190 = !DILocation(line: 90, column: 17, scope: !28)
!191 = !DILocation(line: 90, column: 19, scope: !28)
!192 = !DILocation(line: 90, column: 5, scope: !28)
!193 = !DILocation(line: 91, column: 17, scope: !28)
!194 = !DILocation(line: 91, column: 19, scope: !28)
!195 = !DILocation(line: 91, column: 5, scope: !28)
!196 = !DILocation(line: 92, column: 18, scope: !28)
!197 = !DILocation(line: 92, column: 20, scope: !28)
!198 = !DILocation(line: 92, column: 5, scope: !28)
!199 = !DILocation(line: 95, column: 1, scope: !28)
!200 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !201, file: !201, line: 6, type: !202, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !204, retainedNodes: !4)
!201 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!202 = !DISubroutineType(types: !203)
!203 = !{null, !9, !10}
!204 = !{!205, !206}
!205 = !DITemplateTypeParameter(name: "T", type: !9)
!206 = !DITemplateTypeParameter(name: "U", type: !10)
!207 = !DILocalVariable(arg: 1, scope: !200, file: !201, line: 6, type: !9)
!208 = !DILocation(line: 0, scope: !200)
!209 = !DILocalVariable(arg: 2, scope: !200, file: !201, line: 6, type: !10)
!210 = !DILocation(line: 9, column: 1, scope: !200)
!211 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !201, file: !201, line: 6, type: !212, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !214, retainedNodes: !4)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !8, !9}
!214 = !{!215, !216}
!215 = !DITemplateTypeParameter(name: "T", type: !8)
!216 = !DITemplateTypeParameter(name: "U", type: !9)
!217 = !DILocalVariable(arg: 1, scope: !211, file: !201, line: 6, type: !8)
!218 = !DILocation(line: 0, scope: !211)
!219 = !DILocalVariable(arg: 2, scope: !211, file: !201, line: 6, type: !9)
!220 = !DILocation(line: 9, column: 1, scope: !211)
!221 = distinct !DISubprogram(name: "MustPointsTo<int ***, int **>", linkageName: "_Z12MustPointsToIPPPiS1_EvT_T0_", scope: !201, file: !201, line: 6, type: !222, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !224, retainedNodes: !4)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !23, !8}
!224 = !{!225, !226}
!225 = !DITemplateTypeParameter(name: "T", type: !23)
!226 = !DITemplateTypeParameter(name: "U", type: !8)
!227 = !DILocalVariable(arg: 1, scope: !221, file: !201, line: 6, type: !23)
!228 = !DILocation(line: 0, scope: !221)
!229 = !DILocalVariable(arg: 2, scope: !221, file: !201, line: 6, type: !8)
!230 = !DILocation(line: 9, column: 1, scope: !221)
!231 = distinct !DISubprogram(name: "MayPointsTo<int ***, int **>", linkageName: "_Z11MayPointsToIPPPiS1_EvT_T0_", scope: !201, file: !201, line: 16, type: !222, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !224, retainedNodes: !4)
!232 = !DILocalVariable(arg: 1, scope: !231, file: !201, line: 16, type: !23)
!233 = !DILocation(line: 0, scope: !231)
!234 = !DILocalVariable(arg: 2, scope: !231, file: !201, line: 16, type: !8)
!235 = !DILocation(line: 19, column: 1, scope: !231)
!236 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !201, file: !201, line: 16, type: !212, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !214, retainedNodes: !4)
!237 = !DILocalVariable(arg: 1, scope: !236, file: !201, line: 16, type: !8)
!238 = !DILocation(line: 0, scope: !236)
!239 = !DILocalVariable(arg: 2, scope: !236, file: !201, line: 16, type: !9)
!240 = !DILocation(line: 19, column: 1, scope: !236)
