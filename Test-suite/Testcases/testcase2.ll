; ModuleID = 'testcase2.ll'
source_filename = "testcase2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

$_Z15DoesNotPointsToIPiiEvT_T0_ = comdat any

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z15DoesNotPointsToIPPiS0_EvT_T0_ = comdat any

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
  %tmp3 = load i32*, i32** @a, align 8, !dbg !34
  %tmp4 = load i32, i32* @y, align 4, !dbg !35
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp3, i32 %tmp4), !dbg !36
  %tmp5 = load i32*, i32** @a, align 8, !dbg !37
  %tmp6 = load i32, i32* @u, align 4, !dbg !38
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp5, i32 %tmp6), !dbg !39
  store i32* @y, i32** @b, align 8, !dbg !40
  %tmp7 = load i32*, i32** @b, align 8, !dbg !41
  %tmp8 = load i32, i32* @y, align 4, !dbg !42
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp7, i32 %tmp8), !dbg !43
  %tmp9 = load i32*, i32** @b, align 8, !dbg !44
  %tmp10 = load i32, i32* @x, align 4, !dbg !45
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp9, i32 %tmp10), !dbg !46
  %tmp11 = load i32*, i32** @b, align 8, !dbg !47
  %tmp12 = load i32, i32* @u, align 4, !dbg !48
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp11, i32 %tmp12), !dbg !49
  store i32** @a, i32*** @c, align 8, !dbg !50
  %tmp13 = load i32**, i32*** @c, align 8, !dbg !51
  %tmp14 = load i32*, i32** @a, align 8, !dbg !52
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp13, i32* %tmp14), !dbg !53
  %tmp15 = load i32**, i32*** @c, align 8, !dbg !54
  %tmp16 = load i32*, i32** @b, align 8, !dbg !55
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp15, i32* %tmp16), !dbg !56
  %tmp17 = load i32**, i32*** @c, align 8, !dbg !57
  %tmp18 = load i32*, i32** @w, align 8, !dbg !58
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp17, i32* %tmp18), !dbg !59
  %tmp19 = load i32**, i32*** @c, align 8, !dbg !60
  store i32** %tmp19, i32*** @s, align 8, !dbg !61
  %tmp20 = load i32**, i32*** @s, align 8, !dbg !62
  %tmp21 = load i32*, i32** @a, align 8, !dbg !63
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp20, i32* %tmp21), !dbg !64
  %tmp22 = load i32**, i32*** @s, align 8, !dbg !65
  %tmp23 = load i32*, i32** @b, align 8, !dbg !66
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp22, i32* %tmp23), !dbg !67
  %tmp24 = load i32**, i32*** @s, align 8, !dbg !68
  %tmp25 = load i32*, i32** @w, align 8, !dbg !69
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp24, i32* %tmp25), !dbg !70
  store i32** @w, i32*** @s, align 8, !dbg !71
  %tmp26 = load i32**, i32*** @s, align 8, !dbg !72
  %tmp27 = load i32*, i32** @w, align 8, !dbg !73
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp26, i32* %tmp27), !dbg !74
  %tmp28 = load i32**, i32*** @s, align 8, !dbg !75
  %tmp29 = load i32*, i32** @a, align 8, !dbg !76
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !77
  %tmp30 = load i32**, i32*** @s, align 8, !dbg !78
  %tmp31 = load i32*, i32** @b, align 8, !dbg !79
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !80
  store i32* @u, i32** @w, align 8, !dbg !81
  %tmp32 = load i32*, i32** @w, align 8, !dbg !82
  %tmp33 = load i32, i32* @u, align 4, !dbg !83
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !84
  %tmp34 = load i32*, i32** @w, align 8, !dbg !85
  %tmp35 = load i32, i32* @x, align 4, !dbg !86
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !87
  %tmp36 = load i32*, i32** @w, align 8, !dbg !88
  %tmp37 = load i32, i32* @y, align 4, !dbg !89
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !90
  store i32 9, i32* @u, align 4, !dbg !91
  %tmp38 = load i32, i32* @x, align 4, !dbg !92
  %tmp39 = icmp eq i32 %tmp38, 5, !dbg !94
  br i1 %tmp39, label %bb40, label %bb54, !dbg !95

bb40:                                             ; preds = %bb
  %tmp41 = load i32**, i32*** @c, align 8, !dbg !96
  store i32* @y, i32** %tmp41, align 8, !dbg !98
  %tmp42 = load i32*, i32** @a, align 8, !dbg !99
  %tmp43 = load i32, i32* @y, align 4, !dbg !100
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp42, i32 %tmp43), !dbg !101
  %tmp44 = load i32*, i32** @a, align 8, !dbg !102
  %tmp45 = load i32, i32* @x, align 4, !dbg !103
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp44, i32 %tmp45), !dbg !104
  %tmp46 = load i32*, i32** @a, align 8, !dbg !105
  %tmp47 = load i32, i32* @u, align 4, !dbg !106
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp46, i32 %tmp47), !dbg !107
  store i32** @a, i32*** @s, align 8, !dbg !108
  %tmp48 = load i32**, i32*** @s, align 8, !dbg !109
  %tmp49 = load i32*, i32** @a, align 8, !dbg !110
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp48, i32* %tmp49), !dbg !111
  %tmp50 = load i32**, i32*** @s, align 8, !dbg !112
  %tmp51 = load i32*, i32** @b, align 8, !dbg !113
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp50, i32* %tmp51), !dbg !114
  %tmp52 = load i32**, i32*** @s, align 8, !dbg !115
  %tmp53 = load i32*, i32** @w, align 8, !dbg !116
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp52, i32* %tmp53), !dbg !117
  br label %bb67, !dbg !118

bb54:                                             ; preds = %bb
  store i32* @x, i32** @b, align 8, !dbg !119
  %tmp55 = load i32*, i32** @b, align 8, !dbg !121
  %tmp56 = load i32, i32* @x, align 4, !dbg !122
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp55, i32 %tmp56), !dbg !123
  %tmp57 = load i32*, i32** @b, align 8, !dbg !124
  %tmp58 = load i32, i32* @y, align 4, !dbg !125
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp57, i32 %tmp58), !dbg !126
  %tmp59 = load i32*, i32** @b, align 8, !dbg !127
  %tmp60 = load i32, i32* @u, align 4, !dbg !128
  call void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %tmp59, i32 %tmp60), !dbg !129
  store i32** @b, i32*** @s, align 8, !dbg !130
  %tmp61 = load i32**, i32*** @s, align 8, !dbg !131
  %tmp62 = load i32*, i32** @b, align 8, !dbg !132
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp61, i32* %tmp62), !dbg !133
  %tmp63 = load i32**, i32*** @s, align 8, !dbg !134
  %tmp64 = load i32*, i32** @a, align 8, !dbg !135
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp63, i32* %tmp64), !dbg !136
  %tmp65 = load i32**, i32*** @s, align 8, !dbg !137
  %tmp66 = load i32*, i32** @w, align 8, !dbg !138
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp65, i32* %tmp66), !dbg !139
  br label %bb67

bb67:                                             ; preds = %bb54, %bb40
  %tmp68 = load i32*, i32** @a, align 8, !dbg !140
  %tmp69 = load i32, i32* @x, align 4, !dbg !141
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp68, i32 %tmp69), !dbg !142
  %tmp70 = load i32*, i32** @a, align 8, !dbg !143
  %tmp71 = load i32, i32* @y, align 4, !dbg !144
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp70, i32 %tmp71), !dbg !145
  %tmp72 = load i32*, i32** @b, align 8, !dbg !146
  %tmp73 = load i32, i32* @x, align 4, !dbg !147
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp72, i32 %tmp73), !dbg !148
  %tmp74 = load i32*, i32** @b, align 8, !dbg !149
  %tmp75 = load i32, i32* @y, align 4, !dbg !150
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp74, i32 %tmp75), !dbg !151
  %tmp76 = load i32**, i32*** @s, align 8, !dbg !152
  %tmp77 = load i32*, i32** @a, align 8, !dbg !153
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp76, i32* %tmp77), !dbg !154
  %tmp78 = load i32**, i32*** @s, align 8, !dbg !155
  %tmp79 = load i32*, i32** @b, align 8, !dbg !156
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp78, i32* %tmp79), !dbg !157
  %tmp80 = load i32**, i32*** @s, align 8, !dbg !158
  %tmp81 = load i32*, i32** @w, align 8, !dbg !159
  call void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %tmp80, i32* %tmp81), !dbg !160
  br label %bb82, !dbg !161

bb82:                                             ; preds = %bb85, %bb67
  %tmp83 = load i32, i32* @u, align 4, !dbg !162
  %tmp84 = icmp sgt i32 %tmp83, 10, !dbg !163
  br i1 %tmp84, label %bb85, label %bb97, !dbg !161

bb85:                                             ; preds = %bb82
  %tmp86 = load i32*, i32** @a, align 8, !dbg !164
  %tmp87 = load i32, i32* @u, align 4, !dbg !166
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp86, i32 %tmp87), !dbg !167
  %tmp88 = load i32*, i32** @b, align 8, !dbg !168
  %tmp89 = load i32, i32* @u, align 4, !dbg !169
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp88, i32 %tmp89), !dbg !170
  %tmp90 = load i32**, i32*** @s, align 8, !dbg !171
  store i32* @u, i32** %tmp90, align 8, !dbg !172
  %tmp91 = load i32*, i32** @a, align 8, !dbg !173
  %tmp92 = load i32, i32* @u, align 4, !dbg !174
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp91, i32 %tmp92), !dbg !175
  %tmp93 = load i32*, i32** @b, align 8, !dbg !176
  %tmp94 = load i32, i32* @u, align 4, !dbg !177
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp93, i32 %tmp94), !dbg !178
  %tmp95 = load i32, i32* @u, align 4, !dbg !179
  %tmp96 = add nsw i32 %tmp95, -1, !dbg !179
  store i32 %tmp96, i32* @u, align 4, !dbg !179
  br label %bb82, !dbg !161, !llvm.loop !180

bb97:                                             ; preds = %bb82
  ret i32 0, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !183 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !192, metadata !DIExpression()), !dbg !191
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z15DoesNotPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !194 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !197, metadata !DIExpression()), !dbg !196
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !199 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !207, metadata !DIExpression()), !dbg !206
  ret void, !dbg !208
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z15DoesNotPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !209 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !212, metadata !DIExpression()), !dbg !211
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !214 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !217, metadata !DIExpression()), !dbg !216
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !219 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !222, metadata !DIExpression()), !dbg !221
  ret void, !dbg !223
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
!3 = !DIFile(filename: "testcase2.cpp", directory: "/home/mehul/Desktop/SVF-example/testcases")
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
!34 = !DILocation(line: 17, column: 21, scope: !27)
!35 = !DILocation(line: 17, column: 23, scope: !27)
!36 = !DILocation(line: 17, column: 5, scope: !27)
!37 = !DILocation(line: 18, column: 21, scope: !27)
!38 = !DILocation(line: 18, column: 23, scope: !27)
!39 = !DILocation(line: 18, column: 5, scope: !27)
!40 = !DILocation(line: 20, column: 6, scope: !27)
!41 = !DILocation(line: 21, column: 18, scope: !27)
!42 = !DILocation(line: 21, column: 20, scope: !27)
!43 = !DILocation(line: 21, column: 5, scope: !27)
!44 = !DILocation(line: 22, column: 21, scope: !27)
!45 = !DILocation(line: 22, column: 23, scope: !27)
!46 = !DILocation(line: 22, column: 5, scope: !27)
!47 = !DILocation(line: 23, column: 21, scope: !27)
!48 = !DILocation(line: 23, column: 23, scope: !27)
!49 = !DILocation(line: 23, column: 5, scope: !27)
!50 = !DILocation(line: 25, column: 6, scope: !27)
!51 = !DILocation(line: 26, column: 18, scope: !27)
!52 = !DILocation(line: 26, column: 20, scope: !27)
!53 = !DILocation(line: 26, column: 5, scope: !27)
!54 = !DILocation(line: 27, column: 21, scope: !27)
!55 = !DILocation(line: 27, column: 23, scope: !27)
!56 = !DILocation(line: 27, column: 5, scope: !27)
!57 = !DILocation(line: 28, column: 21, scope: !27)
!58 = !DILocation(line: 28, column: 23, scope: !27)
!59 = !DILocation(line: 28, column: 5, scope: !27)
!60 = !DILocation(line: 31, column: 9, scope: !27)
!61 = !DILocation(line: 31, column: 7, scope: !27)
!62 = !DILocation(line: 32, column: 18, scope: !27)
!63 = !DILocation(line: 32, column: 20, scope: !27)
!64 = !DILocation(line: 32, column: 5, scope: !27)
!65 = !DILocation(line: 33, column: 21, scope: !27)
!66 = !DILocation(line: 33, column: 23, scope: !27)
!67 = !DILocation(line: 33, column: 5, scope: !27)
!68 = !DILocation(line: 34, column: 21, scope: !27)
!69 = !DILocation(line: 34, column: 23, scope: !27)
!70 = !DILocation(line: 34, column: 5, scope: !27)
!71 = !DILocation(line: 36, column: 6, scope: !27)
!72 = !DILocation(line: 37, column: 18, scope: !27)
!73 = !DILocation(line: 37, column: 20, scope: !27)
!74 = !DILocation(line: 37, column: 5, scope: !27)
!75 = !DILocation(line: 38, column: 21, scope: !27)
!76 = !DILocation(line: 38, column: 23, scope: !27)
!77 = !DILocation(line: 38, column: 5, scope: !27)
!78 = !DILocation(line: 39, column: 21, scope: !27)
!79 = !DILocation(line: 39, column: 23, scope: !27)
!80 = !DILocation(line: 39, column: 5, scope: !27)
!81 = !DILocation(line: 41, column: 6, scope: !27)
!82 = !DILocation(line: 42, column: 18, scope: !27)
!83 = !DILocation(line: 42, column: 20, scope: !27)
!84 = !DILocation(line: 42, column: 5, scope: !27)
!85 = !DILocation(line: 43, column: 21, scope: !27)
!86 = !DILocation(line: 43, column: 23, scope: !27)
!87 = !DILocation(line: 43, column: 5, scope: !27)
!88 = !DILocation(line: 44, column: 21, scope: !27)
!89 = !DILocation(line: 44, column: 23, scope: !27)
!90 = !DILocation(line: 44, column: 5, scope: !27)
!91 = !DILocation(line: 47, column: 7, scope: !27)
!92 = !DILocation(line: 49, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !27, file: !3, line: 49, column: 8)
!94 = !DILocation(line: 49, column: 9, scope: !93)
!95 = !DILocation(line: 49, column: 8, scope: !27)
!96 = !DILocation(line: 51, column: 7, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 50, column: 5)
!98 = !DILocation(line: 51, column: 9, scope: !97)
!99 = !DILocation(line: 52, column: 22, scope: !97)
!100 = !DILocation(line: 52, column: 24, scope: !97)
!101 = !DILocation(line: 52, column: 9, scope: !97)
!102 = !DILocation(line: 53, column: 25, scope: !97)
!103 = !DILocation(line: 53, column: 27, scope: !97)
!104 = !DILocation(line: 53, column: 9, scope: !97)
!105 = !DILocation(line: 54, column: 25, scope: !97)
!106 = !DILocation(line: 54, column: 27, scope: !97)
!107 = !DILocation(line: 54, column: 9, scope: !97)
!108 = !DILocation(line: 56, column: 10, scope: !97)
!109 = !DILocation(line: 57, column: 22, scope: !97)
!110 = !DILocation(line: 57, column: 24, scope: !97)
!111 = !DILocation(line: 57, column: 9, scope: !97)
!112 = !DILocation(line: 58, column: 25, scope: !97)
!113 = !DILocation(line: 58, column: 27, scope: !97)
!114 = !DILocation(line: 58, column: 9, scope: !97)
!115 = !DILocation(line: 59, column: 25, scope: !97)
!116 = !DILocation(line: 59, column: 27, scope: !97)
!117 = !DILocation(line: 59, column: 9, scope: !97)
!118 = !DILocation(line: 60, column: 5, scope: !97)
!119 = !DILocation(line: 63, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !93, file: !3, line: 62, column: 5)
!121 = !DILocation(line: 64, column: 22, scope: !120)
!122 = !DILocation(line: 64, column: 24, scope: !120)
!123 = !DILocation(line: 64, column: 9, scope: !120)
!124 = !DILocation(line: 65, column: 25, scope: !120)
!125 = !DILocation(line: 65, column: 27, scope: !120)
!126 = !DILocation(line: 65, column: 9, scope: !120)
!127 = !DILocation(line: 66, column: 25, scope: !120)
!128 = !DILocation(line: 66, column: 27, scope: !120)
!129 = !DILocation(line: 66, column: 9, scope: !120)
!130 = !DILocation(line: 68, column: 10, scope: !120)
!131 = !DILocation(line: 69, column: 22, scope: !120)
!132 = !DILocation(line: 69, column: 24, scope: !120)
!133 = !DILocation(line: 69, column: 9, scope: !120)
!134 = !DILocation(line: 70, column: 25, scope: !120)
!135 = !DILocation(line: 70, column: 27, scope: !120)
!136 = !DILocation(line: 70, column: 9, scope: !120)
!137 = !DILocation(line: 71, column: 25, scope: !120)
!138 = !DILocation(line: 71, column: 27, scope: !120)
!139 = !DILocation(line: 71, column: 9, scope: !120)
!140 = !DILocation(line: 74, column: 17, scope: !27)
!141 = !DILocation(line: 74, column: 19, scope: !27)
!142 = !DILocation(line: 74, column: 5, scope: !27)
!143 = !DILocation(line: 75, column: 17, scope: !27)
!144 = !DILocation(line: 75, column: 19, scope: !27)
!145 = !DILocation(line: 75, column: 5, scope: !27)
!146 = !DILocation(line: 78, column: 14, scope: !27)
!147 = !DILocation(line: 78, column: 16, scope: !27)
!148 = !DILocation(line: 78, column: 2, scope: !27)
!149 = !DILocation(line: 79, column: 17, scope: !27)
!150 = !DILocation(line: 79, column: 19, scope: !27)
!151 = !DILocation(line: 79, column: 5, scope: !27)
!152 = !DILocation(line: 81, column: 17, scope: !27)
!153 = !DILocation(line: 81, column: 19, scope: !27)
!154 = !DILocation(line: 81, column: 5, scope: !27)
!155 = !DILocation(line: 82, column: 17, scope: !27)
!156 = !DILocation(line: 82, column: 19, scope: !27)
!157 = !DILocation(line: 82, column: 5, scope: !27)
!158 = !DILocation(line: 83, column: 21, scope: !27)
!159 = !DILocation(line: 83, column: 23, scope: !27)
!160 = !DILocation(line: 83, column: 5, scope: !27)
!161 = !DILocation(line: 89, column: 5, scope: !27)
!162 = !DILocation(line: 89, column: 11, scope: !27)
!163 = !DILocation(line: 89, column: 12, scope: !27)
!164 = !DILocation(line: 92, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !27, file: !3, line: 90, column: 5)
!166 = !DILocation(line: 92, column: 23, scope: !165)
!167 = !DILocation(line: 92, column: 9, scope: !165)
!168 = !DILocation(line: 93, column: 21, scope: !165)
!169 = !DILocation(line: 93, column: 23, scope: !165)
!170 = !DILocation(line: 93, column: 9, scope: !165)
!171 = !DILocation(line: 94, column: 4, scope: !165)
!172 = !DILocation(line: 94, column: 6, scope: !165)
!173 = !DILocation(line: 95, column: 15, scope: !165)
!174 = !DILocation(line: 95, column: 17, scope: !165)
!175 = !DILocation(line: 95, column: 3, scope: !165)
!176 = !DILocation(line: 96, column: 15, scope: !165)
!177 = !DILocation(line: 96, column: 17, scope: !165)
!178 = !DILocation(line: 96, column: 3, scope: !165)
!179 = !DILocation(line: 98, column: 4, scope: !165)
!180 = distinct !{!180, !161, !181}
!181 = !DILocation(line: 99, column: 5, scope: !27)
!182 = !DILocation(line: 101, column: 5, scope: !27)
!183 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !184, file: !184, line: 6, type: !185, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !187, retainedNodes: !4)
!184 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/SVF-example/testcases")
!185 = !DISubroutineType(types: !186)
!186 = !{null, !8, !9}
!187 = !{!188, !189}
!188 = !DITemplateTypeParameter(name: "T", type: !8)
!189 = !DITemplateTypeParameter(name: "U", type: !9)
!190 = !DILocalVariable(arg: 1, scope: !183, file: !184, line: 6, type: !8)
!191 = !DILocation(line: 0, scope: !183)
!192 = !DILocalVariable(arg: 2, scope: !183, file: !184, line: 6, type: !9)
!193 = !DILocation(line: 9, column: 1, scope: !183)
!194 = distinct !DISubprogram(name: "DoesNotPointsTo<int *, int>", linkageName: "_Z15DoesNotPointsToIPiiEvT_T0_", scope: !184, file: !184, line: 11, type: !185, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !187, retainedNodes: !4)
!195 = !DILocalVariable(arg: 1, scope: !194, file: !184, line: 11, type: !8)
!196 = !DILocation(line: 0, scope: !194)
!197 = !DILocalVariable(arg: 2, scope: !194, file: !184, line: 11, type: !9)
!198 = !DILocation(line: 14, column: 1, scope: !194)
!199 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !184, file: !184, line: 6, type: !200, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !202, retainedNodes: !4)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !12, !8}
!202 = !{!203, !204}
!203 = !DITemplateTypeParameter(name: "T", type: !12)
!204 = !DITemplateTypeParameter(name: "U", type: !8)
!205 = !DILocalVariable(arg: 1, scope: !199, file: !184, line: 6, type: !12)
!206 = !DILocation(line: 0, scope: !199)
!207 = !DILocalVariable(arg: 2, scope: !199, file: !184, line: 6, type: !8)
!208 = !DILocation(line: 9, column: 1, scope: !199)
!209 = distinct !DISubprogram(name: "DoesNotPointsTo<int **, int *>", linkageName: "_Z15DoesNotPointsToIPPiS0_EvT_T0_", scope: !184, file: !184, line: 11, type: !200, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !202, retainedNodes: !4)
!210 = !DILocalVariable(arg: 1, scope: !209, file: !184, line: 11, type: !12)
!211 = !DILocation(line: 0, scope: !209)
!212 = !DILocalVariable(arg: 2, scope: !209, file: !184, line: 11, type: !8)
!213 = !DILocation(line: 14, column: 1, scope: !209)
!214 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !184, file: !184, line: 16, type: !185, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !187, retainedNodes: !4)
!215 = !DILocalVariable(arg: 1, scope: !214, file: !184, line: 16, type: !8)
!216 = !DILocation(line: 0, scope: !214)
!217 = !DILocalVariable(arg: 2, scope: !214, file: !184, line: 16, type: !9)
!218 = !DILocation(line: 19, column: 1, scope: !214)
!219 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !184, file: !184, line: 16, type: !200, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !202, retainedNodes: !4)
!220 = !DILocalVariable(arg: 1, scope: !219, file: !184, line: 16, type: !12)
!221 = !DILocation(line: 0, scope: !219)
!222 = !DILocalVariable(arg: 2, scope: !219, file: !184, line: 16, type: !8)
!223 = !DILocation(line: 19, column: 1, scope: !219)
