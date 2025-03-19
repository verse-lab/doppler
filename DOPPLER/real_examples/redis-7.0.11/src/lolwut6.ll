; ModuleID = 'lolwut6.c'
source_filename = "lolwut6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lwCanvas = type { i32, i32, i8* }
%struct.skyscraper = type { i32, i32, i32, i32, i32 }
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

@.str = private unnamed_addr constant [124 x i8] c"\0ADedicated to the 8 bit game developers of past and present.\0AOriginal 8 bit image from Plaguemon by hikikomori. Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"7.0.11\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"0;30;40m\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0;90;100m\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0;37;47m\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"0;97;107m\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\1B[%s \1B[0m\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generateSkyscraper(%struct.lwCanvas* %canvas, %struct.skyscraper* %si) #0 !dbg !110 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %si.addr = alloca %struct.skyscraper*, align 8
  %starty = alloca i32, align 4
  %endy = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %color = alloca i32, align 4
  %relx = alloca i32, align 4
  %rely = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !132, metadata !DIExpression()), !dbg !133
  store %struct.skyscraper* %si, %struct.skyscraper** %si.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.skyscraper** %si.addr, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %starty, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !138
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i32 0, i32 1, !dbg !139
  %1 = load i32, i32* %height, align 4, !dbg !139
  %sub = sub nsw i32 %1, 1, !dbg !140
  store i32 %sub, i32* %starty, align 4, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %endy, metadata !141, metadata !DIExpression()), !dbg !142
  %2 = load i32, i32* %starty, align 4, !dbg !143
  %3 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !144
  %height1 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %3, i32 0, i32 2, !dbg !145
  %4 = load i32, i32* %height1, align 4, !dbg !145
  %sub2 = sub nsw i32 %2, %4, !dbg !146
  %add = add nsw i32 %sub2, 1, !dbg !147
  store i32 %add, i32* %endy, align 4, !dbg !142
  call void @llvm.dbg.declare(metadata i32* %y, metadata !148, metadata !DIExpression()), !dbg !150
  %5 = load i32, i32* %starty, align 4, !dbg !151
  store i32 %5, i32* %y, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc57, %entry
  %6 = load i32, i32* %y, align 4, !dbg !153
  %7 = load i32, i32* %endy, align 4, !dbg !155
  %cmp = icmp sge i32 %6, %7, !dbg !156
  br i1 %cmp, label %for.body, label %for.end58, !dbg !157

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %x, metadata !158, metadata !DIExpression()), !dbg !161
  %8 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !162
  %xoff = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %8, i32 0, i32 0, !dbg !163
  %9 = load i32, i32* %xoff, align 4, !dbg !163
  store i32 %9, i32* %x, align 4, !dbg !161
  br label %for.cond3, !dbg !164

for.cond3:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %x, align 4, !dbg !165
  %11 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !167
  %xoff4 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %11, i32 0, i32 0, !dbg !168
  %12 = load i32, i32* %xoff4, align 4, !dbg !168
  %13 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !169
  %width = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %13, i32 0, i32 1, !dbg !170
  %14 = load i32, i32* %width, align 4, !dbg !170
  %add5 = add nsw i32 %12, %14, !dbg !171
  %cmp6 = icmp slt i32 %10, %add5, !dbg !172
  br i1 %cmp6, label %for.body7, label %for.end, !dbg !173

for.body7:                                        ; preds = %for.cond3
  %15 = load i32, i32* %y, align 4, !dbg !174
  %16 = load i32, i32* %endy, align 4, !dbg !177
  %cmp8 = icmp eq i32 %15, %16, !dbg !178
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !179

land.lhs.true:                                    ; preds = %for.body7
  %17 = load i32, i32* %x, align 4, !dbg !180
  %18 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !181
  %xoff9 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %18, i32 0, i32 0, !dbg !182
  %19 = load i32, i32* %xoff9, align 4, !dbg !182
  %add10 = add nsw i32 %19, 1, !dbg !183
  %cmp11 = icmp sle i32 %17, %add10, !dbg !184
  br i1 %cmp11, label %if.then, label %lor.lhs.false, !dbg !185

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = load i32, i32* %x, align 4, !dbg !186
  %21 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !187
  %xoff12 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %21, i32 0, i32 0, !dbg !188
  %22 = load i32, i32* %xoff12, align 4, !dbg !188
  %23 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !189
  %width13 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %23, i32 0, i32 1, !dbg !190
  %24 = load i32, i32* %width13, align 4, !dbg !190
  %add14 = add nsw i32 %22, %24, !dbg !191
  %sub15 = sub nsw i32 %add14, 2, !dbg !192
  %cmp16 = icmp sge i32 %20, %sub15, !dbg !193
  br i1 %cmp16, label %if.then, label %if.end, !dbg !194

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.inc, !dbg !195

if.end:                                           ; preds = %lor.lhs.false, %for.body7
  call void @llvm.dbg.declare(metadata i32* %color, metadata !196, metadata !DIExpression()), !dbg !197
  %25 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !198
  %color17 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %25, i32 0, i32 4, !dbg !199
  %26 = load i32, i32* %color17, align 4, !dbg !199
  store i32 %26, i32* %color, align 4, !dbg !197
  %27 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !200
  %windows = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %27, i32 0, i32 3, !dbg !202
  %28 = load i32, i32* %windows, align 4, !dbg !202
  %tobool = icmp ne i32 %28, 0, !dbg !200
  br i1 %tobool, label %land.lhs.true18, label %if.end56, !dbg !203

land.lhs.true18:                                  ; preds = %if.end
  %29 = load i32, i32* %x, align 4, !dbg !204
  %30 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !205
  %xoff19 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %30, i32 0, i32 0, !dbg !206
  %31 = load i32, i32* %xoff19, align 4, !dbg !206
  %add20 = add nsw i32 %31, 1, !dbg !207
  %cmp21 = icmp sgt i32 %29, %add20, !dbg !208
  br i1 %cmp21, label %land.lhs.true22, label %if.end56, !dbg !209

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %32 = load i32, i32* %x, align 4, !dbg !210
  %33 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !211
  %xoff23 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %33, i32 0, i32 0, !dbg !212
  %34 = load i32, i32* %xoff23, align 4, !dbg !212
  %35 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !213
  %width24 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %35, i32 0, i32 1, !dbg !214
  %36 = load i32, i32* %width24, align 4, !dbg !214
  %add25 = add nsw i32 %34, %36, !dbg !215
  %sub26 = sub nsw i32 %add25, 2, !dbg !216
  %cmp27 = icmp slt i32 %32, %sub26, !dbg !217
  br i1 %cmp27, label %land.lhs.true28, label %if.end56, !dbg !218

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %37 = load i32, i32* %y, align 4, !dbg !219
  %38 = load i32, i32* %endy, align 4, !dbg !220
  %add29 = add nsw i32 %38, 1, !dbg !221
  %cmp30 = icmp sgt i32 %37, %add29, !dbg !222
  br i1 %cmp30, label %land.lhs.true31, label %if.end56, !dbg !223

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %39 = load i32, i32* %y, align 4, !dbg !224
  %40 = load i32, i32* %starty, align 4, !dbg !225
  %sub32 = sub nsw i32 %40, 1, !dbg !226
  %cmp33 = icmp slt i32 %39, %sub32, !dbg !227
  br i1 %cmp33, label %if.then34, label %if.end56, !dbg !228

if.then34:                                        ; preds = %land.lhs.true31
  call void @llvm.dbg.declare(metadata i32* %relx, metadata !229, metadata !DIExpression()), !dbg !231
  %41 = load i32, i32* %x, align 4, !dbg !232
  %42 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !233
  %xoff35 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %42, i32 0, i32 0, !dbg !234
  %43 = load i32, i32* %xoff35, align 4, !dbg !234
  %add36 = add nsw i32 %43, 1, !dbg !235
  %sub37 = sub nsw i32 %41, %add36, !dbg !236
  store i32 %sub37, i32* %relx, align 4, !dbg !231
  call void @llvm.dbg.declare(metadata i32* %rely, metadata !237, metadata !DIExpression()), !dbg !238
  %44 = load i32, i32* %y, align 4, !dbg !239
  %45 = load i32, i32* %endy, align 4, !dbg !240
  %add38 = add nsw i32 %45, 1, !dbg !241
  %sub39 = sub nsw i32 %44, %add38, !dbg !242
  store i32 %sub39, i32* %rely, align 4, !dbg !238
  %46 = load i32, i32* %relx, align 4, !dbg !243
  %div = sdiv i32 %46, 2, !dbg !245
  %rem = srem i32 %div, 2, !dbg !246
  %tobool40 = icmp ne i32 %rem, 0, !dbg !246
  br i1 %tobool40, label %land.lhs.true41, label %if.end55, !dbg !247

land.lhs.true41:                                  ; preds = %if.then34
  %47 = load i32, i32* %rely, align 4, !dbg !248
  %rem42 = srem i32 %47, 2, !dbg !249
  %tobool43 = icmp ne i32 %rem42, 0, !dbg !249
  br i1 %tobool43, label %if.then44, label %if.end55, !dbg !250

if.then44:                                        ; preds = %land.lhs.true41
  br label %do.body, !dbg !251

do.body:                                          ; preds = %do.cond, %if.then44
  %call = call i32 @rand() #4, !dbg !253
  %rem45 = srem i32 %call, 2, !dbg !255
  %add46 = add nsw i32 1, %rem45, !dbg !256
  store i32 %add46, i32* %color, align 4, !dbg !257
  br label %do.cond, !dbg !258

do.cond:                                          ; preds = %do.body
  %48 = load i32, i32* %color, align 4, !dbg !259
  %49 = load %struct.skyscraper*, %struct.skyscraper** %si.addr, align 8, !dbg !260
  %color47 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %49, i32 0, i32 4, !dbg !261
  %50 = load i32, i32* %color47, align 4, !dbg !261
  %cmp48 = icmp eq i32 %48, %50, !dbg !262
  br i1 %cmp48, label %do.body, label %do.end, !dbg !258, !llvm.loop !263

do.end:                                           ; preds = %do.cond
  %51 = load i32, i32* %relx, align 4, !dbg !266
  %rem49 = srem i32 %51, 2, !dbg !268
  %tobool50 = icmp ne i32 %rem49, 0, !dbg !268
  br i1 %tobool50, label %if.then51, label %if.end54, !dbg !269

if.then51:                                        ; preds = %do.end
  %52 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !270
  %53 = load i32, i32* %x, align 4, !dbg !271
  %sub52 = sub nsw i32 %53, 1, !dbg !272
  %54 = load i32, i32* %y, align 4, !dbg !273
  %call53 = call i32 @lwGetPixel(%struct.lwCanvas* %52, i32 %sub52, i32 %54), !dbg !274
  store i32 %call53, i32* %color, align 4, !dbg !275
  br label %if.end54, !dbg !276

if.end54:                                         ; preds = %if.then51, %do.end
  br label %if.end55, !dbg !277

if.end55:                                         ; preds = %if.end54, %land.lhs.true41, %if.then34
  br label %if.end56, !dbg !278

if.end56:                                         ; preds = %if.end55, %land.lhs.true31, %land.lhs.true28, %land.lhs.true22, %land.lhs.true18, %if.end
  %55 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !279
  %56 = load i32, i32* %x, align 4, !dbg !280
  %57 = load i32, i32* %y, align 4, !dbg !281
  %58 = load i32, i32* %color, align 4, !dbg !282
  call void @lwDrawPixel(%struct.lwCanvas* %55, i32 %56, i32 %57, i32 %58), !dbg !283
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %if.end56, %if.then
  %59 = load i32, i32* %x, align 4, !dbg !285
  %inc = add nsw i32 %59, 1, !dbg !285
  store i32 %inc, i32* %x, align 4, !dbg !285
  br label %for.cond3, !dbg !286, !llvm.loop !287

for.end:                                          ; preds = %for.cond3
  br label %for.inc57, !dbg !289

for.inc57:                                        ; preds = %for.end
  %60 = load i32, i32* %y, align 4, !dbg !290
  %dec = add nsw i32 %60, -1, !dbg !290
  store i32 %dec, i32* %y, align 4, !dbg !290
  br label %for.cond, !dbg !291, !llvm.loop !292

for.end58:                                        ; preds = %for.cond
  ret void, !dbg !294
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @lwGetPixel(%struct.lwCanvas*, i32, i32) #3

declare dso_local void @lwDrawPixel(%struct.lwCanvas*, i32, i32, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @generateSkyline(%struct.lwCanvas* %canvas) #0 !dbg !295 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %si = alloca %struct.skyscraper, align 4
  %color = alloca i32, align 4
  %offset = alloca i32, align 4
  %offset36 = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata %struct.skyscraper* %si, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %color, metadata !302, metadata !DIExpression()), !dbg !304
  store i32 2, i32* %color, align 4, !dbg !304
  br label %for.cond, !dbg !305

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %color, align 4, !dbg !306
  %cmp = icmp sge i32 %0, 1, !dbg !308
  br i1 %cmp, label %for.body, label %for.end34, !dbg !309

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %color, align 4, !dbg !310
  %color1 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 4, !dbg !312
  store i32 %1, i32* %color1, align 4, !dbg !313
  call void @llvm.dbg.declare(metadata i32* %offset, metadata !314, metadata !DIExpression()), !dbg !316
  store i32 -10, i32* %offset, align 4, !dbg !316
  br label %for.cond2, !dbg !317

for.cond2:                                        ; preds = %if.end33, %for.body
  %2 = load i32, i32* %offset, align 4, !dbg !318
  %3 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !320
  %width = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %3, i32 0, i32 0, !dbg !321
  %4 = load i32, i32* %width, align 8, !dbg !321
  %cmp3 = icmp slt i32 %2, %4, !dbg !322
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !323

for.body4:                                        ; preds = %for.cond2
  %call = call i32 @rand() #4, !dbg !324
  %rem = srem i32 %call, 8, !dbg !326
  %5 = load i32, i32* %offset, align 4, !dbg !327
  %add = add nsw i32 %5, %rem, !dbg !327
  store i32 %add, i32* %offset, align 4, !dbg !327
  %6 = load i32, i32* %offset, align 4, !dbg !328
  %xoff = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 0, !dbg !329
  store i32 %6, i32* %xoff, align 4, !dbg !330
  %call5 = call i32 @rand() #4, !dbg !331
  %rem6 = srem i32 %call5, 9, !dbg !332
  %add7 = add nsw i32 10, %rem6, !dbg !333
  %width8 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !334
  store i32 %add7, i32* %width8, align 4, !dbg !335
  %7 = load i32, i32* %color, align 4, !dbg !336
  %cmp9 = icmp eq i32 %7, 2, !dbg !338
  br i1 %cmp9, label %if.then, label %if.else, !dbg !339

if.then:                                          ; preds = %for.body4
  %8 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !340
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %8, i32 0, i32 1, !dbg !341
  %9 = load i32, i32* %height, align 4, !dbg !341
  %div = sdiv i32 %9, 2, !dbg !342
  %call10 = call i32 @rand() #4, !dbg !343
  %10 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !344
  %height11 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %10, i32 0, i32 1, !dbg !345
  %11 = load i32, i32* %height11, align 4, !dbg !345
  %rem12 = srem i32 %call10, %11, !dbg !346
  %div13 = sdiv i32 %rem12, 2, !dbg !347
  %add14 = add nsw i32 %div, %div13, !dbg !348
  %height15 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 2, !dbg !349
  store i32 %add14, i32* %height15, align 4, !dbg !350
  br label %if.end, !dbg !351

if.else:                                          ; preds = %for.body4
  %12 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !352
  %height16 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %12, i32 0, i32 1, !dbg !353
  %13 = load i32, i32* %height16, align 4, !dbg !353
  %div17 = sdiv i32 %13, 2, !dbg !354
  %call18 = call i32 @rand() #4, !dbg !355
  %14 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !356
  %height19 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %14, i32 0, i32 1, !dbg !357
  %15 = load i32, i32* %height19, align 4, !dbg !357
  %rem20 = srem i32 %call18, %15, !dbg !358
  %div21 = sdiv i32 %rem20, 3, !dbg !359
  %add22 = add nsw i32 %div17, %div21, !dbg !360
  %height23 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 2, !dbg !361
  store i32 %add22, i32* %height23, align 4, !dbg !362
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %windows = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 3, !dbg !363
  store i32 0, i32* %windows, align 4, !dbg !364
  %16 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !365
  call void @generateSkyscraper(%struct.lwCanvas* %16, %struct.skyscraper* %si), !dbg !366
  %17 = load i32, i32* %color, align 4, !dbg !367
  %cmp24 = icmp eq i32 %17, 2, !dbg !369
  br i1 %cmp24, label %if.then25, label %if.else29, !dbg !370

if.then25:                                        ; preds = %if.end
  %width26 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !371
  %18 = load i32, i32* %width26, align 4, !dbg !371
  %div27 = sdiv i32 %18, 2, !dbg !372
  %19 = load i32, i32* %offset, align 4, !dbg !373
  %add28 = add nsw i32 %19, %div27, !dbg !373
  store i32 %add28, i32* %offset, align 4, !dbg !373
  br label %if.end33, !dbg !374

if.else29:                                        ; preds = %if.end
  %width30 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !375
  %20 = load i32, i32* %width30, align 4, !dbg !375
  %add31 = add nsw i32 %20, 1, !dbg !376
  %21 = load i32, i32* %offset, align 4, !dbg !377
  %add32 = add nsw i32 %21, %add31, !dbg !377
  store i32 %add32, i32* %offset, align 4, !dbg !377
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then25
  br label %for.cond2, !dbg !378, !llvm.loop !379

for.end:                                          ; preds = %for.cond2
  br label %for.inc, !dbg !381

for.inc:                                          ; preds = %for.end
  %22 = load i32, i32* %color, align 4, !dbg !382
  %dec = add nsw i32 %22, -1, !dbg !382
  store i32 %dec, i32* %color, align 4, !dbg !382
  br label %for.cond, !dbg !383, !llvm.loop !384

for.end34:                                        ; preds = %for.cond
  %color35 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 4, !dbg !386
  store i32 0, i32* %color35, align 4, !dbg !387
  call void @llvm.dbg.declare(metadata i32* %offset36, metadata !388, metadata !DIExpression()), !dbg !390
  store i32 -10, i32* %offset36, align 4, !dbg !390
  br label %for.cond37, !dbg !391

for.cond37:                                       ; preds = %if.end56, %for.end34
  %23 = load i32, i32* %offset36, align 4, !dbg !392
  %24 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !394
  %width38 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %24, i32 0, i32 0, !dbg !395
  %25 = load i32, i32* %width38, align 8, !dbg !395
  %cmp39 = icmp slt i32 %23, %25, !dbg !396
  br i1 %cmp39, label %for.body40, label %for.end69, !dbg !397

for.body40:                                       ; preds = %for.cond37
  %call41 = call i32 @rand() #4, !dbg !398
  %rem42 = srem i32 %call41, 8, !dbg !400
  %26 = load i32, i32* %offset36, align 4, !dbg !401
  %add43 = add nsw i32 %26, %rem42, !dbg !401
  store i32 %add43, i32* %offset36, align 4, !dbg !401
  %27 = load i32, i32* %offset36, align 4, !dbg !402
  %xoff44 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 0, !dbg !403
  store i32 %27, i32* %xoff44, align 4, !dbg !404
  %call45 = call i32 @rand() #4, !dbg !405
  %rem46 = srem i32 %call45, 14, !dbg !406
  %add47 = add nsw i32 5, %rem46, !dbg !407
  %width48 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !408
  store i32 %add47, i32* %width48, align 4, !dbg !409
  %width49 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !410
  %28 = load i32, i32* %width49, align 4, !dbg !410
  %rem50 = srem i32 %28, 4, !dbg !412
  %tobool = icmp ne i32 %rem50, 0, !dbg !412
  br i1 %tobool, label %if.then51, label %if.end56, !dbg !413

if.then51:                                        ; preds = %for.body40
  %width52 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !414
  %29 = load i32, i32* %width52, align 4, !dbg !414
  %rem53 = srem i32 %29, 3, !dbg !415
  %width54 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !416
  %30 = load i32, i32* %width54, align 4, !dbg !417
  %add55 = add nsw i32 %30, %rem53, !dbg !417
  store i32 %add55, i32* %width54, align 4, !dbg !417
  br label %if.end56, !dbg !418

if.end56:                                         ; preds = %if.then51, %for.body40
  %31 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !419
  %height57 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %31, i32 0, i32 1, !dbg !420
  %32 = load i32, i32* %height57, align 4, !dbg !420
  %div58 = sdiv i32 %32, 3, !dbg !421
  %call59 = call i32 @rand() #4, !dbg !422
  %33 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !423
  %height60 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %33, i32 0, i32 1, !dbg !424
  %34 = load i32, i32* %height60, align 4, !dbg !424
  %rem61 = srem i32 %call59, %34, !dbg !425
  %div62 = sdiv i32 %rem61, 2, !dbg !426
  %add63 = add nsw i32 %div58, %div62, !dbg !427
  %height64 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 2, !dbg !428
  store i32 %add63, i32* %height64, align 4, !dbg !429
  %windows65 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 3, !dbg !430
  store i32 1, i32* %windows65, align 4, !dbg !431
  %35 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !432
  call void @generateSkyscraper(%struct.lwCanvas* %35, %struct.skyscraper* %si), !dbg !433
  %width66 = getelementptr inbounds %struct.skyscraper, %struct.skyscraper* %si, i32 0, i32 1, !dbg !434
  %36 = load i32, i32* %width66, align 4, !dbg !434
  %add67 = add nsw i32 %36, 5, !dbg !435
  %37 = load i32, i32* %offset36, align 4, !dbg !436
  %add68 = add nsw i32 %37, %add67, !dbg !436
  store i32 %add68, i32* %offset36, align 4, !dbg !436
  br label %for.cond37, !dbg !437, !llvm.loop !438

for.end69:                                        ; preds = %for.cond37
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lolwut6Command(%struct.client* %c) #0 !dbg !441 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %cols = alloca i64, align 8
  %rows = alloca i64, align 8
  %canvas = alloca %struct.lwCanvas*, align 8
  %rendered = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata i64* %cols, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i64 80, i64* %cols, align 8, !dbg !1039
  call void @llvm.dbg.declare(metadata i64* %rows, metadata !1040, metadata !DIExpression()), !dbg !1041
  store i64 20, i64* %rows, align 8, !dbg !1041
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1042
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !1044
  %1 = load i32, i32* %argc, align 8, !dbg !1044
  %cmp = icmp sgt i32 %1, 1, !dbg !1045
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1046

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1047
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1048
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !1049
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1049
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1048
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1048
  %call = call i32 @getLongFromObjectOrReply(%struct.client* %2, %struct.redisObject* %5, i64* %cols, i8* null), !dbg !1050
  %cmp1 = icmp ne i32 %call, 0, !dbg !1051
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1052

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !1053

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1054
  %argc2 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 9, !dbg !1056
  %7 = load i32, i32* %argc2, align 8, !dbg !1056
  %cmp3 = icmp sgt i32 %7, 2, !dbg !1057
  br i1 %cmp3, label %land.lhs.true4, label %if.end10, !dbg !1058

land.lhs.true4:                                   ; preds = %if.end
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1059
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1060
  %argv5 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 10, !dbg !1061
  %10 = load %struct.redisObject**, %struct.redisObject*** %argv5, align 8, !dbg !1061
  %arrayidx6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 2, !dbg !1060
  %11 = load %struct.redisObject*, %struct.redisObject** %arrayidx6, align 8, !dbg !1060
  %call7 = call i32 @getLongFromObjectOrReply(%struct.client* %8, %struct.redisObject* %11, i64* %rows, i8* null), !dbg !1062
  %cmp8 = icmp ne i32 %call7, 0, !dbg !1063
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1064

if.then9:                                         ; preds = %land.lhs.true4
  br label %return, !dbg !1065

if.end10:                                         ; preds = %land.lhs.true4, %if.end
  %12 = load i64, i64* %cols, align 8, !dbg !1066
  %cmp11 = icmp slt i64 %12, 1, !dbg !1068
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1069

if.then12:                                        ; preds = %if.end10
  store i64 1, i64* %cols, align 8, !dbg !1070
  br label %if.end13, !dbg !1071

if.end13:                                         ; preds = %if.then12, %if.end10
  %13 = load i64, i64* %cols, align 8, !dbg !1072
  %cmp14 = icmp sgt i64 %13, 1000, !dbg !1074
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1075

if.then15:                                        ; preds = %if.end13
  store i64 1000, i64* %cols, align 8, !dbg !1076
  br label %if.end16, !dbg !1077

if.end16:                                         ; preds = %if.then15, %if.end13
  %14 = load i64, i64* %rows, align 8, !dbg !1078
  %cmp17 = icmp slt i64 %14, 1, !dbg !1080
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1081

if.then18:                                        ; preds = %if.end16
  store i64 1, i64* %rows, align 8, !dbg !1082
  br label %if.end19, !dbg !1083

if.end19:                                         ; preds = %if.then18, %if.end16
  %15 = load i64, i64* %rows, align 8, !dbg !1084
  %cmp20 = icmp sgt i64 %15, 1000, !dbg !1086
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !1087

if.then21:                                        ; preds = %if.end19
  store i64 1000, i64* %rows, align 8, !dbg !1088
  br label %if.end22, !dbg !1089

if.end22:                                         ; preds = %if.then21, %if.end19
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas, metadata !1090, metadata !DIExpression()), !dbg !1091
  %16 = load i64, i64* %cols, align 8, !dbg !1092
  %conv = trunc i64 %16 to i32, !dbg !1092
  %17 = load i64, i64* %rows, align 8, !dbg !1093
  %conv23 = trunc i64 %17 to i32, !dbg !1093
  %call24 = call %struct.lwCanvas* @lwCreateCanvas(i32 %conv, i32 %conv23, i32 3), !dbg !1094
  store %struct.lwCanvas* %call24, %struct.lwCanvas** %canvas, align 8, !dbg !1091
  %18 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !1095
  call void @generateSkyline(%struct.lwCanvas* %18), !dbg !1096
  call void @llvm.dbg.declare(metadata i8** %rendered, metadata !1097, metadata !DIExpression()), !dbg !1098
  %19 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !1099
  %call25 = call i8* @renderCanvas(%struct.lwCanvas* %19), !dbg !1100
  store i8* %call25, i8** %rendered, align 8, !dbg !1098
  %20 = load i8*, i8** %rendered, align 8, !dbg !1101
  %call26 = call i8* @sdscat(i8* %20, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0)), !dbg !1102
  store i8* %call26, i8** %rendered, align 8, !dbg !1103
  %21 = load i8*, i8** %rendered, align 8, !dbg !1104
  %call27 = call i8* @sdscat(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !1105
  store i8* %call27, i8** %rendered, align 8, !dbg !1106
  %22 = load i8*, i8** %rendered, align 8, !dbg !1107
  %call28 = call i8* @sdscatlen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !1108
  store i8* %call28, i8** %rendered, align 8, !dbg !1109
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1110
  %24 = load i8*, i8** %rendered, align 8, !dbg !1111
  %25 = load i8*, i8** %rendered, align 8, !dbg !1112
  %call29 = call i64 @sdslen(i8* %25), !dbg !1113
  call void @addReplyVerbatim(%struct.client* %23, i8* %24, i64 %call29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !1114
  %26 = load i8*, i8** %rendered, align 8, !dbg !1115
  call void @sdsfree(i8* %26), !dbg !1116
  %27 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !1117
  call void @lwFreeCanvas(%struct.lwCanvas* %27), !dbg !1118
  br label %return, !dbg !1119

return:                                           ; preds = %if.end22, %if.then9, %if.then
  ret void, !dbg !1119
}

declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #3

declare dso_local %struct.lwCanvas* @lwCreateCanvas(i32, i32, i32) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @renderCanvas(%struct.lwCanvas* %canvas) #0 !dbg !1120 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %text = alloca i8*, align 8
  %y = alloca i32, align 4
  %x = alloca i32, align 4
  %color = alloca i32, align 4
  %ce = alloca i8*, align 8
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !1123, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata i8** %text, metadata !1125, metadata !DIExpression()), !dbg !1126
  %call = call i8* @sdsempty(), !dbg !1127
  store i8* %call, i8** %text, align 8, !dbg !1126
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1128, metadata !DIExpression()), !dbg !1130
  store i32 0, i32* %y, align 4, !dbg !1130
  br label %for.cond, !dbg !1131

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %y, align 4, !dbg !1132
  %1 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1134
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %1, i32 0, i32 1, !dbg !1135
  %2 = load i32, i32* %height, align 4, !dbg !1135
  %cmp = icmp slt i32 %0, %2, !dbg !1136
  br i1 %cmp, label %for.body, label %for.end14, !dbg !1137

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %x, metadata !1138, metadata !DIExpression()), !dbg !1141
  store i32 0, i32* %x, align 4, !dbg !1141
  br label %for.cond1, !dbg !1142

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %x, align 4, !dbg !1143
  %4 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1145
  %width = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %4, i32 0, i32 0, !dbg !1146
  %5 = load i32, i32* %width, align 8, !dbg !1146
  %cmp2 = icmp slt i32 %3, %5, !dbg !1147
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1148

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %color, metadata !1149, metadata !DIExpression()), !dbg !1151
  %6 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1152
  %7 = load i32, i32* %x, align 4, !dbg !1153
  %8 = load i32, i32* %y, align 4, !dbg !1154
  %call4 = call i32 @lwGetPixel(%struct.lwCanvas* %6, i32 %7, i32 %8), !dbg !1155
  store i32 %call4, i32* %color, align 4, !dbg !1151
  call void @llvm.dbg.declare(metadata i8** %ce, metadata !1156, metadata !DIExpression()), !dbg !1157
  %9 = load i32, i32* %color, align 4, !dbg !1158
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.bb7
  ], !dbg !1159

sw.bb:                                            ; preds = %for.body3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %ce, align 8, !dbg !1160
  br label %sw.epilog, !dbg !1162

sw.bb5:                                           ; preds = %for.body3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %ce, align 8, !dbg !1163
  br label %sw.epilog, !dbg !1164

sw.bb6:                                           ; preds = %for.body3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %ce, align 8, !dbg !1165
  br label %sw.epilog, !dbg !1166

sw.bb7:                                           ; preds = %for.body3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %ce, align 8, !dbg !1167
  br label %sw.epilog, !dbg !1168

sw.default:                                       ; preds = %for.body3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %ce, align 8, !dbg !1169
  br label %sw.epilog, !dbg !1170

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %10 = load i8*, i8** %text, align 8, !dbg !1171
  %11 = load i8*, i8** %ce, align 8, !dbg !1172
  %call8 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %11), !dbg !1173
  store i8* %call8, i8** %text, align 8, !dbg !1174
  br label %for.inc, !dbg !1175

for.inc:                                          ; preds = %sw.epilog
  %12 = load i32, i32* %x, align 4, !dbg !1176
  %inc = add nsw i32 %12, 1, !dbg !1176
  store i32 %inc, i32* %x, align 4, !dbg !1176
  br label %for.cond1, !dbg !1177, !llvm.loop !1178

for.end:                                          ; preds = %for.cond1
  %13 = load i32, i32* %y, align 4, !dbg !1180
  %14 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1182
  %height9 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %14, i32 0, i32 1, !dbg !1183
  %15 = load i32, i32* %height9, align 4, !dbg !1183
  %sub = sub nsw i32 %15, 1, !dbg !1184
  %cmp10 = icmp ne i32 %13, %sub, !dbg !1185
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1186

if.then:                                          ; preds = %for.end
  %16 = load i8*, i8** %text, align 8, !dbg !1187
  %call11 = call i8* @sdscatlen(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !1188
  store i8* %call11, i8** %text, align 8, !dbg !1189
  br label %if.end, !dbg !1190

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc12, !dbg !1191

for.inc12:                                        ; preds = %if.end
  %17 = load i32, i32* %y, align 4, !dbg !1192
  %inc13 = add nsw i32 %17, 1, !dbg !1192
  store i32 %inc13, i32* %y, align 4, !dbg !1192
  br label %for.cond, !dbg !1193, !llvm.loop !1194

for.end14:                                        ; preds = %for.cond
  %18 = load i8*, i8** %text, align 8, !dbg !1196
  ret i8* %18, !dbg !1197
}

declare dso_local i8* @sdscat(i8*, i8*) #3

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #3

declare dso_local void @addReplyVerbatim(%struct.client*, i8*, i64, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1198 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1202, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1204, metadata !DIExpression()), !dbg !1205
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1206
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1206
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1206
  store i8 %1, i8* %flags, align 1, !dbg !1205
  %2 = load i8, i8* %flags, align 1, !dbg !1207
  %conv = zext i8 %2 to i32, !dbg !1207
  %and = and i32 %conv, 7, !dbg !1208
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1209

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1210
  %conv1 = zext i8 %3 to i32, !dbg !1210
  %shr = ashr i32 %conv1, 3, !dbg !1210
  %conv2 = sext i32 %shr to i64, !dbg !1210
  store i64 %conv2, i64* %retval, align 8, !dbg !1212
  br label %return, !dbg !1212

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1213
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1213
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1214
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1214
  %6 = load i8, i8* %len, align 1, !dbg !1214
  %conv4 = zext i8 %6 to i64, !dbg !1213
  store i64 %conv4, i64* %retval, align 8, !dbg !1215
  br label %return, !dbg !1215

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1216
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1216
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1217
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1217
  %9 = load i16, i16* %len7, align 1, !dbg !1217
  %conv8 = zext i16 %9 to i64, !dbg !1216
  store i64 %conv8, i64* %retval, align 8, !dbg !1218
  br label %return, !dbg !1218

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1219
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1219
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1220
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1220
  %12 = load i32, i32* %len11, align 1, !dbg !1220
  %conv12 = zext i32 %12 to i64, !dbg !1219
  store i64 %conv12, i64* %retval, align 8, !dbg !1221
  br label %return, !dbg !1221

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1222
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1222
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1223
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1223
  %15 = load i64, i64* %len15, align 1, !dbg !1223
  store i64 %15, i64* %retval, align 8, !dbg !1224
  br label %return, !dbg !1224

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1225
  br label %return, !dbg !1225

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1226
  ret i64 %16, !dbg !1226
}

declare dso_local void @sdsfree(i8*) #3

declare dso_local void @lwFreeCanvas(%struct.lwCanvas*) #3

declare dso_local i8* @sdsempty() #3

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lolwut6.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!58, !75, !85, !94}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !60, line: 51, size: 24, elements: !61)
!60 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!61 = !{!62, !68, !69, !70}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !59, file: !60, line: 52, baseType: !63, size: 8)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !64, line: 24, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !66, line: 38, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !59, file: !60, line: 53, baseType: !63, size: 8, offset: 8)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !60, line: 54, baseType: !67, size: 8, offset: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !59, file: !60, line: 55, baseType: !71, offset: 24)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, elements: !73)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !{!74}
!74 = !DISubrange(count: -1)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !60, line: 57, size: 40, elements: !77)
!77 = !{!78, !82, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !76, file: !60, line: 58, baseType: !79, size: 16)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !64, line: 25, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !66, line: 40, baseType: !81)
!81 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !76, file: !60, line: 59, baseType: !79, size: 16, offset: 16)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !60, line: 60, baseType: !67, size: 8, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !76, file: !60, line: 61, baseType: !71, offset: 40)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !60, line: 63, size: 72, elements: !87)
!87 = !{!88, !91, !92, !93}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !86, file: !60, line: 64, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !64, line: 26, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !66, line: 42, baseType: !5)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !86, file: !60, line: 65, baseType: !89, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !60, line: 66, baseType: !67, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !86, file: !60, line: 67, baseType: !71, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !60, line: 69, size: 136, elements: !96)
!96 = !{!97, !101, !102, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !95, file: !60, line: 70, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !64, line: 27, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !66, line: 45, baseType: !100)
!100 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !95, file: !60, line: 71, baseType: !98, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !60, line: 72, baseType: !67, size: 8, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !95, file: !60, line: 73, baseType: !71, offset: 136)
!104 = !{i32 7, !"Dwarf Version", i32 4}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!110 = distinct !DISubprogram(name: "generateSkyscraper", scope: !1, file: !1, line: 82, type: !111, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !131)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113, !123}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwCanvas", file: !115, line: 45, baseType: !116)
!115 = !DIFile(filename: "./lolwut.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwCanvas", file: !115, line: 41, size: 128, elements: !117)
!117 = !{!118, !120, !121}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !116, file: !115, line: 42, baseType: !119, size: 32)
!119 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !116, file: !115, line: 43, baseType: !119, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !116, file: !115, line: 44, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skyscraper", file: !1, line: 74, size: 160, elements: !125)
!125 = !{!126, !127, !128, !129, !130}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "xoff", scope: !124, file: !1, line: 75, baseType: !119, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !124, file: !1, line: 76, baseType: !119, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !124, file: !1, line: 77, baseType: !119, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !124, file: !1, line: 78, baseType: !119, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !124, file: !1, line: 79, baseType: !119, size: 32, offset: 128)
!131 = !{}
!132 = !DILocalVariable(name: "canvas", arg: 1, scope: !110, file: !1, line: 82, type: !113)
!133 = !DILocation(line: 82, column: 35, scope: !110)
!134 = !DILocalVariable(name: "si", arg: 2, scope: !110, file: !1, line: 82, type: !123)
!135 = !DILocation(line: 82, column: 62, scope: !110)
!136 = !DILocalVariable(name: "starty", scope: !110, file: !1, line: 83, type: !119)
!137 = !DILocation(line: 83, column: 9, scope: !110)
!138 = !DILocation(line: 83, column: 18, scope: !110)
!139 = !DILocation(line: 83, column: 26, scope: !110)
!140 = !DILocation(line: 83, column: 32, scope: !110)
!141 = !DILocalVariable(name: "endy", scope: !110, file: !1, line: 84, type: !119)
!142 = !DILocation(line: 84, column: 9, scope: !110)
!143 = !DILocation(line: 84, column: 16, scope: !110)
!144 = !DILocation(line: 84, column: 25, scope: !110)
!145 = !DILocation(line: 84, column: 29, scope: !110)
!146 = !DILocation(line: 84, column: 23, scope: !110)
!147 = !DILocation(line: 84, column: 36, scope: !110)
!148 = !DILocalVariable(name: "y", scope: !149, file: !1, line: 85, type: !119)
!149 = distinct !DILexicalBlock(scope: !110, file: !1, line: 85, column: 5)
!150 = !DILocation(line: 85, column: 14, scope: !149)
!151 = !DILocation(line: 85, column: 18, scope: !149)
!152 = !DILocation(line: 85, column: 10, scope: !149)
!153 = !DILocation(line: 85, column: 26, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 85, column: 5)
!155 = !DILocation(line: 85, column: 31, scope: !154)
!156 = !DILocation(line: 85, column: 28, scope: !154)
!157 = !DILocation(line: 85, column: 5, scope: !149)
!158 = !DILocalVariable(name: "x", scope: !159, file: !1, line: 86, type: !119)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 86, column: 9)
!160 = distinct !DILexicalBlock(scope: !154, file: !1, line: 85, column: 42)
!161 = !DILocation(line: 86, column: 18, scope: !159)
!162 = !DILocation(line: 86, column: 22, scope: !159)
!163 = !DILocation(line: 86, column: 26, scope: !159)
!164 = !DILocation(line: 86, column: 14, scope: !159)
!165 = !DILocation(line: 86, column: 32, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !1, line: 86, column: 9)
!167 = !DILocation(line: 86, column: 36, scope: !166)
!168 = !DILocation(line: 86, column: 40, scope: !166)
!169 = !DILocation(line: 86, column: 45, scope: !166)
!170 = !DILocation(line: 86, column: 49, scope: !166)
!171 = !DILocation(line: 86, column: 44, scope: !166)
!172 = !DILocation(line: 86, column: 34, scope: !166)
!173 = !DILocation(line: 86, column: 9, scope: !159)
!174 = !DILocation(line: 88, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 88, column: 17)
!176 = distinct !DILexicalBlock(scope: !166, file: !1, line: 86, column: 61)
!177 = !DILocation(line: 88, column: 22, scope: !175)
!178 = !DILocation(line: 88, column: 19, scope: !175)
!179 = !DILocation(line: 88, column: 27, scope: !175)
!180 = !DILocation(line: 88, column: 31, scope: !175)
!181 = !DILocation(line: 88, column: 36, scope: !175)
!182 = !DILocation(line: 88, column: 40, scope: !175)
!183 = !DILocation(line: 88, column: 44, scope: !175)
!184 = !DILocation(line: 88, column: 33, scope: !175)
!185 = !DILocation(line: 88, column: 47, scope: !175)
!186 = !DILocation(line: 88, column: 50, scope: !175)
!187 = !DILocation(line: 88, column: 55, scope: !175)
!188 = !DILocation(line: 88, column: 59, scope: !175)
!189 = !DILocation(line: 88, column: 64, scope: !175)
!190 = !DILocation(line: 88, column: 68, scope: !175)
!191 = !DILocation(line: 88, column: 63, scope: !175)
!192 = !DILocation(line: 88, column: 73, scope: !175)
!193 = !DILocation(line: 88, column: 52, scope: !175)
!194 = !DILocation(line: 88, column: 17, scope: !176)
!195 = !DILocation(line: 89, column: 17, scope: !175)
!196 = !DILocalVariable(name: "color", scope: !176, file: !1, line: 90, type: !119)
!197 = !DILocation(line: 90, column: 17, scope: !176)
!198 = !DILocation(line: 90, column: 25, scope: !176)
!199 = !DILocation(line: 90, column: 29, scope: !176)
!200 = !DILocation(line: 94, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !176, file: !1, line: 94, column: 17)
!202 = !DILocation(line: 94, column: 21, scope: !201)
!203 = !DILocation(line: 94, column: 29, scope: !201)
!204 = !DILocation(line: 95, column: 17, scope: !201)
!205 = !DILocation(line: 95, column: 21, scope: !201)
!206 = !DILocation(line: 95, column: 25, scope: !201)
!207 = !DILocation(line: 95, column: 29, scope: !201)
!208 = !DILocation(line: 95, column: 19, scope: !201)
!209 = !DILocation(line: 95, column: 32, scope: !201)
!210 = !DILocation(line: 96, column: 17, scope: !201)
!211 = !DILocation(line: 96, column: 21, scope: !201)
!212 = !DILocation(line: 96, column: 25, scope: !201)
!213 = !DILocation(line: 96, column: 30, scope: !201)
!214 = !DILocation(line: 96, column: 34, scope: !201)
!215 = !DILocation(line: 96, column: 29, scope: !201)
!216 = !DILocation(line: 96, column: 39, scope: !201)
!217 = !DILocation(line: 96, column: 19, scope: !201)
!218 = !DILocation(line: 96, column: 42, scope: !201)
!219 = !DILocation(line: 97, column: 17, scope: !201)
!220 = !DILocation(line: 97, column: 21, scope: !201)
!221 = !DILocation(line: 97, column: 25, scope: !201)
!222 = !DILocation(line: 97, column: 19, scope: !201)
!223 = !DILocation(line: 97, column: 28, scope: !201)
!224 = !DILocation(line: 98, column: 17, scope: !201)
!225 = !DILocation(line: 98, column: 21, scope: !201)
!226 = !DILocation(line: 98, column: 27, scope: !201)
!227 = !DILocation(line: 98, column: 19, scope: !201)
!228 = !DILocation(line: 94, column: 17, scope: !176)
!229 = !DILocalVariable(name: "relx", scope: !230, file: !1, line: 102, type: !119)
!230 = distinct !DILexicalBlock(scope: !201, file: !1, line: 99, column: 13)
!231 = !DILocation(line: 102, column: 21, scope: !230)
!232 = !DILocation(line: 102, column: 28, scope: !230)
!233 = !DILocation(line: 102, column: 33, scope: !230)
!234 = !DILocation(line: 102, column: 37, scope: !230)
!235 = !DILocation(line: 102, column: 41, scope: !230)
!236 = !DILocation(line: 102, column: 30, scope: !230)
!237 = !DILocalVariable(name: "rely", scope: !230, file: !1, line: 103, type: !119)
!238 = !DILocation(line: 103, column: 21, scope: !230)
!239 = !DILocation(line: 103, column: 28, scope: !230)
!240 = !DILocation(line: 103, column: 33, scope: !230)
!241 = !DILocation(line: 103, column: 37, scope: !230)
!242 = !DILocation(line: 103, column: 30, scope: !230)
!243 = !DILocation(line: 108, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !230, file: !1, line: 108, column: 21)
!245 = !DILocation(line: 108, column: 25, scope: !244)
!246 = !DILocation(line: 108, column: 28, scope: !244)
!247 = !DILocation(line: 108, column: 32, scope: !244)
!248 = !DILocation(line: 108, column: 35, scope: !244)
!249 = !DILocation(line: 108, column: 40, scope: !244)
!250 = !DILocation(line: 108, column: 21, scope: !230)
!251 = !DILocation(line: 109, column: 21, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !1, line: 108, column: 45)
!253 = !DILocation(line: 110, column: 37, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !1, line: 109, column: 24)
!255 = !DILocation(line: 110, column: 44, scope: !254)
!256 = !DILocation(line: 110, column: 35, scope: !254)
!257 = !DILocation(line: 110, column: 31, scope: !254)
!258 = !DILocation(line: 111, column: 21, scope: !254)
!259 = !DILocation(line: 111, column: 30, scope: !252)
!260 = !DILocation(line: 111, column: 39, scope: !252)
!261 = !DILocation(line: 111, column: 43, scope: !252)
!262 = !DILocation(line: 111, column: 36, scope: !252)
!263 = distinct !{!263, !251, !264, !265}
!264 = !DILocation(line: 111, column: 48, scope: !252)
!265 = !{!"llvm.loop.mustprogress"}
!266 = !DILocation(line: 114, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !252, file: !1, line: 114, column: 25)
!268 = !DILocation(line: 114, column: 30, scope: !267)
!269 = !DILocation(line: 114, column: 25, scope: !252)
!270 = !DILocation(line: 114, column: 54, scope: !267)
!271 = !DILocation(line: 114, column: 61, scope: !267)
!272 = !DILocation(line: 114, column: 62, scope: !267)
!273 = !DILocation(line: 114, column: 65, scope: !267)
!274 = !DILocation(line: 114, column: 43, scope: !267)
!275 = !DILocation(line: 114, column: 41, scope: !267)
!276 = !DILocation(line: 114, column: 35, scope: !267)
!277 = !DILocation(line: 115, column: 17, scope: !252)
!278 = !DILocation(line: 116, column: 13, scope: !230)
!279 = !DILocation(line: 117, column: 25, scope: !176)
!280 = !DILocation(line: 117, column: 32, scope: !176)
!281 = !DILocation(line: 117, column: 34, scope: !176)
!282 = !DILocation(line: 117, column: 36, scope: !176)
!283 = !DILocation(line: 117, column: 13, scope: !176)
!284 = !DILocation(line: 118, column: 9, scope: !176)
!285 = !DILocation(line: 86, column: 57, scope: !166)
!286 = !DILocation(line: 86, column: 9, scope: !166)
!287 = distinct !{!287, !173, !288, !265}
!288 = !DILocation(line: 118, column: 9, scope: !159)
!289 = !DILocation(line: 119, column: 5, scope: !160)
!290 = !DILocation(line: 85, column: 38, scope: !154)
!291 = !DILocation(line: 85, column: 5, scope: !154)
!292 = distinct !{!292, !157, !293, !265}
!293 = !DILocation(line: 119, column: 5, scope: !149)
!294 = !DILocation(line: 120, column: 1, scope: !110)
!295 = distinct !DISubprogram(name: "generateSkyline", scope: !1, file: !1, line: 123, type: !296, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !131)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !113}
!298 = !DILocalVariable(name: "canvas", arg: 1, scope: !295, file: !1, line: 123, type: !113)
!299 = !DILocation(line: 123, column: 32, scope: !295)
!300 = !DILocalVariable(name: "si", scope: !295, file: !1, line: 124, type: !124)
!301 = !DILocation(line: 124, column: 23, scope: !295)
!302 = !DILocalVariable(name: "color", scope: !303, file: !1, line: 129, type: !119)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 129, column: 5)
!304 = !DILocation(line: 129, column: 14, scope: !303)
!305 = !DILocation(line: 129, column: 10, scope: !303)
!306 = !DILocation(line: 129, column: 25, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !1, line: 129, column: 5)
!308 = !DILocation(line: 129, column: 31, scope: !307)
!309 = !DILocation(line: 129, column: 5, scope: !303)
!310 = !DILocation(line: 130, column: 20, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 129, column: 46)
!312 = !DILocation(line: 130, column: 12, scope: !311)
!313 = !DILocation(line: 130, column: 18, scope: !311)
!314 = !DILocalVariable(name: "offset", scope: !315, file: !1, line: 131, type: !119)
!315 = distinct !DILexicalBlock(scope: !311, file: !1, line: 131, column: 9)
!316 = !DILocation(line: 131, column: 18, scope: !315)
!317 = !DILocation(line: 131, column: 14, scope: !315)
!318 = !DILocation(line: 131, column: 32, scope: !319)
!319 = distinct !DILexicalBlock(scope: !315, file: !1, line: 131, column: 9)
!320 = !DILocation(line: 131, column: 41, scope: !319)
!321 = !DILocation(line: 131, column: 49, scope: !319)
!322 = !DILocation(line: 131, column: 39, scope: !319)
!323 = !DILocation(line: 131, column: 9, scope: !315)
!324 = !DILocation(line: 132, column: 23, scope: !325)
!325 = distinct !DILexicalBlock(scope: !319, file: !1, line: 131, column: 57)
!326 = !DILocation(line: 132, column: 30, scope: !325)
!327 = !DILocation(line: 132, column: 20, scope: !325)
!328 = !DILocation(line: 133, column: 23, scope: !325)
!329 = !DILocation(line: 133, column: 16, scope: !325)
!330 = !DILocation(line: 133, column: 21, scope: !325)
!331 = !DILocation(line: 134, column: 29, scope: !325)
!332 = !DILocation(line: 134, column: 35, scope: !325)
!333 = !DILocation(line: 134, column: 27, scope: !325)
!334 = !DILocation(line: 134, column: 16, scope: !325)
!335 = !DILocation(line: 134, column: 22, scope: !325)
!336 = !DILocation(line: 135, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !325, file: !1, line: 135, column: 17)
!338 = !DILocation(line: 135, column: 23, scope: !337)
!339 = !DILocation(line: 135, column: 17, scope: !325)
!340 = !DILocation(line: 136, column: 29, scope: !337)
!341 = !DILocation(line: 136, column: 37, scope: !337)
!342 = !DILocation(line: 136, column: 43, scope: !337)
!343 = !DILocation(line: 136, column: 48, scope: !337)
!344 = !DILocation(line: 136, column: 55, scope: !337)
!345 = !DILocation(line: 136, column: 63, scope: !337)
!346 = !DILocation(line: 136, column: 54, scope: !337)
!347 = !DILocation(line: 136, column: 69, scope: !337)
!348 = !DILocation(line: 136, column: 46, scope: !337)
!349 = !DILocation(line: 136, column: 20, scope: !337)
!350 = !DILocation(line: 136, column: 27, scope: !337)
!351 = !DILocation(line: 136, column: 17, scope: !337)
!352 = !DILocation(line: 138, column: 29, scope: !337)
!353 = !DILocation(line: 138, column: 37, scope: !337)
!354 = !DILocation(line: 138, column: 43, scope: !337)
!355 = !DILocation(line: 138, column: 48, scope: !337)
!356 = !DILocation(line: 138, column: 55, scope: !337)
!357 = !DILocation(line: 138, column: 63, scope: !337)
!358 = !DILocation(line: 138, column: 54, scope: !337)
!359 = !DILocation(line: 138, column: 69, scope: !337)
!360 = !DILocation(line: 138, column: 46, scope: !337)
!361 = !DILocation(line: 138, column: 20, scope: !337)
!362 = !DILocation(line: 138, column: 27, scope: !337)
!363 = !DILocation(line: 139, column: 16, scope: !325)
!364 = !DILocation(line: 139, column: 24, scope: !325)
!365 = !DILocation(line: 140, column: 32, scope: !325)
!366 = !DILocation(line: 140, column: 13, scope: !325)
!367 = !DILocation(line: 141, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !325, file: !1, line: 141, column: 17)
!369 = !DILocation(line: 141, column: 23, scope: !368)
!370 = !DILocation(line: 141, column: 17, scope: !325)
!371 = !DILocation(line: 142, column: 30, scope: !368)
!372 = !DILocation(line: 142, column: 35, scope: !368)
!373 = !DILocation(line: 142, column: 24, scope: !368)
!374 = !DILocation(line: 142, column: 17, scope: !368)
!375 = !DILocation(line: 144, column: 30, scope: !368)
!376 = !DILocation(line: 144, column: 35, scope: !368)
!377 = !DILocation(line: 144, column: 24, scope: !368)
!378 = !DILocation(line: 131, column: 9, scope: !319)
!379 = distinct !{!379, !323, !380, !265}
!380 = !DILocation(line: 145, column: 9, scope: !315)
!381 = !DILocation(line: 146, column: 5, scope: !311)
!382 = !DILocation(line: 129, column: 42, scope: !307)
!383 = !DILocation(line: 129, column: 5, scope: !307)
!384 = distinct !{!384, !309, !385, !265}
!385 = !DILocation(line: 146, column: 5, scope: !303)
!386 = !DILocation(line: 149, column: 8, scope: !295)
!387 = !DILocation(line: 149, column: 14, scope: !295)
!388 = !DILocalVariable(name: "offset", scope: !389, file: !1, line: 150, type: !119)
!389 = distinct !DILexicalBlock(scope: !295, file: !1, line: 150, column: 5)
!390 = !DILocation(line: 150, column: 14, scope: !389)
!391 = !DILocation(line: 150, column: 10, scope: !389)
!392 = !DILocation(line: 150, column: 28, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !1, line: 150, column: 5)
!394 = !DILocation(line: 150, column: 37, scope: !393)
!395 = !DILocation(line: 150, column: 45, scope: !393)
!396 = !DILocation(line: 150, column: 35, scope: !393)
!397 = !DILocation(line: 150, column: 5, scope: !389)
!398 = !DILocation(line: 151, column: 19, scope: !399)
!399 = distinct !DILexicalBlock(scope: !393, file: !1, line: 150, column: 53)
!400 = !DILocation(line: 151, column: 26, scope: !399)
!401 = !DILocation(line: 151, column: 16, scope: !399)
!402 = !DILocation(line: 152, column: 19, scope: !399)
!403 = !DILocation(line: 152, column: 12, scope: !399)
!404 = !DILocation(line: 152, column: 17, scope: !399)
!405 = !DILocation(line: 153, column: 24, scope: !399)
!406 = !DILocation(line: 153, column: 30, scope: !399)
!407 = !DILocation(line: 153, column: 22, scope: !399)
!408 = !DILocation(line: 153, column: 12, scope: !399)
!409 = !DILocation(line: 153, column: 18, scope: !399)
!410 = !DILocation(line: 154, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !399, file: !1, line: 154, column: 13)
!412 = !DILocation(line: 154, column: 22, scope: !411)
!413 = !DILocation(line: 154, column: 13, scope: !399)
!414 = !DILocation(line: 154, column: 43, scope: !411)
!415 = !DILocation(line: 154, column: 49, scope: !411)
!416 = !DILocation(line: 154, column: 30, scope: !411)
!417 = !DILocation(line: 154, column: 36, scope: !411)
!418 = !DILocation(line: 154, column: 27, scope: !411)
!419 = !DILocation(line: 155, column: 21, scope: !399)
!420 = !DILocation(line: 155, column: 29, scope: !399)
!421 = !DILocation(line: 155, column: 35, scope: !399)
!422 = !DILocation(line: 155, column: 40, scope: !399)
!423 = !DILocation(line: 155, column: 47, scope: !399)
!424 = !DILocation(line: 155, column: 55, scope: !399)
!425 = !DILocation(line: 155, column: 46, scope: !399)
!426 = !DILocation(line: 155, column: 61, scope: !399)
!427 = !DILocation(line: 155, column: 38, scope: !399)
!428 = !DILocation(line: 155, column: 12, scope: !399)
!429 = !DILocation(line: 155, column: 19, scope: !399)
!430 = !DILocation(line: 156, column: 12, scope: !399)
!431 = !DILocation(line: 156, column: 20, scope: !399)
!432 = !DILocation(line: 157, column: 28, scope: !399)
!433 = !DILocation(line: 157, column: 9, scope: !399)
!434 = !DILocation(line: 158, column: 22, scope: !399)
!435 = !DILocation(line: 158, column: 27, scope: !399)
!436 = !DILocation(line: 158, column: 16, scope: !399)
!437 = !DILocation(line: 150, column: 5, scope: !393)
!438 = distinct !{!438, !397, !439, !265}
!439 = !DILocation(line: 159, column: 5, scope: !389)
!440 = !DILocation(line: 160, column: 1, scope: !295)
!441 = distinct !DISubprogram(name: "lolwut6Command", scope: !1, file: !1, line: 169, type: !442, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !131)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !447)
!447 = !{!448, !449, !450, !601, !602, !718, !728, !730, !731, !732, !733, !735, !736, !737, !738, !739, !888, !889, !890, !900, !901, !902, !903, !904, !906, !907, !908, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !938, !939, !940, !941, !942, !960, !961, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !997, !998, !999, !1000, !1019, !1020, !1021, !1022, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !446, file: !14, line: 1090, baseType: !98, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !14, line: 1091, baseType: !98, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !446, file: !14, line: 1092, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !454)
!454 = !{!455, !590, !592, !594, !595, !596, !597, !598, !599, !600}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !4, line: 78, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !459)
!459 = !{!460, !524, !535, !543, !554, !558, !559, !563, !567, !568, !572, !576, !584, !585, !586}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !458, file: !4, line: 60, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !464, !119, !483, !119}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !466, line: 99, size: 640, elements: !467)
!466 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!467 = !{!468, !469, !470, !472, !484, !491, !515, !516, !517, !522, !523}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !465, file: !466, line: 100, baseType: !119, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !465, file: !466, line: 101, baseType: !119, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !465, file: !466, line: 102, baseType: !471, size: 64, offset: 64)
!471 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !465, file: !466, line: 103, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !466, line: 77, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !466, line: 72, size: 256, elements: !476)
!476 = !{!477, !478, !481, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !475, file: !466, line: 73, baseType: !119, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !475, file: !466, line: 74, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !466, line: 66, baseType: !462)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !475, file: !466, line: 75, baseType: !479, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !475, file: !466, line: 76, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !465, file: !466, line: 104, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !466, line: 96, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !466, line: 93, size: 64, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !487, file: !466, line: 94, baseType: !119, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !487, file: !466, line: 95, baseType: !119, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !465, file: !466, line: 105, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !466, line: 90, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !466, line: 80, size: 512, elements: !495)
!495 = !{!496, !497, !500, !505, !510, !511, !513, !514}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !494, file: !466, line: 81, baseType: !471, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !494, file: !466, line: 82, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !499, line: 22, baseType: !98)
!499 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !494, file: !466, line: 83, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !466, line: 67, baseType: !503)
!503 = !DISubroutineType(types: !504)
!504 = !{!119, !464, !471, !483}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !494, file: !466, line: 84, baseType: !506, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !466, line: 68, baseType: !508)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !464, !483}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !494, file: !466, line: 85, baseType: !483, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !494, file: !466, line: 86, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !466, line: 87, baseType: !512, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !494, file: !466, line: 88, baseType: !119, size: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !465, file: !466, line: 106, baseType: !119, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !465, file: !466, line: 107, baseType: !483, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !465, file: !466, line: 108, baseType: !518, size: 64, offset: 448)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !466, line: 69, baseType: !520)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !464}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !465, file: !466, line: 109, baseType: !518, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !466, line: 110, baseType: !119, size: 32, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !458, file: !4, line: 61, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!119, !528, !529, !119, !529, !531}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !528}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !458, file: !4, line: 62, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!119, !528, !539, !541}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !542, line: 46, baseType: !100)
!542 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!543 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !458, file: !4, line: 63, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!119, !528, !547, !119}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !550, line: 26, size: 128, elements: !551)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !549, file: !550, line: 28, baseType: !483, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !549, file: !550, line: 29, baseType: !541, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !458, file: !4, line: 64, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!119, !528, !483, !541}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !458, file: !4, line: 65, baseType: !532, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !458, file: !4, line: 66, baseType: !560, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!119, !528, !531}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !458, file: !4, line: 67, baseType: !564, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!119, !528, !531, !119}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !458, file: !4, line: 68, baseType: !560, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !458, file: !4, line: 69, baseType: !569, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!529, !528}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !458, file: !4, line: 70, baseType: !573, size: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!119, !528, !529, !119, !471}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !458, file: !4, line: 71, baseType: !577, size: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!580, !528, !122, !580, !471}
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !581, line: 108, baseType: !582)
!581 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !66, line: 194, baseType: !583)
!583 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !458, file: !4, line: 72, baseType: !577, size: 64, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !458, file: !4, line: 73, baseType: !577, size: 64, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !458, file: !4, line: 74, baseType: !587, size: 64, offset: 896)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!119, !528}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !453, file: !4, line: 79, baseType: !591, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !4, line: 80, baseType: !593, size: 16, offset: 96)
!593 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !453, file: !4, line: 81, baseType: !593, size: 16, offset: 112)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !453, file: !4, line: 82, baseType: !119, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !453, file: !4, line: 83, baseType: !483, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !453, file: !4, line: 84, baseType: !531, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !453, file: !4, line: 85, baseType: !531, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !453, file: !4, line: 86, baseType: !531, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !453, file: !4, line: 87, baseType: !119, size: 32, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !446, file: !14, line: 1093, baseType: !119, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !446, file: !14, line: 1094, baseType: !603, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !606)
!606 = !{!607, !678, !679, !680, !681, !682, !683, !684, !685, !714}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !605, file: !14, line: 923, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !610, line: 61, baseType: !611)
!610 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !610, line: 79, size: 448, elements: !612)
!612 = !{!613, !645, !669, !671, !672, !675}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !610, line: 80, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !610, line: 74, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !610, line: 63, size: 512, elements: !617)
!617 = !{!618, !622, !626, !627, !631, !635, !636, !641}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !616, file: !610, line: 64, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!98, !539}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !616, file: !610, line: 65, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!483, !608, !539}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !616, file: !610, line: 66, baseType: !623, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !616, file: !610, line: 67, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!119, !608, !539, !539}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !616, file: !610, line: 68, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !608, !483}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !616, file: !610, line: 69, baseType: !632, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !616, file: !610, line: 70, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!119, !541, !640}
!640 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !616, file: !610, line: 73, baseType: !642, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!541, !608}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !611, file: !610, line: 82, baseType: !646, size: 128, offset: 64)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !667)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !610, line: 59, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !610, line: 47, size: 192, elements: !651)
!651 = !{!652, !653, !663, !665}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !650, file: !610, line: 48, baseType: !483, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !650, file: !610, line: 54, baseType: !654, size: 64, offset: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !610, line: 49, size: 64, elements: !655)
!655 = !{!656, !657, !658, !662}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !654, file: !610, line: 50, baseType: !483, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !654, file: !610, line: 51, baseType: !98, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !654, file: !610, line: 52, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !660, line: 27, baseType: !661)
!660 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !66, line: 44, baseType: !583)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !654, file: !610, line: 53, baseType: !640, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !650, file: !610, line: 55, baseType: !664, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !650, file: !610, line: 56, baseType: !666, offset: 192)
!666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, elements: !73)
!667 = !{!668}
!668 = !DISubrange(count: 2)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !611, file: !610, line: 83, baseType: !670, size: 128, offset: 192)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !667)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !611, file: !610, line: 85, baseType: !583, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !611, file: !610, line: 88, baseType: !673, size: 16, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !660, line: 25, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !66, line: 39, baseType: !593)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !611, file: !610, line: 89, baseType: !676, size: 16, offset: 400)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 16, elements: !667)
!677 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !605, file: !14, line: 924, baseType: !608, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !605, file: !14, line: 925, baseType: !608, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !605, file: !14, line: 926, baseType: !608, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !605, file: !14, line: 927, baseType: !608, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !605, file: !14, line: 928, baseType: !119, size: 32, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !605, file: !14, line: 929, baseType: !471, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !605, file: !14, line: 930, baseType: !100, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !605, file: !14, line: 931, baseType: !686, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !688, line: 54, baseType: !689)
!688 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !688, line: 47, size: 384, elements: !690)
!690 = !{!691, !700, !701, !705, !709, !713}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !689, file: !688, line: 48, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !688, line: 40, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !688, line: 36, size: 192, elements: !695)
!695 = !{!696, !698, !699}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !694, file: !688, line: 37, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !688, line: 38, baseType: !697, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !688, line: 39, baseType: !483, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !689, file: !688, line: 49, baseType: !692, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !689, file: !688, line: 50, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!483, !483}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !689, file: !688, line: 51, baseType: !706, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !483}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !689, file: !688, line: 52, baseType: !710, size: 64, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!119, !483, !483}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !689, file: !688, line: 53, baseType: !100, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !605, file: !14, line: 932, baseType: !715, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !717)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !446, file: !14, line: 1095, baseType: !719, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !722)
!722 = !{!723, !724, !725, !726, !727}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !721, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !721, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !721, file: !14, line: 860, baseType: !119, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !721, file: !14, line: 861, baseType: !483, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !446, file: !14, line: 1096, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !60, line: 43, baseType: !122)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !446, file: !14, line: 1097, baseType: !541, size: 64, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !446, file: !14, line: 1098, baseType: !541, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !446, file: !14, line: 1099, baseType: !119, size: 32, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !446, file: !14, line: 1100, baseType: !734, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !446, file: !14, line: 1101, baseType: !119, size: 32, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !446, file: !14, line: 1102, baseType: !119, size: 32, offset: 736)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !446, file: !14, line: 1103, baseType: !734, size: 64, offset: 768)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !446, file: !14, line: 1104, baseType: !541, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !446, file: !14, line: 1105, baseType: !740, size: 64, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !752, !759, !761, !764, !765, !766, !767, !807, !829, !830, !845, !846, !847, !848, !849, !850, !851, !875, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !741, file: !14, line: 2235, baseType: !529, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !741, file: !14, line: 2237, baseType: !529, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !741, file: !14, line: 2238, baseType: !529, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !741, file: !14, line: 2239, baseType: !529, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !741, file: !14, line: 2240, baseType: !119, size: 32, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !741, file: !14, line: 2241, baseType: !529, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !741, file: !14, line: 2242, baseType: !529, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !741, file: !14, line: 2243, baseType: !751, size: 32, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !741, file: !14, line: 2244, baseType: !753, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !755, file: !14, line: 2111, baseType: !529, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !755, file: !14, line: 2112, baseType: !529, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !741, file: !14, line: 2245, baseType: !760, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !741, file: !14, line: 2246, baseType: !762, size: 64, offset: 640)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !442)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !741, file: !14, line: 2247, baseType: !119, size: 32, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !14, line: 2248, baseType: !98, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !741, file: !14, line: 2249, baseType: !98, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !741, file: !14, line: 2250, baseType: !768, size: 1792, offset: 896)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 1792, elements: !805)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !771)
!771 = !{!772, !773, !774, !776, !788, !790}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !770, file: !14, line: 2006, baseType: !529, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !14, line: 2007, baseType: !98, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !770, file: !14, line: 2008, baseType: !775, size: 32, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !770, file: !14, line: 2022, baseType: !777, size: 128, offset: 192)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !14, line: 2009, size: 128, elements: !778)
!778 = !{!779, !783}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !777, file: !14, line: 2013, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !14, line: 2010, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !780, file: !14, line: 2012, baseType: !119, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !777, file: !14, line: 2021, baseType: !784, size: 128)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !14, line: 2014, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !784, file: !14, line: 2016, baseType: !529, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !784, file: !14, line: 2020, baseType: !119, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !770, file: !14, line: 2023, baseType: !789, size: 32, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !770, file: !14, line: 2047, baseType: !791, size: 96, offset: 352)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !14, line: 2024, size: 96, elements: !792)
!792 = !{!793, !799}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !791, file: !14, line: 2037, baseType: !794, size: 96)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !14, line: 2027, size: 96, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !794, file: !14, line: 2031, baseType: !119, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !794, file: !14, line: 2033, baseType: !119, size: 32, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !794, file: !14, line: 2036, baseType: !119, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !791, file: !14, line: 2046, baseType: !800, size: 96)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !14, line: 2038, size: 96, elements: !801)
!801 = !{!802, !803, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !800, file: !14, line: 2040, baseType: !119, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !800, file: !14, line: 2043, baseType: !119, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !800, file: !14, line: 2045, baseType: !119, size: 32, offset: 64)
!805 = !{!806}
!806 = !DISubrange(count: 4)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !741, file: !14, line: 2253, baseType: !808, size: 64, offset: 2688)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !810)
!810 = !DISubroutineType(types: !811)
!811 = !{!119, !740, !734, !119, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !815)
!815 = !{!816, !825, !827, !828}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !814, file: !14, line: 1962, baseType: !817, size: 16384)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !818, size: 16384, elements: !823)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !819, file: !14, line: 1952, baseType: !119, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !14, line: 1953, baseType: !119, size: 32, offset: 32)
!823 = !{!824}
!824 = !DISubrange(count: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !814, file: !14, line: 1963, baseType: !826, size: 64, offset: 16384)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !814, file: !14, line: 1964, baseType: !119, size: 32, offset: 16448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !814, file: !14, line: 1965, baseType: !119, size: 32, offset: 16480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !741, file: !14, line: 2255, baseType: !740, size: 64, offset: 2752)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !741, file: !14, line: 2257, baseType: !831, size: 64, offset: 2816)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !833)
!833 = !{!834, !835, !837, !838, !839, !840, !841, !842, !843, !844}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !832, file: !14, line: 2072, baseType: !529, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !14, line: 2073, baseType: !836, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !832, file: !14, line: 2074, baseType: !119, size: 32, offset: 96)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !832, file: !14, line: 2075, baseType: !529, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !832, file: !14, line: 2076, baseType: !529, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !832, file: !14, line: 2077, baseType: !529, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !14, line: 2078, baseType: !119, size: 32, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !832, file: !14, line: 2079, baseType: !529, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !832, file: !14, line: 2080, baseType: !831, size: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !832, file: !14, line: 2082, baseType: !119, size: 32, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !741, file: !14, line: 2260, baseType: !471, size: 64, offset: 2880)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !741, file: !14, line: 2260, baseType: !471, size: 64, offset: 2944)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !741, file: !14, line: 2260, baseType: !471, size: 64, offset: 3008)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !741, file: !14, line: 2260, baseType: !471, size: 64, offset: 3072)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !741, file: !14, line: 2261, baseType: !119, size: 32, offset: 3136)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !741, file: !14, line: 2266, baseType: !729, size: 64, offset: 3200)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !741, file: !14, line: 2267, baseType: !852, size: 64, offset: 3264)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !854, line: 17, size: 832, elements: !855)
!854 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!855 = !{!856, !857, !858, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !853, file: !854, line: 19, baseType: !659, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !853, file: !854, line: 20, baseType: !659, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !853, file: !854, line: 21, baseType: !859, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !660, line: 26, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !66, line: 41, baseType: !119)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !853, file: !854, line: 22, baseType: !859, size: 32, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !853, file: !854, line: 23, baseType: !859, size: 32, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !853, file: !854, line: 24, baseType: !859, size: 32, offset: 224)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !853, file: !854, line: 25, baseType: !659, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !853, file: !854, line: 26, baseType: !859, size: 32, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !853, file: !854, line: 27, baseType: !859, size: 32, offset: 352)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !853, file: !854, line: 28, baseType: !659, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !853, file: !854, line: 29, baseType: !659, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !853, file: !854, line: 30, baseType: !859, size: 32, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !853, file: !854, line: 31, baseType: !640, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !853, file: !854, line: 32, baseType: !859, size: 32, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !853, file: !854, line: 33, baseType: !659, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !853, file: !854, line: 34, baseType: !874, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !741, file: !14, line: 2268, baseType: !876, size: 64, offset: 3328)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !741, file: !14, line: 2269, baseType: !769, size: 448, offset: 3392)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !741, file: !14, line: 2273, baseType: !119, size: 32, offset: 3840)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !741, file: !14, line: 2274, baseType: !119, size: 32, offset: 3872)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !741, file: !14, line: 2275, baseType: !119, size: 32, offset: 3904)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !741, file: !14, line: 2276, baseType: !119, size: 32, offset: 3936)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !741, file: !14, line: 2277, baseType: !119, size: 32, offset: 3968)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !741, file: !14, line: 2278, baseType: !608, size: 64, offset: 4032)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !741, file: !14, line: 2280, baseType: !740, size: 64, offset: 4096)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !741, file: !14, line: 2281, baseType: !886, size: 64, offset: 4160)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !446, file: !14, line: 1105, baseType: !740, size: 64, offset: 960)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !446, file: !14, line: 1106, baseType: !740, size: 64, offset: 1024)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !446, file: !14, line: 1109, baseType: !891, size: 64, offset: 1088)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !894)
!894 = !{!895, !896, !897, !898, !899}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !14, line: 1050, baseType: !729, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !14, line: 1051, baseType: !89, size: 32, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !893, file: !14, line: 1052, baseType: !686, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !893, file: !14, line: 1053, baseType: !686, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !893, file: !14, line: 1056, baseType: !719, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !446, file: !14, line: 1112, baseType: !119, size: 32, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !446, file: !14, line: 1113, baseType: !119, size: 32, offset: 1184)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !446, file: !14, line: 1114, baseType: !583, size: 64, offset: 1216)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !446, file: !14, line: 1115, baseType: !686, size: 64, offset: 1280)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !446, file: !14, line: 1116, baseType: !905, size: 64, offset: 1344)
!905 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !446, file: !14, line: 1117, baseType: !686, size: 64, offset: 1408)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !446, file: !14, line: 1118, baseType: !541, size: 64, offset: 1472)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !446, file: !14, line: 1120, baseType: !909, size: 64, offset: 1536)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !910, line: 10, baseType: !911)
!910 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !66, line: 160, baseType: !583)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !446, file: !14, line: 1121, baseType: !583, size: 64, offset: 1600)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !446, file: !14, line: 1122, baseType: !119, size: 32, offset: 1664)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !446, file: !14, line: 1123, baseType: !648, size: 64, offset: 1728)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !446, file: !14, line: 1124, baseType: !909, size: 64, offset: 1792)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !446, file: !14, line: 1125, baseType: !909, size: 64, offset: 1856)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !446, file: !14, line: 1126, baseType: !119, size: 32, offset: 1920)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !446, file: !14, line: 1127, baseType: !119, size: 32, offset: 1952)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !446, file: !14, line: 1128, baseType: !119, size: 32, offset: 1984)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !446, file: !14, line: 1129, baseType: !119, size: 32, offset: 2016)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !446, file: !14, line: 1130, baseType: !922, size: 64, offset: 2048)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !923, line: 58, baseType: !924)
!923 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 153, baseType: !583)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !446, file: !14, line: 1131, baseType: !922, size: 64, offset: 2112)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !446, file: !14, line: 1132, baseType: !729, size: 64, offset: 2176)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !446, file: !14, line: 1133, baseType: !471, size: 64, offset: 2240)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !446, file: !14, line: 1134, baseType: !471, size: 64, offset: 2304)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !446, file: !14, line: 1135, baseType: !471, size: 64, offset: 2368)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !446, file: !14, line: 1136, baseType: !471, size: 64, offset: 2432)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !446, file: !14, line: 1137, baseType: !471, size: 64, offset: 2496)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !446, file: !14, line: 1138, baseType: !471, size: 64, offset: 2560)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !446, file: !14, line: 1139, baseType: !471, size: 64, offset: 2624)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !446, file: !14, line: 1142, baseType: !935, size: 328, offset: 2688)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 328, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 41)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !446, file: !14, line: 1143, baseType: !119, size: 32, offset: 3040)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !446, file: !14, line: 1144, baseType: !122, size: 64, offset: 3072)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !446, file: !14, line: 1145, baseType: !119, size: 32, offset: 3136)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !446, file: !14, line: 1146, baseType: !119, size: 32, offset: 3168)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !446, file: !14, line: 1147, baseType: !943, size: 320, offset: 3200)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !945)
!945 = !{!946, !955, !956, !957, !958, !959}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !944, file: !14, line: 957, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !950)
!950 = !{!951, !952, !953, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !949, file: !14, line: 950, baseType: !734, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !949, file: !14, line: 951, baseType: !119, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !949, file: !14, line: 952, baseType: !119, size: 32, offset: 96)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !949, file: !14, line: 953, baseType: !740, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !944, file: !14, line: 958, baseType: !119, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !944, file: !14, line: 959, baseType: !119, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !944, file: !14, line: 962, baseType: !119, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !944, file: !14, line: 965, baseType: !541, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !944, file: !14, line: 966, baseType: !119, size: 32, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !446, file: !14, line: 1148, baseType: !119, size: 32, offset: 3520)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !446, file: !14, line: 1149, baseType: !962, size: 704, offset: 3584)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !964)
!964 = !{!965, !966, !968, !969, !970, !975, !976, !977, !978, !979, !980, !981}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !963, file: !14, line: 973, baseType: !583, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !963, file: !14, line: 974, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !471)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !963, file: !14, line: 978, baseType: !608, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !963, file: !14, line: 980, baseType: !719, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !963, file: !14, line: 985, baseType: !971, size: 64, offset: 256)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !971, file: !14, line: 983, baseType: !119, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !971, file: !14, line: 984, baseType: !119, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !963, file: !14, line: 990, baseType: !541, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !963, file: !14, line: 991, baseType: !719, size: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !963, file: !14, line: 992, baseType: !719, size: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !963, file: !14, line: 993, baseType: !119, size: 32, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !963, file: !14, line: 996, baseType: !119, size: 32, offset: 544)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !963, file: !14, line: 997, baseType: !471, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !963, file: !14, line: 1000, baseType: !483, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !446, file: !14, line: 1150, baseType: !471, size: 64, offset: 4288)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !446, file: !14, line: 1151, baseType: !686, size: 64, offset: 4352)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !446, file: !14, line: 1152, baseType: !608, size: 64, offset: 4416)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !446, file: !14, line: 1153, baseType: !686, size: 64, offset: 4480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !446, file: !14, line: 1154, baseType: !608, size: 64, offset: 4544)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !446, file: !14, line: 1155, baseType: !729, size: 64, offset: 4608)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !446, file: !14, line: 1156, baseType: !729, size: 64, offset: 4672)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !446, file: !14, line: 1157, baseType: !692, size: 64, offset: 4736)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !446, file: !14, line: 1158, baseType: !692, size: 64, offset: 4800)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !446, file: !14, line: 1159, baseType: !692, size: 64, offset: 4864)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !446, file: !14, line: 1160, baseType: !993, size: 64, offset: 4928)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null, !98, !483}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !446, file: !14, line: 1163, baseType: !483, size: 64, offset: 4992)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !446, file: !14, line: 1166, baseType: !483, size: 64, offset: 5056)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !446, file: !14, line: 1173, baseType: !98, size: 64, offset: 5120)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !446, file: !14, line: 1174, baseType: !1001, size: 64, offset: 5184)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !1003, line: 137, baseType: !1004)
!1003 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !1003, line: 133, size: 192, elements: !1005)
!1005 = !{!1006, !1017, !1018}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1004, file: !1003, line: 134, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !1003, line: 131, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !1003, line: 98, size: 32, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !1009, file: !1003, line: 99, baseType: !89, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !1009, file: !1003, line: 100, baseType: !89, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !1009, file: !1003, line: 101, baseType: !89, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1009, file: !1003, line: 102, baseType: !89, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1009, file: !1003, line: 130, baseType: !1016, offset: 32)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !73)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !1004, file: !1003, line: 135, baseType: !98, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !1004, file: !1003, line: 136, baseType: !98, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !446, file: !14, line: 1182, baseType: !541, size: 64, offset: 5248)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !446, file: !14, line: 1183, baseType: !119, size: 32, offset: 5312)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !446, file: !14, line: 1185, baseType: !692, size: 64, offset: 5376)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !446, file: !14, line: 1186, baseType: !1023, size: 64, offset: 5440)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !1025, file: !14, line: 1085, baseType: !686, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !1025, file: !14, line: 1086, baseType: !541, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !446, file: !14, line: 1188, baseType: !692, size: 64, offset: 5504)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !446, file: !14, line: 1190, baseType: !541, size: 64, offset: 5568)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !446, file: !14, line: 1194, baseType: !541, size: 64, offset: 5632)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !446, file: !14, line: 1195, baseType: !967, size: 64, offset: 5696)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !446, file: !14, line: 1196, baseType: !119, size: 32, offset: 5760)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !446, file: !14, line: 1197, baseType: !541, size: 64, offset: 5824)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !446, file: !14, line: 1198, baseType: !122, size: 64, offset: 5888)
!1036 = !DILocalVariable(name: "c", arg: 1, scope: !441, file: !1, line: 169, type: !444)
!1037 = !DILocation(line: 169, column: 29, scope: !441)
!1038 = !DILocalVariable(name: "cols", scope: !441, file: !1, line: 170, type: !583)
!1039 = !DILocation(line: 170, column: 10, scope: !441)
!1040 = !DILocalVariable(name: "rows", scope: !441, file: !1, line: 171, type: !583)
!1041 = !DILocation(line: 171, column: 10, scope: !441)
!1042 = !DILocation(line: 174, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !441, file: !1, line: 174, column: 9)
!1044 = !DILocation(line: 174, column: 12, scope: !1043)
!1045 = !DILocation(line: 174, column: 17, scope: !1043)
!1046 = !DILocation(line: 174, column: 21, scope: !1043)
!1047 = !DILocation(line: 175, column: 34, scope: !1043)
!1048 = !DILocation(line: 175, column: 36, scope: !1043)
!1049 = !DILocation(line: 175, column: 39, scope: !1043)
!1050 = !DILocation(line: 175, column: 9, scope: !1043)
!1051 = !DILocation(line: 175, column: 59, scope: !1043)
!1052 = !DILocation(line: 174, column: 9, scope: !441)
!1053 = !DILocation(line: 176, column: 9, scope: !1043)
!1054 = !DILocation(line: 178, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !441, file: !1, line: 178, column: 9)
!1056 = !DILocation(line: 178, column: 12, scope: !1055)
!1057 = !DILocation(line: 178, column: 17, scope: !1055)
!1058 = !DILocation(line: 178, column: 21, scope: !1055)
!1059 = !DILocation(line: 179, column: 34, scope: !1055)
!1060 = !DILocation(line: 179, column: 36, scope: !1055)
!1061 = !DILocation(line: 179, column: 39, scope: !1055)
!1062 = !DILocation(line: 179, column: 9, scope: !1055)
!1063 = !DILocation(line: 179, column: 59, scope: !1055)
!1064 = !DILocation(line: 178, column: 9, scope: !441)
!1065 = !DILocation(line: 180, column: 9, scope: !1055)
!1066 = !DILocation(line: 184, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !441, file: !1, line: 184, column: 9)
!1068 = !DILocation(line: 184, column: 14, scope: !1067)
!1069 = !DILocation(line: 184, column: 9, scope: !441)
!1070 = !DILocation(line: 184, column: 24, scope: !1067)
!1071 = !DILocation(line: 184, column: 19, scope: !1067)
!1072 = !DILocation(line: 185, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !441, file: !1, line: 185, column: 9)
!1074 = !DILocation(line: 185, column: 14, scope: !1073)
!1075 = !DILocation(line: 185, column: 9, scope: !441)
!1076 = !DILocation(line: 185, column: 27, scope: !1073)
!1077 = !DILocation(line: 185, column: 22, scope: !1073)
!1078 = !DILocation(line: 186, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !441, file: !1, line: 186, column: 9)
!1080 = !DILocation(line: 186, column: 14, scope: !1079)
!1081 = !DILocation(line: 186, column: 9, scope: !441)
!1082 = !DILocation(line: 186, column: 24, scope: !1079)
!1083 = !DILocation(line: 186, column: 19, scope: !1079)
!1084 = !DILocation(line: 187, column: 9, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !441, file: !1, line: 187, column: 9)
!1086 = !DILocation(line: 187, column: 14, scope: !1085)
!1087 = !DILocation(line: 187, column: 9, scope: !441)
!1088 = !DILocation(line: 187, column: 27, scope: !1085)
!1089 = !DILocation(line: 187, column: 22, scope: !1085)
!1090 = !DILocalVariable(name: "canvas", scope: !441, file: !1, line: 190, type: !113)
!1091 = !DILocation(line: 190, column: 15, scope: !441)
!1092 = !DILocation(line: 190, column: 39, scope: !441)
!1093 = !DILocation(line: 190, column: 44, scope: !441)
!1094 = !DILocation(line: 190, column: 24, scope: !441)
!1095 = !DILocation(line: 191, column: 21, scope: !441)
!1096 = !DILocation(line: 191, column: 5, scope: !441)
!1097 = !DILocalVariable(name: "rendered", scope: !441, file: !1, line: 192, type: !729)
!1098 = !DILocation(line: 192, column: 9, scope: !441)
!1099 = !DILocation(line: 192, column: 33, scope: !441)
!1100 = !DILocation(line: 192, column: 20, scope: !441)
!1101 = !DILocation(line: 193, column: 23, scope: !441)
!1102 = !DILocation(line: 193, column: 16, scope: !441)
!1103 = !DILocation(line: 193, column: 14, scope: !441)
!1104 = !DILocation(line: 196, column: 23, scope: !441)
!1105 = !DILocation(line: 196, column: 16, scope: !441)
!1106 = !DILocation(line: 196, column: 14, scope: !441)
!1107 = !DILocation(line: 197, column: 26, scope: !441)
!1108 = !DILocation(line: 197, column: 16, scope: !441)
!1109 = !DILocation(line: 197, column: 14, scope: !441)
!1110 = !DILocation(line: 198, column: 22, scope: !441)
!1111 = !DILocation(line: 198, column: 24, scope: !441)
!1112 = !DILocation(line: 198, column: 40, scope: !441)
!1113 = !DILocation(line: 198, column: 33, scope: !441)
!1114 = !DILocation(line: 198, column: 5, scope: !441)
!1115 = !DILocation(line: 199, column: 13, scope: !441)
!1116 = !DILocation(line: 199, column: 5, scope: !441)
!1117 = !DILocation(line: 200, column: 18, scope: !441)
!1118 = !DILocation(line: 200, column: 5, scope: !441)
!1119 = !DILocation(line: 201, column: 1, scope: !441)
!1120 = distinct !DISubprogram(name: "renderCanvas", scope: !1, file: !1, line: 47, type: !1121, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !131)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!729, !113}
!1123 = !DILocalVariable(name: "canvas", arg: 1, scope: !1120, file: !1, line: 47, type: !113)
!1124 = !DILocation(line: 47, column: 35, scope: !1120)
!1125 = !DILocalVariable(name: "text", scope: !1120, file: !1, line: 48, type: !729)
!1126 = !DILocation(line: 48, column: 9, scope: !1120)
!1127 = !DILocation(line: 48, column: 16, scope: !1120)
!1128 = !DILocalVariable(name: "y", scope: !1129, file: !1, line: 49, type: !119)
!1129 = distinct !DILexicalBlock(scope: !1120, file: !1, line: 49, column: 5)
!1130 = !DILocation(line: 49, column: 14, scope: !1129)
!1131 = !DILocation(line: 49, column: 10, scope: !1129)
!1132 = !DILocation(line: 49, column: 21, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 49, column: 5)
!1134 = !DILocation(line: 49, column: 25, scope: !1133)
!1135 = !DILocation(line: 49, column: 33, scope: !1133)
!1136 = !DILocation(line: 49, column: 23, scope: !1133)
!1137 = !DILocation(line: 49, column: 5, scope: !1129)
!1138 = !DILocalVariable(name: "x", scope: !1139, file: !1, line: 50, type: !119)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 50, column: 9)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 49, column: 46)
!1141 = !DILocation(line: 50, column: 18, scope: !1139)
!1142 = !DILocation(line: 50, column: 14, scope: !1139)
!1143 = !DILocation(line: 50, column: 25, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !1, line: 50, column: 9)
!1145 = !DILocation(line: 50, column: 29, scope: !1144)
!1146 = !DILocation(line: 50, column: 37, scope: !1144)
!1147 = !DILocation(line: 50, column: 27, scope: !1144)
!1148 = !DILocation(line: 50, column: 9, scope: !1139)
!1149 = !DILocalVariable(name: "color", scope: !1150, file: !1, line: 51, type: !119)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 50, column: 49)
!1151 = !DILocation(line: 51, column: 17, scope: !1150)
!1152 = !DILocation(line: 51, column: 36, scope: !1150)
!1153 = !DILocation(line: 51, column: 43, scope: !1150)
!1154 = !DILocation(line: 51, column: 45, scope: !1150)
!1155 = !DILocation(line: 51, column: 25, scope: !1150)
!1156 = !DILocalVariable(name: "ce", scope: !1150, file: !1, line: 52, type: !122)
!1157 = !DILocation(line: 52, column: 19, scope: !1150)
!1158 = !DILocation(line: 57, column: 20, scope: !1150)
!1159 = !DILocation(line: 57, column: 13, scope: !1150)
!1160 = !DILocation(line: 58, column: 24, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 57, column: 27)
!1162 = !DILocation(line: 58, column: 38, scope: !1161)
!1163 = !DILocation(line: 59, column: 24, scope: !1161)
!1164 = !DILocation(line: 59, column: 39, scope: !1161)
!1165 = !DILocation(line: 60, column: 24, scope: !1161)
!1166 = !DILocation(line: 60, column: 38, scope: !1161)
!1167 = !DILocation(line: 61, column: 24, scope: !1161)
!1168 = !DILocation(line: 61, column: 39, scope: !1161)
!1169 = !DILocation(line: 62, column: 25, scope: !1161)
!1170 = !DILocation(line: 62, column: 39, scope: !1161)
!1171 = !DILocation(line: 64, column: 33, scope: !1150)
!1172 = !DILocation(line: 64, column: 56, scope: !1150)
!1173 = !DILocation(line: 64, column: 20, scope: !1150)
!1174 = !DILocation(line: 64, column: 18, scope: !1150)
!1175 = !DILocation(line: 65, column: 9, scope: !1150)
!1176 = !DILocation(line: 50, column: 45, scope: !1144)
!1177 = !DILocation(line: 50, column: 9, scope: !1144)
!1178 = distinct !{!1178, !1148, !1179, !265}
!1179 = !DILocation(line: 65, column: 9, scope: !1139)
!1180 = !DILocation(line: 66, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 66, column: 13)
!1182 = !DILocation(line: 66, column: 18, scope: !1181)
!1183 = !DILocation(line: 66, column: 26, scope: !1181)
!1184 = !DILocation(line: 66, column: 32, scope: !1181)
!1185 = !DILocation(line: 66, column: 15, scope: !1181)
!1186 = !DILocation(line: 66, column: 13, scope: !1140)
!1187 = !DILocation(line: 66, column: 53, scope: !1181)
!1188 = !DILocation(line: 66, column: 43, scope: !1181)
!1189 = !DILocation(line: 66, column: 41, scope: !1181)
!1190 = !DILocation(line: 66, column: 36, scope: !1181)
!1191 = !DILocation(line: 67, column: 5, scope: !1140)
!1192 = !DILocation(line: 49, column: 42, scope: !1133)
!1193 = !DILocation(line: 49, column: 5, scope: !1133)
!1194 = distinct !{!1194, !1137, !1195, !265}
!1195 = !DILocation(line: 67, column: 5, scope: !1129)
!1196 = !DILocation(line: 68, column: 12, scope: !1120)
!1197 = !DILocation(line: 68, column: 5, scope: !1120)
!1198 = distinct !DISubprogram(name: "sdslen", scope: !60, file: !60, line: 87, type: !1199, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !131)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!541, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!1202 = !DILocalVariable(name: "s", arg: 1, scope: !1198, file: !60, line: 87, type: !1201)
!1203 = !DILocation(line: 87, column: 39, scope: !1198)
!1204 = !DILocalVariable(name: "flags", scope: !1198, file: !60, line: 88, type: !67)
!1205 = !DILocation(line: 88, column: 19, scope: !1198)
!1206 = !DILocation(line: 88, column: 27, scope: !1198)
!1207 = !DILocation(line: 89, column: 12, scope: !1198)
!1208 = !DILocation(line: 89, column: 17, scope: !1198)
!1209 = !DILocation(line: 89, column: 5, scope: !1198)
!1210 = !DILocation(line: 91, column: 20, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1198, file: !60, line: 89, column: 33)
!1212 = !DILocation(line: 91, column: 13, scope: !1211)
!1213 = !DILocation(line: 93, column: 20, scope: !1211)
!1214 = !DILocation(line: 93, column: 34, scope: !1211)
!1215 = !DILocation(line: 93, column: 13, scope: !1211)
!1216 = !DILocation(line: 95, column: 20, scope: !1211)
!1217 = !DILocation(line: 95, column: 35, scope: !1211)
!1218 = !DILocation(line: 95, column: 13, scope: !1211)
!1219 = !DILocation(line: 97, column: 20, scope: !1211)
!1220 = !DILocation(line: 97, column: 35, scope: !1211)
!1221 = !DILocation(line: 97, column: 13, scope: !1211)
!1222 = !DILocation(line: 99, column: 20, scope: !1211)
!1223 = !DILocation(line: 99, column: 35, scope: !1211)
!1224 = !DILocation(line: 99, column: 13, scope: !1211)
!1225 = !DILocation(line: 101, column: 5, scope: !1198)
!1226 = !DILocation(line: 102, column: 1, scope: !1198)
