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

bb3:                                              ; preds = %bb62, %bb
  %tmp4 = load i32, i32* @a, align 4, !dbg !37
  %tmp5 = icmp sgt i32 %tmp4, 0, !dbg !38
  br i1 %tmp5, label %bb6, label %bb87, !dbg !36

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
  br i1 %tmp22, label %bb23, label %bb62, !dbg !60

bb23:                                             ; preds = %bb20
  store i32* @b, i32** @x, align 8, !dbg !63
  %tmp24 = load i32*, i32** @x, align 8, !dbg !65
  %tmp25 = load i32, i32* @b, align 4, !dbg !66
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp24, i32 %tmp25), !dbg !67
  %tmp26 = load i32**, i32*** @p, align 8, !dbg !68
  %tmp27 = load i32*, i32** @x, align 8, !dbg !69
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp26, i32* %tmp27), !dbg !70
  %tmp28 = load i32**, i32*** @p, align 8, !dbg !71
  %tmp29 = load i32*, i32** @y, align 8, !dbg !72
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp28, i32* %tmp29), !dbg !73
  %tmp30 = load i32**, i32*** @q, align 8, !dbg !74
  %tmp31 = load i32*, i32** @x, align 8, !dbg !75
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp30, i32* %tmp31), !dbg !76
  %tmp32 = load i32**, i32*** @q, align 8, !dbg !77
  %tmp33 = load i32*, i32** @y, align 8, !dbg !78
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp32, i32* %tmp33), !dbg !79
  %tmp34 = load i32*, i32** @y, align 8, !dbg !80
  %tmp35 = load i32, i32* @b, align 4, !dbg !81
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp34, i32 %tmp35), !dbg !82
  %tmp36 = load i32*, i32** @y, align 8, !dbg !83
  %tmp37 = load i32, i32* @a, align 4, !dbg !84
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp36, i32 %tmp37), !dbg !85
  store i32* @a, i32** @y, align 8, !dbg !86
  %tmp38 = load i32*, i32** @x, align 8, !dbg !87
  %tmp39 = load i32, i32* @b, align 4, !dbg !88
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp38, i32 %tmp39), !dbg !89
  %tmp40 = load i32*, i32** @y, align 8, !dbg !90
  %tmp41 = load i32, i32* @a, align 4, !dbg !91
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp40, i32 %tmp41), !dbg !92
  %tmp42 = load i32**, i32*** @p, align 8, !dbg !93
  %tmp43 = load i32*, i32** @x, align 8, !dbg !94
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp42, i32* %tmp43), !dbg !95
  %tmp44 = load i32**, i32*** @p, align 8, !dbg !96
  %tmp45 = load i32*, i32** @y, align 8, !dbg !97
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp44, i32* %tmp45), !dbg !98
  %tmp46 = load i32**, i32*** @q, align 8, !dbg !99
  %tmp47 = load i32*, i32** @x, align 8, !dbg !100
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp46, i32* %tmp47), !dbg !101
  %tmp48 = load i32**, i32*** @q, align 8, !dbg !102
  %tmp49 = load i32*, i32** @y, align 8, !dbg !103
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp48, i32* %tmp49), !dbg !104
  store i32** @y, i32*** @q, align 8, !dbg !105
  %tmp50 = load i32**, i32*** @q, align 8, !dbg !106
  %tmp51 = load i32*, i32** @y, align 8, !dbg !107
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp50, i32* %tmp51), !dbg !108
  %tmp52 = load i32*, i32** @x, align 8, !dbg !109
  %tmp53 = load i32, i32* @b, align 4, !dbg !110
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp52, i32 %tmp53), !dbg !111
  %tmp54 = load i32*, i32** @y, align 8, !dbg !112
  %tmp55 = load i32, i32* @a, align 4, !dbg !113
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp54, i32 %tmp55), !dbg !114
  %tmp56 = load i32**, i32*** @p, align 8, !dbg !115
  %tmp57 = load i32*, i32** @x, align 8, !dbg !116
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp56, i32* %tmp57), !dbg !117
  %tmp58 = load i32**, i32*** @p, align 8, !dbg !118
  %tmp59 = load i32*, i32** @y, align 8, !dbg !119
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp58, i32* %tmp59), !dbg !120
  %tmp60 = load i32, i32* @b, align 4, !dbg !121
  %tmp61 = add nsw i32 %tmp60, -1, !dbg !121
  store i32 %tmp61, i32* @b, align 4, !dbg !121
  br label %bb20, !dbg !60, !llvm.loop !122

bb62:                                             ; preds = %bb20
  store i32** @y, i32*** @p, align 8, !dbg !124
  %tmp63 = load i32**, i32*** @p, align 8, !dbg !125
  %tmp64 = load i32*, i32** @y, align 8, !dbg !126
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp63, i32* %tmp64), !dbg !127
  %tmp65 = load i32*, i32** @x, align 8, !dbg !128
  %tmp66 = load i32, i32* @b, align 4, !dbg !129
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp65, i32 %tmp66), !dbg !130
  %tmp67 = load i32*, i32** @y, align 8, !dbg !131
  %tmp68 = load i32, i32* @a, align 4, !dbg !132
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp67, i32 %tmp68), !dbg !133
  %tmp69 = load i32*, i32** @y, align 8, !dbg !134
  %tmp70 = load i32, i32* @b, align 4, !dbg !135
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp69, i32 %tmp70), !dbg !136
  %tmp71 = load i32**, i32*** @q, align 8, !dbg !137
  %tmp72 = load i32*, i32** @x, align 8, !dbg !138
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp71, i32* %tmp72), !dbg !139
  %tmp73 = load i32**, i32*** @q, align 8, !dbg !140
  %tmp74 = load i32*, i32** @y, align 8, !dbg !141
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp73, i32* %tmp74), !dbg !142
  store i32** @x, i32*** @q, align 8, !dbg !143
  %tmp75 = load i32**, i32*** @q, align 8, !dbg !144
  %tmp76 = load i32*, i32** @x, align 8, !dbg !145
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp75, i32* %tmp76), !dbg !146
  %tmp77 = load i32**, i32*** @p, align 8, !dbg !147
  %tmp78 = load i32*, i32** @y, align 8, !dbg !148
  call void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %tmp77, i32* %tmp78), !dbg !149
  %tmp79 = load i32*, i32** @x, align 8, !dbg !150
  %tmp80 = load i32, i32* @b, align 4, !dbg !151
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp79, i32 %tmp80), !dbg !152
  %tmp81 = load i32*, i32** @y, align 8, !dbg !153
  %tmp82 = load i32, i32* @a, align 4, !dbg !154
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp81, i32 %tmp82), !dbg !155
  %tmp83 = load i32*, i32** @y, align 8, !dbg !156
  %tmp84 = load i32, i32* @b, align 4, !dbg !157
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp83, i32 %tmp84), !dbg !158
  %tmp85 = load i32, i32* @a, align 4, !dbg !159
  %tmp86 = add nsw i32 %tmp85, -1, !dbg !159
  store i32 %tmp86, i32* @a, align 4, !dbg !159
  br label %bb3, !dbg !36, !llvm.loop !160

bb87:                                             ; preds = %bb3
  %tmp88 = load i32, i32* @a, align 4, !dbg !162
  %tmp89 = icmp sgt i32 %tmp88, -1, !dbg !164
  br i1 %tmp89, label %bb90, label %bb108, !dbg !165

bb90:                                             ; preds = %bb87
  %tmp91 = load i32**, i32*** @p, align 8, !dbg !166
  store i32* @c, i32** %tmp91, align 8, !dbg !168
  %tmp92 = load i32**, i32*** @p, align 8, !dbg !169
  %tmp93 = load i32*, i32** @x, align 8, !dbg !170
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp92, i32* %tmp93), !dbg !171
  %tmp94 = load i32**, i32*** @p, align 8, !dbg !172
  %tmp95 = load i32*, i32** @y, align 8, !dbg !173
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp94, i32* %tmp95), !dbg !174
  %tmp96 = load i32*, i32** @x, align 8, !dbg !175
  %tmp97 = load i32, i32* @b, align 4, !dbg !176
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp96, i32 %tmp97), !dbg !177
  %tmp98 = load i32*, i32** @x, align 8, !dbg !178
  %tmp99 = load i32, i32* @c, align 4, !dbg !179
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp98, i32 %tmp99), !dbg !180
  %tmp100 = load i32*, i32** @y, align 8, !dbg !181
  %tmp101 = load i32, i32* @a, align 4, !dbg !182
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp100, i32 %tmp101), !dbg !183
  %tmp102 = load i32*, i32** @y, align 8, !dbg !184
  %tmp103 = load i32, i32* @b, align 4, !dbg !185
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp102, i32 %tmp103), !dbg !186
  %tmp104 = load i32*, i32** @y, align 8, !dbg !187
  %tmp105 = load i32, i32* @c, align 4, !dbg !188
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp104, i32 %tmp105), !dbg !189
  %tmp106 = load i32**, i32*** @q, align 8, !dbg !190
  %tmp107 = load i32*, i32** @x, align 8, !dbg !191
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp106, i32* %tmp107), !dbg !192
  br label %bb122, !dbg !193

bb108:                                            ; preds = %bb87
  %tmp109 = load i32**, i32*** @p, align 8, !dbg !194
  store i32* @b, i32** %tmp109, align 8, !dbg !196
  %tmp110 = load i32**, i32*** @p, align 8, !dbg !197
  %tmp111 = load i32*, i32** @x, align 8, !dbg !198
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp110, i32* %tmp111), !dbg !199
  %tmp112 = load i32**, i32*** @p, align 8, !dbg !200
  %tmp113 = load i32*, i32** @y, align 8, !dbg !201
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp112, i32* %tmp113), !dbg !202
  %tmp114 = load i32*, i32** @x, align 8, !dbg !203
  %tmp115 = load i32, i32* @b, align 4, !dbg !204
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp114, i32 %tmp115), !dbg !205
  %tmp116 = load i32*, i32** @y, align 8, !dbg !206
  %tmp117 = load i32, i32* @a, align 4, !dbg !207
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp116, i32 %tmp117), !dbg !208
  %tmp118 = load i32**, i32*** @q, align 8, !dbg !209
  %tmp119 = load i32*, i32** @x, align 8, !dbg !210
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp118, i32* %tmp119), !dbg !211
  %tmp120 = load i32*, i32** @y, align 8, !dbg !212
  %tmp121 = load i32, i32* @b, align 4, !dbg !213
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp120, i32 %tmp121), !dbg !214
  br label %bb122

bb122:                                            ; preds = %bb108, %bb90
  store i32* @a, i32** @x, align 8, !dbg !215
  %tmp123 = load i32**, i32*** @p, align 8, !dbg !216
  %tmp124 = load i32*, i32** @x, align 8, !dbg !217
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp123, i32* %tmp124), !dbg !218
  %tmp125 = load i32**, i32*** @p, align 8, !dbg !219
  %tmp126 = load i32*, i32** @y, align 8, !dbg !220
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp125, i32* %tmp126), !dbg !221
  %tmp127 = load i32*, i32** @y, align 8, !dbg !222
  %tmp128 = load i32, i32* @c, align 4, !dbg !223
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp127, i32 %tmp128), !dbg !224
  %tmp129 = load i32**, i32*** @q, align 8, !dbg !225
  %tmp130 = load i32*, i32** @x, align 8, !dbg !226
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp129, i32* %tmp130), !dbg !227
  %tmp131 = load i32*, i32** @y, align 8, !dbg !228
  %tmp132 = load i32, i32* @b, align 4, !dbg !229
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp131, i32 %tmp132), !dbg !230
  %tmp133 = load i32*, i32** @y, align 8, !dbg !231
  %tmp134 = load i32, i32* @a, align 4, !dbg !232
  call void @_Z11MayPointsToIPiiEvT_T0_(i32* %tmp133, i32 %tmp134), !dbg !233
  %tmp135 = load i32*, i32** @x, align 8, !dbg !234
  %tmp136 = load i32, i32* @a, align 4, !dbg !235
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp135, i32 %tmp136), !dbg !236
  store i32* @b, i32** @y, align 8, !dbg !237
  %tmp137 = load i32*, i32** @y, align 8, !dbg !238
  %tmp138 = load i32, i32* @b, align 4, !dbg !239
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp137, i32 %tmp138), !dbg !240
  %tmp139 = load i32**, i32*** @q, align 8, !dbg !241
  %tmp140 = load i32*, i32** @x, align 8, !dbg !242
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp139, i32* %tmp140), !dbg !243
  %tmp141 = load i32**, i32*** @p, align 8, !dbg !244
  %tmp142 = load i32*, i32** @x, align 8, !dbg !245
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp141, i32* %tmp142), !dbg !246
  %tmp143 = load i32**, i32*** @p, align 8, !dbg !247
  %tmp144 = load i32*, i32** @y, align 8, !dbg !248
  call void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %tmp143, i32* %tmp144), !dbg !249
  %tmp145 = load i32*, i32** @x, align 8, !dbg !250
  %tmp146 = load i32, i32* @a, align 4, !dbg !251
  call void @_Z12MustPointsToIPiiEvT_T0_(i32* %tmp145, i32 %tmp146), !dbg !252
  ret i32 0, !dbg !253
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !254 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !263, metadata !DIExpression()), !dbg !262
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPPiS0_EvT_T0_(i32** %arg, i32* %arg1) #1 comdat !dbg !265 {
bb:
  call void @llvm.dbg.value(metadata i32** %arg, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32* %arg1, metadata !268, metadata !DIExpression()), !dbg !267
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z11MayPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !270 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !278, metadata !DIExpression()), !dbg !277
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_Z12MustPointsToIPiiEvT_T0_(i32* %arg, i32 %arg1) #1 comdat !dbg !280 {
bb:
  call void @llvm.dbg.value(metadata i32* %arg, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %arg1, metadata !283, metadata !DIExpression()), !dbg !282
  ret void, !dbg !284
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
!68 = !DILocation(line: 35, column: 25, scope: !64)
!69 = !DILocation(line: 35, column: 27, scope: !64)
!70 = !DILocation(line: 35, column: 13, scope: !64)
!71 = !DILocation(line: 36, column: 25, scope: !64)
!72 = !DILocation(line: 36, column: 27, scope: !64)
!73 = !DILocation(line: 36, column: 13, scope: !64)
!74 = !DILocation(line: 37, column: 25, scope: !64)
!75 = !DILocation(line: 37, column: 27, scope: !64)
!76 = !DILocation(line: 37, column: 13, scope: !64)
!77 = !DILocation(line: 38, column: 25, scope: !64)
!78 = !DILocation(line: 38, column: 27, scope: !64)
!79 = !DILocation(line: 38, column: 13, scope: !64)
!80 = !DILocation(line: 39, column: 25, scope: !64)
!81 = !DILocation(line: 39, column: 27, scope: !64)
!82 = !DILocation(line: 39, column: 13, scope: !64)
!83 = !DILocation(line: 40, column: 25, scope: !64)
!84 = !DILocation(line: 40, column: 27, scope: !64)
!85 = !DILocation(line: 40, column: 13, scope: !64)
!86 = !DILocation(line: 42, column: 15, scope: !64)
!87 = !DILocation(line: 43, column: 26, scope: !64)
!88 = !DILocation(line: 43, column: 28, scope: !64)
!89 = !DILocation(line: 43, column: 13, scope: !64)
!90 = !DILocation(line: 44, column: 26, scope: !64)
!91 = !DILocation(line: 44, column: 28, scope: !64)
!92 = !DILocation(line: 44, column: 13, scope: !64)
!93 = !DILocation(line: 45, column: 25, scope: !64)
!94 = !DILocation(line: 45, column: 27, scope: !64)
!95 = !DILocation(line: 45, column: 13, scope: !64)
!96 = !DILocation(line: 46, column: 25, scope: !64)
!97 = !DILocation(line: 46, column: 27, scope: !64)
!98 = !DILocation(line: 46, column: 13, scope: !64)
!99 = !DILocation(line: 47, column: 25, scope: !64)
!100 = !DILocation(line: 47, column: 27, scope: !64)
!101 = !DILocation(line: 47, column: 13, scope: !64)
!102 = !DILocation(line: 48, column: 25, scope: !64)
!103 = !DILocation(line: 48, column: 27, scope: !64)
!104 = !DILocation(line: 48, column: 13, scope: !64)
!105 = !DILocation(line: 50, column: 15, scope: !64)
!106 = !DILocation(line: 51, column: 26, scope: !64)
!107 = !DILocation(line: 51, column: 28, scope: !64)
!108 = !DILocation(line: 51, column: 13, scope: !64)
!109 = !DILocation(line: 52, column: 26, scope: !64)
!110 = !DILocation(line: 52, column: 28, scope: !64)
!111 = !DILocation(line: 52, column: 13, scope: !64)
!112 = !DILocation(line: 53, column: 26, scope: !64)
!113 = !DILocation(line: 53, column: 28, scope: !64)
!114 = !DILocation(line: 53, column: 13, scope: !64)
!115 = !DILocation(line: 54, column: 25, scope: !64)
!116 = !DILocation(line: 54, column: 27, scope: !64)
!117 = !DILocation(line: 54, column: 13, scope: !64)
!118 = !DILocation(line: 55, column: 25, scope: !64)
!119 = !DILocation(line: 55, column: 27, scope: !64)
!120 = !DILocation(line: 55, column: 13, scope: !64)
!121 = !DILocation(line: 58, column: 14, scope: !64)
!122 = distinct !{!122, !60, !123}
!123 = !DILocation(line: 59, column: 9, scope: !40)
!124 = !DILocation(line: 62, column: 11, scope: !40)
!125 = !DILocation(line: 63, column: 22, scope: !40)
!126 = !DILocation(line: 63, column: 24, scope: !40)
!127 = !DILocation(line: 63, column: 9, scope: !40)
!128 = !DILocation(line: 65, column: 21, scope: !40)
!129 = !DILocation(line: 65, column: 23, scope: !40)
!130 = !DILocation(line: 65, column: 9, scope: !40)
!131 = !DILocation(line: 66, column: 21, scope: !40)
!132 = !DILocation(line: 66, column: 23, scope: !40)
!133 = !DILocation(line: 66, column: 9, scope: !40)
!134 = !DILocation(line: 67, column: 21, scope: !40)
!135 = !DILocation(line: 67, column: 23, scope: !40)
!136 = !DILocation(line: 67, column: 9, scope: !40)
!137 = !DILocation(line: 68, column: 21, scope: !40)
!138 = !DILocation(line: 68, column: 23, scope: !40)
!139 = !DILocation(line: 68, column: 9, scope: !40)
!140 = !DILocation(line: 69, column: 21, scope: !40)
!141 = !DILocation(line: 69, column: 23, scope: !40)
!142 = !DILocation(line: 69, column: 9, scope: !40)
!143 = !DILocation(line: 72, column: 11, scope: !40)
!144 = !DILocation(line: 73, column: 22, scope: !40)
!145 = !DILocation(line: 73, column: 24, scope: !40)
!146 = !DILocation(line: 73, column: 9, scope: !40)
!147 = !DILocation(line: 74, column: 22, scope: !40)
!148 = !DILocation(line: 74, column: 24, scope: !40)
!149 = !DILocation(line: 74, column: 9, scope: !40)
!150 = !DILocation(line: 75, column: 21, scope: !40)
!151 = !DILocation(line: 75, column: 23, scope: !40)
!152 = !DILocation(line: 75, column: 9, scope: !40)
!153 = !DILocation(line: 76, column: 21, scope: !40)
!154 = !DILocation(line: 76, column: 23, scope: !40)
!155 = !DILocation(line: 76, column: 9, scope: !40)
!156 = !DILocation(line: 77, column: 21, scope: !40)
!157 = !DILocation(line: 77, column: 23, scope: !40)
!158 = !DILocation(line: 77, column: 9, scope: !40)
!159 = !DILocation(line: 80, column: 10, scope: !40)
!160 = distinct !{!160, !36, !161}
!161 = !DILocation(line: 81, column: 5, scope: !29)
!162 = !DILocation(line: 83, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !29, file: !3, line: 83, column: 8)
!164 = !DILocation(line: 83, column: 10, scope: !163)
!165 = !DILocation(line: 83, column: 8, scope: !29)
!166 = !DILocation(line: 87, column: 10, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !3, line: 83, column: 15)
!168 = !DILocation(line: 87, column: 12, scope: !167)
!169 = !DILocation(line: 88, column: 21, scope: !167)
!170 = !DILocation(line: 88, column: 23, scope: !167)
!171 = !DILocation(line: 88, column: 9, scope: !167)
!172 = !DILocation(line: 89, column: 21, scope: !167)
!173 = !DILocation(line: 89, column: 23, scope: !167)
!174 = !DILocation(line: 89, column: 9, scope: !167)
!175 = !DILocation(line: 90, column: 21, scope: !167)
!176 = !DILocation(line: 90, column: 23, scope: !167)
!177 = !DILocation(line: 90, column: 9, scope: !167)
!178 = !DILocation(line: 91, column: 21, scope: !167)
!179 = !DILocation(line: 91, column: 23, scope: !167)
!180 = !DILocation(line: 91, column: 9, scope: !167)
!181 = !DILocation(line: 92, column: 21, scope: !167)
!182 = !DILocation(line: 92, column: 23, scope: !167)
!183 = !DILocation(line: 92, column: 9, scope: !167)
!184 = !DILocation(line: 93, column: 21, scope: !167)
!185 = !DILocation(line: 93, column: 23, scope: !167)
!186 = !DILocation(line: 93, column: 9, scope: !167)
!187 = !DILocation(line: 94, column: 21, scope: !167)
!188 = !DILocation(line: 94, column: 23, scope: !167)
!189 = !DILocation(line: 94, column: 9, scope: !167)
!190 = !DILocation(line: 95, column: 21, scope: !167)
!191 = !DILocation(line: 95, column: 23, scope: !167)
!192 = !DILocation(line: 95, column: 9, scope: !167)
!193 = !DILocation(line: 97, column: 5, scope: !167)
!194 = !DILocation(line: 102, column: 10, scope: !195)
!195 = distinct !DILexicalBlock(scope: !163, file: !3, line: 98, column: 9)
!196 = !DILocation(line: 102, column: 12, scope: !195)
!197 = !DILocation(line: 103, column: 21, scope: !195)
!198 = !DILocation(line: 103, column: 23, scope: !195)
!199 = !DILocation(line: 103, column: 9, scope: !195)
!200 = !DILocation(line: 104, column: 21, scope: !195)
!201 = !DILocation(line: 104, column: 23, scope: !195)
!202 = !DILocation(line: 104, column: 9, scope: !195)
!203 = !DILocation(line: 105, column: 21, scope: !195)
!204 = !DILocation(line: 105, column: 23, scope: !195)
!205 = !DILocation(line: 105, column: 9, scope: !195)
!206 = !DILocation(line: 106, column: 21, scope: !195)
!207 = !DILocation(line: 106, column: 23, scope: !195)
!208 = !DILocation(line: 106, column: 9, scope: !195)
!209 = !DILocation(line: 107, column: 21, scope: !195)
!210 = !DILocation(line: 107, column: 23, scope: !195)
!211 = !DILocation(line: 107, column: 9, scope: !195)
!212 = !DILocation(line: 108, column: 21, scope: !195)
!213 = !DILocation(line: 108, column: 23, scope: !195)
!214 = !DILocation(line: 108, column: 9, scope: !195)
!215 = !DILocation(line: 116, column: 7, scope: !29)
!216 = !DILocation(line: 118, column: 17, scope: !29)
!217 = !DILocation(line: 118, column: 19, scope: !29)
!218 = !DILocation(line: 118, column: 5, scope: !29)
!219 = !DILocation(line: 119, column: 17, scope: !29)
!220 = !DILocation(line: 119, column: 19, scope: !29)
!221 = !DILocation(line: 119, column: 5, scope: !29)
!222 = !DILocation(line: 120, column: 17, scope: !29)
!223 = !DILocation(line: 120, column: 19, scope: !29)
!224 = !DILocation(line: 120, column: 5, scope: !29)
!225 = !DILocation(line: 121, column: 17, scope: !29)
!226 = !DILocation(line: 121, column: 19, scope: !29)
!227 = !DILocation(line: 121, column: 5, scope: !29)
!228 = !DILocation(line: 122, column: 17, scope: !29)
!229 = !DILocation(line: 122, column: 19, scope: !29)
!230 = !DILocation(line: 122, column: 5, scope: !29)
!231 = !DILocation(line: 123, column: 17, scope: !29)
!232 = !DILocation(line: 123, column: 19, scope: !29)
!233 = !DILocation(line: 123, column: 5, scope: !29)
!234 = !DILocation(line: 124, column: 18, scope: !29)
!235 = !DILocation(line: 124, column: 20, scope: !29)
!236 = !DILocation(line: 124, column: 5, scope: !29)
!237 = !DILocation(line: 126, column: 7, scope: !29)
!238 = !DILocation(line: 127, column: 18, scope: !29)
!239 = !DILocation(line: 127, column: 20, scope: !29)
!240 = !DILocation(line: 127, column: 5, scope: !29)
!241 = !DILocation(line: 128, column: 17, scope: !29)
!242 = !DILocation(line: 128, column: 19, scope: !29)
!243 = !DILocation(line: 128, column: 5, scope: !29)
!244 = !DILocation(line: 129, column: 17, scope: !29)
!245 = !DILocation(line: 129, column: 19, scope: !29)
!246 = !DILocation(line: 129, column: 5, scope: !29)
!247 = !DILocation(line: 130, column: 17, scope: !29)
!248 = !DILocation(line: 130, column: 19, scope: !29)
!249 = !DILocation(line: 130, column: 5, scope: !29)
!250 = !DILocation(line: 131, column: 18, scope: !29)
!251 = !DILocation(line: 131, column: 20, scope: !29)
!252 = !DILocation(line: 131, column: 5, scope: !29)
!253 = !DILocation(line: 133, column: 5, scope: !29)
!254 = distinct !DISubprogram(name: "MustPointsTo<int **, int *>", linkageName: "_Z12MustPointsToIPPiS0_EvT_T0_", scope: !255, file: !255, line: 6, type: !256, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !258, retainedNodes: !4)
!255 = !DIFile(filename: "./PointsToCheck.h", directory: "/home/mehul/Desktop/PT-Test-suite/Test-suite/Testcases/FS_Testcases")
!256 = !DISubroutineType(types: !257)
!257 = !{null, !8, !9}
!258 = !{!259, !260}
!259 = !DITemplateTypeParameter(name: "T", type: !8)
!260 = !DITemplateTypeParameter(name: "U", type: !9)
!261 = !DILocalVariable(arg: 1, scope: !254, file: !255, line: 6, type: !8)
!262 = !DILocation(line: 0, scope: !254)
!263 = !DILocalVariable(arg: 2, scope: !254, file: !255, line: 6, type: !9)
!264 = !DILocation(line: 9, column: 1, scope: !254)
!265 = distinct !DISubprogram(name: "MayPointsTo<int **, int *>", linkageName: "_Z11MayPointsToIPPiS0_EvT_T0_", scope: !255, file: !255, line: 16, type: !256, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !258, retainedNodes: !4)
!266 = !DILocalVariable(arg: 1, scope: !265, file: !255, line: 16, type: !8)
!267 = !DILocation(line: 0, scope: !265)
!268 = !DILocalVariable(arg: 2, scope: !265, file: !255, line: 16, type: !9)
!269 = !DILocation(line: 19, column: 1, scope: !265)
!270 = distinct !DISubprogram(name: "MayPointsTo<int *, int>", linkageName: "_Z11MayPointsToIPiiEvT_T0_", scope: !255, file: !255, line: 16, type: !271, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !273, retainedNodes: !4)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !9, !10}
!273 = !{!274, !275}
!274 = !DITemplateTypeParameter(name: "T", type: !9)
!275 = !DITemplateTypeParameter(name: "U", type: !10)
!276 = !DILocalVariable(arg: 1, scope: !270, file: !255, line: 16, type: !9)
!277 = !DILocation(line: 0, scope: !270)
!278 = !DILocalVariable(arg: 2, scope: !270, file: !255, line: 16, type: !10)
!279 = !DILocation(line: 19, column: 1, scope: !270)
!280 = distinct !DISubprogram(name: "MustPointsTo<int *, int>", linkageName: "_Z12MustPointsToIPiiEvT_T0_", scope: !255, file: !255, line: 6, type: !271, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, templateParams: !273, retainedNodes: !4)
!281 = !DILocalVariable(arg: 1, scope: !280, file: !255, line: 6, type: !9)
!282 = !DILocation(line: 0, scope: !280)
!283 = !DILocalVariable(arg: 2, scope: !280, file: !255, line: 6, type: !10)
!284 = !DILocation(line: 9, column: 1, scope: !280)
