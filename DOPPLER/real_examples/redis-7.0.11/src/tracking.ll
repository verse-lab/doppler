; ModuleID = 'tracking.c'
source_filename = "tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.socketFds = type { [16 x i32], i32 }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
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
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.bcastState = type { %struct.rax*, %struct.rax* }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct.listIter = type { %struct.listNode*, i32 }

@TrackingTable = dso_local global %struct.rax* null, align 8, !dbg !0
@PrefixTable = dso_local global %struct.rax* null, align 8, !dbg !110
@TrackingTableTotalItems = dso_local global i64 0, align 8, !dbg !130
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@raxNotFound = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"bs != raxNotFound\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tracking.c\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"Prefix '%s' overlaps with an existing prefix '%s'. Prefixes for a single client must not overlap.\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"Prefix '%s' overlaps with another provided prefix '%s'. Prefixes for a single client must not overlap.\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"__redis__:invalidate\00", align 1
@TrackingChannelName = dso_local global %struct.redisObject* null, align 8, !dbg !138
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"inserted == 1\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"tracking-redir-broken\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"invalidate\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@trackingLimitUsedSlots.timeout_counter = internal global i32 0, align 4, !dbg !132
@.str.10 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"$\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @disableTracking(%struct.client* %c) #0 !dbg !156 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %ri = alloca %struct.raxIterator, align 8
  %bs = alloca %struct.bcastState*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !723, metadata !DIExpression()), !dbg !724
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !725
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !727
  %1 = load i64, i64* %flags, align 8, !dbg !727
  %and = and i64 %1, 8589934592, !dbg !728
  %tobool = icmp ne i64 %and, 0, !dbg !728
  br i1 %tobool, label %if.then, label %if.end15, !dbg !729

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !730, metadata !DIExpression()), !dbg !765
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !766
  %client_tracking_prefixes = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 68, !dbg !767
  %3 = load %struct.rax*, %struct.rax** %client_tracking_prefixes, align 8, !dbg !767
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %3), !dbg !768
  %call = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !769
  br label %while.cond, !dbg !770

while.cond:                                       ; preds = %if.end, %if.then
  %call1 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !771
  %tobool2 = icmp ne i32 %call1, 0, !dbg !770
  br i1 %tobool2, label %while.body, label %while.end, !dbg !770

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.bcastState** %bs, metadata !772, metadata !DIExpression()), !dbg !780
  %4 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !781
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !782
  %5 = load i8*, i8** %key, align 8, !dbg !782
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !783
  %6 = load i64, i64* %key_len, align 8, !dbg !783
  %call3 = call i8* @raxFind(%struct.rax* %4, i8* %5, i64 %6), !dbg !784
  %7 = bitcast i8* %call3 to %struct.bcastState*, !dbg !784
  store %struct.bcastState* %7, %struct.bcastState** %bs, align 8, !dbg !780
  %8 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !785
  %9 = load i8*, i8** @raxNotFound, align 8, !dbg !785
  %10 = bitcast i8* %9 to %struct.bcastState*, !dbg !785
  %cmp = icmp ne %struct.bcastState* %8, %10, !dbg !785
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !785

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !785

cond.false:                                       ; preds = %while.body
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 76), !dbg !785
  unreachable, !dbg !785

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !785

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %11 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !786
  %clients = getelementptr inbounds %struct.bcastState, %struct.bcastState* %11, i32 0, i32 1, !dbg !787
  %12 = load %struct.rax*, %struct.rax** %clients, align 8, !dbg !787
  %13 = bitcast %struct.client** %c.addr to i8*, !dbg !788
  %call4 = call i32 @raxRemove(%struct.rax* %12, i8* %13, i64 8, i8** null), !dbg !789
  %14 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !790
  %clients5 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %14, i32 0, i32 1, !dbg !792
  %15 = load %struct.rax*, %struct.rax** %clients5, align 8, !dbg !792
  %call6 = call i64 @raxSize(%struct.rax* %15), !dbg !793
  %cmp7 = icmp eq i64 %call6, 0, !dbg !794
  br i1 %cmp7, label %if.then8, label %if.end, !dbg !795

if.then8:                                         ; preds = %cond.end
  %16 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !796
  %clients9 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %16, i32 0, i32 1, !dbg !798
  %17 = load %struct.rax*, %struct.rax** %clients9, align 8, !dbg !798
  call void @raxFree(%struct.rax* %17), !dbg !799
  %18 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !800
  %keys = getelementptr inbounds %struct.bcastState, %struct.bcastState* %18, i32 0, i32 0, !dbg !801
  %19 = load %struct.rax*, %struct.rax** %keys, align 8, !dbg !801
  call void @raxFree(%struct.rax* %19), !dbg !802
  %20 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !803
  %21 = bitcast %struct.bcastState* %20 to i8*, !dbg !803
  call void @zfree(i8* %21), !dbg !804
  %22 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !805
  %key10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !806
  %23 = load i8*, i8** %key10, align 8, !dbg !806
  %key_len11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !807
  %24 = load i64, i64* %key_len11, align 8, !dbg !807
  %call12 = call i32 @raxRemove(%struct.rax* %22, i8* %23, i64 %24, i8** null), !dbg !808
  br label %if.end, !dbg !809

if.end:                                           ; preds = %if.then8, %cond.end
  br label %while.cond, !dbg !770, !llvm.loop !810

while.end:                                        ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !813
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !814
  %client_tracking_prefixes13 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 68, !dbg !815
  %26 = load %struct.rax*, %struct.rax** %client_tracking_prefixes13, align 8, !dbg !815
  call void @raxFree(%struct.rax* %26), !dbg !816
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !817
  %client_tracking_prefixes14 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 68, !dbg !818
  store %struct.rax* null, %struct.rax** %client_tracking_prefixes14, align 8, !dbg !819
  br label %if.end15, !dbg !820

if.end15:                                         ; preds = %while.end, %entry
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !821
  %flags16 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 1, !dbg !823
  %29 = load i64, i64* %flags16, align 8, !dbg !823
  %and17 = and i64 %29, 2147483648, !dbg !824
  %tobool18 = icmp ne i64 %and17, 0, !dbg !824
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !825

if.then19:                                        ; preds = %if.end15
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !826
  %dec = add i32 %30, -1, !dbg !826
  store i32 %dec, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !826
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !828
  %flags20 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 1, !dbg !829
  %32 = load i64, i64* %flags20, align 8, !dbg !830
  %and21 = and i64 %32, -272730423297, !dbg !830
  store i64 %and21, i64* %flags20, align 8, !dbg !830
  br label %if.end22, !dbg !831

if.end22:                                         ; preds = %if.then19, %if.end15
  ret void, !dbg !832
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) #2

declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) #2

declare dso_local i32 @raxNext(%struct.raxIterator*) #2

declare dso_local i8* @raxFind(%struct.rax*, i8*, i64) #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) #2

declare dso_local i64 @raxSize(%struct.rax*) #2

declare dso_local void @raxFree(%struct.rax*) #2

declare dso_local void @zfree(i8*) #2

declare dso_local void @raxStop(%struct.raxIterator*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkPrefixCollisionsOrReply(%struct.client* %c, %struct.redisObject** %prefixes, i64 %numprefix) #0 !dbg !833 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %prefixes.addr = alloca %struct.redisObject**, align 8
  %numprefix.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %ri = alloca %struct.raxIterator, align 8
  %collision = alloca i8*, align 8
  %j = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !836, metadata !DIExpression()), !dbg !837
  store %struct.redisObject** %prefixes, %struct.redisObject*** %prefixes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %prefixes.addr, metadata !838, metadata !DIExpression()), !dbg !839
  store i64 %numprefix, i64* %numprefix.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numprefix.addr, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata i64* %i, metadata !842, metadata !DIExpression()), !dbg !844
  store i64 0, i64* %i, align 8, !dbg !844
  br label %for.cond, !dbg !845

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load i64, i64* %i, align 8, !dbg !846
  %1 = load i64, i64* %numprefix.addr, align 8, !dbg !848
  %cmp = icmp ult i64 %0, %1, !dbg !849
  br i1 %cmp, label %for.body, label %for.end39, !dbg !850

for.body:                                         ; preds = %for.cond
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !851
  %client_tracking_prefixes = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 68, !dbg !854
  %3 = load %struct.rax*, %struct.rax** %client_tracking_prefixes, align 8, !dbg !854
  %tobool = icmp ne %struct.rax* %3, null, !dbg !851
  br i1 %tobool, label %if.then, label %if.end15, !dbg !855

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !856, metadata !DIExpression()), !dbg !858
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !859
  %client_tracking_prefixes1 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 68, !dbg !860
  %5 = load %struct.rax*, %struct.rax** %client_tracking_prefixes1, align 8, !dbg !860
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %5), !dbg !861
  %call = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !862
  br label %while.cond, !dbg !863

while.cond:                                       ; preds = %if.end, %if.then
  %call2 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !864
  %tobool3 = icmp ne i32 %call2, 0, !dbg !863
  br i1 %tobool3, label %while.body, label %while.end, !dbg !863

while.body:                                       ; preds = %while.cond
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !865
  %6 = load i8*, i8** %key, align 8, !dbg !865
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !868
  %7 = load i64, i64* %key_len, align 8, !dbg !868
  %8 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !869
  %9 = load i64, i64* %i, align 8, !dbg !870
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %9, !dbg !869
  %10 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !869
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i32 0, i32 2, !dbg !871
  %11 = load i8*, i8** %ptr, align 8, !dbg !871
  %12 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !872
  %13 = load i64, i64* %i, align 8, !dbg !873
  %arrayidx4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 %13, !dbg !872
  %14 = load %struct.redisObject*, %struct.redisObject** %arrayidx4, align 8, !dbg !872
  %ptr5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i32 0, i32 2, !dbg !874
  %15 = load i8*, i8** %ptr5, align 8, !dbg !874
  %call6 = call i64 @sdslen(i8* %15), !dbg !875
  %call7 = call i32 @stringCheckPrefix(i8* %6, i64 %7, i8* %11, i64 %call6), !dbg !876
  %tobool8 = icmp ne i32 %call7, 0, !dbg !876
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !877

if.then9:                                         ; preds = %while.body
  call void @llvm.dbg.declare(metadata i8** %collision, metadata !878, metadata !DIExpression()), !dbg !880
  %key10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !881
  %16 = load i8*, i8** %key10, align 8, !dbg !881
  %key_len11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !882
  %17 = load i64, i64* %key_len11, align 8, !dbg !882
  %call12 = call i8* @sdsnewlen(i8* %16, i64 %17), !dbg !883
  store i8* %call12, i8** %collision, align 8, !dbg !880
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !884
  %19 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !885
  %20 = load i64, i64* %i, align 8, !dbg !886
  %arrayidx13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %19, i64 %20, !dbg !885
  %21 = load %struct.redisObject*, %struct.redisObject** %arrayidx13, align 8, !dbg !885
  %ptr14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %21, i32 0, i32 2, !dbg !887
  %22 = load i8*, i8** %ptr14, align 8, !dbg !887
  %23 = load i8*, i8** %collision, align 8, !dbg !888
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %18, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i8* %22, i8* %23), !dbg !889
  %24 = load i8*, i8** %collision, align 8, !dbg !890
  call void @sdsfree(i8* %24), !dbg !891
  call void @raxStop(%struct.raxIterator* %ri), !dbg !892
  store i32 0, i32* %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !863, !llvm.loop !894

while.end:                                        ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !896
  br label %if.end15, !dbg !897

if.end15:                                         ; preds = %while.end, %for.body
  call void @llvm.dbg.declare(metadata i64* %j, metadata !898, metadata !DIExpression()), !dbg !900
  %25 = load i64, i64* %i, align 8, !dbg !901
  %add = add i64 %25, 1, !dbg !902
  store i64 %add, i64* %j, align 8, !dbg !900
  br label %for.cond16, !dbg !903

for.cond16:                                       ; preds = %for.inc, %if.end15
  %26 = load i64, i64* %j, align 8, !dbg !904
  %27 = load i64, i64* %numprefix.addr, align 8, !dbg !906
  %cmp17 = icmp ult i64 %26, %27, !dbg !907
  br i1 %cmp17, label %for.body18, label %for.end, !dbg !908

for.body18:                                       ; preds = %for.cond16
  %28 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !909
  %29 = load i64, i64* %i, align 8, !dbg !912
  %arrayidx19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %28, i64 %29, !dbg !909
  %30 = load %struct.redisObject*, %struct.redisObject** %arrayidx19, align 8, !dbg !909
  %ptr20 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %30, i32 0, i32 2, !dbg !913
  %31 = load i8*, i8** %ptr20, align 8, !dbg !913
  %32 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !914
  %33 = load i64, i64* %i, align 8, !dbg !915
  %arrayidx21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 %33, !dbg !914
  %34 = load %struct.redisObject*, %struct.redisObject** %arrayidx21, align 8, !dbg !914
  %ptr22 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i32 0, i32 2, !dbg !916
  %35 = load i8*, i8** %ptr22, align 8, !dbg !916
  %call23 = call i64 @sdslen(i8* %35), !dbg !917
  %36 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !918
  %37 = load i64, i64* %j, align 8, !dbg !919
  %arrayidx24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 %37, !dbg !918
  %38 = load %struct.redisObject*, %struct.redisObject** %arrayidx24, align 8, !dbg !918
  %ptr25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i32 0, i32 2, !dbg !920
  %39 = load i8*, i8** %ptr25, align 8, !dbg !920
  %40 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !921
  %41 = load i64, i64* %j, align 8, !dbg !922
  %arrayidx26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %40, i64 %41, !dbg !921
  %42 = load %struct.redisObject*, %struct.redisObject** %arrayidx26, align 8, !dbg !921
  %ptr27 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %42, i32 0, i32 2, !dbg !923
  %43 = load i8*, i8** %ptr27, align 8, !dbg !923
  %call28 = call i64 @sdslen(i8* %43), !dbg !924
  %call29 = call i32 @stringCheckPrefix(i8* %31, i64 %call23, i8* %39, i64 %call28), !dbg !925
  %tobool30 = icmp ne i32 %call29, 0, !dbg !925
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !926

if.then31:                                        ; preds = %for.body18
  %44 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !927
  %45 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !929
  %46 = load i64, i64* %i, align 8, !dbg !930
  %arrayidx32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %45, i64 %46, !dbg !929
  %47 = load %struct.redisObject*, %struct.redisObject** %arrayidx32, align 8, !dbg !929
  %ptr33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %47, i32 0, i32 2, !dbg !931
  %48 = load i8*, i8** %ptr33, align 8, !dbg !931
  %49 = load %struct.redisObject**, %struct.redisObject*** %prefixes.addr, align 8, !dbg !932
  %50 = load i64, i64* %j, align 8, !dbg !933
  %arrayidx34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 %50, !dbg !932
  %51 = load %struct.redisObject*, %struct.redisObject** %arrayidx34, align 8, !dbg !932
  %ptr35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i32 0, i32 2, !dbg !934
  %52 = load i8*, i8** %ptr35, align 8, !dbg !934
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %44, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i8* %48, i8* %52), !dbg !935
  %53 = load i64, i64* %i, align 8, !dbg !936
  %conv = trunc i64 %53 to i32, !dbg !936
  store i32 %conv, i32* %retval, align 4, !dbg !937
  br label %return, !dbg !937

if.end36:                                         ; preds = %for.body18
  br label %for.inc, !dbg !938

for.inc:                                          ; preds = %if.end36
  %54 = load i64, i64* %j, align 8, !dbg !939
  %inc = add i64 %54, 1, !dbg !939
  store i64 %inc, i64* %j, align 8, !dbg !939
  br label %for.cond16, !dbg !940, !llvm.loop !941

for.end:                                          ; preds = %for.cond16
  br label %for.inc37, !dbg !943

for.inc37:                                        ; preds = %for.end
  %55 = load i64, i64* %i, align 8, !dbg !944
  %inc38 = add i64 %55, 1, !dbg !944
  store i64 %inc38, i64* %i, align 8, !dbg !944
  br label %for.cond, !dbg !945, !llvm.loop !946

for.end39:                                        ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

return:                                           ; preds = %for.end39, %if.then31, %if.then9
  %56 = load i32, i32* %retval, align 4, !dbg !949
  ret i32 %56, !dbg !949
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @stringCheckPrefix(i8* %s1, i64 %s1_len, i8* %s2, i64 %s2_len) #0 !dbg !950 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1_len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2_len.addr = alloca i64, align 8
  %min_length = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !953, metadata !DIExpression()), !dbg !954
  store i64 %s1_len, i64* %s1_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s1_len.addr, metadata !955, metadata !DIExpression()), !dbg !956
  store i8* %s2, i8** %s2.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !957, metadata !DIExpression()), !dbg !958
  store i64 %s2_len, i64* %s2_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %s2_len.addr, metadata !959, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.declare(metadata i64* %min_length, metadata !961, metadata !DIExpression()), !dbg !962
  %0 = load i64, i64* %s1_len.addr, align 8, !dbg !963
  %1 = load i64, i64* %s2_len.addr, align 8, !dbg !964
  %cmp = icmp ult i64 %0, %1, !dbg !965
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !963

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %s1_len.addr, align 8, !dbg !966
  br label %cond.end, !dbg !963

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %s2_len.addr, align 8, !dbg !967
  br label %cond.end, !dbg !963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !963
  store i64 %cond, i64* %min_length, align 8, !dbg !962
  %4 = load i8*, i8** %s1.addr, align 8, !dbg !968
  %5 = load i8*, i8** %s2.addr, align 8, !dbg !969
  %6 = load i64, i64* %min_length, align 8, !dbg !970
  %call = call i32 @memcmp(i8* %4, i8* %5, i64 %6) #6, !dbg !971
  %cmp1 = icmp eq i32 %call, 0, !dbg !972
  %conv = zext i1 %cmp1 to i32, !dbg !972
  ret i32 %conv, !dbg !973
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !974 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !978, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !980, metadata !DIExpression()), !dbg !981
  %0 = load i8*, i8** %s.addr, align 8, !dbg !982
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !982
  %1 = load i8, i8* %arrayidx, align 1, !dbg !982
  store i8 %1, i8* %flags, align 1, !dbg !981
  %2 = load i8, i8* %flags, align 1, !dbg !983
  %conv = zext i8 %2 to i32, !dbg !983
  %and = and i32 %conv, 7, !dbg !984
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !985

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !986
  %conv1 = zext i8 %3 to i32, !dbg !986
  %shr = ashr i32 %conv1, 3, !dbg !986
  %conv2 = sext i32 %shr to i64, !dbg !986
  store i64 %conv2, i64* %retval, align 8, !dbg !988
  br label %return, !dbg !988

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !989
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !989
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !990
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !990
  %6 = load i8, i8* %len, align 1, !dbg !990
  %conv4 = zext i8 %6 to i64, !dbg !989
  store i64 %conv4, i64* %retval, align 8, !dbg !991
  br label %return, !dbg !991

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !992
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !992
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !993
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !993
  %9 = load i16, i16* %len7, align 1, !dbg !993
  %conv8 = zext i16 %9 to i64, !dbg !992
  store i64 %conv8, i64* %retval, align 8, !dbg !994
  br label %return, !dbg !994

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !995
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !995
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !996
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !996
  %12 = load i32, i32* %len11, align 1, !dbg !996
  %conv12 = zext i32 %12 to i64, !dbg !995
  store i64 %conv12, i64* %retval, align 8, !dbg !997
  br label %return, !dbg !997

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !998
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !998
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !999
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !999
  %15 = load i64, i64* %len15, align 1, !dbg !999
  store i64 %15, i64* %retval, align 8, !dbg !1000
  br label %return, !dbg !1000

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1001
  br label %return, !dbg !1001

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1002
  ret i64 %16, !dbg !1002
}

declare dso_local i8* @sdsnewlen(i8*, i64) #2

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #2

declare dso_local void @sdsfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @enableBcastTrackingForPrefix(%struct.client* %c, i8* %prefix, i64 %plen) #0 !dbg !1003 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %prefix.addr = alloca i8*, align 8
  %plen.addr = alloca i64, align 8
  %bs = alloca %struct.bcastState*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  store i64 %plen, i64* %plen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %plen.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata %struct.bcastState** %bs, metadata !1012, metadata !DIExpression()), !dbg !1013
  %0 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !1014
  %1 = load i8*, i8** %prefix.addr, align 8, !dbg !1015
  %2 = load i64, i64* %plen.addr, align 8, !dbg !1016
  %call = call i8* @raxFind(%struct.rax* %0, i8* %1, i64 %2), !dbg !1017
  %3 = bitcast i8* %call to %struct.bcastState*, !dbg !1017
  store %struct.bcastState* %3, %struct.bcastState** %bs, align 8, !dbg !1013
  %4 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1018
  %5 = load i8*, i8** @raxNotFound, align 8, !dbg !1020
  %6 = bitcast i8* %5 to %struct.bcastState*, !dbg !1020
  %cmp = icmp eq %struct.bcastState* %4, %6, !dbg !1021
  br i1 %cmp, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  %call1 = call i8* @zmalloc(i64 16), !dbg !1023
  %7 = bitcast i8* %call1 to %struct.bcastState*, !dbg !1023
  store %struct.bcastState* %7, %struct.bcastState** %bs, align 8, !dbg !1025
  %call2 = call %struct.rax* @raxNew(), !dbg !1026
  %8 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1027
  %keys = getelementptr inbounds %struct.bcastState, %struct.bcastState* %8, i32 0, i32 0, !dbg !1028
  store %struct.rax* %call2, %struct.rax** %keys, align 8, !dbg !1029
  %call3 = call %struct.rax* @raxNew(), !dbg !1030
  %9 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1031
  %clients = getelementptr inbounds %struct.bcastState, %struct.bcastState* %9, i32 0, i32 1, !dbg !1032
  store %struct.rax* %call3, %struct.rax** %clients, align 8, !dbg !1033
  %10 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !1034
  %11 = load i8*, i8** %prefix.addr, align 8, !dbg !1035
  %12 = load i64, i64* %plen.addr, align 8, !dbg !1036
  %13 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1037
  %14 = bitcast %struct.bcastState* %13 to i8*, !dbg !1037
  %call4 = call i32 @raxInsert(%struct.rax* %10, i8* %11, i64 %12, i8* %14, i8** null), !dbg !1038
  br label %if.end, !dbg !1039

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1040
  %clients5 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %15, i32 0, i32 1, !dbg !1042
  %16 = load %struct.rax*, %struct.rax** %clients5, align 8, !dbg !1042
  %17 = bitcast %struct.client** %c.addr to i8*, !dbg !1043
  %call6 = call i32 @raxTryInsert(%struct.rax* %16, i8* %17, i64 8, i8* null, i8** null), !dbg !1044
  %tobool = icmp ne i32 %call6, 0, !dbg !1044
  br i1 %tobool, label %if.then7, label %if.end15, !dbg !1045

if.then7:                                         ; preds = %if.end
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1046
  %client_tracking_prefixes = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 68, !dbg !1049
  %19 = load %struct.rax*, %struct.rax** %client_tracking_prefixes, align 8, !dbg !1049
  %cmp8 = icmp eq %struct.rax* %19, null, !dbg !1050
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !1051

if.then9:                                         ; preds = %if.then7
  %call10 = call %struct.rax* @raxNew(), !dbg !1052
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1053
  %client_tracking_prefixes11 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 68, !dbg !1054
  store %struct.rax* %call10, %struct.rax** %client_tracking_prefixes11, align 8, !dbg !1055
  br label %if.end12, !dbg !1053

if.end12:                                         ; preds = %if.then9, %if.then7
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1056
  %client_tracking_prefixes13 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 68, !dbg !1057
  %22 = load %struct.rax*, %struct.rax** %client_tracking_prefixes13, align 8, !dbg !1057
  %23 = load i8*, i8** %prefix.addr, align 8, !dbg !1058
  %24 = load i64, i64* %plen.addr, align 8, !dbg !1059
  %call14 = call i32 @raxInsert(%struct.rax* %22, i8* %23, i64 %24, i8* null, i8** null), !dbg !1060
  br label %if.end15, !dbg !1061

if.end15:                                         ; preds = %if.end12, %if.end
  ret void, !dbg !1062
}

declare dso_local i8* @zmalloc(i64) #2

declare dso_local %struct.rax* @raxNew() #2

declare dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) #2

declare dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @enableTracking(%struct.client* %c, i64 %redirect_to, i64 %options, %struct.redisObject** %prefix, i64 %numprefix) #0 !dbg !1063 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %redirect_to.addr = alloca i64, align 8
  %options.addr = alloca i64, align 8
  %prefix.addr = alloca %struct.redisObject**, align 8
  %numprefix.addr = alloca i64, align 8
  %j = alloca i64, align 8
  %sdsprefix = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  store i64 %redirect_to, i64* %redirect_to.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %redirect_to.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  store i64 %options, i64* %options.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %options.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  store %struct.redisObject** %prefix, %struct.redisObject*** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %prefix.addr, metadata !1072, metadata !DIExpression()), !dbg !1073
  store i64 %numprefix, i64* %numprefix.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numprefix.addr, metadata !1074, metadata !DIExpression()), !dbg !1075
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1076
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !1078
  %1 = load i64, i64* %flags, align 8, !dbg !1078
  %and = and i64 %1, 2147483648, !dbg !1079
  %tobool = icmp ne i64 %and, 0, !dbg !1079
  br i1 %tobool, label %if.end, label %if.then, !dbg !1080

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !1081
  %inc = add i32 %2, 1, !dbg !1081
  store i32 %inc, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !1081
  br label %if.end, !dbg !1082

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1083
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 1, !dbg !1084
  %4 = load i64, i64* %flags1, align 8, !dbg !1085
  %or = or i64 %4, 2147483648, !dbg !1085
  store i64 %or, i64* %flags1, align 8, !dbg !1085
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1086
  %flags2 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !1087
  %6 = load i64, i64* %flags2, align 8, !dbg !1088
  %and3 = and i64 %6, -201863462913, !dbg !1088
  store i64 %and3, i64* %flags2, align 8, !dbg !1088
  %7 = load i64, i64* %redirect_to.addr, align 8, !dbg !1089
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1090
  %client_tracking_redirection = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 67, !dbg !1091
  store i64 %7, i64* %client_tracking_redirection, align 8, !dbg !1092
  %9 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1093
  %cmp = icmp eq %struct.rax* %9, null, !dbg !1095
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !1096

if.then4:                                         ; preds = %if.end
  %call = call %struct.rax* @raxNew(), !dbg !1097
  store %struct.rax* %call, %struct.rax** @TrackingTable, align 8, !dbg !1099
  %call5 = call %struct.rax* @raxNew(), !dbg !1100
  store %struct.rax* %call5, %struct.rax** @PrefixTable, align 8, !dbg !1101
  %call6 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 20), !dbg !1102
  store %struct.redisObject* %call6, %struct.redisObject** @TrackingChannelName, align 8, !dbg !1103
  br label %if.end7, !dbg !1104

if.end7:                                          ; preds = %if.then4, %if.end
  %10 = load i64, i64* %options.addr, align 8, !dbg !1105
  %and8 = and i64 %10, 8589934592, !dbg !1107
  %tobool9 = icmp ne i64 %and8, 0, !dbg !1107
  br i1 %tobool9, label %if.then10, label %if.end19, !dbg !1108

if.then10:                                        ; preds = %if.end7
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1109
  %flags11 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 1, !dbg !1111
  %12 = load i64, i64* %flags11, align 8, !dbg !1112
  %or12 = or i64 %12, 8589934592, !dbg !1112
  store i64 %or12, i64* %flags11, align 8, !dbg !1112
  %13 = load i64, i64* %numprefix.addr, align 8, !dbg !1113
  %cmp13 = icmp eq i64 %13, 0, !dbg !1115
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !1116

if.then14:                                        ; preds = %if.then10
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1117
  call void @enableBcastTrackingForPrefix(%struct.client* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i64 0), !dbg !1118
  br label %if.end15, !dbg !1118

if.end15:                                         ; preds = %if.then14, %if.then10
  call void @llvm.dbg.declare(metadata i64* %j, metadata !1119, metadata !DIExpression()), !dbg !1121
  store i64 0, i64* %j, align 8, !dbg !1121
  br label %for.cond, !dbg !1122

for.cond:                                         ; preds = %for.inc, %if.end15
  %15 = load i64, i64* %j, align 8, !dbg !1123
  %16 = load i64, i64* %numprefix.addr, align 8, !dbg !1125
  %cmp16 = icmp ult i64 %15, %16, !dbg !1126
  br i1 %cmp16, label %for.body, label %for.end, !dbg !1127

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %sdsprefix, metadata !1128, metadata !DIExpression()), !dbg !1130
  %17 = load %struct.redisObject**, %struct.redisObject*** %prefix.addr, align 8, !dbg !1131
  %18 = load i64, i64* %j, align 8, !dbg !1132
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %18, !dbg !1131
  %19 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1131
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i32 0, i32 2, !dbg !1133
  %20 = load i8*, i8** %ptr, align 8, !dbg !1133
  store i8* %20, i8** %sdsprefix, align 8, !dbg !1130
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1134
  %22 = load i8*, i8** %sdsprefix, align 8, !dbg !1135
  %23 = load i8*, i8** %sdsprefix, align 8, !dbg !1136
  %call17 = call i64 @sdslen(i8* %23), !dbg !1137
  call void @enableBcastTrackingForPrefix(%struct.client* %21, i8* %22, i64 %call17), !dbg !1138
  br label %for.inc, !dbg !1139

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %j, align 8, !dbg !1140
  %inc18 = add i64 %24, 1, !dbg !1140
  store i64 %inc18, i64* %j, align 8, !dbg !1140
  br label %for.cond, !dbg !1141, !llvm.loop !1142

for.end:                                          ; preds = %for.cond
  br label %if.end19, !dbg !1144

if.end19:                                         ; preds = %for.end, %if.end7
  %25 = load i64, i64* %options.addr, align 8, !dbg !1145
  %and20 = and i64 %25, 188978561024, !dbg !1146
  %26 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1147
  %flags21 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 1, !dbg !1148
  %27 = load i64, i64* %flags21, align 8, !dbg !1149
  %or22 = or i64 %27, %and20, !dbg !1149
  store i64 %or22, i64* %flags21, align 8, !dbg !1149
  ret void, !dbg !1150
}

declare dso_local %struct.redisObject* @createStringObject(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingRememberKeys(%struct.client* %c) #0 !dbg !1151 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %optin = alloca i64, align 8
  %optout = alloca i64, align 8
  %caching_given = alloca i64, align 8
  %result = alloca %struct.getKeysResult, align 8
  %numkeys = alloca i32, align 4
  %keys = alloca %struct.keyReference*, align 8
  %j = alloca i32, align 4
  %idx = alloca i32, align 4
  %sdskey = alloca i8*, align 8
  %ids = alloca %struct.rax*, align 8
  %inserted = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata i64* %optin, metadata !1154, metadata !DIExpression()), !dbg !1155
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1156
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !1157
  %1 = load i64, i64* %flags, align 8, !dbg !1157
  %and = and i64 %1, 17179869184, !dbg !1158
  store i64 %and, i64* %optin, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata i64* %optout, metadata !1159, metadata !DIExpression()), !dbg !1160
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1161
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !1162
  %3 = load i64, i64* %flags1, align 8, !dbg !1162
  %and2 = and i64 %3, 34359738368, !dbg !1163
  store i64 %and2, i64* %optout, align 8, !dbg !1160
  call void @llvm.dbg.declare(metadata i64* %caching_given, metadata !1164, metadata !DIExpression()), !dbg !1165
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1166
  %flags3 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1, !dbg !1167
  %5 = load i64, i64* %flags3, align 8, !dbg !1167
  %and4 = and i64 %5, 68719476736, !dbg !1168
  store i64 %and4, i64* %caching_given, align 8, !dbg !1165
  %6 = load i64, i64* %optin, align 8, !dbg !1169
  %tobool = icmp ne i64 %6, 0, !dbg !1169
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false, !dbg !1171

land.lhs.true:                                    ; preds = %entry
  %7 = load i64, i64* %caching_given, align 8, !dbg !1172
  %tobool5 = icmp ne i64 %7, 0, !dbg !1172
  br i1 %tobool5, label %lor.lhs.false, label %if.then, !dbg !1173

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %8 = load i64, i64* %optout, align 8, !dbg !1174
  %tobool6 = icmp ne i64 %8, 0, !dbg !1174
  br i1 %tobool6, label %land.lhs.true7, label %if.end, !dbg !1175

land.lhs.true7:                                   ; preds = %lor.lhs.false
  %9 = load i64, i64* %caching_given, align 8, !dbg !1176
  %tobool8 = icmp ne i64 %9, 0, !dbg !1176
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1177

if.then:                                          ; preds = %land.lhs.true7, %land.lhs.true
  br label %return, !dbg !1178

if.end:                                           ; preds = %land.lhs.true7, %lor.lhs.false
  call void @llvm.dbg.declare(metadata %struct.getKeysResult* %result, metadata !1179, metadata !DIExpression()), !dbg !1180
  %10 = bitcast %struct.getKeysResult* %result to i8*, !dbg !1180
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 2064, i1 false), !dbg !1180
  %11 = bitcast i8* %10 to %struct.getKeysResult*, !dbg !1180
  %12 = getelementptr inbounds %struct.getKeysResult, %struct.getKeysResult* %11, i32 0, i32 3, !dbg !1180
  store i32 256, i32* %12, align 4, !dbg !1180
  call void @llvm.dbg.declare(metadata i32* %numkeys, metadata !1181, metadata !DIExpression()), !dbg !1182
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1183
  %cmd = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 15, !dbg !1184
  %14 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1184
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1185
  %argv = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 10, !dbg !1186
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1186
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1187
  %argc = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 9, !dbg !1188
  %18 = load i32, i32* %argc, align 8, !dbg !1188
  %call = call i32 @getKeysFromCommand(%struct.redisCommand* %14, %struct.redisObject** %16, i32 %18, %struct.getKeysResult* %result), !dbg !1189
  store i32 %call, i32* %numkeys, align 4, !dbg !1182
  %19 = load i32, i32* %numkeys, align 4, !dbg !1190
  %tobool9 = icmp ne i32 %19, 0, !dbg !1190
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1192

if.then10:                                        ; preds = %if.end
  call void @getKeysFreeResult(%struct.getKeysResult* %result), !dbg !1193
  br label %return, !dbg !1195

if.end11:                                         ; preds = %if.end
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1196
  %cmd12 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 15, !dbg !1198
  %21 = load %struct.redisCommand*, %struct.redisCommand** %cmd12, align 8, !dbg !1198
  %flags13 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %21, i32 0, i32 12, !dbg !1199
  %22 = load i64, i64* %flags13, align 8, !dbg !1199
  %and14 = and i64 %22, 32, !dbg !1200
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1200
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1201

if.then16:                                        ; preds = %if.end11
  br label %return, !dbg !1202

if.end17:                                         ; preds = %if.end11
  call void @llvm.dbg.declare(metadata %struct.keyReference** %keys, metadata !1204, metadata !DIExpression()), !dbg !1205
  %keys18 = getelementptr inbounds %struct.getKeysResult, %struct.getKeysResult* %result, i32 0, i32 1, !dbg !1206
  %23 = load %struct.keyReference*, %struct.keyReference** %keys18, align 8, !dbg !1206
  store %struct.keyReference* %23, %struct.keyReference** %keys, align 8, !dbg !1205
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1207, metadata !DIExpression()), !dbg !1209
  store i32 0, i32* %j, align 4, !dbg !1209
  br label %for.cond, !dbg !1210

for.cond:                                         ; preds = %for.inc, %if.end17
  %24 = load i32, i32* %j, align 4, !dbg !1211
  %25 = load i32, i32* %numkeys, align 4, !dbg !1213
  %cmp = icmp slt i32 %24, %25, !dbg !1214
  br i1 %cmp, label %for.body, label %for.end, !dbg !1215

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !1216, metadata !DIExpression()), !dbg !1218
  %26 = load %struct.keyReference*, %struct.keyReference** %keys, align 8, !dbg !1219
  %27 = load i32, i32* %j, align 4, !dbg !1220
  %idxprom = sext i32 %27 to i64, !dbg !1219
  %arrayidx = getelementptr inbounds %struct.keyReference, %struct.keyReference* %26, i64 %idxprom, !dbg !1219
  %pos = getelementptr inbounds %struct.keyReference, %struct.keyReference* %arrayidx, i32 0, i32 0, !dbg !1221
  %28 = load i32, i32* %pos, align 4, !dbg !1221
  store i32 %28, i32* %idx, align 4, !dbg !1218
  call void @llvm.dbg.declare(metadata i8** %sdskey, metadata !1222, metadata !DIExpression()), !dbg !1223
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1224
  %argv19 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 10, !dbg !1225
  %30 = load %struct.redisObject**, %struct.redisObject*** %argv19, align 8, !dbg !1225
  %31 = load i32, i32* %idx, align 4, !dbg !1226
  %idxprom20 = sext i32 %31 to i64, !dbg !1224
  %arrayidx21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 %idxprom20, !dbg !1224
  %32 = load %struct.redisObject*, %struct.redisObject** %arrayidx21, align 8, !dbg !1224
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i32 0, i32 2, !dbg !1227
  %33 = load i8*, i8** %ptr, align 8, !dbg !1227
  store i8* %33, i8** %sdskey, align 8, !dbg !1223
  call void @llvm.dbg.declare(metadata %struct.rax** %ids, metadata !1228, metadata !DIExpression()), !dbg !1229
  %34 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1230
  %35 = load i8*, i8** %sdskey, align 8, !dbg !1231
  %36 = load i8*, i8** %sdskey, align 8, !dbg !1232
  %call22 = call i64 @sdslen(i8* %36), !dbg !1233
  %call23 = call i8* @raxFind(%struct.rax* %34, i8* %35, i64 %call22), !dbg !1234
  %37 = bitcast i8* %call23 to %struct.rax*, !dbg !1234
  store %struct.rax* %37, %struct.rax** %ids, align 8, !dbg !1229
  %38 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1235
  %39 = load i8*, i8** @raxNotFound, align 8, !dbg !1237
  %40 = bitcast i8* %39 to %struct.rax*, !dbg !1237
  %cmp24 = icmp eq %struct.rax* %38, %40, !dbg !1238
  br i1 %cmp24, label %if.then25, label %if.end30, !dbg !1239

if.then25:                                        ; preds = %for.body
  %call26 = call %struct.rax* @raxNew(), !dbg !1240
  store %struct.rax* %call26, %struct.rax** %ids, align 8, !dbg !1242
  call void @llvm.dbg.declare(metadata i32* %inserted, metadata !1243, metadata !DIExpression()), !dbg !1244
  %41 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1245
  %42 = load i8*, i8** %sdskey, align 8, !dbg !1246
  %43 = load i8*, i8** %sdskey, align 8, !dbg !1247
  %call27 = call i64 @sdslen(i8* %43), !dbg !1248
  %44 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1249
  %45 = bitcast %struct.rax* %44 to i8*, !dbg !1249
  %call28 = call i32 @raxTryInsert(%struct.rax* %41, i8* %42, i64 %call27, i8* %45, i8** null), !dbg !1250
  store i32 %call28, i32* %inserted, align 4, !dbg !1244
  %46 = load i32, i32* %inserted, align 4, !dbg !1251
  %cmp29 = icmp eq i32 %46, 1, !dbg !1251
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !1251

cond.true:                                        ; preds = %if.then25
  br label %cond.end, !dbg !1251

cond.false:                                       ; preds = %if.then25
  call void @_serverAssert(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 248), !dbg !1251
  unreachable, !dbg !1251

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1251

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  br label %if.end30, !dbg !1252

if.end30:                                         ; preds = %cond.end, %for.body
  %47 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1253
  %48 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1255
  %id = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 0, !dbg !1256
  %49 = bitcast i64* %id to i8*, !dbg !1257
  %call31 = call i32 @raxTryInsert(%struct.rax* %47, i8* %49, i64 8, i8* null, i8** null), !dbg !1258
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1258
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1259

if.then33:                                        ; preds = %if.end30
  %50 = load i64, i64* @TrackingTableTotalItems, align 8, !dbg !1260
  %inc = add i64 %50, 1, !dbg !1260
  store i64 %inc, i64* @TrackingTableTotalItems, align 8, !dbg !1260
  br label %if.end34, !dbg !1261

if.end34:                                         ; preds = %if.then33, %if.end30
  br label %for.inc, !dbg !1262

for.inc:                                          ; preds = %if.end34
  %51 = load i32, i32* %j, align 4, !dbg !1263
  %inc35 = add nsw i32 %51, 1, !dbg !1263
  store i32 %inc35, i32* %j, align 4, !dbg !1263
  br label %for.cond, !dbg !1264, !llvm.loop !1265

for.end:                                          ; preds = %for.cond
  call void @getKeysFreeResult(%struct.getKeysResult* %result), !dbg !1267
  br label %return, !dbg !1268

return:                                           ; preds = %for.end, %if.then16, %if.then10, %if.then
  ret void, !dbg !1268
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @getKeysFromCommand(%struct.redisCommand*, %struct.redisObject**, i32, %struct.getKeysResult*) #2

declare dso_local void @getKeysFreeResult(%struct.getKeysResult*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sendTrackingMessage(%struct.client* %c, i8* %keyname, i64 %keylen, i32 %proto) #0 !dbg !1269 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %keyname.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %proto.addr = alloca i32, align 4
  %old_flags = alloca i64, align 8
  %using_redirection = alloca i32, align 4
  %redir = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8* %keyname, i8** %keyname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %keyname.addr, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i64 %keylen, i64* %keylen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %keylen.addr, metadata !1276, metadata !DIExpression()), !dbg !1277
  store i32 %proto, i32* %proto.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %proto.addr, metadata !1278, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.declare(metadata i64* %old_flags, metadata !1280, metadata !DIExpression()), !dbg !1281
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1282
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !1283
  %1 = load i64, i64* %flags, align 8, !dbg !1283
  store i64 %1, i64* %old_flags, align 8, !dbg !1281
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1284
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !1285
  %3 = load i64, i64* %flags1, align 8, !dbg !1286
  %or = or i64 %3, 17592186044416, !dbg !1286
  store i64 %or, i64* %flags1, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i32* %using_redirection, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i32 0, i32* %using_redirection, align 4, !dbg !1288
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1289
  %client_tracking_redirection = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 67, !dbg !1291
  %5 = load i64, i64* %client_tracking_redirection, align 8, !dbg !1291
  %tobool = icmp ne i64 %5, 0, !dbg !1289
  br i1 %tobool, label %if.then, label %if.end24, !dbg !1292

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.client** %redir, metadata !1293, metadata !DIExpression()), !dbg !1295
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1296
  %client_tracking_redirection2 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 67, !dbg !1297
  %7 = load i64, i64* %client_tracking_redirection2, align 8, !dbg !1297
  %call = call %struct.client* @lookupClientByID(i64 %7), !dbg !1298
  store %struct.client* %call, %struct.client** %redir, align 8, !dbg !1295
  %8 = load %struct.client*, %struct.client** %redir, align 8, !dbg !1299
  %tobool3 = icmp ne %struct.client* %8, null, !dbg !1299
  br i1 %tobool3, label %if.end14, label %if.then4, !dbg !1301

if.then4:                                         ; preds = %if.then
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1302
  %flags5 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 1, !dbg !1304
  %10 = load i64, i64* %flags5, align 8, !dbg !1305
  %or6 = or i64 %10, 4294967296, !dbg !1305
  store i64 %or6, i64* %flags5, align 8, !dbg !1305
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1306
  %resp = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 3, !dbg !1308
  %12 = load i32, i32* %resp, align 8, !dbg !1308
  %cmp = icmp sgt i32 %12, 2, !dbg !1309
  br i1 %cmp, label %if.then7, label %if.end, !dbg !1310

if.then7:                                         ; preds = %if.then4
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1311
  call void @addReplyPushLen(%struct.client* %13, i64 2), !dbg !1313
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1314
  call void @addReplyBulkCBuffer(%struct.client* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i64 21), !dbg !1315
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1316
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1317
  %client_tracking_redirection8 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 67, !dbg !1318
  %17 = load i64, i64* %client_tracking_redirection8, align 8, !dbg !1318
  call void @addReplyLongLong(%struct.client* %15, i64 %17), !dbg !1319
  br label %if.end, !dbg !1320

if.end:                                           ; preds = %if.then7, %if.then4
  %18 = load i64, i64* %old_flags, align 8, !dbg !1321
  %and = and i64 %18, 17592186044416, !dbg !1323
  %tobool9 = icmp ne i64 %and, 0, !dbg !1323
  br i1 %tobool9, label %if.end13, label %if.then10, !dbg !1324

if.then10:                                        ; preds = %if.end
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1325
  %flags11 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 1, !dbg !1326
  %20 = load i64, i64* %flags11, align 8, !dbg !1327
  %and12 = and i64 %20, -17592186044417, !dbg !1327
  store i64 %and12, i64* %flags11, align 8, !dbg !1327
  br label %if.end13, !dbg !1325

if.end13:                                         ; preds = %if.then10, %if.end
  br label %if.end52, !dbg !1328

if.end14:                                         ; preds = %if.then
  %21 = load i64, i64* %old_flags, align 8, !dbg !1329
  %and15 = and i64 %21, 17592186044416, !dbg !1331
  %tobool16 = icmp ne i64 %and15, 0, !dbg !1331
  br i1 %tobool16, label %if.end20, label %if.then17, !dbg !1332

if.then17:                                        ; preds = %if.end14
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1333
  %flags18 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 1, !dbg !1334
  %23 = load i64, i64* %flags18, align 8, !dbg !1335
  %and19 = and i64 %23, -17592186044417, !dbg !1335
  store i64 %and19, i64* %flags18, align 8, !dbg !1335
  br label %if.end20, !dbg !1333

if.end20:                                         ; preds = %if.then17, %if.end14
  %24 = load %struct.client*, %struct.client** %redir, align 8, !dbg !1336
  store %struct.client* %24, %struct.client** %c.addr, align 8, !dbg !1337
  store i32 1, i32* %using_redirection, align 4, !dbg !1338
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1339
  %flags21 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 1, !dbg !1340
  %26 = load i64, i64* %flags21, align 8, !dbg !1340
  store i64 %26, i64* %old_flags, align 8, !dbg !1341
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1342
  %flags22 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 1, !dbg !1343
  %28 = load i64, i64* %flags22, align 8, !dbg !1344
  %or23 = or i64 %28, 17592186044416, !dbg !1344
  store i64 %or23, i64* %flags22, align 8, !dbg !1344
  br label %if.end24, !dbg !1345

if.end24:                                         ; preds = %if.end20, %entry
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1346
  %resp25 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 3, !dbg !1348
  %30 = load i32, i32* %resp25, align 8, !dbg !1348
  %cmp26 = icmp sgt i32 %30, 2, !dbg !1349
  br i1 %cmp26, label %if.then27, label %if.else, !dbg !1350

if.then27:                                        ; preds = %if.end24
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1351
  call void @addReplyPushLen(%struct.client* %31, i64 2), !dbg !1353
  %32 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1354
  call void @addReplyBulkCBuffer(%struct.client* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i64 10), !dbg !1355
  br label %if.end41, !dbg !1356

if.else:                                          ; preds = %if.end24
  %33 = load i32, i32* %using_redirection, align 4, !dbg !1357
  %tobool28 = icmp ne i32 %33, 0, !dbg !1357
  br i1 %tobool28, label %land.lhs.true, label %if.else33, !dbg !1359

land.lhs.true:                                    ; preds = %if.else
  %34 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1360
  %flags29 = getelementptr inbounds %struct.client, %struct.client* %34, i32 0, i32 1, !dbg !1361
  %35 = load i64, i64* %flags29, align 8, !dbg !1361
  %and30 = and i64 %35, 262144, !dbg !1362
  %tobool31 = icmp ne i64 %and30, 0, !dbg !1362
  br i1 %tobool31, label %if.then32, label %if.else33, !dbg !1363

if.then32:                                        ; preds = %land.lhs.true
  %36 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1364
  %37 = load %struct.redisObject*, %struct.redisObject** @TrackingChannelName, align 8, !dbg !1366
  %38 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 33), align 8, !dbg !1367
  call void @addReplyPubsubMessage(%struct.client* %36, %struct.redisObject* %37, %struct.redisObject* null, %struct.redisObject* %38), !dbg !1368
  br label %if.end40, !dbg !1369

if.else33:                                        ; preds = %land.lhs.true, %if.else
  %39 = load i64, i64* %old_flags, align 8, !dbg !1370
  %and34 = and i64 %39, 17592186044416, !dbg !1373
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1373
  br i1 %tobool35, label %if.end39, label %if.then36, !dbg !1374

if.then36:                                        ; preds = %if.else33
  %40 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1375
  %flags37 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 1, !dbg !1376
  %41 = load i64, i64* %flags37, align 8, !dbg !1377
  %and38 = and i64 %41, -17592186044417, !dbg !1377
  store i64 %and38, i64* %flags37, align 8, !dbg !1377
  br label %if.end39, !dbg !1375

if.end39:                                         ; preds = %if.then36, %if.else33
  br label %if.end52, !dbg !1378

if.end40:                                         ; preds = %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then27
  %42 = load i32, i32* %proto.addr, align 4, !dbg !1379
  %tobool42 = icmp ne i32 %42, 0, !dbg !1379
  br i1 %tobool42, label %if.then43, label %if.else44, !dbg !1381

if.then43:                                        ; preds = %if.end41
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1382
  %44 = load i8*, i8** %keyname.addr, align 8, !dbg !1384
  %45 = load i64, i64* %keylen.addr, align 8, !dbg !1385
  call void @addReplyProto(%struct.client* %43, i8* %44, i64 %45), !dbg !1386
  br label %if.end45, !dbg !1387

if.else44:                                        ; preds = %if.end41
  %46 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1388
  call void @addReplyArrayLen(%struct.client* %46, i64 1), !dbg !1390
  %47 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1391
  %48 = load i8*, i8** %keyname.addr, align 8, !dbg !1392
  %49 = load i64, i64* %keylen.addr, align 8, !dbg !1393
  call void @addReplyBulkCBuffer(%struct.client* %47, i8* %48, i64 %49), !dbg !1394
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1395
  %call46 = call i32 @updateClientMemUsageAndBucket(%struct.client* %50), !dbg !1396
  %51 = load i64, i64* %old_flags, align 8, !dbg !1397
  %and47 = and i64 %51, 17592186044416, !dbg !1399
  %tobool48 = icmp ne i64 %and47, 0, !dbg !1399
  br i1 %tobool48, label %if.end52, label %if.then49, !dbg !1400

if.then49:                                        ; preds = %if.end45
  %52 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1401
  %flags50 = getelementptr inbounds %struct.client, %struct.client* %52, i32 0, i32 1, !dbg !1402
  %53 = load i64, i64* %flags50, align 8, !dbg !1403
  %and51 = and i64 %53, -17592186044417, !dbg !1403
  store i64 %and51, i64* %flags50, align 8, !dbg !1403
  br label %if.end52, !dbg !1401

if.end52:                                         ; preds = %if.end13, %if.end39, %if.then49, %if.end45
  ret void, !dbg !1404
}

declare dso_local %struct.client* @lookupClientByID(i64) #2

declare dso_local void @addReplyPushLen(%struct.client*, i64) #2

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

declare dso_local void @addReplyPubsubMessage(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*) #2

declare dso_local void @addReplyProto(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #2

declare dso_local i32 @updateClientMemUsageAndBucket(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingRememberKeyToBroadcast(%struct.client* %c, i8* %keyname, i64 %keylen) #0 !dbg !1405 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %keyname.addr = alloca i8*, align 8
  %keylen.addr = alloca i64, align 8
  %ri = alloca %struct.raxIterator, align 8
  %bs = alloca %struct.bcastState*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1406, metadata !DIExpression()), !dbg !1407
  store i8* %keyname, i8** %keyname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %keyname.addr, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i64 %keylen, i64* %keylen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %keylen.addr, metadata !1410, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !1412, metadata !DIExpression()), !dbg !1413
  %0 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !1414
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %0), !dbg !1415
  %call = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1416
  br label %while.cond, !dbg !1417

while.cond:                                       ; preds = %if.end8, %if.then7, %if.then, %entry
  %call1 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !1418
  %tobool = icmp ne i32 %call1, 0, !dbg !1417
  br i1 %tobool, label %while.body, label %while.end, !dbg !1417

while.body:                                       ; preds = %while.cond
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1419
  %1 = load i64, i64* %key_len, align 8, !dbg !1419
  %2 = load i64, i64* %keylen.addr, align 8, !dbg !1422
  %cmp = icmp ugt i64 %1, %2, !dbg !1423
  br i1 %cmp, label %if.then, label %if.end, !dbg !1424

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !1425, !llvm.loop !1426

if.end:                                           ; preds = %while.body
  %key_len2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1428
  %3 = load i64, i64* %key_len2, align 8, !dbg !1428
  %cmp3 = icmp ne i64 %3, 0, !dbg !1430
  br i1 %cmp3, label %land.lhs.true, label %if.end8, !dbg !1431

land.lhs.true:                                    ; preds = %if.end
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !1432
  %4 = load i8*, i8** %key, align 8, !dbg !1432
  %5 = load i8*, i8** %keyname.addr, align 8, !dbg !1433
  %key_len4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1434
  %6 = load i64, i64* %key_len4, align 8, !dbg !1434
  %call5 = call i32 @memcmp(i8* %4, i8* %5, i64 %6) #6, !dbg !1435
  %cmp6 = icmp ne i32 %call5, 0, !dbg !1436
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1437

if.then7:                                         ; preds = %land.lhs.true
  br label %while.cond, !dbg !1438, !llvm.loop !1426

if.end8:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.dbg.declare(metadata %struct.bcastState** %bs, metadata !1439, metadata !DIExpression()), !dbg !1440
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 3, !dbg !1441
  %7 = load i8*, i8** %data, align 8, !dbg !1441
  %8 = bitcast i8* %7 to %struct.bcastState*, !dbg !1442
  store %struct.bcastState* %8, %struct.bcastState** %bs, align 8, !dbg !1440
  %9 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1443
  %keys = getelementptr inbounds %struct.bcastState, %struct.bcastState* %9, i32 0, i32 0, !dbg !1444
  %10 = load %struct.rax*, %struct.rax** %keys, align 8, !dbg !1444
  %11 = load i8*, i8** %keyname.addr, align 8, !dbg !1445
  %12 = load i64, i64* %keylen.addr, align 8, !dbg !1446
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1447
  %14 = bitcast %struct.client* %13 to i8*, !dbg !1447
  %call9 = call i32 @raxInsert(%struct.rax* %10, i8* %11, i64 %12, i8* %14, i8** null), !dbg !1448
  br label %while.cond, !dbg !1417, !llvm.loop !1426

while.end:                                        ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1449
  ret void, !dbg !1450
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingInvalidateKey(%struct.client* %c, %struct.redisObject* %keyobj, i32 %bcast) #0 !dbg !1451 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %keyobj.addr = alloca %struct.redisObject*, align 8
  %bcast.addr = alloca i32, align 4
  %key = alloca i8*, align 8
  %keylen = alloca i64, align 8
  %ids = alloca %struct.rax*, align 8
  %ri = alloca %struct.raxIterator, align 8
  %id = alloca i64, align 8
  %target = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1454, metadata !DIExpression()), !dbg !1455
  store %struct.redisObject* %keyobj, %struct.redisObject** %keyobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %keyobj.addr, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 %bcast, i32* %bcast.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bcast.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  %0 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1460
  %cmp = icmp eq %struct.rax* %0, null, !dbg !1462
  br i1 %cmp, label %if.then, label %if.end, !dbg !1463

if.then:                                          ; preds = %entry
  br label %return, !dbg !1464

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %key, metadata !1465, metadata !DIExpression()), !dbg !1466
  %1 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1467
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i32 0, i32 2, !dbg !1468
  %2 = load i8*, i8** %ptr, align 8, !dbg !1468
  store i8* %2, i8** %key, align 8, !dbg !1466
  call void @llvm.dbg.declare(metadata i64* %keylen, metadata !1469, metadata !DIExpression()), !dbg !1470
  %3 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1471
  %ptr1 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %3, i32 0, i32 2, !dbg !1472
  %4 = load i8*, i8** %ptr1, align 8, !dbg !1472
  %call = call i64 @sdslen(i8* %4), !dbg !1473
  store i64 %call, i64* %keylen, align 8, !dbg !1470
  %5 = load i32, i32* %bcast.addr, align 4, !dbg !1474
  %tobool = icmp ne i32 %5, 0, !dbg !1474
  br i1 %tobool, label %land.lhs.true, label %if.end5, !dbg !1476

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !1477
  %call2 = call i64 @raxSize(%struct.rax* %6), !dbg !1478
  %cmp3 = icmp ugt i64 %call2, 0, !dbg !1479
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1480

if.then4:                                         ; preds = %land.lhs.true
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1481
  %8 = load i8*, i8** %key, align 8, !dbg !1482
  %9 = load i64, i64* %keylen, align 8, !dbg !1483
  call void @trackingRememberKeyToBroadcast(%struct.client* %7, i8* %8, i64 %9), !dbg !1484
  br label %if.end5, !dbg !1484

if.end5:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  call void @llvm.dbg.declare(metadata %struct.rax** %ids, metadata !1485, metadata !DIExpression()), !dbg !1486
  %10 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1487
  %11 = load i8*, i8** %key, align 8, !dbg !1488
  %12 = load i64, i64* %keylen, align 8, !dbg !1489
  %call6 = call i8* @raxFind(%struct.rax* %10, i8* %11, i64 %12), !dbg !1490
  %13 = bitcast i8* %call6 to %struct.rax*, !dbg !1490
  store %struct.rax* %13, %struct.rax** %ids, align 8, !dbg !1486
  %14 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1491
  %15 = load i8*, i8** @raxNotFound, align 8, !dbg !1493
  %16 = bitcast i8* %15 to %struct.rax*, !dbg !1493
  %cmp7 = icmp eq %struct.rax* %14, %16, !dbg !1494
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1495

if.then8:                                         ; preds = %if.end5
  br label %return, !dbg !1496

if.end9:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !1497, metadata !DIExpression()), !dbg !1498
  %17 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1499
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %17), !dbg !1500
  %call10 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1501
  br label %while.cond, !dbg !1502

while.cond:                                       ; preds = %if.end38, %if.then28, %if.then21, %if.end9
  %call11 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !1503
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1502
  br i1 %tobool12, label %while.body, label %while.end, !dbg !1502

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %id, metadata !1504, metadata !DIExpression()), !dbg !1506
  %18 = bitcast i64* %id to i8*, !dbg !1507
  %key13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !1508
  %19 = load i8*, i8** %key13, align 8, !dbg !1508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 1 %19, i64 8, i1 false), !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.client** %target, metadata !1509, metadata !DIExpression()), !dbg !1510
  %20 = load i64, i64* %id, align 8, !dbg !1511
  %call14 = call %struct.client* @lookupClientByID(i64 %20), !dbg !1512
  store %struct.client* %call14, %struct.client** %target, align 8, !dbg !1510
  %21 = load %struct.client*, %struct.client** %target, align 8, !dbg !1513
  %cmp15 = icmp eq %struct.client* %21, null, !dbg !1515
  br i1 %cmp15, label %if.then21, label %lor.lhs.false, !dbg !1516

lor.lhs.false:                                    ; preds = %while.body
  %22 = load %struct.client*, %struct.client** %target, align 8, !dbg !1517
  %flags = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 1, !dbg !1518
  %23 = load i64, i64* %flags, align 8, !dbg !1518
  %and = and i64 %23, 2147483648, !dbg !1519
  %tobool16 = icmp ne i64 %and, 0, !dbg !1519
  br i1 %tobool16, label %lor.lhs.false17, label %if.then21, !dbg !1520

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %24 = load %struct.client*, %struct.client** %target, align 8, !dbg !1521
  %flags18 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 1, !dbg !1522
  %25 = load i64, i64* %flags18, align 8, !dbg !1522
  %and19 = and i64 %25, 8589934592, !dbg !1523
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1523
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !1524

if.then21:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %while.body
  br label %while.cond, !dbg !1525, !llvm.loop !1527

if.end22:                                         ; preds = %lor.lhs.false17
  %26 = load %struct.client*, %struct.client** %target, align 8, !dbg !1529
  %flags23 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 1, !dbg !1531
  %27 = load i64, i64* %flags23, align 8, !dbg !1531
  %and24 = and i64 %27, 137438953472, !dbg !1532
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1532
  br i1 %tobool25, label %land.lhs.true26, label %if.end29, !dbg !1533

land.lhs.true26:                                  ; preds = %if.end22
  %28 = load %struct.client*, %struct.client** %target, align 8, !dbg !1534
  %29 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1535
  %cmp27 = icmp eq %struct.client* %28, %29, !dbg !1536
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1537

if.then28:                                        ; preds = %land.lhs.true26
  br label %while.cond, !dbg !1538, !llvm.loop !1527

if.end29:                                         ; preds = %land.lhs.true26, %if.end22
  %30 = load %struct.client*, %struct.client** %target, align 8, !dbg !1540
  %31 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1542
  %cmp30 = icmp eq %struct.client* %30, %31, !dbg !1543
  br i1 %cmp30, label %land.lhs.true31, label %if.else, !dbg !1544

land.lhs.true31:                                  ; preds = %if.end29
  %32 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 68), align 8, !dbg !1545
  %tobool32 = icmp ne i64 %32, 0, !dbg !1546
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !1547

if.then33:                                        ; preds = %land.lhs.true31
  %33 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1548
  call void @incrRefCount(%struct.redisObject* %33), !dbg !1550
  %34 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 326), align 8, !dbg !1551
  %35 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1552
  %36 = bitcast %struct.redisObject* %35 to i8*, !dbg !1552
  %call34 = call %struct.list* @listAddNodeTail(%struct.list* %34, i8* %36), !dbg !1553
  br label %if.end38, !dbg !1554

if.else:                                          ; preds = %land.lhs.true31, %if.end29
  %37 = load %struct.client*, %struct.client** %target, align 8, !dbg !1555
  %38 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1557
  %ptr35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i32 0, i32 2, !dbg !1558
  %39 = load i8*, i8** %ptr35, align 8, !dbg !1558
  %40 = load %struct.redisObject*, %struct.redisObject** %keyobj.addr, align 8, !dbg !1559
  %ptr36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i32 0, i32 2, !dbg !1560
  %41 = load i8*, i8** %ptr36, align 8, !dbg !1560
  %call37 = call i64 @sdslen(i8* %41), !dbg !1561
  call void @sendTrackingMessage(%struct.client* %37, i8* %39, i64 %call37, i32 0), !dbg !1562
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  br label %while.cond, !dbg !1502, !llvm.loop !1527

while.end:                                        ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1563
  %42 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1564
  %call39 = call i64 @raxSize(%struct.rax* %42), !dbg !1565
  %43 = load i64, i64* @TrackingTableTotalItems, align 8, !dbg !1566
  %sub = sub i64 %43, %call39, !dbg !1566
  store i64 %sub, i64* @TrackingTableTotalItems, align 8, !dbg !1566
  %44 = load %struct.rax*, %struct.rax** %ids, align 8, !dbg !1567
  call void @raxFree(%struct.rax* %44), !dbg !1568
  %45 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1569
  %46 = load i8*, i8** %key, align 8, !dbg !1570
  %47 = load i64, i64* %keylen, align 8, !dbg !1571
  %call40 = call i32 @raxRemove(%struct.rax* %45, i8* %46, i64 %47, i8** null), !dbg !1572
  br label %return, !dbg !1573

return:                                           ; preds = %while.end, %if.then8, %if.then
  ret void, !dbg !1573
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @incrRefCount(%struct.redisObject*) #2

declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingHandlePendingKeyInvalidations() #0 !dbg !1574 {
entry:
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %key = alloca %struct.redisObject*, align 8
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 326), align 8, !dbg !1575
  %len = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 5, !dbg !1575
  %1 = load i64, i64* %len, align 8, !dbg !1575
  %tobool = icmp ne i64 %1, 0, !dbg !1575
  br i1 %tobool, label %if.end, label %if.then, !dbg !1577

if.then:                                          ; preds = %entry
  br label %return, !dbg !1578

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1579, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1581, metadata !DIExpression()), !dbg !1587
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 326), align 8, !dbg !1588
  call void @listRewind(%struct.list* %2, %struct.listIter* %li), !dbg !1589
  br label %while.cond, !dbg !1590

while.cond:                                       ; preds = %if.end17, %if.end
  %call = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1591
  store %struct.listNode* %call, %struct.listNode** %ln, align 8, !dbg !1592
  %cmp = icmp ne %struct.listNode* %call, null, !dbg !1593
  br i1 %cmp, label %while.body, label %while.end, !dbg !1590

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key, metadata !1594, metadata !DIExpression()), !dbg !1596
  %3 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1597
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %3, i32 0, i32 2, !dbg !1597
  %4 = load i8*, i8** %value, align 8, !dbg !1597
  %5 = bitcast i8* %4 to %struct.redisObject*, !dbg !1597
  store %struct.redisObject* %5, %struct.redisObject** %key, align 8, !dbg !1596
  %6 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1598
  %cmp1 = icmp ne %struct.client* %6, null, !dbg !1600
  br i1 %cmp1, label %if.then2, label %if.end14, !dbg !1601

if.then2:                                         ; preds = %while.body
  %7 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1602
  %cmp3 = icmp ne %struct.redisObject* %7, null, !dbg !1605
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1606

if.then4:                                         ; preds = %if.then2
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1607
  %9 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1609
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i32 0, i32 2, !dbg !1610
  %10 = load i8*, i8** %ptr, align 8, !dbg !1610
  %11 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1611
  %ptr5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i32 0, i32 2, !dbg !1612
  %12 = load i8*, i8** %ptr5, align 8, !dbg !1612
  %call6 = call i64 @sdslen(i8* %12), !dbg !1613
  call void @sendTrackingMessage(%struct.client* %8, i8* %10, i64 %call6, i32 0), !dbg !1614
  br label %if.end13, !dbg !1615

if.else:                                          ; preds = %if.then2
  %13 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1616
  %14 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1618
  %resp = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 3, !dbg !1619
  %15 = load i32, i32* %resp, align 8, !dbg !1619
  %idxprom = sext i32 %15 to i64, !dbg !1620
  %arrayidx = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom, !dbg !1620
  %16 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1620
  %ptr7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i32 0, i32 2, !dbg !1621
  %17 = load i8*, i8** %ptr7, align 8, !dbg !1621
  %18 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1622
  %resp8 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 3, !dbg !1623
  %19 = load i32, i32* %resp8, align 8, !dbg !1623
  %idxprom9 = sext i32 %19 to i64, !dbg !1624
  %arrayidx10 = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom9, !dbg !1624
  %20 = load %struct.redisObject*, %struct.redisObject** %arrayidx10, align 8, !dbg !1624
  %ptr11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %20, i32 0, i32 2, !dbg !1625
  %21 = load i8*, i8** %ptr11, align 8, !dbg !1625
  %call12 = call i64 @sdslen(i8* %21), !dbg !1626
  call void @sendTrackingMessage(%struct.client* %13, i8* %17, i64 %call12, i32 1), !dbg !1627
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  br label %if.end14, !dbg !1628

if.end14:                                         ; preds = %if.end13, %while.body
  %22 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1629
  %cmp15 = icmp ne %struct.redisObject* %22, null, !dbg !1631
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1632

if.then16:                                        ; preds = %if.end14
  %23 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1633
  call void @decrRefCount(%struct.redisObject* %23), !dbg !1634
  br label %if.end17, !dbg !1634

if.end17:                                         ; preds = %if.then16, %if.end14
  br label %while.cond, !dbg !1590, !llvm.loop !1635

while.end:                                        ; preds = %while.cond
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 326), align 8, !dbg !1637
  call void @listEmpty(%struct.list* %24), !dbg !1638
  br label %return, !dbg !1639

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1639
}

declare dso_local void @listRewind(%struct.list*, %struct.listIter*) #2

declare dso_local %struct.listNode* @listNext(%struct.listIter*) #2

declare dso_local void @decrRefCount(%struct.redisObject*) #2

declare dso_local void @listEmpty(%struct.list*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeTrackingRadixTreeCallback(i8* %rt) #0 !dbg !1640 {
entry:
  %rt.addr = alloca i8*, align 8
  store i8* %rt, i8** %rt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rt.addr, metadata !1641, metadata !DIExpression()), !dbg !1642
  %0 = load i8*, i8** %rt.addr, align 8, !dbg !1643
  %1 = bitcast i8* %0 to %struct.rax*, !dbg !1643
  call void @raxFree(%struct.rax* %1), !dbg !1644
  ret void, !dbg !1645
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeTrackingRadixTree(%struct.rax* %rt) #0 !dbg !1646 {
entry:
  %rt.addr = alloca %struct.rax*, align 8
  store %struct.rax* %rt, %struct.rax** %rt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %rt.addr, metadata !1649, metadata !DIExpression()), !dbg !1650
  %0 = load %struct.rax*, %struct.rax** %rt.addr, align 8, !dbg !1651
  call void @raxFreeWithCallback(%struct.rax* %0, void (i8*)* @freeTrackingRadixTreeCallback), !dbg !1652
  ret void, !dbg !1653
}

declare dso_local void @raxFreeWithCallback(%struct.rax*, void (i8*)*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingInvalidateKeysOnFlush(i32 %async) #0 !dbg !1654 {
entry:
  %async.addr = alloca i32, align 4
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %c = alloca %struct.client*, align 8
  store i32 %async, i32* %async.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %async.addr, metadata !1657, metadata !DIExpression()), !dbg !1658
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !1659
  %tobool = icmp ne i32 %0, 0, !dbg !1661
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1662

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1663, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1666, metadata !DIExpression()), !dbg !1667
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 59), align 8, !dbg !1668
  call void @listRewind(%struct.list* %1, %struct.listIter* %li), !dbg !1669
  br label %while.cond, !dbg !1670

while.cond:                                       ; preds = %if.end11, %if.then
  %call = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1671
  store %struct.listNode* %call, %struct.listNode** %ln, align 8, !dbg !1672
  %cmp = icmp ne %struct.listNode* %call, null, !dbg !1673
  br i1 %cmp, label %while.body, label %while.end, !dbg !1670

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1674, metadata !DIExpression()), !dbg !1676
  %2 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1677
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %2, i32 0, i32 2, !dbg !1677
  %3 = load i8*, i8** %value, align 8, !dbg !1677
  %4 = bitcast i8* %3 to %struct.client*, !dbg !1677
  store %struct.client* %4, %struct.client** %c, align 8, !dbg !1676
  %5 = load %struct.client*, %struct.client** %c, align 8, !dbg !1678
  %flags = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !1680
  %6 = load i64, i64* %flags, align 8, !dbg !1680
  %and = and i64 %6, 2147483648, !dbg !1681
  %tobool1 = icmp ne i64 %and, 0, !dbg !1681
  br i1 %tobool1, label %if.then2, label %if.end11, !dbg !1682

if.then2:                                         ; preds = %while.body
  %7 = load %struct.client*, %struct.client** %c, align 8, !dbg !1683
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1686
  %cmp3 = icmp eq %struct.client* %7, %8, !dbg !1687
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !1688

if.then4:                                         ; preds = %if.then2
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 326), align 8, !dbg !1689
  %call5 = call %struct.list* @listAddNodeTail(%struct.list* %9, i8* null), !dbg !1691
  br label %if.end, !dbg !1692

if.else:                                          ; preds = %if.then2
  %10 = load %struct.client*, %struct.client** %c, align 8, !dbg !1693
  %11 = load %struct.client*, %struct.client** %c, align 8, !dbg !1695
  %resp = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 3, !dbg !1696
  %12 = load i32, i32* %resp, align 8, !dbg !1696
  %idxprom = sext i32 %12 to i64, !dbg !1697
  %arrayidx = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom, !dbg !1697
  %13 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1697
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i32 0, i32 2, !dbg !1698
  %14 = load i8*, i8** %ptr, align 8, !dbg !1698
  %15 = load %struct.client*, %struct.client** %c, align 8, !dbg !1699
  %resp6 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 3, !dbg !1700
  %16 = load i32, i32* %resp6, align 8, !dbg !1700
  %idxprom7 = sext i32 %16 to i64, !dbg !1701
  %arrayidx8 = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom7, !dbg !1701
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx8, align 8, !dbg !1701
  %ptr9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i32 0, i32 2, !dbg !1702
  %18 = load i8*, i8** %ptr9, align 8, !dbg !1702
  %call10 = call i64 @sdslen(i8* %18), !dbg !1703
  call void @sendTrackingMessage(%struct.client* %10, i8* %14, i64 %call10, i32 1), !dbg !1704
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end11, !dbg !1705

if.end11:                                         ; preds = %if.end, %while.body
  br label %while.cond, !dbg !1670, !llvm.loop !1706

while.end:                                        ; preds = %while.cond
  br label %if.end12, !dbg !1708

if.end12:                                         ; preds = %while.end, %entry
  %19 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1709
  %tobool13 = icmp ne %struct.rax* %19, null, !dbg !1709
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !1711

if.then14:                                        ; preds = %if.end12
  %20 = load i32, i32* %async.addr, align 4, !dbg !1712
  %tobool15 = icmp ne i32 %20, 0, !dbg !1712
  br i1 %tobool15, label %if.then16, label %if.else17, !dbg !1715

if.then16:                                        ; preds = %if.then14
  %21 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1716
  call void @freeTrackingRadixTreeAsync(%struct.rax* %21), !dbg !1718
  br label %if.end18, !dbg !1719

if.else17:                                        ; preds = %if.then14
  %22 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1720
  call void @freeTrackingRadixTree(%struct.rax* %22), !dbg !1722
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %call19 = call %struct.rax* @raxNew(), !dbg !1723
  store %struct.rax* %call19, %struct.rax** @TrackingTable, align 8, !dbg !1724
  store i64 0, i64* @TrackingTableTotalItems, align 8, !dbg !1725
  br label %if.end20, !dbg !1726

if.end20:                                         ; preds = %if.end18, %if.end12
  ret void, !dbg !1727
}

declare dso_local void @freeTrackingRadixTreeAsync(%struct.rax*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingLimitUsedSlots() #0 !dbg !134 {
entry:
  %max_keys = alloca i64, align 8
  %effort = alloca i32, align 4
  %ri = alloca %struct.raxIterator, align 8
  %keyobj = alloca %struct.redisObject*, align 8
  %0 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1728
  %cmp = icmp eq %struct.rax* %0, null, !dbg !1730
  br i1 %cmp, label %if.then, label %if.end, !dbg !1731

if.then:                                          ; preds = %entry
  br label %return, !dbg !1732

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 325), align 8, !dbg !1733
  %cmp1 = icmp eq i64 %1, 0, !dbg !1735
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1736

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !1737

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %max_keys, metadata !1738, metadata !DIExpression()), !dbg !1739
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 325), align 8, !dbg !1740
  store i64 %2, i64* %max_keys, align 8, !dbg !1739
  %3 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1741
  %call = call i64 @raxSize(%struct.rax* %3), !dbg !1743
  %4 = load i64, i64* %max_keys, align 8, !dbg !1744
  %cmp4 = icmp ule i64 %call, %4, !dbg !1745
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1746

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* @trackingLimitUsedSlots.timeout_counter, align 4, !dbg !1747
  br label %return, !dbg !1749

if.end6:                                          ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i32* %effort, metadata !1750, metadata !DIExpression()), !dbg !1751
  %5 = load i32, i32* @trackingLimitUsedSlots.timeout_counter, align 4, !dbg !1752
  %add = add i32 %5, 1, !dbg !1753
  %mul = mul i32 100, %add, !dbg !1754
  store i32 %mul, i32* %effort, align 4, !dbg !1751
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !1755, metadata !DIExpression()), !dbg !1756
  %6 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1757
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %6), !dbg !1758
  br label %while.cond, !dbg !1759

while.cond:                                       ; preds = %if.end17, %if.end6
  %7 = load i32, i32* %effort, align 4, !dbg !1760
  %cmp7 = icmp sgt i32 %7, 0, !dbg !1761
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1759

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %effort, align 4, !dbg !1762
  %dec = add nsw i32 %8, -1, !dbg !1762
  store i32 %dec, i32* %effort, align 4, !dbg !1762
  %call8 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1764
  %call9 = call i32 @raxRandomWalk(%struct.raxIterator* %ri, i64 0), !dbg !1765
  %call10 = call i32 @raxEOF(%struct.raxIterator* %ri), !dbg !1766
  %tobool = icmp ne i32 %call10, 0, !dbg !1766
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !1768

if.then11:                                        ; preds = %while.body
  br label %while.end, !dbg !1769

if.end12:                                         ; preds = %while.body
  call void @llvm.dbg.declare(metadata %struct.redisObject** %keyobj, metadata !1770, metadata !DIExpression()), !dbg !1771
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !1772
  %9 = load i8*, i8** %key, align 8, !dbg !1772
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1773
  %10 = load i64, i64* %key_len, align 8, !dbg !1773
  %call13 = call %struct.redisObject* @createStringObject(i8* %9, i64 %10), !dbg !1774
  store %struct.redisObject* %call13, %struct.redisObject** %keyobj, align 8, !dbg !1771
  %11 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1775
  call void @trackingInvalidateKey(%struct.client* null, %struct.redisObject* %11, i32 0), !dbg !1776
  %12 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1777
  call void @decrRefCount(%struct.redisObject* %12), !dbg !1778
  %13 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1779
  %call14 = call i64 @raxSize(%struct.rax* %13), !dbg !1781
  %14 = load i64, i64* %max_keys, align 8, !dbg !1782
  %cmp15 = icmp ule i64 %call14, %14, !dbg !1783
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1784

if.then16:                                        ; preds = %if.end12
  store i32 0, i32* @trackingLimitUsedSlots.timeout_counter, align 4, !dbg !1785
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1787
  br label %return, !dbg !1788

if.end17:                                         ; preds = %if.end12
  br label %while.cond, !dbg !1759, !llvm.loop !1789

while.end:                                        ; preds = %if.then11, %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1791
  %15 = load i32, i32* @trackingLimitUsedSlots.timeout_counter, align 4, !dbg !1792
  %inc = add i32 %15, 1, !dbg !1792
  store i32 %inc, i32* @trackingLimitUsedSlots.timeout_counter, align 4, !dbg !1792
  br label %return, !dbg !1793

return:                                           ; preds = %while.end, %if.then16, %if.then5, %if.then2, %if.then
  ret void, !dbg !1793
}

declare dso_local i32 @raxRandomWalk(%struct.raxIterator*, i64) #2

declare dso_local i32 @raxEOF(%struct.raxIterator*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @trackingBuildBroadcastReply(%struct.client* %c, %struct.rax* %keys) #0 !dbg !1794 {
entry:
  %retval = alloca i8*, align 8
  %c.addr = alloca %struct.client*, align 8
  %keys.addr = alloca %struct.rax*, align 8
  %ri = alloca %struct.raxIterator, align 8
  %count = alloca i64, align 8
  %buf = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %proto = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1797, metadata !DIExpression()), !dbg !1798
  store %struct.rax* %keys, %struct.rax** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %keys.addr, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.declare(metadata i64* %count, metadata !1803, metadata !DIExpression()), !dbg !1804
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1805
  %cmp = icmp eq %struct.client* %0, null, !dbg !1807
  br i1 %cmp, label %if.then, label %if.else, !dbg !1808

if.then:                                          ; preds = %entry
  %1 = load %struct.rax*, %struct.rax** %keys.addr, align 8, !dbg !1809
  %call = call i64 @raxSize(%struct.rax* %1), !dbg !1811
  store i64 %call, i64* %count, align 8, !dbg !1812
  br label %if.end8, !dbg !1813

if.else:                                          ; preds = %entry
  store i64 0, i64* %count, align 8, !dbg !1814
  %2 = load %struct.rax*, %struct.rax** %keys.addr, align 8, !dbg !1816
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %2), !dbg !1817
  %call1 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1818
  br label %while.cond, !dbg !1819

while.cond:                                       ; preds = %if.end, %if.else
  %call2 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !1820
  %tobool = icmp ne i32 %call2, 0, !dbg !1819
  br i1 %tobool, label %while.body, label %while.end, !dbg !1819

while.body:                                       ; preds = %while.cond
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 3, !dbg !1821
  %3 = load i8*, i8** %data, align 8, !dbg !1821
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1824
  %5 = bitcast %struct.client* %4 to i8*, !dbg !1824
  %cmp3 = icmp ne i8* %3, %5, !dbg !1825
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1826

if.then4:                                         ; preds = %while.body
  %6 = load i64, i64* %count, align 8, !dbg !1827
  %inc = add i64 %6, 1, !dbg !1827
  store i64 %inc, i64* %count, align 8, !dbg !1827
  br label %if.end, !dbg !1828

if.end:                                           ; preds = %if.then4, %while.body
  br label %while.cond, !dbg !1819, !llvm.loop !1829

while.end:                                        ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1831
  %7 = load i64, i64* %count, align 8, !dbg !1832
  %cmp5 = icmp eq i64 %7, 0, !dbg !1834
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1835

if.then6:                                         ; preds = %while.end
  store i8* null, i8** %retval, align 8, !dbg !1836
  br label %return, !dbg !1836

if.end7:                                          ; preds = %while.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then
  call void @llvm.dbg.declare(metadata [32 x i8]* %buf, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1840, metadata !DIExpression()), !dbg !1841
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1842
  %8 = load i64, i64* %count, align 8, !dbg !1843
  %call9 = call i32 @ll2string(i8* %arraydecay, i64 32, i64 %8), !dbg !1844
  %conv = sext i32 %call9 to i64, !dbg !1844
  store i64 %conv, i64* %len, align 8, !dbg !1841
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !1845, metadata !DIExpression()), !dbg !1846
  %call10 = call i8* @sdsempty(), !dbg !1847
  store i8* %call10, i8** %proto, align 8, !dbg !1846
  %9 = load i8*, i8** %proto, align 8, !dbg !1848
  %10 = load i64, i64* %count, align 8, !dbg !1849
  %mul = mul i64 %10, 15, !dbg !1850
  %call11 = call i8* @sdsMakeRoomFor(i8* %9, i64 %mul), !dbg !1851
  store i8* %call11, i8** %proto, align 8, !dbg !1852
  %11 = load i8*, i8** %proto, align 8, !dbg !1853
  %call12 = call i8* @sdscatlen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 1), !dbg !1854
  store i8* %call12, i8** %proto, align 8, !dbg !1855
  %12 = load i8*, i8** %proto, align 8, !dbg !1856
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1857
  %13 = load i64, i64* %len, align 8, !dbg !1858
  %call14 = call i8* @sdscatlen(i8* %12, i8* %arraydecay13, i64 %13), !dbg !1859
  store i8* %call14, i8** %proto, align 8, !dbg !1860
  %14 = load i8*, i8** %proto, align 8, !dbg !1861
  %call15 = call i8* @sdscatlen(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2), !dbg !1862
  store i8* %call15, i8** %proto, align 8, !dbg !1863
  %15 = load %struct.rax*, %struct.rax** %keys.addr, align 8, !dbg !1864
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %15), !dbg !1865
  %call16 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1866
  br label %while.cond17, !dbg !1867

while.cond17:                                     ; preds = %if.end26, %if.then25, %if.end8
  %call18 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !1868
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1867
  br i1 %tobool19, label %while.body20, label %while.end37, !dbg !1867

while.body20:                                     ; preds = %while.cond17
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1869
  %tobool21 = icmp ne %struct.client* %16, null, !dbg !1869
  br i1 %tobool21, label %land.lhs.true, label %if.end26, !dbg !1872

land.lhs.true:                                    ; preds = %while.body20
  %data22 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 3, !dbg !1873
  %17 = load i8*, i8** %data22, align 8, !dbg !1873
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1874
  %19 = bitcast %struct.client* %18 to i8*, !dbg !1874
  %cmp23 = icmp eq i8* %17, %19, !dbg !1875
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1876

if.then25:                                        ; preds = %land.lhs.true
  br label %while.cond17, !dbg !1877, !llvm.loop !1878

if.end26:                                         ; preds = %land.lhs.true, %while.body20
  %arraydecay27 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1880
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1881
  %20 = load i64, i64* %key_len, align 8, !dbg !1881
  %call28 = call i32 @ll2string(i8* %arraydecay27, i64 32, i64 %20), !dbg !1882
  %conv29 = sext i32 %call28 to i64, !dbg !1882
  store i64 %conv29, i64* %len, align 8, !dbg !1883
  %21 = load i8*, i8** %proto, align 8, !dbg !1884
  %call30 = call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1), !dbg !1885
  store i8* %call30, i8** %proto, align 8, !dbg !1886
  %22 = load i8*, i8** %proto, align 8, !dbg !1887
  %arraydecay31 = getelementptr inbounds [32 x i8], [32 x i8]* %buf, i64 0, i64 0, !dbg !1888
  %23 = load i64, i64* %len, align 8, !dbg !1889
  %call32 = call i8* @sdscatlen(i8* %22, i8* %arraydecay31, i64 %23), !dbg !1890
  store i8* %call32, i8** %proto, align 8, !dbg !1891
  %24 = load i8*, i8** %proto, align 8, !dbg !1892
  %call33 = call i8* @sdscatlen(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2), !dbg !1893
  store i8* %call33, i8** %proto, align 8, !dbg !1894
  %25 = load i8*, i8** %proto, align 8, !dbg !1895
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !1896
  %26 = load i8*, i8** %key, align 8, !dbg !1896
  %key_len34 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !1897
  %27 = load i64, i64* %key_len34, align 8, !dbg !1897
  %call35 = call i8* @sdscatlen(i8* %25, i8* %26, i64 %27), !dbg !1898
  store i8* %call35, i8** %proto, align 8, !dbg !1899
  %28 = load i8*, i8** %proto, align 8, !dbg !1900
  %call36 = call i8* @sdscatlen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i64 2), !dbg !1901
  store i8* %call36, i8** %proto, align 8, !dbg !1902
  br label %while.cond17, !dbg !1867, !llvm.loop !1878

while.end37:                                      ; preds = %while.cond17
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1903
  %29 = load i8*, i8** %proto, align 8, !dbg !1904
  store i8* %29, i8** %retval, align 8, !dbg !1905
  br label %return, !dbg !1905

return:                                           ; preds = %while.end37, %if.then6
  %30 = load i8*, i8** %retval, align 8, !dbg !1906
  ret i8* %30, !dbg !1906
}

declare dso_local i32 @ll2string(i8*, i64, i64) #2

declare dso_local i8* @sdsempty() #2

declare dso_local i8* @sdsMakeRoomFor(i8*, i64) #2

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @trackingBroadcastInvalidationMessages() #0 !dbg !1907 {
entry:
  %ri = alloca %struct.raxIterator, align 8
  %ri2 = alloca %struct.raxIterator, align 8
  %bs = alloca %struct.bcastState*, align 8
  %proto = alloca i8*, align 8
  %c = alloca %struct.client*, align 8
  %adhoc = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !1908, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri2, metadata !1910, metadata !DIExpression()), !dbg !1911
  %0 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !1912
  %cmp = icmp eq %struct.rax* %0, null, !dbg !1914
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1915

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 324), align 8, !dbg !1916
  %tobool = icmp ne i32 %1, 0, !dbg !1917
  br i1 %tobool, label %if.end, label %if.then, !dbg !1918

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !1919

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !1920
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %2), !dbg !1921
  %call = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1922
  br label %while.cond, !dbg !1923

while.cond:                                       ; preds = %if.end23, %if.end
  %call1 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !1924
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1923
  br i1 %tobool2, label %while.body, label %while.end27, !dbg !1923

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.bcastState** %bs, metadata !1925, metadata !DIExpression()), !dbg !1927
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 3, !dbg !1928
  %3 = load i8*, i8** %data, align 8, !dbg !1928
  %4 = bitcast i8* %3 to %struct.bcastState*, !dbg !1929
  store %struct.bcastState* %4, %struct.bcastState** %bs, align 8, !dbg !1927
  %5 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1930
  %keys = getelementptr inbounds %struct.bcastState, %struct.bcastState* %5, i32 0, i32 0, !dbg !1932
  %6 = load %struct.rax*, %struct.rax** %keys, align 8, !dbg !1932
  %call3 = call i64 @raxSize(%struct.rax* %6), !dbg !1933
  %tobool4 = icmp ne i64 %call3, 0, !dbg !1933
  br i1 %tobool4, label %if.then5, label %if.end23, !dbg !1934

if.then5:                                         ; preds = %while.body
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !1935, metadata !DIExpression()), !dbg !1937
  %7 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1938
  %keys6 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %7, i32 0, i32 0, !dbg !1939
  %8 = load %struct.rax*, %struct.rax** %keys6, align 8, !dbg !1939
  %call7 = call i8* @trackingBuildBroadcastReply(%struct.client* null, %struct.rax* %8), !dbg !1940
  store i8* %call7, i8** %proto, align 8, !dbg !1937
  %9 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1941
  %clients = getelementptr inbounds %struct.bcastState, %struct.bcastState* %9, i32 0, i32 1, !dbg !1942
  %10 = load %struct.rax*, %struct.rax** %clients, align 8, !dbg !1942
  call void @raxStart(%struct.raxIterator* %ri2, %struct.rax* %10), !dbg !1943
  %call8 = call i32 @raxSeek(%struct.raxIterator* %ri2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !1944
  br label %while.cond9, !dbg !1945

while.cond9:                                      ; preds = %if.end22, %if.then5
  %call10 = call i32 @raxNext(%struct.raxIterator* %ri2), !dbg !1946
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1945
  br i1 %tobool11, label %while.body12, label %while.end, !dbg !1945

while.body12:                                     ; preds = %while.cond9
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1947, metadata !DIExpression()), !dbg !1949
  %11 = bitcast %struct.client** %c to i8*, !dbg !1950
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri2, i32 0, i32 2, !dbg !1951
  %12 = load i8*, i8** %key, align 8, !dbg !1951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 1 %12, i64 8, i1 false), !dbg !1950
  %13 = load %struct.client*, %struct.client** %c, align 8, !dbg !1952
  %flags = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 1, !dbg !1954
  %14 = load i64, i64* %flags, align 8, !dbg !1954
  %and = and i64 %14, 137438953472, !dbg !1955
  %tobool13 = icmp ne i64 %and, 0, !dbg !1955
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !1956

if.then14:                                        ; preds = %while.body12
  call void @llvm.dbg.declare(metadata i8** %adhoc, metadata !1957, metadata !DIExpression()), !dbg !1959
  %15 = load %struct.client*, %struct.client** %c, align 8, !dbg !1960
  %16 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1961
  %keys15 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %16, i32 0, i32 0, !dbg !1962
  %17 = load %struct.rax*, %struct.rax** %keys15, align 8, !dbg !1962
  %call16 = call i8* @trackingBuildBroadcastReply(%struct.client* %15, %struct.rax* %17), !dbg !1963
  store i8* %call16, i8** %adhoc, align 8, !dbg !1959
  %18 = load i8*, i8** %adhoc, align 8, !dbg !1964
  %tobool17 = icmp ne i8* %18, null, !dbg !1964
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1966

if.then18:                                        ; preds = %if.then14
  %19 = load %struct.client*, %struct.client** %c, align 8, !dbg !1967
  %20 = load i8*, i8** %adhoc, align 8, !dbg !1969
  %21 = load i8*, i8** %adhoc, align 8, !dbg !1970
  %call19 = call i64 @sdslen(i8* %21), !dbg !1971
  call void @sendTrackingMessage(%struct.client* %19, i8* %20, i64 %call19, i32 1), !dbg !1972
  %22 = load i8*, i8** %adhoc, align 8, !dbg !1973
  call void @sdsfree(i8* %22), !dbg !1974
  br label %if.end20, !dbg !1975

if.end20:                                         ; preds = %if.then18, %if.then14
  br label %if.end22, !dbg !1976

if.else:                                          ; preds = %while.body12
  %23 = load %struct.client*, %struct.client** %c, align 8, !dbg !1977
  %24 = load i8*, i8** %proto, align 8, !dbg !1979
  %25 = load i8*, i8** %proto, align 8, !dbg !1980
  %call21 = call i64 @sdslen(i8* %25), !dbg !1981
  call void @sendTrackingMessage(%struct.client* %23, i8* %24, i64 %call21, i32 1), !dbg !1982
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end20
  br label %while.cond9, !dbg !1945, !llvm.loop !1983

while.end:                                        ; preds = %while.cond9
  call void @raxStop(%struct.raxIterator* %ri2), !dbg !1985
  %26 = load i8*, i8** %proto, align 8, !dbg !1986
  call void @sdsfree(i8* %26), !dbg !1987
  br label %if.end23, !dbg !1988

if.end23:                                         ; preds = %while.end, %while.body
  %27 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1989
  %keys24 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %27, i32 0, i32 0, !dbg !1990
  %28 = load %struct.rax*, %struct.rax** %keys24, align 8, !dbg !1990
  call void @raxFree(%struct.rax* %28), !dbg !1991
  %call25 = call %struct.rax* @raxNew(), !dbg !1992
  %29 = load %struct.bcastState*, %struct.bcastState** %bs, align 8, !dbg !1993
  %keys26 = getelementptr inbounds %struct.bcastState, %struct.bcastState* %29, i32 0, i32 0, !dbg !1994
  store %struct.rax* %call25, %struct.rax** %keys26, align 8, !dbg !1995
  br label %while.cond, !dbg !1923, !llvm.loop !1996

while.end27:                                      ; preds = %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !1998
  br label %return, !dbg !1999

return:                                           ; preds = %while.end27, %if.then
  ret void, !dbg !1999
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @trackingGetTotalItems() #0 !dbg !2000 {
entry:
  %0 = load i64, i64* @TrackingTableTotalItems, align 8, !dbg !2003
  ret i64 %0, !dbg !2004
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @trackingGetTotalKeys() #0 !dbg !2005 {
entry:
  %retval = alloca i64, align 8
  %0 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !2006
  %cmp = icmp eq %struct.rax* %0, null, !dbg !2008
  br i1 %cmp, label %if.then, label %if.end, !dbg !2009

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2010
  br label %return, !dbg !2010

if.end:                                           ; preds = %entry
  %1 = load %struct.rax*, %struct.rax** @TrackingTable, align 8, !dbg !2011
  %call = call i64 @raxSize(%struct.rax* %1), !dbg !2012
  store i64 %call, i64* %retval, align 8, !dbg !2013
  br label %return, !dbg !2013

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !2014
  ret i64 %2, !dbg !2014
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @trackingGetTotalPrefixes() #0 !dbg !2015 {
entry:
  %retval = alloca i64, align 8
  %0 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !2016
  %cmp = icmp eq %struct.rax* %0, null, !dbg !2018
  br i1 %cmp, label %if.then, label %if.end, !dbg !2019

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2020
  br label %return, !dbg !2020

if.end:                                           ; preds = %entry
  %1 = load %struct.rax*, %struct.rax** @PrefixTable, align 8, !dbg !2021
  %call = call i64 @raxSize(%struct.rax* %1), !dbg !2022
  store i64 %call, i64* %retval, align 8, !dbg !2023
  br label %return, !dbg !2023

return:                                           ; preds = %if.end, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !2024
  ret i64 %2, !dbg !2024
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TrackingTable", scope: !2, file: !3, line: 44, type: !112, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !109, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "tracking.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!59 = !{!60, !62, !63, !65, !80, !90, !99}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !67, line: 51, size: 24, elements: !68)
!67 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!68 = !{!69, !74, !75, !76}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, file: !67, line: 52, baseType: !70, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !61)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!74 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !66, file: !67, line: 53, baseType: !70, size: 8, offset: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !67, line: 54, baseType: !61, size: 8, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !66, file: !67, line: 55, baseType: !77, offset: 24)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: -1)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !67, line: 57, size: 40, elements: !82)
!82 = !{!83, !87, !88, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !81, file: !67, line: 58, baseType: !84, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !71, line: 25, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !86)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !81, file: !67, line: 59, baseType: !84, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !67, line: 60, baseType: !61, size: 8, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !81, file: !67, line: 61, baseType: !77, offset: 40)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !67, line: 63, size: 72, elements: !92)
!92 = !{!93, !96, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !91, file: !67, line: 64, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !7)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !91, file: !67, line: 65, baseType: !94, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !67, line: 66, baseType: !61, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !67, line: 67, baseType: !77, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !67, line: 69, size: 136, elements: !101)
!101 = !{!102, !106, !107, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !67, line: 70, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 27, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !105)
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !100, file: !67, line: 71, baseType: !103, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !67, line: 72, baseType: !61, size: 8, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !100, file: !67, line: 73, baseType: !77, offset: 136)
!109 = !{!0, !110, !130, !132, !138}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "PrefixTable", scope: !2, file: !3, line: 45, type: !112, isLocal: false, isDefinition: true)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !114, line: 137, baseType: !115)
!114 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !114, line: 133, size: 192, elements: !116)
!116 = !{!117, !128, !129}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !115, file: !114, line: 134, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !114, line: 131, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !114, line: 98, size: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !120, file: !114, line: 99, baseType: !94, size: 1, flags: DIFlagBitField, extraData: i64 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !120, file: !114, line: 100, baseType: !94, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !120, file: !114, line: 101, baseType: !94, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !120, file: !114, line: 102, baseType: !94, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !120, file: !114, line: 130, baseType: !127, offset: 32)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, elements: !78)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !115, file: !114, line: 135, baseType: !103, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !115, file: !114, line: 136, baseType: !103, size: 64, offset: 128)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "TrackingTableTotalItems", scope: !2, file: !3, line: 46, type: !103, isLocal: false, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "timeout_counter", scope: !134, file: !3, line: 505, type: !7, isLocal: true, isDefinition: true)
!134 = distinct !DISubprogram(name: "trackingLimitUsedSlots", scope: !3, file: !3, line: 504, type: !135, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{null}
!137 = !{}
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "TrackingChannelName", scope: !2, file: !3, line: 50, type: !140, isLocal: false, isDefinition: true)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !143)
!143 = !{!144, !145, !146, !147, !149}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !142, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !142, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !142, file: !16, line: 860, baseType: !148, size: 32, offset: 32)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !142, file: !16, line: 861, baseType: !62, size: 64, offset: 64)
!150 = !{i32 7, !"Dwarf Version", i32 4}
!151 = !{i32 2, !"Debug Info Version", i32 3}
!152 = !{i32 1, !"wchar_size", i32 4}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!156 = distinct !DISubprogram(name: "disableTracking", scope: !3, file: !3, line: 67, type: !157, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !162)
!162 = !{!163, !164, !165, !315, !316, !432, !433, !435, !436, !437, !438, !440, !441, !442, !443, !444, !593, !594, !595, !605, !606, !607, !608, !609, !611, !612, !613, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !643, !644, !645, !646, !647, !665, !666, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !702, !703, !704, !705, !706, !707, !708, !709, !716, !717, !718, !719, !720, !721, !722}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !161, file: !16, line: 1090, baseType: !103, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !16, line: 1091, baseType: !103, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !161, file: !16, line: 1092, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !169)
!169 = !{!170, !304, !306, !308, !309, !310, !311, !312, !313, !314}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !6, line: 78, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !174)
!174 = !{!175, !238, !249, !257, !268, !272, !273, !277, !281, !282, !286, !290, !298, !299, !300}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !173, file: !6, line: 60, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179, !148, !62, !148}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !181, line: 99, size: 640, elements: !182)
!181 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!182 = !{!183, !184, !185, !187, !198, !205, !229, !230, !231, !236, !237}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !180, file: !181, line: 100, baseType: !148, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !180, file: !181, line: 101, baseType: !148, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !180, file: !181, line: 102, baseType: !186, size: 64, offset: 64)
!186 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !180, file: !181, line: 103, baseType: !188, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !181, line: 77, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !181, line: 72, size: 256, elements: !191)
!191 = !{!192, !193, !196, !197}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !190, file: !181, line: 73, baseType: !148, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !190, file: !181, line: 74, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !181, line: 66, baseType: !177)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !190, file: !181, line: 75, baseType: !194, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !190, file: !181, line: 76, baseType: !62, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !180, file: !181, line: 104, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !181, line: 96, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !181, line: 93, size: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !201, file: !181, line: 94, baseType: !148, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !201, file: !181, line: 95, baseType: !148, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !180, file: !181, line: 105, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !181, line: 90, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !181, line: 80, size: 512, elements: !209)
!209 = !{!210, !211, !214, !219, !224, !225, !227, !228}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !208, file: !181, line: 81, baseType: !186, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !208, file: !181, line: 82, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !213, line: 22, baseType: !103)
!213 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !208, file: !181, line: 83, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !181, line: 67, baseType: !217)
!217 = !DISubroutineType(types: !218)
!218 = !{!148, !179, !186, !62}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !208, file: !181, line: 84, baseType: !220, size: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !181, line: 68, baseType: !222)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !179, !62}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !208, file: !181, line: 85, baseType: !62, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !208, file: !181, line: 86, baseType: !226, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !181, line: 87, baseType: !226, size: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !208, file: !181, line: 88, baseType: !148, size: 32, offset: 448)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !180, file: !181, line: 106, baseType: !148, size: 32, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !180, file: !181, line: 107, baseType: !62, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !180, file: !181, line: 108, baseType: !232, size: 64, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !181, line: 69, baseType: !234)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !179}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !180, file: !181, line: 109, baseType: !232, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !181, line: 110, baseType: !148, size: 32, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !173, file: !6, line: 61, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!148, !242, !243, !148, !243, !245}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !242}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !173, file: !6, line: 62, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!148, !242, !253, !255}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !256, line: 46, baseType: !105)
!256 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!257 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !173, file: !6, line: 63, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!148, !242, !261, !148}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !264, line: 26, size: 128, elements: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !263, file: !264, line: 28, baseType: !62, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !263, file: !264, line: 29, baseType: !255, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !173, file: !6, line: 64, baseType: !269, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!148, !242, !62, !255}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !173, file: !6, line: 65, baseType: !246, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !173, file: !6, line: 66, baseType: !274, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!148, !242, !245}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !173, file: !6, line: 67, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!148, !242, !245, !148}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !173, file: !6, line: 68, baseType: !274, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !173, file: !6, line: 69, baseType: !283, size: 64, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!243, !242}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !173, file: !6, line: 70, baseType: !287, size: 64, offset: 640)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!148, !242, !243, !148, !186}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !173, file: !6, line: 71, baseType: !291, size: 64, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !242, !63, !294, !186}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !295, line: 108, baseType: !296)
!295 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !73, line: 194, baseType: !297)
!297 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !173, file: !6, line: 72, baseType: !291, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !173, file: !6, line: 73, baseType: !291, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !173, file: !6, line: 74, baseType: !301, size: 64, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!148, !242}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !168, file: !6, line: 79, baseType: !305, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !6, line: 80, baseType: !307, size: 16, offset: 96)
!307 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !168, file: !6, line: 81, baseType: !307, size: 16, offset: 112)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !168, file: !6, line: 82, baseType: !148, size: 32, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !168, file: !6, line: 83, baseType: !62, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !168, file: !6, line: 84, baseType: !245, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !168, file: !6, line: 85, baseType: !245, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !168, file: !6, line: 86, baseType: !245, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !168, file: !6, line: 87, baseType: !148, size: 32, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !161, file: !16, line: 1093, baseType: !148, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !161, file: !16, line: 1094, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !320)
!320 = !{!321, !392, !393, !394, !395, !396, !397, !398, !399, !428}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !319, file: !16, line: 923, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !324, line: 61, baseType: !325)
!324 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !324, line: 79, size: 448, elements: !326)
!326 = !{!327, !359, !383, !385, !386, !389}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !324, line: 80, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !324, line: 74, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !324, line: 63, size: 512, elements: !331)
!331 = !{!332, !336, !340, !341, !345, !349, !350, !355}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !330, file: !324, line: 64, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!103, !253}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !330, file: !324, line: 65, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!62, !322, !253}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !330, file: !324, line: 66, baseType: !337, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !330, file: !324, line: 67, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!148, !322, !253, !253}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !330, file: !324, line: 68, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !322, !62}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !330, file: !324, line: 69, baseType: !346, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !330, file: !324, line: 70, baseType: !351, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!148, !255, !354}
!354 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !330, file: !324, line: 73, baseType: !356, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!255, !322}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !325, file: !324, line: 82, baseType: !360, size: 128, offset: 64)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 128, elements: !381)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !324, line: 59, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !324, line: 47, size: 192, elements: !365)
!365 = !{!366, !367, !377, !379}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !364, file: !324, line: 48, baseType: !62, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !364, file: !324, line: 54, baseType: !368, size: 64, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !324, line: 49, size: 64, elements: !369)
!369 = !{!370, !371, !372, !376}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !368, file: !324, line: 50, baseType: !62, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !368, file: !324, line: 51, baseType: !103, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !368, file: !324, line: 52, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !374, line: 27, baseType: !375)
!374 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !73, line: 44, baseType: !297)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !368, file: !324, line: 53, baseType: !354, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !324, line: 55, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !364, file: !324, line: 56, baseType: !380, offset: 192)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, elements: !78)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !325, file: !324, line: 83, baseType: !384, size: 128, offset: 192)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !381)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !325, file: !324, line: 85, baseType: !297, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !325, file: !324, line: 88, baseType: !387, size: 16, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !374, line: 25, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !73, line: 39, baseType: !307)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !325, file: !324, line: 89, baseType: !390, size: 16, offset: 400)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 16, elements: !381)
!391 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !319, file: !16, line: 924, baseType: !322, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !319, file: !16, line: 925, baseType: !322, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !319, file: !16, line: 926, baseType: !322, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !319, file: !16, line: 927, baseType: !322, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !319, file: !16, line: 928, baseType: !148, size: 32, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !319, file: !16, line: 929, baseType: !186, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !319, file: !16, line: 930, baseType: !105, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !319, file: !16, line: 931, baseType: !400, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !402, line: 54, baseType: !403)
!402 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !402, line: 47, size: 384, elements: !404)
!404 = !{!405, !414, !415, !419, !423, !427}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !403, file: !402, line: 48, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !402, line: 40, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !402, line: 36, size: 192, elements: !409)
!409 = !{!410, !412, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !408, file: !402, line: 37, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !402, line: 38, baseType: !411, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !408, file: !402, line: 39, baseType: !62, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !403, file: !402, line: 49, baseType: !406, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !403, file: !402, line: 50, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!62, !62}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !403, file: !402, line: 51, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !62}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !403, file: !402, line: 52, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!148, !62, !62}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !403, file: !402, line: 53, baseType: !105, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !319, file: !16, line: 932, baseType: !429, size: 64, offset: 576)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !16, line: 917, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !16, line: 1095, baseType: !140, size: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !161, file: !16, line: 1096, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !67, line: 43, baseType: !63)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !161, file: !16, line: 1097, baseType: !255, size: 64, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !161, file: !16, line: 1098, baseType: !255, size: 64, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !161, file: !16, line: 1099, baseType: !148, size: 32, offset: 576)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !161, file: !16, line: 1100, baseType: !439, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !161, file: !16, line: 1101, baseType: !148, size: 32, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !161, file: !16, line: 1102, baseType: !148, size: 32, offset: 736)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !161, file: !16, line: 1103, baseType: !439, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !161, file: !16, line: 1104, baseType: !255, size: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !161, file: !16, line: 1105, baseType: !445, size: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !457, !464, !466, !469, !470, !471, !472, !512, !534, !535, !550, !551, !552, !553, !554, !555, !556, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !446, file: !16, line: 2235, baseType: !243, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !446, file: !16, line: 2237, baseType: !243, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !446, file: !16, line: 2238, baseType: !243, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !446, file: !16, line: 2239, baseType: !243, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !446, file: !16, line: 2240, baseType: !148, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !446, file: !16, line: 2241, baseType: !243, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !446, file: !16, line: 2242, baseType: !243, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !446, file: !16, line: 2243, baseType: !456, size: 32, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !446, file: !16, line: 2244, baseType: !458, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !460, file: !16, line: 2111, baseType: !243, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !460, file: !16, line: 2112, baseType: !243, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !446, file: !16, line: 2245, baseType: !465, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !446, file: !16, line: 2246, baseType: !467, size: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !157)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !446, file: !16, line: 2247, baseType: !148, size: 32, offset: 704)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !16, line: 2248, baseType: !103, size: 64, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !446, file: !16, line: 2249, baseType: !103, size: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !446, file: !16, line: 2250, baseType: !473, size: 1792, offset: 896)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 1792, elements: !510)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !476)
!476 = !{!477, !478, !479, !481, !493, !495}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !475, file: !16, line: 2006, baseType: !243, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !16, line: 2007, baseType: !103, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !475, file: !16, line: 2008, baseType: !480, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !475, file: !16, line: 2022, baseType: !482, size: 128, offset: 192)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !16, line: 2009, size: 128, elements: !483)
!483 = !{!484, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !482, file: !16, line: 2013, baseType: !485, size: 32)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !16, line: 2010, size: 32, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !485, file: !16, line: 2012, baseType: !148, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !482, file: !16, line: 2021, baseType: !489, size: 128)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !16, line: 2014, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !489, file: !16, line: 2016, baseType: !243, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !489, file: !16, line: 2020, baseType: !148, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !475, file: !16, line: 2023, baseType: !494, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !475, file: !16, line: 2047, baseType: !496, size: 96, offset: 352)
!496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !16, line: 2024, size: 96, elements: !497)
!497 = !{!498, !504}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !496, file: !16, line: 2037, baseType: !499, size: 96)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !16, line: 2027, size: 96, elements: !500)
!500 = !{!501, !502, !503}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !499, file: !16, line: 2031, baseType: !148, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !499, file: !16, line: 2033, baseType: !148, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !499, file: !16, line: 2036, baseType: !148, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !496, file: !16, line: 2046, baseType: !505, size: 96)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !16, line: 2038, size: 96, elements: !506)
!506 = !{!507, !508, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !505, file: !16, line: 2040, baseType: !148, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !505, file: !16, line: 2043, baseType: !148, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !505, file: !16, line: 2045, baseType: !148, size: 32, offset: 64)
!510 = !{!511}
!511 = !DISubrange(count: 4)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !446, file: !16, line: 2253, baseType: !513, size: 64, offset: 2688)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !515)
!515 = !DISubroutineType(types: !516)
!516 = !{!148, !445, !439, !148, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !520)
!520 = !{!521, !530, !532, !533}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !519, file: !16, line: 1962, baseType: !522, size: 16384)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 16384, elements: !528)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !524, file: !16, line: 1952, baseType: !148, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !16, line: 1953, baseType: !148, size: 32, offset: 32)
!528 = !{!529}
!529 = !DISubrange(count: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !519, file: !16, line: 1963, baseType: !531, size: 64, offset: 16384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !519, file: !16, line: 1964, baseType: !148, size: 32, offset: 16448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !519, file: !16, line: 1965, baseType: !148, size: 32, offset: 16480)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !446, file: !16, line: 2255, baseType: !445, size: 64, offset: 2752)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !446, file: !16, line: 2257, baseType: !536, size: 64, offset: 2816)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !538)
!538 = !{!539, !540, !542, !543, !544, !545, !546, !547, !548, !549}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !537, file: !16, line: 2072, baseType: !243, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !16, line: 2073, baseType: !541, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !537, file: !16, line: 2074, baseType: !148, size: 32, offset: 96)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !537, file: !16, line: 2075, baseType: !243, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !537, file: !16, line: 2076, baseType: !243, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !537, file: !16, line: 2077, baseType: !243, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !16, line: 2078, baseType: !148, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !537, file: !16, line: 2079, baseType: !243, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !537, file: !16, line: 2080, baseType: !536, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !537, file: !16, line: 2082, baseType: !148, size: 32, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !446, file: !16, line: 2260, baseType: !186, size: 64, offset: 2880)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !446, file: !16, line: 2260, baseType: !186, size: 64, offset: 2944)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !446, file: !16, line: 2260, baseType: !186, size: 64, offset: 3008)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !446, file: !16, line: 2260, baseType: !186, size: 64, offset: 3072)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !446, file: !16, line: 2261, baseType: !148, size: 32, offset: 3136)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !446, file: !16, line: 2266, baseType: !434, size: 64, offset: 3200)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !446, file: !16, line: 2267, baseType: !557, size: 64, offset: 3264)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !559, line: 17, size: 832, elements: !560)
!559 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!560 = !{!561, !562, !563, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !558, file: !559, line: 19, baseType: !373, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !558, file: !559, line: 20, baseType: !373, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !558, file: !559, line: 21, baseType: !564, size: 32, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !374, line: 26, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !73, line: 41, baseType: !148)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !558, file: !559, line: 22, baseType: !564, size: 32, offset: 160)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !558, file: !559, line: 23, baseType: !564, size: 32, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !558, file: !559, line: 24, baseType: !564, size: 32, offset: 224)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !558, file: !559, line: 25, baseType: !373, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !558, file: !559, line: 26, baseType: !564, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !558, file: !559, line: 27, baseType: !564, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !558, file: !559, line: 28, baseType: !373, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !558, file: !559, line: 29, baseType: !373, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !558, file: !559, line: 30, baseType: !564, size: 32, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !558, file: !559, line: 31, baseType: !354, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !558, file: !559, line: 32, baseType: !564, size: 32, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !558, file: !559, line: 33, baseType: !373, size: 64, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !558, file: !559, line: 34, baseType: !579, size: 64, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !446, file: !16, line: 2268, baseType: !581, size: 64, offset: 3328)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !446, file: !16, line: 2269, baseType: !474, size: 448, offset: 3392)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !446, file: !16, line: 2273, baseType: !148, size: 32, offset: 3840)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !446, file: !16, line: 2274, baseType: !148, size: 32, offset: 3872)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !446, file: !16, line: 2275, baseType: !148, size: 32, offset: 3904)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !446, file: !16, line: 2276, baseType: !148, size: 32, offset: 3936)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !446, file: !16, line: 2277, baseType: !148, size: 32, offset: 3968)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !446, file: !16, line: 2278, baseType: !322, size: 64, offset: 4032)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !446, file: !16, line: 2280, baseType: !445, size: 64, offset: 4096)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !446, file: !16, line: 2281, baseType: !591, size: 64, offset: 4160)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !161, file: !16, line: 1105, baseType: !445, size: 64, offset: 960)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !161, file: !16, line: 1106, baseType: !445, size: 64, offset: 1024)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !161, file: !16, line: 1109, baseType: !596, size: 64, offset: 1088)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !599)
!599 = !{!600, !601, !602, !603, !604}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !16, line: 1050, baseType: !434, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !16, line: 1051, baseType: !94, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !598, file: !16, line: 1052, baseType: !400, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !598, file: !16, line: 1053, baseType: !400, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !598, file: !16, line: 1056, baseType: !140, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !161, file: !16, line: 1112, baseType: !148, size: 32, offset: 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !161, file: !16, line: 1113, baseType: !148, size: 32, offset: 1184)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !161, file: !16, line: 1114, baseType: !297, size: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !161, file: !16, line: 1115, baseType: !400, size: 64, offset: 1280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !161, file: !16, line: 1116, baseType: !610, size: 64, offset: 1344)
!610 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !161, file: !16, line: 1117, baseType: !400, size: 64, offset: 1408)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !161, file: !16, line: 1118, baseType: !255, size: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !161, file: !16, line: 1120, baseType: !614, size: 64, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !615, line: 10, baseType: !616)
!615 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !73, line: 160, baseType: !297)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !161, file: !16, line: 1121, baseType: !297, size: 64, offset: 1600)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !161, file: !16, line: 1122, baseType: !148, size: 32, offset: 1664)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !161, file: !16, line: 1123, baseType: !362, size: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !161, file: !16, line: 1124, baseType: !614, size: 64, offset: 1792)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !161, file: !16, line: 1125, baseType: !614, size: 64, offset: 1856)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !161, file: !16, line: 1126, baseType: !148, size: 32, offset: 1920)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !161, file: !16, line: 1127, baseType: !148, size: 32, offset: 1952)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !161, file: !16, line: 1128, baseType: !148, size: 32, offset: 1984)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !161, file: !16, line: 1129, baseType: !148, size: 32, offset: 2016)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !161, file: !16, line: 1130, baseType: !627, size: 64, offset: 2048)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !628, line: 58, baseType: !629)
!628 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !297)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !161, file: !16, line: 1131, baseType: !627, size: 64, offset: 2112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !161, file: !16, line: 1132, baseType: !434, size: 64, offset: 2176)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !161, file: !16, line: 1133, baseType: !186, size: 64, offset: 2240)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !161, file: !16, line: 1134, baseType: !186, size: 64, offset: 2304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !161, file: !16, line: 1135, baseType: !186, size: 64, offset: 2368)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !161, file: !16, line: 1136, baseType: !186, size: 64, offset: 2432)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !161, file: !16, line: 1137, baseType: !186, size: 64, offset: 2496)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !161, file: !16, line: 1138, baseType: !186, size: 64, offset: 2560)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !161, file: !16, line: 1139, baseType: !186, size: 64, offset: 2624)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !161, file: !16, line: 1142, baseType: !640, size: 328, offset: 2688)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 328, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 41)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !161, file: !16, line: 1143, baseType: !148, size: 32, offset: 3040)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !161, file: !16, line: 1144, baseType: !63, size: 64, offset: 3072)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !161, file: !16, line: 1145, baseType: !148, size: 32, offset: 3136)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !161, file: !16, line: 1146, baseType: !148, size: 32, offset: 3168)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !161, file: !16, line: 1147, baseType: !648, size: 320, offset: 3200)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !649)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !650)
!650 = !{!651, !660, !661, !662, !663, !664}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !649, file: !16, line: 957, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !655)
!655 = !{!656, !657, !658, !659}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !654, file: !16, line: 950, baseType: !439, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !654, file: !16, line: 951, baseType: !148, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !654, file: !16, line: 952, baseType: !148, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !654, file: !16, line: 953, baseType: !445, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !649, file: !16, line: 958, baseType: !148, size: 32, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !649, file: !16, line: 959, baseType: !148, size: 32, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !649, file: !16, line: 962, baseType: !148, size: 32, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !649, file: !16, line: 965, baseType: !255, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !649, file: !16, line: 966, baseType: !148, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !161, file: !16, line: 1148, baseType: !148, size: 32, offset: 3520)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !161, file: !16, line: 1149, baseType: !667, size: 704, offset: 3584)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !669)
!669 = !{!670, !671, !673, !674, !675, !680, !681, !682, !683, !684, !685, !686}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !16, line: 973, baseType: !297, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !668, file: !16, line: 974, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !186)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !668, file: !16, line: 978, baseType: !322, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !668, file: !16, line: 980, baseType: !140, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !668, file: !16, line: 985, baseType: !676, size: 64, offset: 256)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !677)
!677 = !{!678, !679}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !676, file: !16, line: 983, baseType: !148, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !676, file: !16, line: 984, baseType: !148, size: 32, offset: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !668, file: !16, line: 990, baseType: !255, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !668, file: !16, line: 991, baseType: !140, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !668, file: !16, line: 992, baseType: !140, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !668, file: !16, line: 993, baseType: !148, size: 32, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !668, file: !16, line: 996, baseType: !148, size: 32, offset: 544)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !668, file: !16, line: 997, baseType: !186, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !668, file: !16, line: 1000, baseType: !62, size: 64, offset: 640)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !161, file: !16, line: 1150, baseType: !186, size: 64, offset: 4288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !161, file: !16, line: 1151, baseType: !400, size: 64, offset: 4352)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !161, file: !16, line: 1152, baseType: !322, size: 64, offset: 4416)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !161, file: !16, line: 1153, baseType: !400, size: 64, offset: 4480)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !161, file: !16, line: 1154, baseType: !322, size: 64, offset: 4544)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !161, file: !16, line: 1155, baseType: !434, size: 64, offset: 4608)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !161, file: !16, line: 1156, baseType: !434, size: 64, offset: 4672)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !161, file: !16, line: 1157, baseType: !406, size: 64, offset: 4736)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !161, file: !16, line: 1158, baseType: !406, size: 64, offset: 4800)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !161, file: !16, line: 1159, baseType: !406, size: 64, offset: 4864)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !161, file: !16, line: 1160, baseType: !698, size: 64, offset: 4928)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !103, !62}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !161, file: !16, line: 1163, baseType: !62, size: 64, offset: 4992)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !161, file: !16, line: 1166, baseType: !62, size: 64, offset: 5056)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !161, file: !16, line: 1173, baseType: !103, size: 64, offset: 5120)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !161, file: !16, line: 1174, baseType: !112, size: 64, offset: 5184)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !161, file: !16, line: 1182, baseType: !255, size: 64, offset: 5248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !161, file: !16, line: 1183, baseType: !148, size: 32, offset: 5312)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !161, file: !16, line: 1185, baseType: !406, size: 64, offset: 5376)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !161, file: !16, line: 1186, baseType: !710, size: 64, offset: 5440)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !712, file: !16, line: 1085, baseType: !400, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !712, file: !16, line: 1086, baseType: !255, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !161, file: !16, line: 1188, baseType: !406, size: 64, offset: 5504)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !161, file: !16, line: 1190, baseType: !255, size: 64, offset: 5568)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !161, file: !16, line: 1194, baseType: !255, size: 64, offset: 5632)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !161, file: !16, line: 1195, baseType: !672, size: 64, offset: 5696)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !161, file: !16, line: 1196, baseType: !148, size: 32, offset: 5760)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !161, file: !16, line: 1197, baseType: !255, size: 64, offset: 5824)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !161, file: !16, line: 1198, baseType: !63, size: 64, offset: 5888)
!723 = !DILocalVariable(name: "c", arg: 1, scope: !156, file: !3, line: 67, type: !159)
!724 = !DILocation(line: 67, column: 30, scope: !156)
!725 = !DILocation(line: 70, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !156, file: !3, line: 70, column: 9)
!727 = !DILocation(line: 70, column: 12, scope: !726)
!728 = !DILocation(line: 70, column: 18, scope: !726)
!729 = !DILocation(line: 70, column: 9, scope: !156)
!730 = !DILocalVariable(name: "ri", scope: !731, file: !3, line: 71, type: !732)
!731 = distinct !DILexicalBlock(scope: !726, file: !3, line: 70, column: 43)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !114, line: 186, baseType: !733)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !114, line: 175, size: 3840, elements: !734)
!734 = !{!735, !736, !737, !738, !739, !740, !741, !745, !746, !759}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !114, line: 176, baseType: !148, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !733, file: !114, line: 177, baseType: !112, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !733, file: !114, line: 178, baseType: !60, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !733, file: !114, line: 179, baseType: !62, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !733, file: !114, line: 180, baseType: !255, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !733, file: !114, line: 181, baseType: !255, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !733, file: !114, line: 182, baseType: !742, size: 1024, offset: 384)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1024, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !733, file: !114, line: 183, baseType: !118, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !733, file: !114, line: 184, baseType: !747, size: 2304, offset: 1472)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !114, line: 150, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !114, line: 143, size: 2304, elements: !749)
!749 = !{!750, !752, !753, !754, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !748, file: !114, line: 144, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !748, file: !114, line: 145, baseType: !255, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !748, file: !114, line: 145, baseType: !255, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !748, file: !114, line: 148, baseType: !755, size: 2048, offset: 192)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2048, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !748, file: !114, line: 149, baseType: !148, size: 32, offset: 2240)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !733, file: !114, line: 185, baseType: !760, size: 64, offset: 3776)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !114, line: 165, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!148, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!765 = !DILocation(line: 71, column: 21, scope: !731)
!766 = !DILocation(line: 72, column: 22, scope: !731)
!767 = !DILocation(line: 72, column: 25, scope: !731)
!768 = !DILocation(line: 72, column: 9, scope: !731)
!769 = !DILocation(line: 73, column: 9, scope: !731)
!770 = !DILocation(line: 74, column: 9, scope: !731)
!771 = !DILocation(line: 74, column: 15, scope: !731)
!772 = !DILocalVariable(name: "bs", scope: !773, file: !3, line: 75, type: !774)
!773 = distinct !DILexicalBlock(scope: !731, file: !3, line: 74, column: 29)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "bcastState", file: !3, line: 59, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bcastState", file: !3, line: 55, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !776, file: !3, line: 56, baseType: !112, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !776, file: !3, line: 57, baseType: !112, size: 64, offset: 64)
!780 = !DILocation(line: 75, column: 25, scope: !773)
!781 = !DILocation(line: 75, column: 38, scope: !773)
!782 = !DILocation(line: 75, column: 53, scope: !773)
!783 = !DILocation(line: 75, column: 60, scope: !773)
!784 = !DILocation(line: 75, column: 30, scope: !773)
!785 = !DILocation(line: 76, column: 13, scope: !773)
!786 = !DILocation(line: 77, column: 23, scope: !773)
!787 = !DILocation(line: 77, column: 27, scope: !773)
!788 = !DILocation(line: 77, column: 35, scope: !773)
!789 = !DILocation(line: 77, column: 13, scope: !773)
!790 = !DILocation(line: 80, column: 25, scope: !791)
!791 = distinct !DILexicalBlock(scope: !773, file: !3, line: 80, column: 17)
!792 = !DILocation(line: 80, column: 29, scope: !791)
!793 = !DILocation(line: 80, column: 17, scope: !791)
!794 = !DILocation(line: 80, column: 38, scope: !791)
!795 = !DILocation(line: 80, column: 17, scope: !773)
!796 = !DILocation(line: 81, column: 25, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !3, line: 80, column: 44)
!798 = !DILocation(line: 81, column: 29, scope: !797)
!799 = !DILocation(line: 81, column: 17, scope: !797)
!800 = !DILocation(line: 82, column: 25, scope: !797)
!801 = !DILocation(line: 82, column: 29, scope: !797)
!802 = !DILocation(line: 82, column: 17, scope: !797)
!803 = !DILocation(line: 83, column: 23, scope: !797)
!804 = !DILocation(line: 83, column: 17, scope: !797)
!805 = !DILocation(line: 84, column: 27, scope: !797)
!806 = !DILocation(line: 84, column: 42, scope: !797)
!807 = !DILocation(line: 84, column: 49, scope: !797)
!808 = !DILocation(line: 84, column: 17, scope: !797)
!809 = !DILocation(line: 85, column: 13, scope: !797)
!810 = distinct !{!810, !770, !811, !812}
!811 = !DILocation(line: 86, column: 9, scope: !731)
!812 = !{!"llvm.loop.mustprogress"}
!813 = !DILocation(line: 87, column: 9, scope: !731)
!814 = !DILocation(line: 88, column: 17, scope: !731)
!815 = !DILocation(line: 88, column: 20, scope: !731)
!816 = !DILocation(line: 88, column: 9, scope: !731)
!817 = !DILocation(line: 89, column: 9, scope: !731)
!818 = !DILocation(line: 89, column: 12, scope: !731)
!819 = !DILocation(line: 89, column: 37, scope: !731)
!820 = !DILocation(line: 90, column: 5, scope: !731)
!821 = !DILocation(line: 93, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !156, file: !3, line: 93, column: 9)
!823 = !DILocation(line: 93, column: 12, scope: !822)
!824 = !DILocation(line: 93, column: 18, scope: !822)
!825 = !DILocation(line: 93, column: 9, scope: !156)
!826 = !DILocation(line: 94, column: 32, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 93, column: 37)
!828 = !DILocation(line: 95, column: 9, scope: !827)
!829 = !DILocation(line: 95, column: 12, scope: !827)
!830 = !DILocation(line: 95, column: 18, scope: !827)
!831 = !DILocation(line: 99, column: 5, scope: !827)
!832 = !DILocation(line: 100, column: 1, scope: !156)
!833 = distinct !DISubprogram(name: "checkPrefixCollisionsOrReply", scope: !3, file: !3, line: 112, type: !834, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!834 = !DISubroutineType(types: !835)
!835 = !{!148, !159, !439, !255}
!836 = !DILocalVariable(name: "c", arg: 1, scope: !833, file: !3, line: 112, type: !159)
!837 = !DILocation(line: 112, column: 42, scope: !833)
!838 = !DILocalVariable(name: "prefixes", arg: 2, scope: !833, file: !3, line: 112, type: !439)
!839 = !DILocation(line: 112, column: 52, scope: !833)
!840 = !DILocalVariable(name: "numprefix", arg: 3, scope: !833, file: !3, line: 112, type: !255)
!841 = !DILocation(line: 112, column: 69, scope: !833)
!842 = !DILocalVariable(name: "i", scope: !843, file: !3, line: 113, type: !255)
!843 = distinct !DILexicalBlock(scope: !833, file: !3, line: 113, column: 5)
!844 = !DILocation(line: 113, column: 17, scope: !843)
!845 = !DILocation(line: 113, column: 10, scope: !843)
!846 = !DILocation(line: 113, column: 24, scope: !847)
!847 = distinct !DILexicalBlock(scope: !843, file: !3, line: 113, column: 5)
!848 = !DILocation(line: 113, column: 28, scope: !847)
!849 = !DILocation(line: 113, column: 26, scope: !847)
!850 = !DILocation(line: 113, column: 5, scope: !843)
!851 = !DILocation(line: 115, column: 13, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 115, column: 13)
!853 = distinct !DILexicalBlock(scope: !847, file: !3, line: 113, column: 44)
!854 = !DILocation(line: 115, column: 16, scope: !852)
!855 = !DILocation(line: 115, column: 13, scope: !853)
!856 = !DILocalVariable(name: "ri", scope: !857, file: !3, line: 116, type: !732)
!857 = distinct !DILexicalBlock(scope: !852, file: !3, line: 115, column: 42)
!858 = !DILocation(line: 116, column: 25, scope: !857)
!859 = !DILocation(line: 117, column: 26, scope: !857)
!860 = !DILocation(line: 117, column: 29, scope: !857)
!861 = !DILocation(line: 117, column: 13, scope: !857)
!862 = !DILocation(line: 118, column: 13, scope: !857)
!863 = !DILocation(line: 119, column: 13, scope: !857)
!864 = !DILocation(line: 119, column: 19, scope: !857)
!865 = !DILocation(line: 120, column: 42, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 120, column: 21)
!867 = distinct !DILexicalBlock(scope: !857, file: !3, line: 119, column: 33)
!868 = !DILocation(line: 120, column: 49, scope: !866)
!869 = !DILocation(line: 121, column: 21, scope: !866)
!870 = !DILocation(line: 121, column: 30, scope: !866)
!871 = !DILocation(line: 121, column: 34, scope: !866)
!872 = !DILocation(line: 121, column: 45, scope: !866)
!873 = !DILocation(line: 121, column: 54, scope: !866)
!874 = !DILocation(line: 121, column: 58, scope: !866)
!875 = !DILocation(line: 121, column: 38, scope: !866)
!876 = !DILocation(line: 120, column: 21, scope: !866)
!877 = !DILocation(line: 120, column: 21, scope: !867)
!878 = !DILocalVariable(name: "collision", scope: !879, file: !3, line: 123, type: !434)
!879 = distinct !DILexicalBlock(scope: !866, file: !3, line: 122, column: 17)
!880 = !DILocation(line: 123, column: 25, scope: !879)
!881 = !DILocation(line: 123, column: 50, scope: !879)
!882 = !DILocation(line: 123, column: 57, scope: !879)
!883 = !DILocation(line: 123, column: 37, scope: !879)
!884 = !DILocation(line: 124, column: 41, scope: !879)
!885 = !DILocation(line: 127, column: 42, scope: !879)
!886 = !DILocation(line: 127, column: 51, scope: !879)
!887 = !DILocation(line: 127, column: 55, scope: !879)
!888 = !DILocation(line: 128, column: 42, scope: !879)
!889 = !DILocation(line: 124, column: 21, scope: !879)
!890 = !DILocation(line: 129, column: 29, scope: !879)
!891 = !DILocation(line: 129, column: 21, scope: !879)
!892 = !DILocation(line: 130, column: 21, scope: !879)
!893 = !DILocation(line: 131, column: 21, scope: !879)
!894 = distinct !{!894, !863, !895, !812}
!895 = !DILocation(line: 133, column: 13, scope: !857)
!896 = !DILocation(line: 134, column: 13, scope: !857)
!897 = !DILocation(line: 135, column: 9, scope: !857)
!898 = !DILocalVariable(name: "j", scope: !899, file: !3, line: 137, type: !255)
!899 = distinct !DILexicalBlock(scope: !853, file: !3, line: 137, column: 9)
!900 = !DILocation(line: 137, column: 21, scope: !899)
!901 = !DILocation(line: 137, column: 25, scope: !899)
!902 = !DILocation(line: 137, column: 27, scope: !899)
!903 = !DILocation(line: 137, column: 14, scope: !899)
!904 = !DILocation(line: 137, column: 32, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !3, line: 137, column: 9)
!906 = !DILocation(line: 137, column: 36, scope: !905)
!907 = !DILocation(line: 137, column: 34, scope: !905)
!908 = !DILocation(line: 137, column: 9, scope: !899)
!909 = !DILocation(line: 138, column: 35, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 138, column: 17)
!911 = distinct !DILexicalBlock(scope: !905, file: !3, line: 137, column: 52)
!912 = !DILocation(line: 138, column: 44, scope: !910)
!913 = !DILocation(line: 138, column: 48, scope: !910)
!914 = !DILocation(line: 138, column: 59, scope: !910)
!915 = !DILocation(line: 138, column: 68, scope: !910)
!916 = !DILocation(line: 138, column: 72, scope: !910)
!917 = !DILocation(line: 138, column: 52, scope: !910)
!918 = !DILocation(line: 139, column: 17, scope: !910)
!919 = !DILocation(line: 139, column: 26, scope: !910)
!920 = !DILocation(line: 139, column: 30, scope: !910)
!921 = !DILocation(line: 139, column: 41, scope: !910)
!922 = !DILocation(line: 139, column: 50, scope: !910)
!923 = !DILocation(line: 139, column: 54, scope: !910)
!924 = !DILocation(line: 139, column: 34, scope: !910)
!925 = !DILocation(line: 138, column: 17, scope: !910)
!926 = !DILocation(line: 138, column: 17, scope: !911)
!927 = !DILocation(line: 141, column: 37, scope: !928)
!928 = distinct !DILexicalBlock(scope: !910, file: !3, line: 140, column: 13)
!929 = !DILocation(line: 144, column: 38, scope: !928)
!930 = !DILocation(line: 144, column: 47, scope: !928)
!931 = !DILocation(line: 144, column: 51, scope: !928)
!932 = !DILocation(line: 145, column: 38, scope: !928)
!933 = !DILocation(line: 145, column: 47, scope: !928)
!934 = !DILocation(line: 145, column: 51, scope: !928)
!935 = !DILocation(line: 141, column: 17, scope: !928)
!936 = !DILocation(line: 146, column: 24, scope: !928)
!937 = !DILocation(line: 146, column: 17, scope: !928)
!938 = !DILocation(line: 148, column: 9, scope: !911)
!939 = !DILocation(line: 137, column: 48, scope: !905)
!940 = !DILocation(line: 137, column: 9, scope: !905)
!941 = distinct !{!941, !908, !942, !812}
!942 = !DILocation(line: 148, column: 9, scope: !899)
!943 = !DILocation(line: 149, column: 5, scope: !853)
!944 = !DILocation(line: 113, column: 40, scope: !847)
!945 = !DILocation(line: 113, column: 5, scope: !847)
!946 = distinct !{!946, !850, !947, !812}
!947 = !DILocation(line: 149, column: 5, scope: !843)
!948 = !DILocation(line: 150, column: 5, scope: !833)
!949 = !DILocation(line: 151, column: 1, scope: !833)
!950 = distinct !DISubprogram(name: "stringCheckPrefix", scope: !3, file: !3, line: 102, type: !951, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!951 = !DISubroutineType(types: !952)
!952 = !{!148, !60, !255, !60, !255}
!953 = !DILocalVariable(name: "s1", arg: 1, scope: !950, file: !3, line: 102, type: !60)
!954 = !DILocation(line: 102, column: 45, scope: !950)
!955 = !DILocalVariable(name: "s1_len", arg: 2, scope: !950, file: !3, line: 102, type: !255)
!956 = !DILocation(line: 102, column: 56, scope: !950)
!957 = !DILocalVariable(name: "s2", arg: 3, scope: !950, file: !3, line: 102, type: !60)
!958 = !DILocation(line: 102, column: 79, scope: !950)
!959 = !DILocalVariable(name: "s2_len", arg: 4, scope: !950, file: !3, line: 102, type: !255)
!960 = !DILocation(line: 102, column: 90, scope: !950)
!961 = !DILocalVariable(name: "min_length", scope: !950, file: !3, line: 103, type: !255)
!962 = !DILocation(line: 103, column: 12, scope: !950)
!963 = !DILocation(line: 103, column: 25, scope: !950)
!964 = !DILocation(line: 103, column: 34, scope: !950)
!965 = !DILocation(line: 103, column: 32, scope: !950)
!966 = !DILocation(line: 103, column: 43, scope: !950)
!967 = !DILocation(line: 103, column: 52, scope: !950)
!968 = !DILocation(line: 104, column: 19, scope: !950)
!969 = !DILocation(line: 104, column: 22, scope: !950)
!970 = !DILocation(line: 104, column: 25, scope: !950)
!971 = !DILocation(line: 104, column: 12, scope: !950)
!972 = !DILocation(line: 104, column: 37, scope: !950)
!973 = !DILocation(line: 104, column: 5, scope: !950)
!974 = distinct !DISubprogram(name: "sdslen", scope: !67, file: !67, line: 87, type: !975, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !137)
!975 = !DISubroutineType(types: !976)
!976 = !{!255, !977}
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!978 = !DILocalVariable(name: "s", arg: 1, scope: !974, file: !67, line: 87, type: !977)
!979 = !DILocation(line: 87, column: 39, scope: !974)
!980 = !DILocalVariable(name: "flags", scope: !974, file: !67, line: 88, type: !61)
!981 = !DILocation(line: 88, column: 19, scope: !974)
!982 = !DILocation(line: 88, column: 27, scope: !974)
!983 = !DILocation(line: 89, column: 12, scope: !974)
!984 = !DILocation(line: 89, column: 17, scope: !974)
!985 = !DILocation(line: 89, column: 5, scope: !974)
!986 = !DILocation(line: 91, column: 20, scope: !987)
!987 = distinct !DILexicalBlock(scope: !974, file: !67, line: 89, column: 33)
!988 = !DILocation(line: 91, column: 13, scope: !987)
!989 = !DILocation(line: 93, column: 20, scope: !987)
!990 = !DILocation(line: 93, column: 34, scope: !987)
!991 = !DILocation(line: 93, column: 13, scope: !987)
!992 = !DILocation(line: 95, column: 20, scope: !987)
!993 = !DILocation(line: 95, column: 35, scope: !987)
!994 = !DILocation(line: 95, column: 13, scope: !987)
!995 = !DILocation(line: 97, column: 20, scope: !987)
!996 = !DILocation(line: 97, column: 35, scope: !987)
!997 = !DILocation(line: 97, column: 13, scope: !987)
!998 = !DILocation(line: 99, column: 20, scope: !987)
!999 = !DILocation(line: 99, column: 35, scope: !987)
!1000 = !DILocation(line: 99, column: 13, scope: !987)
!1001 = !DILocation(line: 101, column: 5, scope: !974)
!1002 = !DILocation(line: 102, column: 1, scope: !974)
!1003 = distinct !DISubprogram(name: "enableBcastTrackingForPrefix", scope: !3, file: !3, line: 155, type: !1004, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !159, !63, !255}
!1006 = !DILocalVariable(name: "c", arg: 1, scope: !1003, file: !3, line: 155, type: !159)
!1007 = !DILocation(line: 155, column: 43, scope: !1003)
!1008 = !DILocalVariable(name: "prefix", arg: 2, scope: !1003, file: !3, line: 155, type: !63)
!1009 = !DILocation(line: 155, column: 52, scope: !1003)
!1010 = !DILocalVariable(name: "plen", arg: 3, scope: !1003, file: !3, line: 155, type: !255)
!1011 = !DILocation(line: 155, column: 67, scope: !1003)
!1012 = !DILocalVariable(name: "bs", scope: !1003, file: !3, line: 156, type: !774)
!1013 = !DILocation(line: 156, column: 17, scope: !1003)
!1014 = !DILocation(line: 156, column: 30, scope: !1003)
!1015 = !DILocation(line: 156, column: 58, scope: !1003)
!1016 = !DILocation(line: 156, column: 65, scope: !1003)
!1017 = !DILocation(line: 156, column: 22, scope: !1003)
!1018 = !DILocation(line: 159, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 159, column: 9)
!1020 = !DILocation(line: 159, column: 15, scope: !1019)
!1021 = !DILocation(line: 159, column: 12, scope: !1019)
!1022 = !DILocation(line: 159, column: 9, scope: !1003)
!1023 = !DILocation(line: 160, column: 14, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 159, column: 28)
!1025 = !DILocation(line: 160, column: 12, scope: !1024)
!1026 = !DILocation(line: 161, column: 20, scope: !1024)
!1027 = !DILocation(line: 161, column: 9, scope: !1024)
!1028 = !DILocation(line: 161, column: 13, scope: !1024)
!1029 = !DILocation(line: 161, column: 18, scope: !1024)
!1030 = !DILocation(line: 162, column: 23, scope: !1024)
!1031 = !DILocation(line: 162, column: 9, scope: !1024)
!1032 = !DILocation(line: 162, column: 13, scope: !1024)
!1033 = !DILocation(line: 162, column: 21, scope: !1024)
!1034 = !DILocation(line: 163, column: 19, scope: !1024)
!1035 = !DILocation(line: 163, column: 47, scope: !1024)
!1036 = !DILocation(line: 163, column: 54, scope: !1024)
!1037 = !DILocation(line: 163, column: 59, scope: !1024)
!1038 = !DILocation(line: 163, column: 9, scope: !1024)
!1039 = !DILocation(line: 164, column: 5, scope: !1024)
!1040 = !DILocation(line: 165, column: 22, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 165, column: 9)
!1042 = !DILocation(line: 165, column: 26, scope: !1041)
!1043 = !DILocation(line: 165, column: 34, scope: !1041)
!1044 = !DILocation(line: 165, column: 9, scope: !1041)
!1045 = !DILocation(line: 165, column: 9, scope: !1003)
!1046 = !DILocation(line: 166, column: 13, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 166, column: 13)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 165, column: 75)
!1049 = !DILocation(line: 166, column: 16, scope: !1047)
!1050 = !DILocation(line: 166, column: 41, scope: !1047)
!1051 = !DILocation(line: 166, column: 13, scope: !1048)
!1052 = !DILocation(line: 167, column: 43, scope: !1047)
!1053 = !DILocation(line: 167, column: 13, scope: !1047)
!1054 = !DILocation(line: 167, column: 16, scope: !1047)
!1055 = !DILocation(line: 167, column: 41, scope: !1047)
!1056 = !DILocation(line: 168, column: 19, scope: !1048)
!1057 = !DILocation(line: 168, column: 22, scope: !1048)
!1058 = !DILocation(line: 169, column: 35, scope: !1048)
!1059 = !DILocation(line: 169, column: 42, scope: !1048)
!1060 = !DILocation(line: 168, column: 9, scope: !1048)
!1061 = !DILocation(line: 170, column: 5, scope: !1048)
!1062 = !DILocation(line: 171, column: 1, scope: !1003)
!1063 = distinct !DISubprogram(name: "enableTracking", scope: !3, file: !3, line: 180, type: !1064, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !159, !103, !103, !439, !255}
!1066 = !DILocalVariable(name: "c", arg: 1, scope: !1063, file: !3, line: 180, type: !159)
!1067 = !DILocation(line: 180, column: 29, scope: !1063)
!1068 = !DILocalVariable(name: "redirect_to", arg: 2, scope: !1063, file: !3, line: 180, type: !103)
!1069 = !DILocation(line: 180, column: 41, scope: !1063)
!1070 = !DILocalVariable(name: "options", arg: 3, scope: !1063, file: !3, line: 180, type: !103)
!1071 = !DILocation(line: 180, column: 63, scope: !1063)
!1072 = !DILocalVariable(name: "prefix", arg: 4, scope: !1063, file: !3, line: 180, type: !439)
!1073 = !DILocation(line: 180, column: 79, scope: !1063)
!1074 = !DILocalVariable(name: "numprefix", arg: 5, scope: !1063, file: !3, line: 180, type: !255)
!1075 = !DILocation(line: 180, column: 94, scope: !1063)
!1076 = !DILocation(line: 181, column: 11, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 181, column: 9)
!1078 = !DILocation(line: 181, column: 14, scope: !1077)
!1079 = !DILocation(line: 181, column: 20, scope: !1077)
!1080 = !DILocation(line: 181, column: 9, scope: !1063)
!1081 = !DILocation(line: 181, column: 63, scope: !1077)
!1082 = !DILocation(line: 181, column: 40, scope: !1077)
!1083 = !DILocation(line: 182, column: 5, scope: !1063)
!1084 = !DILocation(line: 182, column: 8, scope: !1063)
!1085 = !DILocation(line: 182, column: 14, scope: !1063)
!1086 = !DILocation(line: 183, column: 5, scope: !1063)
!1087 = !DILocation(line: 183, column: 8, scope: !1063)
!1088 = !DILocation(line: 183, column: 14, scope: !1063)
!1089 = !DILocation(line: 186, column: 38, scope: !1063)
!1090 = !DILocation(line: 186, column: 5, scope: !1063)
!1091 = !DILocation(line: 186, column: 8, scope: !1063)
!1092 = !DILocation(line: 186, column: 36, scope: !1063)
!1093 = !DILocation(line: 190, column: 9, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 190, column: 9)
!1095 = !DILocation(line: 190, column: 23, scope: !1094)
!1096 = !DILocation(line: 190, column: 9, scope: !1063)
!1097 = !DILocation(line: 191, column: 25, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 190, column: 32)
!1099 = !DILocation(line: 191, column: 23, scope: !1098)
!1100 = !DILocation(line: 192, column: 23, scope: !1098)
!1101 = !DILocation(line: 192, column: 21, scope: !1098)
!1102 = !DILocation(line: 193, column: 31, scope: !1098)
!1103 = !DILocation(line: 193, column: 29, scope: !1098)
!1104 = !DILocation(line: 194, column: 5, scope: !1098)
!1105 = !DILocation(line: 197, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 197, column: 9)
!1107 = !DILocation(line: 197, column: 17, scope: !1106)
!1108 = !DILocation(line: 197, column: 9, scope: !1063)
!1109 = !DILocation(line: 198, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 197, column: 42)
!1111 = !DILocation(line: 198, column: 12, scope: !1110)
!1112 = !DILocation(line: 198, column: 18, scope: !1110)
!1113 = !DILocation(line: 199, column: 13, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 199, column: 13)
!1115 = !DILocation(line: 199, column: 23, scope: !1114)
!1116 = !DILocation(line: 199, column: 13, scope: !1110)
!1117 = !DILocation(line: 199, column: 58, scope: !1114)
!1118 = !DILocation(line: 199, column: 29, scope: !1114)
!1119 = !DILocalVariable(name: "j", scope: !1120, file: !3, line: 200, type: !255)
!1120 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 200, column: 9)
!1121 = !DILocation(line: 200, column: 21, scope: !1120)
!1122 = !DILocation(line: 200, column: 14, scope: !1120)
!1123 = !DILocation(line: 200, column: 28, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 200, column: 9)
!1125 = !DILocation(line: 200, column: 32, scope: !1124)
!1126 = !DILocation(line: 200, column: 30, scope: !1124)
!1127 = !DILocation(line: 200, column: 9, scope: !1120)
!1128 = !DILocalVariable(name: "sdsprefix", scope: !1129, file: !3, line: 201, type: !434)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 200, column: 48)
!1130 = !DILocation(line: 201, column: 17, scope: !1129)
!1131 = !DILocation(line: 201, column: 29, scope: !1129)
!1132 = !DILocation(line: 201, column: 36, scope: !1129)
!1133 = !DILocation(line: 201, column: 40, scope: !1129)
!1134 = !DILocation(line: 202, column: 42, scope: !1129)
!1135 = !DILocation(line: 202, column: 44, scope: !1129)
!1136 = !DILocation(line: 202, column: 61, scope: !1129)
!1137 = !DILocation(line: 202, column: 54, scope: !1129)
!1138 = !DILocation(line: 202, column: 13, scope: !1129)
!1139 = !DILocation(line: 203, column: 9, scope: !1129)
!1140 = !DILocation(line: 200, column: 44, scope: !1124)
!1141 = !DILocation(line: 200, column: 9, scope: !1124)
!1142 = distinct !{!1142, !1127, !1143, !812}
!1143 = !DILocation(line: 203, column: 9, scope: !1120)
!1144 = !DILocation(line: 204, column: 5, scope: !1110)
!1145 = !DILocation(line: 207, column: 17, scope: !1063)
!1146 = !DILocation(line: 207, column: 25, scope: !1063)
!1147 = !DILocation(line: 207, column: 5, scope: !1063)
!1148 = !DILocation(line: 207, column: 8, scope: !1063)
!1149 = !DILocation(line: 207, column: 14, scope: !1063)
!1150 = !DILocation(line: 209, column: 1, scope: !1063)
!1151 = distinct !DISubprogram(name: "trackingRememberKeys", scope: !3, file: !3, line: 217, type: !157, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1152 = !DILocalVariable(name: "c", arg: 1, scope: !1151, file: !3, line: 217, type: !159)
!1153 = !DILocation(line: 217, column: 35, scope: !1151)
!1154 = !DILocalVariable(name: "optin", scope: !1151, file: !3, line: 220, type: !103)
!1155 = !DILocation(line: 220, column: 14, scope: !1151)
!1156 = !DILocation(line: 220, column: 22, scope: !1151)
!1157 = !DILocation(line: 220, column: 25, scope: !1151)
!1158 = !DILocation(line: 220, column: 31, scope: !1151)
!1159 = !DILocalVariable(name: "optout", scope: !1151, file: !3, line: 221, type: !103)
!1160 = !DILocation(line: 221, column: 14, scope: !1151)
!1161 = !DILocation(line: 221, column: 23, scope: !1151)
!1162 = !DILocation(line: 221, column: 26, scope: !1151)
!1163 = !DILocation(line: 221, column: 32, scope: !1151)
!1164 = !DILocalVariable(name: "caching_given", scope: !1151, file: !3, line: 222, type: !103)
!1165 = !DILocation(line: 222, column: 14, scope: !1151)
!1166 = !DILocation(line: 222, column: 30, scope: !1151)
!1167 = !DILocation(line: 222, column: 33, scope: !1151)
!1168 = !DILocation(line: 222, column: 39, scope: !1151)
!1169 = !DILocation(line: 223, column: 10, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 223, column: 9)
!1171 = !DILocation(line: 223, column: 16, scope: !1170)
!1172 = !DILocation(line: 223, column: 20, scope: !1170)
!1173 = !DILocation(line: 223, column: 35, scope: !1170)
!1174 = !DILocation(line: 223, column: 39, scope: !1170)
!1175 = !DILocation(line: 223, column: 46, scope: !1170)
!1176 = !DILocation(line: 223, column: 49, scope: !1170)
!1177 = !DILocation(line: 223, column: 9, scope: !1151)
!1178 = !DILocation(line: 223, column: 65, scope: !1170)
!1179 = !DILocalVariable(name: "result", scope: !1151, file: !3, line: 225, type: !518)
!1180 = !DILocation(line: 225, column: 19, scope: !1151)
!1181 = !DILocalVariable(name: "numkeys", scope: !1151, file: !3, line: 226, type: !148)
!1182 = !DILocation(line: 226, column: 9, scope: !1151)
!1183 = !DILocation(line: 226, column: 38, scope: !1151)
!1184 = !DILocation(line: 226, column: 41, scope: !1151)
!1185 = !DILocation(line: 226, column: 45, scope: !1151)
!1186 = !DILocation(line: 226, column: 48, scope: !1151)
!1187 = !DILocation(line: 226, column: 53, scope: !1151)
!1188 = !DILocation(line: 226, column: 56, scope: !1151)
!1189 = !DILocation(line: 226, column: 19, scope: !1151)
!1190 = !DILocation(line: 227, column: 10, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 227, column: 9)
!1192 = !DILocation(line: 227, column: 9, scope: !1151)
!1193 = !DILocation(line: 228, column: 9, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 227, column: 19)
!1195 = !DILocation(line: 229, column: 9, scope: !1194)
!1196 = !DILocation(line: 234, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 234, column: 9)
!1198 = !DILocation(line: 234, column: 12, scope: !1197)
!1199 = !DILocation(line: 234, column: 17, scope: !1197)
!1200 = !DILocation(line: 234, column: 23, scope: !1197)
!1201 = !DILocation(line: 234, column: 9, scope: !1151)
!1202 = !DILocation(line: 235, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 234, column: 37)
!1204 = !DILocalVariable(name: "keys", scope: !1151, file: !3, line: 238, type: !531)
!1205 = !DILocation(line: 238, column: 19, scope: !1151)
!1206 = !DILocation(line: 238, column: 33, scope: !1151)
!1207 = !DILocalVariable(name: "j", scope: !1208, file: !3, line: 240, type: !148)
!1208 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 240, column: 5)
!1209 = !DILocation(line: 240, column: 13, scope: !1208)
!1210 = !DILocation(line: 240, column: 9, scope: !1208)
!1211 = !DILocation(line: 240, column: 20, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 240, column: 5)
!1213 = !DILocation(line: 240, column: 24, scope: !1212)
!1214 = !DILocation(line: 240, column: 22, scope: !1212)
!1215 = !DILocation(line: 240, column: 5, scope: !1208)
!1216 = !DILocalVariable(name: "idx", scope: !1217, file: !3, line: 241, type: !148)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 240, column: 38)
!1218 = !DILocation(line: 241, column: 13, scope: !1217)
!1219 = !DILocation(line: 241, column: 19, scope: !1217)
!1220 = !DILocation(line: 241, column: 24, scope: !1217)
!1221 = !DILocation(line: 241, column: 27, scope: !1217)
!1222 = !DILocalVariable(name: "sdskey", scope: !1217, file: !3, line: 242, type: !434)
!1223 = !DILocation(line: 242, column: 13, scope: !1217)
!1224 = !DILocation(line: 242, column: 22, scope: !1217)
!1225 = !DILocation(line: 242, column: 25, scope: !1217)
!1226 = !DILocation(line: 242, column: 30, scope: !1217)
!1227 = !DILocation(line: 242, column: 36, scope: !1217)
!1228 = !DILocalVariable(name: "ids", scope: !1217, file: !3, line: 243, type: !112)
!1229 = !DILocation(line: 243, column: 14, scope: !1217)
!1230 = !DILocation(line: 243, column: 28, scope: !1217)
!1231 = !DILocation(line: 243, column: 58, scope: !1217)
!1232 = !DILocation(line: 243, column: 72, scope: !1217)
!1233 = !DILocation(line: 243, column: 65, scope: !1217)
!1234 = !DILocation(line: 243, column: 20, scope: !1217)
!1235 = !DILocation(line: 244, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 244, column: 13)
!1237 = !DILocation(line: 244, column: 20, scope: !1236)
!1238 = !DILocation(line: 244, column: 17, scope: !1236)
!1239 = !DILocation(line: 244, column: 13, scope: !1217)
!1240 = !DILocation(line: 245, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 244, column: 33)
!1242 = !DILocation(line: 245, column: 17, scope: !1241)
!1243 = !DILocalVariable(name: "inserted", scope: !1241, file: !3, line: 246, type: !148)
!1244 = !DILocation(line: 246, column: 17, scope: !1241)
!1245 = !DILocation(line: 246, column: 41, scope: !1241)
!1246 = !DILocation(line: 246, column: 71, scope: !1241)
!1247 = !DILocation(line: 247, column: 48, scope: !1241)
!1248 = !DILocation(line: 247, column: 41, scope: !1241)
!1249 = !DILocation(line: 247, column: 56, scope: !1241)
!1250 = !DILocation(line: 246, column: 28, scope: !1241)
!1251 = !DILocation(line: 248, column: 13, scope: !1241)
!1252 = !DILocation(line: 249, column: 9, scope: !1241)
!1253 = !DILocation(line: 250, column: 26, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 250, column: 13)
!1255 = !DILocation(line: 250, column: 47, scope: !1254)
!1256 = !DILocation(line: 250, column: 50, scope: !1254)
!1257 = !DILocation(line: 250, column: 30, scope: !1254)
!1258 = !DILocation(line: 250, column: 13, scope: !1254)
!1259 = !DILocation(line: 250, column: 13, scope: !1217)
!1260 = !DILocation(line: 251, column: 36, scope: !1254)
!1261 = !DILocation(line: 251, column: 13, scope: !1254)
!1262 = !DILocation(line: 252, column: 5, scope: !1217)
!1263 = !DILocation(line: 240, column: 34, scope: !1212)
!1264 = !DILocation(line: 240, column: 5, scope: !1212)
!1265 = distinct !{!1265, !1215, !1266, !812}
!1266 = !DILocation(line: 252, column: 5, scope: !1208)
!1267 = !DILocation(line: 253, column: 5, scope: !1151)
!1268 = !DILocation(line: 254, column: 1, scope: !1151)
!1269 = distinct !DISubprogram(name: "sendTrackingMessage", scope: !3, file: !3, line: 268, type: !1270, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !159, !63, !255, !148}
!1272 = !DILocalVariable(name: "c", arg: 1, scope: !1269, file: !3, line: 268, type: !159)
!1273 = !DILocation(line: 268, column: 34, scope: !1269)
!1274 = !DILocalVariable(name: "keyname", arg: 2, scope: !1269, file: !3, line: 268, type: !63)
!1275 = !DILocation(line: 268, column: 43, scope: !1269)
!1276 = !DILocalVariable(name: "keylen", arg: 3, scope: !1269, file: !3, line: 268, type: !255)
!1277 = !DILocation(line: 268, column: 59, scope: !1269)
!1278 = !DILocalVariable(name: "proto", arg: 4, scope: !1269, file: !3, line: 268, type: !148)
!1279 = !DILocation(line: 268, column: 71, scope: !1269)
!1280 = !DILocalVariable(name: "old_flags", scope: !1269, file: !3, line: 269, type: !103)
!1281 = !DILocation(line: 269, column: 14, scope: !1269)
!1282 = !DILocation(line: 269, column: 26, scope: !1269)
!1283 = !DILocation(line: 269, column: 29, scope: !1269)
!1284 = !DILocation(line: 270, column: 5, scope: !1269)
!1285 = !DILocation(line: 270, column: 8, scope: !1269)
!1286 = !DILocation(line: 270, column: 14, scope: !1269)
!1287 = !DILocalVariable(name: "using_redirection", scope: !1269, file: !3, line: 272, type: !148)
!1288 = !DILocation(line: 272, column: 9, scope: !1269)
!1289 = !DILocation(line: 273, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 273, column: 9)
!1291 = !DILocation(line: 273, column: 12, scope: !1290)
!1292 = !DILocation(line: 273, column: 9, scope: !1269)
!1293 = !DILocalVariable(name: "redir", scope: !1294, file: !3, line: 274, type: !159)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 273, column: 41)
!1295 = !DILocation(line: 274, column: 17, scope: !1294)
!1296 = !DILocation(line: 274, column: 42, scope: !1294)
!1297 = !DILocation(line: 274, column: 45, scope: !1294)
!1298 = !DILocation(line: 274, column: 25, scope: !1294)
!1299 = !DILocation(line: 275, column: 14, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 275, column: 13)
!1301 = !DILocation(line: 275, column: 13, scope: !1294)
!1302 = !DILocation(line: 276, column: 13, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 275, column: 21)
!1304 = !DILocation(line: 276, column: 16, scope: !1303)
!1305 = !DILocation(line: 276, column: 22, scope: !1303)
!1306 = !DILocation(line: 280, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 280, column: 17)
!1308 = !DILocation(line: 280, column: 20, scope: !1307)
!1309 = !DILocation(line: 280, column: 25, scope: !1307)
!1310 = !DILocation(line: 280, column: 17, scope: !1303)
!1311 = !DILocation(line: 281, column: 33, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 280, column: 30)
!1313 = !DILocation(line: 281, column: 17, scope: !1312)
!1314 = !DILocation(line: 282, column: 37, scope: !1312)
!1315 = !DILocation(line: 282, column: 17, scope: !1312)
!1316 = !DILocation(line: 283, column: 34, scope: !1312)
!1317 = !DILocation(line: 283, column: 36, scope: !1312)
!1318 = !DILocation(line: 283, column: 39, scope: !1312)
!1319 = !DILocation(line: 283, column: 17, scope: !1312)
!1320 = !DILocation(line: 284, column: 13, scope: !1312)
!1321 = !DILocation(line: 285, column: 19, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 285, column: 17)
!1323 = !DILocation(line: 285, column: 29, scope: !1322)
!1324 = !DILocation(line: 285, column: 17, scope: !1303)
!1325 = !DILocation(line: 285, column: 48, scope: !1322)
!1326 = !DILocation(line: 285, column: 51, scope: !1322)
!1327 = !DILocation(line: 285, column: 57, scope: !1322)
!1328 = !DILocation(line: 286, column: 13, scope: !1303)
!1329 = !DILocation(line: 288, column: 15, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 288, column: 13)
!1331 = !DILocation(line: 288, column: 25, scope: !1330)
!1332 = !DILocation(line: 288, column: 13, scope: !1294)
!1333 = !DILocation(line: 288, column: 44, scope: !1330)
!1334 = !DILocation(line: 288, column: 47, scope: !1330)
!1335 = !DILocation(line: 288, column: 53, scope: !1330)
!1336 = !DILocation(line: 289, column: 13, scope: !1294)
!1337 = !DILocation(line: 289, column: 11, scope: !1294)
!1338 = !DILocation(line: 290, column: 27, scope: !1294)
!1339 = !DILocation(line: 291, column: 21, scope: !1294)
!1340 = !DILocation(line: 291, column: 24, scope: !1294)
!1341 = !DILocation(line: 291, column: 19, scope: !1294)
!1342 = !DILocation(line: 292, column: 9, scope: !1294)
!1343 = !DILocation(line: 292, column: 12, scope: !1294)
!1344 = !DILocation(line: 292, column: 18, scope: !1294)
!1345 = !DILocation(line: 293, column: 5, scope: !1294)
!1346 = !DILocation(line: 299, column: 9, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 299, column: 9)
!1348 = !DILocation(line: 299, column: 12, scope: !1347)
!1349 = !DILocation(line: 299, column: 17, scope: !1347)
!1350 = !DILocation(line: 299, column: 9, scope: !1269)
!1351 = !DILocation(line: 300, column: 25, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 299, column: 22)
!1353 = !DILocation(line: 300, column: 9, scope: !1352)
!1354 = !DILocation(line: 301, column: 29, scope: !1352)
!1355 = !DILocation(line: 301, column: 9, scope: !1352)
!1356 = !DILocation(line: 302, column: 5, scope: !1352)
!1357 = !DILocation(line: 302, column: 16, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 302, column: 16)
!1359 = !DILocation(line: 302, column: 34, scope: !1358)
!1360 = !DILocation(line: 302, column: 37, scope: !1358)
!1361 = !DILocation(line: 302, column: 40, scope: !1358)
!1362 = !DILocation(line: 302, column: 46, scope: !1358)
!1363 = !DILocation(line: 302, column: 16, scope: !1347)
!1364 = !DILocation(line: 305, column: 31, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 302, column: 63)
!1366 = !DILocation(line: 305, column: 33, scope: !1365)
!1367 = !DILocation(line: 305, column: 65, scope: !1365)
!1368 = !DILocation(line: 305, column: 9, scope: !1365)
!1369 = !DILocation(line: 306, column: 5, scope: !1365)
!1370 = !DILocation(line: 311, column: 15, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 311, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 306, column: 12)
!1373 = !DILocation(line: 311, column: 25, scope: !1371)
!1374 = !DILocation(line: 311, column: 13, scope: !1372)
!1375 = !DILocation(line: 311, column: 44, scope: !1371)
!1376 = !DILocation(line: 311, column: 47, scope: !1371)
!1377 = !DILocation(line: 311, column: 53, scope: !1371)
!1378 = !DILocation(line: 312, column: 9, scope: !1372)
!1379 = !DILocation(line: 316, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 316, column: 9)
!1381 = !DILocation(line: 316, column: 9, scope: !1269)
!1382 = !DILocation(line: 317, column: 23, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 316, column: 16)
!1384 = !DILocation(line: 317, column: 25, scope: !1383)
!1385 = !DILocation(line: 317, column: 33, scope: !1383)
!1386 = !DILocation(line: 317, column: 9, scope: !1383)
!1387 = !DILocation(line: 318, column: 5, scope: !1383)
!1388 = !DILocation(line: 319, column: 26, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 318, column: 12)
!1390 = !DILocation(line: 319, column: 9, scope: !1389)
!1391 = !DILocation(line: 320, column: 29, scope: !1389)
!1392 = !DILocation(line: 320, column: 31, scope: !1389)
!1393 = !DILocation(line: 320, column: 39, scope: !1389)
!1394 = !DILocation(line: 320, column: 9, scope: !1389)
!1395 = !DILocation(line: 322, column: 35, scope: !1269)
!1396 = !DILocation(line: 322, column: 5, scope: !1269)
!1397 = !DILocation(line: 323, column: 11, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 323, column: 9)
!1399 = !DILocation(line: 323, column: 21, scope: !1398)
!1400 = !DILocation(line: 323, column: 9, scope: !1269)
!1401 = !DILocation(line: 323, column: 40, scope: !1398)
!1402 = !DILocation(line: 323, column: 43, scope: !1398)
!1403 = !DILocation(line: 323, column: 49, scope: !1398)
!1404 = !DILocation(line: 324, column: 1, scope: !1269)
!1405 = distinct !DISubprogram(name: "trackingRememberKeyToBroadcast", scope: !3, file: !3, line: 332, type: !1004, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1406 = !DILocalVariable(name: "c", arg: 1, scope: !1405, file: !3, line: 332, type: !159)
!1407 = !DILocation(line: 332, column: 45, scope: !1405)
!1408 = !DILocalVariable(name: "keyname", arg: 2, scope: !1405, file: !3, line: 332, type: !63)
!1409 = !DILocation(line: 332, column: 54, scope: !1405)
!1410 = !DILocalVariable(name: "keylen", arg: 3, scope: !1405, file: !3, line: 332, type: !255)
!1411 = !DILocation(line: 332, column: 70, scope: !1405)
!1412 = !DILocalVariable(name: "ri", scope: !1405, file: !3, line: 333, type: !732)
!1413 = !DILocation(line: 333, column: 17, scope: !1405)
!1414 = !DILocation(line: 334, column: 18, scope: !1405)
!1415 = !DILocation(line: 334, column: 5, scope: !1405)
!1416 = !DILocation(line: 335, column: 5, scope: !1405)
!1417 = !DILocation(line: 336, column: 5, scope: !1405)
!1418 = !DILocation(line: 336, column: 11, scope: !1405)
!1419 = !DILocation(line: 337, column: 16, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 337, column: 13)
!1421 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 336, column: 25)
!1422 = !DILocation(line: 337, column: 26, scope: !1420)
!1423 = !DILocation(line: 337, column: 24, scope: !1420)
!1424 = !DILocation(line: 337, column: 13, scope: !1421)
!1425 = !DILocation(line: 337, column: 34, scope: !1420)
!1426 = distinct !{!1426, !1417, !1427, !812}
!1427 = !DILocation(line: 346, column: 5, scope: !1405)
!1428 = !DILocation(line: 338, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 338, column: 13)
!1430 = !DILocation(line: 338, column: 24, scope: !1429)
!1431 = !DILocation(line: 338, column: 29, scope: !1429)
!1432 = !DILocation(line: 338, column: 42, scope: !1429)
!1433 = !DILocation(line: 338, column: 46, scope: !1429)
!1434 = !DILocation(line: 338, column: 57, scope: !1429)
!1435 = !DILocation(line: 338, column: 32, scope: !1429)
!1436 = !DILocation(line: 338, column: 66, scope: !1429)
!1437 = !DILocation(line: 338, column: 13, scope: !1421)
!1438 = !DILocation(line: 339, column: 13, scope: !1429)
!1439 = !DILocalVariable(name: "bs", scope: !1421, file: !3, line: 340, type: !774)
!1440 = !DILocation(line: 340, column: 21, scope: !1421)
!1441 = !DILocation(line: 340, column: 29, scope: !1421)
!1442 = !DILocation(line: 340, column: 26, scope: !1421)
!1443 = !DILocation(line: 345, column: 19, scope: !1421)
!1444 = !DILocation(line: 345, column: 23, scope: !1421)
!1445 = !DILocation(line: 345, column: 44, scope: !1421)
!1446 = !DILocation(line: 345, column: 52, scope: !1421)
!1447 = !DILocation(line: 345, column: 59, scope: !1421)
!1448 = !DILocation(line: 345, column: 9, scope: !1421)
!1449 = !DILocation(line: 347, column: 5, scope: !1405)
!1450 = !DILocation(line: 348, column: 1, scope: !1405)
!1451 = distinct !DISubprogram(name: "trackingInvalidateKey", scope: !3, file: !3, line: 366, type: !1452, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !159, !140, !148}
!1454 = !DILocalVariable(name: "c", arg: 1, scope: !1451, file: !3, line: 366, type: !159)
!1455 = !DILocation(line: 366, column: 36, scope: !1451)
!1456 = !DILocalVariable(name: "keyobj", arg: 2, scope: !1451, file: !3, line: 366, type: !140)
!1457 = !DILocation(line: 366, column: 45, scope: !1451)
!1458 = !DILocalVariable(name: "bcast", arg: 3, scope: !1451, file: !3, line: 366, type: !148)
!1459 = !DILocation(line: 366, column: 57, scope: !1451)
!1460 = !DILocation(line: 367, column: 9, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 367, column: 9)
!1462 = !DILocation(line: 367, column: 23, scope: !1461)
!1463 = !DILocation(line: 367, column: 9, scope: !1451)
!1464 = !DILocation(line: 367, column: 32, scope: !1461)
!1465 = !DILocalVariable(name: "key", scope: !1451, file: !3, line: 369, type: !60)
!1466 = !DILocation(line: 369, column: 20, scope: !1451)
!1467 = !DILocation(line: 369, column: 42, scope: !1451)
!1468 = !DILocation(line: 369, column: 50, scope: !1451)
!1469 = !DILocalVariable(name: "keylen", scope: !1451, file: !3, line: 370, type: !255)
!1470 = !DILocation(line: 370, column: 12, scope: !1451)
!1471 = !DILocation(line: 370, column: 28, scope: !1451)
!1472 = !DILocation(line: 370, column: 36, scope: !1451)
!1473 = !DILocation(line: 370, column: 21, scope: !1451)
!1474 = !DILocation(line: 372, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 372, column: 9)
!1476 = !DILocation(line: 372, column: 15, scope: !1475)
!1477 = !DILocation(line: 372, column: 26, scope: !1475)
!1478 = !DILocation(line: 372, column: 18, scope: !1475)
!1479 = !DILocation(line: 372, column: 39, scope: !1475)
!1480 = !DILocation(line: 372, column: 9, scope: !1451)
!1481 = !DILocation(line: 373, column: 40, scope: !1475)
!1482 = !DILocation(line: 373, column: 50, scope: !1475)
!1483 = !DILocation(line: 373, column: 54, scope: !1475)
!1484 = !DILocation(line: 373, column: 9, scope: !1475)
!1485 = !DILocalVariable(name: "ids", scope: !1451, file: !3, line: 375, type: !112)
!1486 = !DILocation(line: 375, column: 10, scope: !1451)
!1487 = !DILocation(line: 375, column: 24, scope: !1451)
!1488 = !DILocation(line: 375, column: 38, scope: !1451)
!1489 = !DILocation(line: 375, column: 42, scope: !1451)
!1490 = !DILocation(line: 375, column: 16, scope: !1451)
!1491 = !DILocation(line: 376, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 376, column: 9)
!1493 = !DILocation(line: 376, column: 16, scope: !1492)
!1494 = !DILocation(line: 376, column: 13, scope: !1492)
!1495 = !DILocation(line: 376, column: 9, scope: !1451)
!1496 = !DILocation(line: 376, column: 29, scope: !1492)
!1497 = !DILocalVariable(name: "ri", scope: !1451, file: !3, line: 378, type: !732)
!1498 = !DILocation(line: 378, column: 17, scope: !1451)
!1499 = !DILocation(line: 379, column: 18, scope: !1451)
!1500 = !DILocation(line: 379, column: 5, scope: !1451)
!1501 = !DILocation(line: 380, column: 5, scope: !1451)
!1502 = !DILocation(line: 381, column: 5, scope: !1451)
!1503 = !DILocation(line: 381, column: 11, scope: !1451)
!1504 = !DILocalVariable(name: "id", scope: !1505, file: !3, line: 382, type: !103)
!1505 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 381, column: 25)
!1506 = !DILocation(line: 382, column: 18, scope: !1505)
!1507 = !DILocation(line: 383, column: 9, scope: !1505)
!1508 = !DILocation(line: 383, column: 23, scope: !1505)
!1509 = !DILocalVariable(name: "target", scope: !1505, file: !3, line: 384, type: !159)
!1510 = !DILocation(line: 384, column: 17, scope: !1505)
!1511 = !DILocation(line: 384, column: 43, scope: !1505)
!1512 = !DILocation(line: 384, column: 26, scope: !1505)
!1513 = !DILocation(line: 390, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 390, column: 13)
!1515 = !DILocation(line: 390, column: 20, scope: !1514)
!1516 = !DILocation(line: 390, column: 28, scope: !1514)
!1517 = !DILocation(line: 391, column: 15, scope: !1514)
!1518 = !DILocation(line: 391, column: 23, scope: !1514)
!1519 = !DILocation(line: 391, column: 29, scope: !1514)
!1520 = !DILocation(line: 391, column: 47, scope: !1514)
!1521 = !DILocation(line: 392, column: 13, scope: !1514)
!1522 = !DILocation(line: 392, column: 21, scope: !1514)
!1523 = !DILocation(line: 392, column: 27, scope: !1514)
!1524 = !DILocation(line: 390, column: 13, scope: !1505)
!1525 = !DILocation(line: 394, column: 13, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 393, column: 9)
!1527 = distinct !{!1527, !1502, !1528, !812}
!1528 = !DILocation(line: 414, column: 5, scope: !1451)
!1529 = !DILocation(line: 399, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 399, column: 13)
!1531 = !DILocation(line: 399, column: 21, scope: !1530)
!1532 = !DILocation(line: 399, column: 27, scope: !1530)
!1533 = !DILocation(line: 399, column: 52, scope: !1530)
!1534 = !DILocation(line: 400, column: 13, scope: !1530)
!1535 = !DILocation(line: 400, column: 30, scope: !1530)
!1536 = !DILocation(line: 400, column: 20, scope: !1530)
!1537 = !DILocation(line: 399, column: 13, scope: !1505)
!1538 = !DILocation(line: 402, column: 13, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 401, column: 9)
!1540 = !DILocation(line: 408, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 408, column: 13)
!1542 = !DILocation(line: 408, column: 30, scope: !1541)
!1543 = !DILocation(line: 408, column: 20, scope: !1541)
!1544 = !DILocation(line: 408, column: 45, scope: !1541)
!1545 = !DILocation(line: 408, column: 55, scope: !1541)
!1546 = !DILocation(line: 408, column: 48, scope: !1541)
!1547 = !DILocation(line: 408, column: 13, scope: !1505)
!1548 = !DILocation(line: 409, column: 26, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 408, column: 74)
!1550 = !DILocation(line: 409, column: 13, scope: !1549)
!1551 = !DILocation(line: 410, column: 36, scope: !1549)
!1552 = !DILocation(line: 410, column: 59, scope: !1549)
!1553 = !DILocation(line: 410, column: 13, scope: !1549)
!1554 = !DILocation(line: 411, column: 9, scope: !1549)
!1555 = !DILocation(line: 412, column: 33, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 411, column: 16)
!1557 = !DILocation(line: 412, column: 48, scope: !1556)
!1558 = !DILocation(line: 412, column: 56, scope: !1556)
!1559 = !DILocation(line: 412, column: 67, scope: !1556)
!1560 = !DILocation(line: 412, column: 75, scope: !1556)
!1561 = !DILocation(line: 412, column: 60, scope: !1556)
!1562 = !DILocation(line: 412, column: 13, scope: !1556)
!1563 = !DILocation(line: 415, column: 5, scope: !1451)
!1564 = !DILocation(line: 419, column: 40, scope: !1451)
!1565 = !DILocation(line: 419, column: 32, scope: !1451)
!1566 = !DILocation(line: 419, column: 29, scope: !1451)
!1567 = !DILocation(line: 420, column: 13, scope: !1451)
!1568 = !DILocation(line: 420, column: 5, scope: !1451)
!1569 = !DILocation(line: 421, column: 15, scope: !1451)
!1570 = !DILocation(line: 421, column: 45, scope: !1451)
!1571 = !DILocation(line: 421, column: 49, scope: !1451)
!1572 = !DILocation(line: 421, column: 5, scope: !1451)
!1573 = !DILocation(line: 422, column: 1, scope: !1451)
!1574 = distinct !DISubprogram(name: "trackingHandlePendingKeyInvalidations", scope: !3, file: !3, line: 424, type: !135, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1575 = !DILocation(line: 425, column: 10, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 425, column: 9)
!1577 = !DILocation(line: 425, column: 9, scope: !1574)
!1578 = !DILocation(line: 425, column: 52, scope: !1576)
!1579 = !DILocalVariable(name: "ln", scope: !1574, file: !3, line: 427, type: !406)
!1580 = !DILocation(line: 427, column: 15, scope: !1574)
!1581 = !DILocalVariable(name: "li", scope: !1574, file: !3, line: 428, type: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !402, line: 45, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !402, line: 42, size: 128, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1583, file: !402, line: 43, baseType: !406, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1583, file: !402, line: 44, baseType: !148, size: 32, offset: 64)
!1587 = !DILocation(line: 428, column: 14, scope: !1574)
!1588 = !DILocation(line: 430, column: 23, scope: !1574)
!1589 = !DILocation(line: 430, column: 5, scope: !1574)
!1590 = !DILocation(line: 431, column: 5, scope: !1574)
!1591 = !DILocation(line: 431, column: 18, scope: !1574)
!1592 = !DILocation(line: 431, column: 16, scope: !1574)
!1593 = !DILocation(line: 431, column: 33, scope: !1574)
!1594 = !DILocalVariable(name: "key", scope: !1595, file: !3, line: 432, type: !140)
!1595 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 431, column: 42)
!1596 = !DILocation(line: 432, column: 15, scope: !1595)
!1597 = !DILocation(line: 432, column: 21, scope: !1595)
!1598 = !DILocation(line: 435, column: 20, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 435, column: 13)
!1600 = !DILocation(line: 435, column: 35, scope: !1599)
!1601 = !DILocation(line: 435, column: 13, scope: !1595)
!1602 = !DILocation(line: 436, column: 17, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 436, column: 17)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 435, column: 44)
!1605 = !DILocation(line: 436, column: 21, scope: !1603)
!1606 = !DILocation(line: 436, column: 17, scope: !1604)
!1607 = !DILocation(line: 437, column: 44, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 436, column: 30)
!1609 = !DILocation(line: 437, column: 67, scope: !1608)
!1610 = !DILocation(line: 437, column: 72, scope: !1608)
!1611 = !DILocation(line: 437, column: 83, scope: !1608)
!1612 = !DILocation(line: 437, column: 88, scope: !1608)
!1613 = !DILocation(line: 437, column: 76, scope: !1608)
!1614 = !DILocation(line: 437, column: 17, scope: !1608)
!1615 = !DILocation(line: 438, column: 13, scope: !1608)
!1616 = !DILocation(line: 439, column: 44, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 438, column: 20)
!1618 = !DILocation(line: 439, column: 78, scope: !1617)
!1619 = !DILocation(line: 439, column: 94, scope: !1617)
!1620 = !DILocation(line: 439, column: 59, scope: !1617)
!1621 = !DILocation(line: 439, column: 101, scope: !1617)
!1622 = !DILocation(line: 440, column: 47, scope: !1617)
!1623 = !DILocation(line: 440, column: 63, scope: !1617)
!1624 = !DILocation(line: 440, column: 28, scope: !1617)
!1625 = !DILocation(line: 440, column: 70, scope: !1617)
!1626 = !DILocation(line: 440, column: 21, scope: !1617)
!1627 = !DILocation(line: 439, column: 17, scope: !1617)
!1628 = !DILocation(line: 442, column: 9, scope: !1604)
!1629 = !DILocation(line: 443, column: 13, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 443, column: 13)
!1631 = !DILocation(line: 443, column: 17, scope: !1630)
!1632 = !DILocation(line: 443, column: 13, scope: !1595)
!1633 = !DILocation(line: 443, column: 39, scope: !1630)
!1634 = !DILocation(line: 443, column: 26, scope: !1630)
!1635 = distinct !{!1635, !1590, !1636, !812}
!1636 = !DILocation(line: 444, column: 5, scope: !1574)
!1637 = !DILocation(line: 445, column: 22, scope: !1574)
!1638 = !DILocation(line: 445, column: 5, scope: !1574)
!1639 = !DILocation(line: 446, column: 1, scope: !1574)
!1640 = distinct !DISubprogram(name: "freeTrackingRadixTreeCallback", scope: !3, file: !3, line: 455, type: !421, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1641 = !DILocalVariable(name: "rt", arg: 1, scope: !1640, file: !3, line: 455, type: !62)
!1642 = !DILocation(line: 455, column: 42, scope: !1640)
!1643 = !DILocation(line: 456, column: 13, scope: !1640)
!1644 = !DILocation(line: 456, column: 5, scope: !1640)
!1645 = !DILocation(line: 457, column: 1, scope: !1640)
!1646 = distinct !DISubprogram(name: "freeTrackingRadixTree", scope: !3, file: !3, line: 459, type: !1647, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{null, !112}
!1649 = !DILocalVariable(name: "rt", arg: 1, scope: !1646, file: !3, line: 459, type: !112)
!1650 = !DILocation(line: 459, column: 33, scope: !1646)
!1651 = !DILocation(line: 460, column: 25, scope: !1646)
!1652 = !DILocation(line: 460, column: 5, scope: !1646)
!1653 = !DILocation(line: 461, column: 1, scope: !1646)
!1654 = distinct !DISubprogram(name: "trackingInvalidateKeysOnFlush", scope: !3, file: !3, line: 464, type: !1655, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !148}
!1657 = !DILocalVariable(name: "async", arg: 1, scope: !1654, file: !3, line: 464, type: !148)
!1658 = !DILocation(line: 464, column: 40, scope: !1654)
!1659 = !DILocation(line: 465, column: 16, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 465, column: 9)
!1661 = !DILocation(line: 465, column: 9, scope: !1660)
!1662 = !DILocation(line: 465, column: 9, scope: !1654)
!1663 = !DILocalVariable(name: "ln", scope: !1664, file: !3, line: 466, type: !406)
!1664 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 465, column: 34)
!1665 = !DILocation(line: 466, column: 19, scope: !1664)
!1666 = !DILocalVariable(name: "li", scope: !1664, file: !3, line: 467, type: !1582)
!1667 = !DILocation(line: 467, column: 18, scope: !1664)
!1668 = !DILocation(line: 468, column: 27, scope: !1664)
!1669 = !DILocation(line: 468, column: 9, scope: !1664)
!1670 = !DILocation(line: 469, column: 9, scope: !1664)
!1671 = !DILocation(line: 469, column: 22, scope: !1664)
!1672 = !DILocation(line: 469, column: 20, scope: !1664)
!1673 = !DILocation(line: 469, column: 37, scope: !1664)
!1674 = !DILocalVariable(name: "c", scope: !1675, file: !3, line: 470, type: !159)
!1675 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 469, column: 46)
!1676 = !DILocation(line: 470, column: 21, scope: !1675)
!1677 = !DILocation(line: 470, column: 25, scope: !1675)
!1678 = !DILocation(line: 471, column: 17, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 471, column: 17)
!1680 = !DILocation(line: 471, column: 20, scope: !1679)
!1681 = !DILocation(line: 471, column: 26, scope: !1679)
!1682 = !DILocation(line: 471, column: 17, scope: !1675)
!1683 = !DILocation(line: 472, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 472, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 471, column: 45)
!1686 = !DILocation(line: 472, column: 33, scope: !1684)
!1687 = !DILocation(line: 472, column: 23, scope: !1684)
!1688 = !DILocation(line: 472, column: 21, scope: !1685)
!1689 = !DILocation(line: 474, column: 44, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 472, column: 49)
!1691 = !DILocation(line: 474, column: 21, scope: !1690)
!1692 = !DILocation(line: 475, column: 17, scope: !1690)
!1693 = !DILocation(line: 476, column: 41, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 475, column: 24)
!1695 = !DILocation(line: 476, column: 55, scope: !1694)
!1696 = !DILocation(line: 476, column: 58, scope: !1694)
!1697 = !DILocation(line: 476, column: 43, scope: !1694)
!1698 = !DILocation(line: 476, column: 65, scope: !1694)
!1699 = !DILocation(line: 476, column: 88, scope: !1694)
!1700 = !DILocation(line: 476, column: 91, scope: !1694)
!1701 = !DILocation(line: 476, column: 76, scope: !1694)
!1702 = !DILocation(line: 476, column: 98, scope: !1694)
!1703 = !DILocation(line: 476, column: 69, scope: !1694)
!1704 = !DILocation(line: 476, column: 21, scope: !1694)
!1705 = !DILocation(line: 478, column: 13, scope: !1685)
!1706 = distinct !{!1706, !1670, !1707, !812}
!1707 = !DILocation(line: 479, column: 9, scope: !1664)
!1708 = !DILocation(line: 480, column: 5, scope: !1664)
!1709 = !DILocation(line: 483, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 483, column: 9)
!1711 = !DILocation(line: 483, column: 9, scope: !1654)
!1712 = !DILocation(line: 484, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 484, column: 13)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 483, column: 24)
!1715 = !DILocation(line: 484, column: 13, scope: !1714)
!1716 = !DILocation(line: 485, column: 40, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 484, column: 20)
!1718 = !DILocation(line: 485, column: 13, scope: !1717)
!1719 = !DILocation(line: 486, column: 9, scope: !1717)
!1720 = !DILocation(line: 487, column: 35, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 486, column: 16)
!1722 = !DILocation(line: 487, column: 13, scope: !1721)
!1723 = !DILocation(line: 489, column: 25, scope: !1714)
!1724 = !DILocation(line: 489, column: 23, scope: !1714)
!1725 = !DILocation(line: 490, column: 33, scope: !1714)
!1726 = !DILocation(line: 491, column: 5, scope: !1714)
!1727 = !DILocation(line: 492, column: 1, scope: !1654)
!1728 = !DILocation(line: 506, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !134, file: !3, line: 506, column: 9)
!1730 = !DILocation(line: 506, column: 23, scope: !1729)
!1731 = !DILocation(line: 506, column: 9, scope: !134)
!1732 = !DILocation(line: 506, column: 32, scope: !1729)
!1733 = !DILocation(line: 507, column: 16, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !134, file: !3, line: 507, column: 9)
!1735 = !DILocation(line: 507, column: 40, scope: !1734)
!1736 = !DILocation(line: 507, column: 9, scope: !134)
!1737 = !DILocation(line: 507, column: 46, scope: !1734)
!1738 = !DILocalVariable(name: "max_keys", scope: !134, file: !3, line: 508, type: !255)
!1739 = !DILocation(line: 508, column: 12, scope: !134)
!1740 = !DILocation(line: 508, column: 30, scope: !134)
!1741 = !DILocation(line: 509, column: 17, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !134, file: !3, line: 509, column: 9)
!1743 = !DILocation(line: 509, column: 9, scope: !1742)
!1744 = !DILocation(line: 509, column: 35, scope: !1742)
!1745 = !DILocation(line: 509, column: 32, scope: !1742)
!1746 = !DILocation(line: 509, column: 9, scope: !134)
!1747 = !DILocation(line: 510, column: 25, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 509, column: 45)
!1749 = !DILocation(line: 511, column: 9, scope: !1748)
!1750 = !DILocalVariable(name: "effort", scope: !134, file: !3, line: 517, type: !148)
!1751 = !DILocation(line: 517, column: 9, scope: !134)
!1752 = !DILocation(line: 517, column: 25, scope: !134)
!1753 = !DILocation(line: 517, column: 40, scope: !134)
!1754 = !DILocation(line: 517, column: 22, scope: !134)
!1755 = !DILocalVariable(name: "ri", scope: !134, file: !3, line: 520, type: !732)
!1756 = !DILocation(line: 520, column: 17, scope: !134)
!1757 = !DILocation(line: 521, column: 18, scope: !134)
!1758 = !DILocation(line: 521, column: 5, scope: !134)
!1759 = !DILocation(line: 522, column: 5, scope: !134)
!1760 = !DILocation(line: 522, column: 11, scope: !134)
!1761 = !DILocation(line: 522, column: 18, scope: !134)
!1762 = !DILocation(line: 523, column: 15, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !134, file: !3, line: 522, column: 23)
!1764 = !DILocation(line: 524, column: 9, scope: !1763)
!1765 = !DILocation(line: 525, column: 9, scope: !1763)
!1766 = !DILocation(line: 526, column: 13, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 526, column: 13)
!1768 = !DILocation(line: 526, column: 13, scope: !1763)
!1769 = !DILocation(line: 526, column: 26, scope: !1767)
!1770 = !DILocalVariable(name: "keyobj", scope: !1763, file: !3, line: 527, type: !140)
!1771 = !DILocation(line: 527, column: 15, scope: !1763)
!1772 = !DILocation(line: 527, column: 53, scope: !1763)
!1773 = !DILocation(line: 527, column: 60, scope: !1763)
!1774 = !DILocation(line: 527, column: 24, scope: !1763)
!1775 = !DILocation(line: 528, column: 36, scope: !1763)
!1776 = !DILocation(line: 528, column: 9, scope: !1763)
!1777 = !DILocation(line: 529, column: 22, scope: !1763)
!1778 = !DILocation(line: 529, column: 9, scope: !1763)
!1779 = !DILocation(line: 530, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 530, column: 13)
!1781 = !DILocation(line: 530, column: 13, scope: !1780)
!1782 = !DILocation(line: 530, column: 39, scope: !1780)
!1783 = !DILocation(line: 530, column: 36, scope: !1780)
!1784 = !DILocation(line: 530, column: 13, scope: !1763)
!1785 = !DILocation(line: 531, column: 29, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 530, column: 49)
!1787 = !DILocation(line: 532, column: 13, scope: !1786)
!1788 = !DILocation(line: 533, column: 13, scope: !1786)
!1789 = distinct !{!1789, !1759, !1790, !812}
!1790 = !DILocation(line: 535, column: 5, scope: !134)
!1791 = !DILocation(line: 539, column: 5, scope: !134)
!1792 = !DILocation(line: 540, column: 20, scope: !134)
!1793 = !DILocation(line: 541, column: 1, scope: !134)
!1794 = distinct !DISubprogram(name: "trackingBuildBroadcastReply", scope: !3, file: !3, line: 549, type: !1795, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!434, !159, !112}
!1797 = !DILocalVariable(name: "c", arg: 1, scope: !1794, file: !3, line: 549, type: !159)
!1798 = !DILocation(line: 549, column: 41, scope: !1794)
!1799 = !DILocalVariable(name: "keys", arg: 2, scope: !1794, file: !3, line: 549, type: !112)
!1800 = !DILocation(line: 549, column: 49, scope: !1794)
!1801 = !DILocalVariable(name: "ri", scope: !1794, file: !3, line: 550, type: !732)
!1802 = !DILocation(line: 550, column: 17, scope: !1794)
!1803 = !DILocalVariable(name: "count", scope: !1794, file: !3, line: 551, type: !103)
!1804 = !DILocation(line: 551, column: 14, scope: !1794)
!1805 = !DILocation(line: 553, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 553, column: 9)
!1807 = !DILocation(line: 553, column: 11, scope: !1806)
!1808 = !DILocation(line: 553, column: 9, scope: !1794)
!1809 = !DILocation(line: 554, column: 25, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 553, column: 20)
!1811 = !DILocation(line: 554, column: 17, scope: !1810)
!1812 = !DILocation(line: 554, column: 15, scope: !1810)
!1813 = !DILocation(line: 555, column: 5, scope: !1810)
!1814 = !DILocation(line: 556, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 555, column: 12)
!1816 = !DILocation(line: 557, column: 22, scope: !1815)
!1817 = !DILocation(line: 557, column: 9, scope: !1815)
!1818 = !DILocation(line: 558, column: 9, scope: !1815)
!1819 = !DILocation(line: 559, column: 9, scope: !1815)
!1820 = !DILocation(line: 559, column: 15, scope: !1815)
!1821 = !DILocation(line: 560, column: 20, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 560, column: 17)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 559, column: 29)
!1824 = !DILocation(line: 560, column: 28, scope: !1822)
!1825 = !DILocation(line: 560, column: 25, scope: !1822)
!1826 = !DILocation(line: 560, column: 17, scope: !1823)
!1827 = !DILocation(line: 560, column: 36, scope: !1822)
!1828 = !DILocation(line: 560, column: 31, scope: !1822)
!1829 = distinct !{!1829, !1819, !1830, !812}
!1830 = !DILocation(line: 561, column: 9, scope: !1815)
!1831 = !DILocation(line: 562, column: 9, scope: !1815)
!1832 = !DILocation(line: 564, column: 13, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 564, column: 13)
!1834 = !DILocation(line: 564, column: 19, scope: !1833)
!1835 = !DILocation(line: 564, column: 13, scope: !1815)
!1836 = !DILocation(line: 564, column: 25, scope: !1833)
!1837 = !DILocalVariable(name: "buf", scope: !1794, file: !3, line: 569, type: !1838)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !756)
!1839 = !DILocation(line: 569, column: 10, scope: !1794)
!1840 = !DILocalVariable(name: "len", scope: !1794, file: !3, line: 570, type: !255)
!1841 = !DILocation(line: 570, column: 12, scope: !1794)
!1842 = !DILocation(line: 570, column: 28, scope: !1794)
!1843 = !DILocation(line: 570, column: 44, scope: !1794)
!1844 = !DILocation(line: 570, column: 18, scope: !1794)
!1845 = !DILocalVariable(name: "proto", scope: !1794, file: !3, line: 571, type: !434)
!1846 = !DILocation(line: 571, column: 9, scope: !1794)
!1847 = !DILocation(line: 571, column: 17, scope: !1794)
!1848 = !DILocation(line: 572, column: 28, scope: !1794)
!1849 = !DILocation(line: 572, column: 34, scope: !1794)
!1850 = !DILocation(line: 572, column: 39, scope: !1794)
!1851 = !DILocation(line: 572, column: 13, scope: !1794)
!1852 = !DILocation(line: 572, column: 11, scope: !1794)
!1853 = !DILocation(line: 573, column: 23, scope: !1794)
!1854 = !DILocation(line: 573, column: 13, scope: !1794)
!1855 = !DILocation(line: 573, column: 11, scope: !1794)
!1856 = !DILocation(line: 574, column: 23, scope: !1794)
!1857 = !DILocation(line: 574, column: 29, scope: !1794)
!1858 = !DILocation(line: 574, column: 33, scope: !1794)
!1859 = !DILocation(line: 574, column: 13, scope: !1794)
!1860 = !DILocation(line: 574, column: 11, scope: !1794)
!1861 = !DILocation(line: 575, column: 23, scope: !1794)
!1862 = !DILocation(line: 575, column: 13, scope: !1794)
!1863 = !DILocation(line: 575, column: 11, scope: !1794)
!1864 = !DILocation(line: 576, column: 18, scope: !1794)
!1865 = !DILocation(line: 576, column: 5, scope: !1794)
!1866 = !DILocation(line: 577, column: 5, scope: !1794)
!1867 = !DILocation(line: 578, column: 5, scope: !1794)
!1868 = !DILocation(line: 578, column: 11, scope: !1794)
!1869 = !DILocation(line: 579, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 579, column: 13)
!1871 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 578, column: 25)
!1872 = !DILocation(line: 579, column: 15, scope: !1870)
!1873 = !DILocation(line: 579, column: 21, scope: !1870)
!1874 = !DILocation(line: 579, column: 29, scope: !1870)
!1875 = !DILocation(line: 579, column: 26, scope: !1870)
!1876 = !DILocation(line: 579, column: 13, scope: !1871)
!1877 = !DILocation(line: 579, column: 32, scope: !1870)
!1878 = distinct !{!1878, !1867, !1879, !812}
!1879 = !DILocation(line: 586, column: 5, scope: !1794)
!1880 = !DILocation(line: 580, column: 25, scope: !1871)
!1881 = !DILocation(line: 580, column: 44, scope: !1871)
!1882 = !DILocation(line: 580, column: 15, scope: !1871)
!1883 = !DILocation(line: 580, column: 13, scope: !1871)
!1884 = !DILocation(line: 581, column: 27, scope: !1871)
!1885 = !DILocation(line: 581, column: 17, scope: !1871)
!1886 = !DILocation(line: 581, column: 15, scope: !1871)
!1887 = !DILocation(line: 582, column: 27, scope: !1871)
!1888 = !DILocation(line: 582, column: 33, scope: !1871)
!1889 = !DILocation(line: 582, column: 37, scope: !1871)
!1890 = !DILocation(line: 582, column: 17, scope: !1871)
!1891 = !DILocation(line: 582, column: 15, scope: !1871)
!1892 = !DILocation(line: 583, column: 27, scope: !1871)
!1893 = !DILocation(line: 583, column: 17, scope: !1871)
!1894 = !DILocation(line: 583, column: 15, scope: !1871)
!1895 = !DILocation(line: 584, column: 27, scope: !1871)
!1896 = !DILocation(line: 584, column: 36, scope: !1871)
!1897 = !DILocation(line: 584, column: 43, scope: !1871)
!1898 = !DILocation(line: 584, column: 17, scope: !1871)
!1899 = !DILocation(line: 584, column: 15, scope: !1871)
!1900 = !DILocation(line: 585, column: 27, scope: !1871)
!1901 = !DILocation(line: 585, column: 17, scope: !1871)
!1902 = !DILocation(line: 585, column: 15, scope: !1871)
!1903 = !DILocation(line: 587, column: 5, scope: !1794)
!1904 = !DILocation(line: 588, column: 12, scope: !1794)
!1905 = !DILocation(line: 588, column: 5, scope: !1794)
!1906 = !DILocation(line: 589, column: 1, scope: !1794)
!1907 = distinct !DISubprogram(name: "trackingBroadcastInvalidationMessages", scope: !3, file: !3, line: 594, type: !135, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!1908 = !DILocalVariable(name: "ri", scope: !1907, file: !3, line: 595, type: !732)
!1909 = !DILocation(line: 595, column: 17, scope: !1907)
!1910 = !DILocalVariable(name: "ri2", scope: !1907, file: !3, line: 595, type: !732)
!1911 = !DILocation(line: 595, column: 21, scope: !1907)
!1912 = !DILocation(line: 598, column: 9, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 598, column: 9)
!1914 = !DILocation(line: 598, column: 23, scope: !1913)
!1915 = !DILocation(line: 598, column: 31, scope: !1913)
!1916 = !DILocation(line: 598, column: 42, scope: !1913)
!1917 = !DILocation(line: 598, column: 35, scope: !1913)
!1918 = !DILocation(line: 598, column: 9, scope: !1907)
!1919 = !DILocation(line: 598, column: 60, scope: !1913)
!1920 = !DILocation(line: 600, column: 18, scope: !1907)
!1921 = !DILocation(line: 600, column: 5, scope: !1907)
!1922 = !DILocation(line: 601, column: 5, scope: !1907)
!1923 = !DILocation(line: 604, column: 5, scope: !1907)
!1924 = !DILocation(line: 604, column: 11, scope: !1907)
!1925 = !DILocalVariable(name: "bs", scope: !1926, file: !3, line: 605, type: !774)
!1926 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 604, column: 25)
!1927 = !DILocation(line: 605, column: 21, scope: !1926)
!1928 = !DILocation(line: 605, column: 29, scope: !1926)
!1929 = !DILocation(line: 605, column: 26, scope: !1926)
!1930 = !DILocation(line: 607, column: 21, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 607, column: 13)
!1932 = !DILocation(line: 607, column: 25, scope: !1931)
!1933 = !DILocation(line: 607, column: 13, scope: !1931)
!1934 = !DILocation(line: 607, column: 13, scope: !1926)
!1935 = !DILocalVariable(name: "proto", scope: !1936, file: !3, line: 610, type: !434)
!1936 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 607, column: 32)
!1937 = !DILocation(line: 610, column: 17, scope: !1936)
!1938 = !DILocation(line: 610, column: 58, scope: !1936)
!1939 = !DILocation(line: 610, column: 62, scope: !1936)
!1940 = !DILocation(line: 610, column: 25, scope: !1936)
!1941 = !DILocation(line: 613, column: 27, scope: !1936)
!1942 = !DILocation(line: 613, column: 31, scope: !1936)
!1943 = !DILocation(line: 613, column: 13, scope: !1936)
!1944 = !DILocation(line: 614, column: 13, scope: !1936)
!1945 = !DILocation(line: 615, column: 13, scope: !1936)
!1946 = !DILocation(line: 615, column: 19, scope: !1936)
!1947 = !DILocalVariable(name: "c", scope: !1948, file: !3, line: 616, type: !159)
!1948 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 615, column: 34)
!1949 = !DILocation(line: 616, column: 25, scope: !1948)
!1950 = !DILocation(line: 617, column: 17, scope: !1948)
!1951 = !DILocation(line: 617, column: 31, scope: !1948)
!1952 = !DILocation(line: 618, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 618, column: 21)
!1954 = !DILocation(line: 618, column: 24, scope: !1953)
!1955 = !DILocation(line: 618, column: 30, scope: !1953)
!1956 = !DILocation(line: 618, column: 21, scope: !1948)
!1957 = !DILocalVariable(name: "adhoc", scope: !1958, file: !3, line: 620, type: !434)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 618, column: 56)
!1959 = !DILocation(line: 620, column: 25, scope: !1958)
!1960 = !DILocation(line: 620, column: 61, scope: !1958)
!1961 = !DILocation(line: 620, column: 63, scope: !1958)
!1962 = !DILocation(line: 620, column: 67, scope: !1958)
!1963 = !DILocation(line: 620, column: 33, scope: !1958)
!1964 = !DILocation(line: 621, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !3, line: 621, column: 25)
!1966 = !DILocation(line: 621, column: 25, scope: !1958)
!1967 = !DILocation(line: 622, column: 45, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 621, column: 32)
!1969 = !DILocation(line: 622, column: 47, scope: !1968)
!1970 = !DILocation(line: 622, column: 60, scope: !1968)
!1971 = !DILocation(line: 622, column: 53, scope: !1968)
!1972 = !DILocation(line: 622, column: 25, scope: !1968)
!1973 = !DILocation(line: 623, column: 33, scope: !1968)
!1974 = !DILocation(line: 623, column: 25, scope: !1968)
!1975 = !DILocation(line: 624, column: 21, scope: !1968)
!1976 = !DILocation(line: 625, column: 17, scope: !1958)
!1977 = !DILocation(line: 626, column: 41, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 625, column: 24)
!1979 = !DILocation(line: 626, column: 43, scope: !1978)
!1980 = !DILocation(line: 626, column: 56, scope: !1978)
!1981 = !DILocation(line: 626, column: 49, scope: !1978)
!1982 = !DILocation(line: 626, column: 21, scope: !1978)
!1983 = distinct !{!1983, !1945, !1984, !812}
!1984 = !DILocation(line: 628, column: 13, scope: !1936)
!1985 = !DILocation(line: 629, column: 13, scope: !1936)
!1986 = !DILocation(line: 634, column: 21, scope: !1936)
!1987 = !DILocation(line: 634, column: 13, scope: !1936)
!1988 = !DILocation(line: 635, column: 9, scope: !1936)
!1989 = !DILocation(line: 636, column: 17, scope: !1926)
!1990 = !DILocation(line: 636, column: 21, scope: !1926)
!1991 = !DILocation(line: 636, column: 9, scope: !1926)
!1992 = !DILocation(line: 637, column: 20, scope: !1926)
!1993 = !DILocation(line: 637, column: 9, scope: !1926)
!1994 = !DILocation(line: 637, column: 13, scope: !1926)
!1995 = !DILocation(line: 637, column: 18, scope: !1926)
!1996 = distinct !{!1996, !1923, !1997, !812}
!1997 = !DILocation(line: 638, column: 5, scope: !1907)
!1998 = !DILocation(line: 639, column: 5, scope: !1907)
!1999 = !DILocation(line: 640, column: 1, scope: !1907)
!2000 = distinct !DISubprogram(name: "trackingGetTotalItems", scope: !3, file: !3, line: 644, type: !2001, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!103}
!2003 = !DILocation(line: 645, column: 12, scope: !2000)
!2004 = !DILocation(line: 645, column: 5, scope: !2000)
!2005 = distinct !DISubprogram(name: "trackingGetTotalKeys", scope: !3, file: !3, line: 648, type: !2001, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2006 = !DILocation(line: 649, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 649, column: 9)
!2008 = !DILocation(line: 649, column: 23, scope: !2007)
!2009 = !DILocation(line: 649, column: 9, scope: !2005)
!2010 = !DILocation(line: 649, column: 32, scope: !2007)
!2011 = !DILocation(line: 650, column: 20, scope: !2005)
!2012 = !DILocation(line: 650, column: 12, scope: !2005)
!2013 = !DILocation(line: 650, column: 5, scope: !2005)
!2014 = !DILocation(line: 651, column: 1, scope: !2005)
!2015 = distinct !DISubprogram(name: "trackingGetTotalPrefixes", scope: !3, file: !3, line: 653, type: !2001, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !137)
!2016 = !DILocation(line: 654, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 654, column: 9)
!2018 = !DILocation(line: 654, column: 21, scope: !2017)
!2019 = !DILocation(line: 654, column: 9, scope: !2015)
!2020 = !DILocation(line: 654, column: 30, scope: !2017)
!2021 = !DILocation(line: 655, column: 20, scope: !2015)
!2022 = !DILocation(line: 655, column: 12, scope: !2015)
!2023 = !DILocation(line: 655, column: 5, scope: !2015)
!2024 = !DILocation(line: 656, column: 1, scope: !2015)
