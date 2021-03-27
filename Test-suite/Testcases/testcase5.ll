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
  store i32** @y, i32*** @q, align 8, !dbg !31
  %tmp2 = load i32**, i32*** @p, align 8, !dbg !32
  %tmp3 = load i32*, i32** @x, align 8, !dbg !33
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp2, i32* %tmp3), !dbg !34
  %tmp4 = load i32**, i32*** @q, align 8, !dbg !35
  %tmp5 = load i32*, i32** @y, align 8, !dbg !36
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp4, i32* %tmp5), !dbg !37
  store i32 40, i32* @d, align 4, !dbg !38
  %tmp6 = load i32, i32* @b, align 4, !dbg !39
  %tmp7 = icmp ne i32 %tmp6, 0, !dbg !39
  br i1 %tmp7, label %bb8, label %bb14, !dbg !41

bb8:                                              ; preds = %bb
  %tmp9 = load i32**, i32*** @q, align 8, !dbg !42
  store i32* @a, i32** %tmp9, align 8, !dbg !44
  store i32* @b, i32** @x, align 8, !dbg !45
  %tmp10 = load i32*, i32** @y, align 8, !dbg !46
  %tmp11 = load i32, i32* @a, align 4, !dbg !47
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp10, i32 %tmp11), !dbg !48
  %tmp12 = load i32*, i32** @x, align 8, !dbg !49
  %tmp13 = load i32, i32* @b, align 4, !dbg !50
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp12, i32 %tmp13), !dbg !51
  br label %bb20, !dbg !52

bb14:                                             ; preds = %bb
  %tmp15 = load i32**, i32*** @p, align 8, !dbg !53
  store i32* @a, i32** %tmp15, align 8, !dbg !55
  store i32* @b, i32** @y, align 8, !dbg !56
  %tmp16 = load i32*, i32** @x, align 8, !dbg !57
  %tmp17 = load i32, i32* @a, align 4, !dbg !58
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp16, i32 %tmp17), !dbg !59
  %tmp18 = load i32*, i32** @y, align 8, !dbg !60
  %tmp19 = load i32, i32* @b, align 4, !dbg !61
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp18, i32 %tmp19), !dbg !62
  br label %bb20

bb20:                                             ; preds = %bb14, %bb8
  %tmp21 = load i32*, i32** @x, align 8, !dbg !63
  %tmp22 = load i32, i32* @a, align 4, !dbg !64
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp21, i32 %tmp22), !dbg !65
  %tmp23 = load i32*, i32** @x, align 8, !dbg !66
  %tmp24 = load i32, i32* @b, align 4, !dbg !67
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp23, i32 %tmp24), !dbg !68
  %tmp25 = load i32*, i32** @y, align 8, !dbg !69
  %tmp26 = load i32, i32* @a, align 4, !dbg !70
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp25, i32 %tmp26), !dbg !71
  %tmp27 = load i32*, i32** @y, align 8, !dbg !72
  %tmp28 = load i32, i32* @b, align 4, !dbg !73
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp27, i32 %tmp28), !dbg !74
  %tmp29 = load i32*, i32** @y, align 8, !dbg !75
  store i32* %tmp29, i32** @x, align 8, !dbg !76
  %tmp30 = load i32*, i32** @x, align 8, !dbg !77
  %tmp31 = load i32, i32* @a, align 4, !dbg !78
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp30, i32 %tmp31), !dbg !79
  %tmp32 = load i32*, i32** @x, align 8, !dbg !80
  %tmp33 = load i32, i32* @b, align 4, !dbg !81
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp32, i32 %tmp33), !dbg !82
  %tmp34 = load i32*, i32** @y, align 8, !dbg !83
  %tmp35 = load i32, i32* @a, align 4, !dbg !84
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !85
  %tmp36 = load i32*, i32** @y, align 8, !dbg !86
  %tmp37 = load i32, i32* @b, align 4, !dbg !87
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !88
  %tmp38 = load i32, i32* @b, align 4, !dbg !89
  store i32 %tmp38, i32* @a, align 4, !dbg !90
  %tmp39 = load i32**, i32*** @p, align 8, !dbg !91
  %tmp40 = load i32*, i32** %tmp39, align 8, !dbg !92
  store i32 30, i32* %tmp40, align 4, !dbg !93
  %tmp41 = load i32*, i32** @x, align 8, !dbg !94
  store i32 40, i32* %tmp41, align 4, !dbg !95
  %tmp43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 undef), !dbg !96
  ret i32 0, !dbg !97
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #2 comdat !dbg !98 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !107, metadata !DIExpression()), !dbg !106
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #2 comdat !dbg !109 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !115, metadata !DIExpression()), !dbg !116
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !117, metadata !DIExpression()), !dbg !116
  ret void, !dbg !118
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #2 comdat !dbg !119 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !122, metadata !DIExpression()), !dbg !121
  ret void, !dbg !123
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
!3 = !DIFile(filename: "testcase5.cpp", directory: "/home/mehul/Desktop/SVF-example/testcases")
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
!31 = !DILocation(line: 11, column: 7, scope: !27)
!32 = !DILocation(line: 12, column: 18, scope: !27)
!33 = !DILocation(line: 12, column: 20, scope: !27)
!34 = !DILocation(line: 12, column: 5, scope: !27)
!35 = !DILocation(line: 13, column: 18, scope: !27)
!36 = !DILocation(line: 13, column: 20, scope: !27)
!37 = !DILocation(line: 13, column: 5, scope: !27)
!38 = !DILocation(line: 14, column: 7, scope: !27)
!39 = !DILocation(line: 16, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !3, line: 16, column: 9)
!41 = !DILocation(line: 16, column: 9, scope: !27)
!42 = !DILocation(line: 18, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !3, line: 17, column: 5)
!44 = !DILocation(line: 18, column: 12, scope: !43)
!45 = !DILocation(line: 19, column: 11, scope: !43)
!46 = !DILocation(line: 20, column: 22, scope: !43)
!47 = !DILocation(line: 20, column: 24, scope: !43)
!48 = !DILocation(line: 20, column: 9, scope: !43)
!49 = !DILocation(line: 21, column: 22, scope: !43)
!50 = !DILocation(line: 21, column: 24, scope: !43)
!51 = !DILocation(line: 21, column: 9, scope: !43)
!52 = !DILocation(line: 22, column: 5, scope: !43)
!53 = !DILocation(line: 25, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !40, file: !3, line: 24, column: 5)
!55 = !DILocation(line: 25, column: 12, scope: !54)
!56 = !DILocation(line: 26, column: 11, scope: !54)
!57 = !DILocation(line: 27, column: 22, scope: !54)
!58 = !DILocation(line: 27, column: 24, scope: !54)
!59 = !DILocation(line: 27, column: 9, scope: !54)
!60 = !DILocation(line: 28, column: 22, scope: !54)
!61 = !DILocation(line: 28, column: 24, scope: !54)
!62 = !DILocation(line: 28, column: 9, scope: !54)
!63 = !DILocation(line: 31, column: 17, scope: !27)
!64 = !DILocation(line: 31, column: 19, scope: !27)
!65 = !DILocation(line: 31, column: 5, scope: !27)
!66 = !DILocation(line: 32, column: 17, scope: !27)
!67 = !DILocation(line: 32, column: 19, scope: !27)
!68 = !DILocation(line: 32, column: 5, scope: !27)
!69 = !DILocation(line: 33, column: 17, scope: !27)
!70 = !DILocation(line: 33, column: 19, scope: !27)
!71 = !DILocation(line: 33, column: 5, scope: !27)
!72 = !DILocation(line: 34, column: 17, scope: !27)
!73 = !DILocation(line: 34, column: 19, scope: !27)
!74 = !DILocation(line: 34, column: 5, scope: !27)
!75 = !DILocation(line: 36, column: 9, scope: !27)
!76 = !DILocation(line: 36, column: 7, scope: !27)
!77 = !DILocation(line: 37, column: 17, scope: !27)
!78 = !DILocation(line: 37, column: 19, scope: !27)
!79 = !DILocation(line: 37, column: 5, scope: !27)
!80 = !DILocation(line: 38, column: 17, scope: !27)
!81 = !DILocation(line: 38, column: 19, scope: !27)
!82 = !DILocation(line: 38, column: 5, scope: !27)
!83 = !DILocation(line: 39, column: 17, scope: !27)
!84 = !DILocation(line: 39, column: 19, scope: !27)
!85 = !DILocation(line: 39, column: 5, scope: !27)
!86 = !DILocation(line: 40, column: 17, scope: !27)
!87 = !DILocation(line: 40, column: 19, scope: !27)
!88 = !DILocation(line: 40, column: 5, scope: !27)
!89 = !DILocation(line: 42, column: 9, scope: !27)
!90 = !DILocation(line: 42, column: 7, scope: !27)
!91 = !DILocation(line: 43, column: 7, scope: !27)
!92 = !DILocation(line: 43, column: 6, scope: !27)
!93 = !DILocation(line: 43, column: 9, scope: !27)
!94 = !DILocation(line: 44, column: 6, scope: !27)
!95 = !DILocation(line: 44, column: 8, scope: !27)
!96 = !DILocation(line: 45, column: 5, scope: !27)
!97 = !DILocation(line: 46, column: 1, scope: !27)
!98 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !99, file: !99, line: 6, type: !100, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !102, retainedNodes: !4)
!99 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/SVF-example/testcases")
!100 = !DISubroutineType(types: !101)
!101 = !{null, !8, !9}
!102 = !{!103, !104}
!103 = !DITemplateTypeParameter(name: "T", type: !8)
!104 = !DITemplateTypeParameter(name: "U", type: !9)
!105 = !DILocalVariable(arg: 1, scope: !98, file: !99, line: 6, type: !8)
!106 = !DILocation(line: 0, scope: !98)
!107 = !DILocalVariable(arg: 2, scope: !98, file: !99, line: 6, type: !9)
!108 = !DILocation(line: 9, column: 1, scope: !98)
!109 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !99, file: !99, line: 6, type: !110, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !112, retainedNodes: !4)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !9, !10}
!112 = !{!113, !114}
!113 = !DITemplateTypeParameter(name: "T", type: !9)
!114 = !DITemplateTypeParameter(name: "U", type: !10)
!115 = !DILocalVariable(arg: 1, scope: !109, file: !99, line: 6, type: !9)
!116 = !DILocation(line: 0, scope: !109)
!117 = !DILocalVariable(arg: 2, scope: !109, file: !99, line: 6, type: !10)
!118 = !DILocation(line: 9, column: 1, scope: !109)
!119 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !99, file: !99, line: 16, type: !110, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !112, retainedNodes: !4)
!120 = !DILocalVariable(arg: 1, scope: !119, file: !99, line: 16, type: !9)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(arg: 2, scope: !119, file: !99, line: 16, type: !10)
!123 = !DILocation(line: 19, column: 1, scope: !119)
