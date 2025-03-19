; ModuleID = 'sparkline.c'
source_filename = "sparkline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sequence = type { i32, i32, %struct.sample*, double, double }
%struct.sample = type { double, i8* }

@charset_len = internal global i32 3, align 4, !dbg !0
@charset_fill = internal global [4 x i8] c"_o#\00", align 1, !dbg !9
@charset = internal global [4 x i8] c"_-`\00", align 1, !dbg !15
@label_margin_top = internal global i32 1, align 4, !dbg !17
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sequence* @createSparklineSequence() #0 !dbg !25 {
entry:
  %seq = alloca %struct.sequence*, align 8
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq, metadata !44, metadata !DIExpression()), !dbg !45
  %call = call i8* @zmalloc(i64 32), !dbg !46
  %0 = bitcast i8* %call to %struct.sequence*, !dbg !46
  store %struct.sequence* %0, %struct.sequence** %seq, align 8, !dbg !45
  %1 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !47
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 0, !dbg !48
  store i32 0, i32* %length, align 8, !dbg !49
  %2 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !50
  %samples = getelementptr inbounds %struct.sequence, %struct.sequence* %2, i32 0, i32 2, !dbg !51
  store %struct.sample* null, %struct.sample** %samples, align 8, !dbg !52
  %3 = load %struct.sequence*, %struct.sequence** %seq, align 8, !dbg !53
  ret %struct.sequence* %3, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @zmalloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sparklineSequenceAddSample(%struct.sequence* %seq, double %value, i8* %label) #0 !dbg !55 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %value.addr = alloca double, align 8
  %label.addr = alloca i8*, align 8
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq.addr, metadata !58, metadata !DIExpression()), !dbg !59
  store double %value, double* %value.addr, align 8
  call void @llvm.dbg.declare(metadata double* %value.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %label, i8** %label.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %label.addr, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** %label.addr, align 8, !dbg !64
  %cmp = icmp eq i8* %0, null, !dbg !65
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !66

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %label.addr, align 8, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !67
  %2 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv = sext i8 %2 to i32, !dbg !67
  %cmp1 = icmp eq i32 %conv, 0, !dbg !68
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !69

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end, !dbg !69

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i8*, i8** %label.addr, align 8, !dbg !70
  %call = call i8* @zstrdup(i8* %3), !dbg !71
  br label %cond.end, !dbg !69

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ], !dbg !69
  store i8* %cond, i8** %label.addr, align 8, !dbg !72
  %4 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !73
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %4, i32 0, i32 0, !dbg !75
  %5 = load i32, i32* %length, align 8, !dbg !75
  %cmp3 = icmp eq i32 %5, 0, !dbg !76
  br i1 %cmp3, label %if.then, label %if.else, !dbg !77

if.then:                                          ; preds = %cond.end
  %6 = load double, double* %value.addr, align 8, !dbg !78
  %7 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !80
  %max = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 4, !dbg !81
  store double %6, double* %max, align 8, !dbg !82
  %8 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !83
  %min = getelementptr inbounds %struct.sequence, %struct.sequence* %8, i32 0, i32 3, !dbg !84
  store double %6, double* %min, align 8, !dbg !85
  br label %if.end17, !dbg !86

if.else:                                          ; preds = %cond.end
  %9 = load double, double* %value.addr, align 8, !dbg !87
  %10 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !90
  %min5 = getelementptr inbounds %struct.sequence, %struct.sequence* %10, i32 0, i32 3, !dbg !91
  %11 = load double, double* %min5, align 8, !dbg !91
  %cmp6 = fcmp olt double %9, %11, !dbg !92
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !93

if.then8:                                         ; preds = %if.else
  %12 = load double, double* %value.addr, align 8, !dbg !94
  %13 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !95
  %min9 = getelementptr inbounds %struct.sequence, %struct.sequence* %13, i32 0, i32 3, !dbg !96
  store double %12, double* %min9, align 8, !dbg !97
  br label %if.end16, !dbg !95

if.else10:                                        ; preds = %if.else
  %14 = load double, double* %value.addr, align 8, !dbg !98
  %15 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !100
  %max11 = getelementptr inbounds %struct.sequence, %struct.sequence* %15, i32 0, i32 4, !dbg !101
  %16 = load double, double* %max11, align 8, !dbg !101
  %cmp12 = fcmp ogt double %14, %16, !dbg !102
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !103

if.then14:                                        ; preds = %if.else10
  %17 = load double, double* %value.addr, align 8, !dbg !104
  %18 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !105
  %max15 = getelementptr inbounds %struct.sequence, %struct.sequence* %18, i32 0, i32 4, !dbg !106
  store double %17, double* %max15, align 8, !dbg !107
  br label %if.end, !dbg !105

if.end:                                           ; preds = %if.then14, %if.else10
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %19 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !108
  %samples = getelementptr inbounds %struct.sequence, %struct.sequence* %19, i32 0, i32 2, !dbg !109
  %20 = load %struct.sample*, %struct.sample** %samples, align 8, !dbg !109
  %21 = bitcast %struct.sample* %20 to i8*, !dbg !108
  %22 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !110
  %length18 = getelementptr inbounds %struct.sequence, %struct.sequence* %22, i32 0, i32 0, !dbg !111
  %23 = load i32, i32* %length18, align 8, !dbg !111
  %add = add nsw i32 %23, 1, !dbg !112
  %conv19 = sext i32 %add to i64, !dbg !113
  %mul = mul i64 16, %conv19, !dbg !114
  %call20 = call i8* @zrealloc(i8* %21, i64 %mul), !dbg !115
  %24 = bitcast i8* %call20 to %struct.sample*, !dbg !115
  %25 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !116
  %samples21 = getelementptr inbounds %struct.sequence, %struct.sequence* %25, i32 0, i32 2, !dbg !117
  store %struct.sample* %24, %struct.sample** %samples21, align 8, !dbg !118
  %26 = load double, double* %value.addr, align 8, !dbg !119
  %27 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !120
  %samples22 = getelementptr inbounds %struct.sequence, %struct.sequence* %27, i32 0, i32 2, !dbg !121
  %28 = load %struct.sample*, %struct.sample** %samples22, align 8, !dbg !121
  %29 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !122
  %length23 = getelementptr inbounds %struct.sequence, %struct.sequence* %29, i32 0, i32 0, !dbg !123
  %30 = load i32, i32* %length23, align 8, !dbg !123
  %idxprom = sext i32 %30 to i64, !dbg !120
  %arrayidx24 = getelementptr inbounds %struct.sample, %struct.sample* %28, i64 %idxprom, !dbg !120
  %value25 = getelementptr inbounds %struct.sample, %struct.sample* %arrayidx24, i32 0, i32 0, !dbg !124
  store double %26, double* %value25, align 8, !dbg !125
  %31 = load i8*, i8** %label.addr, align 8, !dbg !126
  %32 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !127
  %samples26 = getelementptr inbounds %struct.sequence, %struct.sequence* %32, i32 0, i32 2, !dbg !128
  %33 = load %struct.sample*, %struct.sample** %samples26, align 8, !dbg !128
  %34 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !129
  %length27 = getelementptr inbounds %struct.sequence, %struct.sequence* %34, i32 0, i32 0, !dbg !130
  %35 = load i32, i32* %length27, align 8, !dbg !130
  %idxprom28 = sext i32 %35 to i64, !dbg !127
  %arrayidx29 = getelementptr inbounds %struct.sample, %struct.sample* %33, i64 %idxprom28, !dbg !127
  %label30 = getelementptr inbounds %struct.sample, %struct.sample* %arrayidx29, i32 0, i32 1, !dbg !131
  store i8* %31, i8** %label30, align 8, !dbg !132
  %36 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !133
  %length31 = getelementptr inbounds %struct.sequence, %struct.sequence* %36, i32 0, i32 0, !dbg !134
  %37 = load i32, i32* %length31, align 8, !dbg !135
  %inc = add nsw i32 %37, 1, !dbg !135
  store i32 %inc, i32* %length31, align 8, !dbg !135
  %38 = load i8*, i8** %label.addr, align 8, !dbg !136
  %tobool = icmp ne i8* %38, null, !dbg !136
  br i1 %tobool, label %if.then32, label %if.end34, !dbg !138

if.then32:                                        ; preds = %if.end17
  %39 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !139
  %labels = getelementptr inbounds %struct.sequence, %struct.sequence* %39, i32 0, i32 1, !dbg !140
  %40 = load i32, i32* %labels, align 4, !dbg !141
  %inc33 = add nsw i32 %40, 1, !dbg !141
  store i32 %inc33, i32* %labels, align 4, !dbg !141
  br label %if.end34, !dbg !139

if.end34:                                         ; preds = %if.then32, %if.end17
  ret void, !dbg !142
}

declare dso_local i8* @zstrdup(i8*) #2

declare dso_local i8* @zrealloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeSparklineSequence(%struct.sequence* %seq) #0 !dbg !143 {
entry:
  %seq.addr = alloca %struct.sequence*, align 8
  %j = alloca i32, align 4
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq.addr, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %j, metadata !148, metadata !DIExpression()), !dbg !149
  store i32 0, i32* %j, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !153
  %1 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !155
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 0, !dbg !156
  %2 = load i32, i32* %length, align 8, !dbg !156
  %cmp = icmp slt i32 %0, %2, !dbg !157
  br i1 %cmp, label %for.body, label %for.end, !dbg !158

for.body:                                         ; preds = %for.cond
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !159
  %samples = getelementptr inbounds %struct.sequence, %struct.sequence* %3, i32 0, i32 2, !dbg !160
  %4 = load %struct.sample*, %struct.sample** %samples, align 8, !dbg !160
  %5 = load i32, i32* %j, align 4, !dbg !161
  %idxprom = sext i32 %5 to i64, !dbg !159
  %arrayidx = getelementptr inbounds %struct.sample, %struct.sample* %4, i64 %idxprom, !dbg !159
  %label = getelementptr inbounds %struct.sample, %struct.sample* %arrayidx, i32 0, i32 1, !dbg !162
  %6 = load i8*, i8** %label, align 8, !dbg !162
  call void @zfree(i8* %6), !dbg !163
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4, !dbg !164
  %inc = add nsw i32 %7, 1, !dbg !164
  store i32 %inc, i32* %j, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  %8 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !169
  %samples1 = getelementptr inbounds %struct.sequence, %struct.sequence* %8, i32 0, i32 2, !dbg !170
  %9 = load %struct.sample*, %struct.sample** %samples1, align 8, !dbg !170
  %10 = bitcast %struct.sample* %9 to i8*, !dbg !169
  call void @zfree(i8* %10), !dbg !171
  %11 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !172
  %12 = bitcast %struct.sequence* %11 to i8*, !dbg !172
  call void @zfree(i8* %12), !dbg !173
  ret void, !dbg !174
}

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sparklineRenderRange(i8* %output, %struct.sequence* %seq, i32 %rows, i32 %offset, i32 %len, i32 %flags) #0 !dbg !175 {
entry:
  %output.addr = alloca i8*, align 8
  %seq.addr = alloca %struct.sequence*, align 8
  %rows.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %relmax = alloca double, align 8
  %steps = alloca i32, align 4
  %row = alloca i32, align 4
  %chars = alloca i8*, align 8
  %loop = alloca i32, align 4
  %opt_fill = alloca i32, align 4
  %opt_log = alloca i32, align 4
  %s = alloca %struct.sample*, align 8
  %relval = alloca double, align 8
  %step = alloca i32, align 4
  %charidx = alloca i32, align 4
  %label_len = alloca i32, align 4
  %label_char = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !180, metadata !DIExpression()), !dbg !181
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq.addr, metadata !182, metadata !DIExpression()), !dbg !183
  store i32 %rows, i32* %rows.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rows.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !188, metadata !DIExpression()), !dbg !189
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i32* %j, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata double* %relmax, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !196
  %max = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i32 0, i32 4, !dbg !197
  %1 = load double, double* %max, align 8, !dbg !197
  %2 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !198
  %min = getelementptr inbounds %struct.sequence, %struct.sequence* %2, i32 0, i32 3, !dbg !199
  %3 = load double, double* %min, align 8, !dbg !199
  %sub = fsub double %1, %3, !dbg !200
  store double %sub, double* %relmax, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i32* %steps, metadata !201, metadata !DIExpression()), !dbg !202
  %4 = load i32, i32* @charset_len, align 4, !dbg !203
  %5 = load i32, i32* %rows.addr, align 4, !dbg !204
  %mul = mul nsw i32 %4, %5, !dbg !205
  store i32 %mul, i32* %steps, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata i32* %row, metadata !206, metadata !DIExpression()), !dbg !207
  store i32 0, i32* %row, align 4, !dbg !207
  call void @llvm.dbg.declare(metadata i8** %chars, metadata !208, metadata !DIExpression()), !dbg !209
  %6 = load i32, i32* %len.addr, align 4, !dbg !210
  %conv = sext i32 %6 to i64, !dbg !210
  %call = call i8* @zmalloc(i64 %conv), !dbg !211
  store i8* %call, i8** %chars, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata i32* %loop, metadata !212, metadata !DIExpression()), !dbg !213
  store i32 1, i32* %loop, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %opt_fill, metadata !214, metadata !DIExpression()), !dbg !215
  %7 = load i32, i32* %flags.addr, align 4, !dbg !216
  %and = and i32 %7, 1, !dbg !217
  store i32 %and, i32* %opt_fill, align 4, !dbg !215
  call void @llvm.dbg.declare(metadata i32* %opt_log, metadata !218, metadata !DIExpression()), !dbg !219
  %8 = load i32, i32* %flags.addr, align 4, !dbg !220
  %and1 = and i32 %8, 2, !dbg !221
  store i32 %and1, i32* %opt_log, align 4, !dbg !219
  %9 = load i32, i32* %opt_log, align 4, !dbg !222
  %tobool = icmp ne i32 %9, 0, !dbg !222
  br i1 %tobool, label %if.then, label %if.else, !dbg !224

if.then:                                          ; preds = %entry
  %10 = load double, double* %relmax, align 8, !dbg !225
  %add = fadd double %10, 1.000000e+00, !dbg !227
  %call2 = call double @log(double %add) #6, !dbg !228
  store double %call2, double* %relmax, align 8, !dbg !229
  br label %if.end5, !dbg !230

if.else:                                          ; preds = %entry
  %11 = load double, double* %relmax, align 8, !dbg !231
  %cmp = fcmp oeq double %11, 0.000000e+00, !dbg !233
  br i1 %cmp, label %if.then4, label %if.end, !dbg !234

if.then4:                                         ; preds = %if.else
  store double 1.000000e+00, double* %relmax, align 8, !dbg !235
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %while.cond, !dbg !238

while.cond:                                       ; preds = %if.end96, %if.end5
  %12 = load i32, i32* %loop, align 4, !dbg !239
  %tobool6 = icmp ne i32 %12, 0, !dbg !238
  br i1 %tobool6, label %while.body, label %while.end, !dbg !238

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %loop, align 4, !dbg !240
  %13 = load i8*, i8** %chars, align 8, !dbg !242
  %14 = load i32, i32* %len.addr, align 4, !dbg !243
  %conv7 = sext i32 %14 to i64, !dbg !243
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 32, i64 %conv7, i1 false), !dbg !244
  store i32 0, i32* %j, align 4, !dbg !245
  br label %for.cond, !dbg !247

for.cond:                                         ; preds = %for.inc, %while.body
  %15 = load i32, i32* %j, align 4, !dbg !248
  %16 = load i32, i32* %len.addr, align 4, !dbg !250
  %cmp8 = icmp slt i32 %15, %16, !dbg !251
  br i1 %cmp8, label %for.body, label %for.end, !dbg !252

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.sample** %s, metadata !253, metadata !DIExpression()), !dbg !255
  %17 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !256
  %samples = getelementptr inbounds %struct.sequence, %struct.sequence* %17, i32 0, i32 2, !dbg !257
  %18 = load %struct.sample*, %struct.sample** %samples, align 8, !dbg !257
  %19 = load i32, i32* %j, align 4, !dbg !258
  %20 = load i32, i32* %offset.addr, align 4, !dbg !259
  %add10 = add nsw i32 %19, %20, !dbg !260
  %idxprom = sext i32 %add10 to i64, !dbg !256
  %arrayidx = getelementptr inbounds %struct.sample, %struct.sample* %18, i64 %idxprom, !dbg !256
  store %struct.sample* %arrayidx, %struct.sample** %s, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata double* %relval, metadata !261, metadata !DIExpression()), !dbg !262
  %21 = load %struct.sample*, %struct.sample** %s, align 8, !dbg !263
  %value = getelementptr inbounds %struct.sample, %struct.sample* %21, i32 0, i32 0, !dbg !264
  %22 = load double, double* %value, align 8, !dbg !264
  %23 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !265
  %min11 = getelementptr inbounds %struct.sequence, %struct.sequence* %23, i32 0, i32 3, !dbg !266
  %24 = load double, double* %min11, align 8, !dbg !266
  %sub12 = fsub double %22, %24, !dbg !267
  store double %sub12, double* %relval, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %step, metadata !268, metadata !DIExpression()), !dbg !269
  %25 = load i32, i32* %opt_log, align 4, !dbg !270
  %tobool13 = icmp ne i32 %25, 0, !dbg !270
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !272

if.then14:                                        ; preds = %for.body
  %26 = load double, double* %relval, align 8, !dbg !273
  %add15 = fadd double %26, 1.000000e+00, !dbg !274
  %call16 = call double @log(double %add15) #6, !dbg !275
  store double %call16, double* %relval, align 8, !dbg !276
  br label %if.end17, !dbg !277

if.end17:                                         ; preds = %if.then14, %for.body
  %27 = load double, double* %relval, align 8, !dbg !278
  %28 = load i32, i32* %steps, align 4, !dbg !279
  %conv18 = sitofp i32 %28 to double, !dbg !279
  %mul19 = fmul double %27, %conv18, !dbg !280
  %conv20 = fptosi double %mul19 to i32, !dbg !281
  %conv21 = sitofp i32 %conv20 to double, !dbg !281
  %29 = load double, double* %relmax, align 8, !dbg !282
  %div = fdiv double %conv21, %29, !dbg !283
  %conv22 = fptosi double %div to i32, !dbg !281
  store i32 %conv22, i32* %step, align 4, !dbg !284
  %30 = load i32, i32* %step, align 4, !dbg !285
  %cmp23 = icmp slt i32 %30, 0, !dbg !287
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !288

if.then25:                                        ; preds = %if.end17
  store i32 0, i32* %step, align 4, !dbg !289
  br label %if.end26, !dbg !290

if.end26:                                         ; preds = %if.then25, %if.end17
  %31 = load i32, i32* %step, align 4, !dbg !291
  %32 = load i32, i32* %steps, align 4, !dbg !293
  %cmp27 = icmp sge i32 %31, %32, !dbg !294
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !295

if.then29:                                        ; preds = %if.end26
  %33 = load i32, i32* %steps, align 4, !dbg !296
  %sub30 = sub nsw i32 %33, 1, !dbg !297
  store i32 %sub30, i32* %step, align 4, !dbg !298
  br label %if.end31, !dbg !299

if.end31:                                         ; preds = %if.then29, %if.end26
  %34 = load i32, i32* %row, align 4, !dbg !300
  %35 = load i32, i32* %rows.addr, align 4, !dbg !302
  %cmp32 = icmp slt i32 %34, %35, !dbg !303
  br i1 %cmp32, label %if.then34, label %if.else64, !dbg !304

if.then34:                                        ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i32* %charidx, metadata !305, metadata !DIExpression()), !dbg !307
  %36 = load i32, i32* %step, align 4, !dbg !308
  %37 = load i32, i32* %rows.addr, align 4, !dbg !309
  %38 = load i32, i32* %row, align 4, !dbg !310
  %sub35 = sub nsw i32 %37, %38, !dbg !311
  %sub36 = sub nsw i32 %sub35, 1, !dbg !312
  %39 = load i32, i32* @charset_len, align 4, !dbg !313
  %mul37 = mul nsw i32 %sub36, %39, !dbg !314
  %sub38 = sub nsw i32 %36, %mul37, !dbg !315
  store i32 %sub38, i32* %charidx, align 4, !dbg !307
  store i32 1, i32* %loop, align 4, !dbg !316
  %40 = load i32, i32* %charidx, align 4, !dbg !317
  %cmp39 = icmp sge i32 %40, 0, !dbg !319
  br i1 %cmp39, label %land.lhs.true, label %if.else54, !dbg !320

land.lhs.true:                                    ; preds = %if.then34
  %41 = load i32, i32* %charidx, align 4, !dbg !321
  %42 = load i32, i32* @charset_len, align 4, !dbg !322
  %cmp41 = icmp slt i32 %41, %42, !dbg !323
  br i1 %cmp41, label %if.then43, label %if.else54, !dbg !324

if.then43:                                        ; preds = %land.lhs.true
  %43 = load i32, i32* %opt_fill, align 4, !dbg !325
  %tobool44 = icmp ne i32 %43, 0, !dbg !325
  br i1 %tobool44, label %cond.true, label %cond.false, !dbg !325

cond.true:                                        ; preds = %if.then43
  %44 = load i32, i32* %charidx, align 4, !dbg !327
  %idxprom45 = sext i32 %44 to i64, !dbg !328
  %arrayidx46 = getelementptr inbounds [4 x i8], [4 x i8]* @charset_fill, i64 0, i64 %idxprom45, !dbg !328
  %45 = load i8, i8* %arrayidx46, align 1, !dbg !328
  %conv47 = sext i8 %45 to i32, !dbg !328
  br label %cond.end, !dbg !325

cond.false:                                       ; preds = %if.then43
  %46 = load i32, i32* %charidx, align 4, !dbg !329
  %idxprom48 = sext i32 %46 to i64, !dbg !330
  %arrayidx49 = getelementptr inbounds [4 x i8], [4 x i8]* @charset, i64 0, i64 %idxprom48, !dbg !330
  %47 = load i8, i8* %arrayidx49, align 1, !dbg !330
  %conv50 = sext i8 %47 to i32, !dbg !330
  br label %cond.end, !dbg !325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv47, %cond.true ], [ %conv50, %cond.false ], !dbg !325
  %conv51 = trunc i32 %cond to i8, !dbg !325
  %48 = load i8*, i8** %chars, align 8, !dbg !331
  %49 = load i32, i32* %j, align 4, !dbg !332
  %idxprom52 = sext i32 %49 to i64, !dbg !331
  %arrayidx53 = getelementptr inbounds i8, i8* %48, i64 %idxprom52, !dbg !331
  store i8 %conv51, i8* %arrayidx53, align 1, !dbg !333
  br label %if.end63, !dbg !334

if.else54:                                        ; preds = %land.lhs.true, %if.then34
  %50 = load i32, i32* %opt_fill, align 4, !dbg !335
  %tobool55 = icmp ne i32 %50, 0, !dbg !335
  br i1 %tobool55, label %land.lhs.true56, label %if.end62, !dbg !337

land.lhs.true56:                                  ; preds = %if.else54
  %51 = load i32, i32* %charidx, align 4, !dbg !338
  %52 = load i32, i32* @charset_len, align 4, !dbg !339
  %cmp57 = icmp sge i32 %51, %52, !dbg !340
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !341

if.then59:                                        ; preds = %land.lhs.true56
  %53 = load i8*, i8** %chars, align 8, !dbg !342
  %54 = load i32, i32* %j, align 4, !dbg !344
  %idxprom60 = sext i32 %54 to i64, !dbg !342
  %arrayidx61 = getelementptr inbounds i8, i8* %53, i64 %idxprom60, !dbg !342
  store i8 124, i8* %arrayidx61, align 1, !dbg !345
  br label %if.end62, !dbg !346

if.end62:                                         ; preds = %if.then59, %land.lhs.true56, %if.else54
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %cond.end
  br label %if.end89, !dbg !347

if.else64:                                        ; preds = %if.end31
  %55 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !348
  %labels = getelementptr inbounds %struct.sequence, %struct.sequence* %55, i32 0, i32 1, !dbg !351
  %56 = load i32, i32* %labels, align 4, !dbg !351
  %tobool65 = icmp ne i32 %56, 0, !dbg !348
  br i1 %tobool65, label %land.lhs.true66, label %if.end71, !dbg !352

land.lhs.true66:                                  ; preds = %if.else64
  %57 = load i32, i32* %row, align 4, !dbg !353
  %58 = load i32, i32* %rows.addr, align 4, !dbg !354
  %sub67 = sub nsw i32 %57, %58, !dbg !355
  %59 = load i32, i32* @label_margin_top, align 4, !dbg !356
  %cmp68 = icmp slt i32 %sub67, %59, !dbg !357
  br i1 %cmp68, label %if.then70, label %if.end71, !dbg !358

if.then70:                                        ; preds = %land.lhs.true66
  store i32 1, i32* %loop, align 4, !dbg !359
  br label %for.end, !dbg !361

if.end71:                                         ; preds = %land.lhs.true66, %if.else64
  %60 = load %struct.sample*, %struct.sample** %s, align 8, !dbg !362
  %label = getelementptr inbounds %struct.sample, %struct.sample* %60, i32 0, i32 1, !dbg !364
  %61 = load i8*, i8** %label, align 8, !dbg !364
  %tobool72 = icmp ne i8* %61, null, !dbg !362
  br i1 %tobool72, label %if.then73, label %if.end88, !dbg !365

if.then73:                                        ; preds = %if.end71
  call void @llvm.dbg.declare(metadata i32* %label_len, metadata !366, metadata !DIExpression()), !dbg !368
  %62 = load %struct.sample*, %struct.sample** %s, align 8, !dbg !369
  %label74 = getelementptr inbounds %struct.sample, %struct.sample* %62, i32 0, i32 1, !dbg !370
  %63 = load i8*, i8** %label74, align 8, !dbg !370
  %call75 = call i64 @strlen(i8* %63) #7, !dbg !371
  %conv76 = trunc i64 %call75 to i32, !dbg !371
  store i32 %conv76, i32* %label_len, align 4, !dbg !368
  call void @llvm.dbg.declare(metadata i32* %label_char, metadata !372, metadata !DIExpression()), !dbg !373
  %64 = load i32, i32* %row, align 4, !dbg !374
  %65 = load i32, i32* %rows.addr, align 4, !dbg !375
  %sub77 = sub nsw i32 %64, %65, !dbg !376
  %66 = load i32, i32* @label_margin_top, align 4, !dbg !377
  %sub78 = sub nsw i32 %sub77, %66, !dbg !378
  store i32 %sub78, i32* %label_char, align 4, !dbg !373
  %67 = load i32, i32* %label_len, align 4, !dbg !379
  %68 = load i32, i32* %label_char, align 4, !dbg !381
  %cmp79 = icmp sgt i32 %67, %68, !dbg !382
  br i1 %cmp79, label %if.then81, label %if.end87, !dbg !383

if.then81:                                        ; preds = %if.then73
  store i32 1, i32* %loop, align 4, !dbg !384
  %69 = load %struct.sample*, %struct.sample** %s, align 8, !dbg !386
  %label82 = getelementptr inbounds %struct.sample, %struct.sample* %69, i32 0, i32 1, !dbg !387
  %70 = load i8*, i8** %label82, align 8, !dbg !387
  %71 = load i32, i32* %label_char, align 4, !dbg !388
  %idxprom83 = sext i32 %71 to i64, !dbg !386
  %arrayidx84 = getelementptr inbounds i8, i8* %70, i64 %idxprom83, !dbg !386
  %72 = load i8, i8* %arrayidx84, align 1, !dbg !386
  %73 = load i8*, i8** %chars, align 8, !dbg !389
  %74 = load i32, i32* %j, align 4, !dbg !390
  %idxprom85 = sext i32 %74 to i64, !dbg !389
  %arrayidx86 = getelementptr inbounds i8, i8* %73, i64 %idxprom85, !dbg !389
  store i8 %72, i8* %arrayidx86, align 1, !dbg !391
  br label %if.end87, !dbg !392

if.end87:                                         ; preds = %if.then81, %if.then73
  br label %if.end88, !dbg !393

if.end88:                                         ; preds = %if.end87, %if.end71
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end63
  br label %for.inc, !dbg !394

for.inc:                                          ; preds = %if.end89
  %75 = load i32, i32* %j, align 4, !dbg !395
  %inc = add nsw i32 %75, 1, !dbg !395
  store i32 %inc, i32* %j, align 4, !dbg !395
  br label %for.cond, !dbg !396, !llvm.loop !397

for.end:                                          ; preds = %if.then70, %for.cond
  %76 = load i32, i32* %loop, align 4, !dbg !399
  %tobool90 = icmp ne i32 %76, 0, !dbg !399
  br i1 %tobool90, label %if.then91, label %if.end96, !dbg !401

if.then91:                                        ; preds = %for.end
  %77 = load i32, i32* %row, align 4, !dbg !402
  %inc92 = add nsw i32 %77, 1, !dbg !402
  store i32 %inc92, i32* %row, align 4, !dbg !402
  %78 = load i8*, i8** %output.addr, align 8, !dbg !404
  %79 = load i8*, i8** %chars, align 8, !dbg !405
  %80 = load i32, i32* %len.addr, align 4, !dbg !406
  %conv93 = sext i32 %80 to i64, !dbg !406
  %call94 = call i8* @sdscatlen(i8* %78, i8* %79, i64 %conv93), !dbg !407
  store i8* %call94, i8** %output.addr, align 8, !dbg !408
  %81 = load i8*, i8** %output.addr, align 8, !dbg !409
  %call95 = call i8* @sdscatlen(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1), !dbg !410
  store i8* %call95, i8** %output.addr, align 8, !dbg !411
  br label %if.end96, !dbg !412

if.end96:                                         ; preds = %if.then91, %for.end
  br label %while.cond, !dbg !238, !llvm.loop !413

while.end:                                        ; preds = %while.cond
  %82 = load i8*, i8** %chars, align 8, !dbg !415
  call void @zfree(i8* %82), !dbg !416
  %83 = load i8*, i8** %output.addr, align 8, !dbg !417
  ret i8* %83, !dbg !418
}

; Function Attrs: nounwind
declare dso_local double @log(double) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sparklineRender(i8* %output, %struct.sequence* %seq, i32 %columns, i32 %rows, i32 %flags) #0 !dbg !419 {
entry:
  %output.addr = alloca i8*, align 8
  %seq.addr = alloca %struct.sequence*, align 8
  %columns.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %sublen = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !422, metadata !DIExpression()), !dbg !423
  store %struct.sequence* %seq, %struct.sequence** %seq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sequence** %seq.addr, metadata !424, metadata !DIExpression()), !dbg !425
  store i32 %columns, i32* %columns.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %columns.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i32 %rows, i32* %rows.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rows.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %j, metadata !432, metadata !DIExpression()), !dbg !433
  store i32 0, i32* %j, align 4, !dbg !434
  br label %for.cond, !dbg !436

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !437
  %1 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !439
  %length = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i32 0, i32 0, !dbg !440
  %2 = load i32, i32* %length, align 8, !dbg !440
  %cmp = icmp slt i32 %0, %2, !dbg !441
  br i1 %cmp, label %for.body, label %for.end, !dbg !442

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %sublen, metadata !443, metadata !DIExpression()), !dbg !445
  %3 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !446
  %length1 = getelementptr inbounds %struct.sequence, %struct.sequence* %3, i32 0, i32 0, !dbg !447
  %4 = load i32, i32* %length1, align 8, !dbg !447
  %5 = load i32, i32* %j, align 4, !dbg !448
  %sub = sub nsw i32 %4, %5, !dbg !449
  %6 = load i32, i32* %columns.addr, align 4, !dbg !450
  %cmp2 = icmp slt i32 %sub, %6, !dbg !451
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !452

cond.true:                                        ; preds = %for.body
  %7 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !453
  %length3 = getelementptr inbounds %struct.sequence, %struct.sequence* %7, i32 0, i32 0, !dbg !454
  %8 = load i32, i32* %length3, align 8, !dbg !454
  %9 = load i32, i32* %j, align 4, !dbg !455
  %sub4 = sub nsw i32 %8, %9, !dbg !456
  br label %cond.end, !dbg !452

cond.false:                                       ; preds = %for.body
  %10 = load i32, i32* %columns.addr, align 4, !dbg !457
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub4, %cond.true ], [ %10, %cond.false ], !dbg !452
  store i32 %cond, i32* %sublen, align 4, !dbg !445
  %11 = load i32, i32* %j, align 4, !dbg !458
  %cmp5 = icmp ne i32 %11, 0, !dbg !460
  br i1 %cmp5, label %if.then, label %if.end, !dbg !461

if.then:                                          ; preds = %cond.end
  %12 = load i8*, i8** %output.addr, align 8, !dbg !462
  %call = call i8* @sdscatlen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1), !dbg !463
  store i8* %call, i8** %output.addr, align 8, !dbg !464
  br label %if.end, !dbg !465

if.end:                                           ; preds = %if.then, %cond.end
  %13 = load i8*, i8** %output.addr, align 8, !dbg !466
  %14 = load %struct.sequence*, %struct.sequence** %seq.addr, align 8, !dbg !467
  %15 = load i32, i32* %rows.addr, align 4, !dbg !468
  %16 = load i32, i32* %j, align 4, !dbg !469
  %17 = load i32, i32* %sublen, align 4, !dbg !470
  %18 = load i32, i32* %flags.addr, align 4, !dbg !471
  %call6 = call i8* @sparklineRenderRange(i8* %13, %struct.sequence* %14, i32 %15, i32 %16, i32 %17, i32 %18), !dbg !472
  store i8* %call6, i8** %output.addr, align 8, !dbg !473
  br label %for.inc, !dbg !474

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %columns.addr, align 4, !dbg !475
  %20 = load i32, i32* %j, align 4, !dbg !476
  %add = add nsw i32 %20, %19, !dbg !476
  store i32 %add, i32* %j, align 4, !dbg !476
  br label %for.cond, !dbg !477, !llvm.loop !478

for.end:                                          ; preds = %for.cond
  %21 = load i8*, i8** %output.addr, align 8, !dbg !480
  ret i8* %21, !dbg !481
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "charset_len", scope: !2, file: !3, line: 41, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sparkline.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !15, !17}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "charset_fill", scope: !2, file: !3, line: 40, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 4)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "charset", scope: !2, file: !3, line: 39, type: !11, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "label_margin_top", scope: !2, file: !3, line: 42, type: !7, isLocal: true, isDefinition: true)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!25 = distinct !DISubprogram(name: "createSparklineSequence", scope: !3, file: !3, line: 57, type: !26, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!26 = !DISubroutineType(types: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sequence", file: !30, line: 39, size: 256, elements: !31)
!30 = !DIFile(filename: "./sparkline.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!31 = !{!32, !33, !34, !42, !43}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !29, file: !30, line: 40, baseType: !7, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !29, file: !30, line: 41, baseType: !7, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !29, file: !30, line: 42, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sample", file: !30, line: 34, size: 128, elements: !37)
!37 = !{!38, !40}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !30, line: 35, baseType: !39, size: 64)
!39 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !36, file: !30, line: 36, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !29, file: !30, line: 43, baseType: !39, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !29, file: !30, line: 43, baseType: !39, size: 64, offset: 192)
!44 = !DILocalVariable(name: "seq", scope: !25, file: !3, line: 58, type: !28)
!45 = !DILocation(line: 58, column: 22, scope: !25)
!46 = !DILocation(line: 58, column: 28, scope: !25)
!47 = !DILocation(line: 59, column: 5, scope: !25)
!48 = !DILocation(line: 59, column: 10, scope: !25)
!49 = !DILocation(line: 59, column: 17, scope: !25)
!50 = !DILocation(line: 60, column: 5, scope: !25)
!51 = !DILocation(line: 60, column: 10, scope: !25)
!52 = !DILocation(line: 60, column: 18, scope: !25)
!53 = !DILocation(line: 61, column: 12, scope: !25)
!54 = !DILocation(line: 61, column: 5, scope: !25)
!55 = distinct !DISubprogram(name: "sparklineSequenceAddSample", scope: !3, file: !3, line: 65, type: !56, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !28, !39, !41}
!58 = !DILocalVariable(name: "seq", arg: 1, scope: !55, file: !3, line: 65, type: !28)
!59 = !DILocation(line: 65, column: 50, scope: !55)
!60 = !DILocalVariable(name: "value", arg: 2, scope: !55, file: !3, line: 65, type: !39)
!61 = !DILocation(line: 65, column: 62, scope: !55)
!62 = !DILocalVariable(name: "label", arg: 3, scope: !55, file: !3, line: 65, type: !41)
!63 = !DILocation(line: 65, column: 75, scope: !55)
!64 = !DILocation(line: 66, column: 14, scope: !55)
!65 = !DILocation(line: 66, column: 20, scope: !55)
!66 = !DILocation(line: 66, column: 28, scope: !55)
!67 = !DILocation(line: 66, column: 31, scope: !55)
!68 = !DILocation(line: 66, column: 40, scope: !55)
!69 = !DILocation(line: 66, column: 13, scope: !55)
!70 = !DILocation(line: 66, column: 66, scope: !55)
!71 = !DILocation(line: 66, column: 58, scope: !55)
!72 = !DILocation(line: 66, column: 11, scope: !55)
!73 = !DILocation(line: 67, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !55, file: !3, line: 67, column: 9)
!75 = !DILocation(line: 67, column: 14, scope: !74)
!76 = !DILocation(line: 67, column: 21, scope: !74)
!77 = !DILocation(line: 67, column: 9, scope: !55)
!78 = !DILocation(line: 68, column: 31, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !3, line: 67, column: 27)
!80 = !DILocation(line: 68, column: 20, scope: !79)
!81 = !DILocation(line: 68, column: 25, scope: !79)
!82 = !DILocation(line: 68, column: 29, scope: !79)
!83 = !DILocation(line: 68, column: 9, scope: !79)
!84 = !DILocation(line: 68, column: 14, scope: !79)
!85 = !DILocation(line: 68, column: 18, scope: !79)
!86 = !DILocation(line: 69, column: 5, scope: !79)
!87 = !DILocation(line: 70, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 70, column: 13)
!89 = distinct !DILexicalBlock(scope: !74, file: !3, line: 69, column: 12)
!90 = !DILocation(line: 70, column: 21, scope: !88)
!91 = !DILocation(line: 70, column: 26, scope: !88)
!92 = !DILocation(line: 70, column: 19, scope: !88)
!93 = !DILocation(line: 70, column: 13, scope: !89)
!94 = !DILocation(line: 70, column: 42, scope: !88)
!95 = !DILocation(line: 70, column: 31, scope: !88)
!96 = !DILocation(line: 70, column: 36, scope: !88)
!97 = !DILocation(line: 70, column: 40, scope: !88)
!98 = !DILocation(line: 71, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !88, file: !3, line: 71, column: 18)
!100 = !DILocation(line: 71, column: 26, scope: !99)
!101 = !DILocation(line: 71, column: 31, scope: !99)
!102 = !DILocation(line: 71, column: 24, scope: !99)
!103 = !DILocation(line: 71, column: 18, scope: !88)
!104 = !DILocation(line: 71, column: 47, scope: !99)
!105 = !DILocation(line: 71, column: 36, scope: !99)
!106 = !DILocation(line: 71, column: 41, scope: !99)
!107 = !DILocation(line: 71, column: 45, scope: !99)
!108 = !DILocation(line: 73, column: 29, scope: !55)
!109 = !DILocation(line: 73, column: 34, scope: !55)
!110 = !DILocation(line: 73, column: 65, scope: !55)
!111 = !DILocation(line: 73, column: 70, scope: !55)
!112 = !DILocation(line: 73, column: 76, scope: !55)
!113 = !DILocation(line: 73, column: 64, scope: !55)
!114 = !DILocation(line: 73, column: 63, scope: !55)
!115 = !DILocation(line: 73, column: 20, scope: !55)
!116 = !DILocation(line: 73, column: 5, scope: !55)
!117 = !DILocation(line: 73, column: 10, scope: !55)
!118 = !DILocation(line: 73, column: 18, scope: !55)
!119 = !DILocation(line: 74, column: 39, scope: !55)
!120 = !DILocation(line: 74, column: 5, scope: !55)
!121 = !DILocation(line: 74, column: 10, scope: !55)
!122 = !DILocation(line: 74, column: 18, scope: !55)
!123 = !DILocation(line: 74, column: 23, scope: !55)
!124 = !DILocation(line: 74, column: 31, scope: !55)
!125 = !DILocation(line: 74, column: 37, scope: !55)
!126 = !DILocation(line: 75, column: 39, scope: !55)
!127 = !DILocation(line: 75, column: 5, scope: !55)
!128 = !DILocation(line: 75, column: 10, scope: !55)
!129 = !DILocation(line: 75, column: 18, scope: !55)
!130 = !DILocation(line: 75, column: 23, scope: !55)
!131 = !DILocation(line: 75, column: 31, scope: !55)
!132 = !DILocation(line: 75, column: 37, scope: !55)
!133 = !DILocation(line: 76, column: 5, scope: !55)
!134 = !DILocation(line: 76, column: 10, scope: !55)
!135 = !DILocation(line: 76, column: 16, scope: !55)
!136 = !DILocation(line: 77, column: 9, scope: !137)
!137 = distinct !DILexicalBlock(scope: !55, file: !3, line: 77, column: 9)
!138 = !DILocation(line: 77, column: 9, scope: !55)
!139 = !DILocation(line: 77, column: 16, scope: !137)
!140 = !DILocation(line: 77, column: 21, scope: !137)
!141 = !DILocation(line: 77, column: 27, scope: !137)
!142 = !DILocation(line: 78, column: 1, scope: !55)
!143 = distinct !DISubprogram(name: "freeSparklineSequence", scope: !3, file: !3, line: 81, type: !144, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !28}
!146 = !DILocalVariable(name: "seq", arg: 1, scope: !143, file: !3, line: 81, type: !28)
!147 = !DILocation(line: 81, column: 45, scope: !143)
!148 = !DILocalVariable(name: "j", scope: !143, file: !3, line: 82, type: !7)
!149 = !DILocation(line: 82, column: 9, scope: !143)
!150 = !DILocation(line: 84, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !143, file: !3, line: 84, column: 5)
!152 = !DILocation(line: 84, column: 10, scope: !151)
!153 = !DILocation(line: 84, column: 17, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !3, line: 84, column: 5)
!155 = !DILocation(line: 84, column: 21, scope: !154)
!156 = !DILocation(line: 84, column: 26, scope: !154)
!157 = !DILocation(line: 84, column: 19, scope: !154)
!158 = !DILocation(line: 84, column: 5, scope: !151)
!159 = !DILocation(line: 85, column: 15, scope: !154)
!160 = !DILocation(line: 85, column: 20, scope: !154)
!161 = !DILocation(line: 85, column: 28, scope: !154)
!162 = !DILocation(line: 85, column: 31, scope: !154)
!163 = !DILocation(line: 85, column: 9, scope: !154)
!164 = !DILocation(line: 84, column: 35, scope: !154)
!165 = !DILocation(line: 84, column: 5, scope: !154)
!166 = distinct !{!166, !158, !167, !168}
!167 = !DILocation(line: 85, column: 36, scope: !151)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 86, column: 11, scope: !143)
!170 = !DILocation(line: 86, column: 16, scope: !143)
!171 = !DILocation(line: 86, column: 5, scope: !143)
!172 = !DILocation(line: 87, column: 11, scope: !143)
!173 = !DILocation(line: 87, column: 5, scope: !143)
!174 = !DILocation(line: 88, column: 1, scope: !143)
!175 = distinct !DISubprogram(name: "sparklineRenderRange", scope: !3, file: !3, line: 97, type: !176, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !178, !28, !7, !7, !7, !7}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !179, line: 43, baseType: !41)
!179 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!180 = !DILocalVariable(name: "output", arg: 1, scope: !175, file: !3, line: 97, type: !178)
!181 = !DILocation(line: 97, column: 30, scope: !175)
!182 = !DILocalVariable(name: "seq", arg: 2, scope: !175, file: !3, line: 97, type: !28)
!183 = !DILocation(line: 97, column: 55, scope: !175)
!184 = !DILocalVariable(name: "rows", arg: 3, scope: !175, file: !3, line: 97, type: !7)
!185 = !DILocation(line: 97, column: 64, scope: !175)
!186 = !DILocalVariable(name: "offset", arg: 4, scope: !175, file: !3, line: 97, type: !7)
!187 = !DILocation(line: 97, column: 74, scope: !175)
!188 = !DILocalVariable(name: "len", arg: 5, scope: !175, file: !3, line: 97, type: !7)
!189 = !DILocation(line: 97, column: 86, scope: !175)
!190 = !DILocalVariable(name: "flags", arg: 6, scope: !175, file: !3, line: 97, type: !7)
!191 = !DILocation(line: 97, column: 95, scope: !175)
!192 = !DILocalVariable(name: "j", scope: !175, file: !3, line: 98, type: !7)
!193 = !DILocation(line: 98, column: 9, scope: !175)
!194 = !DILocalVariable(name: "relmax", scope: !175, file: !3, line: 99, type: !39)
!195 = !DILocation(line: 99, column: 12, scope: !175)
!196 = !DILocation(line: 99, column: 21, scope: !175)
!197 = !DILocation(line: 99, column: 26, scope: !175)
!198 = !DILocation(line: 99, column: 32, scope: !175)
!199 = !DILocation(line: 99, column: 37, scope: !175)
!200 = !DILocation(line: 99, column: 30, scope: !175)
!201 = !DILocalVariable(name: "steps", scope: !175, file: !3, line: 100, type: !7)
!202 = !DILocation(line: 100, column: 9, scope: !175)
!203 = !DILocation(line: 100, column: 17, scope: !175)
!204 = !DILocation(line: 100, column: 29, scope: !175)
!205 = !DILocation(line: 100, column: 28, scope: !175)
!206 = !DILocalVariable(name: "row", scope: !175, file: !3, line: 101, type: !7)
!207 = !DILocation(line: 101, column: 9, scope: !175)
!208 = !DILocalVariable(name: "chars", scope: !175, file: !3, line: 102, type: !41)
!209 = !DILocation(line: 102, column: 11, scope: !175)
!210 = !DILocation(line: 102, column: 27, scope: !175)
!211 = !DILocation(line: 102, column: 19, scope: !175)
!212 = !DILocalVariable(name: "loop", scope: !175, file: !3, line: 103, type: !7)
!213 = !DILocation(line: 103, column: 9, scope: !175)
!214 = !DILocalVariable(name: "opt_fill", scope: !175, file: !3, line: 104, type: !7)
!215 = !DILocation(line: 104, column: 9, scope: !175)
!216 = !DILocation(line: 104, column: 20, scope: !175)
!217 = !DILocation(line: 104, column: 26, scope: !175)
!218 = !DILocalVariable(name: "opt_log", scope: !175, file: !3, line: 105, type: !7)
!219 = !DILocation(line: 105, column: 9, scope: !175)
!220 = !DILocation(line: 105, column: 19, scope: !175)
!221 = !DILocation(line: 105, column: 25, scope: !175)
!222 = !DILocation(line: 107, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !175, file: !3, line: 107, column: 9)
!224 = !DILocation(line: 107, column: 9, scope: !175)
!225 = !DILocation(line: 108, column: 22, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !3, line: 107, column: 18)
!227 = !DILocation(line: 108, column: 28, scope: !226)
!228 = !DILocation(line: 108, column: 18, scope: !226)
!229 = !DILocation(line: 108, column: 16, scope: !226)
!230 = !DILocation(line: 109, column: 5, scope: !226)
!231 = !DILocation(line: 109, column: 16, scope: !232)
!232 = distinct !DILexicalBlock(scope: !223, file: !3, line: 109, column: 16)
!233 = !DILocation(line: 109, column: 23, scope: !232)
!234 = !DILocation(line: 109, column: 16, scope: !223)
!235 = !DILocation(line: 110, column: 16, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 109, column: 29)
!237 = !DILocation(line: 111, column: 5, scope: !236)
!238 = !DILocation(line: 113, column: 5, scope: !175)
!239 = !DILocation(line: 113, column: 11, scope: !175)
!240 = !DILocation(line: 114, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !175, file: !3, line: 113, column: 17)
!242 = !DILocation(line: 115, column: 16, scope: !241)
!243 = !DILocation(line: 115, column: 26, scope: !241)
!244 = !DILocation(line: 115, column: 9, scope: !241)
!245 = !DILocation(line: 116, column: 16, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 116, column: 9)
!247 = !DILocation(line: 116, column: 14, scope: !246)
!248 = !DILocation(line: 116, column: 21, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !3, line: 116, column: 9)
!250 = !DILocation(line: 116, column: 25, scope: !249)
!251 = !DILocation(line: 116, column: 23, scope: !249)
!252 = !DILocation(line: 116, column: 9, scope: !246)
!253 = !DILocalVariable(name: "s", scope: !254, file: !3, line: 117, type: !35)
!254 = distinct !DILexicalBlock(scope: !249, file: !3, line: 116, column: 35)
!255 = !DILocation(line: 117, column: 28, scope: !254)
!256 = !DILocation(line: 117, column: 33, scope: !254)
!257 = !DILocation(line: 117, column: 38, scope: !254)
!258 = !DILocation(line: 117, column: 46, scope: !254)
!259 = !DILocation(line: 117, column: 48, scope: !254)
!260 = !DILocation(line: 117, column: 47, scope: !254)
!261 = !DILocalVariable(name: "relval", scope: !254, file: !3, line: 118, type: !39)
!262 = !DILocation(line: 118, column: 20, scope: !254)
!263 = !DILocation(line: 118, column: 29, scope: !254)
!264 = !DILocation(line: 118, column: 32, scope: !254)
!265 = !DILocation(line: 118, column: 40, scope: !254)
!266 = !DILocation(line: 118, column: 45, scope: !254)
!267 = !DILocation(line: 118, column: 38, scope: !254)
!268 = !DILocalVariable(name: "step", scope: !254, file: !3, line: 119, type: !7)
!269 = !DILocation(line: 119, column: 17, scope: !254)
!270 = !DILocation(line: 121, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !254, file: !3, line: 121, column: 17)
!272 = !DILocation(line: 121, column: 17, scope: !254)
!273 = !DILocation(line: 121, column: 39, scope: !271)
!274 = !DILocation(line: 121, column: 45, scope: !271)
!275 = !DILocation(line: 121, column: 35, scope: !271)
!276 = !DILocation(line: 121, column: 33, scope: !271)
!277 = !DILocation(line: 121, column: 26, scope: !271)
!278 = !DILocation(line: 122, column: 27, scope: !254)
!279 = !DILocation(line: 122, column: 34, scope: !254)
!280 = !DILocation(line: 122, column: 33, scope: !254)
!281 = !DILocation(line: 122, column: 20, scope: !254)
!282 = !DILocation(line: 122, column: 41, scope: !254)
!283 = !DILocation(line: 122, column: 40, scope: !254)
!284 = !DILocation(line: 122, column: 18, scope: !254)
!285 = !DILocation(line: 123, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !254, file: !3, line: 123, column: 17)
!287 = !DILocation(line: 123, column: 22, scope: !286)
!288 = !DILocation(line: 123, column: 17, scope: !254)
!289 = !DILocation(line: 123, column: 32, scope: !286)
!290 = !DILocation(line: 123, column: 27, scope: !286)
!291 = !DILocation(line: 124, column: 17, scope: !292)
!292 = distinct !DILexicalBlock(scope: !254, file: !3, line: 124, column: 17)
!293 = !DILocation(line: 124, column: 25, scope: !292)
!294 = !DILocation(line: 124, column: 22, scope: !292)
!295 = !DILocation(line: 124, column: 17, scope: !254)
!296 = !DILocation(line: 124, column: 39, scope: !292)
!297 = !DILocation(line: 124, column: 44, scope: !292)
!298 = !DILocation(line: 124, column: 37, scope: !292)
!299 = !DILocation(line: 124, column: 32, scope: !292)
!300 = !DILocation(line: 126, column: 17, scope: !301)
!301 = distinct !DILexicalBlock(scope: !254, file: !3, line: 126, column: 17)
!302 = !DILocation(line: 126, column: 23, scope: !301)
!303 = !DILocation(line: 126, column: 21, scope: !301)
!304 = !DILocation(line: 126, column: 17, scope: !254)
!305 = !DILocalVariable(name: "charidx", scope: !306, file: !3, line: 128, type: !7)
!306 = distinct !DILexicalBlock(scope: !301, file: !3, line: 126, column: 29)
!307 = !DILocation(line: 128, column: 21, scope: !306)
!308 = !DILocation(line: 128, column: 31, scope: !306)
!309 = !DILocation(line: 128, column: 38, scope: !306)
!310 = !DILocation(line: 128, column: 43, scope: !306)
!311 = !DILocation(line: 128, column: 42, scope: !306)
!312 = !DILocation(line: 128, column: 46, scope: !306)
!313 = !DILocation(line: 128, column: 50, scope: !306)
!314 = !DILocation(line: 128, column: 49, scope: !306)
!315 = !DILocation(line: 128, column: 35, scope: !306)
!316 = !DILocation(line: 129, column: 22, scope: !306)
!317 = !DILocation(line: 130, column: 21, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !3, line: 130, column: 21)
!319 = !DILocation(line: 130, column: 29, scope: !318)
!320 = !DILocation(line: 130, column: 34, scope: !318)
!321 = !DILocation(line: 130, column: 37, scope: !318)
!322 = !DILocation(line: 130, column: 47, scope: !318)
!323 = !DILocation(line: 130, column: 45, scope: !318)
!324 = !DILocation(line: 130, column: 21, scope: !306)
!325 = !DILocation(line: 131, column: 32, scope: !326)
!326 = distinct !DILexicalBlock(scope: !318, file: !3, line: 130, column: 60)
!327 = !DILocation(line: 131, column: 56, scope: !326)
!328 = !DILocation(line: 131, column: 43, scope: !326)
!329 = !DILocation(line: 132, column: 51, scope: !326)
!330 = !DILocation(line: 132, column: 43, scope: !326)
!331 = !DILocation(line: 131, column: 21, scope: !326)
!332 = !DILocation(line: 131, column: 27, scope: !326)
!333 = !DILocation(line: 131, column: 30, scope: !326)
!334 = !DILocation(line: 133, column: 17, scope: !326)
!335 = !DILocation(line: 133, column: 27, scope: !336)
!336 = distinct !DILexicalBlock(scope: !318, file: !3, line: 133, column: 27)
!337 = !DILocation(line: 133, column: 36, scope: !336)
!338 = !DILocation(line: 133, column: 39, scope: !336)
!339 = !DILocation(line: 133, column: 50, scope: !336)
!340 = !DILocation(line: 133, column: 47, scope: !336)
!341 = !DILocation(line: 133, column: 27, scope: !318)
!342 = !DILocation(line: 134, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !336, file: !3, line: 133, column: 63)
!344 = !DILocation(line: 134, column: 27, scope: !343)
!345 = !DILocation(line: 134, column: 30, scope: !343)
!346 = !DILocation(line: 135, column: 17, scope: !343)
!347 = !DILocation(line: 136, column: 13, scope: !306)
!348 = !DILocation(line: 138, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 138, column: 21)
!350 = distinct !DILexicalBlock(scope: !301, file: !3, line: 136, column: 20)
!351 = !DILocation(line: 138, column: 26, scope: !349)
!352 = !DILocation(line: 138, column: 33, scope: !349)
!353 = !DILocation(line: 138, column: 36, scope: !349)
!354 = !DILocation(line: 138, column: 40, scope: !349)
!355 = !DILocation(line: 138, column: 39, scope: !349)
!356 = !DILocation(line: 138, column: 47, scope: !349)
!357 = !DILocation(line: 138, column: 45, scope: !349)
!358 = !DILocation(line: 138, column: 21, scope: !350)
!359 = !DILocation(line: 139, column: 26, scope: !360)
!360 = distinct !DILexicalBlock(scope: !349, file: !3, line: 138, column: 65)
!361 = !DILocation(line: 140, column: 21, scope: !360)
!362 = !DILocation(line: 143, column: 21, scope: !363)
!363 = distinct !DILexicalBlock(scope: !350, file: !3, line: 143, column: 21)
!364 = !DILocation(line: 143, column: 24, scope: !363)
!365 = !DILocation(line: 143, column: 21, scope: !350)
!366 = !DILocalVariable(name: "label_len", scope: !367, file: !3, line: 144, type: !7)
!367 = distinct !DILexicalBlock(scope: !363, file: !3, line: 143, column: 31)
!368 = !DILocation(line: 144, column: 25, scope: !367)
!369 = !DILocation(line: 144, column: 44, scope: !367)
!370 = !DILocation(line: 144, column: 47, scope: !367)
!371 = !DILocation(line: 144, column: 37, scope: !367)
!372 = !DILocalVariable(name: "label_char", scope: !367, file: !3, line: 145, type: !7)
!373 = !DILocation(line: 145, column: 25, scope: !367)
!374 = !DILocation(line: 145, column: 38, scope: !367)
!375 = !DILocation(line: 145, column: 44, scope: !367)
!376 = !DILocation(line: 145, column: 42, scope: !367)
!377 = !DILocation(line: 145, column: 51, scope: !367)
!378 = !DILocation(line: 145, column: 49, scope: !367)
!379 = !DILocation(line: 147, column: 25, scope: !380)
!380 = distinct !DILexicalBlock(scope: !367, file: !3, line: 147, column: 25)
!381 = !DILocation(line: 147, column: 37, scope: !380)
!382 = !DILocation(line: 147, column: 35, scope: !380)
!383 = !DILocation(line: 147, column: 25, scope: !367)
!384 = !DILocation(line: 148, column: 30, scope: !385)
!385 = distinct !DILexicalBlock(scope: !380, file: !3, line: 147, column: 49)
!386 = !DILocation(line: 149, column: 36, scope: !385)
!387 = !DILocation(line: 149, column: 39, scope: !385)
!388 = !DILocation(line: 149, column: 45, scope: !385)
!389 = !DILocation(line: 149, column: 25, scope: !385)
!390 = !DILocation(line: 149, column: 31, scope: !385)
!391 = !DILocation(line: 149, column: 34, scope: !385)
!392 = !DILocation(line: 150, column: 21, scope: !385)
!393 = !DILocation(line: 151, column: 17, scope: !367)
!394 = !DILocation(line: 153, column: 9, scope: !254)
!395 = !DILocation(line: 116, column: 31, scope: !249)
!396 = !DILocation(line: 116, column: 9, scope: !249)
!397 = distinct !{!397, !252, !398, !168}
!398 = !DILocation(line: 153, column: 9, scope: !246)
!399 = !DILocation(line: 154, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !241, file: !3, line: 154, column: 13)
!401 = !DILocation(line: 154, column: 13, scope: !241)
!402 = !DILocation(line: 155, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 154, column: 19)
!404 = !DILocation(line: 156, column: 32, scope: !403)
!405 = !DILocation(line: 156, column: 39, scope: !403)
!406 = !DILocation(line: 156, column: 45, scope: !403)
!407 = !DILocation(line: 156, column: 22, scope: !403)
!408 = !DILocation(line: 156, column: 20, scope: !403)
!409 = !DILocation(line: 157, column: 32, scope: !403)
!410 = !DILocation(line: 157, column: 22, scope: !403)
!411 = !DILocation(line: 157, column: 20, scope: !403)
!412 = !DILocation(line: 158, column: 9, scope: !403)
!413 = distinct !{!413, !238, !414, !168}
!414 = !DILocation(line: 159, column: 5, scope: !175)
!415 = !DILocation(line: 160, column: 11, scope: !175)
!416 = !DILocation(line: 160, column: 5, scope: !175)
!417 = !DILocation(line: 161, column: 12, scope: !175)
!418 = !DILocation(line: 161, column: 5, scope: !175)
!419 = distinct !DISubprogram(name: "sparklineRender", scope: !3, file: !3, line: 165, type: !420, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{!178, !178, !28, !7, !7, !7}
!422 = !DILocalVariable(name: "output", arg: 1, scope: !419, file: !3, line: 165, type: !178)
!423 = !DILocation(line: 165, column: 25, scope: !419)
!424 = !DILocalVariable(name: "seq", arg: 2, scope: !419, file: !3, line: 165, type: !28)
!425 = !DILocation(line: 165, column: 50, scope: !419)
!426 = !DILocalVariable(name: "columns", arg: 3, scope: !419, file: !3, line: 165, type: !7)
!427 = !DILocation(line: 165, column: 59, scope: !419)
!428 = !DILocalVariable(name: "rows", arg: 4, scope: !419, file: !3, line: 165, type: !7)
!429 = !DILocation(line: 165, column: 72, scope: !419)
!430 = !DILocalVariable(name: "flags", arg: 5, scope: !419, file: !3, line: 165, type: !7)
!431 = !DILocation(line: 165, column: 82, scope: !419)
!432 = !DILocalVariable(name: "j", scope: !419, file: !3, line: 166, type: !7)
!433 = !DILocation(line: 166, column: 9, scope: !419)
!434 = !DILocation(line: 168, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !419, file: !3, line: 168, column: 5)
!436 = !DILocation(line: 168, column: 10, scope: !435)
!437 = !DILocation(line: 168, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 168, column: 5)
!439 = !DILocation(line: 168, column: 21, scope: !438)
!440 = !DILocation(line: 168, column: 26, scope: !438)
!441 = !DILocation(line: 168, column: 19, scope: !438)
!442 = !DILocation(line: 168, column: 5, scope: !435)
!443 = !DILocalVariable(name: "sublen", scope: !444, file: !3, line: 169, type: !7)
!444 = distinct !DILexicalBlock(scope: !438, file: !3, line: 168, column: 48)
!445 = !DILocation(line: 169, column: 13, scope: !444)
!446 = !DILocation(line: 169, column: 23, scope: !444)
!447 = !DILocation(line: 169, column: 28, scope: !444)
!448 = !DILocation(line: 169, column: 35, scope: !444)
!449 = !DILocation(line: 169, column: 34, scope: !444)
!450 = !DILocation(line: 169, column: 40, scope: !444)
!451 = !DILocation(line: 169, column: 38, scope: !444)
!452 = !DILocation(line: 169, column: 22, scope: !444)
!453 = !DILocation(line: 169, column: 51, scope: !444)
!454 = !DILocation(line: 169, column: 56, scope: !444)
!455 = !DILocation(line: 169, column: 63, scope: !444)
!456 = !DILocation(line: 169, column: 62, scope: !444)
!457 = !DILocation(line: 169, column: 68, scope: !444)
!458 = !DILocation(line: 171, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !444, file: !3, line: 171, column: 13)
!460 = !DILocation(line: 171, column: 15, scope: !459)
!461 = !DILocation(line: 171, column: 13, scope: !444)
!462 = !DILocation(line: 171, column: 40, scope: !459)
!463 = !DILocation(line: 171, column: 30, scope: !459)
!464 = !DILocation(line: 171, column: 28, scope: !459)
!465 = !DILocation(line: 171, column: 21, scope: !459)
!466 = !DILocation(line: 172, column: 39, scope: !444)
!467 = !DILocation(line: 172, column: 47, scope: !444)
!468 = !DILocation(line: 172, column: 52, scope: !444)
!469 = !DILocation(line: 172, column: 58, scope: !444)
!470 = !DILocation(line: 172, column: 61, scope: !444)
!471 = !DILocation(line: 172, column: 69, scope: !444)
!472 = !DILocation(line: 172, column: 18, scope: !444)
!473 = !DILocation(line: 172, column: 16, scope: !444)
!474 = !DILocation(line: 173, column: 5, scope: !444)
!475 = !DILocation(line: 168, column: 39, scope: !438)
!476 = !DILocation(line: 168, column: 36, scope: !438)
!477 = !DILocation(line: 168, column: 5, scope: !438)
!478 = distinct !{!478, !442, !479, !168}
!479 = !DILocation(line: 173, column: 5, scope: !435)
!480 = !DILocation(line: 174, column: 12, scope: !419)
!481 = !DILocation(line: 174, column: 5, scope: !419)
