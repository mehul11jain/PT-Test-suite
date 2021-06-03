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
  %tmp5 = load i32*, i32** @a, align 8, !dbg !38
  %tmp6 = load i32, i32* @x, align 4, !dbg !39
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp5, i32 %tmp6), !dbg !40
  store i32** @a, i32*** @c, align 8, !dbg !41
  %tmp7 = load i32**, i32*** @c, align 8, !dbg !42
  %tmp8 = load i32*, i32** @a, align 8, !dbg !43
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp7, i32* %tmp8), !dbg !44
  %tmp9 = load i32*, i32** @b, align 8, !dbg !45
  %tmp10 = load i32, i32* @y, align 4, !dbg !46
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp9, i32 %tmp10), !dbg !47
  %tmp11 = load i32*, i32** @a, align 8, !dbg !48
  %tmp12 = load i32, i32* @x, align 4, !dbg !49
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp11, i32 %tmp12), !dbg !50
  %tmp13 = load i32**, i32*** @c, align 8, !dbg !51
  store i32** %tmp13, i32*** @s, align 8, !dbg !52
  %tmp14 = load i32**, i32*** @s, align 8, !dbg !53
  %tmp15 = load i32*, i32** @a, align 8, !dbg !54
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp14, i32* %tmp15), !dbg !55
  %tmp16 = load i32**, i32*** @c, align 8, !dbg !56
  %tmp17 = load i32*, i32** @a, align 8, !dbg !57
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp16, i32* %tmp17), !dbg !58
  %tmp18 = load i32*, i32** @b, align 8, !dbg !59
  %tmp19 = load i32, i32* @y, align 4, !dbg !60
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp18, i32 %tmp19), !dbg !61
  %tmp20 = load i32*, i32** @a, align 8, !dbg !62
  %tmp21 = load i32, i32* @x, align 4, !dbg !63
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp20, i32 %tmp21), !dbg !64
  store i32** @w, i32*** @s, align 8, !dbg !65
  %tmp22 = load i32**, i32*** @s, align 8, !dbg !66
  %tmp23 = load i32*, i32** @w, align 8, !dbg !67
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp22, i32* %tmp23), !dbg !68
  %tmp24 = load i32**, i32*** @c, align 8, !dbg !69
  %tmp25 = load i32*, i32** @a, align 8, !dbg !70
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp24, i32* %tmp25), !dbg !71
  %tmp26 = load i32*, i32** @b, align 8, !dbg !72
  %tmp27 = load i32, i32* @y, align 4, !dbg !73
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp26, i32 %tmp27), !dbg !74
  %tmp28 = load i32*, i32** @a, align 8, !dbg !75
  %tmp29 = load i32, i32* @x, align 4, !dbg !76
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp28, i32 %tmp29), !dbg !77
  store i32* @u, i32** @w, align 8, !dbg !78
  %tmp30 = load i32*, i32** @w, align 8, !dbg !79
  %tmp31 = load i32, i32* @u, align 4, !dbg !80
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp30, i32 %tmp31), !dbg !81
  %tmp32 = load i32**, i32*** @s, align 8, !dbg !82
  %tmp33 = load i32*, i32** @w, align 8, !dbg !83
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp32, i32* %tmp33), !dbg !84
  %tmp34 = load i32**, i32*** @c, align 8, !dbg !85
  %tmp35 = load i32*, i32** @a, align 8, !dbg !86
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp34, i32* %tmp35), !dbg !87
  %tmp36 = load i32*, i32** @b, align 8, !dbg !88
  %tmp37 = load i32, i32* @y, align 4, !dbg !89
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !90
  %tmp38 = load i32*, i32** @a, align 8, !dbg !91
  %tmp39 = load i32, i32* @x, align 4, !dbg !92
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp38, i32 %tmp39), !dbg !93
  store i32 9, i32* @u, align 4, !dbg !94
  %tmp40 = load i32, i32* @x, align 4, !dbg !95
  %tmp41 = icmp eq i32 %tmp40, 5, !dbg !97
  br i1 %tmp41, label %bb42, label %bb64, !dbg !98

bb42:                                             ; preds = %bb
  %tmp43 = load i32**, i32*** @c, align 8, !dbg !99
  store i32* @y, i32** %tmp43, align 8, !dbg !101
  %tmp44 = load i32*, i32** @a, align 8, !dbg !102
  %tmp45 = load i32, i32* @y, align 4, !dbg !103
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp44, i32 %tmp45), !dbg !104
  %tmp46 = load i32*, i32** @w, align 8, !dbg !105
  %tmp47 = load i32, i32* @u, align 4, !dbg !106
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp46, i32 %tmp47), !dbg !107
  %tmp48 = load i32**, i32*** @s, align 8, !dbg !108
  %tmp49 = load i32*, i32** @w, align 8, !dbg !109
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp48, i32* %tmp49), !dbg !110
  %tmp50 = load i32**, i32*** @c, align 8, !dbg !111
  %tmp51 = load i32*, i32** @a, align 8, !dbg !112
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp50, i32* %tmp51), !dbg !113
  %tmp52 = load i32*, i32** @b, align 8, !dbg !114
  %tmp53 = load i32, i32* @y, align 4, !dbg !115
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp52, i32 %tmp53), !dbg !116
  store i32** @a, i32*** @s, align 8, !dbg !117
  %tmp54 = load i32**, i32*** @s, align 8, !dbg !118
  %tmp55 = load i32*, i32** @a, align 8, !dbg !119
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp54, i32* %tmp55), !dbg !120
  %tmp56 = load i32**, i32*** @c, align 8, !dbg !121
  %tmp57 = load i32*, i32** @a, align 8, !dbg !122
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp56, i32* %tmp57), !dbg !123
  %tmp58 = load i32*, i32** @b, align 8, !dbg !124
  %tmp59 = load i32, i32* @y, align 4, !dbg !125
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp58, i32 %tmp59), !dbg !126
  %tmp60 = load i32*, i32** @a, align 8, !dbg !127
  %tmp61 = load i32, i32* @y, align 4, !dbg !128
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp60, i32 %tmp61), !dbg !129
  %tmp62 = load i32*, i32** @w, align 8, !dbg !130
  %tmp63 = load i32, i32* @u, align 4, !dbg !131
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp62, i32 %tmp63), !dbg !132
  br label %bb85, !dbg !133

bb64:                                             ; preds = %bb
  store i32* @x, i32** @b, align 8, !dbg !134
  %tmp65 = load i32*, i32** @b, align 8, !dbg !136
  %tmp66 = load i32, i32* @x, align 4, !dbg !137
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp65, i32 %tmp66), !dbg !138
  %tmp67 = load i32*, i32** @w, align 8, !dbg !139
  %tmp68 = load i32, i32* @u, align 4, !dbg !140
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp67, i32 %tmp68), !dbg !141
  %tmp69 = load i32**, i32*** @s, align 8, !dbg !142
  %tmp70 = load i32*, i32** @w, align 8, !dbg !143
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp69, i32* %tmp70), !dbg !144
  %tmp71 = load i32**, i32*** @c, align 8, !dbg !145
  %tmp72 = load i32*, i32** @a, align 8, !dbg !146
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp71, i32* %tmp72), !dbg !147
  %tmp73 = load i32*, i32** @a, align 8, !dbg !148
  %tmp74 = load i32, i32* @x, align 4, !dbg !149
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp73, i32 %tmp74), !dbg !150
  store i32** @b, i32*** @s, align 8, !dbg !151
  %tmp75 = load i32**, i32*** @s, align 8, !dbg !152
  %tmp76 = load i32*, i32** @b, align 8, !dbg !153
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp75, i32* %tmp76), !dbg !154
  %tmp77 = load i32*, i32** @b, align 8, !dbg !155
  %tmp78 = load i32, i32* @x, align 4, !dbg !156
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp77, i32 %tmp78), !dbg !157
  %tmp79 = load i32*, i32** @w, align 8, !dbg !158
  %tmp80 = load i32, i32* @u, align 4, !dbg !159
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp79, i32 %tmp80), !dbg !160
  %tmp81 = load i32**, i32*** @c, align 8, !dbg !161
  %tmp82 = load i32*, i32** @a, align 8, !dbg !162
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp81, i32* %tmp82), !dbg !163
  %tmp83 = load i32*, i32** @a, align 8, !dbg !164
  %tmp84 = load i32, i32* @x, align 4, !dbg !165
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp83, i32 %tmp84), !dbg !166
  br label %bb85

bb85:                                             ; preds = %bb64, %bb42
  br label %bb86, !dbg !167

bb86:                                             ; preds = %bb89, %bb85
  %tmp87 = load i32, i32* @u, align 4, !dbg !168
  %tmp88 = icmp sgt i32 %tmp87, 10, !dbg !169
  br i1 %tmp88, label %bb89, label %bb113, !dbg !167

bb89:                                             ; preds = %bb86
  %tmp90 = load i32**, i32*** @s, align 8, !dbg !170
  store i32* @u, i32** %tmp90, align 8, !dbg !172
  %tmp91 = load i32*, i32** @a, align 8, !dbg !173
  %tmp92 = load i32, i32* @x, align 4, !dbg !174
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp91, i32 %tmp92), !dbg !175
  %tmp93 = load i32*, i32** @a, align 8, !dbg !176
  %tmp94 = load i32, i32* @y, align 4, !dbg !177
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp93, i32 %tmp94), !dbg !178
  %tmp95 = load i32*, i32** @b, align 8, !dbg !179
  %tmp96 = load i32, i32* @x, align 4, !dbg !180
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp95, i32 %tmp96), !dbg !181
  %tmp97 = load i32*, i32** @b, align 8, !dbg !182
  %tmp98 = load i32, i32* @y, align 4, !dbg !183
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp97, i32 %tmp98), !dbg !184
  %tmp99 = load i32**, i32*** @s, align 8, !dbg !185
  %tmp100 = load i32*, i32** @a, align 8, !dbg !186
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp99, i32* %tmp100), !dbg !187
  %tmp101 = load i32**, i32*** @s, align 8, !dbg !188
  %tmp102 = load i32*, i32** @b, align 8, !dbg !189
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp101, i32* %tmp102), !dbg !190
  %tmp103 = load i32**, i32*** @c, align 8, !dbg !191
  %tmp104 = load i32*, i32** @a, align 8, !dbg !192
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp103, i32* %tmp104), !dbg !193
  %tmp105 = load i32*, i32** @w, align 8, !dbg !194
  %tmp106 = load i32, i32* @u, align 4, !dbg !195
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp105, i32 %tmp106), !dbg !196
  %tmp107 = load i32*, i32** @a, align 8, !dbg !197
  %tmp108 = load i32, i32* @u, align 4, !dbg !198
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp107, i32 %tmp108), !dbg !199
  %tmp109 = load i32*, i32** @b, align 8, !dbg !200
  %tmp110 = load i32, i32* @u, align 4, !dbg !201
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp109, i32 %tmp110), !dbg !202
  %tmp111 = load i32, i32* @u, align 4, !dbg !203
  %tmp112 = add nsw i32 %tmp111, -1, !dbg !203
  store i32 %tmp112, i32* @u, align 4, !dbg !203
  br label %bb86, !dbg !167, !llvm.loop !204

bb113:                                            ; preds = %bb86
  ret i32 0, !dbg !206
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !207 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !216, metadata !DIExpression()), !dbg !215
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !218 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !226, metadata !DIExpression()), !dbg !225
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !228 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !231, metadata !DIExpression()), !dbg !230
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !233 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !236, metadata !DIExpression()), !dbg !235
  ret void, !dbg !237
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
!38 = !DILocation(line: 22, column: 18, scope: !27)
!39 = !DILocation(line: 22, column: 20, scope: !27)
!40 = !DILocation(line: 22, column: 5, scope: !27)
!41 = !DILocation(line: 26, column: 6, scope: !27)
!42 = !DILocation(line: 27, column: 18, scope: !27)
!43 = !DILocation(line: 27, column: 20, scope: !27)
!44 = !DILocation(line: 27, column: 5, scope: !27)
!45 = !DILocation(line: 28, column: 18, scope: !27)
!46 = !DILocation(line: 28, column: 20, scope: !27)
!47 = !DILocation(line: 28, column: 5, scope: !27)
!48 = !DILocation(line: 29, column: 18, scope: !27)
!49 = !DILocation(line: 29, column: 20, scope: !27)
!50 = !DILocation(line: 29, column: 5, scope: !27)
!51 = !DILocation(line: 34, column: 9, scope: !27)
!52 = !DILocation(line: 34, column: 7, scope: !27)
!53 = !DILocation(line: 35, column: 18, scope: !27)
!54 = !DILocation(line: 35, column: 20, scope: !27)
!55 = !DILocation(line: 35, column: 5, scope: !27)
!56 = !DILocation(line: 36, column: 18, scope: !27)
!57 = !DILocation(line: 36, column: 20, scope: !27)
!58 = !DILocation(line: 36, column: 5, scope: !27)
!59 = !DILocation(line: 37, column: 18, scope: !27)
!60 = !DILocation(line: 37, column: 20, scope: !27)
!61 = !DILocation(line: 37, column: 5, scope: !27)
!62 = !DILocation(line: 38, column: 18, scope: !27)
!63 = !DILocation(line: 38, column: 20, scope: !27)
!64 = !DILocation(line: 38, column: 5, scope: !27)
!65 = !DILocation(line: 42, column: 6, scope: !27)
!66 = !DILocation(line: 43, column: 18, scope: !27)
!67 = !DILocation(line: 43, column: 20, scope: !27)
!68 = !DILocation(line: 43, column: 5, scope: !27)
!69 = !DILocation(line: 44, column: 18, scope: !27)
!70 = !DILocation(line: 44, column: 20, scope: !27)
!71 = !DILocation(line: 44, column: 5, scope: !27)
!72 = !DILocation(line: 45, column: 18, scope: !27)
!73 = !DILocation(line: 45, column: 20, scope: !27)
!74 = !DILocation(line: 45, column: 5, scope: !27)
!75 = !DILocation(line: 46, column: 18, scope: !27)
!76 = !DILocation(line: 46, column: 20, scope: !27)
!77 = !DILocation(line: 46, column: 5, scope: !27)
!78 = !DILocation(line: 50, column: 6, scope: !27)
!79 = !DILocation(line: 51, column: 18, scope: !27)
!80 = !DILocation(line: 51, column: 20, scope: !27)
!81 = !DILocation(line: 51, column: 5, scope: !27)
!82 = !DILocation(line: 52, column: 18, scope: !27)
!83 = !DILocation(line: 52, column: 20, scope: !27)
!84 = !DILocation(line: 52, column: 5, scope: !27)
!85 = !DILocation(line: 53, column: 18, scope: !27)
!86 = !DILocation(line: 53, column: 20, scope: !27)
!87 = !DILocation(line: 53, column: 5, scope: !27)
!88 = !DILocation(line: 54, column: 18, scope: !27)
!89 = !DILocation(line: 54, column: 20, scope: !27)
!90 = !DILocation(line: 54, column: 5, scope: !27)
!91 = !DILocation(line: 55, column: 18, scope: !27)
!92 = !DILocation(line: 55, column: 20, scope: !27)
!93 = !DILocation(line: 55, column: 5, scope: !27)
!94 = !DILocation(line: 60, column: 7, scope: !27)
!95 = !DILocation(line: 62, column: 8, scope: !96)
!96 = distinct !DILexicalBlock(scope: !27, file: !3, line: 62, column: 8)
!97 = !DILocation(line: 62, column: 9, scope: !96)
!98 = !DILocation(line: 62, column: 8, scope: !27)
!99 = !DILocation(line: 64, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !3, line: 63, column: 5)
!101 = !DILocation(line: 64, column: 9, scope: !100)
!102 = !DILocation(line: 65, column: 22, scope: !100)
!103 = !DILocation(line: 65, column: 24, scope: !100)
!104 = !DILocation(line: 65, column: 9, scope: !100)
!105 = !DILocation(line: 66, column: 22, scope: !100)
!106 = !DILocation(line: 66, column: 24, scope: !100)
!107 = !DILocation(line: 66, column: 9, scope: !100)
!108 = !DILocation(line: 67, column: 22, scope: !100)
!109 = !DILocation(line: 67, column: 24, scope: !100)
!110 = !DILocation(line: 67, column: 9, scope: !100)
!111 = !DILocation(line: 68, column: 22, scope: !100)
!112 = !DILocation(line: 68, column: 24, scope: !100)
!113 = !DILocation(line: 68, column: 9, scope: !100)
!114 = !DILocation(line: 69, column: 22, scope: !100)
!115 = !DILocation(line: 69, column: 24, scope: !100)
!116 = !DILocation(line: 69, column: 9, scope: !100)
!117 = !DILocation(line: 73, column: 10, scope: !100)
!118 = !DILocation(line: 74, column: 22, scope: !100)
!119 = !DILocation(line: 74, column: 24, scope: !100)
!120 = !DILocation(line: 74, column: 9, scope: !100)
!121 = !DILocation(line: 75, column: 22, scope: !100)
!122 = !DILocation(line: 75, column: 24, scope: !100)
!123 = !DILocation(line: 75, column: 9, scope: !100)
!124 = !DILocation(line: 76, column: 22, scope: !100)
!125 = !DILocation(line: 76, column: 24, scope: !100)
!126 = !DILocation(line: 76, column: 9, scope: !100)
!127 = !DILocation(line: 77, column: 22, scope: !100)
!128 = !DILocation(line: 77, column: 24, scope: !100)
!129 = !DILocation(line: 77, column: 9, scope: !100)
!130 = !DILocation(line: 78, column: 22, scope: !100)
!131 = !DILocation(line: 78, column: 24, scope: !100)
!132 = !DILocation(line: 78, column: 9, scope: !100)
!133 = !DILocation(line: 81, column: 5, scope: !100)
!134 = !DILocation(line: 84, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !96, file: !3, line: 83, column: 5)
!136 = !DILocation(line: 85, column: 22, scope: !135)
!137 = !DILocation(line: 85, column: 24, scope: !135)
!138 = !DILocation(line: 85, column: 9, scope: !135)
!139 = !DILocation(line: 86, column: 22, scope: !135)
!140 = !DILocation(line: 86, column: 24, scope: !135)
!141 = !DILocation(line: 86, column: 9, scope: !135)
!142 = !DILocation(line: 87, column: 22, scope: !135)
!143 = !DILocation(line: 87, column: 24, scope: !135)
!144 = !DILocation(line: 87, column: 9, scope: !135)
!145 = !DILocation(line: 88, column: 22, scope: !135)
!146 = !DILocation(line: 88, column: 24, scope: !135)
!147 = !DILocation(line: 88, column: 9, scope: !135)
!148 = !DILocation(line: 89, column: 22, scope: !135)
!149 = !DILocation(line: 89, column: 24, scope: !135)
!150 = !DILocation(line: 89, column: 9, scope: !135)
!151 = !DILocation(line: 93, column: 10, scope: !135)
!152 = !DILocation(line: 94, column: 22, scope: !135)
!153 = !DILocation(line: 94, column: 24, scope: !135)
!154 = !DILocation(line: 94, column: 9, scope: !135)
!155 = !DILocation(line: 95, column: 22, scope: !135)
!156 = !DILocation(line: 95, column: 24, scope: !135)
!157 = !DILocation(line: 95, column: 9, scope: !135)
!158 = !DILocation(line: 96, column: 22, scope: !135)
!159 = !DILocation(line: 96, column: 24, scope: !135)
!160 = !DILocation(line: 96, column: 9, scope: !135)
!161 = !DILocation(line: 97, column: 22, scope: !135)
!162 = !DILocation(line: 97, column: 24, scope: !135)
!163 = !DILocation(line: 97, column: 9, scope: !135)
!164 = !DILocation(line: 98, column: 22, scope: !135)
!165 = !DILocation(line: 98, column: 24, scope: !135)
!166 = !DILocation(line: 98, column: 9, scope: !135)
!167 = !DILocation(line: 118, column: 5, scope: !27)
!168 = !DILocation(line: 118, column: 11, scope: !27)
!169 = !DILocation(line: 118, column: 12, scope: !27)
!170 = !DILocation(line: 121, column: 4, scope: !171)
!171 = distinct !DILexicalBlock(scope: !27, file: !3, line: 119, column: 5)
!172 = !DILocation(line: 121, column: 6, scope: !171)
!173 = !DILocation(line: 123, column: 15, scope: !171)
!174 = !DILocation(line: 123, column: 17, scope: !171)
!175 = !DILocation(line: 123, column: 3, scope: !171)
!176 = !DILocation(line: 124, column: 15, scope: !171)
!177 = !DILocation(line: 124, column: 17, scope: !171)
!178 = !DILocation(line: 124, column: 3, scope: !171)
!179 = !DILocation(line: 125, column: 15, scope: !171)
!180 = !DILocation(line: 125, column: 17, scope: !171)
!181 = !DILocation(line: 125, column: 3, scope: !171)
!182 = !DILocation(line: 126, column: 15, scope: !171)
!183 = !DILocation(line: 126, column: 17, scope: !171)
!184 = !DILocation(line: 126, column: 3, scope: !171)
!185 = !DILocation(line: 127, column: 15, scope: !171)
!186 = !DILocation(line: 127, column: 17, scope: !171)
!187 = !DILocation(line: 127, column: 3, scope: !171)
!188 = !DILocation(line: 128, column: 15, scope: !171)
!189 = !DILocation(line: 128, column: 17, scope: !171)
!190 = !DILocation(line: 128, column: 3, scope: !171)
!191 = !DILocation(line: 129, column: 22, scope: !171)
!192 = !DILocation(line: 129, column: 24, scope: !171)
!193 = !DILocation(line: 129, column: 9, scope: !171)
!194 = !DILocation(line: 130, column: 22, scope: !171)
!195 = !DILocation(line: 130, column: 24, scope: !171)
!196 = !DILocation(line: 130, column: 9, scope: !171)
!197 = !DILocation(line: 133, column: 21, scope: !171)
!198 = !DILocation(line: 133, column: 23, scope: !171)
!199 = !DILocation(line: 133, column: 9, scope: !171)
!200 = !DILocation(line: 134, column: 21, scope: !171)
!201 = !DILocation(line: 134, column: 23, scope: !171)
!202 = !DILocation(line: 134, column: 9, scope: !171)
!203 = !DILocation(line: 137, column: 4, scope: !171)
!204 = distinct !{!204, !167, !205}
!205 = !DILocation(line: 138, column: 5, scope: !27)
!206 = !DILocation(line: 139, column: 5, scope: !27)
!207 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !208, file: !208, line: 6, type: !209, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !211, retainedNodes: !4)
!208 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!209 = !DISubroutineType(types: !210)
!210 = !{null, !8, !9}
!211 = !{!212, !213}
!212 = !DITemplateTypeParameter(name: "T", type: !8)
!213 = !DITemplateTypeParameter(name: "U", type: !9)
!214 = !DILocalVariable(arg: 1, scope: !207, file: !208, line: 6, type: !8)
!215 = !DILocation(line: 0, scope: !207)
!216 = !DILocalVariable(arg: 2, scope: !207, file: !208, line: 6, type: !9)
!217 = !DILocation(line: 9, column: 1, scope: !207)
!218 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !208, file: !208, line: 6, type: !219, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !221, retainedNodes: !4)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !12, !8}
!221 = !{!222, !223}
!222 = !DITemplateTypeParameter(name: "T", type: !12)
!223 = !DITemplateTypeParameter(name: "U", type: !8)
!224 = !DILocalVariable(arg: 1, scope: !218, file: !208, line: 6, type: !12)
!225 = !DILocation(line: 0, scope: !218)
!226 = !DILocalVariable(arg: 2, scope: !218, file: !208, line: 6, type: !8)
!227 = !DILocation(line: 9, column: 1, scope: !218)
!228 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !208, file: !208, line: 16, type: !209, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !211, retainedNodes: !4)
!229 = !DILocalVariable(arg: 1, scope: !228, file: !208, line: 16, type: !8)
!230 = !DILocation(line: 0, scope: !228)
!231 = !DILocalVariable(arg: 2, scope: !228, file: !208, line: 16, type: !9)
!232 = !DILocation(line: 19, column: 1, scope: !228)
!233 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !208, file: !208, line: 16, type: !219, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !221, retainedNodes: !4)
!234 = !DILocalVariable(arg: 1, scope: !233, file: !208, line: 16, type: !12)
!235 = !DILocation(line: 0, scope: !233)
!236 = !DILocalVariable(arg: 2, scope: !233, file: !208, line: 16, type: !8)
!237 = !DILocation(line: 19, column: 1, scope: !233)
