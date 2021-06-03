; ModuleID = 'testcase5.ll'
source_filename = "testcase5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z12MustPointsToIPPiS0_EvT_T0_ = comdat any

$_Z12MustPointsToIPiiEvT_T0_ = comdat any

$_Z11MayPointsToIPiiEvT_T0_ = comdat any

@p = dso_local global i32** null, align 8, !dbg !0
@q = dso_local global i32** null, align 8, !dbg !6
@x = dso_local global i32* null, align 8, !dbg !11
@y = dso_local global i32* null, align 8, !dbg !13
@a = dso_local global i32 0, align 4, !dbg !15
@b = dso_local global i32 0, align 4, !dbg !17
@c = dso_local global i32 0, align 4, !dbg !19
@d = dso_local global i32 0, align 4, !dbg !21
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !27 {
bb:
  store i32** @x, i32*** @p, align 8, !dbg !30
  %tmp2 = load i32**, i32*** @p, align 8, !dbg !31
  %tmp3 = load i32*, i32** @x, align 8, !dbg !32
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp2, i32* %tmp3), !dbg !33
  store i32** @y, i32*** @q, align 8, !dbg !34
  %tmp4 = load i32**, i32*** @q, align 8, !dbg !35
  %tmp5 = load i32*, i32** @y, align 8, !dbg !36
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp4, i32* %tmp5), !dbg !37
  %tmp6 = load i32**, i32*** @p, align 8, !dbg !38
  %tmp7 = load i32*, i32** @x, align 8, !dbg !39
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp6, i32* %tmp7), !dbg !40
  store i32 40, i32* @d, align 4, !dbg !41
  %tmp8 = load i32, i32* @b, align 4, !dbg !42
  %tmp9 = icmp ne i32 %tmp8, 0, !dbg !42
  br i1 %tmp9, label %bb10, label %bb26, !dbg !44

bb10:                                             ; preds = %bb
  %tmp11 = load i32**, i32*** @q, align 8, !dbg !45
  store i32* @a, i32** %tmp11, align 8, !dbg !47
  %tmp12 = load i32*, i32** @y, align 8, !dbg !48
  %tmp13 = load i32, i32* @a, align 4, !dbg !49
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp12, i32 %tmp13), !dbg !50
  %tmp14 = load i32**, i32*** @q, align 8, !dbg !51
  %tmp15 = load i32*, i32** @y, align 8, !dbg !52
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp14, i32* %tmp15), !dbg !53
  %tmp16 = load i32**, i32*** @p, align 8, !dbg !54
  %tmp17 = load i32*, i32** @x, align 8, !dbg !55
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp16, i32* %tmp17), !dbg !56
  store i32* @b, i32** @x, align 8, !dbg !57
  %tmp18 = load i32*, i32** @x, align 8, !dbg !58
  %tmp19 = load i32, i32* @b, align 4, !dbg !59
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp18, i32 %tmp19), !dbg !60
  %tmp20 = load i32*, i32** @y, align 8, !dbg !61
  %tmp21 = load i32, i32* @a, align 4, !dbg !62
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp20, i32 %tmp21), !dbg !63
  %tmp22 = load i32**, i32*** @q, align 8, !dbg !64
  %tmp23 = load i32*, i32** @y, align 8, !dbg !65
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp22, i32* %tmp23), !dbg !66
  %tmp24 = load i32**, i32*** @p, align 8, !dbg !67
  %tmp25 = load i32*, i32** @x, align 8, !dbg !68
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp24, i32* %tmp25), !dbg !69
  br label %bb42, !dbg !70

bb26:                                             ; preds = %bb
  %tmp27 = load i32**, i32*** @p, align 8, !dbg !71
  store i32* @a, i32** %tmp27, align 8, !dbg !73
  %tmp28 = load i32*, i32** @x, align 8, !dbg !74
  %tmp29 = load i32, i32* @a, align 4, !dbg !75
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp28, i32 %tmp29), !dbg !76
  %tmp30 = load i32**, i32*** @q, align 8, !dbg !77
  %tmp31 = load i32*, i32** @y, align 8, !dbg !78
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !79
  %tmp32 = load i32**, i32*** @p, align 8, !dbg !80
  %tmp33 = load i32*, i32** @x, align 8, !dbg !81
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp32, i32* %tmp33), !dbg !82
  store i32* @b, i32** @y, align 8, !dbg !83
  %tmp34 = load i32*, i32** @y, align 8, !dbg !84
  %tmp35 = load i32, i32* @b, align 4, !dbg !85
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !86
  %tmp36 = load i32*, i32** @x, align 8, !dbg !87
  %tmp37 = load i32, i32* @a, align 4, !dbg !88
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !89
  %tmp38 = load i32**, i32*** @q, align 8, !dbg !90
  %tmp39 = load i32*, i32** @y, align 8, !dbg !91
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp38, i32* %tmp39), !dbg !92
  %tmp40 = load i32**, i32*** @p, align 8, !dbg !93
  %tmp41 = load i32*, i32** @x, align 8, !dbg !94
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp40, i32* %tmp41), !dbg !95
  br label %bb42

bb42:                                             ; preds = %bb26, %bb10
  %tmp43 = load i32*, i32** @y, align 8, !dbg !96
  store i32* %tmp43, i32** @x, align 8, !dbg !97
  %tmp44 = load i32*, i32** @x, align 8, !dbg !98
  %tmp45 = load i32, i32* @a, align 4, !dbg !99
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp44, i32 %tmp45), !dbg !100
  %tmp46 = load i32*, i32** @x, align 8, !dbg !101
  %tmp47 = load i32, i32* @b, align 4, !dbg !102
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp46, i32 %tmp47), !dbg !103
  %tmp48 = load i32*, i32** @y, align 8, !dbg !104
  %tmp49 = load i32, i32* @a, align 4, !dbg !105
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp48, i32 %tmp49), !dbg !106
  %tmp50 = load i32*, i32** @y, align 8, !dbg !107
  %tmp51 = load i32, i32* @b, align 4, !dbg !108
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp50, i32 %tmp51), !dbg !109
  %tmp52 = load i32**, i32*** @q, align 8, !dbg !110
  %tmp53 = load i32*, i32** @y, align 8, !dbg !111
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp52, i32* %tmp53), !dbg !112
  %tmp54 = load i32**, i32*** @p, align 8, !dbg !113
  %tmp55 = load i32*, i32** @x, align 8, !dbg !114
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp54, i32* %tmp55), !dbg !115
  %tmp56 = load i32, i32* @b, align 4, !dbg !116
  store i32 %tmp56, i32* @a, align 4, !dbg !117
  %tmp57 = load i32**, i32*** @p, align 8, !dbg !118
  %tmp58 = load i32*, i32** %tmp57, align 8, !dbg !119
  store i32 30, i32* %tmp58, align 4, !dbg !120
  %tmp59 = load i32*, i32** @x, align 8, !dbg !121
  store i32 40, i32* %tmp59, align 4, !dbg !122
  %tmp61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 undef), !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #2 comdat !dbg !125 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !134, metadata !DIExpression()), !dbg !133
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #2 comdat !dbg !136 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !144, metadata !DIExpression()), !dbg !143
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #2 comdat !dbg !146 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !149, metadata !DIExpression()), !dbg !148
  ret void, !dbg !150
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "p", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase5.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !11, !13, !15, !17, !19, !21}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 4, type: !9, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 5, type: !10, isLocal: false, isDefinition: true)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 10.0.0 "}
!27 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 6, type: !28, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{!10}
!30 = !DILocation(line: 10, column: 7, scope: !27)
!31 = !DILocation(line: 11, column: 18, scope: !27)
!32 = !DILocation(line: 11, column: 20, scope: !27)
!33 = !DILocation(line: 11, column: 5, scope: !27)
!34 = !DILocation(line: 12, column: 7, scope: !27)
!35 = !DILocation(line: 13, column: 18, scope: !27)
!36 = !DILocation(line: 13, column: 20, scope: !27)
!37 = !DILocation(line: 13, column: 5, scope: !27)
!38 = !DILocation(line: 14, column: 18, scope: !27)
!39 = !DILocation(line: 14, column: 20, scope: !27)
!40 = !DILocation(line: 14, column: 5, scope: !27)
!41 = !DILocation(line: 15, column: 7, scope: !27)
!42 = !DILocation(line: 17, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !27, file: !3, line: 17, column: 9)
!44 = !DILocation(line: 17, column: 9, scope: !27)
!45 = !DILocation(line: 19, column: 10, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 18, column: 5)
!47 = !DILocation(line: 19, column: 12, scope: !46)
!48 = !DILocation(line: 20, column: 22, scope: !46)
!49 = !DILocation(line: 20, column: 24, scope: !46)
!50 = !DILocation(line: 20, column: 9, scope: !46)
!51 = !DILocation(line: 21, column: 22, scope: !46)
!52 = !DILocation(line: 21, column: 24, scope: !46)
!53 = !DILocation(line: 21, column: 9, scope: !46)
!54 = !DILocation(line: 22, column: 22, scope: !46)
!55 = !DILocation(line: 22, column: 24, scope: !46)
!56 = !DILocation(line: 22, column: 9, scope: !46)
!57 = !DILocation(line: 23, column: 11, scope: !46)
!58 = !DILocation(line: 24, column: 22, scope: !46)
!59 = !DILocation(line: 24, column: 24, scope: !46)
!60 = !DILocation(line: 24, column: 9, scope: !46)
!61 = !DILocation(line: 25, column: 22, scope: !46)
!62 = !DILocation(line: 25, column: 24, scope: !46)
!63 = !DILocation(line: 25, column: 9, scope: !46)
!64 = !DILocation(line: 26, column: 22, scope: !46)
!65 = !DILocation(line: 26, column: 24, scope: !46)
!66 = !DILocation(line: 26, column: 9, scope: !46)
!67 = !DILocation(line: 27, column: 22, scope: !46)
!68 = !DILocation(line: 27, column: 24, scope: !46)
!69 = !DILocation(line: 27, column: 9, scope: !46)
!70 = !DILocation(line: 28, column: 5, scope: !46)
!71 = !DILocation(line: 31, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !43, file: !3, line: 30, column: 5)
!73 = !DILocation(line: 31, column: 12, scope: !72)
!74 = !DILocation(line: 32, column: 22, scope: !72)
!75 = !DILocation(line: 32, column: 24, scope: !72)
!76 = !DILocation(line: 32, column: 9, scope: !72)
!77 = !DILocation(line: 33, column: 22, scope: !72)
!78 = !DILocation(line: 33, column: 24, scope: !72)
!79 = !DILocation(line: 33, column: 9, scope: !72)
!80 = !DILocation(line: 34, column: 22, scope: !72)
!81 = !DILocation(line: 34, column: 24, scope: !72)
!82 = !DILocation(line: 34, column: 9, scope: !72)
!83 = !DILocation(line: 35, column: 11, scope: !72)
!84 = !DILocation(line: 36, column: 22, scope: !72)
!85 = !DILocation(line: 36, column: 24, scope: !72)
!86 = !DILocation(line: 36, column: 9, scope: !72)
!87 = !DILocation(line: 37, column: 22, scope: !72)
!88 = !DILocation(line: 37, column: 24, scope: !72)
!89 = !DILocation(line: 37, column: 9, scope: !72)
!90 = !DILocation(line: 38, column: 22, scope: !72)
!91 = !DILocation(line: 38, column: 24, scope: !72)
!92 = !DILocation(line: 38, column: 9, scope: !72)
!93 = !DILocation(line: 39, column: 22, scope: !72)
!94 = !DILocation(line: 39, column: 24, scope: !72)
!95 = !DILocation(line: 39, column: 9, scope: !72)
!96 = !DILocation(line: 47, column: 9, scope: !27)
!97 = !DILocation(line: 47, column: 7, scope: !27)
!98 = !DILocation(line: 48, column: 17, scope: !27)
!99 = !DILocation(line: 48, column: 19, scope: !27)
!100 = !DILocation(line: 48, column: 5, scope: !27)
!101 = !DILocation(line: 49, column: 17, scope: !27)
!102 = !DILocation(line: 49, column: 19, scope: !27)
!103 = !DILocation(line: 49, column: 5, scope: !27)
!104 = !DILocation(line: 50, column: 17, scope: !27)
!105 = !DILocation(line: 50, column: 19, scope: !27)
!106 = !DILocation(line: 50, column: 5, scope: !27)
!107 = !DILocation(line: 51, column: 17, scope: !27)
!108 = !DILocation(line: 51, column: 19, scope: !27)
!109 = !DILocation(line: 51, column: 5, scope: !27)
!110 = !DILocation(line: 52, column: 18, scope: !27)
!111 = !DILocation(line: 52, column: 20, scope: !27)
!112 = !DILocation(line: 52, column: 5, scope: !27)
!113 = !DILocation(line: 53, column: 18, scope: !27)
!114 = !DILocation(line: 53, column: 20, scope: !27)
!115 = !DILocation(line: 53, column: 5, scope: !27)
!116 = !DILocation(line: 55, column: 9, scope: !27)
!117 = !DILocation(line: 55, column: 7, scope: !27)
!118 = !DILocation(line: 56, column: 7, scope: !27)
!119 = !DILocation(line: 56, column: 6, scope: !27)
!120 = !DILocation(line: 56, column: 9, scope: !27)
!121 = !DILocation(line: 57, column: 6, scope: !27)
!122 = !DILocation(line: 57, column: 8, scope: !27)
!123 = !DILocation(line: 58, column: 5, scope: !27)
!124 = !DILocation(line: 59, column: 1, scope: !27)
!125 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !126, file: !126, line: 6, type: !127, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !129, retainedNodes: !4)
!126 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!127 = !DISubroutineType(types: !128)
!128 = !{null, !8, !9}
!129 = !{!130, !131}
!130 = !DITemplateTypeParameter(name: "T", type: !8)
!131 = !DITemplateTypeParameter(name: "U", type: !9)
!132 = !DILocalVariable(arg: 1, scope: !125, file: !126, line: 6, type: !8)
!133 = !DILocation(line: 0, scope: !125)
!134 = !DILocalVariable(arg: 2, scope: !125, file: !126, line: 6, type: !9)
!135 = !DILocation(line: 9, column: 1, scope: !125)
!136 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !126, file: !126, line: 6, type: !137, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !139, retainedNodes: !4)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !9, !10}
!139 = !{!140, !141}
!140 = !DITemplateTypeParameter(name: "T", type: !9)
!141 = !DITemplateTypeParameter(name: "U", type: !10)
!142 = !DILocalVariable(arg: 1, scope: !136, file: !126, line: 6, type: !9)
!143 = !DILocation(line: 0, scope: !136)
!144 = !DILocalVariable(arg: 2, scope: !136, file: !126, line: 6, type: !10)
!145 = !DILocation(line: 9, column: 1, scope: !136)
!146 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !126, file: !126, line: 16, type: !137, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !139, retainedNodes: !4)
!147 = !DILocalVariable(arg: 1, scope: !146, file: !126, line: 16, type: !9)
!148 = !DILocation(line: 0, scope: !146)
!149 = !DILocalVariable(arg: 2, scope: !146, file: !126, line: 16, type: !10)
!150 = !DILocation(line: 19, column: 1, scope: !146)
