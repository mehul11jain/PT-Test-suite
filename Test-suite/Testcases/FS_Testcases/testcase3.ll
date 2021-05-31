; ModuleID = 'testcase3.ll'
source_filename = "testcase3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z15DoesNotPointsToIPPiS0_EvT_T0_ = comdat any

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
  %tmp3 = load i32**, i32*** @p, align 8, !dbg !36
  %tmp4 = load i32*, i32** @y, align 8, !dbg !37
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp3, i32* %tmp4), !dbg !38
  %tmp5 = load i32**, i32*** @p, align 8, !dbg !39
  %tmp6 = load i32*, i32** @z, align 8, !dbg !40
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp5, i32* %tmp6), !dbg !41
  br label %bb7, !dbg !42

bb7:                                              ; preds = %bb46, %bb
  %tmp8 = load i32, i32* @a, align 4, !dbg !43
  %tmp9 = icmp sgt i32 %tmp8, 0, !dbg !44
  br i1 %tmp9, label %bb10, label %bb62, !dbg !42

bb10:                                             ; preds = %bb7
  %tmp11 = load i32**, i32*** @p, align 8, !dbg !45
  %tmp12 = load i32*, i32** @x, align 8, !dbg !47
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp11, i32* %tmp12), !dbg !48
  %tmp13 = load i32**, i32*** @p, align 8, !dbg !49
  %tmp14 = load i32*, i32** @y, align 8, !dbg !50
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp13, i32* %tmp14), !dbg !51
  %tmp15 = load i32**, i32*** @p, align 8, !dbg !52
  %tmp16 = load i32*, i32** @z, align 8, !dbg !53
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp15, i32* %tmp16), !dbg !54
  %tmp17 = load i32**, i32*** @q, align 8, !dbg !55
  %tmp18 = load i32*, i32** @x, align 8, !dbg !56
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp17, i32* %tmp18), !dbg !57
  %tmp19 = load i32**, i32*** @p, align 8, !dbg !58
  store i32* @b, i32** %tmp19, align 8, !dbg !59
  %tmp20 = load i32*, i32** @x, align 8, !dbg !60
  %tmp21 = load i32, i32* @b, align 4, !dbg !61
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp20, i32 %tmp21), !dbg !62
  %tmp22 = load i32*, i32** @y, align 8, !dbg !63
  %tmp23 = load i32, i32* @b, align 4, !dbg !64
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp22, i32 %tmp23), !dbg !65
  br label %bb24, !dbg !66

bb24:                                             ; preds = %bb27, %bb10
  %tmp25 = load i32, i32* @b, align 4, !dbg !67
  %tmp26 = icmp sgt i32 %tmp25, 0, !dbg !68
  br i1 %tmp26, label %bb27, label %bb46, !dbg !66

bb27:                                             ; preds = %bb24
  %tmp28 = load i32**, i32*** @q, align 8, !dbg !69
  %tmp29 = load i32*, i32** @x, align 8, !dbg !71
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !72
  %tmp30 = load i32**, i32*** @q, align 8, !dbg !73
  %tmp31 = load i32*, i32** @y, align 8, !dbg !74
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !75
  %tmp32 = load i32*, i32** @x, align 8, !dbg !76
  %tmp33 = load i32, i32* @b, align 4, !dbg !77
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !78
  %tmp34 = load i32*, i32** @y, align 8, !dbg !79
  %tmp35 = load i32, i32* @a, align 4, !dbg !80
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !81
  %tmp36 = load i32*, i32** @y, align 8, !dbg !82
  %tmp37 = load i32, i32* @b, align 4, !dbg !83
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !84
  store i32* @b, i32** @x, align 8, !dbg !85
  store i32* @a, i32** @y, align 8, !dbg !86
  store i32** @y, i32*** @q, align 8, !dbg !87
  %tmp38 = load i32*, i32** @x, align 8, !dbg !88
  %tmp39 = load i32, i32* @b, align 4, !dbg !89
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp38, i32 %tmp39), !dbg !90
  %tmp40 = load i32*, i32** @y, align 8, !dbg !91
  %tmp41 = load i32, i32* @a, align 4, !dbg !92
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp40, i32 %tmp41), !dbg !93
  %tmp42 = load i32**, i32*** @q, align 8, !dbg !94
  %tmp43 = load i32*, i32** @y, align 8, !dbg !95
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp42, i32* %tmp43), !dbg !96
  %tmp44 = load i32, i32* @b, align 4, !dbg !97
  %tmp45 = add nsw i32 %tmp44, -1, !dbg !97
  store i32 %tmp45, i32* @b, align 4, !dbg !97
  br label %bb24, !dbg !66, !llvm.loop !98

bb46:                                             ; preds = %bb24
  %tmp47 = load i32*, i32** @x, align 8, !dbg !100
  %tmp48 = load i32, i32* @b, align 4, !dbg !101
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp47, i32 %tmp48), !dbg !102
  %tmp49 = load i32*, i32** @y, align 8, !dbg !103
  %tmp50 = load i32, i32* @a, align 4, !dbg !104
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp49, i32 %tmp50), !dbg !105
  %tmp51 = load i32*, i32** @y, align 8, !dbg !106
  %tmp52 = load i32, i32* @b, align 4, !dbg !107
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp51, i32 %tmp52), !dbg !108
  %tmp53 = load i32**, i32*** @q, align 8, !dbg !109
  %tmp54 = load i32*, i32** @x, align 8, !dbg !110
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp53, i32* %tmp54), !dbg !111
  %tmp55 = load i32**, i32*** @q, align 8, !dbg !112
  %tmp56 = load i32*, i32** @y, align 8, !dbg !113
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp55, i32* %tmp56), !dbg !114
  store i32** @y, i32*** @p, align 8, !dbg !115
  store i32** @x, i32*** @q, align 8, !dbg !116
  %tmp57 = load i32**, i32*** @r, align 8, !dbg !117
  store i32** %tmp57, i32*** @p, align 8, !dbg !118
  %tmp58 = load i32**, i32*** @q, align 8, !dbg !119
  %tmp59 = load i32*, i32** @x, align 8, !dbg !120
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp58, i32* %tmp59), !dbg !121
  %tmp60 = load i32, i32* @a, align 4, !dbg !122
  %tmp61 = add nsw i32 %tmp60, -1, !dbg !122
  store i32 %tmp61, i32* @a, align 4, !dbg !122
  br label %bb7, !dbg !42, !llvm.loop !123

bb62:                                             ; preds = %bb7
  %tmp63 = load i32, i32* @a, align 4, !dbg !125
  %tmp64 = icmp sgt i32 %tmp63, -1, !dbg !127
  br i1 %tmp64, label %bb65, label %bb73, !dbg !128

bb65:                                             ; preds = %bb62
  %tmp66 = load i32**, i32*** @p, align 8, !dbg !129
  %tmp67 = load i32*, i32** @x, align 8, !dbg !131
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp66, i32* %tmp67), !dbg !132
  %tmp68 = load i32**, i32*** @q, align 8, !dbg !133
  %tmp69 = load i32*, i32** @x, align 8, !dbg !134
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp68, i32* %tmp69), !dbg !135
  %tmp70 = load i32**, i32*** @q, align 8, !dbg !136
  %tmp71 = load i32*, i32** %tmp70, align 8, !dbg !137
  %tmp72 = load i32**, i32*** @p, align 8, !dbg !138
  store i32* %tmp71, i32** %tmp72, align 8, !dbg !139
  br label %bb81, !dbg !140

bb73:                                             ; preds = %bb62
  %tmp74 = load i32**, i32*** @p, align 8, !dbg !141
  %tmp75 = load i32*, i32** @x, align 8, !dbg !143
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp74, i32* %tmp75), !dbg !144
  %tmp76 = load i32**, i32*** @q, align 8, !dbg !145
  %tmp77 = load i32*, i32** @x, align 8, !dbg !146
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp76, i32* %tmp77), !dbg !147
  %tmp78 = load i32**, i32*** @q, align 8, !dbg !148
  store i32* @a, i32** %tmp78, align 8, !dbg !149
  %tmp79 = load i32*, i32** @x, align 8, !dbg !150
  %tmp80 = load i32, i32* @a, align 4, !dbg !151
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp79, i32 %tmp80), !dbg !152
  br label %bb81

bb81:                                             ; preds = %bb73, %bb65
  %tmp82 = load i32**, i32*** @p, align 8, !dbg !153
  %tmp83 = load i32*, i32** @x, align 8, !dbg !154
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp82, i32* %tmp83), !dbg !155
  %tmp84 = load i32**, i32*** @q, align 8, !dbg !156
  %tmp85 = load i32*, i32** @x, align 8, !dbg !157
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp84, i32* %tmp85), !dbg !158
  %tmp86 = load i32*, i32** @x, align 8, !dbg !159
  %tmp87 = load i32, i32* @a, align 4, !dbg !160
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp86, i32 %tmp87), !dbg !161
  store i32* @a, i32** @x, align 8, !dbg !162
  store i32* @b, i32** @y, align 8, !dbg !163
  %tmp88 = load i32*, i32** @x, align 8, !dbg !164
  %tmp89 = load i32, i32* @a, align 4, !dbg !165
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp88, i32 %tmp89), !dbg !166
  %tmp90 = load i32*, i32** @y, align 8, !dbg !167
  %tmp91 = load i32, i32* @b, align 4, !dbg !168
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp90, i32 %tmp91), !dbg !169
  ret i32 0, !dbg !170
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !171 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !180, metadata !DIExpression()), !dbg !179
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !182 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !185, metadata !DIExpression()), !dbg !184
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !187 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !190, metadata !DIExpression()), !dbg !189
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !192 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !200, metadata !DIExpression()), !dbg !199
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !202 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !205, metadata !DIExpression()), !dbg !204
  ret void, !dbg !206
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
!3 = !DIFile(filename: "testcase3.cpp", directory: "/home/mehul/Desktop/SVF-example/testcases")
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
!36 = !DILocation(line: 8, column: 21, scope: !29)
!37 = !DILocation(line: 8, column: 23, scope: !29)
!38 = !DILocation(line: 8, column: 5, scope: !29)
!39 = !DILocation(line: 9, column: 21, scope: !29)
!40 = !DILocation(line: 9, column: 23, scope: !29)
!41 = !DILocation(line: 9, column: 5, scope: !29)
!42 = !DILocation(line: 13, column: 5, scope: !29)
!43 = !DILocation(line: 13, column: 11, scope: !29)
!44 = !DILocation(line: 13, column: 13, scope: !29)
!45 = !DILocation(line: 14, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !3, line: 13, column: 17)
!47 = !DILocation(line: 14, column: 23, scope: !46)
!48 = !DILocation(line: 14, column: 9, scope: !46)
!49 = !DILocation(line: 15, column: 21, scope: !46)
!50 = !DILocation(line: 15, column: 23, scope: !46)
!51 = !DILocation(line: 15, column: 9, scope: !46)
!52 = !DILocation(line: 16, column: 25, scope: !46)
!53 = !DILocation(line: 16, column: 27, scope: !46)
!54 = !DILocation(line: 16, column: 9, scope: !46)
!55 = !DILocation(line: 17, column: 21, scope: !46)
!56 = !DILocation(line: 17, column: 23, scope: !46)
!57 = !DILocation(line: 17, column: 9, scope: !46)
!58 = !DILocation(line: 19, column: 10, scope: !46)
!59 = !DILocation(line: 19, column: 12, scope: !46)
!60 = !DILocation(line: 20, column: 21, scope: !46)
!61 = !DILocation(line: 20, column: 23, scope: !46)
!62 = !DILocation(line: 20, column: 9, scope: !46)
!63 = !DILocation(line: 21, column: 21, scope: !46)
!64 = !DILocation(line: 21, column: 23, scope: !46)
!65 = !DILocation(line: 21, column: 9, scope: !46)
!66 = !DILocation(line: 23, column: 9, scope: !46)
!67 = !DILocation(line: 23, column: 15, scope: !46)
!68 = !DILocation(line: 23, column: 17, scope: !46)
!69 = !DILocation(line: 24, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !46, file: !3, line: 23, column: 21)
!71 = !DILocation(line: 24, column: 27, scope: !70)
!72 = !DILocation(line: 24, column: 13, scope: !70)
!73 = !DILocation(line: 25, column: 25, scope: !70)
!74 = !DILocation(line: 25, column: 27, scope: !70)
!75 = !DILocation(line: 25, column: 13, scope: !70)
!76 = !DILocation(line: 26, column: 26, scope: !70)
!77 = !DILocation(line: 26, column: 28, scope: !70)
!78 = !DILocation(line: 26, column: 13, scope: !70)
!79 = !DILocation(line: 27, column: 25, scope: !70)
!80 = !DILocation(line: 27, column: 27, scope: !70)
!81 = !DILocation(line: 27, column: 13, scope: !70)
!82 = !DILocation(line: 28, column: 25, scope: !70)
!83 = !DILocation(line: 28, column: 27, scope: !70)
!84 = !DILocation(line: 28, column: 13, scope: !70)
!85 = !DILocation(line: 30, column: 15, scope: !70)
!86 = !DILocation(line: 31, column: 15, scope: !70)
!87 = !DILocation(line: 32, column: 15, scope: !70)
!88 = !DILocation(line: 34, column: 26, scope: !70)
!89 = !DILocation(line: 34, column: 28, scope: !70)
!90 = !DILocation(line: 34, column: 13, scope: !70)
!91 = !DILocation(line: 35, column: 26, scope: !70)
!92 = !DILocation(line: 35, column: 28, scope: !70)
!93 = !DILocation(line: 35, column: 13, scope: !70)
!94 = !DILocation(line: 36, column: 26, scope: !70)
!95 = !DILocation(line: 36, column: 28, scope: !70)
!96 = !DILocation(line: 36, column: 13, scope: !70)
!97 = !DILocation(line: 38, column: 14, scope: !70)
!98 = distinct !{!98, !66, !99}
!99 = !DILocation(line: 39, column: 9, scope: !46)
!100 = !DILocation(line: 40, column: 21, scope: !46)
!101 = !DILocation(line: 40, column: 23, scope: !46)
!102 = !DILocation(line: 40, column: 9, scope: !46)
!103 = !DILocation(line: 41, column: 21, scope: !46)
!104 = !DILocation(line: 41, column: 23, scope: !46)
!105 = !DILocation(line: 41, column: 9, scope: !46)
!106 = !DILocation(line: 42, column: 21, scope: !46)
!107 = !DILocation(line: 42, column: 23, scope: !46)
!108 = !DILocation(line: 42, column: 9, scope: !46)
!109 = !DILocation(line: 43, column: 21, scope: !46)
!110 = !DILocation(line: 43, column: 23, scope: !46)
!111 = !DILocation(line: 43, column: 9, scope: !46)
!112 = !DILocation(line: 44, column: 21, scope: !46)
!113 = !DILocation(line: 44, column: 23, scope: !46)
!114 = !DILocation(line: 44, column: 9, scope: !46)
!115 = !DILocation(line: 46, column: 11, scope: !46)
!116 = !DILocation(line: 47, column: 11, scope: !46)
!117 = !DILocation(line: 48, column: 13, scope: !46)
!118 = !DILocation(line: 48, column: 11, scope: !46)
!119 = !DILocation(line: 50, column: 22, scope: !46)
!120 = !DILocation(line: 50, column: 24, scope: !46)
!121 = !DILocation(line: 50, column: 9, scope: !46)
!122 = !DILocation(line: 51, column: 10, scope: !46)
!123 = distinct !{!123, !42, !124}
!124 = !DILocation(line: 52, column: 5, scope: !29)
!125 = !DILocation(line: 54, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !29, file: !3, line: 54, column: 8)
!127 = !DILocation(line: 54, column: 10, scope: !126)
!128 = !DILocation(line: 54, column: 8, scope: !29)
!129 = !DILocation(line: 55, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !3, line: 54, column: 15)
!131 = !DILocation(line: 55, column: 23, scope: !130)
!132 = !DILocation(line: 55, column: 9, scope: !130)
!133 = !DILocation(line: 56, column: 21, scope: !130)
!134 = !DILocation(line: 56, column: 23, scope: !130)
!135 = !DILocation(line: 56, column: 9, scope: !130)
!136 = !DILocation(line: 57, column: 15, scope: !130)
!137 = !DILocation(line: 57, column: 14, scope: !130)
!138 = !DILocation(line: 57, column: 10, scope: !130)
!139 = !DILocation(line: 57, column: 12, scope: !130)
!140 = !DILocation(line: 59, column: 5, scope: !130)
!141 = !DILocation(line: 61, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !126, file: !3, line: 60, column: 9)
!143 = !DILocation(line: 61, column: 23, scope: !142)
!144 = !DILocation(line: 61, column: 9, scope: !142)
!145 = !DILocation(line: 62, column: 21, scope: !142)
!146 = !DILocation(line: 62, column: 23, scope: !142)
!147 = !DILocation(line: 62, column: 9, scope: !142)
!148 = !DILocation(line: 63, column: 10, scope: !142)
!149 = !DILocation(line: 63, column: 12, scope: !142)
!150 = !DILocation(line: 64, column: 21, scope: !142)
!151 = !DILocation(line: 64, column: 23, scope: !142)
!152 = !DILocation(line: 64, column: 9, scope: !142)
!153 = !DILocation(line: 67, column: 17, scope: !29)
!154 = !DILocation(line: 67, column: 19, scope: !29)
!155 = !DILocation(line: 67, column: 5, scope: !29)
!156 = !DILocation(line: 68, column: 17, scope: !29)
!157 = !DILocation(line: 68, column: 19, scope: !29)
!158 = !DILocation(line: 68, column: 5, scope: !29)
!159 = !DILocation(line: 69, column: 17, scope: !29)
!160 = !DILocation(line: 69, column: 19, scope: !29)
!161 = !DILocation(line: 69, column: 5, scope: !29)
!162 = !DILocation(line: 71, column: 7, scope: !29)
!163 = !DILocation(line: 72, column: 7, scope: !29)
!164 = !DILocation(line: 73, column: 18, scope: !29)
!165 = !DILocation(line: 73, column: 20, scope: !29)
!166 = !DILocation(line: 73, column: 5, scope: !29)
!167 = !DILocation(line: 74, column: 18, scope: !29)
!168 = !DILocation(line: 74, column: 20, scope: !29)
!169 = !DILocation(line: 74, column: 5, scope: !29)
!170 = !DILocation(line: 76, column: 5, scope: !29)
!171 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !172, file: !172, line: 6, type: !173, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !175, retainedNodes: !4)
!172 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/SVF-example/testcases")
!173 = !DISubroutineType(types: !174)
!174 = !{null, !8, !9}
!175 = !{!176, !177}
!176 = !DITemplateTypeParameter(name: "T", type: !8)
!177 = !DITemplateTypeParameter(name: "U", type: !9)
!178 = !DILocalVariable(arg: 1, scope: !171, file: !172, line: 6, type: !8)
!179 = !DILocation(line: 0, scope: !171)
!180 = !DILocalVariable(arg: 2, scope: !171, file: !172, line: 6, type: !9)
!181 = !DILocation(line: 9, column: 1, scope: !171)
!182 = distinct !DISubprogram(name: "DoesNotPointsTo<int **, int *>", linkageName: "_Z15DoesNotPointsToIPPiS0_EvT_T0_", scope: !172, file: !172, line: 11, type: !173, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !175, retainedNodes: !4)
!183 = !DILocalVariable(arg: 1, scope: !182, file: !172, line: 11, type: !8)
!184 = !DILocation(line: 0, scope: !182)
!185 = !DILocalVariable(arg: 2, scope: !182, file: !172, line: 11, type: !9)
!186 = !DILocation(line: 14, column: 1, scope: !182)
!187 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !172, file: !172, line: 16, type: !173, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !175, retainedNodes: !4)
!188 = !DILocalVariable(arg: 1, scope: !187, file: !172, line: 16, type: !8)
!189 = !DILocation(line: 0, scope: !187)
!190 = !DILocalVariable(arg: 2, scope: !187, file: !172, line: 16, type: !9)
!191 = !DILocation(line: 19, column: 1, scope: !187)
!192 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !172, file: !172, line: 16, type: !193, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !195, retainedNodes: !4)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !9, !10}
!195 = !{!196, !197}
!196 = !DITemplateTypeParameter(name: "T", type: !9)
!197 = !DITemplateTypeParameter(name: "U", type: !10)
!198 = !DILocalVariable(arg: 1, scope: !192, file: !172, line: 16, type: !9)
!199 = !DILocation(line: 0, scope: !192)
!200 = !DILocalVariable(arg: 2, scope: !192, file: !172, line: 16, type: !10)
!201 = !DILocation(line: 19, column: 1, scope: !192)
!202 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !172, file: !172, line: 6, type: !193, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !195, retainedNodes: !4)
!203 = !DILocalVariable(arg: 1, scope: !202, file: !172, line: 6, type: !9)
!204 = !DILocation(line: 0, scope: !202)
!205 = !DILocalVariable(arg: 2, scope: !202, file: !172, line: 6, type: !10)
!206 = !DILocation(line: 9, column: 1, scope: !202)
