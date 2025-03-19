; ModuleID = 'mt19937-64.c'
source_filename = "mt19937-64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mt = internal global [312 x i64] zeroinitializer, align 16, !dbg !0
@mti = internal global i32 313, align 4, !dbg !18
@genrand64_int64.mag01 = internal global [2 x i64] [i64 0, i64 -5403634167711393303], align 16, !dbg !9

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_genrand64(i64 %seed) #0 !dbg !29 {
entry:
  %seed.addr = alloca i64, align 8
  store i64 %seed, i64* %seed.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %seed.addr, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i64, i64* %seed.addr, align 8, !dbg !34
  store i64 %0, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 0), align 16, !dbg !35
  store i32 1, i32* @mti, align 4, !dbg !36
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* @mti, align 4, !dbg !39
  %cmp = icmp slt i32 %1, 312, !dbg !41
  br i1 %cmp, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @mti, align 4, !dbg !43
  %sub = sub nsw i32 %2, 1, !dbg !44
  %idxprom = sext i32 %sub to i64, !dbg !45
  %arrayidx = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom, !dbg !45
  %3 = load i64, i64* %arrayidx, align 8, !dbg !45
  %4 = load i32, i32* @mti, align 4, !dbg !46
  %sub1 = sub nsw i32 %4, 1, !dbg !47
  %idxprom2 = sext i32 %sub1 to i64, !dbg !48
  %arrayidx3 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom2, !dbg !48
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !48
  %shr = lshr i64 %5, 62, !dbg !49
  %xor = xor i64 %3, %shr, !dbg !50
  %mul = mul i64 6364136223846793005, %xor, !dbg !51
  %6 = load i32, i32* @mti, align 4, !dbg !52
  %conv = sext i32 %6 to i64, !dbg !52
  %add = add i64 %mul, %conv, !dbg !53
  %7 = load i32, i32* @mti, align 4, !dbg !54
  %idxprom4 = sext i32 %7 to i64, !dbg !55
  %arrayidx5 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom4, !dbg !55
  store i64 %add, i64* %arrayidx5, align 8, !dbg !56
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* @mti, align 4, !dbg !57
  %inc = add nsw i32 %8, 1, !dbg !57
  store i32 %inc, i32* @mti, align 4, !dbg !57
  br label %for.cond, !dbg !58, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  ret void, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_by_array64(i64* %init_key, i64 %key_length) #0 !dbg !63 {
entry:
  %init_key.addr = alloca i64*, align 8
  %key_length.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64* %init_key, i64** %init_key.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %init_key.addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i64 %key_length, i64* %key_length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %key_length.addr, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i64* %i, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i64* %j, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %k, metadata !75, metadata !DIExpression()), !dbg !76
  call void @init_genrand64(i64 19650218), !dbg !77
  store i64 1, i64* %i, align 8, !dbg !78
  store i64 0, i64* %j, align 8, !dbg !79
  %0 = load i64, i64* %key_length.addr, align 8, !dbg !80
  %cmp = icmp ugt i64 312, %0, !dbg !81
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !82

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !82

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %key_length.addr, align 8, !dbg !83
  br label %cond.end, !dbg !82

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 312, %cond.true ], [ %1, %cond.false ], !dbg !82
  store i64 %cond, i64* %k, align 8, !dbg !84
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %cond.end
  %2 = load i64, i64* %k, align 8, !dbg !86
  %tobool = icmp ne i64 %2, 0, !dbg !89
  br i1 %tobool, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8, !dbg !90
  %arrayidx = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %3, !dbg !92
  %4 = load i64, i64* %arrayidx, align 8, !dbg !92
  %5 = load i64, i64* %i, align 8, !dbg !93
  %sub = sub i64 %5, 1, !dbg !94
  %arrayidx1 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %sub, !dbg !95
  %6 = load i64, i64* %arrayidx1, align 8, !dbg !95
  %7 = load i64, i64* %i, align 8, !dbg !96
  %sub2 = sub i64 %7, 1, !dbg !97
  %arrayidx3 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %sub2, !dbg !98
  %8 = load i64, i64* %arrayidx3, align 8, !dbg !98
  %shr = lshr i64 %8, 62, !dbg !99
  %xor = xor i64 %6, %shr, !dbg !100
  %mul = mul i64 %xor, 3935559000370003845, !dbg !101
  %xor4 = xor i64 %4, %mul, !dbg !102
  %9 = load i64*, i64** %init_key.addr, align 8, !dbg !103
  %10 = load i64, i64* %j, align 8, !dbg !104
  %arrayidx5 = getelementptr inbounds i64, i64* %9, i64 %10, !dbg !103
  %11 = load i64, i64* %arrayidx5, align 8, !dbg !103
  %add = add i64 %xor4, %11, !dbg !105
  %12 = load i64, i64* %j, align 8, !dbg !106
  %add6 = add i64 %add, %12, !dbg !107
  %13 = load i64, i64* %i, align 8, !dbg !108
  %arrayidx7 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %13, !dbg !109
  store i64 %add6, i64* %arrayidx7, align 8, !dbg !110
  %14 = load i64, i64* %i, align 8, !dbg !111
  %inc = add i64 %14, 1, !dbg !111
  store i64 %inc, i64* %i, align 8, !dbg !111
  %15 = load i64, i64* %j, align 8, !dbg !112
  %inc8 = add i64 %15, 1, !dbg !112
  store i64 %inc8, i64* %j, align 8, !dbg !112
  %16 = load i64, i64* %i, align 8, !dbg !113
  %cmp9 = icmp uge i64 %16, 312, !dbg !115
  br i1 %cmp9, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %for.body
  %17 = load i64, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 311), align 8, !dbg !117
  store i64 %17, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 0), align 16, !dbg !119
  store i64 1, i64* %i, align 8, !dbg !120
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i64, i64* %j, align 8, !dbg !122
  %19 = load i64, i64* %key_length.addr, align 8, !dbg !124
  %cmp10 = icmp uge i64 %18, %19, !dbg !125
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !126

if.then11:                                        ; preds = %if.end
  store i64 0, i64* %j, align 8, !dbg !127
  br label %if.end12, !dbg !128

if.end12:                                         ; preds = %if.then11, %if.end
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %if.end12
  %20 = load i64, i64* %k, align 8, !dbg !130
  %dec = add i64 %20, -1, !dbg !130
  store i64 %dec, i64* %k, align 8, !dbg !130
  br label %for.cond, !dbg !131, !llvm.loop !132

for.end:                                          ; preds = %for.cond
  store i64 311, i64* %k, align 8, !dbg !134
  br label %for.cond13, !dbg !136

for.cond13:                                       ; preds = %for.inc31, %for.end
  %21 = load i64, i64* %k, align 8, !dbg !137
  %tobool14 = icmp ne i64 %21, 0, !dbg !139
  br i1 %tobool14, label %for.body15, label %for.end33, !dbg !139

for.body15:                                       ; preds = %for.cond13
  %22 = load i64, i64* %i, align 8, !dbg !140
  %arrayidx16 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %22, !dbg !142
  %23 = load i64, i64* %arrayidx16, align 8, !dbg !142
  %24 = load i64, i64* %i, align 8, !dbg !143
  %sub17 = sub i64 %24, 1, !dbg !144
  %arrayidx18 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %sub17, !dbg !145
  %25 = load i64, i64* %arrayidx18, align 8, !dbg !145
  %26 = load i64, i64* %i, align 8, !dbg !146
  %sub19 = sub i64 %26, 1, !dbg !147
  %arrayidx20 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %sub19, !dbg !148
  %27 = load i64, i64* %arrayidx20, align 8, !dbg !148
  %shr21 = lshr i64 %27, 62, !dbg !149
  %xor22 = xor i64 %25, %shr21, !dbg !150
  %mul23 = mul i64 %xor22, 2862933555777941757, !dbg !151
  %xor24 = xor i64 %23, %mul23, !dbg !152
  %28 = load i64, i64* %i, align 8, !dbg !153
  %sub25 = sub i64 %xor24, %28, !dbg !154
  %29 = load i64, i64* %i, align 8, !dbg !155
  %arrayidx26 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %29, !dbg !156
  store i64 %sub25, i64* %arrayidx26, align 8, !dbg !157
  %30 = load i64, i64* %i, align 8, !dbg !158
  %inc27 = add i64 %30, 1, !dbg !158
  store i64 %inc27, i64* %i, align 8, !dbg !158
  %31 = load i64, i64* %i, align 8, !dbg !159
  %cmp28 = icmp uge i64 %31, 312, !dbg !161
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !162

if.then29:                                        ; preds = %for.body15
  %32 = load i64, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 311), align 8, !dbg !163
  store i64 %32, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 0), align 16, !dbg !165
  store i64 1, i64* %i, align 8, !dbg !166
  br label %if.end30, !dbg !167

if.end30:                                         ; preds = %if.then29, %for.body15
  br label %for.inc31, !dbg !168

for.inc31:                                        ; preds = %if.end30
  %33 = load i64, i64* %k, align 8, !dbg !169
  %dec32 = add i64 %33, -1, !dbg !169
  store i64 %dec32, i64* %k, align 8, !dbg !169
  br label %for.cond13, !dbg !170, !llvm.loop !171

for.end33:                                        ; preds = %for.cond13
  store i64 -9223372036854775808, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 0), align 16, !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @genrand64_int64() #0 !dbg !11 {
entry:
  %i = alloca i32, align 4
  %x = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i64* %x, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load i32, i32* @mti, align 4, !dbg !179
  %cmp = icmp sge i32 %0, 312, !dbg !181
  br i1 %cmp, label %if.then, label %if.end53, !dbg !182

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @mti, align 4, !dbg !183
  %cmp1 = icmp eq i32 %1, 313, !dbg !186
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !187

if.then2:                                         ; preds = %if.then
  call void @init_genrand64(i64 5489), !dbg !188
  br label %if.end, !dbg !188

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !192
  %cmp3 = icmp slt i32 %2, 156, !dbg !194
  br i1 %cmp3, label %for.body, label %for.end, !dbg !195

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !196
  %idxprom = sext i32 %3 to i64, !dbg !198
  %arrayidx = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom, !dbg !198
  %4 = load i64, i64* %arrayidx, align 8, !dbg !198
  %and = and i64 %4, -2147483648, !dbg !199
  %5 = load i32, i32* %i, align 4, !dbg !200
  %add = add nsw i32 %5, 1, !dbg !201
  %idxprom4 = sext i32 %add to i64, !dbg !202
  %arrayidx5 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom4, !dbg !202
  %6 = load i64, i64* %arrayidx5, align 8, !dbg !202
  %and6 = and i64 %6, 2147483647, !dbg !203
  %or = or i64 %and, %and6, !dbg !204
  store i64 %or, i64* %x, align 8, !dbg !205
  %7 = load i32, i32* %i, align 4, !dbg !206
  %add7 = add nsw i32 %7, 156, !dbg !207
  %idxprom8 = sext i32 %add7 to i64, !dbg !208
  %arrayidx9 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom8, !dbg !208
  %8 = load i64, i64* %arrayidx9, align 8, !dbg !208
  %9 = load i64, i64* %x, align 8, !dbg !209
  %shr = lshr i64 %9, 1, !dbg !210
  %xor = xor i64 %8, %shr, !dbg !211
  %10 = load i64, i64* %x, align 8, !dbg !212
  %and10 = and i64 %10, 1, !dbg !213
  %conv = trunc i64 %and10 to i32, !dbg !214
  %idxprom11 = sext i32 %conv to i64, !dbg !215
  %arrayidx12 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand64_int64.mag01, i64 0, i64 %idxprom11, !dbg !215
  %11 = load i64, i64* %arrayidx12, align 8, !dbg !215
  %xor13 = xor i64 %xor, %11, !dbg !216
  %12 = load i32, i32* %i, align 4, !dbg !217
  %idxprom14 = sext i32 %12 to i64, !dbg !218
  %arrayidx15 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom14, !dbg !218
  store i64 %xor13, i64* %arrayidx15, align 8, !dbg !219
  br label %for.inc, !dbg !220

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !221
  %inc = add nsw i32 %13, 1, !dbg !221
  store i32 %inc, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %for.cond
  br label %for.cond16, !dbg !225

for.cond16:                                       ; preds = %for.inc40, %for.end
  %14 = load i32, i32* %i, align 4, !dbg !226
  %cmp17 = icmp slt i32 %14, 311, !dbg !229
  br i1 %cmp17, label %for.body19, label %for.end42, !dbg !230

for.body19:                                       ; preds = %for.cond16
  %15 = load i32, i32* %i, align 4, !dbg !231
  %idxprom20 = sext i32 %15 to i64, !dbg !233
  %arrayidx21 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom20, !dbg !233
  %16 = load i64, i64* %arrayidx21, align 8, !dbg !233
  %and22 = and i64 %16, -2147483648, !dbg !234
  %17 = load i32, i32* %i, align 4, !dbg !235
  %add23 = add nsw i32 %17, 1, !dbg !236
  %idxprom24 = sext i32 %add23 to i64, !dbg !237
  %arrayidx25 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom24, !dbg !237
  %18 = load i64, i64* %arrayidx25, align 8, !dbg !237
  %and26 = and i64 %18, 2147483647, !dbg !238
  %or27 = or i64 %and22, %and26, !dbg !239
  store i64 %or27, i64* %x, align 8, !dbg !240
  %19 = load i32, i32* %i, align 4, !dbg !241
  %add28 = add nsw i32 %19, -156, !dbg !242
  %idxprom29 = sext i32 %add28 to i64, !dbg !243
  %arrayidx30 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom29, !dbg !243
  %20 = load i64, i64* %arrayidx30, align 8, !dbg !243
  %21 = load i64, i64* %x, align 8, !dbg !244
  %shr31 = lshr i64 %21, 1, !dbg !245
  %xor32 = xor i64 %20, %shr31, !dbg !246
  %22 = load i64, i64* %x, align 8, !dbg !247
  %and33 = and i64 %22, 1, !dbg !248
  %conv34 = trunc i64 %and33 to i32, !dbg !249
  %idxprom35 = sext i32 %conv34 to i64, !dbg !250
  %arrayidx36 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand64_int64.mag01, i64 0, i64 %idxprom35, !dbg !250
  %23 = load i64, i64* %arrayidx36, align 8, !dbg !250
  %xor37 = xor i64 %xor32, %23, !dbg !251
  %24 = load i32, i32* %i, align 4, !dbg !252
  %idxprom38 = sext i32 %24 to i64, !dbg !253
  %arrayidx39 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom38, !dbg !253
  store i64 %xor37, i64* %arrayidx39, align 8, !dbg !254
  br label %for.inc40, !dbg !255

for.inc40:                                        ; preds = %for.body19
  %25 = load i32, i32* %i, align 4, !dbg !256
  %inc41 = add nsw i32 %25, 1, !dbg !256
  store i32 %inc41, i32* %i, align 4, !dbg !256
  br label %for.cond16, !dbg !257, !llvm.loop !258

for.end42:                                        ; preds = %for.cond16
  %26 = load i64, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 311), align 8, !dbg !260
  %and43 = and i64 %26, -2147483648, !dbg !261
  %27 = load i64, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 0), align 16, !dbg !262
  %and44 = and i64 %27, 2147483647, !dbg !263
  %or45 = or i64 %and43, %and44, !dbg !264
  store i64 %or45, i64* %x, align 8, !dbg !265
  %28 = load i64, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 155), align 8, !dbg !266
  %29 = load i64, i64* %x, align 8, !dbg !267
  %shr46 = lshr i64 %29, 1, !dbg !268
  %xor47 = xor i64 %28, %shr46, !dbg !269
  %30 = load i64, i64* %x, align 8, !dbg !270
  %and48 = and i64 %30, 1, !dbg !271
  %conv49 = trunc i64 %and48 to i32, !dbg !272
  %idxprom50 = sext i32 %conv49 to i64, !dbg !273
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* @genrand64_int64.mag01, i64 0, i64 %idxprom50, !dbg !273
  %31 = load i64, i64* %arrayidx51, align 8, !dbg !273
  %xor52 = xor i64 %xor47, %31, !dbg !274
  store i64 %xor52, i64* getelementptr inbounds ([312 x i64], [312 x i64]* @mt, i64 0, i64 311), align 8, !dbg !275
  store i32 0, i32* @mti, align 4, !dbg !276
  br label %if.end53, !dbg !277

if.end53:                                         ; preds = %for.end42, %entry
  %32 = load i32, i32* @mti, align 4, !dbg !278
  %inc54 = add nsw i32 %32, 1, !dbg !278
  store i32 %inc54, i32* @mti, align 4, !dbg !278
  %idxprom55 = sext i32 %32 to i64, !dbg !279
  %arrayidx56 = getelementptr inbounds [312 x i64], [312 x i64]* @mt, i64 0, i64 %idxprom55, !dbg !279
  %33 = load i64, i64* %arrayidx56, align 8, !dbg !279
  store i64 %33, i64* %x, align 8, !dbg !280
  %34 = load i64, i64* %x, align 8, !dbg !281
  %shr57 = lshr i64 %34, 29, !dbg !282
  %and58 = and i64 %shr57, 6148914691236517205, !dbg !283
  %35 = load i64, i64* %x, align 8, !dbg !284
  %xor59 = xor i64 %35, %and58, !dbg !284
  store i64 %xor59, i64* %x, align 8, !dbg !284
  %36 = load i64, i64* %x, align 8, !dbg !285
  %shl = shl i64 %36, 17, !dbg !286
  %and60 = and i64 %shl, 8202884508482404352, !dbg !287
  %37 = load i64, i64* %x, align 8, !dbg !288
  %xor61 = xor i64 %37, %and60, !dbg !288
  store i64 %xor61, i64* %x, align 8, !dbg !288
  %38 = load i64, i64* %x, align 8, !dbg !289
  %shl62 = shl i64 %38, 37, !dbg !290
  %and63 = and i64 %shl62, -2270628950310912, !dbg !291
  %39 = load i64, i64* %x, align 8, !dbg !292
  %xor64 = xor i64 %39, %and63, !dbg !292
  store i64 %xor64, i64* %x, align 8, !dbg !292
  %40 = load i64, i64* %x, align 8, !dbg !293
  %shr65 = lshr i64 %40, 43, !dbg !294
  %41 = load i64, i64* %x, align 8, !dbg !295
  %xor66 = xor i64 %41, %shr65, !dbg !295
  store i64 %xor66, i64* %x, align 8, !dbg !295
  %42 = load i64, i64* %x, align 8, !dbg !296
  ret i64 %42, !dbg !297
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @genrand64_int63() #0 !dbg !298 {
entry:
  %call = call i64 @genrand64_int64(), !dbg !301
  %shr = lshr i64 %call, 1, !dbg !302
  ret i64 %shr, !dbg !303
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @genrand64_real1() #0 !dbg !304 {
entry:
  %call = call i64 @genrand64_int64(), !dbg !308
  %shr = lshr i64 %call, 11, !dbg !309
  %conv = uitofp i64 %shr to double, !dbg !310
  %mul = fmul double %conv, 0x3CA0000000000001, !dbg !311
  ret double %mul, !dbg !312
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @genrand64_real2() #0 !dbg !313 {
entry:
  %call = call i64 @genrand64_int64(), !dbg !314
  %shr = lshr i64 %call, 11, !dbg !315
  %conv = uitofp i64 %shr to double, !dbg !316
  %mul = fmul double %conv, 0x3CA0000000000000, !dbg !317
  ret double %mul, !dbg !318
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @genrand64_real3() #0 !dbg !319 {
entry:
  %call = call i64 @genrand64_int64(), !dbg !320
  %shr = lshr i64 %call, 12, !dbg !321
  %conv = uitofp i64 %shr to double, !dbg !322
  %add = fadd double %conv, 5.000000e-01, !dbg !323
  %mul = fmul double %add, 0x3CB0000000000000, !dbg !324
  ret double %mul, !dbg !325
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mt", scope: !2, file: !3, line: 68, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mt19937-64.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!8 = !{!9, !0, !18}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "mag01", scope: !11, file: !3, line: 112, type: !15, isLocal: true, isDefinition: true)
!11 = distinct !DISubprogram(name: "genrand64_int64", scope: !3, file: !3, line: 108, type: !12, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 2)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "mti", scope: !2, file: !3, line: 70, type: !6, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 19968, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 312)
!23 = !{i32 7, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!29 = distinct !DISubprogram(name: "init_genrand64", scope: !3, file: !3, line: 73, type: !30, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !14}
!32 = !DILocalVariable(name: "seed", arg: 1, scope: !29, file: !3, line: 73, type: !14)
!33 = !DILocation(line: 73, column: 40, scope: !29)
!34 = !DILocation(line: 75, column: 13, scope: !29)
!35 = !DILocation(line: 75, column: 11, scope: !29)
!36 = !DILocation(line: 76, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !3, line: 76, column: 5)
!38 = !DILocation(line: 76, column: 10, scope: !37)
!39 = !DILocation(line: 76, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !3, line: 76, column: 5)
!41 = !DILocation(line: 76, column: 20, scope: !40)
!42 = !DILocation(line: 76, column: 5, scope: !37)
!43 = !DILocation(line: 77, column: 50, scope: !40)
!44 = !DILocation(line: 77, column: 53, scope: !40)
!45 = !DILocation(line: 77, column: 47, scope: !40)
!46 = !DILocation(line: 77, column: 63, scope: !40)
!47 = !DILocation(line: 77, column: 66, scope: !40)
!48 = !DILocation(line: 77, column: 60, scope: !40)
!49 = !DILocation(line: 77, column: 70, scope: !40)
!50 = !DILocation(line: 77, column: 57, scope: !40)
!51 = !DILocation(line: 77, column: 44, scope: !40)
!52 = !DILocation(line: 77, column: 80, scope: !40)
!53 = !DILocation(line: 77, column: 78, scope: !40)
!54 = !DILocation(line: 77, column: 12, scope: !40)
!55 = !DILocation(line: 77, column: 9, scope: !40)
!56 = !DILocation(line: 77, column: 17, scope: !40)
!57 = !DILocation(line: 76, column: 28, scope: !40)
!58 = !DILocation(line: 76, column: 5, scope: !40)
!59 = distinct !{!59, !42, !60, !61}
!60 = !DILocation(line: 77, column: 83, scope: !37)
!61 = !{!"llvm.loop.mustprogress"}
!62 = !DILocation(line: 78, column: 1, scope: !29)
!63 = distinct !DISubprogram(name: "init_by_array64", scope: !3, file: !3, line: 83, type: !64, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !14}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!67 = !DILocalVariable(name: "init_key", arg: 1, scope: !63, file: !3, line: 83, type: !66)
!68 = !DILocation(line: 83, column: 41, scope: !63)
!69 = !DILocalVariable(name: "key_length", arg: 2, scope: !63, file: !3, line: 84, type: !14)
!70 = !DILocation(line: 84, column: 41, scope: !63)
!71 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 86, type: !14)
!72 = !DILocation(line: 86, column: 24, scope: !63)
!73 = !DILocalVariable(name: "j", scope: !63, file: !3, line: 86, type: !14)
!74 = !DILocation(line: 86, column: 27, scope: !63)
!75 = !DILocalVariable(name: "k", scope: !63, file: !3, line: 86, type: !14)
!76 = !DILocation(line: 86, column: 30, scope: !63)
!77 = !DILocation(line: 87, column: 5, scope: !63)
!78 = !DILocation(line: 88, column: 6, scope: !63)
!79 = !DILocation(line: 88, column: 11, scope: !63)
!80 = !DILocation(line: 89, column: 13, scope: !63)
!81 = !DILocation(line: 89, column: 12, scope: !63)
!82 = !DILocation(line: 89, column: 10, scope: !63)
!83 = !DILocation(line: 89, column: 31, scope: !63)
!84 = !DILocation(line: 89, column: 7, scope: !63)
!85 = !DILocation(line: 90, column: 5, scope: !63)
!86 = !DILocation(line: 90, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 90, column: 5)
!88 = distinct !DILexicalBlock(scope: !63, file: !3, line: 90, column: 5)
!89 = !DILocation(line: 90, column: 5, scope: !88)
!90 = !DILocation(line: 91, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 90, column: 20)
!92 = !DILocation(line: 91, column: 18, scope: !91)
!93 = !DILocation(line: 91, column: 31, scope: !91)
!94 = !DILocation(line: 91, column: 32, scope: !91)
!95 = !DILocation(line: 91, column: 28, scope: !91)
!96 = !DILocation(line: 91, column: 42, scope: !91)
!97 = !DILocation(line: 91, column: 43, scope: !91)
!98 = !DILocation(line: 91, column: 39, scope: !91)
!99 = !DILocation(line: 91, column: 47, scope: !91)
!100 = !DILocation(line: 91, column: 36, scope: !91)
!101 = !DILocation(line: 91, column: 55, scope: !91)
!102 = !DILocation(line: 91, column: 24, scope: !91)
!103 = !DILocation(line: 92, column: 13, scope: !91)
!104 = !DILocation(line: 92, column: 22, scope: !91)
!105 = !DILocation(line: 92, column: 11, scope: !91)
!106 = !DILocation(line: 92, column: 27, scope: !91)
!107 = !DILocation(line: 92, column: 25, scope: !91)
!108 = !DILocation(line: 91, column: 12, scope: !91)
!109 = !DILocation(line: 91, column: 9, scope: !91)
!110 = !DILocation(line: 91, column: 15, scope: !91)
!111 = !DILocation(line: 93, column: 10, scope: !91)
!112 = !DILocation(line: 93, column: 15, scope: !91)
!113 = !DILocation(line: 94, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !91, file: !3, line: 94, column: 13)
!115 = !DILocation(line: 94, column: 14, scope: !114)
!116 = !DILocation(line: 94, column: 13, scope: !91)
!117 = !DILocation(line: 94, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !3, line: 94, column: 20)
!119 = !DILocation(line: 94, column: 28, scope: !118)
!120 = !DILocation(line: 94, column: 41, scope: !118)
!121 = !DILocation(line: 94, column: 45, scope: !118)
!122 = !DILocation(line: 95, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !91, file: !3, line: 95, column: 13)
!124 = !DILocation(line: 95, column: 16, scope: !123)
!125 = !DILocation(line: 95, column: 14, scope: !123)
!126 = !DILocation(line: 95, column: 13, scope: !91)
!127 = !DILocation(line: 95, column: 29, scope: !123)
!128 = !DILocation(line: 95, column: 28, scope: !123)
!129 = !DILocation(line: 96, column: 5, scope: !91)
!130 = !DILocation(line: 90, column: 16, scope: !87)
!131 = !DILocation(line: 90, column: 5, scope: !87)
!132 = distinct !{!132, !89, !133, !61}
!133 = !DILocation(line: 96, column: 5, scope: !88)
!134 = !DILocation(line: 97, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !63, file: !3, line: 97, column: 5)
!136 = !DILocation(line: 97, column: 10, scope: !135)
!137 = !DILocation(line: 97, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 97, column: 5)
!139 = !DILocation(line: 97, column: 5, scope: !135)
!140 = !DILocation(line: 98, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 97, column: 26)
!142 = !DILocation(line: 98, column: 18, scope: !141)
!143 = !DILocation(line: 98, column: 31, scope: !141)
!144 = !DILocation(line: 98, column: 32, scope: !141)
!145 = !DILocation(line: 98, column: 28, scope: !141)
!146 = !DILocation(line: 98, column: 42, scope: !141)
!147 = !DILocation(line: 98, column: 43, scope: !141)
!148 = !DILocation(line: 98, column: 39, scope: !141)
!149 = !DILocation(line: 98, column: 47, scope: !141)
!150 = !DILocation(line: 98, column: 36, scope: !141)
!151 = !DILocation(line: 98, column: 55, scope: !141)
!152 = !DILocation(line: 98, column: 24, scope: !141)
!153 = !DILocation(line: 99, column: 13, scope: !141)
!154 = !DILocation(line: 99, column: 11, scope: !141)
!155 = !DILocation(line: 98, column: 12, scope: !141)
!156 = !DILocation(line: 98, column: 9, scope: !141)
!157 = !DILocation(line: 98, column: 15, scope: !141)
!158 = !DILocation(line: 100, column: 10, scope: !141)
!159 = !DILocation(line: 101, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !141, file: !3, line: 101, column: 13)
!161 = !DILocation(line: 101, column: 14, scope: !160)
!162 = !DILocation(line: 101, column: 13, scope: !141)
!163 = !DILocation(line: 101, column: 30, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !3, line: 101, column: 20)
!165 = !DILocation(line: 101, column: 28, scope: !164)
!166 = !DILocation(line: 101, column: 41, scope: !164)
!167 = !DILocation(line: 101, column: 45, scope: !164)
!168 = !DILocation(line: 102, column: 5, scope: !141)
!169 = !DILocation(line: 97, column: 22, scope: !138)
!170 = !DILocation(line: 97, column: 5, scope: !138)
!171 = distinct !{!171, !139, !172, !61}
!172 = !DILocation(line: 102, column: 5, scope: !135)
!173 = !DILocation(line: 104, column: 11, scope: !63)
!174 = !DILocation(line: 105, column: 1, scope: !63)
!175 = !DILocalVariable(name: "i", scope: !11, file: !3, line: 110, type: !6)
!176 = !DILocation(line: 110, column: 9, scope: !11)
!177 = !DILocalVariable(name: "x", scope: !11, file: !3, line: 111, type: !14)
!178 = !DILocation(line: 111, column: 24, scope: !11)
!179 = !DILocation(line: 114, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !11, file: !3, line: 114, column: 9)
!181 = !DILocation(line: 114, column: 13, scope: !180)
!182 = !DILocation(line: 114, column: 9, scope: !11)
!183 = !DILocation(line: 118, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 118, column: 13)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 114, column: 20)
!186 = !DILocation(line: 118, column: 17, scope: !184)
!187 = !DILocation(line: 118, column: 13, scope: !185)
!188 = !DILocation(line: 119, column: 13, scope: !184)
!189 = !DILocation(line: 121, column: 15, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 121, column: 9)
!191 = !DILocation(line: 121, column: 14, scope: !190)
!192 = !DILocation(line: 121, column: 18, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 121, column: 9)
!194 = !DILocation(line: 121, column: 19, scope: !193)
!195 = !DILocation(line: 121, column: 9, scope: !190)
!196 = !DILocation(line: 122, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 121, column: 31)
!198 = !DILocation(line: 122, column: 18, scope: !197)
!199 = !DILocation(line: 122, column: 23, scope: !197)
!200 = !DILocation(line: 122, column: 32, scope: !197)
!201 = !DILocation(line: 122, column: 33, scope: !197)
!202 = !DILocation(line: 122, column: 29, scope: !197)
!203 = !DILocation(line: 122, column: 36, scope: !197)
!204 = !DILocation(line: 122, column: 27, scope: !197)
!205 = !DILocation(line: 122, column: 15, scope: !197)
!206 = !DILocation(line: 123, column: 24, scope: !197)
!207 = !DILocation(line: 123, column: 25, scope: !197)
!208 = !DILocation(line: 123, column: 21, scope: !197)
!209 = !DILocation(line: 123, column: 33, scope: !197)
!210 = !DILocation(line: 123, column: 34, scope: !197)
!211 = !DILocation(line: 123, column: 30, scope: !197)
!212 = !DILocation(line: 123, column: 53, scope: !197)
!213 = !DILocation(line: 123, column: 54, scope: !197)
!214 = !DILocation(line: 123, column: 47, scope: !197)
!215 = !DILocation(line: 123, column: 41, scope: !197)
!216 = !DILocation(line: 123, column: 39, scope: !197)
!217 = !DILocation(line: 123, column: 16, scope: !197)
!218 = !DILocation(line: 123, column: 13, scope: !197)
!219 = !DILocation(line: 123, column: 19, scope: !197)
!220 = !DILocation(line: 124, column: 9, scope: !197)
!221 = !DILocation(line: 121, column: 27, scope: !193)
!222 = !DILocation(line: 121, column: 9, scope: !193)
!223 = distinct !{!223, !195, !224, !61}
!224 = !DILocation(line: 124, column: 9, scope: !190)
!225 = !DILocation(line: 125, column: 9, scope: !185)
!226 = !DILocation(line: 125, column: 15, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 125, column: 9)
!228 = distinct !DILexicalBlock(scope: !185, file: !3, line: 125, column: 9)
!229 = !DILocation(line: 125, column: 16, scope: !227)
!230 = !DILocation(line: 125, column: 9, scope: !228)
!231 = !DILocation(line: 126, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 125, column: 27)
!233 = !DILocation(line: 126, column: 18, scope: !232)
!234 = !DILocation(line: 126, column: 23, scope: !232)
!235 = !DILocation(line: 126, column: 32, scope: !232)
!236 = !DILocation(line: 126, column: 33, scope: !232)
!237 = !DILocation(line: 126, column: 29, scope: !232)
!238 = !DILocation(line: 126, column: 36, scope: !232)
!239 = !DILocation(line: 126, column: 27, scope: !232)
!240 = !DILocation(line: 126, column: 15, scope: !232)
!241 = !DILocation(line: 127, column: 24, scope: !232)
!242 = !DILocation(line: 127, column: 25, scope: !232)
!243 = !DILocation(line: 127, column: 21, scope: !232)
!244 = !DILocation(line: 127, column: 38, scope: !232)
!245 = !DILocation(line: 127, column: 39, scope: !232)
!246 = !DILocation(line: 127, column: 35, scope: !232)
!247 = !DILocation(line: 127, column: 58, scope: !232)
!248 = !DILocation(line: 127, column: 59, scope: !232)
!249 = !DILocation(line: 127, column: 52, scope: !232)
!250 = !DILocation(line: 127, column: 46, scope: !232)
!251 = !DILocation(line: 127, column: 44, scope: !232)
!252 = !DILocation(line: 127, column: 16, scope: !232)
!253 = !DILocation(line: 127, column: 13, scope: !232)
!254 = !DILocation(line: 127, column: 19, scope: !232)
!255 = !DILocation(line: 128, column: 9, scope: !232)
!256 = !DILocation(line: 125, column: 23, scope: !227)
!257 = !DILocation(line: 125, column: 9, scope: !227)
!258 = distinct !{!258, !230, !259, !61}
!259 = !DILocation(line: 128, column: 9, scope: !228)
!260 = !DILocation(line: 129, column: 14, scope: !185)
!261 = !DILocation(line: 129, column: 22, scope: !185)
!262 = !DILocation(line: 129, column: 28, scope: !185)
!263 = !DILocation(line: 129, column: 33, scope: !185)
!264 = !DILocation(line: 129, column: 26, scope: !185)
!265 = !DILocation(line: 129, column: 11, scope: !185)
!266 = !DILocation(line: 130, column: 20, scope: !185)
!267 = !DILocation(line: 130, column: 32, scope: !185)
!268 = !DILocation(line: 130, column: 33, scope: !185)
!269 = !DILocation(line: 130, column: 29, scope: !185)
!270 = !DILocation(line: 130, column: 52, scope: !185)
!271 = !DILocation(line: 130, column: 53, scope: !185)
!272 = !DILocation(line: 130, column: 46, scope: !185)
!273 = !DILocation(line: 130, column: 40, scope: !185)
!274 = !DILocation(line: 130, column: 38, scope: !185)
!275 = !DILocation(line: 130, column: 18, scope: !185)
!276 = !DILocation(line: 132, column: 13, scope: !185)
!277 = !DILocation(line: 133, column: 5, scope: !185)
!278 = !DILocation(line: 135, column: 15, scope: !11)
!279 = !DILocation(line: 135, column: 9, scope: !11)
!280 = !DILocation(line: 135, column: 7, scope: !11)
!281 = !DILocation(line: 137, column: 11, scope: !11)
!282 = !DILocation(line: 137, column: 13, scope: !11)
!283 = !DILocation(line: 137, column: 20, scope: !11)
!284 = !DILocation(line: 137, column: 7, scope: !11)
!285 = !DILocation(line: 138, column: 11, scope: !11)
!286 = !DILocation(line: 138, column: 13, scope: !11)
!287 = !DILocation(line: 138, column: 20, scope: !11)
!288 = !DILocation(line: 138, column: 7, scope: !11)
!289 = !DILocation(line: 139, column: 11, scope: !11)
!290 = !DILocation(line: 139, column: 13, scope: !11)
!291 = !DILocation(line: 139, column: 20, scope: !11)
!292 = !DILocation(line: 139, column: 7, scope: !11)
!293 = !DILocation(line: 140, column: 11, scope: !11)
!294 = !DILocation(line: 140, column: 13, scope: !11)
!295 = !DILocation(line: 140, column: 7, scope: !11)
!296 = !DILocation(line: 142, column: 12, scope: !11)
!297 = !DILocation(line: 142, column: 5, scope: !11)
!298 = distinct !DISubprogram(name: "genrand64_int63", scope: !3, file: !3, line: 146, type: !299, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{!7}
!301 = !DILocation(line: 148, column: 24, scope: !298)
!302 = !DILocation(line: 148, column: 42, scope: !298)
!303 = !DILocation(line: 148, column: 5, scope: !298)
!304 = distinct !DISubprogram(name: "genrand64_real1", scope: !3, file: !3, line: 152, type: !305, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!305 = !DISubroutineType(types: !306)
!306 = !{!307}
!307 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!308 = !DILocation(line: 154, column: 13, scope: !304)
!309 = !DILocation(line: 154, column: 31, scope: !304)
!310 = !DILocation(line: 154, column: 12, scope: !304)
!311 = !DILocation(line: 154, column: 38, scope: !304)
!312 = !DILocation(line: 154, column: 5, scope: !304)
!313 = distinct !DISubprogram(name: "genrand64_real2", scope: !3, file: !3, line: 158, type: !305, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!314 = !DILocation(line: 160, column: 13, scope: !313)
!315 = !DILocation(line: 160, column: 31, scope: !313)
!316 = !DILocation(line: 160, column: 12, scope: !313)
!317 = !DILocation(line: 160, column: 38, scope: !313)
!318 = !DILocation(line: 160, column: 5, scope: !313)
!319 = distinct !DISubprogram(name: "genrand64_real3", scope: !3, file: !3, line: 164, type: !305, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!320 = !DILocation(line: 166, column: 14, scope: !319)
!321 = !DILocation(line: 166, column: 32, scope: !319)
!322 = !DILocation(line: 166, column: 13, scope: !319)
!323 = !DILocation(line: 166, column: 39, scope: !319)
!324 = !DILocation(line: 166, column: 46, scope: !319)
!325 = !DILocation(line: 166, column: 5, scope: !319)
