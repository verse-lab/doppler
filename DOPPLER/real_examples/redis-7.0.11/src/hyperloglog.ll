; ModuleID = 'hyperloglog.c'
source_filename = "hyperloglog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.socketFds = type { [16 x i32], i32 }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.pause_event = type { i32, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.5 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.aofManifest = type { %struct.aofInfo*, %struct.list*, %struct.list*, i64, i64, i32 }
%struct.aofInfo = type { i8*, i64, i32 }
%struct.saveparam = type { i64, i32 }
%struct.redisOpArray = type { %struct.redisOp*, i32, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32 }
%struct.redisObject = type { i32, i32, i8* }
%struct.replBacklog = type { %struct.listNode*, i64, %struct.rax*, i64, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.iovec = type { i8*, i64 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.clusterState = type opaque
%struct.client = type { i64, i64, %struct.connection*, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i64, i32, %struct.redisObject**, i32, i32, %struct.redisObject**, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.user*, i32, i32, i64, %struct.list*, i64, %struct.list*, i64, i64, i64, i32, %struct.dictEntry*, i64, i64, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, i8*, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, %struct.dict*, i8*, i8*, %struct.listNode*, %struct.listNode*, %struct.listNode*, void (i64, i8*)*, i8*, i8*, i64, %struct.rax*, i64, i32, %struct.listNode*, %struct.clientMemUsageBucket*, %struct.listNode*, i64, i64, i64, i32, i64, i8* }
%struct.redisCommand = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, %struct.commandHistory*, i8**, void (%struct.client*)*, i32, i64, i64, [4 x %struct.keySpec], i32 (%struct.redisCommand*, %struct.redisObject**, i32, %struct.getKeysResult*)*, %struct.redisCommand*, %struct.redisCommandArg*, i64, i64, i64, i64, i32, i8*, %struct.hdr_histogram*, %struct.keySpec*, %struct.keySpec, i32, i32, i32, i32, i32, %struct.dict*, %struct.redisCommand*, %struct.RedisModuleCommand* }
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
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.hllhdr = type { [4 x i8], i8, [3 x i8], [8 x i8], [0 x i8] }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@server = external dso_local global %struct.redisServer, align 8
@.str = private unnamed_addr constant [18 x i8] c"dense_retval == 1\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hyperloglog.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Unknown HyperLogLog encoding in hllCount()\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"(p-(uint8_t*)s) == sparselen\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HYLL\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"-WRONGTYPE Key is not a valid HyperLogLog string value.\00", align 1
@invalid_hll_err = internal global i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0), align 8, !dbg !0
@.str.6 = private unnamed_addr constant [6 x i8] c"pfadd\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"TESTFAILED Register %d should be %d but is %d\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"TESTFAILED sparse encoding not used\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"TESTFAILED dense/sparse disagree\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"TESTFAILED Too big error. card:%llu abserr:%llu\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"The specified key does not exist\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"getreg\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"HLL encoding is not sparse\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"z:%d \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Z:%d \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"v:%d,%d \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@__const.pfdebugCommand.encodingstr = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)], align 16
@.str.22 = private unnamed_addr constant [8 x i8] c"todense\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Unknown PFDEBUG subcommand '%s'\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Wrong number of arguments for the '%s' subcommand\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"-INVALIDOBJ Corrupted HLL object detected\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @MurmurHash64A(i8* %key, i32 %len, i32 %seed) #0 !dbg !146 {
entry:
  %key.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %seed.addr = alloca i32, align 4
  %m = alloca i64, align 8
  %r = alloca i32, align 4
  %h = alloca i64, align 8
  %data = alloca i8*, align 8
  %end = alloca i8*, align 8
  %k = alloca i64, align 8
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !152, metadata !DIExpression()), !dbg !153
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !154, metadata !DIExpression()), !dbg !155
  store i32 %seed, i32* %seed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %seed.addr, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata i64* %m, metadata !158, metadata !DIExpression()), !dbg !160
  store i64 -4132994306676758123, i64* %m, align 8, !dbg !160
  call void @llvm.dbg.declare(metadata i32* %r, metadata !161, metadata !DIExpression()), !dbg !163
  store i32 47, i32* %r, align 4, !dbg !163
  call void @llvm.dbg.declare(metadata i64* %h, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load i32, i32* %seed.addr, align 4, !dbg !166
  %conv = zext i32 %0 to i64, !dbg !166
  %1 = load i32, i32* %len.addr, align 4, !dbg !167
  %conv1 = sext i32 %1 to i64, !dbg !167
  %mul = mul i64 %conv1, -4132994306676758123, !dbg !168
  %xor = xor i64 %conv, %mul, !dbg !169
  store i64 %xor, i64* %h, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %data, metadata !170, metadata !DIExpression()), !dbg !171
  %2 = load i8*, i8** %key.addr, align 8, !dbg !172
  store i8* %2, i8** %data, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i8** %end, metadata !173, metadata !DIExpression()), !dbg !174
  %3 = load i8*, i8** %data, align 8, !dbg !175
  %4 = load i32, i32* %len.addr, align 4, !dbg !176
  %5 = load i32, i32* %len.addr, align 4, !dbg !177
  %and = and i32 %5, 7, !dbg !178
  %sub = sub nsw i32 %4, %and, !dbg !179
  %idx.ext = sext i32 %sub to i64, !dbg !180
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext, !dbg !180
  store i8* %add.ptr, i8** %end, align 8, !dbg !174
  br label %while.cond, !dbg !181

while.cond:                                       ; preds = %while.body, %entry
  %6 = load i8*, i8** %data, align 8, !dbg !182
  %7 = load i8*, i8** %end, align 8, !dbg !183
  %cmp = icmp ne i8* %6, %7, !dbg !184
  br i1 %cmp, label %while.body, label %while.end, !dbg !181

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %k, metadata !185, metadata !DIExpression()), !dbg !187
  %8 = load i8*, i8** %data, align 8, !dbg !188
  %9 = bitcast i8* %8 to i64*, !dbg !189
  %10 = load i64, i64* %9, align 8, !dbg !189
  store i64 %10, i64* %k, align 8, !dbg !190
  %11 = load i64, i64* %k, align 8, !dbg !191
  %mul3 = mul i64 %11, -4132994306676758123, !dbg !191
  store i64 %mul3, i64* %k, align 8, !dbg !191
  %12 = load i64, i64* %k, align 8, !dbg !192
  %shr = lshr i64 %12, 47, !dbg !193
  %13 = load i64, i64* %k, align 8, !dbg !194
  %xor4 = xor i64 %13, %shr, !dbg !194
  store i64 %xor4, i64* %k, align 8, !dbg !194
  %14 = load i64, i64* %k, align 8, !dbg !195
  %mul5 = mul i64 %14, -4132994306676758123, !dbg !195
  store i64 %mul5, i64* %k, align 8, !dbg !195
  %15 = load i64, i64* %k, align 8, !dbg !196
  %16 = load i64, i64* %h, align 8, !dbg !197
  %xor6 = xor i64 %16, %15, !dbg !197
  store i64 %xor6, i64* %h, align 8, !dbg !197
  %17 = load i64, i64* %h, align 8, !dbg !198
  %mul7 = mul i64 %17, -4132994306676758123, !dbg !198
  store i64 %mul7, i64* %h, align 8, !dbg !198
  %18 = load i8*, i8** %data, align 8, !dbg !199
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !199
  store i8* %add.ptr8, i8** %data, align 8, !dbg !199
  br label %while.cond, !dbg !181, !llvm.loop !200

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %len.addr, align 4, !dbg !203
  %and9 = and i32 %19, 7, !dbg !204
  switch i32 %and9, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb12
    i32 5, label %sw.bb17
    i32 4, label %sw.bb22
    i32 3, label %sw.bb27
    i32 2, label %sw.bb32
    i32 1, label %sw.bb37
  ], !dbg !205

sw.bb:                                            ; preds = %while.end
  %20 = load i8*, i8** %data, align 8, !dbg !206
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 6, !dbg !206
  %21 = load i8, i8* %arrayidx, align 1, !dbg !206
  %conv10 = zext i8 %21 to i64, !dbg !208
  %shl = shl i64 %conv10, 48, !dbg !209
  %22 = load i64, i64* %h, align 8, !dbg !210
  %xor11 = xor i64 %22, %shl, !dbg !210
  store i64 %xor11, i64* %h, align 8, !dbg !210
  br label %sw.bb12, !dbg !211

sw.bb12:                                          ; preds = %while.end, %sw.bb
  %23 = load i8*, i8** %data, align 8, !dbg !212
  %arrayidx13 = getelementptr inbounds i8, i8* %23, i64 5, !dbg !212
  %24 = load i8, i8* %arrayidx13, align 1, !dbg !212
  %conv14 = zext i8 %24 to i64, !dbg !213
  %shl15 = shl i64 %conv14, 40, !dbg !214
  %25 = load i64, i64* %h, align 8, !dbg !215
  %xor16 = xor i64 %25, %shl15, !dbg !215
  store i64 %xor16, i64* %h, align 8, !dbg !215
  br label %sw.bb17, !dbg !216

sw.bb17:                                          ; preds = %while.end, %sw.bb12
  %26 = load i8*, i8** %data, align 8, !dbg !217
  %arrayidx18 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !217
  %27 = load i8, i8* %arrayidx18, align 1, !dbg !217
  %conv19 = zext i8 %27 to i64, !dbg !218
  %shl20 = shl i64 %conv19, 32, !dbg !219
  %28 = load i64, i64* %h, align 8, !dbg !220
  %xor21 = xor i64 %28, %shl20, !dbg !220
  store i64 %xor21, i64* %h, align 8, !dbg !220
  br label %sw.bb22, !dbg !221

sw.bb22:                                          ; preds = %while.end, %sw.bb17
  %29 = load i8*, i8** %data, align 8, !dbg !222
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !222
  %30 = load i8, i8* %arrayidx23, align 1, !dbg !222
  %conv24 = zext i8 %30 to i64, !dbg !223
  %shl25 = shl i64 %conv24, 24, !dbg !224
  %31 = load i64, i64* %h, align 8, !dbg !225
  %xor26 = xor i64 %31, %shl25, !dbg !225
  store i64 %xor26, i64* %h, align 8, !dbg !225
  br label %sw.bb27, !dbg !226

sw.bb27:                                          ; preds = %while.end, %sw.bb22
  %32 = load i8*, i8** %data, align 8, !dbg !227
  %arrayidx28 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !227
  %33 = load i8, i8* %arrayidx28, align 1, !dbg !227
  %conv29 = zext i8 %33 to i64, !dbg !228
  %shl30 = shl i64 %conv29, 16, !dbg !229
  %34 = load i64, i64* %h, align 8, !dbg !230
  %xor31 = xor i64 %34, %shl30, !dbg !230
  store i64 %xor31, i64* %h, align 8, !dbg !230
  br label %sw.bb32, !dbg !231

sw.bb32:                                          ; preds = %while.end, %sw.bb27
  %35 = load i8*, i8** %data, align 8, !dbg !232
  %arrayidx33 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !232
  %36 = load i8, i8* %arrayidx33, align 1, !dbg !232
  %conv34 = zext i8 %36 to i64, !dbg !233
  %shl35 = shl i64 %conv34, 8, !dbg !234
  %37 = load i64, i64* %h, align 8, !dbg !235
  %xor36 = xor i64 %37, %shl35, !dbg !235
  store i64 %xor36, i64* %h, align 8, !dbg !235
  br label %sw.bb37, !dbg !236

sw.bb37:                                          ; preds = %while.end, %sw.bb32
  %38 = load i8*, i8** %data, align 8, !dbg !237
  %arrayidx38 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !237
  %39 = load i8, i8* %arrayidx38, align 1, !dbg !237
  %conv39 = zext i8 %39 to i64, !dbg !238
  %40 = load i64, i64* %h, align 8, !dbg !239
  %xor40 = xor i64 %40, %conv39, !dbg !239
  store i64 %xor40, i64* %h, align 8, !dbg !239
  %41 = load i64, i64* %h, align 8, !dbg !240
  %mul41 = mul i64 %41, -4132994306676758123, !dbg !240
  store i64 %mul41, i64* %h, align 8, !dbg !240
  br label %sw.epilog, !dbg !241

sw.epilog:                                        ; preds = %sw.bb37, %while.end
  %42 = load i64, i64* %h, align 8, !dbg !242
  %shr42 = lshr i64 %42, 47, !dbg !243
  %43 = load i64, i64* %h, align 8, !dbg !244
  %xor43 = xor i64 %43, %shr42, !dbg !244
  store i64 %xor43, i64* %h, align 8, !dbg !244
  %44 = load i64, i64* %h, align 8, !dbg !245
  %mul44 = mul i64 %44, -4132994306676758123, !dbg !245
  store i64 %mul44, i64* %h, align 8, !dbg !245
  %45 = load i64, i64* %h, align 8, !dbg !246
  %shr45 = lshr i64 %45, 47, !dbg !247
  %46 = load i64, i64* %h, align 8, !dbg !248
  %xor46 = xor i64 %46, %shr45, !dbg !248
  store i64 %xor46, i64* %h, align 8, !dbg !248
  %47 = load i64, i64* %h, align 8, !dbg !249
  ret i64 %47, !dbg !250
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllPatLen(i8* %ele, i64 %elesize, i64* %regp) #0 !dbg !251 {
entry:
  %ele.addr = alloca i8*, align 8
  %elesize.addr = alloca i64, align 8
  %regp.addr = alloca i64*, align 8
  %hash = alloca i64, align 8
  %bit = alloca i64, align 8
  %index = alloca i64, align 8
  %count = alloca i32, align 4
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !257, metadata !DIExpression()), !dbg !258
  store i64 %elesize, i64* %elesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %elesize.addr, metadata !259, metadata !DIExpression()), !dbg !260
  store i64* %regp, i64** %regp.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %regp.addr, metadata !261, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i64* %hash, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i64* %bit, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata i64* %index, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata i32* %count, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load i8*, i8** %ele.addr, align 8, !dbg !271
  %1 = load i64, i64* %elesize.addr, align 8, !dbg !272
  %conv = trunc i64 %1 to i32, !dbg !272
  %call = call i64 @MurmurHash64A(i8* %0, i32 %conv, i32 -1379386599), !dbg !273
  store i64 %call, i64* %hash, align 8, !dbg !274
  %2 = load i64, i64* %hash, align 8, !dbg !275
  %and = and i64 %2, 16383, !dbg !276
  store i64 %and, i64* %index, align 8, !dbg !277
  %3 = load i64, i64* %hash, align 8, !dbg !278
  %shr = lshr i64 %3, 14, !dbg !278
  store i64 %shr, i64* %hash, align 8, !dbg !278
  %4 = load i64, i64* %hash, align 8, !dbg !279
  %or = or i64 %4, 1125899906842624, !dbg !279
  store i64 %or, i64* %hash, align 8, !dbg !279
  store i64 1, i64* %bit, align 8, !dbg !280
  store i32 1, i32* %count, align 4, !dbg !281
  br label %while.cond, !dbg !282

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i64, i64* %hash, align 8, !dbg !283
  %6 = load i64, i64* %bit, align 8, !dbg !284
  %and1 = and i64 %5, %6, !dbg !285
  %cmp = icmp eq i64 %and1, 0, !dbg !286
  br i1 %cmp, label %while.body, label %while.end, !dbg !282

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %count, align 4, !dbg !287
  %inc = add nsw i32 %7, 1, !dbg !287
  store i32 %inc, i32* %count, align 4, !dbg !287
  %8 = load i64, i64* %bit, align 8, !dbg !289
  %shl = shl i64 %8, 1, !dbg !289
  store i64 %shl, i64* %bit, align 8, !dbg !289
  br label %while.cond, !dbg !282, !llvm.loop !290

while.end:                                        ; preds = %while.cond
  %9 = load i64, i64* %index, align 8, !dbg !292
  %conv3 = trunc i64 %9 to i32, !dbg !293
  %conv4 = sext i32 %conv3 to i64, !dbg !293
  %10 = load i64*, i64** %regp.addr, align 8, !dbg !294
  store i64 %conv4, i64* %10, align 8, !dbg !295
  %11 = load i32, i32* %count, align 4, !dbg !296
  ret i32 %11, !dbg !297
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllDenseSet(i8* %registers, i64 %index, i8 zeroext %count) #0 !dbg !298 {
entry:
  %retval = alloca i32, align 4
  %registers.addr = alloca i8*, align 8
  %index.addr = alloca i64, align 8
  %count.addr = alloca i8, align 1
  %oldcount = alloca i8, align 1
  %_p = alloca i8*, align 8
  %_byte = alloca i64, align 8
  %_fb = alloca i64, align 8
  %_fb8 = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %_p10 = alloca i8*, align 8
  %_byte11 = alloca i64, align 8
  %_fb14 = alloca i64, align 8
  %_fb817 = alloca i64, align 8
  %_v = alloca i64, align 8
  store i8* %registers, i8** %registers.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %registers.addr, metadata !301, metadata !DIExpression()), !dbg !302
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !303, metadata !DIExpression()), !dbg !304
  store i8 %count, i8* %count.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %count.addr, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i8* %oldcount, metadata !307, metadata !DIExpression()), !dbg !308
  br label %do.body, !dbg !309

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %_p, metadata !310, metadata !DIExpression()), !dbg !312
  %0 = load i8*, i8** %registers.addr, align 8, !dbg !312
  store i8* %0, i8** %_p, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i64* %_byte, metadata !313, metadata !DIExpression()), !dbg !312
  %1 = load i64, i64* %index.addr, align 8, !dbg !312
  %mul = mul nsw i64 %1, 6, !dbg !312
  %div = sdiv i64 %mul, 8, !dbg !312
  store i64 %div, i64* %_byte, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i64* %_fb, metadata !314, metadata !DIExpression()), !dbg !312
  %2 = load i64, i64* %index.addr, align 8, !dbg !312
  %mul1 = mul nsw i64 %2, 6, !dbg !312
  %and = and i64 %mul1, 7, !dbg !312
  store i64 %and, i64* %_fb, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i64* %_fb8, metadata !315, metadata !DIExpression()), !dbg !312
  %3 = load i64, i64* %_fb, align 8, !dbg !312
  %sub = sub i64 8, %3, !dbg !312
  store i64 %sub, i64* %_fb8, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i64* %b0, metadata !316, metadata !DIExpression()), !dbg !312
  %4 = load i8*, i8** %_p, align 8, !dbg !312
  %5 = load i64, i64* %_byte, align 8, !dbg !312
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !312
  %6 = load i8, i8* %arrayidx, align 1, !dbg !312
  %conv = zext i8 %6 to i64, !dbg !312
  store i64 %conv, i64* %b0, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i64* %b1, metadata !317, metadata !DIExpression()), !dbg !312
  %7 = load i8*, i8** %_p, align 8, !dbg !312
  %8 = load i64, i64* %_byte, align 8, !dbg !312
  %add = add i64 %8, 1, !dbg !312
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %add, !dbg !312
  %9 = load i8, i8* %arrayidx2, align 1, !dbg !312
  %conv3 = zext i8 %9 to i64, !dbg !312
  store i64 %conv3, i64* %b1, align 8, !dbg !312
  %10 = load i64, i64* %b0, align 8, !dbg !312
  %11 = load i64, i64* %_fb, align 8, !dbg !312
  %shr = lshr i64 %10, %11, !dbg !312
  %12 = load i64, i64* %b1, align 8, !dbg !312
  %13 = load i64, i64* %_fb8, align 8, !dbg !312
  %shl = shl i64 %12, %13, !dbg !312
  %or = or i64 %shr, %shl, !dbg !312
  %and4 = and i64 %or, 63, !dbg !312
  %conv5 = trunc i64 %and4 to i8, !dbg !312
  store i8 %conv5, i8* %oldcount, align 1, !dbg !312
  br label %do.end, !dbg !312

do.end:                                           ; preds = %do.body
  %14 = load i8, i8* %count.addr, align 1, !dbg !318
  %conv6 = zext i8 %14 to i32, !dbg !318
  %15 = load i8, i8* %oldcount, align 1, !dbg !320
  %conv7 = zext i8 %15 to i32, !dbg !320
  %cmp = icmp sgt i32 %conv6, %conv7, !dbg !321
  br i1 %cmp, label %if.then, label %if.else, !dbg !322

if.then:                                          ; preds = %do.end
  br label %do.body9, !dbg !323

do.body9:                                         ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %_p10, metadata !325, metadata !DIExpression()), !dbg !327
  %16 = load i8*, i8** %registers.addr, align 8, !dbg !327
  store i8* %16, i8** %_p10, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata i64* %_byte11, metadata !328, metadata !DIExpression()), !dbg !327
  %17 = load i64, i64* %index.addr, align 8, !dbg !327
  %mul12 = mul nsw i64 %17, 6, !dbg !327
  %div13 = sdiv i64 %mul12, 8, !dbg !327
  store i64 %div13, i64* %_byte11, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata i64* %_fb14, metadata !329, metadata !DIExpression()), !dbg !327
  %18 = load i64, i64* %index.addr, align 8, !dbg !327
  %mul15 = mul nsw i64 %18, 6, !dbg !327
  %and16 = and i64 %mul15, 7, !dbg !327
  store i64 %and16, i64* %_fb14, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata i64* %_fb817, metadata !330, metadata !DIExpression()), !dbg !327
  %19 = load i64, i64* %_fb14, align 8, !dbg !327
  %sub18 = sub i64 8, %19, !dbg !327
  store i64 %sub18, i64* %_fb817, align 8, !dbg !327
  call void @llvm.dbg.declare(metadata i64* %_v, metadata !331, metadata !DIExpression()), !dbg !327
  %20 = load i8, i8* %count.addr, align 1, !dbg !327
  %conv19 = zext i8 %20 to i64, !dbg !327
  store i64 %conv19, i64* %_v, align 8, !dbg !327
  %21 = load i64, i64* %_fb14, align 8, !dbg !327
  %sh_prom = trunc i64 %21 to i32, !dbg !327
  %shl20 = shl i32 63, %sh_prom, !dbg !327
  %neg = xor i32 %shl20, -1, !dbg !327
  %22 = load i8*, i8** %_p10, align 8, !dbg !327
  %23 = load i64, i64* %_byte11, align 8, !dbg !327
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %23, !dbg !327
  %24 = load i8, i8* %arrayidx21, align 1, !dbg !327
  %conv22 = zext i8 %24 to i32, !dbg !327
  %and23 = and i32 %conv22, %neg, !dbg !327
  %conv24 = trunc i32 %and23 to i8, !dbg !327
  store i8 %conv24, i8* %arrayidx21, align 1, !dbg !327
  %25 = load i64, i64* %_v, align 8, !dbg !327
  %26 = load i64, i64* %_fb14, align 8, !dbg !327
  %shl25 = shl i64 %25, %26, !dbg !327
  %27 = load i8*, i8** %_p10, align 8, !dbg !327
  %28 = load i64, i64* %_byte11, align 8, !dbg !327
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !327
  %29 = load i8, i8* %arrayidx26, align 1, !dbg !327
  %conv27 = zext i8 %29 to i64, !dbg !327
  %or28 = or i64 %conv27, %shl25, !dbg !327
  %conv29 = trunc i64 %or28 to i8, !dbg !327
  store i8 %conv29, i8* %arrayidx26, align 1, !dbg !327
  %30 = load i64, i64* %_fb817, align 8, !dbg !327
  %sh_prom30 = trunc i64 %30 to i32, !dbg !327
  %shr31 = ashr i32 63, %sh_prom30, !dbg !327
  %neg32 = xor i32 %shr31, -1, !dbg !327
  %31 = load i8*, i8** %_p10, align 8, !dbg !327
  %32 = load i64, i64* %_byte11, align 8, !dbg !327
  %add33 = add i64 %32, 1, !dbg !327
  %arrayidx34 = getelementptr inbounds i8, i8* %31, i64 %add33, !dbg !327
  %33 = load i8, i8* %arrayidx34, align 1, !dbg !327
  %conv35 = zext i8 %33 to i32, !dbg !327
  %and36 = and i32 %conv35, %neg32, !dbg !327
  %conv37 = trunc i32 %and36 to i8, !dbg !327
  store i8 %conv37, i8* %arrayidx34, align 1, !dbg !327
  %34 = load i64, i64* %_v, align 8, !dbg !327
  %35 = load i64, i64* %_fb817, align 8, !dbg !327
  %shr38 = lshr i64 %34, %35, !dbg !327
  %36 = load i8*, i8** %_p10, align 8, !dbg !327
  %37 = load i64, i64* %_byte11, align 8, !dbg !327
  %add39 = add i64 %37, 1, !dbg !327
  %arrayidx40 = getelementptr inbounds i8, i8* %36, i64 %add39, !dbg !327
  %38 = load i8, i8* %arrayidx40, align 1, !dbg !327
  %conv41 = zext i8 %38 to i64, !dbg !327
  %or42 = or i64 %conv41, %shr38, !dbg !327
  %conv43 = trunc i64 %or42 to i8, !dbg !327
  store i8 %conv43, i8* %arrayidx40, align 1, !dbg !327
  br label %do.end44, !dbg !327

do.end44:                                         ; preds = %do.body9
  store i32 1, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.else:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !333
  br label %return, !dbg !333

return:                                           ; preds = %if.else, %do.end44
  %39 = load i32, i32* %retval, align 4, !dbg !335
  ret i32 %39, !dbg !335
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllDenseAdd(i8* %registers, i8* %ele, i64 %elesize) #0 !dbg !336 {
entry:
  %registers.addr = alloca i8*, align 8
  %ele.addr = alloca i8*, align 8
  %elesize.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %count = alloca i8, align 1
  store i8* %registers, i8** %registers.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %registers.addr, metadata !339, metadata !DIExpression()), !dbg !340
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !341, metadata !DIExpression()), !dbg !342
  store i64 %elesize, i64* %elesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %elesize.addr, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata i64* %index, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i8* %count, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i8*, i8** %ele.addr, align 8, !dbg !349
  %1 = load i64, i64* %elesize.addr, align 8, !dbg !350
  %call = call i32 @hllPatLen(i8* %0, i64 %1, i64* %index), !dbg !351
  %conv = trunc i32 %call to i8, !dbg !351
  store i8 %conv, i8* %count, align 1, !dbg !348
  %2 = load i8*, i8** %registers.addr, align 8, !dbg !352
  %3 = load i64, i64* %index, align 8, !dbg !353
  %4 = load i8, i8* %count, align 1, !dbg !354
  %call1 = call i32 @hllDenseSet(i8* %2, i64 %3, i8 zeroext %4), !dbg !355
  ret i32 %call1, !dbg !356
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hllDenseRegHisto(i8* %registers, i32* %reghisto) #0 !dbg !357 {
entry:
  %registers.addr = alloca i8*, align 8
  %reghisto.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %r = alloca i8*, align 8
  %r0 = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  %r3 = alloca i64, align 8
  %r4 = alloca i64, align 8
  %r5 = alloca i64, align 8
  %r6 = alloca i64, align 8
  %r7 = alloca i64, align 8
  %r8 = alloca i64, align 8
  %r9 = alloca i64, align 8
  %r10 = alloca i64, align 8
  %r11 = alloca i64, align 8
  %r12 = alloca i64, align 8
  %r13 = alloca i64, align 8
  %r14 = alloca i64, align 8
  %r15 = alloca i64, align 8
  store i8* %registers, i8** %registers.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %registers.addr, metadata !361, metadata !DIExpression()), !dbg !362
  store i32* %reghisto, i32** %reghisto.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reghisto.addr, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i32* %j, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i8** %r, metadata !367, metadata !DIExpression()), !dbg !370
  %0 = load i8*, i8** %registers.addr, align 8, !dbg !371
  store i8* %0, i8** %r, align 8, !dbg !370
  call void @llvm.dbg.declare(metadata i64* %r0, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i64* %r1, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata i64* %r2, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i64* %r3, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata i64* %r4, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata i64* %r5, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata i64* %r6, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i64* %r7, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i64* %r8, metadata !388, metadata !DIExpression()), !dbg !389
  call void @llvm.dbg.declare(metadata i64* %r9, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i64* %r10, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i64* %r11, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata i64* %r12, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i64* %r13, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i64* %r14, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i64* %r15, metadata !402, metadata !DIExpression()), !dbg !403
  store i32 0, i32* %j, align 4, !dbg !404
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !dbg !407
  %cmp = icmp slt i32 %1, 1024, !dbg !409
  br i1 %cmp, label %for.body, label %for.end, !dbg !410

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %r, align 8, !dbg !411
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !411
  %3 = load i8, i8* %arrayidx, align 1, !dbg !411
  %conv = zext i8 %3 to i32, !dbg !411
  %and = and i32 %conv, 63, !dbg !413
  %conv1 = sext i32 %and to i64, !dbg !411
  store i64 %conv1, i64* %r0, align 8, !dbg !414
  %4 = load i8*, i8** %r, align 8, !dbg !415
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !415
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !415
  %conv3 = zext i8 %5 to i32, !dbg !415
  %shr = ashr i32 %conv3, 6, !dbg !416
  %6 = load i8*, i8** %r, align 8, !dbg !417
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !417
  %7 = load i8, i8* %arrayidx4, align 1, !dbg !417
  %conv5 = zext i8 %7 to i32, !dbg !417
  %shl = shl i32 %conv5, 2, !dbg !418
  %or = or i32 %shr, %shl, !dbg !419
  %and6 = and i32 %or, 63, !dbg !420
  %conv7 = sext i32 %and6 to i64, !dbg !421
  store i64 %conv7, i64* %r1, align 8, !dbg !422
  %8 = load i8*, i8** %r, align 8, !dbg !423
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !423
  %9 = load i8, i8* %arrayidx8, align 1, !dbg !423
  %conv9 = zext i8 %9 to i32, !dbg !423
  %shr10 = ashr i32 %conv9, 4, !dbg !424
  %10 = load i8*, i8** %r, align 8, !dbg !425
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !425
  %11 = load i8, i8* %arrayidx11, align 1, !dbg !425
  %conv12 = zext i8 %11 to i32, !dbg !425
  %shl13 = shl i32 %conv12, 4, !dbg !426
  %or14 = or i32 %shr10, %shl13, !dbg !427
  %and15 = and i32 %or14, 63, !dbg !428
  %conv16 = sext i32 %and15 to i64, !dbg !429
  store i64 %conv16, i64* %r2, align 8, !dbg !430
  %12 = load i8*, i8** %r, align 8, !dbg !431
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !431
  %13 = load i8, i8* %arrayidx17, align 1, !dbg !431
  %conv18 = zext i8 %13 to i32, !dbg !431
  %shr19 = ashr i32 %conv18, 2, !dbg !432
  %and20 = and i32 %shr19, 63, !dbg !433
  %conv21 = sext i32 %and20 to i64, !dbg !434
  store i64 %conv21, i64* %r3, align 8, !dbg !435
  %14 = load i8*, i8** %r, align 8, !dbg !436
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !436
  %15 = load i8, i8* %arrayidx22, align 1, !dbg !436
  %conv23 = zext i8 %15 to i32, !dbg !436
  %and24 = and i32 %conv23, 63, !dbg !437
  %conv25 = sext i32 %and24 to i64, !dbg !436
  store i64 %conv25, i64* %r4, align 8, !dbg !438
  %16 = load i8*, i8** %r, align 8, !dbg !439
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !439
  %17 = load i8, i8* %arrayidx26, align 1, !dbg !439
  %conv27 = zext i8 %17 to i32, !dbg !439
  %shr28 = ashr i32 %conv27, 6, !dbg !440
  %18 = load i8*, i8** %r, align 8, !dbg !441
  %arrayidx29 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !441
  %19 = load i8, i8* %arrayidx29, align 1, !dbg !441
  %conv30 = zext i8 %19 to i32, !dbg !441
  %shl31 = shl i32 %conv30, 2, !dbg !442
  %or32 = or i32 %shr28, %shl31, !dbg !443
  %and33 = and i32 %or32, 63, !dbg !444
  %conv34 = sext i32 %and33 to i64, !dbg !445
  store i64 %conv34, i64* %r5, align 8, !dbg !446
  %20 = load i8*, i8** %r, align 8, !dbg !447
  %arrayidx35 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !447
  %21 = load i8, i8* %arrayidx35, align 1, !dbg !447
  %conv36 = zext i8 %21 to i32, !dbg !447
  %shr37 = ashr i32 %conv36, 4, !dbg !448
  %22 = load i8*, i8** %r, align 8, !dbg !449
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 5, !dbg !449
  %23 = load i8, i8* %arrayidx38, align 1, !dbg !449
  %conv39 = zext i8 %23 to i32, !dbg !449
  %shl40 = shl i32 %conv39, 4, !dbg !450
  %or41 = or i32 %shr37, %shl40, !dbg !451
  %and42 = and i32 %or41, 63, !dbg !452
  %conv43 = sext i32 %and42 to i64, !dbg !453
  store i64 %conv43, i64* %r6, align 8, !dbg !454
  %24 = load i8*, i8** %r, align 8, !dbg !455
  %arrayidx44 = getelementptr inbounds i8, i8* %24, i64 5, !dbg !455
  %25 = load i8, i8* %arrayidx44, align 1, !dbg !455
  %conv45 = zext i8 %25 to i32, !dbg !455
  %shr46 = ashr i32 %conv45, 2, !dbg !456
  %and47 = and i32 %shr46, 63, !dbg !457
  %conv48 = sext i32 %and47 to i64, !dbg !458
  store i64 %conv48, i64* %r7, align 8, !dbg !459
  %26 = load i8*, i8** %r, align 8, !dbg !460
  %arrayidx49 = getelementptr inbounds i8, i8* %26, i64 6, !dbg !460
  %27 = load i8, i8* %arrayidx49, align 1, !dbg !460
  %conv50 = zext i8 %27 to i32, !dbg !460
  %and51 = and i32 %conv50, 63, !dbg !461
  %conv52 = sext i32 %and51 to i64, !dbg !460
  store i64 %conv52, i64* %r8, align 8, !dbg !462
  %28 = load i8*, i8** %r, align 8, !dbg !463
  %arrayidx53 = getelementptr inbounds i8, i8* %28, i64 6, !dbg !463
  %29 = load i8, i8* %arrayidx53, align 1, !dbg !463
  %conv54 = zext i8 %29 to i32, !dbg !463
  %shr55 = ashr i32 %conv54, 6, !dbg !464
  %30 = load i8*, i8** %r, align 8, !dbg !465
  %arrayidx56 = getelementptr inbounds i8, i8* %30, i64 7, !dbg !465
  %31 = load i8, i8* %arrayidx56, align 1, !dbg !465
  %conv57 = zext i8 %31 to i32, !dbg !465
  %shl58 = shl i32 %conv57, 2, !dbg !466
  %or59 = or i32 %shr55, %shl58, !dbg !467
  %and60 = and i32 %or59, 63, !dbg !468
  %conv61 = sext i32 %and60 to i64, !dbg !469
  store i64 %conv61, i64* %r9, align 8, !dbg !470
  %32 = load i8*, i8** %r, align 8, !dbg !471
  %arrayidx62 = getelementptr inbounds i8, i8* %32, i64 7, !dbg !471
  %33 = load i8, i8* %arrayidx62, align 1, !dbg !471
  %conv63 = zext i8 %33 to i32, !dbg !471
  %shr64 = ashr i32 %conv63, 4, !dbg !472
  %34 = load i8*, i8** %r, align 8, !dbg !473
  %arrayidx65 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !473
  %35 = load i8, i8* %arrayidx65, align 1, !dbg !473
  %conv66 = zext i8 %35 to i32, !dbg !473
  %shl67 = shl i32 %conv66, 4, !dbg !474
  %or68 = or i32 %shr64, %shl67, !dbg !475
  %and69 = and i32 %or68, 63, !dbg !476
  %conv70 = sext i32 %and69 to i64, !dbg !477
  store i64 %conv70, i64* %r10, align 8, !dbg !478
  %36 = load i8*, i8** %r, align 8, !dbg !479
  %arrayidx71 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !479
  %37 = load i8, i8* %arrayidx71, align 1, !dbg !479
  %conv72 = zext i8 %37 to i32, !dbg !479
  %shr73 = ashr i32 %conv72, 2, !dbg !480
  %and74 = and i32 %shr73, 63, !dbg !481
  %conv75 = sext i32 %and74 to i64, !dbg !482
  store i64 %conv75, i64* %r11, align 8, !dbg !483
  %38 = load i8*, i8** %r, align 8, !dbg !484
  %arrayidx76 = getelementptr inbounds i8, i8* %38, i64 9, !dbg !484
  %39 = load i8, i8* %arrayidx76, align 1, !dbg !484
  %conv77 = zext i8 %39 to i32, !dbg !484
  %and78 = and i32 %conv77, 63, !dbg !485
  %conv79 = sext i32 %and78 to i64, !dbg !484
  store i64 %conv79, i64* %r12, align 8, !dbg !486
  %40 = load i8*, i8** %r, align 8, !dbg !487
  %arrayidx80 = getelementptr inbounds i8, i8* %40, i64 9, !dbg !487
  %41 = load i8, i8* %arrayidx80, align 1, !dbg !487
  %conv81 = zext i8 %41 to i32, !dbg !487
  %shr82 = ashr i32 %conv81, 6, !dbg !488
  %42 = load i8*, i8** %r, align 8, !dbg !489
  %arrayidx83 = getelementptr inbounds i8, i8* %42, i64 10, !dbg !489
  %43 = load i8, i8* %arrayidx83, align 1, !dbg !489
  %conv84 = zext i8 %43 to i32, !dbg !489
  %shl85 = shl i32 %conv84, 2, !dbg !490
  %or86 = or i32 %shr82, %shl85, !dbg !491
  %and87 = and i32 %or86, 63, !dbg !492
  %conv88 = sext i32 %and87 to i64, !dbg !493
  store i64 %conv88, i64* %r13, align 8, !dbg !494
  %44 = load i8*, i8** %r, align 8, !dbg !495
  %arrayidx89 = getelementptr inbounds i8, i8* %44, i64 10, !dbg !495
  %45 = load i8, i8* %arrayidx89, align 1, !dbg !495
  %conv90 = zext i8 %45 to i32, !dbg !495
  %shr91 = ashr i32 %conv90, 4, !dbg !496
  %46 = load i8*, i8** %r, align 8, !dbg !497
  %arrayidx92 = getelementptr inbounds i8, i8* %46, i64 11, !dbg !497
  %47 = load i8, i8* %arrayidx92, align 1, !dbg !497
  %conv93 = zext i8 %47 to i32, !dbg !497
  %shl94 = shl i32 %conv93, 4, !dbg !498
  %or95 = or i32 %shr91, %shl94, !dbg !499
  %and96 = and i32 %or95, 63, !dbg !500
  %conv97 = sext i32 %and96 to i64, !dbg !501
  store i64 %conv97, i64* %r14, align 8, !dbg !502
  %48 = load i8*, i8** %r, align 8, !dbg !503
  %arrayidx98 = getelementptr inbounds i8, i8* %48, i64 11, !dbg !503
  %49 = load i8, i8* %arrayidx98, align 1, !dbg !503
  %conv99 = zext i8 %49 to i32, !dbg !503
  %shr100 = ashr i32 %conv99, 2, !dbg !504
  %and101 = and i32 %shr100, 63, !dbg !505
  %conv102 = sext i32 %and101 to i64, !dbg !506
  store i64 %conv102, i64* %r15, align 8, !dbg !507
  %50 = load i32*, i32** %reghisto.addr, align 8, !dbg !508
  %51 = load i64, i64* %r0, align 8, !dbg !509
  %arrayidx103 = getelementptr inbounds i32, i32* %50, i64 %51, !dbg !508
  %52 = load i32, i32* %arrayidx103, align 4, !dbg !510
  %inc = add nsw i32 %52, 1, !dbg !510
  store i32 %inc, i32* %arrayidx103, align 4, !dbg !510
  %53 = load i32*, i32** %reghisto.addr, align 8, !dbg !511
  %54 = load i64, i64* %r1, align 8, !dbg !512
  %arrayidx104 = getelementptr inbounds i32, i32* %53, i64 %54, !dbg !511
  %55 = load i32, i32* %arrayidx104, align 4, !dbg !513
  %inc105 = add nsw i32 %55, 1, !dbg !513
  store i32 %inc105, i32* %arrayidx104, align 4, !dbg !513
  %56 = load i32*, i32** %reghisto.addr, align 8, !dbg !514
  %57 = load i64, i64* %r2, align 8, !dbg !515
  %arrayidx106 = getelementptr inbounds i32, i32* %56, i64 %57, !dbg !514
  %58 = load i32, i32* %arrayidx106, align 4, !dbg !516
  %inc107 = add nsw i32 %58, 1, !dbg !516
  store i32 %inc107, i32* %arrayidx106, align 4, !dbg !516
  %59 = load i32*, i32** %reghisto.addr, align 8, !dbg !517
  %60 = load i64, i64* %r3, align 8, !dbg !518
  %arrayidx108 = getelementptr inbounds i32, i32* %59, i64 %60, !dbg !517
  %61 = load i32, i32* %arrayidx108, align 4, !dbg !519
  %inc109 = add nsw i32 %61, 1, !dbg !519
  store i32 %inc109, i32* %arrayidx108, align 4, !dbg !519
  %62 = load i32*, i32** %reghisto.addr, align 8, !dbg !520
  %63 = load i64, i64* %r4, align 8, !dbg !521
  %arrayidx110 = getelementptr inbounds i32, i32* %62, i64 %63, !dbg !520
  %64 = load i32, i32* %arrayidx110, align 4, !dbg !522
  %inc111 = add nsw i32 %64, 1, !dbg !522
  store i32 %inc111, i32* %arrayidx110, align 4, !dbg !522
  %65 = load i32*, i32** %reghisto.addr, align 8, !dbg !523
  %66 = load i64, i64* %r5, align 8, !dbg !524
  %arrayidx112 = getelementptr inbounds i32, i32* %65, i64 %66, !dbg !523
  %67 = load i32, i32* %arrayidx112, align 4, !dbg !525
  %inc113 = add nsw i32 %67, 1, !dbg !525
  store i32 %inc113, i32* %arrayidx112, align 4, !dbg !525
  %68 = load i32*, i32** %reghisto.addr, align 8, !dbg !526
  %69 = load i64, i64* %r6, align 8, !dbg !527
  %arrayidx114 = getelementptr inbounds i32, i32* %68, i64 %69, !dbg !526
  %70 = load i32, i32* %arrayidx114, align 4, !dbg !528
  %inc115 = add nsw i32 %70, 1, !dbg !528
  store i32 %inc115, i32* %arrayidx114, align 4, !dbg !528
  %71 = load i32*, i32** %reghisto.addr, align 8, !dbg !529
  %72 = load i64, i64* %r7, align 8, !dbg !530
  %arrayidx116 = getelementptr inbounds i32, i32* %71, i64 %72, !dbg !529
  %73 = load i32, i32* %arrayidx116, align 4, !dbg !531
  %inc117 = add nsw i32 %73, 1, !dbg !531
  store i32 %inc117, i32* %arrayidx116, align 4, !dbg !531
  %74 = load i32*, i32** %reghisto.addr, align 8, !dbg !532
  %75 = load i64, i64* %r8, align 8, !dbg !533
  %arrayidx118 = getelementptr inbounds i32, i32* %74, i64 %75, !dbg !532
  %76 = load i32, i32* %arrayidx118, align 4, !dbg !534
  %inc119 = add nsw i32 %76, 1, !dbg !534
  store i32 %inc119, i32* %arrayidx118, align 4, !dbg !534
  %77 = load i32*, i32** %reghisto.addr, align 8, !dbg !535
  %78 = load i64, i64* %r9, align 8, !dbg !536
  %arrayidx120 = getelementptr inbounds i32, i32* %77, i64 %78, !dbg !535
  %79 = load i32, i32* %arrayidx120, align 4, !dbg !537
  %inc121 = add nsw i32 %79, 1, !dbg !537
  store i32 %inc121, i32* %arrayidx120, align 4, !dbg !537
  %80 = load i32*, i32** %reghisto.addr, align 8, !dbg !538
  %81 = load i64, i64* %r10, align 8, !dbg !539
  %arrayidx122 = getelementptr inbounds i32, i32* %80, i64 %81, !dbg !538
  %82 = load i32, i32* %arrayidx122, align 4, !dbg !540
  %inc123 = add nsw i32 %82, 1, !dbg !540
  store i32 %inc123, i32* %arrayidx122, align 4, !dbg !540
  %83 = load i32*, i32** %reghisto.addr, align 8, !dbg !541
  %84 = load i64, i64* %r11, align 8, !dbg !542
  %arrayidx124 = getelementptr inbounds i32, i32* %83, i64 %84, !dbg !541
  %85 = load i32, i32* %arrayidx124, align 4, !dbg !543
  %inc125 = add nsw i32 %85, 1, !dbg !543
  store i32 %inc125, i32* %arrayidx124, align 4, !dbg !543
  %86 = load i32*, i32** %reghisto.addr, align 8, !dbg !544
  %87 = load i64, i64* %r12, align 8, !dbg !545
  %arrayidx126 = getelementptr inbounds i32, i32* %86, i64 %87, !dbg !544
  %88 = load i32, i32* %arrayidx126, align 4, !dbg !546
  %inc127 = add nsw i32 %88, 1, !dbg !546
  store i32 %inc127, i32* %arrayidx126, align 4, !dbg !546
  %89 = load i32*, i32** %reghisto.addr, align 8, !dbg !547
  %90 = load i64, i64* %r13, align 8, !dbg !548
  %arrayidx128 = getelementptr inbounds i32, i32* %89, i64 %90, !dbg !547
  %91 = load i32, i32* %arrayidx128, align 4, !dbg !549
  %inc129 = add nsw i32 %91, 1, !dbg !549
  store i32 %inc129, i32* %arrayidx128, align 4, !dbg !549
  %92 = load i32*, i32** %reghisto.addr, align 8, !dbg !550
  %93 = load i64, i64* %r14, align 8, !dbg !551
  %arrayidx130 = getelementptr inbounds i32, i32* %92, i64 %93, !dbg !550
  %94 = load i32, i32* %arrayidx130, align 4, !dbg !552
  %inc131 = add nsw i32 %94, 1, !dbg !552
  store i32 %inc131, i32* %arrayidx130, align 4, !dbg !552
  %95 = load i32*, i32** %reghisto.addr, align 8, !dbg !553
  %96 = load i64, i64* %r15, align 8, !dbg !554
  %arrayidx132 = getelementptr inbounds i32, i32* %95, i64 %96, !dbg !553
  %97 = load i32, i32* %arrayidx132, align 4, !dbg !555
  %inc133 = add nsw i32 %97, 1, !dbg !555
  store i32 %inc133, i32* %arrayidx132, align 4, !dbg !555
  %98 = load i8*, i8** %r, align 8, !dbg !556
  %add.ptr = getelementptr inbounds i8, i8* %98, i64 12, !dbg !556
  store i8* %add.ptr, i8** %r, align 8, !dbg !556
  br label %for.inc, !dbg !557

for.inc:                                          ; preds = %for.body
  %99 = load i32, i32* %j, align 4, !dbg !558
  %inc134 = add nsw i32 %99, 1, !dbg !558
  store i32 %inc134, i32* %j, align 4, !dbg !558
  br label %for.cond, !dbg !559, !llvm.loop !560

for.end:                                          ; preds = %for.cond
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllSparseToDense(%struct.redisObject* %o) #0 !dbg !563 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.redisObject*, align 8
  %sparse = alloca i8*, align 8
  %dense = alloca i8*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %oldhdr = alloca %struct.hllhdr*, align 8
  %idx = alloca i32, align 4
  %runlen = alloca i32, align 4
  %regval = alloca i32, align 4
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %_p = alloca i8*, align 8
  %_byte = alloca i64, align 8
  %_fb = alloca i64, align 8
  %_fb8 = alloca i64, align 8
  %_v = alloca i64, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata i8** %sparse, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !579
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i32 0, i32 2, !dbg !580
  %1 = load i8*, i8** %ptr, align 8, !dbg !580
  store i8* %1, i8** %sparse, align 8, !dbg !578
  call void @llvm.dbg.declare(metadata i8** %dense, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %oldhdr, metadata !585, metadata !DIExpression()), !dbg !586
  %2 = load i8*, i8** %sparse, align 8, !dbg !587
  %3 = bitcast i8* %2 to %struct.hllhdr*, !dbg !588
  store %struct.hllhdr* %3, %struct.hllhdr** %oldhdr, align 8, !dbg !586
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !589, metadata !DIExpression()), !dbg !590
  store i32 0, i32* %idx, align 4, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %runlen, metadata !591, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !593, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.declare(metadata i8** %p, metadata !595, metadata !DIExpression()), !dbg !596
  %4 = load i8*, i8** %sparse, align 8, !dbg !597
  store i8* %4, i8** %p, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata i8** %end, metadata !598, metadata !DIExpression()), !dbg !599
  %5 = load i8*, i8** %p, align 8, !dbg !600
  %6 = load i8*, i8** %sparse, align 8, !dbg !601
  %call = call i64 @sdslen(i8* %6), !dbg !602
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call, !dbg !603
  store i8* %add.ptr, i8** %end, align 8, !dbg !599
  %7 = load i8*, i8** %sparse, align 8, !dbg !604
  %8 = bitcast i8* %7 to %struct.hllhdr*, !dbg !605
  store %struct.hllhdr* %8, %struct.hllhdr** %hdr, align 8, !dbg !606
  %9 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !607
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %9, i32 0, i32 1, !dbg !609
  %10 = load i8, i8* %encoding, align 1, !dbg !609
  %conv = zext i8 %10 to i32, !dbg !607
  %cmp = icmp eq i32 %conv, 0, !dbg !610
  br i1 %cmp, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !612
  br label %return, !dbg !612

if.end:                                           ; preds = %entry
  %call2 = call i8* @sdsnewlen(i8* null, i64 12304), !dbg !613
  store i8* %call2, i8** %dense, align 8, !dbg !614
  %11 = load i8*, i8** %dense, align 8, !dbg !615
  %12 = bitcast i8* %11 to %struct.hllhdr*, !dbg !616
  store %struct.hllhdr* %12, %struct.hllhdr** %hdr, align 8, !dbg !617
  %13 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !618
  %14 = load %struct.hllhdr*, %struct.hllhdr** %oldhdr, align 8, !dbg !619
  %15 = bitcast %struct.hllhdr* %13 to i8*, !dbg !620
  %16 = bitcast %struct.hllhdr* %14 to i8*, !dbg !620
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %16, i64 16, i1 false), !dbg !620
  %17 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !621
  %encoding3 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %17, i32 0, i32 1, !dbg !622
  store i8 0, i8* %encoding3, align 1, !dbg !623
  %18 = load i8*, i8** %p, align 8, !dbg !624
  %add.ptr4 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !624
  store i8* %add.ptr4, i8** %p, align 8, !dbg !624
  br label %while.cond, !dbg !625

while.cond:                                       ; preds = %if.end70, %if.end
  %19 = load i8*, i8** %p, align 8, !dbg !626
  %20 = load i8*, i8** %end, align 8, !dbg !627
  %cmp5 = icmp ult i8* %19, %20, !dbg !628
  br i1 %cmp5, label %while.body, label %while.end71, !dbg !625

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %p, align 8, !dbg !629
  %22 = load i8, i8* %21, align 1, !dbg !629
  %conv7 = zext i8 %22 to i32, !dbg !629
  %and = and i32 %conv7, 192, !dbg !629
  %cmp8 = icmp eq i32 %and, 0, !dbg !629
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !632

if.then10:                                        ; preds = %while.body
  %23 = load i8*, i8** %p, align 8, !dbg !633
  %24 = load i8, i8* %23, align 1, !dbg !633
  %conv11 = zext i8 %24 to i32, !dbg !633
  %and12 = and i32 %conv11, 63, !dbg !633
  %add = add nsw i32 %and12, 1, !dbg !633
  store i32 %add, i32* %runlen, align 4, !dbg !635
  %25 = load i32, i32* %runlen, align 4, !dbg !636
  %26 = load i32, i32* %idx, align 4, !dbg !637
  %add13 = add nsw i32 %26, %25, !dbg !637
  store i32 %add13, i32* %idx, align 4, !dbg !637
  %27 = load i8*, i8** %p, align 8, !dbg !638
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1, !dbg !638
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !638
  br label %if.end70, !dbg !639

if.else:                                          ; preds = %while.body
  %28 = load i8*, i8** %p, align 8, !dbg !640
  %29 = load i8, i8* %28, align 1, !dbg !640
  %conv14 = zext i8 %29 to i32, !dbg !640
  %and15 = and i32 %conv14, 192, !dbg !640
  %cmp16 = icmp eq i32 %and15, 64, !dbg !640
  br i1 %cmp16, label %if.then18, label %if.else26, !dbg !642

if.then18:                                        ; preds = %if.else
  %30 = load i8*, i8** %p, align 8, !dbg !643
  %31 = load i8, i8* %30, align 1, !dbg !643
  %conv19 = zext i8 %31 to i32, !dbg !643
  %and20 = and i32 %conv19, 63, !dbg !643
  %shl = shl i32 %and20, 8, !dbg !643
  %32 = load i8*, i8** %p, align 8, !dbg !643
  %add.ptr21 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !643
  %33 = load i8, i8* %add.ptr21, align 1, !dbg !643
  %conv22 = zext i8 %33 to i32, !dbg !643
  %or = or i32 %shl, %conv22, !dbg !643
  %add23 = add nsw i32 %or, 1, !dbg !643
  store i32 %add23, i32* %runlen, align 4, !dbg !645
  %34 = load i32, i32* %runlen, align 4, !dbg !646
  %35 = load i32, i32* %idx, align 4, !dbg !647
  %add24 = add nsw i32 %35, %34, !dbg !647
  store i32 %add24, i32* %idx, align 4, !dbg !647
  %36 = load i8*, i8** %p, align 8, !dbg !648
  %add.ptr25 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !648
  store i8* %add.ptr25, i8** %p, align 8, !dbg !648
  br label %if.end69, !dbg !649

if.else26:                                        ; preds = %if.else
  %37 = load i8*, i8** %p, align 8, !dbg !650
  %38 = load i8, i8* %37, align 1, !dbg !650
  %conv27 = zext i8 %38 to i32, !dbg !650
  %and28 = and i32 %conv27, 3, !dbg !650
  %add29 = add nsw i32 %and28, 1, !dbg !650
  store i32 %add29, i32* %runlen, align 4, !dbg !652
  %39 = load i8*, i8** %p, align 8, !dbg !653
  %40 = load i8, i8* %39, align 1, !dbg !653
  %conv30 = zext i8 %40 to i32, !dbg !653
  %shr = ashr i32 %conv30, 2, !dbg !653
  %and31 = and i32 %shr, 31, !dbg !653
  %add32 = add nsw i32 %and31, 1, !dbg !653
  store i32 %add32, i32* %regval, align 4, !dbg !654
  %41 = load i32, i32* %runlen, align 4, !dbg !655
  %42 = load i32, i32* %idx, align 4, !dbg !657
  %add33 = add nsw i32 %41, %42, !dbg !658
  %cmp34 = icmp sgt i32 %add33, 16384, !dbg !659
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !660

if.then36:                                        ; preds = %if.else26
  br label %while.end71, !dbg !661

if.end37:                                         ; preds = %if.else26
  br label %while.cond38, !dbg !662

while.cond38:                                     ; preds = %do.end, %if.end37
  %43 = load i32, i32* %runlen, align 4, !dbg !663
  %dec = add nsw i32 %43, -1, !dbg !663
  store i32 %dec, i32* %runlen, align 4, !dbg !663
  %tobool = icmp ne i32 %43, 0, !dbg !662
  br i1 %tobool, label %while.body39, label %while.end, !dbg !662

while.body39:                                     ; preds = %while.cond38
  br label %do.body, !dbg !664

do.body:                                          ; preds = %while.body39
  call void @llvm.dbg.declare(metadata i8** %_p, metadata !666, metadata !DIExpression()), !dbg !668
  %44 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !668
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %44, i32 0, i32 4, !dbg !668
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !668
  store i8* %arraydecay, i8** %_p, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata i64* %_byte, metadata !669, metadata !DIExpression()), !dbg !668
  %45 = load i32, i32* %idx, align 4, !dbg !668
  %mul = mul nsw i32 %45, 6, !dbg !668
  %div = sdiv i32 %mul, 8, !dbg !668
  %conv40 = sext i32 %div to i64, !dbg !668
  store i64 %conv40, i64* %_byte, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata i64* %_fb, metadata !670, metadata !DIExpression()), !dbg !668
  %46 = load i32, i32* %idx, align 4, !dbg !668
  %mul41 = mul nsw i32 %46, 6, !dbg !668
  %and42 = and i32 %mul41, 7, !dbg !668
  %conv43 = sext i32 %and42 to i64, !dbg !668
  store i64 %conv43, i64* %_fb, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata i64* %_fb8, metadata !671, metadata !DIExpression()), !dbg !668
  %47 = load i64, i64* %_fb, align 8, !dbg !668
  %sub = sub i64 8, %47, !dbg !668
  store i64 %sub, i64* %_fb8, align 8, !dbg !668
  call void @llvm.dbg.declare(metadata i64* %_v, metadata !672, metadata !DIExpression()), !dbg !668
  %48 = load i32, i32* %regval, align 4, !dbg !668
  %conv44 = sext i32 %48 to i64, !dbg !668
  store i64 %conv44, i64* %_v, align 8, !dbg !668
  %49 = load i64, i64* %_fb, align 8, !dbg !668
  %sh_prom = trunc i64 %49 to i32, !dbg !668
  %shl45 = shl i32 63, %sh_prom, !dbg !668
  %neg = xor i32 %shl45, -1, !dbg !668
  %50 = load i8*, i8** %_p, align 8, !dbg !668
  %51 = load i64, i64* %_byte, align 8, !dbg !668
  %arrayidx = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !668
  %52 = load i8, i8* %arrayidx, align 1, !dbg !668
  %conv46 = zext i8 %52 to i32, !dbg !668
  %and47 = and i32 %conv46, %neg, !dbg !668
  %conv48 = trunc i32 %and47 to i8, !dbg !668
  store i8 %conv48, i8* %arrayidx, align 1, !dbg !668
  %53 = load i64, i64* %_v, align 8, !dbg !668
  %54 = load i64, i64* %_fb, align 8, !dbg !668
  %shl49 = shl i64 %53, %54, !dbg !668
  %55 = load i8*, i8** %_p, align 8, !dbg !668
  %56 = load i64, i64* %_byte, align 8, !dbg !668
  %arrayidx50 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !668
  %57 = load i8, i8* %arrayidx50, align 1, !dbg !668
  %conv51 = zext i8 %57 to i64, !dbg !668
  %or52 = or i64 %conv51, %shl49, !dbg !668
  %conv53 = trunc i64 %or52 to i8, !dbg !668
  store i8 %conv53, i8* %arrayidx50, align 1, !dbg !668
  %58 = load i64, i64* %_fb8, align 8, !dbg !668
  %sh_prom54 = trunc i64 %58 to i32, !dbg !668
  %shr55 = ashr i32 63, %sh_prom54, !dbg !668
  %neg56 = xor i32 %shr55, -1, !dbg !668
  %59 = load i8*, i8** %_p, align 8, !dbg !668
  %60 = load i64, i64* %_byte, align 8, !dbg !668
  %add57 = add i64 %60, 1, !dbg !668
  %arrayidx58 = getelementptr inbounds i8, i8* %59, i64 %add57, !dbg !668
  %61 = load i8, i8* %arrayidx58, align 1, !dbg !668
  %conv59 = zext i8 %61 to i32, !dbg !668
  %and60 = and i32 %conv59, %neg56, !dbg !668
  %conv61 = trunc i32 %and60 to i8, !dbg !668
  store i8 %conv61, i8* %arrayidx58, align 1, !dbg !668
  %62 = load i64, i64* %_v, align 8, !dbg !668
  %63 = load i64, i64* %_fb8, align 8, !dbg !668
  %shr62 = lshr i64 %62, %63, !dbg !668
  %64 = load i8*, i8** %_p, align 8, !dbg !668
  %65 = load i64, i64* %_byte, align 8, !dbg !668
  %add63 = add i64 %65, 1, !dbg !668
  %arrayidx64 = getelementptr inbounds i8, i8* %64, i64 %add63, !dbg !668
  %66 = load i8, i8* %arrayidx64, align 1, !dbg !668
  %conv65 = zext i8 %66 to i64, !dbg !668
  %or66 = or i64 %conv65, %shr62, !dbg !668
  %conv67 = trunc i64 %or66 to i8, !dbg !668
  store i8 %conv67, i8* %arrayidx64, align 1, !dbg !668
  br label %do.end, !dbg !668

do.end:                                           ; preds = %do.body
  %67 = load i32, i32* %idx, align 4, !dbg !673
  %inc = add nsw i32 %67, 1, !dbg !673
  store i32 %inc, i32* %idx, align 4, !dbg !673
  br label %while.cond38, !dbg !662, !llvm.loop !674

while.end:                                        ; preds = %while.cond38
  %68 = load i8*, i8** %p, align 8, !dbg !676
  %incdec.ptr68 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !676
  store i8* %incdec.ptr68, i8** %p, align 8, !dbg !676
  br label %if.end69

if.end69:                                         ; preds = %while.end, %if.then18
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then10
  br label %while.cond, !dbg !625, !llvm.loop !677

while.end71:                                      ; preds = %if.then36, %while.cond
  %69 = load i32, i32* %idx, align 4, !dbg !679
  %cmp72 = icmp ne i32 %69, 16384, !dbg !681
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !682

if.then74:                                        ; preds = %while.end71
  %70 = load i8*, i8** %dense, align 8, !dbg !683
  call void @sdsfree(i8* %70), !dbg !685
  store i32 -1, i32* %retval, align 4, !dbg !686
  br label %return, !dbg !686

if.end75:                                         ; preds = %while.end71
  %71 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !687
  %ptr76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %71, i32 0, i32 2, !dbg !688
  %72 = load i8*, i8** %ptr76, align 8, !dbg !688
  call void @sdsfree(i8* %72), !dbg !689
  %73 = load i8*, i8** %dense, align 8, !dbg !690
  %74 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !691
  %ptr77 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %74, i32 0, i32 2, !dbg !692
  store i8* %73, i8** %ptr77, align 8, !dbg !693
  store i32 0, i32* %retval, align 4, !dbg !694
  br label %return, !dbg !694

return:                                           ; preds = %if.end75, %if.then74, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !695
  ret i32 %75, !dbg !695
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !696 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !702, metadata !DIExpression()), !dbg !703
  %0 = load i8*, i8** %s.addr, align 8, !dbg !704
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !704
  %1 = load i8, i8* %arrayidx, align 1, !dbg !704
  store i8 %1, i8* %flags, align 1, !dbg !703
  %2 = load i8, i8* %flags, align 1, !dbg !705
  %conv = zext i8 %2 to i32, !dbg !705
  %and = and i32 %conv, 7, !dbg !706
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !707

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !708
  %conv1 = zext i8 %3 to i32, !dbg !708
  %shr = ashr i32 %conv1, 3, !dbg !708
  %conv2 = sext i32 %shr to i64, !dbg !708
  store i64 %conv2, i64* %retval, align 8, !dbg !710
  br label %return, !dbg !710

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !711
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !711
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !712
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !712
  %6 = load i8, i8* %len, align 1, !dbg !712
  %conv4 = zext i8 %6 to i64, !dbg !711
  store i64 %conv4, i64* %retval, align 8, !dbg !713
  br label %return, !dbg !713

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !714
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !714
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !715
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !715
  %9 = load i16, i16* %len7, align 1, !dbg !715
  %conv8 = zext i16 %9 to i64, !dbg !714
  store i64 %conv8, i64* %retval, align 8, !dbg !716
  br label %return, !dbg !716

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !717
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !717
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !718
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !718
  %12 = load i32, i32* %len11, align 1, !dbg !718
  %conv12 = zext i32 %12 to i64, !dbg !717
  store i64 %conv12, i64* %retval, align 8, !dbg !719
  br label %return, !dbg !719

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !720
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !720
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !721
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !721
  %15 = load i64, i64* %len15, align 1, !dbg !721
  store i64 %15, i64* %retval, align 8, !dbg !722
  br label %return, !dbg !722

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !723
  br label %return, !dbg !723

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !724
  ret i64 %16, !dbg !724
}

declare dso_local i8* @sdsnewlen(i8*, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @sdsfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllSparseSet(%struct.redisObject* %o, i64 %index, i8 zeroext %count) #0 !dbg !725 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.redisObject*, align 8
  %index.addr = alloca i64, align 8
  %count.addr = alloca i8, align 1
  %hdr = alloca %struct.hllhdr*, align 8
  %oldcount = alloca i8, align 1
  %sparse = alloca i8*, align 8
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  %prev = alloca i8*, align 8
  %next = alloca i8*, align 8
  %first = alloca i64, align 8
  %span = alloca i64, align 8
  %is_zero = alloca i64, align 8
  %is_xzero = alloca i64, align 8
  %is_val = alloca i64, align 8
  %runlen = alloca i64, align 8
  %oplen = alloca i64, align 8
  %seq = alloca [5 x i8], align 1
  %n = alloca i8*, align 8
  %last = alloca i32, align 4
  %len = alloca i32, align 4
  %_l = alloca i32, align 4
  %_l171 = alloca i32, align 4
  %curval = alloca i32, align 4
  %seqlen = alloca i32, align 4
  %oldlen = alloca i32, align 4
  %deltalen = alloca i32, align 4
  %scanlen = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %len312 = alloca i32, align 4
  %dense_retval = alloca i32, align 4
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !728, metadata !DIExpression()), !dbg !729
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !730, metadata !DIExpression()), !dbg !731
  store i8 %count, i8* %count.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %count.addr, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata i8* %oldcount, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata i8** %sparse, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata i8** %end, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata i8** %p, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.declare(metadata i8** %prev, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata i8** %next, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i64* %first, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata i64* %span, metadata !750, metadata !DIExpression()), !dbg !751
  call void @llvm.dbg.declare(metadata i64* %is_zero, metadata !752, metadata !DIExpression()), !dbg !753
  store i64 0, i64* %is_zero, align 8, !dbg !753
  call void @llvm.dbg.declare(metadata i64* %is_xzero, metadata !754, metadata !DIExpression()), !dbg !755
  store i64 0, i64* %is_xzero, align 8, !dbg !755
  call void @llvm.dbg.declare(metadata i64* %is_val, metadata !756, metadata !DIExpression()), !dbg !757
  store i64 0, i64* %is_val, align 8, !dbg !757
  call void @llvm.dbg.declare(metadata i64* %runlen, metadata !758, metadata !DIExpression()), !dbg !759
  store i64 0, i64* %runlen, align 8, !dbg !759
  %0 = load i8, i8* %count.addr, align 1, !dbg !760
  %conv = zext i8 %0 to i32, !dbg !760
  %cmp = icmp sgt i32 %conv, 32, !dbg !762
  br i1 %cmp, label %if.then, label %if.end, !dbg !763

if.then:                                          ; preds = %entry
  br label %promote, !dbg !764

if.end:                                           ; preds = %entry
  %1 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !765
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i32 0, i32 2, !dbg !766
  %2 = load i8*, i8** %ptr, align 8, !dbg !766
  %call = call i8* @sdsMakeRoomFor(i8* %2, i64 3), !dbg !767
  %3 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !768
  %ptr2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i32 0, i32 2, !dbg !769
  store i8* %call, i8** %ptr2, align 8, !dbg !770
  %4 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !771
  %ptr3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i32 0, i32 2, !dbg !772
  %5 = load i8*, i8** %ptr3, align 8, !dbg !772
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 16, !dbg !773
  store i8* %add.ptr, i8** %p, align 8, !dbg !774
  store i8* %add.ptr, i8** %sparse, align 8, !dbg !775
  %6 = load i8*, i8** %p, align 8, !dbg !776
  %7 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !777
  %ptr4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !778
  %8 = load i8*, i8** %ptr4, align 8, !dbg !778
  %call5 = call i64 @sdslen(i8* %8), !dbg !779
  %add.ptr6 = getelementptr inbounds i8, i8* %6, i64 %call5, !dbg !780
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -16, !dbg !781
  store i8* %add.ptr7, i8** %end, align 8, !dbg !782
  store i64 0, i64* %first, align 8, !dbg !783
  store i8* null, i8** %prev, align 8, !dbg !784
  store i8* null, i8** %next, align 8, !dbg !785
  store i64 0, i64* %span, align 8, !dbg !786
  br label %while.cond, !dbg !787

while.cond:                                       ; preds = %if.end37, %if.end
  %9 = load i8*, i8** %p, align 8, !dbg !788
  %10 = load i8*, i8** %end, align 8, !dbg !789
  %cmp8 = icmp ult i8* %9, %10, !dbg !790
  br i1 %cmp8, label %while.body, label %while.end, !dbg !787

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %oplen, metadata !791, metadata !DIExpression()), !dbg !793
  store i64 1, i64* %oplen, align 8, !dbg !794
  %11 = load i8*, i8** %p, align 8, !dbg !795
  %12 = load i8, i8* %11, align 1, !dbg !795
  %conv10 = zext i8 %12 to i32, !dbg !795
  %and = and i32 %conv10, 192, !dbg !795
  %cmp11 = icmp eq i32 %and, 0, !dbg !795
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !797

if.then13:                                        ; preds = %while.body
  %13 = load i8*, i8** %p, align 8, !dbg !798
  %14 = load i8, i8* %13, align 1, !dbg !798
  %conv14 = zext i8 %14 to i32, !dbg !798
  %and15 = and i32 %conv14, 63, !dbg !798
  %add = add nsw i32 %and15, 1, !dbg !798
  %conv16 = sext i32 %add to i64, !dbg !798
  store i64 %conv16, i64* %span, align 8, !dbg !800
  br label %if.end32, !dbg !801

if.else:                                          ; preds = %while.body
  %15 = load i8*, i8** %p, align 8, !dbg !802
  %16 = load i8, i8* %15, align 1, !dbg !802
  %conv17 = zext i8 %16 to i32, !dbg !802
  %and18 = and i32 %conv17, 128, !dbg !802
  %tobool = icmp ne i32 %and18, 0, !dbg !802
  br i1 %tobool, label %if.then19, label %if.else24, !dbg !804

if.then19:                                        ; preds = %if.else
  %17 = load i8*, i8** %p, align 8, !dbg !805
  %18 = load i8, i8* %17, align 1, !dbg !805
  %conv20 = zext i8 %18 to i32, !dbg !805
  %and21 = and i32 %conv20, 3, !dbg !805
  %add22 = add nsw i32 %and21, 1, !dbg !805
  %conv23 = sext i32 %add22 to i64, !dbg !805
  store i64 %conv23, i64* %span, align 8, !dbg !807
  br label %if.end31, !dbg !808

if.else24:                                        ; preds = %if.else
  %19 = load i8*, i8** %p, align 8, !dbg !809
  %20 = load i8, i8* %19, align 1, !dbg !809
  %conv25 = zext i8 %20 to i32, !dbg !809
  %and26 = and i32 %conv25, 63, !dbg !809
  %shl = shl i32 %and26, 8, !dbg !809
  %21 = load i8*, i8** %p, align 8, !dbg !809
  %add.ptr27 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !809
  %22 = load i8, i8* %add.ptr27, align 1, !dbg !809
  %conv28 = zext i8 %22 to i32, !dbg !809
  %or = or i32 %shl, %conv28, !dbg !809
  %add29 = add nsw i32 %or, 1, !dbg !809
  %conv30 = sext i32 %add29 to i64, !dbg !809
  store i64 %conv30, i64* %span, align 8, !dbg !811
  store i64 2, i64* %oplen, align 8, !dbg !812
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then19
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then13
  %23 = load i64, i64* %index.addr, align 8, !dbg !813
  %24 = load i64, i64* %first, align 8, !dbg !815
  %25 = load i64, i64* %span, align 8, !dbg !816
  %add33 = add nsw i64 %24, %25, !dbg !817
  %sub = sub nsw i64 %add33, 1, !dbg !818
  %cmp34 = icmp sle i64 %23, %sub, !dbg !819
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !820

if.then36:                                        ; preds = %if.end32
  br label %while.end, !dbg !821

if.end37:                                         ; preds = %if.end32
  %26 = load i8*, i8** %p, align 8, !dbg !822
  store i8* %26, i8** %prev, align 8, !dbg !823
  %27 = load i64, i64* %oplen, align 8, !dbg !824
  %28 = load i8*, i8** %p, align 8, !dbg !825
  %add.ptr38 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !825
  store i8* %add.ptr38, i8** %p, align 8, !dbg !825
  %29 = load i64, i64* %span, align 8, !dbg !826
  %30 = load i64, i64* %first, align 8, !dbg !827
  %add39 = add nsw i64 %30, %29, !dbg !827
  store i64 %add39, i64* %first, align 8, !dbg !827
  br label %while.cond, !dbg !787, !llvm.loop !828

while.end:                                        ; preds = %if.then36, %while.cond
  %31 = load i64, i64* %span, align 8, !dbg !830
  %cmp40 = icmp eq i64 %31, 0, !dbg !832
  br i1 %cmp40, label %if.then44, label %lor.lhs.false, !dbg !833

lor.lhs.false:                                    ; preds = %while.end
  %32 = load i8*, i8** %p, align 8, !dbg !834
  %33 = load i8*, i8** %end, align 8, !dbg !835
  %cmp42 = icmp uge i8* %32, %33, !dbg !836
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !837

if.then44:                                        ; preds = %lor.lhs.false, %while.end
  store i32 -1, i32* %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.end45:                                         ; preds = %lor.lhs.false
  %34 = load i8*, i8** %p, align 8, !dbg !839
  %35 = load i8, i8* %34, align 1, !dbg !839
  %conv46 = zext i8 %35 to i32, !dbg !839
  %and47 = and i32 %conv46, 192, !dbg !839
  %cmp48 = icmp eq i32 %and47, 64, !dbg !839
  br i1 %cmp48, label %cond.true, label %cond.false, !dbg !839

cond.true:                                        ; preds = %if.end45
  %36 = load i8*, i8** %p, align 8, !dbg !840
  %add.ptr50 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !841
  br label %cond.end, !dbg !839

cond.false:                                       ; preds = %if.end45
  %37 = load i8*, i8** %p, align 8, !dbg !842
  %add.ptr51 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !843
  br label %cond.end, !dbg !839

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr50, %cond.true ], [ %add.ptr51, %cond.false ], !dbg !839
  store i8* %cond, i8** %next, align 8, !dbg !844
  %38 = load i8*, i8** %next, align 8, !dbg !845
  %39 = load i8*, i8** %end, align 8, !dbg !847
  %cmp52 = icmp uge i8* %38, %39, !dbg !848
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !849

if.then54:                                        ; preds = %cond.end
  store i8* null, i8** %next, align 8, !dbg !850
  br label %if.end55, !dbg !851

if.end55:                                         ; preds = %if.then54, %cond.end
  %40 = load i8*, i8** %p, align 8, !dbg !852
  %41 = load i8, i8* %40, align 1, !dbg !852
  %conv56 = zext i8 %41 to i32, !dbg !852
  %and57 = and i32 %conv56, 192, !dbg !852
  %cmp58 = icmp eq i32 %and57, 0, !dbg !852
  br i1 %cmp58, label %if.then60, label %if.else65, !dbg !854

if.then60:                                        ; preds = %if.end55
  store i64 1, i64* %is_zero, align 8, !dbg !855
  %42 = load i8*, i8** %p, align 8, !dbg !857
  %43 = load i8, i8* %42, align 1, !dbg !857
  %conv61 = zext i8 %43 to i32, !dbg !857
  %and62 = and i32 %conv61, 63, !dbg !857
  %add63 = add nsw i32 %and62, 1, !dbg !857
  %conv64 = sext i32 %add63 to i64, !dbg !857
  store i64 %conv64, i64* %runlen, align 8, !dbg !858
  br label %if.end85, !dbg !859

if.else65:                                        ; preds = %if.end55
  %44 = load i8*, i8** %p, align 8, !dbg !860
  %45 = load i8, i8* %44, align 1, !dbg !860
  %conv66 = zext i8 %45 to i32, !dbg !860
  %and67 = and i32 %conv66, 192, !dbg !860
  %cmp68 = icmp eq i32 %and67, 64, !dbg !860
  br i1 %cmp68, label %if.then70, label %if.else79, !dbg !862

if.then70:                                        ; preds = %if.else65
  store i64 1, i64* %is_xzero, align 8, !dbg !863
  %46 = load i8*, i8** %p, align 8, !dbg !865
  %47 = load i8, i8* %46, align 1, !dbg !865
  %conv71 = zext i8 %47 to i32, !dbg !865
  %and72 = and i32 %conv71, 63, !dbg !865
  %shl73 = shl i32 %and72, 8, !dbg !865
  %48 = load i8*, i8** %p, align 8, !dbg !865
  %add.ptr74 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !865
  %49 = load i8, i8* %add.ptr74, align 1, !dbg !865
  %conv75 = zext i8 %49 to i32, !dbg !865
  %or76 = or i32 %shl73, %conv75, !dbg !865
  %add77 = add nsw i32 %or76, 1, !dbg !865
  %conv78 = sext i32 %add77 to i64, !dbg !865
  store i64 %conv78, i64* %runlen, align 8, !dbg !866
  br label %if.end84, !dbg !867

if.else79:                                        ; preds = %if.else65
  store i64 1, i64* %is_val, align 8, !dbg !868
  %50 = load i8*, i8** %p, align 8, !dbg !870
  %51 = load i8, i8* %50, align 1, !dbg !870
  %conv80 = zext i8 %51 to i32, !dbg !870
  %and81 = and i32 %conv80, 3, !dbg !870
  %add82 = add nsw i32 %and81, 1, !dbg !870
  %conv83 = sext i32 %add82 to i64, !dbg !870
  store i64 %conv83, i64* %runlen, align 8, !dbg !871
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.then70
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then60
  %52 = load i64, i64* %is_val, align 8, !dbg !872
  %tobool86 = icmp ne i64 %52, 0, !dbg !872
  br i1 %tobool86, label %if.then87, label %if.end107, !dbg !874

if.then87:                                        ; preds = %if.end85
  %53 = load i8*, i8** %p, align 8, !dbg !875
  %54 = load i8, i8* %53, align 1, !dbg !875
  %conv88 = zext i8 %54 to i32, !dbg !875
  %shr = ashr i32 %conv88, 2, !dbg !875
  %and89 = and i32 %shr, 31, !dbg !875
  %add90 = add nsw i32 %and89, 1, !dbg !875
  %conv91 = trunc i32 %add90 to i8, !dbg !875
  store i8 %conv91, i8* %oldcount, align 1, !dbg !877
  %55 = load i8, i8* %oldcount, align 1, !dbg !878
  %conv92 = zext i8 %55 to i32, !dbg !878
  %56 = load i8, i8* %count.addr, align 1, !dbg !880
  %conv93 = zext i8 %56 to i32, !dbg !880
  %cmp94 = icmp sge i32 %conv92, %conv93, !dbg !881
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !882

if.then96:                                        ; preds = %if.then87
  store i32 0, i32* %retval, align 4, !dbg !883
  br label %return, !dbg !883

if.end97:                                         ; preds = %if.then87
  %57 = load i64, i64* %runlen, align 8, !dbg !884
  %cmp98 = icmp eq i64 %57, 1, !dbg !886
  br i1 %cmp98, label %if.then100, label %if.end106, !dbg !887

if.then100:                                       ; preds = %if.end97
  br label %do.body, !dbg !888

do.body:                                          ; preds = %if.then100
  %58 = load i8, i8* %count.addr, align 1, !dbg !890
  %conv101 = zext i8 %58 to i32, !dbg !890
  %sub102 = sub nsw i32 %conv101, 1, !dbg !890
  %shl103 = shl i32 %sub102, 2, !dbg !890
  %or104 = or i32 %shl103, 128, !dbg !890
  %conv105 = trunc i32 %or104 to i8, !dbg !890
  %59 = load i8*, i8** %p, align 8, !dbg !890
  store i8 %conv105, i8* %59, align 1, !dbg !890
  br label %do.end, !dbg !890

do.end:                                           ; preds = %do.body
  br label %updated, !dbg !892

if.end106:                                        ; preds = %if.end97
  br label %if.end107, !dbg !893

if.end107:                                        ; preds = %if.end106, %if.end85
  %60 = load i64, i64* %is_zero, align 8, !dbg !894
  %tobool108 = icmp ne i64 %60, 0, !dbg !894
  br i1 %tobool108, label %land.lhs.true, label %if.end119, !dbg !896

land.lhs.true:                                    ; preds = %if.end107
  %61 = load i64, i64* %runlen, align 8, !dbg !897
  %cmp109 = icmp eq i64 %61, 1, !dbg !898
  br i1 %cmp109, label %if.then111, label %if.end119, !dbg !899

if.then111:                                       ; preds = %land.lhs.true
  br label %do.body112, !dbg !900

do.body112:                                       ; preds = %if.then111
  %62 = load i8, i8* %count.addr, align 1, !dbg !902
  %conv113 = zext i8 %62 to i32, !dbg !902
  %sub114 = sub nsw i32 %conv113, 1, !dbg !902
  %shl115 = shl i32 %sub114, 2, !dbg !902
  %or116 = or i32 %shl115, 128, !dbg !902
  %conv117 = trunc i32 %or116 to i8, !dbg !902
  %63 = load i8*, i8** %p, align 8, !dbg !902
  store i8 %conv117, i8* %63, align 1, !dbg !902
  br label %do.end118, !dbg !902

do.end118:                                        ; preds = %do.body112
  br label %updated, !dbg !904

if.end119:                                        ; preds = %land.lhs.true, %if.end107
  call void @llvm.dbg.declare(metadata [5 x i8]* %seq, metadata !905, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.declare(metadata i8** %n, metadata !910, metadata !DIExpression()), !dbg !911
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %seq, i64 0, i64 0, !dbg !912
  store i8* %arraydecay, i8** %n, align 8, !dbg !911
  call void @llvm.dbg.declare(metadata i32* %last, metadata !913, metadata !DIExpression()), !dbg !914
  %64 = load i64, i64* %first, align 8, !dbg !915
  %65 = load i64, i64* %span, align 8, !dbg !916
  %add120 = add nsw i64 %64, %65, !dbg !917
  %sub121 = sub nsw i64 %add120, 1, !dbg !918
  %conv122 = trunc i64 %sub121 to i32, !dbg !915
  store i32 %conv122, i32* %last, align 4, !dbg !914
  call void @llvm.dbg.declare(metadata i32* %len, metadata !919, metadata !DIExpression()), !dbg !920
  %66 = load i64, i64* %is_zero, align 8, !dbg !921
  %tobool123 = icmp ne i64 %66, 0, !dbg !921
  br i1 %tobool123, label %if.then126, label %lor.lhs.false124, !dbg !923

lor.lhs.false124:                                 ; preds = %if.end119
  %67 = load i64, i64* %is_xzero, align 8, !dbg !924
  %tobool125 = icmp ne i64 %67, 0, !dbg !924
  br i1 %tobool125, label %if.then126, label %if.else189, !dbg !925

if.then126:                                       ; preds = %lor.lhs.false124, %if.end119
  %68 = load i64, i64* %index.addr, align 8, !dbg !926
  %69 = load i64, i64* %first, align 8, !dbg !929
  %cmp127 = icmp ne i64 %68, %69, !dbg !930
  br i1 %cmp127, label %if.then129, label %if.end151, !dbg !931

if.then129:                                       ; preds = %if.then126
  %70 = load i64, i64* %index.addr, align 8, !dbg !932
  %71 = load i64, i64* %first, align 8, !dbg !934
  %sub130 = sub nsw i64 %70, %71, !dbg !935
  %conv131 = trunc i64 %sub130 to i32, !dbg !932
  store i32 %conv131, i32* %len, align 4, !dbg !936
  %72 = load i32, i32* %len, align 4, !dbg !937
  %cmp132 = icmp sgt i32 %72, 64, !dbg !939
  br i1 %cmp132, label %if.then134, label %if.else145, !dbg !940

if.then134:                                       ; preds = %if.then129
  br label %do.body135, !dbg !941

do.body135:                                       ; preds = %if.then134
  call void @llvm.dbg.declare(metadata i32* %_l, metadata !943, metadata !DIExpression()), !dbg !945
  %73 = load i32, i32* %len, align 4, !dbg !945
  %sub136 = sub nsw i32 %73, 1, !dbg !945
  store i32 %sub136, i32* %_l, align 4, !dbg !945
  %74 = load i32, i32* %_l, align 4, !dbg !945
  %shr137 = ashr i32 %74, 8, !dbg !945
  %or138 = or i32 %shr137, 64, !dbg !945
  %conv139 = trunc i32 %or138 to i8, !dbg !945
  %75 = load i8*, i8** %n, align 8, !dbg !945
  store i8 %conv139, i8* %75, align 1, !dbg !945
  %76 = load i32, i32* %_l, align 4, !dbg !945
  %and140 = and i32 %76, 255, !dbg !945
  %conv141 = trunc i32 %and140 to i8, !dbg !945
  %77 = load i8*, i8** %n, align 8, !dbg !945
  %add.ptr142 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !945
  store i8 %conv141, i8* %add.ptr142, align 1, !dbg !945
  br label %do.end143, !dbg !945

do.end143:                                        ; preds = %do.body135
  %78 = load i8*, i8** %n, align 8, !dbg !946
  %add.ptr144 = getelementptr inbounds i8, i8* %78, i64 2, !dbg !946
  store i8* %add.ptr144, i8** %n, align 8, !dbg !946
  br label %if.end150, !dbg !947

if.else145:                                       ; preds = %if.then129
  br label %do.body146, !dbg !948

do.body146:                                       ; preds = %if.else145
  %79 = load i32, i32* %len, align 4, !dbg !950
  %sub147 = sub nsw i32 %79, 1, !dbg !950
  %conv148 = trunc i32 %sub147 to i8, !dbg !950
  %80 = load i8*, i8** %n, align 8, !dbg !950
  store i8 %conv148, i8* %80, align 1, !dbg !950
  br label %do.end149, !dbg !950

do.end149:                                        ; preds = %do.body146
  %81 = load i8*, i8** %n, align 8, !dbg !952
  %incdec.ptr = getelementptr inbounds i8, i8* %81, i32 1, !dbg !952
  store i8* %incdec.ptr, i8** %n, align 8, !dbg !952
  br label %if.end150

if.end150:                                        ; preds = %do.end149, %do.end143
  br label %if.end151, !dbg !953

if.end151:                                        ; preds = %if.end150, %if.then126
  br label %do.body152, !dbg !954

do.body152:                                       ; preds = %if.end151
  %82 = load i8, i8* %count.addr, align 1, !dbg !955
  %conv153 = zext i8 %82 to i32, !dbg !955
  %sub154 = sub nsw i32 %conv153, 1, !dbg !955
  %shl155 = shl i32 %sub154, 2, !dbg !955
  %or156 = or i32 %shl155, 128, !dbg !955
  %conv157 = trunc i32 %or156 to i8, !dbg !955
  %83 = load i8*, i8** %n, align 8, !dbg !955
  store i8 %conv157, i8* %83, align 1, !dbg !955
  br label %do.end158, !dbg !955

do.end158:                                        ; preds = %do.body152
  %84 = load i8*, i8** %n, align 8, !dbg !957
  %incdec.ptr159 = getelementptr inbounds i8, i8* %84, i32 1, !dbg !957
  store i8* %incdec.ptr159, i8** %n, align 8, !dbg !957
  %85 = load i64, i64* %index.addr, align 8, !dbg !958
  %86 = load i32, i32* %last, align 4, !dbg !960
  %conv160 = sext i32 %86 to i64, !dbg !960
  %cmp161 = icmp ne i64 %85, %conv160, !dbg !961
  br i1 %cmp161, label %if.then163, label %if.end188, !dbg !962

if.then163:                                       ; preds = %do.end158
  %87 = load i32, i32* %last, align 4, !dbg !963
  %conv164 = sext i32 %87 to i64, !dbg !963
  %88 = load i64, i64* %index.addr, align 8, !dbg !965
  %sub165 = sub nsw i64 %conv164, %88, !dbg !966
  %conv166 = trunc i64 %sub165 to i32, !dbg !963
  store i32 %conv166, i32* %len, align 4, !dbg !967
  %89 = load i32, i32* %len, align 4, !dbg !968
  %cmp167 = icmp sgt i32 %89, 64, !dbg !970
  br i1 %cmp167, label %if.then169, label %if.else181, !dbg !971

if.then169:                                       ; preds = %if.then163
  br label %do.body170, !dbg !972

do.body170:                                       ; preds = %if.then169
  call void @llvm.dbg.declare(metadata i32* %_l171, metadata !974, metadata !DIExpression()), !dbg !976
  %90 = load i32, i32* %len, align 4, !dbg !976
  %sub172 = sub nsw i32 %90, 1, !dbg !976
  store i32 %sub172, i32* %_l171, align 4, !dbg !976
  %91 = load i32, i32* %_l171, align 4, !dbg !976
  %shr173 = ashr i32 %91, 8, !dbg !976
  %or174 = or i32 %shr173, 64, !dbg !976
  %conv175 = trunc i32 %or174 to i8, !dbg !976
  %92 = load i8*, i8** %n, align 8, !dbg !976
  store i8 %conv175, i8* %92, align 1, !dbg !976
  %93 = load i32, i32* %_l171, align 4, !dbg !976
  %and176 = and i32 %93, 255, !dbg !976
  %conv177 = trunc i32 %and176 to i8, !dbg !976
  %94 = load i8*, i8** %n, align 8, !dbg !976
  %add.ptr178 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !976
  store i8 %conv177, i8* %add.ptr178, align 1, !dbg !976
  br label %do.end179, !dbg !976

do.end179:                                        ; preds = %do.body170
  %95 = load i8*, i8** %n, align 8, !dbg !977
  %add.ptr180 = getelementptr inbounds i8, i8* %95, i64 2, !dbg !977
  store i8* %add.ptr180, i8** %n, align 8, !dbg !977
  br label %if.end187, !dbg !978

if.else181:                                       ; preds = %if.then163
  br label %do.body182, !dbg !979

do.body182:                                       ; preds = %if.else181
  %96 = load i32, i32* %len, align 4, !dbg !981
  %sub183 = sub nsw i32 %96, 1, !dbg !981
  %conv184 = trunc i32 %sub183 to i8, !dbg !981
  %97 = load i8*, i8** %n, align 8, !dbg !981
  store i8 %conv184, i8* %97, align 1, !dbg !981
  br label %do.end185, !dbg !981

do.end185:                                        ; preds = %do.body182
  %98 = load i8*, i8** %n, align 8, !dbg !983
  %incdec.ptr186 = getelementptr inbounds i8, i8* %98, i32 1, !dbg !983
  store i8* %incdec.ptr186, i8** %n, align 8, !dbg !983
  br label %if.end187

if.end187:                                        ; preds = %do.end185, %do.end179
  br label %if.end188, !dbg !984

if.end188:                                        ; preds = %if.end187, %do.end158
  br label %if.end234, !dbg !985

if.else189:                                       ; preds = %lor.lhs.false124
  call void @llvm.dbg.declare(metadata i32* %curval, metadata !986, metadata !DIExpression()), !dbg !988
  %99 = load i8*, i8** %p, align 8, !dbg !989
  %100 = load i8, i8* %99, align 1, !dbg !989
  %conv190 = zext i8 %100 to i32, !dbg !989
  %shr191 = ashr i32 %conv190, 2, !dbg !989
  %and192 = and i32 %shr191, 31, !dbg !989
  %add193 = add nsw i32 %and192, 1, !dbg !989
  store i32 %add193, i32* %curval, align 4, !dbg !988
  %101 = load i64, i64* %index.addr, align 8, !dbg !990
  %102 = load i64, i64* %first, align 8, !dbg !992
  %cmp194 = icmp ne i64 %101, %102, !dbg !993
  br i1 %cmp194, label %if.then196, label %if.end208, !dbg !994

if.then196:                                       ; preds = %if.else189
  %103 = load i64, i64* %index.addr, align 8, !dbg !995
  %104 = load i64, i64* %first, align 8, !dbg !997
  %sub197 = sub nsw i64 %103, %104, !dbg !998
  %conv198 = trunc i64 %sub197 to i32, !dbg !995
  store i32 %conv198, i32* %len, align 4, !dbg !999
  br label %do.body199, !dbg !1000

do.body199:                                       ; preds = %if.then196
  %105 = load i32, i32* %curval, align 4, !dbg !1001
  %sub200 = sub nsw i32 %105, 1, !dbg !1001
  %shl201 = shl i32 %sub200, 2, !dbg !1001
  %106 = load i32, i32* %len, align 4, !dbg !1001
  %sub202 = sub nsw i32 %106, 1, !dbg !1001
  %or203 = or i32 %shl201, %sub202, !dbg !1001
  %or204 = or i32 %or203, 128, !dbg !1001
  %conv205 = trunc i32 %or204 to i8, !dbg !1001
  %107 = load i8*, i8** %n, align 8, !dbg !1001
  store i8 %conv205, i8* %107, align 1, !dbg !1001
  br label %do.end206, !dbg !1001

do.end206:                                        ; preds = %do.body199
  %108 = load i8*, i8** %n, align 8, !dbg !1003
  %incdec.ptr207 = getelementptr inbounds i8, i8* %108, i32 1, !dbg !1003
  store i8* %incdec.ptr207, i8** %n, align 8, !dbg !1003
  br label %if.end208, !dbg !1004

if.end208:                                        ; preds = %do.end206, %if.else189
  br label %do.body209, !dbg !1005

do.body209:                                       ; preds = %if.end208
  %109 = load i8, i8* %count.addr, align 1, !dbg !1006
  %conv210 = zext i8 %109 to i32, !dbg !1006
  %sub211 = sub nsw i32 %conv210, 1, !dbg !1006
  %shl212 = shl i32 %sub211, 2, !dbg !1006
  %or213 = or i32 %shl212, 128, !dbg !1006
  %conv214 = trunc i32 %or213 to i8, !dbg !1006
  %110 = load i8*, i8** %n, align 8, !dbg !1006
  store i8 %conv214, i8* %110, align 1, !dbg !1006
  br label %do.end215, !dbg !1006

do.end215:                                        ; preds = %do.body209
  %111 = load i8*, i8** %n, align 8, !dbg !1008
  %incdec.ptr216 = getelementptr inbounds i8, i8* %111, i32 1, !dbg !1008
  store i8* %incdec.ptr216, i8** %n, align 8, !dbg !1008
  %112 = load i64, i64* %index.addr, align 8, !dbg !1009
  %113 = load i32, i32* %last, align 4, !dbg !1011
  %conv217 = sext i32 %113 to i64, !dbg !1011
  %cmp218 = icmp ne i64 %112, %conv217, !dbg !1012
  br i1 %cmp218, label %if.then220, label %if.end233, !dbg !1013

if.then220:                                       ; preds = %do.end215
  %114 = load i32, i32* %last, align 4, !dbg !1014
  %conv221 = sext i32 %114 to i64, !dbg !1014
  %115 = load i64, i64* %index.addr, align 8, !dbg !1016
  %sub222 = sub nsw i64 %conv221, %115, !dbg !1017
  %conv223 = trunc i64 %sub222 to i32, !dbg !1014
  store i32 %conv223, i32* %len, align 4, !dbg !1018
  br label %do.body224, !dbg !1019

do.body224:                                       ; preds = %if.then220
  %116 = load i32, i32* %curval, align 4, !dbg !1020
  %sub225 = sub nsw i32 %116, 1, !dbg !1020
  %shl226 = shl i32 %sub225, 2, !dbg !1020
  %117 = load i32, i32* %len, align 4, !dbg !1020
  %sub227 = sub nsw i32 %117, 1, !dbg !1020
  %or228 = or i32 %shl226, %sub227, !dbg !1020
  %or229 = or i32 %or228, 128, !dbg !1020
  %conv230 = trunc i32 %or229 to i8, !dbg !1020
  %118 = load i8*, i8** %n, align 8, !dbg !1020
  store i8 %conv230, i8* %118, align 1, !dbg !1020
  br label %do.end231, !dbg !1020

do.end231:                                        ; preds = %do.body224
  %119 = load i8*, i8** %n, align 8, !dbg !1022
  %incdec.ptr232 = getelementptr inbounds i8, i8* %119, i32 1, !dbg !1022
  store i8* %incdec.ptr232, i8** %n, align 8, !dbg !1022
  br label %if.end233, !dbg !1023

if.end233:                                        ; preds = %do.end231, %do.end215
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end188
  call void @llvm.dbg.declare(metadata i32* %seqlen, metadata !1024, metadata !DIExpression()), !dbg !1025
  %120 = load i8*, i8** %n, align 8, !dbg !1026
  %arraydecay235 = getelementptr inbounds [5 x i8], [5 x i8]* %seq, i64 0, i64 0, !dbg !1027
  %sub.ptr.lhs.cast = ptrtoint i8* %120 to i64, !dbg !1028
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay235 to i64, !dbg !1028
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1028
  %conv236 = trunc i64 %sub.ptr.sub to i32, !dbg !1026
  store i32 %conv236, i32* %seqlen, align 4, !dbg !1025
  call void @llvm.dbg.declare(metadata i32* %oldlen, metadata !1029, metadata !DIExpression()), !dbg !1030
  %121 = load i64, i64* %is_xzero, align 8, !dbg !1031
  %tobool237 = icmp ne i64 %121, 0, !dbg !1031
  %122 = zext i1 %tobool237 to i64, !dbg !1031
  %cond238 = select i1 %tobool237, i32 2, i32 1, !dbg !1031
  store i32 %cond238, i32* %oldlen, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata i32* %deltalen, metadata !1032, metadata !DIExpression()), !dbg !1033
  %123 = load i32, i32* %seqlen, align 4, !dbg !1034
  %124 = load i32, i32* %oldlen, align 4, !dbg !1035
  %sub239 = sub nsw i32 %123, %124, !dbg !1036
  store i32 %sub239, i32* %deltalen, align 4, !dbg !1033
  %125 = load i32, i32* %deltalen, align 4, !dbg !1037
  %cmp240 = icmp sgt i32 %125, 0, !dbg !1039
  br i1 %cmp240, label %land.lhs.true242, label %if.end250, !dbg !1040

land.lhs.true242:                                 ; preds = %if.end234
  %126 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1041
  %ptr243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %126, i32 0, i32 2, !dbg !1042
  %127 = load i8*, i8** %ptr243, align 8, !dbg !1042
  %call244 = call i64 @sdslen(i8* %127), !dbg !1043
  %128 = load i32, i32* %deltalen, align 4, !dbg !1044
  %conv245 = sext i32 %128 to i64, !dbg !1044
  %add246 = add i64 %call244, %conv245, !dbg !1045
  %129 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 336), align 8, !dbg !1046
  %cmp247 = icmp ugt i64 %add246, %129, !dbg !1047
  br i1 %cmp247, label %if.then249, label %if.end250, !dbg !1048

if.then249:                                       ; preds = %land.lhs.true242
  br label %promote, !dbg !1049

if.end250:                                        ; preds = %land.lhs.true242, %if.end234
  %130 = load i32, i32* %deltalen, align 4, !dbg !1050
  %tobool251 = icmp ne i32 %130, 0, !dbg !1050
  br i1 %tobool251, label %land.lhs.true252, label %if.end259, !dbg !1052

land.lhs.true252:                                 ; preds = %if.end250
  %131 = load i8*, i8** %next, align 8, !dbg !1053
  %tobool253 = icmp ne i8* %131, null, !dbg !1053
  br i1 %tobool253, label %if.then254, label %if.end259, !dbg !1054

if.then254:                                       ; preds = %land.lhs.true252
  %132 = load i8*, i8** %next, align 8, !dbg !1055
  %133 = load i32, i32* %deltalen, align 4, !dbg !1056
  %idx.ext = sext i32 %133 to i64, !dbg !1057
  %add.ptr255 = getelementptr inbounds i8, i8* %132, i64 %idx.ext, !dbg !1057
  %134 = load i8*, i8** %next, align 8, !dbg !1058
  %135 = load i8*, i8** %end, align 8, !dbg !1059
  %136 = load i8*, i8** %next, align 8, !dbg !1060
  %sub.ptr.lhs.cast256 = ptrtoint i8* %135 to i64, !dbg !1061
  %sub.ptr.rhs.cast257 = ptrtoint i8* %136 to i64, !dbg !1061
  %sub.ptr.sub258 = sub i64 %sub.ptr.lhs.cast256, %sub.ptr.rhs.cast257, !dbg !1061
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr255, i8* align 1 %134, i64 %sub.ptr.sub258, i1 false), !dbg !1062
  br label %if.end259, !dbg !1062

if.end259:                                        ; preds = %if.then254, %land.lhs.true252, %if.end250
  %137 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1063
  %ptr260 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %137, i32 0, i32 2, !dbg !1064
  %138 = load i8*, i8** %ptr260, align 8, !dbg !1064
  %139 = load i32, i32* %deltalen, align 4, !dbg !1065
  %conv261 = sext i32 %139 to i64, !dbg !1065
  call void @sdsIncrLen(i8* %138, i64 %conv261), !dbg !1066
  %140 = load i8*, i8** %p, align 8, !dbg !1067
  %arraydecay262 = getelementptr inbounds [5 x i8], [5 x i8]* %seq, i64 0, i64 0, !dbg !1068
  %141 = load i32, i32* %seqlen, align 4, !dbg !1069
  %conv263 = sext i32 %141 to i64, !dbg !1069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %140, i8* align 1 %arraydecay262, i64 %conv263, i1 false), !dbg !1068
  %142 = load i32, i32* %deltalen, align 4, !dbg !1070
  %143 = load i8*, i8** %end, align 8, !dbg !1071
  %idx.ext264 = sext i32 %142 to i64, !dbg !1071
  %add.ptr265 = getelementptr inbounds i8, i8* %143, i64 %idx.ext264, !dbg !1071
  store i8* %add.ptr265, i8** %end, align 8, !dbg !1071
  br label %updated, !dbg !1072

updated:                                          ; preds = %if.end259, %do.end118, %do.end
  call void @llvm.dbg.label(metadata !1073), !dbg !1074
  %144 = load i8*, i8** %prev, align 8, !dbg !1075
  %tobool266 = icmp ne i8* %144, null, !dbg !1075
  br i1 %tobool266, label %cond.true267, label %cond.false268, !dbg !1075

cond.true267:                                     ; preds = %updated
  %145 = load i8*, i8** %prev, align 8, !dbg !1076
  br label %cond.end269, !dbg !1075

cond.false268:                                    ; preds = %updated
  %146 = load i8*, i8** %sparse, align 8, !dbg !1077
  br label %cond.end269, !dbg !1075

cond.end269:                                      ; preds = %cond.false268, %cond.true267
  %cond270 = phi i8* [ %145, %cond.true267 ], [ %146, %cond.false268 ], !dbg !1075
  store i8* %cond270, i8** %p, align 8, !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %scanlen, metadata !1079, metadata !DIExpression()), !dbg !1080
  store i32 5, i32* %scanlen, align 4, !dbg !1080
  br label %while.cond271, !dbg !1081

while.cond271:                                    ; preds = %if.end341, %do.end332, %if.then287, %if.then280, %cond.end269
  %147 = load i8*, i8** %p, align 8, !dbg !1082
  %148 = load i8*, i8** %end, align 8, !dbg !1083
  %cmp272 = icmp ult i8* %147, %148, !dbg !1084
  br i1 %cmp272, label %land.rhs, label %land.end, !dbg !1085

land.rhs:                                         ; preds = %while.cond271
  %149 = load i32, i32* %scanlen, align 4, !dbg !1086
  %dec = add nsw i32 %149, -1, !dbg !1086
  store i32 %dec, i32* %scanlen, align 4, !dbg !1086
  %tobool274 = icmp ne i32 %149, 0, !dbg !1085
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond271
  %150 = phi i1 [ false, %while.cond271 ], [ %tobool274, %land.rhs ], !dbg !1087
  br i1 %150, label %while.body275, label %while.end343, !dbg !1081

while.body275:                                    ; preds = %land.end
  %151 = load i8*, i8** %p, align 8, !dbg !1088
  %152 = load i8, i8* %151, align 1, !dbg !1088
  %conv276 = zext i8 %152 to i32, !dbg !1088
  %and277 = and i32 %conv276, 192, !dbg !1088
  %cmp278 = icmp eq i32 %and277, 64, !dbg !1088
  br i1 %cmp278, label %if.then280, label %if.else282, !dbg !1091

if.then280:                                       ; preds = %while.body275
  %153 = load i8*, i8** %p, align 8, !dbg !1092
  %add.ptr281 = getelementptr inbounds i8, i8* %153, i64 2, !dbg !1092
  store i8* %add.ptr281, i8** %p, align 8, !dbg !1092
  br label %while.cond271, !dbg !1094, !llvm.loop !1095

if.else282:                                       ; preds = %while.body275
  %154 = load i8*, i8** %p, align 8, !dbg !1097
  %155 = load i8, i8* %154, align 1, !dbg !1097
  %conv283 = zext i8 %155 to i32, !dbg !1097
  %and284 = and i32 %conv283, 192, !dbg !1097
  %cmp285 = icmp eq i32 %and284, 0, !dbg !1097
  br i1 %cmp285, label %if.then287, label %if.end289, !dbg !1099

if.then287:                                       ; preds = %if.else282
  %156 = load i8*, i8** %p, align 8, !dbg !1100
  %incdec.ptr288 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !1100
  store i8* %incdec.ptr288, i8** %p, align 8, !dbg !1100
  br label %while.cond271, !dbg !1102, !llvm.loop !1095

if.end289:                                        ; preds = %if.else282
  br label %if.end290

if.end290:                                        ; preds = %if.end289
  %157 = load i8*, i8** %p, align 8, !dbg !1103
  %add.ptr291 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1105
  %158 = load i8*, i8** %end, align 8, !dbg !1106
  %cmp292 = icmp ult i8* %add.ptr291, %158, !dbg !1107
  br i1 %cmp292, label %land.lhs.true294, label %if.end341, !dbg !1108

land.lhs.true294:                                 ; preds = %if.end290
  %159 = load i8*, i8** %p, align 8, !dbg !1109
  %add.ptr295 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !1109
  %160 = load i8, i8* %add.ptr295, align 1, !dbg !1109
  %conv296 = zext i8 %160 to i32, !dbg !1109
  %and297 = and i32 %conv296, 128, !dbg !1109
  %tobool298 = icmp ne i32 %and297, 0, !dbg !1109
  br i1 %tobool298, label %if.then299, label %if.end341, !dbg !1110

if.then299:                                       ; preds = %land.lhs.true294
  call void @llvm.dbg.declare(metadata i32* %v1, metadata !1111, metadata !DIExpression()), !dbg !1113
  %161 = load i8*, i8** %p, align 8, !dbg !1114
  %162 = load i8, i8* %161, align 1, !dbg !1114
  %conv300 = zext i8 %162 to i32, !dbg !1114
  %shr301 = ashr i32 %conv300, 2, !dbg !1114
  %and302 = and i32 %shr301, 31, !dbg !1114
  %add303 = add nsw i32 %and302, 1, !dbg !1114
  store i32 %add303, i32* %v1, align 4, !dbg !1113
  call void @llvm.dbg.declare(metadata i32* %v2, metadata !1115, metadata !DIExpression()), !dbg !1116
  %163 = load i8*, i8** %p, align 8, !dbg !1117
  %add.ptr304 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !1117
  %164 = load i8, i8* %add.ptr304, align 1, !dbg !1117
  %conv305 = zext i8 %164 to i32, !dbg !1117
  %shr306 = ashr i32 %conv305, 2, !dbg !1117
  %and307 = and i32 %shr306, 31, !dbg !1117
  %add308 = add nsw i32 %and307, 1, !dbg !1117
  store i32 %add308, i32* %v2, align 4, !dbg !1116
  %165 = load i32, i32* %v1, align 4, !dbg !1118
  %166 = load i32, i32* %v2, align 4, !dbg !1120
  %cmp309 = icmp eq i32 %165, %166, !dbg !1121
  br i1 %cmp309, label %if.then311, label %if.end340, !dbg !1122

if.then311:                                       ; preds = %if.then299
  call void @llvm.dbg.declare(metadata i32* %len312, metadata !1123, metadata !DIExpression()), !dbg !1125
  %167 = load i8*, i8** %p, align 8, !dbg !1126
  %168 = load i8, i8* %167, align 1, !dbg !1126
  %conv313 = zext i8 %168 to i32, !dbg !1126
  %and314 = and i32 %conv313, 3, !dbg !1126
  %add315 = add nsw i32 %and314, 1, !dbg !1126
  %169 = load i8*, i8** %p, align 8, !dbg !1127
  %add.ptr316 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1127
  %170 = load i8, i8* %add.ptr316, align 1, !dbg !1127
  %conv317 = zext i8 %170 to i32, !dbg !1127
  %and318 = and i32 %conv317, 3, !dbg !1127
  %add319 = add nsw i32 %and318, 1, !dbg !1127
  %add320 = add nsw i32 %add315, %add319, !dbg !1128
  store i32 %add320, i32* %len312, align 4, !dbg !1125
  %171 = load i32, i32* %len312, align 4, !dbg !1129
  %cmp321 = icmp sle i32 %171, 4, !dbg !1131
  br i1 %cmp321, label %if.then323, label %if.end339, !dbg !1132

if.then323:                                       ; preds = %if.then311
  br label %do.body324, !dbg !1133

do.body324:                                       ; preds = %if.then323
  %172 = load i32, i32* %v1, align 4, !dbg !1135
  %sub325 = sub nsw i32 %172, 1, !dbg !1135
  %shl326 = shl i32 %sub325, 2, !dbg !1135
  %173 = load i32, i32* %len312, align 4, !dbg !1135
  %sub327 = sub nsw i32 %173, 1, !dbg !1135
  %or328 = or i32 %shl326, %sub327, !dbg !1135
  %or329 = or i32 %or328, 128, !dbg !1135
  %conv330 = trunc i32 %or329 to i8, !dbg !1135
  %174 = load i8*, i8** %p, align 8, !dbg !1135
  %add.ptr331 = getelementptr inbounds i8, i8* %174, i64 1, !dbg !1135
  store i8 %conv330, i8* %add.ptr331, align 1, !dbg !1135
  br label %do.end332, !dbg !1135

do.end332:                                        ; preds = %do.body324
  %175 = load i8*, i8** %p, align 8, !dbg !1137
  %176 = load i8*, i8** %p, align 8, !dbg !1138
  %add.ptr333 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1139
  %177 = load i8*, i8** %end, align 8, !dbg !1140
  %178 = load i8*, i8** %p, align 8, !dbg !1141
  %sub.ptr.lhs.cast334 = ptrtoint i8* %177 to i64, !dbg !1142
  %sub.ptr.rhs.cast335 = ptrtoint i8* %178 to i64, !dbg !1142
  %sub.ptr.sub336 = sub i64 %sub.ptr.lhs.cast334, %sub.ptr.rhs.cast335, !dbg !1142
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %175, i8* align 1 %add.ptr333, i64 %sub.ptr.sub336, i1 false), !dbg !1143
  %179 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1144
  %ptr337 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %179, i32 0, i32 2, !dbg !1145
  %180 = load i8*, i8** %ptr337, align 8, !dbg !1145
  call void @sdsIncrLen(i8* %180, i64 -1), !dbg !1146
  %181 = load i8*, i8** %end, align 8, !dbg !1147
  %incdec.ptr338 = getelementptr inbounds i8, i8* %181, i32 -1, !dbg !1147
  store i8* %incdec.ptr338, i8** %end, align 8, !dbg !1147
  br label %while.cond271, !dbg !1148, !llvm.loop !1095

if.end339:                                        ; preds = %if.then311
  br label %if.end340, !dbg !1149

if.end340:                                        ; preds = %if.end339, %if.then299
  br label %if.end341, !dbg !1150

if.end341:                                        ; preds = %if.end340, %land.lhs.true294, %if.end290
  %182 = load i8*, i8** %p, align 8, !dbg !1151
  %incdec.ptr342 = getelementptr inbounds i8, i8* %182, i32 1, !dbg !1151
  store i8* %incdec.ptr342, i8** %p, align 8, !dbg !1151
  br label %while.cond271, !dbg !1081, !llvm.loop !1095

while.end343:                                     ; preds = %land.end
  %183 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1152
  %ptr344 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %183, i32 0, i32 2, !dbg !1153
  %184 = load i8*, i8** %ptr344, align 8, !dbg !1153
  %185 = bitcast i8* %184 to %struct.hllhdr*, !dbg !1152
  store %struct.hllhdr* %185, %struct.hllhdr** %hdr, align 8, !dbg !1154
  %186 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1155
  %card = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %186, i32 0, i32 3, !dbg !1155
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %card, i64 0, i64 7, !dbg !1155
  %187 = load i8, i8* %arrayidx, align 1, !dbg !1155
  %conv345 = zext i8 %187 to i32, !dbg !1155
  %or346 = or i32 %conv345, 128, !dbg !1155
  %conv347 = trunc i32 %or346 to i8, !dbg !1155
  store i8 %conv347, i8* %arrayidx, align 1, !dbg !1155
  store i32 1, i32* %retval, align 4, !dbg !1156
  br label %return, !dbg !1156

promote:                                          ; preds = %if.then249, %if.then
  call void @llvm.dbg.label(metadata !1157), !dbg !1158
  %188 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1159
  %call348 = call i32 @hllSparseToDense(%struct.redisObject* %188), !dbg !1161
  %cmp349 = icmp eq i32 %call348, -1, !dbg !1162
  br i1 %cmp349, label %if.then351, label %if.end352, !dbg !1163

if.then351:                                       ; preds = %promote
  store i32 -1, i32* %retval, align 4, !dbg !1164
  br label %return, !dbg !1164

if.end352:                                        ; preds = %promote
  %189 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1165
  %ptr353 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %189, i32 0, i32 2, !dbg !1166
  %190 = load i8*, i8** %ptr353, align 8, !dbg !1166
  %191 = bitcast i8* %190 to %struct.hllhdr*, !dbg !1165
  store %struct.hllhdr* %191, %struct.hllhdr** %hdr, align 8, !dbg !1167
  call void @llvm.dbg.declare(metadata i32* %dense_retval, metadata !1168, metadata !DIExpression()), !dbg !1169
  %192 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1170
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %192, i32 0, i32 4, !dbg !1171
  %arraydecay354 = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !1170
  %193 = load i64, i64* %index.addr, align 8, !dbg !1172
  %194 = load i8, i8* %count.addr, align 1, !dbg !1173
  %call355 = call i32 @hllDenseSet(i8* %arraydecay354, i64 %193, i8 zeroext %194), !dbg !1174
  store i32 %call355, i32* %dense_retval, align 4, !dbg !1169
  %195 = load i32, i32* %dense_retval, align 4, !dbg !1175
  %cmp356 = icmp eq i32 %195, 1, !dbg !1175
  br i1 %cmp356, label %cond.true358, label %cond.false359, !dbg !1175

cond.true358:                                     ; preds = %if.end352
  br label %cond.end360, !dbg !1175

cond.false359:                                    ; preds = %if.end352
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 894), !dbg !1175
  unreachable, !dbg !1175

unreachable.cont:                                 ; No predecessors!
  br label %cond.end360, !dbg !1175

cond.end360:                                      ; preds = %unreachable.cont, %cond.true358
  %196 = load i32, i32* %dense_retval, align 4, !dbg !1176
  store i32 %196, i32* %retval, align 4, !dbg !1177
  br label %return, !dbg !1177

return:                                           ; preds = %cond.end360, %if.then351, %while.end343, %if.then96, %if.then44
  %197 = load i32, i32* %retval, align 4, !dbg !1178
  ret i32 %197, !dbg !1178
}

declare dso_local i8* @sdsMakeRoomFor(i8*, i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

declare dso_local void @sdsIncrLen(i8*, i64) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllSparseAdd(%struct.redisObject* %o, i8* %ele, i64 %elesize) #0 !dbg !1179 {
entry:
  %o.addr = alloca %struct.redisObject*, align 8
  %ele.addr = alloca i8*, align 8
  %elesize.addr = alloca i64, align 8
  %index = alloca i64, align 8
  %count = alloca i8, align 1
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  store i64 %elesize, i64* %elesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %elesize.addr, metadata !1186, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.declare(metadata i64* %index, metadata !1188, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.declare(metadata i8* %count, metadata !1190, metadata !DIExpression()), !dbg !1191
  %0 = load i8*, i8** %ele.addr, align 8, !dbg !1192
  %1 = load i64, i64* %elesize.addr, align 8, !dbg !1193
  %call = call i32 @hllPatLen(i8* %0, i64 %1, i64* %index), !dbg !1194
  %conv = trunc i32 %call to i8, !dbg !1194
  store i8 %conv, i8* %count, align 1, !dbg !1191
  %2 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1195
  %3 = load i64, i64* %index, align 8, !dbg !1196
  %4 = load i8, i8* %count, align 1, !dbg !1197
  %call1 = call i32 @hllSparseSet(%struct.redisObject* %2, i64 %3, i8 zeroext %4), !dbg !1198
  ret i32 %call1, !dbg !1199
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hllSparseRegHisto(i8* %sparse, i32 %sparselen, i32* %invalid, i32* %reghisto) #0 !dbg !1200 {
entry:
  %sparse.addr = alloca i8*, align 8
  %sparselen.addr = alloca i32, align 4
  %invalid.addr = alloca i32*, align 8
  %reghisto.addr = alloca i32*, align 8
  %idx = alloca i32, align 4
  %runlen = alloca i32, align 4
  %regval = alloca i32, align 4
  %end = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %sparse, i8** %sparse.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %sparse.addr, metadata !1203, metadata !DIExpression()), !dbg !1204
  store i32 %sparselen, i32* %sparselen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sparselen.addr, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i32* %invalid, i32** %invalid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %invalid.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i32* %reghisto, i32** %reghisto.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reghisto.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 0, i32* %idx, align 4, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %runlen, metadata !1213, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata i8** %end, metadata !1217, metadata !DIExpression()), !dbg !1218
  %0 = load i8*, i8** %sparse.addr, align 8, !dbg !1219
  %1 = load i32, i32* %sparselen.addr, align 4, !dbg !1220
  %idx.ext = sext i32 %1 to i64, !dbg !1221
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext, !dbg !1221
  store i8* %add.ptr, i8** %end, align 8, !dbg !1218
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1222, metadata !DIExpression()), !dbg !1223
  %2 = load i8*, i8** %sparse.addr, align 8, !dbg !1224
  store i8* %2, i8** %p, align 8, !dbg !1223
  br label %while.cond, !dbg !1225

while.cond:                                       ; preds = %if.end32, %entry
  %3 = load i8*, i8** %p, align 8, !dbg !1226
  %4 = load i8*, i8** %end, align 8, !dbg !1227
  %cmp = icmp ult i8* %3, %4, !dbg !1228
  br i1 %cmp, label %while.body, label %while.end, !dbg !1225

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8, !dbg !1229
  %6 = load i8, i8* %5, align 1, !dbg !1229
  %conv = zext i8 %6 to i32, !dbg !1229
  %and = and i32 %conv, 192, !dbg !1229
  %cmp1 = icmp eq i32 %and, 0, !dbg !1229
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1232

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %p, align 8, !dbg !1233
  %8 = load i8, i8* %7, align 1, !dbg !1233
  %conv3 = zext i8 %8 to i32, !dbg !1233
  %and4 = and i32 %conv3, 63, !dbg !1233
  %add = add nsw i32 %and4, 1, !dbg !1233
  store i32 %add, i32* %runlen, align 4, !dbg !1235
  %9 = load i32, i32* %runlen, align 4, !dbg !1236
  %10 = load i32, i32* %idx, align 4, !dbg !1237
  %add5 = add nsw i32 %10, %9, !dbg !1237
  store i32 %add5, i32* %idx, align 4, !dbg !1237
  %11 = load i32, i32* %runlen, align 4, !dbg !1238
  %12 = load i32*, i32** %reghisto.addr, align 8, !dbg !1239
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 0, !dbg !1239
  %13 = load i32, i32* %arrayidx, align 4, !dbg !1240
  %add6 = add nsw i32 %13, %11, !dbg !1240
  store i32 %add6, i32* %arrayidx, align 4, !dbg !1240
  %14 = load i8*, i8** %p, align 8, !dbg !1241
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1241
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1241
  br label %if.end32, !dbg !1242

if.else:                                          ; preds = %while.body
  %15 = load i8*, i8** %p, align 8, !dbg !1243
  %16 = load i8, i8* %15, align 1, !dbg !1243
  %conv7 = zext i8 %16 to i32, !dbg !1243
  %and8 = and i32 %conv7, 192, !dbg !1243
  %cmp9 = icmp eq i32 %and8, 64, !dbg !1243
  br i1 %cmp9, label %if.then11, label %if.else21, !dbg !1245

if.then11:                                        ; preds = %if.else
  %17 = load i8*, i8** %p, align 8, !dbg !1246
  %18 = load i8, i8* %17, align 1, !dbg !1246
  %conv12 = zext i8 %18 to i32, !dbg !1246
  %and13 = and i32 %conv12, 63, !dbg !1246
  %shl = shl i32 %and13, 8, !dbg !1246
  %19 = load i8*, i8** %p, align 8, !dbg !1246
  %add.ptr14 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1246
  %20 = load i8, i8* %add.ptr14, align 1, !dbg !1246
  %conv15 = zext i8 %20 to i32, !dbg !1246
  %or = or i32 %shl, %conv15, !dbg !1246
  %add16 = add nsw i32 %or, 1, !dbg !1246
  store i32 %add16, i32* %runlen, align 4, !dbg !1248
  %21 = load i32, i32* %runlen, align 4, !dbg !1249
  %22 = load i32, i32* %idx, align 4, !dbg !1250
  %add17 = add nsw i32 %22, %21, !dbg !1250
  store i32 %add17, i32* %idx, align 4, !dbg !1250
  %23 = load i32, i32* %runlen, align 4, !dbg !1251
  %24 = load i32*, i32** %reghisto.addr, align 8, !dbg !1252
  %arrayidx18 = getelementptr inbounds i32, i32* %24, i64 0, !dbg !1252
  %25 = load i32, i32* %arrayidx18, align 4, !dbg !1253
  %add19 = add nsw i32 %25, %23, !dbg !1253
  store i32 %add19, i32* %arrayidx18, align 4, !dbg !1253
  %26 = load i8*, i8** %p, align 8, !dbg !1254
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !1254
  store i8* %add.ptr20, i8** %p, align 8, !dbg !1254
  br label %if.end, !dbg !1255

if.else21:                                        ; preds = %if.else
  %27 = load i8*, i8** %p, align 8, !dbg !1256
  %28 = load i8, i8* %27, align 1, !dbg !1256
  %conv22 = zext i8 %28 to i32, !dbg !1256
  %and23 = and i32 %conv22, 3, !dbg !1256
  %add24 = add nsw i32 %and23, 1, !dbg !1256
  store i32 %add24, i32* %runlen, align 4, !dbg !1258
  %29 = load i8*, i8** %p, align 8, !dbg !1259
  %30 = load i8, i8* %29, align 1, !dbg !1259
  %conv25 = zext i8 %30 to i32, !dbg !1259
  %shr = ashr i32 %conv25, 2, !dbg !1259
  %and26 = and i32 %shr, 31, !dbg !1259
  %add27 = add nsw i32 %and26, 1, !dbg !1259
  store i32 %add27, i32* %regval, align 4, !dbg !1260
  %31 = load i32, i32* %runlen, align 4, !dbg !1261
  %32 = load i32, i32* %idx, align 4, !dbg !1262
  %add28 = add nsw i32 %32, %31, !dbg !1262
  store i32 %add28, i32* %idx, align 4, !dbg !1262
  %33 = load i32, i32* %runlen, align 4, !dbg !1263
  %34 = load i32*, i32** %reghisto.addr, align 8, !dbg !1264
  %35 = load i32, i32* %regval, align 4, !dbg !1265
  %idxprom = sext i32 %35 to i64, !dbg !1264
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 %idxprom, !dbg !1264
  %36 = load i32, i32* %arrayidx29, align 4, !dbg !1266
  %add30 = add nsw i32 %36, %33, !dbg !1266
  store i32 %add30, i32* %arrayidx29, align 4, !dbg !1266
  %37 = load i8*, i8** %p, align 8, !dbg !1267
  %incdec.ptr31 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !1267
  store i8* %incdec.ptr31, i8** %p, align 8, !dbg !1267
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then11
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  br label %while.cond, !dbg !1225, !llvm.loop !1268

while.end:                                        ; preds = %while.cond
  %38 = load i32, i32* %idx, align 4, !dbg !1270
  %cmp33 = icmp ne i32 %38, 16384, !dbg !1272
  br i1 %cmp33, label %land.lhs.true, label %if.end36, !dbg !1273

land.lhs.true:                                    ; preds = %while.end
  %39 = load i32*, i32** %invalid.addr, align 8, !dbg !1274
  %tobool = icmp ne i32* %39, null, !dbg !1274
  br i1 %tobool, label %if.then35, label %if.end36, !dbg !1275

if.then35:                                        ; preds = %land.lhs.true
  %40 = load i32*, i32** %invalid.addr, align 8, !dbg !1276
  store i32 1, i32* %40, align 4, !dbg !1277
  br label %if.end36, !dbg !1278

if.end36:                                         ; preds = %if.then35, %land.lhs.true, %while.end
  ret void, !dbg !1279
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hllRawRegHisto(i8* %registers, i32* %reghisto) #0 !dbg !1280 {
entry:
  %registers.addr = alloca i8*, align 8
  %reghisto.addr = alloca i32*, align 8
  %word = alloca i64*, align 8
  %bytes = alloca i8*, align 8
  %j = alloca i32, align 4
  store i8* %registers, i8** %registers.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %registers.addr, metadata !1281, metadata !DIExpression()), !dbg !1282
  store i32* %reghisto, i32** %reghisto.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %reghisto.addr, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata i64** %word, metadata !1285, metadata !DIExpression()), !dbg !1286
  %0 = load i8*, i8** %registers.addr, align 8, !dbg !1287
  %1 = bitcast i8* %0 to i64*, !dbg !1288
  store i64* %1, i64** %word, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %bytes, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i32 0, i32* %j, align 4, !dbg !1293
  br label %for.cond, !dbg !1295

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4, !dbg !1296
  %cmp = icmp slt i32 %2, 2048, !dbg !1298
  br i1 %cmp, label %for.body, label %for.end, !dbg !1299

for.body:                                         ; preds = %for.cond
  %3 = load i64*, i64** %word, align 8, !dbg !1300
  %4 = load i64, i64* %3, align 8, !dbg !1303
  %cmp1 = icmp eq i64 %4, 0, !dbg !1304
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1305

if.then:                                          ; preds = %for.body
  %5 = load i32*, i32** %reghisto.addr, align 8, !dbg !1306
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 0, !dbg !1306
  %6 = load i32, i32* %arrayidx, align 4, !dbg !1308
  %add = add nsw i32 %6, 8, !dbg !1308
  store i32 %add, i32* %arrayidx, align 4, !dbg !1308
  br label %if.end, !dbg !1309

if.else:                                          ; preds = %for.body
  %7 = load i64*, i64** %word, align 8, !dbg !1310
  %8 = bitcast i64* %7 to i8*, !dbg !1312
  store i8* %8, i8** %bytes, align 8, !dbg !1313
  %9 = load i32*, i32** %reghisto.addr, align 8, !dbg !1314
  %10 = load i8*, i8** %bytes, align 8, !dbg !1315
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1315
  %11 = load i8, i8* %arrayidx2, align 1, !dbg !1315
  %idxprom = zext i8 %11 to i64, !dbg !1314
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom, !dbg !1314
  %12 = load i32, i32* %arrayidx3, align 4, !dbg !1316
  %inc = add nsw i32 %12, 1, !dbg !1316
  store i32 %inc, i32* %arrayidx3, align 4, !dbg !1316
  %13 = load i32*, i32** %reghisto.addr, align 8, !dbg !1317
  %14 = load i8*, i8** %bytes, align 8, !dbg !1318
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1318
  %15 = load i8, i8* %arrayidx4, align 1, !dbg !1318
  %idxprom5 = zext i8 %15 to i64, !dbg !1317
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5, !dbg !1317
  %16 = load i32, i32* %arrayidx6, align 4, !dbg !1319
  %inc7 = add nsw i32 %16, 1, !dbg !1319
  store i32 %inc7, i32* %arrayidx6, align 4, !dbg !1319
  %17 = load i32*, i32** %reghisto.addr, align 8, !dbg !1320
  %18 = load i8*, i8** %bytes, align 8, !dbg !1321
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1321
  %19 = load i8, i8* %arrayidx8, align 1, !dbg !1321
  %idxprom9 = zext i8 %19 to i64, !dbg !1320
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9, !dbg !1320
  %20 = load i32, i32* %arrayidx10, align 4, !dbg !1322
  %inc11 = add nsw i32 %20, 1, !dbg !1322
  store i32 %inc11, i32* %arrayidx10, align 4, !dbg !1322
  %21 = load i32*, i32** %reghisto.addr, align 8, !dbg !1323
  %22 = load i8*, i8** %bytes, align 8, !dbg !1324
  %arrayidx12 = getelementptr inbounds i8, i8* %22, i64 3, !dbg !1324
  %23 = load i8, i8* %arrayidx12, align 1, !dbg !1324
  %idxprom13 = zext i8 %23 to i64, !dbg !1323
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13, !dbg !1323
  %24 = load i32, i32* %arrayidx14, align 4, !dbg !1325
  %inc15 = add nsw i32 %24, 1, !dbg !1325
  store i32 %inc15, i32* %arrayidx14, align 4, !dbg !1325
  %25 = load i32*, i32** %reghisto.addr, align 8, !dbg !1326
  %26 = load i8*, i8** %bytes, align 8, !dbg !1327
  %arrayidx16 = getelementptr inbounds i8, i8* %26, i64 4, !dbg !1327
  %27 = load i8, i8* %arrayidx16, align 1, !dbg !1327
  %idxprom17 = zext i8 %27 to i64, !dbg !1326
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %idxprom17, !dbg !1326
  %28 = load i32, i32* %arrayidx18, align 4, !dbg !1328
  %inc19 = add nsw i32 %28, 1, !dbg !1328
  store i32 %inc19, i32* %arrayidx18, align 4, !dbg !1328
  %29 = load i32*, i32** %reghisto.addr, align 8, !dbg !1329
  %30 = load i8*, i8** %bytes, align 8, !dbg !1330
  %arrayidx20 = getelementptr inbounds i8, i8* %30, i64 5, !dbg !1330
  %31 = load i8, i8* %arrayidx20, align 1, !dbg !1330
  %idxprom21 = zext i8 %31 to i64, !dbg !1329
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 %idxprom21, !dbg !1329
  %32 = load i32, i32* %arrayidx22, align 4, !dbg !1331
  %inc23 = add nsw i32 %32, 1, !dbg !1331
  store i32 %inc23, i32* %arrayidx22, align 4, !dbg !1331
  %33 = load i32*, i32** %reghisto.addr, align 8, !dbg !1332
  %34 = load i8*, i8** %bytes, align 8, !dbg !1333
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 6, !dbg !1333
  %35 = load i8, i8* %arrayidx24, align 1, !dbg !1333
  %idxprom25 = zext i8 %35 to i64, !dbg !1332
  %arrayidx26 = getelementptr inbounds i32, i32* %33, i64 %idxprom25, !dbg !1332
  %36 = load i32, i32* %arrayidx26, align 4, !dbg !1334
  %inc27 = add nsw i32 %36, 1, !dbg !1334
  store i32 %inc27, i32* %arrayidx26, align 4, !dbg !1334
  %37 = load i32*, i32** %reghisto.addr, align 8, !dbg !1335
  %38 = load i8*, i8** %bytes, align 8, !dbg !1336
  %arrayidx28 = getelementptr inbounds i8, i8* %38, i64 7, !dbg !1336
  %39 = load i8, i8* %arrayidx28, align 1, !dbg !1336
  %idxprom29 = zext i8 %39 to i64, !dbg !1335
  %arrayidx30 = getelementptr inbounds i32, i32* %37, i64 %idxprom29, !dbg !1335
  %40 = load i32, i32* %arrayidx30, align 4, !dbg !1337
  %inc31 = add nsw i32 %40, 1, !dbg !1337
  store i32 %inc31, i32* %arrayidx30, align 4, !dbg !1337
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %41 = load i64*, i64** %word, align 8, !dbg !1338
  %incdec.ptr = getelementptr inbounds i64, i64* %41, i32 1, !dbg !1338
  store i64* %incdec.ptr, i64** %word, align 8, !dbg !1338
  br label %for.inc, !dbg !1339

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %j, align 4, !dbg !1340
  %inc32 = add nsw i32 %42, 1, !dbg !1340
  store i32 %inc32, i32* %j, align 4, !dbg !1340
  br label %for.cond, !dbg !1341, !llvm.loop !1342

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1344
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hllSigma(double %x) #0 !dbg !1345 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %zPrime = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !1348, metadata !DIExpression()), !dbg !1349
  %0 = load double, double* %x.addr, align 8, !dbg !1350
  %cmp = fcmp oeq double %0, 1.000000e+00, !dbg !1352
  br i1 %cmp, label %if.then, label %if.end, !dbg !1353

if.then:                                          ; preds = %entry
  store double 0x7FF0000000000000, double* %retval, align 8, !dbg !1354
  br label %return, !dbg !1354

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %zPrime, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata double* %y, metadata !1357, metadata !DIExpression()), !dbg !1358
  store double 1.000000e+00, double* %y, align 8, !dbg !1358
  call void @llvm.dbg.declare(metadata double* %z, metadata !1359, metadata !DIExpression()), !dbg !1360
  %1 = load double, double* %x.addr, align 8, !dbg !1361
  store double %1, double* %z, align 8, !dbg !1360
  br label %do.body, !dbg !1362

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load double, double* %x.addr, align 8, !dbg !1363
  %3 = load double, double* %x.addr, align 8, !dbg !1365
  %mul = fmul double %3, %2, !dbg !1365
  store double %mul, double* %x.addr, align 8, !dbg !1365
  %4 = load double, double* %z, align 8, !dbg !1366
  store double %4, double* %zPrime, align 8, !dbg !1367
  %5 = load double, double* %x.addr, align 8, !dbg !1368
  %6 = load double, double* %y, align 8, !dbg !1369
  %mul1 = fmul double %5, %6, !dbg !1370
  %7 = load double, double* %z, align 8, !dbg !1371
  %add = fadd double %7, %mul1, !dbg !1371
  store double %add, double* %z, align 8, !dbg !1371
  %8 = load double, double* %y, align 8, !dbg !1372
  %9 = load double, double* %y, align 8, !dbg !1373
  %add2 = fadd double %9, %8, !dbg !1373
  store double %add2, double* %y, align 8, !dbg !1373
  br label %do.cond, !dbg !1374

do.cond:                                          ; preds = %do.body
  %10 = load double, double* %zPrime, align 8, !dbg !1375
  %11 = load double, double* %z, align 8, !dbg !1376
  %cmp3 = fcmp une double %10, %11, !dbg !1377
  br i1 %cmp3, label %do.body, label %do.end, !dbg !1374, !llvm.loop !1378

do.end:                                           ; preds = %do.cond
  %12 = load double, double* %z, align 8, !dbg !1380
  store double %12, double* %retval, align 8, !dbg !1381
  br label %return, !dbg !1381

return:                                           ; preds = %do.end, %if.then
  %13 = load double, double* %retval, align 8, !dbg !1382
  ret double %13, !dbg !1382
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hllTau(double %x) #0 !dbg !1383 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %zPrime = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  %0 = load double, double* %x.addr, align 8, !dbg !1386
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !1388
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1389

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !dbg !1390
  %cmp1 = fcmp oeq double %1, 1.000000e+00, !dbg !1391
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1392

if.then:                                          ; preds = %lor.lhs.false, %entry
  store double 0.000000e+00, double* %retval, align 8, !dbg !1393
  br label %return, !dbg !1393

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata double* %zPrime, metadata !1394, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.declare(metadata double* %y, metadata !1396, metadata !DIExpression()), !dbg !1397
  store double 1.000000e+00, double* %y, align 8, !dbg !1397
  call void @llvm.dbg.declare(metadata double* %z, metadata !1398, metadata !DIExpression()), !dbg !1399
  %2 = load double, double* %x.addr, align 8, !dbg !1400
  %sub = fsub double 1.000000e+00, %2, !dbg !1401
  store double %sub, double* %z, align 8, !dbg !1399
  br label %do.body, !dbg !1402

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load double, double* %x.addr, align 8, !dbg !1403
  %call = call double @sqrt(double %3) #7, !dbg !1405
  store double %call, double* %x.addr, align 8, !dbg !1406
  %4 = load double, double* %z, align 8, !dbg !1407
  store double %4, double* %zPrime, align 8, !dbg !1408
  %5 = load double, double* %y, align 8, !dbg !1409
  %mul = fmul double %5, 5.000000e-01, !dbg !1409
  store double %mul, double* %y, align 8, !dbg !1409
  %6 = load double, double* %x.addr, align 8, !dbg !1410
  %sub2 = fsub double 1.000000e+00, %6, !dbg !1411
  %call3 = call double @pow(double %sub2, double 2.000000e+00) #7, !dbg !1412
  %7 = load double, double* %y, align 8, !dbg !1413
  %mul4 = fmul double %call3, %7, !dbg !1414
  %8 = load double, double* %z, align 8, !dbg !1415
  %sub5 = fsub double %8, %mul4, !dbg !1415
  store double %sub5, double* %z, align 8, !dbg !1415
  br label %do.cond, !dbg !1416

do.cond:                                          ; preds = %do.body
  %9 = load double, double* %zPrime, align 8, !dbg !1417
  %10 = load double, double* %z, align 8, !dbg !1418
  %cmp6 = fcmp une double %9, %10, !dbg !1419
  br i1 %cmp6, label %do.body, label %do.end, !dbg !1416, !llvm.loop !1420

do.end:                                           ; preds = %do.cond
  %11 = load double, double* %z, align 8, !dbg !1422
  %div = fdiv double %11, 3.000000e+00, !dbg !1423
  store double %div, double* %retval, align 8, !dbg !1424
  br label %return, !dbg !1424

return:                                           ; preds = %do.end, %if.then
  %12 = load double, double* %retval, align 8, !dbg !1425
  ret double %12, !dbg !1425
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @hllCount(%struct.hllhdr* %hdr, i32* %invalid) #0 !dbg !1426 {
entry:
  %hdr.addr = alloca %struct.hllhdr*, align 8
  %invalid.addr = alloca i32*, align 8
  %m = alloca double, align 8
  %E = alloca double, align 8
  %j = alloca i32, align 4
  %reghisto = alloca [64 x i32], align 16
  %z = alloca double, align 8
  store %struct.hllhdr* %hdr, %struct.hllhdr** %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i32* %invalid, i32** %invalid.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %invalid.addr, metadata !1431, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.declare(metadata double* %m, metadata !1433, metadata !DIExpression()), !dbg !1434
  store double 1.638400e+04, double* %m, align 8, !dbg !1434
  call void @llvm.dbg.declare(metadata double* %E, metadata !1435, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.declare(metadata [64 x i32]* %reghisto, metadata !1439, metadata !DIExpression()), !dbg !1443
  %0 = bitcast [64 x i32]* %reghisto to i8*, !dbg !1443
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 256, i1 false), !dbg !1443
  %1 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1444
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %1, i32 0, i32 1, !dbg !1446
  %2 = load i8, i8* %encoding, align 1, !dbg !1446
  %conv = zext i8 %2 to i32, !dbg !1444
  %cmp = icmp eq i32 %conv, 0, !dbg !1447
  br i1 %cmp, label %if.then, label %if.else, !dbg !1448

if.then:                                          ; preds = %entry
  %3 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1449
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %3, i32 0, i32 4, !dbg !1451
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !1449
  %arraydecay2 = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 0, !dbg !1452
  call void @hllDenseRegHisto(i8* %arraydecay, i32* %arraydecay2), !dbg !1453
  br label %if.end23, !dbg !1454

if.else:                                          ; preds = %entry
  %4 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1455
  %encoding3 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %4, i32 0, i32 1, !dbg !1457
  %5 = load i8, i8* %encoding3, align 1, !dbg !1457
  %conv4 = zext i8 %5 to i32, !dbg !1455
  %cmp5 = icmp eq i32 %conv4, 1, !dbg !1458
  br i1 %cmp5, label %if.then7, label %if.else12, !dbg !1459

if.then7:                                         ; preds = %if.else
  %6 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1460
  %registers8 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i32 0, i32 4, !dbg !1462
  %arraydecay9 = getelementptr inbounds [0 x i8], [0 x i8]* %registers8, i64 0, i64 0, !dbg !1460
  %7 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1463
  %8 = bitcast %struct.hllhdr* %7 to i8*, !dbg !1464
  %call = call i64 @sdslen(i8* %8), !dbg !1465
  %sub = sub i64 %call, 16, !dbg !1466
  %conv10 = trunc i64 %sub to i32, !dbg !1465
  %9 = load i32*, i32** %invalid.addr, align 8, !dbg !1467
  %arraydecay11 = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 0, !dbg !1468
  call void @hllSparseRegHisto(i8* %arraydecay9, i32 %conv10, i32* %9, i32* %arraydecay11), !dbg !1469
  br label %if.end22, !dbg !1470

if.else12:                                        ; preds = %if.else
  %10 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1471
  %encoding13 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %10, i32 0, i32 1, !dbg !1473
  %11 = load i8, i8* %encoding13, align 1, !dbg !1473
  %conv14 = zext i8 %11 to i32, !dbg !1471
  %cmp15 = icmp eq i32 %conv14, 255, !dbg !1474
  br i1 %cmp15, label %if.then17, label %if.else21, !dbg !1475

if.then17:                                        ; preds = %if.else12
  %12 = load %struct.hllhdr*, %struct.hllhdr** %hdr.addr, align 8, !dbg !1476
  %registers18 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %12, i32 0, i32 4, !dbg !1478
  %arraydecay19 = getelementptr inbounds [0 x i8], [0 x i8]* %registers18, i64 0, i64 0, !dbg !1476
  %arraydecay20 = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 0, !dbg !1479
  call void @hllRawRegHisto(i8* %arraydecay19, i32* %arraydecay20), !dbg !1480
  br label %if.end, !dbg !1481

if.else21:                                        ; preds = %if.else12
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1034, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)), !dbg !1482
  unreachable, !dbg !1482

if.end:                                           ; preds = %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then7
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then
  call void @llvm.dbg.declare(metadata double* %z, metadata !1484, metadata !DIExpression()), !dbg !1485
  %13 = load double, double* %m, align 8, !dbg !1486
  %14 = load double, double* %m, align 8, !dbg !1487
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 51, !dbg !1488
  %15 = load i32, i32* %arrayidx, align 4, !dbg !1488
  %conv24 = sitofp i32 %15 to double, !dbg !1488
  %sub25 = fsub double %14, %conv24, !dbg !1489
  %16 = load double, double* %m, align 8, !dbg !1490
  %div = fdiv double %sub25, %16, !dbg !1491
  %call26 = call double @hllTau(double %div), !dbg !1492
  %mul = fmul double %13, %call26, !dbg !1493
  store double %mul, double* %z, align 8, !dbg !1485
  store i32 50, i32* %j, align 4, !dbg !1494
  br label %for.cond, !dbg !1496

for.cond:                                         ; preds = %for.inc, %if.end23
  %17 = load i32, i32* %j, align 4, !dbg !1497
  %cmp27 = icmp sge i32 %17, 1, !dbg !1499
  br i1 %cmp27, label %for.body, label %for.end, !dbg !1500

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %j, align 4, !dbg !1501
  %idxprom = sext i32 %18 to i64, !dbg !1503
  %arrayidx29 = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 %idxprom, !dbg !1503
  %19 = load i32, i32* %arrayidx29, align 4, !dbg !1503
  %conv30 = sitofp i32 %19 to double, !dbg !1503
  %20 = load double, double* %z, align 8, !dbg !1504
  %add = fadd double %20, %conv30, !dbg !1504
  store double %add, double* %z, align 8, !dbg !1504
  %21 = load double, double* %z, align 8, !dbg !1505
  %mul31 = fmul double %21, 5.000000e-01, !dbg !1505
  store double %mul31, double* %z, align 8, !dbg !1505
  br label %for.inc, !dbg !1506

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %j, align 4, !dbg !1507
  %dec = add nsw i32 %22, -1, !dbg !1507
  store i32 %dec, i32* %j, align 4, !dbg !1507
  br label %for.cond, !dbg !1508, !llvm.loop !1509

for.end:                                          ; preds = %for.cond
  %23 = load double, double* %m, align 8, !dbg !1511
  %arrayidx32 = getelementptr inbounds [64 x i32], [64 x i32]* %reghisto, i64 0, i64 0, !dbg !1512
  %24 = load i32, i32* %arrayidx32, align 16, !dbg !1512
  %conv33 = sitofp i32 %24 to double, !dbg !1512
  %25 = load double, double* %m, align 8, !dbg !1513
  %div34 = fdiv double %conv33, %25, !dbg !1514
  %call35 = call double @hllSigma(double %div34), !dbg !1515
  %mul36 = fmul double %23, %call35, !dbg !1516
  %26 = load double, double* %z, align 8, !dbg !1517
  %add37 = fadd double %26, %mul36, !dbg !1517
  store double %add37, double* %z, align 8, !dbg !1517
  %27 = load double, double* %m, align 8, !dbg !1518
  %mul38 = fmul double 0x3FE71547652B82FE, %27, !dbg !1519
  %28 = load double, double* %m, align 8, !dbg !1520
  %mul39 = fmul double %mul38, %28, !dbg !1521
  %29 = load double, double* %z, align 8, !dbg !1522
  %div40 = fdiv double %mul39, %29, !dbg !1523
  %conv41 = fpext double %div40 to x86_fp80, !dbg !1524
  %call42 = call i64 @llroundl(x86_fp80 %conv41) #7, !dbg !1525
  %conv43 = sitofp i64 %call42 to double, !dbg !1525
  store double %conv43, double* %E, align 8, !dbg !1526
  %30 = load double, double* %E, align 8, !dbg !1527
  %conv44 = fptoui double %30 to i64, !dbg !1528
  ret i64 %conv44, !dbg !1529
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local void @_serverPanic(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @llroundl(x86_fp80) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllAdd(%struct.redisObject* %o, i8* %ele, i64 %elesize) #0 !dbg !1530 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct.redisObject*, align 8
  %ele.addr = alloca i8*, align 8
  %elesize.addr = alloca i64, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !1531, metadata !DIExpression()), !dbg !1532
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i64 %elesize, i64* %elesize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %elesize.addr, metadata !1535, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !1537, metadata !DIExpression()), !dbg !1538
  %0 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1539
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i32 0, i32 2, !dbg !1540
  %1 = load i8*, i8** %ptr, align 8, !dbg !1540
  %2 = bitcast i8* %1 to %struct.hllhdr*, !dbg !1539
  store %struct.hllhdr* %2, %struct.hllhdr** %hdr, align 8, !dbg !1538
  %3 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1541
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %3, i32 0, i32 1, !dbg !1542
  %4 = load i8, i8* %encoding, align 1, !dbg !1542
  %conv = zext i8 %4 to i32, !dbg !1541
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !1543

sw.bb:                                            ; preds = %entry
  %5 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1544
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %5, i32 0, i32 4, !dbg !1546
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !1544
  %6 = load i8*, i8** %ele.addr, align 8, !dbg !1547
  %7 = load i64, i64* %elesize.addr, align 8, !dbg !1548
  %call = call i32 @hllDenseAdd(i8* %arraydecay, i8* %6, i64 %7), !dbg !1549
  store i32 %call, i32* %retval, align 4, !dbg !1550
  br label %return, !dbg !1550

sw.bb1:                                           ; preds = %entry
  %8 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1551
  %9 = load i8*, i8** %ele.addr, align 8, !dbg !1552
  %10 = load i64, i64* %elesize.addr, align 8, !dbg !1553
  %call2 = call i32 @hllSparseAdd(%struct.redisObject* %8, i8* %9, i64 %10), !dbg !1554
  store i32 %call2, i32* %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1556
  br label %return, !dbg !1556

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %11 = load i32, i32* %retval, align 4, !dbg !1557
  ret i32 %11, !dbg !1557
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hllMerge(i8* %max, %struct.redisObject* %hll) #0 !dbg !1558 {
entry:
  %retval = alloca i32, align 4
  %max.addr = alloca i8*, align 8
  %hll.addr = alloca %struct.redisObject*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %i = alloca i32, align 4
  %val = alloca i8, align 1
  %_p = alloca i8*, align 8
  %_byte = alloca i64, align 8
  %_fb = alloca i64, align 8
  %_fb8 = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %runlen = alloca i64, align 8
  %regval = alloca i64, align 8
  store i8* %max, i8** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %max.addr, metadata !1561, metadata !DIExpression()), !dbg !1562
  store %struct.redisObject* %hll, %struct.redisObject** %hll.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %hll.addr, metadata !1563, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !1565, metadata !DIExpression()), !dbg !1566
  %0 = load %struct.redisObject*, %struct.redisObject** %hll.addr, align 8, !dbg !1567
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i32 0, i32 2, !dbg !1568
  %1 = load i8*, i8** %ptr, align 8, !dbg !1568
  %2 = bitcast i8* %1 to %struct.hllhdr*, !dbg !1567
  store %struct.hllhdr* %2, %struct.hllhdr** %hdr, align 8, !dbg !1566
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1569, metadata !DIExpression()), !dbg !1570
  %3 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1571
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %3, i32 0, i32 1, !dbg !1573
  %4 = load i8, i8* %encoding, align 1, !dbg !1573
  %conv = zext i8 %4 to i32, !dbg !1571
  %cmp = icmp eq i32 %conv, 0, !dbg !1574
  br i1 %cmp, label %if.then, label %if.else, !dbg !1575

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %val, metadata !1576, metadata !DIExpression()), !dbg !1578
  store i32 0, i32* %i, align 4, !dbg !1579
  br label %for.cond, !dbg !1581

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !1582
  %cmp2 = icmp slt i32 %5, 16384, !dbg !1584
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1585

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1586

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %_p, metadata !1588, metadata !DIExpression()), !dbg !1590
  %6 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1590
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i32 0, i32 4, !dbg !1590
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !1590
  store i8* %arraydecay, i8** %_p, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %_byte, metadata !1591, metadata !DIExpression()), !dbg !1590
  %7 = load i32, i32* %i, align 4, !dbg !1590
  %mul = mul nsw i32 %7, 6, !dbg !1590
  %div = sdiv i32 %mul, 8, !dbg !1590
  %conv4 = sext i32 %div to i64, !dbg !1590
  store i64 %conv4, i64* %_byte, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %_fb, metadata !1592, metadata !DIExpression()), !dbg !1590
  %8 = load i32, i32* %i, align 4, !dbg !1590
  %mul5 = mul nsw i32 %8, 6, !dbg !1590
  %and = and i32 %mul5, 7, !dbg !1590
  %conv6 = sext i32 %and to i64, !dbg !1590
  store i64 %conv6, i64* %_fb, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %_fb8, metadata !1593, metadata !DIExpression()), !dbg !1590
  %9 = load i64, i64* %_fb, align 8, !dbg !1590
  %sub = sub i64 8, %9, !dbg !1590
  store i64 %sub, i64* %_fb8, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %b0, metadata !1594, metadata !DIExpression()), !dbg !1590
  %10 = load i8*, i8** %_p, align 8, !dbg !1590
  %11 = load i64, i64* %_byte, align 8, !dbg !1590
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !1590
  %12 = load i8, i8* %arrayidx, align 1, !dbg !1590
  %conv7 = zext i8 %12 to i64, !dbg !1590
  store i64 %conv7, i64* %b0, align 8, !dbg !1590
  call void @llvm.dbg.declare(metadata i64* %b1, metadata !1595, metadata !DIExpression()), !dbg !1590
  %13 = load i8*, i8** %_p, align 8, !dbg !1590
  %14 = load i64, i64* %_byte, align 8, !dbg !1590
  %add = add i64 %14, 1, !dbg !1590
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %add, !dbg !1590
  %15 = load i8, i8* %arrayidx8, align 1, !dbg !1590
  %conv9 = zext i8 %15 to i64, !dbg !1590
  store i64 %conv9, i64* %b1, align 8, !dbg !1590
  %16 = load i64, i64* %b0, align 8, !dbg !1590
  %17 = load i64, i64* %_fb, align 8, !dbg !1590
  %shr = lshr i64 %16, %17, !dbg !1590
  %18 = load i64, i64* %b1, align 8, !dbg !1590
  %19 = load i64, i64* %_fb8, align 8, !dbg !1590
  %shl = shl i64 %18, %19, !dbg !1590
  %or = or i64 %shr, %shl, !dbg !1590
  %and10 = and i64 %or, 63, !dbg !1590
  %conv11 = trunc i64 %and10 to i8, !dbg !1590
  store i8 %conv11, i8* %val, align 1, !dbg !1590
  br label %do.end, !dbg !1590

do.end:                                           ; preds = %do.body
  %20 = load i8, i8* %val, align 1, !dbg !1596
  %conv12 = zext i8 %20 to i32, !dbg !1596
  %21 = load i8*, i8** %max.addr, align 8, !dbg !1598
  %22 = load i32, i32* %i, align 4, !dbg !1599
  %idxprom = sext i32 %22 to i64, !dbg !1598
  %arrayidx13 = getelementptr inbounds i8, i8* %21, i64 %idxprom, !dbg !1598
  %23 = load i8, i8* %arrayidx13, align 1, !dbg !1598
  %conv14 = zext i8 %23 to i32, !dbg !1598
  %cmp15 = icmp sgt i32 %conv12, %conv14, !dbg !1600
  br i1 %cmp15, label %if.then17, label %if.end, !dbg !1601

if.then17:                                        ; preds = %do.end
  %24 = load i8, i8* %val, align 1, !dbg !1602
  %25 = load i8*, i8** %max.addr, align 8, !dbg !1603
  %26 = load i32, i32* %i, align 4, !dbg !1604
  %idxprom18 = sext i32 %26 to i64, !dbg !1603
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 %idxprom18, !dbg !1603
  store i8 %24, i8* %arrayidx19, align 1, !dbg !1605
  br label %if.end, !dbg !1603

if.end:                                           ; preds = %if.then17, %do.end
  br label %for.inc, !dbg !1606

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4, !dbg !1607
  %inc = add nsw i32 %27, 1, !dbg !1607
  store i32 %inc, i32* %i, align 4, !dbg !1607
  br label %for.cond, !dbg !1608, !llvm.loop !1609

for.end:                                          ; preds = %for.cond
  br label %if.end92, !dbg !1611

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1612, metadata !DIExpression()), !dbg !1614
  %28 = load %struct.redisObject*, %struct.redisObject** %hll.addr, align 8, !dbg !1615
  %ptr20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i32 0, i32 2, !dbg !1616
  %29 = load i8*, i8** %ptr20, align 8, !dbg !1616
  store i8* %29, i8** %p, align 8, !dbg !1614
  call void @llvm.dbg.declare(metadata i8** %end, metadata !1617, metadata !DIExpression()), !dbg !1618
  %30 = load i8*, i8** %p, align 8, !dbg !1619
  %31 = load %struct.redisObject*, %struct.redisObject** %hll.addr, align 8, !dbg !1620
  %ptr21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i32 0, i32 2, !dbg !1621
  %32 = load i8*, i8** %ptr21, align 8, !dbg !1621
  %call = call i64 @sdslen(i8* %32), !dbg !1622
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %call, !dbg !1623
  store i8* %add.ptr, i8** %end, align 8, !dbg !1618
  call void @llvm.dbg.declare(metadata i64* %runlen, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.declare(metadata i64* %regval, metadata !1626, metadata !DIExpression()), !dbg !1627
  %33 = load i8*, i8** %p, align 8, !dbg !1628
  %add.ptr22 = getelementptr inbounds i8, i8* %33, i64 16, !dbg !1628
  store i8* %add.ptr22, i8** %p, align 8, !dbg !1628
  store i32 0, i32* %i, align 4, !dbg !1629
  br label %while.cond, !dbg !1630

while.cond:                                       ; preds = %if.end86, %if.else
  %34 = load i8*, i8** %p, align 8, !dbg !1631
  %35 = load i8*, i8** %end, align 8, !dbg !1632
  %cmp23 = icmp ult i8* %34, %35, !dbg !1633
  br i1 %cmp23, label %while.body, label %while.end87, !dbg !1630

while.body:                                       ; preds = %while.cond
  %36 = load i8*, i8** %p, align 8, !dbg !1634
  %37 = load i8, i8* %36, align 1, !dbg !1634
  %conv25 = zext i8 %37 to i32, !dbg !1634
  %and26 = and i32 %conv25, 192, !dbg !1634
  %cmp27 = icmp eq i32 %and26, 0, !dbg !1634
  br i1 %cmp27, label %if.then29, label %if.else37, !dbg !1637

if.then29:                                        ; preds = %while.body
  %38 = load i8*, i8** %p, align 8, !dbg !1638
  %39 = load i8, i8* %38, align 1, !dbg !1638
  %conv30 = zext i8 %39 to i32, !dbg !1638
  %and31 = and i32 %conv30, 63, !dbg !1638
  %add32 = add nsw i32 %and31, 1, !dbg !1638
  %conv33 = sext i32 %add32 to i64, !dbg !1638
  store i64 %conv33, i64* %runlen, align 8, !dbg !1640
  %40 = load i64, i64* %runlen, align 8, !dbg !1641
  %41 = load i32, i32* %i, align 4, !dbg !1642
  %conv34 = sext i32 %41 to i64, !dbg !1642
  %add35 = add nsw i64 %conv34, %40, !dbg !1642
  %conv36 = trunc i64 %add35 to i32, !dbg !1642
  store i32 %conv36, i32* %i, align 4, !dbg !1642
  %42 = load i8*, i8** %p, align 8, !dbg !1643
  %incdec.ptr = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1643
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1643
  br label %if.end86, !dbg !1644

if.else37:                                        ; preds = %while.body
  %43 = load i8*, i8** %p, align 8, !dbg !1645
  %44 = load i8, i8* %43, align 1, !dbg !1645
  %conv38 = zext i8 %44 to i32, !dbg !1645
  %and39 = and i32 %conv38, 192, !dbg !1645
  %cmp40 = icmp eq i32 %and39, 64, !dbg !1645
  br i1 %cmp40, label %if.then42, label %if.else55, !dbg !1647

if.then42:                                        ; preds = %if.else37
  %45 = load i8*, i8** %p, align 8, !dbg !1648
  %46 = load i8, i8* %45, align 1, !dbg !1648
  %conv43 = zext i8 %46 to i32, !dbg !1648
  %and44 = and i32 %conv43, 63, !dbg !1648
  %shl45 = shl i32 %and44, 8, !dbg !1648
  %47 = load i8*, i8** %p, align 8, !dbg !1648
  %add.ptr46 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1648
  %48 = load i8, i8* %add.ptr46, align 1, !dbg !1648
  %conv47 = zext i8 %48 to i32, !dbg !1648
  %or48 = or i32 %shl45, %conv47, !dbg !1648
  %add49 = add nsw i32 %or48, 1, !dbg !1648
  %conv50 = sext i32 %add49 to i64, !dbg !1648
  store i64 %conv50, i64* %runlen, align 8, !dbg !1650
  %49 = load i64, i64* %runlen, align 8, !dbg !1651
  %50 = load i32, i32* %i, align 4, !dbg !1652
  %conv51 = sext i32 %50 to i64, !dbg !1652
  %add52 = add nsw i64 %conv51, %49, !dbg !1652
  %conv53 = trunc i64 %add52 to i32, !dbg !1652
  store i32 %conv53, i32* %i, align 4, !dbg !1652
  %51 = load i8*, i8** %p, align 8, !dbg !1653
  %add.ptr54 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !1653
  store i8* %add.ptr54, i8** %p, align 8, !dbg !1653
  br label %if.end85, !dbg !1654

if.else55:                                        ; preds = %if.else37
  %52 = load i8*, i8** %p, align 8, !dbg !1655
  %53 = load i8, i8* %52, align 1, !dbg !1655
  %conv56 = zext i8 %53 to i32, !dbg !1655
  %and57 = and i32 %conv56, 3, !dbg !1655
  %add58 = add nsw i32 %and57, 1, !dbg !1655
  %conv59 = sext i32 %add58 to i64, !dbg !1655
  store i64 %conv59, i64* %runlen, align 8, !dbg !1657
  %54 = load i8*, i8** %p, align 8, !dbg !1658
  %55 = load i8, i8* %54, align 1, !dbg !1658
  %conv60 = zext i8 %55 to i32, !dbg !1658
  %shr61 = ashr i32 %conv60, 2, !dbg !1658
  %and62 = and i32 %shr61, 31, !dbg !1658
  %add63 = add nsw i32 %and62, 1, !dbg !1658
  %conv64 = sext i32 %add63 to i64, !dbg !1658
  store i64 %conv64, i64* %regval, align 8, !dbg !1659
  %56 = load i64, i64* %runlen, align 8, !dbg !1660
  %57 = load i32, i32* %i, align 4, !dbg !1662
  %conv65 = sext i32 %57 to i64, !dbg !1662
  %add66 = add nsw i64 %56, %conv65, !dbg !1663
  %cmp67 = icmp sgt i64 %add66, 16384, !dbg !1664
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1665

if.then69:                                        ; preds = %if.else55
  br label %while.end87, !dbg !1666

if.end70:                                         ; preds = %if.else55
  br label %while.cond71, !dbg !1667

while.cond71:                                     ; preds = %if.end82, %if.end70
  %58 = load i64, i64* %runlen, align 8, !dbg !1668
  %dec = add nsw i64 %58, -1, !dbg !1668
  store i64 %dec, i64* %runlen, align 8, !dbg !1668
  %tobool = icmp ne i64 %58, 0, !dbg !1667
  br i1 %tobool, label %while.body72, label %while.end, !dbg !1667

while.body72:                                     ; preds = %while.cond71
  %59 = load i64, i64* %regval, align 8, !dbg !1669
  %60 = load i8*, i8** %max.addr, align 8, !dbg !1672
  %61 = load i32, i32* %i, align 4, !dbg !1673
  %idxprom73 = sext i32 %61 to i64, !dbg !1672
  %arrayidx74 = getelementptr inbounds i8, i8* %60, i64 %idxprom73, !dbg !1672
  %62 = load i8, i8* %arrayidx74, align 1, !dbg !1672
  %conv75 = zext i8 %62 to i64, !dbg !1672
  %cmp76 = icmp sgt i64 %59, %conv75, !dbg !1674
  br i1 %cmp76, label %if.then78, label %if.end82, !dbg !1675

if.then78:                                        ; preds = %while.body72
  %63 = load i64, i64* %regval, align 8, !dbg !1676
  %conv79 = trunc i64 %63 to i8, !dbg !1676
  %64 = load i8*, i8** %max.addr, align 8, !dbg !1677
  %65 = load i32, i32* %i, align 4, !dbg !1678
  %idxprom80 = sext i32 %65 to i64, !dbg !1677
  %arrayidx81 = getelementptr inbounds i8, i8* %64, i64 %idxprom80, !dbg !1677
  store i8 %conv79, i8* %arrayidx81, align 1, !dbg !1679
  br label %if.end82, !dbg !1677

if.end82:                                         ; preds = %if.then78, %while.body72
  %66 = load i32, i32* %i, align 4, !dbg !1680
  %inc83 = add nsw i32 %66, 1, !dbg !1680
  store i32 %inc83, i32* %i, align 4, !dbg !1680
  br label %while.cond71, !dbg !1667, !llvm.loop !1681

while.end:                                        ; preds = %while.cond71
  %67 = load i8*, i8** %p, align 8, !dbg !1683
  %incdec.ptr84 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !1683
  store i8* %incdec.ptr84, i8** %p, align 8, !dbg !1683
  br label %if.end85

if.end85:                                         ; preds = %while.end, %if.then42
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then29
  br label %while.cond, !dbg !1630, !llvm.loop !1684

while.end87:                                      ; preds = %if.then69, %while.cond
  %68 = load i32, i32* %i, align 4, !dbg !1686
  %cmp88 = icmp ne i32 %68, 16384, !dbg !1688
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !1689

if.then90:                                        ; preds = %while.end87
  store i32 -1, i32* %retval, align 4, !dbg !1690
  br label %return, !dbg !1690

if.end91:                                         ; preds = %while.end87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %for.end
  store i32 0, i32* %retval, align 4, !dbg !1691
  br label %return, !dbg !1691

return:                                           ; preds = %if.end92, %if.then90
  %69 = load i32, i32* %retval, align 4, !dbg !1692
  ret i32 %69, !dbg !1692
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.redisObject* @createHLLObject() #0 !dbg !1693 {
entry:
  %o = alloca %struct.redisObject*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  %sparselen = alloca i32, align 4
  %aux = alloca i32, align 4
  %xzero = alloca i32, align 4
  %_l = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !1696, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1700, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1702, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.declare(metadata i32* %sparselen, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i32 18, i32* %sparselen, align 4, !dbg !1705
  call void @llvm.dbg.declare(metadata i32* %aux, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i32 16384, i32* %aux, align 4, !dbg !1708
  %0 = load i32, i32* %sparselen, align 4, !dbg !1709
  %conv = sext i32 %0 to i64, !dbg !1709
  %call = call i8* @sdsnewlen(i8* null, i64 %conv), !dbg !1710
  store i8* %call, i8** %s, align 8, !dbg !1711
  %1 = load i8*, i8** %s, align 8, !dbg !1712
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1713
  store i8* %add.ptr, i8** %p, align 8, !dbg !1714
  br label %while.cond, !dbg !1715

while.cond:                                       ; preds = %do.end, %entry
  %2 = load i32, i32* %aux, align 4, !dbg !1716
  %tobool = icmp ne i32 %2, 0, !dbg !1715
  br i1 %tobool, label %while.body, label %while.end, !dbg !1715

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %xzero, metadata !1717, metadata !DIExpression()), !dbg !1719
  store i32 16384, i32* %xzero, align 4, !dbg !1719
  %3 = load i32, i32* %xzero, align 4, !dbg !1720
  %4 = load i32, i32* %aux, align 4, !dbg !1722
  %cmp = icmp sgt i32 %3, %4, !dbg !1723
  br i1 %cmp, label %if.then, label %if.end, !dbg !1724

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %aux, align 4, !dbg !1725
  store i32 %5, i32* %xzero, align 4, !dbg !1726
  br label %if.end, !dbg !1727

if.end:                                           ; preds = %if.then, %while.body
  br label %do.body, !dbg !1728

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %_l, metadata !1729, metadata !DIExpression()), !dbg !1731
  %6 = load i32, i32* %xzero, align 4, !dbg !1731
  %sub = sub nsw i32 %6, 1, !dbg !1731
  store i32 %sub, i32* %_l, align 4, !dbg !1731
  %7 = load i32, i32* %_l, align 4, !dbg !1731
  %shr = ashr i32 %7, 8, !dbg !1731
  %or = or i32 %shr, 64, !dbg !1731
  %conv2 = trunc i32 %or to i8, !dbg !1731
  %8 = load i8*, i8** %p, align 8, !dbg !1731
  store i8 %conv2, i8* %8, align 1, !dbg !1731
  %9 = load i32, i32* %_l, align 4, !dbg !1731
  %and = and i32 %9, 255, !dbg !1731
  %conv3 = trunc i32 %and to i8, !dbg !1731
  %10 = load i8*, i8** %p, align 8, !dbg !1731
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1731
  store i8 %conv3, i8* %add.ptr4, align 1, !dbg !1731
  br label %do.end, !dbg !1731

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %p, align 8, !dbg !1732
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1732
  store i8* %add.ptr5, i8** %p, align 8, !dbg !1732
  %12 = load i32, i32* %xzero, align 4, !dbg !1733
  %13 = load i32, i32* %aux, align 4, !dbg !1734
  %sub6 = sub nsw i32 %13, %12, !dbg !1734
  store i32 %sub6, i32* %aux, align 4, !dbg !1734
  br label %while.cond, !dbg !1715, !llvm.loop !1735

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %p, align 8, !dbg !1737
  %15 = load i8*, i8** %s, align 8, !dbg !1737
  %sub.ptr.lhs.cast = ptrtoint i8* %14 to i64, !dbg !1737
  %sub.ptr.rhs.cast = ptrtoint i8* %15 to i64, !dbg !1737
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1737
  %16 = load i32, i32* %sparselen, align 4, !dbg !1737
  %conv7 = sext i32 %16 to i64, !dbg !1737
  %cmp8 = icmp eq i64 %sub.ptr.sub, %conv7, !dbg !1737
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !1737

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !1737

cond.false:                                       ; preds = %while.end
  call void @_serverAssert(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1137), !dbg !1737
  unreachable, !dbg !1737

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1737

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %17 = load i8*, i8** %s, align 8, !dbg !1738
  %call10 = call %struct.redisObject* @createObject(i32 0, i8* %17), !dbg !1739
  store %struct.redisObject* %call10, %struct.redisObject** %o, align 8, !dbg !1740
  %18 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1741
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i32 0, i32 2, !dbg !1742
  %19 = load i8*, i8** %ptr, align 8, !dbg !1742
  %20 = bitcast i8* %19 to %struct.hllhdr*, !dbg !1741
  store %struct.hllhdr* %20, %struct.hllhdr** %hdr, align 8, !dbg !1743
  %21 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1744
  %magic = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %21, i32 0, i32 0, !dbg !1745
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %magic, i64 0, i64 0, !dbg !1746
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arraydecay, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false), !dbg !1746
  %22 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !1747
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %22, i32 0, i32 1, !dbg !1748
  store i8 1, i8* %encoding, align 1, !dbg !1749
  %23 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1750
  ret %struct.redisObject* %23, !dbg !1751
}

declare dso_local %struct.redisObject* @createObject(i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isHLLObjectOrReply(%struct.client* %c, %struct.redisObject* %o) #0 !dbg !1752 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %o.addr = alloca %struct.redisObject*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2326, metadata !DIExpression()), !dbg !2327
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !2328, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !2330, metadata !DIExpression()), !dbg !2331
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2332
  %1 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2334
  %call = call i32 @checkType(%struct.client* %0, %struct.redisObject* %1, i32 0), !dbg !2335
  %tobool = icmp ne i32 %call, 0, !dbg !2335
  br i1 %tobool, label %if.then, label %if.end, !dbg !2336

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !2337
  br label %return, !dbg !2337

if.end:                                           ; preds = %entry
  %2 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2338
  %3 = bitcast %struct.redisObject* %2 to i32*, !dbg !2338
  %bf.load = load i32, i32* %3, align 8, !dbg !2338
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !2338
  %bf.clear = and i32 %bf.lshr, 15, !dbg !2338
  %cmp = icmp eq i32 %bf.clear, 0, !dbg !2338
  br i1 %cmp, label %if.end6, label %lor.lhs.false, !dbg !2338

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2338
  %5 = bitcast %struct.redisObject* %4 to i32*, !dbg !2338
  %bf.load1 = load i32, i32* %5, align 8, !dbg !2338
  %bf.lshr2 = lshr i32 %bf.load1, 4, !dbg !2338
  %bf.clear3 = and i32 %bf.lshr2, 15, !dbg !2338
  %cmp4 = icmp eq i32 %bf.clear3, 8, !dbg !2338
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !2340

if.then5:                                         ; preds = %lor.lhs.false
  br label %invalid, !dbg !2341

if.end6:                                          ; preds = %lor.lhs.false, %if.end
  %6 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2342
  %call7 = call i64 @stringObjectLen(%struct.redisObject* %6), !dbg !2344
  %cmp8 = icmp ult i64 %call7, 16, !dbg !2345
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2346

if.then9:                                         ; preds = %if.end6
  br label %invalid, !dbg !2347

if.end10:                                         ; preds = %if.end6
  %7 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2348
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !2349
  %8 = load i8*, i8** %ptr, align 8, !dbg !2349
  %9 = bitcast i8* %8 to %struct.hllhdr*, !dbg !2348
  store %struct.hllhdr* %9, %struct.hllhdr** %hdr, align 8, !dbg !2350
  %10 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2351
  %magic = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %10, i32 0, i32 0, !dbg !2353
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %magic, i64 0, i64 0, !dbg !2351
  %11 = load i8, i8* %arrayidx, align 1, !dbg !2351
  %conv = sext i8 %11 to i32, !dbg !2351
  %cmp11 = icmp ne i32 %conv, 72, !dbg !2354
  br i1 %cmp11, label %if.then31, label %lor.lhs.false13, !dbg !2355

lor.lhs.false13:                                  ; preds = %if.end10
  %12 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2356
  %magic14 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %12, i32 0, i32 0, !dbg !2357
  %arrayidx15 = getelementptr inbounds [4 x i8], [4 x i8]* %magic14, i64 0, i64 1, !dbg !2356
  %13 = load i8, i8* %arrayidx15, align 1, !dbg !2356
  %conv16 = sext i8 %13 to i32, !dbg !2356
  %cmp17 = icmp ne i32 %conv16, 89, !dbg !2358
  br i1 %cmp17, label %if.then31, label %lor.lhs.false19, !dbg !2359

lor.lhs.false19:                                  ; preds = %lor.lhs.false13
  %14 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2360
  %magic20 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %14, i32 0, i32 0, !dbg !2361
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %magic20, i64 0, i64 2, !dbg !2360
  %15 = load i8, i8* %arrayidx21, align 1, !dbg !2360
  %conv22 = sext i8 %15 to i32, !dbg !2360
  %cmp23 = icmp ne i32 %conv22, 76, !dbg !2362
  br i1 %cmp23, label %if.then31, label %lor.lhs.false25, !dbg !2363

lor.lhs.false25:                                  ; preds = %lor.lhs.false19
  %16 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2364
  %magic26 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %16, i32 0, i32 0, !dbg !2365
  %arrayidx27 = getelementptr inbounds [4 x i8], [4 x i8]* %magic26, i64 0, i64 3, !dbg !2364
  %17 = load i8, i8* %arrayidx27, align 1, !dbg !2364
  %conv28 = sext i8 %17 to i32, !dbg !2364
  %cmp29 = icmp ne i32 %conv28, 76, !dbg !2366
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !2367

if.then31:                                        ; preds = %lor.lhs.false25, %lor.lhs.false19, %lor.lhs.false13, %if.end10
  br label %invalid, !dbg !2368

if.end32:                                         ; preds = %lor.lhs.false25
  %18 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2369
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %18, i32 0, i32 1, !dbg !2371
  %19 = load i8, i8* %encoding, align 1, !dbg !2371
  %conv33 = zext i8 %19 to i32, !dbg !2369
  %cmp34 = icmp sgt i32 %conv33, 1, !dbg !2372
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2373

if.then36:                                        ; preds = %if.end32
  br label %invalid, !dbg !2374

if.end37:                                         ; preds = %if.end32
  %20 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2375
  %encoding38 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %20, i32 0, i32 1, !dbg !2377
  %21 = load i8, i8* %encoding38, align 1, !dbg !2377
  %conv39 = zext i8 %21 to i32, !dbg !2375
  %cmp40 = icmp eq i32 %conv39, 0, !dbg !2378
  br i1 %cmp40, label %land.lhs.true, label %if.end46, !dbg !2379

land.lhs.true:                                    ; preds = %if.end37
  %22 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !2380
  %call42 = call i64 @stringObjectLen(%struct.redisObject* %22), !dbg !2381
  %cmp43 = icmp ne i64 %call42, 12304, !dbg !2382
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !2383

if.then45:                                        ; preds = %land.lhs.true
  br label %invalid, !dbg !2384

if.end46:                                         ; preds = %land.lhs.true, %if.end37
  store i32 0, i32* %retval, align 4, !dbg !2385
  br label %return, !dbg !2385

invalid:                                          ; preds = %if.then45, %if.then36, %if.then31, %if.then9, %if.then5
  call void @llvm.dbg.label(metadata !2386), !dbg !2387
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2388
  call void @addReplyError(%struct.client* %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0)), !dbg !2389
  store i32 -1, i32* %retval, align 4, !dbg !2390
  br label %return, !dbg !2390

return:                                           ; preds = %invalid, %if.end46, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !2391
  ret i32 %24, !dbg !2391
}

declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) #2

declare dso_local i64 @stringObjectLen(%struct.redisObject*) #2

declare dso_local void @addReplyError(%struct.client*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @pfaddCommand(%struct.client* %c) #0 !dbg !2392 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %o = alloca %struct.redisObject*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %updated = alloca i32, align 4
  %j = alloca i32, align 4
  %retval = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2393, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !2395, metadata !DIExpression()), !dbg !2396
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2397
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !2398
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !2398
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2399
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !2400
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2400
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2399
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2399
  %call = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %1, %struct.redisObject* %4), !dbg !2401
  store %struct.redisObject* %call, %struct.redisObject** %o, align 8, !dbg !2396
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata i32* %updated, metadata !2404, metadata !DIExpression()), !dbg !2405
  store i32 0, i32* %updated, align 4, !dbg !2405
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2406, metadata !DIExpression()), !dbg !2407
  %5 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2408
  %cmp = icmp eq %struct.redisObject* %5, null, !dbg !2410
  br i1 %cmp, label %if.then, label %if.else, !dbg !2411

if.then:                                          ; preds = %entry
  %call1 = call %struct.redisObject* @createHLLObject(), !dbg !2412
  store %struct.redisObject* %call1, %struct.redisObject** %o, align 8, !dbg !2414
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2415
  %db2 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 4, !dbg !2416
  %7 = load %struct.redisDb*, %struct.redisDb** %db2, align 8, !dbg !2416
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2417
  %argv3 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 10, !dbg !2418
  %9 = load %struct.redisObject**, %struct.redisObject*** %argv3, align 8, !dbg !2418
  %arrayidx4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !2417
  %10 = load %struct.redisObject*, %struct.redisObject** %arrayidx4, align 8, !dbg !2417
  %11 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2419
  call void @dbAdd(%struct.redisDb* %7, %struct.redisObject* %10, %struct.redisObject* %11), !dbg !2420
  %12 = load i32, i32* %updated, align 4, !dbg !2421
  %inc = add nsw i32 %12, 1, !dbg !2421
  store i32 %inc, i32* %updated, align 4, !dbg !2421
  br label %if.end12, !dbg !2422

if.else:                                          ; preds = %entry
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2423
  %14 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2426
  %call5 = call i32 @isHLLObjectOrReply(%struct.client* %13, %struct.redisObject* %14), !dbg !2427
  %cmp6 = icmp ne i32 %call5, 0, !dbg !2428
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !2429

if.then7:                                         ; preds = %if.else
  br label %return, !dbg !2430

if.end:                                           ; preds = %if.else
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2431
  %db8 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 4, !dbg !2432
  %16 = load %struct.redisDb*, %struct.redisDb** %db8, align 8, !dbg !2432
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2433
  %argv9 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 10, !dbg !2434
  %18 = load %struct.redisObject**, %struct.redisObject*** %argv9, align 8, !dbg !2434
  %arrayidx10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 1, !dbg !2433
  %19 = load %struct.redisObject*, %struct.redisObject** %arrayidx10, align 8, !dbg !2433
  %20 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2435
  %call11 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %16, %struct.redisObject* %19, %struct.redisObject* %20), !dbg !2436
  store %struct.redisObject* %call11, %struct.redisObject** %o, align 8, !dbg !2437
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  store i32 2, i32* %j, align 4, !dbg !2438
  br label %for.cond, !dbg !2440

for.cond:                                         ; preds = %for.inc, %if.end12
  %21 = load i32, i32* %j, align 4, !dbg !2441
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2443
  %argc = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 9, !dbg !2444
  %23 = load i32, i32* %argc, align 8, !dbg !2444
  %cmp13 = icmp slt i32 %21, %23, !dbg !2445
  br i1 %cmp13, label %for.body, label %for.end, !dbg !2446

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !2447, metadata !DIExpression()), !dbg !2449
  %24 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2450
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2451
  %argv14 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 10, !dbg !2452
  %26 = load %struct.redisObject**, %struct.redisObject*** %argv14, align 8, !dbg !2452
  %27 = load i32, i32* %j, align 4, !dbg !2453
  %idxprom = sext i32 %27 to i64, !dbg !2451
  %arrayidx15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 %idxprom, !dbg !2451
  %28 = load %struct.redisObject*, %struct.redisObject** %arrayidx15, align 8, !dbg !2451
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i32 0, i32 2, !dbg !2454
  %29 = load i8*, i8** %ptr, align 8, !dbg !2454
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2455
  %argv16 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 10, !dbg !2456
  %31 = load %struct.redisObject**, %struct.redisObject*** %argv16, align 8, !dbg !2456
  %32 = load i32, i32* %j, align 4, !dbg !2457
  %idxprom17 = sext i32 %32 to i64, !dbg !2455
  %arrayidx18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %31, i64 %idxprom17, !dbg !2455
  %33 = load %struct.redisObject*, %struct.redisObject** %arrayidx18, align 8, !dbg !2455
  %ptr19 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %33, i32 0, i32 2, !dbg !2458
  %34 = load i8*, i8** %ptr19, align 8, !dbg !2458
  %call20 = call i64 @sdslen(i8* %34), !dbg !2459
  %call21 = call i32 @hllAdd(%struct.redisObject* %24, i8* %29, i64 %call20), !dbg !2460
  store i32 %call21, i32* %retval, align 4, !dbg !2449
  %35 = load i32, i32* %retval, align 4, !dbg !2461
  switch i32 %35, label %sw.epilog [
    i32 1, label %sw.bb
    i32 -1, label %sw.bb23
  ], !dbg !2462

sw.bb:                                            ; preds = %for.body
  %36 = load i32, i32* %updated, align 4, !dbg !2463
  %inc22 = add nsw i32 %36, 1, !dbg !2463
  store i32 %inc22, i32* %updated, align 4, !dbg !2463
  br label %sw.epilog, !dbg !2465

sw.bb23:                                          ; preds = %for.body
  %37 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2466
  %38 = load i8*, i8** @invalid_hll_err, align 8, !dbg !2467
  call void @addReplyError(%struct.client* %37, i8* %38), !dbg !2468
  br label %return, !dbg !2469

sw.epilog:                                        ; preds = %for.body, %sw.bb
  br label %for.inc, !dbg !2470

for.inc:                                          ; preds = %sw.epilog
  %39 = load i32, i32* %j, align 4, !dbg !2471
  %inc24 = add nsw i32 %39, 1, !dbg !2471
  store i32 %inc24, i32* %j, align 4, !dbg !2471
  br label %for.cond, !dbg !2472, !llvm.loop !2473

for.end:                                          ; preds = %for.cond
  %40 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2475
  %ptr25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i32 0, i32 2, !dbg !2476
  %41 = load i8*, i8** %ptr25, align 8, !dbg !2476
  %42 = bitcast i8* %41 to %struct.hllhdr*, !dbg !2475
  store %struct.hllhdr* %42, %struct.hllhdr** %hdr, align 8, !dbg !2477
  %43 = load i32, i32* %updated, align 4, !dbg !2478
  %tobool = icmp ne i32 %43, 0, !dbg !2478
  br i1 %tobool, label %if.then26, label %if.end36, !dbg !2480

if.then26:                                        ; preds = %for.end
  %44 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2481
  %45 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2483
  %db27 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 4, !dbg !2484
  %46 = load %struct.redisDb*, %struct.redisDb** %db27, align 8, !dbg !2484
  %47 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2485
  %argv28 = getelementptr inbounds %struct.client, %struct.client* %47, i32 0, i32 10, !dbg !2486
  %48 = load %struct.redisObject**, %struct.redisObject*** %argv28, align 8, !dbg !2486
  %arrayidx29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 1, !dbg !2485
  %49 = load %struct.redisObject*, %struct.redisObject** %arrayidx29, align 8, !dbg !2485
  call void @signalModifiedKey(%struct.client* %44, %struct.redisDb* %46, %struct.redisObject* %49), !dbg !2487
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2488
  %argv30 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 10, !dbg !2489
  %51 = load %struct.redisObject**, %struct.redisObject*** %argv30, align 8, !dbg !2489
  %arrayidx31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 1, !dbg !2488
  %52 = load %struct.redisObject*, %struct.redisObject** %arrayidx31, align 8, !dbg !2488
  %53 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2490
  %db32 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 4, !dbg !2491
  %54 = load %struct.redisDb*, %struct.redisDb** %db32, align 8, !dbg !2491
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i32 0, i32 5, !dbg !2492
  %55 = load i32, i32* %id, align 8, !dbg !2492
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %52, i32 %55), !dbg !2493
  %56 = load i32, i32* %updated, align 4, !dbg !2494
  %conv = sext i32 %56 to i64, !dbg !2494
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2495
  %add = add nsw i64 %57, %conv, !dbg !2495
  store i64 %add, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2495
  %58 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2496
  %card = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %58, i32 0, i32 3, !dbg !2496
  %arrayidx33 = getelementptr inbounds [8 x i8], [8 x i8]* %card, i64 0, i64 7, !dbg !2496
  %59 = load i8, i8* %arrayidx33, align 1, !dbg !2496
  %conv34 = zext i8 %59 to i32, !dbg !2496
  %or = or i32 %conv34, 128, !dbg !2496
  %conv35 = trunc i32 %or to i8, !dbg !2496
  store i8 %conv35, i8* %arrayidx33, align 1, !dbg !2496
  br label %if.end36, !dbg !2497

if.end36:                                         ; preds = %if.then26, %for.end
  %60 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2498
  %61 = load i32, i32* %updated, align 4, !dbg !2499
  %tobool37 = icmp ne i32 %61, 0, !dbg !2499
  br i1 %tobool37, label %cond.true, label %cond.false, !dbg !2499

cond.true:                                        ; preds = %if.end36
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !2500
  br label %cond.end, !dbg !2499

cond.false:                                       ; preds = %if.end36
  %63 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !2501
  br label %cond.end, !dbg !2499

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.redisObject* [ %62, %cond.true ], [ %63, %cond.false ], !dbg !2499
  call void @addReply(%struct.client* %60, %struct.redisObject* %cond), !dbg !2502
  br label %return, !dbg !2503

return:                                           ; preds = %cond.end, %sw.bb23, %if.then7
  ret void, !dbg !2503
}

declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @dbAdd(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) #2

declare dso_local %struct.redisObject* @dbUnshareStringValue(%struct.redisDb*, %struct.redisObject*, %struct.redisObject*) #2

declare dso_local void @signalModifiedKey(%struct.client*, %struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) #2

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @pfcountCommand(%struct.client* %c) #0 !dbg !2504 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %o = alloca %struct.redisObject*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %card = alloca i64, align 8
  %max = alloca [16400 x i8], align 16
  %registers = alloca i8*, align 8
  %j = alloca i32, align 4
  %o5 = alloca %struct.redisObject*, align 8
  %invalid = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !2507, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata i64* %card, metadata !2511, metadata !DIExpression()), !dbg !2512
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2513
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !2515
  %1 = load i32, i32* %argc, align 8, !dbg !2515
  %cmp = icmp sgt i32 %1, 2, !dbg !2516
  br i1 %cmp, label %if.then, label %if.end17, !dbg !2517

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [16400 x i8]* %max, metadata !2518, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.declare(metadata i8** %registers, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2526, metadata !DIExpression()), !dbg !2527
  %arraydecay = getelementptr inbounds [16400 x i8], [16400 x i8]* %max, i64 0, i64 0, !dbg !2528
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 16400, i1 false), !dbg !2528
  %arraydecay1 = getelementptr inbounds [16400 x i8], [16400 x i8]* %max, i64 0, i64 0, !dbg !2529
  %2 = bitcast i8* %arraydecay1 to %struct.hllhdr*, !dbg !2530
  store %struct.hllhdr* %2, %struct.hllhdr** %hdr, align 8, !dbg !2531
  %3 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2532
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %3, i32 0, i32 1, !dbg !2533
  store i8 -1, i8* %encoding, align 1, !dbg !2534
  %arraydecay2 = getelementptr inbounds [16400 x i8], [16400 x i8]* %max, i64 0, i64 0, !dbg !2535
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay2, i64 16, !dbg !2536
  store i8* %add.ptr, i8** %registers, align 8, !dbg !2537
  store i32 1, i32* %j, align 4, !dbg !2538
  br label %for.cond, !dbg !2540

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %j, align 4, !dbg !2541
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2543
  %argc3 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 9, !dbg !2544
  %6 = load i32, i32* %argc3, align 8, !dbg !2544
  %cmp4 = icmp slt i32 %4, %6, !dbg !2545
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2546

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o5, metadata !2547, metadata !DIExpression()), !dbg !2549
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2550
  %db = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 4, !dbg !2551
  %8 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !2551
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2552
  %argv = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 10, !dbg !2553
  %10 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2553
  %11 = load i32, i32* %j, align 4, !dbg !2554
  %idxprom = sext i32 %11 to i64, !dbg !2552
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %idxprom, !dbg !2552
  %12 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2552
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %8, %struct.redisObject* %12), !dbg !2555
  store %struct.redisObject* %call, %struct.redisObject** %o5, align 8, !dbg !2549
  %13 = load %struct.redisObject*, %struct.redisObject** %o5, align 8, !dbg !2556
  %cmp6 = icmp eq %struct.redisObject* %13, null, !dbg !2558
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !2559

if.then7:                                         ; preds = %for.body
  br label %for.inc, !dbg !2560

if.end:                                           ; preds = %for.body
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2561
  %15 = load %struct.redisObject*, %struct.redisObject** %o5, align 8, !dbg !2563
  %call8 = call i32 @isHLLObjectOrReply(%struct.client* %14, %struct.redisObject* %15), !dbg !2564
  %cmp9 = icmp ne i32 %call8, 0, !dbg !2565
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2566

if.then10:                                        ; preds = %if.end
  br label %if.end120, !dbg !2567

if.end11:                                         ; preds = %if.end
  %16 = load i8*, i8** %registers, align 8, !dbg !2568
  %17 = load %struct.redisObject*, %struct.redisObject** %o5, align 8, !dbg !2570
  %call12 = call i32 @hllMerge(i8* %16, %struct.redisObject* %17), !dbg !2571
  %cmp13 = icmp eq i32 %call12, -1, !dbg !2572
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2573

if.then14:                                        ; preds = %if.end11
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2574
  %19 = load i8*, i8** @invalid_hll_err, align 8, !dbg !2576
  call void @addReplyError(%struct.client* %18, i8* %19), !dbg !2577
  br label %if.end120, !dbg !2578

if.end15:                                         ; preds = %if.end11
  br label %for.inc, !dbg !2579

for.inc:                                          ; preds = %if.end15, %if.then7
  %20 = load i32, i32* %j, align 4, !dbg !2580
  %inc = add nsw i32 %20, 1, !dbg !2580
  store i32 %inc, i32* %j, align 4, !dbg !2580
  br label %for.cond, !dbg !2581, !llvm.loop !2582

for.end:                                          ; preds = %for.cond
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2584
  %22 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2585
  %call16 = call i64 @hllCount(%struct.hllhdr* %22, i32* null), !dbg !2586
  call void @addReplyLongLong(%struct.client* %21, i64 %call16), !dbg !2587
  br label %if.end120, !dbg !2588

if.end17:                                         ; preds = %entry
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2589
  %db18 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 4, !dbg !2590
  %24 = load %struct.redisDb*, %struct.redisDb** %db18, align 8, !dbg !2590
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2591
  %argv19 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 10, !dbg !2592
  %26 = load %struct.redisObject**, %struct.redisObject*** %argv19, align 8, !dbg !2592
  %arrayidx20 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 1, !dbg !2591
  %27 = load %struct.redisObject*, %struct.redisObject** %arrayidx20, align 8, !dbg !2591
  %call21 = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %24, %struct.redisObject* %27), !dbg !2593
  store %struct.redisObject* %call21, %struct.redisObject** %o, align 8, !dbg !2594
  %28 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2595
  %cmp22 = icmp eq %struct.redisObject* %28, null, !dbg !2597
  br i1 %cmp22, label %if.then23, label %if.else, !dbg !2598

if.then23:                                        ; preds = %if.end17
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2599
  %30 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !2601
  call void @addReply(%struct.client* %29, %struct.redisObject* %30), !dbg !2602
  br label %if.end120, !dbg !2603

if.else:                                          ; preds = %if.end17
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2604
  %32 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2607
  %call24 = call i32 @isHLLObjectOrReply(%struct.client* %31, %struct.redisObject* %32), !dbg !2608
  %cmp25 = icmp ne i32 %call24, 0, !dbg !2609
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !2610

if.then26:                                        ; preds = %if.else
  br label %if.end120, !dbg !2611

if.end27:                                         ; preds = %if.else
  %33 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2612
  %db28 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 4, !dbg !2613
  %34 = load %struct.redisDb*, %struct.redisDb** %db28, align 8, !dbg !2613
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2614
  %argv29 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 10, !dbg !2615
  %36 = load %struct.redisObject**, %struct.redisObject*** %argv29, align 8, !dbg !2615
  %arrayidx30 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1, !dbg !2614
  %37 = load %struct.redisObject*, %struct.redisObject** %arrayidx30, align 8, !dbg !2614
  %38 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2616
  %call31 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %34, %struct.redisObject* %37, %struct.redisObject* %38), !dbg !2617
  store %struct.redisObject* %call31, %struct.redisObject** %o, align 8, !dbg !2618
  %39 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2619
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %39, i32 0, i32 2, !dbg !2620
  %40 = load i8*, i8** %ptr, align 8, !dbg !2620
  %41 = bitcast i8* %40 to %struct.hllhdr*, !dbg !2619
  store %struct.hllhdr* %41, %struct.hllhdr** %hdr, align 8, !dbg !2621
  %42 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2622
  %card32 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %42, i32 0, i32 3, !dbg !2622
  %arrayidx33 = getelementptr inbounds [8 x i8], [8 x i8]* %card32, i64 0, i64 7, !dbg !2622
  %43 = load i8, i8* %arrayidx33, align 1, !dbg !2622
  %conv = zext i8 %43 to i32, !dbg !2622
  %and = and i32 %conv, 128, !dbg !2622
  %cmp34 = icmp eq i32 %and, 0, !dbg !2622
  br i1 %cmp34, label %if.then36, label %if.else73, !dbg !2624

if.then36:                                        ; preds = %if.end27
  %44 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2625
  %card37 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %44, i32 0, i32 3, !dbg !2627
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %card37, i64 0, i64 0, !dbg !2625
  %45 = load i8, i8* %arrayidx38, align 1, !dbg !2625
  %conv39 = zext i8 %45 to i64, !dbg !2628
  store i64 %conv39, i64* %card, align 8, !dbg !2629
  %46 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2630
  %card40 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %46, i32 0, i32 3, !dbg !2631
  %arrayidx41 = getelementptr inbounds [8 x i8], [8 x i8]* %card40, i64 0, i64 1, !dbg !2630
  %47 = load i8, i8* %arrayidx41, align 1, !dbg !2630
  %conv42 = zext i8 %47 to i64, !dbg !2632
  %shl = shl i64 %conv42, 8, !dbg !2633
  %48 = load i64, i64* %card, align 8, !dbg !2634
  %or = or i64 %48, %shl, !dbg !2634
  store i64 %or, i64* %card, align 8, !dbg !2634
  %49 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2635
  %card43 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %49, i32 0, i32 3, !dbg !2636
  %arrayidx44 = getelementptr inbounds [8 x i8], [8 x i8]* %card43, i64 0, i64 2, !dbg !2635
  %50 = load i8, i8* %arrayidx44, align 1, !dbg !2635
  %conv45 = zext i8 %50 to i64, !dbg !2637
  %shl46 = shl i64 %conv45, 16, !dbg !2638
  %51 = load i64, i64* %card, align 8, !dbg !2639
  %or47 = or i64 %51, %shl46, !dbg !2639
  store i64 %or47, i64* %card, align 8, !dbg !2639
  %52 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2640
  %card48 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %52, i32 0, i32 3, !dbg !2641
  %arrayidx49 = getelementptr inbounds [8 x i8], [8 x i8]* %card48, i64 0, i64 3, !dbg !2640
  %53 = load i8, i8* %arrayidx49, align 1, !dbg !2640
  %conv50 = zext i8 %53 to i64, !dbg !2642
  %shl51 = shl i64 %conv50, 24, !dbg !2643
  %54 = load i64, i64* %card, align 8, !dbg !2644
  %or52 = or i64 %54, %shl51, !dbg !2644
  store i64 %or52, i64* %card, align 8, !dbg !2644
  %55 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2645
  %card53 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %55, i32 0, i32 3, !dbg !2646
  %arrayidx54 = getelementptr inbounds [8 x i8], [8 x i8]* %card53, i64 0, i64 4, !dbg !2645
  %56 = load i8, i8* %arrayidx54, align 1, !dbg !2645
  %conv55 = zext i8 %56 to i64, !dbg !2647
  %shl56 = shl i64 %conv55, 32, !dbg !2648
  %57 = load i64, i64* %card, align 8, !dbg !2649
  %or57 = or i64 %57, %shl56, !dbg !2649
  store i64 %or57, i64* %card, align 8, !dbg !2649
  %58 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2650
  %card58 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %58, i32 0, i32 3, !dbg !2651
  %arrayidx59 = getelementptr inbounds [8 x i8], [8 x i8]* %card58, i64 0, i64 5, !dbg !2650
  %59 = load i8, i8* %arrayidx59, align 1, !dbg !2650
  %conv60 = zext i8 %59 to i64, !dbg !2652
  %shl61 = shl i64 %conv60, 40, !dbg !2653
  %60 = load i64, i64* %card, align 8, !dbg !2654
  %or62 = or i64 %60, %shl61, !dbg !2654
  store i64 %or62, i64* %card, align 8, !dbg !2654
  %61 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2655
  %card63 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %61, i32 0, i32 3, !dbg !2656
  %arrayidx64 = getelementptr inbounds [8 x i8], [8 x i8]* %card63, i64 0, i64 6, !dbg !2655
  %62 = load i8, i8* %arrayidx64, align 1, !dbg !2655
  %conv65 = zext i8 %62 to i64, !dbg !2657
  %shl66 = shl i64 %conv65, 48, !dbg !2658
  %63 = load i64, i64* %card, align 8, !dbg !2659
  %or67 = or i64 %63, %shl66, !dbg !2659
  store i64 %or67, i64* %card, align 8, !dbg !2659
  %64 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2660
  %card68 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %64, i32 0, i32 3, !dbg !2661
  %arrayidx69 = getelementptr inbounds [8 x i8], [8 x i8]* %card68, i64 0, i64 7, !dbg !2660
  %65 = load i8, i8* %arrayidx69, align 1, !dbg !2660
  %conv70 = zext i8 %65 to i64, !dbg !2662
  %shl71 = shl i64 %conv70, 56, !dbg !2663
  %66 = load i64, i64* %card, align 8, !dbg !2664
  %or72 = or i64 %66, %shl71, !dbg !2664
  store i64 %or72, i64* %card, align 8, !dbg !2664
  br label %if.end119, !dbg !2665

if.else73:                                        ; preds = %if.end27
  call void @llvm.dbg.declare(metadata i32* %invalid, metadata !2666, metadata !DIExpression()), !dbg !2668
  store i32 0, i32* %invalid, align 4, !dbg !2668
  %67 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2669
  %call74 = call i64 @hllCount(%struct.hllhdr* %67, i32* %invalid), !dbg !2670
  store i64 %call74, i64* %card, align 8, !dbg !2671
  %68 = load i32, i32* %invalid, align 4, !dbg !2672
  %tobool = icmp ne i32 %68, 0, !dbg !2672
  br i1 %tobool, label %if.then75, label %if.end76, !dbg !2674

if.then75:                                        ; preds = %if.else73
  %69 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2675
  %70 = load i8*, i8** @invalid_hll_err, align 8, !dbg !2677
  call void @addReplyError(%struct.client* %69, i8* %70), !dbg !2678
  br label %if.end120, !dbg !2679

if.end76:                                         ; preds = %if.else73
  %71 = load i64, i64* %card, align 8, !dbg !2680
  %and77 = and i64 %71, 255, !dbg !2681
  %conv78 = trunc i64 %and77 to i8, !dbg !2680
  %72 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2682
  %card79 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %72, i32 0, i32 3, !dbg !2683
  %arrayidx80 = getelementptr inbounds [8 x i8], [8 x i8]* %card79, i64 0, i64 0, !dbg !2682
  store i8 %conv78, i8* %arrayidx80, align 1, !dbg !2684
  %73 = load i64, i64* %card, align 8, !dbg !2685
  %shr = lshr i64 %73, 8, !dbg !2686
  %and81 = and i64 %shr, 255, !dbg !2687
  %conv82 = trunc i64 %and81 to i8, !dbg !2688
  %74 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2689
  %card83 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %74, i32 0, i32 3, !dbg !2690
  %arrayidx84 = getelementptr inbounds [8 x i8], [8 x i8]* %card83, i64 0, i64 1, !dbg !2689
  store i8 %conv82, i8* %arrayidx84, align 1, !dbg !2691
  %75 = load i64, i64* %card, align 8, !dbg !2692
  %shr85 = lshr i64 %75, 16, !dbg !2693
  %and86 = and i64 %shr85, 255, !dbg !2694
  %conv87 = trunc i64 %and86 to i8, !dbg !2695
  %76 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2696
  %card88 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %76, i32 0, i32 3, !dbg !2697
  %arrayidx89 = getelementptr inbounds [8 x i8], [8 x i8]* %card88, i64 0, i64 2, !dbg !2696
  store i8 %conv87, i8* %arrayidx89, align 1, !dbg !2698
  %77 = load i64, i64* %card, align 8, !dbg !2699
  %shr90 = lshr i64 %77, 24, !dbg !2700
  %and91 = and i64 %shr90, 255, !dbg !2701
  %conv92 = trunc i64 %and91 to i8, !dbg !2702
  %78 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2703
  %card93 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %78, i32 0, i32 3, !dbg !2704
  %arrayidx94 = getelementptr inbounds [8 x i8], [8 x i8]* %card93, i64 0, i64 3, !dbg !2703
  store i8 %conv92, i8* %arrayidx94, align 1, !dbg !2705
  %79 = load i64, i64* %card, align 8, !dbg !2706
  %shr95 = lshr i64 %79, 32, !dbg !2707
  %and96 = and i64 %shr95, 255, !dbg !2708
  %conv97 = trunc i64 %and96 to i8, !dbg !2709
  %80 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2710
  %card98 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %80, i32 0, i32 3, !dbg !2711
  %arrayidx99 = getelementptr inbounds [8 x i8], [8 x i8]* %card98, i64 0, i64 4, !dbg !2710
  store i8 %conv97, i8* %arrayidx99, align 1, !dbg !2712
  %81 = load i64, i64* %card, align 8, !dbg !2713
  %shr100 = lshr i64 %81, 40, !dbg !2714
  %and101 = and i64 %shr100, 255, !dbg !2715
  %conv102 = trunc i64 %and101 to i8, !dbg !2716
  %82 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2717
  %card103 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %82, i32 0, i32 3, !dbg !2718
  %arrayidx104 = getelementptr inbounds [8 x i8], [8 x i8]* %card103, i64 0, i64 5, !dbg !2717
  store i8 %conv102, i8* %arrayidx104, align 1, !dbg !2719
  %83 = load i64, i64* %card, align 8, !dbg !2720
  %shr105 = lshr i64 %83, 48, !dbg !2721
  %and106 = and i64 %shr105, 255, !dbg !2722
  %conv107 = trunc i64 %and106 to i8, !dbg !2723
  %84 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2724
  %card108 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %84, i32 0, i32 3, !dbg !2725
  %arrayidx109 = getelementptr inbounds [8 x i8], [8 x i8]* %card108, i64 0, i64 6, !dbg !2724
  store i8 %conv107, i8* %arrayidx109, align 1, !dbg !2726
  %85 = load i64, i64* %card, align 8, !dbg !2727
  %shr110 = lshr i64 %85, 56, !dbg !2728
  %and111 = and i64 %shr110, 255, !dbg !2729
  %conv112 = trunc i64 %and111 to i8, !dbg !2730
  %86 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2731
  %card113 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %86, i32 0, i32 3, !dbg !2732
  %arrayidx114 = getelementptr inbounds [8 x i8], [8 x i8]* %card113, i64 0, i64 7, !dbg !2731
  store i8 %conv112, i8* %arrayidx114, align 1, !dbg !2733
  %87 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2734
  %88 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2735
  %db115 = getelementptr inbounds %struct.client, %struct.client* %88, i32 0, i32 4, !dbg !2736
  %89 = load %struct.redisDb*, %struct.redisDb** %db115, align 8, !dbg !2736
  %90 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2737
  %argv116 = getelementptr inbounds %struct.client, %struct.client* %90, i32 0, i32 10, !dbg !2738
  %91 = load %struct.redisObject**, %struct.redisObject*** %argv116, align 8, !dbg !2738
  %arrayidx117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %91, i64 1, !dbg !2737
  %92 = load %struct.redisObject*, %struct.redisObject** %arrayidx117, align 8, !dbg !2737
  call void @signalModifiedKey(%struct.client* %87, %struct.redisDb* %89, %struct.redisObject* %92), !dbg !2739
  %93 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2740
  %inc118 = add nsw i64 %93, 1, !dbg !2740
  store i64 %inc118, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2740
  br label %if.end119

if.end119:                                        ; preds = %if.end76, %if.then36
  %94 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2741
  %95 = load i64, i64* %card, align 8, !dbg !2742
  call void @addReplyLongLong(%struct.client* %94, i64 %95), !dbg !2743
  br label %if.end120

if.end120:                                        ; preds = %if.then10, %if.then14, %for.end, %if.then26, %if.then75, %if.end119, %if.then23
  ret void, !dbg !2744
}

declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @pfmergeCommand(%struct.client* %c) #0 !dbg !2745 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %max = alloca [16384 x i8], align 16
  %hdr = alloca %struct.hllhdr*, align 8
  %j = alloca i32, align 4
  %use_dense = alloca i32, align 4
  %o = alloca %struct.redisObject*, align 8
  %o16 = alloca %struct.redisObject*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata [16384 x i8]* %max, metadata !2748, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.declare(metadata i32* %use_dense, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i32 0, i32* %use_dense, align 4, !dbg !2758
  %arraydecay = getelementptr inbounds [16384 x i8], [16384 x i8]* %max, i64 0, i64 0, !dbg !2759
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 16384, i1 false), !dbg !2759
  store i32 1, i32* %j, align 4, !dbg !2760
  br label %for.cond, !dbg !2762

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !2763
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2765
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !2766
  %2 = load i32, i32* %argc, align 8, !dbg !2766
  %cmp = icmp slt i32 %0, %2, !dbg !2767
  br i1 %cmp, label %for.body, label %for.end, !dbg !2768

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !2769, metadata !DIExpression()), !dbg !2771
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2772
  %db = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 4, !dbg !2773
  %4 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !2773
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2774
  %argv = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 10, !dbg !2775
  %6 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2775
  %7 = load i32, i32* %j, align 4, !dbg !2776
  %idxprom = sext i32 %7 to i64, !dbg !2774
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %idxprom, !dbg !2774
  %8 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2774
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %4, %struct.redisObject* %8), !dbg !2777
  store %struct.redisObject* %call, %struct.redisObject** %o, align 8, !dbg !2771
  %9 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2778
  %cmp1 = icmp eq %struct.redisObject* %9, null, !dbg !2780
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2781

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2782

if.end:                                           ; preds = %for.body
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2783
  %11 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2785
  %call2 = call i32 @isHLLObjectOrReply(%struct.client* %10, %struct.redisObject* %11), !dbg !2786
  %cmp3 = icmp ne i32 %call2, 0, !dbg !2787
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2788

if.then4:                                         ; preds = %if.end
  br label %return, !dbg !2789

if.end5:                                          ; preds = %if.end
  %12 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2790
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i32 0, i32 2, !dbg !2791
  %13 = load i8*, i8** %ptr, align 8, !dbg !2791
  %14 = bitcast i8* %13 to %struct.hllhdr*, !dbg !2790
  store %struct.hllhdr* %14, %struct.hllhdr** %hdr, align 8, !dbg !2792
  %15 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2793
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %15, i32 0, i32 1, !dbg !2795
  %16 = load i8, i8* %encoding, align 1, !dbg !2795
  %conv = zext i8 %16 to i32, !dbg !2793
  %cmp6 = icmp eq i32 %conv, 0, !dbg !2796
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2797

if.then8:                                         ; preds = %if.end5
  store i32 1, i32* %use_dense, align 4, !dbg !2798
  br label %if.end9, !dbg !2799

if.end9:                                          ; preds = %if.then8, %if.end5
  %arraydecay10 = getelementptr inbounds [16384 x i8], [16384 x i8]* %max, i64 0, i64 0, !dbg !2800
  %17 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !2802
  %call11 = call i32 @hllMerge(i8* %arraydecay10, %struct.redisObject* %17), !dbg !2803
  %cmp12 = icmp eq i32 %call11, -1, !dbg !2804
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2805

if.then14:                                        ; preds = %if.end9
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2806
  %19 = load i8*, i8** @invalid_hll_err, align 8, !dbg !2808
  call void @addReplyError(%struct.client* %18, i8* %19), !dbg !2809
  br label %return, !dbg !2810

if.end15:                                         ; preds = %if.end9
  br label %for.inc, !dbg !2811

for.inc:                                          ; preds = %if.end15, %if.then
  %20 = load i32, i32* %j, align 4, !dbg !2812
  %inc = add nsw i32 %20, 1, !dbg !2812
  store i32 %inc, i32* %j, align 4, !dbg !2812
  br label %for.cond, !dbg !2813, !llvm.loop !2814

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o16, metadata !2816, metadata !DIExpression()), !dbg !2817
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2818
  %db17 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 4, !dbg !2819
  %22 = load %struct.redisDb*, %struct.redisDb** %db17, align 8, !dbg !2819
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2820
  %argv18 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 10, !dbg !2821
  %24 = load %struct.redisObject**, %struct.redisObject*** %argv18, align 8, !dbg !2821
  %arrayidx19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %24, i64 1, !dbg !2820
  %25 = load %struct.redisObject*, %struct.redisObject** %arrayidx19, align 8, !dbg !2820
  %call20 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %22, %struct.redisObject* %25), !dbg !2822
  store %struct.redisObject* %call20, %struct.redisObject** %o16, align 8, !dbg !2817
  %26 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2823
  %cmp21 = icmp eq %struct.redisObject* %26, null, !dbg !2825
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !2826

if.then23:                                        ; preds = %for.end
  %call24 = call %struct.redisObject* @createHLLObject(), !dbg !2827
  store %struct.redisObject* %call24, %struct.redisObject** %o16, align 8, !dbg !2829
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2830
  %db25 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 4, !dbg !2831
  %28 = load %struct.redisDb*, %struct.redisDb** %db25, align 8, !dbg !2831
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2832
  %argv26 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 10, !dbg !2833
  %30 = load %struct.redisObject**, %struct.redisObject*** %argv26, align 8, !dbg !2833
  %arrayidx27 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 1, !dbg !2832
  %31 = load %struct.redisObject*, %struct.redisObject** %arrayidx27, align 8, !dbg !2832
  %32 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2834
  call void @dbAdd(%struct.redisDb* %28, %struct.redisObject* %31, %struct.redisObject* %32), !dbg !2835
  br label %if.end32, !dbg !2836

if.else:                                          ; preds = %for.end
  %33 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2837
  %db28 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 4, !dbg !2839
  %34 = load %struct.redisDb*, %struct.redisDb** %db28, align 8, !dbg !2839
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2840
  %argv29 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 10, !dbg !2841
  %36 = load %struct.redisObject**, %struct.redisObject*** %argv29, align 8, !dbg !2841
  %arrayidx30 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1, !dbg !2840
  %37 = load %struct.redisObject*, %struct.redisObject** %arrayidx30, align 8, !dbg !2840
  %38 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2842
  %call31 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %34, %struct.redisObject* %37, %struct.redisObject* %38), !dbg !2843
  store %struct.redisObject* %call31, %struct.redisObject** %o16, align 8, !dbg !2844
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %39 = load i32, i32* %use_dense, align 4, !dbg !2845
  %tobool = icmp ne i32 %39, 0, !dbg !2845
  br i1 %tobool, label %land.lhs.true, label %if.end37, !dbg !2847

land.lhs.true:                                    ; preds = %if.end32
  %40 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2848
  %call33 = call i32 @hllSparseToDense(%struct.redisObject* %40), !dbg !2849
  %cmp34 = icmp eq i32 %call33, -1, !dbg !2850
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !2851

if.then36:                                        ; preds = %land.lhs.true
  %41 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2852
  %42 = load i8*, i8** @invalid_hll_err, align 8, !dbg !2854
  call void @addReplyError(%struct.client* %41, i8* %42), !dbg !2855
  br label %return, !dbg !2856

if.end37:                                         ; preds = %land.lhs.true, %if.end32
  store i32 0, i32* %j, align 4, !dbg !2857
  br label %for.cond38, !dbg !2859

for.cond38:                                       ; preds = %for.inc62, %if.end37
  %43 = load i32, i32* %j, align 4, !dbg !2860
  %cmp39 = icmp slt i32 %43, 16384, !dbg !2862
  br i1 %cmp39, label %for.body41, label %for.end64, !dbg !2863

for.body41:                                       ; preds = %for.cond38
  %44 = load i32, i32* %j, align 4, !dbg !2864
  %idxprom42 = sext i32 %44 to i64, !dbg !2867
  %arrayidx43 = getelementptr inbounds [16384 x i8], [16384 x i8]* %max, i64 0, i64 %idxprom42, !dbg !2867
  %45 = load i8, i8* %arrayidx43, align 1, !dbg !2867
  %conv44 = zext i8 %45 to i32, !dbg !2867
  %cmp45 = icmp eq i32 %conv44, 0, !dbg !2868
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2869

if.then47:                                        ; preds = %for.body41
  br label %for.inc62, !dbg !2870

if.end48:                                         ; preds = %for.body41
  %46 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2871
  %ptr49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %46, i32 0, i32 2, !dbg !2872
  %47 = load i8*, i8** %ptr49, align 8, !dbg !2872
  %48 = bitcast i8* %47 to %struct.hllhdr*, !dbg !2871
  store %struct.hllhdr* %48, %struct.hllhdr** %hdr, align 8, !dbg !2873
  %49 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2874
  %encoding50 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %49, i32 0, i32 1, !dbg !2875
  %50 = load i8, i8* %encoding50, align 1, !dbg !2875
  %conv51 = zext i8 %50 to i32, !dbg !2874
  switch i32 %conv51, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb57
  ], !dbg !2876

sw.bb:                                            ; preds = %if.end48
  %51 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2877
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %51, i32 0, i32 4, !dbg !2879
  %arraydecay52 = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !2877
  %52 = load i32, i32* %j, align 4, !dbg !2880
  %conv53 = sext i32 %52 to i64, !dbg !2880
  %53 = load i32, i32* %j, align 4, !dbg !2881
  %idxprom54 = sext i32 %53 to i64, !dbg !2882
  %arrayidx55 = getelementptr inbounds [16384 x i8], [16384 x i8]* %max, i64 0, i64 %idxprom54, !dbg !2882
  %54 = load i8, i8* %arrayidx55, align 1, !dbg !2882
  %call56 = call i32 @hllDenseSet(i8* %arraydecay52, i64 %conv53, i8 zeroext %54), !dbg !2883
  br label %sw.epilog, !dbg !2884

sw.bb57:                                          ; preds = %if.end48
  %55 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2885
  %56 = load i32, i32* %j, align 4, !dbg !2886
  %conv58 = sext i32 %56 to i64, !dbg !2886
  %57 = load i32, i32* %j, align 4, !dbg !2887
  %idxprom59 = sext i32 %57 to i64, !dbg !2888
  %arrayidx60 = getelementptr inbounds [16384 x i8], [16384 x i8]* %max, i64 0, i64 %idxprom59, !dbg !2888
  %58 = load i8, i8* %arrayidx60, align 1, !dbg !2888
  %call61 = call i32 @hllSparseSet(%struct.redisObject* %55, i64 %conv58, i8 zeroext %58), !dbg !2889
  br label %sw.epilog, !dbg !2890

sw.epilog:                                        ; preds = %if.end48, %sw.bb57, %sw.bb
  br label %for.inc62, !dbg !2891

for.inc62:                                        ; preds = %sw.epilog, %if.then47
  %59 = load i32, i32* %j, align 4, !dbg !2892
  %inc63 = add nsw i32 %59, 1, !dbg !2892
  store i32 %inc63, i32* %j, align 4, !dbg !2892
  br label %for.cond38, !dbg !2893, !llvm.loop !2894

for.end64:                                        ; preds = %for.cond38
  %60 = load %struct.redisObject*, %struct.redisObject** %o16, align 8, !dbg !2896
  %ptr65 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %60, i32 0, i32 2, !dbg !2897
  %61 = load i8*, i8** %ptr65, align 8, !dbg !2897
  %62 = bitcast i8* %61 to %struct.hllhdr*, !dbg !2896
  store %struct.hllhdr* %62, %struct.hllhdr** %hdr, align 8, !dbg !2898
  %63 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2899
  %card = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %63, i32 0, i32 3, !dbg !2899
  %arrayidx66 = getelementptr inbounds [8 x i8], [8 x i8]* %card, i64 0, i64 7, !dbg !2899
  %64 = load i8, i8* %arrayidx66, align 1, !dbg !2899
  %conv67 = zext i8 %64 to i32, !dbg !2899
  %or = or i32 %conv67, 128, !dbg !2899
  %conv68 = trunc i32 %or to i8, !dbg !2899
  store i8 %conv68, i8* %arrayidx66, align 1, !dbg !2899
  %65 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2900
  %66 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2901
  %db69 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 4, !dbg !2902
  %67 = load %struct.redisDb*, %struct.redisDb** %db69, align 8, !dbg !2902
  %68 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2903
  %argv70 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 10, !dbg !2904
  %69 = load %struct.redisObject**, %struct.redisObject*** %argv70, align 8, !dbg !2904
  %arrayidx71 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %69, i64 1, !dbg !2903
  %70 = load %struct.redisObject*, %struct.redisObject** %arrayidx71, align 8, !dbg !2903
  call void @signalModifiedKey(%struct.client* %65, %struct.redisDb* %67, %struct.redisObject* %70), !dbg !2905
  %71 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2906
  %argv72 = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 10, !dbg !2907
  %72 = load %struct.redisObject**, %struct.redisObject*** %argv72, align 8, !dbg !2907
  %arrayidx73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %72, i64 1, !dbg !2906
  %73 = load %struct.redisObject*, %struct.redisObject** %arrayidx73, align 8, !dbg !2906
  %74 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2908
  %db74 = getelementptr inbounds %struct.client, %struct.client* %74, i32 0, i32 4, !dbg !2909
  %75 = load %struct.redisDb*, %struct.redisDb** %db74, align 8, !dbg !2909
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %75, i32 0, i32 5, !dbg !2910
  %76 = load i32, i32* %id, align 8, !dbg !2910
  call void @notifyKeyspaceEvent(i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.redisObject* %73, i32 %76), !dbg !2911
  %77 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2912
  %inc75 = add nsw i64 %77, 1, !dbg !2912
  store i64 %inc75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2912
  %78 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2913
  %79 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !2914
  call void @addReply(%struct.client* %78, %struct.redisObject* %79), !dbg !2915
  br label %return, !dbg !2916

return:                                           ; preds = %for.end64, %if.then36, %if.then14, %if.then4
  ret void, !dbg !2916
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pfselftestCommand(%struct.client* %c) #0 !dbg !2917 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %bitcounters = alloca i8*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %hdr2 = alloca %struct.hllhdr*, align 8
  %o = alloca %struct.redisObject*, align 8
  %bytecounters = alloca [16384 x i8], align 16
  %r = alloca i32, align 4
  %_p = alloca i8*, align 8
  %_byte = alloca i64, align 8
  %_fb = alloca i64, align 8
  %_fb8 = alloca i64, align 8
  %_v = alloca i64, align 8
  %val = alloca i32, align 4
  %_p35 = alloca i8*, align 8
  %_byte38 = alloca i64, align 8
  %_fb42 = alloca i64, align 8
  %_fb846 = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %relerr = alloca double, align 8
  %checkpoint = alloca i64, align 8
  %seed = alloca i64, align 8
  %ele = alloca i64, align 8
  %abserr = alloca i64, align 8
  %maxerr = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2922, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.declare(metadata i8** %bitcounters, metadata !2924, metadata !DIExpression()), !dbg !2925
  %call = call i8* @sdsnewlen(i8* null, i64 12304), !dbg !2926
  store i8* %call, i8** %bitcounters, align 8, !dbg !2925
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !2927, metadata !DIExpression()), !dbg !2928
  %0 = load i8*, i8** %bitcounters, align 8, !dbg !2929
  %1 = bitcast i8* %0 to %struct.hllhdr*, !dbg !2930
  store %struct.hllhdr* %1, %struct.hllhdr** %hdr, align 8, !dbg !2928
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr2, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !2933, metadata !DIExpression()), !dbg !2934
  store %struct.redisObject* null, %struct.redisObject** %o, align 8, !dbg !2934
  call void @llvm.dbg.declare(metadata [16384 x i8]* %bytecounters, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i32 0, i32* %j, align 4, !dbg !2937
  br label %for.cond, !dbg !2939

for.cond:                                         ; preds = %for.inc70, %entry
  %2 = load i32, i32* %j, align 4, !dbg !2940
  %cmp = icmp ult i32 %2, 1000, !dbg !2942
  br i1 %cmp, label %for.body, label %for.end72, !dbg !2943

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !2944
  br label %for.cond1, !dbg !2947

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4, !dbg !2948
  %cmp2 = icmp ult i32 %3, 16384, !dbg !2950
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2951

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %r, metadata !2952, metadata !DIExpression()), !dbg !2954
  %call4 = call i32 @rand() #7, !dbg !2955
  %and = and i32 %call4, 63, !dbg !2956
  store i32 %and, i32* %r, align 4, !dbg !2954
  %4 = load i32, i32* %r, align 4, !dbg !2957
  %conv = trunc i32 %4 to i8, !dbg !2957
  %5 = load i32, i32* %i, align 4, !dbg !2958
  %idxprom = zext i32 %5 to i64, !dbg !2959
  %arrayidx = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytecounters, i64 0, i64 %idxprom, !dbg !2959
  store i8 %conv, i8* %arrayidx, align 1, !dbg !2960
  br label %do.body, !dbg !2961

do.body:                                          ; preds = %for.body3
  call void @llvm.dbg.declare(metadata i8** %_p, metadata !2962, metadata !DIExpression()), !dbg !2964
  %6 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2964
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %6, i32 0, i32 4, !dbg !2964
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !2964
  store i8* %arraydecay, i8** %_p, align 8, !dbg !2964
  call void @llvm.dbg.declare(metadata i64* %_byte, metadata !2965, metadata !DIExpression()), !dbg !2964
  %7 = load i32, i32* %i, align 4, !dbg !2964
  %mul = mul i32 %7, 6, !dbg !2964
  %div = udiv i32 %mul, 8, !dbg !2964
  %conv5 = zext i32 %div to i64, !dbg !2964
  store i64 %conv5, i64* %_byte, align 8, !dbg !2964
  call void @llvm.dbg.declare(metadata i64* %_fb, metadata !2966, metadata !DIExpression()), !dbg !2964
  %8 = load i32, i32* %i, align 4, !dbg !2964
  %mul6 = mul i32 %8, 6, !dbg !2964
  %and7 = and i32 %mul6, 7, !dbg !2964
  %conv8 = zext i32 %and7 to i64, !dbg !2964
  store i64 %conv8, i64* %_fb, align 8, !dbg !2964
  call void @llvm.dbg.declare(metadata i64* %_fb8, metadata !2967, metadata !DIExpression()), !dbg !2964
  %9 = load i64, i64* %_fb, align 8, !dbg !2964
  %sub = sub i64 8, %9, !dbg !2964
  store i64 %sub, i64* %_fb8, align 8, !dbg !2964
  call void @llvm.dbg.declare(metadata i64* %_v, metadata !2968, metadata !DIExpression()), !dbg !2964
  %10 = load i32, i32* %r, align 4, !dbg !2964
  %conv9 = zext i32 %10 to i64, !dbg !2964
  store i64 %conv9, i64* %_v, align 8, !dbg !2964
  %11 = load i64, i64* %_fb, align 8, !dbg !2964
  %sh_prom = trunc i64 %11 to i32, !dbg !2964
  %shl = shl i32 63, %sh_prom, !dbg !2964
  %neg = xor i32 %shl, -1, !dbg !2964
  %12 = load i8*, i8** %_p, align 8, !dbg !2964
  %13 = load i64, i64* %_byte, align 8, !dbg !2964
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !2964
  %14 = load i8, i8* %arrayidx10, align 1, !dbg !2964
  %conv11 = zext i8 %14 to i32, !dbg !2964
  %and12 = and i32 %conv11, %neg, !dbg !2964
  %conv13 = trunc i32 %and12 to i8, !dbg !2964
  store i8 %conv13, i8* %arrayidx10, align 1, !dbg !2964
  %15 = load i64, i64* %_v, align 8, !dbg !2964
  %16 = load i64, i64* %_fb, align 8, !dbg !2964
  %shl14 = shl i64 %15, %16, !dbg !2964
  %17 = load i8*, i8** %_p, align 8, !dbg !2964
  %18 = load i64, i64* %_byte, align 8, !dbg !2964
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2964
  %19 = load i8, i8* %arrayidx15, align 1, !dbg !2964
  %conv16 = zext i8 %19 to i64, !dbg !2964
  %or = or i64 %conv16, %shl14, !dbg !2964
  %conv17 = trunc i64 %or to i8, !dbg !2964
  store i8 %conv17, i8* %arrayidx15, align 1, !dbg !2964
  %20 = load i64, i64* %_fb8, align 8, !dbg !2964
  %sh_prom18 = trunc i64 %20 to i32, !dbg !2964
  %shr = ashr i32 63, %sh_prom18, !dbg !2964
  %neg19 = xor i32 %shr, -1, !dbg !2964
  %21 = load i8*, i8** %_p, align 8, !dbg !2964
  %22 = load i64, i64* %_byte, align 8, !dbg !2964
  %add = add i64 %22, 1, !dbg !2964
  %arrayidx20 = getelementptr inbounds i8, i8* %21, i64 %add, !dbg !2964
  %23 = load i8, i8* %arrayidx20, align 1, !dbg !2964
  %conv21 = zext i8 %23 to i32, !dbg !2964
  %and22 = and i32 %conv21, %neg19, !dbg !2964
  %conv23 = trunc i32 %and22 to i8, !dbg !2964
  store i8 %conv23, i8* %arrayidx20, align 1, !dbg !2964
  %24 = load i64, i64* %_v, align 8, !dbg !2964
  %25 = load i64, i64* %_fb8, align 8, !dbg !2964
  %shr24 = lshr i64 %24, %25, !dbg !2964
  %26 = load i8*, i8** %_p, align 8, !dbg !2964
  %27 = load i64, i64* %_byte, align 8, !dbg !2964
  %add25 = add i64 %27, 1, !dbg !2964
  %arrayidx26 = getelementptr inbounds i8, i8* %26, i64 %add25, !dbg !2964
  %28 = load i8, i8* %arrayidx26, align 1, !dbg !2964
  %conv27 = zext i8 %28 to i64, !dbg !2964
  %or28 = or i64 %conv27, %shr24, !dbg !2964
  %conv29 = trunc i64 %or28 to i8, !dbg !2964
  store i8 %conv29, i8* %arrayidx26, align 1, !dbg !2964
  br label %do.end, !dbg !2964

do.end:                                           ; preds = %do.body
  br label %for.inc, !dbg !2969

for.inc:                                          ; preds = %do.end
  %29 = load i32, i32* %i, align 4, !dbg !2970
  %inc = add i32 %29, 1, !dbg !2970
  store i32 %inc, i32* %i, align 4, !dbg !2970
  br label %for.cond1, !dbg !2971, !llvm.loop !2972

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %i, align 4, !dbg !2974
  br label %for.cond30, !dbg !2976

for.cond30:                                       ; preds = %for.inc67, %for.end
  %30 = load i32, i32* %i, align 4, !dbg !2977
  %cmp31 = icmp ult i32 %30, 16384, !dbg !2979
  br i1 %cmp31, label %for.body33, label %for.end69, !dbg !2980

for.body33:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2981, metadata !DIExpression()), !dbg !2983
  br label %do.body34, !dbg !2984

do.body34:                                        ; preds = %for.body33
  call void @llvm.dbg.declare(metadata i8** %_p35, metadata !2985, metadata !DIExpression()), !dbg !2987
  %31 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !2987
  %registers36 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %31, i32 0, i32 4, !dbg !2987
  %arraydecay37 = getelementptr inbounds [0 x i8], [0 x i8]* %registers36, i64 0, i64 0, !dbg !2987
  store i8* %arraydecay37, i8** %_p35, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %_byte38, metadata !2988, metadata !DIExpression()), !dbg !2987
  %32 = load i32, i32* %i, align 4, !dbg !2987
  %mul39 = mul i32 %32, 6, !dbg !2987
  %div40 = udiv i32 %mul39, 8, !dbg !2987
  %conv41 = zext i32 %div40 to i64, !dbg !2987
  store i64 %conv41, i64* %_byte38, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %_fb42, metadata !2989, metadata !DIExpression()), !dbg !2987
  %33 = load i32, i32* %i, align 4, !dbg !2987
  %mul43 = mul i32 %33, 6, !dbg !2987
  %and44 = and i32 %mul43, 7, !dbg !2987
  %conv45 = zext i32 %and44 to i64, !dbg !2987
  store i64 %conv45, i64* %_fb42, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %_fb846, metadata !2990, metadata !DIExpression()), !dbg !2987
  %34 = load i64, i64* %_fb42, align 8, !dbg !2987
  %sub47 = sub i64 8, %34, !dbg !2987
  store i64 %sub47, i64* %_fb846, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %b0, metadata !2991, metadata !DIExpression()), !dbg !2987
  %35 = load i8*, i8** %_p35, align 8, !dbg !2987
  %36 = load i64, i64* %_byte38, align 8, !dbg !2987
  %arrayidx48 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !2987
  %37 = load i8, i8* %arrayidx48, align 1, !dbg !2987
  %conv49 = zext i8 %37 to i64, !dbg !2987
  store i64 %conv49, i64* %b0, align 8, !dbg !2987
  call void @llvm.dbg.declare(metadata i64* %b1, metadata !2992, metadata !DIExpression()), !dbg !2987
  %38 = load i8*, i8** %_p35, align 8, !dbg !2987
  %39 = load i64, i64* %_byte38, align 8, !dbg !2987
  %add50 = add i64 %39, 1, !dbg !2987
  %arrayidx51 = getelementptr inbounds i8, i8* %38, i64 %add50, !dbg !2987
  %40 = load i8, i8* %arrayidx51, align 1, !dbg !2987
  %conv52 = zext i8 %40 to i64, !dbg !2987
  store i64 %conv52, i64* %b1, align 8, !dbg !2987
  %41 = load i64, i64* %b0, align 8, !dbg !2987
  %42 = load i64, i64* %_fb42, align 8, !dbg !2987
  %shr53 = lshr i64 %41, %42, !dbg !2987
  %43 = load i64, i64* %b1, align 8, !dbg !2987
  %44 = load i64, i64* %_fb846, align 8, !dbg !2987
  %shl54 = shl i64 %43, %44, !dbg !2987
  %or55 = or i64 %shr53, %shl54, !dbg !2987
  %and56 = and i64 %or55, 63, !dbg !2987
  %conv57 = trunc i64 %and56 to i32, !dbg !2987
  store i32 %conv57, i32* %val, align 4, !dbg !2987
  br label %do.end58, !dbg !2987

do.end58:                                         ; preds = %do.body34
  %45 = load i32, i32* %val, align 4, !dbg !2993
  %46 = load i32, i32* %i, align 4, !dbg !2995
  %idxprom59 = zext i32 %46 to i64, !dbg !2996
  %arrayidx60 = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytecounters, i64 0, i64 %idxprom59, !dbg !2996
  %47 = load i8, i8* %arrayidx60, align 1, !dbg !2996
  %conv61 = zext i8 %47 to i32, !dbg !2996
  %cmp62 = icmp ne i32 %45, %conv61, !dbg !2997
  br i1 %cmp62, label %if.then, label %if.end, !dbg !2998

if.then:                                          ; preds = %do.end58
  %48 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2999
  %49 = load i32, i32* %i, align 4, !dbg !3001
  %50 = load i32, i32* %i, align 4, !dbg !3002
  %idxprom64 = zext i32 %50 to i64, !dbg !3003
  %arrayidx65 = getelementptr inbounds [16384 x i8], [16384 x i8]* %bytecounters, i64 0, i64 %idxprom64, !dbg !3003
  %51 = load i8, i8* %arrayidx65, align 1, !dbg !3003
  %conv66 = zext i8 %51 to i32, !dbg !3004
  %52 = load i32, i32* %val, align 4, !dbg !3005
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %49, i32 %conv66, i32 %52), !dbg !3006
  br label %cleanup, !dbg !3007

if.end:                                           ; preds = %do.end58
  br label %for.inc67, !dbg !3008

for.inc67:                                        ; preds = %if.end
  %53 = load i32, i32* %i, align 4, !dbg !3009
  %inc68 = add i32 %53, 1, !dbg !3009
  store i32 %inc68, i32* %i, align 4, !dbg !3009
  br label %for.cond30, !dbg !3010, !llvm.loop !3011

for.end69:                                        ; preds = %for.cond30
  br label %for.inc70, !dbg !3013

for.inc70:                                        ; preds = %for.end69
  %54 = load i32, i32* %j, align 4, !dbg !3014
  %inc71 = add i32 %54, 1, !dbg !3014
  store i32 %inc71, i32* %j, align 4, !dbg !3014
  br label %for.cond, !dbg !3015, !llvm.loop !3016

for.end72:                                        ; preds = %for.cond
  %55 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3018
  %registers73 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %55, i32 0, i32 4, !dbg !3019
  %arraydecay74 = getelementptr inbounds [0 x i8], [0 x i8]* %registers73, i64 0, i64 0, !dbg !3020
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay74, i8 0, i64 12288, i1 false), !dbg !3020
  %call75 = call %struct.redisObject* @createHLLObject(), !dbg !3021
  store %struct.redisObject* %call75, %struct.redisObject** %o, align 8, !dbg !3022
  call void @llvm.dbg.declare(metadata double* %relerr, metadata !3023, metadata !DIExpression()), !dbg !3024
  %call76 = call double @sqrt(double 1.638400e+04) #7, !dbg !3025
  %div77 = fdiv double 1.040000e+00, %call76, !dbg !3026
  store double %div77, double* %relerr, align 8, !dbg !3024
  call void @llvm.dbg.declare(metadata i64* %checkpoint, metadata !3027, metadata !DIExpression()), !dbg !3028
  store i64 1, i64* %checkpoint, align 8, !dbg !3028
  call void @llvm.dbg.declare(metadata i64* %seed, metadata !3029, metadata !DIExpression()), !dbg !3030
  %call78 = call i32 @rand() #7, !dbg !3031
  %conv79 = sext i32 %call78 to i64, !dbg !3032
  %call80 = call i32 @rand() #7, !dbg !3033
  %conv81 = sext i32 %call80 to i64, !dbg !3034
  %shl82 = shl i64 %conv81, 32, !dbg !3035
  %or83 = or i64 %conv79, %shl82, !dbg !3036
  store i64 %or83, i64* %seed, align 8, !dbg !3030
  call void @llvm.dbg.declare(metadata i64* %ele, metadata !3037, metadata !DIExpression()), !dbg !3038
  store i32 1, i32* %j, align 4, !dbg !3039
  br label %for.cond84, !dbg !3041

for.cond84:                                       ; preds = %for.inc143, %for.end72
  %56 = load i32, i32* %j, align 4, !dbg !3042
  %cmp85 = icmp ule i32 %56, 10000000, !dbg !3044
  br i1 %cmp85, label %for.body87, label %for.end145, !dbg !3045

for.body87:                                       ; preds = %for.cond84
  %57 = load i32, i32* %j, align 4, !dbg !3046
  %conv88 = zext i32 %57 to i64, !dbg !3046
  %58 = load i64, i64* %seed, align 8, !dbg !3048
  %xor = xor i64 %conv88, %58, !dbg !3049
  store i64 %xor, i64* %ele, align 8, !dbg !3050
  %59 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3051
  %registers89 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %59, i32 0, i32 4, !dbg !3052
  %arraydecay90 = getelementptr inbounds [0 x i8], [0 x i8]* %registers89, i64 0, i64 0, !dbg !3051
  %60 = bitcast i64* %ele to i8*, !dbg !3053
  %call91 = call i32 @hllDenseAdd(i8* %arraydecay90, i8* %60, i64 8), !dbg !3054
  %61 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3055
  %62 = bitcast i64* %ele to i8*, !dbg !3056
  %call92 = call i32 @hllAdd(%struct.redisObject* %61, i8* %62, i64 8), !dbg !3057
  %63 = load i32, i32* %j, align 4, !dbg !3058
  %conv93 = zext i32 %63 to i64, !dbg !3058
  %64 = load i64, i64* %checkpoint, align 8, !dbg !3060
  %cmp94 = icmp eq i64 %conv93, %64, !dbg !3061
  br i1 %cmp94, label %land.lhs.true, label %if.end106, !dbg !3062

land.lhs.true:                                    ; preds = %for.body87
  %65 = load i32, i32* %j, align 4, !dbg !3063
  %conv96 = zext i32 %65 to i64, !dbg !3063
  %66 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 336), align 8, !dbg !3064
  %div97 = udiv i64 %66, 2, !dbg !3065
  %cmp98 = icmp ult i64 %conv96, %div97, !dbg !3066
  br i1 %cmp98, label %if.then100, label %if.end106, !dbg !3067

if.then100:                                       ; preds = %land.lhs.true
  %67 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3068
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %67, i32 0, i32 2, !dbg !3070
  %68 = load i8*, i8** %ptr, align 8, !dbg !3070
  %69 = bitcast i8* %68 to %struct.hllhdr*, !dbg !3068
  store %struct.hllhdr* %69, %struct.hllhdr** %hdr2, align 8, !dbg !3071
  %70 = load %struct.hllhdr*, %struct.hllhdr** %hdr2, align 8, !dbg !3072
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %70, i32 0, i32 1, !dbg !3074
  %71 = load i8, i8* %encoding, align 1, !dbg !3074
  %conv101 = zext i8 %71 to i32, !dbg !3072
  %cmp102 = icmp ne i32 %conv101, 1, !dbg !3075
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !3076

if.then104:                                       ; preds = %if.then100
  %72 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3077
  call void @addReplyError(%struct.client* %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0)), !dbg !3079
  br label %cleanup, !dbg !3080

if.end105:                                        ; preds = %if.then100
  br label %if.end106, !dbg !3081

if.end106:                                        ; preds = %if.end105, %land.lhs.true, %for.body87
  %73 = load i32, i32* %j, align 4, !dbg !3082
  %conv107 = zext i32 %73 to i64, !dbg !3082
  %74 = load i64, i64* %checkpoint, align 8, !dbg !3084
  %cmp108 = icmp eq i64 %conv107, %74, !dbg !3085
  br i1 %cmp108, label %land.lhs.true110, label %if.end117, !dbg !3086

land.lhs.true110:                                 ; preds = %if.end106
  %75 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3087
  %call111 = call i64 @hllCount(%struct.hllhdr* %75, i32* null), !dbg !3088
  %76 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3089
  %ptr112 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %76, i32 0, i32 2, !dbg !3090
  %77 = load i8*, i8** %ptr112, align 8, !dbg !3090
  %78 = bitcast i8* %77 to %struct.hllhdr*, !dbg !3089
  %call113 = call i64 @hllCount(%struct.hllhdr* %78, i32* null), !dbg !3091
  %cmp114 = icmp ne i64 %call111, %call113, !dbg !3092
  br i1 %cmp114, label %if.then116, label %if.end117, !dbg !3093

if.then116:                                       ; preds = %land.lhs.true110
  %79 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3094
  call void @addReplyError(%struct.client* %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0)), !dbg !3096
  br label %cleanup, !dbg !3097

if.end117:                                        ; preds = %land.lhs.true110, %if.end106
  %80 = load i32, i32* %j, align 4, !dbg !3098
  %conv118 = zext i32 %80 to i64, !dbg !3098
  %81 = load i64, i64* %checkpoint, align 8, !dbg !3100
  %cmp119 = icmp eq i64 %conv118, %81, !dbg !3101
  br i1 %cmp119, label %if.then121, label %if.end142, !dbg !3102

if.then121:                                       ; preds = %if.end117
  call void @llvm.dbg.declare(metadata i64* %abserr, metadata !3103, metadata !DIExpression()), !dbg !3105
  %82 = load i64, i64* %checkpoint, align 8, !dbg !3106
  %83 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3107
  %call122 = call i64 @hllCount(%struct.hllhdr* %83, i32* null), !dbg !3108
  %sub123 = sub nsw i64 %82, %call122, !dbg !3109
  store i64 %sub123, i64* %abserr, align 8, !dbg !3105
  call void @llvm.dbg.declare(metadata i64* %maxerr, metadata !3110, metadata !DIExpression()), !dbg !3111
  %84 = load double, double* %relerr, align 8, !dbg !3112
  %mul124 = fmul double %84, 6.000000e+00, !dbg !3113
  %85 = load i64, i64* %checkpoint, align 8, !dbg !3114
  %conv125 = sitofp i64 %85 to double, !dbg !3114
  %mul126 = fmul double %mul124, %conv125, !dbg !3115
  %86 = call double @llvm.ceil.f64(double %mul126), !dbg !3116
  %conv127 = fptoui double %86 to i64, !dbg !3116
  store i64 %conv127, i64* %maxerr, align 8, !dbg !3111
  %87 = load i32, i32* %j, align 4, !dbg !3117
  %cmp128 = icmp eq i32 %87, 10, !dbg !3119
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !3120

if.then130:                                       ; preds = %if.then121
  store i64 1, i64* %maxerr, align 8, !dbg !3121
  br label %if.end131, !dbg !3122

if.end131:                                        ; preds = %if.then130, %if.then121
  %88 = load i64, i64* %abserr, align 8, !dbg !3123
  %cmp132 = icmp slt i64 %88, 0, !dbg !3125
  br i1 %cmp132, label %if.then134, label %if.end136, !dbg !3126

if.then134:                                       ; preds = %if.end131
  %89 = load i64, i64* %abserr, align 8, !dbg !3127
  %sub135 = sub nsw i64 0, %89, !dbg !3128
  store i64 %sub135, i64* %abserr, align 8, !dbg !3129
  br label %if.end136, !dbg !3130

if.end136:                                        ; preds = %if.then134, %if.end131
  %90 = load i64, i64* %abserr, align 8, !dbg !3131
  %91 = load i64, i64* %maxerr, align 8, !dbg !3133
  %cmp137 = icmp sgt i64 %90, %91, !dbg !3134
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !3135

if.then139:                                       ; preds = %if.end136
  %92 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3136
  %93 = load i64, i64* %checkpoint, align 8, !dbg !3138
  %94 = load i64, i64* %abserr, align 8, !dbg !3139
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i64 %93, i64 %94), !dbg !3140
  br label %cleanup, !dbg !3141

if.end140:                                        ; preds = %if.end136
  %95 = load i64, i64* %checkpoint, align 8, !dbg !3142
  %mul141 = mul nsw i64 %95, 10, !dbg !3142
  store i64 %mul141, i64* %checkpoint, align 8, !dbg !3142
  br label %if.end142, !dbg !3143

if.end142:                                        ; preds = %if.end140, %if.end117
  br label %for.inc143, !dbg !3144

for.inc143:                                       ; preds = %if.end142
  %96 = load i32, i32* %j, align 4, !dbg !3145
  %inc144 = add i32 %96, 1, !dbg !3145
  store i32 %inc144, i32* %j, align 4, !dbg !3145
  br label %for.cond84, !dbg !3146, !llvm.loop !3147

for.end145:                                       ; preds = %for.cond84
  %97 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3149
  %98 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !3150
  call void @addReply(%struct.client* %97, %struct.redisObject* %98), !dbg !3151
  br label %cleanup, !dbg !3151

cleanup:                                          ; preds = %for.end145, %if.then139, %if.then116, %if.then104, %if.then
  call void @llvm.dbg.label(metadata !3152), !dbg !3153
  %99 = load i8*, i8** %bitcounters, align 8, !dbg !3154
  call void @sdsfree(i8* %99), !dbg !3155
  %100 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3156
  %tobool = icmp ne %struct.redisObject* %100, null, !dbg !3156
  br i1 %tobool, label %if.then146, label %if.end147, !dbg !3158

if.then146:                                       ; preds = %cleanup
  %101 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3159
  call void @decrRefCount(%struct.redisObject* %101), !dbg !3160
  br label %if.end147, !dbg !3160

if.end147:                                        ; preds = %if.then146, %cleanup
  ret void, !dbg !3161
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare dso_local void @decrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @pfdebugCommand(%struct.client* %c) #0 !dbg !3162 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %cmd = alloca i8*, align 8
  %hdr = alloca %struct.hllhdr*, align 8
  %o = alloca %struct.redisObject*, align 8
  %j = alloca i32, align 4
  %val = alloca i8, align 1
  %_p = alloca i8*, align 8
  %_byte = alloca i64, align 8
  %_fb = alloca i64, align 8
  %_fb8 = alloca i64, align 8
  %b0 = alloca i64, align 8
  %b1 = alloca i64, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %decoded = alloca i8*, align 8
  %runlen = alloca i32, align 4
  %regval = alloca i32, align 4
  %encodingstr = alloca [2 x i8*], align 16
  %conv114 = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !3165, metadata !DIExpression()), !dbg !3166
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3167
  %argv = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 10, !dbg !3168
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !3168
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !3167
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3167
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i32 0, i32 2, !dbg !3169
  %3 = load i8*, i8** %ptr, align 8, !dbg !3169
  store i8* %3, i8** %cmd, align 8, !dbg !3166
  call void @llvm.dbg.declare(metadata %struct.hllhdr** %hdr, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !3172, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3174, metadata !DIExpression()), !dbg !3175
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3176
  %db = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 4, !dbg !3177
  %5 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !3177
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3178
  %argv1 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 10, !dbg !3179
  %7 = load %struct.redisObject**, %struct.redisObject*** %argv1, align 8, !dbg !3179
  %arrayidx2 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !3178
  %8 = load %struct.redisObject*, %struct.redisObject** %arrayidx2, align 8, !dbg !3178
  %call = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %5, %struct.redisObject* %8), !dbg !3180
  store %struct.redisObject* %call, %struct.redisObject** %o, align 8, !dbg !3181
  %9 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3182
  %cmp = icmp eq %struct.redisObject* %9, null, !dbg !3184
  br i1 %cmp, label %if.then, label %if.end, !dbg !3185

if.then:                                          ; preds = %entry
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3186
  call void @addReplyError(%struct.client* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)), !dbg !3188
  br label %return, !dbg !3189

if.end:                                           ; preds = %entry
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3190
  %12 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3192
  %call3 = call i32 @isHLLObjectOrReply(%struct.client* %11, %struct.redisObject* %12), !dbg !3193
  %cmp4 = icmp ne i32 %call3, 0, !dbg !3194
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3195

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !3196

if.end6:                                          ; preds = %if.end
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3197
  %db7 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 4, !dbg !3198
  %14 = load %struct.redisDb*, %struct.redisDb** %db7, align 8, !dbg !3198
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3199
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 10, !dbg !3200
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !3200
  %arrayidx9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !3199
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx9, align 8, !dbg !3199
  %18 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3201
  %call10 = call %struct.redisObject* @dbUnshareStringValue(%struct.redisDb* %14, %struct.redisObject* %17, %struct.redisObject* %18), !dbg !3202
  store %struct.redisObject* %call10, %struct.redisObject** %o, align 8, !dbg !3203
  %19 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3204
  %ptr11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i32 0, i32 2, !dbg !3205
  %20 = load i8*, i8** %ptr11, align 8, !dbg !3205
  %21 = bitcast i8* %20 to %struct.hllhdr*, !dbg !3204
  store %struct.hllhdr* %21, %struct.hllhdr** %hdr, align 8, !dbg !3206
  %22 = load i8*, i8** %cmd, align 8, !dbg !3207
  %call12 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !3209
  %tobool = icmp ne i32 %call12, 0, !dbg !3209
  br i1 %tobool, label %if.else, label %if.then13, !dbg !3210

if.then13:                                        ; preds = %if.end6
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3211
  %argc = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 9, !dbg !3214
  %24 = load i32, i32* %argc, align 8, !dbg !3214
  %cmp14 = icmp ne i32 %24, 3, !dbg !3215
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3216

if.then15:                                        ; preds = %if.then13
  br label %arityerr, !dbg !3217

if.end16:                                         ; preds = %if.then13
  %25 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3218
  %encoding = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %25, i32 0, i32 1, !dbg !3220
  %26 = load i8, i8* %encoding, align 1, !dbg !3220
  %conv = zext i8 %26 to i32, !dbg !3218
  %cmp17 = icmp eq i32 %conv, 1, !dbg !3221
  br i1 %cmp17, label %if.then19, label %if.end25, !dbg !3222

if.then19:                                        ; preds = %if.end16
  %27 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3223
  %call20 = call i32 @hllSparseToDense(%struct.redisObject* %27), !dbg !3226
  %cmp21 = icmp eq i32 %call20, -1, !dbg !3227
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !3228

if.then23:                                        ; preds = %if.then19
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3229
  %29 = load i8*, i8** @invalid_hll_err, align 8, !dbg !3231
  call void @addReplyError(%struct.client* %28, i8* %29), !dbg !3232
  br label %return, !dbg !3233

if.end24:                                         ; preds = %if.then19
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3234
  %inc = add nsw i64 %30, 1, !dbg !3234
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3234
  br label %if.end25, !dbg !3235

if.end25:                                         ; preds = %if.end24, %if.end16
  %31 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3236
  %ptr26 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i32 0, i32 2, !dbg !3237
  %32 = load i8*, i8** %ptr26, align 8, !dbg !3237
  %33 = bitcast i8* %32 to %struct.hllhdr*, !dbg !3236
  store %struct.hllhdr* %33, %struct.hllhdr** %hdr, align 8, !dbg !3238
  %34 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3239
  call void @addReplyArrayLen(%struct.client* %34, i64 16384), !dbg !3240
  store i32 0, i32* %j, align 4, !dbg !3241
  br label %for.cond, !dbg !3243

for.cond:                                         ; preds = %for.inc, %if.end25
  %35 = load i32, i32* %j, align 4, !dbg !3244
  %cmp27 = icmp slt i32 %35, 16384, !dbg !3246
  br i1 %cmp27, label %for.body, label %for.end, !dbg !3247

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %val, metadata !3248, metadata !DIExpression()), !dbg !3250
  br label %do.body, !dbg !3251

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %_p, metadata !3252, metadata !DIExpression()), !dbg !3254
  %36 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3254
  %registers = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %36, i32 0, i32 4, !dbg !3254
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %registers, i64 0, i64 0, !dbg !3254
  store i8* %arraydecay, i8** %_p, align 8, !dbg !3254
  call void @llvm.dbg.declare(metadata i64* %_byte, metadata !3255, metadata !DIExpression()), !dbg !3254
  %37 = load i32, i32* %j, align 4, !dbg !3254
  %mul = mul nsw i32 %37, 6, !dbg !3254
  %div = sdiv i32 %mul, 8, !dbg !3254
  %conv29 = sext i32 %div to i64, !dbg !3254
  store i64 %conv29, i64* %_byte, align 8, !dbg !3254
  call void @llvm.dbg.declare(metadata i64* %_fb, metadata !3256, metadata !DIExpression()), !dbg !3254
  %38 = load i32, i32* %j, align 4, !dbg !3254
  %mul30 = mul nsw i32 %38, 6, !dbg !3254
  %and = and i32 %mul30, 7, !dbg !3254
  %conv31 = sext i32 %and to i64, !dbg !3254
  store i64 %conv31, i64* %_fb, align 8, !dbg !3254
  call void @llvm.dbg.declare(metadata i64* %_fb8, metadata !3257, metadata !DIExpression()), !dbg !3254
  %39 = load i64, i64* %_fb, align 8, !dbg !3254
  %sub = sub i64 8, %39, !dbg !3254
  store i64 %sub, i64* %_fb8, align 8, !dbg !3254
  call void @llvm.dbg.declare(metadata i64* %b0, metadata !3258, metadata !DIExpression()), !dbg !3254
  %40 = load i8*, i8** %_p, align 8, !dbg !3254
  %41 = load i64, i64* %_byte, align 8, !dbg !3254
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %41, !dbg !3254
  %42 = load i8, i8* %arrayidx32, align 1, !dbg !3254
  %conv33 = zext i8 %42 to i64, !dbg !3254
  store i64 %conv33, i64* %b0, align 8, !dbg !3254
  call void @llvm.dbg.declare(metadata i64* %b1, metadata !3259, metadata !DIExpression()), !dbg !3254
  %43 = load i8*, i8** %_p, align 8, !dbg !3254
  %44 = load i64, i64* %_byte, align 8, !dbg !3254
  %add = add i64 %44, 1, !dbg !3254
  %arrayidx34 = getelementptr inbounds i8, i8* %43, i64 %add, !dbg !3254
  %45 = load i8, i8* %arrayidx34, align 1, !dbg !3254
  %conv35 = zext i8 %45 to i64, !dbg !3254
  store i64 %conv35, i64* %b1, align 8, !dbg !3254
  %46 = load i64, i64* %b0, align 8, !dbg !3254
  %47 = load i64, i64* %_fb, align 8, !dbg !3254
  %shr = lshr i64 %46, %47, !dbg !3254
  %48 = load i64, i64* %b1, align 8, !dbg !3254
  %49 = load i64, i64* %_fb8, align 8, !dbg !3254
  %shl = shl i64 %48, %49, !dbg !3254
  %or = or i64 %shr, %shl, !dbg !3254
  %and36 = and i64 %or, 63, !dbg !3254
  %conv37 = trunc i64 %and36 to i8, !dbg !3254
  store i8 %conv37, i8* %val, align 1, !dbg !3254
  br label %do.end, !dbg !3254

do.end:                                           ; preds = %do.body
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3260
  %51 = load i8, i8* %val, align 1, !dbg !3261
  %conv38 = zext i8 %51 to i64, !dbg !3261
  call void @addReplyLongLong(%struct.client* %50, i64 %conv38), !dbg !3262
  br label %for.inc, !dbg !3263

for.inc:                                          ; preds = %do.end
  %52 = load i32, i32* %j, align 4, !dbg !3264
  %inc39 = add nsw i32 %52, 1, !dbg !3264
  store i32 %inc39, i32* %j, align 4, !dbg !3264
  br label %for.cond, !dbg !3265, !llvm.loop !3266

for.end:                                          ; preds = %for.cond
  br label %if.end137, !dbg !3268

if.else:                                          ; preds = %if.end6
  %53 = load i8*, i8** %cmd, align 8, !dbg !3269
  %call40 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !3271
  %tobool41 = icmp ne i32 %call40, 0, !dbg !3271
  br i1 %tobool41, label %if.else99, label %if.then42, !dbg !3272

if.then42:                                        ; preds = %if.else
  %54 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3273
  %argc43 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 9, !dbg !3276
  %55 = load i32, i32* %argc43, align 8, !dbg !3276
  %cmp44 = icmp ne i32 %55, 3, !dbg !3277
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !3278

if.then46:                                        ; preds = %if.then42
  br label %arityerr, !dbg !3279

if.end47:                                         ; preds = %if.then42
  call void @llvm.dbg.declare(metadata i8** %p, metadata !3280, metadata !DIExpression()), !dbg !3281
  %56 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3282
  %ptr48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i32 0, i32 2, !dbg !3283
  %57 = load i8*, i8** %ptr48, align 8, !dbg !3283
  store i8* %57, i8** %p, align 8, !dbg !3281
  call void @llvm.dbg.declare(metadata i8** %end, metadata !3284, metadata !DIExpression()), !dbg !3285
  %58 = load i8*, i8** %p, align 8, !dbg !3286
  %59 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3287
  %ptr49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %59, i32 0, i32 2, !dbg !3288
  %60 = load i8*, i8** %ptr49, align 8, !dbg !3288
  %call50 = call i64 @sdslen(i8* %60), !dbg !3289
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %call50, !dbg !3290
  store i8* %add.ptr, i8** %end, align 8, !dbg !3285
  call void @llvm.dbg.declare(metadata i8** %decoded, metadata !3291, metadata !DIExpression()), !dbg !3292
  %call51 = call i8* @sdsempty(), !dbg !3293
  store i8* %call51, i8** %decoded, align 8, !dbg !3292
  %61 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3294
  %encoding52 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %61, i32 0, i32 1, !dbg !3296
  %62 = load i8, i8* %encoding52, align 1, !dbg !3296
  %conv53 = zext i8 %62 to i32, !dbg !3294
  %cmp54 = icmp ne i32 %conv53, 1, !dbg !3297
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !3298

if.then56:                                        ; preds = %if.end47
  %63 = load i8*, i8** %decoded, align 8, !dbg !3299
  call void @sdsfree(i8* %63), !dbg !3301
  %64 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3302
  call void @addReplyError(%struct.client* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)), !dbg !3303
  br label %return, !dbg !3304

if.end57:                                         ; preds = %if.end47
  %65 = load i8*, i8** %p, align 8, !dbg !3305
  %add.ptr58 = getelementptr inbounds i8, i8* %65, i64 16, !dbg !3305
  store i8* %add.ptr58, i8** %p, align 8, !dbg !3305
  br label %while.cond, !dbg !3306

while.cond:                                       ; preds = %if.end96, %if.end57
  %66 = load i8*, i8** %p, align 8, !dbg !3307
  %67 = load i8*, i8** %end, align 8, !dbg !3308
  %cmp59 = icmp ult i8* %66, %67, !dbg !3309
  br i1 %cmp59, label %while.body, label %while.end, !dbg !3306

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %runlen, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !3313, metadata !DIExpression()), !dbg !3314
  %68 = load i8*, i8** %p, align 8, !dbg !3315
  %69 = load i8, i8* %68, align 1, !dbg !3315
  %conv61 = zext i8 %69 to i32, !dbg !3315
  %and62 = and i32 %conv61, 192, !dbg !3315
  %cmp63 = icmp eq i32 %and62, 0, !dbg !3315
  br i1 %cmp63, label %if.then65, label %if.else70, !dbg !3317

if.then65:                                        ; preds = %while.body
  %70 = load i8*, i8** %p, align 8, !dbg !3318
  %71 = load i8, i8* %70, align 1, !dbg !3318
  %conv66 = zext i8 %71 to i32, !dbg !3318
  %and67 = and i32 %conv66, 63, !dbg !3318
  %add68 = add nsw i32 %and67, 1, !dbg !3318
  store i32 %add68, i32* %runlen, align 4, !dbg !3320
  %72 = load i8*, i8** %p, align 8, !dbg !3321
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 1, !dbg !3321
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !3321
  %73 = load i8*, i8** %decoded, align 8, !dbg !3322
  %74 = load i32, i32* %runlen, align 4, !dbg !3323
  %call69 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %74), !dbg !3324
  store i8* %call69, i8** %decoded, align 8, !dbg !3325
  br label %if.end96, !dbg !3326

if.else70:                                        ; preds = %while.body
  %75 = load i8*, i8** %p, align 8, !dbg !3327
  %76 = load i8, i8* %75, align 1, !dbg !3327
  %conv71 = zext i8 %76 to i32, !dbg !3327
  %and72 = and i32 %conv71, 192, !dbg !3327
  %cmp73 = icmp eq i32 %and72, 64, !dbg !3327
  br i1 %cmp73, label %if.then75, label %if.else85, !dbg !3329

if.then75:                                        ; preds = %if.else70
  %77 = load i8*, i8** %p, align 8, !dbg !3330
  %78 = load i8, i8* %77, align 1, !dbg !3330
  %conv76 = zext i8 %78 to i32, !dbg !3330
  %and77 = and i32 %conv76, 63, !dbg !3330
  %shl78 = shl i32 %and77, 8, !dbg !3330
  %79 = load i8*, i8** %p, align 8, !dbg !3330
  %add.ptr79 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3330
  %80 = load i8, i8* %add.ptr79, align 1, !dbg !3330
  %conv80 = zext i8 %80 to i32, !dbg !3330
  %or81 = or i32 %shl78, %conv80, !dbg !3330
  %add82 = add nsw i32 %or81, 1, !dbg !3330
  store i32 %add82, i32* %runlen, align 4, !dbg !3332
  %81 = load i8*, i8** %p, align 8, !dbg !3333
  %add.ptr83 = getelementptr inbounds i8, i8* %81, i64 2, !dbg !3333
  store i8* %add.ptr83, i8** %p, align 8, !dbg !3333
  %82 = load i8*, i8** %decoded, align 8, !dbg !3334
  %83 = load i32, i32* %runlen, align 4, !dbg !3335
  %call84 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %83), !dbg !3336
  store i8* %call84, i8** %decoded, align 8, !dbg !3337
  br label %if.end95, !dbg !3338

if.else85:                                        ; preds = %if.else70
  %84 = load i8*, i8** %p, align 8, !dbg !3339
  %85 = load i8, i8* %84, align 1, !dbg !3339
  %conv86 = zext i8 %85 to i32, !dbg !3339
  %and87 = and i32 %conv86, 3, !dbg !3339
  %add88 = add nsw i32 %and87, 1, !dbg !3339
  store i32 %add88, i32* %runlen, align 4, !dbg !3341
  %86 = load i8*, i8** %p, align 8, !dbg !3342
  %87 = load i8, i8* %86, align 1, !dbg !3342
  %conv89 = zext i8 %87 to i32, !dbg !3342
  %shr90 = ashr i32 %conv89, 2, !dbg !3342
  %and91 = and i32 %shr90, 31, !dbg !3342
  %add92 = add nsw i32 %and91, 1, !dbg !3342
  store i32 %add92, i32* %regval, align 4, !dbg !3343
  %88 = load i8*, i8** %p, align 8, !dbg !3344
  %incdec.ptr93 = getelementptr inbounds i8, i8* %88, i32 1, !dbg !3344
  store i8* %incdec.ptr93, i8** %p, align 8, !dbg !3344
  %89 = load i8*, i8** %decoded, align 8, !dbg !3345
  %90 = load i32, i32* %regval, align 4, !dbg !3346
  %91 = load i32, i32* %runlen, align 4, !dbg !3347
  %call94 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %90, i32 %91), !dbg !3348
  store i8* %call94, i8** %decoded, align 8, !dbg !3349
  br label %if.end95

if.end95:                                         ; preds = %if.else85, %if.then75
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.then65
  br label %while.cond, !dbg !3306, !llvm.loop !3350

while.end:                                        ; preds = %while.cond
  %92 = load i8*, i8** %decoded, align 8, !dbg !3352
  %call97 = call i8* @sdstrim(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)), !dbg !3353
  store i8* %call97, i8** %decoded, align 8, !dbg !3354
  %93 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3355
  %94 = load i8*, i8** %decoded, align 8, !dbg !3356
  %95 = load i8*, i8** %decoded, align 8, !dbg !3357
  %call98 = call i64 @sdslen(i8* %95), !dbg !3358
  call void @addReplyBulkCBuffer(%struct.client* %93, i8* %94, i64 %call98), !dbg !3359
  %96 = load i8*, i8** %decoded, align 8, !dbg !3360
  call void @sdsfree(i8* %96), !dbg !3361
  br label %if.end136, !dbg !3362

if.else99:                                        ; preds = %if.else
  %97 = load i8*, i8** %cmd, align 8, !dbg !3363
  %call100 = call i32 @strcasecmp(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !3365
  %tobool101 = icmp ne i32 %call100, 0, !dbg !3365
  br i1 %tobool101, label %if.else110, label %if.then102, !dbg !3366

if.then102:                                       ; preds = %if.else99
  call void @llvm.dbg.declare(metadata [2 x i8*]* %encodingstr, metadata !3367, metadata !DIExpression()), !dbg !3370
  %98 = bitcast [2 x i8*]* %encodingstr to i8*, !dbg !3370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %98, i8* align 16 bitcast ([2 x i8*]* @__const.pfdebugCommand.encodingstr to i8*), i64 16, i1 false), !dbg !3370
  %99 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3371
  %argc103 = getelementptr inbounds %struct.client, %struct.client* %99, i32 0, i32 9, !dbg !3373
  %100 = load i32, i32* %argc103, align 8, !dbg !3373
  %cmp104 = icmp ne i32 %100, 3, !dbg !3374
  br i1 %cmp104, label %if.then106, label %if.end107, !dbg !3375

if.then106:                                       ; preds = %if.then102
  br label %arityerr, !dbg !3376

if.end107:                                        ; preds = %if.then102
  %101 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3377
  %102 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3378
  %encoding108 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %102, i32 0, i32 1, !dbg !3379
  %103 = load i8, i8* %encoding108, align 1, !dbg !3379
  %idxprom = zext i8 %103 to i64, !dbg !3380
  %arrayidx109 = getelementptr inbounds [2 x i8*], [2 x i8*]* %encodingstr, i64 0, i64 %idxprom, !dbg !3380
  %104 = load i8*, i8** %arrayidx109, align 8, !dbg !3380
  call void @addReplyStatus(%struct.client* %101, i8* %104), !dbg !3381
  br label %if.end135, !dbg !3382

if.else110:                                       ; preds = %if.else99
  %105 = load i8*, i8** %cmd, align 8, !dbg !3383
  %call111 = call i32 @strcasecmp(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !3385
  %tobool112 = icmp ne i32 %call111, 0, !dbg !3385
  br i1 %tobool112, label %if.else133, label %if.then113, !dbg !3386

if.then113:                                       ; preds = %if.else110
  call void @llvm.dbg.declare(metadata i32* %conv114, metadata !3387, metadata !DIExpression()), !dbg !3389
  store i32 0, i32* %conv114, align 4, !dbg !3389
  %106 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3390
  %argc115 = getelementptr inbounds %struct.client, %struct.client* %106, i32 0, i32 9, !dbg !3392
  %107 = load i32, i32* %argc115, align 8, !dbg !3392
  %cmp116 = icmp ne i32 %107, 3, !dbg !3393
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !3394

if.then118:                                       ; preds = %if.then113
  br label %arityerr, !dbg !3395

if.end119:                                        ; preds = %if.then113
  %108 = load %struct.hllhdr*, %struct.hllhdr** %hdr, align 8, !dbg !3396
  %encoding120 = getelementptr inbounds %struct.hllhdr, %struct.hllhdr* %108, i32 0, i32 1, !dbg !3398
  %109 = load i8, i8* %encoding120, align 1, !dbg !3398
  %conv121 = zext i8 %109 to i32, !dbg !3396
  %cmp122 = icmp eq i32 %conv121, 1, !dbg !3399
  br i1 %cmp122, label %if.then124, label %if.end131, !dbg !3400

if.then124:                                       ; preds = %if.end119
  %110 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !3401
  %call125 = call i32 @hllSparseToDense(%struct.redisObject* %110), !dbg !3404
  %cmp126 = icmp eq i32 %call125, -1, !dbg !3405
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !3406

if.then128:                                       ; preds = %if.then124
  %111 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3407
  %112 = load i8*, i8** @invalid_hll_err, align 8, !dbg !3409
  call void @addReplyError(%struct.client* %111, i8* %112), !dbg !3410
  br label %return, !dbg !3411

if.end129:                                        ; preds = %if.then124
  store i32 1, i32* %conv114, align 4, !dbg !3412
  %113 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3413
  %inc130 = add nsw i64 %113, 1, !dbg !3413
  store i64 %inc130, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3413
  br label %if.end131, !dbg !3414

if.end131:                                        ; preds = %if.end129, %if.end119
  %114 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3415
  %115 = load i32, i32* %conv114, align 4, !dbg !3416
  %tobool132 = icmp ne i32 %115, 0, !dbg !3416
  br i1 %tobool132, label %cond.true, label %cond.false, !dbg !3416

cond.true:                                        ; preds = %if.end131
  %116 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !3417
  br label %cond.end, !dbg !3416

cond.false:                                       ; preds = %if.end131
  %117 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !3418
  br label %cond.end, !dbg !3416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.redisObject* [ %116, %cond.true ], [ %117, %cond.false ], !dbg !3416
  call void @addReply(%struct.client* %114, %struct.redisObject* %cond), !dbg !3419
  br label %if.end134, !dbg !3420

if.else133:                                       ; preds = %if.else110
  %118 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3421
  %119 = load i8*, i8** %cmd, align 8, !dbg !3423
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %119), !dbg !3424
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %cond.end
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end107
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %while.end
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %for.end
  br label %return, !dbg !3425

arityerr:                                         ; preds = %if.then118, %if.then106, %if.then46, %if.then15
  call void @llvm.dbg.label(metadata !3426), !dbg !3427
  %120 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3428
  %121 = load i8*, i8** %cmd, align 8, !dbg !3429
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i8* %121), !dbg !3430
  br label %return, !dbg !3431

return:                                           ; preds = %arityerr, %if.end137, %if.then128, %if.then56, %if.then23, %if.then5, %if.then
  ret void, !dbg !3431
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #6

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #2

declare dso_local i8* @sdsempty() #2

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #2

declare dso_local i8* @sdstrim(i8*, i8*) #2

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyStatus(%struct.client*, i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "invalid_hll_err", scope: !2, file: !3, line: 208, type: !96, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !139, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "hyperloglog.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5, !15, !36, !42, !48}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./connection.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!10 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!11 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!12 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!13 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!14 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2116, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!18 = !DIEnumerator(name: "COMMAND_GROUP_GENERIC", value: 0)
!19 = !DIEnumerator(name: "COMMAND_GROUP_STRING", value: 1)
!20 = !DIEnumerator(name: "COMMAND_GROUP_LIST", value: 2)
!21 = !DIEnumerator(name: "COMMAND_GROUP_SET", value: 3)
!22 = !DIEnumerator(name: "COMMAND_GROUP_SORTED_SET", value: 4)
!23 = !DIEnumerator(name: "COMMAND_GROUP_HASH", value: 5)
!24 = !DIEnumerator(name: "COMMAND_GROUP_PUBSUB", value: 6)
!25 = !DIEnumerator(name: "COMMAND_GROUP_TRANSACTIONS", value: 7)
!26 = !DIEnumerator(name: "COMMAND_GROUP_CONNECTION", value: 8)
!27 = !DIEnumerator(name: "COMMAND_GROUP_SERVER", value: 9)
!28 = !DIEnumerator(name: "COMMAND_GROUP_SCRIPTING", value: 10)
!29 = !DIEnumerator(name: "COMMAND_GROUP_HYPERLOGLOG", value: 11)
!30 = !DIEnumerator(name: "COMMAND_GROUP_CLUSTER", value: 12)
!31 = !DIEnumerator(name: "COMMAND_GROUP_SENTINEL", value: 13)
!32 = !DIEnumerator(name: "COMMAND_GROUP_GEO", value: 14)
!33 = !DIEnumerator(name: "COMMAND_GROUP_STREAM", value: 15)
!34 = !DIEnumerator(name: "COMMAND_GROUP_BITMAP", value: 16)
!35 = !DIEnumerator(name: "COMMAND_GROUP_MODULE", value: 17)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1989, baseType: !7, size: 32, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "KSPEC_BS_INVALID", value: 0)
!39 = !DIEnumerator(name: "KSPEC_BS_UNKNOWN", value: 1)
!40 = !DIEnumerator(name: "KSPEC_BS_INDEX", value: 2)
!41 = !DIEnumerator(name: "KSPEC_BS_KEYWORD", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 1997, baseType: !7, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "KSPEC_FK_INVALID", value: 0)
!45 = !DIEnumerator(name: "KSPEC_FK_UNKNOWN", value: 1)
!46 = !DIEnumerator(name: "KSPEC_FK_RANGE", value: 2)
!47 = !DIEnumerator(name: "KSPEC_FK_KEYNUM", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 2054, baseType: !7, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "ARG_TYPE_STRING", value: 0)
!51 = !DIEnumerator(name: "ARG_TYPE_INTEGER", value: 1)
!52 = !DIEnumerator(name: "ARG_TYPE_DOUBLE", value: 2)
!53 = !DIEnumerator(name: "ARG_TYPE_KEY", value: 3)
!54 = !DIEnumerator(name: "ARG_TYPE_PATTERN", value: 4)
!55 = !DIEnumerator(name: "ARG_TYPE_UNIX_TIME", value: 5)
!56 = !DIEnumerator(name: "ARG_TYPE_PURE_TOKEN", value: 6)
!57 = !DIEnumerator(name: "ARG_TYPE_ONEOF", value: 7)
!58 = !DIEnumerator(name: "ARG_TYPE_BLOCK", value: 8)
!59 = !{!60, !67, !68, !71, !72, !73, !94, !97, !98, !99, !100, !104, !105, !113, !123, !132}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !63, line: 24, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !65, line: 38, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !63, line: 27, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !65, line: 45, baseType: !70)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hllhdr", file: !3, line: 182, size: 128, elements: !75)
!75 = !{!76, !81, !82, !86, !90}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !74, file: !3, line: 183, baseType: !77, size: 32)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !79)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!79 = !{!80}
!80 = !DISubrange(count: 4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !74, file: !3, line: 184, baseType: !62, size: 8, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "notused", scope: !74, file: !3, line: 185, baseType: !83, size: 24, offset: 40)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 24, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 3)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !74, file: !3, line: 186, baseType: !87, size: 64, offset: 64)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 8)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "registers", scope: !74, file: !3, line: 187, baseType: !91, offset: 128)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: -1)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !95, line: 43, baseType: !96)
!95 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!97 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !101, line: 27, baseType: !102)
!101 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !65, line: 44, baseType: !103)
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !95, line: 51, size: 24, elements: !107)
!107 = !{!108, !109, !110, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !95, line: 52, baseType: !62, size: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !106, file: !95, line: 53, baseType: !62, size: 8, offset: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !95, line: 54, baseType: !66, size: 8, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !106, file: !95, line: 55, baseType: !112, offset: 24)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !92)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !95, line: 57, size: 40, elements: !115)
!115 = !{!116, !120, !121, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !114, file: !95, line: 58, baseType: !117, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !63, line: 25, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !65, line: 40, baseType: !119)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !114, file: !95, line: 59, baseType: !117, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !95, line: 60, baseType: !66, size: 8, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !114, file: !95, line: 61, baseType: !112, offset: 40)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !95, line: 63, size: 72, elements: !125)
!125 = !{!126, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !124, file: !95, line: 64, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 26, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !65, line: 42, baseType: !7)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !124, file: !95, line: 65, baseType: !127, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !95, line: 66, baseType: !66, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !124, file: !95, line: 67, baseType: !112, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !95, line: 69, size: 136, elements: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !133, file: !95, line: 70, baseType: !68, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !133, file: !95, line: 71, baseType: !68, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !95, line: 72, baseType: !66, size: 8, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !133, file: !95, line: 73, baseType: !112, offset: 136)
!139 = !{!0}
!140 = !{i32 7, !"Dwarf Version", i32 4}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 4}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!146 = distinct !DISubprogram(name: "MurmurHash64A", scope: !3, file: !3, line: 397, type: !147, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!147 = !DISubroutineType(types: !148)
!148 = !{!68, !149, !71, !7}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!151 = !{}
!152 = !DILocalVariable(name: "key", arg: 1, scope: !146, file: !3, line: 397, type: !149)
!153 = !DILocation(line: 397, column: 38, scope: !146)
!154 = !DILocalVariable(name: "len", arg: 2, scope: !146, file: !3, line: 397, type: !71)
!155 = !DILocation(line: 397, column: 47, scope: !146)
!156 = !DILocalVariable(name: "seed", arg: 3, scope: !146, file: !3, line: 397, type: !7)
!157 = !DILocation(line: 397, column: 65, scope: !146)
!158 = !DILocalVariable(name: "m", scope: !146, file: !3, line: 398, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!160 = !DILocation(line: 398, column: 20, scope: !146)
!161 = !DILocalVariable(name: "r", scope: !146, file: !3, line: 399, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!163 = !DILocation(line: 399, column: 15, scope: !146)
!164 = !DILocalVariable(name: "h", scope: !146, file: !3, line: 400, type: !68)
!165 = !DILocation(line: 400, column: 14, scope: !146)
!166 = !DILocation(line: 400, column: 18, scope: !146)
!167 = !DILocation(line: 400, column: 26, scope: !146)
!168 = !DILocation(line: 400, column: 30, scope: !146)
!169 = !DILocation(line: 400, column: 23, scope: !146)
!170 = !DILocalVariable(name: "data", scope: !146, file: !3, line: 401, type: !60)
!171 = !DILocation(line: 401, column: 20, scope: !146)
!172 = !DILocation(line: 401, column: 44, scope: !146)
!173 = !DILocalVariable(name: "end", scope: !146, file: !3, line: 402, type: !60)
!174 = !DILocation(line: 402, column: 20, scope: !146)
!175 = !DILocation(line: 402, column: 26, scope: !146)
!176 = !DILocation(line: 402, column: 34, scope: !146)
!177 = !DILocation(line: 402, column: 39, scope: !146)
!178 = !DILocation(line: 402, column: 42, scope: !146)
!179 = !DILocation(line: 402, column: 37, scope: !146)
!180 = !DILocation(line: 402, column: 31, scope: !146)
!181 = !DILocation(line: 404, column: 5, scope: !146)
!182 = !DILocation(line: 404, column: 11, scope: !146)
!183 = !DILocation(line: 404, column: 19, scope: !146)
!184 = !DILocation(line: 404, column: 16, scope: !146)
!185 = !DILocalVariable(name: "k", scope: !186, file: !3, line: 405, type: !68)
!186 = distinct !DILexicalBlock(scope: !146, file: !3, line: 404, column: 24)
!187 = !DILocation(line: 405, column: 18, scope: !186)
!188 = !DILocation(line: 411, column: 26, scope: !186)
!189 = !DILocation(line: 411, column: 13, scope: !186)
!190 = !DILocation(line: 411, column: 11, scope: !186)
!191 = !DILocation(line: 424, column: 11, scope: !186)
!192 = !DILocation(line: 425, column: 14, scope: !186)
!193 = !DILocation(line: 425, column: 16, scope: !186)
!194 = !DILocation(line: 425, column: 11, scope: !186)
!195 = !DILocation(line: 426, column: 11, scope: !186)
!196 = !DILocation(line: 427, column: 14, scope: !186)
!197 = !DILocation(line: 427, column: 11, scope: !186)
!198 = !DILocation(line: 428, column: 11, scope: !186)
!199 = !DILocation(line: 429, column: 14, scope: !186)
!200 = distinct !{!200, !181, !201, !202}
!201 = !DILocation(line: 430, column: 5, scope: !146)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 432, column: 12, scope: !146)
!204 = !DILocation(line: 432, column: 16, scope: !146)
!205 = !DILocation(line: 432, column: 5, scope: !146)
!206 = !DILocation(line: 433, column: 28, scope: !207)
!207 = distinct !DILexicalBlock(scope: !146, file: !3, line: 432, column: 21)
!208 = !DILocation(line: 433, column: 18, scope: !207)
!209 = !DILocation(line: 433, column: 36, scope: !207)
!210 = !DILocation(line: 433, column: 15, scope: !207)
!211 = !DILocation(line: 433, column: 13, scope: !207)
!212 = !DILocation(line: 434, column: 28, scope: !207)
!213 = !DILocation(line: 434, column: 18, scope: !207)
!214 = !DILocation(line: 434, column: 36, scope: !207)
!215 = !DILocation(line: 434, column: 15, scope: !207)
!216 = !DILocation(line: 434, column: 13, scope: !207)
!217 = !DILocation(line: 435, column: 28, scope: !207)
!218 = !DILocation(line: 435, column: 18, scope: !207)
!219 = !DILocation(line: 435, column: 36, scope: !207)
!220 = !DILocation(line: 435, column: 15, scope: !207)
!221 = !DILocation(line: 435, column: 13, scope: !207)
!222 = !DILocation(line: 436, column: 28, scope: !207)
!223 = !DILocation(line: 436, column: 18, scope: !207)
!224 = !DILocation(line: 436, column: 36, scope: !207)
!225 = !DILocation(line: 436, column: 15, scope: !207)
!226 = !DILocation(line: 436, column: 13, scope: !207)
!227 = !DILocation(line: 437, column: 28, scope: !207)
!228 = !DILocation(line: 437, column: 18, scope: !207)
!229 = !DILocation(line: 437, column: 36, scope: !207)
!230 = !DILocation(line: 437, column: 15, scope: !207)
!231 = !DILocation(line: 437, column: 13, scope: !207)
!232 = !DILocation(line: 438, column: 28, scope: !207)
!233 = !DILocation(line: 438, column: 18, scope: !207)
!234 = !DILocation(line: 438, column: 36, scope: !207)
!235 = !DILocation(line: 438, column: 15, scope: !207)
!236 = !DILocation(line: 438, column: 13, scope: !207)
!237 = !DILocation(line: 439, column: 28, scope: !207)
!238 = !DILocation(line: 439, column: 18, scope: !207)
!239 = !DILocation(line: 439, column: 15, scope: !207)
!240 = !DILocation(line: 440, column: 15, scope: !207)
!241 = !DILocation(line: 441, column: 5, scope: !207)
!242 = !DILocation(line: 443, column: 10, scope: !146)
!243 = !DILocation(line: 443, column: 12, scope: !146)
!244 = !DILocation(line: 443, column: 7, scope: !146)
!245 = !DILocation(line: 444, column: 7, scope: !146)
!246 = !DILocation(line: 445, column: 10, scope: !146)
!247 = !DILocation(line: 445, column: 12, scope: !146)
!248 = !DILocation(line: 445, column: 7, scope: !146)
!249 = !DILocation(line: 446, column: 12, scope: !146)
!250 = !DILocation(line: 446, column: 5, scope: !146)
!251 = distinct !DISubprogram(name: "hllPatLen", scope: !3, file: !3, line: 452, type: !252, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!252 = !DISubroutineType(types: !253)
!253 = !{!71, !99, !254, !256}
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !255, line: 46, baseType: !70)
!255 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!257 = !DILocalVariable(name: "ele", arg: 1, scope: !251, file: !3, line: 452, type: !99)
!258 = !DILocation(line: 452, column: 30, scope: !251)
!259 = !DILocalVariable(name: "elesize", arg: 2, scope: !251, file: !3, line: 452, type: !254)
!260 = !DILocation(line: 452, column: 42, scope: !251)
!261 = !DILocalVariable(name: "regp", arg: 3, scope: !251, file: !3, line: 452, type: !256)
!262 = !DILocation(line: 452, column: 57, scope: !251)
!263 = !DILocalVariable(name: "hash", scope: !251, file: !3, line: 453, type: !68)
!264 = !DILocation(line: 453, column: 14, scope: !251)
!265 = !DILocalVariable(name: "bit", scope: !251, file: !3, line: 453, type: !68)
!266 = !DILocation(line: 453, column: 20, scope: !251)
!267 = !DILocalVariable(name: "index", scope: !251, file: !3, line: 453, type: !68)
!268 = !DILocation(line: 453, column: 25, scope: !251)
!269 = !DILocalVariable(name: "count", scope: !251, file: !3, line: 454, type: !71)
!270 = !DILocation(line: 454, column: 9, scope: !251)
!271 = !DILocation(line: 467, column: 26, scope: !251)
!272 = !DILocation(line: 467, column: 30, scope: !251)
!273 = !DILocation(line: 467, column: 12, scope: !251)
!274 = !DILocation(line: 467, column: 10, scope: !251)
!275 = !DILocation(line: 468, column: 13, scope: !251)
!276 = !DILocation(line: 468, column: 18, scope: !251)
!277 = !DILocation(line: 468, column: 11, scope: !251)
!278 = !DILocation(line: 469, column: 10, scope: !251)
!279 = !DILocation(line: 470, column: 10, scope: !251)
!280 = !DILocation(line: 472, column: 9, scope: !251)
!281 = !DILocation(line: 473, column: 11, scope: !251)
!282 = !DILocation(line: 474, column: 5, scope: !251)
!283 = !DILocation(line: 474, column: 12, scope: !251)
!284 = !DILocation(line: 474, column: 19, scope: !251)
!285 = !DILocation(line: 474, column: 17, scope: !251)
!286 = !DILocation(line: 474, column: 24, scope: !251)
!287 = !DILocation(line: 475, column: 14, scope: !288)
!288 = distinct !DILexicalBlock(scope: !251, file: !3, line: 474, column: 30)
!289 = !DILocation(line: 476, column: 13, scope: !288)
!290 = distinct !{!290, !282, !291, !202}
!291 = !DILocation(line: 477, column: 5, scope: !251)
!292 = !DILocation(line: 478, column: 19, scope: !251)
!293 = !DILocation(line: 478, column: 13, scope: !251)
!294 = !DILocation(line: 478, column: 6, scope: !251)
!295 = !DILocation(line: 478, column: 11, scope: !251)
!296 = !DILocation(line: 479, column: 12, scope: !251)
!297 = !DILocation(line: 479, column: 5, scope: !251)
!298 = distinct !DISubprogram(name: "hllDenseSet", scope: !3, file: !3, line: 494, type: !299, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!299 = !DISubroutineType(types: !300)
!300 = !{!71, !72, !103, !62}
!301 = !DILocalVariable(name: "registers", arg: 1, scope: !298, file: !3, line: 494, type: !72)
!302 = !DILocation(line: 494, column: 26, scope: !298)
!303 = !DILocalVariable(name: "index", arg: 2, scope: !298, file: !3, line: 494, type: !103)
!304 = !DILocation(line: 494, column: 42, scope: !298)
!305 = !DILocalVariable(name: "count", arg: 3, scope: !298, file: !3, line: 494, type: !62)
!306 = !DILocation(line: 494, column: 57, scope: !298)
!307 = !DILocalVariable(name: "oldcount", scope: !298, file: !3, line: 495, type: !62)
!308 = !DILocation(line: 495, column: 13, scope: !298)
!309 = !DILocation(line: 497, column: 5, scope: !298)
!310 = !DILocalVariable(name: "_p", scope: !311, file: !3, line: 497, type: !72)
!311 = distinct !DILexicalBlock(scope: !298, file: !3, line: 497, column: 5)
!312 = !DILocation(line: 497, column: 5, scope: !311)
!313 = !DILocalVariable(name: "_byte", scope: !311, file: !3, line: 497, type: !70)
!314 = !DILocalVariable(name: "_fb", scope: !311, file: !3, line: 497, type: !70)
!315 = !DILocalVariable(name: "_fb8", scope: !311, file: !3, line: 497, type: !70)
!316 = !DILocalVariable(name: "b0", scope: !311, file: !3, line: 497, type: !70)
!317 = !DILocalVariable(name: "b1", scope: !311, file: !3, line: 497, type: !70)
!318 = !DILocation(line: 498, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !298, file: !3, line: 498, column: 9)
!320 = !DILocation(line: 498, column: 17, scope: !319)
!321 = !DILocation(line: 498, column: 15, scope: !319)
!322 = !DILocation(line: 498, column: 9, scope: !298)
!323 = !DILocation(line: 499, column: 9, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !3, line: 498, column: 27)
!325 = !DILocalVariable(name: "_p", scope: !326, file: !3, line: 499, type: !72)
!326 = distinct !DILexicalBlock(scope: !324, file: !3, line: 499, column: 9)
!327 = !DILocation(line: 499, column: 9, scope: !326)
!328 = !DILocalVariable(name: "_byte", scope: !326, file: !3, line: 499, type: !70)
!329 = !DILocalVariable(name: "_fb", scope: !326, file: !3, line: 499, type: !70)
!330 = !DILocalVariable(name: "_fb8", scope: !326, file: !3, line: 499, type: !70)
!331 = !DILocalVariable(name: "_v", scope: !326, file: !3, line: 499, type: !70)
!332 = !DILocation(line: 500, column: 9, scope: !324)
!333 = !DILocation(line: 502, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !319, file: !3, line: 501, column: 12)
!335 = !DILocation(line: 504, column: 1, scope: !298)
!336 = distinct !DISubprogram(name: "hllDenseAdd", scope: !3, file: !3, line: 512, type: !337, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!337 = !DISubroutineType(types: !338)
!338 = !{!71, !72, !99, !254}
!339 = !DILocalVariable(name: "registers", arg: 1, scope: !336, file: !3, line: 512, type: !72)
!340 = !DILocation(line: 512, column: 26, scope: !336)
!341 = !DILocalVariable(name: "ele", arg: 2, scope: !336, file: !3, line: 512, type: !99)
!342 = !DILocation(line: 512, column: 52, scope: !336)
!343 = !DILocalVariable(name: "elesize", arg: 3, scope: !336, file: !3, line: 512, type: !254)
!344 = !DILocation(line: 512, column: 64, scope: !336)
!345 = !DILocalVariable(name: "index", scope: !336, file: !3, line: 513, type: !103)
!346 = !DILocation(line: 513, column: 10, scope: !336)
!347 = !DILocalVariable(name: "count", scope: !336, file: !3, line: 514, type: !62)
!348 = !DILocation(line: 514, column: 13, scope: !336)
!349 = !DILocation(line: 514, column: 31, scope: !336)
!350 = !DILocation(line: 514, column: 35, scope: !336)
!351 = !DILocation(line: 514, column: 21, scope: !336)
!352 = !DILocation(line: 516, column: 24, scope: !336)
!353 = !DILocation(line: 516, column: 34, scope: !336)
!354 = !DILocation(line: 516, column: 40, scope: !336)
!355 = !DILocation(line: 516, column: 12, scope: !336)
!356 = !DILocation(line: 516, column: 5, scope: !336)
!357 = distinct !DISubprogram(name: "hllDenseRegHisto", scope: !3, file: !3, line: 520, type: !358, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !72, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!361 = !DILocalVariable(name: "registers", arg: 1, scope: !357, file: !3, line: 520, type: !72)
!362 = !DILocation(line: 520, column: 32, scope: !357)
!363 = !DILocalVariable(name: "reghisto", arg: 2, scope: !357, file: !3, line: 520, type: !360)
!364 = !DILocation(line: 520, column: 48, scope: !357)
!365 = !DILocalVariable(name: "j", scope: !357, file: !3, line: 521, type: !71)
!366 = !DILocation(line: 521, column: 9, scope: !357)
!367 = !DILocalVariable(name: "r", scope: !368, file: !3, line: 527, type: !72)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 526, column: 50)
!369 = distinct !DILexicalBlock(scope: !357, file: !3, line: 526, column: 9)
!370 = !DILocation(line: 527, column: 18, scope: !368)
!371 = !DILocation(line: 527, column: 22, scope: !368)
!372 = !DILocalVariable(name: "r0", scope: !368, file: !3, line: 528, type: !70)
!373 = !DILocation(line: 528, column: 23, scope: !368)
!374 = !DILocalVariable(name: "r1", scope: !368, file: !3, line: 528, type: !70)
!375 = !DILocation(line: 528, column: 27, scope: !368)
!376 = !DILocalVariable(name: "r2", scope: !368, file: !3, line: 528, type: !70)
!377 = !DILocation(line: 528, column: 31, scope: !368)
!378 = !DILocalVariable(name: "r3", scope: !368, file: !3, line: 528, type: !70)
!379 = !DILocation(line: 528, column: 35, scope: !368)
!380 = !DILocalVariable(name: "r4", scope: !368, file: !3, line: 528, type: !70)
!381 = !DILocation(line: 528, column: 39, scope: !368)
!382 = !DILocalVariable(name: "r5", scope: !368, file: !3, line: 528, type: !70)
!383 = !DILocation(line: 528, column: 43, scope: !368)
!384 = !DILocalVariable(name: "r6", scope: !368, file: !3, line: 528, type: !70)
!385 = !DILocation(line: 528, column: 47, scope: !368)
!386 = !DILocalVariable(name: "r7", scope: !368, file: !3, line: 528, type: !70)
!387 = !DILocation(line: 528, column: 51, scope: !368)
!388 = !DILocalVariable(name: "r8", scope: !368, file: !3, line: 528, type: !70)
!389 = !DILocation(line: 528, column: 55, scope: !368)
!390 = !DILocalVariable(name: "r9", scope: !368, file: !3, line: 528, type: !70)
!391 = !DILocation(line: 528, column: 59, scope: !368)
!392 = !DILocalVariable(name: "r10", scope: !368, file: !3, line: 529, type: !70)
!393 = !DILocation(line: 529, column: 23, scope: !368)
!394 = !DILocalVariable(name: "r11", scope: !368, file: !3, line: 529, type: !70)
!395 = !DILocation(line: 529, column: 28, scope: !368)
!396 = !DILocalVariable(name: "r12", scope: !368, file: !3, line: 529, type: !70)
!397 = !DILocation(line: 529, column: 33, scope: !368)
!398 = !DILocalVariable(name: "r13", scope: !368, file: !3, line: 529, type: !70)
!399 = !DILocation(line: 529, column: 38, scope: !368)
!400 = !DILocalVariable(name: "r14", scope: !368, file: !3, line: 529, type: !70)
!401 = !DILocation(line: 529, column: 43, scope: !368)
!402 = !DILocalVariable(name: "r15", scope: !368, file: !3, line: 529, type: !70)
!403 = !DILocation(line: 529, column: 48, scope: !368)
!404 = !DILocation(line: 530, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !368, file: !3, line: 530, column: 9)
!406 = !DILocation(line: 530, column: 14, scope: !405)
!407 = !DILocation(line: 530, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 530, column: 9)
!409 = !DILocation(line: 530, column: 23, scope: !408)
!410 = !DILocation(line: 530, column: 9, scope: !405)
!411 = !DILocation(line: 532, column: 18, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 530, column: 36)
!413 = !DILocation(line: 532, column: 23, scope: !412)
!414 = !DILocation(line: 532, column: 16, scope: !412)
!415 = !DILocation(line: 533, column: 19, scope: !412)
!416 = !DILocation(line: 533, column: 24, scope: !412)
!417 = !DILocation(line: 533, column: 31, scope: !412)
!418 = !DILocation(line: 533, column: 36, scope: !412)
!419 = !DILocation(line: 533, column: 29, scope: !412)
!420 = !DILocation(line: 533, column: 42, scope: !412)
!421 = !DILocation(line: 533, column: 18, scope: !412)
!422 = !DILocation(line: 533, column: 16, scope: !412)
!423 = !DILocation(line: 534, column: 19, scope: !412)
!424 = !DILocation(line: 534, column: 24, scope: !412)
!425 = !DILocation(line: 534, column: 31, scope: !412)
!426 = !DILocation(line: 534, column: 36, scope: !412)
!427 = !DILocation(line: 534, column: 29, scope: !412)
!428 = !DILocation(line: 534, column: 42, scope: !412)
!429 = !DILocation(line: 534, column: 18, scope: !412)
!430 = !DILocation(line: 534, column: 16, scope: !412)
!431 = !DILocation(line: 535, column: 19, scope: !412)
!432 = !DILocation(line: 535, column: 24, scope: !412)
!433 = !DILocation(line: 535, column: 30, scope: !412)
!434 = !DILocation(line: 535, column: 18, scope: !412)
!435 = !DILocation(line: 535, column: 16, scope: !412)
!436 = !DILocation(line: 536, column: 18, scope: !412)
!437 = !DILocation(line: 536, column: 23, scope: !412)
!438 = !DILocation(line: 536, column: 16, scope: !412)
!439 = !DILocation(line: 537, column: 19, scope: !412)
!440 = !DILocation(line: 537, column: 24, scope: !412)
!441 = !DILocation(line: 537, column: 31, scope: !412)
!442 = !DILocation(line: 537, column: 36, scope: !412)
!443 = !DILocation(line: 537, column: 29, scope: !412)
!444 = !DILocation(line: 537, column: 42, scope: !412)
!445 = !DILocation(line: 537, column: 18, scope: !412)
!446 = !DILocation(line: 537, column: 16, scope: !412)
!447 = !DILocation(line: 538, column: 19, scope: !412)
!448 = !DILocation(line: 538, column: 24, scope: !412)
!449 = !DILocation(line: 538, column: 31, scope: !412)
!450 = !DILocation(line: 538, column: 36, scope: !412)
!451 = !DILocation(line: 538, column: 29, scope: !412)
!452 = !DILocation(line: 538, column: 42, scope: !412)
!453 = !DILocation(line: 538, column: 18, scope: !412)
!454 = !DILocation(line: 538, column: 16, scope: !412)
!455 = !DILocation(line: 539, column: 19, scope: !412)
!456 = !DILocation(line: 539, column: 24, scope: !412)
!457 = !DILocation(line: 539, column: 30, scope: !412)
!458 = !DILocation(line: 539, column: 18, scope: !412)
!459 = !DILocation(line: 539, column: 16, scope: !412)
!460 = !DILocation(line: 540, column: 18, scope: !412)
!461 = !DILocation(line: 540, column: 23, scope: !412)
!462 = !DILocation(line: 540, column: 16, scope: !412)
!463 = !DILocation(line: 541, column: 19, scope: !412)
!464 = !DILocation(line: 541, column: 24, scope: !412)
!465 = !DILocation(line: 541, column: 31, scope: !412)
!466 = !DILocation(line: 541, column: 36, scope: !412)
!467 = !DILocation(line: 541, column: 29, scope: !412)
!468 = !DILocation(line: 541, column: 42, scope: !412)
!469 = !DILocation(line: 541, column: 18, scope: !412)
!470 = !DILocation(line: 541, column: 16, scope: !412)
!471 = !DILocation(line: 542, column: 20, scope: !412)
!472 = !DILocation(line: 542, column: 25, scope: !412)
!473 = !DILocation(line: 542, column: 32, scope: !412)
!474 = !DILocation(line: 542, column: 37, scope: !412)
!475 = !DILocation(line: 542, column: 30, scope: !412)
!476 = !DILocation(line: 542, column: 43, scope: !412)
!477 = !DILocation(line: 542, column: 19, scope: !412)
!478 = !DILocation(line: 542, column: 17, scope: !412)
!479 = !DILocation(line: 543, column: 20, scope: !412)
!480 = !DILocation(line: 543, column: 25, scope: !412)
!481 = !DILocation(line: 543, column: 31, scope: !412)
!482 = !DILocation(line: 543, column: 19, scope: !412)
!483 = !DILocation(line: 543, column: 17, scope: !412)
!484 = !DILocation(line: 544, column: 19, scope: !412)
!485 = !DILocation(line: 544, column: 24, scope: !412)
!486 = !DILocation(line: 544, column: 17, scope: !412)
!487 = !DILocation(line: 545, column: 20, scope: !412)
!488 = !DILocation(line: 545, column: 25, scope: !412)
!489 = !DILocation(line: 545, column: 32, scope: !412)
!490 = !DILocation(line: 545, column: 38, scope: !412)
!491 = !DILocation(line: 545, column: 30, scope: !412)
!492 = !DILocation(line: 545, column: 44, scope: !412)
!493 = !DILocation(line: 545, column: 19, scope: !412)
!494 = !DILocation(line: 545, column: 17, scope: !412)
!495 = !DILocation(line: 546, column: 20, scope: !412)
!496 = !DILocation(line: 546, column: 26, scope: !412)
!497 = !DILocation(line: 546, column: 33, scope: !412)
!498 = !DILocation(line: 546, column: 39, scope: !412)
!499 = !DILocation(line: 546, column: 31, scope: !412)
!500 = !DILocation(line: 546, column: 45, scope: !412)
!501 = !DILocation(line: 546, column: 19, scope: !412)
!502 = !DILocation(line: 546, column: 17, scope: !412)
!503 = !DILocation(line: 547, column: 20, scope: !412)
!504 = !DILocation(line: 547, column: 26, scope: !412)
!505 = !DILocation(line: 547, column: 32, scope: !412)
!506 = !DILocation(line: 547, column: 19, scope: !412)
!507 = !DILocation(line: 547, column: 17, scope: !412)
!508 = !DILocation(line: 549, column: 13, scope: !412)
!509 = !DILocation(line: 549, column: 22, scope: !412)
!510 = !DILocation(line: 549, column: 25, scope: !412)
!511 = !DILocation(line: 550, column: 13, scope: !412)
!512 = !DILocation(line: 550, column: 22, scope: !412)
!513 = !DILocation(line: 550, column: 25, scope: !412)
!514 = !DILocation(line: 551, column: 13, scope: !412)
!515 = !DILocation(line: 551, column: 22, scope: !412)
!516 = !DILocation(line: 551, column: 25, scope: !412)
!517 = !DILocation(line: 552, column: 13, scope: !412)
!518 = !DILocation(line: 552, column: 22, scope: !412)
!519 = !DILocation(line: 552, column: 25, scope: !412)
!520 = !DILocation(line: 553, column: 13, scope: !412)
!521 = !DILocation(line: 553, column: 22, scope: !412)
!522 = !DILocation(line: 553, column: 25, scope: !412)
!523 = !DILocation(line: 554, column: 13, scope: !412)
!524 = !DILocation(line: 554, column: 22, scope: !412)
!525 = !DILocation(line: 554, column: 25, scope: !412)
!526 = !DILocation(line: 555, column: 13, scope: !412)
!527 = !DILocation(line: 555, column: 22, scope: !412)
!528 = !DILocation(line: 555, column: 25, scope: !412)
!529 = !DILocation(line: 556, column: 13, scope: !412)
!530 = !DILocation(line: 556, column: 22, scope: !412)
!531 = !DILocation(line: 556, column: 25, scope: !412)
!532 = !DILocation(line: 557, column: 13, scope: !412)
!533 = !DILocation(line: 557, column: 22, scope: !412)
!534 = !DILocation(line: 557, column: 25, scope: !412)
!535 = !DILocation(line: 558, column: 13, scope: !412)
!536 = !DILocation(line: 558, column: 22, scope: !412)
!537 = !DILocation(line: 558, column: 25, scope: !412)
!538 = !DILocation(line: 559, column: 13, scope: !412)
!539 = !DILocation(line: 559, column: 22, scope: !412)
!540 = !DILocation(line: 559, column: 26, scope: !412)
!541 = !DILocation(line: 560, column: 13, scope: !412)
!542 = !DILocation(line: 560, column: 22, scope: !412)
!543 = !DILocation(line: 560, column: 26, scope: !412)
!544 = !DILocation(line: 561, column: 13, scope: !412)
!545 = !DILocation(line: 561, column: 22, scope: !412)
!546 = !DILocation(line: 561, column: 26, scope: !412)
!547 = !DILocation(line: 562, column: 13, scope: !412)
!548 = !DILocation(line: 562, column: 22, scope: !412)
!549 = !DILocation(line: 562, column: 26, scope: !412)
!550 = !DILocation(line: 563, column: 13, scope: !412)
!551 = !DILocation(line: 563, column: 22, scope: !412)
!552 = !DILocation(line: 563, column: 26, scope: !412)
!553 = !DILocation(line: 564, column: 13, scope: !412)
!554 = !DILocation(line: 564, column: 22, scope: !412)
!555 = !DILocation(line: 564, column: 26, scope: !412)
!556 = !DILocation(line: 566, column: 15, scope: !412)
!557 = !DILocation(line: 567, column: 9, scope: !412)
!558 = !DILocation(line: 530, column: 32, scope: !408)
!559 = !DILocation(line: 530, column: 9, scope: !408)
!560 = distinct !{!560, !410, !561, !202}
!561 = !DILocation(line: 567, column: 9, scope: !405)
!562 = !DILocation(line: 575, column: 1, scope: !357)
!563 = distinct !DISubprogram(name: "hllSparseToDense", scope: !3, file: !3, line: 585, type: !564, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!564 = !DISubroutineType(types: !565)
!565 = !{!71, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !569)
!569 = !{!570, !571, !572, !573, !574}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !568, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !568, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !568, file: !16, line: 860, baseType: !71, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !568, file: !16, line: 861, baseType: !98, size: 64, offset: 64)
!575 = !DILocalVariable(name: "o", arg: 1, scope: !563, file: !3, line: 585, type: !566)
!576 = !DILocation(line: 585, column: 28, scope: !563)
!577 = !DILocalVariable(name: "sparse", scope: !563, file: !3, line: 586, type: !94)
!578 = !DILocation(line: 586, column: 9, scope: !563)
!579 = !DILocation(line: 586, column: 18, scope: !563)
!580 = !DILocation(line: 586, column: 21, scope: !563)
!581 = !DILocalVariable(name: "dense", scope: !563, file: !3, line: 586, type: !94)
!582 = !DILocation(line: 586, column: 26, scope: !563)
!583 = !DILocalVariable(name: "hdr", scope: !563, file: !3, line: 587, type: !73)
!584 = !DILocation(line: 587, column: 20, scope: !563)
!585 = !DILocalVariable(name: "oldhdr", scope: !563, file: !3, line: 587, type: !73)
!586 = !DILocation(line: 587, column: 26, scope: !563)
!587 = !DILocation(line: 587, column: 51, scope: !563)
!588 = !DILocation(line: 587, column: 35, scope: !563)
!589 = !DILocalVariable(name: "idx", scope: !563, file: !3, line: 588, type: !71)
!590 = !DILocation(line: 588, column: 9, scope: !563)
!591 = !DILocalVariable(name: "runlen", scope: !563, file: !3, line: 588, type: !71)
!592 = !DILocation(line: 588, column: 18, scope: !563)
!593 = !DILocalVariable(name: "regval", scope: !563, file: !3, line: 588, type: !71)
!594 = !DILocation(line: 588, column: 26, scope: !563)
!595 = !DILocalVariable(name: "p", scope: !563, file: !3, line: 589, type: !72)
!596 = !DILocation(line: 589, column: 14, scope: !563)
!597 = !DILocation(line: 589, column: 28, scope: !563)
!598 = !DILocalVariable(name: "end", scope: !563, file: !3, line: 589, type: !72)
!599 = !DILocation(line: 589, column: 37, scope: !563)
!600 = !DILocation(line: 589, column: 43, scope: !563)
!601 = !DILocation(line: 589, column: 52, scope: !563)
!602 = !DILocation(line: 589, column: 45, scope: !563)
!603 = !DILocation(line: 589, column: 44, scope: !563)
!604 = !DILocation(line: 592, column: 28, scope: !563)
!605 = !DILocation(line: 592, column: 11, scope: !563)
!606 = !DILocation(line: 592, column: 9, scope: !563)
!607 = !DILocation(line: 593, column: 9, scope: !608)
!608 = distinct !DILexicalBlock(scope: !563, file: !3, line: 593, column: 9)
!609 = !DILocation(line: 593, column: 14, scope: !608)
!610 = !DILocation(line: 593, column: 23, scope: !608)
!611 = !DILocation(line: 593, column: 9, scope: !563)
!612 = !DILocation(line: 593, column: 37, scope: !608)
!613 = !DILocation(line: 598, column: 13, scope: !563)
!614 = !DILocation(line: 598, column: 11, scope: !563)
!615 = !DILocation(line: 599, column: 28, scope: !563)
!616 = !DILocation(line: 599, column: 11, scope: !563)
!617 = !DILocation(line: 599, column: 9, scope: !563)
!618 = !DILocation(line: 600, column: 6, scope: !563)
!619 = !DILocation(line: 600, column: 13, scope: !563)
!620 = !DILocation(line: 600, column: 12, scope: !563)
!621 = !DILocation(line: 601, column: 5, scope: !563)
!622 = !DILocation(line: 601, column: 10, scope: !563)
!623 = !DILocation(line: 601, column: 19, scope: !563)
!624 = !DILocation(line: 605, column: 7, scope: !563)
!625 = !DILocation(line: 606, column: 5, scope: !563)
!626 = !DILocation(line: 606, column: 11, scope: !563)
!627 = !DILocation(line: 606, column: 15, scope: !563)
!628 = !DILocation(line: 606, column: 13, scope: !563)
!629 = !DILocation(line: 607, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 607, column: 13)
!631 = distinct !DILexicalBlock(scope: !563, file: !3, line: 606, column: 20)
!632 = !DILocation(line: 607, column: 13, scope: !631)
!633 = !DILocation(line: 608, column: 22, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 607, column: 36)
!635 = !DILocation(line: 608, column: 20, scope: !634)
!636 = !DILocation(line: 609, column: 20, scope: !634)
!637 = !DILocation(line: 609, column: 17, scope: !634)
!638 = !DILocation(line: 610, column: 14, scope: !634)
!639 = !DILocation(line: 611, column: 9, scope: !634)
!640 = !DILocation(line: 611, column: 20, scope: !641)
!641 = distinct !DILexicalBlock(scope: !630, file: !3, line: 611, column: 20)
!642 = !DILocation(line: 611, column: 20, scope: !630)
!643 = !DILocation(line: 612, column: 22, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !3, line: 611, column: 44)
!645 = !DILocation(line: 612, column: 20, scope: !644)
!646 = !DILocation(line: 613, column: 20, scope: !644)
!647 = !DILocation(line: 613, column: 17, scope: !644)
!648 = !DILocation(line: 614, column: 15, scope: !644)
!649 = !DILocation(line: 615, column: 9, scope: !644)
!650 = !DILocation(line: 616, column: 22, scope: !651)
!651 = distinct !DILexicalBlock(scope: !641, file: !3, line: 615, column: 16)
!652 = !DILocation(line: 616, column: 20, scope: !651)
!653 = !DILocation(line: 617, column: 22, scope: !651)
!654 = !DILocation(line: 617, column: 20, scope: !651)
!655 = !DILocation(line: 618, column: 18, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !3, line: 618, column: 17)
!657 = !DILocation(line: 618, column: 27, scope: !656)
!658 = !DILocation(line: 618, column: 25, scope: !656)
!659 = !DILocation(line: 618, column: 32, scope: !656)
!660 = !DILocation(line: 618, column: 17, scope: !651)
!661 = !DILocation(line: 618, column: 49, scope: !656)
!662 = !DILocation(line: 619, column: 13, scope: !651)
!663 = !DILocation(line: 619, column: 25, scope: !651)
!664 = !DILocation(line: 620, column: 17, scope: !665)
!665 = distinct !DILexicalBlock(scope: !651, file: !3, line: 619, column: 29)
!666 = !DILocalVariable(name: "_p", scope: !667, file: !3, line: 620, type: !72)
!667 = distinct !DILexicalBlock(scope: !665, file: !3, line: 620, column: 17)
!668 = !DILocation(line: 620, column: 17, scope: !667)
!669 = !DILocalVariable(name: "_byte", scope: !667, file: !3, line: 620, type: !70)
!670 = !DILocalVariable(name: "_fb", scope: !667, file: !3, line: 620, type: !70)
!671 = !DILocalVariable(name: "_fb8", scope: !667, file: !3, line: 620, type: !70)
!672 = !DILocalVariable(name: "_v", scope: !667, file: !3, line: 620, type: !70)
!673 = !DILocation(line: 621, column: 20, scope: !665)
!674 = distinct !{!674, !662, !675, !202}
!675 = !DILocation(line: 622, column: 13, scope: !651)
!676 = !DILocation(line: 623, column: 14, scope: !651)
!677 = distinct !{!677, !625, !678, !202}
!678 = !DILocation(line: 625, column: 5, scope: !563)
!679 = !DILocation(line: 629, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !563, file: !3, line: 629, column: 9)
!681 = !DILocation(line: 629, column: 13, scope: !680)
!682 = !DILocation(line: 629, column: 9, scope: !563)
!683 = !DILocation(line: 630, column: 17, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !3, line: 629, column: 31)
!685 = !DILocation(line: 630, column: 9, scope: !684)
!686 = !DILocation(line: 631, column: 9, scope: !684)
!687 = !DILocation(line: 635, column: 13, scope: !563)
!688 = !DILocation(line: 635, column: 16, scope: !563)
!689 = !DILocation(line: 635, column: 5, scope: !563)
!690 = !DILocation(line: 636, column: 14, scope: !563)
!691 = !DILocation(line: 636, column: 5, scope: !563)
!692 = !DILocation(line: 636, column: 8, scope: !563)
!693 = !DILocation(line: 636, column: 12, scope: !563)
!694 = !DILocation(line: 637, column: 5, scope: !563)
!695 = !DILocation(line: 638, column: 1, scope: !563)
!696 = distinct !DISubprogram(name: "sdslen", scope: !95, file: !95, line: 87, type: !697, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !151)
!697 = !DISubroutineType(types: !698)
!698 = !{!254, !699}
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!700 = !DILocalVariable(name: "s", arg: 1, scope: !696, file: !95, line: 87, type: !699)
!701 = !DILocation(line: 87, column: 39, scope: !696)
!702 = !DILocalVariable(name: "flags", scope: !696, file: !95, line: 88, type: !66)
!703 = !DILocation(line: 88, column: 19, scope: !696)
!704 = !DILocation(line: 88, column: 27, scope: !696)
!705 = !DILocation(line: 89, column: 12, scope: !696)
!706 = !DILocation(line: 89, column: 17, scope: !696)
!707 = !DILocation(line: 89, column: 5, scope: !696)
!708 = !DILocation(line: 91, column: 20, scope: !709)
!709 = distinct !DILexicalBlock(scope: !696, file: !95, line: 89, column: 33)
!710 = !DILocation(line: 91, column: 13, scope: !709)
!711 = !DILocation(line: 93, column: 20, scope: !709)
!712 = !DILocation(line: 93, column: 34, scope: !709)
!713 = !DILocation(line: 93, column: 13, scope: !709)
!714 = !DILocation(line: 95, column: 20, scope: !709)
!715 = !DILocation(line: 95, column: 35, scope: !709)
!716 = !DILocation(line: 95, column: 13, scope: !709)
!717 = !DILocation(line: 97, column: 20, scope: !709)
!718 = !DILocation(line: 97, column: 35, scope: !709)
!719 = !DILocation(line: 97, column: 13, scope: !709)
!720 = !DILocation(line: 99, column: 20, scope: !709)
!721 = !DILocation(line: 99, column: 35, scope: !709)
!722 = !DILocation(line: 99, column: 13, scope: !709)
!723 = !DILocation(line: 101, column: 5, scope: !696)
!724 = !DILocation(line: 102, column: 1, scope: !696)
!725 = distinct !DISubprogram(name: "hllSparseSet", scope: !3, file: !3, line: 655, type: !726, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!726 = !DISubroutineType(types: !727)
!727 = !{!71, !566, !103, !62}
!728 = !DILocalVariable(name: "o", arg: 1, scope: !725, file: !3, line: 655, type: !566)
!729 = !DILocation(line: 655, column: 24, scope: !725)
!730 = !DILocalVariable(name: "index", arg: 2, scope: !725, file: !3, line: 655, type: !103)
!731 = !DILocation(line: 655, column: 32, scope: !725)
!732 = !DILocalVariable(name: "count", arg: 3, scope: !725, file: !3, line: 655, type: !62)
!733 = !DILocation(line: 655, column: 47, scope: !725)
!734 = !DILocalVariable(name: "hdr", scope: !725, file: !3, line: 656, type: !73)
!735 = !DILocation(line: 656, column: 20, scope: !725)
!736 = !DILocalVariable(name: "oldcount", scope: !725, file: !3, line: 657, type: !62)
!737 = !DILocation(line: 657, column: 13, scope: !725)
!738 = !DILocalVariable(name: "sparse", scope: !725, file: !3, line: 657, type: !72)
!739 = !DILocation(line: 657, column: 24, scope: !725)
!740 = !DILocalVariable(name: "end", scope: !725, file: !3, line: 657, type: !72)
!741 = !DILocation(line: 657, column: 33, scope: !725)
!742 = !DILocalVariable(name: "p", scope: !725, file: !3, line: 657, type: !72)
!743 = !DILocation(line: 657, column: 39, scope: !725)
!744 = !DILocalVariable(name: "prev", scope: !725, file: !3, line: 657, type: !72)
!745 = !DILocation(line: 657, column: 43, scope: !725)
!746 = !DILocalVariable(name: "next", scope: !725, file: !3, line: 657, type: !72)
!747 = !DILocation(line: 657, column: 50, scope: !725)
!748 = !DILocalVariable(name: "first", scope: !725, file: !3, line: 658, type: !103)
!749 = !DILocation(line: 658, column: 10, scope: !725)
!750 = !DILocalVariable(name: "span", scope: !725, file: !3, line: 658, type: !103)
!751 = !DILocation(line: 658, column: 17, scope: !725)
!752 = !DILocalVariable(name: "is_zero", scope: !725, file: !3, line: 659, type: !103)
!753 = !DILocation(line: 659, column: 10, scope: !725)
!754 = !DILocalVariable(name: "is_xzero", scope: !725, file: !3, line: 659, type: !103)
!755 = !DILocation(line: 659, column: 23, scope: !725)
!756 = !DILocalVariable(name: "is_val", scope: !725, file: !3, line: 659, type: !103)
!757 = !DILocation(line: 659, column: 37, scope: !725)
!758 = !DILocalVariable(name: "runlen", scope: !725, file: !3, line: 659, type: !103)
!759 = !DILocation(line: 659, column: 49, scope: !725)
!760 = !DILocation(line: 663, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !725, file: !3, line: 663, column: 9)
!762 = !DILocation(line: 663, column: 15, scope: !761)
!763 = !DILocation(line: 663, column: 9, scope: !725)
!764 = !DILocation(line: 663, column: 43, scope: !761)
!765 = !DILocation(line: 670, column: 29, scope: !725)
!766 = !DILocation(line: 670, column: 32, scope: !725)
!767 = !DILocation(line: 670, column: 14, scope: !725)
!768 = !DILocation(line: 670, column: 5, scope: !725)
!769 = !DILocation(line: 670, column: 8, scope: !725)
!770 = !DILocation(line: 670, column: 12, scope: !725)
!771 = !DILocation(line: 674, column: 29, scope: !725)
!772 = !DILocation(line: 674, column: 32, scope: !725)
!773 = !DILocation(line: 674, column: 37, scope: !725)
!774 = !DILocation(line: 674, column: 16, scope: !725)
!775 = !DILocation(line: 674, column: 12, scope: !725)
!776 = !DILocation(line: 675, column: 11, scope: !725)
!777 = !DILocation(line: 675, column: 22, scope: !725)
!778 = !DILocation(line: 675, column: 25, scope: !725)
!779 = !DILocation(line: 675, column: 15, scope: !725)
!780 = !DILocation(line: 675, column: 13, scope: !725)
!781 = !DILocation(line: 675, column: 30, scope: !725)
!782 = !DILocation(line: 675, column: 9, scope: !725)
!783 = !DILocation(line: 677, column: 11, scope: !725)
!784 = !DILocation(line: 678, column: 10, scope: !725)
!785 = !DILocation(line: 679, column: 10, scope: !725)
!786 = !DILocation(line: 680, column: 10, scope: !725)
!787 = !DILocation(line: 681, column: 5, scope: !725)
!788 = !DILocation(line: 681, column: 11, scope: !725)
!789 = !DILocation(line: 681, column: 15, scope: !725)
!790 = !DILocation(line: 681, column: 13, scope: !725)
!791 = !DILocalVariable(name: "oplen", scope: !792, file: !3, line: 682, type: !103)
!792 = distinct !DILexicalBlock(scope: !725, file: !3, line: 681, column: 20)
!793 = !DILocation(line: 682, column: 14, scope: !792)
!794 = !DILocation(line: 689, column: 15, scope: !792)
!795 = !DILocation(line: 690, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 690, column: 13)
!797 = !DILocation(line: 690, column: 13, scope: !792)
!798 = !DILocation(line: 691, column: 20, scope: !799)
!799 = distinct !DILexicalBlock(scope: !796, file: !3, line: 690, column: 36)
!800 = !DILocation(line: 691, column: 18, scope: !799)
!801 = !DILocation(line: 692, column: 9, scope: !799)
!802 = !DILocation(line: 692, column: 20, scope: !803)
!803 = distinct !DILexicalBlock(scope: !796, file: !3, line: 692, column: 20)
!804 = !DILocation(line: 692, column: 20, scope: !796)
!805 = !DILocation(line: 693, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !803, file: !3, line: 692, column: 42)
!807 = !DILocation(line: 693, column: 18, scope: !806)
!808 = !DILocation(line: 694, column: 9, scope: !806)
!809 = !DILocation(line: 695, column: 20, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !3, line: 694, column: 16)
!811 = !DILocation(line: 695, column: 18, scope: !810)
!812 = !DILocation(line: 696, column: 19, scope: !810)
!813 = !DILocation(line: 699, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !792, file: !3, line: 699, column: 13)
!815 = !DILocation(line: 699, column: 22, scope: !814)
!816 = !DILocation(line: 699, column: 28, scope: !814)
!817 = !DILocation(line: 699, column: 27, scope: !814)
!818 = !DILocation(line: 699, column: 32, scope: !814)
!819 = !DILocation(line: 699, column: 19, scope: !814)
!820 = !DILocation(line: 699, column: 13, scope: !792)
!821 = !DILocation(line: 699, column: 36, scope: !814)
!822 = !DILocation(line: 700, column: 16, scope: !792)
!823 = !DILocation(line: 700, column: 14, scope: !792)
!824 = !DILocation(line: 701, column: 14, scope: !792)
!825 = !DILocation(line: 701, column: 11, scope: !792)
!826 = !DILocation(line: 702, column: 18, scope: !792)
!827 = !DILocation(line: 702, column: 15, scope: !792)
!828 = distinct !{!828, !787, !829, !202}
!829 = !DILocation(line: 703, column: 5, scope: !725)
!830 = !DILocation(line: 704, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !725, file: !3, line: 704, column: 9)
!832 = !DILocation(line: 704, column: 14, scope: !831)
!833 = !DILocation(line: 704, column: 19, scope: !831)
!834 = !DILocation(line: 704, column: 22, scope: !831)
!835 = !DILocation(line: 704, column: 27, scope: !831)
!836 = !DILocation(line: 704, column: 24, scope: !831)
!837 = !DILocation(line: 704, column: 9, scope: !725)
!838 = !DILocation(line: 704, column: 32, scope: !831)
!839 = !DILocation(line: 706, column: 12, scope: !725)
!840 = !DILocation(line: 706, column: 37, scope: !725)
!841 = !DILocation(line: 706, column: 38, scope: !725)
!842 = !DILocation(line: 706, column: 43, scope: !725)
!843 = !DILocation(line: 706, column: 44, scope: !725)
!844 = !DILocation(line: 706, column: 10, scope: !725)
!845 = !DILocation(line: 707, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !725, file: !3, line: 707, column: 9)
!847 = !DILocation(line: 707, column: 17, scope: !846)
!848 = !DILocation(line: 707, column: 14, scope: !846)
!849 = !DILocation(line: 707, column: 9, scope: !725)
!850 = !DILocation(line: 707, column: 27, scope: !846)
!851 = !DILocation(line: 707, column: 22, scope: !846)
!852 = !DILocation(line: 712, column: 9, scope: !853)
!853 = distinct !DILexicalBlock(scope: !725, file: !3, line: 712, column: 9)
!854 = !DILocation(line: 712, column: 9, scope: !725)
!855 = !DILocation(line: 713, column: 17, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !3, line: 712, column: 32)
!857 = !DILocation(line: 714, column: 18, scope: !856)
!858 = !DILocation(line: 714, column: 16, scope: !856)
!859 = !DILocation(line: 715, column: 5, scope: !856)
!860 = !DILocation(line: 715, column: 16, scope: !861)
!861 = distinct !DILexicalBlock(scope: !853, file: !3, line: 715, column: 16)
!862 = !DILocation(line: 715, column: 16, scope: !853)
!863 = !DILocation(line: 716, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 715, column: 40)
!865 = !DILocation(line: 717, column: 18, scope: !864)
!866 = !DILocation(line: 717, column: 16, scope: !864)
!867 = !DILocation(line: 718, column: 5, scope: !864)
!868 = !DILocation(line: 719, column: 16, scope: !869)
!869 = distinct !DILexicalBlock(scope: !861, file: !3, line: 718, column: 12)
!870 = !DILocation(line: 720, column: 18, scope: !869)
!871 = !DILocation(line: 720, column: 16, scope: !869)
!872 = !DILocation(line: 744, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !725, file: !3, line: 744, column: 9)
!874 = !DILocation(line: 744, column: 9, scope: !725)
!875 = !DILocation(line: 745, column: 20, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !3, line: 744, column: 17)
!877 = !DILocation(line: 745, column: 18, scope: !876)
!878 = !DILocation(line: 747, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 747, column: 13)
!880 = !DILocation(line: 747, column: 25, scope: !879)
!881 = !DILocation(line: 747, column: 22, scope: !879)
!882 = !DILocation(line: 747, column: 13, scope: !876)
!883 = !DILocation(line: 747, column: 32, scope: !879)
!884 = !DILocation(line: 750, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !876, file: !3, line: 750, column: 13)
!886 = !DILocation(line: 750, column: 20, scope: !885)
!887 = !DILocation(line: 750, column: 13, scope: !876)
!888 = !DILocation(line: 751, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !3, line: 750, column: 26)
!890 = !DILocation(line: 751, column: 13, scope: !891)
!891 = distinct !DILexicalBlock(scope: !889, file: !3, line: 751, column: 13)
!892 = !DILocation(line: 752, column: 13, scope: !889)
!893 = !DILocation(line: 754, column: 5, scope: !876)
!894 = !DILocation(line: 758, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !725, file: !3, line: 758, column: 9)
!896 = !DILocation(line: 758, column: 17, scope: !895)
!897 = !DILocation(line: 758, column: 20, scope: !895)
!898 = !DILocation(line: 758, column: 27, scope: !895)
!899 = !DILocation(line: 758, column: 9, scope: !725)
!900 = !DILocation(line: 759, column: 9, scope: !901)
!901 = distinct !DILexicalBlock(scope: !895, file: !3, line: 758, column: 33)
!902 = !DILocation(line: 759, column: 9, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !3, line: 759, column: 9)
!904 = !DILocation(line: 760, column: 9, scope: !901)
!905 = !DILocalVariable(name: "seq", scope: !725, file: !3, line: 778, type: !906)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 40, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 5)
!909 = !DILocation(line: 778, column: 13, scope: !725)
!910 = !DILocalVariable(name: "n", scope: !725, file: !3, line: 778, type: !72)
!911 = !DILocation(line: 778, column: 22, scope: !725)
!912 = !DILocation(line: 778, column: 26, scope: !725)
!913 = !DILocalVariable(name: "last", scope: !725, file: !3, line: 779, type: !71)
!914 = !DILocation(line: 779, column: 9, scope: !725)
!915 = !DILocation(line: 779, column: 16, scope: !725)
!916 = !DILocation(line: 779, column: 22, scope: !725)
!917 = !DILocation(line: 779, column: 21, scope: !725)
!918 = !DILocation(line: 779, column: 26, scope: !725)
!919 = !DILocalVariable(name: "len", scope: !725, file: !3, line: 780, type: !71)
!920 = !DILocation(line: 780, column: 9, scope: !725)
!921 = !DILocation(line: 782, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !725, file: !3, line: 782, column: 9)
!923 = !DILocation(line: 782, column: 17, scope: !922)
!924 = !DILocation(line: 782, column: 20, scope: !922)
!925 = !DILocation(line: 782, column: 9, scope: !725)
!926 = !DILocation(line: 784, column: 13, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 784, column: 13)
!928 = distinct !DILexicalBlock(scope: !922, file: !3, line: 782, column: 30)
!929 = !DILocation(line: 784, column: 22, scope: !927)
!930 = !DILocation(line: 784, column: 19, scope: !927)
!931 = !DILocation(line: 784, column: 13, scope: !928)
!932 = !DILocation(line: 785, column: 19, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !3, line: 784, column: 29)
!934 = !DILocation(line: 785, column: 25, scope: !933)
!935 = !DILocation(line: 785, column: 24, scope: !933)
!936 = !DILocation(line: 785, column: 17, scope: !933)
!937 = !DILocation(line: 786, column: 17, scope: !938)
!938 = distinct !DILexicalBlock(scope: !933, file: !3, line: 786, column: 17)
!939 = !DILocation(line: 786, column: 21, scope: !938)
!940 = !DILocation(line: 786, column: 17, scope: !933)
!941 = !DILocation(line: 787, column: 17, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 786, column: 48)
!943 = !DILocalVariable(name: "_l", scope: !944, file: !3, line: 787, type: !71)
!944 = distinct !DILexicalBlock(scope: !942, file: !3, line: 787, column: 17)
!945 = !DILocation(line: 787, column: 17, scope: !944)
!946 = !DILocation(line: 788, column: 19, scope: !942)
!947 = !DILocation(line: 789, column: 13, scope: !942)
!948 = !DILocation(line: 790, column: 17, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !3, line: 789, column: 20)
!950 = !DILocation(line: 790, column: 17, scope: !951)
!951 = distinct !DILexicalBlock(scope: !949, file: !3, line: 790, column: 17)
!952 = !DILocation(line: 791, column: 18, scope: !949)
!953 = !DILocation(line: 793, column: 9, scope: !933)
!954 = !DILocation(line: 794, column: 9, scope: !928)
!955 = !DILocation(line: 794, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !928, file: !3, line: 794, column: 9)
!957 = !DILocation(line: 795, column: 10, scope: !928)
!958 = !DILocation(line: 796, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !928, file: !3, line: 796, column: 13)
!960 = !DILocation(line: 796, column: 22, scope: !959)
!961 = !DILocation(line: 796, column: 19, scope: !959)
!962 = !DILocation(line: 796, column: 13, scope: !928)
!963 = !DILocation(line: 797, column: 19, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !3, line: 796, column: 28)
!965 = !DILocation(line: 797, column: 24, scope: !964)
!966 = !DILocation(line: 797, column: 23, scope: !964)
!967 = !DILocation(line: 797, column: 17, scope: !964)
!968 = !DILocation(line: 798, column: 17, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 798, column: 17)
!970 = !DILocation(line: 798, column: 21, scope: !969)
!971 = !DILocation(line: 798, column: 17, scope: !964)
!972 = !DILocation(line: 799, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !3, line: 798, column: 48)
!974 = !DILocalVariable(name: "_l", scope: !975, file: !3, line: 799, type: !71)
!975 = distinct !DILexicalBlock(scope: !973, file: !3, line: 799, column: 17)
!976 = !DILocation(line: 799, column: 17, scope: !975)
!977 = !DILocation(line: 800, column: 19, scope: !973)
!978 = !DILocation(line: 801, column: 13, scope: !973)
!979 = !DILocation(line: 802, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !969, file: !3, line: 801, column: 20)
!981 = !DILocation(line: 802, column: 17, scope: !982)
!982 = distinct !DILexicalBlock(scope: !980, file: !3, line: 802, column: 17)
!983 = !DILocation(line: 803, column: 18, scope: !980)
!984 = !DILocation(line: 805, column: 9, scope: !964)
!985 = !DILocation(line: 806, column: 5, scope: !928)
!986 = !DILocalVariable(name: "curval", scope: !987, file: !3, line: 808, type: !71)
!987 = distinct !DILexicalBlock(scope: !922, file: !3, line: 806, column: 12)
!988 = !DILocation(line: 808, column: 13, scope: !987)
!989 = !DILocation(line: 808, column: 22, scope: !987)
!990 = !DILocation(line: 810, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 810, column: 13)
!992 = !DILocation(line: 810, column: 22, scope: !991)
!993 = !DILocation(line: 810, column: 19, scope: !991)
!994 = !DILocation(line: 810, column: 13, scope: !987)
!995 = !DILocation(line: 811, column: 19, scope: !996)
!996 = distinct !DILexicalBlock(scope: !991, file: !3, line: 810, column: 29)
!997 = !DILocation(line: 811, column: 25, scope: !996)
!998 = !DILocation(line: 811, column: 24, scope: !996)
!999 = !DILocation(line: 811, column: 17, scope: !996)
!1000 = !DILocation(line: 812, column: 13, scope: !996)
!1001 = !DILocation(line: 812, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 812, column: 13)
!1003 = !DILocation(line: 813, column: 14, scope: !996)
!1004 = !DILocation(line: 814, column: 9, scope: !996)
!1005 = !DILocation(line: 815, column: 9, scope: !987)
!1006 = !DILocation(line: 815, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !987, file: !3, line: 815, column: 9)
!1008 = !DILocation(line: 816, column: 10, scope: !987)
!1009 = !DILocation(line: 817, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !987, file: !3, line: 817, column: 13)
!1011 = !DILocation(line: 817, column: 22, scope: !1010)
!1012 = !DILocation(line: 817, column: 19, scope: !1010)
!1013 = !DILocation(line: 817, column: 13, scope: !987)
!1014 = !DILocation(line: 818, column: 19, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 817, column: 28)
!1016 = !DILocation(line: 818, column: 24, scope: !1015)
!1017 = !DILocation(line: 818, column: 23, scope: !1015)
!1018 = !DILocation(line: 818, column: 17, scope: !1015)
!1019 = !DILocation(line: 819, column: 13, scope: !1015)
!1020 = !DILocation(line: 819, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 819, column: 13)
!1022 = !DILocation(line: 820, column: 14, scope: !1015)
!1023 = !DILocation(line: 821, column: 9, scope: !1015)
!1024 = !DILocalVariable(name: "seqlen", scope: !725, file: !3, line: 828, type: !71)
!1025 = !DILocation(line: 828, column: 10, scope: !725)
!1026 = !DILocation(line: 828, column: 19, scope: !725)
!1027 = !DILocation(line: 828, column: 21, scope: !725)
!1028 = !DILocation(line: 828, column: 20, scope: !725)
!1029 = !DILocalVariable(name: "oldlen", scope: !725, file: !3, line: 829, type: !71)
!1030 = !DILocation(line: 829, column: 10, scope: !725)
!1031 = !DILocation(line: 829, column: 19, scope: !725)
!1032 = !DILocalVariable(name: "deltalen", scope: !725, file: !3, line: 830, type: !71)
!1033 = !DILocation(line: 830, column: 10, scope: !725)
!1034 = !DILocation(line: 830, column: 21, scope: !725)
!1035 = !DILocation(line: 830, column: 28, scope: !725)
!1036 = !DILocation(line: 830, column: 27, scope: !725)
!1037 = !DILocation(line: 832, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !725, file: !3, line: 832, column: 10)
!1039 = !DILocation(line: 832, column: 19, scope: !1038)
!1040 = !DILocation(line: 832, column: 23, scope: !1038)
!1041 = !DILocation(line: 833, column: 17, scope: !1038)
!1042 = !DILocation(line: 833, column: 20, scope: !1038)
!1043 = !DILocation(line: 833, column: 10, scope: !1038)
!1044 = !DILocation(line: 833, column: 25, scope: !1038)
!1045 = !DILocation(line: 833, column: 24, scope: !1038)
!1046 = !DILocation(line: 833, column: 43, scope: !1038)
!1047 = !DILocation(line: 833, column: 34, scope: !1038)
!1048 = !DILocation(line: 832, column: 10, scope: !725)
!1049 = !DILocation(line: 833, column: 65, scope: !1038)
!1050 = !DILocation(line: 834, column: 10, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !725, file: !3, line: 834, column: 10)
!1052 = !DILocation(line: 834, column: 19, scope: !1051)
!1053 = !DILocation(line: 834, column: 22, scope: !1051)
!1054 = !DILocation(line: 834, column: 10, scope: !725)
!1055 = !DILocation(line: 834, column: 36, scope: !1051)
!1056 = !DILocation(line: 834, column: 41, scope: !1051)
!1057 = !DILocation(line: 834, column: 40, scope: !1051)
!1058 = !DILocation(line: 834, column: 50, scope: !1051)
!1059 = !DILocation(line: 834, column: 55, scope: !1051)
!1060 = !DILocation(line: 834, column: 59, scope: !1051)
!1061 = !DILocation(line: 834, column: 58, scope: !1051)
!1062 = !DILocation(line: 834, column: 28, scope: !1051)
!1063 = !DILocation(line: 835, column: 17, scope: !725)
!1064 = !DILocation(line: 835, column: 20, scope: !725)
!1065 = !DILocation(line: 835, column: 24, scope: !725)
!1066 = !DILocation(line: 835, column: 6, scope: !725)
!1067 = !DILocation(line: 836, column: 13, scope: !725)
!1068 = !DILocation(line: 836, column: 6, scope: !725)
!1069 = !DILocation(line: 836, column: 19, scope: !725)
!1070 = !DILocation(line: 837, column: 13, scope: !725)
!1071 = !DILocation(line: 837, column: 10, scope: !725)
!1072 = !DILocation(line: 837, column: 6, scope: !725)
!1073 = !DILabel(scope: !725, name: "updated", file: !3, line: 839)
!1074 = !DILocation(line: 839, column: 1, scope: !725)
!1075 = !DILocation(line: 845, column: 9, scope: !725)
!1076 = !DILocation(line: 845, column: 16, scope: !725)
!1077 = !DILocation(line: 845, column: 23, scope: !725)
!1078 = !DILocation(line: 845, column: 7, scope: !725)
!1079 = !DILocalVariable(name: "scanlen", scope: !725, file: !3, line: 846, type: !71)
!1080 = !DILocation(line: 846, column: 9, scope: !725)
!1081 = !DILocation(line: 847, column: 5, scope: !725)
!1082 = !DILocation(line: 847, column: 12, scope: !725)
!1083 = !DILocation(line: 847, column: 16, scope: !725)
!1084 = !DILocation(line: 847, column: 14, scope: !725)
!1085 = !DILocation(line: 847, column: 20, scope: !725)
!1086 = !DILocation(line: 847, column: 30, scope: !725)
!1087 = !DILocation(line: 0, scope: !725)
!1088 = !DILocation(line: 848, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 848, column: 13)
!1090 = distinct !DILexicalBlock(scope: !725, file: !3, line: 847, column: 34)
!1091 = !DILocation(line: 848, column: 13, scope: !1090)
!1092 = !DILocation(line: 849, column: 15, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 848, column: 37)
!1094 = !DILocation(line: 850, column: 13, scope: !1093)
!1095 = distinct !{!1095, !1081, !1096, !202}
!1096 = !DILocation(line: 875, column: 5, scope: !725)
!1097 = !DILocation(line: 851, column: 20, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 851, column: 20)
!1099 = !DILocation(line: 851, column: 20, scope: !1089)
!1100 = !DILocation(line: 852, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 851, column: 43)
!1102 = !DILocation(line: 853, column: 13, scope: !1101)
!1103 = !DILocation(line: 857, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 857, column: 13)
!1105 = !DILocation(line: 857, column: 14, scope: !1104)
!1106 = !DILocation(line: 857, column: 19, scope: !1104)
!1107 = !DILocation(line: 857, column: 17, scope: !1104)
!1108 = !DILocation(line: 857, column: 23, scope: !1104)
!1109 = !DILocation(line: 857, column: 26, scope: !1104)
!1110 = !DILocation(line: 857, column: 13, scope: !1090)
!1111 = !DILocalVariable(name: "v1", scope: !1112, file: !3, line: 858, type: !71)
!1112 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 857, column: 50)
!1113 = !DILocation(line: 858, column: 17, scope: !1112)
!1114 = !DILocation(line: 858, column: 22, scope: !1112)
!1115 = !DILocalVariable(name: "v2", scope: !1112, file: !3, line: 859, type: !71)
!1116 = !DILocation(line: 859, column: 17, scope: !1112)
!1117 = !DILocation(line: 859, column: 22, scope: !1112)
!1118 = !DILocation(line: 860, column: 17, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 860, column: 17)
!1120 = !DILocation(line: 860, column: 23, scope: !1119)
!1121 = !DILocation(line: 860, column: 20, scope: !1119)
!1122 = !DILocation(line: 860, column: 17, scope: !1112)
!1123 = !DILocalVariable(name: "len", scope: !1124, file: !3, line: 861, type: !71)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 860, column: 27)
!1125 = !DILocation(line: 861, column: 21, scope: !1124)
!1126 = !DILocation(line: 861, column: 27, scope: !1124)
!1127 = !DILocation(line: 861, column: 49, scope: !1124)
!1128 = !DILocation(line: 861, column: 48, scope: !1124)
!1129 = !DILocation(line: 862, column: 21, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 862, column: 21)
!1131 = !DILocation(line: 862, column: 25, scope: !1130)
!1132 = !DILocation(line: 862, column: 21, scope: !1124)
!1133 = !DILocation(line: 863, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 862, column: 52)
!1135 = !DILocation(line: 863, column: 21, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 863, column: 21)
!1137 = !DILocation(line: 864, column: 29, scope: !1134)
!1138 = !DILocation(line: 864, column: 31, scope: !1134)
!1139 = !DILocation(line: 864, column: 32, scope: !1134)
!1140 = !DILocation(line: 864, column: 35, scope: !1134)
!1141 = !DILocation(line: 864, column: 39, scope: !1134)
!1142 = !DILocation(line: 864, column: 38, scope: !1134)
!1143 = !DILocation(line: 864, column: 21, scope: !1134)
!1144 = !DILocation(line: 865, column: 32, scope: !1134)
!1145 = !DILocation(line: 865, column: 35, scope: !1134)
!1146 = !DILocation(line: 865, column: 21, scope: !1134)
!1147 = !DILocation(line: 866, column: 24, scope: !1134)
!1148 = !DILocation(line: 870, column: 21, scope: !1134)
!1149 = !DILocation(line: 872, column: 13, scope: !1124)
!1150 = !DILocation(line: 873, column: 9, scope: !1112)
!1151 = !DILocation(line: 874, column: 10, scope: !1090)
!1152 = !DILocation(line: 878, column: 11, scope: !725)
!1153 = !DILocation(line: 878, column: 14, scope: !725)
!1154 = !DILocation(line: 878, column: 9, scope: !725)
!1155 = !DILocation(line: 879, column: 5, scope: !725)
!1156 = !DILocation(line: 880, column: 5, scope: !725)
!1157 = !DILabel(scope: !725, name: "promote", file: !3, line: 882)
!1158 = !DILocation(line: 882, column: 1, scope: !725)
!1159 = !DILocation(line: 883, column: 26, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !725, file: !3, line: 883, column: 9)
!1161 = !DILocation(line: 883, column: 9, scope: !1160)
!1162 = !DILocation(line: 883, column: 29, scope: !1160)
!1163 = !DILocation(line: 883, column: 9, scope: !725)
!1164 = !DILocation(line: 883, column: 39, scope: !1160)
!1165 = !DILocation(line: 884, column: 11, scope: !725)
!1166 = !DILocation(line: 884, column: 14, scope: !725)
!1167 = !DILocation(line: 884, column: 9, scope: !725)
!1168 = !DILocalVariable(name: "dense_retval", scope: !725, file: !3, line: 893, type: !71)
!1169 = !DILocation(line: 893, column: 9, scope: !725)
!1170 = !DILocation(line: 893, column: 36, scope: !725)
!1171 = !DILocation(line: 893, column: 41, scope: !725)
!1172 = !DILocation(line: 893, column: 51, scope: !725)
!1173 = !DILocation(line: 893, column: 57, scope: !725)
!1174 = !DILocation(line: 893, column: 24, scope: !725)
!1175 = !DILocation(line: 894, column: 5, scope: !725)
!1176 = !DILocation(line: 895, column: 12, scope: !725)
!1177 = !DILocation(line: 895, column: 5, scope: !725)
!1178 = !DILocation(line: 896, column: 1, scope: !725)
!1179 = distinct !DISubprogram(name: "hllSparseAdd", scope: !3, file: !3, line: 904, type: !1180, scopeLine: 904, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!71, !566, !99, !254}
!1182 = !DILocalVariable(name: "o", arg: 1, scope: !1179, file: !3, line: 904, type: !566)
!1183 = !DILocation(line: 904, column: 24, scope: !1179)
!1184 = !DILocalVariable(name: "ele", arg: 2, scope: !1179, file: !3, line: 904, type: !99)
!1185 = !DILocation(line: 904, column: 42, scope: !1179)
!1186 = !DILocalVariable(name: "elesize", arg: 3, scope: !1179, file: !3, line: 904, type: !254)
!1187 = !DILocation(line: 904, column: 54, scope: !1179)
!1188 = !DILocalVariable(name: "index", scope: !1179, file: !3, line: 905, type: !103)
!1189 = !DILocation(line: 905, column: 10, scope: !1179)
!1190 = !DILocalVariable(name: "count", scope: !1179, file: !3, line: 906, type: !62)
!1191 = !DILocation(line: 906, column: 13, scope: !1179)
!1192 = !DILocation(line: 906, column: 31, scope: !1179)
!1193 = !DILocation(line: 906, column: 35, scope: !1179)
!1194 = !DILocation(line: 906, column: 21, scope: !1179)
!1195 = !DILocation(line: 908, column: 25, scope: !1179)
!1196 = !DILocation(line: 908, column: 27, scope: !1179)
!1197 = !DILocation(line: 908, column: 33, scope: !1179)
!1198 = !DILocation(line: 908, column: 12, scope: !1179)
!1199 = !DILocation(line: 908, column: 5, scope: !1179)
!1200 = distinct !DISubprogram(name: "hllSparseRegHisto", scope: !3, file: !3, line: 912, type: !1201, scopeLine: 912, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !72, !71, !360, !360}
!1203 = !DILocalVariable(name: "sparse", arg: 1, scope: !1200, file: !3, line: 912, type: !72)
!1204 = !DILocation(line: 912, column: 33, scope: !1200)
!1205 = !DILocalVariable(name: "sparselen", arg: 2, scope: !1200, file: !3, line: 912, type: !71)
!1206 = !DILocation(line: 912, column: 45, scope: !1200)
!1207 = !DILocalVariable(name: "invalid", arg: 3, scope: !1200, file: !3, line: 912, type: !360)
!1208 = !DILocation(line: 912, column: 61, scope: !1200)
!1209 = !DILocalVariable(name: "reghisto", arg: 4, scope: !1200, file: !3, line: 912, type: !360)
!1210 = !DILocation(line: 912, column: 75, scope: !1200)
!1211 = !DILocalVariable(name: "idx", scope: !1200, file: !3, line: 913, type: !71)
!1212 = !DILocation(line: 913, column: 9, scope: !1200)
!1213 = !DILocalVariable(name: "runlen", scope: !1200, file: !3, line: 913, type: !71)
!1214 = !DILocation(line: 913, column: 18, scope: !1200)
!1215 = !DILocalVariable(name: "regval", scope: !1200, file: !3, line: 913, type: !71)
!1216 = !DILocation(line: 913, column: 26, scope: !1200)
!1217 = !DILocalVariable(name: "end", scope: !1200, file: !3, line: 914, type: !72)
!1218 = !DILocation(line: 914, column: 14, scope: !1200)
!1219 = !DILocation(line: 914, column: 20, scope: !1200)
!1220 = !DILocation(line: 914, column: 27, scope: !1200)
!1221 = !DILocation(line: 914, column: 26, scope: !1200)
!1222 = !DILocalVariable(name: "p", scope: !1200, file: !3, line: 914, type: !72)
!1223 = !DILocation(line: 914, column: 39, scope: !1200)
!1224 = !DILocation(line: 914, column: 43, scope: !1200)
!1225 = !DILocation(line: 916, column: 5, scope: !1200)
!1226 = !DILocation(line: 916, column: 11, scope: !1200)
!1227 = !DILocation(line: 916, column: 15, scope: !1200)
!1228 = !DILocation(line: 916, column: 13, scope: !1200)
!1229 = !DILocation(line: 917, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 917, column: 13)
!1231 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 916, column: 20)
!1232 = !DILocation(line: 917, column: 13, scope: !1231)
!1233 = !DILocation(line: 918, column: 22, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 917, column: 36)
!1235 = !DILocation(line: 918, column: 20, scope: !1234)
!1236 = !DILocation(line: 919, column: 20, scope: !1234)
!1237 = !DILocation(line: 919, column: 17, scope: !1234)
!1238 = !DILocation(line: 920, column: 28, scope: !1234)
!1239 = !DILocation(line: 920, column: 13, scope: !1234)
!1240 = !DILocation(line: 920, column: 25, scope: !1234)
!1241 = !DILocation(line: 921, column: 14, scope: !1234)
!1242 = !DILocation(line: 922, column: 9, scope: !1234)
!1243 = !DILocation(line: 922, column: 20, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 922, column: 20)
!1245 = !DILocation(line: 922, column: 20, scope: !1230)
!1246 = !DILocation(line: 923, column: 22, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 922, column: 44)
!1248 = !DILocation(line: 923, column: 20, scope: !1247)
!1249 = !DILocation(line: 924, column: 20, scope: !1247)
!1250 = !DILocation(line: 924, column: 17, scope: !1247)
!1251 = !DILocation(line: 925, column: 28, scope: !1247)
!1252 = !DILocation(line: 925, column: 13, scope: !1247)
!1253 = !DILocation(line: 925, column: 25, scope: !1247)
!1254 = !DILocation(line: 926, column: 15, scope: !1247)
!1255 = !DILocation(line: 927, column: 9, scope: !1247)
!1256 = !DILocation(line: 928, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 927, column: 16)
!1258 = !DILocation(line: 928, column: 20, scope: !1257)
!1259 = !DILocation(line: 929, column: 22, scope: !1257)
!1260 = !DILocation(line: 929, column: 20, scope: !1257)
!1261 = !DILocation(line: 930, column: 20, scope: !1257)
!1262 = !DILocation(line: 930, column: 17, scope: !1257)
!1263 = !DILocation(line: 931, column: 33, scope: !1257)
!1264 = !DILocation(line: 931, column: 13, scope: !1257)
!1265 = !DILocation(line: 931, column: 22, scope: !1257)
!1266 = !DILocation(line: 931, column: 30, scope: !1257)
!1267 = !DILocation(line: 932, column: 14, scope: !1257)
!1268 = distinct !{!1268, !1225, !1269, !202}
!1269 = !DILocation(line: 934, column: 5, scope: !1200)
!1270 = !DILocation(line: 935, column: 9, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 935, column: 9)
!1272 = !DILocation(line: 935, column: 13, scope: !1271)
!1273 = !DILocation(line: 935, column: 30, scope: !1271)
!1274 = !DILocation(line: 935, column: 33, scope: !1271)
!1275 = !DILocation(line: 935, column: 9, scope: !1200)
!1276 = !DILocation(line: 935, column: 43, scope: !1271)
!1277 = !DILocation(line: 935, column: 51, scope: !1271)
!1278 = !DILocation(line: 935, column: 42, scope: !1271)
!1279 = !DILocation(line: 936, column: 1, scope: !1200)
!1280 = distinct !DISubprogram(name: "hllRawRegHisto", scope: !3, file: !3, line: 946, type: !358, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1281 = !DILocalVariable(name: "registers", arg: 1, scope: !1280, file: !3, line: 946, type: !72)
!1282 = !DILocation(line: 946, column: 30, scope: !1280)
!1283 = !DILocalVariable(name: "reghisto", arg: 2, scope: !1280, file: !3, line: 946, type: !360)
!1284 = !DILocation(line: 946, column: 46, scope: !1280)
!1285 = !DILocalVariable(name: "word", scope: !1280, file: !3, line: 947, type: !67)
!1286 = !DILocation(line: 947, column: 15, scope: !1280)
!1287 = !DILocation(line: 947, column: 34, scope: !1280)
!1288 = !DILocation(line: 947, column: 22, scope: !1280)
!1289 = !DILocalVariable(name: "bytes", scope: !1280, file: !3, line: 948, type: !72)
!1290 = !DILocation(line: 948, column: 14, scope: !1280)
!1291 = !DILocalVariable(name: "j", scope: !1280, file: !3, line: 949, type: !71)
!1292 = !DILocation(line: 949, column: 9, scope: !1280)
!1293 = !DILocation(line: 951, column: 12, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 951, column: 5)
!1295 = !DILocation(line: 951, column: 10, scope: !1294)
!1296 = !DILocation(line: 951, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 951, column: 5)
!1298 = !DILocation(line: 951, column: 19, scope: !1297)
!1299 = !DILocation(line: 951, column: 5, scope: !1294)
!1300 = !DILocation(line: 952, column: 14, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 952, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 951, column: 43)
!1303 = !DILocation(line: 952, column: 13, scope: !1301)
!1304 = !DILocation(line: 952, column: 19, scope: !1301)
!1305 = !DILocation(line: 952, column: 13, scope: !1302)
!1306 = !DILocation(line: 953, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 952, column: 25)
!1308 = !DILocation(line: 953, column: 25, scope: !1307)
!1309 = !DILocation(line: 954, column: 9, scope: !1307)
!1310 = !DILocation(line: 955, column: 32, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 954, column: 16)
!1312 = !DILocation(line: 955, column: 21, scope: !1311)
!1313 = !DILocation(line: 955, column: 19, scope: !1311)
!1314 = !DILocation(line: 956, column: 13, scope: !1311)
!1315 = !DILocation(line: 956, column: 22, scope: !1311)
!1316 = !DILocation(line: 956, column: 31, scope: !1311)
!1317 = !DILocation(line: 957, column: 13, scope: !1311)
!1318 = !DILocation(line: 957, column: 22, scope: !1311)
!1319 = !DILocation(line: 957, column: 31, scope: !1311)
!1320 = !DILocation(line: 958, column: 13, scope: !1311)
!1321 = !DILocation(line: 958, column: 22, scope: !1311)
!1322 = !DILocation(line: 958, column: 31, scope: !1311)
!1323 = !DILocation(line: 959, column: 13, scope: !1311)
!1324 = !DILocation(line: 959, column: 22, scope: !1311)
!1325 = !DILocation(line: 959, column: 31, scope: !1311)
!1326 = !DILocation(line: 960, column: 13, scope: !1311)
!1327 = !DILocation(line: 960, column: 22, scope: !1311)
!1328 = !DILocation(line: 960, column: 31, scope: !1311)
!1329 = !DILocation(line: 961, column: 13, scope: !1311)
!1330 = !DILocation(line: 961, column: 22, scope: !1311)
!1331 = !DILocation(line: 961, column: 31, scope: !1311)
!1332 = !DILocation(line: 962, column: 13, scope: !1311)
!1333 = !DILocation(line: 962, column: 22, scope: !1311)
!1334 = !DILocation(line: 962, column: 31, scope: !1311)
!1335 = !DILocation(line: 963, column: 13, scope: !1311)
!1336 = !DILocation(line: 963, column: 22, scope: !1311)
!1337 = !DILocation(line: 963, column: 31, scope: !1311)
!1338 = !DILocation(line: 965, column: 13, scope: !1302)
!1339 = !DILocation(line: 966, column: 5, scope: !1302)
!1340 = !DILocation(line: 951, column: 39, scope: !1297)
!1341 = !DILocation(line: 951, column: 5, scope: !1297)
!1342 = distinct !{!1342, !1299, !1343, !202}
!1343 = !DILocation(line: 966, column: 5, scope: !1294)
!1344 = !DILocation(line: 967, column: 1, scope: !1280)
!1345 = distinct !DISubprogram(name: "hllSigma", scope: !3, file: !3, line: 972, type: !1346, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!97, !97}
!1348 = !DILocalVariable(name: "x", arg: 1, scope: !1345, file: !3, line: 972, type: !97)
!1349 = !DILocation(line: 972, column: 24, scope: !1345)
!1350 = !DILocation(line: 973, column: 9, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 973, column: 9)
!1352 = !DILocation(line: 973, column: 11, scope: !1351)
!1353 = !DILocation(line: 973, column: 9, scope: !1345)
!1354 = !DILocation(line: 973, column: 18, scope: !1351)
!1355 = !DILocalVariable(name: "zPrime", scope: !1345, file: !3, line: 974, type: !97)
!1356 = !DILocation(line: 974, column: 12, scope: !1345)
!1357 = !DILocalVariable(name: "y", scope: !1345, file: !3, line: 975, type: !97)
!1358 = !DILocation(line: 975, column: 12, scope: !1345)
!1359 = !DILocalVariable(name: "z", scope: !1345, file: !3, line: 976, type: !97)
!1360 = !DILocation(line: 976, column: 12, scope: !1345)
!1361 = !DILocation(line: 976, column: 16, scope: !1345)
!1362 = !DILocation(line: 977, column: 5, scope: !1345)
!1363 = !DILocation(line: 978, column: 14, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 977, column: 8)
!1365 = !DILocation(line: 978, column: 11, scope: !1364)
!1366 = !DILocation(line: 979, column: 18, scope: !1364)
!1367 = !DILocation(line: 979, column: 16, scope: !1364)
!1368 = !DILocation(line: 980, column: 14, scope: !1364)
!1369 = !DILocation(line: 980, column: 18, scope: !1364)
!1370 = !DILocation(line: 980, column: 16, scope: !1364)
!1371 = !DILocation(line: 980, column: 11, scope: !1364)
!1372 = !DILocation(line: 981, column: 14, scope: !1364)
!1373 = !DILocation(line: 981, column: 11, scope: !1364)
!1374 = !DILocation(line: 982, column: 5, scope: !1364)
!1375 = !DILocation(line: 982, column: 13, scope: !1345)
!1376 = !DILocation(line: 982, column: 23, scope: !1345)
!1377 = !DILocation(line: 982, column: 20, scope: !1345)
!1378 = distinct !{!1378, !1362, !1379, !202}
!1379 = !DILocation(line: 982, column: 24, scope: !1345)
!1380 = !DILocation(line: 983, column: 12, scope: !1345)
!1381 = !DILocation(line: 983, column: 5, scope: !1345)
!1382 = !DILocation(line: 984, column: 1, scope: !1345)
!1383 = distinct !DISubprogram(name: "hllTau", scope: !3, file: !3, line: 989, type: !1346, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1384 = !DILocalVariable(name: "x", arg: 1, scope: !1383, file: !3, line: 989, type: !97)
!1385 = !DILocation(line: 989, column: 22, scope: !1383)
!1386 = !DILocation(line: 990, column: 9, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 990, column: 9)
!1388 = !DILocation(line: 990, column: 11, scope: !1387)
!1389 = !DILocation(line: 990, column: 17, scope: !1387)
!1390 = !DILocation(line: 990, column: 20, scope: !1387)
!1391 = !DILocation(line: 990, column: 22, scope: !1387)
!1392 = !DILocation(line: 990, column: 9, scope: !1383)
!1393 = !DILocation(line: 990, column: 29, scope: !1387)
!1394 = !DILocalVariable(name: "zPrime", scope: !1383, file: !3, line: 991, type: !97)
!1395 = !DILocation(line: 991, column: 12, scope: !1383)
!1396 = !DILocalVariable(name: "y", scope: !1383, file: !3, line: 992, type: !97)
!1397 = !DILocation(line: 992, column: 12, scope: !1383)
!1398 = !DILocalVariable(name: "z", scope: !1383, file: !3, line: 993, type: !97)
!1399 = !DILocation(line: 993, column: 12, scope: !1383)
!1400 = !DILocation(line: 993, column: 20, scope: !1383)
!1401 = !DILocation(line: 993, column: 18, scope: !1383)
!1402 = !DILocation(line: 994, column: 5, scope: !1383)
!1403 = !DILocation(line: 995, column: 18, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 994, column: 8)
!1405 = !DILocation(line: 995, column: 13, scope: !1404)
!1406 = !DILocation(line: 995, column: 11, scope: !1404)
!1407 = !DILocation(line: 996, column: 18, scope: !1404)
!1408 = !DILocation(line: 996, column: 16, scope: !1404)
!1409 = !DILocation(line: 997, column: 11, scope: !1404)
!1410 = !DILocation(line: 998, column: 22, scope: !1404)
!1411 = !DILocation(line: 998, column: 20, scope: !1404)
!1412 = !DILocation(line: 998, column: 14, scope: !1404)
!1413 = !DILocation(line: 998, column: 28, scope: !1404)
!1414 = !DILocation(line: 998, column: 27, scope: !1404)
!1415 = !DILocation(line: 998, column: 11, scope: !1404)
!1416 = !DILocation(line: 999, column: 5, scope: !1404)
!1417 = !DILocation(line: 999, column: 13, scope: !1383)
!1418 = !DILocation(line: 999, column: 23, scope: !1383)
!1419 = !DILocation(line: 999, column: 20, scope: !1383)
!1420 = distinct !{!1420, !1402, !1421, !202}
!1421 = !DILocation(line: 999, column: 24, scope: !1383)
!1422 = !DILocation(line: 1000, column: 12, scope: !1383)
!1423 = !DILocation(line: 1000, column: 14, scope: !1383)
!1424 = !DILocation(line: 1000, column: 5, scope: !1383)
!1425 = !DILocation(line: 1001, column: 1, scope: !1383)
!1426 = distinct !DISubprogram(name: "hllCount", scope: !3, file: !3, line: 1014, type: !1427, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!68, !73, !360}
!1429 = !DILocalVariable(name: "hdr", arg: 1, scope: !1426, file: !3, line: 1014, type: !73)
!1430 = !DILocation(line: 1014, column: 34, scope: !1426)
!1431 = !DILocalVariable(name: "invalid", arg: 2, scope: !1426, file: !3, line: 1014, type: !360)
!1432 = !DILocation(line: 1014, column: 44, scope: !1426)
!1433 = !DILocalVariable(name: "m", scope: !1426, file: !3, line: 1015, type: !97)
!1434 = !DILocation(line: 1015, column: 12, scope: !1426)
!1435 = !DILocalVariable(name: "E", scope: !1426, file: !3, line: 1016, type: !97)
!1436 = !DILocation(line: 1016, column: 12, scope: !1426)
!1437 = !DILocalVariable(name: "j", scope: !1426, file: !3, line: 1017, type: !71)
!1438 = !DILocation(line: 1017, column: 9, scope: !1426)
!1439 = !DILocalVariable(name: "reghisto", scope: !1426, file: !3, line: 1023, type: !1440)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 2048, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 64)
!1443 = !DILocation(line: 1023, column: 9, scope: !1426)
!1444 = !DILocation(line: 1026, column: 9, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1026, column: 9)
!1446 = !DILocation(line: 1026, column: 14, scope: !1445)
!1447 = !DILocation(line: 1026, column: 23, scope: !1445)
!1448 = !DILocation(line: 1026, column: 9, scope: !1426)
!1449 = !DILocation(line: 1027, column: 26, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1026, column: 37)
!1451 = !DILocation(line: 1027, column: 31, scope: !1450)
!1452 = !DILocation(line: 1027, column: 41, scope: !1450)
!1453 = !DILocation(line: 1027, column: 9, scope: !1450)
!1454 = !DILocation(line: 1028, column: 5, scope: !1450)
!1455 = !DILocation(line: 1028, column: 16, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1028, column: 16)
!1457 = !DILocation(line: 1028, column: 21, scope: !1456)
!1458 = !DILocation(line: 1028, column: 30, scope: !1456)
!1459 = !DILocation(line: 1028, column: 16, scope: !1445)
!1460 = !DILocation(line: 1029, column: 27, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1028, column: 45)
!1462 = !DILocation(line: 1029, column: 32, scope: !1461)
!1463 = !DILocation(line: 1030, column: 38, scope: !1461)
!1464 = !DILocation(line: 1030, column: 33, scope: !1461)
!1465 = !DILocation(line: 1030, column: 26, scope: !1461)
!1466 = !DILocation(line: 1030, column: 42, scope: !1461)
!1467 = !DILocation(line: 1030, column: 56, scope: !1461)
!1468 = !DILocation(line: 1030, column: 64, scope: !1461)
!1469 = !DILocation(line: 1029, column: 9, scope: !1461)
!1470 = !DILocation(line: 1031, column: 5, scope: !1461)
!1471 = !DILocation(line: 1031, column: 16, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 1031, column: 16)
!1473 = !DILocation(line: 1031, column: 21, scope: !1472)
!1474 = !DILocation(line: 1031, column: 30, scope: !1472)
!1475 = !DILocation(line: 1031, column: 16, scope: !1456)
!1476 = !DILocation(line: 1032, column: 24, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1031, column: 42)
!1478 = !DILocation(line: 1032, column: 29, scope: !1477)
!1479 = !DILocation(line: 1032, column: 39, scope: !1477)
!1480 = !DILocation(line: 1032, column: 9, scope: !1477)
!1481 = !DILocation(line: 1033, column: 5, scope: !1477)
!1482 = !DILocation(line: 1034, column: 9, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 1033, column: 12)
!1484 = !DILocalVariable(name: "z", scope: !1426, file: !3, line: 1040, type: !97)
!1485 = !DILocation(line: 1040, column: 12, scope: !1426)
!1486 = !DILocation(line: 1040, column: 16, scope: !1426)
!1487 = !DILocation(line: 1040, column: 28, scope: !1426)
!1488 = !DILocation(line: 1040, column: 30, scope: !1426)
!1489 = !DILocation(line: 1040, column: 29, scope: !1426)
!1490 = !DILocation(line: 1040, column: 57, scope: !1426)
!1491 = !DILocation(line: 1040, column: 48, scope: !1426)
!1492 = !DILocation(line: 1040, column: 20, scope: !1426)
!1493 = !DILocation(line: 1040, column: 18, scope: !1426)
!1494 = !DILocation(line: 1041, column: 12, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1041, column: 5)
!1496 = !DILocation(line: 1041, column: 10, scope: !1495)
!1497 = !DILocation(line: 1041, column: 21, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1041, column: 5)
!1499 = !DILocation(line: 1041, column: 23, scope: !1498)
!1500 = !DILocation(line: 1041, column: 5, scope: !1495)
!1501 = !DILocation(line: 1042, column: 23, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 1041, column: 34)
!1503 = !DILocation(line: 1042, column: 14, scope: !1502)
!1504 = !DILocation(line: 1042, column: 11, scope: !1502)
!1505 = !DILocation(line: 1043, column: 11, scope: !1502)
!1506 = !DILocation(line: 1044, column: 5, scope: !1502)
!1507 = !DILocation(line: 1041, column: 29, scope: !1498)
!1508 = !DILocation(line: 1041, column: 5, scope: !1498)
!1509 = distinct !{!1509, !1500, !1510, !202}
!1510 = !DILocation(line: 1044, column: 5, scope: !1495)
!1511 = !DILocation(line: 1045, column: 10, scope: !1426)
!1512 = !DILocation(line: 1045, column: 23, scope: !1426)
!1513 = !DILocation(line: 1045, column: 43, scope: !1426)
!1514 = !DILocation(line: 1045, column: 34, scope: !1426)
!1515 = !DILocation(line: 1045, column: 14, scope: !1426)
!1516 = !DILocation(line: 1045, column: 12, scope: !1426)
!1517 = !DILocation(line: 1045, column: 7, scope: !1426)
!1518 = !DILocation(line: 1046, column: 32, scope: !1426)
!1519 = !DILocation(line: 1046, column: 31, scope: !1426)
!1520 = !DILocation(line: 1046, column: 34, scope: !1426)
!1521 = !DILocation(line: 1046, column: 33, scope: !1426)
!1522 = !DILocation(line: 1046, column: 36, scope: !1426)
!1523 = !DILocation(line: 1046, column: 35, scope: !1426)
!1524 = !DILocation(line: 1046, column: 18, scope: !1426)
!1525 = !DILocation(line: 1046, column: 9, scope: !1426)
!1526 = !DILocation(line: 1046, column: 7, scope: !1426)
!1527 = !DILocation(line: 1048, column: 23, scope: !1426)
!1528 = !DILocation(line: 1048, column: 12, scope: !1426)
!1529 = !DILocation(line: 1048, column: 5, scope: !1426)
!1530 = distinct !DISubprogram(name: "hllAdd", scope: !3, file: !3, line: 1052, type: !1180, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1531 = !DILocalVariable(name: "o", arg: 1, scope: !1530, file: !3, line: 1052, type: !566)
!1532 = !DILocation(line: 1052, column: 18, scope: !1530)
!1533 = !DILocalVariable(name: "ele", arg: 2, scope: !1530, file: !3, line: 1052, type: !99)
!1534 = !DILocation(line: 1052, column: 36, scope: !1530)
!1535 = !DILocalVariable(name: "elesize", arg: 3, scope: !1530, file: !3, line: 1052, type: !254)
!1536 = !DILocation(line: 1052, column: 48, scope: !1530)
!1537 = !DILocalVariable(name: "hdr", scope: !1530, file: !3, line: 1053, type: !73)
!1538 = !DILocation(line: 1053, column: 20, scope: !1530)
!1539 = !DILocation(line: 1053, column: 26, scope: !1530)
!1540 = !DILocation(line: 1053, column: 29, scope: !1530)
!1541 = !DILocation(line: 1054, column: 12, scope: !1530)
!1542 = !DILocation(line: 1054, column: 17, scope: !1530)
!1543 = !DILocation(line: 1054, column: 5, scope: !1530)
!1544 = !DILocation(line: 1055, column: 40, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1054, column: 27)
!1546 = !DILocation(line: 1055, column: 45, scope: !1545)
!1547 = !DILocation(line: 1055, column: 55, scope: !1545)
!1548 = !DILocation(line: 1055, column: 59, scope: !1545)
!1549 = !DILocation(line: 1055, column: 28, scope: !1545)
!1550 = !DILocation(line: 1055, column: 21, scope: !1545)
!1551 = !DILocation(line: 1056, column: 42, scope: !1545)
!1552 = !DILocation(line: 1056, column: 44, scope: !1545)
!1553 = !DILocation(line: 1056, column: 48, scope: !1545)
!1554 = !DILocation(line: 1056, column: 29, scope: !1545)
!1555 = !DILocation(line: 1056, column: 22, scope: !1545)
!1556 = !DILocation(line: 1057, column: 14, scope: !1545)
!1557 = !DILocation(line: 1059, column: 1, scope: !1530)
!1558 = distinct !DISubprogram(name: "hllMerge", scope: !3, file: !3, line: 1069, type: !1559, scopeLine: 1069, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!71, !72, !566}
!1561 = !DILocalVariable(name: "max", arg: 1, scope: !1558, file: !3, line: 1069, type: !72)
!1562 = !DILocation(line: 1069, column: 23, scope: !1558)
!1563 = !DILocalVariable(name: "hll", arg: 2, scope: !1558, file: !3, line: 1069, type: !566)
!1564 = !DILocation(line: 1069, column: 34, scope: !1558)
!1565 = !DILocalVariable(name: "hdr", scope: !1558, file: !3, line: 1070, type: !73)
!1566 = !DILocation(line: 1070, column: 20, scope: !1558)
!1567 = !DILocation(line: 1070, column: 26, scope: !1558)
!1568 = !DILocation(line: 1070, column: 31, scope: !1558)
!1569 = !DILocalVariable(name: "i", scope: !1558, file: !3, line: 1071, type: !71)
!1570 = !DILocation(line: 1071, column: 9, scope: !1558)
!1571 = !DILocation(line: 1073, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 1073, column: 9)
!1573 = !DILocation(line: 1073, column: 14, scope: !1572)
!1574 = !DILocation(line: 1073, column: 23, scope: !1572)
!1575 = !DILocation(line: 1073, column: 9, scope: !1558)
!1576 = !DILocalVariable(name: "val", scope: !1577, file: !3, line: 1074, type: !62)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 1073, column: 37)
!1578 = !DILocation(line: 1074, column: 17, scope: !1577)
!1579 = !DILocation(line: 1076, column: 16, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1076, column: 9)
!1581 = !DILocation(line: 1076, column: 14, scope: !1580)
!1582 = !DILocation(line: 1076, column: 21, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 1076, column: 9)
!1584 = !DILocation(line: 1076, column: 23, scope: !1583)
!1585 = !DILocation(line: 1076, column: 9, scope: !1580)
!1586 = !DILocation(line: 1077, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 1076, column: 45)
!1588 = !DILocalVariable(name: "_p", scope: !1589, file: !3, line: 1077, type: !72)
!1589 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 1077, column: 13)
!1590 = !DILocation(line: 1077, column: 13, scope: !1589)
!1591 = !DILocalVariable(name: "_byte", scope: !1589, file: !3, line: 1077, type: !70)
!1592 = !DILocalVariable(name: "_fb", scope: !1589, file: !3, line: 1077, type: !70)
!1593 = !DILocalVariable(name: "_fb8", scope: !1589, file: !3, line: 1077, type: !70)
!1594 = !DILocalVariable(name: "b0", scope: !1589, file: !3, line: 1077, type: !70)
!1595 = !DILocalVariable(name: "b1", scope: !1589, file: !3, line: 1077, type: !70)
!1596 = !DILocation(line: 1078, column: 17, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 1078, column: 17)
!1598 = !DILocation(line: 1078, column: 23, scope: !1597)
!1599 = !DILocation(line: 1078, column: 27, scope: !1597)
!1600 = !DILocation(line: 1078, column: 21, scope: !1597)
!1601 = !DILocation(line: 1078, column: 17, scope: !1587)
!1602 = !DILocation(line: 1078, column: 40, scope: !1597)
!1603 = !DILocation(line: 1078, column: 31, scope: !1597)
!1604 = !DILocation(line: 1078, column: 35, scope: !1597)
!1605 = !DILocation(line: 1078, column: 38, scope: !1597)
!1606 = !DILocation(line: 1079, column: 9, scope: !1587)
!1607 = !DILocation(line: 1076, column: 41, scope: !1583)
!1608 = !DILocation(line: 1076, column: 9, scope: !1583)
!1609 = distinct !{!1609, !1585, !1610, !202}
!1610 = !DILocation(line: 1079, column: 9, scope: !1580)
!1611 = !DILocation(line: 1080, column: 5, scope: !1577)
!1612 = !DILocalVariable(name: "p", scope: !1613, file: !3, line: 1081, type: !72)
!1613 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 1080, column: 12)
!1614 = !DILocation(line: 1081, column: 18, scope: !1613)
!1615 = !DILocation(line: 1081, column: 22, scope: !1613)
!1616 = !DILocation(line: 1081, column: 27, scope: !1613)
!1617 = !DILocalVariable(name: "end", scope: !1613, file: !3, line: 1081, type: !72)
!1618 = !DILocation(line: 1081, column: 33, scope: !1613)
!1619 = !DILocation(line: 1081, column: 39, scope: !1613)
!1620 = !DILocation(line: 1081, column: 50, scope: !1613)
!1621 = !DILocation(line: 1081, column: 55, scope: !1613)
!1622 = !DILocation(line: 1081, column: 43, scope: !1613)
!1623 = !DILocation(line: 1081, column: 41, scope: !1613)
!1624 = !DILocalVariable(name: "runlen", scope: !1613, file: !3, line: 1082, type: !103)
!1625 = !DILocation(line: 1082, column: 14, scope: !1613)
!1626 = !DILocalVariable(name: "regval", scope: !1613, file: !3, line: 1082, type: !103)
!1627 = !DILocation(line: 1082, column: 22, scope: !1613)
!1628 = !DILocation(line: 1084, column: 11, scope: !1613)
!1629 = !DILocation(line: 1085, column: 11, scope: !1613)
!1630 = !DILocation(line: 1086, column: 9, scope: !1613)
!1631 = !DILocation(line: 1086, column: 15, scope: !1613)
!1632 = !DILocation(line: 1086, column: 19, scope: !1613)
!1633 = !DILocation(line: 1086, column: 17, scope: !1613)
!1634 = !DILocation(line: 1087, column: 17, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 1087, column: 17)
!1636 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1086, column: 24)
!1637 = !DILocation(line: 1087, column: 17, scope: !1636)
!1638 = !DILocation(line: 1088, column: 26, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1087, column: 40)
!1640 = !DILocation(line: 1088, column: 24, scope: !1639)
!1641 = !DILocation(line: 1089, column: 22, scope: !1639)
!1642 = !DILocation(line: 1089, column: 19, scope: !1639)
!1643 = !DILocation(line: 1090, column: 18, scope: !1639)
!1644 = !DILocation(line: 1091, column: 13, scope: !1639)
!1645 = !DILocation(line: 1091, column: 24, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1091, column: 24)
!1647 = !DILocation(line: 1091, column: 24, scope: !1635)
!1648 = !DILocation(line: 1092, column: 26, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1091, column: 48)
!1650 = !DILocation(line: 1092, column: 24, scope: !1649)
!1651 = !DILocation(line: 1093, column: 22, scope: !1649)
!1652 = !DILocation(line: 1093, column: 19, scope: !1649)
!1653 = !DILocation(line: 1094, column: 19, scope: !1649)
!1654 = !DILocation(line: 1095, column: 13, scope: !1649)
!1655 = !DILocation(line: 1096, column: 26, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1095, column: 20)
!1657 = !DILocation(line: 1096, column: 24, scope: !1656)
!1658 = !DILocation(line: 1097, column: 26, scope: !1656)
!1659 = !DILocation(line: 1097, column: 24, scope: !1656)
!1660 = !DILocation(line: 1098, column: 22, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1098, column: 21)
!1662 = !DILocation(line: 1098, column: 31, scope: !1661)
!1663 = !DILocation(line: 1098, column: 29, scope: !1661)
!1664 = !DILocation(line: 1098, column: 34, scope: !1661)
!1665 = !DILocation(line: 1098, column: 21, scope: !1656)
!1666 = !DILocation(line: 1098, column: 51, scope: !1661)
!1667 = !DILocation(line: 1099, column: 17, scope: !1656)
!1668 = !DILocation(line: 1099, column: 29, scope: !1656)
!1669 = !DILocation(line: 1100, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 1100, column: 25)
!1671 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1099, column: 33)
!1672 = !DILocation(line: 1100, column: 34, scope: !1670)
!1673 = !DILocation(line: 1100, column: 38, scope: !1670)
!1674 = !DILocation(line: 1100, column: 32, scope: !1670)
!1675 = !DILocation(line: 1100, column: 25, scope: !1671)
!1676 = !DILocation(line: 1100, column: 51, scope: !1670)
!1677 = !DILocation(line: 1100, column: 42, scope: !1670)
!1678 = !DILocation(line: 1100, column: 46, scope: !1670)
!1679 = !DILocation(line: 1100, column: 49, scope: !1670)
!1680 = !DILocation(line: 1101, column: 22, scope: !1671)
!1681 = distinct !{!1681, !1667, !1682, !202}
!1682 = !DILocation(line: 1102, column: 17, scope: !1656)
!1683 = !DILocation(line: 1103, column: 18, scope: !1656)
!1684 = distinct !{!1684, !1630, !1685, !202}
!1685 = !DILocation(line: 1105, column: 9, scope: !1613)
!1686 = !DILocation(line: 1106, column: 13, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1106, column: 13)
!1688 = !DILocation(line: 1106, column: 15, scope: !1687)
!1689 = !DILocation(line: 1106, column: 13, scope: !1613)
!1690 = !DILocation(line: 1106, column: 33, scope: !1687)
!1691 = !DILocation(line: 1108, column: 5, scope: !1558)
!1692 = !DILocation(line: 1109, column: 1, scope: !1558)
!1693 = distinct !DISubprogram(name: "createHLLObject", scope: !3, file: !3, line: 1115, type: !1694, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!566}
!1696 = !DILocalVariable(name: "o", scope: !1693, file: !3, line: 1116, type: !566)
!1697 = !DILocation(line: 1116, column: 11, scope: !1693)
!1698 = !DILocalVariable(name: "hdr", scope: !1693, file: !3, line: 1117, type: !73)
!1699 = !DILocation(line: 1117, column: 20, scope: !1693)
!1700 = !DILocalVariable(name: "s", scope: !1693, file: !3, line: 1118, type: !94)
!1701 = !DILocation(line: 1118, column: 9, scope: !1693)
!1702 = !DILocalVariable(name: "p", scope: !1693, file: !3, line: 1119, type: !72)
!1703 = !DILocation(line: 1119, column: 14, scope: !1693)
!1704 = !DILocalVariable(name: "sparselen", scope: !1693, file: !3, line: 1120, type: !71)
!1705 = !DILocation(line: 1120, column: 9, scope: !1693)
!1706 = !DILocalVariable(name: "aux", scope: !1693, file: !3, line: 1123, type: !71)
!1707 = !DILocation(line: 1123, column: 9, scope: !1693)
!1708 = !DILocation(line: 1127, column: 9, scope: !1693)
!1709 = !DILocation(line: 1128, column: 24, scope: !1693)
!1710 = !DILocation(line: 1128, column: 9, scope: !1693)
!1711 = !DILocation(line: 1128, column: 7, scope: !1693)
!1712 = !DILocation(line: 1129, column: 19, scope: !1693)
!1713 = !DILocation(line: 1129, column: 21, scope: !1693)
!1714 = !DILocation(line: 1129, column: 7, scope: !1693)
!1715 = !DILocation(line: 1130, column: 5, scope: !1693)
!1716 = !DILocation(line: 1130, column: 11, scope: !1693)
!1717 = !DILocalVariable(name: "xzero", scope: !1718, file: !3, line: 1131, type: !71)
!1718 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1130, column: 16)
!1719 = !DILocation(line: 1131, column: 13, scope: !1718)
!1720 = !DILocation(line: 1132, column: 13, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1132, column: 13)
!1722 = !DILocation(line: 1132, column: 21, scope: !1721)
!1723 = !DILocation(line: 1132, column: 19, scope: !1721)
!1724 = !DILocation(line: 1132, column: 13, scope: !1718)
!1725 = !DILocation(line: 1132, column: 34, scope: !1721)
!1726 = !DILocation(line: 1132, column: 32, scope: !1721)
!1727 = !DILocation(line: 1132, column: 26, scope: !1721)
!1728 = !DILocation(line: 1133, column: 9, scope: !1718)
!1729 = !DILocalVariable(name: "_l", scope: !1730, file: !3, line: 1133, type: !71)
!1730 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1133, column: 9)
!1731 = !DILocation(line: 1133, column: 9, scope: !1730)
!1732 = !DILocation(line: 1134, column: 11, scope: !1718)
!1733 = !DILocation(line: 1135, column: 16, scope: !1718)
!1734 = !DILocation(line: 1135, column: 13, scope: !1718)
!1735 = distinct !{!1735, !1715, !1736, !202}
!1736 = !DILocation(line: 1136, column: 5, scope: !1693)
!1737 = !DILocation(line: 1137, column: 5, scope: !1693)
!1738 = !DILocation(line: 1140, column: 33, scope: !1693)
!1739 = !DILocation(line: 1140, column: 9, scope: !1693)
!1740 = !DILocation(line: 1140, column: 7, scope: !1693)
!1741 = !DILocation(line: 1141, column: 11, scope: !1693)
!1742 = !DILocation(line: 1141, column: 14, scope: !1693)
!1743 = !DILocation(line: 1141, column: 9, scope: !1693)
!1744 = !DILocation(line: 1142, column: 12, scope: !1693)
!1745 = !DILocation(line: 1142, column: 17, scope: !1693)
!1746 = !DILocation(line: 1142, column: 5, scope: !1693)
!1747 = !DILocation(line: 1143, column: 5, scope: !1693)
!1748 = !DILocation(line: 1143, column: 10, scope: !1693)
!1749 = !DILocation(line: 1143, column: 19, scope: !1693)
!1750 = !DILocation(line: 1144, column: 12, scope: !1693)
!1751 = !DILocation(line: 1144, column: 5, scope: !1693)
!1752 = distinct !DISubprogram(name: "isHLLObjectOrReply", scope: !3, file: !3, line: 1150, type: !1753, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!71, !1755, !566}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1906, !1907, !2019, !2020, !2021, !2022, !2023, !2024, !2026, !2027, !2028, !2029, !2030, !2179, !2180, !2181, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2228, !2229, !2230, !2231, !2232, !2250, !2251, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2287, !2288, !2289, !2290, !2309, !2310, !2311, !2312, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1757, file: !16, line: 1090, baseType: !68, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1757, file: !16, line: 1091, baseType: !68, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !1757, file: !16, line: 1092, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !1765)
!1765 = !{!1766, !1895, !1897, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1764, file: !6, line: 78, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !1770)
!1770 = !{!1771, !1834, !1845, !1849, !1860, !1864, !1865, !1869, !1873, !1874, !1878, !1882, !1889, !1890, !1891}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !1769, file: !6, line: 60, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !1775, !71, !98, !71}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !1777, line: 99, size: 640, elements: !1778)
!1777 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1778 = !{!1779, !1780, !1781, !1783, !1794, !1801, !1825, !1826, !1827, !1832, !1833}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !1776, file: !1777, line: 100, baseType: !71, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !1776, file: !1777, line: 101, baseType: !71, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !1776, file: !1777, line: 102, baseType: !1782, size: 64, offset: 64)
!1782 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1776, file: !1777, line: 103, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !1777, line: 77, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !1777, line: 72, size: 256, elements: !1787)
!1787 = !{!1788, !1789, !1792, !1793}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1786, file: !1777, line: 73, baseType: !71, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !1786, file: !1777, line: 74, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !1777, line: 66, baseType: !1773)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !1786, file: !1777, line: 75, baseType: !1790, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1786, file: !1777, line: 76, baseType: !98, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !1776, file: !1777, line: 104, baseType: !1795, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !1777, line: 96, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !1777, line: 93, size: 64, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1797, file: !1777, line: 94, baseType: !71, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1797, file: !1777, line: 95, baseType: !71, size: 32, offset: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !1776, file: !1777, line: 105, baseType: !1802, size: 64, offset: 256)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !1777, line: 90, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !1777, line: 80, size: 512, elements: !1805)
!1805 = !{!1806, !1807, !1810, !1815, !1820, !1821, !1823, !1824}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1804, file: !1777, line: 81, baseType: !1782, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !1804, file: !1777, line: 82, baseType: !1808, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !1809, line: 22, baseType: !68)
!1809 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !1804, file: !1777, line: 83, baseType: !1811, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !1777, line: 67, baseType: !1813)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!71, !1775, !1782, !98}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !1804, file: !1777, line: 84, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !1777, line: 68, baseType: !1818)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1775, !98}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !1804, file: !1777, line: 85, baseType: !98, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1804, file: !1777, line: 86, baseType: !1822, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1804, file: !1777, line: 87, baseType: !1822, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1804, file: !1777, line: 88, baseType: !71, size: 32, offset: 448)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1776, file: !1777, line: 106, baseType: !71, size: 32, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !1776, file: !1777, line: 107, baseType: !98, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !1776, file: !1777, line: 108, baseType: !1828, size: 64, offset: 448)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !1777, line: 69, baseType: !1830)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1775}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !1776, file: !1777, line: 109, baseType: !1828, size: 64, offset: 512)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1776, file: !1777, line: 110, baseType: !71, size: 32, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !1769, file: !6, line: 61, baseType: !1835, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!71, !1838, !1839, !71, !1839, !1841}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !1842)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !1838}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1769, file: !6, line: 62, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!71, !1838, !149, !254}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !1769, file: !6, line: 63, baseType: !1850, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!71, !1838, !1853, !71}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1856, line: 26, size: 128, elements: !1857)
!1856 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1855, file: !1856, line: 28, baseType: !98, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1855, file: !1856, line: 29, baseType: !254, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1769, file: !6, line: 64, baseType: !1861, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!71, !1838, !98, !254}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1769, file: !6, line: 65, baseType: !1842, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !1769, file: !6, line: 66, baseType: !1866, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!71, !1838, !1841}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !1769, file: !6, line: 67, baseType: !1870, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!71, !1838, !1841, !71}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !1769, file: !6, line: 68, baseType: !1866, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !1769, file: !6, line: 69, baseType: !1875, size: 64, offset: 576)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1839, !1838}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !1769, file: !6, line: 70, baseType: !1879, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!71, !1838, !1839, !71, !1782}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !1769, file: !6, line: 71, baseType: !1883, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!1886, !1838, !96, !1886, !1782}
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1887, line: 108, baseType: !1888)
!1887 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !65, line: 194, baseType: !103)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !1769, file: !6, line: 72, baseType: !1883, size: 64, offset: 768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !1769, file: !6, line: 73, baseType: !1883, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !1769, file: !6, line: 74, baseType: !1892, size: 64, offset: 896)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!71, !1838}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1764, file: !6, line: 79, baseType: !1896, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1764, file: !6, line: 80, baseType: !1898, size: 16, offset: 96)
!1898 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1764, file: !6, line: 81, baseType: !1898, size: 16, offset: 112)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !1764, file: !6, line: 82, baseType: !71, size: 32, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1764, file: !6, line: 83, baseType: !98, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !1764, file: !6, line: 84, baseType: !1841, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !1764, file: !6, line: 85, baseType: !1841, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !1764, file: !6, line: 86, baseType: !1841, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1764, file: !6, line: 87, baseType: !71, size: 32, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !1757, file: !16, line: 1093, baseType: !71, size: 32, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1757, file: !16, line: 1094, baseType: !1908, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !1911)
!1911 = !{!1912, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !2015}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1910, file: !16, line: 923, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !1915, line: 61, baseType: !1916)
!1915 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !1915, line: 79, size: 448, elements: !1917)
!1917 = !{!1918, !1949, !1970, !1972, !1973, !1976}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1916, file: !1915, line: 80, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !1915, line: 74, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !1915, line: 63, size: 512, elements: !1922)
!1922 = !{!1923, !1927, !1931, !1932, !1936, !1940, !1941, !1945}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !1921, file: !1915, line: 64, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!68, !149}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !1921, file: !1915, line: 65, baseType: !1928, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!98, !1913, !149}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !1921, file: !1915, line: 66, baseType: !1928, size: 64, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !1921, file: !1915, line: 67, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!71, !1913, !149, !149}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !1921, file: !1915, line: 68, baseType: !1937, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1913, !98}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !1921, file: !1915, line: 69, baseType: !1937, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !1921, file: !1915, line: 70, baseType: !1942, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!71, !254, !97}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !1921, file: !1915, line: 73, baseType: !1946, size: 64, offset: 448)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!254, !1913}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !1916, file: !1915, line: 82, baseType: !1950, size: 128, offset: 64)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1951, size: 128, elements: !1968)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !1915, line: 59, baseType: !1954)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !1915, line: 47, size: 192, elements: !1955)
!1955 = !{!1956, !1957, !1964, !1966}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1954, file: !1915, line: 48, baseType: !98, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !1954, file: !1915, line: 54, baseType: !1958, size: 64, offset: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1954, file: !1915, line: 49, size: 64, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1958, file: !1915, line: 50, baseType: !98, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !1958, file: !1915, line: 51, baseType: !68, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !1958, file: !1915, line: 52, baseType: !100, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1958, file: !1915, line: 53, baseType: !97, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1954, file: !1915, line: 55, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !1954, file: !1915, line: 56, baseType: !1967, offset: 192)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !92)
!1968 = !{!1969}
!1969 = !DISubrange(count: 2)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !1916, file: !1915, line: 83, baseType: !1971, size: 128, offset: 192)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !1968)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !1916, file: !1915, line: 85, baseType: !103, size: 64, offset: 320)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !1916, file: !1915, line: 88, baseType: !1974, size: 16, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !101, line: 25, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !65, line: 39, baseType: !1898)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !1916, file: !1915, line: 89, baseType: !1977, size: 16, offset: 400)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1978, size: 16, elements: !1968)
!1978 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1910, file: !16, line: 924, baseType: !1913, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1910, file: !16, line: 925, baseType: !1913, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1910, file: !16, line: 926, baseType: !1913, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1910, file: !16, line: 927, baseType: !1913, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1910, file: !16, line: 928, baseType: !71, size: 32, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1910, file: !16, line: 929, baseType: !1782, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !1910, file: !16, line: 930, baseType: !70, size: 64, offset: 448)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1910, file: !16, line: 931, baseType: !1987, size: 64, offset: 512)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1989, line: 54, baseType: !1990)
!1989 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1989, line: 47, size: 384, elements: !1991)
!1991 = !{!1992, !2001, !2002, !2006, !2010, !2014}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1990, file: !1989, line: 48, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1989, line: 40, baseType: !1995)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1989, line: 36, size: 192, elements: !1996)
!1996 = !{!1997, !1999, !2000}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1995, file: !1989, line: 37, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1995, file: !1989, line: 38, baseType: !1998, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1995, file: !1989, line: 39, baseType: !98, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1990, file: !1989, line: 49, baseType: !1993, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1990, file: !1989, line: 50, baseType: !2003, size: 64, offset: 128)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!98, !98}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1990, file: !1989, line: 51, baseType: !2007, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !98}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1990, file: !1989, line: 52, baseType: !2011, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!71, !98, !98}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1990, file: !1989, line: 53, baseType: !70, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !1910, file: !16, line: 932, baseType: !2016, size: 64, offset: 576)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !2018)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !16, line: 917, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !16, line: 1095, baseType: !566, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !1757, file: !16, line: 1096, baseType: !94, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !1757, file: !16, line: 1097, baseType: !254, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !1757, file: !16, line: 1098, baseType: !254, size: 64, offset: 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1757, file: !16, line: 1099, baseType: !71, size: 32, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1757, file: !16, line: 1100, baseType: !2025, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !1757, file: !16, line: 1101, baseType: !71, size: 32, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !1757, file: !16, line: 1102, baseType: !71, size: 32, offset: 736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !1757, file: !16, line: 1103, baseType: !2025, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !1757, file: !16, line: 1104, baseType: !254, size: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1757, file: !16, line: 1105, baseType: !2031, size: 64, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2043, !2050, !2052, !2057, !2058, !2059, !2060, !2098, !2120, !2121, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2166, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !2032, file: !16, line: 2235, baseType: !1839, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !2032, file: !16, line: 2237, baseType: !1839, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !2032, file: !16, line: 2238, baseType: !1839, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !2032, file: !16, line: 2239, baseType: !1839, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !2032, file: !16, line: 2240, baseType: !71, size: 32, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !2032, file: !16, line: 2241, baseType: !1839, size: 64, offset: 320)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !2032, file: !16, line: 2242, baseType: !1839, size: 64, offset: 384)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2032, file: !16, line: 2243, baseType: !2042, size: 32, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !2032, file: !16, line: 2244, baseType: !2044, size: 64, offset: 512)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !2046, file: !16, line: 2111, baseType: !1839, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !2046, file: !16, line: 2112, baseType: !1839, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !2032, file: !16, line: 2245, baseType: !2051, size: 64, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !2032, file: !16, line: 2246, baseType: !2053, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !2055)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1755}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !2032, file: !16, line: 2247, baseType: !71, size: 32, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2032, file: !16, line: 2248, baseType: !68, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !2032, file: !16, line: 2249, baseType: !68, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !2032, file: !16, line: 2250, baseType: !2061, size: 1792, offset: 896)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 1792, elements: !79)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !2063)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2069, !2081, !2083}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !2063, file: !16, line: 2006, baseType: !1839, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2063, file: !16, line: 2007, baseType: !68, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !2063, file: !16, line: 2008, baseType: !2068, size: 32, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !2063, file: !16, line: 2022, baseType: !2070, size: 128, offset: 192)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !16, line: 2009, size: 128, elements: !2071)
!2071 = !{!2072, !2076}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2070, file: !16, line: 2013, baseType: !2073, size: 32)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !16, line: 2010, size: 32, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2073, file: !16, line: 2012, baseType: !71, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !2070, file: !16, line: 2021, baseType: !2077, size: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2070, file: !16, line: 2014, size: 128, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !2077, file: !16, line: 2016, baseType: !1839, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !2077, file: !16, line: 2020, baseType: !71, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !2063, file: !16, line: 2023, baseType: !2082, size: 32, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !2063, file: !16, line: 2047, baseType: !2084, size: 96, offset: 352)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !16, line: 2024, size: 96, elements: !2085)
!2085 = !{!2086, !2092}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2084, file: !16, line: 2037, baseType: !2087, size: 96)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !16, line: 2027, size: 96, elements: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !2087, file: !16, line: 2031, baseType: !71, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !2087, file: !16, line: 2033, baseType: !71, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2087, file: !16, line: 2036, baseType: !71, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !2084, file: !16, line: 2046, baseType: !2093, size: 96)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !16, line: 2038, size: 96, elements: !2094)
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !2093, file: !16, line: 2040, baseType: !71, size: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !2093, file: !16, line: 2043, baseType: !71, size: 32, offset: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !2093, file: !16, line: 2045, baseType: !71, size: 32, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !2032, file: !16, line: 2253, baseType: !2099, size: 64, offset: 2688)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !2101)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!71, !2031, !2025, !71, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !2106)
!2106 = !{!2107, !2116, !2118, !2119}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !2105, file: !16, line: 1962, baseType: !2108, size: 16384)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 16384, elements: !2114)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !2111)
!2111 = !{!2112, !2113}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2110, file: !16, line: 1952, baseType: !71, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2110, file: !16, line: 1953, baseType: !71, size: 32, offset: 32)
!2114 = !{!2115}
!2115 = !DISubrange(count: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2105, file: !16, line: 1963, baseType: !2117, size: 64, offset: 16384)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !2105, file: !16, line: 1964, baseType: !71, size: 32, offset: 16448)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2105, file: !16, line: 1965, baseType: !71, size: 32, offset: 16480)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !2032, file: !16, line: 2255, baseType: !2031, size: 64, offset: 2752)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2032, file: !16, line: 2257, baseType: !2122, size: 64, offset: 2816)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !2124)
!2124 = !{!2125, !2126, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2123, file: !16, line: 2072, baseType: !1839, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2123, file: !16, line: 2073, baseType: !2127, size: 32, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !2123, file: !16, line: 2074, baseType: !71, size: 32, offset: 96)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !2123, file: !16, line: 2075, baseType: !1839, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !2123, file: !16, line: 2076, baseType: !1839, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !2123, file: !16, line: 2077, baseType: !1839, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !16, line: 2078, baseType: !71, size: 32, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !2123, file: !16, line: 2079, baseType: !1839, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !2123, file: !16, line: 2080, baseType: !2122, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !2123, file: !16, line: 2082, baseType: !71, size: 32, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !2032, file: !16, line: 2260, baseType: !1782, size: 64, offset: 2880)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !2032, file: !16, line: 2260, baseType: !1782, size: 64, offset: 2944)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !2032, file: !16, line: 2260, baseType: !1782, size: 64, offset: 3008)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !2032, file: !16, line: 2260, baseType: !1782, size: 64, offset: 3072)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2032, file: !16, line: 2261, baseType: !71, size: 32, offset: 3136)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !2032, file: !16, line: 2266, baseType: !94, size: 64, offset: 3200)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !2032, file: !16, line: 2267, baseType: !2143, size: 64, offset: 3264)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !2145, line: 17, size: 832, elements: !2146)
!2145 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2146 = !{!2147, !2148, !2149, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !2144, file: !2145, line: 19, baseType: !100, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !2144, file: !2145, line: 20, baseType: !100, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !2144, file: !2145, line: 21, baseType: !2150, size: 32, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !101, line: 26, baseType: !2151)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !65, line: 41, baseType: !71)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !2144, file: !2145, line: 22, baseType: !2150, size: 32, offset: 160)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !2144, file: !2145, line: 23, baseType: !2150, size: 32, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !2144, file: !2145, line: 24, baseType: !2150, size: 32, offset: 224)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !2144, file: !2145, line: 25, baseType: !100, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !2144, file: !2145, line: 26, baseType: !2150, size: 32, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !2144, file: !2145, line: 27, baseType: !2150, size: 32, offset: 352)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !2144, file: !2145, line: 28, baseType: !100, size: 64, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !2144, file: !2145, line: 29, baseType: !100, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !2144, file: !2145, line: 30, baseType: !2150, size: 32, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !2144, file: !2145, line: 31, baseType: !97, size: 64, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !2144, file: !2145, line: 32, baseType: !2150, size: 32, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !2144, file: !2145, line: 33, baseType: !100, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !2144, file: !2145, line: 34, baseType: !2165, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !2032, file: !16, line: 2268, baseType: !2167, size: 64, offset: 3328)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !2032, file: !16, line: 2269, baseType: !2062, size: 448, offset: 3392)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !2032, file: !16, line: 2273, baseType: !71, size: 32, offset: 3840)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !2032, file: !16, line: 2274, baseType: !71, size: 32, offset: 3872)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !2032, file: !16, line: 2275, baseType: !71, size: 32, offset: 3904)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !2032, file: !16, line: 2276, baseType: !71, size: 32, offset: 3936)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !2032, file: !16, line: 2277, baseType: !71, size: 32, offset: 3968)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !2032, file: !16, line: 2278, baseType: !1913, size: 64, offset: 4032)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2032, file: !16, line: 2280, baseType: !2031, size: 64, offset: 4096)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !2032, file: !16, line: 2281, baseType: !2177, size: 64, offset: 4160)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !1757, file: !16, line: 1105, baseType: !2031, size: 64, offset: 960)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !1757, file: !16, line: 1106, baseType: !2031, size: 64, offset: 1024)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1757, file: !16, line: 1109, baseType: !2182, size: 64, offset: 1088)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !2184)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2184, file: !16, line: 1050, baseType: !94, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !16, line: 1051, baseType: !127, size: 32, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !2184, file: !16, line: 1052, baseType: !1987, size: 64, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !2184, file: !16, line: 1053, baseType: !1987, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !2184, file: !16, line: 1056, baseType: !566, size: 64, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !1757, file: !16, line: 1112, baseType: !71, size: 32, offset: 1152)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !1757, file: !16, line: 1113, baseType: !71, size: 32, offset: 1184)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !1757, file: !16, line: 1114, baseType: !103, size: 64, offset: 1216)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !1757, file: !16, line: 1115, baseType: !1987, size: 64, offset: 1280)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !1757, file: !16, line: 1116, baseType: !104, size: 64, offset: 1344)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !1757, file: !16, line: 1117, baseType: !1987, size: 64, offset: 1408)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !1757, file: !16, line: 1118, baseType: !254, size: 64, offset: 1472)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1757, file: !16, line: 1120, baseType: !2199, size: 64, offset: 1536)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2200, line: 10, baseType: !2201)
!2200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !65, line: 160, baseType: !103)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1757, file: !16, line: 1121, baseType: !103, size: 64, offset: 1600)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1757, file: !16, line: 1122, baseType: !71, size: 32, offset: 1664)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !1757, file: !16, line: 1123, baseType: !1952, size: 64, offset: 1728)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !1757, file: !16, line: 1124, baseType: !2199, size: 64, offset: 1792)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !1757, file: !16, line: 1125, baseType: !2199, size: 64, offset: 1856)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !1757, file: !16, line: 1126, baseType: !71, size: 32, offset: 1920)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !1757, file: !16, line: 1127, baseType: !71, size: 32, offset: 1952)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !1757, file: !16, line: 1128, baseType: !71, size: 32, offset: 1984)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !1757, file: !16, line: 1129, baseType: !71, size: 32, offset: 2016)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !1757, file: !16, line: 1130, baseType: !2212, size: 64, offset: 2048)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2213, line: 58, baseType: !2214)
!2213 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !103)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !1757, file: !16, line: 1131, baseType: !2212, size: 64, offset: 2112)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !1757, file: !16, line: 1132, baseType: !94, size: 64, offset: 2176)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !1757, file: !16, line: 1133, baseType: !1782, size: 64, offset: 2240)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !1757, file: !16, line: 1134, baseType: !1782, size: 64, offset: 2304)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !1757, file: !16, line: 1135, baseType: !1782, size: 64, offset: 2368)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !1757, file: !16, line: 1136, baseType: !1782, size: 64, offset: 2432)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !1757, file: !16, line: 1137, baseType: !1782, size: 64, offset: 2496)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !1757, file: !16, line: 1138, baseType: !1782, size: 64, offset: 2560)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !1757, file: !16, line: 1139, baseType: !1782, size: 64, offset: 2624)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !1757, file: !16, line: 1142, baseType: !2225, size: 328, offset: 2688)
!2225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 328, elements: !2226)
!2226 = !{!2227}
!2227 = !DISubrange(count: 41)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !1757, file: !16, line: 1143, baseType: !71, size: 32, offset: 3040)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !1757, file: !16, line: 1144, baseType: !96, size: 64, offset: 3072)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !1757, file: !16, line: 1145, baseType: !71, size: 32, offset: 3136)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !1757, file: !16, line: 1146, baseType: !71, size: 32, offset: 3168)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !1757, file: !16, line: 1147, baseType: !2233, size: 320, offset: 3200)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !2235)
!2235 = !{!2236, !2245, !2246, !2247, !2248, !2249}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !2234, file: !16, line: 957, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !2240)
!2240 = !{!2241, !2242, !2243, !2244}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2239, file: !16, line: 950, baseType: !2025, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !2239, file: !16, line: 951, baseType: !71, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !2239, file: !16, line: 952, baseType: !71, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2239, file: !16, line: 953, baseType: !2031, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !16, line: 958, baseType: !71, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2234, file: !16, line: 959, baseType: !71, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !2234, file: !16, line: 962, baseType: !71, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !2234, file: !16, line: 965, baseType: !254, size: 64, offset: 192)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !2234, file: !16, line: 966, baseType: !71, size: 32, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !1757, file: !16, line: 1148, baseType: !71, size: 32, offset: 3520)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !1757, file: !16, line: 1149, baseType: !2252, size: 704, offset: 3584)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !2253)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !2254)
!2254 = !{!2255, !2256, !2258, !2259, !2260, !2265, !2266, !2267, !2268, !2269, !2270, !2271}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2253, file: !16, line: 973, baseType: !103, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2253, file: !16, line: 974, baseType: !2257, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !1782)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2253, file: !16, line: 978, baseType: !1913, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2253, file: !16, line: 980, baseType: !566, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !2253, file: !16, line: 985, baseType: !2261, size: 64, offset: 256)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !2261, file: !16, line: 983, baseType: !71, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !2261, file: !16, line: 984, baseType: !71, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !2253, file: !16, line: 990, baseType: !254, size: 64, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !2253, file: !16, line: 991, baseType: !566, size: 64, offset: 384)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !2253, file: !16, line: 992, baseType: !566, size: 64, offset: 448)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !2253, file: !16, line: 993, baseType: !71, size: 32, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !2253, file: !16, line: 996, baseType: !71, size: 32, offset: 544)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !2253, file: !16, line: 997, baseType: !1782, size: 64, offset: 576)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !2253, file: !16, line: 1000, baseType: !98, size: 64, offset: 640)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !1757, file: !16, line: 1150, baseType: !1782, size: 64, offset: 4288)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1757, file: !16, line: 1151, baseType: !1987, size: 64, offset: 4352)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !1757, file: !16, line: 1152, baseType: !1913, size: 64, offset: 4416)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !1757, file: !16, line: 1153, baseType: !1987, size: 64, offset: 4480)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !1757, file: !16, line: 1154, baseType: !1913, size: 64, offset: 4544)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !1757, file: !16, line: 1155, baseType: !94, size: 64, offset: 4608)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !1757, file: !16, line: 1156, baseType: !94, size: 64, offset: 4672)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !1757, file: !16, line: 1157, baseType: !1993, size: 64, offset: 4736)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !1757, file: !16, line: 1158, baseType: !1993, size: 64, offset: 4800)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !1757, file: !16, line: 1159, baseType: !1993, size: 64, offset: 4864)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !1757, file: !16, line: 1160, baseType: !2283, size: 64, offset: 4928)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !2284)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !68, !98}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !1757, file: !16, line: 1163, baseType: !98, size: 64, offset: 4992)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !1757, file: !16, line: 1166, baseType: !98, size: 64, offset: 5056)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !1757, file: !16, line: 1173, baseType: !68, size: 64, offset: 5120)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !1757, file: !16, line: 1174, baseType: !2291, size: 64, offset: 5184)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !2293, line: 137, baseType: !2294)
!2293 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !2293, line: 133, size: 192, elements: !2295)
!2295 = !{!2296, !2307, !2308}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2294, file: !2293, line: 134, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !2293, line: 131, baseType: !2299)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !2293, line: 98, size: 32, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !2299, file: !2293, line: 99, baseType: !127, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !2299, file: !2293, line: 100, baseType: !127, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !2299, file: !2293, line: 101, baseType: !127, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2299, file: !2293, line: 102, baseType: !127, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2299, file: !2293, line: 130, baseType: !2306, offset: 32)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, elements: !92)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !2294, file: !2293, line: 135, baseType: !68, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !2294, file: !2293, line: 136, baseType: !68, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !1757, file: !16, line: 1182, baseType: !254, size: 64, offset: 5248)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !1757, file: !16, line: 1183, baseType: !71, size: 32, offset: 5312)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !1757, file: !16, line: 1185, baseType: !1993, size: 64, offset: 5376)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !1757, file: !16, line: 1186, baseType: !2313, size: 64, offset: 5440)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !2315, file: !16, line: 1085, baseType: !1987, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !2315, file: !16, line: 1086, baseType: !254, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !1757, file: !16, line: 1188, baseType: !1993, size: 64, offset: 5504)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !1757, file: !16, line: 1190, baseType: !254, size: 64, offset: 5568)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !1757, file: !16, line: 1194, baseType: !254, size: 64, offset: 5632)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !1757, file: !16, line: 1195, baseType: !2257, size: 64, offset: 5696)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !1757, file: !16, line: 1196, baseType: !71, size: 32, offset: 5760)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !1757, file: !16, line: 1197, baseType: !254, size: 64, offset: 5824)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1757, file: !16, line: 1198, baseType: !96, size: 64, offset: 5888)
!2326 = !DILocalVariable(name: "c", arg: 1, scope: !1752, file: !3, line: 1150, type: !1755)
!2327 = !DILocation(line: 1150, column: 32, scope: !1752)
!2328 = !DILocalVariable(name: "o", arg: 2, scope: !1752, file: !3, line: 1150, type: !566)
!2329 = !DILocation(line: 1150, column: 41, scope: !1752)
!2330 = !DILocalVariable(name: "hdr", scope: !1752, file: !3, line: 1151, type: !73)
!2331 = !DILocation(line: 1151, column: 20, scope: !1752)
!2332 = !DILocation(line: 1154, column: 19, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1154, column: 9)
!2334 = !DILocation(line: 1154, column: 21, scope: !2333)
!2335 = !DILocation(line: 1154, column: 9, scope: !2333)
!2336 = !DILocation(line: 1154, column: 9, scope: !1752)
!2337 = !DILocation(line: 1155, column: 9, scope: !2333)
!2338 = !DILocation(line: 1157, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1157, column: 9)
!2340 = !DILocation(line: 1157, column: 9, scope: !1752)
!2341 = !DILocation(line: 1157, column: 31, scope: !2339)
!2342 = !DILocation(line: 1158, column: 25, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1158, column: 9)
!2344 = !DILocation(line: 1158, column: 9, scope: !2343)
!2345 = !DILocation(line: 1158, column: 28, scope: !2343)
!2346 = !DILocation(line: 1158, column: 9, scope: !1752)
!2347 = !DILocation(line: 1158, column: 44, scope: !2343)
!2348 = !DILocation(line: 1159, column: 11, scope: !1752)
!2349 = !DILocation(line: 1159, column: 14, scope: !1752)
!2350 = !DILocation(line: 1159, column: 9, scope: !1752)
!2351 = !DILocation(line: 1162, column: 9, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1162, column: 9)
!2353 = !DILocation(line: 1162, column: 14, scope: !2352)
!2354 = !DILocation(line: 1162, column: 23, scope: !2352)
!2355 = !DILocation(line: 1162, column: 30, scope: !2352)
!2356 = !DILocation(line: 1162, column: 33, scope: !2352)
!2357 = !DILocation(line: 1162, column: 38, scope: !2352)
!2358 = !DILocation(line: 1162, column: 47, scope: !2352)
!2359 = !DILocation(line: 1162, column: 54, scope: !2352)
!2360 = !DILocation(line: 1163, column: 9, scope: !2352)
!2361 = !DILocation(line: 1163, column: 14, scope: !2352)
!2362 = !DILocation(line: 1163, column: 23, scope: !2352)
!2363 = !DILocation(line: 1163, column: 30, scope: !2352)
!2364 = !DILocation(line: 1163, column: 33, scope: !2352)
!2365 = !DILocation(line: 1163, column: 38, scope: !2352)
!2366 = !DILocation(line: 1163, column: 47, scope: !2352)
!2367 = !DILocation(line: 1162, column: 9, scope: !1752)
!2368 = !DILocation(line: 1163, column: 55, scope: !2352)
!2369 = !DILocation(line: 1165, column: 9, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1165, column: 9)
!2371 = !DILocation(line: 1165, column: 14, scope: !2370)
!2372 = !DILocation(line: 1165, column: 23, scope: !2370)
!2373 = !DILocation(line: 1165, column: 9, scope: !1752)
!2374 = !DILocation(line: 1165, column: 43, scope: !2370)
!2375 = !DILocation(line: 1168, column: 9, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1168, column: 9)
!2377 = !DILocation(line: 1168, column: 14, scope: !2376)
!2378 = !DILocation(line: 1168, column: 23, scope: !2376)
!2379 = !DILocation(line: 1168, column: 36, scope: !2376)
!2380 = !DILocation(line: 1169, column: 25, scope: !2376)
!2381 = !DILocation(line: 1169, column: 9, scope: !2376)
!2382 = !DILocation(line: 1169, column: 28, scope: !2376)
!2383 = !DILocation(line: 1168, column: 9, scope: !1752)
!2384 = !DILocation(line: 1169, column: 47, scope: !2376)
!2385 = !DILocation(line: 1172, column: 5, scope: !1752)
!2386 = !DILabel(scope: !1752, name: "invalid", file: !3, line: 1174)
!2387 = !DILocation(line: 1174, column: 1, scope: !1752)
!2388 = !DILocation(line: 1175, column: 19, scope: !1752)
!2389 = !DILocation(line: 1175, column: 5, scope: !1752)
!2390 = !DILocation(line: 1177, column: 5, scope: !1752)
!2391 = !DILocation(line: 1178, column: 1, scope: !1752)
!2392 = distinct !DISubprogram(name: "pfaddCommand", scope: !3, file: !3, line: 1181, type: !2055, scopeLine: 1181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2393 = !DILocalVariable(name: "c", arg: 1, scope: !2392, file: !3, line: 1181, type: !1755)
!2394 = !DILocation(line: 1181, column: 27, scope: !2392)
!2395 = !DILocalVariable(name: "o", scope: !2392, file: !3, line: 1182, type: !566)
!2396 = !DILocation(line: 1182, column: 11, scope: !2392)
!2397 = !DILocation(line: 1182, column: 30, scope: !2392)
!2398 = !DILocation(line: 1182, column: 33, scope: !2392)
!2399 = !DILocation(line: 1182, column: 36, scope: !2392)
!2400 = !DILocation(line: 1182, column: 39, scope: !2392)
!2401 = !DILocation(line: 1182, column: 15, scope: !2392)
!2402 = !DILocalVariable(name: "hdr", scope: !2392, file: !3, line: 1183, type: !73)
!2403 = !DILocation(line: 1183, column: 20, scope: !2392)
!2404 = !DILocalVariable(name: "updated", scope: !2392, file: !3, line: 1184, type: !71)
!2405 = !DILocation(line: 1184, column: 9, scope: !2392)
!2406 = !DILocalVariable(name: "j", scope: !2392, file: !3, line: 1184, type: !71)
!2407 = !DILocation(line: 1184, column: 22, scope: !2392)
!2408 = !DILocation(line: 1186, column: 9, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1186, column: 9)
!2410 = !DILocation(line: 1186, column: 11, scope: !2409)
!2411 = !DILocation(line: 1186, column: 9, scope: !2392)
!2412 = !DILocation(line: 1190, column: 13, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1186, column: 20)
!2414 = !DILocation(line: 1190, column: 11, scope: !2413)
!2415 = !DILocation(line: 1191, column: 15, scope: !2413)
!2416 = !DILocation(line: 1191, column: 18, scope: !2413)
!2417 = !DILocation(line: 1191, column: 21, scope: !2413)
!2418 = !DILocation(line: 1191, column: 24, scope: !2413)
!2419 = !DILocation(line: 1191, column: 32, scope: !2413)
!2420 = !DILocation(line: 1191, column: 9, scope: !2413)
!2421 = !DILocation(line: 1192, column: 16, scope: !2413)
!2422 = !DILocation(line: 1193, column: 5, scope: !2413)
!2423 = !DILocation(line: 1194, column: 32, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 1194, column: 13)
!2425 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1193, column: 12)
!2426 = !DILocation(line: 1194, column: 34, scope: !2424)
!2427 = !DILocation(line: 1194, column: 13, scope: !2424)
!2428 = !DILocation(line: 1194, column: 37, scope: !2424)
!2429 = !DILocation(line: 1194, column: 13, scope: !2425)
!2430 = !DILocation(line: 1194, column: 46, scope: !2424)
!2431 = !DILocation(line: 1195, column: 34, scope: !2425)
!2432 = !DILocation(line: 1195, column: 37, scope: !2425)
!2433 = !DILocation(line: 1195, column: 40, scope: !2425)
!2434 = !DILocation(line: 1195, column: 43, scope: !2425)
!2435 = !DILocation(line: 1195, column: 51, scope: !2425)
!2436 = !DILocation(line: 1195, column: 13, scope: !2425)
!2437 = !DILocation(line: 1195, column: 11, scope: !2425)
!2438 = !DILocation(line: 1198, column: 12, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1198, column: 5)
!2440 = !DILocation(line: 1198, column: 10, scope: !2439)
!2441 = !DILocation(line: 1198, column: 17, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1198, column: 5)
!2443 = !DILocation(line: 1198, column: 21, scope: !2442)
!2444 = !DILocation(line: 1198, column: 24, scope: !2442)
!2445 = !DILocation(line: 1198, column: 19, scope: !2442)
!2446 = !DILocation(line: 1198, column: 5, scope: !2439)
!2447 = !DILocalVariable(name: "retval", scope: !2448, file: !3, line: 1199, type: !71)
!2448 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1198, column: 35)
!2449 = !DILocation(line: 1199, column: 13, scope: !2448)
!2450 = !DILocation(line: 1199, column: 29, scope: !2448)
!2451 = !DILocation(line: 1199, column: 48, scope: !2448)
!2452 = !DILocation(line: 1199, column: 51, scope: !2448)
!2453 = !DILocation(line: 1199, column: 56, scope: !2448)
!2454 = !DILocation(line: 1199, column: 60, scope: !2448)
!2455 = !DILocation(line: 1200, column: 39, scope: !2448)
!2456 = !DILocation(line: 1200, column: 42, scope: !2448)
!2457 = !DILocation(line: 1200, column: 47, scope: !2448)
!2458 = !DILocation(line: 1200, column: 51, scope: !2448)
!2459 = !DILocation(line: 1200, column: 32, scope: !2448)
!2460 = !DILocation(line: 1199, column: 22, scope: !2448)
!2461 = !DILocation(line: 1201, column: 16, scope: !2448)
!2462 = !DILocation(line: 1201, column: 9, scope: !2448)
!2463 = !DILocation(line: 1203, column: 20, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1201, column: 24)
!2465 = !DILocation(line: 1204, column: 13, scope: !2464)
!2466 = !DILocation(line: 1206, column: 27, scope: !2464)
!2467 = !DILocation(line: 1206, column: 29, scope: !2464)
!2468 = !DILocation(line: 1206, column: 13, scope: !2464)
!2469 = !DILocation(line: 1207, column: 13, scope: !2464)
!2470 = !DILocation(line: 1209, column: 5, scope: !2448)
!2471 = !DILocation(line: 1198, column: 31, scope: !2442)
!2472 = !DILocation(line: 1198, column: 5, scope: !2442)
!2473 = distinct !{!2473, !2446, !2474, !202}
!2474 = !DILocation(line: 1209, column: 5, scope: !2439)
!2475 = !DILocation(line: 1210, column: 11, scope: !2392)
!2476 = !DILocation(line: 1210, column: 14, scope: !2392)
!2477 = !DILocation(line: 1210, column: 9, scope: !2392)
!2478 = !DILocation(line: 1211, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1211, column: 9)
!2480 = !DILocation(line: 1211, column: 9, scope: !2392)
!2481 = !DILocation(line: 1212, column: 27, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1211, column: 18)
!2483 = !DILocation(line: 1212, column: 29, scope: !2482)
!2484 = !DILocation(line: 1212, column: 32, scope: !2482)
!2485 = !DILocation(line: 1212, column: 35, scope: !2482)
!2486 = !DILocation(line: 1212, column: 38, scope: !2482)
!2487 = !DILocation(line: 1212, column: 9, scope: !2482)
!2488 = !DILocation(line: 1213, column: 51, scope: !2482)
!2489 = !DILocation(line: 1213, column: 54, scope: !2482)
!2490 = !DILocation(line: 1213, column: 62, scope: !2482)
!2491 = !DILocation(line: 1213, column: 65, scope: !2482)
!2492 = !DILocation(line: 1213, column: 69, scope: !2482)
!2493 = !DILocation(line: 1213, column: 9, scope: !2482)
!2494 = !DILocation(line: 1214, column: 25, scope: !2482)
!2495 = !DILocation(line: 1214, column: 22, scope: !2482)
!2496 = !DILocation(line: 1215, column: 9, scope: !2482)
!2497 = !DILocation(line: 1216, column: 5, scope: !2482)
!2498 = !DILocation(line: 1217, column: 14, scope: !2392)
!2499 = !DILocation(line: 1217, column: 17, scope: !2392)
!2500 = !DILocation(line: 1217, column: 34, scope: !2392)
!2501 = !DILocation(line: 1217, column: 48, scope: !2392)
!2502 = !DILocation(line: 1217, column: 5, scope: !2392)
!2503 = !DILocation(line: 1218, column: 1, scope: !2392)
!2504 = distinct !DISubprogram(name: "pfcountCommand", scope: !3, file: !3, line: 1221, type: !2055, scopeLine: 1221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2505 = !DILocalVariable(name: "c", arg: 1, scope: !2504, file: !3, line: 1221, type: !1755)
!2506 = !DILocation(line: 1221, column: 29, scope: !2504)
!2507 = !DILocalVariable(name: "o", scope: !2504, file: !3, line: 1222, type: !566)
!2508 = !DILocation(line: 1222, column: 11, scope: !2504)
!2509 = !DILocalVariable(name: "hdr", scope: !2504, file: !3, line: 1223, type: !73)
!2510 = !DILocation(line: 1223, column: 20, scope: !2504)
!2511 = !DILocalVariable(name: "card", scope: !2504, file: !3, line: 1224, type: !68)
!2512 = !DILocation(line: 1224, column: 14, scope: !2504)
!2513 = !DILocation(line: 1230, column: 9, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1230, column: 9)
!2515 = !DILocation(line: 1230, column: 12, scope: !2514)
!2516 = !DILocation(line: 1230, column: 17, scope: !2514)
!2517 = !DILocation(line: 1230, column: 9, scope: !2504)
!2518 = !DILocalVariable(name: "max", scope: !2519, file: !3, line: 1231, type: !2520)
!2519 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1230, column: 22)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 131200, elements: !2521)
!2521 = !{!2522}
!2522 = !DISubrange(count: 16400)
!2523 = !DILocation(line: 1231, column: 17, scope: !2519)
!2524 = !DILocalVariable(name: "registers", scope: !2519, file: !3, line: 1231, type: !72)
!2525 = !DILocation(line: 1231, column: 51, scope: !2519)
!2526 = !DILocalVariable(name: "j", scope: !2519, file: !3, line: 1232, type: !71)
!2527 = !DILocation(line: 1232, column: 13, scope: !2519)
!2528 = !DILocation(line: 1235, column: 9, scope: !2519)
!2529 = !DILocation(line: 1236, column: 32, scope: !2519)
!2530 = !DILocation(line: 1236, column: 15, scope: !2519)
!2531 = !DILocation(line: 1236, column: 13, scope: !2519)
!2532 = !DILocation(line: 1237, column: 9, scope: !2519)
!2533 = !DILocation(line: 1237, column: 14, scope: !2519)
!2534 = !DILocation(line: 1237, column: 23, scope: !2519)
!2535 = !DILocation(line: 1238, column: 21, scope: !2519)
!2536 = !DILocation(line: 1238, column: 25, scope: !2519)
!2537 = !DILocation(line: 1238, column: 19, scope: !2519)
!2538 = !DILocation(line: 1239, column: 16, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1239, column: 9)
!2540 = !DILocation(line: 1239, column: 14, scope: !2539)
!2541 = !DILocation(line: 1239, column: 21, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 1239, column: 9)
!2543 = !DILocation(line: 1239, column: 25, scope: !2542)
!2544 = !DILocation(line: 1239, column: 28, scope: !2542)
!2545 = !DILocation(line: 1239, column: 23, scope: !2542)
!2546 = !DILocation(line: 1239, column: 9, scope: !2539)
!2547 = !DILocalVariable(name: "o", scope: !2548, file: !3, line: 1241, type: !566)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1239, column: 39)
!2549 = !DILocation(line: 1241, column: 19, scope: !2548)
!2550 = !DILocation(line: 1241, column: 37, scope: !2548)
!2551 = !DILocation(line: 1241, column: 40, scope: !2548)
!2552 = !DILocation(line: 1241, column: 43, scope: !2548)
!2553 = !DILocation(line: 1241, column: 46, scope: !2548)
!2554 = !DILocation(line: 1241, column: 51, scope: !2548)
!2555 = !DILocation(line: 1241, column: 23, scope: !2548)
!2556 = !DILocation(line: 1242, column: 17, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1242, column: 17)
!2558 = !DILocation(line: 1242, column: 19, scope: !2557)
!2559 = !DILocation(line: 1242, column: 17, scope: !2548)
!2560 = !DILocation(line: 1242, column: 28, scope: !2557)
!2561 = !DILocation(line: 1243, column: 36, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1243, column: 17)
!2563 = !DILocation(line: 1243, column: 38, scope: !2562)
!2564 = !DILocation(line: 1243, column: 17, scope: !2562)
!2565 = !DILocation(line: 1243, column: 41, scope: !2562)
!2566 = !DILocation(line: 1243, column: 17, scope: !2548)
!2567 = !DILocation(line: 1243, column: 50, scope: !2562)
!2568 = !DILocation(line: 1247, column: 26, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1247, column: 17)
!2570 = !DILocation(line: 1247, column: 36, scope: !2569)
!2571 = !DILocation(line: 1247, column: 17, scope: !2569)
!2572 = !DILocation(line: 1247, column: 39, scope: !2569)
!2573 = !DILocation(line: 1247, column: 17, scope: !2548)
!2574 = !DILocation(line: 1248, column: 31, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1247, column: 49)
!2576 = !DILocation(line: 1248, column: 33, scope: !2575)
!2577 = !DILocation(line: 1248, column: 17, scope: !2575)
!2578 = !DILocation(line: 1249, column: 17, scope: !2575)
!2579 = !DILocation(line: 1251, column: 9, scope: !2548)
!2580 = !DILocation(line: 1239, column: 35, scope: !2542)
!2581 = !DILocation(line: 1239, column: 9, scope: !2542)
!2582 = distinct !{!2582, !2546, !2583, !202}
!2583 = !DILocation(line: 1251, column: 9, scope: !2539)
!2584 = !DILocation(line: 1254, column: 26, scope: !2519)
!2585 = !DILocation(line: 1254, column: 37, scope: !2519)
!2586 = !DILocation(line: 1254, column: 28, scope: !2519)
!2587 = !DILocation(line: 1254, column: 9, scope: !2519)
!2588 = !DILocation(line: 1255, column: 9, scope: !2519)
!2589 = !DILocation(line: 1269, column: 23, scope: !2504)
!2590 = !DILocation(line: 1269, column: 26, scope: !2504)
!2591 = !DILocation(line: 1269, column: 29, scope: !2504)
!2592 = !DILocation(line: 1269, column: 32, scope: !2504)
!2593 = !DILocation(line: 1269, column: 9, scope: !2504)
!2594 = !DILocation(line: 1269, column: 7, scope: !2504)
!2595 = !DILocation(line: 1270, column: 9, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1270, column: 9)
!2597 = !DILocation(line: 1270, column: 11, scope: !2596)
!2598 = !DILocation(line: 1270, column: 9, scope: !2504)
!2599 = !DILocation(line: 1273, column: 18, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1270, column: 20)
!2601 = !DILocation(line: 1273, column: 27, scope: !2600)
!2602 = !DILocation(line: 1273, column: 9, scope: !2600)
!2603 = !DILocation(line: 1274, column: 5, scope: !2600)
!2604 = !DILocation(line: 1275, column: 32, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1275, column: 13)
!2606 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 1274, column: 12)
!2607 = !DILocation(line: 1275, column: 34, scope: !2605)
!2608 = !DILocation(line: 1275, column: 13, scope: !2605)
!2609 = !DILocation(line: 1275, column: 37, scope: !2605)
!2610 = !DILocation(line: 1275, column: 13, scope: !2606)
!2611 = !DILocation(line: 1275, column: 46, scope: !2605)
!2612 = !DILocation(line: 1276, column: 34, scope: !2606)
!2613 = !DILocation(line: 1276, column: 37, scope: !2606)
!2614 = !DILocation(line: 1276, column: 40, scope: !2606)
!2615 = !DILocation(line: 1276, column: 43, scope: !2606)
!2616 = !DILocation(line: 1276, column: 51, scope: !2606)
!2617 = !DILocation(line: 1276, column: 13, scope: !2606)
!2618 = !DILocation(line: 1276, column: 11, scope: !2606)
!2619 = !DILocation(line: 1279, column: 15, scope: !2606)
!2620 = !DILocation(line: 1279, column: 18, scope: !2606)
!2621 = !DILocation(line: 1279, column: 13, scope: !2606)
!2622 = !DILocation(line: 1280, column: 13, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1280, column: 13)
!2624 = !DILocation(line: 1280, column: 13, scope: !2606)
!2625 = !DILocation(line: 1282, column: 30, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1280, column: 35)
!2627 = !DILocation(line: 1282, column: 35, scope: !2626)
!2628 = !DILocation(line: 1282, column: 20, scope: !2626)
!2629 = !DILocation(line: 1282, column: 18, scope: !2626)
!2630 = !DILocation(line: 1283, column: 31, scope: !2626)
!2631 = !DILocation(line: 1283, column: 36, scope: !2626)
!2632 = !DILocation(line: 1283, column: 21, scope: !2626)
!2633 = !DILocation(line: 1283, column: 44, scope: !2626)
!2634 = !DILocation(line: 1283, column: 18, scope: !2626)
!2635 = !DILocation(line: 1284, column: 31, scope: !2626)
!2636 = !DILocation(line: 1284, column: 36, scope: !2626)
!2637 = !DILocation(line: 1284, column: 21, scope: !2626)
!2638 = !DILocation(line: 1284, column: 44, scope: !2626)
!2639 = !DILocation(line: 1284, column: 18, scope: !2626)
!2640 = !DILocation(line: 1285, column: 31, scope: !2626)
!2641 = !DILocation(line: 1285, column: 36, scope: !2626)
!2642 = !DILocation(line: 1285, column: 21, scope: !2626)
!2643 = !DILocation(line: 1285, column: 44, scope: !2626)
!2644 = !DILocation(line: 1285, column: 18, scope: !2626)
!2645 = !DILocation(line: 1286, column: 31, scope: !2626)
!2646 = !DILocation(line: 1286, column: 36, scope: !2626)
!2647 = !DILocation(line: 1286, column: 21, scope: !2626)
!2648 = !DILocation(line: 1286, column: 44, scope: !2626)
!2649 = !DILocation(line: 1286, column: 18, scope: !2626)
!2650 = !DILocation(line: 1287, column: 31, scope: !2626)
!2651 = !DILocation(line: 1287, column: 36, scope: !2626)
!2652 = !DILocation(line: 1287, column: 21, scope: !2626)
!2653 = !DILocation(line: 1287, column: 44, scope: !2626)
!2654 = !DILocation(line: 1287, column: 18, scope: !2626)
!2655 = !DILocation(line: 1288, column: 31, scope: !2626)
!2656 = !DILocation(line: 1288, column: 36, scope: !2626)
!2657 = !DILocation(line: 1288, column: 21, scope: !2626)
!2658 = !DILocation(line: 1288, column: 44, scope: !2626)
!2659 = !DILocation(line: 1288, column: 18, scope: !2626)
!2660 = !DILocation(line: 1289, column: 31, scope: !2626)
!2661 = !DILocation(line: 1289, column: 36, scope: !2626)
!2662 = !DILocation(line: 1289, column: 21, scope: !2626)
!2663 = !DILocation(line: 1289, column: 44, scope: !2626)
!2664 = !DILocation(line: 1289, column: 18, scope: !2626)
!2665 = !DILocation(line: 1290, column: 9, scope: !2626)
!2666 = !DILocalVariable(name: "invalid", scope: !2667, file: !3, line: 1291, type: !71)
!2667 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1290, column: 16)
!2668 = !DILocation(line: 1291, column: 17, scope: !2667)
!2669 = !DILocation(line: 1293, column: 29, scope: !2667)
!2670 = !DILocation(line: 1293, column: 20, scope: !2667)
!2671 = !DILocation(line: 1293, column: 18, scope: !2667)
!2672 = !DILocation(line: 1294, column: 17, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 1294, column: 17)
!2674 = !DILocation(line: 1294, column: 17, scope: !2667)
!2675 = !DILocation(line: 1295, column: 31, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1294, column: 26)
!2677 = !DILocation(line: 1295, column: 33, scope: !2676)
!2678 = !DILocation(line: 1295, column: 17, scope: !2676)
!2679 = !DILocation(line: 1296, column: 17, scope: !2676)
!2680 = !DILocation(line: 1298, column: 28, scope: !2667)
!2681 = !DILocation(line: 1298, column: 33, scope: !2667)
!2682 = !DILocation(line: 1298, column: 13, scope: !2667)
!2683 = !DILocation(line: 1298, column: 18, scope: !2667)
!2684 = !DILocation(line: 1298, column: 26, scope: !2667)
!2685 = !DILocation(line: 1299, column: 29, scope: !2667)
!2686 = !DILocation(line: 1299, column: 34, scope: !2667)
!2687 = !DILocation(line: 1299, column: 40, scope: !2667)
!2688 = !DILocation(line: 1299, column: 28, scope: !2667)
!2689 = !DILocation(line: 1299, column: 13, scope: !2667)
!2690 = !DILocation(line: 1299, column: 18, scope: !2667)
!2691 = !DILocation(line: 1299, column: 26, scope: !2667)
!2692 = !DILocation(line: 1300, column: 29, scope: !2667)
!2693 = !DILocation(line: 1300, column: 34, scope: !2667)
!2694 = !DILocation(line: 1300, column: 41, scope: !2667)
!2695 = !DILocation(line: 1300, column: 28, scope: !2667)
!2696 = !DILocation(line: 1300, column: 13, scope: !2667)
!2697 = !DILocation(line: 1300, column: 18, scope: !2667)
!2698 = !DILocation(line: 1300, column: 26, scope: !2667)
!2699 = !DILocation(line: 1301, column: 29, scope: !2667)
!2700 = !DILocation(line: 1301, column: 34, scope: !2667)
!2701 = !DILocation(line: 1301, column: 41, scope: !2667)
!2702 = !DILocation(line: 1301, column: 28, scope: !2667)
!2703 = !DILocation(line: 1301, column: 13, scope: !2667)
!2704 = !DILocation(line: 1301, column: 18, scope: !2667)
!2705 = !DILocation(line: 1301, column: 26, scope: !2667)
!2706 = !DILocation(line: 1302, column: 29, scope: !2667)
!2707 = !DILocation(line: 1302, column: 34, scope: !2667)
!2708 = !DILocation(line: 1302, column: 41, scope: !2667)
!2709 = !DILocation(line: 1302, column: 28, scope: !2667)
!2710 = !DILocation(line: 1302, column: 13, scope: !2667)
!2711 = !DILocation(line: 1302, column: 18, scope: !2667)
!2712 = !DILocation(line: 1302, column: 26, scope: !2667)
!2713 = !DILocation(line: 1303, column: 29, scope: !2667)
!2714 = !DILocation(line: 1303, column: 34, scope: !2667)
!2715 = !DILocation(line: 1303, column: 41, scope: !2667)
!2716 = !DILocation(line: 1303, column: 28, scope: !2667)
!2717 = !DILocation(line: 1303, column: 13, scope: !2667)
!2718 = !DILocation(line: 1303, column: 18, scope: !2667)
!2719 = !DILocation(line: 1303, column: 26, scope: !2667)
!2720 = !DILocation(line: 1304, column: 29, scope: !2667)
!2721 = !DILocation(line: 1304, column: 34, scope: !2667)
!2722 = !DILocation(line: 1304, column: 41, scope: !2667)
!2723 = !DILocation(line: 1304, column: 28, scope: !2667)
!2724 = !DILocation(line: 1304, column: 13, scope: !2667)
!2725 = !DILocation(line: 1304, column: 18, scope: !2667)
!2726 = !DILocation(line: 1304, column: 26, scope: !2667)
!2727 = !DILocation(line: 1305, column: 29, scope: !2667)
!2728 = !DILocation(line: 1305, column: 34, scope: !2667)
!2729 = !DILocation(line: 1305, column: 41, scope: !2667)
!2730 = !DILocation(line: 1305, column: 28, scope: !2667)
!2731 = !DILocation(line: 1305, column: 13, scope: !2667)
!2732 = !DILocation(line: 1305, column: 18, scope: !2667)
!2733 = !DILocation(line: 1305, column: 26, scope: !2667)
!2734 = !DILocation(line: 1309, column: 31, scope: !2667)
!2735 = !DILocation(line: 1309, column: 33, scope: !2667)
!2736 = !DILocation(line: 1309, column: 36, scope: !2667)
!2737 = !DILocation(line: 1309, column: 39, scope: !2667)
!2738 = !DILocation(line: 1309, column: 42, scope: !2667)
!2739 = !DILocation(line: 1309, column: 13, scope: !2667)
!2740 = !DILocation(line: 1310, column: 25, scope: !2667)
!2741 = !DILocation(line: 1312, column: 26, scope: !2606)
!2742 = !DILocation(line: 1312, column: 28, scope: !2606)
!2743 = !DILocation(line: 1312, column: 9, scope: !2606)
!2744 = !DILocation(line: 1314, column: 1, scope: !2504)
!2745 = distinct !DISubprogram(name: "pfmergeCommand", scope: !3, file: !3, line: 1317, type: !2055, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2746 = !DILocalVariable(name: "c", arg: 1, scope: !2745, file: !3, line: 1317, type: !1755)
!2747 = !DILocation(line: 1317, column: 29, scope: !2745)
!2748 = !DILocalVariable(name: "max", scope: !2745, file: !3, line: 1318, type: !2749)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 131072, elements: !2750)
!2750 = !{!2751}
!2751 = !DISubrange(count: 16384)
!2752 = !DILocation(line: 1318, column: 13, scope: !2745)
!2753 = !DILocalVariable(name: "hdr", scope: !2745, file: !3, line: 1319, type: !73)
!2754 = !DILocation(line: 1319, column: 20, scope: !2745)
!2755 = !DILocalVariable(name: "j", scope: !2745, file: !3, line: 1320, type: !71)
!2756 = !DILocation(line: 1320, column: 9, scope: !2745)
!2757 = !DILocalVariable(name: "use_dense", scope: !2745, file: !3, line: 1321, type: !71)
!2758 = !DILocation(line: 1321, column: 9, scope: !2745)
!2759 = !DILocation(line: 1326, column: 5, scope: !2745)
!2760 = !DILocation(line: 1327, column: 12, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1327, column: 5)
!2762 = !DILocation(line: 1327, column: 10, scope: !2761)
!2763 = !DILocation(line: 1327, column: 17, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1327, column: 5)
!2765 = !DILocation(line: 1327, column: 21, scope: !2764)
!2766 = !DILocation(line: 1327, column: 24, scope: !2764)
!2767 = !DILocation(line: 1327, column: 19, scope: !2764)
!2768 = !DILocation(line: 1327, column: 5, scope: !2761)
!2769 = !DILocalVariable(name: "o", scope: !2770, file: !3, line: 1329, type: !566)
!2770 = distinct !DILexicalBlock(scope: !2764, file: !3, line: 1327, column: 35)
!2771 = !DILocation(line: 1329, column: 15, scope: !2770)
!2772 = !DILocation(line: 1329, column: 33, scope: !2770)
!2773 = !DILocation(line: 1329, column: 36, scope: !2770)
!2774 = !DILocation(line: 1329, column: 39, scope: !2770)
!2775 = !DILocation(line: 1329, column: 42, scope: !2770)
!2776 = !DILocation(line: 1329, column: 47, scope: !2770)
!2777 = !DILocation(line: 1329, column: 19, scope: !2770)
!2778 = !DILocation(line: 1330, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1330, column: 13)
!2780 = !DILocation(line: 1330, column: 15, scope: !2779)
!2781 = !DILocation(line: 1330, column: 13, scope: !2770)
!2782 = !DILocation(line: 1330, column: 24, scope: !2779)
!2783 = !DILocation(line: 1331, column: 32, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1331, column: 13)
!2785 = !DILocation(line: 1331, column: 34, scope: !2784)
!2786 = !DILocation(line: 1331, column: 13, scope: !2784)
!2787 = !DILocation(line: 1331, column: 37, scope: !2784)
!2788 = !DILocation(line: 1331, column: 13, scope: !2770)
!2789 = !DILocation(line: 1331, column: 46, scope: !2784)
!2790 = !DILocation(line: 1335, column: 15, scope: !2770)
!2791 = !DILocation(line: 1335, column: 18, scope: !2770)
!2792 = !DILocation(line: 1335, column: 13, scope: !2770)
!2793 = !DILocation(line: 1336, column: 13, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1336, column: 13)
!2795 = !DILocation(line: 1336, column: 18, scope: !2794)
!2796 = !DILocation(line: 1336, column: 27, scope: !2794)
!2797 = !DILocation(line: 1336, column: 13, scope: !2770)
!2798 = !DILocation(line: 1336, column: 51, scope: !2794)
!2799 = !DILocation(line: 1336, column: 41, scope: !2794)
!2800 = !DILocation(line: 1340, column: 22, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1340, column: 13)
!2802 = !DILocation(line: 1340, column: 26, scope: !2801)
!2803 = !DILocation(line: 1340, column: 13, scope: !2801)
!2804 = !DILocation(line: 1340, column: 29, scope: !2801)
!2805 = !DILocation(line: 1340, column: 13, scope: !2770)
!2806 = !DILocation(line: 1341, column: 27, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 1340, column: 39)
!2808 = !DILocation(line: 1341, column: 29, scope: !2807)
!2809 = !DILocation(line: 1341, column: 13, scope: !2807)
!2810 = !DILocation(line: 1342, column: 13, scope: !2807)
!2811 = !DILocation(line: 1344, column: 5, scope: !2770)
!2812 = !DILocation(line: 1327, column: 31, scope: !2764)
!2813 = !DILocation(line: 1327, column: 5, scope: !2764)
!2814 = distinct !{!2814, !2768, !2815, !202}
!2815 = !DILocation(line: 1344, column: 5, scope: !2761)
!2816 = !DILocalVariable(name: "o", scope: !2745, file: !3, line: 1347, type: !566)
!2817 = !DILocation(line: 1347, column: 11, scope: !2745)
!2818 = !DILocation(line: 1347, column: 30, scope: !2745)
!2819 = !DILocation(line: 1347, column: 33, scope: !2745)
!2820 = !DILocation(line: 1347, column: 36, scope: !2745)
!2821 = !DILocation(line: 1347, column: 39, scope: !2745)
!2822 = !DILocation(line: 1347, column: 15, scope: !2745)
!2823 = !DILocation(line: 1348, column: 9, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1348, column: 9)
!2825 = !DILocation(line: 1348, column: 11, scope: !2824)
!2826 = !DILocation(line: 1348, column: 9, scope: !2745)
!2827 = !DILocation(line: 1352, column: 13, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1348, column: 20)
!2829 = !DILocation(line: 1352, column: 11, scope: !2828)
!2830 = !DILocation(line: 1353, column: 15, scope: !2828)
!2831 = !DILocation(line: 1353, column: 18, scope: !2828)
!2832 = !DILocation(line: 1353, column: 21, scope: !2828)
!2833 = !DILocation(line: 1353, column: 24, scope: !2828)
!2834 = !DILocation(line: 1353, column: 32, scope: !2828)
!2835 = !DILocation(line: 1353, column: 9, scope: !2828)
!2836 = !DILocation(line: 1354, column: 5, scope: !2828)
!2837 = !DILocation(line: 1358, column: 34, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 1354, column: 12)
!2839 = !DILocation(line: 1358, column: 37, scope: !2838)
!2840 = !DILocation(line: 1358, column: 40, scope: !2838)
!2841 = !DILocation(line: 1358, column: 43, scope: !2838)
!2842 = !DILocation(line: 1358, column: 51, scope: !2838)
!2843 = !DILocation(line: 1358, column: 13, scope: !2838)
!2844 = !DILocation(line: 1358, column: 11, scope: !2838)
!2845 = !DILocation(line: 1363, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1363, column: 9)
!2847 = !DILocation(line: 1363, column: 19, scope: !2846)
!2848 = !DILocation(line: 1363, column: 39, scope: !2846)
!2849 = !DILocation(line: 1363, column: 22, scope: !2846)
!2850 = !DILocation(line: 1363, column: 42, scope: !2846)
!2851 = !DILocation(line: 1363, column: 9, scope: !2745)
!2852 = !DILocation(line: 1364, column: 23, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1363, column: 52)
!2854 = !DILocation(line: 1364, column: 25, scope: !2853)
!2855 = !DILocation(line: 1364, column: 9, scope: !2853)
!2856 = !DILocation(line: 1365, column: 9, scope: !2853)
!2857 = !DILocation(line: 1370, column: 12, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 1370, column: 5)
!2859 = !DILocation(line: 1370, column: 10, scope: !2858)
!2860 = !DILocation(line: 1370, column: 17, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1370, column: 5)
!2862 = !DILocation(line: 1370, column: 19, scope: !2861)
!2863 = !DILocation(line: 1370, column: 5, scope: !2858)
!2864 = !DILocation(line: 1371, column: 17, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1371, column: 13)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1370, column: 41)
!2867 = !DILocation(line: 1371, column: 13, scope: !2865)
!2868 = !DILocation(line: 1371, column: 20, scope: !2865)
!2869 = !DILocation(line: 1371, column: 13, scope: !2866)
!2870 = !DILocation(line: 1371, column: 26, scope: !2865)
!2871 = !DILocation(line: 1372, column: 15, scope: !2866)
!2872 = !DILocation(line: 1372, column: 18, scope: !2866)
!2873 = !DILocation(line: 1372, column: 13, scope: !2866)
!2874 = !DILocation(line: 1373, column: 16, scope: !2866)
!2875 = !DILocation(line: 1373, column: 21, scope: !2866)
!2876 = !DILocation(line: 1373, column: 9, scope: !2866)
!2877 = !DILocation(line: 1374, column: 37, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1373, column: 31)
!2879 = !DILocation(line: 1374, column: 42, scope: !2878)
!2880 = !DILocation(line: 1374, column: 52, scope: !2878)
!2881 = !DILocation(line: 1374, column: 58, scope: !2878)
!2882 = !DILocation(line: 1374, column: 54, scope: !2878)
!2883 = !DILocation(line: 1374, column: 25, scope: !2878)
!2884 = !DILocation(line: 1374, column: 63, scope: !2878)
!2885 = !DILocation(line: 1375, column: 39, scope: !2878)
!2886 = !DILocation(line: 1375, column: 41, scope: !2878)
!2887 = !DILocation(line: 1375, column: 47, scope: !2878)
!2888 = !DILocation(line: 1375, column: 43, scope: !2878)
!2889 = !DILocation(line: 1375, column: 26, scope: !2878)
!2890 = !DILocation(line: 1375, column: 52, scope: !2878)
!2891 = !DILocation(line: 1377, column: 5, scope: !2866)
!2892 = !DILocation(line: 1370, column: 37, scope: !2861)
!2893 = !DILocation(line: 1370, column: 5, scope: !2861)
!2894 = distinct !{!2894, !2863, !2895, !202}
!2895 = !DILocation(line: 1377, column: 5, scope: !2858)
!2896 = !DILocation(line: 1378, column: 11, scope: !2745)
!2897 = !DILocation(line: 1378, column: 14, scope: !2745)
!2898 = !DILocation(line: 1378, column: 9, scope: !2745)
!2899 = !DILocation(line: 1380, column: 5, scope: !2745)
!2900 = !DILocation(line: 1382, column: 23, scope: !2745)
!2901 = !DILocation(line: 1382, column: 25, scope: !2745)
!2902 = !DILocation(line: 1382, column: 28, scope: !2745)
!2903 = !DILocation(line: 1382, column: 31, scope: !2745)
!2904 = !DILocation(line: 1382, column: 34, scope: !2745)
!2905 = !DILocation(line: 1382, column: 5, scope: !2745)
!2906 = !DILocation(line: 1385, column: 47, scope: !2745)
!2907 = !DILocation(line: 1385, column: 50, scope: !2745)
!2908 = !DILocation(line: 1385, column: 58, scope: !2745)
!2909 = !DILocation(line: 1385, column: 61, scope: !2745)
!2910 = !DILocation(line: 1385, column: 65, scope: !2745)
!2911 = !DILocation(line: 1385, column: 5, scope: !2745)
!2912 = !DILocation(line: 1386, column: 17, scope: !2745)
!2913 = !DILocation(line: 1387, column: 14, scope: !2745)
!2914 = !DILocation(line: 1387, column: 23, scope: !2745)
!2915 = !DILocation(line: 1387, column: 5, scope: !2745)
!2916 = !DILocation(line: 1388, column: 1, scope: !2745)
!2917 = distinct !DISubprogram(name: "pfselftestCommand", scope: !3, file: !3, line: 1396, type: !2055, scopeLine: 1396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!2918 = !DILocalVariable(name: "c", arg: 1, scope: !2917, file: !3, line: 1396, type: !1755)
!2919 = !DILocation(line: 1396, column: 32, scope: !2917)
!2920 = !DILocalVariable(name: "j", scope: !2917, file: !3, line: 1397, type: !7)
!2921 = !DILocation(line: 1397, column: 18, scope: !2917)
!2922 = !DILocalVariable(name: "i", scope: !2917, file: !3, line: 1397, type: !7)
!2923 = !DILocation(line: 1397, column: 21, scope: !2917)
!2924 = !DILocalVariable(name: "bitcounters", scope: !2917, file: !3, line: 1398, type: !94)
!2925 = !DILocation(line: 1398, column: 9, scope: !2917)
!2926 = !DILocation(line: 1398, column: 23, scope: !2917)
!2927 = !DILocalVariable(name: "hdr", scope: !2917, file: !3, line: 1399, type: !73)
!2928 = !DILocation(line: 1399, column: 20, scope: !2917)
!2929 = !DILocation(line: 1399, column: 43, scope: !2917)
!2930 = !DILocation(line: 1399, column: 26, scope: !2917)
!2931 = !DILocalVariable(name: "hdr2", scope: !2917, file: !3, line: 1399, type: !73)
!2932 = !DILocation(line: 1399, column: 57, scope: !2917)
!2933 = !DILocalVariable(name: "o", scope: !2917, file: !3, line: 1400, type: !566)
!2934 = !DILocation(line: 1400, column: 11, scope: !2917)
!2935 = !DILocalVariable(name: "bytecounters", scope: !2917, file: !3, line: 1401, type: !2749)
!2936 = !DILocation(line: 1401, column: 13, scope: !2917)
!2937 = !DILocation(line: 1407, column: 12, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1407, column: 5)
!2939 = !DILocation(line: 1407, column: 10, scope: !2938)
!2940 = !DILocation(line: 1407, column: 17, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1407, column: 5)
!2942 = !DILocation(line: 1407, column: 19, scope: !2941)
!2943 = !DILocation(line: 1407, column: 5, scope: !2938)
!2944 = !DILocation(line: 1410, column: 16, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1410, column: 9)
!2946 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 1407, column: 43)
!2947 = !DILocation(line: 1410, column: 14, scope: !2945)
!2948 = !DILocation(line: 1410, column: 21, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 1410, column: 9)
!2950 = !DILocation(line: 1410, column: 23, scope: !2949)
!2951 = !DILocation(line: 1410, column: 9, scope: !2945)
!2952 = !DILocalVariable(name: "r", scope: !2953, file: !3, line: 1411, type: !7)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1410, column: 45)
!2954 = !DILocation(line: 1411, column: 26, scope: !2953)
!2955 = !DILocation(line: 1411, column: 30, scope: !2953)
!2956 = !DILocation(line: 1411, column: 37, scope: !2953)
!2957 = !DILocation(line: 1413, column: 31, scope: !2953)
!2958 = !DILocation(line: 1413, column: 26, scope: !2953)
!2959 = !DILocation(line: 1413, column: 13, scope: !2953)
!2960 = !DILocation(line: 1413, column: 29, scope: !2953)
!2961 = !DILocation(line: 1414, column: 13, scope: !2953)
!2962 = !DILocalVariable(name: "_p", scope: !2963, file: !3, line: 1414, type: !72)
!2963 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1414, column: 13)
!2964 = !DILocation(line: 1414, column: 13, scope: !2963)
!2965 = !DILocalVariable(name: "_byte", scope: !2963, file: !3, line: 1414, type: !70)
!2966 = !DILocalVariable(name: "_fb", scope: !2963, file: !3, line: 1414, type: !70)
!2967 = !DILocalVariable(name: "_fb8", scope: !2963, file: !3, line: 1414, type: !70)
!2968 = !DILocalVariable(name: "_v", scope: !2963, file: !3, line: 1414, type: !70)
!2969 = !DILocation(line: 1415, column: 9, scope: !2953)
!2970 = !DILocation(line: 1410, column: 41, scope: !2949)
!2971 = !DILocation(line: 1410, column: 9, scope: !2949)
!2972 = distinct !{!2972, !2951, !2973, !202}
!2973 = !DILocation(line: 1415, column: 9, scope: !2945)
!2974 = !DILocation(line: 1417, column: 16, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1417, column: 9)
!2976 = !DILocation(line: 1417, column: 14, scope: !2975)
!2977 = !DILocation(line: 1417, column: 21, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 1417, column: 9)
!2979 = !DILocation(line: 1417, column: 23, scope: !2978)
!2980 = !DILocation(line: 1417, column: 9, scope: !2975)
!2981 = !DILocalVariable(name: "val", scope: !2982, file: !3, line: 1418, type: !7)
!2982 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1417, column: 45)
!2983 = !DILocation(line: 1418, column: 26, scope: !2982)
!2984 = !DILocation(line: 1420, column: 13, scope: !2982)
!2985 = !DILocalVariable(name: "_p", scope: !2986, file: !3, line: 1420, type: !72)
!2986 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1420, column: 13)
!2987 = !DILocation(line: 1420, column: 13, scope: !2986)
!2988 = !DILocalVariable(name: "_byte", scope: !2986, file: !3, line: 1420, type: !70)
!2989 = !DILocalVariable(name: "_fb", scope: !2986, file: !3, line: 1420, type: !70)
!2990 = !DILocalVariable(name: "_fb8", scope: !2986, file: !3, line: 1420, type: !70)
!2991 = !DILocalVariable(name: "b0", scope: !2986, file: !3, line: 1420, type: !70)
!2992 = !DILocalVariable(name: "b1", scope: !2986, file: !3, line: 1420, type: !70)
!2993 = !DILocation(line: 1421, column: 17, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 1421, column: 17)
!2995 = !DILocation(line: 1421, column: 37, scope: !2994)
!2996 = !DILocation(line: 1421, column: 24, scope: !2994)
!2997 = !DILocation(line: 1421, column: 21, scope: !2994)
!2998 = !DILocation(line: 1421, column: 17, scope: !2982)
!2999 = !DILocation(line: 1422, column: 37, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1421, column: 41)
!3001 = !DILocation(line: 1424, column: 21, scope: !3000)
!3002 = !DILocation(line: 1424, column: 43, scope: !3000)
!3003 = !DILocation(line: 1424, column: 30, scope: !3000)
!3004 = !DILocation(line: 1424, column: 24, scope: !3000)
!3005 = !DILocation(line: 1424, column: 53, scope: !3000)
!3006 = !DILocation(line: 1422, column: 17, scope: !3000)
!3007 = !DILocation(line: 1425, column: 17, scope: !3000)
!3008 = !DILocation(line: 1427, column: 9, scope: !2982)
!3009 = !DILocation(line: 1417, column: 41, scope: !2978)
!3010 = !DILocation(line: 1417, column: 9, scope: !2978)
!3011 = distinct !{!3011, !2980, !3012, !202}
!3012 = !DILocation(line: 1427, column: 9, scope: !2975)
!3013 = !DILocation(line: 1428, column: 5, scope: !2946)
!3014 = !DILocation(line: 1407, column: 39, scope: !2941)
!3015 = !DILocation(line: 1407, column: 5, scope: !2941)
!3016 = distinct !{!3016, !2943, !3017, !202}
!3017 = !DILocation(line: 1428, column: 5, scope: !2938)
!3018 = !DILocation(line: 1440, column: 12, scope: !2917)
!3019 = !DILocation(line: 1440, column: 17, scope: !2917)
!3020 = !DILocation(line: 1440, column: 5, scope: !2917)
!3021 = !DILocation(line: 1441, column: 9, scope: !2917)
!3022 = !DILocation(line: 1441, column: 7, scope: !2917)
!3023 = !DILocalVariable(name: "relerr", scope: !2917, file: !3, line: 1442, type: !97)
!3024 = !DILocation(line: 1442, column: 12, scope: !2917)
!3025 = !DILocation(line: 1442, column: 26, scope: !2917)
!3026 = !DILocation(line: 1442, column: 25, scope: !2917)
!3027 = !DILocalVariable(name: "checkpoint", scope: !2917, file: !3, line: 1443, type: !100)
!3028 = !DILocation(line: 1443, column: 13, scope: !2917)
!3029 = !DILocalVariable(name: "seed", scope: !2917, file: !3, line: 1444, type: !68)
!3030 = !DILocation(line: 1444, column: 14, scope: !2917)
!3031 = !DILocation(line: 1444, column: 31, scope: !2917)
!3032 = !DILocation(line: 1444, column: 21, scope: !2917)
!3033 = !DILocation(line: 1444, column: 50, scope: !2917)
!3034 = !DILocation(line: 1444, column: 40, scope: !2917)
!3035 = !DILocation(line: 1444, column: 57, scope: !2917)
!3036 = !DILocation(line: 1444, column: 38, scope: !2917)
!3037 = !DILocalVariable(name: "ele", scope: !2917, file: !3, line: 1445, type: !68)
!3038 = !DILocation(line: 1445, column: 14, scope: !2917)
!3039 = !DILocation(line: 1446, column: 12, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1446, column: 5)
!3041 = !DILocation(line: 1446, column: 10, scope: !3040)
!3042 = !DILocation(line: 1446, column: 17, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 1446, column: 5)
!3044 = !DILocation(line: 1446, column: 19, scope: !3043)
!3045 = !DILocation(line: 1446, column: 5, scope: !3040)
!3046 = !DILocation(line: 1447, column: 15, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 1446, column: 37)
!3048 = !DILocation(line: 1447, column: 19, scope: !3047)
!3049 = !DILocation(line: 1447, column: 17, scope: !3047)
!3050 = !DILocation(line: 1447, column: 13, scope: !3047)
!3051 = !DILocation(line: 1448, column: 21, scope: !3047)
!3052 = !DILocation(line: 1448, column: 26, scope: !3047)
!3053 = !DILocation(line: 1448, column: 36, scope: !3047)
!3054 = !DILocation(line: 1448, column: 9, scope: !3047)
!3055 = !DILocation(line: 1449, column: 16, scope: !3047)
!3056 = !DILocation(line: 1449, column: 18, scope: !3047)
!3057 = !DILocation(line: 1449, column: 9, scope: !3047)
!3058 = !DILocation(line: 1453, column: 13, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1453, column: 13)
!3060 = !DILocation(line: 1453, column: 18, scope: !3059)
!3061 = !DILocation(line: 1453, column: 15, scope: !3059)
!3062 = !DILocation(line: 1453, column: 29, scope: !3059)
!3063 = !DILocation(line: 1453, column: 32, scope: !3059)
!3064 = !DILocation(line: 1453, column: 43, scope: !3059)
!3065 = !DILocation(line: 1453, column: 63, scope: !3059)
!3066 = !DILocation(line: 1453, column: 34, scope: !3059)
!3067 = !DILocation(line: 1453, column: 13, scope: !3047)
!3068 = !DILocation(line: 1454, column: 20, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1453, column: 67)
!3070 = !DILocation(line: 1454, column: 23, scope: !3069)
!3071 = !DILocation(line: 1454, column: 18, scope: !3069)
!3072 = !DILocation(line: 1455, column: 17, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1455, column: 17)
!3074 = !DILocation(line: 1455, column: 23, scope: !3073)
!3075 = !DILocation(line: 1455, column: 32, scope: !3073)
!3076 = !DILocation(line: 1455, column: 17, scope: !3069)
!3077 = !DILocation(line: 1456, column: 31, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1455, column: 47)
!3079 = !DILocation(line: 1456, column: 17, scope: !3078)
!3080 = !DILocation(line: 1457, column: 17, scope: !3078)
!3081 = !DILocation(line: 1459, column: 9, scope: !3069)
!3082 = !DILocation(line: 1462, column: 13, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1462, column: 13)
!3084 = !DILocation(line: 1462, column: 18, scope: !3083)
!3085 = !DILocation(line: 1462, column: 15, scope: !3083)
!3086 = !DILocation(line: 1462, column: 29, scope: !3083)
!3087 = !DILocation(line: 1462, column: 41, scope: !3083)
!3088 = !DILocation(line: 1462, column: 32, scope: !3083)
!3089 = !DILocation(line: 1462, column: 63, scope: !3083)
!3090 = !DILocation(line: 1462, column: 66, scope: !3083)
!3091 = !DILocation(line: 1462, column: 54, scope: !3083)
!3092 = !DILocation(line: 1462, column: 51, scope: !3083)
!3093 = !DILocation(line: 1462, column: 13, scope: !3047)
!3094 = !DILocation(line: 1463, column: 31, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3083, file: !3, line: 1462, column: 77)
!3096 = !DILocation(line: 1463, column: 17, scope: !3095)
!3097 = !DILocation(line: 1464, column: 17, scope: !3095)
!3098 = !DILocation(line: 1468, column: 13, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3047, file: !3, line: 1468, column: 13)
!3100 = !DILocation(line: 1468, column: 18, scope: !3099)
!3101 = !DILocation(line: 1468, column: 15, scope: !3099)
!3102 = !DILocation(line: 1468, column: 13, scope: !3047)
!3103 = !DILocalVariable(name: "abserr", scope: !3104, file: !3, line: 1469, type: !100)
!3104 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1468, column: 30)
!3105 = !DILocation(line: 1469, column: 21, scope: !3104)
!3106 = !DILocation(line: 1469, column: 30, scope: !3104)
!3107 = !DILocation(line: 1469, column: 61, scope: !3104)
!3108 = !DILocation(line: 1469, column: 52, scope: !3104)
!3109 = !DILocation(line: 1469, column: 41, scope: !3104)
!3110 = !DILocalVariable(name: "maxerr", scope: !3104, file: !3, line: 1470, type: !68)
!3111 = !DILocation(line: 1470, column: 22, scope: !3104)
!3112 = !DILocation(line: 1470, column: 36, scope: !3104)
!3113 = !DILocation(line: 1470, column: 42, scope: !3104)
!3114 = !DILocation(line: 1470, column: 45, scope: !3104)
!3115 = !DILocation(line: 1470, column: 44, scope: !3104)
!3116 = !DILocation(line: 1470, column: 31, scope: !3104)
!3117 = !DILocation(line: 1476, column: 17, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1476, column: 17)
!3119 = !DILocation(line: 1476, column: 19, scope: !3118)
!3120 = !DILocation(line: 1476, column: 17, scope: !3104)
!3121 = !DILocation(line: 1476, column: 33, scope: !3118)
!3122 = !DILocation(line: 1476, column: 26, scope: !3118)
!3123 = !DILocation(line: 1478, column: 17, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1478, column: 17)
!3125 = !DILocation(line: 1478, column: 24, scope: !3124)
!3126 = !DILocation(line: 1478, column: 17, scope: !3104)
!3127 = !DILocation(line: 1478, column: 39, scope: !3124)
!3128 = !DILocation(line: 1478, column: 38, scope: !3124)
!3129 = !DILocation(line: 1478, column: 36, scope: !3124)
!3130 = !DILocation(line: 1478, column: 29, scope: !3124)
!3131 = !DILocation(line: 1479, column: 17, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 1479, column: 17)
!3133 = !DILocation(line: 1479, column: 35, scope: !3132)
!3134 = !DILocation(line: 1479, column: 24, scope: !3132)
!3135 = !DILocation(line: 1479, column: 17, scope: !3104)
!3136 = !DILocation(line: 1480, column: 37, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1479, column: 43)
!3138 = !DILocation(line: 1482, column: 42, scope: !3137)
!3139 = !DILocation(line: 1483, column: 42, scope: !3137)
!3140 = !DILocation(line: 1480, column: 17, scope: !3137)
!3141 = !DILocation(line: 1484, column: 17, scope: !3137)
!3142 = !DILocation(line: 1486, column: 24, scope: !3104)
!3143 = !DILocation(line: 1487, column: 9, scope: !3104)
!3144 = !DILocation(line: 1488, column: 5, scope: !3047)
!3145 = !DILocation(line: 1446, column: 33, scope: !3043)
!3146 = !DILocation(line: 1446, column: 5, scope: !3043)
!3147 = distinct !{!3147, !3045, !3148, !202}
!3148 = !DILocation(line: 1488, column: 5, scope: !3040)
!3149 = !DILocation(line: 1491, column: 14, scope: !2917)
!3150 = !DILocation(line: 1491, column: 23, scope: !2917)
!3151 = !DILocation(line: 1491, column: 5, scope: !2917)
!3152 = !DILabel(scope: !2917, name: "cleanup", file: !3, line: 1493)
!3153 = !DILocation(line: 1493, column: 1, scope: !2917)
!3154 = !DILocation(line: 1494, column: 13, scope: !2917)
!3155 = !DILocation(line: 1494, column: 5, scope: !2917)
!3156 = !DILocation(line: 1495, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 1495, column: 9)
!3158 = !DILocation(line: 1495, column: 9, scope: !2917)
!3159 = !DILocation(line: 1495, column: 25, scope: !3157)
!3160 = !DILocation(line: 1495, column: 12, scope: !3157)
!3161 = !DILocation(line: 1496, column: 1, scope: !2917)
!3162 = distinct !DISubprogram(name: "pfdebugCommand", scope: !3, file: !3, line: 1505, type: !2055, scopeLine: 1505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !151)
!3163 = !DILocalVariable(name: "c", arg: 1, scope: !3162, file: !3, line: 1505, type: !1755)
!3164 = !DILocation(line: 1505, column: 29, scope: !3162)
!3165 = !DILocalVariable(name: "cmd", scope: !3162, file: !3, line: 1506, type: !96)
!3166 = !DILocation(line: 1506, column: 11, scope: !3162)
!3167 = !DILocation(line: 1506, column: 17, scope: !3162)
!3168 = !DILocation(line: 1506, column: 20, scope: !3162)
!3169 = !DILocation(line: 1506, column: 29, scope: !3162)
!3170 = !DILocalVariable(name: "hdr", scope: !3162, file: !3, line: 1507, type: !73)
!3171 = !DILocation(line: 1507, column: 20, scope: !3162)
!3172 = !DILocalVariable(name: "o", scope: !3162, file: !3, line: 1508, type: !566)
!3173 = !DILocation(line: 1508, column: 11, scope: !3162)
!3174 = !DILocalVariable(name: "j", scope: !3162, file: !3, line: 1509, type: !71)
!3175 = !DILocation(line: 1509, column: 9, scope: !3162)
!3176 = !DILocation(line: 1511, column: 24, scope: !3162)
!3177 = !DILocation(line: 1511, column: 27, scope: !3162)
!3178 = !DILocation(line: 1511, column: 30, scope: !3162)
!3179 = !DILocation(line: 1511, column: 33, scope: !3162)
!3180 = !DILocation(line: 1511, column: 9, scope: !3162)
!3181 = !DILocation(line: 1511, column: 7, scope: !3162)
!3182 = !DILocation(line: 1512, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1512, column: 9)
!3184 = !DILocation(line: 1512, column: 11, scope: !3183)
!3185 = !DILocation(line: 1512, column: 9, scope: !3162)
!3186 = !DILocation(line: 1513, column: 23, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 1512, column: 20)
!3188 = !DILocation(line: 1513, column: 9, scope: !3187)
!3189 = !DILocation(line: 1514, column: 9, scope: !3187)
!3190 = !DILocation(line: 1516, column: 28, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1516, column: 9)
!3192 = !DILocation(line: 1516, column: 30, scope: !3191)
!3193 = !DILocation(line: 1516, column: 9, scope: !3191)
!3194 = !DILocation(line: 1516, column: 33, scope: !3191)
!3195 = !DILocation(line: 1516, column: 9, scope: !3162)
!3196 = !DILocation(line: 1516, column: 42, scope: !3191)
!3197 = !DILocation(line: 1517, column: 30, scope: !3162)
!3198 = !DILocation(line: 1517, column: 33, scope: !3162)
!3199 = !DILocation(line: 1517, column: 36, scope: !3162)
!3200 = !DILocation(line: 1517, column: 39, scope: !3162)
!3201 = !DILocation(line: 1517, column: 47, scope: !3162)
!3202 = !DILocation(line: 1517, column: 9, scope: !3162)
!3203 = !DILocation(line: 1517, column: 7, scope: !3162)
!3204 = !DILocation(line: 1518, column: 11, scope: !3162)
!3205 = !DILocation(line: 1518, column: 14, scope: !3162)
!3206 = !DILocation(line: 1518, column: 9, scope: !3162)
!3207 = !DILocation(line: 1521, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1521, column: 9)
!3209 = !DILocation(line: 1521, column: 10, scope: !3208)
!3210 = !DILocation(line: 1521, column: 9, scope: !3162)
!3211 = !DILocation(line: 1522, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1522, column: 13)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 1521, column: 36)
!3214 = !DILocation(line: 1522, column: 16, scope: !3212)
!3215 = !DILocation(line: 1522, column: 21, scope: !3212)
!3216 = !DILocation(line: 1522, column: 13, scope: !3213)
!3217 = !DILocation(line: 1522, column: 27, scope: !3212)
!3218 = !DILocation(line: 1524, column: 13, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1524, column: 13)
!3220 = !DILocation(line: 1524, column: 18, scope: !3219)
!3221 = !DILocation(line: 1524, column: 27, scope: !3219)
!3222 = !DILocation(line: 1524, column: 13, scope: !3213)
!3223 = !DILocation(line: 1525, column: 34, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 1525, column: 17)
!3225 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 1524, column: 42)
!3226 = !DILocation(line: 1525, column: 17, scope: !3224)
!3227 = !DILocation(line: 1525, column: 37, scope: !3224)
!3228 = !DILocation(line: 1525, column: 17, scope: !3225)
!3229 = !DILocation(line: 1526, column: 31, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1525, column: 47)
!3231 = !DILocation(line: 1526, column: 33, scope: !3230)
!3232 = !DILocation(line: 1526, column: 17, scope: !3230)
!3233 = !DILocation(line: 1527, column: 17, scope: !3230)
!3234 = !DILocation(line: 1529, column: 25, scope: !3225)
!3235 = !DILocation(line: 1530, column: 9, scope: !3225)
!3236 = !DILocation(line: 1532, column: 15, scope: !3213)
!3237 = !DILocation(line: 1532, column: 18, scope: !3213)
!3238 = !DILocation(line: 1532, column: 13, scope: !3213)
!3239 = !DILocation(line: 1533, column: 26, scope: !3213)
!3240 = !DILocation(line: 1533, column: 9, scope: !3213)
!3241 = !DILocation(line: 1534, column: 16, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1534, column: 9)
!3243 = !DILocation(line: 1534, column: 14, scope: !3242)
!3244 = !DILocation(line: 1534, column: 21, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1534, column: 9)
!3246 = !DILocation(line: 1534, column: 23, scope: !3245)
!3247 = !DILocation(line: 1534, column: 9, scope: !3242)
!3248 = !DILocalVariable(name: "val", scope: !3249, file: !3, line: 1535, type: !62)
!3249 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1534, column: 45)
!3250 = !DILocation(line: 1535, column: 21, scope: !3249)
!3251 = !DILocation(line: 1537, column: 13, scope: !3249)
!3252 = !DILocalVariable(name: "_p", scope: !3253, file: !3, line: 1537, type: !72)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1537, column: 13)
!3254 = !DILocation(line: 1537, column: 13, scope: !3253)
!3255 = !DILocalVariable(name: "_byte", scope: !3253, file: !3, line: 1537, type: !70)
!3256 = !DILocalVariable(name: "_fb", scope: !3253, file: !3, line: 1537, type: !70)
!3257 = !DILocalVariable(name: "_fb8", scope: !3253, file: !3, line: 1537, type: !70)
!3258 = !DILocalVariable(name: "b0", scope: !3253, file: !3, line: 1537, type: !70)
!3259 = !DILocalVariable(name: "b1", scope: !3253, file: !3, line: 1537, type: !70)
!3260 = !DILocation(line: 1538, column: 30, scope: !3249)
!3261 = !DILocation(line: 1538, column: 32, scope: !3249)
!3262 = !DILocation(line: 1538, column: 13, scope: !3249)
!3263 = !DILocation(line: 1539, column: 9, scope: !3249)
!3264 = !DILocation(line: 1534, column: 41, scope: !3245)
!3265 = !DILocation(line: 1534, column: 9, scope: !3245)
!3266 = distinct !{!3266, !3247, !3267, !202}
!3267 = !DILocation(line: 1539, column: 9, scope: !3242)
!3268 = !DILocation(line: 1540, column: 5, scope: !3213)
!3269 = !DILocation(line: 1542, column: 26, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 1542, column: 14)
!3271 = !DILocation(line: 1542, column: 15, scope: !3270)
!3272 = !DILocation(line: 1542, column: 14, scope: !3208)
!3273 = !DILocation(line: 1543, column: 13, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1543, column: 13)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1542, column: 41)
!3276 = !DILocation(line: 1543, column: 16, scope: !3274)
!3277 = !DILocation(line: 1543, column: 21, scope: !3274)
!3278 = !DILocation(line: 1543, column: 13, scope: !3275)
!3279 = !DILocation(line: 1543, column: 27, scope: !3274)
!3280 = !DILocalVariable(name: "p", scope: !3275, file: !3, line: 1545, type: !72)
!3281 = !DILocation(line: 1545, column: 18, scope: !3275)
!3282 = !DILocation(line: 1545, column: 22, scope: !3275)
!3283 = !DILocation(line: 1545, column: 25, scope: !3275)
!3284 = !DILocalVariable(name: "end", scope: !3275, file: !3, line: 1545, type: !72)
!3285 = !DILocation(line: 1545, column: 31, scope: !3275)
!3286 = !DILocation(line: 1545, column: 37, scope: !3275)
!3287 = !DILocation(line: 1545, column: 46, scope: !3275)
!3288 = !DILocation(line: 1545, column: 49, scope: !3275)
!3289 = !DILocation(line: 1545, column: 39, scope: !3275)
!3290 = !DILocation(line: 1545, column: 38, scope: !3275)
!3291 = !DILocalVariable(name: "decoded", scope: !3275, file: !3, line: 1546, type: !94)
!3292 = !DILocation(line: 1546, column: 13, scope: !3275)
!3293 = !DILocation(line: 1546, column: 23, scope: !3275)
!3294 = !DILocation(line: 1548, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1548, column: 13)
!3296 = !DILocation(line: 1548, column: 18, scope: !3295)
!3297 = !DILocation(line: 1548, column: 27, scope: !3295)
!3298 = !DILocation(line: 1548, column: 13, scope: !3275)
!3299 = !DILocation(line: 1549, column: 21, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 1548, column: 42)
!3301 = !DILocation(line: 1549, column: 13, scope: !3300)
!3302 = !DILocation(line: 1550, column: 27, scope: !3300)
!3303 = !DILocation(line: 1550, column: 13, scope: !3300)
!3304 = !DILocation(line: 1551, column: 13, scope: !3300)
!3305 = !DILocation(line: 1554, column: 11, scope: !3275)
!3306 = !DILocation(line: 1555, column: 9, scope: !3275)
!3307 = !DILocation(line: 1555, column: 15, scope: !3275)
!3308 = !DILocation(line: 1555, column: 19, scope: !3275)
!3309 = !DILocation(line: 1555, column: 17, scope: !3275)
!3310 = !DILocalVariable(name: "runlen", scope: !3311, file: !3, line: 1556, type: !71)
!3311 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1555, column: 24)
!3312 = !DILocation(line: 1556, column: 17, scope: !3311)
!3313 = !DILocalVariable(name: "regval", scope: !3311, file: !3, line: 1556, type: !71)
!3314 = !DILocation(line: 1556, column: 25, scope: !3311)
!3315 = !DILocation(line: 1558, column: 17, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1558, column: 17)
!3317 = !DILocation(line: 1558, column: 17, scope: !3311)
!3318 = !DILocation(line: 1559, column: 26, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1558, column: 40)
!3320 = !DILocation(line: 1559, column: 24, scope: !3319)
!3321 = !DILocation(line: 1560, column: 18, scope: !3319)
!3322 = !DILocation(line: 1561, column: 40, scope: !3319)
!3323 = !DILocation(line: 1561, column: 56, scope: !3319)
!3324 = !DILocation(line: 1561, column: 27, scope: !3319)
!3325 = !DILocation(line: 1561, column: 25, scope: !3319)
!3326 = !DILocation(line: 1562, column: 13, scope: !3319)
!3327 = !DILocation(line: 1562, column: 24, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1562, column: 24)
!3329 = !DILocation(line: 1562, column: 24, scope: !3316)
!3330 = !DILocation(line: 1563, column: 26, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1562, column: 48)
!3332 = !DILocation(line: 1563, column: 24, scope: !3331)
!3333 = !DILocation(line: 1564, column: 19, scope: !3331)
!3334 = !DILocation(line: 1565, column: 40, scope: !3331)
!3335 = !DILocation(line: 1565, column: 56, scope: !3331)
!3336 = !DILocation(line: 1565, column: 27, scope: !3331)
!3337 = !DILocation(line: 1565, column: 25, scope: !3331)
!3338 = !DILocation(line: 1566, column: 13, scope: !3331)
!3339 = !DILocation(line: 1567, column: 26, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 1566, column: 20)
!3341 = !DILocation(line: 1567, column: 24, scope: !3340)
!3342 = !DILocation(line: 1568, column: 26, scope: !3340)
!3343 = !DILocation(line: 1568, column: 24, scope: !3340)
!3344 = !DILocation(line: 1569, column: 18, scope: !3340)
!3345 = !DILocation(line: 1570, column: 40, scope: !3340)
!3346 = !DILocation(line: 1570, column: 59, scope: !3340)
!3347 = !DILocation(line: 1570, column: 66, scope: !3340)
!3348 = !DILocation(line: 1570, column: 27, scope: !3340)
!3349 = !DILocation(line: 1570, column: 25, scope: !3340)
!3350 = distinct !{!3350, !3306, !3351, !202}
!3351 = !DILocation(line: 1572, column: 9, scope: !3275)
!3352 = !DILocation(line: 1573, column: 27, scope: !3275)
!3353 = !DILocation(line: 1573, column: 19, scope: !3275)
!3354 = !DILocation(line: 1573, column: 17, scope: !3275)
!3355 = !DILocation(line: 1574, column: 29, scope: !3275)
!3356 = !DILocation(line: 1574, column: 31, scope: !3275)
!3357 = !DILocation(line: 1574, column: 46, scope: !3275)
!3358 = !DILocation(line: 1574, column: 39, scope: !3275)
!3359 = !DILocation(line: 1574, column: 9, scope: !3275)
!3360 = !DILocation(line: 1575, column: 17, scope: !3275)
!3361 = !DILocation(line: 1575, column: 9, scope: !3275)
!3362 = !DILocation(line: 1576, column: 5, scope: !3275)
!3363 = !DILocation(line: 1578, column: 26, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1578, column: 14)
!3365 = !DILocation(line: 1578, column: 15, scope: !3364)
!3366 = !DILocation(line: 1578, column: 14, scope: !3270)
!3367 = !DILocalVariable(name: "encodingstr", scope: !3368, file: !3, line: 1579, type: !3369)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 1578, column: 43)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !1968)
!3370 = !DILocation(line: 1579, column: 15, scope: !3368)
!3371 = !DILocation(line: 1580, column: 13, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 1580, column: 13)
!3373 = !DILocation(line: 1580, column: 16, scope: !3372)
!3374 = !DILocation(line: 1580, column: 21, scope: !3372)
!3375 = !DILocation(line: 1580, column: 13, scope: !3368)
!3376 = !DILocation(line: 1580, column: 27, scope: !3372)
!3377 = !DILocation(line: 1582, column: 24, scope: !3368)
!3378 = !DILocation(line: 1582, column: 38, scope: !3368)
!3379 = !DILocation(line: 1582, column: 43, scope: !3368)
!3380 = !DILocation(line: 1582, column: 26, scope: !3368)
!3381 = !DILocation(line: 1582, column: 9, scope: !3368)
!3382 = !DILocation(line: 1583, column: 5, scope: !3368)
!3383 = !DILocation(line: 1585, column: 26, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 1585, column: 14)
!3385 = !DILocation(line: 1585, column: 15, scope: !3384)
!3386 = !DILocation(line: 1585, column: 14, scope: !3364)
!3387 = !DILocalVariable(name: "conv", scope: !3388, file: !3, line: 1586, type: !71)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1585, column: 42)
!3389 = !DILocation(line: 1586, column: 13, scope: !3388)
!3390 = !DILocation(line: 1587, column: 13, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1587, column: 13)
!3392 = !DILocation(line: 1587, column: 16, scope: !3391)
!3393 = !DILocation(line: 1587, column: 21, scope: !3391)
!3394 = !DILocation(line: 1587, column: 13, scope: !3388)
!3395 = !DILocation(line: 1587, column: 27, scope: !3391)
!3396 = !DILocation(line: 1589, column: 13, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1589, column: 13)
!3398 = !DILocation(line: 1589, column: 18, scope: !3397)
!3399 = !DILocation(line: 1589, column: 27, scope: !3397)
!3400 = !DILocation(line: 1589, column: 13, scope: !3388)
!3401 = !DILocation(line: 1590, column: 34, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 1590, column: 17)
!3403 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1589, column: 42)
!3404 = !DILocation(line: 1590, column: 17, scope: !3402)
!3405 = !DILocation(line: 1590, column: 37, scope: !3402)
!3406 = !DILocation(line: 1590, column: 17, scope: !3403)
!3407 = !DILocation(line: 1591, column: 31, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 1590, column: 47)
!3409 = !DILocation(line: 1591, column: 33, scope: !3408)
!3410 = !DILocation(line: 1591, column: 17, scope: !3408)
!3411 = !DILocation(line: 1592, column: 17, scope: !3408)
!3412 = !DILocation(line: 1594, column: 18, scope: !3403)
!3413 = !DILocation(line: 1595, column: 25, scope: !3403)
!3414 = !DILocation(line: 1596, column: 9, scope: !3403)
!3415 = !DILocation(line: 1597, column: 18, scope: !3388)
!3416 = !DILocation(line: 1597, column: 20, scope: !3388)
!3417 = !DILocation(line: 1597, column: 34, scope: !3388)
!3418 = !DILocation(line: 1597, column: 48, scope: !3388)
!3419 = !DILocation(line: 1597, column: 9, scope: !3388)
!3420 = !DILocation(line: 1598, column: 5, scope: !3388)
!3421 = !DILocation(line: 1599, column: 29, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1598, column: 12)
!3423 = !DILocation(line: 1599, column: 66, scope: !3422)
!3424 = !DILocation(line: 1599, column: 9, scope: !3422)
!3425 = !DILocation(line: 1601, column: 5, scope: !3162)
!3426 = !DILabel(scope: !3162, name: "arityerr", file: !3, line: 1603)
!3427 = !DILocation(line: 1603, column: 1, scope: !3162)
!3428 = !DILocation(line: 1604, column: 25, scope: !3162)
!3429 = !DILocation(line: 1605, column: 61, scope: !3162)
!3430 = !DILocation(line: 1604, column: 5, scope: !3162)
!3431 = !DILocation(line: 1606, column: 1, scope: !3162)
