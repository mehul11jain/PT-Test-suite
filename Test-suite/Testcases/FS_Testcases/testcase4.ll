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
@d = dso_local global i32 0, align 4, !dbg !23

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main() #0 !dbg !29 {
bb:
  store i32** @x, i32*** @p, align 8, !dbg !32
  %tmp1 = load i32**, i32*** @p, align 8, !dbg !33
  %tmp2 = load i32*, i32** @x, align 8, !dbg !34
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp1, i32* %tmp2), !dbg !35
  store i32* @a, i32** @x, align 8, !dbg !36
  %tmp3 = load i32*, i32** @x, align 8, !dbg !37
  %tmp4 = load i32, i32* @a, align 4, !dbg !38
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp3, i32 %tmp4), !dbg !39
  %tmp5 = load i32, i32* @a, align 4, !dbg !40
  switch i32 %tmp5, label %bb16 [
    i32 1, label %bb6
    i32 2, label %bb9
    i32 3, label %bb12
    i32 5, label %bb15
  ], !dbg !41

bb6:                                              ; preds = %bb
  store i32* @b, i32** @x, align 8, !dbg !42
  %tmp7 = load i32*, i32** @x, align 8, !dbg !44
  %tmp8 = load i32, i32* @b, align 4, !dbg !45
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp7, i32 %tmp8), !dbg !46
  br label %bb19, !dbg !47

bb9:                                              ; preds = %bb
  store i32* @c, i32** @x, align 8, !dbg !48
  %tmp10 = load i32*, i32** @x, align 8, !dbg !49
  %tmp11 = load i32, i32* @c, align 4, !dbg !50
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp10, i32 %tmp11), !dbg !51
  br label %bb19, !dbg !52

bb12:                                             ; preds = %bb
  store i32* @a, i32** @y, align 8, !dbg !53
  %tmp13 = load i32*, i32** @y, align 8, !dbg !54
  %tmp14 = load i32, i32* @a, align 4, !dbg !55
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp13, i32 %tmp14), !dbg !56
  br label %bb19, !dbg !57

bb15:                                             ; preds = %bb
  br label %bb19, !dbg !58

bb16:                                             ; preds = %bb
  store i32* @b, i32** @y, align 8, !dbg !59
  %tmp17 = load i32*, i32** @y, align 8, !dbg !60
  %tmp18 = load i32, i32* @b, align 4, !dbg !61
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp17, i32 %tmp18), !dbg !62
  br label %bb19, !dbg !63

bb19:                                             ; preds = %bb16, %bb15, %bb12, %bb9, %bb6
  %tmp20 = load i32**, i32*** @p, align 8, !dbg !64
  store i32* @d, i32** %tmp20, align 8, !dbg !65
  %tmp21 = load i32*, i32** @x, align 8, !dbg !66
  %tmp22 = load i32, i32* @d, align 4, !dbg !67
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp21, i32 %tmp22), !dbg !68
  %tmp23 = load i32*, i32** @y, align 8, !dbg !69
  %tmp24 = load i32, i32* @a, align 4, !dbg !70
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp23, i32 %tmp24), !dbg !71
  %tmp25 = load i32*, i32** @y, align 8, !dbg !72
  %tmp26 = load i32, i32* @b, align 4, !dbg !73
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp25, i32 %tmp26), !dbg !74
  %tmp27 = load i32**, i32*** @p, align 8, !dbg !75
  %tmp28 = load i32*, i32** @x, align 8, !dbg !76
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp27, i32* %tmp28), !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !79 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !88, metadata !DIExpression()), !dbg !87
  ret void, !dbg !89
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !90 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !98, metadata !DIExpression()), !dbg !97
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !100 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !103, metadata !DIExpression()), !dbg !102
  ret void, !dbg !104
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
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 3, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "testcase4.cpp", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!4 = !{}
!5 = !{!0, !6, !10, !12, !15, !17, !19, !21, !23}
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
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 3, type: !9, isLocal: false, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.0 "}
!29 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 4, type: !30, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{!9}
!32 = !DILocation(line: 5, column: 7, scope: !29)
!33 = !DILocation(line: 6, column: 15, scope: !29)
!34 = !DILocation(line: 6, column: 17, scope: !29)
!35 = !DILocation(line: 6, column: 2, scope: !29)
!36 = !DILocation(line: 7, column: 4, scope: !29)
!37 = !DILocation(line: 8, column: 15, scope: !29)
!38 = !DILocation(line: 8, column: 17, scope: !29)
!39 = !DILocation(line: 8, column: 2, scope: !29)
!40 = !DILocation(line: 11, column: 9, scope: !29)
!41 = !DILocation(line: 11, column: 2, scope: !29)
!42 = !DILocation(line: 13, column: 6, scope: !43)
!43 = distinct !DILexicalBlock(scope: !29, file: !3, line: 11, column: 11)
!44 = !DILocation(line: 14, column: 17, scope: !43)
!45 = !DILocation(line: 14, column: 19, scope: !43)
!46 = !DILocation(line: 14, column: 4, scope: !43)
!47 = !DILocation(line: 15, column: 4, scope: !43)
!48 = !DILocation(line: 17, column: 6, scope: !43)
!49 = !DILocation(line: 18, column: 17, scope: !43)
!50 = !DILocation(line: 18, column: 19, scope: !43)
!51 = !DILocation(line: 18, column: 4, scope: !43)
!52 = !DILocation(line: 19, column: 4, scope: !43)
!53 = !DILocation(line: 21, column: 6, scope: !43)
!54 = !DILocation(line: 22, column: 17, scope: !43)
!55 = !DILocation(line: 22, column: 19, scope: !43)
!56 = !DILocation(line: 22, column: 4, scope: !43)
!57 = !DILocation(line: 23, column: 4, scope: !43)
!58 = !DILocation(line: 25, column: 4, scope: !43)
!59 = !DILocation(line: 27, column: 6, scope: !43)
!60 = !DILocation(line: 28, column: 17, scope: !43)
!61 = !DILocation(line: 28, column: 19, scope: !43)
!62 = !DILocation(line: 28, column: 4, scope: !43)
!63 = !DILocation(line: 29, column: 4, scope: !43)
!64 = !DILocation(line: 39, column: 3, scope: !29)
!65 = !DILocation(line: 39, column: 5, scope: !29)
!66 = !DILocation(line: 40, column: 18, scope: !29)
!67 = !DILocation(line: 40, column: 20, scope: !29)
!68 = !DILocation(line: 40, column: 5, scope: !29)
!69 = !DILocation(line: 41, column: 14, scope: !29)
!70 = !DILocation(line: 41, column: 16, scope: !29)
!71 = !DILocation(line: 41, column: 2, scope: !29)
!72 = !DILocation(line: 42, column: 14, scope: !29)
!73 = !DILocation(line: 42, column: 16, scope: !29)
!74 = !DILocation(line: 42, column: 2, scope: !29)
!75 = !DILocation(line: 43, column: 15, scope: !29)
!76 = !DILocation(line: 43, column: 17, scope: !29)
!77 = !DILocation(line: 43, column: 2, scope: !29)
!78 = !DILocation(line: 45, column: 1, scope: !29)
!79 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !80, file: !80, line: 6, type: !81, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !83, retainedNodes: !4)
!80 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!81 = !DISubroutineType(types: !82)
!82 = !{null, !14, !8}
!83 = !{!84, !85}
!84 = !DITemplateTypeParameter(name: "T", type: !14)
!85 = !DITemplateTypeParameter(name: "U", type: !8)
!86 = !DILocalVariable(arg: 1, scope: !79, file: !80, line: 6, type: !14)
!87 = !DILocation(line: 0, scope: !79)
!88 = !DILocalVariable(arg: 2, scope: !79, file: !80, line: 6, type: !8)
!89 = !DILocation(line: 9, column: 1, scope: !79)
!90 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !80, file: !80, line: 6, type: !91, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !93, retainedNodes: !4)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !8, !9}
!93 = !{!94, !95}
!94 = !DITemplateTypeParameter(name: "T", type: !8)
!95 = !DITemplateTypeParameter(name: "U", type: !9)
!96 = !DILocalVariable(arg: 1, scope: !90, file: !80, line: 6, type: !8)
!97 = !DILocation(line: 0, scope: !90)
!98 = !DILocalVariable(arg: 2, scope: !90, file: !80, line: 6, type: !9)
!99 = !DILocation(line: 9, column: 1, scope: !90)
!100 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !80, file: !80, line: 16, type: !91, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !93, retainedNodes: !4)
!101 = !DILocalVariable(arg: 1, scope: !100, file: !80, line: 16, type: !8)
!102 = !DILocation(line: 0, scope: !100)
!103 = !DILocalVariable(arg: 2, scope: !100, file: !80, line: 16, type: !9)
!104 = !DILocation(line: 19, column: 1, scope: !100)
