; ModuleID = 'testcase3.ll'
source_filename = "testcase3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z11MayPointsToIPPiS0_EvT_T0_ = comdat any

$_Z11MayPointsToIPiiEvT_T0_ = comdat any

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

@p = dso_local global i32** null, align 8, !dbg !0
@q = dso_local global i32** null, align 8, !dbg !6
@r = dso_local global i32** null, align 8, !dbg !11
@x = dso_local global i32* null, align 8, !dbg !13
@y = dso_local global i32* null, align 8, !dbg !15
@z = dso_local global i32* null, align 8, !dbg !17
@a = dso_local global i32 0, align 4, !dbg !19
@b = dso_local global i32 0, align 4, !dbg !21
@c = dso_local global i32 0, align 4, !dbg !23

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !29 {
bb:
  store i32** @x, i32*** @p, align 8, !dbg !32
  %tmp1 = load i32**, i32*** @p, align 8, !dbg !33
  %tmp2 = load i32*, i32** @x, align 8, !dbg !34
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp1, i32* %tmp2), !dbg !35
  br label %bb3, !dbg !36

bb3:                                              ; preds = %bb32, %bb
  %tmp4 = load i32, i32* @a, align 4, !dbg !37
  %tmp5 = icmp sgt i32 %tmp4, 0, !dbg !38
  br i1 %tmp5, label %bb6, label %bb49, !dbg !36

bb6:                                              ; preds = %bb3
  %tmp7 = load i32**, i32*** @p, align 8, !dbg !39
  store i32* @b, i32** %tmp7, align 8, !dbg !41
  %tmp8 = load i32**, i32*** @p, align 8, !dbg !42
  %tmp9 = load i32*, i32** @x, align 8, !dbg !43
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp8, i32* %tmp9), !dbg !44
  %tmp10 = load i32**, i32*** @p, align 8, !dbg !45
  %tmp11 = load i32*, i32** @y, align 8, !dbg !46
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp10, i32* %tmp11), !dbg !47
  %tmp12 = load i32**, i32*** @q, align 8, !dbg !48
  %tmp13 = load i32*, i32** @x, align 8, !dbg !49
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp12, i32* %tmp13), !dbg !50
  %tmp14 = load i32*, i32** @x, align 8, !dbg !51
  %tmp15 = load i32, i32* @b, align 4, !dbg !52
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp14, i32 %tmp15), !dbg !53
  %tmp16 = load i32*, i32** @y, align 8, !dbg !54
  %tmp17 = load i32, i32* @b, align 4, !dbg !55
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp16, i32 %tmp17), !dbg !56
  %tmp18 = load i32*, i32** @y, align 8, !dbg !57
  %tmp19 = load i32, i32* @a, align 4, !dbg !58
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp18, i32 %tmp19), !dbg !59
  br label %bb20, !dbg !60

bb20:                                             ; preds = %bb23, %bb6
  %tmp21 = load i32, i32* @b, align 4, !dbg !61
  %tmp22 = icmp sgt i32 %tmp21, 0, !dbg !62
  br i1 %tmp22, label %bb23, label %bb32, !dbg !60

bb23:                                             ; preds = %bb20
  store i32* @b, i32** @x, align 8, !dbg !63
  %tmp24 = load i32*, i32** @x, align 8, !dbg !65
  %tmp25 = load i32, i32* @b, align 4, !dbg !66
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp24, i32 %tmp25), !dbg !67
  store i32* @a, i32** @y, align 8, !dbg !68
  %tmp26 = load i32*, i32** @y, align 8, !dbg !69
  %tmp27 = load i32, i32* @a, align 4, !dbg !70
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp26, i32 %tmp27), !dbg !71
  store i32** @y, i32*** @q, align 8, !dbg !72
  %tmp28 = load i32**, i32*** @q, align 8, !dbg !73
  %tmp29 = load i32*, i32** @y, align 8, !dbg !74
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !75
  %tmp30 = load i32, i32* @b, align 4, !dbg !76
  %tmp31 = add nsw i32 %tmp30, -1, !dbg !76
  store i32 %tmp31, i32* @b, align 4, !dbg !76
  br label %bb20, !dbg !60, !llvm.loop !77

bb32:                                             ; preds = %bb20
  store i32** @y, i32*** @p, align 8, !dbg !79
  %tmp33 = load i32**, i32*** @p, align 8, !dbg !80
  %tmp34 = load i32*, i32** @y, align 8, !dbg !81
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp33, i32* %tmp34), !dbg !82
  %tmp35 = load i32*, i32** @x, align 8, !dbg !83
  %tmp36 = load i32, i32* @b, align 4, !dbg !84
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp35, i32 %tmp36), !dbg !85
  %tmp37 = load i32*, i32** @y, align 8, !dbg !86
  %tmp38 = load i32, i32* @a, align 4, !dbg !87
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp37, i32 %tmp38), !dbg !88
  %tmp39 = load i32*, i32** @y, align 8, !dbg !89
  %tmp40 = load i32, i32* @b, align 4, !dbg !90
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp39, i32 %tmp40), !dbg !91
  %tmp41 = load i32**, i32*** @q, align 8, !dbg !92
  %tmp42 = load i32*, i32** @x, align 8, !dbg !93
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp41, i32* %tmp42), !dbg !94
  %tmp43 = load i32**, i32*** @q, align 8, !dbg !95
  %tmp44 = load i32*, i32** @y, align 8, !dbg !96
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp43, i32* %tmp44), !dbg !97
  store i32** @x, i32*** @q, align 8, !dbg !98
  %tmp45 = load i32**, i32*** @q, align 8, !dbg !99
  %tmp46 = load i32*, i32** @x, align 8, !dbg !100
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp45, i32* %tmp46), !dbg !101
  %tmp47 = load i32, i32* @a, align 4, !dbg !102
  %tmp48 = add nsw i32 %tmp47, -1, !dbg !102
  store i32 %tmp48, i32* @a, align 4, !dbg !102
  br label %bb3, !dbg !36, !llvm.loop !103

bb49:                                             ; preds = %bb3
  %tmp50 = load i32, i32* @a, align 4, !dbg !105
  %tmp51 = icmp sgt i32 %tmp50, -1, !dbg !107
  br i1 %tmp51, label %bb52, label %bb70, !dbg !108

bb52:                                             ; preds = %bb49
  %tmp53 = load i32**, i32*** @p, align 8, !dbg !109
  store i32* @c, i32** %tmp53, align 8, !dbg !111
  %tmp54 = load i32**, i32*** @p, align 8, !dbg !112
  %tmp55 = load i32*, i32** @x, align 8, !dbg !113
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp54, i32* %tmp55), !dbg !114
  %tmp56 = load i32**, i32*** @p, align 8, !dbg !115
  %tmp57 = load i32*, i32** @y, align 8, !dbg !116
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp56, i32* %tmp57), !dbg !117
  %tmp58 = load i32*, i32** @x, align 8, !dbg !118
  %tmp59 = load i32, i32* @a, align 4, !dbg !119
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp58, i32 %tmp59), !dbg !120
  %tmp60 = load i32*, i32** @x, align 8, !dbg !121
  %tmp61 = load i32, i32* @b, align 4, !dbg !122
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp60, i32 %tmp61), !dbg !123
  %tmp62 = load i32*, i32** @x, align 8, !dbg !124
  %tmp63 = load i32, i32* @c, align 4, !dbg !125
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp62, i32 %tmp63), !dbg !126
  %tmp64 = load i32*, i32** @y, align 8, !dbg !127
  %tmp65 = load i32, i32* @a, align 4, !dbg !128
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp64, i32 %tmp65), !dbg !129
  %tmp66 = load i32*, i32** @y, align 8, !dbg !130
  %tmp67 = load i32, i32* @b, align 4, !dbg !131
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp66, i32 %tmp67), !dbg !132
  %tmp68 = load i32*, i32** @y, align 8, !dbg !133
  %tmp69 = load i32, i32* @c, align 4, !dbg !134
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp68, i32 %tmp69), !dbg !135
  br label %bb84, !dbg !136

bb70:                                             ; preds = %bb49
  %tmp71 = load i32**, i32*** @p, align 8, !dbg !137
  store i32* @b, i32** %tmp71, align 8, !dbg !139
  %tmp72 = load i32**, i32*** @p, align 8, !dbg !140
  %tmp73 = load i32*, i32** @x, align 8, !dbg !141
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp72, i32* %tmp73), !dbg !142
  %tmp74 = load i32**, i32*** @p, align 8, !dbg !143
  %tmp75 = load i32*, i32** @y, align 8, !dbg !144
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp74, i32* %tmp75), !dbg !145
  %tmp76 = load i32*, i32** @x, align 8, !dbg !146
  %tmp77 = load i32, i32* @a, align 4, !dbg !147
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp76, i32 %tmp77), !dbg !148
  %tmp78 = load i32*, i32** @x, align 8, !dbg !149
  %tmp79 = load i32, i32* @b, align 4, !dbg !150
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp78, i32 %tmp79), !dbg !151
  %tmp80 = load i32*, i32** @y, align 8, !dbg !152
  %tmp81 = load i32, i32* @a, align 4, !dbg !153
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp80, i32 %tmp81), !dbg !154
  %tmp82 = load i32*, i32** @y, align 8, !dbg !155
  %tmp83 = load i32, i32* @b, align 4, !dbg !156
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp82, i32 %tmp83), !dbg !157
  br label %bb84

bb84:                                             ; preds = %bb70, %bb52
  store i32* @a, i32** @x, align 8, !dbg !158
  %tmp85 = load i32**, i32*** @p, align 8, !dbg !159
  %tmp86 = load i32*, i32** @x, align 8, !dbg !160
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp85, i32* %tmp86), !dbg !161
  %tmp87 = load i32**, i32*** @p, align 8, !dbg !162
  %tmp88 = load i32*, i32** @y, align 8, !dbg !163
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp87, i32* %tmp88), !dbg !164
  %tmp89 = load i32*, i32** @y, align 8, !dbg !165
  %tmp90 = load i32, i32* @c, align 4, !dbg !166
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp89, i32 %tmp90), !dbg !167
  %tmp91 = load i32*, i32** @y, align 8, !dbg !168
  %tmp92 = load i32, i32* @b, align 4, !dbg !169
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp91, i32 %tmp92), !dbg !170
  %tmp93 = load i32*, i32** @y, align 8, !dbg !171
  %tmp94 = load i32, i32* @a, align 4, !dbg !172
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp93, i32 %tmp94), !dbg !173
  %tmp95 = load i32*, i32** @x, align 8, !dbg !174
  %tmp96 = load i32, i32* @a, align 4, !dbg !175
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp95, i32 %tmp96), !dbg !176
  store i32* @b, i32** @y, align 8, !dbg !177
  %tmp97 = load i32*, i32** @y, align 8, !dbg !178
  %tmp98 = load i32, i32* @b, align 4, !dbg !179
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp97, i32 %tmp98), !dbg !180
  ret i32 0, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !182 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !191, metadata !DIExpression()), !dbg !190
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !193 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !196, metadata !DIExpression()), !dbg !195
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !198 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !206, metadata !DIExpression()), !dbg !205
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !208 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !211, metadata !DIExpression()), !dbg !210
  ret void, !dbg !212
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
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase3.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !11, !13, !15, !17, !19, !21, !23}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "r", scope: !2, file: !3, line: 4, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "z", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 4, type: !10, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 4, type: !10, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 4, type: !10, isLocal: false, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.0 "}
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 5, type: !30, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!10}
!32 = !DILocation(line: 6, column: 7, scope: !29)
!33 = !DILocation(line: 7, column: 18, scope: !29)
!34 = !DILocation(line: 7, column: 20, scope: !29)
!35 = !DILocation(line: 7, column: 5, scope: !29)
!36 = !DILocation(line: 13, column: 5, scope: !29)
!37 = !DILocation(line: 13, column: 11, scope: !29)
!38 = !DILocation(line: 13, column: 13, scope: !29)
!39 = !DILocation(line: 15, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !3, line: 13, column: 17)
!41 = !DILocation(line: 15, column: 12, scope: !40)
!42 = !DILocation(line: 16, column: 21, scope: !40)
!43 = !DILocation(line: 16, column: 23, scope: !40)
!44 = !DILocation(line: 16, column: 9, scope: !40)
!45 = !DILocation(line: 17, column: 21, scope: !40)
!46 = !DILocation(line: 17, column: 23, scope: !40)
!47 = !DILocation(line: 17, column: 9, scope: !40)
!48 = !DILocation(line: 19, column: 21, scope: !40)
!49 = !DILocation(line: 19, column: 23, scope: !40)
!50 = !DILocation(line: 19, column: 9, scope: !40)
!51 = !DILocation(line: 21, column: 21, scope: !40)
!52 = !DILocation(line: 21, column: 23, scope: !40)
!53 = !DILocation(line: 21, column: 9, scope: !40)
!54 = !DILocation(line: 22, column: 21, scope: !40)
!55 = !DILocation(line: 22, column: 23, scope: !40)
!56 = !DILocation(line: 22, column: 9, scope: !40)
!57 = !DILocation(line: 23, column: 21, scope: !40)
!58 = !DILocation(line: 23, column: 23, scope: !40)
!59 = !DILocation(line: 23, column: 9, scope: !40)
!60 = !DILocation(line: 25, column: 9, scope: !40)
!61 = !DILocation(line: 25, column: 15, scope: !40)
!62 = !DILocation(line: 25, column: 17, scope: !40)
!63 = !DILocation(line: 33, column: 15, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !3, line: 25, column: 21)
!65 = !DILocation(line: 34, column: 26, scope: !64)
!66 = !DILocation(line: 34, column: 28, scope: !64)
!67 = !DILocation(line: 34, column: 13, scope: !64)
!68 = !DILocation(line: 35, column: 15, scope: !64)
!69 = !DILocation(line: 36, column: 26, scope: !64)
!70 = !DILocation(line: 36, column: 28, scope: !64)
!71 = !DILocation(line: 36, column: 13, scope: !64)
!72 = !DILocation(line: 37, column: 15, scope: !64)
!73 = !DILocation(line: 38, column: 26, scope: !64)
!74 = !DILocation(line: 38, column: 28, scope: !64)
!75 = !DILocation(line: 38, column: 13, scope: !64)
!76 = !DILocation(line: 41, column: 14, scope: !64)
!77 = distinct !{!77, !60, !78}
!78 = !DILocation(line: 42, column: 9, scope: !40)
!79 = !DILocation(line: 45, column: 11, scope: !40)
!80 = !DILocation(line: 46, column: 22, scope: !40)
!81 = !DILocation(line: 46, column: 24, scope: !40)
!82 = !DILocation(line: 46, column: 9, scope: !40)
!83 = !DILocation(line: 48, column: 21, scope: !40)
!84 = !DILocation(line: 48, column: 23, scope: !40)
!85 = !DILocation(line: 48, column: 9, scope: !40)
!86 = !DILocation(line: 49, column: 21, scope: !40)
!87 = !DILocation(line: 49, column: 23, scope: !40)
!88 = !DILocation(line: 49, column: 9, scope: !40)
!89 = !DILocation(line: 50, column: 21, scope: !40)
!90 = !DILocation(line: 50, column: 23, scope: !40)
!91 = !DILocation(line: 50, column: 9, scope: !40)
!92 = !DILocation(line: 51, column: 21, scope: !40)
!93 = !DILocation(line: 51, column: 23, scope: !40)
!94 = !DILocation(line: 51, column: 9, scope: !40)
!95 = !DILocation(line: 52, column: 21, scope: !40)
!96 = !DILocation(line: 52, column: 23, scope: !40)
!97 = !DILocation(line: 52, column: 9, scope: !40)
!98 = !DILocation(line: 55, column: 11, scope: !40)
!99 = !DILocation(line: 56, column: 22, scope: !40)
!100 = !DILocation(line: 56, column: 24, scope: !40)
!101 = !DILocation(line: 56, column: 9, scope: !40)
!102 = !DILocation(line: 59, column: 10, scope: !40)
!103 = distinct !{!103, !36, !104}
!104 = !DILocation(line: 60, column: 5, scope: !29)
!105 = !DILocation(line: 62, column: 8, scope: !106)
!106 = distinct !DILexicalBlock(scope: !29, file: !3, line: 62, column: 8)
!107 = !DILocation(line: 62, column: 10, scope: !106)
!108 = !DILocation(line: 62, column: 8, scope: !29)
!109 = !DILocation(line: 66, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 62, column: 15)
!111 = !DILocation(line: 66, column: 12, scope: !110)
!112 = !DILocation(line: 67, column: 21, scope: !110)
!113 = !DILocation(line: 67, column: 23, scope: !110)
!114 = !DILocation(line: 67, column: 9, scope: !110)
!115 = !DILocation(line: 68, column: 21, scope: !110)
!116 = !DILocation(line: 68, column: 23, scope: !110)
!117 = !DILocation(line: 68, column: 9, scope: !110)
!118 = !DILocation(line: 69, column: 21, scope: !110)
!119 = !DILocation(line: 69, column: 23, scope: !110)
!120 = !DILocation(line: 69, column: 9, scope: !110)
!121 = !DILocation(line: 70, column: 21, scope: !110)
!122 = !DILocation(line: 70, column: 23, scope: !110)
!123 = !DILocation(line: 70, column: 9, scope: !110)
!124 = !DILocation(line: 71, column: 21, scope: !110)
!125 = !DILocation(line: 71, column: 23, scope: !110)
!126 = !DILocation(line: 71, column: 9, scope: !110)
!127 = !DILocation(line: 72, column: 21, scope: !110)
!128 = !DILocation(line: 72, column: 23, scope: !110)
!129 = !DILocation(line: 72, column: 9, scope: !110)
!130 = !DILocation(line: 73, column: 21, scope: !110)
!131 = !DILocation(line: 73, column: 23, scope: !110)
!132 = !DILocation(line: 73, column: 9, scope: !110)
!133 = !DILocation(line: 74, column: 21, scope: !110)
!134 = !DILocation(line: 74, column: 23, scope: !110)
!135 = !DILocation(line: 74, column: 9, scope: !110)
!136 = !DILocation(line: 76, column: 5, scope: !110)
!137 = !DILocation(line: 81, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !106, file: !3, line: 77, column: 9)
!139 = !DILocation(line: 81, column: 12, scope: !138)
!140 = !DILocation(line: 82, column: 21, scope: !138)
!141 = !DILocation(line: 82, column: 23, scope: !138)
!142 = !DILocation(line: 82, column: 9, scope: !138)
!143 = !DILocation(line: 83, column: 21, scope: !138)
!144 = !DILocation(line: 83, column: 23, scope: !138)
!145 = !DILocation(line: 83, column: 9, scope: !138)
!146 = !DILocation(line: 84, column: 21, scope: !138)
!147 = !DILocation(line: 84, column: 23, scope: !138)
!148 = !DILocation(line: 84, column: 9, scope: !138)
!149 = !DILocation(line: 85, column: 21, scope: !138)
!150 = !DILocation(line: 85, column: 23, scope: !138)
!151 = !DILocation(line: 85, column: 9, scope: !138)
!152 = !DILocation(line: 86, column: 21, scope: !138)
!153 = !DILocation(line: 86, column: 23, scope: !138)
!154 = !DILocation(line: 86, column: 9, scope: !138)
!155 = !DILocation(line: 87, column: 21, scope: !138)
!156 = !DILocation(line: 87, column: 23, scope: !138)
!157 = !DILocation(line: 87, column: 9, scope: !138)
!158 = !DILocation(line: 95, column: 7, scope: !29)
!159 = !DILocation(line: 97, column: 17, scope: !29)
!160 = !DILocation(line: 97, column: 19, scope: !29)
!161 = !DILocation(line: 97, column: 5, scope: !29)
!162 = !DILocation(line: 98, column: 17, scope: !29)
!163 = !DILocation(line: 98, column: 19, scope: !29)
!164 = !DILocation(line: 98, column: 5, scope: !29)
!165 = !DILocation(line: 99, column: 17, scope: !29)
!166 = !DILocation(line: 99, column: 19, scope: !29)
!167 = !DILocation(line: 99, column: 5, scope: !29)
!168 = !DILocation(line: 100, column: 17, scope: !29)
!169 = !DILocation(line: 100, column: 19, scope: !29)
!170 = !DILocation(line: 100, column: 5, scope: !29)
!171 = !DILocation(line: 101, column: 17, scope: !29)
!172 = !DILocation(line: 101, column: 19, scope: !29)
!173 = !DILocation(line: 101, column: 5, scope: !29)
!174 = !DILocation(line: 102, column: 18, scope: !29)
!175 = !DILocation(line: 102, column: 20, scope: !29)
!176 = !DILocation(line: 102, column: 5, scope: !29)
!177 = !DILocation(line: 104, column: 7, scope: !29)
!178 = !DILocation(line: 105, column: 18, scope: !29)
!179 = !DILocation(line: 105, column: 20, scope: !29)
!180 = !DILocation(line: 105, column: 5, scope: !29)
!181 = !DILocation(line: 107, column: 5, scope: !29)
!182 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !183, file: !183, line: 6, type: !184, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !186, retainedNodes: !4)
!183 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!184 = !DISubroutineType(types: !185)
!185 = !{null, !8, !9}
!186 = !{!187, !188}
!187 = !DITemplateTypeParameter(name: "T", type: !8)
!188 = !DITemplateTypeParameter(name: "U", type: !9)
!189 = !DILocalVariable(arg: 1, scope: !182, file: !183, line: 6, type: !8)
!190 = !DILocation(line: 0, scope: !182)
!191 = !DILocalVariable(arg: 2, scope: !182, file: !183, line: 6, type: !9)
!192 = !DILocation(line: 9, column: 1, scope: !182)
!193 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !183, file: !183, line: 16, type: !184, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !186, retainedNodes: !4)
!194 = !DILocalVariable(arg: 1, scope: !193, file: !183, line: 16, type: !8)
!195 = !DILocation(line: 0, scope: !193)
!196 = !DILocalVariable(arg: 2, scope: !193, file: !183, line: 16, type: !9)
!197 = !DILocation(line: 19, column: 1, scope: !193)
!198 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !183, file: !183, line: 16, type: !199, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !201, retainedNodes: !4)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !9, !10}
!201 = !{!202, !203}
!202 = !DITemplateTypeParameter(name: "T", type: !9)
!203 = !DITemplateTypeParameter(name: "U", type: !10)
!204 = !DILocalVariable(arg: 1, scope: !198, file: !183, line: 16, type: !9)
!205 = !DILocation(line: 0, scope: !198)
!206 = !DILocalVariable(arg: 2, scope: !198, file: !183, line: 16, type: !10)
!207 = !DILocation(line: 19, column: 1, scope: !198)
!208 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !183, file: !183, line: 6, type: !199, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !201, retainedNodes: !4)
!209 = !DILocalVariable(arg: 1, scope: !208, file: !183, line: 6, type: !9)
!210 = !DILocation(line: 0, scope: !208)
!211 = !DILocalVariable(arg: 2, scope: !208, file: !183, line: 6, type: !10)
!212 = !DILocation(line: 9, column: 1, scope: !208)
