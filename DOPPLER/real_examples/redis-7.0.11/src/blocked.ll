; ModuleID = 'blocked.c'
source_filename = "blocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
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
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.bkinfo = type { %struct.listNode*, %struct.streamID }
%struct.streamID = type { i64, i64 }
%struct.listIter = type { %struct.listNode*, i32 }
%struct.readyList = type { %struct.redisDb*, %struct.redisObject* }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.streamID, %struct.streamID, i64, %struct.rax* }
%struct.streamCG = type { %struct.streamID, i64, %struct.rax*, %struct.rax* }
%struct.streamConsumer = type { i64, i8*, %struct.rax* }
%struct.streamPropInfo = type { %struct.redisObject*, %struct.redisObject* }

@.str = private unnamed_addr constant [84 x i8] c"!(c->flags & CLIENT_MASTER && btype != BLOCKED_MODULE && btype != BLOCKED_POSTPONE)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"blocked.c\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"command-unblocking\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unknown btype in unblockClient().\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"Unknown btype in replyToBlockedClientTimedOut().\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Errors trying to SHUTDOWN. Check logs.\00", align 1
@.str.7 = private unnamed_addr constant [94 x i8] c"-UNBLOCKED force unblock from blocking operation, instance state changed (master -> replica?)\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.8 = private unnamed_addr constant [72 x i8] c"-NOGROUP the consumer group this client was blocked on no longer exists\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"-UNBLOCKED the stream key no longer exists\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"server.also_propagate.numops == 0\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"server.core_propagates\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"dictSize(c->bpop.keys) != 0\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"l != NULL\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"dictAdd(db->ready_keys,key,NULL) == DICT_OK\00", align 1
@getMonotonicUs = external dso_local global i64 ()*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @blockClient(%struct.client* %c, i32 %btype) #0 !dbg !65 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %btype.addr = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !676, metadata !DIExpression()), !dbg !677
  store i32 %btype, i32* %btype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %btype.addr, metadata !678, metadata !DIExpression()), !dbg !679
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !680
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !680
  %1 = load i64, i64* %flags, align 8, !dbg !680
  %and = and i64 %1, 2, !dbg !680
  %tobool = icmp ne i64 %and, 0, !dbg !680
  br i1 %tobool, label %land.lhs.true, label %cond.true, !dbg !680

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %btype.addr, align 4, !dbg !680
  %cmp = icmp ne i32 %2, 3, !dbg !680
  br i1 %cmp, label %land.lhs.true1, label %cond.true, !dbg !680

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %btype.addr, align 4, !dbg !680
  %cmp2 = icmp ne i32 %3, 6, !dbg !680
  br i1 %cmp2, label %cond.false, label %cond.true, !dbg !680

cond.true:                                        ; preds = %land.lhs.true1, %land.lhs.true, %entry
  br label %cond.end, !dbg !680

cond.false:                                       ; preds = %land.lhs.true1
  call void @_serverAssert(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 93), !dbg !680
  unreachable, !dbg !680

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !680

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !681
  %flags3 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1, !dbg !682
  %5 = load i64, i64* %flags3, align 8, !dbg !683
  %or = or i64 %5, 16, !dbg !683
  store i64 %or, i64* %flags3, align 8, !dbg !683
  %6 = load i32, i32* %btype.addr, align 4, !dbg !684
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !685
  %btype4 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 52, !dbg !686
  store i32 %6, i32* %btype4, align 8, !dbg !687
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 320), align 4, !dbg !688
  %inc = add i32 %8, 1, !dbg !688
  store i32 %inc, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 320), align 4, !dbg !688
  %9 = load i32, i32* %btype.addr, align 4, !dbg !689
  %idxprom = sext i32 %9 to i64, !dbg !690
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321), i64 0, i64 %idxprom, !dbg !690
  %10 = load i32, i32* %arrayidx, align 4, !dbg !691
  %inc5 = add i32 %10, 1, !dbg !691
  store i32 %inc5, i32* %arrayidx, align 4, !dbg !691
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !692
  call void @addClientToTimeoutTable(%struct.client* %11), !dbg !693
  %12 = load i32, i32* %btype.addr, align 4, !dbg !694
  %cmp6 = icmp eq i32 %12, 6, !dbg !696
  br i1 %cmp6, label %if.then, label %if.end, !dbg !697

if.then:                                          ; preds = %cond.end
  %13 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 72), align 8, !dbg !698
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !700
  %15 = bitcast %struct.client* %14 to i8*, !dbg !700
  %call = call %struct.list* @listAddNodeTail(%struct.list* %13, i8* %15), !dbg !701
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 72), align 8, !dbg !702
  %tail = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1, !dbg !702
  %17 = load %struct.listNode*, %struct.listNode** %tail, align 8, !dbg !702
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !703
  %postponed_list_node = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 62, !dbg !704
  store %struct.listNode* %17, %struct.listNode** %postponed_list_node, align 8, !dbg !705
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !706
  %flags7 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 1, !dbg !707
  %20 = load i64, i64* %flags7, align 8, !dbg !708
  %or8 = or i64 %20, 1073741824, !dbg !708
  store i64 %or8, i64* %flags7, align 8, !dbg !708
  br label %if.end, !dbg !709

if.end:                                           ; preds = %if.then, %cond.end
  ret void, !dbg !710
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local void @addClientToTimeoutTable(%struct.client*) #2

declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateStatsOnUnblock(%struct.client* %c, i64 %blocked_us, i64 %reply_us, i32 %had_errors) #0 !dbg !711 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %blocked_us.addr = alloca i64, align 8
  %reply_us.addr = alloca i64, align 8
  %had_errors.addr = alloca i32, align 4
  %total_cmd_duration = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store i64 %blocked_us, i64* %blocked_us.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %blocked_us.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 %reply_us, i64* %reply_us.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %reply_us.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i32 %had_errors, i32* %had_errors.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %had_errors.addr, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata i64* %total_cmd_duration, metadata !722, metadata !DIExpression()), !dbg !725
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !726
  %duration = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 27, !dbg !727
  %1 = load i64, i64* %duration, align 8, !dbg !727
  %2 = load i64, i64* %blocked_us.addr, align 8, !dbg !728
  %add = add nsw i64 %1, %2, !dbg !729
  %3 = load i64, i64* %reply_us.addr, align 8, !dbg !730
  %add1 = add nsw i64 %add, %3, !dbg !731
  store i64 %add1, i64* %total_cmd_duration, align 8, !dbg !725
  %4 = load i64, i64* %total_cmd_duration, align 8, !dbg !732
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !733
  %lastcmd = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 16, !dbg !734
  %6 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd, align 8, !dbg !734
  %microseconds = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %6, i32 0, i32 18, !dbg !735
  %7 = load i64, i64* %microseconds, align 8, !dbg !736
  %add2 = add nsw i64 %7, %4, !dbg !736
  store i64 %add2, i64* %microseconds, align 8, !dbg !736
  %8 = load i32, i32* %had_errors.addr, align 4, !dbg !737
  %tobool = icmp ne i32 %8, 0, !dbg !737
  br i1 %tobool, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %entry
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !740
  %lastcmd3 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 16, !dbg !741
  %10 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd3, align 8, !dbg !741
  %failed_calls = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %10, i32 0, i32 21, !dbg !742
  %11 = load i64, i64* %failed_calls, align 8, !dbg !743
  %inc = add nsw i64 %11, 1, !dbg !743
  store i64 %inc, i64* %failed_calls, align 8, !dbg !743
  br label %if.end, !dbg !740

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 178), align 4, !dbg !744
  %tobool4 = icmp ne i32 %12, 0, !dbg !746
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !747

if.then5:                                         ; preds = %if.end
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !748
  %lastcmd6 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 16, !dbg !749
  %14 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd6, align 8, !dbg !749
  %latency_histogram = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %14, i32 0, i32 24, !dbg !750
  %15 = load i64, i64* %total_cmd_duration, align 8, !dbg !751
  %mul = mul nsw i64 %15, 1000, !dbg !752
  call void @updateCommandLatencyHistogram(%struct.hdr_histogram** %latency_histogram, i64 %mul), !dbg !753
  br label %if.end7, !dbg !753

if.end7:                                          ; preds = %if.then5, %if.end
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !754
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !755
  %lastcmd8 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 16, !dbg !756
  %18 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd8, align 8, !dbg !756
  %19 = load i64, i64* %total_cmd_duration, align 8, !dbg !757
  call void @slowlogPushCurrentCommand(%struct.client* %16, %struct.redisCommand* %18, i64 %19), !dbg !758
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !759
  %tobool9 = icmp ne i64 %20, 0, !dbg !759
  br i1 %tobool9, label %land.lhs.true, label %if.end12, !dbg !759

land.lhs.true:                                    ; preds = %if.end7
  %21 = load i64, i64* %reply_us.addr, align 8, !dbg !759
  %div = sdiv i64 %21, 1000, !dbg !759
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !759
  %cmp = icmp sge i64 %div, %22, !dbg !759
  br i1 %cmp, label %if.then10, label %if.end12, !dbg !761

if.then10:                                        ; preds = %land.lhs.true
  %23 = load i64, i64* %reply_us.addr, align 8, !dbg !759
  %div11 = sdiv i64 %23, 1000, !dbg !759
  call void @latencyAddSample(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %div11), !dbg !759
  br label %if.end12, !dbg !759

if.end12:                                         ; preds = %if.then10, %land.lhs.true, %if.end7
  ret void, !dbg !762
}

declare dso_local void @updateCommandLatencyHistogram(%struct.hdr_histogram**, i64) #2

declare dso_local void @slowlogPushCurrentCommand(%struct.client*, %struct.redisCommand*, i64) #2

declare dso_local void @latencyAddSample(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @processUnblockedClients() #0 !dbg !763 {
entry:
  %ln = alloca %struct.listNode*, align 8
  %c = alloca %struct.client*, align 8
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !766, metadata !DIExpression()), !dbg !767
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !768, metadata !DIExpression()), !dbg !769
  br label %while.cond, !dbg !770

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 322), align 8, !dbg !771
  %len = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 5, !dbg !771
  %1 = load i64, i64* %len, align 8, !dbg !771
  %tobool = icmp ne i64 %1, 0, !dbg !770
  br i1 %tobool, label %while.body, label %while.end, !dbg !770

while.body:                                       ; preds = %while.cond
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 322), align 8, !dbg !772
  %head = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0, !dbg !772
  %3 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !772
  store %struct.listNode* %3, %struct.listNode** %ln, align 8, !dbg !774
  %4 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !775
  %cmp = icmp ne %struct.listNode* %4, null, !dbg !775
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !775

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !775

cond.false:                                       ; preds = %while.body
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 133), !dbg !775
  unreachable, !dbg !775

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !775

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %5 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !776
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %5, i32 0, i32 2, !dbg !777
  %6 = load i8*, i8** %value, align 8, !dbg !777
  %7 = bitcast i8* %6 to %struct.client*, !dbg !776
  store %struct.client* %7, %struct.client** %c, align 8, !dbg !778
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 322), align 8, !dbg !779
  %9 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !780
  call void @listDelNode(%struct.list* %8, %struct.listNode* %9), !dbg !781
  %10 = load %struct.client*, %struct.client** %c, align 8, !dbg !782
  %flags = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 1, !dbg !783
  %11 = load i64, i64* %flags, align 8, !dbg !784
  %and = and i64 %11, -129, !dbg !784
  store i64 %and, i64* %flags, align 8, !dbg !784
  %12 = load %struct.client*, %struct.client** %c, align 8, !dbg !785
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 1, !dbg !787
  %13 = load i64, i64* %flags1, align 8, !dbg !787
  %and2 = and i64 %13, 16, !dbg !788
  %tobool3 = icmp ne i64 %and2, 0, !dbg !788
  br i1 %tobool3, label %if.end6, label %if.then, !dbg !789

if.then:                                          ; preds = %cond.end
  %14 = load %struct.client*, %struct.client** %c, align 8, !dbg !790
  %call = call i32 @processPendingCommandAndInputBuffer(%struct.client* %14), !dbg !793
  %cmp4 = icmp eq i32 %call, -1, !dbg !794
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !795

if.then5:                                         ; preds = %if.then
  store %struct.client* null, %struct.client** %c, align 8, !dbg !796
  br label %if.end, !dbg !798

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6, !dbg !799

if.end6:                                          ; preds = %if.end, %cond.end
  %15 = load %struct.client*, %struct.client** %c, align 8, !dbg !800
  %call7 = call i32 @beforeNextClient(%struct.client* %15), !dbg !801
  br label %while.cond, !dbg !770, !llvm.loop !802

while.end:                                        ; preds = %while.cond
  ret void, !dbg !805
}

declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) #2

declare dso_local i32 @processPendingCommandAndInputBuffer(%struct.client*) #2

declare dso_local i32 @beforeNextClient(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @queueClientForReprocessing(%struct.client* %c) #0 !dbg !806 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !807, metadata !DIExpression()), !dbg !808
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !809
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !811
  %1 = load i64, i64* %flags, align 8, !dbg !811
  %and = and i64 %1, 128, !dbg !812
  %tobool = icmp ne i64 %and, 0, !dbg !812
  br i1 %tobool, label %if.end, label %if.then, !dbg !813

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !814
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !816
  %3 = load i64, i64* %flags1, align 8, !dbg !817
  %or = or i64 %3, 128, !dbg !817
  store i64 %or, i64* %flags1, align 8, !dbg !817
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 322), align 8, !dbg !818
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !819
  %6 = bitcast %struct.client* %5 to i8*, !dbg !819
  %call = call %struct.list* @listAddNodeTail(%struct.list* %4, i8* %6), !dbg !820
  br label %if.end, !dbg !821

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unblockClient(%struct.client* %c) #0 !dbg !823 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !824, metadata !DIExpression()), !dbg !825
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !826
  %btype = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 52, !dbg !828
  %1 = load i32, i32* %btype, align 8, !dbg !828
  %cmp = icmp eq i32 %1, 1, !dbg !829
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !830

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !831
  %btype1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 52, !dbg !832
  %3 = load i32, i32* %btype1, align 8, !dbg !832
  %cmp2 = icmp eq i32 %3, 5, !dbg !833
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !834

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !835
  %btype4 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 52, !dbg !836
  %5 = load i32, i32* %btype4, align 8, !dbg !836
  %cmp5 = icmp eq i32 %5, 4, !dbg !837
  br i1 %cmp5, label %if.then, label %if.else, !dbg !838

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !839
  call void @unblockClientWaitingData(%struct.client* %6), !dbg !841
  br label %if.end28, !dbg !842

if.else:                                          ; preds = %lor.lhs.false3
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !843
  %btype6 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 52, !dbg !845
  %8 = load i32, i32* %btype6, align 8, !dbg !845
  %cmp7 = icmp eq i32 %8, 2, !dbg !846
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !847

if.then8:                                         ; preds = %if.else
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !848
  call void @unblockClientWaitingReplicas(%struct.client* %9), !dbg !850
  br label %if.end27, !dbg !851

if.else9:                                         ; preds = %if.else
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !852
  %btype10 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 52, !dbg !854
  %11 = load i32, i32* %btype10, align 8, !dbg !854
  %cmp11 = icmp eq i32 %11, 3, !dbg !855
  br i1 %cmp11, label %if.then12, label %if.else14, !dbg !856

if.then12:                                        ; preds = %if.else9
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !857
  %call = call i32 @moduleClientIsBlockedOnKeys(%struct.client* %12), !dbg !860
  %tobool = icmp ne i32 %call, 0, !dbg !860
  br i1 %tobool, label %if.then13, label %if.end, !dbg !861

if.then13:                                        ; preds = %if.then12
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !862
  call void @unblockClientWaitingData(%struct.client* %13), !dbg !863
  br label %if.end, !dbg !863

if.end:                                           ; preds = %if.then13, %if.then12
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !864
  call void @unblockClientFromModule(%struct.client* %14), !dbg !865
  br label %if.end26, !dbg !866

if.else14:                                        ; preds = %if.else9
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !867
  %btype15 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 52, !dbg !869
  %16 = load i32, i32* %btype15, align 8, !dbg !869
  %cmp16 = icmp eq i32 %16, 6, !dbg !870
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !871

if.then17:                                        ; preds = %if.else14
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 72), align 8, !dbg !872
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !874
  %postponed_list_node = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 62, !dbg !875
  %19 = load %struct.listNode*, %struct.listNode** %postponed_list_node, align 8, !dbg !875
  call void @listDelNode(%struct.list* %17, %struct.listNode* %19), !dbg !876
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !877
  %postponed_list_node18 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 62, !dbg !878
  store %struct.listNode* null, %struct.listNode** %postponed_list_node18, align 8, !dbg !879
  br label %if.end25, !dbg !880

if.else19:                                        ; preds = %if.else14
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !881
  %btype20 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 52, !dbg !883
  %22 = load i32, i32* %btype20, align 8, !dbg !883
  %cmp21 = icmp eq i32 %22, 7, !dbg !884
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !885

if.then22:                                        ; preds = %if.else19
  br label %if.end24, !dbg !886

if.else23:                                        ; preds = %if.else19
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)), !dbg !888
  unreachable, !dbg !888

if.end24:                                         ; preds = %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then17
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !890
  %btype29 = getelementptr inbounds %struct.client, %struct.client* %23, i32 0, i32 52, !dbg !892
  %24 = load i32, i32* %btype29, align 8, !dbg !892
  %cmp30 = icmp ne i32 %24, 6, !dbg !893
  br i1 %cmp30, label %land.lhs.true, label %if.end34, !dbg !894

land.lhs.true:                                    ; preds = %if.end28
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !895
  %btype31 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 52, !dbg !896
  %26 = load i32, i32* %btype31, align 8, !dbg !896
  %cmp32 = icmp ne i32 %26, 7, !dbg !897
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !898

if.then33:                                        ; preds = %land.lhs.true
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !899
  call void @freeClientOriginalArgv(%struct.client* %27), !dbg !901
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !902
  call void @resetClient(%struct.client* %28), !dbg !903
  br label %if.end34, !dbg !904

if.end34:                                         ; preds = %if.then33, %land.lhs.true, %if.end28
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 320), align 4, !dbg !905
  %dec = add i32 %29, -1, !dbg !905
  store i32 %dec, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 320), align 4, !dbg !905
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !906
  %btype35 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 52, !dbg !907
  %31 = load i32, i32* %btype35, align 8, !dbg !907
  %idxprom = sext i32 %31 to i64, !dbg !908
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321), i64 0, i64 %idxprom, !dbg !908
  %32 = load i32, i32* %arrayidx, align 4, !dbg !909
  %dec36 = add i32 %32, -1, !dbg !909
  store i32 %dec36, i32* %arrayidx, align 4, !dbg !909
  %33 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !910
  %flags = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 1, !dbg !911
  %34 = load i64, i64* %flags, align 8, !dbg !912
  %and = and i64 %34, -17, !dbg !912
  store i64 %and, i64* %flags, align 8, !dbg !912
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !913
  %btype37 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 52, !dbg !914
  store i32 0, i32* %btype37, align 8, !dbg !915
  %36 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !916
  call void @removeClientFromTimeoutTable(%struct.client* %36), !dbg !917
  %37 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !918
  call void @queueClientForReprocessing(%struct.client* %37), !dbg !919
  ret void, !dbg !920
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @unblockClientWaitingData(%struct.client* %c) #0 !dbg !921 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %di = alloca %struct.dictIterator*, align 8
  %l = alloca %struct.list*, align 8
  %key = alloca %struct.redisObject*, align 8
  %bki = alloca %struct.bkinfo*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %di, metadata !926, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata %struct.list** %l, metadata !939, metadata !DIExpression()), !dbg !940
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !941
  %bpop = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 53, !dbg !941
  %keys = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 2, !dbg !941
  %1 = load %struct.dict*, %struct.dict** %keys, align 8, !dbg !941
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !941
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !941
  %2 = load i64, i64* %arrayidx, align 8, !dbg !941
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !941
  %bpop1 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 53, !dbg !941
  %keys2 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop1, i32 0, i32 2, !dbg !941
  %4 = load %struct.dict*, %struct.dict** %keys2, align 8, !dbg !941
  %ht_used3 = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 2, !dbg !941
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used3, i64 0, i64 1, !dbg !941
  %5 = load i64, i64* %arrayidx4, align 8, !dbg !941
  %add = add i64 %2, %5, !dbg !941
  %cmp = icmp ne i64 %add, 0, !dbg !941
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !941

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !941

cond.false:                                       ; preds = %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !941
  call void @_serverAssertWithInfo(%struct.client* %6, %struct.redisObject* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 782), !dbg !941
  unreachable, !dbg !941

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !941

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !942
  %bpop5 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 53, !dbg !943
  %keys6 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop5, i32 0, i32 2, !dbg !944
  %8 = load %struct.dict*, %struct.dict** %keys6, align 8, !dbg !944
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %8), !dbg !945
  store %struct.dictIterator* %call, %struct.dictIterator** %di, align 8, !dbg !946
  br label %while.cond, !dbg !947

while.cond:                                       ; preds = %if.end, %cond.end
  %9 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !948
  %call7 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %9), !dbg !949
  store %struct.dictEntry* %call7, %struct.dictEntry** %de, align 8, !dbg !950
  %cmp8 = icmp ne %struct.dictEntry* %call7, null, !dbg !951
  br i1 %cmp8, label %while.body, label %while.end, !dbg !947

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key, metadata !952, metadata !DIExpression()), !dbg !954
  %10 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !955
  %key9 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %10, i32 0, i32 0, !dbg !955
  %11 = load i8*, i8** %key9, align 8, !dbg !955
  %12 = bitcast i8* %11 to %struct.redisObject*, !dbg !955
  store %struct.redisObject* %12, %struct.redisObject** %key, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata %struct.bkinfo** %bki, metadata !956, metadata !DIExpression()), !dbg !969
  %13 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !970
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %13, i32 0, i32 1, !dbg !970
  %val = bitcast %union.anon* %v to i8**, !dbg !970
  %14 = load i8*, i8** %val, align 8, !dbg !970
  %15 = bitcast i8* %14 to %struct.bkinfo*, !dbg !970
  store %struct.bkinfo* %15, %struct.bkinfo** %bki, align 8, !dbg !969
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !971
  %db = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 4, !dbg !972
  %17 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !972
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %17, i32 0, i32 2, !dbg !973
  %18 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !973
  %19 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !974
  %20 = bitcast %struct.redisObject* %19 to i8*, !dbg !974
  %call10 = call i8* @dictFetchValue(%struct.dict* %18, i8* %20), !dbg !975
  %21 = bitcast i8* %call10 to %struct.list*, !dbg !975
  store %struct.list* %21, %struct.list** %l, align 8, !dbg !976
  %22 = load %struct.list*, %struct.list** %l, align 8, !dbg !977
  %cmp11 = icmp ne %struct.list* %22, null, !dbg !977
  br i1 %cmp11, label %cond.true12, label %cond.false13, !dbg !977

cond.true12:                                      ; preds = %while.body
  br label %cond.end15, !dbg !977

cond.false13:                                     ; preds = %while.body
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !977
  %24 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !977
  call void @_serverAssertWithInfo(%struct.client* %23, %struct.redisObject* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 791), !dbg !977
  unreachable, !dbg !977

unreachable.cont14:                               ; No predecessors!
  br label %cond.end15, !dbg !977

cond.end15:                                       ; preds = %unreachable.cont14, %cond.true12
  %25 = load %struct.list*, %struct.list** %l, align 8, !dbg !978
  %26 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !979
  %listnode = getelementptr inbounds %struct.bkinfo, %struct.bkinfo* %26, i32 0, i32 0, !dbg !980
  %27 = load %struct.listNode*, %struct.listNode** %listnode, align 8, !dbg !980
  call void @listDelNode(%struct.list* %25, %struct.listNode* %27), !dbg !981
  %28 = load %struct.list*, %struct.list** %l, align 8, !dbg !982
  %len = getelementptr inbounds %struct.list, %struct.list* %28, i32 0, i32 5, !dbg !982
  %29 = load i64, i64* %len, align 8, !dbg !982
  %cmp16 = icmp eq i64 %29, 0, !dbg !984
  br i1 %cmp16, label %if.then, label %if.end, !dbg !985

if.then:                                          ; preds = %cond.end15
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !986
  %db17 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 4, !dbg !987
  %31 = load %struct.redisDb*, %struct.redisDb** %db17, align 8, !dbg !987
  %blocking_keys18 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %31, i32 0, i32 2, !dbg !988
  %32 = load %struct.dict*, %struct.dict** %blocking_keys18, align 8, !dbg !988
  %33 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !989
  %34 = bitcast %struct.redisObject* %33 to i8*, !dbg !989
  %call19 = call i32 @dictDelete(%struct.dict* %32, i8* %34), !dbg !990
  br label %if.end, !dbg !990

if.end:                                           ; preds = %if.then, %cond.end15
  br label %while.cond, !dbg !947, !llvm.loop !991

while.end:                                        ; preds = %while.cond
  %35 = load %struct.dictIterator*, %struct.dictIterator** %di, align 8, !dbg !993
  call void @dictReleaseIterator(%struct.dictIterator* %35), !dbg !994
  %36 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !995
  %bpop20 = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 53, !dbg !996
  %keys21 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop20, i32 0, i32 2, !dbg !997
  %37 = load %struct.dict*, %struct.dict** %keys21, align 8, !dbg !997
  call void @dictEmpty(%struct.dict* %37, void (%struct.dict*)* null), !dbg !998
  %38 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !999
  %bpop22 = getelementptr inbounds %struct.client, %struct.client* %38, i32 0, i32 53, !dbg !1001
  %target = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop22, i32 0, i32 3, !dbg !1002
  %39 = load %struct.redisObject*, %struct.redisObject** %target, align 8, !dbg !1002
  %tobool = icmp ne %struct.redisObject* %39, null, !dbg !999
  br i1 %tobool, label %if.then23, label %if.end28, !dbg !1003

if.then23:                                        ; preds = %while.end
  %40 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1004
  %bpop24 = getelementptr inbounds %struct.client, %struct.client* %40, i32 0, i32 53, !dbg !1006
  %target25 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop24, i32 0, i32 3, !dbg !1007
  %41 = load %struct.redisObject*, %struct.redisObject** %target25, align 8, !dbg !1007
  call void @decrRefCount(%struct.redisObject* %41), !dbg !1008
  %42 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1009
  %bpop26 = getelementptr inbounds %struct.client, %struct.client* %42, i32 0, i32 53, !dbg !1010
  %target27 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop26, i32 0, i32 3, !dbg !1011
  store %struct.redisObject* null, %struct.redisObject** %target27, align 8, !dbg !1012
  br label %if.end28, !dbg !1013

if.end28:                                         ; preds = %if.then23, %while.end
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1014
  %bpop29 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 53, !dbg !1016
  %xread_group = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop29, i32 0, i32 6, !dbg !1017
  %44 = load %struct.redisObject*, %struct.redisObject** %xread_group, align 8, !dbg !1017
  %tobool30 = icmp ne %struct.redisObject* %44, null, !dbg !1014
  br i1 %tobool30, label %if.then31, label %if.end39, !dbg !1018

if.then31:                                        ; preds = %if.end28
  %45 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1019
  %bpop32 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 53, !dbg !1021
  %xread_group33 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop32, i32 0, i32 6, !dbg !1022
  %46 = load %struct.redisObject*, %struct.redisObject** %xread_group33, align 8, !dbg !1022
  call void @decrRefCount(%struct.redisObject* %46), !dbg !1023
  %47 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1024
  %bpop34 = getelementptr inbounds %struct.client, %struct.client* %47, i32 0, i32 53, !dbg !1025
  %xread_consumer = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop34, i32 0, i32 7, !dbg !1026
  %48 = load %struct.redisObject*, %struct.redisObject** %xread_consumer, align 8, !dbg !1026
  call void @decrRefCount(%struct.redisObject* %48), !dbg !1027
  %49 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1028
  %bpop35 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 53, !dbg !1029
  %xread_group36 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop35, i32 0, i32 6, !dbg !1030
  store %struct.redisObject* null, %struct.redisObject** %xread_group36, align 8, !dbg !1031
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1032
  %bpop37 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 53, !dbg !1033
  %xread_consumer38 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop37, i32 0, i32 7, !dbg !1034
  store %struct.redisObject* null, %struct.redisObject** %xread_consumer38, align 8, !dbg !1035
  br label %if.end39, !dbg !1036

if.end39:                                         ; preds = %if.then31, %if.end28
  ret void, !dbg !1037
}

declare dso_local void @unblockClientWaitingReplicas(%struct.client*) #2

declare dso_local i32 @moduleClientIsBlockedOnKeys(%struct.client*) #2

declare dso_local void @unblockClientFromModule(%struct.client*) #2

declare dso_local void @_serverPanic(i8*, i32, i8*, ...) #2

declare dso_local void @freeClientOriginalArgv(%struct.client*) #2

declare dso_local void @resetClient(%struct.client*) #2

declare dso_local void @removeClientFromTimeoutTable(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @replyToBlockedClientTimedOut(%struct.client* %c) #0 !dbg !1038 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1041
  %btype = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 52, !dbg !1043
  %1 = load i32, i32* %btype, align 8, !dbg !1043
  %cmp = icmp eq i32 %1, 1, !dbg !1044
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1045

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1046
  %btype1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 52, !dbg !1047
  %3 = load i32, i32* %btype1, align 8, !dbg !1047
  %cmp2 = icmp eq i32 %3, 5, !dbg !1048
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !1049

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1050
  %btype4 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 52, !dbg !1051
  %5 = load i32, i32* %btype4, align 8, !dbg !1051
  %cmp5 = icmp eq i32 %5, 4, !dbg !1052
  br i1 %cmp5, label %if.then, label %if.else, !dbg !1053

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1054
  call void @addReplyNullArray(%struct.client* %6), !dbg !1056
  br label %if.end16, !dbg !1057

if.else:                                          ; preds = %lor.lhs.false3
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1058
  %btype6 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 52, !dbg !1060
  %8 = load i32, i32* %btype6, align 8, !dbg !1060
  %cmp7 = icmp eq i32 %8, 2, !dbg !1061
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !1062

if.then8:                                         ; preds = %if.else
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1063
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1065
  %bpop = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 53, !dbg !1066
  %reploffset = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 10, !dbg !1067
  %11 = load i64, i64* %reploffset, align 8, !dbg !1067
  %call = call i32 @replicationCountAcksByOffset(i64 %11), !dbg !1068
  %conv = sext i32 %call to i64, !dbg !1068
  call void @addReplyLongLong(%struct.client* %9, i64 %conv), !dbg !1069
  br label %if.end15, !dbg !1070

if.else9:                                         ; preds = %if.else
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1071
  %btype10 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 52, !dbg !1073
  %13 = load i32, i32* %btype10, align 8, !dbg !1073
  %cmp11 = icmp eq i32 %13, 3, !dbg !1074
  br i1 %cmp11, label %if.then13, label %if.else14, !dbg !1075

if.then13:                                        ; preds = %if.else9
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1076
  call void @moduleBlockedClientTimedOut(%struct.client* %14), !dbg !1078
  br label %if.end, !dbg !1079

if.else14:                                        ; preds = %if.else9
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0)), !dbg !1080
  unreachable, !dbg !1080

if.end:                                           ; preds = %if.then13
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  ret void, !dbg !1082
}

declare dso_local void @addReplyNullArray(%struct.client*) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

declare dso_local i32 @replicationCountAcksByOffset(i64) #2

declare dso_local void @moduleBlockedClientTimedOut(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @replyToClientsBlockedOnShutdown() #0 !dbg !1083 {
entry:
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %c = alloca %struct.client*, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 7), align 4, !dbg !1084
  %cmp = icmp eq i32 %0, 0, !dbg !1086
  br i1 %cmp, label %if.then, label %if.end, !dbg !1087

if.then:                                          ; preds = %entry
  br label %while.end, !dbg !1088

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1089, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1091, metadata !DIExpression()), !dbg !1097
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 59), align 8, !dbg !1098
  call void @listRewind(%struct.list* %1, %struct.listIter* %li), !dbg !1099
  br label %while.cond, !dbg !1100

while.cond:                                       ; preds = %if.end4, %if.end
  %call = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1101
  store %struct.listNode* %call, %struct.listNode** %ln, align 8, !dbg !1102
  %tobool = icmp ne %struct.listNode* %call, null, !dbg !1100
  br i1 %tobool, label %while.body, label %while.end, !dbg !1100

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1103, metadata !DIExpression()), !dbg !1105
  %2 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1106
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %2, i32 0, i32 2, !dbg !1106
  %3 = load i8*, i8** %value, align 8, !dbg !1106
  %4 = bitcast i8* %3 to %struct.client*, !dbg !1106
  store %struct.client* %4, %struct.client** %c, align 8, !dbg !1105
  %5 = load %struct.client*, %struct.client** %c, align 8, !dbg !1107
  %flags = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !1109
  %6 = load i64, i64* %flags, align 8, !dbg !1109
  %and = and i64 %6, 16, !dbg !1110
  %tobool1 = icmp ne i64 %and, 0, !dbg !1110
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !1111

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.client*, %struct.client** %c, align 8, !dbg !1112
  %btype = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 52, !dbg !1113
  %8 = load i32, i32* %btype, align 8, !dbg !1113
  %cmp2 = icmp eq i32 %8, 7, !dbg !1114
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1115

if.then3:                                         ; preds = %land.lhs.true
  %9 = load %struct.client*, %struct.client** %c, align 8, !dbg !1116
  call void @addReplyError(%struct.client* %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0)), !dbg !1118
  %10 = load %struct.client*, %struct.client** %c, align 8, !dbg !1119
  call void @unblockClient(%struct.client* %10), !dbg !1120
  br label %if.end4, !dbg !1121

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %while.body
  br label %while.cond, !dbg !1100, !llvm.loop !1122

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !1124
}

declare dso_local void @listRewind(%struct.list*, %struct.listIter*) #2

declare dso_local %struct.listNode* @listNext(%struct.listIter*) #2

declare dso_local void @addReplyError(%struct.client*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @disconnectAllBlockedClients() #0 !dbg !1125 {
entry:
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %c = alloca %struct.client*, align 8
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1128, metadata !DIExpression()), !dbg !1129
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 59), align 8, !dbg !1130
  call void @listRewind(%struct.list* %0, %struct.listIter* %li), !dbg !1131
  br label %while.cond, !dbg !1132

while.cond:                                       ; preds = %if.end4, %if.then2, %entry
  %call = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1133
  store %struct.listNode* %call, %struct.listNode** %ln, align 8, !dbg !1134
  %tobool = icmp ne %struct.listNode* %call, null, !dbg !1132
  br i1 %tobool, label %while.body, label %while.end, !dbg !1132

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1135, metadata !DIExpression()), !dbg !1137
  %1 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1138
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %1, i32 0, i32 2, !dbg !1138
  %2 = load i8*, i8** %value, align 8, !dbg !1138
  %3 = bitcast i8* %2 to %struct.client*, !dbg !1138
  store %struct.client* %3, %struct.client** %c, align 8, !dbg !1137
  %4 = load %struct.client*, %struct.client** %c, align 8, !dbg !1139
  %flags = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1, !dbg !1141
  %5 = load i64, i64* %flags, align 8, !dbg !1141
  %and = and i64 %5, 16, !dbg !1142
  %tobool1 = icmp ne i64 %and, 0, !dbg !1142
  br i1 %tobool1, label %if.then, label %if.end4, !dbg !1143

if.then:                                          ; preds = %while.body
  %6 = load %struct.client*, %struct.client** %c, align 8, !dbg !1144
  %btype = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 52, !dbg !1147
  %7 = load i32, i32* %btype, align 8, !dbg !1147
  %cmp = icmp eq i32 %7, 6, !dbg !1148
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1149

if.then2:                                         ; preds = %if.then
  br label %while.cond, !dbg !1150, !llvm.loop !1151

if.end:                                           ; preds = %if.then
  %8 = load %struct.client*, %struct.client** %c, align 8, !dbg !1153
  call void @addReplyError(%struct.client* %8, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.7, i64 0, i64 0)), !dbg !1154
  %9 = load %struct.client*, %struct.client** %c, align 8, !dbg !1155
  call void @unblockClient(%struct.client* %9), !dbg !1156
  %10 = load %struct.client*, %struct.client** %c, align 8, !dbg !1157
  %flags3 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 1, !dbg !1158
  %11 = load i64, i64* %flags3, align 8, !dbg !1159
  %or = or i64 %11, 64, !dbg !1159
  store i64 %or, i64* %flags3, align 8, !dbg !1159
  br label %if.end4, !dbg !1160

if.end4:                                          ; preds = %if.end, %while.body
  br label %while.cond, !dbg !1132, !llvm.loop !1151

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1161
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @serveClientsBlockedOnListKey(%struct.redisObject* %o, %struct.readyList* %rl) #0 !dbg !1162 {
entry:
  %o.addr = alloca %struct.redisObject*, align 8
  %rl.addr = alloca %struct.readyList*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %clients = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %receiver = alloca %struct.client*, align 8
  %deleted = alloca i32, align 4
  %dstkey = alloca %struct.redisObject*, align 8
  %wherefrom = alloca i32, align 4
  %whereto = alloca i32, align 4
  %prev_error_replies = alloca i64, align 8
  %old_client = alloca %struct.client*, align 8
  %replyTimer = alloca i64, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  store %struct.readyList* %rl, %struct.readyList** %rl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 1), align 4, !dbg !1175
  %tobool = icmp ne i32 %0, 0, !dbg !1175
  br i1 %tobool, label %if.end, label %if.then, !dbg !1177

if.then:                                          ; preds = %entry
  br label %if.end25, !dbg !1178

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1179, metadata !DIExpression()), !dbg !1180
  %1 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1181
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %1, i32 0, i32 0, !dbg !1182
  %2 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1182
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 2, !dbg !1183
  %3 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !1183
  %4 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1184
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %4, i32 0, i32 1, !dbg !1185
  %5 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1185
  %6 = bitcast %struct.redisObject* %5 to i8*, !dbg !1184
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %3, i8* %6), !dbg !1186
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1180
  %7 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1187
  %tobool1 = icmp ne %struct.dictEntry* %7, null, !dbg !1187
  br i1 %tobool1, label %if.then2, label %if.end25, !dbg !1189

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.list** %clients, metadata !1190, metadata !DIExpression()), !dbg !1192
  %8 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1193
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i32 0, i32 1, !dbg !1193
  %val = bitcast %union.anon* %v to i8**, !dbg !1193
  %9 = load i8*, i8** %val, align 8, !dbg !1193
  %10 = bitcast i8* %9 to %struct.list*, !dbg !1193
  store %struct.list* %10, %struct.list** %clients, align 8, !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1194, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1196, metadata !DIExpression()), !dbg !1197
  %11 = load %struct.list*, %struct.list** %clients, align 8, !dbg !1198
  call void @listRewind(%struct.list* %11, %struct.listIter* %li), !dbg !1199
  br label %while.cond, !dbg !1200

while.cond:                                       ; preds = %if.end24, %if.then5, %if.then2
  %call3 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1201
  store %struct.listNode* %call3, %struct.listNode** %ln, align 8, !dbg !1202
  %tobool4 = icmp ne %struct.listNode* %call3, null, !dbg !1200
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1200

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %receiver, metadata !1203, metadata !DIExpression()), !dbg !1205
  %12 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1206
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i32 0, i32 2, !dbg !1206
  %13 = load i8*, i8** %value, align 8, !dbg !1206
  %14 = bitcast i8* %13 to %struct.client*, !dbg !1206
  store %struct.client* %14, %struct.client** %receiver, align 8, !dbg !1205
  %15 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1207
  %btype = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 52, !dbg !1209
  %16 = load i32, i32* %btype, align 8, !dbg !1209
  %cmp = icmp ne i32 %16, 1, !dbg !1210
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1211

if.then5:                                         ; preds = %while.body
  br label %while.cond, !dbg !1212, !llvm.loop !1213

if.end6:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %deleted, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 0, i32* %deleted, align 4, !dbg !1216
  call void @llvm.dbg.declare(metadata %struct.redisObject** %dstkey, metadata !1217, metadata !DIExpression()), !dbg !1218
  %17 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1219
  %bpop = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 53, !dbg !1220
  %target = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 3, !dbg !1221
  %18 = load %struct.redisObject*, %struct.redisObject** %target, align 8, !dbg !1221
  store %struct.redisObject* %18, %struct.redisObject** %dstkey, align 8, !dbg !1218
  call void @llvm.dbg.declare(metadata i32* %wherefrom, metadata !1222, metadata !DIExpression()), !dbg !1223
  %19 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1224
  %bpop7 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 53, !dbg !1225
  %blockpos = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop7, i32 0, i32 4, !dbg !1226
  %wherefrom8 = getelementptr inbounds %struct.blockPos, %struct.blockPos* %blockpos, i32 0, i32 0, !dbg !1227
  %20 = load i32, i32* %wherefrom8, align 8, !dbg !1227
  store i32 %20, i32* %wherefrom, align 4, !dbg !1223
  call void @llvm.dbg.declare(metadata i32* %whereto, metadata !1228, metadata !DIExpression()), !dbg !1229
  %21 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1230
  %bpop9 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 53, !dbg !1231
  %blockpos10 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop9, i32 0, i32 4, !dbg !1232
  %whereto11 = getelementptr inbounds %struct.blockPos, %struct.blockPos* %blockpos10, i32 0, i32 1, !dbg !1233
  %22 = load i32, i32* %whereto11, align 4, !dbg !1233
  store i32 %22, i32* %whereto, align 4, !dbg !1229
  %23 = load %struct.redisObject*, %struct.redisObject** %dstkey, align 8, !dbg !1234
  %tobool12 = icmp ne %struct.redisObject* %23, null, !dbg !1234
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1236

if.then13:                                        ; preds = %if.end6
  %24 = load %struct.redisObject*, %struct.redisObject** %dstkey, align 8, !dbg !1237
  call void @incrRefCount(%struct.redisObject* %24), !dbg !1238
  br label %if.end14, !dbg !1238

if.end14:                                         ; preds = %if.then13, %if.end6
  call void @llvm.dbg.declare(metadata i64* %prev_error_replies, metadata !1239, metadata !DIExpression()), !dbg !1240
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1241
  store i64 %25, i64* %prev_error_replies, align 8, !dbg !1240
  call void @llvm.dbg.declare(metadata %struct.client** %old_client, metadata !1242, metadata !DIExpression()), !dbg !1243
  %26 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1244
  store %struct.client* %26, %struct.client** %old_client, align 8, !dbg !1243
  %27 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1245
  store %struct.client* %27, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1246
  call void @llvm.dbg.declare(metadata i64* %replyTimer, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @elapsedStart(i64* %replyTimer), !dbg !1249
  %28 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1250
  %29 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1251
  %30 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1252
  %key15 = getelementptr inbounds %struct.readyList, %struct.readyList* %30, i32 0, i32 1, !dbg !1253
  %31 = load %struct.redisObject*, %struct.redisObject** %key15, align 8, !dbg !1253
  %32 = load %struct.redisObject*, %struct.redisObject** %dstkey, align 8, !dbg !1254
  %33 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1255
  %db16 = getelementptr inbounds %struct.readyList, %struct.readyList* %33, i32 0, i32 0, !dbg !1256
  %34 = load %struct.redisDb*, %struct.redisDb** %db16, align 8, !dbg !1256
  %35 = load i32, i32* %wherefrom, align 4, !dbg !1257
  %36 = load i32, i32* %whereto, align 4, !dbg !1258
  call void @serveClientBlockedOnList(%struct.client* %28, %struct.redisObject* %29, %struct.redisObject* %31, %struct.redisObject* %32, %struct.redisDb* %34, i32 %35, i32 %36, i32* %deleted), !dbg !1259
  %37 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1260
  %38 = load i64, i64* %replyTimer, align 8, !dbg !1261
  %call17 = call i64 @elapsedUs(i64 %38), !dbg !1262
  %39 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1263
  %40 = load i64, i64* %prev_error_replies, align 8, !dbg !1264
  %cmp18 = icmp ne i64 %39, %40, !dbg !1265
  %conv = zext i1 %cmp18 to i32, !dbg !1265
  call void @updateStatsOnUnblock(%struct.client* %37, i64 0, i64 %call17, i32 %conv), !dbg !1266
  %41 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1267
  call void @unblockClient(%struct.client* %41), !dbg !1268
  %42 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1269
  call void @afterCommand(%struct.client* %42), !dbg !1270
  %43 = load %struct.client*, %struct.client** %old_client, align 8, !dbg !1271
  store %struct.client* %43, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1272
  %44 = load %struct.redisObject*, %struct.redisObject** %dstkey, align 8, !dbg !1273
  %tobool19 = icmp ne %struct.redisObject* %44, null, !dbg !1273
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1275

if.then20:                                        ; preds = %if.end14
  %45 = load %struct.redisObject*, %struct.redisObject** %dstkey, align 8, !dbg !1276
  call void @decrRefCount(%struct.redisObject* %45), !dbg !1277
  br label %if.end21, !dbg !1277

if.end21:                                         ; preds = %if.then20, %if.end14
  %46 = load i32, i32* %deleted, align 4, !dbg !1278
  %tobool22 = icmp ne i32 %46, 0, !dbg !1278
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1280

if.then23:                                        ; preds = %if.end21
  br label %while.end, !dbg !1281

if.end24:                                         ; preds = %if.end21
  br label %while.cond, !dbg !1200, !llvm.loop !1213

while.end:                                        ; preds = %if.then23, %while.cond
  br label %if.end25, !dbg !1282

if.end25:                                         ; preds = %if.then, %while.end, %if.end
  ret void, !dbg !1283
}

declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) #2

declare dso_local void @incrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @elapsedStart(i64* %start_time) #0 !dbg !1284 {
entry:
  %start_time.addr = alloca i64*, align 8
  store i64* %start_time, i64** %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %start_time.addr, metadata !1288, metadata !DIExpression()), !dbg !1289
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1290
  %call = call i64 %0(), !dbg !1290
  %1 = load i64*, i64** %start_time.addr, align 8, !dbg !1291
  store i64 %call, i64* %1, align 8, !dbg !1292
  ret void, !dbg !1293
}

declare dso_local void @serveClientBlockedOnList(%struct.client*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisDb*, i32, i32, i32*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedUs(i64 %start_time) #0 !dbg !1294 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1299
  %call = call i64 %0(), !dbg !1299
  %1 = load i64, i64* %start_time.addr, align 8, !dbg !1300
  %sub = sub i64 %call, %1, !dbg !1301
  ret i64 %sub, !dbg !1302
}

declare dso_local void @afterCommand(%struct.client*) #2

declare dso_local void @decrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @serveClientsBlockedOnSortedSetKey(%struct.redisObject* %o, %struct.readyList* %rl) #0 !dbg !1303 {
entry:
  %o.addr = alloca %struct.redisObject*, align 8
  %rl.addr = alloca %struct.readyList*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %clients = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %receiver = alloca %struct.client*, align 8
  %deleted = alloca i32, align 4
  %llen = alloca i64, align 8
  %count = alloca i64, align 8
  %where = alloca i32, align 4
  %use_nested_array = alloca i32, align 4
  %reply_nil_when_empty = alloca i32, align 4
  %prev_error_replies = alloca i64, align 8
  %old_client = alloca %struct.client*, align 8
  %replyTimer = alloca i64, align 8
  %argc = alloca i32, align 4
  %argv = alloca [3 x %struct.redisObject*], align 16
  %count_obj = alloca %struct.redisObject*, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !1304, metadata !DIExpression()), !dbg !1305
  store %struct.readyList* %rl, %struct.readyList** %rl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl.addr, metadata !1306, metadata !DIExpression()), !dbg !1307
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 5), align 4, !dbg !1308
  %tobool = icmp ne i32 %0, 0, !dbg !1308
  br i1 %tobool, label %if.end, label %if.then, !dbg !1310

if.then:                                          ; preds = %entry
  br label %if.end40, !dbg !1311

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1312, metadata !DIExpression()), !dbg !1313
  %1 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1314
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %1, i32 0, i32 0, !dbg !1315
  %2 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1315
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 2, !dbg !1316
  %3 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !1316
  %4 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1317
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %4, i32 0, i32 1, !dbg !1318
  %5 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1318
  %6 = bitcast %struct.redisObject* %5 to i8*, !dbg !1317
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %3, i8* %6), !dbg !1319
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1313
  %7 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1320
  %tobool1 = icmp ne %struct.dictEntry* %7, null, !dbg !1320
  br i1 %tobool1, label %if.then2, label %if.end40, !dbg !1322

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.list** %clients, metadata !1323, metadata !DIExpression()), !dbg !1325
  %8 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1326
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i32 0, i32 1, !dbg !1326
  %val = bitcast %union.anon* %v to i8**, !dbg !1326
  %9 = load i8*, i8** %val, align 8, !dbg !1326
  %10 = bitcast i8* %9 to %struct.list*, !dbg !1326
  store %struct.list* %10, %struct.list** %clients, align 8, !dbg !1325
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1329, metadata !DIExpression()), !dbg !1330
  %11 = load %struct.list*, %struct.list** %clients, align 8, !dbg !1331
  call void @listRewind(%struct.list* %11, %struct.listIter* %li), !dbg !1332
  br label %while.cond, !dbg !1333

while.cond:                                       ; preds = %if.end39, %if.then5, %if.then2
  %call3 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1334
  store %struct.listNode* %call3, %struct.listNode** %ln, align 8, !dbg !1335
  %tobool4 = icmp ne %struct.listNode* %call3, null, !dbg !1333
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1333

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %receiver, metadata !1336, metadata !DIExpression()), !dbg !1338
  %12 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1339
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i32 0, i32 2, !dbg !1339
  %13 = load i8*, i8** %value, align 8, !dbg !1339
  %14 = bitcast i8* %13 to %struct.client*, !dbg !1339
  store %struct.client* %14, %struct.client** %receiver, align 8, !dbg !1338
  %15 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1340
  %btype = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 52, !dbg !1342
  %16 = load i32, i32* %btype, align 8, !dbg !1342
  %cmp = icmp ne i32 %16, 5, !dbg !1343
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1344

if.then5:                                         ; preds = %while.body
  br label %while.cond, !dbg !1345, !llvm.loop !1346

if.end6:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %deleted, metadata !1348, metadata !DIExpression()), !dbg !1349
  store i32 0, i32* %deleted, align 4, !dbg !1349
  call void @llvm.dbg.declare(metadata i64* %llen, metadata !1350, metadata !DIExpression()), !dbg !1351
  %17 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1352
  %call7 = call i64 @zsetLength(%struct.redisObject* %17), !dbg !1353
  store i64 %call7, i64* %llen, align 8, !dbg !1351
  call void @llvm.dbg.declare(metadata i64* %count, metadata !1354, metadata !DIExpression()), !dbg !1355
  %18 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1356
  %bpop = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 53, !dbg !1357
  %count8 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 0, !dbg !1358
  %19 = load i64, i64* %count8, align 8, !dbg !1358
  store i64 %19, i64* %count, align 8, !dbg !1355
  call void @llvm.dbg.declare(metadata i32* %where, metadata !1359, metadata !DIExpression()), !dbg !1360
  %20 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1361
  %bpop9 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 53, !dbg !1362
  %blockpos = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop9, i32 0, i32 4, !dbg !1363
  %wherefrom = getelementptr inbounds %struct.blockPos, %struct.blockPos* %blockpos, i32 0, i32 0, !dbg !1364
  %21 = load i32, i32* %wherefrom, align 8, !dbg !1364
  store i32 %21, i32* %where, align 4, !dbg !1360
  call void @llvm.dbg.declare(metadata i32* %use_nested_array, metadata !1365, metadata !DIExpression()), !dbg !1366
  %22 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1367
  %lastcmd = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 16, !dbg !1368
  %23 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd, align 8, !dbg !1368
  %tobool10 = icmp ne %struct.redisCommand* %23, null, !dbg !1367
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !1369

land.rhs:                                         ; preds = %if.end6
  %24 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1370
  %lastcmd11 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 16, !dbg !1371
  %25 = load %struct.redisCommand*, %struct.redisCommand** %lastcmd11, align 8, !dbg !1371
  %proc = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %25, i32 0, i32 10, !dbg !1372
  %26 = load void (%struct.client*)*, void (%struct.client*)** %proc, align 8, !dbg !1372
  %cmp12 = icmp eq void (%struct.client*)* %26, @bzmpopCommand, !dbg !1373
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end6
  %27 = phi i1 [ false, %if.end6 ], [ %cmp12, %land.rhs ], !dbg !1374
  %28 = zext i1 %27 to i64, !dbg !1375
  %cond = select i1 %27, i32 1, i32 0, !dbg !1375
  store i32 %cond, i32* %use_nested_array, align 4, !dbg !1366
  call void @llvm.dbg.declare(metadata i32* %reply_nil_when_empty, metadata !1376, metadata !DIExpression()), !dbg !1377
  %29 = load i32, i32* %use_nested_array, align 4, !dbg !1378
  store i32 %29, i32* %reply_nil_when_empty, align 4, !dbg !1377
  call void @llvm.dbg.declare(metadata i64* %prev_error_replies, metadata !1379, metadata !DIExpression()), !dbg !1380
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1381
  store i64 %30, i64* %prev_error_replies, align 8, !dbg !1380
  call void @llvm.dbg.declare(metadata %struct.client** %old_client, metadata !1382, metadata !DIExpression()), !dbg !1383
  %31 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1384
  store %struct.client* %31, %struct.client** %old_client, align 8, !dbg !1383
  %32 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1385
  store %struct.client* %32, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1386
  call void @llvm.dbg.declare(metadata i64* %replyTimer, metadata !1387, metadata !DIExpression()), !dbg !1388
  call void @elapsedStart(i64* %replyTimer), !dbg !1389
  %33 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1390
  %34 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1391
  %key13 = getelementptr inbounds %struct.readyList, %struct.readyList* %34, i32 0, i32 1, !dbg !1392
  %35 = load i32, i32* %where, align 4, !dbg !1393
  %36 = load i64, i64* %count, align 8, !dbg !1394
  %37 = load i32, i32* %use_nested_array, align 4, !dbg !1395
  %38 = load i32, i32* %reply_nil_when_empty, align 4, !dbg !1396
  call void @genericZpopCommand(%struct.client* %33, %struct.redisObject** %key13, i32 1, i32 %35, i32 1, i64 %36, i32 %37, i32 %38, i32* %deleted), !dbg !1397
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1398, metadata !DIExpression()), !dbg !1399
  store i32 2, i32* %argc, align 4, !dbg !1399
  call void @llvm.dbg.declare(metadata [3 x %struct.redisObject*]* %argv, metadata !1400, metadata !DIExpression()), !dbg !1404
  %39 = load i32, i32* %where, align 4, !dbg !1405
  %cmp14 = icmp eq i32 %39, 0, !dbg !1406
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !1405

cond.true:                                        ; preds = %land.end
  %40 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 47), align 8, !dbg !1407
  br label %cond.end, !dbg !1405

cond.false:                                       ; preds = %land.end
  %41 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 48), align 8, !dbg !1408
  br label %cond.end, !dbg !1405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi %struct.redisObject* [ %40, %cond.true ], [ %41, %cond.false ], !dbg !1405
  %arrayidx = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 0, !dbg !1409
  store %struct.redisObject* %cond15, %struct.redisObject** %arrayidx, align 16, !dbg !1410
  %42 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1411
  %key16 = getelementptr inbounds %struct.readyList, %struct.readyList* %42, i32 0, i32 1, !dbg !1412
  %43 = load %struct.redisObject*, %struct.redisObject** %key16, align 8, !dbg !1412
  %arrayidx17 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 1, !dbg !1413
  store %struct.redisObject* %43, %struct.redisObject** %arrayidx17, align 8, !dbg !1414
  %44 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1415
  %key18 = getelementptr inbounds %struct.readyList, %struct.readyList* %44, i32 0, i32 1, !dbg !1416
  %45 = load %struct.redisObject*, %struct.redisObject** %key18, align 8, !dbg !1416
  call void @incrRefCount(%struct.redisObject* %45), !dbg !1417
  %46 = load i64, i64* %count, align 8, !dbg !1418
  %cmp19 = icmp ne i64 %46, -1, !dbg !1420
  br i1 %cmp19, label %if.then20, label %if.end28, !dbg !1421

if.then20:                                        ; preds = %cond.end
  call void @llvm.dbg.declare(metadata %struct.redisObject** %count_obj, metadata !1422, metadata !DIExpression()), !dbg !1424
  %47 = load i64, i64* %count, align 8, !dbg !1425
  %48 = load i64, i64* %llen, align 8, !dbg !1426
  %cmp21 = icmp sgt i64 %47, %48, !dbg !1427
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !1428

cond.true22:                                      ; preds = %if.then20
  %49 = load i64, i64* %llen, align 8, !dbg !1429
  br label %cond.end24, !dbg !1428

cond.false23:                                     ; preds = %if.then20
  %50 = load i64, i64* %count, align 8, !dbg !1430
  br label %cond.end24, !dbg !1428

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i64 [ %49, %cond.true22 ], [ %50, %cond.false23 ], !dbg !1428
  %call26 = call %struct.redisObject* @createStringObjectFromLongLong(i64 %cond25), !dbg !1431
  store %struct.redisObject* %call26, %struct.redisObject** %count_obj, align 8, !dbg !1424
  %51 = load %struct.redisObject*, %struct.redisObject** %count_obj, align 8, !dbg !1432
  %arrayidx27 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 2, !dbg !1433
  store %struct.redisObject* %51, %struct.redisObject** %arrayidx27, align 16, !dbg !1434
  %52 = load i32, i32* %argc, align 4, !dbg !1435
  %inc = add nsw i32 %52, 1, !dbg !1435
  store i32 %inc, i32* %argc, align 4, !dbg !1435
  br label %if.end28, !dbg !1436

if.end28:                                         ; preds = %cond.end24, %cond.end
  %53 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1437
  %db29 = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 4, !dbg !1438
  %54 = load %struct.redisDb*, %struct.redisDb** %db29, align 8, !dbg !1438
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %54, i32 0, i32 5, !dbg !1439
  %55 = load i32, i32* %id, align 8, !dbg !1439
  %arraydecay = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 0, !dbg !1440
  %56 = load i32, i32* %argc, align 4, !dbg !1441
  call void @alsoPropagate(i32 %55, %struct.redisObject** %arraydecay, i32 %56, i32 3), !dbg !1442
  %arrayidx30 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 1, !dbg !1443
  %57 = load %struct.redisObject*, %struct.redisObject** %arrayidx30, align 8, !dbg !1443
  call void @decrRefCount(%struct.redisObject* %57), !dbg !1444
  %58 = load i64, i64* %count, align 8, !dbg !1445
  %cmp31 = icmp ne i64 %58, -1, !dbg !1447
  br i1 %cmp31, label %if.then32, label %if.end34, !dbg !1448

if.then32:                                        ; preds = %if.end28
  %arrayidx33 = getelementptr inbounds [3 x %struct.redisObject*], [3 x %struct.redisObject*]* %argv, i64 0, i64 2, !dbg !1449
  %59 = load %struct.redisObject*, %struct.redisObject** %arrayidx33, align 16, !dbg !1449
  call void @decrRefCount(%struct.redisObject* %59), !dbg !1450
  br label %if.end34, !dbg !1450

if.end34:                                         ; preds = %if.then32, %if.end28
  %60 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1451
  %61 = load i64, i64* %replyTimer, align 8, !dbg !1452
  %call35 = call i64 @elapsedUs(i64 %61), !dbg !1453
  %62 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1454
  %63 = load i64, i64* %prev_error_replies, align 8, !dbg !1455
  %cmp36 = icmp ne i64 %62, %63, !dbg !1456
  %conv = zext i1 %cmp36 to i32, !dbg !1456
  call void @updateStatsOnUnblock(%struct.client* %60, i64 0, i64 %call35, i32 %conv), !dbg !1457
  %64 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1458
  call void @unblockClient(%struct.client* %64), !dbg !1459
  %65 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1460
  call void @afterCommand(%struct.client* %65), !dbg !1461
  %66 = load %struct.client*, %struct.client** %old_client, align 8, !dbg !1462
  store %struct.client* %66, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1463
  %67 = load i32, i32* %deleted, align 4, !dbg !1464
  %tobool37 = icmp ne i32 %67, 0, !dbg !1464
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1466

if.then38:                                        ; preds = %if.end34
  br label %while.end, !dbg !1467

if.end39:                                         ; preds = %if.end34
  br label %while.cond, !dbg !1333, !llvm.loop !1346

while.end:                                        ; preds = %if.then38, %while.cond
  br label %if.end40, !dbg !1468

if.end40:                                         ; preds = %if.then, %while.end, %if.end
  ret void, !dbg !1469
}

declare dso_local i64 @zsetLength(%struct.redisObject*) #2

declare dso_local void @bzmpopCommand(%struct.client*) #2

declare dso_local void @genericZpopCommand(%struct.client*, %struct.redisObject**, i32, i32, i32, i64, i32, i32, i32*) #2

declare dso_local %struct.redisObject* @createStringObjectFromLongLong(i64) #2

declare dso_local void @alsoPropagate(i32, %struct.redisObject**, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @serveClientsBlockedOnStreamKey(%struct.redisObject* %o, %struct.readyList* %rl) #0 !dbg !1470 {
entry:
  %o.addr = alloca %struct.redisObject*, align 8
  %rl.addr = alloca %struct.readyList*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %s = alloca %struct.stream*, align 8
  %clients = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %receiver = alloca %struct.client*, align 8
  %bki = alloca %struct.bkinfo*, align 8
  %gt = alloca %struct.streamID*, align 8
  %prev_error_replies = alloca i64, align 8
  %old_client = alloca %struct.client*, align 8
  %replyTimer = alloca i64, align 8
  %group = alloca %struct.streamCG*, align 8
  %start = alloca %struct.streamID, align 8
  %consumer = alloca %struct.streamConsumer*, align 8
  %noack = alloca i32, align 4
  %name = alloca i8*, align 8
  %pi = alloca %struct.streamPropInfo, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !1471, metadata !DIExpression()), !dbg !1472
  store %struct.readyList* %rl, %struct.readyList** %rl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl.addr, metadata !1473, metadata !DIExpression()), !dbg !1474
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 4), align 8, !dbg !1475
  %tobool = icmp ne i32 %0, 0, !dbg !1475
  br i1 %tobool, label %if.end, label %if.then, !dbg !1477

if.then:                                          ; preds = %entry
  br label %if.end58, !dbg !1478

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1479, metadata !DIExpression()), !dbg !1480
  %1 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1481
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %1, i32 0, i32 0, !dbg !1482
  %2 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1482
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 2, !dbg !1483
  %3 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !1483
  %4 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1484
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %4, i32 0, i32 1, !dbg !1485
  %5 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1485
  %6 = bitcast %struct.redisObject* %5 to i8*, !dbg !1484
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %3, i8* %6), !dbg !1486
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct.stream** %s, metadata !1487, metadata !DIExpression()), !dbg !1499
  %7 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !1500
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !1501
  %8 = load i8*, i8** %ptr, align 8, !dbg !1501
  %9 = bitcast i8* %8 to %struct.stream*, !dbg !1500
  store %struct.stream* %9, %struct.stream** %s, align 8, !dbg !1499
  %10 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1502
  %tobool1 = icmp ne %struct.dictEntry* %10, null, !dbg !1502
  br i1 %tobool1, label %if.then2, label %if.end58, !dbg !1504

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.list** %clients, metadata !1505, metadata !DIExpression()), !dbg !1507
  %11 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1508
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %11, i32 0, i32 1, !dbg !1508
  %val = bitcast %union.anon* %v to i8**, !dbg !1508
  %12 = load i8*, i8** %val, align 8, !dbg !1508
  %13 = bitcast i8* %12 to %struct.list*, !dbg !1508
  store %struct.list* %13, %struct.list** %clients, align 8, !dbg !1507
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1509, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1511, metadata !DIExpression()), !dbg !1512
  %14 = load %struct.list*, %struct.list** %clients, align 8, !dbg !1513
  call void @listRewind(%struct.list* %14, %struct.listIter* %li), !dbg !1514
  br label %while.cond, !dbg !1515

while.cond:                                       ; preds = %if.end57, %if.then5, %if.then2
  %call3 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1516
  store %struct.listNode* %call3, %struct.listNode** %ln, align 8, !dbg !1517
  %tobool4 = icmp ne %struct.listNode* %call3, null, !dbg !1515
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1515

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %receiver, metadata !1518, metadata !DIExpression()), !dbg !1520
  %15 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1521
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i32 0, i32 2, !dbg !1521
  %16 = load i8*, i8** %value, align 8, !dbg !1521
  %17 = bitcast i8* %16 to %struct.client*, !dbg !1521
  store %struct.client* %17, %struct.client** %receiver, align 8, !dbg !1520
  %18 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1522
  %btype = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 52, !dbg !1524
  %19 = load i32, i32* %btype, align 8, !dbg !1524
  %cmp = icmp ne i32 %19, 4, !dbg !1525
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1526

if.then5:                                         ; preds = %while.body
  br label %while.cond, !dbg !1527, !llvm.loop !1528

if.end6:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata %struct.bkinfo** %bki, metadata !1530, metadata !DIExpression()), !dbg !1531
  %20 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1532
  %bpop = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 53, !dbg !1533
  %keys = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 2, !dbg !1534
  %21 = load %struct.dict*, %struct.dict** %keys, align 8, !dbg !1534
  %22 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1535
  %key7 = getelementptr inbounds %struct.readyList, %struct.readyList* %22, i32 0, i32 1, !dbg !1536
  %23 = load %struct.redisObject*, %struct.redisObject** %key7, align 8, !dbg !1536
  %24 = bitcast %struct.redisObject* %23 to i8*, !dbg !1535
  %call8 = call i8* @dictFetchValue(%struct.dict* %21, i8* %24), !dbg !1537
  %25 = bitcast i8* %call8 to %struct.bkinfo*, !dbg !1537
  store %struct.bkinfo* %25, %struct.bkinfo** %bki, align 8, !dbg !1531
  call void @llvm.dbg.declare(metadata %struct.streamID** %gt, metadata !1538, metadata !DIExpression()), !dbg !1540
  %26 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !1541
  %stream_id = getelementptr inbounds %struct.bkinfo, %struct.bkinfo* %26, i32 0, i32 1, !dbg !1542
  store %struct.streamID* %stream_id, %struct.streamID** %gt, align 8, !dbg !1540
  call void @llvm.dbg.declare(metadata i64* %prev_error_replies, metadata !1543, metadata !DIExpression()), !dbg !1544
  %27 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1545
  store i64 %27, i64* %prev_error_replies, align 8, !dbg !1544
  call void @llvm.dbg.declare(metadata %struct.client** %old_client, metadata !1546, metadata !DIExpression()), !dbg !1547
  %28 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1548
  store %struct.client* %28, %struct.client** %old_client, align 8, !dbg !1547
  %29 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1549
  store %struct.client* %29, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1550
  call void @llvm.dbg.declare(metadata i64* %replyTimer, metadata !1551, metadata !DIExpression()), !dbg !1552
  call void @elapsedStart(i64* %replyTimer), !dbg !1553
  call void @llvm.dbg.declare(metadata %struct.streamCG** %group, metadata !1554, metadata !DIExpression()), !dbg !1563
  store %struct.streamCG* null, %struct.streamCG** %group, align 8, !dbg !1563
  %30 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1564
  %bpop9 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 53, !dbg !1566
  %xread_group = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop9, i32 0, i32 6, !dbg !1567
  %31 = load %struct.redisObject*, %struct.redisObject** %xread_group, align 8, !dbg !1567
  %tobool10 = icmp ne %struct.redisObject* %31, null, !dbg !1564
  br i1 %tobool10, label %if.then11, label %if.end19, !dbg !1568

if.then11:                                        ; preds = %if.end6
  %32 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !1569
  %33 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1571
  %bpop12 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 53, !dbg !1572
  %xread_group13 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop12, i32 0, i32 6, !dbg !1573
  %34 = load %struct.redisObject*, %struct.redisObject** %xread_group13, align 8, !dbg !1573
  %ptr14 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i32 0, i32 2, !dbg !1574
  %35 = load i8*, i8** %ptr14, align 8, !dbg !1574
  %call15 = call %struct.streamCG* @streamLookupCG(%struct.stream* %32, i8* %35), !dbg !1575
  store %struct.streamCG* %call15, %struct.streamCG** %group, align 8, !dbg !1576
  %36 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1577
  %tobool16 = icmp ne %struct.streamCG* %36, null, !dbg !1577
  br i1 %tobool16, label %if.else, label %if.then17, !dbg !1579

if.then17:                                        ; preds = %if.then11
  %37 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1580
  call void @addReplyError(%struct.client* %37, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.8, i64 0, i64 0)), !dbg !1582
  br label %unblock_receiver, !dbg !1583

if.else:                                          ; preds = %if.then11
  %38 = load %struct.streamID*, %struct.streamID** %gt, align 8, !dbg !1584
  %39 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1586
  %last_id = getelementptr inbounds %struct.streamCG, %struct.streamCG* %39, i32 0, i32 0, !dbg !1587
  %40 = bitcast %struct.streamID* %38 to i8*, !dbg !1587
  %41 = bitcast %struct.streamID* %last_id to i8*, !dbg !1587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false), !dbg !1587
  br label %if.end18

if.end18:                                         ; preds = %if.else
  br label %if.end19, !dbg !1588

if.end19:                                         ; preds = %if.end18, %if.end6
  %42 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !1589
  %last_id20 = getelementptr inbounds %struct.stream, %struct.stream* %42, i32 0, i32 2, !dbg !1591
  %43 = load %struct.streamID*, %struct.streamID** %gt, align 8, !dbg !1592
  %call21 = call i32 @streamCompareID(%struct.streamID* %last_id20, %struct.streamID* %43), !dbg !1593
  %cmp22 = icmp sgt i32 %call21, 0, !dbg !1594
  br i1 %cmp22, label %if.then23, label %if.end57, !dbg !1595

if.then23:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata %struct.streamID* %start, metadata !1596, metadata !DIExpression()), !dbg !1598
  %44 = load %struct.streamID*, %struct.streamID** %gt, align 8, !dbg !1599
  %45 = bitcast %struct.streamID* %start to i8*, !dbg !1600
  %46 = bitcast %struct.streamID* %44 to i8*, !dbg !1600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false), !dbg !1600
  %call24 = call i32 @streamIncrID(%struct.streamID* %start), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct.streamConsumer** %consumer, metadata !1602, metadata !DIExpression()), !dbg !1610
  store %struct.streamConsumer* null, %struct.streamConsumer** %consumer, align 8, !dbg !1610
  call void @llvm.dbg.declare(metadata i32* %noack, metadata !1611, metadata !DIExpression()), !dbg !1612
  store i32 0, i32* %noack, align 4, !dbg !1612
  %47 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1613
  %tobool25 = icmp ne %struct.streamCG* %47, null, !dbg !1613
  br i1 %tobool25, label %if.then26, label %if.end44, !dbg !1615

if.then26:                                        ; preds = %if.then23
  %48 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1616
  %bpop27 = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 53, !dbg !1618
  %xread_group_noack = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop27, i32 0, i32 8, !dbg !1619
  %49 = load i32, i32* %xread_group_noack, align 8, !dbg !1619
  store i32 %49, i32* %noack, align 4, !dbg !1620
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1621, metadata !DIExpression()), !dbg !1622
  %50 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1623
  %bpop28 = getelementptr inbounds %struct.client, %struct.client* %50, i32 0, i32 53, !dbg !1624
  %xread_consumer = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop28, i32 0, i32 7, !dbg !1625
  %51 = load %struct.redisObject*, %struct.redisObject** %xread_consumer, align 8, !dbg !1625
  %ptr29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %51, i32 0, i32 2, !dbg !1626
  %52 = load i8*, i8** %ptr29, align 8, !dbg !1626
  store i8* %52, i8** %name, align 8, !dbg !1622
  %53 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1627
  %54 = load i8*, i8** %name, align 8, !dbg !1628
  %call30 = call %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG* %53, i8* %54, i32 0), !dbg !1629
  store %struct.streamConsumer* %call30, %struct.streamConsumer** %consumer, align 8, !dbg !1630
  %55 = load %struct.streamConsumer*, %struct.streamConsumer** %consumer, align 8, !dbg !1631
  %cmp31 = icmp eq %struct.streamConsumer* %55, null, !dbg !1633
  br i1 %cmp31, label %if.then32, label %if.end43, !dbg !1634

if.then32:                                        ; preds = %if.then26
  %56 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1635
  %57 = load i8*, i8** %name, align 8, !dbg !1637
  %58 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1638
  %key33 = getelementptr inbounds %struct.readyList, %struct.readyList* %58, i32 0, i32 1, !dbg !1639
  %59 = load %struct.redisObject*, %struct.redisObject** %key33, align 8, !dbg !1639
  %60 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1640
  %db34 = getelementptr inbounds %struct.readyList, %struct.readyList* %60, i32 0, i32 0, !dbg !1641
  %61 = load %struct.redisDb*, %struct.redisDb** %db34, align 8, !dbg !1641
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %61, i32 0, i32 5, !dbg !1642
  %62 = load i32, i32* %id, align 8, !dbg !1642
  %call35 = call %struct.streamConsumer* @streamCreateConsumer(%struct.streamCG* %56, i8* %57, %struct.redisObject* %59, i32 %62, i32 0), !dbg !1643
  store %struct.streamConsumer* %call35, %struct.streamConsumer** %consumer, align 8, !dbg !1644
  %63 = load i32, i32* %noack, align 4, !dbg !1645
  %tobool36 = icmp ne i32 %63, 0, !dbg !1645
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !1647

if.then37:                                        ; preds = %if.then32
  %64 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1648
  %65 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1650
  %key38 = getelementptr inbounds %struct.readyList, %struct.readyList* %65, i32 0, i32 1, !dbg !1651
  %66 = load %struct.redisObject*, %struct.redisObject** %key38, align 8, !dbg !1651
  %67 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1652
  %bpop39 = getelementptr inbounds %struct.client, %struct.client* %67, i32 0, i32 53, !dbg !1653
  %xread_group40 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop39, i32 0, i32 6, !dbg !1654
  %68 = load %struct.redisObject*, %struct.redisObject** %xread_group40, align 8, !dbg !1654
  %69 = load %struct.streamConsumer*, %struct.streamConsumer** %consumer, align 8, !dbg !1655
  %name41 = getelementptr inbounds %struct.streamConsumer, %struct.streamConsumer* %69, i32 0, i32 1, !dbg !1656
  %70 = load i8*, i8** %name41, align 8, !dbg !1656
  call void @streamPropagateConsumerCreation(%struct.client* %64, %struct.redisObject* %66, %struct.redisObject* %68, i8* %70), !dbg !1657
  br label %if.end42, !dbg !1658

if.end42:                                         ; preds = %if.then37, %if.then32
  br label %if.end43, !dbg !1659

if.end43:                                         ; preds = %if.end42, %if.then26
  br label %if.end44, !dbg !1660

if.end44:                                         ; preds = %if.end43, %if.then23
  %71 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1661
  %resp = getelementptr inbounds %struct.client, %struct.client* %71, i32 0, i32 3, !dbg !1663
  %72 = load i32, i32* %resp, align 8, !dbg !1663
  %cmp45 = icmp eq i32 %72, 2, !dbg !1664
  br i1 %cmp45, label %if.then46, label %if.else47, !dbg !1665

if.then46:                                        ; preds = %if.end44
  %73 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1666
  call void @addReplyArrayLen(%struct.client* %73, i64 1), !dbg !1668
  %74 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1669
  call void @addReplyArrayLen(%struct.client* %74, i64 2), !dbg !1670
  br label %if.end48, !dbg !1671

if.else47:                                        ; preds = %if.end44
  %75 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1672
  call void @addReplyMapLen(%struct.client* %75, i64 1), !dbg !1674
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  %76 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1675
  %77 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1676
  %key49 = getelementptr inbounds %struct.readyList, %struct.readyList* %77, i32 0, i32 1, !dbg !1677
  %78 = load %struct.redisObject*, %struct.redisObject** %key49, align 8, !dbg !1677
  call void @addReplyBulk(%struct.client* %76, %struct.redisObject* %78), !dbg !1678
  call void @llvm.dbg.declare(metadata %struct.streamPropInfo* %pi, metadata !1679, metadata !DIExpression()), !dbg !1685
  %keyname = getelementptr inbounds %struct.streamPropInfo, %struct.streamPropInfo* %pi, i32 0, i32 0, !dbg !1686
  %79 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1687
  %key50 = getelementptr inbounds %struct.readyList, %struct.readyList* %79, i32 0, i32 1, !dbg !1688
  %80 = load %struct.redisObject*, %struct.redisObject** %key50, align 8, !dbg !1688
  store %struct.redisObject* %80, %struct.redisObject** %keyname, align 8, !dbg !1686
  %groupname = getelementptr inbounds %struct.streamPropInfo, %struct.streamPropInfo* %pi, i32 0, i32 1, !dbg !1686
  %81 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1689
  %bpop51 = getelementptr inbounds %struct.client, %struct.client* %81, i32 0, i32 53, !dbg !1690
  %xread_group52 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop51, i32 0, i32 6, !dbg !1691
  %82 = load %struct.redisObject*, %struct.redisObject** %xread_group52, align 8, !dbg !1691
  store %struct.redisObject* %82, %struct.redisObject** %groupname, align 8, !dbg !1686
  %83 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1692
  %84 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !1693
  %85 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1694
  %bpop53 = getelementptr inbounds %struct.client, %struct.client* %85, i32 0, i32 53, !dbg !1695
  %xread_count = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop53, i32 0, i32 5, !dbg !1696
  %86 = load i64, i64* %xread_count, align 8, !dbg !1696
  %87 = load %struct.streamCG*, %struct.streamCG** %group, align 8, !dbg !1697
  %88 = load %struct.streamConsumer*, %struct.streamConsumer** %consumer, align 8, !dbg !1698
  %89 = load i32, i32* %noack, align 4, !dbg !1699
  %call54 = call i64 @streamReplyWithRange(%struct.client* %83, %struct.stream* %84, %struct.streamID* %start, %struct.streamID* null, i64 %86, i32 0, %struct.streamCG* %87, %struct.streamConsumer* %88, i32 %89, %struct.streamPropInfo* %pi), !dbg !1700
  br label %unblock_receiver, !dbg !1700

unblock_receiver:                                 ; preds = %if.end48, %if.then17
  call void @llvm.dbg.label(metadata !1701), !dbg !1702
  %90 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1703
  %91 = load i64, i64* %replyTimer, align 8, !dbg !1704
  %call55 = call i64 @elapsedUs(i64 %91), !dbg !1705
  %92 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1706
  %93 = load i64, i64* %prev_error_replies, align 8, !dbg !1707
  %cmp56 = icmp ne i64 %92, %93, !dbg !1708
  %conv = zext i1 %cmp56 to i32, !dbg !1708
  call void @updateStatsOnUnblock(%struct.client* %90, i64 0, i64 %call55, i32 %conv), !dbg !1709
  %94 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1710
  call void @unblockClient(%struct.client* %94), !dbg !1711
  %95 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1712
  call void @afterCommand(%struct.client* %95), !dbg !1713
  %96 = load %struct.client*, %struct.client** %old_client, align 8, !dbg !1714
  store %struct.client* %96, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1715
  br label %if.end57, !dbg !1716

if.end57:                                         ; preds = %unblock_receiver, %if.end19
  br label %while.cond, !dbg !1515, !llvm.loop !1528

while.end:                                        ; preds = %while.cond
  br label %if.end58, !dbg !1717

if.end58:                                         ; preds = %if.then, %while.end, %if.end
  ret void, !dbg !1718
}

declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) #2

declare dso_local %struct.streamCG* @streamLookupCG(%struct.stream*, i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @streamCompareID(%struct.streamID*, %struct.streamID*) #2

declare dso_local i32 @streamIncrID(%struct.streamID*) #2

declare dso_local %struct.streamConsumer* @streamLookupConsumer(%struct.streamCG*, i8*, i32) #2

declare dso_local %struct.streamConsumer* @streamCreateConsumer(%struct.streamCG*, i8*, %struct.redisObject*, i32, i32) #2

declare dso_local void @streamPropagateConsumerCreation(%struct.client*, %struct.redisObject*, %struct.redisObject*, i8*) #2

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #2

declare dso_local void @addReplyMapLen(%struct.client*, i64) #2

declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) #2

declare dso_local i64 @streamReplyWithRange(%struct.client*, %struct.stream*, %struct.streamID*, %struct.streamID*, i64, i32, %struct.streamCG*, %struct.streamConsumer*, i32, %struct.streamPropInfo*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @serveClientsBlockedOnKeyByModule(%struct.readyList* %rl) #0 !dbg !1719 {
entry:
  %rl.addr = alloca %struct.readyList*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %clients = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %receiver = alloca %struct.client*, align 8
  %prev_error_replies = alloca i64, align 8
  %old_client = alloca %struct.client*, align 8
  %replyTimer = alloca i64, align 8
  store %struct.readyList* %rl, %struct.readyList** %rl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl.addr, metadata !1722, metadata !DIExpression()), !dbg !1723
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 3), align 4, !dbg !1724
  %tobool = icmp ne i32 %0, 0, !dbg !1724
  br i1 %tobool, label %if.end, label %if.then, !dbg !1726

if.then:                                          ; preds = %entry
  br label %if.end14, !dbg !1727

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1728, metadata !DIExpression()), !dbg !1729
  %1 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1730
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %1, i32 0, i32 0, !dbg !1731
  %2 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1731
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 2, !dbg !1732
  %3 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !1732
  %4 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1733
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %4, i32 0, i32 1, !dbg !1734
  %5 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1734
  %6 = bitcast %struct.redisObject* %5 to i8*, !dbg !1733
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %3, i8* %6), !dbg !1735
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1729
  %7 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1736
  %tobool1 = icmp ne %struct.dictEntry* %7, null, !dbg !1736
  br i1 %tobool1, label %if.then2, label %if.end14, !dbg !1738

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.list** %clients, metadata !1739, metadata !DIExpression()), !dbg !1741
  %8 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1742
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i32 0, i32 1, !dbg !1742
  %val = bitcast %union.anon* %v to i8**, !dbg !1742
  %9 = load i8*, i8** %val, align 8, !dbg !1742
  %10 = bitcast i8* %9 to %struct.list*, !dbg !1742
  store %struct.list* %10, %struct.list** %clients, align 8, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1743, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1745, metadata !DIExpression()), !dbg !1746
  %11 = load %struct.list*, %struct.list** %clients, align 8, !dbg !1747
  call void @listRewind(%struct.list* %11, %struct.listIter* %li), !dbg !1748
  br label %while.cond, !dbg !1749

while.cond:                                       ; preds = %if.end11, %if.then10, %if.then5, %if.then2
  %call3 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1750
  store %struct.listNode* %call3, %struct.listNode** %ln, align 8, !dbg !1751
  %tobool4 = icmp ne %struct.listNode* %call3, null, !dbg !1749
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1749

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %receiver, metadata !1752, metadata !DIExpression()), !dbg !1754
  %12 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1755
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i32 0, i32 2, !dbg !1755
  %13 = load i8*, i8** %value, align 8, !dbg !1755
  %14 = bitcast i8* %13 to %struct.client*, !dbg !1755
  store %struct.client* %14, %struct.client** %receiver, align 8, !dbg !1754
  %15 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1756
  %btype = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 52, !dbg !1758
  %16 = load i32, i32* %btype, align 8, !dbg !1758
  %cmp = icmp ne i32 %16, 3, !dbg !1759
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1760

if.then5:                                         ; preds = %while.body
  br label %while.cond, !dbg !1761, !llvm.loop !1762

if.end6:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i64* %prev_error_replies, metadata !1764, metadata !DIExpression()), !dbg !1765
  %17 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1766
  store i64 %17, i64* %prev_error_replies, align 8, !dbg !1765
  call void @llvm.dbg.declare(metadata %struct.client** %old_client, metadata !1767, metadata !DIExpression()), !dbg !1768
  %18 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1769
  store %struct.client* %18, %struct.client** %old_client, align 8, !dbg !1768
  %19 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1770
  store %struct.client* %19, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1771
  call void @llvm.dbg.declare(metadata i64* %replyTimer, metadata !1772, metadata !DIExpression()), !dbg !1773
  call void @elapsedStart(i64* %replyTimer), !dbg !1774
  %20 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1775
  %21 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1777
  %key7 = getelementptr inbounds %struct.readyList, %struct.readyList* %21, i32 0, i32 1, !dbg !1778
  %22 = load %struct.redisObject*, %struct.redisObject** %key7, align 8, !dbg !1778
  %call8 = call i32 @moduleTryServeClientBlockedOnKey(%struct.client* %20, %struct.redisObject* %22), !dbg !1779
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1779
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1780

if.then10:                                        ; preds = %if.end6
  br label %while.cond, !dbg !1781, !llvm.loop !1762

if.end11:                                         ; preds = %if.end6
  %23 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1782
  %24 = load i64, i64* %replyTimer, align 8, !dbg !1783
  %call12 = call i64 @elapsedUs(i64 %24), !dbg !1784
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1785
  %26 = load i64, i64* %prev_error_replies, align 8, !dbg !1786
  %cmp13 = icmp ne i64 %25, %26, !dbg !1787
  %conv = zext i1 %cmp13 to i32, !dbg !1787
  call void @updateStatsOnUnblock(%struct.client* %23, i64 0, i64 %call12, i32 %conv), !dbg !1788
  %27 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1789
  call void @moduleUnblockClient(%struct.client* %27), !dbg !1790
  %28 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1791
  call void @afterCommand(%struct.client* %28), !dbg !1792
  %29 = load %struct.client*, %struct.client** %old_client, align 8, !dbg !1793
  store %struct.client* %29, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1794
  br label %while.cond, !dbg !1749, !llvm.loop !1762

while.end:                                        ; preds = %while.cond
  br label %if.end14, !dbg !1795

if.end14:                                         ; preds = %if.then, %while.end, %if.end
  ret void, !dbg !1796
}

declare dso_local i32 @moduleTryServeClientBlockedOnKey(%struct.client*, %struct.redisObject*) #2

declare dso_local void @moduleUnblockClient(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @unblockDeletedStreamReadgroupClients(%struct.readyList* %rl) #0 !dbg !1797 {
entry:
  %rl.addr = alloca %struct.readyList*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %clients = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %receiver = alloca %struct.client*, align 8
  %prev_error_replies = alloca i64, align 8
  %old_client = alloca %struct.client*, align 8
  %replyTimer = alloca i64, align 8
  store %struct.readyList* %rl, %struct.readyList** %rl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl.addr, metadata !1798, metadata !DIExpression()), !dbg !1799
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 4), align 8, !dbg !1800
  %tobool = icmp ne i32 %0, 0, !dbg !1800
  br i1 %tobool, label %if.end, label %if.then, !dbg !1802

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !1803

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1804, metadata !DIExpression()), !dbg !1805
  %1 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1806
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %1, i32 0, i32 0, !dbg !1807
  %2 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1807
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 2, !dbg !1808
  %3 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !1808
  %4 = load %struct.readyList*, %struct.readyList** %rl.addr, align 8, !dbg !1809
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %4, i32 0, i32 1, !dbg !1810
  %5 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1810
  %6 = bitcast %struct.redisObject* %5 to i8*, !dbg !1809
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %3, i8* %6), !dbg !1811
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1805
  %7 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1812
  %tobool1 = icmp ne %struct.dictEntry* %7, null, !dbg !1812
  br i1 %tobool1, label %if.then2, label %if.end10, !dbg !1814

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.list** %clients, metadata !1815, metadata !DIExpression()), !dbg !1817
  %8 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1818
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %8, i32 0, i32 1, !dbg !1818
  %val = bitcast %union.anon* %v to i8**, !dbg !1818
  %9 = load i8*, i8** %val, align 8, !dbg !1818
  %10 = bitcast i8* %9 to %struct.list*, !dbg !1818
  store %struct.list* %10, %struct.list** %clients, align 8, !dbg !1817
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1819, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1821, metadata !DIExpression()), !dbg !1822
  %11 = load %struct.list*, %struct.list** %clients, align 8, !dbg !1823
  call void @listRewind(%struct.list* %11, %struct.listIter* %li), !dbg !1824
  br label %while.cond, !dbg !1825

while.cond:                                       ; preds = %if.end7, %if.then6, %if.then2
  %call3 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1826
  store %struct.listNode* %call3, %struct.listNode** %ln, align 8, !dbg !1827
  %tobool4 = icmp ne %struct.listNode* %call3, null, !dbg !1825
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1825

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.client** %receiver, metadata !1828, metadata !DIExpression()), !dbg !1830
  %12 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1831
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i32 0, i32 2, !dbg !1831
  %13 = load i8*, i8** %value, align 8, !dbg !1831
  %14 = bitcast i8* %13 to %struct.client*, !dbg !1831
  store %struct.client* %14, %struct.client** %receiver, align 8, !dbg !1830
  %15 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1832
  %btype = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 52, !dbg !1834
  %16 = load i32, i32* %btype, align 8, !dbg !1834
  %cmp = icmp ne i32 %16, 4, !dbg !1835
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !1836

lor.lhs.false:                                    ; preds = %while.body
  %17 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1837
  %bpop = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 53, !dbg !1838
  %xread_group = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 6, !dbg !1839
  %18 = load %struct.redisObject*, %struct.redisObject** %xread_group, align 8, !dbg !1839
  %tobool5 = icmp ne %struct.redisObject* %18, null, !dbg !1837
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !1840

if.then6:                                         ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !dbg !1841, !llvm.loop !1842

if.end7:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i64* %prev_error_replies, metadata !1844, metadata !DIExpression()), !dbg !1845
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1846
  store i64 %19, i64* %prev_error_replies, align 8, !dbg !1845
  call void @llvm.dbg.declare(metadata %struct.client** %old_client, metadata !1847, metadata !DIExpression()), !dbg !1848
  %20 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1849
  store %struct.client* %20, %struct.client** %old_client, align 8, !dbg !1848
  %21 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1850
  store %struct.client* %21, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1851
  call void @llvm.dbg.declare(metadata i64* %replyTimer, metadata !1852, metadata !DIExpression()), !dbg !1853
  call void @elapsedStart(i64* %replyTimer), !dbg !1854
  %22 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1855
  call void @addReplyError(%struct.client* %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0)), !dbg !1856
  %23 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1857
  %24 = load i64, i64* %replyTimer, align 8, !dbg !1858
  %call8 = call i64 @elapsedUs(i64 %24), !dbg !1859
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 145), align 8, !dbg !1860
  %26 = load i64, i64* %prev_error_replies, align 8, !dbg !1861
  %cmp9 = icmp ne i64 %25, %26, !dbg !1862
  %conv = zext i1 %cmp9 to i32, !dbg !1862
  call void @updateStatsOnUnblock(%struct.client* %23, i64 0, i64 %call8, i32 %conv), !dbg !1863
  %27 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1864
  call void @unblockClient(%struct.client* %27), !dbg !1865
  %28 = load %struct.client*, %struct.client** %receiver, align 8, !dbg !1866
  call void @afterCommand(%struct.client* %28), !dbg !1867
  %29 = load %struct.client*, %struct.client** %old_client, align 8, !dbg !1868
  store %struct.client* %29, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 65), align 8, !dbg !1869
  br label %while.cond, !dbg !1825, !llvm.loop !1842

while.end:                                        ; preds = %while.cond
  br label %if.end10, !dbg !1870

if.end10:                                         ; preds = %if.then, %while.end, %if.end
  ret void, !dbg !1871
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @handleClientsBlockedOnKeys() #0 !dbg !1872 {
entry:
  %l = alloca %struct.list*, align 8
  %ln = alloca %struct.listNode*, align 8
  %rl = alloca %struct.readyList*, align 8
  %o = alloca %struct.redisObject*, align 8
  %objtype = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 245, i32 1), align 8, !dbg !1873
  %cmp = icmp eq i32 %0, 0, !dbg !1873
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1873

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1873

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 624), !dbg !1873
  unreachable, !dbg !1873

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1873

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1874
  br label %while.cond, !dbg !1875

while.cond:                                       ; preds = %while.end, %cond.end
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 323), align 8, !dbg !1876
  %len = getelementptr inbounds %struct.list, %struct.list* %1, i32 0, i32 5, !dbg !1876
  %2 = load i64, i64* %len, align 8, !dbg !1876
  %cmp1 = icmp ne i64 %2, 0, !dbg !1877
  br i1 %cmp1, label %while.body, label %while.end29, !dbg !1875

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.list** %l, metadata !1878, metadata !DIExpression()), !dbg !1880
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 323), align 8, !dbg !1881
  store %struct.list* %3, %struct.list** %l, align 8, !dbg !1882
  %call = call %struct.list* @listCreate(), !dbg !1883
  store %struct.list* %call, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 323), align 8, !dbg !1884
  br label %while.cond2, !dbg !1885

while.cond2:                                      ; preds = %if.end27, %while.body
  %4 = load %struct.list*, %struct.list** %l, align 8, !dbg !1886
  %len3 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 5, !dbg !1886
  %5 = load i64, i64* %len3, align 8, !dbg !1886
  %cmp4 = icmp ne i64 %5, 0, !dbg !1887
  br i1 %cmp4, label %while.body5, label %while.end, !dbg !1885

while.body5:                                      ; preds = %while.cond2
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1888, metadata !DIExpression()), !dbg !1890
  %6 = load %struct.list*, %struct.list** %l, align 8, !dbg !1891
  %head = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0, !dbg !1891
  %7 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !1891
  store %struct.listNode* %7, %struct.listNode** %ln, align 8, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl, metadata !1892, metadata !DIExpression()), !dbg !1893
  %8 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1894
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i32 0, i32 2, !dbg !1895
  %9 = load i8*, i8** %value, align 8, !dbg !1895
  %10 = bitcast i8* %9 to %struct.readyList*, !dbg !1894
  store %struct.readyList* %10, %struct.readyList** %rl, align 8, !dbg !1893
  %11 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1896
  %db = getelementptr inbounds %struct.readyList, %struct.readyList* %11, i32 0, i32 0, !dbg !1897
  %12 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1897
  %ready_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %12, i32 0, i32 3, !dbg !1898
  %13 = load %struct.dict*, %struct.dict** %ready_keys, align 8, !dbg !1898
  %14 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1899
  %key = getelementptr inbounds %struct.readyList, %struct.readyList* %14, i32 0, i32 1, !dbg !1900
  %15 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !1900
  %16 = bitcast %struct.redisObject* %15 to i8*, !dbg !1899
  %call6 = call i32 @dictDelete(%struct.dict* %13, i8* %16), !dbg !1901
  %17 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 68), align 8, !dbg !1902
  %inc = add nsw i64 %17, 1, !dbg !1902
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 68), align 8, !dbg !1902
  call void @updateCachedTime(i32 0), !dbg !1903
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !1904, metadata !DIExpression()), !dbg !1905
  %18 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1906
  %db7 = getelementptr inbounds %struct.readyList, %struct.readyList* %18, i32 0, i32 0, !dbg !1907
  %19 = load %struct.redisDb*, %struct.redisDb** %db7, align 8, !dbg !1907
  %20 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1908
  %key8 = getelementptr inbounds %struct.readyList, %struct.readyList* %20, i32 0, i32 1, !dbg !1909
  %21 = load %struct.redisObject*, %struct.redisObject** %key8, align 8, !dbg !1909
  %call9 = call %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb* %19, %struct.redisObject* %21, i32 6), !dbg !1910
  store %struct.redisObject* %call9, %struct.redisObject** %o, align 8, !dbg !1905
  %22 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1911
  %cmp10 = icmp ne %struct.redisObject* %22, null, !dbg !1913
  br i1 %cmp10, label %if.then, label %if.else23, !dbg !1914

if.then:                                          ; preds = %while.body5
  call void @llvm.dbg.declare(metadata i32* %objtype, metadata !1915, metadata !DIExpression()), !dbg !1917
  %23 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1918
  %24 = bitcast %struct.redisObject* %23 to i32*, !dbg !1919
  %bf.load = load i32, i32* %24, align 8, !dbg !1919
  %bf.clear = and i32 %bf.load, 15, !dbg !1919
  store i32 %bf.clear, i32* %objtype, align 4, !dbg !1917
  %25 = load i32, i32* %objtype, align 4, !dbg !1920
  %cmp11 = icmp eq i32 %25, 1, !dbg !1922
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1923

if.then12:                                        ; preds = %if.then
  %26 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1924
  %27 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1925
  call void @serveClientsBlockedOnListKey(%struct.redisObject* %26, %struct.readyList* %27), !dbg !1926
  br label %if.end19, !dbg !1926

if.else:                                          ; preds = %if.then
  %28 = load i32, i32* %objtype, align 4, !dbg !1927
  %cmp13 = icmp eq i32 %28, 3, !dbg !1929
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !1930

if.then14:                                        ; preds = %if.else
  %29 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1931
  %30 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1932
  call void @serveClientsBlockedOnSortedSetKey(%struct.redisObject* %29, %struct.readyList* %30), !dbg !1933
  br label %if.end18, !dbg !1933

if.else15:                                        ; preds = %if.else
  %31 = load i32, i32* %objtype, align 4, !dbg !1934
  %cmp16 = icmp eq i32 %31, 6, !dbg !1936
  br i1 %cmp16, label %if.then17, label %if.end, !dbg !1937

if.then17:                                        ; preds = %if.else15
  %32 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1938
  %33 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1939
  call void @serveClientsBlockedOnStreamKey(%struct.redisObject* %32, %struct.readyList* %33), !dbg !1940
  br label %if.end, !dbg !1940

if.end:                                           ; preds = %if.then17, %if.else15
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then12
  %34 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1941
  call void @serveClientsBlockedOnKeyByModule(%struct.readyList* %34), !dbg !1942
  %35 = load i32, i32* %objtype, align 4, !dbg !1943
  %cmp20 = icmp ne i32 %35, 6, !dbg !1945
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !1946

if.then21:                                        ; preds = %if.end19
  %36 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1947
  call void @unblockDeletedStreamReadgroupClients(%struct.readyList* %36), !dbg !1948
  br label %if.end22, !dbg !1948

if.end22:                                         ; preds = %if.then21, %if.end19
  br label %if.end27, !dbg !1949

if.else23:                                        ; preds = %while.body5
  %37 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1950
  call void @unblockDeletedStreamReadgroupClients(%struct.readyList* %37), !dbg !1952
  %38 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 245, i32 1), align 8, !dbg !1953
  %cmp24 = icmp sgt i32 %38, 0, !dbg !1955
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1956

if.then25:                                        ; preds = %if.else23
  call void (...) @propagatePendingCommands(), !dbg !1957
  br label %if.end26, !dbg !1957

if.end26:                                         ; preds = %if.then25, %if.else23
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end22
  %39 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 68), align 8, !dbg !1958
  %dec = add nsw i64 %39, -1, !dbg !1958
  store i64 %dec, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 68), align 8, !dbg !1958
  %40 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1959
  %key28 = getelementptr inbounds %struct.readyList, %struct.readyList* %40, i32 0, i32 1, !dbg !1960
  %41 = load %struct.redisObject*, %struct.redisObject** %key28, align 8, !dbg !1960
  call void @decrRefCount(%struct.redisObject* %41), !dbg !1961
  %42 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !1962
  %43 = bitcast %struct.readyList* %42 to i8*, !dbg !1962
  call void @zfree(i8* %43), !dbg !1963
  %44 = load %struct.list*, %struct.list** %l, align 8, !dbg !1964
  %45 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1965
  call void @listDelNode(%struct.list* %44, %struct.listNode* %45), !dbg !1966
  br label %while.cond2, !dbg !1885, !llvm.loop !1967

while.end:                                        ; preds = %while.cond2
  %46 = load %struct.list*, %struct.list** %l, align 8, !dbg !1969
  call void @listRelease(%struct.list* %46), !dbg !1970
  br label %while.cond, !dbg !1875, !llvm.loop !1971

while.end29:                                      ; preds = %while.cond
  %47 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1973
  %tobool = icmp ne i32 %47, 0, !dbg !1973
  br i1 %tobool, label %cond.true30, label %cond.false31, !dbg !1973

cond.true30:                                      ; preds = %while.end29
  br label %cond.end33, !dbg !1973

cond.false31:                                     ; preds = %while.end29
  call void @_serverAssert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 694), !dbg !1973
  unreachable, !dbg !1973

unreachable.cont32:                               ; No predecessors!
  br label %cond.end33, !dbg !1973

cond.end33:                                       ; preds = %unreachable.cont32, %cond.true30
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1974
  ret void, !dbg !1975
}

declare dso_local %struct.list* @listCreate() #2

declare dso_local i32 @dictDelete(%struct.dict*, i8*) #2

declare dso_local void @updateCachedTime(i32) #2

declare dso_local %struct.redisObject* @lookupKeyReadWithFlags(%struct.redisDb*, %struct.redisObject*, i32) #2

declare dso_local void @propagatePendingCommands(...) #2

declare dso_local void @zfree(i8*) #2

declare dso_local void @listRelease(%struct.list*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @blockForKeys(%struct.client* %c, i32 %btype, %struct.redisObject** %keys, i32 %numkeys, i64 %count, i64 %timeout, %struct.redisObject* %target, %struct.blockPos* %blockpos, %struct.streamID* %ids) #0 !dbg !1976 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %btype.addr = alloca i32, align 4
  %keys.addr = alloca %struct.redisObject**, align 8
  %numkeys.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %target.addr = alloca %struct.redisObject*, align 8
  %blockpos.addr = alloca %struct.blockPos*, align 8
  %ids.addr = alloca %struct.streamID*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %l = alloca %struct.list*, align 8
  %j = alloca i32, align 4
  %bki = alloca %struct.bkinfo*, align 8
  %retval = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1980, metadata !DIExpression()), !dbg !1981
  store i32 %btype, i32* %btype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %btype.addr, metadata !1982, metadata !DIExpression()), !dbg !1983
  store %struct.redisObject** %keys, %struct.redisObject*** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %keys.addr, metadata !1984, metadata !DIExpression()), !dbg !1985
  store i32 %numkeys, i32* %numkeys.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %numkeys.addr, metadata !1986, metadata !DIExpression()), !dbg !1987
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  store %struct.redisObject* %target, %struct.redisObject** %target.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %target.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  store %struct.blockPos* %blockpos, %struct.blockPos** %blockpos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.blockPos** %blockpos.addr, metadata !1994, metadata !DIExpression()), !dbg !1995
  store %struct.streamID* %ids, %struct.streamID** %ids.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.streamID** %ids.addr, metadata !1996, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1998, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.declare(metadata %struct.list** %l, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2002, metadata !DIExpression()), !dbg !2003
  %0 = load i64, i64* %count.addr, align 8, !dbg !2004
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2005
  %bpop = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 53, !dbg !2006
  %count1 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 0, !dbg !2007
  store i64 %0, i64* %count1, align 8, !dbg !2008
  %2 = load i64, i64* %timeout.addr, align 8, !dbg !2009
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2010
  %bpop2 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 53, !dbg !2011
  %timeout3 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop2, i32 0, i32 1, !dbg !2012
  store i64 %2, i64* %timeout3, align 8, !dbg !2013
  %4 = load %struct.redisObject*, %struct.redisObject** %target.addr, align 8, !dbg !2014
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2015
  %bpop4 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 53, !dbg !2016
  %target5 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop4, i32 0, i32 3, !dbg !2017
  store %struct.redisObject* %4, %struct.redisObject** %target5, align 8, !dbg !2018
  %6 = load %struct.blockPos*, %struct.blockPos** %blockpos.addr, align 8, !dbg !2019
  %cmp = icmp ne %struct.blockPos* %6, null, !dbg !2021
  br i1 %cmp, label %if.then, label %if.end, !dbg !2022

if.then:                                          ; preds = %entry
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2023
  %bpop6 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 53, !dbg !2024
  %blockpos7 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop6, i32 0, i32 4, !dbg !2025
  %8 = load %struct.blockPos*, %struct.blockPos** %blockpos.addr, align 8, !dbg !2026
  %9 = bitcast %struct.blockPos* %blockpos7 to i8*, !dbg !2027
  %10 = bitcast %struct.blockPos* %8 to i8*, !dbg !2027
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 4 %10, i64 8, i1 false), !dbg !2027
  br label %if.end, !dbg !2023

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.redisObject*, %struct.redisObject** %target.addr, align 8, !dbg !2028
  %cmp8 = icmp ne %struct.redisObject* %11, null, !dbg !2030
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2031

if.then9:                                         ; preds = %if.end
  %12 = load %struct.redisObject*, %struct.redisObject** %target.addr, align 8, !dbg !2032
  call void @incrRefCount(%struct.redisObject* %12), !dbg !2033
  br label %if.end10, !dbg !2033

if.end10:                                         ; preds = %if.then9, %if.end
  store i32 0, i32* %j, align 4, !dbg !2034
  br label %for.cond, !dbg !2036

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i32, i32* %j, align 4, !dbg !2037
  %14 = load i32, i32* %numkeys.addr, align 4, !dbg !2039
  %cmp11 = icmp slt i32 %13, %14, !dbg !2040
  br i1 %cmp11, label %for.body, label %for.end, !dbg !2041

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.bkinfo** %bki, metadata !2042, metadata !DIExpression()), !dbg !2044
  %call = call i8* @zmalloc(i64 24), !dbg !2045
  %15 = bitcast i8* %call to %struct.bkinfo*, !dbg !2045
  store %struct.bkinfo* %15, %struct.bkinfo** %bki, align 8, !dbg !2044
  %16 = load i32, i32* %btype.addr, align 4, !dbg !2046
  %cmp12 = icmp eq i32 %16, 4, !dbg !2048
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2049

if.then13:                                        ; preds = %for.body
  %17 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !2050
  %stream_id = getelementptr inbounds %struct.bkinfo, %struct.bkinfo* %17, i32 0, i32 1, !dbg !2051
  %18 = load %struct.streamID*, %struct.streamID** %ids.addr, align 8, !dbg !2052
  %19 = load i32, i32* %j, align 4, !dbg !2053
  %idxprom = sext i32 %19 to i64, !dbg !2052
  %arrayidx = getelementptr inbounds %struct.streamID, %struct.streamID* %18, i64 %idxprom, !dbg !2052
  %20 = bitcast %struct.streamID* %stream_id to i8*, !dbg !2052
  %21 = bitcast %struct.streamID* %arrayidx to i8*, !dbg !2052
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false), !dbg !2052
  br label %if.end14, !dbg !2050

if.end14:                                         ; preds = %if.then13, %for.body
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2054
  %bpop15 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 53, !dbg !2056
  %keys16 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop15, i32 0, i32 2, !dbg !2057
  %23 = load %struct.dict*, %struct.dict** %keys16, align 8, !dbg !2057
  %24 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2058
  %25 = load i32, i32* %j, align 4, !dbg !2059
  %idxprom17 = sext i32 %25 to i64, !dbg !2058
  %arrayidx18 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %24, i64 %idxprom17, !dbg !2058
  %26 = load %struct.redisObject*, %struct.redisObject** %arrayidx18, align 8, !dbg !2058
  %27 = bitcast %struct.redisObject* %26 to i8*, !dbg !2058
  %28 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !2060
  %29 = bitcast %struct.bkinfo* %28 to i8*, !dbg !2060
  %call19 = call i32 @dictAdd(%struct.dict* %23, i8* %27, i8* %29), !dbg !2061
  %cmp20 = icmp ne i32 %call19, 0, !dbg !2062
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2063

if.then21:                                        ; preds = %if.end14
  %30 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !2064
  %31 = bitcast %struct.bkinfo* %30 to i8*, !dbg !2064
  call void @zfree(i8* %31), !dbg !2066
  br label %for.inc, !dbg !2067

if.end22:                                         ; preds = %if.end14
  %32 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2068
  %33 = load i32, i32* %j, align 4, !dbg !2069
  %idxprom23 = sext i32 %33 to i64, !dbg !2068
  %arrayidx24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 %idxprom23, !dbg !2068
  %34 = load %struct.redisObject*, %struct.redisObject** %arrayidx24, align 8, !dbg !2068
  call void @incrRefCount(%struct.redisObject* %34), !dbg !2070
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2071
  %db = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 4, !dbg !2072
  %36 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !2072
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %36, i32 0, i32 2, !dbg !2073
  %37 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !2073
  %38 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2074
  %39 = load i32, i32* %j, align 4, !dbg !2075
  %idxprom25 = sext i32 %39 to i64, !dbg !2074
  %arrayidx26 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %38, i64 %idxprom25, !dbg !2074
  %40 = load %struct.redisObject*, %struct.redisObject** %arrayidx26, align 8, !dbg !2074
  %41 = bitcast %struct.redisObject* %40 to i8*, !dbg !2074
  %call27 = call %struct.dictEntry* @dictFind(%struct.dict* %37, i8* %41), !dbg !2076
  store %struct.dictEntry* %call27, %struct.dictEntry** %de, align 8, !dbg !2077
  %42 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2078
  %cmp28 = icmp eq %struct.dictEntry* %42, null, !dbg !2080
  br i1 %cmp28, label %if.then29, label %if.else, !dbg !2081

if.then29:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !2082, metadata !DIExpression()), !dbg !2084
  %call30 = call %struct.list* @listCreate(), !dbg !2085
  store %struct.list* %call30, %struct.list** %l, align 8, !dbg !2086
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2087
  %db31 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 4, !dbg !2088
  %44 = load %struct.redisDb*, %struct.redisDb** %db31, align 8, !dbg !2088
  %blocking_keys32 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %44, i32 0, i32 2, !dbg !2089
  %45 = load %struct.dict*, %struct.dict** %blocking_keys32, align 8, !dbg !2089
  %46 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2090
  %47 = load i32, i32* %j, align 4, !dbg !2091
  %idxprom33 = sext i32 %47 to i64, !dbg !2090
  %arrayidx34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %46, i64 %idxprom33, !dbg !2090
  %48 = load %struct.redisObject*, %struct.redisObject** %arrayidx34, align 8, !dbg !2090
  %49 = bitcast %struct.redisObject* %48 to i8*, !dbg !2090
  %50 = load %struct.list*, %struct.list** %l, align 8, !dbg !2092
  %51 = bitcast %struct.list* %50 to i8*, !dbg !2092
  %call35 = call i32 @dictAdd(%struct.dict* %45, i8* %49, i8* %51), !dbg !2093
  store i32 %call35, i32* %retval, align 4, !dbg !2094
  %52 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2095
  %53 = load i32, i32* %j, align 4, !dbg !2096
  %idxprom36 = sext i32 %53 to i64, !dbg !2095
  %arrayidx37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %52, i64 %idxprom36, !dbg !2095
  %54 = load %struct.redisObject*, %struct.redisObject** %arrayidx37, align 8, !dbg !2095
  call void @incrRefCount(%struct.redisObject* %54), !dbg !2097
  %55 = load i32, i32* %retval, align 4, !dbg !2098
  %cmp38 = icmp eq i32 %55, 0, !dbg !2098
  br i1 %cmp38, label %cond.true, label %cond.false, !dbg !2098

cond.true:                                        ; preds = %if.then29
  br label %cond.end, !dbg !2098

cond.false:                                       ; preds = %if.then29
  %56 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2098
  %57 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2098
  %58 = load i32, i32* %j, align 4, !dbg !2098
  %idxprom39 = sext i32 %58 to i64, !dbg !2098
  %arrayidx40 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %57, i64 %idxprom39, !dbg !2098
  %59 = load %struct.redisObject*, %struct.redisObject** %arrayidx40, align 8, !dbg !2098
  call void @_serverAssertWithInfo(%struct.client* %56, %struct.redisObject* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 765), !dbg !2098
  unreachable, !dbg !2098

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2098

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  br label %if.end41, !dbg !2099

if.else:                                          ; preds = %if.end22
  %60 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !2100
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %60, i32 0, i32 1, !dbg !2100
  %val = bitcast %union.anon* %v to i8**, !dbg !2100
  %61 = load i8*, i8** %val, align 8, !dbg !2100
  %62 = bitcast i8* %61 to %struct.list*, !dbg !2100
  store %struct.list* %62, %struct.list** %l, align 8, !dbg !2102
  br label %if.end41

if.end41:                                         ; preds = %if.else, %cond.end
  %63 = load %struct.list*, %struct.list** %l, align 8, !dbg !2103
  %64 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2104
  %65 = bitcast %struct.client* %64 to i8*, !dbg !2104
  %call42 = call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %65), !dbg !2105
  %66 = load %struct.list*, %struct.list** %l, align 8, !dbg !2106
  %tail = getelementptr inbounds %struct.list, %struct.list* %66, i32 0, i32 1, !dbg !2106
  %67 = load %struct.listNode*, %struct.listNode** %tail, align 8, !dbg !2106
  %68 = load %struct.bkinfo*, %struct.bkinfo** %bki, align 8, !dbg !2107
  %listnode = getelementptr inbounds %struct.bkinfo, %struct.bkinfo* %68, i32 0, i32 0, !dbg !2108
  store %struct.listNode* %67, %struct.listNode** %listnode, align 8, !dbg !2109
  br label %for.inc, !dbg !2110

for.inc:                                          ; preds = %if.end41, %if.then21
  %69 = load i32, i32* %j, align 4, !dbg !2111
  %inc = add nsw i32 %69, 1, !dbg !2111
  store i32 %inc, i32* %j, align 4, !dbg !2111
  br label %for.cond, !dbg !2112, !llvm.loop !2113

for.end:                                          ; preds = %for.cond
  %70 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2115
  %71 = load i32, i32* %btype.addr, align 4, !dbg !2116
  call void @blockClient(%struct.client* %70, i32 %71), !dbg !2117
  ret void, !dbg !2118
}

declare dso_local i8* @zmalloc(i64) #2

declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) #2

declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) #2

declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) #2

declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) #2

declare dso_local void @dictReleaseIterator(%struct.dictIterator*) #2

declare dso_local void @dictEmpty(%struct.dict*, void (%struct.dict*)*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @signalKeyAsReady(%struct.redisDb* %db, %struct.redisObject* %key, i32 %type) #0 !dbg !2119 {
entry:
  %db.addr = alloca %struct.redisDb*, align 8
  %key.addr = alloca %struct.redisObject*, align 8
  %type.addr = alloca i32, align 4
  %rl = alloca %struct.readyList*, align 8
  %btype = alloca i32, align 4
  store %struct.redisDb* %db, %struct.redisDb** %db.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db.addr, metadata !2122, metadata !DIExpression()), !dbg !2123
  store %struct.redisObject* %key, %struct.redisObject** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key.addr, metadata !2124, metadata !DIExpression()), !dbg !2125
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.declare(metadata %struct.readyList** %rl, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.declare(metadata i32* %btype, metadata !2130, metadata !DIExpression()), !dbg !2131
  %0 = load i32, i32* %type.addr, align 4, !dbg !2132
  %call = call i32 @getBlockedTypeByType(i32 %0), !dbg !2133
  store i32 %call, i32* %btype, align 4, !dbg !2131
  %1 = load i32, i32* %btype, align 4, !dbg !2134
  %cmp = icmp eq i32 %1, 0, !dbg !2136
  br i1 %cmp, label %if.then, label %if.end, !dbg !2137

if.then:                                          ; preds = %entry
  br label %cond.end, !dbg !2138

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %btype, align 4, !dbg !2140
  %idxprom = sext i32 %2 to i64, !dbg !2142
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321), i64 0, i64 %idxprom, !dbg !2142
  %3 = load i32, i32* %arrayidx, align 4, !dbg !2142
  %tobool = icmp ne i32 %3, 0, !dbg !2142
  br i1 %tobool, label %if.end3, label %land.lhs.true, !dbg !2143

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 321, i64 3), align 4, !dbg !2144
  %tobool1 = icmp ne i32 %4, 0, !dbg !2144
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2145

if.then2:                                         ; preds = %land.lhs.true
  br label %cond.end, !dbg !2146

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %5 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !2148
  %blocking_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %5, i32 0, i32 2, !dbg !2150
  %6 = load %struct.dict*, %struct.dict** %blocking_keys, align 8, !dbg !2150
  %7 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2151
  %8 = bitcast %struct.redisObject* %7 to i8*, !dbg !2151
  %call4 = call %struct.dictEntry* @dictFind(%struct.dict* %6, i8* %8), !dbg !2152
  %cmp5 = icmp eq %struct.dictEntry* %call4, null, !dbg !2153
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2154

if.then6:                                         ; preds = %if.end3
  br label %cond.end, !dbg !2155

if.end7:                                          ; preds = %if.end3
  %9 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !2156
  %ready_keys = getelementptr inbounds %struct.redisDb, %struct.redisDb* %9, i32 0, i32 3, !dbg !2158
  %10 = load %struct.dict*, %struct.dict** %ready_keys, align 8, !dbg !2158
  %11 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2159
  %12 = bitcast %struct.redisObject* %11 to i8*, !dbg !2159
  %call8 = call %struct.dictEntry* @dictFind(%struct.dict* %10, i8* %12), !dbg !2160
  %cmp9 = icmp ne %struct.dictEntry* %call8, null, !dbg !2161
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2162

if.then10:                                        ; preds = %if.end7
  br label %cond.end, !dbg !2163

if.end11:                                         ; preds = %if.end7
  %call12 = call i8* @zmalloc(i64 16), !dbg !2164
  %13 = bitcast i8* %call12 to %struct.readyList*, !dbg !2164
  store %struct.readyList* %13, %struct.readyList** %rl, align 8, !dbg !2165
  %14 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2166
  %15 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !2167
  %key13 = getelementptr inbounds %struct.readyList, %struct.readyList* %15, i32 0, i32 1, !dbg !2168
  store %struct.redisObject* %14, %struct.redisObject** %key13, align 8, !dbg !2169
  %16 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !2170
  %17 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !2171
  %db14 = getelementptr inbounds %struct.readyList, %struct.readyList* %17, i32 0, i32 0, !dbg !2172
  store %struct.redisDb* %16, %struct.redisDb** %db14, align 8, !dbg !2173
  %18 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2174
  call void @incrRefCount(%struct.redisObject* %18), !dbg !2175
  %19 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 323), align 8, !dbg !2176
  %20 = load %struct.readyList*, %struct.readyList** %rl, align 8, !dbg !2177
  %21 = bitcast %struct.readyList* %20 to i8*, !dbg !2177
  %call15 = call %struct.list* @listAddNodeTail(%struct.list* %19, i8* %21), !dbg !2178
  %22 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2179
  call void @incrRefCount(%struct.redisObject* %22), !dbg !2180
  %23 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !2181
  %ready_keys16 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %23, i32 0, i32 3, !dbg !2181
  %24 = load %struct.dict*, %struct.dict** %ready_keys16, align 8, !dbg !2181
  %25 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !2181
  %26 = bitcast %struct.redisObject* %25 to i8*, !dbg !2181
  %call17 = call i32 @dictAdd(%struct.dict* %24, i8* %26, i8* null), !dbg !2181
  %cmp18 = icmp eq i32 %call17, 0, !dbg !2181
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !2181

cond.true:                                        ; preds = %if.end11
  br label %cond.end, !dbg !2181

cond.false:                                       ; preds = %if.end11
  call void @_serverAssert(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 865), !dbg !2181
  unreachable, !dbg !2181

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2181

cond.end:                                         ; preds = %if.then, %if.then2, %if.then6, %if.then10, %unreachable.cont, %cond.true
  ret void, !dbg !2182
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getBlockedTypeByType(i32 %type) #0 !dbg !2183 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2186, metadata !DIExpression()), !dbg !2187
  %0 = load i32, i32* %type.addr, align 4, !dbg !2188
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
  ], !dbg !2189

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2190
  br label %return, !dbg !2190

sw.bb1:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4, !dbg !2192
  br label %return, !dbg !2192

sw.bb2:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4, !dbg !2193
  br label %return, !dbg !2193

sw.bb3:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4, !dbg !2194
  br label %return, !dbg !2194

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2195
  br label %return, !dbg !2195

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !2196
  ret i32 %1, !dbg !2196
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "blocked.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !{i32 7, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!65 = distinct !DISubprogram(name: "blockClient", scope: !1, file: !1, line: 89, type: !66, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !98}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !71)
!71 = !{!72, !78, !79, !232, !233, !351, !361, !364, !365, !366, !367, !369, !370, !371, !372, !373, !524, !525, !526, !538, !539, !540, !541, !542, !544, !545, !546, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !576, !577, !578, !579, !580, !598, !599, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !635, !636, !637, !638, !658, !659, !660, !661, !668, !669, !670, !671, !672, !673, !674}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !70, file: !14, line: 1090, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !74, line: 27, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !76, line: 45, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !14, line: 1091, baseType: !73, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !70, file: !14, line: 1092, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !83)
!83 = !{!84, !221, !223, !225, !226, !227, !228, !229, !230, !231}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !4, line: 78, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !88)
!88 = !{!89, !153, !165, !173, !184, !188, !189, !193, !197, !198, !202, !206, !215, !216, !217}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !87, file: !4, line: 60, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !98, !58, !98}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !95, line: 99, size: 640, elements: !96)
!95 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!96 = !{!97, !99, !100, !102, !113, !120, !144, !145, !146, !151, !152}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !94, file: !95, line: 100, baseType: !98, size: 32)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !94, file: !95, line: 101, baseType: !98, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !94, file: !95, line: 102, baseType: !101, size: 64, offset: 64)
!101 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !94, file: !95, line: 103, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !95, line: 77, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !95, line: 72, size: 256, elements: !106)
!106 = !{!107, !108, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !105, file: !95, line: 73, baseType: !98, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !105, file: !95, line: 74, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !95, line: 66, baseType: !91)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !105, file: !95, line: 75, baseType: !109, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !105, file: !95, line: 76, baseType: !58, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !94, file: !95, line: 104, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !95, line: 96, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !95, line: 93, size: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !116, file: !95, line: 94, baseType: !98, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !116, file: !95, line: 95, baseType: !98, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !94, file: !95, line: 105, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !95, line: 90, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !95, line: 80, size: 512, elements: !124)
!124 = !{!125, !126, !129, !134, !139, !140, !142, !143}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !95, line: 81, baseType: !101, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !123, file: !95, line: 82, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !128, line: 22, baseType: !73)
!128 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !123, file: !95, line: 83, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !95, line: 67, baseType: !132)
!132 = !DISubroutineType(types: !133)
!133 = !{!98, !93, !101, !58}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !123, file: !95, line: 84, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !95, line: 68, baseType: !137)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !93, !58}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !123, file: !95, line: 85, baseType: !58, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !95, line: 86, baseType: !141, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !95, line: 87, baseType: !141, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !123, file: !95, line: 88, baseType: !98, size: 32, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !94, file: !95, line: 106, baseType: !98, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !94, file: !95, line: 107, baseType: !58, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !94, file: !95, line: 108, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !95, line: 69, baseType: !149)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !93}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !94, file: !95, line: 109, baseType: !147, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 110, baseType: !98, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !87, file: !4, line: 61, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!98, !157, !158, !98, !158, !161}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !157}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !87, file: !4, line: 62, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!98, !157, !169, !171}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 46, baseType: !77)
!172 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !87, file: !4, line: 63, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!98, !157, !177, !98}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !180, line: 26, size: 128, elements: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !179, file: !180, line: 28, baseType: !58, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !179, file: !180, line: 29, baseType: !171, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !87, file: !4, line: 64, baseType: !185, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!98, !157, !58, !171}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !87, file: !4, line: 65, baseType: !162, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !87, file: !4, line: 66, baseType: !190, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!98, !157, !161}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !87, file: !4, line: 67, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!98, !157, !161, !98}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !87, file: !4, line: 68, baseType: !190, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !87, file: !4, line: 69, baseType: !199, size: 64, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!158, !157}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !87, file: !4, line: 70, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!98, !157, !158, !98, !101}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !87, file: !4, line: 71, baseType: !207, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !157, !214, !210, !101}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !211, line: 108, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !76, line: 194, baseType: !213)
!213 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !87, file: !4, line: 72, baseType: !207, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !87, file: !4, line: 73, baseType: !207, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !87, file: !4, line: 74, baseType: !218, size: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!98, !157}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !82, file: !4, line: 79, baseType: !222, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !4, line: 80, baseType: !224, size: 16, offset: 96)
!224 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !82, file: !4, line: 81, baseType: !224, size: 16, offset: 112)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !82, file: !4, line: 82, baseType: !98, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !82, file: !4, line: 83, baseType: !58, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !82, file: !4, line: 84, baseType: !161, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !82, file: !4, line: 85, baseType: !161, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !82, file: !4, line: 86, baseType: !161, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !82, file: !4, line: 87, baseType: !98, size: 32, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !70, file: !14, line: 1093, baseType: !98, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !70, file: !14, line: 1094, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !237)
!237 = !{!238, !311, !312, !313, !314, !315, !316, !317, !318, !347}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !236, file: !14, line: 923, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !241, line: 61, baseType: !242)
!241 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !241, line: 79, size: 448, elements: !243)
!243 = !{!244, !276, !302, !304, !305, !308}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !242, file: !241, line: 80, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !241, line: 74, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !241, line: 63, size: 512, elements: !248)
!248 = !{!249, !253, !257, !258, !262, !266, !267, !272}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !247, file: !241, line: 64, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!73, !169}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !247, file: !241, line: 65, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!58, !239, !169}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !247, file: !241, line: 66, baseType: !254, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !247, file: !241, line: 67, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!98, !239, !169, !169}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !247, file: !241, line: 68, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !239, !58}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !247, file: !241, line: 69, baseType: !263, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !247, file: !241, line: 70, baseType: !268, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!98, !171, !271}
!271 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !247, file: !241, line: 73, baseType: !273, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!171, !239}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !242, file: !241, line: 82, baseType: !277, size: 128, offset: 64)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 128, elements: !300)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !241, line: 59, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !241, line: 47, size: 192, elements: !282)
!282 = !{!283, !284, !294, !296}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !281, file: !241, line: 48, baseType: !58, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !281, file: !241, line: 54, baseType: !285, size: 64, offset: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !241, line: 49, size: 64, elements: !286)
!286 = !{!287, !288, !289, !293}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !241, line: 50, baseType: !58, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !285, file: !241, line: 51, baseType: !73, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !285, file: !241, line: 52, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !291, line: 27, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !76, line: 44, baseType: !213)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !285, file: !241, line: 53, baseType: !271, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !241, line: 55, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !281, file: !241, line: 56, baseType: !297, offset: 192)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: -1)
!300 = !{!301}
!301 = !DISubrange(count: 2)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !242, file: !241, line: 83, baseType: !303, size: 128, offset: 192)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 128, elements: !300)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !242, file: !241, line: 85, baseType: !213, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !242, file: !241, line: 88, baseType: !306, size: 16, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !291, line: 25, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !76, line: 39, baseType: !224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !242, file: !241, line: 89, baseType: !309, size: 16, offset: 400)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 16, elements: !300)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !236, file: !14, line: 924, baseType: !239, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !236, file: !14, line: 925, baseType: !239, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !236, file: !14, line: 926, baseType: !239, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !236, file: !14, line: 927, baseType: !239, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !14, line: 928, baseType: !98, size: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !236, file: !14, line: 929, baseType: !101, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !236, file: !14, line: 930, baseType: !77, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !236, file: !14, line: 931, baseType: !319, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !321, line: 54, baseType: !322)
!321 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !321, line: 47, size: 384, elements: !323)
!323 = !{!324, !333, !334, !338, !342, !346}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !322, file: !321, line: 48, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !321, line: 40, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !321, line: 36, size: 192, elements: !328)
!328 = !{!329, !331, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !327, file: !321, line: 37, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !321, line: 38, baseType: !330, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !321, line: 39, baseType: !58, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !322, file: !321, line: 49, baseType: !325, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !322, file: !321, line: 50, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!58, !58}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !322, file: !321, line: 51, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !58}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !322, file: !321, line: 52, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!98, !58, !58}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !322, file: !321, line: 53, baseType: !77, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !236, file: !14, line: 932, baseType: !348, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !70, file: !14, line: 1095, baseType: !352, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !355)
!355 = !{!356, !357, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !354, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !354, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !354, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !354, file: !14, line: 860, baseType: !98, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !354, file: !14, line: 861, baseType: !58, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !70, file: !14, line: 1096, baseType: !362, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !363, line: 43, baseType: !214)
!363 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!364 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !70, file: !14, line: 1097, baseType: !171, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !70, file: !14, line: 1098, baseType: !171, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !70, file: !14, line: 1099, baseType: !98, size: 32, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !70, file: !14, line: 1100, baseType: !368, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !70, file: !14, line: 1101, baseType: !98, size: 32, offset: 704)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !70, file: !14, line: 1102, baseType: !98, size: 32, offset: 736)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !70, file: !14, line: 1103, baseType: !368, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !70, file: !14, line: 1104, baseType: !171, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !70, file: !14, line: 1105, baseType: !374, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !386, !393, !395, !400, !401, !402, !403, !443, !465, !466, !481, !482, !483, !484, !485, !486, !487, !511, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !375, file: !14, line: 2235, baseType: !158, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !375, file: !14, line: 2237, baseType: !158, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !375, file: !14, line: 2238, baseType: !158, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !375, file: !14, line: 2239, baseType: !158, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !375, file: !14, line: 2240, baseType: !98, size: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !375, file: !14, line: 2241, baseType: !158, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !375, file: !14, line: 2242, baseType: !158, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !375, file: !14, line: 2243, baseType: !385, size: 32, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !375, file: !14, line: 2244, baseType: !387, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !389, file: !14, line: 2111, baseType: !158, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !389, file: !14, line: 2112, baseType: !158, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !375, file: !14, line: 2245, baseType: !394, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !375, file: !14, line: 2246, baseType: !396, size: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !398)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !68}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !375, file: !14, line: 2247, baseType: !98, size: 32, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !14, line: 2248, baseType: !73, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !375, file: !14, line: 2249, baseType: !73, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !375, file: !14, line: 2250, baseType: !404, size: 1792, offset: 896)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1792, elements: !441)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !407)
!407 = !{!408, !409, !410, !412, !424, !426}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !406, file: !14, line: 2006, baseType: !158, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !406, file: !14, line: 2007, baseType: !73, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !406, file: !14, line: 2008, baseType: !411, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !406, file: !14, line: 2022, baseType: !413, size: 128, offset: 192)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !14, line: 2009, size: 128, elements: !414)
!414 = !{!415, !419}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !413, file: !14, line: 2013, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !14, line: 2010, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !416, file: !14, line: 2012, baseType: !98, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !413, file: !14, line: 2021, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !14, line: 2014, size: 128, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !420, file: !14, line: 2016, baseType: !158, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !420, file: !14, line: 2020, baseType: !98, size: 32, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !406, file: !14, line: 2023, baseType: !425, size: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !406, file: !14, line: 2047, baseType: !427, size: 96, offset: 352)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !14, line: 2024, size: 96, elements: !428)
!428 = !{!429, !435}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !427, file: !14, line: 2037, baseType: !430, size: 96)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !14, line: 2027, size: 96, elements: !431)
!431 = !{!432, !433, !434}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !430, file: !14, line: 2031, baseType: !98, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !430, file: !14, line: 2033, baseType: !98, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !430, file: !14, line: 2036, baseType: !98, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !427, file: !14, line: 2046, baseType: !436, size: 96)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !14, line: 2038, size: 96, elements: !437)
!437 = !{!438, !439, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !436, file: !14, line: 2040, baseType: !98, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !436, file: !14, line: 2043, baseType: !98, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !436, file: !14, line: 2045, baseType: !98, size: 32, offset: 64)
!441 = !{!442}
!442 = !DISubrange(count: 4)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !375, file: !14, line: 2253, baseType: !444, size: 64, offset: 2688)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !446)
!446 = !DISubroutineType(types: !447)
!447 = !{!98, !374, !368, !98, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !451)
!451 = !{!452, !461, !463, !464}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !450, file: !14, line: 1962, baseType: !453, size: 16384)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !454, size: 16384, elements: !459)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !455, file: !14, line: 1952, baseType: !98, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !14, line: 1953, baseType: !98, size: 32, offset: 32)
!459 = !{!460}
!460 = !DISubrange(count: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !450, file: !14, line: 1963, baseType: !462, size: 64, offset: 16384)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !450, file: !14, line: 1964, baseType: !98, size: 32, offset: 16448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !450, file: !14, line: 1965, baseType: !98, size: 32, offset: 16480)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !375, file: !14, line: 2255, baseType: !374, size: 64, offset: 2752)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !375, file: !14, line: 2257, baseType: !467, size: 64, offset: 2816)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !469)
!469 = !{!470, !471, !473, !474, !475, !476, !477, !478, !479, !480}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !468, file: !14, line: 2072, baseType: !158, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !14, line: 2073, baseType: !472, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !468, file: !14, line: 2074, baseType: !98, size: 32, offset: 96)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !468, file: !14, line: 2075, baseType: !158, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !468, file: !14, line: 2076, baseType: !158, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !468, file: !14, line: 2077, baseType: !158, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !14, line: 2078, baseType: !98, size: 32, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !468, file: !14, line: 2079, baseType: !158, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !468, file: !14, line: 2080, baseType: !467, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !468, file: !14, line: 2082, baseType: !98, size: 32, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !375, file: !14, line: 2260, baseType: !101, size: 64, offset: 2880)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !375, file: !14, line: 2260, baseType: !101, size: 64, offset: 2944)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !375, file: !14, line: 2260, baseType: !101, size: 64, offset: 3008)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !375, file: !14, line: 2260, baseType: !101, size: 64, offset: 3072)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !375, file: !14, line: 2261, baseType: !98, size: 32, offset: 3136)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !375, file: !14, line: 2266, baseType: !362, size: 64, offset: 3200)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !375, file: !14, line: 2267, baseType: !488, size: 64, offset: 3264)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !490, line: 17, size: 832, elements: !491)
!490 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!491 = !{!492, !493, !494, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !489, file: !490, line: 19, baseType: !290, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !489, file: !490, line: 20, baseType: !290, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !489, file: !490, line: 21, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !291, line: 26, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !76, line: 41, baseType: !98)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !489, file: !490, line: 22, baseType: !495, size: 32, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !489, file: !490, line: 23, baseType: !495, size: 32, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !489, file: !490, line: 24, baseType: !495, size: 32, offset: 224)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !489, file: !490, line: 25, baseType: !290, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !489, file: !490, line: 26, baseType: !495, size: 32, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !489, file: !490, line: 27, baseType: !495, size: 32, offset: 352)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !489, file: !490, line: 28, baseType: !290, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !489, file: !490, line: 29, baseType: !290, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !489, file: !490, line: 30, baseType: !495, size: 32, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !489, file: !490, line: 31, baseType: !271, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !489, file: !490, line: 32, baseType: !495, size: 32, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !489, file: !490, line: 33, baseType: !290, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !489, file: !490, line: 34, baseType: !510, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !375, file: !14, line: 2268, baseType: !512, size: 64, offset: 3328)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !375, file: !14, line: 2269, baseType: !405, size: 448, offset: 3392)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !375, file: !14, line: 2273, baseType: !98, size: 32, offset: 3840)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !375, file: !14, line: 2274, baseType: !98, size: 32, offset: 3872)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !375, file: !14, line: 2275, baseType: !98, size: 32, offset: 3904)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !375, file: !14, line: 2276, baseType: !98, size: 32, offset: 3936)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !375, file: !14, line: 2277, baseType: !98, size: 32, offset: 3968)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !375, file: !14, line: 2278, baseType: !239, size: 64, offset: 4032)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !375, file: !14, line: 2280, baseType: !374, size: 64, offset: 4096)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !375, file: !14, line: 2281, baseType: !522, size: 64, offset: 4160)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !70, file: !14, line: 1105, baseType: !374, size: 64, offset: 960)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !70, file: !14, line: 1106, baseType: !374, size: 64, offset: 1024)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !70, file: !14, line: 1109, baseType: !527, size: 64, offset: 1088)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !530)
!530 = !{!531, !532, !535, !536, !537}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !529, file: !14, line: 1050, baseType: !362, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !529, file: !14, line: 1051, baseType: !533, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 26, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !76, line: 42, baseType: !5)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !529, file: !14, line: 1052, baseType: !319, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !529, file: !14, line: 1053, baseType: !319, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !529, file: !14, line: 1056, baseType: !352, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !70, file: !14, line: 1112, baseType: !98, size: 32, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !70, file: !14, line: 1113, baseType: !98, size: 32, offset: 1184)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !70, file: !14, line: 1114, baseType: !213, size: 64, offset: 1216)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !70, file: !14, line: 1115, baseType: !319, size: 64, offset: 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !70, file: !14, line: 1116, baseType: !543, size: 64, offset: 1344)
!543 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !70, file: !14, line: 1117, baseType: !319, size: 64, offset: 1408)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !70, file: !14, line: 1118, baseType: !171, size: 64, offset: 1472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !70, file: !14, line: 1120, baseType: !547, size: 64, offset: 1536)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !548, line: 10, baseType: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !76, line: 160, baseType: !213)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !70, file: !14, line: 1121, baseType: !213, size: 64, offset: 1600)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !70, file: !14, line: 1122, baseType: !98, size: 32, offset: 1664)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !70, file: !14, line: 1123, baseType: !279, size: 64, offset: 1728)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !70, file: !14, line: 1124, baseType: !547, size: 64, offset: 1792)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !70, file: !14, line: 1125, baseType: !547, size: 64, offset: 1856)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !70, file: !14, line: 1126, baseType: !98, size: 32, offset: 1920)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !70, file: !14, line: 1127, baseType: !98, size: 32, offset: 1952)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !70, file: !14, line: 1128, baseType: !98, size: 32, offset: 1984)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !70, file: !14, line: 1129, baseType: !98, size: 32, offset: 2016)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !70, file: !14, line: 1130, baseType: !560, size: 64, offset: 2048)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !561, line: 58, baseType: !562)
!561 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !213)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !70, file: !14, line: 1131, baseType: !560, size: 64, offset: 2112)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !70, file: !14, line: 1132, baseType: !362, size: 64, offset: 2176)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !70, file: !14, line: 1133, baseType: !101, size: 64, offset: 2240)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !70, file: !14, line: 1134, baseType: !101, size: 64, offset: 2304)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !70, file: !14, line: 1135, baseType: !101, size: 64, offset: 2368)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !70, file: !14, line: 1136, baseType: !101, size: 64, offset: 2432)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !70, file: !14, line: 1137, baseType: !101, size: 64, offset: 2496)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !70, file: !14, line: 1138, baseType: !101, size: 64, offset: 2560)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !70, file: !14, line: 1139, baseType: !101, size: 64, offset: 2624)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !70, file: !14, line: 1142, baseType: !573, size: 328, offset: 2688)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 328, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 41)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !70, file: !14, line: 1143, baseType: !98, size: 32, offset: 3040)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !70, file: !14, line: 1144, baseType: !214, size: 64, offset: 3072)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !70, file: !14, line: 1145, baseType: !98, size: 32, offset: 3136)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !70, file: !14, line: 1146, baseType: !98, size: 32, offset: 3168)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !70, file: !14, line: 1147, baseType: !581, size: 320, offset: 3200)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !582)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !583)
!583 = !{!584, !593, !594, !595, !596, !597}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !582, file: !14, line: 957, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !588)
!588 = !{!589, !590, !591, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !587, file: !14, line: 950, baseType: !368, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !587, file: !14, line: 951, baseType: !98, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !587, file: !14, line: 952, baseType: !98, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !587, file: !14, line: 953, baseType: !374, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !582, file: !14, line: 958, baseType: !98, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !582, file: !14, line: 959, baseType: !98, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !582, file: !14, line: 962, baseType: !98, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !582, file: !14, line: 965, baseType: !171, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !582, file: !14, line: 966, baseType: !98, size: 32, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !70, file: !14, line: 1148, baseType: !98, size: 32, offset: 3520)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !70, file: !14, line: 1149, baseType: !600, size: 704, offset: 3584)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !602)
!602 = !{!603, !604, !606, !607, !608, !613, !614, !615, !616, !617, !618, !619}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !601, file: !14, line: 973, baseType: !213, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !601, file: !14, line: 974, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !101)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !601, file: !14, line: 978, baseType: !239, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !601, file: !14, line: 980, baseType: !352, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !601, file: !14, line: 985, baseType: !609, size: 64, offset: 256)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !609, file: !14, line: 983, baseType: !98, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !609, file: !14, line: 984, baseType: !98, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !601, file: !14, line: 990, baseType: !171, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !601, file: !14, line: 991, baseType: !352, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !601, file: !14, line: 992, baseType: !352, size: 64, offset: 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !601, file: !14, line: 993, baseType: !98, size: 32, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !601, file: !14, line: 996, baseType: !98, size: 32, offset: 544)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !601, file: !14, line: 997, baseType: !101, size: 64, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !601, file: !14, line: 1000, baseType: !58, size: 64, offset: 640)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !70, file: !14, line: 1150, baseType: !101, size: 64, offset: 4288)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !70, file: !14, line: 1151, baseType: !319, size: 64, offset: 4352)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !70, file: !14, line: 1152, baseType: !239, size: 64, offset: 4416)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !70, file: !14, line: 1153, baseType: !319, size: 64, offset: 4480)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !70, file: !14, line: 1154, baseType: !239, size: 64, offset: 4544)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !70, file: !14, line: 1155, baseType: !362, size: 64, offset: 4608)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !70, file: !14, line: 1156, baseType: !362, size: 64, offset: 4672)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !70, file: !14, line: 1157, baseType: !325, size: 64, offset: 4736)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !70, file: !14, line: 1158, baseType: !325, size: 64, offset: 4800)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !70, file: !14, line: 1159, baseType: !325, size: 64, offset: 4864)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !70, file: !14, line: 1160, baseType: !631, size: 64, offset: 4928)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !73, !58}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !70, file: !14, line: 1163, baseType: !58, size: 64, offset: 4992)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !70, file: !14, line: 1166, baseType: !58, size: 64, offset: 5056)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !70, file: !14, line: 1173, baseType: !73, size: 64, offset: 5120)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !70, file: !14, line: 1174, baseType: !639, size: 64, offset: 5184)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !641, line: 137, baseType: !642)
!641 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !641, line: 133, size: 192, elements: !643)
!643 = !{!644, !656, !657}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !642, file: !641, line: 134, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !641, line: 131, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !641, line: 98, size: 32, elements: !648)
!648 = !{!649, !650, !651, !652, !653}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !647, file: !641, line: 99, baseType: !533, size: 1, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !647, file: !641, line: 100, baseType: !533, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !647, file: !641, line: 101, baseType: !533, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !647, file: !641, line: 102, baseType: !533, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !647, file: !641, line: 130, baseType: !654, offset: 32)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, elements: !298)
!655 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !642, file: !641, line: 135, baseType: !73, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !642, file: !641, line: 136, baseType: !73, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !70, file: !14, line: 1182, baseType: !171, size: 64, offset: 5248)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !70, file: !14, line: 1183, baseType: !98, size: 32, offset: 5312)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !70, file: !14, line: 1185, baseType: !325, size: 64, offset: 5376)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !70, file: !14, line: 1186, baseType: !662, size: 64, offset: 5440)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !664, file: !14, line: 1085, baseType: !319, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !664, file: !14, line: 1086, baseType: !171, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !70, file: !14, line: 1188, baseType: !325, size: 64, offset: 5504)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !70, file: !14, line: 1190, baseType: !171, size: 64, offset: 5568)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !70, file: !14, line: 1194, baseType: !171, size: 64, offset: 5632)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !70, file: !14, line: 1195, baseType: !605, size: 64, offset: 5696)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !70, file: !14, line: 1196, baseType: !98, size: 32, offset: 5760)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !70, file: !14, line: 1197, baseType: !171, size: 64, offset: 5824)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !70, file: !14, line: 1198, baseType: !214, size: 64, offset: 5888)
!675 = !{}
!676 = !DILocalVariable(name: "c", arg: 1, scope: !65, file: !1, line: 89, type: !68)
!677 = !DILocation(line: 89, column: 26, scope: !65)
!678 = !DILocalVariable(name: "btype", arg: 2, scope: !65, file: !1, line: 89, type: !98)
!679 = !DILocation(line: 89, column: 33, scope: !65)
!680 = !DILocation(line: 91, column: 5, scope: !65)
!681 = !DILocation(line: 95, column: 5, scope: !65)
!682 = !DILocation(line: 95, column: 8, scope: !65)
!683 = !DILocation(line: 95, column: 14, scope: !65)
!684 = !DILocation(line: 96, column: 16, scope: !65)
!685 = !DILocation(line: 96, column: 5, scope: !65)
!686 = !DILocation(line: 96, column: 8, scope: !65)
!687 = !DILocation(line: 96, column: 14, scope: !65)
!688 = !DILocation(line: 97, column: 27, scope: !65)
!689 = !DILocation(line: 98, column: 36, scope: !65)
!690 = !DILocation(line: 98, column: 5, scope: !65)
!691 = !DILocation(line: 98, column: 42, scope: !65)
!692 = !DILocation(line: 99, column: 29, scope: !65)
!693 = !DILocation(line: 99, column: 5, scope: !65)
!694 = !DILocation(line: 100, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !65, file: !1, line: 100, column: 9)
!696 = !DILocation(line: 100, column: 15, scope: !695)
!697 = !DILocation(line: 100, column: 9, scope: !65)
!698 = !DILocation(line: 101, column: 32, scope: !699)
!699 = distinct !DILexicalBlock(scope: !695, file: !1, line: 100, column: 36)
!700 = !DILocation(line: 101, column: 51, scope: !699)
!701 = !DILocation(line: 101, column: 9, scope: !699)
!702 = !DILocation(line: 102, column: 34, scope: !699)
!703 = !DILocation(line: 102, column: 9, scope: !699)
!704 = !DILocation(line: 102, column: 12, scope: !699)
!705 = !DILocation(line: 102, column: 32, scope: !699)
!706 = !DILocation(line: 104, column: 9, scope: !699)
!707 = !DILocation(line: 104, column: 12, scope: !699)
!708 = !DILocation(line: 104, column: 18, scope: !699)
!709 = !DILocation(line: 105, column: 5, scope: !699)
!710 = !DILocation(line: 106, column: 1, scope: !65)
!711 = distinct !DISubprogram(name: "updateStatsOnUnblock", scope: !1, file: !1, line: 111, type: !712, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !68, !213, !213, !98}
!714 = !DILocalVariable(name: "c", arg: 1, scope: !711, file: !1, line: 111, type: !68)
!715 = !DILocation(line: 111, column: 35, scope: !711)
!716 = !DILocalVariable(name: "blocked_us", arg: 2, scope: !711, file: !1, line: 111, type: !213)
!717 = !DILocation(line: 111, column: 43, scope: !711)
!718 = !DILocalVariable(name: "reply_us", arg: 3, scope: !711, file: !1, line: 111, type: !213)
!719 = !DILocation(line: 111, column: 60, scope: !711)
!720 = !DILocalVariable(name: "had_errors", arg: 4, scope: !711, file: !1, line: 111, type: !98)
!721 = !DILocation(line: 111, column: 74, scope: !711)
!722 = !DILocalVariable(name: "total_cmd_duration", scope: !711, file: !1, line: 112, type: !723)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "ustime_t", file: !14, line: 65, baseType: !101)
!725 = !DILocation(line: 112, column: 20, scope: !711)
!726 = !DILocation(line: 112, column: 41, scope: !711)
!727 = !DILocation(line: 112, column: 44, scope: !711)
!728 = !DILocation(line: 112, column: 55, scope: !711)
!729 = !DILocation(line: 112, column: 53, scope: !711)
!730 = !DILocation(line: 112, column: 68, scope: !711)
!731 = !DILocation(line: 112, column: 66, scope: !711)
!732 = !DILocation(line: 113, column: 33, scope: !711)
!733 = !DILocation(line: 113, column: 5, scope: !711)
!734 = !DILocation(line: 113, column: 8, scope: !711)
!735 = !DILocation(line: 113, column: 17, scope: !711)
!736 = !DILocation(line: 113, column: 30, scope: !711)
!737 = !DILocation(line: 114, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !711, file: !1, line: 114, column: 9)
!739 = !DILocation(line: 114, column: 9, scope: !711)
!740 = !DILocation(line: 115, column: 9, scope: !738)
!741 = !DILocation(line: 115, column: 12, scope: !738)
!742 = !DILocation(line: 115, column: 21, scope: !738)
!743 = !DILocation(line: 115, column: 33, scope: !738)
!744 = !DILocation(line: 116, column: 16, scope: !745)
!745 = distinct !DILexicalBlock(scope: !711, file: !1, line: 116, column: 9)
!746 = !DILocation(line: 116, column: 9, scope: !745)
!747 = !DILocation(line: 116, column: 9, scope: !711)
!748 = !DILocation(line: 117, column: 41, scope: !745)
!749 = !DILocation(line: 117, column: 44, scope: !745)
!750 = !DILocation(line: 117, column: 53, scope: !745)
!751 = !DILocation(line: 117, column: 73, scope: !745)
!752 = !DILocation(line: 117, column: 91, scope: !745)
!753 = !DILocation(line: 117, column: 9, scope: !745)
!754 = !DILocation(line: 119, column: 31, scope: !711)
!755 = !DILocation(line: 119, column: 34, scope: !711)
!756 = !DILocation(line: 119, column: 37, scope: !711)
!757 = !DILocation(line: 119, column: 46, scope: !711)
!758 = !DILocation(line: 119, column: 5, scope: !711)
!759 = !DILocation(line: 121, column: 5, scope: !760)
!760 = distinct !DILexicalBlock(scope: !711, file: !1, line: 121, column: 5)
!761 = !DILocation(line: 121, column: 5, scope: !711)
!762 = !DILocation(line: 122, column: 1, scope: !711)
!763 = distinct !DISubprogram(name: "processUnblockedClients", scope: !1, file: !1, line: 127, type: !764, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!764 = !DISubroutineType(types: !765)
!765 = !{null}
!766 = !DILocalVariable(name: "ln", scope: !763, file: !1, line: 128, type: !325)
!767 = !DILocation(line: 128, column: 15, scope: !763)
!768 = !DILocalVariable(name: "c", scope: !763, file: !1, line: 129, type: !68)
!769 = !DILocation(line: 129, column: 13, scope: !763)
!770 = !DILocation(line: 131, column: 5, scope: !763)
!771 = !DILocation(line: 131, column: 12, scope: !763)
!772 = !DILocation(line: 132, column: 14, scope: !773)
!773 = distinct !DILexicalBlock(scope: !763, file: !1, line: 131, column: 50)
!774 = !DILocation(line: 132, column: 12, scope: !773)
!775 = !DILocation(line: 133, column: 9, scope: !773)
!776 = !DILocation(line: 134, column: 13, scope: !773)
!777 = !DILocation(line: 134, column: 17, scope: !773)
!778 = !DILocation(line: 134, column: 11, scope: !773)
!779 = !DILocation(line: 135, column: 28, scope: !773)
!780 = !DILocation(line: 135, column: 46, scope: !773)
!781 = !DILocation(line: 135, column: 9, scope: !773)
!782 = !DILocation(line: 136, column: 9, scope: !773)
!783 = !DILocation(line: 136, column: 12, scope: !773)
!784 = !DILocation(line: 136, column: 18, scope: !773)
!785 = !DILocation(line: 142, column: 15, scope: !786)
!786 = distinct !DILexicalBlock(scope: !773, file: !1, line: 142, column: 13)
!787 = !DILocation(line: 142, column: 18, scope: !786)
!788 = !DILocation(line: 142, column: 24, scope: !786)
!789 = !DILocation(line: 142, column: 13, scope: !773)
!790 = !DILocation(line: 144, column: 53, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !1, line: 144, column: 17)
!792 = distinct !DILexicalBlock(scope: !786, file: !1, line: 142, column: 43)
!793 = !DILocation(line: 144, column: 17, scope: !791)
!794 = !DILocation(line: 144, column: 56, scope: !791)
!795 = !DILocation(line: 144, column: 17, scope: !792)
!796 = !DILocation(line: 145, column: 19, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !1, line: 144, column: 66)
!798 = !DILocation(line: 146, column: 13, scope: !797)
!799 = !DILocation(line: 147, column: 9, scope: !792)
!800 = !DILocation(line: 148, column: 26, scope: !773)
!801 = !DILocation(line: 148, column: 9, scope: !773)
!802 = distinct !{!802, !770, !803, !804}
!803 = !DILocation(line: 149, column: 5, scope: !763)
!804 = !{!"llvm.loop.mustprogress"}
!805 = !DILocation(line: 150, column: 1, scope: !763)
!806 = distinct !DISubprogram(name: "queueClientForReprocessing", scope: !1, file: !1, line: 168, type: !398, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!807 = !DILocalVariable(name: "c", arg: 1, scope: !806, file: !1, line: 168, type: !68)
!808 = !DILocation(line: 168, column: 41, scope: !806)
!809 = !DILocation(line: 171, column: 11, scope: !810)
!810 = distinct !DILexicalBlock(scope: !806, file: !1, line: 171, column: 9)
!811 = !DILocation(line: 171, column: 14, scope: !810)
!812 = !DILocation(line: 171, column: 20, scope: !810)
!813 = !DILocation(line: 171, column: 9, scope: !806)
!814 = !DILocation(line: 172, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !810, file: !1, line: 171, column: 41)
!816 = !DILocation(line: 172, column: 12, scope: !815)
!817 = !DILocation(line: 172, column: 18, scope: !815)
!818 = !DILocation(line: 173, column: 32, scope: !815)
!819 = !DILocation(line: 173, column: 50, scope: !815)
!820 = !DILocation(line: 173, column: 9, scope: !815)
!821 = !DILocation(line: 174, column: 5, scope: !815)
!822 = !DILocation(line: 175, column: 1, scope: !806)
!823 = distinct !DISubprogram(name: "unblockClient", scope: !1, file: !1, line: 179, type: !398, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!824 = !DILocalVariable(name: "c", arg: 1, scope: !823, file: !1, line: 179, type: !68)
!825 = !DILocation(line: 179, column: 28, scope: !823)
!826 = !DILocation(line: 180, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !1, line: 180, column: 9)
!828 = !DILocation(line: 180, column: 12, scope: !827)
!829 = !DILocation(line: 180, column: 18, scope: !827)
!830 = !DILocation(line: 180, column: 34, scope: !827)
!831 = !DILocation(line: 181, column: 9, scope: !827)
!832 = !DILocation(line: 181, column: 12, scope: !827)
!833 = !DILocation(line: 181, column: 18, scope: !827)
!834 = !DILocation(line: 181, column: 34, scope: !827)
!835 = !DILocation(line: 182, column: 9, scope: !827)
!836 = !DILocation(line: 182, column: 12, scope: !827)
!837 = !DILocation(line: 182, column: 18, scope: !827)
!838 = !DILocation(line: 180, column: 9, scope: !823)
!839 = !DILocation(line: 183, column: 34, scope: !840)
!840 = distinct !DILexicalBlock(scope: !827, file: !1, line: 182, column: 37)
!841 = !DILocation(line: 183, column: 9, scope: !840)
!842 = !DILocation(line: 184, column: 5, scope: !840)
!843 = !DILocation(line: 184, column: 16, scope: !844)
!844 = distinct !DILexicalBlock(scope: !827, file: !1, line: 184, column: 16)
!845 = !DILocation(line: 184, column: 19, scope: !844)
!846 = !DILocation(line: 184, column: 25, scope: !844)
!847 = !DILocation(line: 184, column: 16, scope: !827)
!848 = !DILocation(line: 185, column: 38, scope: !849)
!849 = distinct !DILexicalBlock(scope: !844, file: !1, line: 184, column: 42)
!850 = !DILocation(line: 185, column: 9, scope: !849)
!851 = !DILocation(line: 186, column: 5, scope: !849)
!852 = !DILocation(line: 186, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !1, line: 186, column: 16)
!854 = !DILocation(line: 186, column: 19, scope: !853)
!855 = !DILocation(line: 186, column: 25, scope: !853)
!856 = !DILocation(line: 186, column: 16, scope: !844)
!857 = !DILocation(line: 187, column: 41, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !1, line: 187, column: 13)
!859 = distinct !DILexicalBlock(scope: !853, file: !1, line: 186, column: 44)
!860 = !DILocation(line: 187, column: 13, scope: !858)
!861 = !DILocation(line: 187, column: 13, scope: !859)
!862 = !DILocation(line: 187, column: 70, scope: !858)
!863 = !DILocation(line: 187, column: 45, scope: !858)
!864 = !DILocation(line: 188, column: 33, scope: !859)
!865 = !DILocation(line: 188, column: 9, scope: !859)
!866 = !DILocation(line: 189, column: 5, scope: !859)
!867 = !DILocation(line: 189, column: 16, scope: !868)
!868 = distinct !DILexicalBlock(scope: !853, file: !1, line: 189, column: 16)
!869 = !DILocation(line: 189, column: 19, scope: !868)
!870 = !DILocation(line: 189, column: 25, scope: !868)
!871 = !DILocation(line: 189, column: 16, scope: !853)
!872 = !DILocation(line: 190, column: 28, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !1, line: 189, column: 46)
!874 = !DILocation(line: 190, column: 46, scope: !873)
!875 = !DILocation(line: 190, column: 49, scope: !873)
!876 = !DILocation(line: 190, column: 9, scope: !873)
!877 = !DILocation(line: 191, column: 9, scope: !873)
!878 = !DILocation(line: 191, column: 12, scope: !873)
!879 = !DILocation(line: 191, column: 32, scope: !873)
!880 = !DILocation(line: 192, column: 5, scope: !873)
!881 = !DILocation(line: 192, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !868, file: !1, line: 192, column: 16)
!883 = !DILocation(line: 192, column: 19, scope: !882)
!884 = !DILocation(line: 192, column: 25, scope: !882)
!885 = !DILocation(line: 192, column: 16, scope: !868)
!886 = !DILocation(line: 194, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !1, line: 192, column: 46)
!888 = !DILocation(line: 195, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !882, file: !1, line: 194, column: 12)
!890 = !DILocation(line: 202, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !823, file: !1, line: 202, column: 9)
!892 = !DILocation(line: 202, column: 12, scope: !891)
!893 = !DILocation(line: 202, column: 18, scope: !891)
!894 = !DILocation(line: 202, column: 38, scope: !891)
!895 = !DILocation(line: 202, column: 41, scope: !891)
!896 = !DILocation(line: 202, column: 44, scope: !891)
!897 = !DILocation(line: 202, column: 50, scope: !891)
!898 = !DILocation(line: 202, column: 9, scope: !823)
!899 = !DILocation(line: 203, column: 32, scope: !900)
!900 = distinct !DILexicalBlock(scope: !891, file: !1, line: 202, column: 71)
!901 = !DILocation(line: 203, column: 9, scope: !900)
!902 = !DILocation(line: 204, column: 21, scope: !900)
!903 = !DILocation(line: 204, column: 9, scope: !900)
!904 = !DILocation(line: 205, column: 5, scope: !900)
!905 = !DILocation(line: 209, column: 27, scope: !823)
!906 = !DILocation(line: 210, column: 36, scope: !823)
!907 = !DILocation(line: 210, column: 39, scope: !823)
!908 = !DILocation(line: 210, column: 5, scope: !823)
!909 = !DILocation(line: 210, column: 45, scope: !823)
!910 = !DILocation(line: 211, column: 5, scope: !823)
!911 = !DILocation(line: 211, column: 8, scope: !823)
!912 = !DILocation(line: 211, column: 14, scope: !823)
!913 = !DILocation(line: 212, column: 5, scope: !823)
!914 = !DILocation(line: 212, column: 8, scope: !823)
!915 = !DILocation(line: 212, column: 14, scope: !823)
!916 = !DILocation(line: 213, column: 34, scope: !823)
!917 = !DILocation(line: 213, column: 5, scope: !823)
!918 = !DILocation(line: 214, column: 32, scope: !823)
!919 = !DILocation(line: 214, column: 5, scope: !823)
!920 = !DILocation(line: 215, column: 1, scope: !823)
!921 = distinct !DISubprogram(name: "unblockClientWaitingData", scope: !1, file: !1, line: 777, type: !398, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!922 = !DILocalVariable(name: "c", arg: 1, scope: !921, file: !1, line: 777, type: !68)
!923 = !DILocation(line: 777, column: 39, scope: !921)
!924 = !DILocalVariable(name: "de", scope: !921, file: !1, line: 778, type: !279)
!925 = !DILocation(line: 778, column: 16, scope: !921)
!926 = !DILocalVariable(name: "di", scope: !921, file: !1, line: 779, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !241, line: 103, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !241, line: 96, size: 384, elements: !930)
!930 = !{!931, !932, !933, !934, !935, !936, !937}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !929, file: !241, line: 97, baseType: !239, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !929, file: !241, line: 98, baseType: !213, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !929, file: !241, line: 99, baseType: !98, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !929, file: !241, line: 99, baseType: !98, size: 32, offset: 160)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !929, file: !241, line: 100, baseType: !279, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !929, file: !241, line: 100, baseType: !279, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !929, file: !241, line: 102, baseType: !543, size: 64, offset: 320)
!938 = !DILocation(line: 779, column: 19, scope: !921)
!939 = !DILocalVariable(name: "l", scope: !921, file: !1, line: 780, type: !319)
!940 = !DILocation(line: 780, column: 11, scope: !921)
!941 = !DILocation(line: 782, column: 5, scope: !921)
!942 = !DILocation(line: 783, column: 26, scope: !921)
!943 = !DILocation(line: 783, column: 29, scope: !921)
!944 = !DILocation(line: 783, column: 34, scope: !921)
!945 = !DILocation(line: 783, column: 10, scope: !921)
!946 = !DILocation(line: 783, column: 8, scope: !921)
!947 = !DILocation(line: 785, column: 5, scope: !921)
!948 = !DILocation(line: 785, column: 26, scope: !921)
!949 = !DILocation(line: 785, column: 17, scope: !921)
!950 = !DILocation(line: 785, column: 15, scope: !921)
!951 = !DILocation(line: 785, column: 31, scope: !921)
!952 = !DILocalVariable(name: "key", scope: !953, file: !1, line: 786, type: !352)
!953 = distinct !DILexicalBlock(scope: !921, file: !1, line: 785, column: 40)
!954 = !DILocation(line: 786, column: 15, scope: !953)
!955 = !DILocation(line: 786, column: 21, scope: !953)
!956 = !DILocalVariable(name: "bki", scope: !953, file: !1, line: 787, type: !957)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "bkinfo", file: !1, line: 84, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bkinfo", file: !1, line: 81, size: 192, elements: !960)
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "listnode", scope: !959, file: !1, line: 82, baseType: !325, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !959, file: !1, line: 83, baseType: !963, size: 128, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !964, line: 14, baseType: !965)
!964 = !DIFile(filename: "./stream.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !964, line: 11, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !965, file: !964, line: 12, baseType: !73, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !965, file: !964, line: 13, baseType: !73, size: 64, offset: 64)
!969 = !DILocation(line: 787, column: 17, scope: !953)
!970 = !DILocation(line: 787, column: 23, scope: !953)
!971 = !DILocation(line: 790, column: 28, scope: !953)
!972 = !DILocation(line: 790, column: 31, scope: !953)
!973 = !DILocation(line: 790, column: 35, scope: !953)
!974 = !DILocation(line: 790, column: 49, scope: !953)
!975 = !DILocation(line: 790, column: 13, scope: !953)
!976 = !DILocation(line: 790, column: 11, scope: !953)
!977 = !DILocation(line: 791, column: 9, scope: !953)
!978 = !DILocation(line: 792, column: 21, scope: !953)
!979 = !DILocation(line: 792, column: 23, scope: !953)
!980 = !DILocation(line: 792, column: 28, scope: !953)
!981 = !DILocation(line: 792, column: 9, scope: !953)
!982 = !DILocation(line: 794, column: 13, scope: !983)
!983 = distinct !DILexicalBlock(scope: !953, file: !1, line: 794, column: 13)
!984 = !DILocation(line: 794, column: 27, scope: !983)
!985 = !DILocation(line: 794, column: 13, scope: !953)
!986 = !DILocation(line: 795, column: 24, scope: !983)
!987 = !DILocation(line: 795, column: 27, scope: !983)
!988 = !DILocation(line: 795, column: 31, scope: !983)
!989 = !DILocation(line: 795, column: 45, scope: !983)
!990 = !DILocation(line: 795, column: 13, scope: !983)
!991 = distinct !{!991, !947, !992, !804}
!992 = !DILocation(line: 796, column: 5, scope: !921)
!993 = !DILocation(line: 797, column: 25, scope: !921)
!994 = !DILocation(line: 797, column: 5, scope: !921)
!995 = !DILocation(line: 800, column: 15, scope: !921)
!996 = !DILocation(line: 800, column: 18, scope: !921)
!997 = !DILocation(line: 800, column: 23, scope: !921)
!998 = !DILocation(line: 800, column: 5, scope: !921)
!999 = !DILocation(line: 801, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !921, file: !1, line: 801, column: 9)
!1001 = !DILocation(line: 801, column: 12, scope: !1000)
!1002 = !DILocation(line: 801, column: 17, scope: !1000)
!1003 = !DILocation(line: 801, column: 9, scope: !921)
!1004 = !DILocation(line: 802, column: 22, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 801, column: 25)
!1006 = !DILocation(line: 802, column: 25, scope: !1005)
!1007 = !DILocation(line: 802, column: 30, scope: !1005)
!1008 = !DILocation(line: 802, column: 9, scope: !1005)
!1009 = !DILocation(line: 803, column: 9, scope: !1005)
!1010 = !DILocation(line: 803, column: 12, scope: !1005)
!1011 = !DILocation(line: 803, column: 17, scope: !1005)
!1012 = !DILocation(line: 803, column: 24, scope: !1005)
!1013 = !DILocation(line: 804, column: 5, scope: !1005)
!1014 = !DILocation(line: 805, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !921, file: !1, line: 805, column: 9)
!1016 = !DILocation(line: 805, column: 12, scope: !1015)
!1017 = !DILocation(line: 805, column: 17, scope: !1015)
!1018 = !DILocation(line: 805, column: 9, scope: !921)
!1019 = !DILocation(line: 806, column: 22, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 805, column: 30)
!1021 = !DILocation(line: 806, column: 25, scope: !1020)
!1022 = !DILocation(line: 806, column: 30, scope: !1020)
!1023 = !DILocation(line: 806, column: 9, scope: !1020)
!1024 = !DILocation(line: 807, column: 22, scope: !1020)
!1025 = !DILocation(line: 807, column: 25, scope: !1020)
!1026 = !DILocation(line: 807, column: 30, scope: !1020)
!1027 = !DILocation(line: 807, column: 9, scope: !1020)
!1028 = !DILocation(line: 808, column: 9, scope: !1020)
!1029 = !DILocation(line: 808, column: 12, scope: !1020)
!1030 = !DILocation(line: 808, column: 17, scope: !1020)
!1031 = !DILocation(line: 808, column: 29, scope: !1020)
!1032 = !DILocation(line: 809, column: 9, scope: !1020)
!1033 = !DILocation(line: 809, column: 12, scope: !1020)
!1034 = !DILocation(line: 809, column: 17, scope: !1020)
!1035 = !DILocation(line: 809, column: 32, scope: !1020)
!1036 = !DILocation(line: 810, column: 5, scope: !1020)
!1037 = !DILocation(line: 811, column: 1, scope: !921)
!1038 = distinct !DISubprogram(name: "replyToBlockedClientTimedOut", scope: !1, file: !1, line: 220, type: !398, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1039 = !DILocalVariable(name: "c", arg: 1, scope: !1038, file: !1, line: 220, type: !68)
!1040 = !DILocation(line: 220, column: 43, scope: !1038)
!1041 = !DILocation(line: 221, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 221, column: 9)
!1043 = !DILocation(line: 221, column: 12, scope: !1042)
!1044 = !DILocation(line: 221, column: 18, scope: !1042)
!1045 = !DILocation(line: 221, column: 34, scope: !1042)
!1046 = !DILocation(line: 222, column: 9, scope: !1042)
!1047 = !DILocation(line: 222, column: 12, scope: !1042)
!1048 = !DILocation(line: 222, column: 18, scope: !1042)
!1049 = !DILocation(line: 222, column: 34, scope: !1042)
!1050 = !DILocation(line: 223, column: 9, scope: !1042)
!1051 = !DILocation(line: 223, column: 12, scope: !1042)
!1052 = !DILocation(line: 223, column: 18, scope: !1042)
!1053 = !DILocation(line: 221, column: 9, scope: !1038)
!1054 = !DILocation(line: 224, column: 27, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 223, column: 37)
!1056 = !DILocation(line: 224, column: 9, scope: !1055)
!1057 = !DILocation(line: 225, column: 5, scope: !1055)
!1058 = !DILocation(line: 225, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 225, column: 16)
!1060 = !DILocation(line: 225, column: 19, scope: !1059)
!1061 = !DILocation(line: 225, column: 25, scope: !1059)
!1062 = !DILocation(line: 225, column: 16, scope: !1042)
!1063 = !DILocation(line: 226, column: 26, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 225, column: 42)
!1065 = !DILocation(line: 226, column: 57, scope: !1064)
!1066 = !DILocation(line: 226, column: 60, scope: !1064)
!1067 = !DILocation(line: 226, column: 65, scope: !1064)
!1068 = !DILocation(line: 226, column: 28, scope: !1064)
!1069 = !DILocation(line: 226, column: 9, scope: !1064)
!1070 = !DILocation(line: 227, column: 5, scope: !1064)
!1071 = !DILocation(line: 227, column: 16, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 227, column: 16)
!1073 = !DILocation(line: 227, column: 19, scope: !1072)
!1074 = !DILocation(line: 227, column: 25, scope: !1072)
!1075 = !DILocation(line: 227, column: 16, scope: !1059)
!1076 = !DILocation(line: 228, column: 37, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 227, column: 44)
!1078 = !DILocation(line: 228, column: 9, scope: !1077)
!1079 = !DILocation(line: 229, column: 5, scope: !1077)
!1080 = !DILocation(line: 230, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 229, column: 12)
!1082 = !DILocation(line: 232, column: 1, scope: !1038)
!1083 = distinct !DISubprogram(name: "replyToClientsBlockedOnShutdown", scope: !1, file: !1, line: 236, type: !764, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1084 = !DILocation(line: 237, column: 9, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 237, column: 9)
!1086 = !DILocation(line: 237, column: 58, scope: !1085)
!1087 = !DILocation(line: 237, column: 9, scope: !1083)
!1088 = !DILocation(line: 237, column: 64, scope: !1085)
!1089 = !DILocalVariable(name: "ln", scope: !1083, file: !1, line: 238, type: !325)
!1090 = !DILocation(line: 238, column: 15, scope: !1083)
!1091 = !DILocalVariable(name: "li", scope: !1083, file: !1, line: 239, type: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !321, line: 45, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !321, line: 42, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !321, line: 43, baseType: !325, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1093, file: !321, line: 44, baseType: !98, size: 32, offset: 64)
!1097 = !DILocation(line: 239, column: 14, scope: !1083)
!1098 = !DILocation(line: 240, column: 23, scope: !1083)
!1099 = !DILocation(line: 240, column: 5, scope: !1083)
!1100 = !DILocation(line: 241, column: 5, scope: !1083)
!1101 = !DILocation(line: 241, column: 17, scope: !1083)
!1102 = !DILocation(line: 241, column: 15, scope: !1083)
!1103 = !DILocalVariable(name: "c", scope: !1104, file: !1, line: 242, type: !68)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 241, column: 33)
!1105 = !DILocation(line: 242, column: 17, scope: !1104)
!1106 = !DILocation(line: 242, column: 21, scope: !1104)
!1107 = !DILocation(line: 243, column: 13, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 243, column: 13)
!1109 = !DILocation(line: 243, column: 16, scope: !1108)
!1110 = !DILocation(line: 243, column: 22, scope: !1108)
!1111 = !DILocation(line: 243, column: 39, scope: !1108)
!1112 = !DILocation(line: 243, column: 42, scope: !1108)
!1113 = !DILocation(line: 243, column: 45, scope: !1108)
!1114 = !DILocation(line: 243, column: 51, scope: !1108)
!1115 = !DILocation(line: 243, column: 13, scope: !1104)
!1116 = !DILocation(line: 244, column: 27, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 243, column: 72)
!1118 = !DILocation(line: 244, column: 13, scope: !1117)
!1119 = !DILocation(line: 245, column: 27, scope: !1117)
!1120 = !DILocation(line: 245, column: 13, scope: !1117)
!1121 = !DILocation(line: 246, column: 9, scope: !1117)
!1122 = distinct !{!1122, !1100, !1123, !804}
!1123 = !DILocation(line: 247, column: 5, scope: !1083)
!1124 = !DILocation(line: 248, column: 1, scope: !1083)
!1125 = distinct !DISubprogram(name: "disconnectAllBlockedClients", scope: !1, file: !1, line: 257, type: !764, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1126 = !DILocalVariable(name: "ln", scope: !1125, file: !1, line: 258, type: !325)
!1127 = !DILocation(line: 258, column: 15, scope: !1125)
!1128 = !DILocalVariable(name: "li", scope: !1125, file: !1, line: 259, type: !1092)
!1129 = !DILocation(line: 259, column: 14, scope: !1125)
!1130 = !DILocation(line: 261, column: 23, scope: !1125)
!1131 = !DILocation(line: 261, column: 5, scope: !1125)
!1132 = !DILocation(line: 262, column: 5, scope: !1125)
!1133 = !DILocation(line: 262, column: 17, scope: !1125)
!1134 = !DILocation(line: 262, column: 15, scope: !1125)
!1135 = !DILocalVariable(name: "c", scope: !1136, file: !1, line: 263, type: !68)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 262, column: 33)
!1137 = !DILocation(line: 263, column: 17, scope: !1136)
!1138 = !DILocation(line: 263, column: 21, scope: !1136)
!1139 = !DILocation(line: 265, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 265, column: 13)
!1141 = !DILocation(line: 265, column: 16, scope: !1140)
!1142 = !DILocation(line: 265, column: 22, scope: !1140)
!1143 = !DILocation(line: 265, column: 13, scope: !1136)
!1144 = !DILocation(line: 270, column: 17, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 270, column: 17)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 265, column: 40)
!1147 = !DILocation(line: 270, column: 20, scope: !1145)
!1148 = !DILocation(line: 270, column: 26, scope: !1145)
!1149 = !DILocation(line: 270, column: 17, scope: !1146)
!1150 = !DILocation(line: 271, column: 17, scope: !1145)
!1151 = distinct !{!1151, !1132, !1152, !804}
!1152 = !DILocation(line: 279, column: 5, scope: !1125)
!1153 = !DILocation(line: 273, column: 27, scope: !1146)
!1154 = !DILocation(line: 273, column: 13, scope: !1146)
!1155 = !DILocation(line: 276, column: 27, scope: !1146)
!1156 = !DILocation(line: 276, column: 13, scope: !1146)
!1157 = !DILocation(line: 277, column: 13, scope: !1146)
!1158 = !DILocation(line: 277, column: 16, scope: !1146)
!1159 = !DILocation(line: 277, column: 22, scope: !1146)
!1160 = !DILocation(line: 278, column: 9, scope: !1146)
!1161 = !DILocation(line: 280, column: 1, scope: !1125)
!1162 = distinct !DISubprogram(name: "serveClientsBlockedOnListKey", scope: !1, file: !1, line: 285, type: !1163, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !352, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "readyList", file: !14, line: 1019, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readyList", file: !14, line: 1016, size: 128, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !1167, file: !14, line: 1017, baseType: !234, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1167, file: !14, line: 1018, baseType: !352, size: 64, offset: 64)
!1171 = !DILocalVariable(name: "o", arg: 1, scope: !1162, file: !1, line: 285, type: !352)
!1172 = !DILocation(line: 285, column: 41, scope: !1162)
!1173 = !DILocalVariable(name: "rl", arg: 2, scope: !1162, file: !1, line: 285, type: !1165)
!1174 = !DILocation(line: 285, column: 55, scope: !1162)
!1175 = !DILocation(line: 288, column: 10, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 288, column: 9)
!1177 = !DILocation(line: 288, column: 9, scope: !1162)
!1178 = !DILocation(line: 288, column: 56, scope: !1176)
!1179 = !DILocalVariable(name: "de", scope: !1162, file: !1, line: 292, type: !279)
!1180 = !DILocation(line: 292, column: 16, scope: !1162)
!1181 = !DILocation(line: 292, column: 30, scope: !1162)
!1182 = !DILocation(line: 292, column: 34, scope: !1162)
!1183 = !DILocation(line: 292, column: 38, scope: !1162)
!1184 = !DILocation(line: 292, column: 52, scope: !1162)
!1185 = !DILocation(line: 292, column: 56, scope: !1162)
!1186 = !DILocation(line: 292, column: 21, scope: !1162)
!1187 = !DILocation(line: 293, column: 9, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 293, column: 9)
!1189 = !DILocation(line: 293, column: 9, scope: !1162)
!1190 = !DILocalVariable(name: "clients", scope: !1191, file: !1, line: 294, type: !319)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 293, column: 13)
!1192 = !DILocation(line: 294, column: 15, scope: !1191)
!1193 = !DILocation(line: 294, column: 25, scope: !1191)
!1194 = !DILocalVariable(name: "ln", scope: !1191, file: !1, line: 295, type: !325)
!1195 = !DILocation(line: 295, column: 19, scope: !1191)
!1196 = !DILocalVariable(name: "li", scope: !1191, file: !1, line: 296, type: !1092)
!1197 = !DILocation(line: 296, column: 18, scope: !1191)
!1198 = !DILocation(line: 297, column: 20, scope: !1191)
!1199 = !DILocation(line: 297, column: 9, scope: !1191)
!1200 = !DILocation(line: 299, column: 9, scope: !1191)
!1201 = !DILocation(line: 299, column: 21, scope: !1191)
!1202 = !DILocation(line: 299, column: 19, scope: !1191)
!1203 = !DILocalVariable(name: "receiver", scope: !1204, file: !1, line: 300, type: !68)
!1204 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 299, column: 37)
!1205 = !DILocation(line: 300, column: 21, scope: !1204)
!1206 = !DILocation(line: 300, column: 32, scope: !1204)
!1207 = !DILocation(line: 301, column: 17, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 301, column: 17)
!1209 = !DILocation(line: 301, column: 27, scope: !1208)
!1210 = !DILocation(line: 301, column: 33, scope: !1208)
!1211 = !DILocation(line: 301, column: 17, scope: !1204)
!1212 = !DILocation(line: 301, column: 50, scope: !1208)
!1213 = distinct !{!1213, !1200, !1214, !804}
!1214 = !DILocation(line: 331, column: 9, scope: !1191)
!1215 = !DILocalVariable(name: "deleted", scope: !1204, file: !1, line: 303, type: !98)
!1216 = !DILocation(line: 303, column: 17, scope: !1204)
!1217 = !DILocalVariable(name: "dstkey", scope: !1204, file: !1, line: 304, type: !352)
!1218 = !DILocation(line: 304, column: 19, scope: !1204)
!1219 = !DILocation(line: 304, column: 28, scope: !1204)
!1220 = !DILocation(line: 304, column: 38, scope: !1204)
!1221 = !DILocation(line: 304, column: 43, scope: !1204)
!1222 = !DILocalVariable(name: "wherefrom", scope: !1204, file: !1, line: 305, type: !98)
!1223 = !DILocation(line: 305, column: 17, scope: !1204)
!1224 = !DILocation(line: 305, column: 29, scope: !1204)
!1225 = !DILocation(line: 305, column: 39, scope: !1204)
!1226 = !DILocation(line: 305, column: 44, scope: !1204)
!1227 = !DILocation(line: 305, column: 53, scope: !1204)
!1228 = !DILocalVariable(name: "whereto", scope: !1204, file: !1, line: 306, type: !98)
!1229 = !DILocation(line: 306, column: 17, scope: !1204)
!1230 = !DILocation(line: 306, column: 27, scope: !1204)
!1231 = !DILocation(line: 306, column: 37, scope: !1204)
!1232 = !DILocation(line: 306, column: 42, scope: !1204)
!1233 = !DILocation(line: 306, column: 51, scope: !1204)
!1234 = !DILocation(line: 311, column: 17, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 311, column: 17)
!1236 = !DILocation(line: 311, column: 17, scope: !1204)
!1237 = !DILocation(line: 311, column: 38, scope: !1235)
!1238 = !DILocation(line: 311, column: 25, scope: !1235)
!1239 = !DILocalVariable(name: "prev_error_replies", scope: !1204, file: !1, line: 313, type: !101)
!1240 = !DILocation(line: 313, column: 23, scope: !1204)
!1241 = !DILocation(line: 313, column: 51, scope: !1204)
!1242 = !DILocalVariable(name: "old_client", scope: !1204, file: !1, line: 314, type: !68)
!1243 = !DILocation(line: 314, column: 21, scope: !1204)
!1244 = !DILocation(line: 314, column: 41, scope: !1204)
!1245 = !DILocation(line: 315, column: 37, scope: !1204)
!1246 = !DILocation(line: 315, column: 35, scope: !1204)
!1247 = !DILocalVariable(name: "replyTimer", scope: !1204, file: !1, line: 316, type: !127)
!1248 = !DILocation(line: 316, column: 22, scope: !1204)
!1249 = !DILocation(line: 317, column: 13, scope: !1204)
!1250 = !DILocation(line: 318, column: 38, scope: !1204)
!1251 = !DILocation(line: 318, column: 48, scope: !1204)
!1252 = !DILocation(line: 319, column: 38, scope: !1204)
!1253 = !DILocation(line: 319, column: 42, scope: !1204)
!1254 = !DILocation(line: 319, column: 47, scope: !1204)
!1255 = !DILocation(line: 319, column: 55, scope: !1204)
!1256 = !DILocation(line: 319, column: 59, scope: !1204)
!1257 = !DILocation(line: 320, column: 38, scope: !1204)
!1258 = !DILocation(line: 320, column: 49, scope: !1204)
!1259 = !DILocation(line: 318, column: 13, scope: !1204)
!1260 = !DILocation(line: 322, column: 34, scope: !1204)
!1261 = !DILocation(line: 322, column: 57, scope: !1204)
!1262 = !DILocation(line: 322, column: 47, scope: !1204)
!1263 = !DILocation(line: 322, column: 77, scope: !1204)
!1264 = !DILocation(line: 322, column: 105, scope: !1204)
!1265 = !DILocation(line: 322, column: 102, scope: !1204)
!1266 = !DILocation(line: 322, column: 13, scope: !1204)
!1267 = !DILocation(line: 323, column: 27, scope: !1204)
!1268 = !DILocation(line: 323, column: 13, scope: !1204)
!1269 = !DILocation(line: 324, column: 26, scope: !1204)
!1270 = !DILocation(line: 324, column: 13, scope: !1204)
!1271 = !DILocation(line: 325, column: 37, scope: !1204)
!1272 = !DILocation(line: 325, column: 35, scope: !1204)
!1273 = !DILocation(line: 327, column: 17, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 327, column: 17)
!1275 = !DILocation(line: 327, column: 17, scope: !1204)
!1276 = !DILocation(line: 327, column: 38, scope: !1274)
!1277 = !DILocation(line: 327, column: 25, scope: !1274)
!1278 = !DILocation(line: 330, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 330, column: 17)
!1280 = !DILocation(line: 330, column: 17, scope: !1204)
!1281 = !DILocation(line: 330, column: 26, scope: !1279)
!1282 = !DILocation(line: 332, column: 5, scope: !1191)
!1283 = !DILocation(line: 333, column: 1, scope: !1162)
!1284 = distinct !DISubprogram(name: "elapsedStart", scope: !128, file: !128, line: 49, type: !1285, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1288 = !DILocalVariable(name: "start_time", arg: 1, scope: !1284, file: !128, line: 49, type: !1287)
!1289 = !DILocation(line: 49, column: 43, scope: !1284)
!1290 = !DILocation(line: 50, column: 19, scope: !1284)
!1291 = !DILocation(line: 50, column: 6, scope: !1284)
!1292 = !DILocation(line: 50, column: 17, scope: !1284)
!1293 = !DILocation(line: 51, column: 1, scope: !1284)
!1294 = distinct !DISubprogram(name: "elapsedUs", scope: !128, file: !128, line: 53, type: !1295, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!73, !127}
!1297 = !DILocalVariable(name: "start_time", arg: 1, scope: !1294, file: !128, line: 53, type: !127)
!1298 = !DILocation(line: 53, column: 43, scope: !1294)
!1299 = !DILocation(line: 54, column: 12, scope: !1294)
!1300 = !DILocation(line: 54, column: 31, scope: !1294)
!1301 = !DILocation(line: 54, column: 29, scope: !1294)
!1302 = !DILocation(line: 54, column: 5, scope: !1294)
!1303 = distinct !DISubprogram(name: "serveClientsBlockedOnSortedSetKey", scope: !1, file: !1, line: 338, type: !1163, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1303, file: !1, line: 338, type: !352)
!1305 = !DILocation(line: 338, column: 46, scope: !1303)
!1306 = !DILocalVariable(name: "rl", arg: 2, scope: !1303, file: !1, line: 338, type: !1165)
!1307 = !DILocation(line: 338, column: 60, scope: !1303)
!1308 = !DILocation(line: 341, column: 10, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 341, column: 9)
!1310 = !DILocation(line: 341, column: 9, scope: !1303)
!1311 = !DILocation(line: 341, column: 56, scope: !1309)
!1312 = !DILocalVariable(name: "de", scope: !1303, file: !1, line: 345, type: !279)
!1313 = !DILocation(line: 345, column: 16, scope: !1303)
!1314 = !DILocation(line: 345, column: 30, scope: !1303)
!1315 = !DILocation(line: 345, column: 34, scope: !1303)
!1316 = !DILocation(line: 345, column: 38, scope: !1303)
!1317 = !DILocation(line: 345, column: 52, scope: !1303)
!1318 = !DILocation(line: 345, column: 56, scope: !1303)
!1319 = !DILocation(line: 345, column: 21, scope: !1303)
!1320 = !DILocation(line: 346, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 346, column: 9)
!1322 = !DILocation(line: 346, column: 9, scope: !1303)
!1323 = !DILocalVariable(name: "clients", scope: !1324, file: !1, line: 347, type: !319)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !1, line: 346, column: 13)
!1325 = !DILocation(line: 347, column: 15, scope: !1324)
!1326 = !DILocation(line: 347, column: 25, scope: !1324)
!1327 = !DILocalVariable(name: "ln", scope: !1324, file: !1, line: 348, type: !325)
!1328 = !DILocation(line: 348, column: 19, scope: !1324)
!1329 = !DILocalVariable(name: "li", scope: !1324, file: !1, line: 349, type: !1092)
!1330 = !DILocation(line: 349, column: 18, scope: !1324)
!1331 = !DILocation(line: 350, column: 20, scope: !1324)
!1332 = !DILocation(line: 350, column: 9, scope: !1324)
!1333 = !DILocation(line: 352, column: 9, scope: !1324)
!1334 = !DILocation(line: 352, column: 21, scope: !1324)
!1335 = !DILocation(line: 352, column: 19, scope: !1324)
!1336 = !DILocalVariable(name: "receiver", scope: !1337, file: !1, line: 353, type: !68)
!1337 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 352, column: 37)
!1338 = !DILocation(line: 353, column: 21, scope: !1337)
!1339 = !DILocation(line: 353, column: 32, scope: !1337)
!1340 = !DILocation(line: 354, column: 17, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 354, column: 17)
!1342 = !DILocation(line: 354, column: 27, scope: !1341)
!1343 = !DILocation(line: 354, column: 33, scope: !1341)
!1344 = !DILocation(line: 354, column: 17, scope: !1337)
!1345 = !DILocation(line: 354, column: 50, scope: !1341)
!1346 = distinct !{!1346, !1333, !1347, !804}
!1347 = !DILocation(line: 395, column: 9, scope: !1324)
!1348 = !DILocalVariable(name: "deleted", scope: !1337, file: !1, line: 356, type: !98)
!1349 = !DILocation(line: 356, column: 17, scope: !1337)
!1350 = !DILocalVariable(name: "llen", scope: !1337, file: !1, line: 357, type: !213)
!1351 = !DILocation(line: 357, column: 18, scope: !1337)
!1352 = !DILocation(line: 357, column: 36, scope: !1337)
!1353 = !DILocation(line: 357, column: 25, scope: !1337)
!1354 = !DILocalVariable(name: "count", scope: !1337, file: !1, line: 358, type: !213)
!1355 = !DILocation(line: 358, column: 18, scope: !1337)
!1356 = !DILocation(line: 358, column: 26, scope: !1337)
!1357 = !DILocation(line: 358, column: 36, scope: !1337)
!1358 = !DILocation(line: 358, column: 41, scope: !1337)
!1359 = !DILocalVariable(name: "where", scope: !1337, file: !1, line: 359, type: !98)
!1360 = !DILocation(line: 359, column: 17, scope: !1337)
!1361 = !DILocation(line: 359, column: 25, scope: !1337)
!1362 = !DILocation(line: 359, column: 35, scope: !1337)
!1363 = !DILocation(line: 359, column: 40, scope: !1337)
!1364 = !DILocation(line: 359, column: 49, scope: !1337)
!1365 = !DILocalVariable(name: "use_nested_array", scope: !1337, file: !1, line: 360, type: !98)
!1366 = !DILocation(line: 360, column: 17, scope: !1337)
!1367 = !DILocation(line: 360, column: 37, scope: !1337)
!1368 = !DILocation(line: 360, column: 47, scope: !1337)
!1369 = !DILocation(line: 360, column: 55, scope: !1337)
!1370 = !DILocation(line: 361, column: 37, scope: !1337)
!1371 = !DILocation(line: 361, column: 47, scope: !1337)
!1372 = !DILocation(line: 361, column: 56, scope: !1337)
!1373 = !DILocation(line: 361, column: 61, scope: !1337)
!1374 = !DILocation(line: 0, scope: !1337)
!1375 = !DILocation(line: 360, column: 36, scope: !1337)
!1376 = !DILocalVariable(name: "reply_nil_when_empty", scope: !1337, file: !1, line: 363, type: !98)
!1377 = !DILocation(line: 363, column: 17, scope: !1337)
!1378 = !DILocation(line: 363, column: 40, scope: !1337)
!1379 = !DILocalVariable(name: "prev_error_replies", scope: !1337, file: !1, line: 365, type: !101)
!1380 = !DILocation(line: 365, column: 23, scope: !1337)
!1381 = !DILocation(line: 365, column: 51, scope: !1337)
!1382 = !DILocalVariable(name: "old_client", scope: !1337, file: !1, line: 366, type: !68)
!1383 = !DILocation(line: 366, column: 21, scope: !1337)
!1384 = !DILocation(line: 366, column: 41, scope: !1337)
!1385 = !DILocation(line: 367, column: 37, scope: !1337)
!1386 = !DILocation(line: 367, column: 35, scope: !1337)
!1387 = !DILocalVariable(name: "replyTimer", scope: !1337, file: !1, line: 368, type: !127)
!1388 = !DILocation(line: 368, column: 22, scope: !1337)
!1389 = !DILocation(line: 369, column: 13, scope: !1337)
!1390 = !DILocation(line: 370, column: 32, scope: !1337)
!1391 = !DILocation(line: 370, column: 43, scope: !1337)
!1392 = !DILocation(line: 370, column: 47, scope: !1337)
!1393 = !DILocation(line: 370, column: 55, scope: !1337)
!1394 = !DILocation(line: 370, column: 65, scope: !1337)
!1395 = !DILocation(line: 370, column: 72, scope: !1337)
!1396 = !DILocation(line: 370, column: 90, scope: !1337)
!1397 = !DILocation(line: 370, column: 13, scope: !1337)
!1398 = !DILocalVariable(name: "argc", scope: !1337, file: !1, line: 373, type: !98)
!1399 = !DILocation(line: 373, column: 17, scope: !1337)
!1400 = !DILocalVariable(name: "argv", scope: !1337, file: !1, line: 374, type: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 192, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 3)
!1404 = !DILocation(line: 374, column: 19, scope: !1337)
!1405 = !DILocation(line: 375, column: 23, scope: !1337)
!1406 = !DILocation(line: 375, column: 29, scope: !1337)
!1407 = !DILocation(line: 375, column: 50, scope: !1337)
!1408 = !DILocation(line: 375, column: 67, scope: !1337)
!1409 = !DILocation(line: 375, column: 13, scope: !1337)
!1410 = !DILocation(line: 375, column: 21, scope: !1337)
!1411 = !DILocation(line: 376, column: 23, scope: !1337)
!1412 = !DILocation(line: 376, column: 27, scope: !1337)
!1413 = !DILocation(line: 376, column: 13, scope: !1337)
!1414 = !DILocation(line: 376, column: 21, scope: !1337)
!1415 = !DILocation(line: 377, column: 26, scope: !1337)
!1416 = !DILocation(line: 377, column: 30, scope: !1337)
!1417 = !DILocation(line: 377, column: 13, scope: !1337)
!1418 = !DILocation(line: 378, column: 17, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 378, column: 17)
!1420 = !DILocation(line: 378, column: 23, scope: !1419)
!1421 = !DILocation(line: 378, column: 17, scope: !1337)
!1422 = !DILocalVariable(name: "count_obj", scope: !1423, file: !1, line: 380, type: !352)
!1423 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 378, column: 30)
!1424 = !DILocation(line: 380, column: 23, scope: !1423)
!1425 = !DILocation(line: 380, column: 67, scope: !1423)
!1426 = !DILocation(line: 380, column: 75, scope: !1423)
!1427 = !DILocation(line: 380, column: 73, scope: !1423)
!1428 = !DILocation(line: 380, column: 66, scope: !1423)
!1429 = !DILocation(line: 380, column: 83, scope: !1423)
!1430 = !DILocation(line: 380, column: 90, scope: !1423)
!1431 = !DILocation(line: 380, column: 35, scope: !1423)
!1432 = !DILocation(line: 381, column: 27, scope: !1423)
!1433 = !DILocation(line: 381, column: 17, scope: !1423)
!1434 = !DILocation(line: 381, column: 25, scope: !1423)
!1435 = !DILocation(line: 382, column: 21, scope: !1423)
!1436 = !DILocation(line: 383, column: 13, scope: !1423)
!1437 = !DILocation(line: 384, column: 27, scope: !1337)
!1438 = !DILocation(line: 384, column: 37, scope: !1337)
!1439 = !DILocation(line: 384, column: 41, scope: !1337)
!1440 = !DILocation(line: 384, column: 45, scope: !1337)
!1441 = !DILocation(line: 384, column: 51, scope: !1337)
!1442 = !DILocation(line: 384, column: 13, scope: !1337)
!1443 = !DILocation(line: 385, column: 26, scope: !1337)
!1444 = !DILocation(line: 385, column: 13, scope: !1337)
!1445 = !DILocation(line: 386, column: 17, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 386, column: 17)
!1447 = !DILocation(line: 386, column: 23, scope: !1446)
!1448 = !DILocation(line: 386, column: 17, scope: !1337)
!1449 = !DILocation(line: 386, column: 43, scope: !1446)
!1450 = !DILocation(line: 386, column: 30, scope: !1446)
!1451 = !DILocation(line: 388, column: 34, scope: !1337)
!1452 = !DILocation(line: 388, column: 57, scope: !1337)
!1453 = !DILocation(line: 388, column: 47, scope: !1337)
!1454 = !DILocation(line: 388, column: 77, scope: !1337)
!1455 = !DILocation(line: 388, column: 105, scope: !1337)
!1456 = !DILocation(line: 388, column: 102, scope: !1337)
!1457 = !DILocation(line: 388, column: 13, scope: !1337)
!1458 = !DILocation(line: 389, column: 27, scope: !1337)
!1459 = !DILocation(line: 389, column: 13, scope: !1337)
!1460 = !DILocation(line: 390, column: 26, scope: !1337)
!1461 = !DILocation(line: 390, column: 13, scope: !1337)
!1462 = !DILocation(line: 391, column: 37, scope: !1337)
!1463 = !DILocation(line: 391, column: 35, scope: !1337)
!1464 = !DILocation(line: 394, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 394, column: 17)
!1466 = !DILocation(line: 394, column: 17, scope: !1337)
!1467 = !DILocation(line: 394, column: 26, scope: !1465)
!1468 = !DILocation(line: 396, column: 5, scope: !1324)
!1469 = !DILocation(line: 397, column: 1, scope: !1303)
!1470 = distinct !DISubprogram(name: "serveClientsBlockedOnStreamKey", scope: !1, file: !1, line: 402, type: !1163, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1471 = !DILocalVariable(name: "o", arg: 1, scope: !1470, file: !1, line: 402, type: !352)
!1472 = !DILocation(line: 402, column: 43, scope: !1470)
!1473 = !DILocalVariable(name: "rl", arg: 2, scope: !1470, file: !1, line: 402, type: !1165)
!1474 = !DILocation(line: 402, column: 57, scope: !1470)
!1475 = !DILocation(line: 405, column: 10, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 405, column: 9)
!1477 = !DILocation(line: 405, column: 9, scope: !1470)
!1478 = !DILocation(line: 405, column: 58, scope: !1476)
!1479 = !DILocalVariable(name: "de", scope: !1470, file: !1, line: 407, type: !279)
!1480 = !DILocation(line: 407, column: 16, scope: !1470)
!1481 = !DILocation(line: 407, column: 30, scope: !1470)
!1482 = !DILocation(line: 407, column: 34, scope: !1470)
!1483 = !DILocation(line: 407, column: 38, scope: !1470)
!1484 = !DILocation(line: 407, column: 52, scope: !1470)
!1485 = !DILocation(line: 407, column: 56, scope: !1470)
!1486 = !DILocation(line: 407, column: 21, scope: !1470)
!1487 = !DILocalVariable(name: "s", scope: !1470, file: !1, line: 408, type: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !964, line: 24, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !964, line: 16, size: 640, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1490, file: !964, line: 17, baseType: !639, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1490, file: !964, line: 18, baseType: !73, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !1490, file: !964, line: 19, baseType: !963, size: 128, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "first_id", scope: !1490, file: !964, line: 20, baseType: !963, size: 128, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "max_deleted_entry_id", scope: !1490, file: !964, line: 21, baseType: !963, size: 128, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "entries_added", scope: !1490, file: !964, line: 22, baseType: !73, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1490, file: !964, line: 23, baseType: !639, size: 64, offset: 576)
!1499 = !DILocation(line: 408, column: 13, scope: !1470)
!1500 = !DILocation(line: 408, column: 17, scope: !1470)
!1501 = !DILocation(line: 408, column: 20, scope: !1470)
!1502 = !DILocation(line: 413, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 413, column: 9)
!1504 = !DILocation(line: 413, column: 9, scope: !1470)
!1505 = !DILocalVariable(name: "clients", scope: !1506, file: !1, line: 414, type: !319)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !1, line: 413, column: 13)
!1507 = !DILocation(line: 414, column: 15, scope: !1506)
!1508 = !DILocation(line: 414, column: 25, scope: !1506)
!1509 = !DILocalVariable(name: "ln", scope: !1506, file: !1, line: 415, type: !325)
!1510 = !DILocation(line: 415, column: 19, scope: !1506)
!1511 = !DILocalVariable(name: "li", scope: !1506, file: !1, line: 416, type: !1092)
!1512 = !DILocation(line: 416, column: 18, scope: !1506)
!1513 = !DILocation(line: 417, column: 20, scope: !1506)
!1514 = !DILocation(line: 417, column: 9, scope: !1506)
!1515 = !DILocation(line: 419, column: 9, scope: !1506)
!1516 = !DILocation(line: 419, column: 21, scope: !1506)
!1517 = !DILocation(line: 419, column: 19, scope: !1506)
!1518 = !DILocalVariable(name: "receiver", scope: !1519, file: !1, line: 420, type: !68)
!1519 = distinct !DILexicalBlock(scope: !1506, file: !1, line: 419, column: 37)
!1520 = !DILocation(line: 420, column: 21, scope: !1519)
!1521 = !DILocation(line: 420, column: 32, scope: !1519)
!1522 = !DILocation(line: 421, column: 17, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 421, column: 17)
!1524 = !DILocation(line: 421, column: 27, scope: !1523)
!1525 = !DILocation(line: 421, column: 33, scope: !1523)
!1526 = !DILocation(line: 421, column: 17, scope: !1519)
!1527 = !DILocation(line: 421, column: 52, scope: !1523)
!1528 = distinct !{!1528, !1515, !1529, !804}
!1529 = !DILocation(line: 509, column: 9, scope: !1506)
!1530 = !DILocalVariable(name: "bki", scope: !1519, file: !1, line: 422, type: !957)
!1531 = !DILocation(line: 422, column: 21, scope: !1519)
!1532 = !DILocation(line: 422, column: 42, scope: !1519)
!1533 = !DILocation(line: 422, column: 52, scope: !1519)
!1534 = !DILocation(line: 422, column: 57, scope: !1519)
!1535 = !DILocation(line: 422, column: 62, scope: !1519)
!1536 = !DILocation(line: 422, column: 66, scope: !1519)
!1537 = !DILocation(line: 422, column: 27, scope: !1519)
!1538 = !DILocalVariable(name: "gt", scope: !1519, file: !1, line: 423, type: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!1540 = !DILocation(line: 423, column: 23, scope: !1519)
!1541 = !DILocation(line: 423, column: 29, scope: !1519)
!1542 = !DILocation(line: 423, column: 34, scope: !1519)
!1543 = !DILocalVariable(name: "prev_error_replies", scope: !1519, file: !1, line: 425, type: !101)
!1544 = !DILocation(line: 425, column: 23, scope: !1519)
!1545 = !DILocation(line: 425, column: 51, scope: !1519)
!1546 = !DILocalVariable(name: "old_client", scope: !1519, file: !1, line: 426, type: !68)
!1547 = !DILocation(line: 426, column: 21, scope: !1519)
!1548 = !DILocation(line: 426, column: 41, scope: !1519)
!1549 = !DILocation(line: 427, column: 37, scope: !1519)
!1550 = !DILocation(line: 427, column: 35, scope: !1519)
!1551 = !DILocalVariable(name: "replyTimer", scope: !1519, file: !1, line: 428, type: !127)
!1552 = !DILocation(line: 428, column: 22, scope: !1519)
!1553 = !DILocation(line: 429, column: 13, scope: !1519)
!1554 = !DILocalVariable(name: "group", scope: !1519, file: !1, line: 440, type: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !964, line: 73, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !964, line: 55, size: 320, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !1557, file: !964, line: 56, baseType: !963, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "entries_read", scope: !1557, file: !964, line: 59, baseType: !101, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !1557, file: !964, line: 64, baseType: !639, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1557, file: !964, line: 70, baseType: !639, size: 64, offset: 256)
!1563 = !DILocation(line: 440, column: 23, scope: !1519)
!1564 = !DILocation(line: 441, column: 17, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 441, column: 17)
!1566 = !DILocation(line: 441, column: 27, scope: !1565)
!1567 = !DILocation(line: 441, column: 32, scope: !1565)
!1568 = !DILocation(line: 441, column: 17, scope: !1519)
!1569 = !DILocation(line: 442, column: 40, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !1, line: 441, column: 45)
!1571 = !DILocation(line: 443, column: 25, scope: !1570)
!1572 = !DILocation(line: 443, column: 35, scope: !1570)
!1573 = !DILocation(line: 443, column: 40, scope: !1570)
!1574 = !DILocation(line: 443, column: 53, scope: !1570)
!1575 = !DILocation(line: 442, column: 25, scope: !1570)
!1576 = !DILocation(line: 442, column: 23, scope: !1570)
!1577 = !DILocation(line: 446, column: 22, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 446, column: 21)
!1579 = !DILocation(line: 446, column: 21, scope: !1570)
!1580 = !DILocation(line: 447, column: 35, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 446, column: 29)
!1582 = !DILocation(line: 447, column: 21, scope: !1581)
!1583 = !DILocation(line: 450, column: 21, scope: !1581)
!1584 = !DILocation(line: 452, column: 22, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 451, column: 24)
!1586 = !DILocation(line: 452, column: 27, scope: !1585)
!1587 = !DILocation(line: 452, column: 34, scope: !1585)
!1588 = !DILocation(line: 454, column: 13, scope: !1570)
!1589 = !DILocation(line: 456, column: 34, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 456, column: 17)
!1591 = !DILocation(line: 456, column: 37, scope: !1590)
!1592 = !DILocation(line: 456, column: 46, scope: !1590)
!1593 = !DILocation(line: 456, column: 17, scope: !1590)
!1594 = !DILocation(line: 456, column: 50, scope: !1590)
!1595 = !DILocation(line: 456, column: 17, scope: !1519)
!1596 = !DILocalVariable(name: "start", scope: !1597, file: !1, line: 457, type: !963)
!1597 = distinct !DILexicalBlock(scope: !1590, file: !1, line: 456, column: 55)
!1598 = !DILocation(line: 457, column: 26, scope: !1597)
!1599 = !DILocation(line: 457, column: 35, scope: !1597)
!1600 = !DILocation(line: 457, column: 34, scope: !1597)
!1601 = !DILocation(line: 458, column: 17, scope: !1597)
!1602 = !DILocalVariable(name: "consumer", scope: !1597, file: !1, line: 461, type: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamConsumer", file: !964, line: 88, baseType: !1605)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamConsumer", file: !964, line: 76, size: 192, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "seen_time", scope: !1605, file: !964, line: 77, baseType: !605, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !964, line: 78, baseType: !362, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !1605, file: !964, line: 81, baseType: !639, size: 64, offset: 128)
!1610 = !DILocation(line: 461, column: 33, scope: !1597)
!1611 = !DILocalVariable(name: "noack", scope: !1597, file: !1, line: 462, type: !98)
!1612 = !DILocation(line: 462, column: 21, scope: !1597)
!1613 = !DILocation(line: 464, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 464, column: 21)
!1615 = !DILocation(line: 464, column: 21, scope: !1597)
!1616 = !DILocation(line: 465, column: 29, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 464, column: 28)
!1618 = !DILocation(line: 465, column: 39, scope: !1617)
!1619 = !DILocation(line: 465, column: 44, scope: !1617)
!1620 = !DILocation(line: 465, column: 27, scope: !1617)
!1621 = !DILocalVariable(name: "name", scope: !1617, file: !1, line: 466, type: !362)
!1622 = !DILocation(line: 466, column: 25, scope: !1617)
!1623 = !DILocation(line: 466, column: 32, scope: !1617)
!1624 = !DILocation(line: 466, column: 42, scope: !1617)
!1625 = !DILocation(line: 466, column: 47, scope: !1617)
!1626 = !DILocation(line: 466, column: 63, scope: !1617)
!1627 = !DILocation(line: 467, column: 53, scope: !1617)
!1628 = !DILocation(line: 467, column: 59, scope: !1617)
!1629 = !DILocation(line: 467, column: 32, scope: !1617)
!1630 = !DILocation(line: 467, column: 30, scope: !1617)
!1631 = !DILocation(line: 468, column: 25, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1617, file: !1, line: 468, column: 25)
!1633 = !DILocation(line: 468, column: 34, scope: !1632)
!1634 = !DILocation(line: 468, column: 25, scope: !1617)
!1635 = !DILocation(line: 469, column: 57, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 468, column: 43)
!1637 = !DILocation(line: 469, column: 63, scope: !1636)
!1638 = !DILocation(line: 469, column: 68, scope: !1636)
!1639 = !DILocation(line: 469, column: 72, scope: !1636)
!1640 = !DILocation(line: 470, column: 57, scope: !1636)
!1641 = !DILocation(line: 470, column: 61, scope: !1636)
!1642 = !DILocation(line: 470, column: 65, scope: !1636)
!1643 = !DILocation(line: 469, column: 36, scope: !1636)
!1644 = !DILocation(line: 469, column: 34, scope: !1636)
!1645 = !DILocation(line: 471, column: 29, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 471, column: 29)
!1647 = !DILocation(line: 471, column: 29, scope: !1636)
!1648 = !DILocation(line: 472, column: 61, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 471, column: 36)
!1650 = !DILocation(line: 472, column: 70, scope: !1649)
!1651 = !DILocation(line: 472, column: 74, scope: !1649)
!1652 = !DILocation(line: 473, column: 61, scope: !1649)
!1653 = !DILocation(line: 473, column: 71, scope: !1649)
!1654 = !DILocation(line: 473, column: 76, scope: !1649)
!1655 = !DILocation(line: 474, column: 61, scope: !1649)
!1656 = !DILocation(line: 474, column: 71, scope: !1649)
!1657 = !DILocation(line: 472, column: 29, scope: !1649)
!1658 = !DILocation(line: 475, column: 25, scope: !1649)
!1659 = !DILocation(line: 476, column: 21, scope: !1636)
!1660 = !DILocation(line: 477, column: 17, scope: !1617)
!1661 = !DILocation(line: 483, column: 21, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1597, file: !1, line: 483, column: 21)
!1663 = !DILocation(line: 483, column: 31, scope: !1662)
!1664 = !DILocation(line: 483, column: 36, scope: !1662)
!1665 = !DILocation(line: 483, column: 21, scope: !1597)
!1666 = !DILocation(line: 484, column: 38, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 483, column: 42)
!1668 = !DILocation(line: 484, column: 21, scope: !1667)
!1669 = !DILocation(line: 485, column: 38, scope: !1667)
!1670 = !DILocation(line: 485, column: 21, scope: !1667)
!1671 = !DILocation(line: 486, column: 17, scope: !1667)
!1672 = !DILocation(line: 487, column: 36, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !1, line: 486, column: 24)
!1674 = !DILocation(line: 487, column: 21, scope: !1673)
!1675 = !DILocation(line: 489, column: 30, scope: !1597)
!1676 = !DILocation(line: 489, column: 39, scope: !1597)
!1677 = !DILocation(line: 489, column: 43, scope: !1597)
!1678 = !DILocation(line: 489, column: 17, scope: !1597)
!1679 = !DILocalVariable(name: "pi", scope: !1597, file: !1, line: 491, type: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamPropInfo", file: !964, line: 103, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamPropInfo", file: !964, line: 100, size: 128, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "keyname", scope: !1681, file: !964, line: 101, baseType: !352, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "groupname", scope: !1681, file: !964, line: 102, baseType: !352, size: 64, offset: 64)
!1685 = !DILocation(line: 491, column: 32, scope: !1597)
!1686 = !DILocation(line: 491, column: 37, scope: !1597)
!1687 = !DILocation(line: 492, column: 21, scope: !1597)
!1688 = !DILocation(line: 492, column: 25, scope: !1597)
!1689 = !DILocation(line: 493, column: 21, scope: !1597)
!1690 = !DILocation(line: 493, column: 31, scope: !1597)
!1691 = !DILocation(line: 493, column: 36, scope: !1597)
!1692 = !DILocation(line: 495, column: 38, scope: !1597)
!1693 = !DILocation(line: 495, column: 47, scope: !1597)
!1694 = !DILocation(line: 496, column: 38, scope: !1597)
!1695 = !DILocation(line: 496, column: 48, scope: !1597)
!1696 = !DILocation(line: 496, column: 53, scope: !1597)
!1697 = !DILocation(line: 497, column: 41, scope: !1597)
!1698 = !DILocation(line: 497, column: 48, scope: !1597)
!1699 = !DILocation(line: 497, column: 58, scope: !1597)
!1700 = !DILocation(line: 495, column: 17, scope: !1597)
!1701 = !DILabel(scope: !1597, name: "unblock_receiver", file: !1, line: 503)
!1702 = !DILocation(line: 503, column: 1, scope: !1597)
!1703 = !DILocation(line: 504, column: 38, scope: !1597)
!1704 = !DILocation(line: 504, column: 61, scope: !1597)
!1705 = !DILocation(line: 504, column: 51, scope: !1597)
!1706 = !DILocation(line: 504, column: 81, scope: !1597)
!1707 = !DILocation(line: 504, column: 109, scope: !1597)
!1708 = !DILocation(line: 504, column: 106, scope: !1597)
!1709 = !DILocation(line: 504, column: 17, scope: !1597)
!1710 = !DILocation(line: 505, column: 31, scope: !1597)
!1711 = !DILocation(line: 505, column: 17, scope: !1597)
!1712 = !DILocation(line: 506, column: 30, scope: !1597)
!1713 = !DILocation(line: 506, column: 17, scope: !1597)
!1714 = !DILocation(line: 507, column: 41, scope: !1597)
!1715 = !DILocation(line: 507, column: 39, scope: !1597)
!1716 = !DILocation(line: 508, column: 13, scope: !1597)
!1717 = !DILocation(line: 510, column: 5, scope: !1506)
!1718 = !DILocation(line: 511, column: 1, scope: !1470)
!1719 = distinct !DISubprogram(name: "serveClientsBlockedOnKeyByModule", scope: !1, file: !1, line: 519, type: !1720, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{null, !1165}
!1722 = !DILocalVariable(name: "rl", arg: 1, scope: !1719, file: !1, line: 519, type: !1165)
!1723 = !DILocation(line: 519, column: 50, scope: !1719)
!1724 = !DILocation(line: 522, column: 10, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 522, column: 9)
!1726 = !DILocation(line: 522, column: 9, scope: !1719)
!1727 = !DILocation(line: 522, column: 58, scope: !1725)
!1728 = !DILocalVariable(name: "de", scope: !1719, file: !1, line: 526, type: !279)
!1729 = !DILocation(line: 526, column: 16, scope: !1719)
!1730 = !DILocation(line: 526, column: 30, scope: !1719)
!1731 = !DILocation(line: 526, column: 34, scope: !1719)
!1732 = !DILocation(line: 526, column: 38, scope: !1719)
!1733 = !DILocation(line: 526, column: 52, scope: !1719)
!1734 = !DILocation(line: 526, column: 56, scope: !1719)
!1735 = !DILocation(line: 526, column: 21, scope: !1719)
!1736 = !DILocation(line: 527, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1719, file: !1, line: 527, column: 9)
!1738 = !DILocation(line: 527, column: 9, scope: !1719)
!1739 = !DILocalVariable(name: "clients", scope: !1740, file: !1, line: 528, type: !319)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 527, column: 13)
!1741 = !DILocation(line: 528, column: 15, scope: !1740)
!1742 = !DILocation(line: 528, column: 25, scope: !1740)
!1743 = !DILocalVariable(name: "ln", scope: !1740, file: !1, line: 529, type: !325)
!1744 = !DILocation(line: 529, column: 19, scope: !1740)
!1745 = !DILocalVariable(name: "li", scope: !1740, file: !1, line: 530, type: !1092)
!1746 = !DILocation(line: 530, column: 18, scope: !1740)
!1747 = !DILocation(line: 531, column: 20, scope: !1740)
!1748 = !DILocation(line: 531, column: 9, scope: !1740)
!1749 = !DILocation(line: 533, column: 9, scope: !1740)
!1750 = !DILocation(line: 533, column: 21, scope: !1740)
!1751 = !DILocation(line: 533, column: 19, scope: !1740)
!1752 = !DILocalVariable(name: "receiver", scope: !1753, file: !1, line: 534, type: !68)
!1753 = distinct !DILexicalBlock(scope: !1740, file: !1, line: 533, column: 37)
!1754 = !DILocation(line: 534, column: 21, scope: !1753)
!1755 = !DILocation(line: 534, column: 32, scope: !1753)
!1756 = !DILocation(line: 535, column: 17, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 535, column: 17)
!1758 = !DILocation(line: 535, column: 27, scope: !1757)
!1759 = !DILocation(line: 535, column: 33, scope: !1757)
!1760 = !DILocation(line: 535, column: 17, scope: !1753)
!1761 = !DILocation(line: 535, column: 52, scope: !1757)
!1762 = distinct !{!1762, !1749, !1763, !804}
!1763 = !DILocation(line: 553, column: 9, scope: !1740)
!1764 = !DILocalVariable(name: "prev_error_replies", scope: !1753, file: !1, line: 543, type: !101)
!1765 = !DILocation(line: 543, column: 23, scope: !1753)
!1766 = !DILocation(line: 543, column: 51, scope: !1753)
!1767 = !DILocalVariable(name: "old_client", scope: !1753, file: !1, line: 544, type: !68)
!1768 = !DILocation(line: 544, column: 21, scope: !1753)
!1769 = !DILocation(line: 544, column: 41, scope: !1753)
!1770 = !DILocation(line: 545, column: 37, scope: !1753)
!1771 = !DILocation(line: 545, column: 35, scope: !1753)
!1772 = !DILocalVariable(name: "replyTimer", scope: !1753, file: !1, line: 546, type: !127)
!1773 = !DILocation(line: 546, column: 22, scope: !1753)
!1774 = !DILocation(line: 547, column: 13, scope: !1753)
!1775 = !DILocation(line: 548, column: 51, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1753, file: !1, line: 548, column: 17)
!1777 = !DILocation(line: 548, column: 61, scope: !1776)
!1778 = !DILocation(line: 548, column: 65, scope: !1776)
!1779 = !DILocation(line: 548, column: 18, scope: !1776)
!1780 = !DILocation(line: 548, column: 17, scope: !1753)
!1781 = !DILocation(line: 548, column: 71, scope: !1776)
!1782 = !DILocation(line: 549, column: 34, scope: !1753)
!1783 = !DILocation(line: 549, column: 57, scope: !1753)
!1784 = !DILocation(line: 549, column: 47, scope: !1753)
!1785 = !DILocation(line: 549, column: 77, scope: !1753)
!1786 = !DILocation(line: 549, column: 105, scope: !1753)
!1787 = !DILocation(line: 549, column: 102, scope: !1753)
!1788 = !DILocation(line: 549, column: 13, scope: !1753)
!1789 = !DILocation(line: 550, column: 33, scope: !1753)
!1790 = !DILocation(line: 550, column: 13, scope: !1753)
!1791 = !DILocation(line: 551, column: 26, scope: !1753)
!1792 = !DILocation(line: 551, column: 13, scope: !1753)
!1793 = !DILocation(line: 552, column: 37, scope: !1753)
!1794 = !DILocation(line: 552, column: 35, scope: !1753)
!1795 = !DILocation(line: 554, column: 5, scope: !1740)
!1796 = !DILocation(line: 555, column: 1, scope: !1719)
!1797 = distinct !DISubprogram(name: "unblockDeletedStreamReadgroupClients", scope: !1, file: !1, line: 567, type: !1720, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1798 = !DILocalVariable(name: "rl", arg: 1, scope: !1797, file: !1, line: 567, type: !1165)
!1799 = !DILocation(line: 567, column: 54, scope: !1797)
!1800 = !DILocation(line: 570, column: 10, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 570, column: 9)
!1802 = !DILocation(line: 570, column: 9, scope: !1797)
!1803 = !DILocation(line: 570, column: 58, scope: !1801)
!1804 = !DILocalVariable(name: "de", scope: !1797, file: !1, line: 574, type: !279)
!1805 = !DILocation(line: 574, column: 16, scope: !1797)
!1806 = !DILocation(line: 574, column: 30, scope: !1797)
!1807 = !DILocation(line: 574, column: 34, scope: !1797)
!1808 = !DILocation(line: 574, column: 38, scope: !1797)
!1809 = !DILocation(line: 574, column: 52, scope: !1797)
!1810 = !DILocation(line: 574, column: 56, scope: !1797)
!1811 = !DILocation(line: 574, column: 21, scope: !1797)
!1812 = !DILocation(line: 575, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 575, column: 9)
!1814 = !DILocation(line: 575, column: 9, scope: !1797)
!1815 = !DILocalVariable(name: "clients", scope: !1816, file: !1, line: 576, type: !319)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 575, column: 13)
!1817 = !DILocation(line: 576, column: 15, scope: !1816)
!1818 = !DILocation(line: 576, column: 25, scope: !1816)
!1819 = !DILocalVariable(name: "ln", scope: !1816, file: !1, line: 577, type: !325)
!1820 = !DILocation(line: 577, column: 19, scope: !1816)
!1821 = !DILocalVariable(name: "li", scope: !1816, file: !1, line: 578, type: !1092)
!1822 = !DILocation(line: 578, column: 18, scope: !1816)
!1823 = !DILocation(line: 579, column: 20, scope: !1816)
!1824 = !DILocation(line: 579, column: 9, scope: !1816)
!1825 = !DILocation(line: 581, column: 9, scope: !1816)
!1826 = !DILocation(line: 581, column: 21, scope: !1816)
!1827 = !DILocation(line: 581, column: 19, scope: !1816)
!1828 = !DILocalVariable(name: "receiver", scope: !1829, file: !1, line: 582, type: !68)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !1, line: 581, column: 37)
!1830 = !DILocation(line: 582, column: 21, scope: !1829)
!1831 = !DILocation(line: 582, column: 32, scope: !1829)
!1832 = !DILocation(line: 583, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 583, column: 17)
!1834 = !DILocation(line: 583, column: 27, scope: !1833)
!1835 = !DILocation(line: 583, column: 33, scope: !1833)
!1836 = !DILocation(line: 583, column: 51, scope: !1833)
!1837 = !DILocation(line: 583, column: 55, scope: !1833)
!1838 = !DILocation(line: 583, column: 65, scope: !1833)
!1839 = !DILocation(line: 583, column: 70, scope: !1833)
!1840 = !DILocation(line: 583, column: 17, scope: !1829)
!1841 = !DILocation(line: 584, column: 17, scope: !1833)
!1842 = distinct !{!1842, !1825, !1843, !804}
!1843 = !DILocation(line: 596, column: 9, scope: !1816)
!1844 = !DILocalVariable(name: "prev_error_replies", scope: !1829, file: !1, line: 586, type: !101)
!1845 = !DILocation(line: 586, column: 23, scope: !1829)
!1846 = !DILocation(line: 586, column: 51, scope: !1829)
!1847 = !DILocalVariable(name: "old_client", scope: !1829, file: !1, line: 587, type: !68)
!1848 = !DILocation(line: 587, column: 21, scope: !1829)
!1849 = !DILocation(line: 587, column: 41, scope: !1829)
!1850 = !DILocation(line: 588, column: 37, scope: !1829)
!1851 = !DILocation(line: 588, column: 35, scope: !1829)
!1852 = !DILocalVariable(name: "replyTimer", scope: !1829, file: !1, line: 589, type: !127)
!1853 = !DILocation(line: 589, column: 22, scope: !1829)
!1854 = !DILocation(line: 590, column: 13, scope: !1829)
!1855 = !DILocation(line: 591, column: 27, scope: !1829)
!1856 = !DILocation(line: 591, column: 13, scope: !1829)
!1857 = !DILocation(line: 592, column: 34, scope: !1829)
!1858 = !DILocation(line: 592, column: 57, scope: !1829)
!1859 = !DILocation(line: 592, column: 47, scope: !1829)
!1860 = !DILocation(line: 592, column: 77, scope: !1829)
!1861 = !DILocation(line: 592, column: 105, scope: !1829)
!1862 = !DILocation(line: 592, column: 102, scope: !1829)
!1863 = !DILocation(line: 592, column: 13, scope: !1829)
!1864 = !DILocation(line: 593, column: 27, scope: !1829)
!1865 = !DILocation(line: 593, column: 13, scope: !1829)
!1866 = !DILocation(line: 594, column: 26, scope: !1829)
!1867 = !DILocation(line: 594, column: 13, scope: !1829)
!1868 = !DILocation(line: 595, column: 37, scope: !1829)
!1869 = !DILocation(line: 595, column: 35, scope: !1829)
!1870 = !DILocation(line: 597, column: 5, scope: !1816)
!1871 = !DILocation(line: 598, column: 1, scope: !1797)
!1872 = distinct !DISubprogram(name: "handleClientsBlockedOnKeys", scope: !1, file: !1, line: 621, type: !764, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1873 = !DILocation(line: 624, column: 5, scope: !1872)
!1874 = !DILocation(line: 625, column: 28, scope: !1872)
!1875 = !DILocation(line: 627, column: 5, scope: !1872)
!1876 = !DILocation(line: 627, column: 11, scope: !1872)
!1877 = !DILocation(line: 627, column: 41, scope: !1872)
!1878 = !DILocalVariable(name: "l", scope: !1879, file: !1, line: 628, type: !319)
!1879 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 627, column: 47)
!1880 = !DILocation(line: 628, column: 15, scope: !1879)
!1881 = !DILocation(line: 634, column: 20, scope: !1879)
!1882 = !DILocation(line: 634, column: 11, scope: !1879)
!1883 = !DILocation(line: 635, column: 29, scope: !1879)
!1884 = !DILocation(line: 635, column: 27, scope: !1879)
!1885 = !DILocation(line: 637, column: 9, scope: !1879)
!1886 = !DILocation(line: 637, column: 15, scope: !1879)
!1887 = !DILocation(line: 637, column: 29, scope: !1879)
!1888 = !DILocalVariable(name: "ln", scope: !1889, file: !1, line: 638, type: !325)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !1, line: 637, column: 35)
!1890 = !DILocation(line: 638, column: 23, scope: !1889)
!1891 = !DILocation(line: 638, column: 28, scope: !1889)
!1892 = !DILocalVariable(name: "rl", scope: !1889, file: !1, line: 639, type: !1165)
!1893 = !DILocation(line: 639, column: 24, scope: !1889)
!1894 = !DILocation(line: 639, column: 29, scope: !1889)
!1895 = !DILocation(line: 639, column: 33, scope: !1889)
!1896 = !DILocation(line: 643, column: 24, scope: !1889)
!1897 = !DILocation(line: 643, column: 28, scope: !1889)
!1898 = !DILocation(line: 643, column: 32, scope: !1889)
!1899 = !DILocation(line: 643, column: 43, scope: !1889)
!1900 = !DILocation(line: 643, column: 47, scope: !1889)
!1901 = !DILocation(line: 643, column: 13, scope: !1889)
!1902 = !DILocation(line: 652, column: 37, scope: !1889)
!1903 = !DILocation(line: 653, column: 13, scope: !1889)
!1904 = !DILocalVariable(name: "o", scope: !1889, file: !1, line: 656, type: !352)
!1905 = !DILocation(line: 656, column: 19, scope: !1889)
!1906 = !DILocation(line: 656, column: 46, scope: !1889)
!1907 = !DILocation(line: 656, column: 50, scope: !1889)
!1908 = !DILocation(line: 656, column: 54, scope: !1889)
!1909 = !DILocation(line: 656, column: 58, scope: !1889)
!1910 = !DILocation(line: 656, column: 23, scope: !1889)
!1911 = !DILocation(line: 657, column: 17, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1889, file: !1, line: 657, column: 17)
!1913 = !DILocation(line: 657, column: 19, scope: !1912)
!1914 = !DILocation(line: 657, column: 17, scope: !1889)
!1915 = !DILocalVariable(name: "objtype", scope: !1916, file: !1, line: 658, type: !98)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 657, column: 28)
!1917 = !DILocation(line: 658, column: 21, scope: !1916)
!1918 = !DILocation(line: 658, column: 31, scope: !1916)
!1919 = !DILocation(line: 658, column: 34, scope: !1916)
!1920 = !DILocation(line: 659, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 659, column: 21)
!1922 = !DILocation(line: 659, column: 29, scope: !1921)
!1923 = !DILocation(line: 659, column: 21, scope: !1916)
!1924 = !DILocation(line: 660, column: 50, scope: !1921)
!1925 = !DILocation(line: 660, column: 52, scope: !1921)
!1926 = !DILocation(line: 660, column: 21, scope: !1921)
!1927 = !DILocation(line: 661, column: 26, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !1, line: 661, column: 26)
!1929 = !DILocation(line: 661, column: 34, scope: !1928)
!1930 = !DILocation(line: 661, column: 26, scope: !1921)
!1931 = !DILocation(line: 662, column: 55, scope: !1928)
!1932 = !DILocation(line: 662, column: 57, scope: !1928)
!1933 = !DILocation(line: 662, column: 21, scope: !1928)
!1934 = !DILocation(line: 663, column: 26, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !1, line: 663, column: 26)
!1936 = !DILocation(line: 663, column: 34, scope: !1935)
!1937 = !DILocation(line: 663, column: 26, scope: !1928)
!1938 = !DILocation(line: 664, column: 52, scope: !1935)
!1939 = !DILocation(line: 664, column: 54, scope: !1935)
!1940 = !DILocation(line: 664, column: 21, scope: !1935)
!1941 = !DILocation(line: 668, column: 50, scope: !1916)
!1942 = !DILocation(line: 668, column: 17, scope: !1916)
!1943 = !DILocation(line: 674, column: 22, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1916, file: !1, line: 674, column: 22)
!1945 = !DILocation(line: 674, column: 30, scope: !1944)
!1946 = !DILocation(line: 674, column: 22, scope: !1916)
!1947 = !DILocation(line: 675, column: 59, scope: !1944)
!1948 = !DILocation(line: 675, column: 22, scope: !1944)
!1949 = !DILocation(line: 676, column: 13, scope: !1916)
!1950 = !DILocation(line: 678, column: 54, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 676, column: 20)
!1952 = !DILocation(line: 678, column: 17, scope: !1951)
!1953 = !DILocation(line: 681, column: 43, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !1, line: 681, column: 21)
!1955 = !DILocation(line: 681, column: 50, scope: !1954)
!1956 = !DILocation(line: 681, column: 21, scope: !1951)
!1957 = !DILocation(line: 682, column: 21, scope: !1954)
!1958 = !DILocation(line: 684, column: 37, scope: !1889)
!1959 = !DILocation(line: 687, column: 26, scope: !1889)
!1960 = !DILocation(line: 687, column: 30, scope: !1889)
!1961 = !DILocation(line: 687, column: 13, scope: !1889)
!1962 = !DILocation(line: 688, column: 19, scope: !1889)
!1963 = !DILocation(line: 688, column: 13, scope: !1889)
!1964 = !DILocation(line: 689, column: 25, scope: !1889)
!1965 = !DILocation(line: 689, column: 27, scope: !1889)
!1966 = !DILocation(line: 689, column: 13, scope: !1889)
!1967 = distinct !{!1967, !1885, !1968, !804}
!1968 = !DILocation(line: 690, column: 9, scope: !1879)
!1969 = !DILocation(line: 691, column: 21, scope: !1879)
!1970 = !DILocation(line: 691, column: 9, scope: !1879)
!1971 = distinct !{!1971, !1875, !1972, !804}
!1972 = !DILocation(line: 692, column: 5, scope: !1872)
!1973 = !DILocation(line: 694, column: 5, scope: !1872)
!1974 = !DILocation(line: 696, column: 28, scope: !1872)
!1975 = !DILocation(line: 697, column: 1, scope: !1872)
!1976 = distinct !DISubprogram(name: "blockForKeys", scope: !1, file: !1, line: 729, type: !1977, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !68, !98, !368, !98, !213, !605, !352, !1979, !1539}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!1980 = !DILocalVariable(name: "c", arg: 1, scope: !1976, file: !1, line: 729, type: !68)
!1981 = !DILocation(line: 729, column: 27, scope: !1976)
!1982 = !DILocalVariable(name: "btype", arg: 2, scope: !1976, file: !1, line: 729, type: !98)
!1983 = !DILocation(line: 729, column: 34, scope: !1976)
!1984 = !DILocalVariable(name: "keys", arg: 3, scope: !1976, file: !1, line: 729, type: !368)
!1985 = !DILocation(line: 729, column: 48, scope: !1976)
!1986 = !DILocalVariable(name: "numkeys", arg: 4, scope: !1976, file: !1, line: 729, type: !98)
!1987 = !DILocation(line: 729, column: 58, scope: !1976)
!1988 = !DILocalVariable(name: "count", arg: 5, scope: !1976, file: !1, line: 729, type: !213)
!1989 = !DILocation(line: 729, column: 72, scope: !1976)
!1990 = !DILocalVariable(name: "timeout", arg: 6, scope: !1976, file: !1, line: 729, type: !605)
!1991 = !DILocation(line: 729, column: 88, scope: !1976)
!1992 = !DILocalVariable(name: "target", arg: 7, scope: !1976, file: !1, line: 729, type: !352)
!1993 = !DILocation(line: 729, column: 103, scope: !1976)
!1994 = !DILocalVariable(name: "blockpos", arg: 8, scope: !1976, file: !1, line: 729, type: !1979)
!1995 = !DILocation(line: 729, column: 128, scope: !1976)
!1996 = !DILocalVariable(name: "ids", arg: 9, scope: !1976, file: !1, line: 729, type: !1539)
!1997 = !DILocation(line: 729, column: 148, scope: !1976)
!1998 = !DILocalVariable(name: "de", scope: !1976, file: !1, line: 730, type: !279)
!1999 = !DILocation(line: 730, column: 16, scope: !1976)
!2000 = !DILocalVariable(name: "l", scope: !1976, file: !1, line: 731, type: !319)
!2001 = !DILocation(line: 731, column: 11, scope: !1976)
!2002 = !DILocalVariable(name: "j", scope: !1976, file: !1, line: 732, type: !98)
!2003 = !DILocation(line: 732, column: 9, scope: !1976)
!2004 = !DILocation(line: 734, column: 21, scope: !1976)
!2005 = !DILocation(line: 734, column: 5, scope: !1976)
!2006 = !DILocation(line: 734, column: 8, scope: !1976)
!2007 = !DILocation(line: 734, column: 13, scope: !1976)
!2008 = !DILocation(line: 734, column: 19, scope: !1976)
!2009 = !DILocation(line: 735, column: 23, scope: !1976)
!2010 = !DILocation(line: 735, column: 5, scope: !1976)
!2011 = !DILocation(line: 735, column: 8, scope: !1976)
!2012 = !DILocation(line: 735, column: 13, scope: !1976)
!2013 = !DILocation(line: 735, column: 21, scope: !1976)
!2014 = !DILocation(line: 736, column: 22, scope: !1976)
!2015 = !DILocation(line: 736, column: 5, scope: !1976)
!2016 = !DILocation(line: 736, column: 8, scope: !1976)
!2017 = !DILocation(line: 736, column: 13, scope: !1976)
!2018 = !DILocation(line: 736, column: 20, scope: !1976)
!2019 = !DILocation(line: 738, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 738, column: 9)
!2021 = !DILocation(line: 738, column: 18, scope: !2020)
!2022 = !DILocation(line: 738, column: 9, scope: !1976)
!2023 = !DILocation(line: 738, column: 27, scope: !2020)
!2024 = !DILocation(line: 738, column: 30, scope: !2020)
!2025 = !DILocation(line: 738, column: 35, scope: !2020)
!2026 = !DILocation(line: 738, column: 47, scope: !2020)
!2027 = !DILocation(line: 738, column: 46, scope: !2020)
!2028 = !DILocation(line: 740, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 740, column: 9)
!2030 = !DILocation(line: 740, column: 16, scope: !2029)
!2031 = !DILocation(line: 740, column: 9, scope: !1976)
!2032 = !DILocation(line: 740, column: 38, scope: !2029)
!2033 = !DILocation(line: 740, column: 25, scope: !2029)
!2034 = !DILocation(line: 742, column: 12, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1976, file: !1, line: 742, column: 5)
!2036 = !DILocation(line: 742, column: 10, scope: !2035)
!2037 = !DILocation(line: 742, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !1, line: 742, column: 5)
!2039 = !DILocation(line: 742, column: 21, scope: !2038)
!2040 = !DILocation(line: 742, column: 19, scope: !2038)
!2041 = !DILocation(line: 742, column: 5, scope: !2035)
!2042 = !DILocalVariable(name: "bki", scope: !2043, file: !1, line: 745, type: !957)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !1, line: 742, column: 35)
!2044 = !DILocation(line: 745, column: 17, scope: !2043)
!2045 = !DILocation(line: 745, column: 23, scope: !2043)
!2046 = !DILocation(line: 746, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 746, column: 13)
!2048 = !DILocation(line: 746, column: 19, scope: !2047)
!2049 = !DILocation(line: 746, column: 13, scope: !2043)
!2050 = !DILocation(line: 747, column: 13, scope: !2047)
!2051 = !DILocation(line: 747, column: 18, scope: !2047)
!2052 = !DILocation(line: 747, column: 30, scope: !2047)
!2053 = !DILocation(line: 747, column: 34, scope: !2047)
!2054 = !DILocation(line: 750, column: 21, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 750, column: 13)
!2056 = !DILocation(line: 750, column: 24, scope: !2055)
!2057 = !DILocation(line: 750, column: 29, scope: !2055)
!2058 = !DILocation(line: 750, column: 34, scope: !2055)
!2059 = !DILocation(line: 750, column: 39, scope: !2055)
!2060 = !DILocation(line: 750, column: 42, scope: !2055)
!2061 = !DILocation(line: 750, column: 13, scope: !2055)
!2062 = !DILocation(line: 750, column: 47, scope: !2055)
!2063 = !DILocation(line: 750, column: 13, scope: !2043)
!2064 = !DILocation(line: 751, column: 19, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2055, file: !1, line: 750, column: 59)
!2066 = !DILocation(line: 751, column: 13, scope: !2065)
!2067 = !DILocation(line: 752, column: 13, scope: !2065)
!2068 = !DILocation(line: 754, column: 22, scope: !2043)
!2069 = !DILocation(line: 754, column: 27, scope: !2043)
!2070 = !DILocation(line: 754, column: 9, scope: !2043)
!2071 = !DILocation(line: 757, column: 23, scope: !2043)
!2072 = !DILocation(line: 757, column: 26, scope: !2043)
!2073 = !DILocation(line: 757, column: 30, scope: !2043)
!2074 = !DILocation(line: 757, column: 44, scope: !2043)
!2075 = !DILocation(line: 757, column: 49, scope: !2043)
!2076 = !DILocation(line: 757, column: 14, scope: !2043)
!2077 = !DILocation(line: 757, column: 12, scope: !2043)
!2078 = !DILocation(line: 758, column: 13, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 758, column: 13)
!2080 = !DILocation(line: 758, column: 16, scope: !2079)
!2081 = !DILocation(line: 758, column: 13, scope: !2043)
!2082 = !DILocalVariable(name: "retval", scope: !2083, file: !1, line: 759, type: !98)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 758, column: 25)
!2084 = !DILocation(line: 759, column: 17, scope: !2083)
!2085 = !DILocation(line: 762, column: 17, scope: !2083)
!2086 = !DILocation(line: 762, column: 15, scope: !2083)
!2087 = !DILocation(line: 763, column: 30, scope: !2083)
!2088 = !DILocation(line: 763, column: 33, scope: !2083)
!2089 = !DILocation(line: 763, column: 37, scope: !2083)
!2090 = !DILocation(line: 763, column: 51, scope: !2083)
!2091 = !DILocation(line: 763, column: 56, scope: !2083)
!2092 = !DILocation(line: 763, column: 59, scope: !2083)
!2093 = !DILocation(line: 763, column: 22, scope: !2083)
!2094 = !DILocation(line: 763, column: 20, scope: !2083)
!2095 = !DILocation(line: 764, column: 26, scope: !2083)
!2096 = !DILocation(line: 764, column: 31, scope: !2083)
!2097 = !DILocation(line: 764, column: 13, scope: !2083)
!2098 = !DILocation(line: 765, column: 13, scope: !2083)
!2099 = !DILocation(line: 766, column: 9, scope: !2083)
!2100 = !DILocation(line: 767, column: 17, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2079, file: !1, line: 766, column: 16)
!2102 = !DILocation(line: 767, column: 15, scope: !2101)
!2103 = !DILocation(line: 769, column: 25, scope: !2043)
!2104 = !DILocation(line: 769, column: 27, scope: !2043)
!2105 = !DILocation(line: 769, column: 9, scope: !2043)
!2106 = !DILocation(line: 770, column: 25, scope: !2043)
!2107 = !DILocation(line: 770, column: 9, scope: !2043)
!2108 = !DILocation(line: 770, column: 14, scope: !2043)
!2109 = !DILocation(line: 770, column: 23, scope: !2043)
!2110 = !DILocation(line: 771, column: 5, scope: !2043)
!2111 = !DILocation(line: 742, column: 31, scope: !2038)
!2112 = !DILocation(line: 742, column: 5, scope: !2038)
!2113 = distinct !{!2113, !2041, !2114, !804}
!2114 = !DILocation(line: 771, column: 5, scope: !2035)
!2115 = !DILocation(line: 772, column: 17, scope: !1976)
!2116 = !DILocation(line: 772, column: 19, scope: !1976)
!2117 = !DILocation(line: 772, column: 5, scope: !1976)
!2118 = !DILocation(line: 773, column: 1, scope: !1976)
!2119 = distinct !DISubprogram(name: "signalKeyAsReady", scope: !1, file: !1, line: 830, type: !2120, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !675)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !234, !352, !98}
!2122 = !DILocalVariable(name: "db", arg: 1, scope: !2119, file: !1, line: 830, type: !234)
!2123 = !DILocation(line: 830, column: 32, scope: !2119)
!2124 = !DILocalVariable(name: "key", arg: 2, scope: !2119, file: !1, line: 830, type: !352)
!2125 = !DILocation(line: 830, column: 42, scope: !2119)
!2126 = !DILocalVariable(name: "type", arg: 3, scope: !2119, file: !1, line: 830, type: !98)
!2127 = !DILocation(line: 830, column: 51, scope: !2119)
!2128 = !DILocalVariable(name: "rl", scope: !2119, file: !1, line: 831, type: !1165)
!2129 = !DILocation(line: 831, column: 16, scope: !2119)
!2130 = !DILocalVariable(name: "btype", scope: !2119, file: !1, line: 834, type: !98)
!2131 = !DILocation(line: 834, column: 9, scope: !2119)
!2132 = !DILocation(line: 834, column: 38, scope: !2119)
!2133 = !DILocation(line: 834, column: 17, scope: !2119)
!2134 = !DILocation(line: 835, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 835, column: 9)
!2136 = !DILocation(line: 835, column: 15, scope: !2135)
!2137 = !DILocation(line: 835, column: 9, scope: !2119)
!2138 = !DILocation(line: 837, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !1, line: 835, column: 32)
!2140 = !DILocation(line: 839, column: 41, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 839, column: 9)
!2142 = !DILocation(line: 839, column: 10, scope: !2141)
!2143 = !DILocation(line: 839, column: 48, scope: !2141)
!2144 = !DILocation(line: 840, column: 10, scope: !2141)
!2145 = !DILocation(line: 839, column: 9, scope: !2119)
!2146 = !DILocation(line: 845, column: 9, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 840, column: 58)
!2148 = !DILocation(line: 849, column: 18, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 849, column: 9)
!2150 = !DILocation(line: 849, column: 22, scope: !2149)
!2151 = !DILocation(line: 849, column: 36, scope: !2149)
!2152 = !DILocation(line: 849, column: 9, scope: !2149)
!2153 = !DILocation(line: 849, column: 41, scope: !2149)
!2154 = !DILocation(line: 849, column: 9, scope: !2119)
!2155 = !DILocation(line: 849, column: 50, scope: !2149)
!2156 = !DILocation(line: 852, column: 18, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 852, column: 9)
!2158 = !DILocation(line: 852, column: 22, scope: !2157)
!2159 = !DILocation(line: 852, column: 33, scope: !2157)
!2160 = !DILocation(line: 852, column: 9, scope: !2157)
!2161 = !DILocation(line: 852, column: 38, scope: !2157)
!2162 = !DILocation(line: 852, column: 9, scope: !2119)
!2163 = !DILocation(line: 852, column: 47, scope: !2157)
!2164 = !DILocation(line: 855, column: 10, scope: !2119)
!2165 = !DILocation(line: 855, column: 8, scope: !2119)
!2166 = !DILocation(line: 856, column: 15, scope: !2119)
!2167 = !DILocation(line: 856, column: 5, scope: !2119)
!2168 = !DILocation(line: 856, column: 9, scope: !2119)
!2169 = !DILocation(line: 856, column: 13, scope: !2119)
!2170 = !DILocation(line: 857, column: 14, scope: !2119)
!2171 = !DILocation(line: 857, column: 5, scope: !2119)
!2172 = !DILocation(line: 857, column: 9, scope: !2119)
!2173 = !DILocation(line: 857, column: 12, scope: !2119)
!2174 = !DILocation(line: 858, column: 18, scope: !2119)
!2175 = !DILocation(line: 858, column: 5, scope: !2119)
!2176 = !DILocation(line: 859, column: 28, scope: !2119)
!2177 = !DILocation(line: 859, column: 39, scope: !2119)
!2178 = !DILocation(line: 859, column: 5, scope: !2119)
!2179 = !DILocation(line: 864, column: 18, scope: !2119)
!2180 = !DILocation(line: 864, column: 5, scope: !2119)
!2181 = !DILocation(line: 865, column: 5, scope: !2119)
!2182 = !DILocation(line: 866, column: 1, scope: !2119)
!2183 = distinct !DISubprogram(name: "getBlockedTypeByType", scope: !1, file: !1, line: 813, type: !2184, scopeLine: 813, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !675)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!98, !98}
!2186 = !DILocalVariable(name: "type", arg: 1, scope: !2183, file: !1, line: 813, type: !98)
!2187 = !DILocation(line: 813, column: 37, scope: !2183)
!2188 = !DILocation(line: 814, column: 13, scope: !2183)
!2189 = !DILocation(line: 814, column: 5, scope: !2183)
!2190 = !DILocation(line: 815, column: 24, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2183, file: !1, line: 814, column: 19)
!2192 = !DILocation(line: 816, column: 24, scope: !2191)
!2193 = !DILocation(line: 817, column: 26, scope: !2191)
!2194 = !DILocation(line: 818, column: 26, scope: !2191)
!2195 = !DILocation(line: 819, column: 18, scope: !2191)
!2196 = !DILocation(line: 821, column: 1, scope: !2183)
