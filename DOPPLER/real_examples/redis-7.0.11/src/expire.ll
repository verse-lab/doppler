; ModuleID = 'expire.c'
source_filename = "expire.c"
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
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@server = external dso_local global %struct.redisServer, align 8
@activeExpireCycle.current_db = internal global i32 0, align 4, !dbg !0
@activeExpireCycle.timelimit_exit = internal global i32 0, align 4, !dbg !114
@activeExpireCycle.last_fast_cycle = internal global i64 0, align 8, !dbg !116
@.str = private unnamed_addr constant [34 x i8] c"server.also_propagate.numops == 0\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"expire.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"server.core_propagates\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@slaveKeysWithExpire = dso_local global %struct.dict* null, align 8, !dbg !118
@rememberSlaveKeyWithExpire.dt = internal global %struct.dictType { i64 (i8*)* @dictSdsHash, i8* (%struct.dict*, i8*)* null, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* null, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !195
@.str.4 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Unsupported option %s\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"NX and XX, GT or LT options at the same time are not compatible\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"GT and LT options at the same time are not compatible\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"deleted\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"expire\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"persist\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @activeExpireCycleTryExpire(%struct.redisDb* %db, %struct.dictEntry* %de, i64 %now) #0 !dbg !261 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca %struct.redisDb*, align 8
  %de.addr = alloca %struct.dictEntry*, align 8
  %now.addr = alloca i64, align 8
  %t = alloca i64, align 8
  %key = alloca i8*, align 8
  %keyobj = alloca %struct.redisObject*, align 8
  store %struct.redisDb* %db, %struct.redisDb** %db.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db.addr, metadata !264, metadata !DIExpression()), !dbg !265
  store %struct.dictEntry* %de, %struct.dictEntry** %de.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de.addr, metadata !266, metadata !DIExpression()), !dbg !267
  store i64 %now, i64* %now.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %now.addr, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata i64* %t, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = load %struct.dictEntry*, %struct.dictEntry** %de.addr, align 8, !dbg !272
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %0, i32 0, i32 1, !dbg !272
  %s64 = bitcast %union.anon* %v to i64*, !dbg !272
  %1 = load i64, i64* %s64, align 8, !dbg !272
  store i64 %1, i64* %t, align 8, !dbg !271
  %2 = load i64, i64* %now.addr, align 8, !dbg !273
  %3 = load i64, i64* %t, align 8, !dbg !275
  %cmp = icmp sgt i64 %2, %3, !dbg !276
  br i1 %cmp, label %if.then, label %if.else, !dbg !277

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %key, metadata !278, metadata !DIExpression()), !dbg !282
  %4 = load %struct.dictEntry*, %struct.dictEntry** %de.addr, align 8, !dbg !283
  %key1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %4, i32 0, i32 0, !dbg !283
  %5 = load i8*, i8** %key1, align 8, !dbg !283
  store i8* %5, i8** %key, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata %struct.redisObject** %keyobj, metadata !284, metadata !DIExpression()), !dbg !285
  %6 = load i8*, i8** %key, align 8, !dbg !286
  %7 = load i8*, i8** %key, align 8, !dbg !287
  %call = call i64 @sdslen(i8* %7), !dbg !288
  %call2 = call %struct.redisObject* @createStringObject(i8* %6, i64 %call), !dbg !289
  store %struct.redisObject* %call2, %struct.redisObject** %keyobj, align 8, !dbg !285
  %8 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !290
  %9 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !291
  call void @deleteExpiredKeyAndPropagate(%struct.redisDb* %8, %struct.redisObject* %9), !dbg !292
  %10 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !293
  call void @decrRefCount(%struct.redisObject* %10), !dbg !294
  store i32 1, i32* %retval, align 4, !dbg !295
  br label %return, !dbg !295

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !296
  br label %return, !dbg !296

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !298
  ret i32 %11, !dbg !298
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local %struct.redisObject* @createStringObject(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !299 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i8*, i8** %s.addr, align 8, !dbg !307
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !307
  %1 = load i8, i8* %arrayidx, align 1, !dbg !307
  store i8 %1, i8* %flags, align 1, !dbg !306
  %2 = load i8, i8* %flags, align 1, !dbg !308
  %conv = zext i8 %2 to i32, !dbg !308
  %and = and i32 %conv, 7, !dbg !309
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !310

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !311
  %conv1 = zext i8 %3 to i32, !dbg !311
  %shr = ashr i32 %conv1, 3, !dbg !311
  %conv2 = sext i32 %shr to i64, !dbg !311
  store i64 %conv2, i64* %retval, align 8, !dbg !313
  br label %return, !dbg !313

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !314
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !314
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !315
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !315
  %6 = load i8, i8* %len, align 1, !dbg !315
  %conv4 = zext i8 %6 to i64, !dbg !314
  store i64 %conv4, i64* %retval, align 8, !dbg !316
  br label %return, !dbg !316

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !317
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !317
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !318
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !318
  %9 = load i16, i16* %len7, align 1, !dbg !318
  %conv8 = zext i16 %9 to i64, !dbg !317
  store i64 %conv8, i64* %retval, align 8, !dbg !319
  br label %return, !dbg !319

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !320
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !320
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !321
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !321
  %12 = load i32, i32* %len11, align 1, !dbg !321
  %conv12 = zext i32 %12 to i64, !dbg !320
  store i64 %conv12, i64* %retval, align 8, !dbg !322
  br label %return, !dbg !322

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !323
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !323
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !324
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !324
  %15 = load i64, i64* %len15, align 1, !dbg !324
  store i64 %15, i64* %retval, align 8, !dbg !325
  br label %return, !dbg !325

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !326
  br label %return, !dbg !326

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !327
  ret i64 %16, !dbg !327
}

declare dso_local void @deleteExpiredKeyAndPropagate(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @decrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @activeExpireCycle(i32 %type) #0 !dbg !2 {
entry:
  %type.addr = alloca i32, align 4
  %effort = alloca i64, align 8
  %config_keys_per_loop = alloca i64, align 8
  %config_cycle_fast_duration = alloca i64, align 8
  %config_cycle_slow_time_perc = alloca i64, align 8
  %config_cycle_acceptable_stale = alloca i64, align 8
  %j = alloca i32, align 4
  %iteration = alloca i32, align 4
  %dbs_per_call = alloca i32, align 4
  %start = alloca i64, align 8
  %timelimit = alloca i64, align 8
  %elapsed = alloca i64, align 8
  %total_sampled = alloca i64, align 8
  %total_expired = alloca i64, align 8
  %expired = alloca i64, align 8
  %sampled = alloca i64, align 8
  %db = alloca %struct.redisDb*, align 8
  %num = alloca i64, align 8
  %slots = alloca i64, align 8
  %now = alloca i64, align 8
  %ttl_sum = alloca i64, align 8
  %ttl_samples = alloca i32, align 4
  %max_buckets = alloca i64, align 8
  %checked_buckets = alloca i64, align 8
  %table = alloca i32, align 4
  %idx = alloca i64, align 8
  %de = alloca %struct.dictEntry*, align 8
  %ttl = alloca i64, align 8
  %e = alloca %struct.dictEntry*, align 8
  %avg_ttl173 = alloca i64, align 8
  %current_perc = alloca double, align 8
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata i64* %effort, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 158), align 8, !dbg !332
  %sub = sub nsw i32 %0, 1, !dbg !333
  %conv = sext i32 %sub to i64, !dbg !334
  store i64 %conv, i64* %effort, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata i64* %config_keys_per_loop, metadata !335, metadata !DIExpression()), !dbg !336
  %1 = load i64, i64* %effort, align 8, !dbg !337
  %mul = mul i64 5, %1, !dbg !338
  %add = add i64 20, %mul, !dbg !339
  store i64 %add, i64* %config_keys_per_loop, align 8, !dbg !336
  call void @llvm.dbg.declare(metadata i64* %config_cycle_fast_duration, metadata !340, metadata !DIExpression()), !dbg !341
  %2 = load i64, i64* %effort, align 8, !dbg !342
  %mul1 = mul i64 250, %2, !dbg !343
  %add2 = add i64 1000, %mul1, !dbg !344
  store i64 %add2, i64* %config_cycle_fast_duration, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata i64* %config_cycle_slow_time_perc, metadata !345, metadata !DIExpression()), !dbg !346
  %3 = load i64, i64* %effort, align 8, !dbg !347
  %mul3 = mul i64 2, %3, !dbg !348
  %add4 = add i64 25, %mul3, !dbg !349
  store i64 %add4, i64* %config_cycle_slow_time_perc, align 8, !dbg !346
  call void @llvm.dbg.declare(metadata i64* %config_cycle_acceptable_stale, metadata !350, metadata !DIExpression()), !dbg !351
  %4 = load i64, i64* %effort, align 8, !dbg !352
  %sub5 = sub i64 10, %4, !dbg !353
  store i64 %sub5, i64* %config_cycle_acceptable_stale, align 8, !dbg !351
  call void @llvm.dbg.declare(metadata i32* %j, metadata !354, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %iteration, metadata !356, metadata !DIExpression()), !dbg !357
  store i32 0, i32* %iteration, align 4, !dbg !357
  call void @llvm.dbg.declare(metadata i32* %dbs_per_call, metadata !358, metadata !DIExpression()), !dbg !359
  store i32 16, i32* %dbs_per_call, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata i64* %start, metadata !360, metadata !DIExpression()), !dbg !361
  %call = call i64 @ustime(), !dbg !362
  store i64 %call, i64* %start, align 8, !dbg !361
  call void @llvm.dbg.declare(metadata i64* %timelimit, metadata !363, metadata !DIExpression()), !dbg !364
  call void @llvm.dbg.declare(metadata i64* %elapsed, metadata !365, metadata !DIExpression()), !dbg !366
  %call6 = call i32 @checkClientPauseTimeoutAndReturnIfPaused(), !dbg !367
  %tobool = icmp ne i32 %call6, 0, !dbg !367
  br i1 %tobool, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  br label %return, !dbg !370

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %type.addr, align 4, !dbg !371
  %cmp = icmp eq i32 %5, 1, !dbg !373
  br i1 %cmp, label %if.then8, label %if.end21, !dbg !374

if.then8:                                         ; preds = %if.end
  %6 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4, !dbg !375
  %tobool9 = icmp ne i32 %6, 0, !dbg !375
  br i1 %tobool9, label %if.end14, label %land.lhs.true, !dbg !378

land.lhs.true:                                    ; preds = %if.then8
  %7 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 97), align 8, !dbg !379
  %8 = load i64, i64* %config_cycle_acceptable_stale, align 8, !dbg !380
  %conv10 = uitofp i64 %8 to double, !dbg !380
  %cmp11 = fcmp olt double %7, %conv10, !dbg !381
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !382

if.then13:                                        ; preds = %land.lhs.true
  br label %return, !dbg !383

if.end14:                                         ; preds = %land.lhs.true, %if.then8
  %9 = load i64, i64* %start, align 8, !dbg !384
  %10 = load i64, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !386
  %11 = load i64, i64* %config_cycle_fast_duration, align 8, !dbg !387
  %mul15 = mul nsw i64 %11, 2, !dbg !388
  %add16 = add nsw i64 %10, %mul15, !dbg !389
  %cmp17 = icmp slt i64 %9, %add16, !dbg !390
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !391

if.then19:                                        ; preds = %if.end14
  br label %return, !dbg !392

if.end20:                                         ; preds = %if.end14
  %12 = load i64, i64* %start, align 8, !dbg !393
  store i64 %12, i64* @activeExpireCycle.last_fast_cycle, align 8, !dbg !394
  br label %if.end21, !dbg !395

if.end21:                                         ; preds = %if.end20, %if.end
  %13 = load i32, i32* %dbs_per_call, align 4, !dbg !396
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !398
  %cmp22 = icmp sgt i32 %13, %14, !dbg !399
  br i1 %cmp22, label %if.then25, label %lor.lhs.false, !dbg !400

lor.lhs.false:                                    ; preds = %if.end21
  %15 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4, !dbg !401
  %tobool24 = icmp ne i32 %15, 0, !dbg !401
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !402

if.then25:                                        ; preds = %lor.lhs.false, %if.end21
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !403
  store i32 %16, i32* %dbs_per_call, align 4, !dbg !404
  br label %if.end26, !dbg !405

if.end26:                                         ; preds = %if.then25, %lor.lhs.false
  %17 = load i64, i64* %config_cycle_slow_time_perc, align 8, !dbg !406
  %mul27 = mul i64 %17, 1000000, !dbg !407
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 8), align 4, !dbg !408
  %conv28 = sext i32 %18 to i64, !dbg !409
  %div = udiv i64 %mul27, %conv28, !dbg !410
  %div29 = udiv i64 %div, 100, !dbg !411
  store i64 %div29, i64* %timelimit, align 8, !dbg !412
  store i32 0, i32* @activeExpireCycle.timelimit_exit, align 4, !dbg !413
  %19 = load i64, i64* %timelimit, align 8, !dbg !414
  %cmp30 = icmp sle i64 %19, 0, !dbg !416
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !417

if.then32:                                        ; preds = %if.end26
  store i64 1, i64* %timelimit, align 8, !dbg !418
  br label %if.end33, !dbg !419

if.end33:                                         ; preds = %if.then32, %if.end26
  %20 = load i32, i32* %type.addr, align 4, !dbg !420
  %cmp34 = icmp eq i32 %20, 1, !dbg !422
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !423

if.then36:                                        ; preds = %if.end33
  %21 = load i64, i64* %config_cycle_fast_duration, align 8, !dbg !424
  store i64 %21, i64* %timelimit, align 8, !dbg !425
  br label %if.end37, !dbg !426

if.end37:                                         ; preds = %if.then36, %if.end33
  call void @llvm.dbg.declare(metadata i64* %total_sampled, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 0, i64* %total_sampled, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata i64* %total_expired, metadata !429, metadata !DIExpression()), !dbg !430
  store i64 0, i64* %total_expired, align 8, !dbg !430
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 245, i32 1), align 8, !dbg !431
  %cmp38 = icmp eq i32 %22, 0, !dbg !431
  br i1 %cmp38, label %cond.true, label %cond.false, !dbg !431

cond.true:                                        ; preds = %if.end37
  br label %cond.end, !dbg !431

cond.false:                                       ; preds = %if.end37
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 187), !dbg !431
  unreachable, !dbg !431

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !431

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !432
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 33), align 4, !dbg !433
  store i32 0, i32* %j, align 4, !dbg !434
  br label %for.cond, !dbg !436

for.cond:                                         ; preds = %for.inc207, %cond.end
  %23 = load i32, i32* %j, align 4, !dbg !437
  %24 = load i32, i32* %dbs_per_call, align 4, !dbg !439
  %cmp40 = icmp slt i32 %23, %24, !dbg !440
  br i1 %cmp40, label %land.rhs, label %land.end, !dbg !441

land.rhs:                                         ; preds = %for.cond
  %25 = load i32, i32* @activeExpireCycle.timelimit_exit, align 4, !dbg !442
  %cmp42 = icmp eq i32 %25, 0, !dbg !443
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp42, %land.rhs ], !dbg !444
  br i1 %26, label %for.body, label %for.end209, !dbg !445

for.body:                                         ; preds = %land.end
  call void @llvm.dbg.declare(metadata i64* %expired, metadata !446, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata i64* %sampled, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db, metadata !451, metadata !DIExpression()), !dbg !452
  %27 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !453
  %28 = load i32, i32* @activeExpireCycle.current_db, align 4, !dbg !454
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !455
  %rem = urem i32 %28, %29, !dbg !456
  %idx.ext = zext i32 %rem to i64, !dbg !457
  %add.ptr = getelementptr inbounds %struct.redisDb, %struct.redisDb* %27, i64 %idx.ext, !dbg !457
  store %struct.redisDb* %add.ptr, %struct.redisDb** %db, align 8, !dbg !452
  %30 = load i32, i32* @activeExpireCycle.current_db, align 4, !dbg !458
  %inc = add i32 %30, 1, !dbg !458
  store i32 %inc, i32* @activeExpireCycle.current_db, align 4, !dbg !458
  br label %do.body, !dbg !459

do.body:                                          ; preds = %lor.end, %for.body
  call void @llvm.dbg.declare(metadata i64* %num, metadata !460, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata i64* %slots, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata i64* %now, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata i64* %ttl_sum, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i32* %ttl_samples, metadata !469, metadata !DIExpression()), !dbg !470
  %31 = load i32, i32* %iteration, align 4, !dbg !471
  %inc44 = add nsw i32 %31, 1, !dbg !471
  store i32 %inc44, i32* %iteration, align 4, !dbg !471
  %32 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !472
  %expires = getelementptr inbounds %struct.redisDb, %struct.redisDb* %32, i32 0, i32 1, !dbg !472
  %33 = load %struct.dict*, %struct.dict** %expires, align 8, !dbg !472
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %33, i32 0, i32 2, !dbg !472
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !472
  %34 = load i64, i64* %arrayidx, align 8, !dbg !472
  %35 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !472
  %expires45 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %35, i32 0, i32 1, !dbg !472
  %36 = load %struct.dict*, %struct.dict** %expires45, align 8, !dbg !472
  %ht_used46 = getelementptr inbounds %struct.dict, %struct.dict* %36, i32 0, i32 2, !dbg !472
  %arrayidx47 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used46, i64 0, i64 1, !dbg !472
  %37 = load i64, i64* %arrayidx47, align 8, !dbg !472
  %add48 = add i64 %34, %37, !dbg !472
  store i64 %add48, i64* %num, align 8, !dbg !474
  %cmp49 = icmp eq i64 %add48, 0, !dbg !475
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !476

if.then51:                                        ; preds = %do.body
  %38 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !477
  %avg_ttl = getelementptr inbounds %struct.redisDb, %struct.redisDb* %38, i32 0, i32 6, !dbg !479
  store i64 0, i64* %avg_ttl, align 8, !dbg !480
  br label %do.end, !dbg !481

if.end52:                                         ; preds = %do.body
  %39 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !482
  %expires53 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %39, i32 0, i32 1, !dbg !482
  %40 = load %struct.dict*, %struct.dict** %expires53, align 8, !dbg !482
  %ht_size_exp = getelementptr inbounds %struct.dict, %struct.dict* %40, i32 0, i32 5, !dbg !482
  %arrayidx54 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp, i64 0, i64 0, !dbg !482
  %41 = load i8, i8* %arrayidx54, align 2, !dbg !482
  %conv55 = sext i8 %41 to i32, !dbg !482
  %cmp56 = icmp eq i32 %conv55, -1, !dbg !482
  br i1 %cmp56, label %cond.true58, label %cond.false59, !dbg !482

cond.true58:                                      ; preds = %if.end52
  br label %cond.end64, !dbg !482

cond.false59:                                     ; preds = %if.end52
  %42 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !482
  %expires60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i32 0, i32 1, !dbg !482
  %43 = load %struct.dict*, %struct.dict** %expires60, align 8, !dbg !482
  %ht_size_exp61 = getelementptr inbounds %struct.dict, %struct.dict* %43, i32 0, i32 5, !dbg !482
  %arrayidx62 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp61, i64 0, i64 0, !dbg !482
  %44 = load i8, i8* %arrayidx62, align 2, !dbg !482
  %conv63 = sext i8 %44 to i32, !dbg !482
  %sh_prom = zext i32 %conv63 to i64, !dbg !482
  %shl = shl i64 1, %sh_prom, !dbg !482
  br label %cond.end64, !dbg !482

cond.end64:                                       ; preds = %cond.false59, %cond.true58
  %cond = phi i64 [ 0, %cond.true58 ], [ %shl, %cond.false59 ], !dbg !482
  %45 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !482
  %expires65 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %45, i32 0, i32 1, !dbg !482
  %46 = load %struct.dict*, %struct.dict** %expires65, align 8, !dbg !482
  %ht_size_exp66 = getelementptr inbounds %struct.dict, %struct.dict* %46, i32 0, i32 5, !dbg !482
  %arrayidx67 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp66, i64 0, i64 1, !dbg !482
  %47 = load i8, i8* %arrayidx67, align 1, !dbg !482
  %conv68 = sext i8 %47 to i32, !dbg !482
  %cmp69 = icmp eq i32 %conv68, -1, !dbg !482
  br i1 %cmp69, label %cond.true71, label %cond.false72, !dbg !482

cond.true71:                                      ; preds = %cond.end64
  br label %cond.end79, !dbg !482

cond.false72:                                     ; preds = %cond.end64
  %48 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !482
  %expires73 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %48, i32 0, i32 1, !dbg !482
  %49 = load %struct.dict*, %struct.dict** %expires73, align 8, !dbg !482
  %ht_size_exp74 = getelementptr inbounds %struct.dict, %struct.dict* %49, i32 0, i32 5, !dbg !482
  %arrayidx75 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp74, i64 0, i64 1, !dbg !482
  %50 = load i8, i8* %arrayidx75, align 1, !dbg !482
  %conv76 = sext i8 %50 to i32, !dbg !482
  %sh_prom77 = zext i32 %conv76 to i64, !dbg !482
  %shl78 = shl i64 1, %sh_prom77, !dbg !482
  br label %cond.end79, !dbg !482

cond.end79:                                       ; preds = %cond.false72, %cond.true71
  %cond80 = phi i64 [ 0, %cond.true71 ], [ %shl78, %cond.false72 ], !dbg !482
  %add81 = add i64 %cond, %cond80, !dbg !482
  store i64 %add81, i64* %slots, align 8, !dbg !483
  %call82 = call i64 @mstime(), !dbg !484
  store i64 %call82, i64* %now, align 8, !dbg !485
  %51 = load i64, i64* %slots, align 8, !dbg !486
  %cmp83 = icmp ugt i64 %51, 4, !dbg !488
  br i1 %cmp83, label %land.lhs.true85, label %if.end91, !dbg !489

land.lhs.true85:                                  ; preds = %cond.end79
  %52 = load i64, i64* %num, align 8, !dbg !490
  %mul86 = mul i64 %52, 100, !dbg !491
  %53 = load i64, i64* %slots, align 8, !dbg !492
  %div87 = udiv i64 %mul86, %53, !dbg !493
  %cmp88 = icmp ult i64 %div87, 1, !dbg !494
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !495

if.then90:                                        ; preds = %land.lhs.true85
  br label %do.end, !dbg !496

if.end91:                                         ; preds = %land.lhs.true85, %cond.end79
  store i64 0, i64* %expired, align 8, !dbg !497
  store i64 0, i64* %sampled, align 8, !dbg !498
  store i64 0, i64* %ttl_sum, align 8, !dbg !499
  store i32 0, i32* %ttl_samples, align 4, !dbg !500
  %54 = load i64, i64* %num, align 8, !dbg !501
  %55 = load i64, i64* %config_keys_per_loop, align 8, !dbg !503
  %cmp92 = icmp ugt i64 %54, %55, !dbg !504
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !505

if.then94:                                        ; preds = %if.end91
  %56 = load i64, i64* %config_keys_per_loop, align 8, !dbg !506
  store i64 %56, i64* %num, align 8, !dbg !507
  br label %if.end95, !dbg !508

if.end95:                                         ; preds = %if.then94, %if.end91
  call void @llvm.dbg.declare(metadata i64* %max_buckets, metadata !509, metadata !DIExpression()), !dbg !510
  %57 = load i64, i64* %num, align 8, !dbg !511
  %mul96 = mul i64 %57, 20, !dbg !512
  store i64 %mul96, i64* %max_buckets, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata i64* %checked_buckets, metadata !513, metadata !DIExpression()), !dbg !514
  store i64 0, i64* %checked_buckets, align 8, !dbg !514
  br label %while.cond, !dbg !515

while.cond:                                       ; preds = %for.end, %if.end95
  %58 = load i64, i64* %sampled, align 8, !dbg !516
  %59 = load i64, i64* %num, align 8, !dbg !517
  %cmp97 = icmp ult i64 %58, %59, !dbg !518
  br i1 %cmp97, label %land.rhs99, label %land.end102, !dbg !519

land.rhs99:                                       ; preds = %while.cond
  %60 = load i64, i64* %checked_buckets, align 8, !dbg !520
  %61 = load i64, i64* %max_buckets, align 8, !dbg !521
  %cmp100 = icmp slt i64 %60, %61, !dbg !522
  br label %land.end102

land.end102:                                      ; preds = %land.rhs99, %while.cond
  %62 = phi i1 [ false, %while.cond ], [ %cmp100, %land.rhs99 ], !dbg !523
  br i1 %62, label %while.body, label %while.end168, !dbg !515

while.body:                                       ; preds = %land.end102
  call void @llvm.dbg.declare(metadata i32* %table, metadata !524, metadata !DIExpression()), !dbg !527
  store i32 0, i32* %table, align 4, !dbg !527
  br label %for.cond103, !dbg !528

for.cond103:                                      ; preds = %for.inc, %while.body
  %63 = load i32, i32* %table, align 4, !dbg !529
  %cmp104 = icmp slt i32 %63, 2, !dbg !531
  br i1 %cmp104, label %for.body106, label %for.end, !dbg !532

for.body106:                                      ; preds = %for.cond103
  %64 = load i32, i32* %table, align 4, !dbg !533
  %cmp107 = icmp eq i32 %64, 1, !dbg !536
  br i1 %cmp107, label %land.lhs.true109, label %if.end114, !dbg !537

land.lhs.true109:                                 ; preds = %for.body106
  %65 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !538
  %expires110 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %65, i32 0, i32 1, !dbg !538
  %66 = load %struct.dict*, %struct.dict** %expires110, align 8, !dbg !538
  %rehashidx = getelementptr inbounds %struct.dict, %struct.dict* %66, i32 0, i32 3, !dbg !538
  %67 = load i64, i64* %rehashidx, align 8, !dbg !538
  %cmp111 = icmp ne i64 %67, -1, !dbg !538
  br i1 %cmp111, label %if.end114, label %if.then113, !dbg !539

if.then113:                                       ; preds = %land.lhs.true109
  br label %for.end, !dbg !540

if.end114:                                        ; preds = %land.lhs.true109, %for.body106
  call void @llvm.dbg.declare(metadata i64* %idx, metadata !541, metadata !DIExpression()), !dbg !542
  %68 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !543
  %expires_cursor = getelementptr inbounds %struct.redisDb, %struct.redisDb* %68, i32 0, i32 7, !dbg !544
  %69 = load i64, i64* %expires_cursor, align 8, !dbg !544
  store i64 %69, i64* %idx, align 8, !dbg !542
  %70 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !545
  %expires115 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %70, i32 0, i32 1, !dbg !545
  %71 = load %struct.dict*, %struct.dict** %expires115, align 8, !dbg !545
  %ht_size_exp116 = getelementptr inbounds %struct.dict, %struct.dict* %71, i32 0, i32 5, !dbg !545
  %72 = load i32, i32* %table, align 4, !dbg !545
  %idxprom = sext i32 %72 to i64, !dbg !545
  %arrayidx117 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp116, i64 0, i64 %idxprom, !dbg !545
  %73 = load i8, i8* %arrayidx117, align 1, !dbg !545
  %conv118 = sext i8 %73 to i32, !dbg !545
  %cmp119 = icmp eq i32 %conv118, -1, !dbg !545
  br i1 %cmp119, label %cond.true121, label %cond.false122, !dbg !545

cond.true121:                                     ; preds = %if.end114
  br label %cond.end142, !dbg !545

cond.false122:                                    ; preds = %if.end114
  %74 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !545
  %expires123 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %74, i32 0, i32 1, !dbg !545
  %75 = load %struct.dict*, %struct.dict** %expires123, align 8, !dbg !545
  %ht_size_exp124 = getelementptr inbounds %struct.dict, %struct.dict* %75, i32 0, i32 5, !dbg !545
  %76 = load i32, i32* %table, align 4, !dbg !545
  %idxprom125 = sext i32 %76 to i64, !dbg !545
  %arrayidx126 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp124, i64 0, i64 %idxprom125, !dbg !545
  %77 = load i8, i8* %arrayidx126, align 1, !dbg !545
  %conv127 = sext i8 %77 to i32, !dbg !545
  %cmp128 = icmp eq i32 %conv127, -1, !dbg !545
  br i1 %cmp128, label %cond.true130, label %cond.false131, !dbg !545

cond.true130:                                     ; preds = %cond.false122
  br label %cond.end139, !dbg !545

cond.false131:                                    ; preds = %cond.false122
  %78 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !545
  %expires132 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %78, i32 0, i32 1, !dbg !545
  %79 = load %struct.dict*, %struct.dict** %expires132, align 8, !dbg !545
  %ht_size_exp133 = getelementptr inbounds %struct.dict, %struct.dict* %79, i32 0, i32 5, !dbg !545
  %80 = load i32, i32* %table, align 4, !dbg !545
  %idxprom134 = sext i32 %80 to i64, !dbg !545
  %arrayidx135 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp133, i64 0, i64 %idxprom134, !dbg !545
  %81 = load i8, i8* %arrayidx135, align 1, !dbg !545
  %conv136 = sext i8 %81 to i32, !dbg !545
  %sh_prom137 = zext i32 %conv136 to i64, !dbg !545
  %shl138 = shl i64 1, %sh_prom137, !dbg !545
  br label %cond.end139, !dbg !545

cond.end139:                                      ; preds = %cond.false131, %cond.true130
  %cond140 = phi i64 [ 0, %cond.true130 ], [ %shl138, %cond.false131 ], !dbg !545
  %sub141 = sub i64 %cond140, 1, !dbg !545
  br label %cond.end142, !dbg !545

cond.end142:                                      ; preds = %cond.end139, %cond.true121
  %cond143 = phi i64 [ 0, %cond.true121 ], [ %sub141, %cond.end139 ], !dbg !545
  %82 = load i64, i64* %idx, align 8, !dbg !546
  %and = and i64 %82, %cond143, !dbg !546
  store i64 %and, i64* %idx, align 8, !dbg !546
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !547, metadata !DIExpression()), !dbg !548
  %83 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !549
  %expires144 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %83, i32 0, i32 1, !dbg !550
  %84 = load %struct.dict*, %struct.dict** %expires144, align 8, !dbg !550
  %ht_table = getelementptr inbounds %struct.dict, %struct.dict* %84, i32 0, i32 1, !dbg !551
  %85 = load i32, i32* %table, align 4, !dbg !552
  %idxprom145 = sext i32 %85 to i64, !dbg !549
  %arrayidx146 = getelementptr inbounds [2 x %struct.dictEntry**], [2 x %struct.dictEntry**]* %ht_table, i64 0, i64 %idxprom145, !dbg !549
  %86 = load %struct.dictEntry**, %struct.dictEntry*** %arrayidx146, align 8, !dbg !549
  %87 = load i64, i64* %idx, align 8, !dbg !553
  %arrayidx147 = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %86, i64 %87, !dbg !549
  %88 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx147, align 8, !dbg !549
  store %struct.dictEntry* %88, %struct.dictEntry** %de, align 8, !dbg !548
  call void @llvm.dbg.declare(metadata i64* %ttl, metadata !554, metadata !DIExpression()), !dbg !555
  %89 = load i64, i64* %checked_buckets, align 8, !dbg !556
  %inc148 = add nsw i64 %89, 1, !dbg !556
  store i64 %inc148, i64* %checked_buckets, align 8, !dbg !556
  br label %while.cond149, !dbg !557

while.cond149:                                    ; preds = %if.end163, %cond.end142
  %90 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !558
  %tobool150 = icmp ne %struct.dictEntry* %90, null, !dbg !557
  br i1 %tobool150, label %while.body151, label %while.end, !dbg !557

while.body151:                                    ; preds = %while.cond149
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %e, metadata !559, metadata !DIExpression()), !dbg !561
  %91 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !562
  store %struct.dictEntry* %91, %struct.dictEntry** %e, align 8, !dbg !561
  %92 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !563
  %next = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %92, i32 0, i32 2, !dbg !564
  %93 = load %struct.dictEntry*, %struct.dictEntry** %next, align 8, !dbg !564
  store %struct.dictEntry* %93, %struct.dictEntry** %de, align 8, !dbg !565
  %94 = load %struct.dictEntry*, %struct.dictEntry** %e, align 8, !dbg !566
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %94, i32 0, i32 1, !dbg !566
  %s64 = bitcast %union.anon* %v to i64*, !dbg !566
  %95 = load i64, i64* %s64, align 8, !dbg !566
  %96 = load i64, i64* %now, align 8, !dbg !567
  %sub152 = sub nsw i64 %95, %96, !dbg !568
  store i64 %sub152, i64* %ttl, align 8, !dbg !569
  %97 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !570
  %98 = load %struct.dictEntry*, %struct.dictEntry** %e, align 8, !dbg !572
  %99 = load i64, i64* %now, align 8, !dbg !573
  %call153 = call i32 @activeExpireCycleTryExpire(%struct.redisDb* %97, %struct.dictEntry* %98, i64 %99), !dbg !574
  %tobool154 = icmp ne i32 %call153, 0, !dbg !574
  br i1 %tobool154, label %if.then155, label %if.end157, !dbg !575

if.then155:                                       ; preds = %while.body151
  %100 = load i64, i64* %expired, align 8, !dbg !576
  %inc156 = add i64 %100, 1, !dbg !576
  store i64 %inc156, i64* %expired, align 8, !dbg !576
  br label %if.end157, !dbg !577

if.end157:                                        ; preds = %if.then155, %while.body151
  %101 = load i64, i64* %ttl, align 8, !dbg !578
  %cmp158 = icmp sgt i64 %101, 0, !dbg !580
  br i1 %cmp158, label %if.then160, label %if.end163, !dbg !581

if.then160:                                       ; preds = %if.end157
  %102 = load i64, i64* %ttl, align 8, !dbg !582
  %103 = load i64, i64* %ttl_sum, align 8, !dbg !584
  %add161 = add nsw i64 %103, %102, !dbg !584
  store i64 %add161, i64* %ttl_sum, align 8, !dbg !584
  %104 = load i32, i32* %ttl_samples, align 4, !dbg !585
  %inc162 = add nsw i32 %104, 1, !dbg !585
  store i32 %inc162, i32* %ttl_samples, align 4, !dbg !585
  br label %if.end163, !dbg !586

if.end163:                                        ; preds = %if.then160, %if.end157
  %105 = load i64, i64* %sampled, align 8, !dbg !587
  %inc164 = add i64 %105, 1, !dbg !587
  store i64 %inc164, i64* %sampled, align 8, !dbg !587
  br label %while.cond149, !dbg !557, !llvm.loop !588

while.end:                                        ; preds = %while.cond149
  br label %for.inc, !dbg !591

for.inc:                                          ; preds = %while.end
  %106 = load i32, i32* %table, align 4, !dbg !592
  %inc165 = add nsw i32 %106, 1, !dbg !592
  store i32 %inc165, i32* %table, align 4, !dbg !592
  br label %for.cond103, !dbg !593, !llvm.loop !594

for.end:                                          ; preds = %if.then113, %for.cond103
  %107 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !596
  %expires_cursor166 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %107, i32 0, i32 7, !dbg !597
  %108 = load i64, i64* %expires_cursor166, align 8, !dbg !598
  %inc167 = add i64 %108, 1, !dbg !598
  store i64 %inc167, i64* %expires_cursor166, align 8, !dbg !598
  br label %while.cond, !dbg !515, !llvm.loop !599

while.end168:                                     ; preds = %land.end102
  %109 = load i64, i64* %expired, align 8, !dbg !601
  %110 = load i64, i64* %total_expired, align 8, !dbg !602
  %add169 = add i64 %110, %109, !dbg !602
  store i64 %add169, i64* %total_expired, align 8, !dbg !602
  %111 = load i64, i64* %sampled, align 8, !dbg !603
  %112 = load i64, i64* %total_sampled, align 8, !dbg !604
  %add170 = add i64 %112, %111, !dbg !604
  store i64 %add170, i64* %total_sampled, align 8, !dbg !604
  %113 = load i32, i32* %ttl_samples, align 4, !dbg !605
  %tobool171 = icmp ne i32 %113, 0, !dbg !605
  br i1 %tobool171, label %if.then172, label %if.end188, !dbg !607

if.then172:                                       ; preds = %while.end168
  call void @llvm.dbg.declare(metadata i64* %avg_ttl173, metadata !608, metadata !DIExpression()), !dbg !610
  %114 = load i64, i64* %ttl_sum, align 8, !dbg !611
  %115 = load i32, i32* %ttl_samples, align 4, !dbg !612
  %conv174 = sext i32 %115 to i64, !dbg !612
  %div175 = sdiv i64 %114, %conv174, !dbg !613
  store i64 %div175, i64* %avg_ttl173, align 8, !dbg !610
  %116 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !614
  %avg_ttl176 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %116, i32 0, i32 6, !dbg !616
  %117 = load i64, i64* %avg_ttl176, align 8, !dbg !616
  %cmp177 = icmp eq i64 %117, 0, !dbg !617
  br i1 %cmp177, label %if.then179, label %if.end181, !dbg !618

if.then179:                                       ; preds = %if.then172
  %118 = load i64, i64* %avg_ttl173, align 8, !dbg !619
  %119 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !620
  %avg_ttl180 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %119, i32 0, i32 6, !dbg !621
  store i64 %118, i64* %avg_ttl180, align 8, !dbg !622
  br label %if.end181, !dbg !620

if.end181:                                        ; preds = %if.then179, %if.then172
  %120 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !623
  %avg_ttl182 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %120, i32 0, i32 6, !dbg !624
  %121 = load i64, i64* %avg_ttl182, align 8, !dbg !624
  %div183 = sdiv i64 %121, 50, !dbg !625
  %mul184 = mul nsw i64 %div183, 49, !dbg !626
  %122 = load i64, i64* %avg_ttl173, align 8, !dbg !627
  %div185 = sdiv i64 %122, 50, !dbg !628
  %add186 = add nsw i64 %mul184, %div185, !dbg !629
  %123 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !630
  %avg_ttl187 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %123, i32 0, i32 6, !dbg !631
  store i64 %add186, i64* %avg_ttl187, align 8, !dbg !632
  br label %if.end188, !dbg !633

if.end188:                                        ; preds = %if.end181, %while.end168
  %124 = load i32, i32* %iteration, align 4, !dbg !634
  %and189 = and i32 %124, 15, !dbg !636
  %cmp190 = icmp eq i32 %and189, 0, !dbg !637
  br i1 %cmp190, label %if.then192, label %if.end200, !dbg !638

if.then192:                                       ; preds = %if.end188
  %call193 = call i64 @ustime(), !dbg !639
  %125 = load i64, i64* %start, align 8, !dbg !641
  %sub194 = sub nsw i64 %call193, %125, !dbg !642
  store i64 %sub194, i64* %elapsed, align 8, !dbg !643
  %126 = load i64, i64* %elapsed, align 8, !dbg !644
  %127 = load i64, i64* %timelimit, align 8, !dbg !646
  %cmp195 = icmp sgt i64 %126, %127, !dbg !647
  br i1 %cmp195, label %if.then197, label %if.end199, !dbg !648

if.then197:                                       ; preds = %if.then192
  store i32 1, i32* @activeExpireCycle.timelimit_exit, align 4, !dbg !649
  %128 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 98), align 8, !dbg !651
  %inc198 = add nsw i64 %128, 1, !dbg !651
  store i64 %inc198, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 98), align 8, !dbg !651
  br label %do.end, !dbg !652

if.end199:                                        ; preds = %if.then192
  br label %if.end200, !dbg !653

if.end200:                                        ; preds = %if.end199, %if.end188
  br label %do.cond, !dbg !654

do.cond:                                          ; preds = %if.end200
  %129 = load i64, i64* %sampled, align 8, !dbg !655
  %cmp201 = icmp eq i64 %129, 0, !dbg !656
  br i1 %cmp201, label %lor.end, label %lor.rhs, !dbg !657

lor.rhs:                                          ; preds = %do.cond
  %130 = load i64, i64* %expired, align 8, !dbg !658
  %mul203 = mul i64 %130, 100, !dbg !659
  %131 = load i64, i64* %sampled, align 8, !dbg !660
  %div204 = udiv i64 %mul203, %131, !dbg !661
  %132 = load i64, i64* %config_cycle_acceptable_stale, align 8, !dbg !662
  %cmp205 = icmp ugt i64 %div204, %132, !dbg !663
  br label %lor.end, !dbg !657

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %133 = phi i1 [ true, %do.cond ], [ %cmp205, %lor.rhs ]
  br i1 %133, label %do.body, label %do.end, !dbg !654, !llvm.loop !664

do.end:                                           ; preds = %lor.end, %if.then197, %if.then90, %if.then51
  br label %for.inc207, !dbg !666

for.inc207:                                       ; preds = %do.end
  %134 = load i32, i32* %j, align 4, !dbg !667
  %inc208 = add nsw i32 %134, 1, !dbg !667
  store i32 %inc208, i32* %j, align 4, !dbg !667
  br label %for.cond, !dbg !668, !llvm.loop !669

for.end209:                                       ; preds = %land.end
  %135 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !671
  %tobool210 = icmp ne i32 %135, 0, !dbg !671
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !671

cond.true211:                                     ; preds = %for.end209
  br label %cond.end214, !dbg !671

cond.false212:                                    ; preds = %for.end209
  call void @_serverAssert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 311), !dbg !671
  unreachable, !dbg !671

unreachable.cont213:                              ; No predecessors!
  br label %cond.end214, !dbg !671

cond.end214:                                      ; preds = %unreachable.cont213, %cond.true211
  call void (...) @propagatePendingCommands(), !dbg !672
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !673
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 33), align 4, !dbg !674
  %call215 = call i64 @ustime(), !dbg !675
  %136 = load i64, i64* %start, align 8, !dbg !676
  %sub216 = sub nsw i64 %call215, %136, !dbg !677
  store i64 %sub216, i64* %elapsed, align 8, !dbg !678
  %137 = load i64, i64* %elapsed, align 8, !dbg !679
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 99), align 8, !dbg !680
  %add217 = add nsw i64 %138, %137, !dbg !680
  store i64 %add217, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 99), align 8, !dbg !680
  %139 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !681
  %tobool218 = icmp ne i64 %139, 0, !dbg !681
  br i1 %tobool218, label %land.lhs.true219, label %if.end225, !dbg !681

land.lhs.true219:                                 ; preds = %cond.end214
  %140 = load i64, i64* %elapsed, align 8, !dbg !681
  %div220 = sdiv i64 %140, 1000, !dbg !681
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !681
  %cmp221 = icmp sge i64 %div220, %141, !dbg !681
  br i1 %cmp221, label %if.then223, label %if.end225, !dbg !683

if.then223:                                       ; preds = %land.lhs.true219
  %142 = load i64, i64* %elapsed, align 8, !dbg !681
  %div224 = sdiv i64 %142, 1000, !dbg !681
  call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %div224), !dbg !681
  br label %if.end225, !dbg !681

if.end225:                                        ; preds = %if.then223, %land.lhs.true219, %cond.end214
  call void @llvm.dbg.declare(metadata double* %current_perc, metadata !684, metadata !DIExpression()), !dbg !685
  %143 = load i64, i64* %total_sampled, align 8, !dbg !686
  %tobool226 = icmp ne i64 %143, 0, !dbg !686
  br i1 %tobool226, label %if.then227, label %if.else, !dbg !688

if.then227:                                       ; preds = %if.end225
  %144 = load i64, i64* %total_expired, align 8, !dbg !689
  %conv228 = sitofp i64 %144 to double, !dbg !691
  %145 = load i64, i64* %total_sampled, align 8, !dbg !692
  %conv229 = sitofp i64 %145 to double, !dbg !692
  %div230 = fdiv double %conv228, %conv229, !dbg !693
  store double %div230, double* %current_perc, align 8, !dbg !694
  br label %if.end231, !dbg !695

if.else:                                          ; preds = %if.end225
  store double 0.000000e+00, double* %current_perc, align 8, !dbg !696
  br label %if.end231

if.end231:                                        ; preds = %if.else, %if.then227
  %146 = load double, double* %current_perc, align 8, !dbg !697
  %mul232 = fmul double %146, 5.000000e-02, !dbg !698
  %147 = load double, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 97), align 8, !dbg !699
  %mul233 = fmul double %147, 0x3FEE666666666666, !dbg !700
  %add234 = fadd double %mul232, %mul233, !dbg !701
  store double %add234, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 97), align 8, !dbg !702
  br label %return, !dbg !703

return:                                           ; preds = %if.end231, %if.then19, %if.then13, %if.then
  ret void, !dbg !703
}

declare dso_local i64 @ustime() #2

declare dso_local i32 @checkClientPauseTimeoutAndReturnIfPaused() #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local i64 @mstime() #2

declare dso_local void @propagatePendingCommands(...) #2

declare dso_local void @latencyAddSample(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @expireSlaveKeys() #0 !dbg !704 {
entry:
  %cycles = alloca i32, align 4
  %noexpire = alloca i32, align 4
  %start = alloca i64, align 8
  %de = alloca %struct.dictEntry*, align 8
  %keyname = alloca i8*, align 8
  %dbids = alloca i64, align 8
  %new_dbids = alloca i64, align 8
  %dbid = alloca i32, align 4
  %db = alloca %struct.redisDb*, align 8
  %expire = alloca %struct.dictEntry*, align 8
  %expired = alloca i32, align 4
  %0 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !707
  %cmp = icmp eq %struct.dict* %0, null, !dbg !709
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !710

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !711
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !711
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !711
  %2 = load i64, i64* %arrayidx, align 8, !dbg !711
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !711
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %3, i32 0, i32 2, !dbg !711
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !711
  %4 = load i64, i64* %arrayidx2, align 8, !dbg !711
  %add = add i64 %2, %4, !dbg !711
  %cmp3 = icmp eq i64 %add, 0, !dbg !712
  br i1 %cmp3, label %if.then, label %if.end, !dbg !713

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !714

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %cycles, metadata !715, metadata !DIExpression()), !dbg !716
  store i32 0, i32* %cycles, align 4, !dbg !716
  call void @llvm.dbg.declare(metadata i32* %noexpire, metadata !717, metadata !DIExpression()), !dbg !718
  store i32 0, i32* %noexpire, align 4, !dbg !718
  call void @llvm.dbg.declare(metadata i64* %start, metadata !719, metadata !DIExpression()), !dbg !721
  %call = call i64 @mstime(), !dbg !722
  store i64 %call, i64* %start, align 8, !dbg !721
  br label %while.body, !dbg !723

while.body:                                       ; preds = %if.end, %if.end48
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !724, metadata !DIExpression()), !dbg !726
  %5 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !727
  %call4 = call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %5), !dbg !728
  store %struct.dictEntry* %call4, %struct.dictEntry** %de, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata i8** %keyname, metadata !729, metadata !DIExpression()), !dbg !730
  %6 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !731
  %key = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i32 0, i32 0, !dbg !731
  %7 = load i8*, i8** %key, align 8, !dbg !731
  store i8* %7, i8** %keyname, align 8, !dbg !730
  call void @llvm.dbg.declare(metadata i64* %dbids, metadata !732, metadata !DIExpression()), !dbg !733
  %8 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !734
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i32 0, i32 1, !dbg !734
  %u64 = bitcast %union.anon* %v to i64*, !dbg !734
  %9 = load i64, i64* %u64, align 8, !dbg !734
  store i64 %9, i64* %dbids, align 8, !dbg !733
  call void @llvm.dbg.declare(metadata i64* %new_dbids, metadata !735, metadata !DIExpression()), !dbg !736
  store i64 0, i64* %new_dbids, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata i32* %dbid, metadata !737, metadata !DIExpression()), !dbg !738
  store i32 0, i32* %dbid, align 4, !dbg !738
  br label %while.cond5, !dbg !739

while.cond5:                                      ; preds = %if.end23, %while.body
  %10 = load i64, i64* %dbids, align 8, !dbg !740
  %tobool = icmp ne i64 %10, 0, !dbg !740
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !741

land.rhs:                                         ; preds = %while.cond5
  %11 = load i32, i32* %dbid, align 4, !dbg !742
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !743
  %cmp6 = icmp slt i32 %11, %12, !dbg !744
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond5
  %13 = phi i1 [ false, %while.cond5 ], [ %cmp6, %land.rhs ], !dbg !745
  br i1 %13, label %while.body7, label %while.end, !dbg !739

while.body7:                                      ; preds = %land.end
  %14 = load i64, i64* %dbids, align 8, !dbg !746
  %and = and i64 %14, 1, !dbg !749
  %cmp8 = icmp ne i64 %and, 0, !dbg !750
  br i1 %cmp8, label %if.then9, label %if.end23, !dbg !751

if.then9:                                         ; preds = %while.body7
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db, metadata !752, metadata !DIExpression()), !dbg !754
  %15 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !755
  %16 = load i32, i32* %dbid, align 4, !dbg !756
  %idx.ext = sext i32 %16 to i64, !dbg !757
  %add.ptr = getelementptr inbounds %struct.redisDb, %struct.redisDb* %15, i64 %idx.ext, !dbg !757
  store %struct.redisDb* %add.ptr, %struct.redisDb** %db, align 8, !dbg !754
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %expire, metadata !758, metadata !DIExpression()), !dbg !759
  %17 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !760
  %expires = getelementptr inbounds %struct.redisDb, %struct.redisDb* %17, i32 0, i32 1, !dbg !761
  %18 = load %struct.dict*, %struct.dict** %expires, align 8, !dbg !761
  %19 = load i8*, i8** %keyname, align 8, !dbg !762
  %call10 = call %struct.dictEntry* @dictFind(%struct.dict* %18, i8* %19), !dbg !763
  store %struct.dictEntry* %call10, %struct.dictEntry** %expire, align 8, !dbg !759
  call void @llvm.dbg.declare(metadata i32* %expired, metadata !764, metadata !DIExpression()), !dbg !765
  store i32 0, i32* %expired, align 4, !dbg !765
  %20 = load %struct.dictEntry*, %struct.dictEntry** %expire, align 8, !dbg !766
  %tobool11 = icmp ne %struct.dictEntry* %20, null, !dbg !766
  br i1 %tobool11, label %land.lhs.true, label %if.end17, !dbg !768

land.lhs.true:                                    ; preds = %if.then9
  %21 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !769
  %22 = load i32, i32* %dbid, align 4, !dbg !770
  %idx.ext12 = sext i32 %22 to i64, !dbg !771
  %add.ptr13 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %21, i64 %idx.ext12, !dbg !771
  %23 = load %struct.dictEntry*, %struct.dictEntry** %expire, align 8, !dbg !772
  %24 = load i64, i64* %start, align 8, !dbg !773
  %call14 = call i32 @activeExpireCycleTryExpire(%struct.redisDb* %add.ptr13, %struct.dictEntry* %23, i64 %24), !dbg !774
  %tobool15 = icmp ne i32 %call14, 0, !dbg !774
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !775

if.then16:                                        ; preds = %land.lhs.true
  store i32 1, i32* %expired, align 4, !dbg !776
  br label %if.end17, !dbg !778

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.then9
  %25 = load %struct.dictEntry*, %struct.dictEntry** %expire, align 8, !dbg !779
  %tobool18 = icmp ne %struct.dictEntry* %25, null, !dbg !779
  br i1 %tobool18, label %land.lhs.true19, label %if.end22, !dbg !781

land.lhs.true19:                                  ; preds = %if.end17
  %26 = load i32, i32* %expired, align 4, !dbg !782
  %tobool20 = icmp ne i32 %26, 0, !dbg !782
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !783

if.then21:                                        ; preds = %land.lhs.true19
  %27 = load i32, i32* %noexpire, align 4, !dbg !784
  %inc = add nsw i32 %27, 1, !dbg !784
  store i32 %inc, i32* %noexpire, align 4, !dbg !784
  %28 = load i32, i32* %dbid, align 4, !dbg !786
  %sh_prom = zext i32 %28 to i64, !dbg !787
  %shl = shl i64 1, %sh_prom, !dbg !787
  %29 = load i64, i64* %new_dbids, align 8, !dbg !788
  %or = or i64 %29, %shl, !dbg !788
  store i64 %or, i64* %new_dbids, align 8, !dbg !788
  br label %if.end22, !dbg !789

if.end22:                                         ; preds = %if.then21, %land.lhs.true19, %if.end17
  br label %if.end23, !dbg !790

if.end23:                                         ; preds = %if.end22, %while.body7
  %30 = load i32, i32* %dbid, align 4, !dbg !791
  %inc24 = add nsw i32 %30, 1, !dbg !791
  store i32 %inc24, i32* %dbid, align 4, !dbg !791
  %31 = load i64, i64* %dbids, align 8, !dbg !792
  %shr = lshr i64 %31, 1, !dbg !792
  store i64 %shr, i64* %dbids, align 8, !dbg !792
  br label %while.cond5, !dbg !739, !llvm.loop !793

while.end:                                        ; preds = %land.end
  %32 = load i64, i64* %new_dbids, align 8, !dbg !795
  %tobool25 = icmp ne i64 %32, 0, !dbg !795
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !797

if.then26:                                        ; preds = %while.end
  br label %do.body, !dbg !798

do.body:                                          ; preds = %if.then26
  %33 = load i64, i64* %new_dbids, align 8, !dbg !799
  %34 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !799
  %v27 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %34, i32 0, i32 1, !dbg !799
  %u6428 = bitcast %union.anon* %v27 to i64*, !dbg !799
  store i64 %33, i64* %u6428, align 8, !dbg !799
  br label %do.end, !dbg !799

do.end:                                           ; preds = %do.body
  br label %if.end30, !dbg !799

if.else:                                          ; preds = %while.end
  %35 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !801
  %36 = load i8*, i8** %keyname, align 8, !dbg !802
  %call29 = call i32 @dictDelete(%struct.dict* %35, i8* %36), !dbg !803
  br label %if.end30

if.end30:                                         ; preds = %if.else, %do.end
  %37 = load i32, i32* %cycles, align 4, !dbg !804
  %inc31 = add nsw i32 %37, 1, !dbg !804
  store i32 %inc31, i32* %cycles, align 4, !dbg !804
  %38 = load i32, i32* %noexpire, align 4, !dbg !805
  %cmp32 = icmp sgt i32 %38, 3, !dbg !807
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !808

if.then33:                                        ; preds = %if.end30
  br label %while.end49, !dbg !809

if.end34:                                         ; preds = %if.end30
  %39 = load i32, i32* %cycles, align 4, !dbg !810
  %rem = srem i32 %39, 64, !dbg !812
  %cmp35 = icmp eq i32 %rem, 0, !dbg !813
  br i1 %cmp35, label %land.lhs.true36, label %if.end40, !dbg !814

land.lhs.true36:                                  ; preds = %if.end34
  %call37 = call i64 @mstime(), !dbg !815
  %40 = load i64, i64* %start, align 8, !dbg !816
  %sub = sub nsw i64 %call37, %40, !dbg !817
  %cmp38 = icmp sgt i64 %sub, 1, !dbg !818
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !819

if.then39:                                        ; preds = %land.lhs.true36
  br label %while.end49, !dbg !820

if.end40:                                         ; preds = %land.lhs.true36, %if.end34
  %41 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !821
  %ht_used41 = getelementptr inbounds %struct.dict, %struct.dict* %41, i32 0, i32 2, !dbg !821
  %arrayidx42 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used41, i64 0, i64 0, !dbg !821
  %42 = load i64, i64* %arrayidx42, align 8, !dbg !821
  %43 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !821
  %ht_used43 = getelementptr inbounds %struct.dict, %struct.dict* %43, i32 0, i32 2, !dbg !821
  %arrayidx44 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used43, i64 0, i64 1, !dbg !821
  %44 = load i64, i64* %arrayidx44, align 8, !dbg !821
  %add45 = add i64 %42, %44, !dbg !821
  %cmp46 = icmp eq i64 %add45, 0, !dbg !823
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !824

if.then47:                                        ; preds = %if.end40
  br label %while.end49, !dbg !825

if.end48:                                         ; preds = %if.end40
  br label %while.body, !dbg !723, !llvm.loop !826

while.end49:                                      ; preds = %if.then47, %if.then39, %if.then33
  call void (...) @propagatePendingCommands(), !dbg !828
  br label %return, !dbg !829

return:                                           ; preds = %while.end49, %if.then
  ret void, !dbg !829
}

declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) #2

declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) #2

declare dso_local i32 @dictDelete(%struct.dict*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @rememberSlaveKeyWithExpire(%struct.redisDb* %db, %struct.redisObject* %key) #0 !dbg !197 {
entry:
  %db.addr = alloca %struct.redisDb*, align 8
  %key.addr = alloca %struct.redisObject*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %dbids = alloca i64, align 8
  store %struct.redisDb* %db, %struct.redisDb** %db.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db.addr, metadata !830, metadata !DIExpression()), !dbg !831
  store %struct.redisObject* %key, %struct.redisObject** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key.addr, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !834
  %cmp = icmp eq %struct.dict* %0, null, !dbg !836
  br i1 %cmp, label %if.then, label %if.end, !dbg !837

if.then:                                          ; preds = %entry
  %call = call %struct.dict* @dictCreate(%struct.dictType* @rememberSlaveKeyWithExpire.dt), !dbg !838
  store %struct.dict* %call, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !840
  br label %if.end, !dbg !841

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !842
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %1, i32 0, i32 5, !dbg !844
  %2 = load i32, i32* %id, align 8, !dbg !844
  %cmp1 = icmp sgt i32 %2, 63, !dbg !845
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !846

if.then2:                                         ; preds = %if.end
  br label %do.end19, !dbg !847

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !848, metadata !DIExpression()), !dbg !849
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !850
  %4 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !851
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i32 0, i32 2, !dbg !852
  %5 = load i8*, i8** %ptr, align 8, !dbg !852
  %call4 = call %struct.dictEntry* @dictAddOrFind(%struct.dict* %3, i8* %5), !dbg !853
  store %struct.dictEntry* %call4, %struct.dictEntry** %de, align 8, !dbg !849
  %6 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !854
  %key5 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i32 0, i32 0, !dbg !856
  %7 = load i8*, i8** %key5, align 8, !dbg !856
  %8 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !857
  %ptr6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i32 0, i32 2, !dbg !858
  %9 = load i8*, i8** %ptr6, align 8, !dbg !858
  %cmp7 = icmp eq i8* %7, %9, !dbg !859
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !860

if.then8:                                         ; preds = %if.end3
  %10 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !861
  %ptr9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i32 0, i32 2, !dbg !863
  %11 = load i8*, i8** %ptr9, align 8, !dbg !863
  %call10 = call i8* @sdsdup(i8* %11), !dbg !864
  %12 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !865
  %key11 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %12, i32 0, i32 0, !dbg !866
  store i8* %call10, i8** %key11, align 8, !dbg !867
  br label %do.body, !dbg !868

do.body:                                          ; preds = %if.then8
  %13 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !869
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i32 0, i32 1, !dbg !869
  %u64 = bitcast %union.anon* %v to i64*, !dbg !869
  store i64 0, i64* %u64, align 8, !dbg !869
  br label %do.end, !dbg !869

do.end:                                           ; preds = %do.body
  br label %if.end12, !dbg !871

if.end12:                                         ; preds = %do.end, %if.end3
  call void @llvm.dbg.declare(metadata i64* %dbids, metadata !872, metadata !DIExpression()), !dbg !873
  %14 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !874
  %v13 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %14, i32 0, i32 1, !dbg !874
  %u6414 = bitcast %union.anon* %v13 to i64*, !dbg !874
  %15 = load i64, i64* %u6414, align 8, !dbg !874
  store i64 %15, i64* %dbids, align 8, !dbg !873
  %16 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !875
  %id15 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %16, i32 0, i32 5, !dbg !876
  %17 = load i32, i32* %id15, align 8, !dbg !876
  %sh_prom = zext i32 %17 to i64, !dbg !877
  %shl = shl i64 1, %sh_prom, !dbg !877
  %18 = load i64, i64* %dbids, align 8, !dbg !878
  %or = or i64 %18, %shl, !dbg !878
  store i64 %or, i64* %dbids, align 8, !dbg !878
  br label %do.body16, !dbg !879

do.body16:                                        ; preds = %if.end12
  %19 = load i64, i64* %dbids, align 8, !dbg !880
  %20 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !880
  %v17 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %20, i32 0, i32 1, !dbg !880
  %u6418 = bitcast %union.anon* %v17 to i64*, !dbg !880
  store i64 %19, i64* %u6418, align 8, !dbg !880
  br label %do.end19, !dbg !880

do.end19:                                         ; preds = %if.then2, %do.body16
  ret void, !dbg !882
}

declare dso_local i64 @dictSdsHash(i8*) #2

declare dso_local i32 @dictSdsKeyCompare(%struct.dict*, i8*, i8*) #2

declare dso_local void @dictSdsDestructor(%struct.dict*, i8*) #2

declare dso_local %struct.dict* @dictCreate(%struct.dictType*) #2

declare dso_local %struct.dictEntry* @dictAddOrFind(%struct.dict*, i8*) #2

declare dso_local i8* @sdsdup(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getSlaveKeyWithExpireCount() #0 !dbg !883 {
entry:
  %retval = alloca i64, align 8
  %0 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !886
  %cmp = icmp eq %struct.dict* %0, null, !dbg !888
  br i1 %cmp, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !890
  br label %return, !dbg !890

if.end:                                           ; preds = %entry
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !891
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !891
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !891
  %2 = load i64, i64* %arrayidx, align 8, !dbg !891
  %3 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !891
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %3, i32 0, i32 2, !dbg !891
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !891
  %4 = load i64, i64* %arrayidx2, align 8, !dbg !891
  %add = add i64 %2, %4, !dbg !891
  store i64 %add, i64* %retval, align 8, !dbg !892
  br label %return, !dbg !892

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !893
  ret i64 %5, !dbg !893
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushSlaveKeysWithExpireList() #0 !dbg !894 {
entry:
  %0 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !895
  %tobool = icmp ne %struct.dict* %0, null, !dbg !895
  br i1 %tobool, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %entry
  %1 = load %struct.dict*, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !898
  call void @dictRelease(%struct.dict* %1), !dbg !900
  store %struct.dict* null, %struct.dict** @slaveKeysWithExpire, align 8, !dbg !901
  br label %if.end, !dbg !902

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !903
}

declare dso_local void @dictRelease(%struct.dict*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkAlreadyExpired(i64 %when) #0 !dbg !904 {
entry:
  %when.addr = alloca i64, align 8
  store i64 %when, i64* %when.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %when.addr, metadata !907, metadata !DIExpression()), !dbg !908
  %0 = load i64, i64* %when.addr, align 8, !dbg !909
  %call = call i64 @mstime(), !dbg !910
  %cmp = icmp sle i64 %0, %call, !dbg !911
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !912

land.lhs.true:                                    ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 86), align 4, !dbg !913
  %tobool = icmp ne i32 %1, 0, !dbg !914
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !915

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !916
  %tobool1 = icmp ne i8* %2, null, !dbg !917
  %lnot = xor i1 %tobool1, true, !dbg !917
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ], !dbg !918
  %land.ext = zext i1 %3 to i32, !dbg !915
  ret i32 %land.ext, !dbg !919
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parseExtendedExpireArgumentsOrReply(%struct.client* %c, i32* %flags) #0 !dbg !920 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %flags.addr = alloca i32*, align 8
  %nx = alloca i32, align 4
  %xx = alloca i32, align 4
  %gt = alloca i32, align 4
  %lt = alloca i32, align 4
  %j = alloca i32, align 4
  %opt = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1384, metadata !DIExpression()), !dbg !1385
  store i32* %flags, i32** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %flags.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.declare(metadata i32* %nx, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i32 0, i32* %nx, align 4, !dbg !1389
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !1390, metadata !DIExpression()), !dbg !1391
  store i32 0, i32* %xx, align 4, !dbg !1391
  call void @llvm.dbg.declare(metadata i32* %gt, metadata !1392, metadata !DIExpression()), !dbg !1393
  store i32 0, i32* %gt, align 4, !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %lt, metadata !1394, metadata !DIExpression()), !dbg !1395
  store i32 0, i32* %lt, align 4, !dbg !1395
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i32 3, i32* %j, align 4, !dbg !1397
  br label %while.cond, !dbg !1398

while.cond:                                       ; preds = %if.end18, %entry
  %0 = load i32, i32* %j, align 4, !dbg !1399
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1400
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !1401
  %2 = load i32, i32* %argc, align 8, !dbg !1401
  %cmp = icmp slt i32 %0, %2, !dbg !1402
  br i1 %cmp, label %while.body, label %while.end, !dbg !1398

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %opt, metadata !1403, metadata !DIExpression()), !dbg !1405
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1406
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !1407
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1407
  %5 = load i32, i32* %j, align 4, !dbg !1408
  %idxprom = sext i32 %5 to i64, !dbg !1406
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 %idxprom, !dbg !1406
  %6 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1406
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i32 0, i32 2, !dbg !1409
  %7 = load i8*, i8** %ptr, align 8, !dbg !1409
  store i8* %7, i8** %opt, align 8, !dbg !1405
  %8 = load i8*, i8** %opt, align 8, !dbg !1410
  %call = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !1412
  %tobool = icmp ne i32 %call, 0, !dbg !1412
  br i1 %tobool, label %if.else, label %if.then, !dbg !1413

if.then:                                          ; preds = %while.body
  %9 = load i32*, i32** %flags.addr, align 8, !dbg !1414
  %10 = load i32, i32* %9, align 4, !dbg !1416
  %or = or i32 %10, 1, !dbg !1416
  store i32 %or, i32* %9, align 4, !dbg !1416
  store i32 1, i32* %nx, align 4, !dbg !1417
  br label %if.end18, !dbg !1418

if.else:                                          ; preds = %while.body
  %11 = load i8*, i8** %opt, align 8, !dbg !1419
  %call1 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !1421
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1421
  br i1 %tobool2, label %if.else5, label %if.then3, !dbg !1422

if.then3:                                         ; preds = %if.else
  %12 = load i32*, i32** %flags.addr, align 8, !dbg !1423
  %13 = load i32, i32* %12, align 4, !dbg !1425
  %or4 = or i32 %13, 2, !dbg !1425
  store i32 %or4, i32* %12, align 4, !dbg !1425
  store i32 1, i32* %xx, align 4, !dbg !1426
  br label %if.end17, !dbg !1427

if.else5:                                         ; preds = %if.else
  %14 = load i8*, i8** %opt, align 8, !dbg !1428
  %call6 = call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !1430
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1430
  br i1 %tobool7, label %if.else10, label %if.then8, !dbg !1431

if.then8:                                         ; preds = %if.else5
  %15 = load i32*, i32** %flags.addr, align 8, !dbg !1432
  %16 = load i32, i32* %15, align 4, !dbg !1434
  %or9 = or i32 %16, 4, !dbg !1434
  store i32 %or9, i32* %15, align 4, !dbg !1434
  store i32 1, i32* %gt, align 4, !dbg !1435
  br label %if.end16, !dbg !1436

if.else10:                                        ; preds = %if.else5
  %17 = load i8*, i8** %opt, align 8, !dbg !1437
  %call11 = call i32 @strcasecmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !1439
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1439
  br i1 %tobool12, label %if.else15, label %if.then13, !dbg !1440

if.then13:                                        ; preds = %if.else10
  %18 = load i32*, i32** %flags.addr, align 8, !dbg !1441
  %19 = load i32, i32* %18, align 4, !dbg !1443
  %or14 = or i32 %19, 8, !dbg !1443
  store i32 %or14, i32* %18, align 4, !dbg !1443
  store i32 1, i32* %lt, align 4, !dbg !1444
  br label %if.end, !dbg !1445

if.else15:                                        ; preds = %if.else10
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1446
  %21 = load i8*, i8** %opt, align 8, !dbg !1448
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %21), !dbg !1449
  store i32 -1, i32* %retval, align 4, !dbg !1450
  br label %return, !dbg !1450

if.end:                                           ; preds = %if.then13
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then3
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %22 = load i32, i32* %j, align 4, !dbg !1451
  %inc = add nsw i32 %22, 1, !dbg !1451
  store i32 %inc, i32* %j, align 4, !dbg !1451
  br label %while.cond, !dbg !1398, !llvm.loop !1452

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %nx, align 4, !dbg !1454
  %tobool19 = icmp ne i32 %23, 0, !dbg !1454
  br i1 %tobool19, label %land.lhs.true, label %lor.lhs.false, !dbg !1456

land.lhs.true:                                    ; preds = %while.end
  %24 = load i32, i32* %xx, align 4, !dbg !1457
  %tobool20 = icmp ne i32 %24, 0, !dbg !1457
  br i1 %tobool20, label %if.then28, label %lor.lhs.false, !dbg !1458

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.end
  %25 = load i32, i32* %nx, align 4, !dbg !1459
  %tobool21 = icmp ne i32 %25, 0, !dbg !1459
  br i1 %tobool21, label %land.lhs.true22, label %lor.lhs.false24, !dbg !1460

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %26 = load i32, i32* %gt, align 4, !dbg !1461
  %tobool23 = icmp ne i32 %26, 0, !dbg !1461
  br i1 %tobool23, label %if.then28, label %lor.lhs.false24, !dbg !1462

lor.lhs.false24:                                  ; preds = %land.lhs.true22, %lor.lhs.false
  %27 = load i32, i32* %nx, align 4, !dbg !1463
  %tobool25 = icmp ne i32 %27, 0, !dbg !1463
  br i1 %tobool25, label %land.lhs.true26, label %if.end29, !dbg !1464

land.lhs.true26:                                  ; preds = %lor.lhs.false24
  %28 = load i32, i32* %lt, align 4, !dbg !1465
  %tobool27 = icmp ne i32 %28, 0, !dbg !1465
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !1466

if.then28:                                        ; preds = %land.lhs.true26, %land.lhs.true22, %land.lhs.true
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1467
  call void @addReplyError(%struct.client* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0)), !dbg !1469
  store i32 -1, i32* %retval, align 4, !dbg !1470
  br label %return, !dbg !1470

if.end29:                                         ; preds = %land.lhs.true26, %lor.lhs.false24
  %30 = load i32, i32* %gt, align 4, !dbg !1471
  %tobool30 = icmp ne i32 %30, 0, !dbg !1471
  br i1 %tobool30, label %land.lhs.true31, label %if.end34, !dbg !1473

land.lhs.true31:                                  ; preds = %if.end29
  %31 = load i32, i32* %lt, align 4, !dbg !1474
  %tobool32 = icmp ne i32 %31, 0, !dbg !1474
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1475

if.then33:                                        ; preds = %land.lhs.true31
  %32 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1476
  call void @addReplyError(%struct.client* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0)), !dbg !1478
  store i32 -1, i32* %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end34:                                         ; preds = %land.lhs.true31, %if.end29
  store i32 0, i32* %retval, align 4, !dbg !1480
  br label %return, !dbg !1480

return:                                           ; preds = %if.end34, %if.then33, %if.then28, %if.else15
  %33 = load i32, i32* %retval, align 4, !dbg !1481
  ret i32 %33, !dbg !1481
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #2

declare dso_local void @addReplyError(%struct.client*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @expireGenericCommand(%struct.client* %c, i64 %basetime, i32 %unit) #0 !dbg !1482 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %basetime.addr = alloca i64, align 8
  %unit.addr = alloca i32, align 4
  %key = alloca %struct.redisObject*, align 8
  %param = alloca %struct.redisObject*, align 8
  %when = alloca i64, align 8
  %current_expire = alloca i64, align 8
  %flag = alloca i32, align 4
  %aux = alloca %struct.redisObject*, align 8
  %deleted = alloca i32, align 4
  %when_obj = alloca %struct.redisObject*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  store i64 %basetime, i64* %basetime.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %basetime.addr, metadata !1487, metadata !DIExpression()), !dbg !1488
  store i32 %unit, i32* %unit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unit.addr, metadata !1489, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key, metadata !1491, metadata !DIExpression()), !dbg !1492
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1493
  %argv = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 10, !dbg !1494
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1494
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !1493
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1493
  store %struct.redisObject* %2, %struct.redisObject** %key, align 8, !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.redisObject** %param, metadata !1495, metadata !DIExpression()), !dbg !1496
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1497
  %argv1 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !1498
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv1, align 8, !dbg !1498
  %arrayidx2 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !1497
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx2, align 8, !dbg !1497
  store %struct.redisObject* %5, %struct.redisObject** %param, align 8, !dbg !1496
  call void @llvm.dbg.declare(metadata i64* %when, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.declare(metadata i64* %current_expire, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i64 -1, i64* %current_expire, align 8, !dbg !1502
  call void @llvm.dbg.declare(metadata i32* %flag, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i32 0, i32* %flag, align 4, !dbg !1504
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1505
  %call = call i32 @parseExtendedExpireArgumentsOrReply(%struct.client* %6, i32* %flag), !dbg !1507
  %cmp = icmp ne i32 %call, 0, !dbg !1508
  br i1 %cmp, label %if.then, label %if.end, !dbg !1509

if.then:                                          ; preds = %entry
  br label %return, !dbg !1510

if.end:                                           ; preds = %entry
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1512
  %8 = load %struct.redisObject*, %struct.redisObject** %param, align 8, !dbg !1514
  %call3 = call i32 @getLongLongFromObjectOrReply(%struct.client* %7, %struct.redisObject* %8, i64* %when, i8* null), !dbg !1515
  %cmp4 = icmp ne i32 %call3, 0, !dbg !1516
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1517

if.then5:                                         ; preds = %if.end
  br label %return, !dbg !1518

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* %unit.addr, align 4, !dbg !1519
  %cmp7 = icmp eq i32 %9, 0, !dbg !1521
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !1522

if.then8:                                         ; preds = %if.end6
  %10 = load i64, i64* %when, align 8, !dbg !1523
  %cmp9 = icmp sgt i64 %10, 9223372036854775, !dbg !1526
  br i1 %cmp9, label %if.then11, label %lor.lhs.false, !dbg !1527

lor.lhs.false:                                    ; preds = %if.then8
  %11 = load i64, i64* %when, align 8, !dbg !1528
  %cmp10 = icmp slt i64 %11, -9223372036854775, !dbg !1529
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !1530

if.then11:                                        ; preds = %lor.lhs.false, %if.then8
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1531
  call void @addReplyErrorExpireTime(%struct.client* %12), !dbg !1533
  br label %return, !dbg !1534

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load i64, i64* %when, align 8, !dbg !1535
  %mul = mul nsw i64 %13, 1000, !dbg !1535
  store i64 %mul, i64* %when, align 8, !dbg !1535
  br label %if.end13, !dbg !1536

if.end13:                                         ; preds = %if.end12, %if.end6
  %14 = load i64, i64* %when, align 8, !dbg !1537
  %15 = load i64, i64* %basetime.addr, align 8, !dbg !1539
  %sub = sub nsw i64 9223372036854775807, %15, !dbg !1540
  %cmp14 = icmp sgt i64 %14, %sub, !dbg !1541
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !1542

if.then15:                                        ; preds = %if.end13
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1543
  call void @addReplyErrorExpireTime(%struct.client* %16), !dbg !1545
  br label %return, !dbg !1546

if.end16:                                         ; preds = %if.end13
  %17 = load i64, i64* %basetime.addr, align 8, !dbg !1547
  %18 = load i64, i64* %when, align 8, !dbg !1548
  %add = add nsw i64 %18, %17, !dbg !1548
  store i64 %add, i64* %when, align 8, !dbg !1548
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1549
  %db = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 4, !dbg !1551
  %20 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1551
  %21 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1552
  %call17 = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %20, %struct.redisObject* %21), !dbg !1553
  %cmp18 = icmp eq %struct.redisObject* %call17, null, !dbg !1554
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1555

if.then19:                                        ; preds = %if.end16
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1556
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1558
  call void @addReply(%struct.client* %22, %struct.redisObject* %23), !dbg !1559
  br label %return, !dbg !1560

if.end20:                                         ; preds = %if.end16
  %24 = load i32, i32* %flag, align 4, !dbg !1561
  %tobool = icmp ne i32 %24, 0, !dbg !1561
  br i1 %tobool, label %if.then21, label %if.end54, !dbg !1563

if.then21:                                        ; preds = %if.end20
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1564
  %db22 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 4, !dbg !1566
  %26 = load %struct.redisDb*, %struct.redisDb** %db22, align 8, !dbg !1566
  %27 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1567
  %call23 = call i64 @getExpire(%struct.redisDb* %26, %struct.redisObject* %27), !dbg !1568
  store i64 %call23, i64* %current_expire, align 8, !dbg !1569
  %28 = load i32, i32* %flag, align 4, !dbg !1570
  %and = and i32 %28, 1, !dbg !1572
  %tobool24 = icmp ne i32 %and, 0, !dbg !1572
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !1573

if.then25:                                        ; preds = %if.then21
  %29 = load i64, i64* %current_expire, align 8, !dbg !1574
  %cmp26 = icmp ne i64 %29, -1, !dbg !1577
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !1578

if.then27:                                        ; preds = %if.then25
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1579
  %31 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1581
  call void @addReply(%struct.client* %30, %struct.redisObject* %31), !dbg !1582
  br label %return, !dbg !1583

if.end28:                                         ; preds = %if.then25
  br label %if.end29, !dbg !1584

if.end29:                                         ; preds = %if.end28, %if.then21
  %32 = load i32, i32* %flag, align 4, !dbg !1585
  %and30 = and i32 %32, 2, !dbg !1587
  %tobool31 = icmp ne i32 %and30, 0, !dbg !1587
  br i1 %tobool31, label %if.then32, label %if.end36, !dbg !1588

if.then32:                                        ; preds = %if.end29
  %33 = load i64, i64* %current_expire, align 8, !dbg !1589
  %cmp33 = icmp eq i64 %33, -1, !dbg !1592
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1593

if.then34:                                        ; preds = %if.then32
  %34 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1594
  %35 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1596
  call void @addReply(%struct.client* %34, %struct.redisObject* %35), !dbg !1597
  br label %return, !dbg !1598

if.end35:                                         ; preds = %if.then32
  br label %if.end36, !dbg !1599

if.end36:                                         ; preds = %if.end35, %if.end29
  %36 = load i32, i32* %flag, align 4, !dbg !1600
  %and37 = and i32 %36, 4, !dbg !1602
  %tobool38 = icmp ne i32 %and37, 0, !dbg !1602
  br i1 %tobool38, label %if.then39, label %if.end45, !dbg !1603

if.then39:                                        ; preds = %if.end36
  %37 = load i64, i64* %when, align 8, !dbg !1604
  %38 = load i64, i64* %current_expire, align 8, !dbg !1607
  %cmp40 = icmp sle i64 %37, %38, !dbg !1608
  br i1 %cmp40, label %if.then43, label %lor.lhs.false41, !dbg !1609

lor.lhs.false41:                                  ; preds = %if.then39
  %39 = load i64, i64* %current_expire, align 8, !dbg !1610
  %cmp42 = icmp eq i64 %39, -1, !dbg !1611
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1612

if.then43:                                        ; preds = %lor.lhs.false41, %if.then39
  %40 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1613
  %41 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1615
  call void @addReply(%struct.client* %40, %struct.redisObject* %41), !dbg !1616
  br label %return, !dbg !1617

if.end44:                                         ; preds = %lor.lhs.false41
  br label %if.end45, !dbg !1618

if.end45:                                         ; preds = %if.end44, %if.end36
  %42 = load i32, i32* %flag, align 4, !dbg !1619
  %and46 = and i32 %42, 8, !dbg !1621
  %tobool47 = icmp ne i32 %and46, 0, !dbg !1621
  br i1 %tobool47, label %if.then48, label %if.end53, !dbg !1622

if.then48:                                        ; preds = %if.end45
  %43 = load i64, i64* %current_expire, align 8, !dbg !1623
  %cmp49 = icmp ne i64 %43, -1, !dbg !1626
  br i1 %cmp49, label %land.lhs.true, label %if.end52, !dbg !1627

land.lhs.true:                                    ; preds = %if.then48
  %44 = load i64, i64* %when, align 8, !dbg !1628
  %45 = load i64, i64* %current_expire, align 8, !dbg !1629
  %cmp50 = icmp sge i64 %44, %45, !dbg !1630
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !1631

if.then51:                                        ; preds = %land.lhs.true
  %46 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1632
  %47 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1634
  call void @addReply(%struct.client* %46, %struct.redisObject* %47), !dbg !1635
  br label %return, !dbg !1636

if.end52:                                         ; preds = %land.lhs.true, %if.then48
  br label %if.end53, !dbg !1637

if.end53:                                         ; preds = %if.end52, %if.end45
  br label %if.end54, !dbg !1638

if.end54:                                         ; preds = %if.end53, %if.end20
  %48 = load i64, i64* %when, align 8, !dbg !1639
  %call55 = call i32 @checkAlreadyExpired(i64 %48), !dbg !1641
  %tobool56 = icmp ne i32 %call55, 0, !dbg !1641
  br i1 %tobool56, label %if.then57, label %if.else, !dbg !1642

if.then57:                                        ; preds = %if.end54
  call void @llvm.dbg.declare(metadata %struct.redisObject** %aux, metadata !1643, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.declare(metadata i32* %deleted, metadata !1646, metadata !DIExpression()), !dbg !1647
  %49 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 378), align 4, !dbg !1648
  %tobool58 = icmp ne i32 %49, 0, !dbg !1649
  br i1 %tobool58, label %cond.true, label %cond.false, !dbg !1649

cond.true:                                        ; preds = %if.then57
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1650
  %db59 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 4, !dbg !1651
  %51 = load %struct.redisDb*, %struct.redisDb** %db59, align 8, !dbg !1651
  %52 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1652
  %call60 = call i32 @dbAsyncDelete(%struct.redisDb* %51, %struct.redisObject* %52), !dbg !1653
  br label %cond.end, !dbg !1649

cond.false:                                       ; preds = %if.then57
  %53 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1654
  %db61 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 4, !dbg !1655
  %54 = load %struct.redisDb*, %struct.redisDb** %db61, align 8, !dbg !1655
  %55 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1656
  %call62 = call i32 @dbSyncDelete(%struct.redisDb* %54, %struct.redisObject* %55), !dbg !1657
  br label %cond.end, !dbg !1649

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call60, %cond.true ], [ %call62, %cond.false ], !dbg !1649
  store i32 %cond, i32* %deleted, align 4, !dbg !1647
  %56 = load i32, i32* %deleted, align 4, !dbg !1658
  %tobool63 = icmp ne i32 %56, 0, !dbg !1658
  br i1 %tobool63, label %cond.true64, label %cond.false65, !dbg !1658

cond.true64:                                      ; preds = %cond.end
  br label %cond.end66, !dbg !1658

cond.false65:                                     ; preds = %cond.end
  %57 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1658
  %58 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1658
  call void @_serverAssertWithInfo(%struct.client* %57, %struct.redisObject* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 645), !dbg !1658
  unreachable, !dbg !1658

unreachable.cont:                                 ; No predecessors!
  br label %cond.end66, !dbg !1658

cond.end66:                                       ; preds = %unreachable.cont, %cond.true64
  %59 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1659
  %inc = add nsw i64 %59, 1, !dbg !1659
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1659
  %60 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 378), align 4, !dbg !1660
  %tobool67 = icmp ne i32 %60, 0, !dbg !1661
  br i1 %tobool67, label %cond.true68, label %cond.false69, !dbg !1661

cond.true68:                                      ; preds = %cond.end66
  %61 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 40), align 8, !dbg !1662
  br label %cond.end70, !dbg !1661

cond.false69:                                     ; preds = %cond.end66
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 39), align 8, !dbg !1663
  br label %cond.end70, !dbg !1661

cond.end70:                                       ; preds = %cond.false69, %cond.true68
  %cond71 = phi %struct.redisObject* [ %61, %cond.true68 ], [ %62, %cond.false69 ], !dbg !1661
  store %struct.redisObject* %cond71, %struct.redisObject** %aux, align 8, !dbg !1664
  %63 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1665
  %64 = load %struct.redisObject*, %struct.redisObject** %aux, align 8, !dbg !1666
  %65 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1667
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* %63, i32 2, %struct.redisObject* %64, %struct.redisObject* %65), !dbg !1668
  %66 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1669
  %67 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1670
  %db72 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 4, !dbg !1671
  %68 = load %struct.redisDb*, %struct.redisDb** %db72, align 8, !dbg !1671
  %69 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1672
  call void @signalModifiedKey(%struct.client* %66, %struct.redisDb* %68, %struct.redisObject* %69), !dbg !1673
  %70 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1674
  %71 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1675
  %db73 = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 4, !dbg !1676
  %72 = load %struct.redisDb*, %struct.redisDb** %db73, align 8, !dbg !1676
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %72, i32 0, i32 5, !dbg !1677
  %73 = load i32, i32* %id, align 8, !dbg !1677
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.redisObject* %70, i32 %73), !dbg !1678
  %74 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1679
  %75 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !1680
  call void @addReply(%struct.client* %74, %struct.redisObject* %75), !dbg !1681
  br label %return, !dbg !1682

if.else:                                          ; preds = %if.end54
  %76 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1683
  %77 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1685
  %db74 = getelementptr inbounds %struct.client, %struct.client* %77, i32 0, i32 4, !dbg !1686
  %78 = load %struct.redisDb*, %struct.redisDb** %db74, align 8, !dbg !1686
  %79 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1687
  %80 = load i64, i64* %when, align 8, !dbg !1688
  call void @setExpire(%struct.client* %76, %struct.redisDb* %78, %struct.redisObject* %79, i64 %80), !dbg !1689
  %81 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1690
  %82 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !1691
  call void @addReply(%struct.client* %81, %struct.redisObject* %82), !dbg !1692
  %83 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1693
  %cmd = getelementptr inbounds %struct.client, %struct.client* %83, i32 0, i32 15, !dbg !1695
  %84 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1695
  %proc = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %84, i32 0, i32 10, !dbg !1696
  %85 = load void (%struct.client*)*, void (%struct.client*)** %proc, align 8, !dbg !1696
  %cmp75 = icmp ne void (%struct.client*)* %85, @pexpireatCommand, !dbg !1697
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !1698

if.then76:                                        ; preds = %if.else
  %86 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1699
  %87 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 63), align 8, !dbg !1701
  call void @rewriteClientCommandArgument(%struct.client* %86, i32 0, %struct.redisObject* %87), !dbg !1702
  br label %if.end77, !dbg !1703

if.end77:                                         ; preds = %if.then76, %if.else
  %88 = load i64, i64* %basetime.addr, align 8, !dbg !1704
  %cmp78 = icmp ne i64 %88, 0, !dbg !1706
  br i1 %cmp78, label %if.then81, label %lor.lhs.false79, !dbg !1707

lor.lhs.false79:                                  ; preds = %if.end77
  %89 = load i32, i32* %unit.addr, align 4, !dbg !1708
  %cmp80 = icmp eq i32 %89, 0, !dbg !1709
  br i1 %cmp80, label %if.then81, label %if.end83, !dbg !1710

if.then81:                                        ; preds = %lor.lhs.false79, %if.end77
  call void @llvm.dbg.declare(metadata %struct.redisObject** %when_obj, metadata !1711, metadata !DIExpression()), !dbg !1713
  %90 = load i64, i64* %when, align 8, !dbg !1714
  %call82 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %90), !dbg !1715
  store %struct.redisObject* %call82, %struct.redisObject** %when_obj, align 8, !dbg !1713
  %91 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1716
  %92 = load %struct.redisObject*, %struct.redisObject** %when_obj, align 8, !dbg !1717
  call void @rewriteClientCommandArgument(%struct.client* %91, i32 2, %struct.redisObject* %92), !dbg !1718
  %93 = load %struct.redisObject*, %struct.redisObject** %when_obj, align 8, !dbg !1719
  call void @decrRefCount(%struct.redisObject* %93), !dbg !1720
  br label %if.end83, !dbg !1721

if.end83:                                         ; preds = %if.then81, %lor.lhs.false79
  %94 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1722
  %95 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1723
  %db84 = getelementptr inbounds %struct.client, %struct.client* %95, i32 0, i32 4, !dbg !1724
  %96 = load %struct.redisDb*, %struct.redisDb** %db84, align 8, !dbg !1724
  %97 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1725
  call void @signalModifiedKey(%struct.client* %94, %struct.redisDb* %96, %struct.redisObject* %97), !dbg !1726
  %98 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1727
  %99 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1728
  %db85 = getelementptr inbounds %struct.client, %struct.client* %99, i32 0, i32 4, !dbg !1729
  %100 = load %struct.redisDb*, %struct.redisDb** %db85, align 8, !dbg !1729
  %id86 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %100, i32 0, i32 5, !dbg !1730
  %101 = load i32, i32* %id86, align 8, !dbg !1730
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), %struct.redisObject* %98, i32 %101), !dbg !1731
  %102 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1732
  %inc87 = add nsw i64 %102, 1, !dbg !1732
  store i64 %inc87, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1732
  br label %return, !dbg !1733

return:                                           ; preds = %if.end83, %cond.end70, %if.then51, %if.then43, %if.then34, %if.then27, %if.then19, %if.then15, %if.then11, %if.then5, %if.then
  ret void, !dbg !1734
}

declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #2

declare dso_local void @addReplyErrorExpireTime(%struct.client*) #2

declare dso_local %struct.redisObject* @lookupKeyWrite(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #2

declare dso_local i64 @getExpire(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local i32 @dbSyncDelete(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) #2

declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) #2

declare dso_local void @signalModifiedKey(%struct.client*, %struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) #2

declare dso_local void @setExpire(%struct.client*, %struct.redisDb*, %struct.redisObject*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @pexpireatCommand(%struct.client* %c) #0 !dbg !1735 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1736, metadata !DIExpression()), !dbg !1737
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1738
  call void @expireGenericCommand(%struct.client* %0, i64 0, i32 1), !dbg !1739
  ret void, !dbg !1740
}

declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) #2

declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @expireCommand(%struct.client* %c) #0 !dbg !1741 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1742, metadata !DIExpression()), !dbg !1743
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1744
  %call = call i64 @mstime(), !dbg !1745
  call void @expireGenericCommand(%struct.client* %0, i64 %call, i32 0), !dbg !1746
  ret void, !dbg !1747
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expireatCommand(%struct.client* %c) #0 !dbg !1748 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1749, metadata !DIExpression()), !dbg !1750
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1751
  call void @expireGenericCommand(%struct.client* %0, i64 0, i32 0), !dbg !1752
  ret void, !dbg !1753
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pexpireCommand(%struct.client* %c) #0 !dbg !1754 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1755, metadata !DIExpression()), !dbg !1756
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1757
  %call = call i64 @mstime(), !dbg !1758
  call void @expireGenericCommand(%struct.client* %0, i64 %call, i32 1), !dbg !1759
  ret void, !dbg !1760
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ttlGenericCommand(%struct.client* %c, i32 %output_ms, i32 %output_abs) #0 !dbg !1761 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %output_ms.addr = alloca i32, align 4
  %output_abs.addr = alloca i32, align 4
  %expire = alloca i64, align 8
  %ttl = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1764, metadata !DIExpression()), !dbg !1765
  store i32 %output_ms, i32* %output_ms.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %output_ms.addr, metadata !1766, metadata !DIExpression()), !dbg !1767
  store i32 %output_abs, i32* %output_abs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %output_abs.addr, metadata !1768, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.declare(metadata i64* %expire, metadata !1770, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.declare(metadata i64* %ttl, metadata !1772, metadata !DIExpression()), !dbg !1773
  store i64 -1, i64* %ttl, align 8, !dbg !1773
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1774
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !1776
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1776
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1777
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !1778
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1778
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1777
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1777
  %call = call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %1, %struct.redisObject* %4, i32 1), !dbg !1779
  %cmp = icmp eq %struct.redisObject* %call, null, !dbg !1780
  br i1 %cmp, label %if.then, label %if.end, !dbg !1781

if.then:                                          ; preds = %entry
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1782
  call void @addReplyLongLong(%struct.client* %5, i64 -2), !dbg !1784
  br label %if.end19, !dbg !1785

if.end:                                           ; preds = %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1786
  %db1 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 4, !dbg !1787
  %7 = load %struct.redisDb*, %struct.redisDb** %db1, align 8, !dbg !1787
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1788
  %argv2 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 10, !dbg !1789
  %9 = load %struct.redisObject**, %struct.redisObject*** %argv2, align 8, !dbg !1789
  %arrayidx3 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1788
  %10 = load %struct.redisObject*, %struct.redisObject** %arrayidx3, align 8, !dbg !1788
  %call4 = call i64 @getExpire(%struct.redisDb* %7, %struct.redisObject* %10), !dbg !1790
  store i64 %call4, i64* %expire, align 8, !dbg !1791
  %11 = load i64, i64* %expire, align 8, !dbg !1792
  %cmp5 = icmp ne i64 %11, -1, !dbg !1794
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !1795

if.then6:                                         ; preds = %if.end
  %12 = load i32, i32* %output_abs.addr, align 4, !dbg !1796
  %tobool = icmp ne i32 %12, 0, !dbg !1796
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1796

cond.true:                                        ; preds = %if.then6
  %13 = load i64, i64* %expire, align 8, !dbg !1798
  br label %cond.end, !dbg !1796

cond.false:                                       ; preds = %if.then6
  %14 = load i64, i64* %expire, align 8, !dbg !1799
  %call7 = call i64 @mstime(), !dbg !1800
  %sub = sub nsw i64 %14, %call7, !dbg !1801
  br label %cond.end, !dbg !1796

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %sub, %cond.false ], !dbg !1796
  store i64 %cond, i64* %ttl, align 8, !dbg !1802
  %15 = load i64, i64* %ttl, align 8, !dbg !1803
  %cmp8 = icmp slt i64 %15, 0, !dbg !1805
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1806

if.then9:                                         ; preds = %cond.end
  store i64 0, i64* %ttl, align 8, !dbg !1807
  br label %if.end10, !dbg !1808

if.end10:                                         ; preds = %if.then9, %cond.end
  br label %if.end11, !dbg !1809

if.end11:                                         ; preds = %if.end10, %if.end
  %16 = load i64, i64* %ttl, align 8, !dbg !1810
  %cmp12 = icmp eq i64 %16, -1, !dbg !1812
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !1813

if.then13:                                        ; preds = %if.end11
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1814
  call void @addReplyLongLong(%struct.client* %17, i64 -1), !dbg !1816
  br label %if.end19, !dbg !1817

if.else:                                          ; preds = %if.end11
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1818
  %19 = load i32, i32* %output_ms.addr, align 4, !dbg !1820
  %tobool14 = icmp ne i32 %19, 0, !dbg !1820
  br i1 %tobool14, label %cond.true15, label %cond.false16, !dbg !1820

cond.true15:                                      ; preds = %if.else
  %20 = load i64, i64* %ttl, align 8, !dbg !1821
  br label %cond.end17, !dbg !1820

cond.false16:                                     ; preds = %if.else
  %21 = load i64, i64* %ttl, align 8, !dbg !1822
  %add = add nsw i64 %21, 500, !dbg !1823
  %div = sdiv i64 %add, 1000, !dbg !1824
  br label %cond.end17, !dbg !1820

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %20, %cond.true15 ], [ %div, %cond.false16 ], !dbg !1820
  call void @addReplyLongLong(%struct.client* %18, i64 %cond18), !dbg !1825
  br label %if.end19

if.end19:                                         ; preds = %if.then, %cond.end17, %if.then13
  ret void, !dbg !1826
}

declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ttlCommand(%struct.client* %c) #0 !dbg !1827 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1828, metadata !DIExpression()), !dbg !1829
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1830
  call void @ttlGenericCommand(%struct.client* %0, i32 0, i32 0), !dbg !1831
  ret void, !dbg !1832
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pttlCommand(%struct.client* %c) #0 !dbg !1833 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1834, metadata !DIExpression()), !dbg !1835
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1836
  call void @ttlGenericCommand(%struct.client* %0, i32 1, i32 0), !dbg !1837
  ret void, !dbg !1838
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expiretimeCommand(%struct.client* %c) #0 !dbg !1839 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1840, metadata !DIExpression()), !dbg !1841
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1842
  call void @ttlGenericCommand(%struct.client* %0, i32 0, i32 1), !dbg !1843
  ret void, !dbg !1844
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pexpiretimeCommand(%struct.client* %c) #0 !dbg !1845 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1846, metadata !DIExpression()), !dbg !1847
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1848
  call void @ttlGenericCommand(%struct.client* %0, i32 1, i32 1), !dbg !1849
  ret void, !dbg !1850
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @persistCommand(%struct.client* %c) #0 !dbg !1851 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1852, metadata !DIExpression()), !dbg !1853
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1854
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !1856
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1856
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1857
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !1858
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1858
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !1857
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1857
  %call = call %struct.redisObject* @lookupKeyWrite(%struct.redisDb* %1, %struct.redisObject* %4), !dbg !1859
  %tobool = icmp ne %struct.redisObject* %call, null, !dbg !1859
  br i1 %tobool, label %if.then, label %if.else13, !dbg !1860

if.then:                                          ; preds = %entry
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1861
  %db1 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 4, !dbg !1864
  %6 = load %struct.redisDb*, %struct.redisDb** %db1, align 8, !dbg !1864
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1865
  %argv2 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 10, !dbg !1866
  %8 = load %struct.redisObject**, %struct.redisObject*** %argv2, align 8, !dbg !1866
  %arrayidx3 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !1865
  %9 = load %struct.redisObject*, %struct.redisObject** %arrayidx3, align 8, !dbg !1865
  %call4 = call i32 @removeExpire(%struct.redisDb* %6, %struct.redisObject* %9), !dbg !1867
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1867
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1868

if.then6:                                         ; preds = %if.then
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1869
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1871
  %db7 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 4, !dbg !1872
  %12 = load %struct.redisDb*, %struct.redisDb** %db7, align 8, !dbg !1872
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1873
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 10, !dbg !1874
  %14 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !1874
  %arrayidx9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !1873
  %15 = load %struct.redisObject*, %struct.redisObject** %arrayidx9, align 8, !dbg !1873
  call void @signalModifiedKey(%struct.client* %10, %struct.redisDb* %12, %struct.redisObject* %15), !dbg !1875
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1876
  %argv10 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 10, !dbg !1877
  %17 = load %struct.redisObject**, %struct.redisObject*** %argv10, align 8, !dbg !1877
  %arrayidx11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 1, !dbg !1876
  %18 = load %struct.redisObject*, %struct.redisObject** %arrayidx11, align 8, !dbg !1876
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1878
  %db12 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 4, !dbg !1879
  %20 = load %struct.redisDb*, %struct.redisDb** %db12, align 8, !dbg !1879
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %20, i32 0, i32 5, !dbg !1880
  %21 = load i32, i32* %id, align 8, !dbg !1880
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %struct.redisObject* %18, i32 %21), !dbg !1881
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1882
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !1883
  call void @addReply(%struct.client* %22, %struct.redisObject* %23), !dbg !1884
  %24 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1885
  %inc = add nsw i64 %24, 1, !dbg !1885
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1885
  br label %if.end, !dbg !1886

if.else:                                          ; preds = %if.then
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1887
  %26 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1889
  call void @addReply(%struct.client* %25, %struct.redisObject* %26), !dbg !1890
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end14, !dbg !1891

if.else13:                                        ; preds = %entry
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1892
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !1894
  call void @addReply(%struct.client* %27, %struct.redisObject* %28), !dbg !1895
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.end
  ret void, !dbg !1896
}

declare dso_local i32 @removeExpire(%struct.redisDb*, %struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @touchCommand(%struct.client* %c) #0 !dbg !1897 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %touched = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.declare(metadata i32* %touched, metadata !1900, metadata !DIExpression()), !dbg !1901
  store i32 0, i32* %touched, align 4, !dbg !1901
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1902, metadata !DIExpression()), !dbg !1904
  store i32 1, i32* %j, align 4, !dbg !1904
  br label %for.cond, !dbg !1905

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !1906
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1908
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !1909
  %2 = load i32, i32* %argc, align 8, !dbg !1909
  %cmp = icmp slt i32 %0, %2, !dbg !1910
  br i1 %cmp, label %for.body, label %for.end, !dbg !1911

for.body:                                         ; preds = %for.cond
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1912
  %db = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 4, !dbg !1914
  %4 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1914
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1915
  %argv = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 10, !dbg !1916
  %6 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1916
  %7 = load i32, i32* %j, align 4, !dbg !1917
  %idxprom = sext i32 %7 to i64, !dbg !1915
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 %idxprom, !dbg !1915
  %8 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1915
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %4, %struct.redisObject* %8), !dbg !1918
  %cmp1 = icmp ne %struct.redisObject* %call, null, !dbg !1919
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1920

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %touched, align 4, !dbg !1921
  %inc = add nsw i32 %9, 1, !dbg !1921
  store i32 %inc, i32* %touched, align 4, !dbg !1921
  br label %if.end, !dbg !1922

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1923

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4, !dbg !1924
  %inc2 = add nsw i32 %10, 1, !dbg !1924
  store i32 %inc2, i32* %j, align 4, !dbg !1924
  br label %for.cond, !dbg !1925, !llvm.loop !1926

for.end:                                          ; preds = %for.cond
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1928
  %12 = load i32, i32* %touched, align 4, !dbg !1929
  %conv = sext i32 %12 to i64, !dbg !1929
  call void @addReplyLongLong(%struct.client* %11, i64 %conv), !dbg !1930
  ret void, !dbg !1931
}

declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "current_db", scope: !2, file: !3, line: 130, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "activeExpireCycle", scope: !3, file: !3, line: 113, type: !4, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!3 = !DIFile(filename: "expire.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !63, globals: !113, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !19, !40, !46, !52}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 42, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./connection.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18}
!13 = !DIEnumerator(name: "CONN_STATE_NONE", value: 0)
!14 = !DIEnumerator(name: "CONN_STATE_CONNECTING", value: 1)
!15 = !DIEnumerator(name: "CONN_STATE_ACCEPTING", value: 2)
!16 = !DIEnumerator(name: "CONN_STATE_CONNECTED", value: 3)
!17 = !DIEnumerator(name: "CONN_STATE_CLOSED", value: 4)
!18 = !DIEnumerator(name: "CONN_STATE_ERROR", value: 5)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 2116, baseType: !11, size: 32, elements: !21)
!20 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!22 = !DIEnumerator(name: "COMMAND_GROUP_GENERIC", value: 0)
!23 = !DIEnumerator(name: "COMMAND_GROUP_STRING", value: 1)
!24 = !DIEnumerator(name: "COMMAND_GROUP_LIST", value: 2)
!25 = !DIEnumerator(name: "COMMAND_GROUP_SET", value: 3)
!26 = !DIEnumerator(name: "COMMAND_GROUP_SORTED_SET", value: 4)
!27 = !DIEnumerator(name: "COMMAND_GROUP_HASH", value: 5)
!28 = !DIEnumerator(name: "COMMAND_GROUP_PUBSUB", value: 6)
!29 = !DIEnumerator(name: "COMMAND_GROUP_TRANSACTIONS", value: 7)
!30 = !DIEnumerator(name: "COMMAND_GROUP_CONNECTION", value: 8)
!31 = !DIEnumerator(name: "COMMAND_GROUP_SERVER", value: 9)
!32 = !DIEnumerator(name: "COMMAND_GROUP_SCRIPTING", value: 10)
!33 = !DIEnumerator(name: "COMMAND_GROUP_HYPERLOGLOG", value: 11)
!34 = !DIEnumerator(name: "COMMAND_GROUP_CLUSTER", value: 12)
!35 = !DIEnumerator(name: "COMMAND_GROUP_SENTINEL", value: 13)
!36 = !DIEnumerator(name: "COMMAND_GROUP_GEO", value: 14)
!37 = !DIEnumerator(name: "COMMAND_GROUP_STREAM", value: 15)
!38 = !DIEnumerator(name: "COMMAND_GROUP_BITMAP", value: 16)
!39 = !DIEnumerator(name: "COMMAND_GROUP_MODULE", value: 17)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 1989, baseType: !11, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "KSPEC_BS_INVALID", value: 0)
!43 = !DIEnumerator(name: "KSPEC_BS_UNKNOWN", value: 1)
!44 = !DIEnumerator(name: "KSPEC_BS_INDEX", value: 2)
!45 = !DIEnumerator(name: "KSPEC_BS_KEYWORD", value: 3)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 1997, baseType: !11, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "KSPEC_FK_INVALID", value: 0)
!49 = !DIEnumerator(name: "KSPEC_FK_UNKNOWN", value: 1)
!50 = !DIEnumerator(name: "KSPEC_FK_RANGE", value: 2)
!51 = !DIEnumerator(name: "KSPEC_FK_KEYNUM", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 2054, baseType: !11, size: 32, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62}
!54 = !DIEnumerator(name: "ARG_TYPE_STRING", value: 0)
!55 = !DIEnumerator(name: "ARG_TYPE_INTEGER", value: 1)
!56 = !DIEnumerator(name: "ARG_TYPE_DOUBLE", value: 2)
!57 = !DIEnumerator(name: "ARG_TYPE_KEY", value: 3)
!58 = !DIEnumerator(name: "ARG_TYPE_PATTERN", value: 4)
!59 = !DIEnumerator(name: "ARG_TYPE_UNIX_TIME", value: 5)
!60 = !DIEnumerator(name: "ARG_TYPE_PURE_TOKEN", value: 6)
!61 = !DIEnumerator(name: "ARG_TYPE_ONEOF", value: 7)
!62 = !DIEnumerator(name: "ARG_TYPE_BLOCK", value: 8)
!63 = !{!64, !65, !66, !67, !68, !72, !87, !97, !106}
!64 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !69, line: 27, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !71, line: 45, baseType: !65)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !74, line: 51, size: 24, elements: !75)
!74 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!75 = !{!76, !80, !81, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !73, file: !74, line: 52, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !69, line: 24, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !71, line: 38, baseType: !79)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73, file: !74, line: 53, baseType: !77, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !74, line: 54, baseType: !79, size: 8, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !73, file: !74, line: 55, baseType: !83, offset: 24)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, elements: !85)
!84 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!85 = !{!86}
!86 = !DISubrange(count: -1)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !74, line: 57, size: 40, elements: !89)
!89 = !{!90, !94, !95, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !88, file: !74, line: 58, baseType: !91, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !69, line: 25, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !71, line: 40, baseType: !93)
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !88, file: !74, line: 59, baseType: !91, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !74, line: 60, baseType: !79, size: 8, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !88, file: !74, line: 61, baseType: !83, offset: 40)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !74, line: 63, size: 72, elements: !99)
!99 = !{!100, !103, !104, !105}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !98, file: !74, line: 64, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !69, line: 26, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !71, line: 42, baseType: !11)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !98, file: !74, line: 65, baseType: !101, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !74, line: 66, baseType: !79, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !98, file: !74, line: 67, baseType: !83, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !74, line: 69, size: 136, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !107, file: !74, line: 70, baseType: !68, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !107, file: !74, line: 71, baseType: !68, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !74, line: 72, baseType: !79, size: 8, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !107, file: !74, line: 73, baseType: !83, offset: 136)
!113 = !{!0, !114, !116, !118, !195}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "timelimit_exit", scope: !2, file: !3, line: 131, type: !6, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "last_fast_cycle", scope: !2, file: !3, line: 132, type: !64, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "slaveKeysWithExpire", scope: !7, file: !3, line: 369, type: !120, isLocal: false, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !122, line: 61, baseType: !123)
!122 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !122, line: 79, size: 448, elements: !124)
!124 = !{!125, !160, !185, !187, !188, !192}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !122, line: 80, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !122, line: 74, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !122, line: 63, size: 512, elements: !129)
!129 = !{!130, !136, !140, !141, !145, !149, !150, !156}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !128, file: !122, line: 64, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!68, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !128, file: !122, line: 65, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!67, !120, !134}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !128, file: !122, line: 66, baseType: !137, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !128, file: !122, line: 67, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!6, !120, !134, !134}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !128, file: !122, line: 68, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !120, !67}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !128, file: !122, line: 69, baseType: !146, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !128, file: !122, line: 70, baseType: !151, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!6, !154, !66}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 46, baseType: !65)
!155 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !128, file: !122, line: 73, baseType: !157, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!154, !120}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !123, file: !122, line: 82, baseType: !161, size: 128, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !183)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !122, line: 59, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !122, line: 47, size: 192, elements: !166)
!166 = !{!167, !168, !179, !181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !165, file: !122, line: 48, baseType: !67, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !165, file: !122, line: 54, baseType: !169, size: 64, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !122, line: 49, size: 64, elements: !170)
!170 = !{!171, !172, !173, !178}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !169, file: !122, line: 50, baseType: !67, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !169, file: !122, line: 51, baseType: !68, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !169, file: !122, line: 52, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !175, line: 27, baseType: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !71, line: 44, baseType: !177)
!177 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !169, file: !122, line: 53, baseType: !66, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !122, line: 55, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !165, file: !122, line: 56, baseType: !182, offset: 192)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !85)
!183 = !{!184}
!184 = !DISubrange(count: 2)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !123, file: !122, line: 83, baseType: !186, size: 128, offset: 192)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !183)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !123, file: !122, line: 85, baseType: !177, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !123, file: !122, line: 88, baseType: !189, size: 16, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !175, line: 25, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !71, line: 39, baseType: !191)
!191 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !123, file: !122, line: 89, baseType: !193, size: 16, offset: 400)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16, elements: !183)
!194 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "dt", scope: !197, file: !3, line: 438, type: !127, isLocal: true, isDefinition: true)
!197 = distinct !DISubprogram(name: "rememberSlaveKeyWithExpire", scope: !3, file: !3, line: 436, type: !198, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !200, !245}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !20, line: 933, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !20, line: 922, size: 640, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !241}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !202, file: !20, line: 923, baseType: !120, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !202, file: !20, line: 924, baseType: !120, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !202, file: !20, line: 925, baseType: !120, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !202, file: !20, line: 926, baseType: !120, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !202, file: !20, line: 927, baseType: !120, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !202, file: !20, line: 928, baseType: !6, size: 32, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !202, file: !20, line: 929, baseType: !64, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !202, file: !20, line: 930, baseType: !65, size: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !202, file: !20, line: 931, baseType: !213, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !215, line: 54, baseType: !216)
!215 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !215, line: 47, size: 384, elements: !217)
!217 = !{!218, !227, !228, !232, !236, !240}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !216, file: !215, line: 48, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !215, line: 40, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !215, line: 36, size: 192, elements: !222)
!222 = !{!223, !225, !226}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !221, file: !215, line: 37, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !215, line: 38, baseType: !224, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !215, line: 39, baseType: !67, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !216, file: !215, line: 49, baseType: !219, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !216, file: !215, line: 50, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!67, !67}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !216, file: !215, line: 51, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !67}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !216, file: !215, line: 52, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!6, !67, !67}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !216, file: !215, line: 53, baseType: !65, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !202, file: !20, line: 932, baseType: !242, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !20, line: 917, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !20, line: 917, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !20, line: 862, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !20, line: 854, size: 128, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !20, line: 855, baseType: !11, size: 4, flags: DIFlagBitField, extraData: i64 0)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !247, file: !20, line: 856, baseType: !11, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !247, file: !20, line: 857, baseType: !11, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !247, file: !20, line: 860, baseType: !6, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !247, file: !20, line: 861, baseType: !67, size: 64, offset: 64)
!254 = !{}
!255 = !{i32 7, !"Dwarf Version", i32 4}
!256 = !{i32 2, !"Debug Info Version", i32 3}
!257 = !{i32 1, !"wchar_size", i32 4}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!261 = distinct !DISubprogram(name: "activeExpireCycleTryExpire", scope: !3, file: !3, line: 54, type: !262, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!262 = !DISubroutineType(types: !263)
!263 = !{!6, !200, !163, !64}
!264 = !DILocalVariable(name: "db", arg: 1, scope: !261, file: !3, line: 54, type: !200)
!265 = !DILocation(line: 54, column: 41, scope: !261)
!266 = !DILocalVariable(name: "de", arg: 2, scope: !261, file: !3, line: 54, type: !163)
!267 = !DILocation(line: 54, column: 56, scope: !261)
!268 = !DILocalVariable(name: "now", arg: 3, scope: !261, file: !3, line: 54, type: !64)
!269 = !DILocation(line: 54, column: 70, scope: !261)
!270 = !DILocalVariable(name: "t", scope: !261, file: !3, line: 55, type: !64)
!271 = !DILocation(line: 55, column: 15, scope: !261)
!272 = !DILocation(line: 55, column: 19, scope: !261)
!273 = !DILocation(line: 56, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !261, file: !3, line: 56, column: 9)
!275 = !DILocation(line: 56, column: 15, scope: !274)
!276 = !DILocation(line: 56, column: 13, scope: !274)
!277 = !DILocation(line: 56, column: 9, scope: !261)
!278 = !DILocalVariable(name: "key", scope: !279, file: !3, line: 57, type: !280)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 56, column: 18)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !74, line: 43, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!282 = !DILocation(line: 57, column: 13, scope: !279)
!283 = !DILocation(line: 57, column: 19, scope: !279)
!284 = !DILocalVariable(name: "keyobj", scope: !279, file: !3, line: 58, type: !245)
!285 = !DILocation(line: 58, column: 15, scope: !279)
!286 = !DILocation(line: 58, column: 43, scope: !279)
!287 = !DILocation(line: 58, column: 54, scope: !279)
!288 = !DILocation(line: 58, column: 47, scope: !279)
!289 = !DILocation(line: 58, column: 24, scope: !279)
!290 = !DILocation(line: 59, column: 38, scope: !279)
!291 = !DILocation(line: 59, column: 41, scope: !279)
!292 = !DILocation(line: 59, column: 9, scope: !279)
!293 = !DILocation(line: 60, column: 22, scope: !279)
!294 = !DILocation(line: 60, column: 9, scope: !279)
!295 = !DILocation(line: 61, column: 9, scope: !279)
!296 = !DILocation(line: 63, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !274, file: !3, line: 62, column: 12)
!298 = !DILocation(line: 65, column: 1, scope: !261)
!299 = distinct !DISubprogram(name: "sdslen", scope: !74, file: !74, line: 87, type: !300, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !254)
!300 = !DISubroutineType(types: !301)
!301 = !{!154, !302}
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!303 = !DILocalVariable(name: "s", arg: 1, scope: !299, file: !74, line: 87, type: !302)
!304 = !DILocation(line: 87, column: 39, scope: !299)
!305 = !DILocalVariable(name: "flags", scope: !299, file: !74, line: 88, type: !79)
!306 = !DILocation(line: 88, column: 19, scope: !299)
!307 = !DILocation(line: 88, column: 27, scope: !299)
!308 = !DILocation(line: 89, column: 12, scope: !299)
!309 = !DILocation(line: 89, column: 17, scope: !299)
!310 = !DILocation(line: 89, column: 5, scope: !299)
!311 = !DILocation(line: 91, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !299, file: !74, line: 89, column: 33)
!313 = !DILocation(line: 91, column: 13, scope: !312)
!314 = !DILocation(line: 93, column: 20, scope: !312)
!315 = !DILocation(line: 93, column: 34, scope: !312)
!316 = !DILocation(line: 93, column: 13, scope: !312)
!317 = !DILocation(line: 95, column: 20, scope: !312)
!318 = !DILocation(line: 95, column: 35, scope: !312)
!319 = !DILocation(line: 95, column: 13, scope: !312)
!320 = !DILocation(line: 97, column: 20, scope: !312)
!321 = !DILocation(line: 97, column: 35, scope: !312)
!322 = !DILocation(line: 97, column: 13, scope: !312)
!323 = !DILocation(line: 99, column: 20, scope: !312)
!324 = !DILocation(line: 99, column: 35, scope: !312)
!325 = !DILocation(line: 99, column: 13, scope: !312)
!326 = !DILocation(line: 101, column: 5, scope: !299)
!327 = !DILocation(line: 102, column: 1, scope: !299)
!328 = !DILocalVariable(name: "type", arg: 1, scope: !2, file: !3, line: 113, type: !6)
!329 = !DILocation(line: 113, column: 28, scope: !2)
!330 = !DILocalVariable(name: "effort", scope: !2, file: !3, line: 118, type: !65)
!331 = !DILocation(line: 118, column: 5, scope: !2)
!332 = !DILocation(line: 118, column: 21, scope: !2)
!333 = !DILocation(line: 118, column: 41, scope: !2)
!334 = !DILocation(line: 118, column: 14, scope: !2)
!335 = !DILocalVariable(name: "config_keys_per_loop", scope: !2, file: !3, line: 119, type: !65)
!336 = !DILocation(line: 119, column: 5, scope: !2)
!337 = !DILocation(line: 120, column: 64, scope: !2)
!338 = !DILocation(line: 120, column: 63, scope: !2)
!339 = !DILocation(line: 119, column: 62, scope: !2)
!340 = !DILocalVariable(name: "config_cycle_fast_duration", scope: !2, file: !3, line: 121, type: !65)
!341 = !DILocation(line: 121, column: 5, scope: !2)
!342 = !DILocation(line: 122, column: 70, scope: !2)
!343 = !DILocation(line: 122, column: 69, scope: !2)
!344 = !DILocation(line: 121, column: 68, scope: !2)
!345 = !DILocalVariable(name: "config_cycle_slow_time_perc", scope: !2, file: !3, line: 123, type: !65)
!346 = !DILocation(line: 123, column: 5, scope: !2)
!347 = !DILocation(line: 124, column: 37, scope: !2)
!348 = !DILocation(line: 124, column: 36, scope: !2)
!349 = !DILocation(line: 123, column: 70, scope: !2)
!350 = !DILocalVariable(name: "config_cycle_acceptable_stale", scope: !2, file: !3, line: 125, type: !65)
!351 = !DILocation(line: 125, column: 5, scope: !2)
!352 = !DILocation(line: 126, column: 37, scope: !2)
!353 = !DILocation(line: 125, column: 73, scope: !2)
!354 = !DILocalVariable(name: "j", scope: !2, file: !3, line: 134, type: !6)
!355 = !DILocation(line: 134, column: 9, scope: !2)
!356 = !DILocalVariable(name: "iteration", scope: !2, file: !3, line: 134, type: !6)
!357 = !DILocation(line: 134, column: 12, scope: !2)
!358 = !DILocalVariable(name: "dbs_per_call", scope: !2, file: !3, line: 135, type: !6)
!359 = !DILocation(line: 135, column: 9, scope: !2)
!360 = !DILocalVariable(name: "start", scope: !2, file: !3, line: 136, type: !64)
!361 = !DILocation(line: 136, column: 15, scope: !2)
!362 = !DILocation(line: 136, column: 23, scope: !2)
!363 = !DILocalVariable(name: "timelimit", scope: !2, file: !3, line: 136, type: !64)
!364 = !DILocation(line: 136, column: 33, scope: !2)
!365 = !DILocalVariable(name: "elapsed", scope: !2, file: !3, line: 136, type: !64)
!366 = !DILocation(line: 136, column: 44, scope: !2)
!367 = !DILocation(line: 141, column: 9, scope: !368)
!368 = distinct !DILexicalBlock(scope: !2, file: !3, line: 141, column: 9)
!369 = !DILocation(line: 141, column: 9, scope: !2)
!370 = !DILocation(line: 141, column: 53, scope: !368)
!371 = !DILocation(line: 143, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !2, file: !3, line: 143, column: 9)
!373 = !DILocation(line: 143, column: 14, scope: !372)
!374 = !DILocation(line: 143, column: 9, scope: !2)
!375 = !DILocation(line: 148, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 148, column: 13)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 143, column: 43)
!378 = !DILocation(line: 148, column: 29, scope: !376)
!379 = !DILocation(line: 149, column: 20, scope: !376)
!380 = !DILocation(line: 149, column: 46, scope: !376)
!381 = !DILocation(line: 149, column: 44, scope: !376)
!382 = !DILocation(line: 148, column: 13, scope: !377)
!383 = !DILocation(line: 150, column: 13, scope: !376)
!384 = !DILocation(line: 152, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 152, column: 13)
!386 = !DILocation(line: 152, column: 21, scope: !385)
!387 = !DILocation(line: 152, column: 50, scope: !385)
!388 = !DILocation(line: 152, column: 76, scope: !385)
!389 = !DILocation(line: 152, column: 37, scope: !385)
!390 = !DILocation(line: 152, column: 19, scope: !385)
!391 = !DILocation(line: 152, column: 13, scope: !377)
!392 = !DILocation(line: 153, column: 13, scope: !385)
!393 = !DILocation(line: 155, column: 27, scope: !377)
!394 = !DILocation(line: 155, column: 25, scope: !377)
!395 = !DILocation(line: 156, column: 5, scope: !377)
!396 = !DILocation(line: 165, column: 9, scope: !397)
!397 = distinct !DILexicalBlock(scope: !2, file: !3, line: 165, column: 9)
!398 = !DILocation(line: 165, column: 31, scope: !397)
!399 = !DILocation(line: 165, column: 22, scope: !397)
!400 = !DILocation(line: 165, column: 37, scope: !397)
!401 = !DILocation(line: 165, column: 40, scope: !397)
!402 = !DILocation(line: 165, column: 9, scope: !2)
!403 = !DILocation(line: 166, column: 31, scope: !397)
!404 = !DILocation(line: 166, column: 22, scope: !397)
!405 = !DILocation(line: 166, column: 9, scope: !397)
!406 = !DILocation(line: 172, column: 17, scope: !2)
!407 = !DILocation(line: 172, column: 44, scope: !2)
!408 = !DILocation(line: 172, column: 60, scope: !2)
!409 = !DILocation(line: 172, column: 53, scope: !2)
!410 = !DILocation(line: 172, column: 52, scope: !2)
!411 = !DILocation(line: 172, column: 62, scope: !2)
!412 = !DILocation(line: 172, column: 15, scope: !2)
!413 = !DILocation(line: 173, column: 20, scope: !2)
!414 = !DILocation(line: 174, column: 9, scope: !415)
!415 = distinct !DILexicalBlock(scope: !2, file: !3, line: 174, column: 9)
!416 = !DILocation(line: 174, column: 19, scope: !415)
!417 = !DILocation(line: 174, column: 9, scope: !2)
!418 = !DILocation(line: 174, column: 35, scope: !415)
!419 = !DILocation(line: 174, column: 25, scope: !415)
!420 = !DILocation(line: 176, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !2, file: !3, line: 176, column: 9)
!422 = !DILocation(line: 176, column: 14, scope: !421)
!423 = !DILocation(line: 176, column: 9, scope: !2)
!424 = !DILocation(line: 177, column: 21, scope: !421)
!425 = !DILocation(line: 177, column: 19, scope: !421)
!426 = !DILocation(line: 177, column: 9, scope: !421)
!427 = !DILocalVariable(name: "total_sampled", scope: !2, file: !3, line: 182, type: !177)
!428 = !DILocation(line: 182, column: 10, scope: !2)
!429 = !DILocalVariable(name: "total_expired", scope: !2, file: !3, line: 183, type: !177)
!430 = !DILocation(line: 183, column: 10, scope: !2)
!431 = !DILocation(line: 187, column: 5, scope: !2)
!432 = !DILocation(line: 188, column: 28, scope: !2)
!433 = !DILocation(line: 189, column: 31, scope: !2)
!434 = !DILocation(line: 191, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !2, file: !3, line: 191, column: 5)
!436 = !DILocation(line: 191, column: 10, scope: !435)
!437 = !DILocation(line: 191, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 191, column: 5)
!439 = !DILocation(line: 191, column: 21, scope: !438)
!440 = !DILocation(line: 191, column: 19, scope: !438)
!441 = !DILocation(line: 191, column: 34, scope: !438)
!442 = !DILocation(line: 191, column: 37, scope: !438)
!443 = !DILocation(line: 191, column: 52, scope: !438)
!444 = !DILocation(line: 0, scope: !438)
!445 = !DILocation(line: 191, column: 5, scope: !435)
!446 = !DILocalVariable(name: "expired", scope: !447, file: !3, line: 193, type: !65)
!447 = distinct !DILexicalBlock(scope: !438, file: !3, line: 191, column: 63)
!448 = !DILocation(line: 193, column: 23, scope: !447)
!449 = !DILocalVariable(name: "sampled", scope: !447, file: !3, line: 193, type: !65)
!450 = !DILocation(line: 193, column: 32, scope: !447)
!451 = !DILocalVariable(name: "db", scope: !447, file: !3, line: 195, type: !200)
!452 = !DILocation(line: 195, column: 18, scope: !447)
!453 = !DILocation(line: 195, column: 30, scope: !447)
!454 = !DILocation(line: 195, column: 34, scope: !447)
!455 = !DILocation(line: 195, column: 54, scope: !447)
!456 = !DILocation(line: 195, column: 45, scope: !447)
!457 = !DILocation(line: 195, column: 32, scope: !447)
!458 = !DILocation(line: 200, column: 19, scope: !447)
!459 = !DILocation(line: 206, column: 9, scope: !447)
!460 = !DILocalVariable(name: "num", scope: !461, file: !3, line: 207, type: !65)
!461 = distinct !DILexicalBlock(scope: !447, file: !3, line: 206, column: 12)
!462 = !DILocation(line: 207, column: 27, scope: !461)
!463 = !DILocalVariable(name: "slots", scope: !461, file: !3, line: 207, type: !65)
!464 = !DILocation(line: 207, column: 32, scope: !461)
!465 = !DILocalVariable(name: "now", scope: !461, file: !3, line: 208, type: !64)
!466 = !DILocation(line: 208, column: 23, scope: !461)
!467 = !DILocalVariable(name: "ttl_sum", scope: !461, file: !3, line: 208, type: !64)
!468 = !DILocation(line: 208, column: 28, scope: !461)
!469 = !DILocalVariable(name: "ttl_samples", scope: !461, file: !3, line: 209, type: !6)
!470 = !DILocation(line: 209, column: 17, scope: !461)
!471 = !DILocation(line: 210, column: 22, scope: !461)
!472 = !DILocation(line: 213, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !461, file: !3, line: 213, column: 17)
!474 = !DILocation(line: 213, column: 22, scope: !473)
!475 = !DILocation(line: 213, column: 47, scope: !473)
!476 = !DILocation(line: 213, column: 17, scope: !461)
!477 = !DILocation(line: 214, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 213, column: 53)
!479 = !DILocation(line: 214, column: 21, scope: !478)
!480 = !DILocation(line: 214, column: 29, scope: !478)
!481 = !DILocation(line: 215, column: 17, scope: !478)
!482 = !DILocation(line: 217, column: 21, scope: !461)
!483 = !DILocation(line: 217, column: 19, scope: !461)
!484 = !DILocation(line: 218, column: 19, scope: !461)
!485 = !DILocation(line: 218, column: 17, scope: !461)
!486 = !DILocation(line: 223, column: 17, scope: !487)
!487 = distinct !DILexicalBlock(scope: !461, file: !3, line: 223, column: 17)
!488 = !DILocation(line: 223, column: 23, scope: !487)
!489 = !DILocation(line: 223, column: 46, scope: !487)
!490 = !DILocation(line: 224, column: 18, scope: !487)
!491 = !DILocation(line: 224, column: 21, scope: !487)
!492 = !DILocation(line: 224, column: 26, scope: !487)
!493 = !DILocation(line: 224, column: 25, scope: !487)
!494 = !DILocation(line: 224, column: 32, scope: !487)
!495 = !DILocation(line: 223, column: 17, scope: !461)
!496 = !DILocation(line: 224, column: 38, scope: !487)
!497 = !DILocation(line: 228, column: 21, scope: !461)
!498 = !DILocation(line: 229, column: 21, scope: !461)
!499 = !DILocation(line: 230, column: 21, scope: !461)
!500 = !DILocation(line: 231, column: 25, scope: !461)
!501 = !DILocation(line: 233, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !461, file: !3, line: 233, column: 17)
!503 = !DILocation(line: 233, column: 23, scope: !502)
!504 = !DILocation(line: 233, column: 21, scope: !502)
!505 = !DILocation(line: 233, column: 17, scope: !461)
!506 = !DILocation(line: 234, column: 23, scope: !502)
!507 = !DILocation(line: 234, column: 21, scope: !502)
!508 = !DILocation(line: 234, column: 17, scope: !502)
!509 = !DILocalVariable(name: "max_buckets", scope: !461, file: !3, line: 246, type: !177)
!510 = !DILocation(line: 246, column: 18, scope: !461)
!511 = !DILocation(line: 246, column: 32, scope: !461)
!512 = !DILocation(line: 246, column: 35, scope: !461)
!513 = !DILocalVariable(name: "checked_buckets", scope: !461, file: !3, line: 247, type: !177)
!514 = !DILocation(line: 247, column: 18, scope: !461)
!515 = !DILocation(line: 249, column: 13, scope: !461)
!516 = !DILocation(line: 249, column: 20, scope: !461)
!517 = !DILocation(line: 249, column: 30, scope: !461)
!518 = !DILocation(line: 249, column: 28, scope: !461)
!519 = !DILocation(line: 249, column: 34, scope: !461)
!520 = !DILocation(line: 249, column: 37, scope: !461)
!521 = !DILocation(line: 249, column: 55, scope: !461)
!522 = !DILocation(line: 249, column: 53, scope: !461)
!523 = !DILocation(line: 0, scope: !461)
!524 = !DILocalVariable(name: "table", scope: !525, file: !3, line: 250, type: !6)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 250, column: 17)
!526 = distinct !DILexicalBlock(scope: !461, file: !3, line: 249, column: 68)
!527 = !DILocation(line: 250, column: 26, scope: !525)
!528 = !DILocation(line: 250, column: 22, scope: !525)
!529 = !DILocation(line: 250, column: 37, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !3, line: 250, column: 17)
!531 = !DILocation(line: 250, column: 43, scope: !530)
!532 = !DILocation(line: 250, column: 17, scope: !525)
!533 = !DILocation(line: 251, column: 25, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 251, column: 25)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 250, column: 57)
!536 = !DILocation(line: 251, column: 31, scope: !534)
!537 = !DILocation(line: 251, column: 36, scope: !534)
!538 = !DILocation(line: 251, column: 40, scope: !534)
!539 = !DILocation(line: 251, column: 25, scope: !535)
!540 = !DILocation(line: 251, column: 70, scope: !534)
!541 = !DILocalVariable(name: "idx", scope: !535, file: !3, line: 253, type: !65)
!542 = !DILocation(line: 253, column: 35, scope: !535)
!543 = !DILocation(line: 253, column: 41, scope: !535)
!544 = !DILocation(line: 253, column: 45, scope: !535)
!545 = !DILocation(line: 254, column: 28, scope: !535)
!546 = !DILocation(line: 254, column: 25, scope: !535)
!547 = !DILocalVariable(name: "de", scope: !535, file: !3, line: 255, type: !163)
!548 = !DILocation(line: 255, column: 32, scope: !535)
!549 = !DILocation(line: 255, column: 37, scope: !535)
!550 = !DILocation(line: 255, column: 41, scope: !535)
!551 = !DILocation(line: 255, column: 50, scope: !535)
!552 = !DILocation(line: 255, column: 59, scope: !535)
!553 = !DILocation(line: 255, column: 66, scope: !535)
!554 = !DILocalVariable(name: "ttl", scope: !535, file: !3, line: 256, type: !64)
!555 = !DILocation(line: 256, column: 31, scope: !535)
!556 = !DILocation(line: 259, column: 36, scope: !535)
!557 = !DILocation(line: 260, column: 21, scope: !535)
!558 = !DILocation(line: 260, column: 27, scope: !535)
!559 = !DILocalVariable(name: "e", scope: !560, file: !3, line: 263, type: !163)
!560 = distinct !DILexicalBlock(scope: !535, file: !3, line: 260, column: 31)
!561 = !DILocation(line: 263, column: 36, scope: !560)
!562 = !DILocation(line: 263, column: 40, scope: !560)
!563 = !DILocation(line: 264, column: 30, scope: !560)
!564 = !DILocation(line: 264, column: 34, scope: !560)
!565 = !DILocation(line: 264, column: 28, scope: !560)
!566 = !DILocation(line: 266, column: 31, scope: !560)
!567 = !DILocation(line: 266, column: 58, scope: !560)
!568 = !DILocation(line: 266, column: 57, scope: !560)
!569 = !DILocation(line: 266, column: 29, scope: !560)
!570 = !DILocation(line: 267, column: 56, scope: !571)
!571 = distinct !DILexicalBlock(scope: !560, file: !3, line: 267, column: 29)
!572 = !DILocation(line: 267, column: 59, scope: !571)
!573 = !DILocation(line: 267, column: 61, scope: !571)
!574 = !DILocation(line: 267, column: 29, scope: !571)
!575 = !DILocation(line: 267, column: 29, scope: !560)
!576 = !DILocation(line: 267, column: 74, scope: !571)
!577 = !DILocation(line: 267, column: 67, scope: !571)
!578 = !DILocation(line: 268, column: 29, scope: !579)
!579 = distinct !DILexicalBlock(scope: !560, file: !3, line: 268, column: 29)
!580 = !DILocation(line: 268, column: 33, scope: !579)
!581 = !DILocation(line: 268, column: 29, scope: !560)
!582 = !DILocation(line: 271, column: 40, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !3, line: 268, column: 38)
!584 = !DILocation(line: 271, column: 37, scope: !583)
!585 = !DILocation(line: 272, column: 40, scope: !583)
!586 = !DILocation(line: 273, column: 25, scope: !583)
!587 = !DILocation(line: 274, column: 32, scope: !560)
!588 = distinct !{!588, !557, !589, !590}
!589 = !DILocation(line: 275, column: 21, scope: !535)
!590 = !{!"llvm.loop.mustprogress"}
!591 = !DILocation(line: 276, column: 17, scope: !535)
!592 = !DILocation(line: 250, column: 53, scope: !530)
!593 = !DILocation(line: 250, column: 17, scope: !530)
!594 = distinct !{!594, !532, !595, !590}
!595 = !DILocation(line: 276, column: 17, scope: !525)
!596 = !DILocation(line: 277, column: 17, scope: !526)
!597 = !DILocation(line: 277, column: 21, scope: !526)
!598 = !DILocation(line: 277, column: 35, scope: !526)
!599 = distinct !{!599, !515, !600, !590}
!600 = !DILocation(line: 278, column: 13, scope: !461)
!601 = !DILocation(line: 279, column: 30, scope: !461)
!602 = !DILocation(line: 279, column: 27, scope: !461)
!603 = !DILocation(line: 280, column: 30, scope: !461)
!604 = !DILocation(line: 280, column: 27, scope: !461)
!605 = !DILocation(line: 283, column: 17, scope: !606)
!606 = distinct !DILexicalBlock(scope: !461, file: !3, line: 283, column: 17)
!607 = !DILocation(line: 283, column: 17, scope: !461)
!608 = !DILocalVariable(name: "avg_ttl", scope: !609, file: !3, line: 284, type: !64)
!609 = distinct !DILexicalBlock(scope: !606, file: !3, line: 283, column: 30)
!610 = !DILocation(line: 284, column: 27, scope: !609)
!611 = !DILocation(line: 284, column: 37, scope: !609)
!612 = !DILocation(line: 284, column: 45, scope: !609)
!613 = !DILocation(line: 284, column: 44, scope: !609)
!614 = !DILocation(line: 289, column: 21, scope: !615)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 289, column: 21)
!616 = !DILocation(line: 289, column: 25, scope: !615)
!617 = !DILocation(line: 289, column: 33, scope: !615)
!618 = !DILocation(line: 289, column: 21, scope: !609)
!619 = !DILocation(line: 289, column: 53, scope: !615)
!620 = !DILocation(line: 289, column: 39, scope: !615)
!621 = !DILocation(line: 289, column: 43, scope: !615)
!622 = !DILocation(line: 289, column: 51, scope: !615)
!623 = !DILocation(line: 290, column: 32, scope: !609)
!624 = !DILocation(line: 290, column: 36, scope: !609)
!625 = !DILocation(line: 290, column: 43, scope: !609)
!626 = !DILocation(line: 290, column: 47, scope: !609)
!627 = !DILocation(line: 290, column: 54, scope: !609)
!628 = !DILocation(line: 290, column: 61, scope: !609)
!629 = !DILocation(line: 290, column: 51, scope: !609)
!630 = !DILocation(line: 290, column: 17, scope: !609)
!631 = !DILocation(line: 290, column: 21, scope: !609)
!632 = !DILocation(line: 290, column: 29, scope: !609)
!633 = !DILocation(line: 291, column: 13, scope: !609)
!634 = !DILocation(line: 296, column: 18, scope: !635)
!635 = distinct !DILexicalBlock(scope: !461, file: !3, line: 296, column: 17)
!636 = !DILocation(line: 296, column: 28, scope: !635)
!637 = !DILocation(line: 296, column: 35, scope: !635)
!638 = !DILocation(line: 296, column: 17, scope: !461)
!639 = !DILocation(line: 297, column: 27, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 296, column: 41)
!641 = !DILocation(line: 297, column: 36, scope: !640)
!642 = !DILocation(line: 297, column: 35, scope: !640)
!643 = !DILocation(line: 297, column: 25, scope: !640)
!644 = !DILocation(line: 298, column: 21, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !3, line: 298, column: 21)
!646 = !DILocation(line: 298, column: 31, scope: !645)
!647 = !DILocation(line: 298, column: 29, scope: !645)
!648 = !DILocation(line: 298, column: 21, scope: !640)
!649 = !DILocation(line: 299, column: 36, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 298, column: 42)
!651 = !DILocation(line: 300, column: 63, scope: !650)
!652 = !DILocation(line: 301, column: 21, scope: !650)
!653 = !DILocation(line: 303, column: 13, scope: !640)
!654 = !DILocation(line: 307, column: 9, scope: !461)
!655 = !DILocation(line: 307, column: 18, scope: !447)
!656 = !DILocation(line: 307, column: 26, scope: !447)
!657 = !DILocation(line: 307, column: 31, scope: !447)
!658 = !DILocation(line: 308, column: 19, scope: !447)
!659 = !DILocation(line: 308, column: 26, scope: !447)
!660 = !DILocation(line: 308, column: 31, scope: !447)
!661 = !DILocation(line: 308, column: 30, scope: !447)
!662 = !DILocation(line: 308, column: 42, scope: !447)
!663 = !DILocation(line: 308, column: 40, scope: !447)
!664 = distinct !{!664, !459, !665, !590}
!665 = !DILocation(line: 308, column: 71, scope: !447)
!666 = !DILocation(line: 309, column: 5, scope: !447)
!667 = !DILocation(line: 191, column: 59, scope: !438)
!668 = !DILocation(line: 191, column: 5, scope: !438)
!669 = distinct !{!669, !445, !670, !590}
!670 = !DILocation(line: 309, column: 5, scope: !435)
!671 = !DILocation(line: 311, column: 5, scope: !2)
!672 = !DILocation(line: 314, column: 5, scope: !2)
!673 = !DILocation(line: 316, column: 28, scope: !2)
!674 = !DILocation(line: 317, column: 31, scope: !2)
!675 = !DILocation(line: 319, column: 15, scope: !2)
!676 = !DILocation(line: 319, column: 24, scope: !2)
!677 = !DILocation(line: 319, column: 23, scope: !2)
!678 = !DILocation(line: 319, column: 13, scope: !2)
!679 = !DILocation(line: 320, column: 43, scope: !2)
!680 = !DILocation(line: 320, column: 40, scope: !2)
!681 = !DILocation(line: 321, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !2, file: !3, line: 321, column: 5)
!683 = !DILocation(line: 321, column: 5, scope: !2)
!684 = !DILocalVariable(name: "current_perc", scope: !2, file: !3, line: 325, type: !66)
!685 = !DILocation(line: 325, column: 12, scope: !2)
!686 = !DILocation(line: 326, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !2, file: !3, line: 326, column: 9)
!688 = !DILocation(line: 326, column: 9, scope: !2)
!689 = !DILocation(line: 327, column: 32, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 326, column: 24)
!691 = !DILocation(line: 327, column: 24, scope: !690)
!692 = !DILocation(line: 327, column: 46, scope: !690)
!693 = !DILocation(line: 327, column: 45, scope: !690)
!694 = !DILocation(line: 327, column: 22, scope: !690)
!695 = !DILocation(line: 328, column: 5, scope: !690)
!696 = !DILocation(line: 329, column: 22, scope: !687)
!697 = !DILocation(line: 330, column: 39, scope: !2)
!698 = !DILocation(line: 330, column: 51, scope: !2)
!699 = !DILocation(line: 331, column: 46, scope: !2)
!700 = !DILocation(line: 331, column: 69, scope: !2)
!701 = !DILocation(line: 330, column: 57, scope: !2)
!702 = !DILocation(line: 330, column: 36, scope: !2)
!703 = !DILocation(line: 332, column: 1, scope: !2)
!704 = distinct !DISubprogram(name: "expireSlaveKeys", scope: !3, file: !3, line: 373, type: !705, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!705 = !DISubroutineType(types: !706)
!706 = !{null}
!707 = !DILocation(line: 374, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !3, line: 374, column: 9)
!709 = !DILocation(line: 374, column: 29, scope: !708)
!710 = !DILocation(line: 374, column: 37, scope: !708)
!711 = !DILocation(line: 375, column: 9, scope: !708)
!712 = !DILocation(line: 375, column: 39, scope: !708)
!713 = !DILocation(line: 374, column: 9, scope: !704)
!714 = !DILocation(line: 375, column: 45, scope: !708)
!715 = !DILocalVariable(name: "cycles", scope: !704, file: !3, line: 377, type: !6)
!716 = !DILocation(line: 377, column: 9, scope: !704)
!717 = !DILocalVariable(name: "noexpire", scope: !704, file: !3, line: 377, type: !6)
!718 = !DILocation(line: 377, column: 21, scope: !704)
!719 = !DILocalVariable(name: "start", scope: !704, file: !3, line: 378, type: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !20, line: 64, baseType: !64)
!721 = !DILocation(line: 378, column: 14, scope: !704)
!722 = !DILocation(line: 378, column: 22, scope: !704)
!723 = !DILocation(line: 379, column: 5, scope: !704)
!724 = !DILocalVariable(name: "de", scope: !725, file: !3, line: 380, type: !163)
!725 = distinct !DILexicalBlock(scope: !704, file: !3, line: 379, column: 14)
!726 = !DILocation(line: 380, column: 20, scope: !725)
!727 = !DILocation(line: 380, column: 42, scope: !725)
!728 = !DILocation(line: 380, column: 25, scope: !725)
!729 = !DILocalVariable(name: "keyname", scope: !725, file: !3, line: 381, type: !280)
!730 = !DILocation(line: 381, column: 13, scope: !725)
!731 = !DILocation(line: 381, column: 23, scope: !725)
!732 = !DILocalVariable(name: "dbids", scope: !725, file: !3, line: 382, type: !68)
!733 = !DILocation(line: 382, column: 18, scope: !725)
!734 = !DILocation(line: 382, column: 26, scope: !725)
!735 = !DILocalVariable(name: "new_dbids", scope: !725, file: !3, line: 383, type: !68)
!736 = !DILocation(line: 383, column: 18, scope: !725)
!737 = !DILocalVariable(name: "dbid", scope: !725, file: !3, line: 387, type: !6)
!738 = !DILocation(line: 387, column: 13, scope: !725)
!739 = !DILocation(line: 388, column: 9, scope: !725)
!740 = !DILocation(line: 388, column: 15, scope: !725)
!741 = !DILocation(line: 388, column: 21, scope: !725)
!742 = !DILocation(line: 388, column: 24, scope: !725)
!743 = !DILocation(line: 388, column: 38, scope: !725)
!744 = !DILocation(line: 388, column: 29, scope: !725)
!745 = !DILocation(line: 0, scope: !725)
!746 = !DILocation(line: 389, column: 18, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 389, column: 17)
!748 = distinct !DILexicalBlock(scope: !725, file: !3, line: 388, column: 45)
!749 = !DILocation(line: 389, column: 24, scope: !747)
!750 = !DILocation(line: 389, column: 29, scope: !747)
!751 = !DILocation(line: 389, column: 17, scope: !748)
!752 = !DILocalVariable(name: "db", scope: !753, file: !3, line: 390, type: !200)
!753 = distinct !DILexicalBlock(scope: !747, file: !3, line: 389, column: 35)
!754 = !DILocation(line: 390, column: 26, scope: !753)
!755 = !DILocation(line: 390, column: 38, scope: !753)
!756 = !DILocation(line: 390, column: 41, scope: !753)
!757 = !DILocation(line: 390, column: 40, scope: !753)
!758 = !DILocalVariable(name: "expire", scope: !753, file: !3, line: 391, type: !163)
!759 = !DILocation(line: 391, column: 28, scope: !753)
!760 = !DILocation(line: 391, column: 46, scope: !753)
!761 = !DILocation(line: 391, column: 50, scope: !753)
!762 = !DILocation(line: 391, column: 58, scope: !753)
!763 = !DILocation(line: 391, column: 37, scope: !753)
!764 = !DILocalVariable(name: "expired", scope: !753, file: !3, line: 392, type: !6)
!765 = !DILocation(line: 392, column: 21, scope: !753)
!766 = !DILocation(line: 394, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !753, file: !3, line: 394, column: 21)
!768 = !DILocation(line: 394, column: 28, scope: !767)
!769 = !DILocation(line: 395, column: 55, scope: !767)
!770 = !DILocation(line: 395, column: 58, scope: !767)
!771 = !DILocation(line: 395, column: 57, scope: !767)
!772 = !DILocation(line: 395, column: 63, scope: !767)
!773 = !DILocation(line: 395, column: 70, scope: !767)
!774 = !DILocation(line: 395, column: 21, scope: !767)
!775 = !DILocation(line: 394, column: 21, scope: !753)
!776 = !DILocation(line: 397, column: 29, scope: !777)
!777 = distinct !DILexicalBlock(scope: !767, file: !3, line: 396, column: 17)
!778 = !DILocation(line: 398, column: 17, scope: !777)
!779 = !DILocation(line: 404, column: 21, scope: !780)
!780 = distinct !DILexicalBlock(scope: !753, file: !3, line: 404, column: 21)
!781 = !DILocation(line: 404, column: 28, scope: !780)
!782 = !DILocation(line: 404, column: 32, scope: !780)
!783 = !DILocation(line: 404, column: 21, scope: !753)
!784 = !DILocation(line: 405, column: 29, scope: !785)
!785 = distinct !DILexicalBlock(scope: !780, file: !3, line: 404, column: 41)
!786 = !DILocation(line: 406, column: 49, scope: !785)
!787 = !DILocation(line: 406, column: 46, scope: !785)
!788 = !DILocation(line: 406, column: 31, scope: !785)
!789 = !DILocation(line: 407, column: 17, scope: !785)
!790 = !DILocation(line: 408, column: 13, scope: !753)
!791 = !DILocation(line: 409, column: 17, scope: !748)
!792 = !DILocation(line: 410, column: 19, scope: !748)
!793 = distinct !{!793, !739, !794, !590}
!794 = !DILocation(line: 411, column: 9, scope: !725)
!795 = !DILocation(line: 416, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !725, file: !3, line: 416, column: 13)
!797 = !DILocation(line: 416, column: 13, scope: !725)
!798 = !DILocation(line: 417, column: 13, scope: !796)
!799 = !DILocation(line: 417, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 417, column: 13)
!801 = !DILocation(line: 419, column: 24, scope: !796)
!802 = !DILocation(line: 419, column: 44, scope: !796)
!803 = !DILocation(line: 419, column: 13, scope: !796)
!804 = !DILocation(line: 423, column: 15, scope: !725)
!805 = !DILocation(line: 424, column: 13, scope: !806)
!806 = distinct !DILexicalBlock(scope: !725, file: !3, line: 424, column: 13)
!807 = !DILocation(line: 424, column: 22, scope: !806)
!808 = !DILocation(line: 424, column: 13, scope: !725)
!809 = !DILocation(line: 424, column: 27, scope: !806)
!810 = !DILocation(line: 425, column: 14, scope: !811)
!811 = distinct !DILexicalBlock(scope: !725, file: !3, line: 425, column: 13)
!812 = !DILocation(line: 425, column: 21, scope: !811)
!813 = !DILocation(line: 425, column: 27, scope: !811)
!814 = !DILocation(line: 425, column: 32, scope: !811)
!815 = !DILocation(line: 425, column: 35, scope: !811)
!816 = !DILocation(line: 425, column: 44, scope: !811)
!817 = !DILocation(line: 425, column: 43, scope: !811)
!818 = !DILocation(line: 425, column: 50, scope: !811)
!819 = !DILocation(line: 425, column: 13, scope: !725)
!820 = !DILocation(line: 425, column: 55, scope: !811)
!821 = !DILocation(line: 426, column: 13, scope: !822)
!822 = distinct !DILexicalBlock(scope: !725, file: !3, line: 426, column: 13)
!823 = !DILocation(line: 426, column: 43, scope: !822)
!824 = !DILocation(line: 426, column: 13, scope: !725)
!825 = !DILocation(line: 426, column: 49, scope: !822)
!826 = distinct !{!826, !723, !827}
!827 = !DILocation(line: 427, column: 5, scope: !704)
!828 = !DILocation(line: 431, column: 5, scope: !704)
!829 = !DILocation(line: 432, column: 1, scope: !704)
!830 = !DILocalVariable(name: "db", arg: 1, scope: !197, file: !3, line: 436, type: !200)
!831 = !DILocation(line: 436, column: 42, scope: !197)
!832 = !DILocalVariable(name: "key", arg: 2, scope: !197, file: !3, line: 436, type: !245)
!833 = !DILocation(line: 436, column: 52, scope: !197)
!834 = !DILocation(line: 437, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !197, file: !3, line: 437, column: 9)
!836 = !DILocation(line: 437, column: 29, scope: !835)
!837 = !DILocation(line: 437, column: 9, scope: !197)
!838 = !DILocation(line: 447, column: 31, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 437, column: 38)
!840 = !DILocation(line: 447, column: 29, scope: !839)
!841 = !DILocation(line: 448, column: 5, scope: !839)
!842 = !DILocation(line: 449, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !197, file: !3, line: 449, column: 9)
!844 = !DILocation(line: 449, column: 13, scope: !843)
!845 = !DILocation(line: 449, column: 16, scope: !843)
!846 = !DILocation(line: 449, column: 9, scope: !197)
!847 = !DILocation(line: 449, column: 22, scope: !843)
!848 = !DILocalVariable(name: "de", scope: !197, file: !3, line: 451, type: !163)
!849 = !DILocation(line: 451, column: 16, scope: !197)
!850 = !DILocation(line: 451, column: 35, scope: !197)
!851 = !DILocation(line: 451, column: 55, scope: !197)
!852 = !DILocation(line: 451, column: 60, scope: !197)
!853 = !DILocation(line: 451, column: 21, scope: !197)
!854 = !DILocation(line: 456, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !197, file: !3, line: 456, column: 9)
!856 = !DILocation(line: 456, column: 13, scope: !855)
!857 = !DILocation(line: 456, column: 20, scope: !855)
!858 = !DILocation(line: 456, column: 25, scope: !855)
!859 = !DILocation(line: 456, column: 17, scope: !855)
!860 = !DILocation(line: 456, column: 9, scope: !197)
!861 = !DILocation(line: 457, column: 26, scope: !862)
!862 = distinct !DILexicalBlock(scope: !855, file: !3, line: 456, column: 30)
!863 = !DILocation(line: 457, column: 31, scope: !862)
!864 = !DILocation(line: 457, column: 19, scope: !862)
!865 = !DILocation(line: 457, column: 9, scope: !862)
!866 = !DILocation(line: 457, column: 13, scope: !862)
!867 = !DILocation(line: 457, column: 17, scope: !862)
!868 = !DILocation(line: 458, column: 9, scope: !862)
!869 = !DILocation(line: 458, column: 9, scope: !870)
!870 = distinct !DILexicalBlock(scope: !862, file: !3, line: 458, column: 9)
!871 = !DILocation(line: 459, column: 5, scope: !862)
!872 = !DILocalVariable(name: "dbids", scope: !197, file: !3, line: 461, type: !68)
!873 = !DILocation(line: 461, column: 14, scope: !197)
!874 = !DILocation(line: 461, column: 22, scope: !197)
!875 = !DILocation(line: 462, column: 29, scope: !197)
!876 = !DILocation(line: 462, column: 33, scope: !197)
!877 = !DILocation(line: 462, column: 26, scope: !197)
!878 = !DILocation(line: 462, column: 11, scope: !197)
!879 = !DILocation(line: 463, column: 5, scope: !197)
!880 = !DILocation(line: 463, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !197, file: !3, line: 463, column: 5)
!882 = !DILocation(line: 464, column: 1, scope: !197)
!883 = distinct !DISubprogram(name: "getSlaveKeyWithExpireCount", scope: !3, file: !3, line: 467, type: !884, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!884 = !DISubroutineType(types: !885)
!885 = !{!154}
!886 = !DILocation(line: 468, column: 9, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 468, column: 9)
!888 = !DILocation(line: 468, column: 29, scope: !887)
!889 = !DILocation(line: 468, column: 9, scope: !883)
!890 = !DILocation(line: 468, column: 38, scope: !887)
!891 = !DILocation(line: 469, column: 12, scope: !883)
!892 = !DILocation(line: 469, column: 5, scope: !883)
!893 = !DILocation(line: 470, column: 1, scope: !883)
!894 = distinct !DISubprogram(name: "flushSlaveKeysWithExpireList", scope: !3, file: !3, line: 480, type: !705, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!895 = !DILocation(line: 481, column: 9, scope: !896)
!896 = distinct !DILexicalBlock(scope: !894, file: !3, line: 481, column: 9)
!897 = !DILocation(line: 481, column: 9, scope: !894)
!898 = !DILocation(line: 482, column: 21, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !3, line: 481, column: 30)
!900 = !DILocation(line: 482, column: 9, scope: !899)
!901 = !DILocation(line: 483, column: 29, scope: !899)
!902 = !DILocation(line: 484, column: 5, scope: !899)
!903 = !DILocation(line: 485, column: 1, scope: !894)
!904 = distinct !DISubprogram(name: "checkAlreadyExpired", scope: !3, file: !3, line: 487, type: !905, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!905 = !DISubroutineType(types: !906)
!906 = !{!6, !64}
!907 = !DILocalVariable(name: "when", arg: 1, scope: !904, file: !3, line: 487, type: !64)
!908 = !DILocation(line: 487, column: 35, scope: !904)
!909 = !DILocation(line: 494, column: 13, scope: !904)
!910 = !DILocation(line: 494, column: 21, scope: !904)
!911 = !DILocation(line: 494, column: 18, scope: !904)
!912 = !DILocation(line: 494, column: 30, scope: !904)
!913 = !DILocation(line: 494, column: 41, scope: !904)
!914 = !DILocation(line: 494, column: 34, scope: !904)
!915 = !DILocation(line: 494, column: 49, scope: !904)
!916 = !DILocation(line: 494, column: 60, scope: !904)
!917 = !DILocation(line: 494, column: 52, scope: !904)
!918 = !DILocation(line: 0, scope: !904)
!919 = !DILocation(line: 494, column: 5, scope: !904)
!920 = distinct !DISubprogram(name: "parseExtendedExpireArgumentsOrReply", scope: !3, file: !3, line: 509, type: !921, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!921 = !DISubroutineType(types: !922)
!922 = !{!6, !923, !1383}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !20, line: 1199, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !20, line: 1089, size: 5952, elements: !926)
!926 = !{!927, !928, !929, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1081, !1082, !1083, !1084, !1085, !1236, !1237, !1238, !1248, !1249, !1250, !1251, !1252, !1254, !1255, !1256, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1286, !1287, !1288, !1289, !1290, !1308, !1309, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1344, !1345, !1346, !1347, !1366, !1367, !1368, !1369, !1376, !1377, !1378, !1379, !1380, !1381, !1382}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !925, file: !20, line: 1090, baseType: !68, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !925, file: !20, line: 1091, baseType: !68, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !925, file: !20, line: 1092, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !10, line: 40, baseType: !932)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !10, line: 77, size: 512, elements: !933)
!933 = !{!934, !1062, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !932, file: !10, line: 78, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !10, line: 75, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !10, line: 59, size: 960, elements: !938)
!938 = !{!939, !1001, !1012, !1016, !1027, !1031, !1032, !1036, !1040, !1041, !1045, !1049, !1056, !1057, !1058}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !937, file: !10, line: 60, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !943, !6, !67, !6}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !945, line: 99, size: 640, elements: !946)
!945 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!946 = !{!947, !948, !949, !950, !961, !968, !992, !993, !994, !999, !1000}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !944, file: !945, line: 100, baseType: !6, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !944, file: !945, line: 101, baseType: !6, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !944, file: !945, line: 102, baseType: !64, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !944, file: !945, line: 103, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !945, line: 77, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !945, line: 72, size: 256, elements: !954)
!954 = !{!955, !956, !959, !960}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !953, file: !945, line: 73, baseType: !6, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !953, file: !945, line: 74, baseType: !957, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !945, line: 66, baseType: !941)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !953, file: !945, line: 75, baseType: !957, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !953, file: !945, line: 76, baseType: !67, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !944, file: !945, line: 104, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !945, line: 96, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !945, line: 93, size: 64, elements: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !964, file: !945, line: 94, baseType: !6, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !964, file: !945, line: 95, baseType: !6, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !944, file: !945, line: 105, baseType: !969, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !945, line: 90, baseType: !971)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !945, line: 80, size: 512, elements: !972)
!972 = !{!973, !974, !977, !982, !987, !988, !990, !991}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !971, file: !945, line: 81, baseType: !64, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !971, file: !945, line: 82, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !976, line: 22, baseType: !68)
!976 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !971, file: !945, line: 83, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !945, line: 67, baseType: !980)
!980 = !DISubroutineType(types: !981)
!981 = !{!6, !943, !64, !67}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !971, file: !945, line: 84, baseType: !983, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !945, line: 68, baseType: !985)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !943, !67}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !971, file: !945, line: 85, baseType: !67, size: 64, offset: 256)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !971, file: !945, line: 86, baseType: !989, size: 64, offset: 320)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !945, line: 87, baseType: !989, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !971, file: !945, line: 88, baseType: !6, size: 32, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !944, file: !945, line: 106, baseType: !6, size: 32, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !944, file: !945, line: 107, baseType: !67, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !944, file: !945, line: 108, baseType: !995, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !945, line: 69, baseType: !997)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !943}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !944, file: !945, line: 109, baseType: !995, size: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !944, file: !945, line: 110, baseType: !6, size: 32, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !937, file: !10, line: 61, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!6, !1005, !1006, !6, !1006, !1008}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !10, line: 57, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1005}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !937, file: !10, line: 62, baseType: !1013, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!6, !1005, !134, !154}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !937, file: !10, line: 63, baseType: !1017, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!6, !1005, !1020, !6}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1023, line: 26, size: 128, elements: !1024)
!1023 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1022, file: !1023, line: 28, baseType: !67, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1022, file: !1023, line: 29, baseType: !154, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !937, file: !10, line: 64, baseType: !1028, size: 64, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!6, !1005, !67, !154}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !937, file: !10, line: 65, baseType: !1009, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !937, file: !10, line: 66, baseType: !1033, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!6, !1005, !1008}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !937, file: !10, line: 67, baseType: !1037, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!6, !1005, !1008, !6}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !937, file: !10, line: 68, baseType: !1033, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !937, file: !10, line: 69, baseType: !1042, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1006, !1005}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !937, file: !10, line: 70, baseType: !1046, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!6, !1005, !1006, !6, !64}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !937, file: !10, line: 71, baseType: !1050, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !1005, !281, !1053, !64}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1054, line: 108, baseType: !1055)
!1054 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !71, line: 194, baseType: !177)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !937, file: !10, line: 72, baseType: !1050, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !937, file: !10, line: 73, baseType: !1050, size: 64, offset: 832)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !937, file: !10, line: 74, baseType: !1059, size: 64, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!6, !1005}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !932, file: !10, line: 79, baseType: !1063, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !10, line: 49, baseType: !9)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !10, line: 80, baseType: !191, size: 16, offset: 96)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !932, file: !10, line: 81, baseType: !191, size: 16, offset: 112)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !932, file: !10, line: 82, baseType: !6, size: 32, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !932, file: !10, line: 83, baseType: !67, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !932, file: !10, line: 84, baseType: !1008, size: 64, offset: 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !932, file: !10, line: 85, baseType: !1008, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !932, file: !10, line: 86, baseType: !1008, size: 64, offset: 384)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !932, file: !10, line: 87, baseType: !6, size: 32, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !925, file: !20, line: 1093, baseType: !6, size: 32, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !925, file: !20, line: 1094, baseType: !200, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !925, file: !20, line: 1095, baseType: !245, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !925, file: !20, line: 1096, baseType: !280, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !925, file: !20, line: 1097, baseType: !154, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !925, file: !20, line: 1098, baseType: !154, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !925, file: !20, line: 1099, baseType: !6, size: 32, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !925, file: !20, line: 1100, baseType: !1080, size: 64, offset: 640)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !925, file: !20, line: 1101, baseType: !6, size: 32, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !925, file: !20, line: 1102, baseType: !6, size: 32, offset: 736)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !925, file: !20, line: 1103, baseType: !1080, size: 64, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !925, file: !20, line: 1104, baseType: !154, size: 64, offset: 832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !925, file: !20, line: 1105, baseType: !1086, size: 64, offset: 896)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !20, line: 2233, size: 4224, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1098, !1105, !1107, !1112, !1113, !1114, !1115, !1155, !1177, !1178, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1223, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !1087, file: !20, line: 2235, baseType: !1006, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !1087, file: !20, line: 2237, baseType: !1006, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !1087, file: !20, line: 2238, baseType: !1006, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !1087, file: !20, line: 2239, baseType: !1006, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !1087, file: !20, line: 2240, baseType: !6, size: 32, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !1087, file: !20, line: 2241, baseType: !1006, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !1087, file: !20, line: 2242, baseType: !1006, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1087, file: !20, line: 2243, baseType: !1097, size: 32, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !20, line: 2135, baseType: !19)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1087, file: !20, line: 2244, baseType: !1099, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !20, line: 2113, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 2110, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !1101, file: !20, line: 2111, baseType: !1006, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !1101, file: !20, line: 2112, baseType: !1006, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !1087, file: !20, line: 2245, baseType: !1106, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !1087, file: !20, line: 2246, baseType: !1108, size: 64, offset: 640)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !20, line: 2137, baseType: !1110)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !923}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !1087, file: !20, line: 2247, baseType: !6, size: 32, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !20, line: 2248, baseType: !68, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !1087, file: !20, line: 2249, baseType: !68, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !1087, file: !20, line: 2250, baseType: !1116, size: 1792, offset: 896)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 1792, elements: !1153)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !20, line: 2048, baseType: !1118)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 2004, size: 448, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1124, !1136, !1138}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !1118, file: !20, line: 2006, baseType: !1006, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !20, line: 2007, baseType: !68, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !1118, file: !20, line: 2008, baseType: !1123, size: 32, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !20, line: 1994, baseType: !40)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !1118, file: !20, line: 2022, baseType: !1125, size: 128, offset: 192)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !20, line: 2009, size: 128, elements: !1126)
!1126 = !{!1127, !1131}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1125, file: !20, line: 2013, baseType: !1128, size: 32)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !20, line: 2010, size: 32, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1128, file: !20, line: 2012, baseType: !6, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !1125, file: !20, line: 2021, baseType: !1132, size: 128)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !20, line: 2014, size: 128, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !1132, file: !20, line: 2016, baseType: !1006, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !1132, file: !20, line: 2020, baseType: !6, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !1118, file: !20, line: 2023, baseType: !1137, size: 32, offset: 320)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !20, line: 2002, baseType: !46)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !1118, file: !20, line: 2047, baseType: !1139, size: 96, offset: 352)
!1139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1118, file: !20, line: 2024, size: 96, elements: !1140)
!1140 = !{!1141, !1147}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1139, file: !20, line: 2037, baseType: !1142, size: 96)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !20, line: 2027, size: 96, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !1142, file: !20, line: 2031, baseType: !6, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1142, file: !20, line: 2033, baseType: !6, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1142, file: !20, line: 2036, baseType: !6, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !1139, file: !20, line: 2046, baseType: !1148, size: 96)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1139, file: !20, line: 2038, size: 96, elements: !1149)
!1149 = !{!1150, !1151, !1152}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !1148, file: !20, line: 2040, baseType: !6, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !1148, file: !20, line: 2043, baseType: !6, size: 32, offset: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !1148, file: !20, line: 2045, baseType: !6, size: 32, offset: 64)
!1153 = !{!1154}
!1154 = !DISubrange(count: 4)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !1087, file: !20, line: 2253, baseType: !1156, size: 64, offset: 2688)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !20, line: 2138, baseType: !1158)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!6, !1086, !1080, !6, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !20, line: 1966, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1961, size: 16512, elements: !1163)
!1163 = !{!1164, !1173, !1175, !1176}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !1162, file: !20, line: 1962, baseType: !1165, size: 16384)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1166, size: 16384, elements: !1171)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !20, line: 1955, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1951, size: 64, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1167, file: !20, line: 1952, baseType: !6, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !20, line: 1953, baseType: !6, size: 32, offset: 32)
!1171 = !{!1172}
!1172 = !DISubrange(count: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1162, file: !20, line: 1963, baseType: !1174, size: 64, offset: 16384)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !1162, file: !20, line: 1964, baseType: !6, size: 32, offset: 16448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1162, file: !20, line: 1965, baseType: !6, size: 32, offset: 16480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !1087, file: !20, line: 2255, baseType: !1086, size: 64, offset: 2752)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1087, file: !20, line: 2257, baseType: !1179, size: 64, offset: 2816)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !20, line: 2071, size: 576, elements: !1181)
!1181 = !{!1182, !1183, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !20, line: 2072, baseType: !1006, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1180, file: !20, line: 2073, baseType: !1184, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !20, line: 2064, baseType: !52)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !1180, file: !20, line: 2074, baseType: !6, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1180, file: !20, line: 2075, baseType: !1006, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !1180, file: !20, line: 2076, baseType: !1006, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !1180, file: !20, line: 2077, baseType: !1006, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !20, line: 2078, baseType: !6, size: 32, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !1180, file: !20, line: 2079, baseType: !1006, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !1180, file: !20, line: 2080, baseType: !1179, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !1180, file: !20, line: 2082, baseType: !6, size: 32, offset: 512)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !1087, file: !20, line: 2260, baseType: !64, size: 64, offset: 2880)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !1087, file: !20, line: 2260, baseType: !64, size: 64, offset: 2944)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !1087, file: !20, line: 2260, baseType: !64, size: 64, offset: 3008)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !1087, file: !20, line: 2260, baseType: !64, size: 64, offset: 3072)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1087, file: !20, line: 2261, baseType: !6, size: 32, offset: 3136)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1087, file: !20, line: 2266, baseType: !280, size: 64, offset: 3200)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !1087, file: !20, line: 2267, baseType: !1200, size: 64, offset: 3264)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !1202, line: 17, size: 832, elements: !1203)
!1202 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1203 = !{!1204, !1205, !1206, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !1201, file: !1202, line: 19, baseType: !174, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !1201, file: !1202, line: 20, baseType: !174, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !1201, file: !1202, line: 21, baseType: !1207, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !175, line: 26, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !71, line: 41, baseType: !6)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !1201, file: !1202, line: 22, baseType: !1207, size: 32, offset: 160)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !1201, file: !1202, line: 23, baseType: !1207, size: 32, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !1201, file: !1202, line: 24, baseType: !1207, size: 32, offset: 224)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !1201, file: !1202, line: 25, baseType: !174, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !1201, file: !1202, line: 26, baseType: !1207, size: 32, offset: 320)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !1201, file: !1202, line: 27, baseType: !1207, size: 32, offset: 352)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !1201, file: !1202, line: 28, baseType: !174, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !1201, file: !1202, line: 29, baseType: !174, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !1201, file: !1202, line: 30, baseType: !1207, size: 32, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !1201, file: !1202, line: 31, baseType: !66, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !1201, file: !1202, line: 32, baseType: !1207, size: 32, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !1201, file: !1202, line: 33, baseType: !174, size: 64, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !1201, file: !1202, line: 34, baseType: !1222, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !1087, file: !20, line: 2268, baseType: !1224, size: 64, offset: 3328)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !1087, file: !20, line: 2269, baseType: !1117, size: 448, offset: 3392)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !1087, file: !20, line: 2273, baseType: !6, size: 32, offset: 3840)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !1087, file: !20, line: 2274, baseType: !6, size: 32, offset: 3872)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !1087, file: !20, line: 2275, baseType: !6, size: 32, offset: 3904)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !1087, file: !20, line: 2276, baseType: !6, size: 32, offset: 3936)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !1087, file: !20, line: 2277, baseType: !6, size: 32, offset: 3968)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !1087, file: !20, line: 2278, baseType: !120, size: 64, offset: 4032)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1087, file: !20, line: 2280, baseType: !1086, size: 64, offset: 4096)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !1087, file: !20, line: 2281, baseType: !1234, size: 64, offset: 4160)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !20, line: 685, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !925, file: !20, line: 1105, baseType: !1086, size: 64, offset: 960)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !925, file: !20, line: 1106, baseType: !1086, size: 64, offset: 1024)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !925, file: !20, line: 1109, baseType: !1239, size: 64, offset: 1088)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !20, line: 1057, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1049, size: 320, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1241, file: !20, line: 1050, baseType: !280, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !20, line: 1051, baseType: !101, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !1241, file: !20, line: 1052, baseType: !213, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !1241, file: !20, line: 1053, baseType: !213, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !1241, file: !20, line: 1056, baseType: !245, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !925, file: !20, line: 1112, baseType: !6, size: 32, offset: 1152)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !925, file: !20, line: 1113, baseType: !6, size: 32, offset: 1184)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !925, file: !20, line: 1114, baseType: !177, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !925, file: !20, line: 1115, baseType: !213, size: 64, offset: 1280)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !925, file: !20, line: 1116, baseType: !1253, size: 64, offset: 1344)
!1253 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !925, file: !20, line: 1117, baseType: !213, size: 64, offset: 1408)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !925, file: !20, line: 1118, baseType: !154, size: 64, offset: 1472)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !925, file: !20, line: 1120, baseType: !1257, size: 64, offset: 1536)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1258, line: 10, baseType: !1259)
!1258 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !71, line: 160, baseType: !177)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !925, file: !20, line: 1121, baseType: !177, size: 64, offset: 1600)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !925, file: !20, line: 1122, baseType: !6, size: 32, offset: 1664)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !925, file: !20, line: 1123, baseType: !163, size: 64, offset: 1728)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !925, file: !20, line: 1124, baseType: !1257, size: 64, offset: 1792)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !925, file: !20, line: 1125, baseType: !1257, size: 64, offset: 1856)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !925, file: !20, line: 1126, baseType: !6, size: 32, offset: 1920)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !925, file: !20, line: 1127, baseType: !6, size: 32, offset: 1952)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !925, file: !20, line: 1128, baseType: !6, size: 32, offset: 1984)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !925, file: !20, line: 1129, baseType: !6, size: 32, offset: 2016)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !925, file: !20, line: 1130, baseType: !1270, size: 64, offset: 2048)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1271, line: 58, baseType: !1272)
!1271 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !71, line: 153, baseType: !177)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !925, file: !20, line: 1131, baseType: !1270, size: 64, offset: 2112)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !925, file: !20, line: 1132, baseType: !280, size: 64, offset: 2176)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !925, file: !20, line: 1133, baseType: !64, size: 64, offset: 2240)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !925, file: !20, line: 1134, baseType: !64, size: 64, offset: 2304)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !925, file: !20, line: 1135, baseType: !64, size: 64, offset: 2368)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !925, file: !20, line: 1136, baseType: !64, size: 64, offset: 2432)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !925, file: !20, line: 1137, baseType: !64, size: 64, offset: 2496)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !925, file: !20, line: 1138, baseType: !64, size: 64, offset: 2560)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !925, file: !20, line: 1139, baseType: !64, size: 64, offset: 2624)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !925, file: !20, line: 1142, baseType: !1283, size: 328, offset: 2688)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 328, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 41)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !925, file: !20, line: 1143, baseType: !6, size: 32, offset: 3040)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !925, file: !20, line: 1144, baseType: !281, size: 64, offset: 3072)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !925, file: !20, line: 1145, baseType: !6, size: 32, offset: 3136)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !925, file: !20, line: 1146, baseType: !6, size: 32, offset: 3168)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !925, file: !20, line: 1147, baseType: !1291, size: 320, offset: 3200)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !20, line: 967, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !20, line: 956, size: 320, elements: !1293)
!1293 = !{!1294, !1303, !1304, !1305, !1306, !1307}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !1292, file: !20, line: 957, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !20, line: 954, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !20, line: 949, size: 192, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1297, file: !20, line: 950, baseType: !1080, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !1297, file: !20, line: 951, baseType: !6, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !1297, file: !20, line: 952, baseType: !6, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !1297, file: !20, line: 953, baseType: !1086, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1292, file: !20, line: 958, baseType: !6, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1292, file: !20, line: 959, baseType: !6, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !1292, file: !20, line: 962, baseType: !6, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !1292, file: !20, line: 965, baseType: !154, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !1292, file: !20, line: 966, baseType: !6, size: 32, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !925, file: !20, line: 1148, baseType: !6, size: 32, offset: 3520)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !925, file: !20, line: 1149, baseType: !1310, size: 704, offset: 3584)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !20, line: 1003, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !20, line: 971, size: 704, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1311, file: !20, line: 973, baseType: !177, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1311, file: !20, line: 974, baseType: !720, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1311, file: !20, line: 978, baseType: !120, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1311, file: !20, line: 980, baseType: !245, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !1311, file: !20, line: 985, baseType: !1318, size: 64, offset: 256)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !20, line: 982, size: 64, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !1318, file: !20, line: 983, baseType: !6, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !1318, file: !20, line: 984, baseType: !6, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !1311, file: !20, line: 990, baseType: !154, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !1311, file: !20, line: 991, baseType: !245, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !1311, file: !20, line: 992, baseType: !245, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !1311, file: !20, line: 993, baseType: !6, size: 32, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !1311, file: !20, line: 996, baseType: !6, size: 32, offset: 544)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !1311, file: !20, line: 997, baseType: !64, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !1311, file: !20, line: 1000, baseType: !67, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !925, file: !20, line: 1150, baseType: !64, size: 64, offset: 4288)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !925, file: !20, line: 1151, baseType: !213, size: 64, offset: 4352)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !925, file: !20, line: 1152, baseType: !120, size: 64, offset: 4416)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !925, file: !20, line: 1153, baseType: !213, size: 64, offset: 4480)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !925, file: !20, line: 1154, baseType: !120, size: 64, offset: 4544)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !925, file: !20, line: 1155, baseType: !280, size: 64, offset: 4608)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !925, file: !20, line: 1156, baseType: !280, size: 64, offset: 4672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !925, file: !20, line: 1157, baseType: !219, size: 64, offset: 4736)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !925, file: !20, line: 1158, baseType: !219, size: 64, offset: 4800)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !925, file: !20, line: 1159, baseType: !219, size: 64, offset: 4864)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !925, file: !20, line: 1160, baseType: !1340, size: 64, offset: 4928)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !20, line: 715, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !68, !67}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !925, file: !20, line: 1163, baseType: !67, size: 64, offset: 4992)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !925, file: !20, line: 1166, baseType: !67, size: 64, offset: 5056)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !925, file: !20, line: 1173, baseType: !68, size: 64, offset: 5120)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !925, file: !20, line: 1174, baseType: !1348, size: 64, offset: 5184)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !1350, line: 137, baseType: !1351)
!1350 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !1350, line: 133, size: 192, elements: !1352)
!1352 = !{!1353, !1364, !1365}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1351, file: !1350, line: 134, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !1350, line: 131, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !1350, line: 98, size: 32, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !1356, file: !1350, line: 99, baseType: !101, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !1356, file: !1350, line: 100, baseType: !101, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !1356, file: !1350, line: 101, baseType: !101, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1356, file: !1350, line: 102, baseType: !101, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1356, file: !1350, line: 130, baseType: !1363, offset: 32)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, elements: !85)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !1351, file: !1350, line: 135, baseType: !68, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !1351, file: !1350, line: 136, baseType: !68, size: 64, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !925, file: !20, line: 1182, baseType: !154, size: 64, offset: 5248)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !925, file: !20, line: 1183, baseType: !6, size: 32, offset: 5312)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !925, file: !20, line: 1185, baseType: !219, size: 64, offset: 5376)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !925, file: !20, line: 1186, baseType: !1370, size: 64, offset: 5440)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !20, line: 1087, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 1084, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !1372, file: !20, line: 1085, baseType: !213, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !1372, file: !20, line: 1086, baseType: !154, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !925, file: !20, line: 1188, baseType: !219, size: 64, offset: 5504)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !925, file: !20, line: 1190, baseType: !154, size: 64, offset: 5568)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !925, file: !20, line: 1194, baseType: !154, size: 64, offset: 5632)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !925, file: !20, line: 1195, baseType: !720, size: 64, offset: 5696)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !925, file: !20, line: 1196, baseType: !6, size: 32, offset: 5760)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !925, file: !20, line: 1197, baseType: !154, size: 64, offset: 5824)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !925, file: !20, line: 1198, baseType: !281, size: 64, offset: 5888)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1384 = !DILocalVariable(name: "c", arg: 1, scope: !920, file: !3, line: 509, type: !923)
!1385 = !DILocation(line: 509, column: 49, scope: !920)
!1386 = !DILocalVariable(name: "flags", arg: 2, scope: !920, file: !3, line: 509, type: !1383)
!1387 = !DILocation(line: 509, column: 57, scope: !920)
!1388 = !DILocalVariable(name: "nx", scope: !920, file: !3, line: 510, type: !6)
!1389 = !DILocation(line: 510, column: 9, scope: !920)
!1390 = !DILocalVariable(name: "xx", scope: !920, file: !3, line: 510, type: !6)
!1391 = !DILocation(line: 510, column: 17, scope: !920)
!1392 = !DILocalVariable(name: "gt", scope: !920, file: !3, line: 510, type: !6)
!1393 = !DILocation(line: 510, column: 25, scope: !920)
!1394 = !DILocalVariable(name: "lt", scope: !920, file: !3, line: 510, type: !6)
!1395 = !DILocation(line: 510, column: 33, scope: !920)
!1396 = !DILocalVariable(name: "j", scope: !920, file: !3, line: 512, type: !6)
!1397 = !DILocation(line: 512, column: 9, scope: !920)
!1398 = !DILocation(line: 513, column: 5, scope: !920)
!1399 = !DILocation(line: 513, column: 12, scope: !920)
!1400 = !DILocation(line: 513, column: 16, scope: !920)
!1401 = !DILocation(line: 513, column: 19, scope: !920)
!1402 = !DILocation(line: 513, column: 14, scope: !920)
!1403 = !DILocalVariable(name: "opt", scope: !1404, file: !3, line: 514, type: !281)
!1404 = distinct !DILexicalBlock(scope: !920, file: !3, line: 513, column: 25)
!1405 = !DILocation(line: 514, column: 15, scope: !1404)
!1406 = !DILocation(line: 514, column: 21, scope: !1404)
!1407 = !DILocation(line: 514, column: 24, scope: !1404)
!1408 = !DILocation(line: 514, column: 29, scope: !1404)
!1409 = !DILocation(line: 514, column: 33, scope: !1404)
!1410 = !DILocation(line: 515, column: 25, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 515, column: 13)
!1412 = !DILocation(line: 515, column: 14, scope: !1411)
!1413 = !DILocation(line: 515, column: 13, scope: !1404)
!1414 = !DILocation(line: 516, column: 14, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 515, column: 36)
!1416 = !DILocation(line: 516, column: 20, scope: !1415)
!1417 = !DILocation(line: 517, column: 16, scope: !1415)
!1418 = !DILocation(line: 518, column: 9, scope: !1415)
!1419 = !DILocation(line: 518, column: 32, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 518, column: 20)
!1421 = !DILocation(line: 518, column: 21, scope: !1420)
!1422 = !DILocation(line: 518, column: 20, scope: !1411)
!1423 = !DILocation(line: 519, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 518, column: 43)
!1425 = !DILocation(line: 519, column: 20, scope: !1424)
!1426 = !DILocation(line: 520, column: 16, scope: !1424)
!1427 = !DILocation(line: 521, column: 9, scope: !1424)
!1428 = !DILocation(line: 521, column: 32, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 521, column: 20)
!1430 = !DILocation(line: 521, column: 21, scope: !1429)
!1431 = !DILocation(line: 521, column: 20, scope: !1420)
!1432 = !DILocation(line: 522, column: 14, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 521, column: 43)
!1434 = !DILocation(line: 522, column: 20, scope: !1433)
!1435 = !DILocation(line: 523, column: 16, scope: !1433)
!1436 = !DILocation(line: 524, column: 9, scope: !1433)
!1437 = !DILocation(line: 524, column: 32, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 524, column: 20)
!1439 = !DILocation(line: 524, column: 21, scope: !1438)
!1440 = !DILocation(line: 524, column: 20, scope: !1429)
!1441 = !DILocation(line: 525, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 524, column: 43)
!1443 = !DILocation(line: 525, column: 20, scope: !1442)
!1444 = !DILocation(line: 526, column: 16, scope: !1442)
!1445 = !DILocation(line: 527, column: 9, scope: !1442)
!1446 = !DILocation(line: 528, column: 33, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 527, column: 16)
!1448 = !DILocation(line: 528, column: 61, scope: !1447)
!1449 = !DILocation(line: 528, column: 13, scope: !1447)
!1450 = !DILocation(line: 529, column: 13, scope: !1447)
!1451 = !DILocation(line: 531, column: 10, scope: !1404)
!1452 = distinct !{!1452, !1398, !1453, !590}
!1453 = !DILocation(line: 532, column: 5, scope: !920)
!1454 = !DILocation(line: 534, column: 10, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !920, file: !3, line: 534, column: 9)
!1456 = !DILocation(line: 534, column: 13, scope: !1455)
!1457 = !DILocation(line: 534, column: 16, scope: !1455)
!1458 = !DILocation(line: 534, column: 20, scope: !1455)
!1459 = !DILocation(line: 534, column: 24, scope: !1455)
!1460 = !DILocation(line: 534, column: 27, scope: !1455)
!1461 = !DILocation(line: 534, column: 30, scope: !1455)
!1462 = !DILocation(line: 534, column: 34, scope: !1455)
!1463 = !DILocation(line: 534, column: 38, scope: !1455)
!1464 = !DILocation(line: 534, column: 41, scope: !1455)
!1465 = !DILocation(line: 534, column: 44, scope: !1455)
!1466 = !DILocation(line: 534, column: 9, scope: !920)
!1467 = !DILocation(line: 535, column: 23, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 534, column: 49)
!1469 = !DILocation(line: 535, column: 9, scope: !1468)
!1470 = !DILocation(line: 536, column: 9, scope: !1468)
!1471 = !DILocation(line: 539, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !920, file: !3, line: 539, column: 9)
!1473 = !DILocation(line: 539, column: 12, scope: !1472)
!1474 = !DILocation(line: 539, column: 15, scope: !1472)
!1475 = !DILocation(line: 539, column: 9, scope: !920)
!1476 = !DILocation(line: 540, column: 23, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 539, column: 19)
!1478 = !DILocation(line: 540, column: 9, scope: !1477)
!1479 = !DILocation(line: 541, column: 9, scope: !1477)
!1480 = !DILocation(line: 544, column: 5, scope: !920)
!1481 = !DILocation(line: 545, column: 1, scope: !920)
!1482 = distinct !DISubprogram(name: "expireGenericCommand", scope: !3, file: !3, line: 560, type: !1483, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !923, !64, !6}
!1485 = !DILocalVariable(name: "c", arg: 1, scope: !1482, file: !3, line: 560, type: !923)
!1486 = !DILocation(line: 560, column: 35, scope: !1482)
!1487 = !DILocalVariable(name: "basetime", arg: 2, scope: !1482, file: !3, line: 560, type: !64)
!1488 = !DILocation(line: 560, column: 48, scope: !1482)
!1489 = !DILocalVariable(name: "unit", arg: 3, scope: !1482, file: !3, line: 560, type: !6)
!1490 = !DILocation(line: 560, column: 62, scope: !1482)
!1491 = !DILocalVariable(name: "key", scope: !1482, file: !3, line: 561, type: !245)
!1492 = !DILocation(line: 561, column: 11, scope: !1482)
!1493 = !DILocation(line: 561, column: 17, scope: !1482)
!1494 = !DILocation(line: 561, column: 20, scope: !1482)
!1495 = !DILocalVariable(name: "param", scope: !1482, file: !3, line: 561, type: !245)
!1496 = !DILocation(line: 561, column: 30, scope: !1482)
!1497 = !DILocation(line: 561, column: 38, scope: !1482)
!1498 = !DILocation(line: 561, column: 41, scope: !1482)
!1499 = !DILocalVariable(name: "when", scope: !1482, file: !3, line: 562, type: !64)
!1500 = !DILocation(line: 562, column: 15, scope: !1482)
!1501 = !DILocalVariable(name: "current_expire", scope: !1482, file: !3, line: 563, type: !64)
!1502 = !DILocation(line: 563, column: 15, scope: !1482)
!1503 = !DILocalVariable(name: "flag", scope: !1482, file: !3, line: 564, type: !6)
!1504 = !DILocation(line: 564, column: 9, scope: !1482)
!1505 = !DILocation(line: 567, column: 45, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 567, column: 9)
!1507 = !DILocation(line: 567, column: 9, scope: !1506)
!1508 = !DILocation(line: 567, column: 55, scope: !1506)
!1509 = !DILocation(line: 567, column: 9, scope: !1482)
!1510 = !DILocation(line: 568, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 567, column: 64)
!1512 = !DILocation(line: 571, column: 38, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 571, column: 9)
!1514 = !DILocation(line: 571, column: 41, scope: !1513)
!1515 = !DILocation(line: 571, column: 9, scope: !1513)
!1516 = !DILocation(line: 571, column: 61, scope: !1513)
!1517 = !DILocation(line: 571, column: 9, scope: !1482)
!1518 = !DILocation(line: 572, column: 9, scope: !1513)
!1519 = !DILocation(line: 576, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 576, column: 9)
!1521 = !DILocation(line: 576, column: 14, scope: !1520)
!1522 = !DILocation(line: 576, column: 9, scope: !1482)
!1523 = !DILocation(line: 577, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 577, column: 13)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 576, column: 31)
!1526 = !DILocation(line: 577, column: 18, scope: !1524)
!1527 = !DILocation(line: 577, column: 37, scope: !1524)
!1528 = !DILocation(line: 577, column: 40, scope: !1524)
!1529 = !DILocation(line: 577, column: 45, scope: !1524)
!1530 = !DILocation(line: 577, column: 13, scope: !1525)
!1531 = !DILocation(line: 578, column: 37, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 577, column: 65)
!1533 = !DILocation(line: 578, column: 13, scope: !1532)
!1534 = !DILocation(line: 579, column: 13, scope: !1532)
!1535 = !DILocation(line: 581, column: 14, scope: !1525)
!1536 = !DILocation(line: 582, column: 5, scope: !1525)
!1537 = !DILocation(line: 584, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 584, column: 9)
!1539 = !DILocation(line: 584, column: 28, scope: !1538)
!1540 = !DILocation(line: 584, column: 26, scope: !1538)
!1541 = !DILocation(line: 584, column: 14, scope: !1538)
!1542 = !DILocation(line: 584, column: 9, scope: !1482)
!1543 = !DILocation(line: 585, column: 33, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 584, column: 38)
!1545 = !DILocation(line: 585, column: 9, scope: !1544)
!1546 = !DILocation(line: 586, column: 9, scope: !1544)
!1547 = !DILocation(line: 588, column: 13, scope: !1482)
!1548 = !DILocation(line: 588, column: 10, scope: !1482)
!1549 = !DILocation(line: 591, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 591, column: 9)
!1551 = !DILocation(line: 591, column: 27, scope: !1550)
!1552 = !DILocation(line: 591, column: 30, scope: !1550)
!1553 = !DILocation(line: 591, column: 9, scope: !1550)
!1554 = !DILocation(line: 591, column: 35, scope: !1550)
!1555 = !DILocation(line: 591, column: 9, scope: !1482)
!1556 = !DILocation(line: 592, column: 18, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 591, column: 44)
!1558 = !DILocation(line: 592, column: 27, scope: !1557)
!1559 = !DILocation(line: 592, column: 9, scope: !1557)
!1560 = !DILocation(line: 593, column: 9, scope: !1557)
!1561 = !DILocation(line: 596, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 596, column: 9)
!1563 = !DILocation(line: 596, column: 9, scope: !1482)
!1564 = !DILocation(line: 597, column: 36, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 596, column: 15)
!1566 = !DILocation(line: 597, column: 39, scope: !1565)
!1567 = !DILocation(line: 597, column: 43, scope: !1565)
!1568 = !DILocation(line: 597, column: 26, scope: !1565)
!1569 = !DILocation(line: 597, column: 24, scope: !1565)
!1570 = !DILocation(line: 600, column: 13, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 600, column: 13)
!1572 = !DILocation(line: 600, column: 18, scope: !1571)
!1573 = !DILocation(line: 600, column: 13, scope: !1565)
!1574 = !DILocation(line: 601, column: 17, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 601, column: 17)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 600, column: 31)
!1577 = !DILocation(line: 601, column: 32, scope: !1575)
!1578 = !DILocation(line: 601, column: 17, scope: !1576)
!1579 = !DILocation(line: 602, column: 26, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 601, column: 39)
!1581 = !DILocation(line: 602, column: 35, scope: !1580)
!1582 = !DILocation(line: 602, column: 17, scope: !1580)
!1583 = !DILocation(line: 603, column: 17, scope: !1580)
!1584 = !DILocation(line: 605, column: 9, scope: !1576)
!1585 = !DILocation(line: 608, column: 13, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 608, column: 13)
!1587 = !DILocation(line: 608, column: 18, scope: !1586)
!1588 = !DILocation(line: 608, column: 13, scope: !1565)
!1589 = !DILocation(line: 609, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 609, column: 17)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 608, column: 31)
!1592 = !DILocation(line: 609, column: 32, scope: !1590)
!1593 = !DILocation(line: 609, column: 17, scope: !1591)
!1594 = !DILocation(line: 611, column: 26, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 609, column: 39)
!1596 = !DILocation(line: 611, column: 35, scope: !1595)
!1597 = !DILocation(line: 611, column: 17, scope: !1595)
!1598 = !DILocation(line: 612, column: 17, scope: !1595)
!1599 = !DILocation(line: 614, column: 9, scope: !1591)
!1600 = !DILocation(line: 617, column: 13, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 617, column: 13)
!1602 = !DILocation(line: 617, column: 18, scope: !1601)
!1603 = !DILocation(line: 617, column: 13, scope: !1565)
!1604 = !DILocation(line: 620, column: 17, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 620, column: 17)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 617, column: 31)
!1607 = !DILocation(line: 620, column: 25, scope: !1605)
!1608 = !DILocation(line: 620, column: 22, scope: !1605)
!1609 = !DILocation(line: 620, column: 40, scope: !1605)
!1610 = !DILocation(line: 620, column: 43, scope: !1605)
!1611 = !DILocation(line: 620, column: 58, scope: !1605)
!1612 = !DILocation(line: 620, column: 17, scope: !1606)
!1613 = !DILocation(line: 622, column: 26, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 620, column: 65)
!1615 = !DILocation(line: 622, column: 35, scope: !1614)
!1616 = !DILocation(line: 622, column: 17, scope: !1614)
!1617 = !DILocation(line: 623, column: 17, scope: !1614)
!1618 = !DILocation(line: 625, column: 9, scope: !1606)
!1619 = !DILocation(line: 628, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 628, column: 13)
!1621 = !DILocation(line: 628, column: 18, scope: !1620)
!1622 = !DILocation(line: 628, column: 13, scope: !1565)
!1623 = !DILocation(line: 632, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 632, column: 17)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 628, column: 31)
!1626 = !DILocation(line: 632, column: 32, scope: !1624)
!1627 = !DILocation(line: 632, column: 38, scope: !1624)
!1628 = !DILocation(line: 632, column: 41, scope: !1624)
!1629 = !DILocation(line: 632, column: 49, scope: !1624)
!1630 = !DILocation(line: 632, column: 46, scope: !1624)
!1631 = !DILocation(line: 632, column: 17, scope: !1625)
!1632 = !DILocation(line: 634, column: 26, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 632, column: 65)
!1634 = !DILocation(line: 634, column: 35, scope: !1633)
!1635 = !DILocation(line: 634, column: 17, scope: !1633)
!1636 = !DILocation(line: 635, column: 17, scope: !1633)
!1637 = !DILocation(line: 637, column: 9, scope: !1625)
!1638 = !DILocation(line: 638, column: 5, scope: !1565)
!1639 = !DILocation(line: 640, column: 29, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 640, column: 9)
!1641 = !DILocation(line: 640, column: 9, scope: !1640)
!1642 = !DILocation(line: 640, column: 9, scope: !1482)
!1643 = !DILocalVariable(name: "aux", scope: !1644, file: !3, line: 641, type: !245)
!1644 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 640, column: 36)
!1645 = !DILocation(line: 641, column: 15, scope: !1644)
!1646 = !DILocalVariable(name: "deleted", scope: !1644, file: !3, line: 643, type: !6)
!1647 = !DILocation(line: 643, column: 13, scope: !1644)
!1648 = !DILocation(line: 643, column: 30, scope: !1644)
!1649 = !DILocation(line: 643, column: 23, scope: !1644)
!1650 = !DILocation(line: 643, column: 67, scope: !1644)
!1651 = !DILocation(line: 643, column: 70, scope: !1644)
!1652 = !DILocation(line: 643, column: 73, scope: !1644)
!1653 = !DILocation(line: 643, column: 53, scope: !1644)
!1654 = !DILocation(line: 644, column: 66, scope: !1644)
!1655 = !DILocation(line: 644, column: 69, scope: !1644)
!1656 = !DILocation(line: 644, column: 72, scope: !1644)
!1657 = !DILocation(line: 644, column: 53, scope: !1644)
!1658 = !DILocation(line: 645, column: 9, scope: !1644)
!1659 = !DILocation(line: 646, column: 21, scope: !1644)
!1660 = !DILocation(line: 649, column: 22, scope: !1644)
!1661 = !DILocation(line: 649, column: 15, scope: !1644)
!1662 = !DILocation(line: 649, column: 52, scope: !1644)
!1663 = !DILocation(line: 649, column: 68, scope: !1644)
!1664 = !DILocation(line: 649, column: 13, scope: !1644)
!1665 = !DILocation(line: 650, column: 36, scope: !1644)
!1666 = !DILocation(line: 650, column: 40, scope: !1644)
!1667 = !DILocation(line: 650, column: 44, scope: !1644)
!1668 = !DILocation(line: 650, column: 9, scope: !1644)
!1669 = !DILocation(line: 651, column: 27, scope: !1644)
!1670 = !DILocation(line: 651, column: 29, scope: !1644)
!1671 = !DILocation(line: 651, column: 32, scope: !1644)
!1672 = !DILocation(line: 651, column: 35, scope: !1644)
!1673 = !DILocation(line: 651, column: 9, scope: !1644)
!1674 = !DILocation(line: 652, column: 50, scope: !1644)
!1675 = !DILocation(line: 652, column: 54, scope: !1644)
!1676 = !DILocation(line: 652, column: 57, scope: !1644)
!1677 = !DILocation(line: 652, column: 61, scope: !1644)
!1678 = !DILocation(line: 652, column: 9, scope: !1644)
!1679 = !DILocation(line: 653, column: 18, scope: !1644)
!1680 = !DILocation(line: 653, column: 28, scope: !1644)
!1681 = !DILocation(line: 653, column: 9, scope: !1644)
!1682 = !DILocation(line: 654, column: 9, scope: !1644)
!1683 = !DILocation(line: 656, column: 19, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 655, column: 12)
!1685 = !DILocation(line: 656, column: 21, scope: !1684)
!1686 = !DILocation(line: 656, column: 24, scope: !1684)
!1687 = !DILocation(line: 656, column: 27, scope: !1684)
!1688 = !DILocation(line: 656, column: 31, scope: !1684)
!1689 = !DILocation(line: 656, column: 9, scope: !1684)
!1690 = !DILocation(line: 657, column: 18, scope: !1684)
!1691 = !DILocation(line: 657, column: 27, scope: !1684)
!1692 = !DILocation(line: 657, column: 9, scope: !1684)
!1693 = !DILocation(line: 660, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 660, column: 13)
!1695 = !DILocation(line: 660, column: 16, scope: !1694)
!1696 = !DILocation(line: 660, column: 21, scope: !1694)
!1697 = !DILocation(line: 660, column: 26, scope: !1694)
!1698 = !DILocation(line: 660, column: 13, scope: !1684)
!1699 = !DILocation(line: 661, column: 42, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 660, column: 47)
!1701 = !DILocation(line: 661, column: 53, scope: !1700)
!1702 = !DILocation(line: 661, column: 13, scope: !1700)
!1703 = !DILocation(line: 662, column: 9, scope: !1700)
!1704 = !DILocation(line: 665, column: 13, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 665, column: 13)
!1706 = !DILocation(line: 665, column: 22, scope: !1705)
!1707 = !DILocation(line: 665, column: 27, scope: !1705)
!1708 = !DILocation(line: 665, column: 30, scope: !1705)
!1709 = !DILocation(line: 665, column: 35, scope: !1705)
!1710 = !DILocation(line: 665, column: 13, scope: !1684)
!1711 = !DILocalVariable(name: "when_obj", scope: !1712, file: !3, line: 666, type: !245)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 665, column: 52)
!1713 = !DILocation(line: 666, column: 19, scope: !1712)
!1714 = !DILocation(line: 666, column: 61, scope: !1712)
!1715 = !DILocation(line: 666, column: 30, scope: !1712)
!1716 = !DILocation(line: 667, column: 42, scope: !1712)
!1717 = !DILocation(line: 667, column: 46, scope: !1712)
!1718 = !DILocation(line: 667, column: 13, scope: !1712)
!1719 = !DILocation(line: 668, column: 26, scope: !1712)
!1720 = !DILocation(line: 668, column: 13, scope: !1712)
!1721 = !DILocation(line: 669, column: 9, scope: !1712)
!1722 = !DILocation(line: 671, column: 27, scope: !1684)
!1723 = !DILocation(line: 671, column: 29, scope: !1684)
!1724 = !DILocation(line: 671, column: 32, scope: !1684)
!1725 = !DILocation(line: 671, column: 35, scope: !1684)
!1726 = !DILocation(line: 671, column: 9, scope: !1684)
!1727 = !DILocation(line: 672, column: 53, scope: !1684)
!1728 = !DILocation(line: 672, column: 57, scope: !1684)
!1729 = !DILocation(line: 672, column: 60, scope: !1684)
!1730 = !DILocation(line: 672, column: 64, scope: !1684)
!1731 = !DILocation(line: 672, column: 9, scope: !1684)
!1732 = !DILocation(line: 673, column: 21, scope: !1684)
!1733 = !DILocation(line: 674, column: 9, scope: !1684)
!1734 = !DILocation(line: 676, column: 1, scope: !1482)
!1735 = distinct !DISubprogram(name: "pexpireatCommand", scope: !3, file: !3, line: 694, type: !1110, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1736 = !DILocalVariable(name: "c", arg: 1, scope: !1735, file: !3, line: 694, type: !923)
!1737 = !DILocation(line: 694, column: 31, scope: !1735)
!1738 = !DILocation(line: 695, column: 26, scope: !1735)
!1739 = !DILocation(line: 695, column: 5, scope: !1735)
!1740 = !DILocation(line: 696, column: 1, scope: !1735)
!1741 = distinct !DISubprogram(name: "expireCommand", scope: !3, file: !3, line: 679, type: !1110, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1742 = !DILocalVariable(name: "c", arg: 1, scope: !1741, file: !3, line: 679, type: !923)
!1743 = !DILocation(line: 679, column: 28, scope: !1741)
!1744 = !DILocation(line: 680, column: 26, scope: !1741)
!1745 = !DILocation(line: 680, column: 28, scope: !1741)
!1746 = !DILocation(line: 680, column: 5, scope: !1741)
!1747 = !DILocation(line: 681, column: 1, scope: !1741)
!1748 = distinct !DISubprogram(name: "expireatCommand", scope: !3, file: !3, line: 684, type: !1110, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1749 = !DILocalVariable(name: "c", arg: 1, scope: !1748, file: !3, line: 684, type: !923)
!1750 = !DILocation(line: 684, column: 30, scope: !1748)
!1751 = !DILocation(line: 685, column: 26, scope: !1748)
!1752 = !DILocation(line: 685, column: 5, scope: !1748)
!1753 = !DILocation(line: 686, column: 1, scope: !1748)
!1754 = distinct !DISubprogram(name: "pexpireCommand", scope: !3, file: !3, line: 689, type: !1110, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1755 = !DILocalVariable(name: "c", arg: 1, scope: !1754, file: !3, line: 689, type: !923)
!1756 = !DILocation(line: 689, column: 29, scope: !1754)
!1757 = !DILocation(line: 690, column: 26, scope: !1754)
!1758 = !DILocation(line: 690, column: 28, scope: !1754)
!1759 = !DILocation(line: 690, column: 5, scope: !1754)
!1760 = !DILocation(line: 691, column: 1, scope: !1754)
!1761 = distinct !DISubprogram(name: "ttlGenericCommand", scope: !3, file: !3, line: 699, type: !1762, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !923, !6, !6}
!1764 = !DILocalVariable(name: "c", arg: 1, scope: !1761, file: !3, line: 699, type: !923)
!1765 = !DILocation(line: 699, column: 32, scope: !1761)
!1766 = !DILocalVariable(name: "output_ms", arg: 2, scope: !1761, file: !3, line: 699, type: !6)
!1767 = !DILocation(line: 699, column: 39, scope: !1761)
!1768 = !DILocalVariable(name: "output_abs", arg: 3, scope: !1761, file: !3, line: 699, type: !6)
!1769 = !DILocation(line: 699, column: 54, scope: !1761)
!1770 = !DILocalVariable(name: "expire", scope: !1761, file: !3, line: 700, type: !64)
!1771 = !DILocation(line: 700, column: 15, scope: !1761)
!1772 = !DILocalVariable(name: "ttl", scope: !1761, file: !3, line: 700, type: !64)
!1773 = !DILocation(line: 700, column: 23, scope: !1761)
!1774 = !DILocation(line: 703, column: 32, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 703, column: 9)
!1776 = !DILocation(line: 703, column: 35, scope: !1775)
!1777 = !DILocation(line: 703, column: 38, scope: !1775)
!1778 = !DILocation(line: 703, column: 41, scope: !1775)
!1779 = !DILocation(line: 703, column: 9, scope: !1775)
!1780 = !DILocation(line: 703, column: 65, scope: !1775)
!1781 = !DILocation(line: 703, column: 9, scope: !1761)
!1782 = !DILocation(line: 704, column: 26, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 703, column: 74)
!1784 = !DILocation(line: 704, column: 9, scope: !1783)
!1785 = !DILocation(line: 705, column: 9, scope: !1783)
!1786 = !DILocation(line: 710, column: 24, scope: !1761)
!1787 = !DILocation(line: 710, column: 27, scope: !1761)
!1788 = !DILocation(line: 710, column: 30, scope: !1761)
!1789 = !DILocation(line: 710, column: 33, scope: !1761)
!1790 = !DILocation(line: 710, column: 14, scope: !1761)
!1791 = !DILocation(line: 710, column: 12, scope: !1761)
!1792 = !DILocation(line: 711, column: 9, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 711, column: 9)
!1794 = !DILocation(line: 711, column: 16, scope: !1793)
!1795 = !DILocation(line: 711, column: 9, scope: !1761)
!1796 = !DILocation(line: 712, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 711, column: 23)
!1798 = !DILocation(line: 712, column: 28, scope: !1797)
!1799 = !DILocation(line: 712, column: 37, scope: !1797)
!1800 = !DILocation(line: 712, column: 44, scope: !1797)
!1801 = !DILocation(line: 712, column: 43, scope: !1797)
!1802 = !DILocation(line: 712, column: 13, scope: !1797)
!1803 = !DILocation(line: 713, column: 13, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 713, column: 13)
!1805 = !DILocation(line: 713, column: 17, scope: !1804)
!1806 = !DILocation(line: 713, column: 13, scope: !1797)
!1807 = !DILocation(line: 713, column: 26, scope: !1804)
!1808 = !DILocation(line: 713, column: 22, scope: !1804)
!1809 = !DILocation(line: 714, column: 5, scope: !1797)
!1810 = !DILocation(line: 715, column: 9, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 715, column: 9)
!1812 = !DILocation(line: 715, column: 13, scope: !1811)
!1813 = !DILocation(line: 715, column: 9, scope: !1761)
!1814 = !DILocation(line: 716, column: 26, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 715, column: 20)
!1816 = !DILocation(line: 716, column: 9, scope: !1815)
!1817 = !DILocation(line: 717, column: 5, scope: !1815)
!1818 = !DILocation(line: 718, column: 26, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 717, column: 12)
!1820 = !DILocation(line: 718, column: 28, scope: !1819)
!1821 = !DILocation(line: 718, column: 40, scope: !1819)
!1822 = !DILocation(line: 718, column: 48, scope: !1819)
!1823 = !DILocation(line: 718, column: 51, scope: !1819)
!1824 = !DILocation(line: 718, column: 56, scope: !1819)
!1825 = !DILocation(line: 718, column: 9, scope: !1819)
!1826 = !DILocation(line: 720, column: 1, scope: !1761)
!1827 = distinct !DISubprogram(name: "ttlCommand", scope: !3, file: !3, line: 723, type: !1110, scopeLine: 723, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1828 = !DILocalVariable(name: "c", arg: 1, scope: !1827, file: !3, line: 723, type: !923)
!1829 = !DILocation(line: 723, column: 25, scope: !1827)
!1830 = !DILocation(line: 724, column: 23, scope: !1827)
!1831 = !DILocation(line: 724, column: 5, scope: !1827)
!1832 = !DILocation(line: 725, column: 1, scope: !1827)
!1833 = distinct !DISubprogram(name: "pttlCommand", scope: !3, file: !3, line: 728, type: !1110, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1834 = !DILocalVariable(name: "c", arg: 1, scope: !1833, file: !3, line: 728, type: !923)
!1835 = !DILocation(line: 728, column: 26, scope: !1833)
!1836 = !DILocation(line: 729, column: 23, scope: !1833)
!1837 = !DILocation(line: 729, column: 5, scope: !1833)
!1838 = !DILocation(line: 730, column: 1, scope: !1833)
!1839 = distinct !DISubprogram(name: "expiretimeCommand", scope: !3, file: !3, line: 733, type: !1110, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1840 = !DILocalVariable(name: "c", arg: 1, scope: !1839, file: !3, line: 733, type: !923)
!1841 = !DILocation(line: 733, column: 32, scope: !1839)
!1842 = !DILocation(line: 734, column: 23, scope: !1839)
!1843 = !DILocation(line: 734, column: 5, scope: !1839)
!1844 = !DILocation(line: 735, column: 1, scope: !1839)
!1845 = distinct !DISubprogram(name: "pexpiretimeCommand", scope: !3, file: !3, line: 738, type: !1110, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1846 = !DILocalVariable(name: "c", arg: 1, scope: !1845, file: !3, line: 738, type: !923)
!1847 = !DILocation(line: 738, column: 33, scope: !1845)
!1848 = !DILocation(line: 739, column: 23, scope: !1845)
!1849 = !DILocation(line: 739, column: 5, scope: !1845)
!1850 = !DILocation(line: 740, column: 1, scope: !1845)
!1851 = distinct !DISubprogram(name: "persistCommand", scope: !3, file: !3, line: 743, type: !1110, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1852 = !DILocalVariable(name: "c", arg: 1, scope: !1851, file: !3, line: 743, type: !923)
!1853 = !DILocation(line: 743, column: 29, scope: !1851)
!1854 = !DILocation(line: 744, column: 24, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 744, column: 9)
!1856 = !DILocation(line: 744, column: 27, scope: !1855)
!1857 = !DILocation(line: 744, column: 30, scope: !1855)
!1858 = !DILocation(line: 744, column: 33, scope: !1855)
!1859 = !DILocation(line: 744, column: 9, scope: !1855)
!1860 = !DILocation(line: 744, column: 9, scope: !1851)
!1861 = !DILocation(line: 745, column: 26, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 745, column: 13)
!1863 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 744, column: 43)
!1864 = !DILocation(line: 745, column: 29, scope: !1862)
!1865 = !DILocation(line: 745, column: 32, scope: !1862)
!1866 = !DILocation(line: 745, column: 35, scope: !1862)
!1867 = !DILocation(line: 745, column: 13, scope: !1862)
!1868 = !DILocation(line: 745, column: 13, scope: !1863)
!1869 = !DILocation(line: 746, column: 31, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 745, column: 45)
!1871 = !DILocation(line: 746, column: 33, scope: !1870)
!1872 = !DILocation(line: 746, column: 36, scope: !1870)
!1873 = !DILocation(line: 746, column: 39, scope: !1870)
!1874 = !DILocation(line: 746, column: 42, scope: !1870)
!1875 = !DILocation(line: 746, column: 13, scope: !1870)
!1876 = !DILocation(line: 747, column: 58, scope: !1870)
!1877 = !DILocation(line: 747, column: 61, scope: !1870)
!1878 = !DILocation(line: 747, column: 69, scope: !1870)
!1879 = !DILocation(line: 747, column: 72, scope: !1870)
!1880 = !DILocation(line: 747, column: 76, scope: !1870)
!1881 = !DILocation(line: 747, column: 13, scope: !1870)
!1882 = !DILocation(line: 748, column: 22, scope: !1870)
!1883 = !DILocation(line: 748, column: 31, scope: !1870)
!1884 = !DILocation(line: 748, column: 13, scope: !1870)
!1885 = !DILocation(line: 749, column: 25, scope: !1870)
!1886 = !DILocation(line: 750, column: 9, scope: !1870)
!1887 = !DILocation(line: 751, column: 22, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 750, column: 16)
!1889 = !DILocation(line: 751, column: 31, scope: !1888)
!1890 = !DILocation(line: 751, column: 13, scope: !1888)
!1891 = !DILocation(line: 753, column: 5, scope: !1863)
!1892 = !DILocation(line: 754, column: 18, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 753, column: 12)
!1894 = !DILocation(line: 754, column: 27, scope: !1893)
!1895 = !DILocation(line: 754, column: 9, scope: !1893)
!1896 = !DILocation(line: 756, column: 1, scope: !1851)
!1897 = distinct !DISubprogram(name: "touchCommand", scope: !3, file: !3, line: 759, type: !1110, scopeLine: 759, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !254)
!1898 = !DILocalVariable(name: "c", arg: 1, scope: !1897, file: !3, line: 759, type: !923)
!1899 = !DILocation(line: 759, column: 27, scope: !1897)
!1900 = !DILocalVariable(name: "touched", scope: !1897, file: !3, line: 760, type: !6)
!1901 = !DILocation(line: 760, column: 9, scope: !1897)
!1902 = !DILocalVariable(name: "j", scope: !1903, file: !3, line: 761, type: !6)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 761, column: 5)
!1904 = !DILocation(line: 761, column: 14, scope: !1903)
!1905 = !DILocation(line: 761, column: 10, scope: !1903)
!1906 = !DILocation(line: 761, column: 21, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 761, column: 5)
!1908 = !DILocation(line: 761, column: 25, scope: !1907)
!1909 = !DILocation(line: 761, column: 28, scope: !1907)
!1910 = !DILocation(line: 761, column: 23, scope: !1907)
!1911 = !DILocation(line: 761, column: 5, scope: !1903)
!1912 = !DILocation(line: 762, column: 27, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 762, column: 13)
!1914 = !DILocation(line: 762, column: 30, scope: !1913)
!1915 = !DILocation(line: 762, column: 33, scope: !1913)
!1916 = !DILocation(line: 762, column: 36, scope: !1913)
!1917 = !DILocation(line: 762, column: 41, scope: !1913)
!1918 = !DILocation(line: 762, column: 13, scope: !1913)
!1919 = !DILocation(line: 762, column: 45, scope: !1913)
!1920 = !DILocation(line: 762, column: 13, scope: !1907)
!1921 = !DILocation(line: 762, column: 61, scope: !1913)
!1922 = !DILocation(line: 762, column: 54, scope: !1913)
!1923 = !DILocation(line: 762, column: 48, scope: !1913)
!1924 = !DILocation(line: 761, column: 35, scope: !1907)
!1925 = !DILocation(line: 761, column: 5, scope: !1907)
!1926 = distinct !{!1926, !1911, !1927, !590}
!1927 = !DILocation(line: 762, column: 61, scope: !1903)
!1928 = !DILocation(line: 763, column: 22, scope: !1897)
!1929 = !DILocation(line: 763, column: 24, scope: !1897)
!1930 = !DILocation(line: 763, column: 5, scope: !1897)
!1931 = !DILocation(line: 764, column: 1, scope: !1897)
