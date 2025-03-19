; ModuleID = 'lolwut5.c'
source_filename = "lolwut5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lwCanvas = type { i32, i32, i8* }
%struct.client = type { i64, i64, %struct.connection*, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i64, i32, %struct.redisObject**, i32, i32, %struct.redisObject**, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.user*, i32, i32, i64, %struct.list*, i64, %struct.list*, i64, i64, i64, i32, %struct.dictEntry*, i64, i64, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, i8*, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, %struct.dict*, i8*, i8*, %struct.listNode*, %struct.listNode*, %struct.listNode*, void (i64, i8*)*, i8*, i8*, i64, %struct.rax*, i64, i32, %struct.listNode*, %struct.clientMemUsageBucket*, %struct.listNode*, i64, i64, i64, i32, i64, i8* }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.redisObject = type { i32, i32, i8* }
%struct.redisCommand = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, %struct.commandHistory*, i8**, {}*, i32, i64, i64, [4 x %struct.keySpec], i32 (%struct.redisCommand*, %struct.redisObject**, i32, %struct.getKeysResult*)*, %struct.redisCommand*, %struct.redisCommandArg*, i64, i64, i64, i64, i32, i8*, %struct.hdr_histogram*, %struct.keySpec*, %struct.keySpec, i32, i32, i32, i32, i32, %struct.dict*, %struct.redisCommand*, %struct.RedisModuleCommand* }
%struct.commandHistory = type { i8*, i8* }
%struct.getKeysResult = type { [256 x %struct.keyReference], %struct.keyReference*, i32, i32 }
%struct.keyReference = type { i32, i32 }
%struct.redisCommandArg = type { i8*, i32, i32, i8*, i8*, i8*, i32, i8*, %struct.redisCommandArg*, i32 }
%struct.hdr_histogram = type { i64, i64, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, double, i32, i64, i64* }
%struct.keySpec = type { i8*, i64, i32, %union.anon.0, i32, %union.anon.2 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i8*, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.RedisModuleCommand = type opaque
%struct.user = type { i8*, i32, %struct.list*, %struct.list*, %struct.redisObject* }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@.str = private unnamed_addr constant [60 x i8] c"\0AGeorg Nees - schotter, plotter on paper, 1968. Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"7.0.11\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"txt\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @lwTranslatePixelsGroup(i32 %byte, i8* %output) #0 !dbg !111 {
entry:
  %byte.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  store i32 %byte, i32* %byte.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %byte.addr, metadata !117, metadata !DIExpression()), !dbg !118
  store i8* %output, i8** %output.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %output.addr, metadata !119, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %code, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i32, i32* %byte.addr, align 4, !dbg !123
  %add = add nsw i32 10240, %0, !dbg !124
  store i32 %add, i32* %code, align 4, !dbg !122
  %1 = load i32, i32* %code, align 4, !dbg !125
  %shr = ashr i32 %1, 12, !dbg !126
  %or = or i32 224, %shr, !dbg !127
  %conv = trunc i32 %or to i8, !dbg !128
  %2 = load i8*, i8** %output.addr, align 8, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !129
  store i8 %conv, i8* %arrayidx, align 1, !dbg !130
  %3 = load i32, i32* %code, align 4, !dbg !131
  %shr1 = ashr i32 %3, 6, !dbg !132
  %and = and i32 %shr1, 63, !dbg !133
  %or2 = or i32 128, %and, !dbg !134
  %conv3 = trunc i32 %or2 to i8, !dbg !135
  %4 = load i8*, i8** %output.addr, align 8, !dbg !136
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !136
  store i8 %conv3, i8* %arrayidx4, align 1, !dbg !137
  %5 = load i32, i32* %code, align 4, !dbg !138
  %and5 = and i32 %5, 63, !dbg !139
  %or6 = or i32 128, %and5, !dbg !140
  %conv7 = trunc i32 %or6 to i8, !dbg !141
  %6 = load i8*, i8** %output.addr, align 8, !dbg !142
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !142
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lwCanvas* @lwDrawSchotter(i32 %console_cols, i32 %squares_per_row, i32 %squares_per_col) #0 !dbg !145 {
entry:
  %console_cols.addr = alloca i32, align 4
  %squares_per_row.addr = alloca i32, align 4
  %squares_per_col.addr = alloca i32, align 4
  %canvas_width = alloca i32, align 4
  %padding = alloca i32, align 4
  %square_side = alloca float, align 4
  %canvas_height = alloca i32, align 4
  %canvas = alloca %struct.lwCanvas*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %angle = alloca float, align 4
  %r1 = alloca float, align 4
  %r2 = alloca float, align 4
  %r3 = alloca float, align 4
  store i32 %console_cols, i32* %console_cols.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %console_cols.addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i32 %squares_per_row, i32* %squares_per_row.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %squares_per_row.addr, metadata !158, metadata !DIExpression()), !dbg !159
  store i32 %squares_per_col, i32* %squares_per_col.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %squares_per_col.addr, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %canvas_width, metadata !162, metadata !DIExpression()), !dbg !163
  %0 = load i32, i32* %console_cols.addr, align 4, !dbg !164
  %mul = mul nsw i32 %0, 2, !dbg !165
  store i32 %mul, i32* %canvas_width, align 4, !dbg !163
  call void @llvm.dbg.declare(metadata i32* %padding, metadata !166, metadata !DIExpression()), !dbg !167
  %1 = load i32, i32* %canvas_width, align 4, !dbg !168
  %cmp = icmp sgt i32 %1, 4, !dbg !169
  %2 = zext i1 %cmp to i64, !dbg !168
  %cond = select i1 %cmp, i32 2, i32 0, !dbg !168
  store i32 %cond, i32* %padding, align 4, !dbg !167
  call void @llvm.dbg.declare(metadata float* %square_side, metadata !170, metadata !DIExpression()), !dbg !171
  %3 = load i32, i32* %canvas_width, align 4, !dbg !172
  %4 = load i32, i32* %padding, align 4, !dbg !173
  %mul1 = mul nsw i32 %4, 2, !dbg !174
  %sub = sub nsw i32 %3, %mul1, !dbg !175
  %conv = sitofp i32 %sub to float, !dbg !176
  %5 = load i32, i32* %squares_per_row.addr, align 4, !dbg !177
  %conv2 = sitofp i32 %5 to float, !dbg !177
  %div = fdiv float %conv, %conv2, !dbg !178
  store float %div, float* %square_side, align 4, !dbg !171
  call void @llvm.dbg.declare(metadata i32* %canvas_height, metadata !179, metadata !DIExpression()), !dbg !180
  %6 = load float, float* %square_side, align 4, !dbg !181
  %7 = load i32, i32* %squares_per_col.addr, align 4, !dbg !182
  %conv3 = sitofp i32 %7 to float, !dbg !182
  %mul4 = fmul float %6, %conv3, !dbg !183
  %8 = load i32, i32* %padding, align 4, !dbg !184
  %mul5 = mul nsw i32 %8, 2, !dbg !185
  %conv6 = sitofp i32 %mul5 to float, !dbg !184
  %add = fadd float %mul4, %conv6, !dbg !186
  %conv7 = fptosi float %add to i32, !dbg !181
  store i32 %conv7, i32* %canvas_height, align 4, !dbg !180
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas, metadata !187, metadata !DIExpression()), !dbg !188
  %9 = load i32, i32* %canvas_width, align 4, !dbg !189
  %10 = load i32, i32* %canvas_height, align 4, !dbg !190
  %call = call %struct.lwCanvas* @lwCreateCanvas(i32 %9, i32 %10, i32 0), !dbg !191
  store %struct.lwCanvas* %call, %struct.lwCanvas** %canvas, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i32* %y, metadata !192, metadata !DIExpression()), !dbg !194
  store i32 0, i32* %y, align 4, !dbg !194
  br label %for.cond, !dbg !195

for.cond:                                         ; preds = %for.inc76, %entry
  %11 = load i32, i32* %y, align 4, !dbg !196
  %12 = load i32, i32* %squares_per_col.addr, align 4, !dbg !198
  %cmp8 = icmp slt i32 %11, %12, !dbg !199
  br i1 %cmp8, label %for.body, label %for.end78, !dbg !200

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %x, metadata !201, metadata !DIExpression()), !dbg !204
  store i32 0, i32* %x, align 4, !dbg !204
  br label %for.cond10, !dbg !205

for.cond10:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %x, align 4, !dbg !206
  %14 = load i32, i32* %squares_per_row.addr, align 4, !dbg !208
  %cmp11 = icmp slt i32 %13, %14, !dbg !209
  br i1 %cmp11, label %for.body13, label %for.end, !dbg !210

for.body13:                                       ; preds = %for.cond10
  call void @llvm.dbg.declare(metadata i32* %sx, metadata !211, metadata !DIExpression()), !dbg !213
  %15 = load i32, i32* %x, align 4, !dbg !214
  %conv14 = sitofp i32 %15 to float, !dbg !214
  %16 = load float, float* %square_side, align 4, !dbg !215
  %mul15 = fmul float %conv14, %16, !dbg !216
  %17 = load float, float* %square_side, align 4, !dbg !217
  %div16 = fdiv float %17, 2.000000e+00, !dbg !218
  %add17 = fadd float %mul15, %div16, !dbg !219
  %18 = load i32, i32* %padding, align 4, !dbg !220
  %conv18 = sitofp i32 %18 to float, !dbg !220
  %add19 = fadd float %add17, %conv18, !dbg !221
  %conv20 = fptosi float %add19 to i32, !dbg !214
  store i32 %conv20, i32* %sx, align 4, !dbg !213
  call void @llvm.dbg.declare(metadata i32* %sy, metadata !222, metadata !DIExpression()), !dbg !223
  %19 = load i32, i32* %y, align 4, !dbg !224
  %conv21 = sitofp i32 %19 to float, !dbg !224
  %20 = load float, float* %square_side, align 4, !dbg !225
  %mul22 = fmul float %conv21, %20, !dbg !226
  %21 = load float, float* %square_side, align 4, !dbg !227
  %div23 = fdiv float %21, 2.000000e+00, !dbg !228
  %add24 = fadd float %mul22, %div23, !dbg !229
  %22 = load i32, i32* %padding, align 4, !dbg !230
  %conv25 = sitofp i32 %22 to float, !dbg !230
  %add26 = fadd float %add24, %conv25, !dbg !231
  %conv27 = fptosi float %add26 to i32, !dbg !224
  store i32 %conv27, i32* %sy, align 4, !dbg !223
  call void @llvm.dbg.declare(metadata float* %angle, metadata !232, metadata !DIExpression()), !dbg !233
  store float 0.000000e+00, float* %angle, align 4, !dbg !233
  %23 = load i32, i32* %y, align 4, !dbg !234
  %cmp28 = icmp sgt i32 %23, 1, !dbg !236
  br i1 %cmp28, label %if.then, label %if.end75, !dbg !237

if.then:                                          ; preds = %for.body13
  call void @llvm.dbg.declare(metadata float* %r1, metadata !238, metadata !DIExpression()), !dbg !240
  %call30 = call i32 @rand() #4, !dbg !241
  %conv31 = sitofp i32 %call30 to float, !dbg !242
  %div32 = fdiv float %conv31, 0x41E0000000000000, !dbg !243
  %24 = load i32, i32* %squares_per_col.addr, align 4, !dbg !244
  %conv33 = sitofp i32 %24 to float, !dbg !244
  %div34 = fdiv float %div32, %conv33, !dbg !245
  %25 = load i32, i32* %y, align 4, !dbg !246
  %conv35 = sitofp i32 %25 to float, !dbg !246
  %mul36 = fmul float %div34, %conv35, !dbg !247
  store float %mul36, float* %r1, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata float* %r2, metadata !248, metadata !DIExpression()), !dbg !249
  %call37 = call i32 @rand() #4, !dbg !250
  %conv38 = sitofp i32 %call37 to float, !dbg !251
  %div39 = fdiv float %conv38, 0x41E0000000000000, !dbg !252
  %26 = load i32, i32* %squares_per_col.addr, align 4, !dbg !253
  %conv40 = sitofp i32 %26 to float, !dbg !253
  %div41 = fdiv float %div39, %conv40, !dbg !254
  %27 = load i32, i32* %y, align 4, !dbg !255
  %conv42 = sitofp i32 %27 to float, !dbg !255
  %mul43 = fmul float %div41, %conv42, !dbg !256
  store float %mul43, float* %r2, align 4, !dbg !249
  call void @llvm.dbg.declare(metadata float* %r3, metadata !257, metadata !DIExpression()), !dbg !258
  %call44 = call i32 @rand() #4, !dbg !259
  %conv45 = sitofp i32 %call44 to float, !dbg !260
  %div46 = fdiv float %conv45, 0x41E0000000000000, !dbg !261
  %28 = load i32, i32* %squares_per_col.addr, align 4, !dbg !262
  %conv47 = sitofp i32 %28 to float, !dbg !262
  %div48 = fdiv float %div46, %conv47, !dbg !263
  %29 = load i32, i32* %y, align 4, !dbg !264
  %conv49 = sitofp i32 %29 to float, !dbg !264
  %mul50 = fmul float %div48, %conv49, !dbg !265
  store float %mul50, float* %r3, align 4, !dbg !258
  %call51 = call i32 @rand() #4, !dbg !266
  %rem = srem i32 %call51, 2, !dbg !268
  %tobool = icmp ne i32 %rem, 0, !dbg !268
  br i1 %tobool, label %if.then52, label %if.end, !dbg !269

if.then52:                                        ; preds = %if.then
  %30 = load float, float* %r1, align 4, !dbg !270
  %fneg = fneg float %30, !dbg !271
  store float %fneg, float* %r1, align 4, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then52, %if.then
  %call53 = call i32 @rand() #4, !dbg !274
  %rem54 = srem i32 %call53, 2, !dbg !276
  %tobool55 = icmp ne i32 %rem54, 0, !dbg !276
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !277

if.then56:                                        ; preds = %if.end
  %31 = load float, float* %r2, align 4, !dbg !278
  %fneg57 = fneg float %31, !dbg !279
  store float %fneg57, float* %r2, align 4, !dbg !280
  br label %if.end58, !dbg !281

if.end58:                                         ; preds = %if.then56, %if.end
  %call59 = call i32 @rand() #4, !dbg !282
  %rem60 = srem i32 %call59, 2, !dbg !284
  %tobool61 = icmp ne i32 %rem60, 0, !dbg !284
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !285

if.then62:                                        ; preds = %if.end58
  %32 = load float, float* %r3, align 4, !dbg !286
  %fneg63 = fneg float %32, !dbg !287
  store float %fneg63, float* %r3, align 4, !dbg !288
  br label %if.end64, !dbg !289

if.end64:                                         ; preds = %if.then62, %if.end58
  %33 = load float, float* %r1, align 4, !dbg !290
  store float %33, float* %angle, align 4, !dbg !291
  %34 = load float, float* %r2, align 4, !dbg !292
  %35 = load float, float* %square_side, align 4, !dbg !293
  %mul65 = fmul float %34, %35, !dbg !294
  %div66 = fdiv float %mul65, 3.000000e+00, !dbg !295
  %36 = load i32, i32* %sx, align 4, !dbg !296
  %conv67 = sitofp i32 %36 to float, !dbg !296
  %add68 = fadd float %conv67, %div66, !dbg !296
  %conv69 = fptosi float %add68 to i32, !dbg !296
  store i32 %conv69, i32* %sx, align 4, !dbg !296
  %37 = load float, float* %r3, align 4, !dbg !297
  %38 = load float, float* %square_side, align 4, !dbg !298
  %mul70 = fmul float %37, %38, !dbg !299
  %div71 = fdiv float %mul70, 3.000000e+00, !dbg !300
  %39 = load i32, i32* %sy, align 4, !dbg !301
  %conv72 = sitofp i32 %39 to float, !dbg !301
  %add73 = fadd float %conv72, %div71, !dbg !301
  %conv74 = fptosi float %add73 to i32, !dbg !301
  store i32 %conv74, i32* %sy, align 4, !dbg !301
  br label %if.end75, !dbg !302

if.end75:                                         ; preds = %if.end64, %for.body13
  %40 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !303
  %41 = load i32, i32* %sx, align 4, !dbg !304
  %42 = load i32, i32* %sy, align 4, !dbg !305
  %43 = load float, float* %square_side, align 4, !dbg !306
  %44 = load float, float* %angle, align 4, !dbg !307
  call void @lwDrawSquare(%struct.lwCanvas* %40, i32 %41, i32 %42, float %43, float %44, i32 1), !dbg !308
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %if.end75
  %45 = load i32, i32* %x, align 4, !dbg !310
  %inc = add nsw i32 %45, 1, !dbg !310
  store i32 %inc, i32* %x, align 4, !dbg !310
  br label %for.cond10, !dbg !311, !llvm.loop !312

for.end:                                          ; preds = %for.cond10
  br label %for.inc76, !dbg !315

for.inc76:                                        ; preds = %for.end
  %46 = load i32, i32* %y, align 4, !dbg !316
  %inc77 = add nsw i32 %46, 1, !dbg !316
  store i32 %inc77, i32* %y, align 4, !dbg !316
  br label %for.cond, !dbg !317, !llvm.loop !318

for.end78:                                        ; preds = %for.cond
  %47 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !320
  ret %struct.lwCanvas* %47, !dbg !321
}

declare dso_local %struct.lwCanvas* @lwCreateCanvas(i32, i32, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

declare dso_local void @lwDrawSquare(%struct.lwCanvas*, i32, i32, float, float, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lolwut5Command(%struct.client* %c) #0 !dbg !322 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %cols = alloca i64, align 8
  %squares_per_row = alloca i64, align 8
  %squares_per_col = alloca i64, align 8
  %canvas = alloca %struct.lwCanvas*, align 8
  %rendered = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata i64* %cols, metadata !919, metadata !DIExpression()), !dbg !920
  store i64 66, i64* %cols, align 8, !dbg !920
  call void @llvm.dbg.declare(metadata i64* %squares_per_row, metadata !921, metadata !DIExpression()), !dbg !922
  store i64 8, i64* %squares_per_row, align 8, !dbg !922
  call void @llvm.dbg.declare(metadata i64* %squares_per_col, metadata !923, metadata !DIExpression()), !dbg !924
  store i64 12, i64* %squares_per_col, align 8, !dbg !924
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !925
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !927
  %1 = load i32, i32* %argc, align 8, !dbg !927
  %cmp = icmp sgt i32 %1, 1, !dbg !928
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !929

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !930
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !931
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !932
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !932
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !931
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !931
  %call = call i32 @getLongFromObjectOrReply(%struct.client* %2, %struct.redisObject* %5, i64* %cols, i8* null), !dbg !933
  %cmp1 = icmp ne i32 %call, 0, !dbg !934
  br i1 %cmp1, label %if.then, label %if.end, !dbg !935

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !936

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !937
  %argc2 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 9, !dbg !939
  %7 = load i32, i32* %argc2, align 8, !dbg !939
  %cmp3 = icmp sgt i32 %7, 2, !dbg !940
  br i1 %cmp3, label %land.lhs.true4, label %if.end10, !dbg !941

land.lhs.true4:                                   ; preds = %if.end
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !942
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !943
  %argv5 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 10, !dbg !944
  %10 = load %struct.redisObject**, %struct.redisObject*** %argv5, align 8, !dbg !944
  %arrayidx6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 2, !dbg !943
  %11 = load %struct.redisObject*, %struct.redisObject** %arrayidx6, align 8, !dbg !943
  %call7 = call i32 @getLongFromObjectOrReply(%struct.client* %8, %struct.redisObject* %11, i64* %squares_per_row, i8* null), !dbg !945
  %cmp8 = icmp ne i32 %call7, 0, !dbg !946
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !947

if.then9:                                         ; preds = %land.lhs.true4
  br label %return, !dbg !948

if.end10:                                         ; preds = %land.lhs.true4, %if.end
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !949
  %argc11 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 9, !dbg !951
  %13 = load i32, i32* %argc11, align 8, !dbg !951
  %cmp12 = icmp sgt i32 %13, 3, !dbg !952
  br i1 %cmp12, label %land.lhs.true13, label %if.end19, !dbg !953

land.lhs.true13:                                  ; preds = %if.end10
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !954
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !955
  %argv14 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 10, !dbg !956
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv14, align 8, !dbg !956
  %arrayidx15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 3, !dbg !955
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx15, align 8, !dbg !955
  %call16 = call i32 @getLongFromObjectOrReply(%struct.client* %14, %struct.redisObject* %17, i64* %squares_per_col, i8* null), !dbg !957
  %cmp17 = icmp ne i32 %call16, 0, !dbg !958
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !959

if.then18:                                        ; preds = %land.lhs.true13
  br label %return, !dbg !960

if.end19:                                         ; preds = %land.lhs.true13, %if.end10
  %18 = load i64, i64* %cols, align 8, !dbg !961
  %cmp20 = icmp slt i64 %18, 1, !dbg !963
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !964

if.then21:                                        ; preds = %if.end19
  store i64 1, i64* %cols, align 8, !dbg !965
  br label %if.end22, !dbg !966

if.end22:                                         ; preds = %if.then21, %if.end19
  %19 = load i64, i64* %cols, align 8, !dbg !967
  %cmp23 = icmp sgt i64 %19, 1000, !dbg !969
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !970

if.then24:                                        ; preds = %if.end22
  store i64 1000, i64* %cols, align 8, !dbg !971
  br label %if.end25, !dbg !972

if.end25:                                         ; preds = %if.then24, %if.end22
  %20 = load i64, i64* %squares_per_row, align 8, !dbg !973
  %cmp26 = icmp slt i64 %20, 1, !dbg !975
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !976

if.then27:                                        ; preds = %if.end25
  store i64 1, i64* %squares_per_row, align 8, !dbg !977
  br label %if.end28, !dbg !978

if.end28:                                         ; preds = %if.then27, %if.end25
  %21 = load i64, i64* %squares_per_row, align 8, !dbg !979
  %cmp29 = icmp sgt i64 %21, 200, !dbg !981
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !982

if.then30:                                        ; preds = %if.end28
  store i64 200, i64* %squares_per_row, align 8, !dbg !983
  br label %if.end31, !dbg !984

if.end31:                                         ; preds = %if.then30, %if.end28
  %22 = load i64, i64* %squares_per_col, align 8, !dbg !985
  %cmp32 = icmp slt i64 %22, 1, !dbg !987
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !988

if.then33:                                        ; preds = %if.end31
  store i64 1, i64* %squares_per_col, align 8, !dbg !989
  br label %if.end34, !dbg !990

if.end34:                                         ; preds = %if.then33, %if.end31
  %23 = load i64, i64* %squares_per_col, align 8, !dbg !991
  %cmp35 = icmp sgt i64 %23, 200, !dbg !993
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !994

if.then36:                                        ; preds = %if.end34
  store i64 200, i64* %squares_per_col, align 8, !dbg !995
  br label %if.end37, !dbg !996

if.end37:                                         ; preds = %if.then36, %if.end34
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas, metadata !997, metadata !DIExpression()), !dbg !998
  %24 = load i64, i64* %cols, align 8, !dbg !999
  %conv = trunc i64 %24 to i32, !dbg !999
  %25 = load i64, i64* %squares_per_row, align 8, !dbg !1000
  %conv38 = trunc i64 %25 to i32, !dbg !1000
  %26 = load i64, i64* %squares_per_col, align 8, !dbg !1001
  %conv39 = trunc i64 %26 to i32, !dbg !1001
  %call40 = call %struct.lwCanvas* @lwDrawSchotter(i32 %conv, i32 %conv38, i32 %conv39), !dbg !1002
  store %struct.lwCanvas* %call40, %struct.lwCanvas** %canvas, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata i8** %rendered, metadata !1003, metadata !DIExpression()), !dbg !1004
  %27 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !1005
  %call41 = call i8* @renderCanvas(%struct.lwCanvas* %27), !dbg !1006
  store i8* %call41, i8** %rendered, align 8, !dbg !1004
  %28 = load i8*, i8** %rendered, align 8, !dbg !1007
  %call42 = call i8* @sdscat(i8* %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0)), !dbg !1008
  store i8* %call42, i8** %rendered, align 8, !dbg !1009
  %29 = load i8*, i8** %rendered, align 8, !dbg !1010
  %call43 = call i8* @sdscat(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !1011
  store i8* %call43, i8** %rendered, align 8, !dbg !1012
  %30 = load i8*, i8** %rendered, align 8, !dbg !1013
  %call44 = call i8* @sdscatlen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !1014
  store i8* %call44, i8** %rendered, align 8, !dbg !1015
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1016
  %32 = load i8*, i8** %rendered, align 8, !dbg !1017
  %33 = load i8*, i8** %rendered, align 8, !dbg !1018
  %call45 = call i64 @sdslen(i8* %33), !dbg !1019
  call void @addReplyVerbatim(%struct.client* %31, i8* %32, i64 %call45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !1020
  %34 = load i8*, i8** %rendered, align 8, !dbg !1021
  call void @sdsfree(i8* %34), !dbg !1022
  %35 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !1023
  call void @lwFreeCanvas(%struct.lwCanvas* %35), !dbg !1024
  br label %return, !dbg !1025

return:                                           ; preds = %if.end37, %if.then18, %if.then9, %if.then
  ret void, !dbg !1025
}

declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @renderCanvas(%struct.lwCanvas* %canvas) #0 !dbg !1026 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %text = alloca i8*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %byte = alloca i32, align 4
  %unicode = alloca [3 x i8], align 1
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.declare(metadata i8** %text, metadata !1031, metadata !DIExpression()), !dbg !1032
  %call = call i8* @sdsempty(), !dbg !1033
  store i8* %call, i8** %text, align 8, !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1034, metadata !DIExpression()), !dbg !1036
  store i32 0, i32* %y, align 4, !dbg !1036
  br label %for.cond, !dbg !1037

for.cond:                                         ; preds = %for.inc57, %entry
  %0 = load i32, i32* %y, align 4, !dbg !1038
  %1 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1040
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %1, i32 0, i32 1, !dbg !1041
  %2 = load i32, i32* %height, align 4, !dbg !1041
  %cmp = icmp slt i32 %0, %2, !dbg !1042
  br i1 %cmp, label %for.body, label %for.end59, !dbg !1043

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1044, metadata !DIExpression()), !dbg !1047
  store i32 0, i32* %x, align 4, !dbg !1047
  br label %for.cond1, !dbg !1048

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4, !dbg !1049
  %4 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1051
  %width = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %4, i32 0, i32 0, !dbg !1052
  %5 = load i32, i32* %width, align 8, !dbg !1052
  %cmp2 = icmp slt i32 %3, %5, !dbg !1053
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1054

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !1055, metadata !DIExpression()), !dbg !1057
  store i32 0, i32* %byte, align 4, !dbg !1057
  %6 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1058
  %7 = load i32, i32* %x, align 4, !dbg !1060
  %8 = load i32, i32* %y, align 4, !dbg !1061
  %call4 = call i32 @lwGetPixel(%struct.lwCanvas* %6, i32 %7, i32 %8), !dbg !1062
  %tobool = icmp ne i32 %call4, 0, !dbg !1062
  br i1 %tobool, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %for.body3
  %9 = load i32, i32* %byte, align 4, !dbg !1064
  %or = or i32 %9, 1, !dbg !1064
  store i32 %or, i32* %byte, align 4, !dbg !1064
  br label %if.end, !dbg !1065

if.end:                                           ; preds = %if.then, %for.body3
  %10 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1066
  %11 = load i32, i32* %x, align 4, !dbg !1068
  %12 = load i32, i32* %y, align 4, !dbg !1069
  %add = add nsw i32 %12, 1, !dbg !1070
  %call5 = call i32 @lwGetPixel(%struct.lwCanvas* %10, i32 %11, i32 %add), !dbg !1071
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1071
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !1072

if.then7:                                         ; preds = %if.end
  %13 = load i32, i32* %byte, align 4, !dbg !1073
  %or8 = or i32 %13, 2, !dbg !1073
  store i32 %or8, i32* %byte, align 4, !dbg !1073
  br label %if.end9, !dbg !1074

if.end9:                                          ; preds = %if.then7, %if.end
  %14 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1075
  %15 = load i32, i32* %x, align 4, !dbg !1077
  %16 = load i32, i32* %y, align 4, !dbg !1078
  %add10 = add nsw i32 %16, 2, !dbg !1079
  %call11 = call i32 @lwGetPixel(%struct.lwCanvas* %14, i32 %15, i32 %add10), !dbg !1080
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1080
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !1081

if.then13:                                        ; preds = %if.end9
  %17 = load i32, i32* %byte, align 4, !dbg !1082
  %or14 = or i32 %17, 4, !dbg !1082
  store i32 %or14, i32* %byte, align 4, !dbg !1082
  br label %if.end15, !dbg !1083

if.end15:                                         ; preds = %if.then13, %if.end9
  %18 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1084
  %19 = load i32, i32* %x, align 4, !dbg !1086
  %add16 = add nsw i32 %19, 1, !dbg !1087
  %20 = load i32, i32* %y, align 4, !dbg !1088
  %call17 = call i32 @lwGetPixel(%struct.lwCanvas* %18, i32 %add16, i32 %20), !dbg !1089
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1089
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !1090

if.then19:                                        ; preds = %if.end15
  %21 = load i32, i32* %byte, align 4, !dbg !1091
  %or20 = or i32 %21, 8, !dbg !1091
  store i32 %or20, i32* %byte, align 4, !dbg !1091
  br label %if.end21, !dbg !1092

if.end21:                                         ; preds = %if.then19, %if.end15
  %22 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1093
  %23 = load i32, i32* %x, align 4, !dbg !1095
  %add22 = add nsw i32 %23, 1, !dbg !1096
  %24 = load i32, i32* %y, align 4, !dbg !1097
  %add23 = add nsw i32 %24, 1, !dbg !1098
  %call24 = call i32 @lwGetPixel(%struct.lwCanvas* %22, i32 %add22, i32 %add23), !dbg !1099
  %tobool25 = icmp ne i32 %call24, 0, !dbg !1099
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !1100

if.then26:                                        ; preds = %if.end21
  %25 = load i32, i32* %byte, align 4, !dbg !1101
  %or27 = or i32 %25, 16, !dbg !1101
  store i32 %or27, i32* %byte, align 4, !dbg !1101
  br label %if.end28, !dbg !1102

if.end28:                                         ; preds = %if.then26, %if.end21
  %26 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1103
  %27 = load i32, i32* %x, align 4, !dbg !1105
  %add29 = add nsw i32 %27, 1, !dbg !1106
  %28 = load i32, i32* %y, align 4, !dbg !1107
  %add30 = add nsw i32 %28, 2, !dbg !1108
  %call31 = call i32 @lwGetPixel(%struct.lwCanvas* %26, i32 %add29, i32 %add30), !dbg !1109
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1109
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !1110

if.then33:                                        ; preds = %if.end28
  %29 = load i32, i32* %byte, align 4, !dbg !1111
  %or34 = or i32 %29, 32, !dbg !1111
  store i32 %or34, i32* %byte, align 4, !dbg !1111
  br label %if.end35, !dbg !1112

if.end35:                                         ; preds = %if.then33, %if.end28
  %30 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1113
  %31 = load i32, i32* %x, align 4, !dbg !1115
  %32 = load i32, i32* %y, align 4, !dbg !1116
  %add36 = add nsw i32 %32, 3, !dbg !1117
  %call37 = call i32 @lwGetPixel(%struct.lwCanvas* %30, i32 %31, i32 %add36), !dbg !1118
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1118
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !1119

if.then39:                                        ; preds = %if.end35
  %33 = load i32, i32* %byte, align 4, !dbg !1120
  %or40 = or i32 %33, 64, !dbg !1120
  store i32 %or40, i32* %byte, align 4, !dbg !1120
  br label %if.end41, !dbg !1121

if.end41:                                         ; preds = %if.then39, %if.end35
  %34 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1122
  %35 = load i32, i32* %x, align 4, !dbg !1124
  %add42 = add nsw i32 %35, 1, !dbg !1125
  %36 = load i32, i32* %y, align 4, !dbg !1126
  %add43 = add nsw i32 %36, 3, !dbg !1127
  %call44 = call i32 @lwGetPixel(%struct.lwCanvas* %34, i32 %add42, i32 %add43), !dbg !1128
  %tobool45 = icmp ne i32 %call44, 0, !dbg !1128
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !1129

if.then46:                                        ; preds = %if.end41
  %37 = load i32, i32* %byte, align 4, !dbg !1130
  %or47 = or i32 %37, 128, !dbg !1130
  store i32 %or47, i32* %byte, align 4, !dbg !1130
  br label %if.end48, !dbg !1131

if.end48:                                         ; preds = %if.then46, %if.end41
  call void @llvm.dbg.declare(metadata [3 x i8]* %unicode, metadata !1132, metadata !DIExpression()), !dbg !1136
  %38 = load i32, i32* %byte, align 4, !dbg !1137
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %unicode, i64 0, i64 0, !dbg !1138
  call void @lwTranslatePixelsGroup(i32 %38, i8* %arraydecay), !dbg !1139
  %39 = load i8*, i8** %text, align 8, !dbg !1140
  %arraydecay49 = getelementptr inbounds [3 x i8], [3 x i8]* %unicode, i64 0, i64 0, !dbg !1141
  %call50 = call i8* @sdscatlen(i8* %39, i8* %arraydecay49, i64 3), !dbg !1142
  store i8* %call50, i8** %text, align 8, !dbg !1143
  br label %for.inc, !dbg !1144

for.inc:                                          ; preds = %if.end48
  %40 = load i32, i32* %x, align 4, !dbg !1145
  %add51 = add nsw i32 %40, 2, !dbg !1145
  store i32 %add51, i32* %x, align 4, !dbg !1145
  br label %for.cond1, !dbg !1146, !llvm.loop !1147

for.end:                                          ; preds = %for.cond1
  %41 = load i32, i32* %y, align 4, !dbg !1149
  %42 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1151
  %height52 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %42, i32 0, i32 1, !dbg !1152
  %43 = load i32, i32* %height52, align 4, !dbg !1152
  %sub = sub nsw i32 %43, 1, !dbg !1153
  %cmp53 = icmp ne i32 %41, %sub, !dbg !1154
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !1155

if.then54:                                        ; preds = %for.end
  %44 = load i8*, i8** %text, align 8, !dbg !1156
  %call55 = call i8* @sdscatlen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !1157
  store i8* %call55, i8** %text, align 8, !dbg !1158
  br label %if.end56, !dbg !1159

if.end56:                                         ; preds = %if.then54, %for.end
  br label %for.inc57, !dbg !1160

for.inc57:                                        ; preds = %if.end56
  %45 = load i32, i32* %y, align 4, !dbg !1161
  %add58 = add nsw i32 %45, 4, !dbg !1161
  store i32 %add58, i32* %y, align 4, !dbg !1161
  br label %for.cond, !dbg !1162, !llvm.loop !1163

for.end59:                                        ; preds = %for.cond
  %46 = load i8*, i8** %text, align 8, !dbg !1165
  ret i8* %46, !dbg !1166
}

declare dso_local i8* @sdscat(i8*, i8*) #2

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

declare dso_local void @addReplyVerbatim(%struct.client*, i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1167 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1173, metadata !DIExpression()), !dbg !1174
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1175
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1175
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1175
  store i8 %1, i8* %flags, align 1, !dbg !1174
  %2 = load i8, i8* %flags, align 1, !dbg !1176
  %conv = zext i8 %2 to i32, !dbg !1176
  %and = and i32 %conv, 7, !dbg !1177
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1178

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1179
  %conv1 = zext i8 %3 to i32, !dbg !1179
  %shr = ashr i32 %conv1, 3, !dbg !1179
  %conv2 = sext i32 %shr to i64, !dbg !1179
  store i64 %conv2, i64* %retval, align 8, !dbg !1181
  br label %return, !dbg !1181

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1182
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1182
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1183
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1183
  %6 = load i8, i8* %len, align 1, !dbg !1183
  %conv4 = zext i8 %6 to i64, !dbg !1182
  store i64 %conv4, i64* %retval, align 8, !dbg !1184
  br label %return, !dbg !1184

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1185
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1185
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1186
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1186
  %9 = load i16, i16* %len7, align 1, !dbg !1186
  %conv8 = zext i16 %9 to i64, !dbg !1185
  store i64 %conv8, i64* %retval, align 8, !dbg !1187
  br label %return, !dbg !1187

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1188
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1188
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1189
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1189
  %12 = load i32, i32* %len11, align 1, !dbg !1189
  %conv12 = zext i32 %12 to i64, !dbg !1188
  store i64 %conv12, i64* %retval, align 8, !dbg !1190
  br label %return, !dbg !1190

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1191
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1191
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1192
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1192
  %15 = load i64, i64* %len15, align 1, !dbg !1192
  store i64 %15, i64* %retval, align 8, !dbg !1193
  br label %return, !dbg !1193

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1194
  br label %return, !dbg !1194

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1195
  ret i64 %16, !dbg !1195
}

declare dso_local void @sdsfree(i8*) #2

declare dso_local void @lwFreeCanvas(%struct.lwCanvas*) #2

declare dso_local i8* @sdsempty() #2

declare dso_local i32 @lwGetPixel(%struct.lwCanvas*, i32, i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lolwut5.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{!3, !13, !34, !40, !46}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 42, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./connection.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!8 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!9 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!10 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!11 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!12 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 2116, baseType: !5, size: 32, elements: !15)
!14 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!16 = !DIEnumerator(name: "COMMAND_GROUP_GENERIC", value: 0)
!17 = !DIEnumerator(name: "COMMAND_GROUP_STRING", value: 1)
!18 = !DIEnumerator(name: "COMMAND_GROUP_LIST", value: 2)
!19 = !DIEnumerator(name: "COMMAND_GROUP_SET", value: 3)
!20 = !DIEnumerator(name: "COMMAND_GROUP_SORTED_SET", value: 4)
!21 = !DIEnumerator(name: "COMMAND_GROUP_HASH", value: 5)
!22 = !DIEnumerator(name: "COMMAND_GROUP_PUBSUB", value: 6)
!23 = !DIEnumerator(name: "COMMAND_GROUP_TRANSACTIONS", value: 7)
!24 = !DIEnumerator(name: "COMMAND_GROUP_CONNECTION", value: 8)
!25 = !DIEnumerator(name: "COMMAND_GROUP_SERVER", value: 9)
!26 = !DIEnumerator(name: "COMMAND_GROUP_SCRIPTING", value: 10)
!27 = !DIEnumerator(name: "COMMAND_GROUP_HYPERLOGLOG", value: 11)
!28 = !DIEnumerator(name: "COMMAND_GROUP_CLUSTER", value: 12)
!29 = !DIEnumerator(name: "COMMAND_GROUP_SENTINEL", value: 13)
!30 = !DIEnumerator(name: "COMMAND_GROUP_GEO", value: 14)
!31 = !DIEnumerator(name: "COMMAND_GROUP_STREAM", value: 15)
!32 = !DIEnumerator(name: "COMMAND_GROUP_BITMAP", value: 16)
!33 = !DIEnumerator(name: "COMMAND_GROUP_MODULE", value: 17)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1989, baseType: !5, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "KSPEC_BS_INVALID", value: 0)
!37 = !DIEnumerator(name: "KSPEC_BS_UNKNOWN", value: 1)
!38 = !DIEnumerator(name: "KSPEC_BS_INDEX", value: 2)
!39 = !DIEnumerator(name: "KSPEC_BS_KEYWORD", value: 3)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 1997, baseType: !5, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "KSPEC_FK_INVALID", value: 0)
!43 = !DIEnumerator(name: "KSPEC_FK_UNKNOWN", value: 1)
!44 = !DIEnumerator(name: "KSPEC_FK_RANGE", value: 2)
!45 = !DIEnumerator(name: "KSPEC_FK_KEYNUM", value: 3)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 2054, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56}
!48 = !DIEnumerator(name: "ARG_TYPE_STRING", value: 0)
!49 = !DIEnumerator(name: "ARG_TYPE_INTEGER", value: 1)
!50 = !DIEnumerator(name: "ARG_TYPE_DOUBLE", value: 2)
!51 = !DIEnumerator(name: "ARG_TYPE_KEY", value: 3)
!52 = !DIEnumerator(name: "ARG_TYPE_PATTERN", value: 4)
!53 = !DIEnumerator(name: "ARG_TYPE_UNIX_TIME", value: 5)
!54 = !DIEnumerator(name: "ARG_TYPE_PURE_TOKEN", value: 6)
!55 = !DIEnumerator(name: "ARG_TYPE_ONEOF", value: 7)
!56 = !DIEnumerator(name: "ARG_TYPE_BLOCK", value: 8)
!57 = !{!58, !59, !76, !86, !95}
!58 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !61, line: 51, size: 24, elements: !62)
!61 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!62 = !{!63, !69, !70, !71}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !61, line: 52, baseType: !64, size: 8)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 24, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 38, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !61, line: 53, baseType: !64, size: 8, offset: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !61, line: 54, baseType: !68, size: 8, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !60, file: !61, line: 55, baseType: !72, offset: 24)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !74)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !{!75}
!75 = !DISubrange(count: -1)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !61, line: 57, size: 40, elements: !78)
!78 = !{!79, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !61, line: 58, baseType: !80, size: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !65, line: 25, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !67, line: 40, baseType: !82)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !61, line: 59, baseType: !80, size: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !61, line: 60, baseType: !68, size: 8, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !77, file: !61, line: 61, baseType: !72, offset: 40)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !61, line: 63, size: 72, elements: !88)
!88 = !{!89, !92, !93, !94}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !61, line: 64, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 26, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 42, baseType: !5)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !61, line: 65, baseType: !90, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !61, line: 66, baseType: !68, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !61, line: 67, baseType: !72, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !61, line: 69, size: 136, elements: !97)
!97 = !{!98, !102, !103, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !96, file: !61, line: 70, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 27, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 45, baseType: !101)
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !96, file: !61, line: 71, baseType: !99, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !61, line: 72, baseType: !68, size: 8, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !96, file: !61, line: 73, baseType: !72, offset: 136)
!105 = !{i32 7, !"Dwarf Version", i32 4}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!111 = distinct !DISubprogram(name: "lwTranslatePixelsGroup", scope: !1, file: !1, line: 54, type: !112, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !115}
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!116 = !{}
!117 = !DILocalVariable(name: "byte", arg: 1, scope: !111, file: !1, line: 54, type: !114)
!118 = !DILocation(line: 54, column: 33, scope: !111)
!119 = !DILocalVariable(name: "output", arg: 2, scope: !111, file: !1, line: 54, type: !115)
!120 = !DILocation(line: 54, column: 45, scope: !111)
!121 = !DILocalVariable(name: "code", scope: !111, file: !1, line: 55, type: !114)
!122 = !DILocation(line: 55, column: 9, scope: !111)
!123 = !DILocation(line: 55, column: 25, scope: !111)
!124 = !DILocation(line: 55, column: 23, scope: !111)
!125 = !DILocation(line: 59, column: 25, scope: !111)
!126 = !DILocation(line: 59, column: 30, scope: !111)
!127 = !DILocation(line: 59, column: 22, scope: !111)
!128 = !DILocation(line: 59, column: 17, scope: !111)
!129 = !DILocation(line: 59, column: 5, scope: !111)
!130 = !DILocation(line: 59, column: 15, scope: !111)
!131 = !DILocation(line: 60, column: 26, scope: !111)
!132 = !DILocation(line: 60, column: 31, scope: !111)
!133 = !DILocation(line: 60, column: 37, scope: !111)
!134 = !DILocation(line: 60, column: 22, scope: !111)
!135 = !DILocation(line: 60, column: 17, scope: !111)
!136 = !DILocation(line: 60, column: 5, scope: !111)
!137 = !DILocation(line: 60, column: 15, scope: !111)
!138 = !DILocation(line: 61, column: 25, scope: !111)
!139 = !DILocation(line: 61, column: 30, scope: !111)
!140 = !DILocation(line: 61, column: 22, scope: !111)
!141 = !DILocation(line: 61, column: 17, scope: !111)
!142 = !DILocation(line: 61, column: 5, scope: !111)
!143 = !DILocation(line: 61, column: 15, scope: !111)
!144 = !DILocation(line: 62, column: 1, scope: !111)
!145 = distinct !DISubprogram(name: "lwDrawSchotter", scope: !1, file: !1, line: 71, type: !146, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !114, !114, !114}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwCanvas", file: !150, line: 45, baseType: !151)
!150 = !DIFile(filename: "./lolwut.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwCanvas", file: !150, line: 41, size: 128, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !151, file: !150, line: 42, baseType: !114, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !151, file: !150, line: 43, baseType: !114, size: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !151, file: !150, line: 44, baseType: !115, size: 64, offset: 64)
!156 = !DILocalVariable(name: "console_cols", arg: 1, scope: !145, file: !1, line: 71, type: !114)
!157 = !DILocation(line: 71, column: 30, scope: !145)
!158 = !DILocalVariable(name: "squares_per_row", arg: 2, scope: !145, file: !1, line: 71, type: !114)
!159 = !DILocation(line: 71, column: 48, scope: !145)
!160 = !DILocalVariable(name: "squares_per_col", arg: 3, scope: !145, file: !1, line: 71, type: !114)
!161 = !DILocation(line: 71, column: 69, scope: !145)
!162 = !DILocalVariable(name: "canvas_width", scope: !145, file: !1, line: 73, type: !114)
!163 = !DILocation(line: 73, column: 9, scope: !145)
!164 = !DILocation(line: 73, column: 24, scope: !145)
!165 = !DILocation(line: 73, column: 36, scope: !145)
!166 = !DILocalVariable(name: "padding", scope: !145, file: !1, line: 74, type: !114)
!167 = !DILocation(line: 74, column: 9, scope: !145)
!168 = !DILocation(line: 74, column: 19, scope: !145)
!169 = !DILocation(line: 74, column: 32, scope: !145)
!170 = !DILocalVariable(name: "square_side", scope: !145, file: !1, line: 75, type: !58)
!171 = !DILocation(line: 75, column: 11, scope: !145)
!172 = !DILocation(line: 75, column: 33, scope: !145)
!173 = !DILocation(line: 75, column: 46, scope: !145)
!174 = !DILocation(line: 75, column: 53, scope: !145)
!175 = !DILocation(line: 75, column: 45, scope: !145)
!176 = !DILocation(line: 75, column: 25, scope: !145)
!177 = !DILocation(line: 75, column: 59, scope: !145)
!178 = !DILocation(line: 75, column: 57, scope: !145)
!179 = !DILocalVariable(name: "canvas_height", scope: !145, file: !1, line: 76, type: !114)
!180 = !DILocation(line: 76, column: 9, scope: !145)
!181 = !DILocation(line: 76, column: 25, scope: !145)
!182 = !DILocation(line: 76, column: 39, scope: !145)
!183 = !DILocation(line: 76, column: 37, scope: !145)
!184 = !DILocation(line: 76, column: 57, scope: !145)
!185 = !DILocation(line: 76, column: 64, scope: !145)
!186 = !DILocation(line: 76, column: 55, scope: !145)
!187 = !DILocalVariable(name: "canvas", scope: !145, file: !1, line: 77, type: !148)
!188 = !DILocation(line: 77, column: 15, scope: !145)
!189 = !DILocation(line: 77, column: 39, scope: !145)
!190 = !DILocation(line: 77, column: 53, scope: !145)
!191 = !DILocation(line: 77, column: 24, scope: !145)
!192 = !DILocalVariable(name: "y", scope: !193, file: !1, line: 79, type: !114)
!193 = distinct !DILexicalBlock(scope: !145, file: !1, line: 79, column: 5)
!194 = !DILocation(line: 79, column: 14, scope: !193)
!195 = !DILocation(line: 79, column: 10, scope: !193)
!196 = !DILocation(line: 79, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 79, column: 5)
!198 = !DILocation(line: 79, column: 25, scope: !197)
!199 = !DILocation(line: 79, column: 23, scope: !197)
!200 = !DILocation(line: 79, column: 5, scope: !193)
!201 = !DILocalVariable(name: "x", scope: !202, file: !1, line: 80, type: !114)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 80, column: 9)
!203 = distinct !DILexicalBlock(scope: !197, file: !1, line: 79, column: 47)
!204 = !DILocation(line: 80, column: 18, scope: !202)
!205 = !DILocation(line: 80, column: 14, scope: !202)
!206 = !DILocation(line: 80, column: 25, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !1, line: 80, column: 9)
!208 = !DILocation(line: 80, column: 29, scope: !207)
!209 = !DILocation(line: 80, column: 27, scope: !207)
!210 = !DILocation(line: 80, column: 9, scope: !202)
!211 = !DILocalVariable(name: "sx", scope: !212, file: !1, line: 81, type: !114)
!212 = distinct !DILexicalBlock(scope: !207, file: !1, line: 80, column: 51)
!213 = !DILocation(line: 81, column: 17, scope: !212)
!214 = !DILocation(line: 81, column: 22, scope: !212)
!215 = !DILocation(line: 81, column: 26, scope: !212)
!216 = !DILocation(line: 81, column: 24, scope: !212)
!217 = !DILocation(line: 81, column: 40, scope: !212)
!218 = !DILocation(line: 81, column: 51, scope: !212)
!219 = !DILocation(line: 81, column: 38, scope: !212)
!220 = !DILocation(line: 81, column: 56, scope: !212)
!221 = !DILocation(line: 81, column: 54, scope: !212)
!222 = !DILocalVariable(name: "sy", scope: !212, file: !1, line: 82, type: !114)
!223 = !DILocation(line: 82, column: 17, scope: !212)
!224 = !DILocation(line: 82, column: 22, scope: !212)
!225 = !DILocation(line: 82, column: 26, scope: !212)
!226 = !DILocation(line: 82, column: 24, scope: !212)
!227 = !DILocation(line: 82, column: 40, scope: !212)
!228 = !DILocation(line: 82, column: 51, scope: !212)
!229 = !DILocation(line: 82, column: 38, scope: !212)
!230 = !DILocation(line: 82, column: 56, scope: !212)
!231 = !DILocation(line: 82, column: 54, scope: !212)
!232 = !DILocalVariable(name: "angle", scope: !212, file: !1, line: 85, type: !58)
!233 = !DILocation(line: 85, column: 19, scope: !212)
!234 = !DILocation(line: 86, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !212, file: !1, line: 86, column: 17)
!236 = !DILocation(line: 86, column: 19, scope: !235)
!237 = !DILocation(line: 86, column: 17, scope: !212)
!238 = !DILocalVariable(name: "r1", scope: !239, file: !1, line: 87, type: !58)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 86, column: 24)
!240 = !DILocation(line: 87, column: 23, scope: !239)
!241 = !DILocation(line: 87, column: 35, scope: !239)
!242 = !DILocation(line: 87, column: 28, scope: !239)
!243 = !DILocation(line: 87, column: 42, scope: !239)
!244 = !DILocation(line: 87, column: 63, scope: !239)
!245 = !DILocation(line: 87, column: 61, scope: !239)
!246 = !DILocation(line: 87, column: 81, scope: !239)
!247 = !DILocation(line: 87, column: 79, scope: !239)
!248 = !DILocalVariable(name: "r2", scope: !239, file: !1, line: 88, type: !58)
!249 = !DILocation(line: 88, column: 23, scope: !239)
!250 = !DILocation(line: 88, column: 35, scope: !239)
!251 = !DILocation(line: 88, column: 28, scope: !239)
!252 = !DILocation(line: 88, column: 42, scope: !239)
!253 = !DILocation(line: 88, column: 63, scope: !239)
!254 = !DILocation(line: 88, column: 61, scope: !239)
!255 = !DILocation(line: 88, column: 81, scope: !239)
!256 = !DILocation(line: 88, column: 79, scope: !239)
!257 = !DILocalVariable(name: "r3", scope: !239, file: !1, line: 89, type: !58)
!258 = !DILocation(line: 89, column: 23, scope: !239)
!259 = !DILocation(line: 89, column: 35, scope: !239)
!260 = !DILocation(line: 89, column: 28, scope: !239)
!261 = !DILocation(line: 89, column: 42, scope: !239)
!262 = !DILocation(line: 89, column: 63, scope: !239)
!263 = !DILocation(line: 89, column: 61, scope: !239)
!264 = !DILocation(line: 89, column: 81, scope: !239)
!265 = !DILocation(line: 89, column: 79, scope: !239)
!266 = !DILocation(line: 90, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !239, file: !1, line: 90, column: 21)
!268 = !DILocation(line: 90, column: 28, scope: !267)
!269 = !DILocation(line: 90, column: 21, scope: !239)
!270 = !DILocation(line: 90, column: 39, scope: !267)
!271 = !DILocation(line: 90, column: 38, scope: !267)
!272 = !DILocation(line: 90, column: 36, scope: !267)
!273 = !DILocation(line: 90, column: 33, scope: !267)
!274 = !DILocation(line: 91, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !239, file: !1, line: 91, column: 21)
!276 = !DILocation(line: 91, column: 28, scope: !275)
!277 = !DILocation(line: 91, column: 21, scope: !239)
!278 = !DILocation(line: 91, column: 39, scope: !275)
!279 = !DILocation(line: 91, column: 38, scope: !275)
!280 = !DILocation(line: 91, column: 36, scope: !275)
!281 = !DILocation(line: 91, column: 33, scope: !275)
!282 = !DILocation(line: 92, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !239, file: !1, line: 92, column: 21)
!284 = !DILocation(line: 92, column: 28, scope: !283)
!285 = !DILocation(line: 92, column: 21, scope: !239)
!286 = !DILocation(line: 92, column: 39, scope: !283)
!287 = !DILocation(line: 92, column: 38, scope: !283)
!288 = !DILocation(line: 92, column: 36, scope: !283)
!289 = !DILocation(line: 92, column: 33, scope: !283)
!290 = !DILocation(line: 93, column: 25, scope: !239)
!291 = !DILocation(line: 93, column: 23, scope: !239)
!292 = !DILocation(line: 94, column: 23, scope: !239)
!293 = !DILocation(line: 94, column: 26, scope: !239)
!294 = !DILocation(line: 94, column: 25, scope: !239)
!295 = !DILocation(line: 94, column: 37, scope: !239)
!296 = !DILocation(line: 94, column: 20, scope: !239)
!297 = !DILocation(line: 95, column: 23, scope: !239)
!298 = !DILocation(line: 95, column: 26, scope: !239)
!299 = !DILocation(line: 95, column: 25, scope: !239)
!300 = !DILocation(line: 95, column: 37, scope: !239)
!301 = !DILocation(line: 95, column: 20, scope: !239)
!302 = !DILocation(line: 96, column: 13, scope: !239)
!303 = !DILocation(line: 97, column: 26, scope: !212)
!304 = !DILocation(line: 97, column: 33, scope: !212)
!305 = !DILocation(line: 97, column: 36, scope: !212)
!306 = !DILocation(line: 97, column: 39, scope: !212)
!307 = !DILocation(line: 97, column: 51, scope: !212)
!308 = !DILocation(line: 97, column: 13, scope: !212)
!309 = !DILocation(line: 98, column: 9, scope: !212)
!310 = !DILocation(line: 80, column: 47, scope: !207)
!311 = !DILocation(line: 80, column: 9, scope: !207)
!312 = distinct !{!312, !210, !313, !314}
!313 = !DILocation(line: 98, column: 9, scope: !202)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !DILocation(line: 99, column: 5, scope: !203)
!316 = !DILocation(line: 79, column: 43, scope: !197)
!317 = !DILocation(line: 79, column: 5, scope: !197)
!318 = distinct !{!318, !200, !319, !314}
!319 = !DILocation(line: 99, column: 5, scope: !193)
!320 = !DILocation(line: 101, column: 12, scope: !145)
!321 = !DILocation(line: 101, column: 5, scope: !145)
!322 = distinct !DISubprogram(name: "lolwut5Command", scope: !1, file: !1, line: 140, type: !323, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !328)
!328 = !{!329, !330, !331, !482, !483, !599, !609, !611, !612, !613, !614, !616, !617, !618, !619, !620, !769, !770, !771, !781, !782, !783, !784, !785, !787, !788, !789, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !819, !820, !821, !822, !823, !841, !842, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !878, !879, !880, !881, !900, !901, !902, !903, !910, !911, !912, !913, !914, !915, !916}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !327, file: !14, line: 1090, baseType: !99, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !14, line: 1091, baseType: !99, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !327, file: !14, line: 1092, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !335)
!335 = !{!336, !471, !473, !475, !476, !477, !478, !479, !480, !481}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !4, line: 78, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !340)
!340 = !{!341, !405, !416, !424, !435, !439, !440, !444, !448, !449, !453, !457, !465, !466, !467}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !339, file: !4, line: 60, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345, !114, !364, !114}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !347, line: 99, size: 640, elements: !348)
!347 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!348 = !{!349, !350, !351, !353, !365, !372, !396, !397, !398, !403, !404}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !346, file: !347, line: 100, baseType: !114, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !346, file: !347, line: 101, baseType: !114, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !346, file: !347, line: 102, baseType: !352, size: 64, offset: 64)
!352 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !346, file: !347, line: 103, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !347, line: 77, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !347, line: 72, size: 256, elements: !357)
!357 = !{!358, !359, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !356, file: !347, line: 73, baseType: !114, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !356, file: !347, line: 74, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !347, line: 66, baseType: !343)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !356, file: !347, line: 75, baseType: !360, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !356, file: !347, line: 76, baseType: !364, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !346, file: !347, line: 104, baseType: !366, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !347, line: 96, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !347, line: 93, size: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !368, file: !347, line: 94, baseType: !114, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !368, file: !347, line: 95, baseType: !114, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !346, file: !347, line: 105, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !347, line: 90, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !347, line: 80, size: 512, elements: !376)
!376 = !{!377, !378, !381, !386, !391, !392, !394, !395}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !375, file: !347, line: 81, baseType: !352, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !375, file: !347, line: 82, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !380, line: 22, baseType: !99)
!380 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!381 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !375, file: !347, line: 83, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !347, line: 67, baseType: !384)
!384 = !DISubroutineType(types: !385)
!385 = !{!114, !345, !352, !364}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !375, file: !347, line: 84, baseType: !387, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !347, line: 68, baseType: !389)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !345, !364}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !375, file: !347, line: 85, baseType: !364, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !347, line: 86, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !347, line: 87, baseType: !393, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !375, file: !347, line: 88, baseType: !114, size: 32, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !346, file: !347, line: 106, baseType: !114, size: 32, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !346, file: !347, line: 107, baseType: !364, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !346, file: !347, line: 108, baseType: !399, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !347, line: 69, baseType: !401)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !345}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !346, file: !347, line: 109, baseType: !399, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !347, line: 110, baseType: !114, size: 32, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !339, file: !4, line: 61, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!114, !409, !410, !114, !410, !412}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !409}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !339, file: !4, line: 62, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!114, !409, !420, !422}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !423, line: 46, baseType: !101)
!423 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !339, file: !4, line: 63, baseType: !425, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!114, !409, !428, !114}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !431, line: 26, size: 128, elements: !432)
!431 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !430, file: !431, line: 28, baseType: !364, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !430, file: !431, line: 29, baseType: !422, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !339, file: !4, line: 64, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!114, !409, !364, !422}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !339, file: !4, line: 65, baseType: !413, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !339, file: !4, line: 66, baseType: !441, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!114, !409, !412}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !339, file: !4, line: 67, baseType: !445, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!114, !409, !412, !114}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !339, file: !4, line: 68, baseType: !441, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !339, file: !4, line: 69, baseType: !450, size: 64, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!410, !409}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !339, file: !4, line: 70, baseType: !454, size: 64, offset: 640)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!114, !409, !410, !114, !352}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !339, file: !4, line: 71, baseType: !458, size: 64, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !409, !115, !461, !352}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !462, line: 108, baseType: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !67, line: 194, baseType: !464)
!464 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !339, file: !4, line: 72, baseType: !458, size: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !339, file: !4, line: 73, baseType: !458, size: 64, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !339, file: !4, line: 74, baseType: !468, size: 64, offset: 896)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!114, !409}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !4, line: 79, baseType: !472, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !4, line: 80, baseType: !474, size: 16, offset: 96)
!474 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !334, file: !4, line: 81, baseType: !474, size: 16, offset: 112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !334, file: !4, line: 82, baseType: !114, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !334, file: !4, line: 83, baseType: !364, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !334, file: !4, line: 84, baseType: !412, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !334, file: !4, line: 85, baseType: !412, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !334, file: !4, line: 86, baseType: !412, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !334, file: !4, line: 87, baseType: !114, size: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !327, file: !14, line: 1093, baseType: !114, size: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !327, file: !14, line: 1094, baseType: !484, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !487)
!487 = !{!488, !559, !560, !561, !562, !563, !564, !565, !566, !595}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !486, file: !14, line: 923, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !491, line: 61, baseType: !492)
!491 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !491, line: 79, size: 448, elements: !493)
!493 = !{!494, !526, !550, !552, !553, !556}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !491, line: 80, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !491, line: 74, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !491, line: 63, size: 512, elements: !498)
!498 = !{!499, !503, !507, !508, !512, !516, !517, !522}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !497, file: !491, line: 64, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!99, !420}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !497, file: !491, line: 65, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!364, !489, !420}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !497, file: !491, line: 66, baseType: !504, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !497, file: !491, line: 67, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!114, !489, !420, !420}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !497, file: !491, line: 68, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !489, !364}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !497, file: !491, line: 69, baseType: !513, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !497, file: !491, line: 70, baseType: !518, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!114, !422, !521}
!521 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !497, file: !491, line: 73, baseType: !523, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!422, !489}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !492, file: !491, line: 82, baseType: !527, size: 128, offset: 64)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 128, elements: !548)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !491, line: 59, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !491, line: 47, size: 192, elements: !532)
!532 = !{!533, !534, !544, !546}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !531, file: !491, line: 48, baseType: !364, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !531, file: !491, line: 54, baseType: !535, size: 64, offset: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !491, line: 49, size: 64, elements: !536)
!536 = !{!537, !538, !539, !543}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !535, file: !491, line: 50, baseType: !364, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !535, file: !491, line: 51, baseType: !99, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !535, file: !491, line: 52, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !541, line: 27, baseType: !542)
!541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 44, baseType: !464)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !535, file: !491, line: 53, baseType: !521, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !491, line: 55, baseType: !545, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !531, file: !491, line: 56, baseType: !547, offset: 192)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !74)
!548 = !{!549}
!549 = !DISubrange(count: 2)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !492, file: !491, line: 83, baseType: !551, size: 128, offset: 192)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !548)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !492, file: !491, line: 85, baseType: !464, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !492, file: !491, line: 88, baseType: !554, size: 16, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !541, line: 25, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !67, line: 39, baseType: !474)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !492, file: !491, line: 89, baseType: !557, size: 16, offset: 400)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 16, elements: !548)
!558 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !486, file: !14, line: 924, baseType: !489, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !486, file: !14, line: 925, baseType: !489, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !486, file: !14, line: 926, baseType: !489, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !486, file: !14, line: 927, baseType: !489, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !486, file: !14, line: 928, baseType: !114, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !486, file: !14, line: 929, baseType: !352, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !486, file: !14, line: 930, baseType: !101, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !486, file: !14, line: 931, baseType: !567, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !569, line: 54, baseType: !570)
!569 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !569, line: 47, size: 384, elements: !571)
!571 = !{!572, !581, !582, !586, !590, !594}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !570, file: !569, line: 48, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !569, line: 40, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !569, line: 36, size: 192, elements: !576)
!576 = !{!577, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !575, file: !569, line: 37, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !569, line: 38, baseType: !578, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !575, file: !569, line: 39, baseType: !364, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !570, file: !569, line: 49, baseType: !573, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !570, file: !569, line: 50, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!364, !364}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !570, file: !569, line: 51, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !364}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !570, file: !569, line: 52, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!114, !364, !364}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !570, file: !569, line: 53, baseType: !101, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !486, file: !14, line: 932, baseType: !596, size: 64, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !598)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !14, line: 1095, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !603)
!603 = !{!604, !605, !606, !607, !608}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !602, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !602, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !602, file: !14, line: 860, baseType: !114, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !602, file: !14, line: 861, baseType: !364, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !327, file: !14, line: 1096, baseType: !610, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !61, line: 43, baseType: !115)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !327, file: !14, line: 1097, baseType: !422, size: 64, offset: 448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !327, file: !14, line: 1098, baseType: !422, size: 64, offset: 512)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !327, file: !14, line: 1099, baseType: !114, size: 32, offset: 576)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !327, file: !14, line: 1100, baseType: !615, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !327, file: !14, line: 1101, baseType: !114, size: 32, offset: 704)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !327, file: !14, line: 1102, baseType: !114, size: 32, offset: 736)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !327, file: !14, line: 1103, baseType: !615, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !327, file: !14, line: 1104, baseType: !422, size: 64, offset: 832)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !327, file: !14, line: 1105, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !633, !640, !642, !645, !646, !647, !648, !688, !710, !711, !726, !727, !728, !729, !730, !731, !732, !756, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !622, file: !14, line: 2235, baseType: !410, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !622, file: !14, line: 2237, baseType: !410, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !622, file: !14, line: 2238, baseType: !410, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !622, file: !14, line: 2239, baseType: !410, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !622, file: !14, line: 2240, baseType: !114, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !622, file: !14, line: 2241, baseType: !410, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !622, file: !14, line: 2242, baseType: !410, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !622, file: !14, line: 2243, baseType: !632, size: 32, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !622, file: !14, line: 2244, baseType: !634, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !636, file: !14, line: 2111, baseType: !410, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !636, file: !14, line: 2112, baseType: !410, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !622, file: !14, line: 2245, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !622, file: !14, line: 2246, baseType: !643, size: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !323)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !622, file: !14, line: 2247, baseType: !114, size: 32, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !14, line: 2248, baseType: !99, size: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !622, file: !14, line: 2249, baseType: !99, size: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !622, file: !14, line: 2250, baseType: !649, size: 1792, offset: 896)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 1792, elements: !686)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !652)
!652 = !{!653, !654, !655, !657, !669, !671}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !651, file: !14, line: 2006, baseType: !410, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !14, line: 2007, baseType: !99, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !651, file: !14, line: 2008, baseType: !656, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !651, file: !14, line: 2022, baseType: !658, size: 128, offset: 192)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !14, line: 2009, size: 128, elements: !659)
!659 = !{!660, !664}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !658, file: !14, line: 2013, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !14, line: 2010, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !661, file: !14, line: 2012, baseType: !114, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !658, file: !14, line: 2021, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !14, line: 2014, size: 128, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !665, file: !14, line: 2016, baseType: !410, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !665, file: !14, line: 2020, baseType: !114, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !651, file: !14, line: 2023, baseType: !670, size: 32, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !651, file: !14, line: 2047, baseType: !672, size: 96, offset: 352)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !14, line: 2024, size: 96, elements: !673)
!673 = !{!674, !680}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !672, file: !14, line: 2037, baseType: !675, size: 96)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !14, line: 2027, size: 96, elements: !676)
!676 = !{!677, !678, !679}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !675, file: !14, line: 2031, baseType: !114, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !675, file: !14, line: 2033, baseType: !114, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !675, file: !14, line: 2036, baseType: !114, size: 32, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !672, file: !14, line: 2046, baseType: !681, size: 96)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !14, line: 2038, size: 96, elements: !682)
!682 = !{!683, !684, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !681, file: !14, line: 2040, baseType: !114, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !681, file: !14, line: 2043, baseType: !114, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !681, file: !14, line: 2045, baseType: !114, size: 32, offset: 64)
!686 = !{!687}
!687 = !DISubrange(count: 4)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !622, file: !14, line: 2253, baseType: !689, size: 64, offset: 2688)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !691)
!691 = !DISubroutineType(types: !692)
!692 = !{!114, !621, !615, !114, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !696)
!696 = !{!697, !706, !708, !709}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !695, file: !14, line: 1962, baseType: !698, size: 16384)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !699, size: 16384, elements: !704)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !701)
!701 = !{!702, !703}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !700, file: !14, line: 1952, baseType: !114, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !14, line: 1953, baseType: !114, size: 32, offset: 32)
!704 = !{!705}
!705 = !DISubrange(count: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !695, file: !14, line: 1963, baseType: !707, size: 64, offset: 16384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !695, file: !14, line: 1964, baseType: !114, size: 32, offset: 16448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !695, file: !14, line: 1965, baseType: !114, size: 32, offset: 16480)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !622, file: !14, line: 2255, baseType: !621, size: 64, offset: 2752)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !622, file: !14, line: 2257, baseType: !712, size: 64, offset: 2816)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !714)
!714 = !{!715, !716, !718, !719, !720, !721, !722, !723, !724, !725}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !713, file: !14, line: 2072, baseType: !410, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !14, line: 2073, baseType: !717, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !713, file: !14, line: 2074, baseType: !114, size: 32, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !713, file: !14, line: 2075, baseType: !410, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !713, file: !14, line: 2076, baseType: !410, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !713, file: !14, line: 2077, baseType: !410, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !14, line: 2078, baseType: !114, size: 32, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !713, file: !14, line: 2079, baseType: !410, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !713, file: !14, line: 2080, baseType: !712, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !713, file: !14, line: 2082, baseType: !114, size: 32, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !622, file: !14, line: 2260, baseType: !352, size: 64, offset: 2880)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !622, file: !14, line: 2260, baseType: !352, size: 64, offset: 2944)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !622, file: !14, line: 2260, baseType: !352, size: 64, offset: 3008)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !622, file: !14, line: 2260, baseType: !352, size: 64, offset: 3072)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !622, file: !14, line: 2261, baseType: !114, size: 32, offset: 3136)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !622, file: !14, line: 2266, baseType: !610, size: 64, offset: 3200)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !622, file: !14, line: 2267, baseType: !733, size: 64, offset: 3264)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !735, line: 17, size: 832, elements: !736)
!735 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!736 = !{!737, !738, !739, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !734, file: !735, line: 19, baseType: !540, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !734, file: !735, line: 20, baseType: !540, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !734, file: !735, line: 21, baseType: !740, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !541, line: 26, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !67, line: 41, baseType: !114)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !734, file: !735, line: 22, baseType: !740, size: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !734, file: !735, line: 23, baseType: !740, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !734, file: !735, line: 24, baseType: !740, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !734, file: !735, line: 25, baseType: !540, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !734, file: !735, line: 26, baseType: !740, size: 32, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !734, file: !735, line: 27, baseType: !740, size: 32, offset: 352)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !734, file: !735, line: 28, baseType: !540, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !734, file: !735, line: 29, baseType: !540, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !734, file: !735, line: 30, baseType: !740, size: 32, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !734, file: !735, line: 31, baseType: !521, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !734, file: !735, line: 32, baseType: !740, size: 32, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !734, file: !735, line: 33, baseType: !540, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !734, file: !735, line: 34, baseType: !755, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !622, file: !14, line: 2268, baseType: !757, size: 64, offset: 3328)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !622, file: !14, line: 2269, baseType: !650, size: 448, offset: 3392)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !622, file: !14, line: 2273, baseType: !114, size: 32, offset: 3840)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !622, file: !14, line: 2274, baseType: !114, size: 32, offset: 3872)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !622, file: !14, line: 2275, baseType: !114, size: 32, offset: 3904)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !622, file: !14, line: 2276, baseType: !114, size: 32, offset: 3936)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !622, file: !14, line: 2277, baseType: !114, size: 32, offset: 3968)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !622, file: !14, line: 2278, baseType: !489, size: 64, offset: 4032)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !622, file: !14, line: 2280, baseType: !621, size: 64, offset: 4096)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !622, file: !14, line: 2281, baseType: !767, size: 64, offset: 4160)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !327, file: !14, line: 1105, baseType: !621, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !327, file: !14, line: 1106, baseType: !621, size: 64, offset: 1024)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !327, file: !14, line: 1109, baseType: !772, size: 64, offset: 1088)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !775)
!775 = !{!776, !777, !778, !779, !780}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !774, file: !14, line: 1050, baseType: !610, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !14, line: 1051, baseType: !90, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !774, file: !14, line: 1052, baseType: !567, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !774, file: !14, line: 1053, baseType: !567, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !774, file: !14, line: 1056, baseType: !600, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !327, file: !14, line: 1112, baseType: !114, size: 32, offset: 1152)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !327, file: !14, line: 1113, baseType: !114, size: 32, offset: 1184)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !327, file: !14, line: 1114, baseType: !464, size: 64, offset: 1216)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !327, file: !14, line: 1115, baseType: !567, size: 64, offset: 1280)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !327, file: !14, line: 1116, baseType: !786, size: 64, offset: 1344)
!786 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !327, file: !14, line: 1117, baseType: !567, size: 64, offset: 1408)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !327, file: !14, line: 1118, baseType: !422, size: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !327, file: !14, line: 1120, baseType: !790, size: 64, offset: 1536)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !791, line: 10, baseType: !792)
!791 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !67, line: 160, baseType: !464)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !327, file: !14, line: 1121, baseType: !464, size: 64, offset: 1600)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !327, file: !14, line: 1122, baseType: !114, size: 32, offset: 1664)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !327, file: !14, line: 1123, baseType: !529, size: 64, offset: 1728)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !327, file: !14, line: 1124, baseType: !790, size: 64, offset: 1792)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !327, file: !14, line: 1125, baseType: !790, size: 64, offset: 1856)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !327, file: !14, line: 1126, baseType: !114, size: 32, offset: 1920)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !327, file: !14, line: 1127, baseType: !114, size: 32, offset: 1952)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !327, file: !14, line: 1128, baseType: !114, size: 32, offset: 1984)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !327, file: !14, line: 1129, baseType: !114, size: 32, offset: 2016)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !327, file: !14, line: 1130, baseType: !803, size: 64, offset: 2048)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !804, line: 58, baseType: !805)
!804 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !464)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !327, file: !14, line: 1131, baseType: !803, size: 64, offset: 2112)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !327, file: !14, line: 1132, baseType: !610, size: 64, offset: 2176)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !327, file: !14, line: 1133, baseType: !352, size: 64, offset: 2240)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !327, file: !14, line: 1134, baseType: !352, size: 64, offset: 2304)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !327, file: !14, line: 1135, baseType: !352, size: 64, offset: 2368)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !327, file: !14, line: 1136, baseType: !352, size: 64, offset: 2432)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !327, file: !14, line: 1137, baseType: !352, size: 64, offset: 2496)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !327, file: !14, line: 1138, baseType: !352, size: 64, offset: 2560)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !327, file: !14, line: 1139, baseType: !352, size: 64, offset: 2624)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !327, file: !14, line: 1142, baseType: !816, size: 328, offset: 2688)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 328, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 41)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !327, file: !14, line: 1143, baseType: !114, size: 32, offset: 3040)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !327, file: !14, line: 1144, baseType: !115, size: 64, offset: 3072)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !327, file: !14, line: 1145, baseType: !114, size: 32, offset: 3136)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !327, file: !14, line: 1146, baseType: !114, size: 32, offset: 3168)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !327, file: !14, line: 1147, baseType: !824, size: 320, offset: 3200)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !826)
!826 = !{!827, !836, !837, !838, !839, !840}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !825, file: !14, line: 957, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !831)
!831 = !{!832, !833, !834, !835}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !830, file: !14, line: 950, baseType: !615, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !830, file: !14, line: 951, baseType: !114, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !830, file: !14, line: 952, baseType: !114, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !830, file: !14, line: 953, baseType: !621, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !825, file: !14, line: 958, baseType: !114, size: 32, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !825, file: !14, line: 959, baseType: !114, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !825, file: !14, line: 962, baseType: !114, size: 32, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !825, file: !14, line: 965, baseType: !422, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !825, file: !14, line: 966, baseType: !114, size: 32, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !327, file: !14, line: 1148, baseType: !114, size: 32, offset: 3520)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !327, file: !14, line: 1149, baseType: !843, size: 704, offset: 3584)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !845)
!845 = !{!846, !847, !849, !850, !851, !856, !857, !858, !859, !860, !861, !862}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !844, file: !14, line: 973, baseType: !464, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !844, file: !14, line: 974, baseType: !848, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !352)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !844, file: !14, line: 978, baseType: !489, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !844, file: !14, line: 980, baseType: !600, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !844, file: !14, line: 985, baseType: !852, size: 64, offset: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !852, file: !14, line: 983, baseType: !114, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !852, file: !14, line: 984, baseType: !114, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !844, file: !14, line: 990, baseType: !422, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !844, file: !14, line: 991, baseType: !600, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !844, file: !14, line: 992, baseType: !600, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !844, file: !14, line: 993, baseType: !114, size: 32, offset: 512)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !844, file: !14, line: 996, baseType: !114, size: 32, offset: 544)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !844, file: !14, line: 997, baseType: !352, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !844, file: !14, line: 1000, baseType: !364, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !327, file: !14, line: 1150, baseType: !352, size: 64, offset: 4288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !327, file: !14, line: 1151, baseType: !567, size: 64, offset: 4352)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !327, file: !14, line: 1152, baseType: !489, size: 64, offset: 4416)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !327, file: !14, line: 1153, baseType: !567, size: 64, offset: 4480)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !327, file: !14, line: 1154, baseType: !489, size: 64, offset: 4544)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !327, file: !14, line: 1155, baseType: !610, size: 64, offset: 4608)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !327, file: !14, line: 1156, baseType: !610, size: 64, offset: 4672)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !327, file: !14, line: 1157, baseType: !573, size: 64, offset: 4736)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !327, file: !14, line: 1158, baseType: !573, size: 64, offset: 4800)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !327, file: !14, line: 1159, baseType: !573, size: 64, offset: 4864)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !327, file: !14, line: 1160, baseType: !874, size: 64, offset: 4928)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !99, !364}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !327, file: !14, line: 1163, baseType: !364, size: 64, offset: 4992)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !327, file: !14, line: 1166, baseType: !364, size: 64, offset: 5056)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !327, file: !14, line: 1173, baseType: !99, size: 64, offset: 5120)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !327, file: !14, line: 1174, baseType: !882, size: 64, offset: 5184)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !884, line: 137, baseType: !885)
!884 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !884, line: 133, size: 192, elements: !886)
!886 = !{!887, !898, !899}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !885, file: !884, line: 134, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !884, line: 131, baseType: !890)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !884, line: 98, size: 32, elements: !891)
!891 = !{!892, !893, !894, !895, !896}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !890, file: !884, line: 99, baseType: !90, size: 1, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !890, file: !884, line: 100, baseType: !90, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !890, file: !884, line: 101, baseType: !90, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !890, file: !884, line: 102, baseType: !90, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !890, file: !884, line: 130, baseType: !897, offset: 32)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, elements: !74)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !885, file: !884, line: 135, baseType: !99, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !885, file: !884, line: 136, baseType: !99, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !327, file: !14, line: 1182, baseType: !422, size: 64, offset: 5248)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !327, file: !14, line: 1183, baseType: !114, size: 32, offset: 5312)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !327, file: !14, line: 1185, baseType: !573, size: 64, offset: 5376)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !327, file: !14, line: 1186, baseType: !904, size: 64, offset: 5440)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !906)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !906, file: !14, line: 1085, baseType: !567, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !906, file: !14, line: 1086, baseType: !422, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !327, file: !14, line: 1188, baseType: !573, size: 64, offset: 5504)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !327, file: !14, line: 1190, baseType: !422, size: 64, offset: 5568)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !327, file: !14, line: 1194, baseType: !422, size: 64, offset: 5632)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !327, file: !14, line: 1195, baseType: !848, size: 64, offset: 5696)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !327, file: !14, line: 1196, baseType: !114, size: 32, offset: 5760)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !327, file: !14, line: 1197, baseType: !422, size: 64, offset: 5824)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !327, file: !14, line: 1198, baseType: !115, size: 64, offset: 5888)
!917 = !DILocalVariable(name: "c", arg: 1, scope: !322, file: !1, line: 140, type: !325)
!918 = !DILocation(line: 140, column: 29, scope: !322)
!919 = !DILocalVariable(name: "cols", scope: !322, file: !1, line: 141, type: !464)
!920 = !DILocation(line: 141, column: 10, scope: !322)
!921 = !DILocalVariable(name: "squares_per_row", scope: !322, file: !1, line: 142, type: !464)
!922 = !DILocation(line: 142, column: 10, scope: !322)
!923 = !DILocalVariable(name: "squares_per_col", scope: !322, file: !1, line: 143, type: !464)
!924 = !DILocation(line: 143, column: 10, scope: !322)
!925 = !DILocation(line: 146, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !322, file: !1, line: 146, column: 9)
!927 = !DILocation(line: 146, column: 12, scope: !926)
!928 = !DILocation(line: 146, column: 17, scope: !926)
!929 = !DILocation(line: 146, column: 21, scope: !926)
!930 = !DILocation(line: 147, column: 34, scope: !926)
!931 = !DILocation(line: 147, column: 36, scope: !926)
!932 = !DILocation(line: 147, column: 39, scope: !926)
!933 = !DILocation(line: 147, column: 9, scope: !926)
!934 = !DILocation(line: 147, column: 59, scope: !926)
!935 = !DILocation(line: 146, column: 9, scope: !322)
!936 = !DILocation(line: 148, column: 9, scope: !926)
!937 = !DILocation(line: 150, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !322, file: !1, line: 150, column: 9)
!939 = !DILocation(line: 150, column: 12, scope: !938)
!940 = !DILocation(line: 150, column: 17, scope: !938)
!941 = !DILocation(line: 150, column: 21, scope: !938)
!942 = !DILocation(line: 151, column: 34, scope: !938)
!943 = !DILocation(line: 151, column: 36, scope: !938)
!944 = !DILocation(line: 151, column: 39, scope: !938)
!945 = !DILocation(line: 151, column: 9, scope: !938)
!946 = !DILocation(line: 151, column: 70, scope: !938)
!947 = !DILocation(line: 150, column: 9, scope: !322)
!948 = !DILocation(line: 152, column: 9, scope: !938)
!949 = !DILocation(line: 154, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !322, file: !1, line: 154, column: 9)
!951 = !DILocation(line: 154, column: 12, scope: !950)
!952 = !DILocation(line: 154, column: 17, scope: !950)
!953 = !DILocation(line: 154, column: 21, scope: !950)
!954 = !DILocation(line: 155, column: 34, scope: !950)
!955 = !DILocation(line: 155, column: 36, scope: !950)
!956 = !DILocation(line: 155, column: 39, scope: !950)
!957 = !DILocation(line: 155, column: 9, scope: !950)
!958 = !DILocation(line: 155, column: 70, scope: !950)
!959 = !DILocation(line: 154, column: 9, scope: !322)
!960 = !DILocation(line: 156, column: 9, scope: !950)
!961 = !DILocation(line: 160, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !322, file: !1, line: 160, column: 9)
!963 = !DILocation(line: 160, column: 14, scope: !962)
!964 = !DILocation(line: 160, column: 9, scope: !322)
!965 = !DILocation(line: 160, column: 24, scope: !962)
!966 = !DILocation(line: 160, column: 19, scope: !962)
!967 = !DILocation(line: 161, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !322, file: !1, line: 161, column: 9)
!969 = !DILocation(line: 161, column: 14, scope: !968)
!970 = !DILocation(line: 161, column: 9, scope: !322)
!971 = !DILocation(line: 161, column: 27, scope: !968)
!972 = !DILocation(line: 161, column: 22, scope: !968)
!973 = !DILocation(line: 162, column: 9, scope: !974)
!974 = distinct !DILexicalBlock(scope: !322, file: !1, line: 162, column: 9)
!975 = !DILocation(line: 162, column: 25, scope: !974)
!976 = !DILocation(line: 162, column: 9, scope: !322)
!977 = !DILocation(line: 162, column: 46, scope: !974)
!978 = !DILocation(line: 162, column: 30, scope: !974)
!979 = !DILocation(line: 163, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !322, file: !1, line: 163, column: 9)
!981 = !DILocation(line: 163, column: 25, scope: !980)
!982 = !DILocation(line: 163, column: 9, scope: !322)
!983 = !DILocation(line: 163, column: 48, scope: !980)
!984 = !DILocation(line: 163, column: 32, scope: !980)
!985 = !DILocation(line: 164, column: 9, scope: !986)
!986 = distinct !DILexicalBlock(scope: !322, file: !1, line: 164, column: 9)
!987 = !DILocation(line: 164, column: 25, scope: !986)
!988 = !DILocation(line: 164, column: 9, scope: !322)
!989 = !DILocation(line: 164, column: 46, scope: !986)
!990 = !DILocation(line: 164, column: 30, scope: !986)
!991 = !DILocation(line: 165, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !322, file: !1, line: 165, column: 9)
!993 = !DILocation(line: 165, column: 25, scope: !992)
!994 = !DILocation(line: 165, column: 9, scope: !322)
!995 = !DILocation(line: 165, column: 48, scope: !992)
!996 = !DILocation(line: 165, column: 32, scope: !992)
!997 = !DILocalVariable(name: "canvas", scope: !322, file: !1, line: 168, type: !148)
!998 = !DILocation(line: 168, column: 15, scope: !322)
!999 = !DILocation(line: 168, column: 39, scope: !322)
!1000 = !DILocation(line: 168, column: 44, scope: !322)
!1001 = !DILocation(line: 168, column: 60, scope: !322)
!1002 = !DILocation(line: 168, column: 24, scope: !322)
!1003 = !DILocalVariable(name: "rendered", scope: !322, file: !1, line: 169, type: !610)
!1004 = !DILocation(line: 169, column: 9, scope: !322)
!1005 = !DILocation(line: 169, column: 33, scope: !322)
!1006 = !DILocation(line: 169, column: 20, scope: !322)
!1007 = !DILocation(line: 170, column: 23, scope: !322)
!1008 = !DILocation(line: 170, column: 16, scope: !322)
!1009 = !DILocation(line: 170, column: 14, scope: !322)
!1010 = !DILocation(line: 172, column: 23, scope: !322)
!1011 = !DILocation(line: 172, column: 16, scope: !322)
!1012 = !DILocation(line: 172, column: 14, scope: !322)
!1013 = !DILocation(line: 173, column: 26, scope: !322)
!1014 = !DILocation(line: 173, column: 16, scope: !322)
!1015 = !DILocation(line: 173, column: 14, scope: !322)
!1016 = !DILocation(line: 174, column: 22, scope: !322)
!1017 = !DILocation(line: 174, column: 24, scope: !322)
!1018 = !DILocation(line: 174, column: 40, scope: !322)
!1019 = !DILocation(line: 174, column: 33, scope: !322)
!1020 = !DILocation(line: 174, column: 5, scope: !322)
!1021 = !DILocation(line: 175, column: 13, scope: !322)
!1022 = !DILocation(line: 175, column: 5, scope: !322)
!1023 = !DILocation(line: 176, column: 18, scope: !322)
!1024 = !DILocation(line: 176, column: 5, scope: !322)
!1025 = !DILocation(line: 177, column: 1, scope: !322)
!1026 = distinct !DISubprogram(name: "renderCanvas", scope: !1, file: !1, line: 109, type: !1027, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!610, !148}
!1029 = !DILocalVariable(name: "canvas", arg: 1, scope: !1026, file: !1, line: 109, type: !148)
!1030 = !DILocation(line: 109, column: 35, scope: !1026)
!1031 = !DILocalVariable(name: "text", scope: !1026, file: !1, line: 110, type: !610)
!1032 = !DILocation(line: 110, column: 9, scope: !1026)
!1033 = !DILocation(line: 110, column: 16, scope: !1026)
!1034 = !DILocalVariable(name: "y", scope: !1035, file: !1, line: 111, type: !114)
!1035 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 111, column: 5)
!1036 = !DILocation(line: 111, column: 14, scope: !1035)
!1037 = !DILocation(line: 111, column: 10, scope: !1035)
!1038 = !DILocation(line: 111, column: 21, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 111, column: 5)
!1040 = !DILocation(line: 111, column: 25, scope: !1039)
!1041 = !DILocation(line: 111, column: 33, scope: !1039)
!1042 = !DILocation(line: 111, column: 23, scope: !1039)
!1043 = !DILocation(line: 111, column: 5, scope: !1035)
!1044 = !DILocalVariable(name: "x", scope: !1045, file: !1, line: 112, type: !114)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 112, column: 9)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 111, column: 49)
!1047 = !DILocation(line: 112, column: 18, scope: !1045)
!1048 = !DILocation(line: 112, column: 14, scope: !1045)
!1049 = !DILocation(line: 112, column: 25, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 112, column: 9)
!1051 = !DILocation(line: 112, column: 29, scope: !1050)
!1052 = !DILocation(line: 112, column: 37, scope: !1050)
!1053 = !DILocation(line: 112, column: 27, scope: !1050)
!1054 = !DILocation(line: 112, column: 9, scope: !1045)
!1055 = !DILocalVariable(name: "byte", scope: !1056, file: !1, line: 115, type: !114)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 112, column: 52)
!1057 = !DILocation(line: 115, column: 17, scope: !1056)
!1058 = !DILocation(line: 116, column: 28, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 116, column: 17)
!1060 = !DILocation(line: 116, column: 35, scope: !1059)
!1061 = !DILocation(line: 116, column: 37, scope: !1059)
!1062 = !DILocation(line: 116, column: 17, scope: !1059)
!1063 = !DILocation(line: 116, column: 17, scope: !1056)
!1064 = !DILocation(line: 116, column: 46, scope: !1059)
!1065 = !DILocation(line: 116, column: 41, scope: !1059)
!1066 = !DILocation(line: 117, column: 28, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 117, column: 17)
!1068 = !DILocation(line: 117, column: 35, scope: !1067)
!1069 = !DILocation(line: 117, column: 37, scope: !1067)
!1070 = !DILocation(line: 117, column: 38, scope: !1067)
!1071 = !DILocation(line: 117, column: 17, scope: !1067)
!1072 = !DILocation(line: 117, column: 17, scope: !1056)
!1073 = !DILocation(line: 117, column: 48, scope: !1067)
!1074 = !DILocation(line: 117, column: 43, scope: !1067)
!1075 = !DILocation(line: 118, column: 28, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 118, column: 17)
!1077 = !DILocation(line: 118, column: 35, scope: !1076)
!1078 = !DILocation(line: 118, column: 37, scope: !1076)
!1079 = !DILocation(line: 118, column: 38, scope: !1076)
!1080 = !DILocation(line: 118, column: 17, scope: !1076)
!1081 = !DILocation(line: 118, column: 17, scope: !1056)
!1082 = !DILocation(line: 118, column: 48, scope: !1076)
!1083 = !DILocation(line: 118, column: 43, scope: !1076)
!1084 = !DILocation(line: 119, column: 28, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 119, column: 17)
!1086 = !DILocation(line: 119, column: 35, scope: !1085)
!1087 = !DILocation(line: 119, column: 36, scope: !1085)
!1088 = !DILocation(line: 119, column: 39, scope: !1085)
!1089 = !DILocation(line: 119, column: 17, scope: !1085)
!1090 = !DILocation(line: 119, column: 17, scope: !1056)
!1091 = !DILocation(line: 119, column: 48, scope: !1085)
!1092 = !DILocation(line: 119, column: 43, scope: !1085)
!1093 = !DILocation(line: 120, column: 28, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 120, column: 17)
!1095 = !DILocation(line: 120, column: 35, scope: !1094)
!1096 = !DILocation(line: 120, column: 36, scope: !1094)
!1097 = !DILocation(line: 120, column: 39, scope: !1094)
!1098 = !DILocation(line: 120, column: 40, scope: !1094)
!1099 = !DILocation(line: 120, column: 17, scope: !1094)
!1100 = !DILocation(line: 120, column: 17, scope: !1056)
!1101 = !DILocation(line: 120, column: 50, scope: !1094)
!1102 = !DILocation(line: 120, column: 45, scope: !1094)
!1103 = !DILocation(line: 121, column: 28, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 121, column: 17)
!1105 = !DILocation(line: 121, column: 35, scope: !1104)
!1106 = !DILocation(line: 121, column: 36, scope: !1104)
!1107 = !DILocation(line: 121, column: 39, scope: !1104)
!1108 = !DILocation(line: 121, column: 40, scope: !1104)
!1109 = !DILocation(line: 121, column: 17, scope: !1104)
!1110 = !DILocation(line: 121, column: 17, scope: !1056)
!1111 = !DILocation(line: 121, column: 50, scope: !1104)
!1112 = !DILocation(line: 121, column: 45, scope: !1104)
!1113 = !DILocation(line: 122, column: 28, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 122, column: 17)
!1115 = !DILocation(line: 122, column: 35, scope: !1114)
!1116 = !DILocation(line: 122, column: 37, scope: !1114)
!1117 = !DILocation(line: 122, column: 38, scope: !1114)
!1118 = !DILocation(line: 122, column: 17, scope: !1114)
!1119 = !DILocation(line: 122, column: 17, scope: !1056)
!1120 = !DILocation(line: 122, column: 48, scope: !1114)
!1121 = !DILocation(line: 122, column: 43, scope: !1114)
!1122 = !DILocation(line: 123, column: 28, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 123, column: 17)
!1124 = !DILocation(line: 123, column: 35, scope: !1123)
!1125 = !DILocation(line: 123, column: 36, scope: !1123)
!1126 = !DILocation(line: 123, column: 39, scope: !1123)
!1127 = !DILocation(line: 123, column: 40, scope: !1123)
!1128 = !DILocation(line: 123, column: 17, scope: !1123)
!1129 = !DILocation(line: 123, column: 17, scope: !1056)
!1130 = !DILocation(line: 123, column: 50, scope: !1123)
!1131 = !DILocation(line: 123, column: 45, scope: !1123)
!1132 = !DILocalVariable(name: "unicode", scope: !1056, file: !1, line: 124, type: !1133)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 24, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 3)
!1136 = !DILocation(line: 124, column: 18, scope: !1056)
!1137 = !DILocation(line: 125, column: 36, scope: !1056)
!1138 = !DILocation(line: 125, column: 41, scope: !1056)
!1139 = !DILocation(line: 125, column: 13, scope: !1056)
!1140 = !DILocation(line: 126, column: 30, scope: !1056)
!1141 = !DILocation(line: 126, column: 35, scope: !1056)
!1142 = !DILocation(line: 126, column: 20, scope: !1056)
!1143 = !DILocation(line: 126, column: 18, scope: !1056)
!1144 = !DILocation(line: 127, column: 9, scope: !1056)
!1145 = !DILocation(line: 112, column: 46, scope: !1050)
!1146 = !DILocation(line: 112, column: 9, scope: !1050)
!1147 = distinct !{!1147, !1054, !1148, !314}
!1148 = !DILocation(line: 127, column: 9, scope: !1045)
!1149 = !DILocation(line: 128, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 128, column: 13)
!1151 = !DILocation(line: 128, column: 18, scope: !1150)
!1152 = !DILocation(line: 128, column: 26, scope: !1150)
!1153 = !DILocation(line: 128, column: 32, scope: !1150)
!1154 = !DILocation(line: 128, column: 15, scope: !1150)
!1155 = !DILocation(line: 128, column: 13, scope: !1046)
!1156 = !DILocation(line: 128, column: 53, scope: !1150)
!1157 = !DILocation(line: 128, column: 43, scope: !1150)
!1158 = !DILocation(line: 128, column: 41, scope: !1150)
!1159 = !DILocation(line: 128, column: 36, scope: !1150)
!1160 = !DILocation(line: 129, column: 5, scope: !1046)
!1161 = !DILocation(line: 111, column: 43, scope: !1039)
!1162 = !DILocation(line: 111, column: 5, scope: !1039)
!1163 = distinct !{!1163, !1043, !1164, !314}
!1164 = !DILocation(line: 129, column: 5, scope: !1035)
!1165 = !DILocation(line: 130, column: 12, scope: !1026)
!1166 = !DILocation(line: 130, column: 5, scope: !1026)
!1167 = distinct !DISubprogram(name: "sdslen", scope: !61, file: !61, line: 87, type: !1168, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!422, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!1171 = !DILocalVariable(name: "s", arg: 1, scope: !1167, file: !61, line: 87, type: !1170)
!1172 = !DILocation(line: 87, column: 39, scope: !1167)
!1173 = !DILocalVariable(name: "flags", scope: !1167, file: !61, line: 88, type: !68)
!1174 = !DILocation(line: 88, column: 19, scope: !1167)
!1175 = !DILocation(line: 88, column: 27, scope: !1167)
!1176 = !DILocation(line: 89, column: 12, scope: !1167)
!1177 = !DILocation(line: 89, column: 17, scope: !1167)
!1178 = !DILocation(line: 89, column: 5, scope: !1167)
!1179 = !DILocation(line: 91, column: 20, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !61, line: 89, column: 33)
!1181 = !DILocation(line: 91, column: 13, scope: !1180)
!1182 = !DILocation(line: 93, column: 20, scope: !1180)
!1183 = !DILocation(line: 93, column: 34, scope: !1180)
!1184 = !DILocation(line: 93, column: 13, scope: !1180)
!1185 = !DILocation(line: 95, column: 20, scope: !1180)
!1186 = !DILocation(line: 95, column: 35, scope: !1180)
!1187 = !DILocation(line: 95, column: 13, scope: !1180)
!1188 = !DILocation(line: 97, column: 20, scope: !1180)
!1189 = !DILocation(line: 97, column: 35, scope: !1180)
!1190 = !DILocation(line: 97, column: 13, scope: !1180)
!1191 = !DILocation(line: 99, column: 20, scope: !1180)
!1192 = !DILocation(line: 99, column: 35, scope: !1180)
!1193 = !DILocation(line: 99, column: 13, scope: !1180)
!1194 = !DILocation(line: 101, column: 5, scope: !1167)
!1195 = !DILocation(line: 102, column: 1, scope: !1167)
