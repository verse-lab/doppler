; ModuleID = 'timeout.c'
source_filename = "timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type { [16384 x %struct.slotToKeys] }
%struct.slotToKeys = type { i64, %struct.dictEntry* }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
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
%struct.clusterState = type { %struct.clusterNode*, i64, i32, i32, %struct.dict*, %struct.dict*, [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], %struct.rax*, i64, i32, i32, i32, i64, i32, i64, %struct.clusterNode*, i64, i32, i64, i32, [11 x i64], [11 x i64], i64, i64 }
%struct.clusterNode = type { i64, [40 x i8], i32, i64, [2048 x i8], i16*, i32, i32, i32, %struct.clusterNode**, %struct.clusterNode*, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i8], i8*, i32, i32, i32, %struct.clusterLink*, %struct.clusterLink*, %struct.list* }
%struct.clusterLink = type { i64, %struct.connection*, i8*, i8*, i64, i64, %struct.clusterNode*, i32 }
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
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }

@server = external dso_local global %struct.redisServer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Closing idle client\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"timeout is not a float or out of range\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"timeout is not an integer or out of range\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"timeout is negative\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkBlockedClientTimeout(%struct.client* %c, i64 %now) #0 !dbg !66 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %now.addr = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !687, metadata !DIExpression()), !dbg !688
  store i64 %now, i64* %now.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %now.addr, metadata !689, metadata !DIExpression()), !dbg !690
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !691
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !693
  %1 = load i64, i64* %flags, align 8, !dbg !693
  %and = and i64 %1, 16, !dbg !694
  %tobool = icmp ne i64 %and, 0, !dbg !694
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !695

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !696
  %bpop = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 53, !dbg !697
  %timeout = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 1, !dbg !698
  %3 = load i64, i64* %timeout, align 8, !dbg !698
  %cmp = icmp ne i64 %3, 0, !dbg !699
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !700

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !701
  %bpop2 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 53, !dbg !702
  %timeout3 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop2, i32 0, i32 1, !dbg !703
  %5 = load i64, i64* %timeout3, align 8, !dbg !703
  %6 = load i64, i64* %now.addr, align 8, !dbg !704
  %cmp4 = icmp slt i64 %5, %6, !dbg !705
  br i1 %cmp4, label %if.then, label %if.else, !dbg !706

if.then:                                          ; preds = %land.lhs.true1
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !707
  call void @replyToBlockedClientTimedOut(%struct.client* %7), !dbg !709
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !710
  call void @unblockClient(%struct.client* %8), !dbg !711
  store i32 1, i32* %retval, align 4, !dbg !712
  br label %return, !dbg !712

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !713
  br label %return, !dbg !713

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !715
  ret i32 %9, !dbg !715
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @replyToBlockedClientTimedOut(%struct.client*) #2

declare dso_local void @unblockClient(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @clientsCronHandleTimeout(%struct.client* %c, i64 %now_ms) #0 !dbg !716 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %now_ms.addr = alloca i64, align 8
  %now = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %now_ms, i64* %now_ms.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %now_ms.addr, metadata !719, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata i64* %now, metadata !721, metadata !DIExpression()), !dbg !722
  %0 = load i64, i64* %now_ms.addr, align 8, !dbg !723
  %div = sdiv i64 %0, 1000, !dbg !724
  store i64 %div, i64* %now, align 8, !dbg !722
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 155), align 4, !dbg !725
  %tobool = icmp ne i32 %1, 0, !dbg !727
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !728

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !729
  %flags = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !730
  %3 = load i64, i64* %flags, align 8, !dbg !730
  %and = and i64 %3, 1, !dbg !731
  %tobool1 = icmp ne i64 %and, 0, !dbg !731
  br i1 %tobool1, label %if.else, label %land.lhs.true2, !dbg !732

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !733
  %call = call i32 @mustObeyClient(%struct.client* %4), !dbg !734
  %tobool3 = icmp ne i32 %call, 0, !dbg !734
  br i1 %tobool3, label %if.else, label %land.lhs.true4, !dbg !735

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !736
  %flags5 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !737
  %6 = load i64, i64* %flags5, align 8, !dbg !737
  %and6 = and i64 %6, 16, !dbg !738
  %tobool7 = icmp ne i64 %and6, 0, !dbg !738
  br i1 %tobool7, label %if.else, label %land.lhs.true8, !dbg !739

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !740
  %flags9 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 1, !dbg !741
  %8 = load i64, i64* %flags9, align 8, !dbg !741
  %and10 = and i64 %8, 262144, !dbg !742
  %tobool11 = icmp ne i64 %and10, 0, !dbg !742
  br i1 %tobool11, label %if.else, label %land.lhs.true12, !dbg !743

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %9 = load i64, i64* %now, align 8, !dbg !744
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !745
  %lastinteraction = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 30, !dbg !746
  %11 = load i64, i64* %lastinteraction, align 8, !dbg !746
  %sub = sub nsw i64 %9, %11, !dbg !747
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 155), align 4, !dbg !748
  %conv = sext i32 %12 to i64, !dbg !749
  %cmp = icmp sgt i64 %sub, %conv, !dbg !750
  br i1 %cmp, label %if.then, label %if.else, !dbg !751

if.then:                                          ; preds = %land.lhs.true12
  br label %do.body, !dbg !752

do.body:                                          ; preds = %if.then
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !754
  %cmp14 = icmp slt i32 1, %13, !dbg !754
  br i1 %cmp14, label %if.then16, label %if.end, !dbg !757

if.then16:                                        ; preds = %do.body
  br label %do.end, !dbg !754

if.end:                                           ; preds = %do.body
  call void (i32, i8*, ...) @_serverLog(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)), !dbg !757
  br label %do.end, !dbg !757

do.end:                                           ; preds = %if.end, %if.then16
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !758
  call void @freeClient(%struct.client* %14), !dbg !759
  store i32 1, i32* %retval, align 4, !dbg !760
  br label %return, !dbg !760

if.else:                                          ; preds = %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !761
  %flags17 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 1, !dbg !763
  %16 = load i64, i64* %flags17, align 8, !dbg !763
  %and18 = and i64 %16, 16, !dbg !764
  %tobool19 = icmp ne i64 %and18, 0, !dbg !764
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !765

if.then20:                                        ; preds = %if.else
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 352), align 8, !dbg !766
  %tobool21 = icmp ne i32 %17, 0, !dbg !769
  br i1 %tobool21, label %if.then22, label %if.end27, !dbg !770

if.then22:                                        ; preds = %if.then20
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !771
  %call23 = call i32 @clusterRedirectBlockedClientIfNeeded(%struct.client* %18), !dbg !774
  %tobool24 = icmp ne i32 %call23, 0, !dbg !774
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !775

if.then25:                                        ; preds = %if.then22
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !776
  call void @unblockClient(%struct.client* %19), !dbg !777
  br label %if.end26, !dbg !777

if.end26:                                         ; preds = %if.then25, %if.then22
  br label %if.end27, !dbg !778

if.end27:                                         ; preds = %if.end26, %if.then20
  br label %if.end28, !dbg !779

if.end28:                                         ; preds = %if.end27, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  store i32 0, i32* %retval, align 4, !dbg !780
  br label %return, !dbg !780

return:                                           ; preds = %if.end29, %do.end
  %20 = load i32, i32* %retval, align 4, !dbg !781
  ret i32 %20, !dbg !781
}

declare dso_local i32 @mustObeyClient(%struct.client*) #2

declare dso_local void @_serverLog(i32, i8*, ...) #2

declare dso_local void @freeClient(%struct.client*) #2

declare dso_local i32 @clusterRedirectBlockedClientIfNeeded(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @encodeTimeoutKey(i8* %buf, i64 %timeout, %struct.client* %c) #0 !dbg !782 {
entry:
  %buf.addr = alloca i8*, align 8
  %timeout.addr = alloca i64, align 8
  %c.addr = alloca %struct.client*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !786, metadata !DIExpression()), !dbg !787
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !788, metadata !DIExpression()), !dbg !789
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !790, metadata !DIExpression()), !dbg !791
  %0 = load i64, i64* %timeout.addr, align 8, !dbg !792
  %call = call i64 @intrev64(i64 %0), !dbg !792
  store i64 %call, i64* %timeout.addr, align 8, !dbg !793
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !794
  %2 = bitcast i64* %timeout.addr to i8*, !dbg !795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 8 %2, i64 8, i1 false), !dbg !795
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !796
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8, !dbg !797
  %4 = bitcast %struct.client** %c.addr to i8*, !dbg !798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 8 %4, i64 8, i1 false), !dbg !798
  ret void, !dbg !799
}

declare dso_local i64 @intrev64(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @decodeTimeoutKey(i8* %buf, i64* %toptr, %struct.client** %cptr) #0 !dbg !800 {
entry:
  %buf.addr = alloca i8*, align 8
  %toptr.addr = alloca i64*, align 8
  %cptr.addr = alloca %struct.client**, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !805, metadata !DIExpression()), !dbg !806
  store i64* %toptr, i64** %toptr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %toptr.addr, metadata !807, metadata !DIExpression()), !dbg !808
  store %struct.client** %cptr, %struct.client*** %cptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client*** %cptr.addr, metadata !809, metadata !DIExpression()), !dbg !810
  %0 = load i64*, i64** %toptr.addr, align 8, !dbg !811
  %1 = bitcast i64* %0 to i8*, !dbg !812
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 1 %2, i64 8, i1 false), !dbg !812
  %3 = load i64*, i64** %toptr.addr, align 8, !dbg !814
  %4 = load i64, i64* %3, align 8, !dbg !814
  %call = call i64 @intrev64(i64 %4), !dbg !814
  %5 = load i64*, i64** %toptr.addr, align 8, !dbg !815
  store i64 %call, i64* %5, align 8, !dbg !816
  %6 = load %struct.client**, %struct.client*** %cptr.addr, align 8, !dbg !817
  %7 = bitcast %struct.client** %6 to i8*, !dbg !818
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !819
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 8, !dbg !820
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 1 %add.ptr, i64 8, i1 false), !dbg !818
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addClientToTimeoutTable(%struct.client* %c) #0 !dbg !822 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %timeout1 = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !823, metadata !DIExpression()), !dbg !824
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !825
  %bpop = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 53, !dbg !827
  %timeout = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 1, !dbg !828
  %1 = load i64, i64* %timeout, align 8, !dbg !828
  %cmp = icmp eq i64 %1, 0, !dbg !829
  br i1 %cmp, label %if.then, label %if.end, !dbg !830

if.then:                                          ; preds = %entry
  br label %if.end6, !dbg !831

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %timeout1, metadata !832, metadata !DIExpression()), !dbg !833
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !834
  %bpop2 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 53, !dbg !835
  %timeout3 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop2, i32 0, i32 1, !dbg !836
  %3 = load i64, i64* %timeout3, align 8, !dbg !836
  store i64 %3, i64* %timeout1, align 8, !dbg !833
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !837, metadata !DIExpression()), !dbg !841
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !842
  %4 = load i64, i64* %timeout1, align 8, !dbg !843
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !844
  call void @encodeTimeoutKey(i8* %arraydecay, i64 %4, %struct.client* %5), !dbg !845
  %6 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 67), align 8, !dbg !846
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !848
  %call = call i32 @raxTryInsert(%struct.rax* %6, i8* %arraydecay4, i64 16, i8* null, i8** null), !dbg !849
  %tobool = icmp ne i32 %call, 0, !dbg !849
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !850

if.then5:                                         ; preds = %if.end
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !851
  %flags = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 1, !dbg !852
  %8 = load i64, i64* %flags, align 8, !dbg !853
  %or = or i64 %8, 274877906944, !dbg !853
  store i64 %or, i64* %flags, align 8, !dbg !853
  br label %if.end6, !dbg !851

if.end6:                                          ; preds = %if.then, %if.then5, %if.end
  ret void, !dbg !854
}

declare dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @removeClientFromTimeoutTable(%struct.client* %c) #0 !dbg !855 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %timeout = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !858
  %flags = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 1, !dbg !860
  %1 = load i64, i64* %flags, align 8, !dbg !860
  %and = and i64 %1, 274877906944, !dbg !861
  %tobool = icmp ne i64 %and, 0, !dbg !861
  br i1 %tobool, label %if.end, label %if.then, !dbg !862

if.then:                                          ; preds = %entry
  br label %return, !dbg !863

if.end:                                           ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !864
  %flags1 = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !865
  %3 = load i64, i64* %flags1, align 8, !dbg !866
  %and2 = and i64 %3, -274877906945, !dbg !866
  store i64 %and2, i64* %flags1, align 8, !dbg !866
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !867, metadata !DIExpression()), !dbg !868
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !869
  %bpop = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 53, !dbg !870
  %timeout3 = getelementptr inbounds %struct.blockingState, %struct.blockingState* %bpop, i32 0, i32 1, !dbg !871
  %5 = load i64, i64* %timeout3, align 8, !dbg !871
  store i64 %5, i64* %timeout, align 8, !dbg !868
  call void @llvm.dbg.declare(metadata [16 x i8]* %buf, metadata !872, metadata !DIExpression()), !dbg !873
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !874
  %6 = load i64, i64* %timeout, align 8, !dbg !875
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !876
  call void @encodeTimeoutKey(i8* %arraydecay, i64 %6, %struct.client* %7), !dbg !877
  %8 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 67), align 8, !dbg !878
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0, !dbg !879
  %call = call i32 @raxRemove(%struct.rax* %8, i8* %arraydecay4, i64 16, i8** null), !dbg !880
  br label %return, !dbg !881

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !881
}

declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @handleBlockedClientsTimeout() #0 !dbg !882 {
entry:
  %now = alloca i64, align 8
  %ri = alloca %struct.raxIterator, align 8
  %timeout = alloca i64, align 8
  %c = alloca %struct.client*, align 8
  %0 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 67), align 8, !dbg !885
  %call = call i64 @raxSize(%struct.rax* %0), !dbg !887
  %cmp = icmp eq i64 %call, 0, !dbg !888
  br i1 %cmp, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  br label %return, !dbg !890

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %now, metadata !891, metadata !DIExpression()), !dbg !892
  %call1 = call i64 @mstime(), !dbg !893
  store i64 %call1, i64* %now, align 8, !dbg !892
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !894, metadata !DIExpression()), !dbg !928
  %1 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 67), align 8, !dbg !929
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %1), !dbg !930
  %call2 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 0), !dbg !931
  br label %while.cond, !dbg !932

while.cond:                                       ; preds = %if.end6, %if.end
  %call3 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !933
  %tobool = icmp ne i32 %call3, 0, !dbg !932
  br i1 %tobool, label %while.body, label %while.end, !dbg !932

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !934, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !937, metadata !DIExpression()), !dbg !938
  %key = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !939
  %2 = load i8*, i8** %key, align 8, !dbg !939
  call void @decodeTimeoutKey(i8* %2, i64* %timeout, %struct.client** %c), !dbg !940
  %3 = load i64, i64* %timeout, align 8, !dbg !941
  %4 = load i64, i64* %now, align 8, !dbg !943
  %cmp4 = icmp uge i64 %3, %4, !dbg !944
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !945

if.then5:                                         ; preds = %while.body
  br label %while.end, !dbg !946

if.end6:                                          ; preds = %while.body
  %5 = load %struct.client*, %struct.client** %c, align 8, !dbg !947
  %flags = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !948
  %6 = load i64, i64* %flags, align 8, !dbg !949
  %and = and i64 %6, -274877906945, !dbg !949
  store i64 %and, i64* %flags, align 8, !dbg !949
  %7 = load %struct.client*, %struct.client** %c, align 8, !dbg !950
  %8 = load i64, i64* %now, align 8, !dbg !951
  %call7 = call i32 @checkBlockedClientTimeout(%struct.client* %7, i64 %8), !dbg !952
  %9 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 67), align 8, !dbg !953
  %key8 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 2, !dbg !954
  %10 = load i8*, i8** %key8, align 8, !dbg !954
  %key_len = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 4, !dbg !955
  %11 = load i64, i64* %key_len, align 8, !dbg !955
  %call9 = call i32 @raxRemove(%struct.rax* %9, i8* %10, i64 %11, i8** null), !dbg !956
  %call10 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* null, i64 0), !dbg !957
  br label %while.cond, !dbg !932, !llvm.loop !958

while.end:                                        ; preds = %if.then5, %while.cond
  call void @raxStop(%struct.raxIterator* %ri), !dbg !961
  br label %return, !dbg !962

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !962
}

declare dso_local i64 @raxSize(%struct.rax*) #2

declare dso_local i64 @mstime() #2

declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) #2

declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) #2

declare dso_local i32 @raxNext(%struct.raxIterator*) #2

declare dso_local void @raxStop(%struct.raxIterator*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getTimeoutFromObjectOrReply(%struct.client* %c, %struct.redisObject* %object, i64* %timeout, i32 %unit) #0 !dbg !963 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %object.addr = alloca %struct.redisObject*, align 8
  %timeout.addr = alloca i64*, align 8
  %unit.addr = alloca i32, align 4
  %tval = alloca i64, align 8
  %ftval = alloca x86_fp80, align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store %struct.redisObject* %object, %struct.redisObject** %object.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %object.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i64* %timeout, i64** %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %timeout.addr, metadata !971, metadata !DIExpression()), !dbg !972
  store i32 %unit, i32* %unit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unit.addr, metadata !973, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.declare(metadata i64* %tval, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata x86_fp80* %ftval, metadata !977, metadata !DIExpression()), !dbg !979
  %0 = load i32, i32* %unit.addr, align 4, !dbg !980
  %cmp = icmp eq i32 %0, 0, !dbg !982
  br i1 %cmp, label %if.then, label %if.else, !dbg !983

if.then:                                          ; preds = %entry
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !984
  %2 = load %struct.redisObject*, %struct.redisObject** %object.addr, align 8, !dbg !987
  %call = call i32 @getLongDoubleFromObjectOrReply(%struct.client* %1, %struct.redisObject* %2, x86_fp80* %ftval, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0)), !dbg !988
  %cmp1 = icmp ne i32 %call, 0, !dbg !989
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !990

if.then2:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4, !dbg !991
  br label %return, !dbg !991

if.end:                                           ; preds = %if.then
  %3 = load x86_fp80, x86_fp80* %ftval, align 16, !dbg !992
  %mul = fmul x86_fp80 %3, 0xK4008FA00000000000000, !dbg !993
  %4 = call x86_fp80 @llvm.ceil.f80(x86_fp80 %mul), !dbg !994
  %conv = fptosi x86_fp80 %4 to i64, !dbg !995
  store i64 %conv, i64* %tval, align 8, !dbg !996
  br label %if.end8, !dbg !997

if.else:                                          ; preds = %entry
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !998
  %6 = load %struct.redisObject*, %struct.redisObject** %object.addr, align 8, !dbg !1001
  %call3 = call i32 @getLongLongFromObjectOrReply(%struct.client* %5, %struct.redisObject* %6, i64* %tval, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0)), !dbg !1002
  %cmp4 = icmp ne i32 %call3, 0, !dbg !1003
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1004

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4, !dbg !1005
  br label %return, !dbg !1005

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %7 = load i64, i64* %tval, align 8, !dbg !1006
  %cmp9 = icmp slt i64 %7, 0, !dbg !1008
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !1009

if.then11:                                        ; preds = %if.end8
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1010
  call void @addReplyError(%struct.client* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)), !dbg !1012
  store i32 -1, i32* %retval, align 4, !dbg !1013
  br label %return, !dbg !1013

if.end12:                                         ; preds = %if.end8
  %9 = load i64, i64* %tval, align 8, !dbg !1014
  %cmp13 = icmp sgt i64 %9, 0, !dbg !1016
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !1017

if.then15:                                        ; preds = %if.end12
  %call16 = call i64 @mstime(), !dbg !1018
  %10 = load i64, i64* %tval, align 8, !dbg !1020
  %add = add nsw i64 %10, %call16, !dbg !1020
  store i64 %add, i64* %tval, align 8, !dbg !1020
  br label %if.end17, !dbg !1021

if.end17:                                         ; preds = %if.then15, %if.end12
  %11 = load i64, i64* %tval, align 8, !dbg !1022
  %12 = load i64*, i64** %timeout.addr, align 8, !dbg !1023
  store i64 %11, i64* %12, align 8, !dbg !1024
  store i32 0, i32* %retval, align 4, !dbg !1025
  br label %return, !dbg !1025

return:                                           ; preds = %if.end17, %if.then11, %if.then6, %if.then2
  %13 = load i32, i32* %retval, align 4, !dbg !1026
  ret i32 %13, !dbg !1026
}

declare dso_local i32 @getLongDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, x86_fp80*, i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.ceil.f80(x86_fp80) #1

declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #2

declare dso_local void @addReplyError(%struct.client*, i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "timeout.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!66 = distinct !DISubprogram(name: "checkBlockedClientTimeout", scope: !1, file: !1, line: 39, type: !67, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !70, !616}
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !72)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !73)
!73 = !{!74, !80, !81, !232, !233, !362, !372, !375, !376, !377, !378, !380, !381, !382, !383, !384, !535, !536, !537, !549, !550, !551, !552, !553, !555, !556, !557, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !587, !588, !589, !590, !591, !609, !610, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !646, !647, !648, !649, !669, !670, !671, !672, !679, !680, !681, !682, !683, !684, !685}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !72, file: !14, line: 1090, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !76, line: 27, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !78, line: 45, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !14, line: 1091, baseType: !75, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !72, file: !14, line: 1092, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !85)
!85 = !{!86, !221, !223, !225, !226, !227, !228, !229, !230, !231}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !4, line: 78, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !90)
!90 = !{!91, !153, !165, !173, !184, !188, !189, !193, !197, !198, !202, !206, !215, !216, !217}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !89, file: !4, line: 60, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !69, !58, !69}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !97, line: 99, size: 640, elements: !98)
!97 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!98 = !{!99, !100, !101, !102, !113, !120, !144, !145, !146, !151, !152}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !96, file: !97, line: 100, baseType: !69, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !96, file: !97, line: 101, baseType: !69, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !96, file: !97, line: 102, baseType: !59, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !96, file: !97, line: 103, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !97, line: 77, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !97, line: 72, size: 256, elements: !106)
!106 = !{!107, !108, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !105, file: !97, line: 73, baseType: !69, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !105, file: !97, line: 74, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !97, line: 66, baseType: !93)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !105, file: !97, line: 75, baseType: !109, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !105, file: !97, line: 76, baseType: !58, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !96, file: !97, line: 104, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !97, line: 96, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !97, line: 93, size: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !116, file: !97, line: 94, baseType: !69, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !116, file: !97, line: 95, baseType: !69, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !96, file: !97, line: 105, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !97, line: 90, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !97, line: 80, size: 512, elements: !124)
!124 = !{!125, !126, !129, !134, !139, !140, !142, !143}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !97, line: 81, baseType: !59, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !123, file: !97, line: 82, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !128, line: 22, baseType: !75)
!128 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !123, file: !97, line: 83, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !97, line: 67, baseType: !132)
!132 = !DISubroutineType(types: !133)
!133 = !{!69, !95, !59, !58}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !123, file: !97, line: 84, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !97, line: 68, baseType: !137)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !95, !58}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !123, file: !97, line: 85, baseType: !58, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !97, line: 86, baseType: !141, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !123, file: !97, line: 87, baseType: !141, size: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !123, file: !97, line: 88, baseType: !69, size: 32, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !96, file: !97, line: 106, baseType: !69, size: 32, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !96, file: !97, line: 107, baseType: !58, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !96, file: !97, line: 108, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !97, line: 69, baseType: !149)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !95}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !96, file: !97, line: 109, baseType: !147, size: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !97, line: 110, baseType: !69, size: 32, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !89, file: !4, line: 61, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!69, !157, !158, !69, !158, !161}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !157}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !89, file: !4, line: 62, baseType: !166, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!69, !157, !169, !171}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 46, baseType: !79)
!172 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !89, file: !4, line: 63, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!69, !157, !177, !69}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !180, line: 26, size: 128, elements: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !179, file: !180, line: 28, baseType: !58, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !179, file: !180, line: 29, baseType: !171, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !89, file: !4, line: 64, baseType: !185, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!69, !157, !58, !171}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !89, file: !4, line: 65, baseType: !162, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !89, file: !4, line: 66, baseType: !190, size: 64, offset: 384)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!69, !157, !161}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !89, file: !4, line: 67, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!69, !157, !161, !69}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !89, file: !4, line: 68, baseType: !190, size: 64, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !89, file: !4, line: 69, baseType: !199, size: 64, offset: 576)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!158, !157}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !89, file: !4, line: 70, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!69, !157, !158, !69, !59}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !89, file: !4, line: 71, baseType: !207, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !157, !214, !210, !59}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !211, line: 108, baseType: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !78, line: 194, baseType: !213)
!213 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !89, file: !4, line: 72, baseType: !207, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !89, file: !4, line: 73, baseType: !207, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !89, file: !4, line: 74, baseType: !218, size: 64, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!69, !157}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !84, file: !4, line: 79, baseType: !222, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !4, line: 80, baseType: !224, size: 16, offset: 96)
!224 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !84, file: !4, line: 81, baseType: !224, size: 16, offset: 112)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !84, file: !4, line: 82, baseType: !69, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !84, file: !4, line: 83, baseType: !58, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !84, file: !4, line: 84, baseType: !161, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !84, file: !4, line: 85, baseType: !161, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !84, file: !4, line: 86, baseType: !161, size: 64, offset: 384)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !84, file: !4, line: 87, baseType: !69, size: 32, offset: 448)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !72, file: !14, line: 1093, baseType: !69, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !72, file: !14, line: 1094, baseType: !234, size: 64, offset: 256)
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
!252 = !{!75, !169}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !247, file: !241, line: 65, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!58, !239, !169}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !247, file: !241, line: 66, baseType: !254, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !247, file: !241, line: 67, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!69, !239, !169, !169}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !247, file: !241, line: 68, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !239, !58}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !247, file: !241, line: 69, baseType: !263, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !247, file: !241, line: 70, baseType: !268, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!69, !171, !271}
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
!288 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !285, file: !241, line: 51, baseType: !75, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !285, file: !241, line: 52, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !291, line: 27, baseType: !292)
!291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !78, line: 44, baseType: !213)
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
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !300)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !242, file: !241, line: 85, baseType: !213, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !242, file: !241, line: 88, baseType: !306, size: 16, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !291, line: 25, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !78, line: 39, baseType: !224)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !242, file: !241, line: 89, baseType: !309, size: 16, offset: 400)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 16, elements: !300)
!310 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !236, file: !14, line: 924, baseType: !239, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !236, file: !14, line: 925, baseType: !239, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !236, file: !14, line: 926, baseType: !239, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !236, file: !14, line: 927, baseType: !239, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !14, line: 928, baseType: !69, size: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !236, file: !14, line: 929, baseType: !59, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !236, file: !14, line: 930, baseType: !79, size: 64, offset: 448)
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
!345 = !{!69, !58, !58}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !322, file: !321, line: 53, baseType: !79, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !236, file: !14, line: 932, baseType: !348, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !351, line: 158, size: 2097152, elements: !352)
!351 = !DIFile(filename: "./cluster.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "by_slot", scope: !350, file: !351, line: 159, baseType: !354, size: 2097152)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2097152, elements: !360)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "slotToKeys", file: !351, line: 155, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotToKeys", file: !351, line: 152, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !356, file: !351, line: 153, baseType: !75, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !356, file: !351, line: 154, baseType: !279, size: 64, offset: 64)
!360 = !{!361}
!361 = !DISubrange(count: 16384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !14, line: 1095, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !365, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !365, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !365, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !365, file: !14, line: 860, baseType: !69, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !365, file: !14, line: 861, baseType: !58, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !72, file: !14, line: 1096, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !374, line: 43, baseType: !214)
!374 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !72, file: !14, line: 1097, baseType: !171, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !72, file: !14, line: 1098, baseType: !171, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !72, file: !14, line: 1099, baseType: !69, size: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !72, file: !14, line: 1100, baseType: !379, size: 64, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !72, file: !14, line: 1101, baseType: !69, size: 32, offset: 704)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !72, file: !14, line: 1102, baseType: !69, size: 32, offset: 736)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !72, file: !14, line: 1103, baseType: !379, size: 64, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !72, file: !14, line: 1104, baseType: !171, size: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !72, file: !14, line: 1105, baseType: !385, size: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !397, !404, !406, !411, !412, !413, !414, !454, !476, !477, !492, !493, !494, !495, !496, !497, !498, !522, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !386, file: !14, line: 2235, baseType: !158, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !386, file: !14, line: 2237, baseType: !158, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !386, file: !14, line: 2238, baseType: !158, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !386, file: !14, line: 2239, baseType: !158, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !386, file: !14, line: 2240, baseType: !69, size: 32, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !386, file: !14, line: 2241, baseType: !158, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !386, file: !14, line: 2242, baseType: !158, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !386, file: !14, line: 2243, baseType: !396, size: 32, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !386, file: !14, line: 2244, baseType: !398, size: 64, offset: 512)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !400, file: !14, line: 2111, baseType: !158, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !400, file: !14, line: 2112, baseType: !158, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !386, file: !14, line: 2245, baseType: !405, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !386, file: !14, line: 2246, baseType: !407, size: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !409)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !70}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !386, file: !14, line: 2247, baseType: !69, size: 32, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !14, line: 2248, baseType: !75, size: 64, offset: 768)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !386, file: !14, line: 2249, baseType: !75, size: 64, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !386, file: !14, line: 2250, baseType: !415, size: 1792, offset: 896)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1792, elements: !452)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !418)
!418 = !{!419, !420, !421, !423, !435, !437}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !417, file: !14, line: 2006, baseType: !158, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !14, line: 2007, baseType: !75, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !417, file: !14, line: 2008, baseType: !422, size: 32, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !417, file: !14, line: 2022, baseType: !424, size: 128, offset: 192)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !14, line: 2009, size: 128, elements: !425)
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !424, file: !14, line: 2013, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !14, line: 2010, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !427, file: !14, line: 2012, baseType: !69, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !424, file: !14, line: 2021, baseType: !431, size: 128)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !14, line: 2014, size: 128, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !431, file: !14, line: 2016, baseType: !158, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !431, file: !14, line: 2020, baseType: !69, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !417, file: !14, line: 2023, baseType: !436, size: 32, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !417, file: !14, line: 2047, baseType: !438, size: 96, offset: 352)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !14, line: 2024, size: 96, elements: !439)
!439 = !{!440, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !438, file: !14, line: 2037, baseType: !441, size: 96)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !14, line: 2027, size: 96, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !441, file: !14, line: 2031, baseType: !69, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !441, file: !14, line: 2033, baseType: !69, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !441, file: !14, line: 2036, baseType: !69, size: 32, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !438, file: !14, line: 2046, baseType: !447, size: 96)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !14, line: 2038, size: 96, elements: !448)
!448 = !{!449, !450, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !447, file: !14, line: 2040, baseType: !69, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !447, file: !14, line: 2043, baseType: !69, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !447, file: !14, line: 2045, baseType: !69, size: 32, offset: 64)
!452 = !{!453}
!453 = !DISubrange(count: 4)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !386, file: !14, line: 2253, baseType: !455, size: 64, offset: 2688)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !457)
!457 = !DISubroutineType(types: !458)
!458 = !{!69, !385, !379, !69, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !462)
!462 = !{!463, !472, !474, !475}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !461, file: !14, line: 1962, baseType: !464, size: 16384)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 16384, elements: !470)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !466, file: !14, line: 1952, baseType: !69, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !14, line: 1953, baseType: !69, size: 32, offset: 32)
!470 = !{!471}
!471 = !DISubrange(count: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !461, file: !14, line: 1963, baseType: !473, size: 64, offset: 16384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !461, file: !14, line: 1964, baseType: !69, size: 32, offset: 16448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !461, file: !14, line: 1965, baseType: !69, size: 32, offset: 16480)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !386, file: !14, line: 2255, baseType: !385, size: 64, offset: 2752)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !386, file: !14, line: 2257, baseType: !478, size: 64, offset: 2816)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !480)
!480 = !{!481, !482, !484, !485, !486, !487, !488, !489, !490, !491}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !479, file: !14, line: 2072, baseType: !158, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !14, line: 2073, baseType: !483, size: 32, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !479, file: !14, line: 2074, baseType: !69, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !479, file: !14, line: 2075, baseType: !158, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !479, file: !14, line: 2076, baseType: !158, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !479, file: !14, line: 2077, baseType: !158, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !14, line: 2078, baseType: !69, size: 32, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !479, file: !14, line: 2079, baseType: !158, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !479, file: !14, line: 2080, baseType: !478, size: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !479, file: !14, line: 2082, baseType: !69, size: 32, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !386, file: !14, line: 2260, baseType: !59, size: 64, offset: 2880)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !386, file: !14, line: 2260, baseType: !59, size: 64, offset: 2944)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !386, file: !14, line: 2260, baseType: !59, size: 64, offset: 3008)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !386, file: !14, line: 2260, baseType: !59, size: 64, offset: 3072)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !386, file: !14, line: 2261, baseType: !69, size: 32, offset: 3136)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !386, file: !14, line: 2266, baseType: !373, size: 64, offset: 3200)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !386, file: !14, line: 2267, baseType: !499, size: 64, offset: 3264)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !501, line: 17, size: 832, elements: !502)
!501 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!502 = !{!503, !504, !505, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !500, file: !501, line: 19, baseType: !290, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !500, file: !501, line: 20, baseType: !290, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !500, file: !501, line: 21, baseType: !506, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !291, line: 26, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !78, line: 41, baseType: !69)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !500, file: !501, line: 22, baseType: !506, size: 32, offset: 160)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !500, file: !501, line: 23, baseType: !506, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !500, file: !501, line: 24, baseType: !506, size: 32, offset: 224)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !500, file: !501, line: 25, baseType: !290, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !500, file: !501, line: 26, baseType: !506, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !500, file: !501, line: 27, baseType: !506, size: 32, offset: 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !500, file: !501, line: 28, baseType: !290, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !500, file: !501, line: 29, baseType: !290, size: 64, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !500, file: !501, line: 30, baseType: !506, size: 32, offset: 512)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !500, file: !501, line: 31, baseType: !271, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !500, file: !501, line: 32, baseType: !506, size: 32, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !500, file: !501, line: 33, baseType: !290, size: 64, offset: 704)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !500, file: !501, line: 34, baseType: !521, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !386, file: !14, line: 2268, baseType: !523, size: 64, offset: 3328)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !386, file: !14, line: 2269, baseType: !416, size: 448, offset: 3392)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !386, file: !14, line: 2273, baseType: !69, size: 32, offset: 3840)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !386, file: !14, line: 2274, baseType: !69, size: 32, offset: 3872)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !386, file: !14, line: 2275, baseType: !69, size: 32, offset: 3904)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !386, file: !14, line: 2276, baseType: !69, size: 32, offset: 3936)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !386, file: !14, line: 2277, baseType: !69, size: 32, offset: 3968)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !386, file: !14, line: 2278, baseType: !239, size: 64, offset: 4032)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !386, file: !14, line: 2280, baseType: !385, size: 64, offset: 4096)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !386, file: !14, line: 2281, baseType: !533, size: 64, offset: 4160)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !72, file: !14, line: 1105, baseType: !385, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !72, file: !14, line: 1106, baseType: !385, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !72, file: !14, line: 1109, baseType: !538, size: 64, offset: 1088)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !541)
!541 = !{!542, !543, !546, !547, !548}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !14, line: 1050, baseType: !373, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !14, line: 1051, baseType: !544, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !76, line: 26, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !78, line: 42, baseType: !5)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !540, file: !14, line: 1052, baseType: !319, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !540, file: !14, line: 1053, baseType: !319, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !540, file: !14, line: 1056, baseType: !363, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !72, file: !14, line: 1112, baseType: !69, size: 32, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !72, file: !14, line: 1113, baseType: !69, size: 32, offset: 1184)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !72, file: !14, line: 1114, baseType: !213, size: 64, offset: 1216)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !72, file: !14, line: 1115, baseType: !319, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !72, file: !14, line: 1116, baseType: !554, size: 64, offset: 1344)
!554 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !72, file: !14, line: 1117, baseType: !319, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !72, file: !14, line: 1118, baseType: !171, size: 64, offset: 1472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !72, file: !14, line: 1120, baseType: !558, size: 64, offset: 1536)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !559, line: 10, baseType: !560)
!559 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !78, line: 160, baseType: !213)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !72, file: !14, line: 1121, baseType: !213, size: 64, offset: 1600)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !72, file: !14, line: 1122, baseType: !69, size: 32, offset: 1664)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !72, file: !14, line: 1123, baseType: !279, size: 64, offset: 1728)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !72, file: !14, line: 1124, baseType: !558, size: 64, offset: 1792)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !72, file: !14, line: 1125, baseType: !558, size: 64, offset: 1856)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !72, file: !14, line: 1126, baseType: !69, size: 32, offset: 1920)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !72, file: !14, line: 1127, baseType: !69, size: 32, offset: 1952)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !72, file: !14, line: 1128, baseType: !69, size: 32, offset: 1984)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !72, file: !14, line: 1129, baseType: !69, size: 32, offset: 2016)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !72, file: !14, line: 1130, baseType: !571, size: 64, offset: 2048)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !572, line: 58, baseType: !573)
!572 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !78, line: 153, baseType: !213)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !72, file: !14, line: 1131, baseType: !571, size: 64, offset: 2112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !72, file: !14, line: 1132, baseType: !373, size: 64, offset: 2176)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !72, file: !14, line: 1133, baseType: !59, size: 64, offset: 2240)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !72, file: !14, line: 1134, baseType: !59, size: 64, offset: 2304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !72, file: !14, line: 1135, baseType: !59, size: 64, offset: 2368)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !72, file: !14, line: 1136, baseType: !59, size: 64, offset: 2432)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !72, file: !14, line: 1137, baseType: !59, size: 64, offset: 2496)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !72, file: !14, line: 1138, baseType: !59, size: 64, offset: 2560)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !72, file: !14, line: 1139, baseType: !59, size: 64, offset: 2624)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !72, file: !14, line: 1142, baseType: !584, size: 328, offset: 2688)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 328, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 41)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !72, file: !14, line: 1143, baseType: !69, size: 32, offset: 3040)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !72, file: !14, line: 1144, baseType: !214, size: 64, offset: 3072)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !72, file: !14, line: 1145, baseType: !69, size: 32, offset: 3136)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !72, file: !14, line: 1146, baseType: !69, size: 32, offset: 3168)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !72, file: !14, line: 1147, baseType: !592, size: 320, offset: 3200)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !594)
!594 = !{!595, !604, !605, !606, !607, !608}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !593, file: !14, line: 957, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !598, file: !14, line: 950, baseType: !379, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !598, file: !14, line: 951, baseType: !69, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !598, file: !14, line: 952, baseType: !69, size: 32, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !598, file: !14, line: 953, baseType: !385, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !593, file: !14, line: 958, baseType: !69, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !593, file: !14, line: 959, baseType: !69, size: 32, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !593, file: !14, line: 962, baseType: !69, size: 32, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !593, file: !14, line: 965, baseType: !171, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !593, file: !14, line: 966, baseType: !69, size: 32, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !72, file: !14, line: 1148, baseType: !69, size: 32, offset: 3520)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !72, file: !14, line: 1149, baseType: !611, size: 704, offset: 3584)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !613)
!613 = !{!614, !615, !617, !618, !619, !624, !625, !626, !627, !628, !629, !630}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !612, file: !14, line: 973, baseType: !213, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !612, file: !14, line: 974, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !59)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !612, file: !14, line: 978, baseType: !239, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !612, file: !14, line: 980, baseType: !363, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !612, file: !14, line: 985, baseType: !620, size: 64, offset: 256)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !620, file: !14, line: 983, baseType: !69, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !620, file: !14, line: 984, baseType: !69, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !612, file: !14, line: 990, baseType: !171, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !612, file: !14, line: 991, baseType: !363, size: 64, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !612, file: !14, line: 992, baseType: !363, size: 64, offset: 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !612, file: !14, line: 993, baseType: !69, size: 32, offset: 512)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !612, file: !14, line: 996, baseType: !69, size: 32, offset: 544)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !612, file: !14, line: 997, baseType: !59, size: 64, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !612, file: !14, line: 1000, baseType: !58, size: 64, offset: 640)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !72, file: !14, line: 1150, baseType: !59, size: 64, offset: 4288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !72, file: !14, line: 1151, baseType: !319, size: 64, offset: 4352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !72, file: !14, line: 1152, baseType: !239, size: 64, offset: 4416)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !72, file: !14, line: 1153, baseType: !319, size: 64, offset: 4480)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !72, file: !14, line: 1154, baseType: !239, size: 64, offset: 4544)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !72, file: !14, line: 1155, baseType: !373, size: 64, offset: 4608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !72, file: !14, line: 1156, baseType: !373, size: 64, offset: 4672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !72, file: !14, line: 1157, baseType: !325, size: 64, offset: 4736)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !72, file: !14, line: 1158, baseType: !325, size: 64, offset: 4800)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !72, file: !14, line: 1159, baseType: !325, size: 64, offset: 4864)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !72, file: !14, line: 1160, baseType: !642, size: 64, offset: 4928)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !75, !58}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !72, file: !14, line: 1163, baseType: !58, size: 64, offset: 4992)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !72, file: !14, line: 1166, baseType: !58, size: 64, offset: 5056)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !72, file: !14, line: 1173, baseType: !75, size: 64, offset: 5120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !72, file: !14, line: 1174, baseType: !650, size: 64, offset: 5184)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !652, line: 137, baseType: !653)
!652 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !652, line: 133, size: 192, elements: !654)
!654 = !{!655, !667, !668}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !653, file: !652, line: 134, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !652, line: 131, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !652, line: 98, size: 32, elements: !659)
!659 = !{!660, !661, !662, !663, !664}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !658, file: !652, line: 99, baseType: !544, size: 1, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !658, file: !652, line: 100, baseType: !544, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !658, file: !652, line: 101, baseType: !544, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !658, file: !652, line: 102, baseType: !544, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !658, file: !652, line: 130, baseType: !665, offset: 32)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, elements: !298)
!666 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !653, file: !652, line: 135, baseType: !75, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !653, file: !652, line: 136, baseType: !75, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !72, file: !14, line: 1182, baseType: !171, size: 64, offset: 5248)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !72, file: !14, line: 1183, baseType: !69, size: 32, offset: 5312)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !72, file: !14, line: 1185, baseType: !325, size: 64, offset: 5376)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !72, file: !14, line: 1186, baseType: !673, size: 64, offset: 5440)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !675, file: !14, line: 1085, baseType: !319, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !675, file: !14, line: 1086, baseType: !171, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !72, file: !14, line: 1188, baseType: !325, size: 64, offset: 5504)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !72, file: !14, line: 1190, baseType: !171, size: 64, offset: 5568)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !72, file: !14, line: 1194, baseType: !171, size: 64, offset: 5632)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !72, file: !14, line: 1195, baseType: !616, size: 64, offset: 5696)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !72, file: !14, line: 1196, baseType: !69, size: 32, offset: 5760)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !72, file: !14, line: 1197, baseType: !171, size: 64, offset: 5824)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !72, file: !14, line: 1198, baseType: !214, size: 64, offset: 5888)
!686 = !{}
!687 = !DILocalVariable(name: "c", arg: 1, scope: !66, file: !1, line: 39, type: !70)
!688 = !DILocation(line: 39, column: 39, scope: !66)
!689 = !DILocalVariable(name: "now", arg: 2, scope: !66, file: !1, line: 39, type: !616)
!690 = !DILocation(line: 39, column: 51, scope: !66)
!691 = !DILocation(line: 40, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !66, file: !1, line: 40, column: 9)
!693 = !DILocation(line: 40, column: 12, scope: !692)
!694 = !DILocation(line: 40, column: 18, scope: !692)
!695 = !DILocation(line: 40, column: 35, scope: !692)
!696 = !DILocation(line: 41, column: 9, scope: !692)
!697 = !DILocation(line: 41, column: 12, scope: !692)
!698 = !DILocation(line: 41, column: 17, scope: !692)
!699 = !DILocation(line: 41, column: 25, scope: !692)
!700 = !DILocation(line: 42, column: 9, scope: !692)
!701 = !DILocation(line: 42, column: 12, scope: !692)
!702 = !DILocation(line: 42, column: 15, scope: !692)
!703 = !DILocation(line: 42, column: 20, scope: !692)
!704 = !DILocation(line: 42, column: 30, scope: !692)
!705 = !DILocation(line: 42, column: 28, scope: !692)
!706 = !DILocation(line: 40, column: 9, scope: !66)
!707 = !DILocation(line: 45, column: 38, scope: !708)
!708 = distinct !DILexicalBlock(scope: !692, file: !1, line: 43, column: 5)
!709 = !DILocation(line: 45, column: 9, scope: !708)
!710 = !DILocation(line: 46, column: 23, scope: !708)
!711 = !DILocation(line: 46, column: 9, scope: !708)
!712 = !DILocation(line: 47, column: 9, scope: !708)
!713 = !DILocation(line: 49, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !692, file: !1, line: 48, column: 12)
!715 = !DILocation(line: 51, column: 1, scope: !66)
!716 = distinct !DISubprogram(name: "clientsCronHandleTimeout", scope: !1, file: !1, line: 57, type: !67, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!717 = !DILocalVariable(name: "c", arg: 1, scope: !716, file: !1, line: 57, type: !70)
!718 = !DILocation(line: 57, column: 38, scope: !716)
!719 = !DILocalVariable(name: "now_ms", arg: 2, scope: !716, file: !1, line: 57, type: !616)
!720 = !DILocation(line: 57, column: 50, scope: !716)
!721 = !DILocalVariable(name: "now", scope: !716, file: !1, line: 58, type: !558)
!722 = !DILocation(line: 58, column: 12, scope: !716)
!723 = !DILocation(line: 58, column: 18, scope: !716)
!724 = !DILocation(line: 58, column: 24, scope: !716)
!725 = !DILocation(line: 60, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !1, line: 60, column: 9)
!727 = !DILocation(line: 60, column: 9, scope: !726)
!728 = !DILocation(line: 60, column: 28, scope: !726)
!729 = !DILocation(line: 62, column: 11, scope: !726)
!730 = !DILocation(line: 62, column: 14, scope: !726)
!731 = !DILocation(line: 62, column: 20, scope: !726)
!732 = !DILocation(line: 62, column: 36, scope: !726)
!733 = !DILocation(line: 63, column: 25, scope: !726)
!734 = !DILocation(line: 63, column: 10, scope: !726)
!735 = !DILocation(line: 63, column: 28, scope: !726)
!736 = !DILocation(line: 64, column: 11, scope: !726)
!737 = !DILocation(line: 64, column: 14, scope: !726)
!738 = !DILocation(line: 64, column: 20, scope: !726)
!739 = !DILocation(line: 64, column: 38, scope: !726)
!740 = !DILocation(line: 65, column: 11, scope: !726)
!741 = !DILocation(line: 65, column: 14, scope: !726)
!742 = !DILocation(line: 65, column: 20, scope: !726)
!743 = !DILocation(line: 65, column: 37, scope: !726)
!744 = !DILocation(line: 66, column: 10, scope: !726)
!745 = !DILocation(line: 66, column: 16, scope: !726)
!746 = !DILocation(line: 66, column: 19, scope: !726)
!747 = !DILocation(line: 66, column: 14, scope: !726)
!748 = !DILocation(line: 66, column: 44, scope: !726)
!749 = !DILocation(line: 66, column: 37, scope: !726)
!750 = !DILocation(line: 66, column: 35, scope: !726)
!751 = !DILocation(line: 60, column: 9, scope: !716)
!752 = !DILocation(line: 68, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !726, file: !1, line: 67, column: 5)
!754 = !DILocation(line: 68, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 68, column: 9)
!756 = distinct !DILexicalBlock(scope: !753, file: !1, line: 68, column: 9)
!757 = !DILocation(line: 68, column: 9, scope: !756)
!758 = !DILocation(line: 69, column: 20, scope: !753)
!759 = !DILocation(line: 69, column: 9, scope: !753)
!760 = !DILocation(line: 70, column: 9, scope: !753)
!761 = !DILocation(line: 71, column: 16, scope: !762)
!762 = distinct !DILexicalBlock(scope: !726, file: !1, line: 71, column: 16)
!763 = !DILocation(line: 71, column: 19, scope: !762)
!764 = !DILocation(line: 71, column: 25, scope: !762)
!765 = !DILocation(line: 71, column: 16, scope: !726)
!766 = !DILocation(line: 74, column: 20, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 74, column: 13)
!768 = distinct !DILexicalBlock(scope: !762, file: !1, line: 71, column: 43)
!769 = !DILocation(line: 74, column: 13, scope: !767)
!770 = !DILocation(line: 74, column: 13, scope: !768)
!771 = !DILocation(line: 75, column: 54, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 75, column: 17)
!773 = distinct !DILexicalBlock(scope: !767, file: !1, line: 74, column: 37)
!774 = !DILocation(line: 75, column: 17, scope: !772)
!775 = !DILocation(line: 75, column: 17, scope: !773)
!776 = !DILocation(line: 76, column: 31, scope: !772)
!777 = !DILocation(line: 76, column: 17, scope: !772)
!778 = !DILocation(line: 77, column: 9, scope: !773)
!779 = !DILocation(line: 78, column: 5, scope: !768)
!780 = !DILocation(line: 79, column: 5, scope: !716)
!781 = !DILocation(line: 80, column: 1, scope: !716)
!782 = distinct !DISubprogram(name: "encodeTimeoutKey", scope: !1, file: !1, line: 98, type: !783, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785, !75, !70}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!786 = !DILocalVariable(name: "buf", arg: 1, scope: !782, file: !1, line: 98, type: !785)
!787 = !DILocation(line: 98, column: 38, scope: !782)
!788 = !DILocalVariable(name: "timeout", arg: 2, scope: !782, file: !1, line: 98, type: !75)
!789 = !DILocation(line: 98, column: 52, scope: !782)
!790 = !DILocalVariable(name: "c", arg: 3, scope: !782, file: !1, line: 98, type: !70)
!791 = !DILocation(line: 98, column: 69, scope: !782)
!792 = !DILocation(line: 99, column: 15, scope: !782)
!793 = !DILocation(line: 99, column: 13, scope: !782)
!794 = !DILocation(line: 100, column: 12, scope: !782)
!795 = !DILocation(line: 100, column: 5, scope: !782)
!796 = !DILocation(line: 101, column: 12, scope: !782)
!797 = !DILocation(line: 101, column: 15, scope: !782)
!798 = !DILocation(line: 101, column: 5, scope: !782)
!799 = !DILocation(line: 103, column: 1, scope: !782)
!800 = distinct !DISubprogram(name: "decodeTimeoutKey", scope: !1, file: !1, line: 107, type: !801, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !785, !803, !804}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!805 = !DILocalVariable(name: "buf", arg: 1, scope: !800, file: !1, line: 107, type: !785)
!806 = !DILocation(line: 107, column: 38, scope: !800)
!807 = !DILocalVariable(name: "toptr", arg: 2, scope: !800, file: !1, line: 107, type: !803)
!808 = !DILocation(line: 107, column: 53, scope: !800)
!809 = !DILocalVariable(name: "cptr", arg: 3, scope: !800, file: !1, line: 107, type: !804)
!810 = !DILocation(line: 107, column: 69, scope: !800)
!811 = !DILocation(line: 108, column: 12, scope: !800)
!812 = !DILocation(line: 108, column: 5, scope: !800)
!813 = !DILocation(line: 108, column: 18, scope: !800)
!814 = !DILocation(line: 109, column: 14, scope: !800)
!815 = !DILocation(line: 109, column: 6, scope: !800)
!816 = !DILocation(line: 109, column: 12, scope: !800)
!817 = !DILocation(line: 110, column: 12, scope: !800)
!818 = !DILocation(line: 110, column: 5, scope: !800)
!819 = !DILocation(line: 110, column: 17, scope: !800)
!820 = !DILocation(line: 110, column: 20, scope: !800)
!821 = !DILocation(line: 111, column: 1, scope: !800)
!822 = distinct !DISubprogram(name: "addClientToTimeoutTable", scope: !1, file: !1, line: 116, type: !409, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!823 = !DILocalVariable(name: "c", arg: 1, scope: !822, file: !1, line: 116, type: !70)
!824 = !DILocation(line: 116, column: 38, scope: !822)
!825 = !DILocation(line: 117, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !1, line: 117, column: 9)
!827 = !DILocation(line: 117, column: 12, scope: !826)
!828 = !DILocation(line: 117, column: 17, scope: !826)
!829 = !DILocation(line: 117, column: 25, scope: !826)
!830 = !DILocation(line: 117, column: 9, scope: !822)
!831 = !DILocation(line: 117, column: 31, scope: !826)
!832 = !DILocalVariable(name: "timeout", scope: !822, file: !1, line: 118, type: !75)
!833 = !DILocation(line: 118, column: 14, scope: !822)
!834 = !DILocation(line: 118, column: 24, scope: !822)
!835 = !DILocation(line: 118, column: 27, scope: !822)
!836 = !DILocation(line: 118, column: 32, scope: !822)
!837 = !DILocalVariable(name: "buf", scope: !822, file: !1, line: 119, type: !838)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 128, elements: !839)
!839 = !{!840}
!840 = !DISubrange(count: 16)
!841 = !DILocation(line: 119, column: 19, scope: !822)
!842 = !DILocation(line: 120, column: 22, scope: !822)
!843 = !DILocation(line: 120, column: 26, scope: !822)
!844 = !DILocation(line: 120, column: 34, scope: !822)
!845 = !DILocation(line: 120, column: 5, scope: !822)
!846 = !DILocation(line: 121, column: 29, scope: !847)
!847 = distinct !DILexicalBlock(scope: !822, file: !1, line: 121, column: 9)
!848 = !DILocation(line: 121, column: 51, scope: !847)
!849 = !DILocation(line: 121, column: 9, scope: !847)
!850 = !DILocation(line: 121, column: 9, scope: !822)
!851 = !DILocation(line: 122, column: 9, scope: !847)
!852 = !DILocation(line: 122, column: 12, scope: !847)
!853 = !DILocation(line: 122, column: 18, scope: !847)
!854 = !DILocation(line: 123, column: 1, scope: !822)
!855 = distinct !DISubprogram(name: "removeClientFromTimeoutTable", scope: !1, file: !1, line: 127, type: !409, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!856 = !DILocalVariable(name: "c", arg: 1, scope: !855, file: !1, line: 127, type: !70)
!857 = !DILocation(line: 127, column: 43, scope: !855)
!858 = !DILocation(line: 128, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !1, line: 128, column: 9)
!860 = !DILocation(line: 128, column: 14, scope: !859)
!861 = !DILocation(line: 128, column: 20, scope: !859)
!862 = !DILocation(line: 128, column: 9, scope: !855)
!863 = !DILocation(line: 128, column: 43, scope: !859)
!864 = !DILocation(line: 129, column: 5, scope: !855)
!865 = !DILocation(line: 129, column: 8, scope: !855)
!866 = !DILocation(line: 129, column: 14, scope: !855)
!867 = !DILocalVariable(name: "timeout", scope: !855, file: !1, line: 130, type: !75)
!868 = !DILocation(line: 130, column: 14, scope: !855)
!869 = !DILocation(line: 130, column: 24, scope: !855)
!870 = !DILocation(line: 130, column: 27, scope: !855)
!871 = !DILocation(line: 130, column: 32, scope: !855)
!872 = !DILocalVariable(name: "buf", scope: !855, file: !1, line: 131, type: !838)
!873 = !DILocation(line: 131, column: 19, scope: !855)
!874 = !DILocation(line: 132, column: 22, scope: !855)
!875 = !DILocation(line: 132, column: 26, scope: !855)
!876 = !DILocation(line: 132, column: 34, scope: !855)
!877 = !DILocation(line: 132, column: 5, scope: !855)
!878 = !DILocation(line: 133, column: 22, scope: !855)
!879 = !DILocation(line: 133, column: 44, scope: !855)
!880 = !DILocation(line: 133, column: 5, scope: !855)
!881 = !DILocation(line: 134, column: 1, scope: !855)
!882 = distinct !DISubprogram(name: "handleBlockedClientsTimeout", scope: !1, file: !1, line: 138, type: !883, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!883 = !DISubroutineType(types: !884)
!884 = !{null}
!885 = !DILocation(line: 139, column: 24, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !1, line: 139, column: 9)
!887 = !DILocation(line: 139, column: 9, scope: !886)
!888 = !DILocation(line: 139, column: 47, scope: !886)
!889 = !DILocation(line: 139, column: 9, scope: !882)
!890 = !DILocation(line: 139, column: 53, scope: !886)
!891 = !DILocalVariable(name: "now", scope: !882, file: !1, line: 140, type: !75)
!892 = !DILocation(line: 140, column: 14, scope: !882)
!893 = !DILocation(line: 140, column: 20, scope: !882)
!894 = !DILocalVariable(name: "ri", scope: !882, file: !1, line: 141, type: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !652, line: 186, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !652, line: 175, size: 3840, elements: !897)
!897 = !{!898, !899, !900, !901, !902, !903, !904, !908, !909, !922}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !896, file: !652, line: 176, baseType: !69, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !896, file: !652, line: 177, baseType: !650, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !896, file: !652, line: 178, baseType: !785, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !896, file: !652, line: 179, baseType: !58, size: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !896, file: !652, line: 180, baseType: !171, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !896, file: !652, line: 181, baseType: !171, size: 64, offset: 320)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !896, file: !652, line: 182, baseType: !905, size: 1024, offset: 384)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 1024, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !896, file: !652, line: 183, baseType: !656, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !896, file: !652, line: 184, baseType: !910, size: 2304, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !652, line: 150, baseType: !911)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !652, line: 143, size: 2304, elements: !912)
!912 = !{!913, !915, !916, !917, !921}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !911, file: !652, line: 144, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !911, file: !652, line: 145, baseType: !171, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !911, file: !652, line: 145, baseType: !171, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !911, file: !652, line: 148, baseType: !918, size: 2048, offset: 192)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2048, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !911, file: !652, line: 149, baseType: !69, size: 32, offset: 2240)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !896, file: !652, line: 185, baseType: !923, size: 64, offset: 3776)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !652, line: 165, baseType: !924)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!69, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!928 = !DILocation(line: 141, column: 17, scope: !882)
!929 = !DILocation(line: 142, column: 25, scope: !882)
!930 = !DILocation(line: 142, column: 5, scope: !882)
!931 = !DILocation(line: 143, column: 5, scope: !882)
!932 = !DILocation(line: 145, column: 5, scope: !882)
!933 = !DILocation(line: 145, column: 11, scope: !882)
!934 = !DILocalVariable(name: "timeout", scope: !935, file: !1, line: 146, type: !75)
!935 = distinct !DILexicalBlock(scope: !882, file: !1, line: 145, column: 25)
!936 = !DILocation(line: 146, column: 18, scope: !935)
!937 = !DILocalVariable(name: "c", scope: !935, file: !1, line: 147, type: !70)
!938 = !DILocation(line: 147, column: 17, scope: !935)
!939 = !DILocation(line: 148, column: 29, scope: !935)
!940 = !DILocation(line: 148, column: 9, scope: !935)
!941 = !DILocation(line: 149, column: 13, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !1, line: 149, column: 13)
!943 = !DILocation(line: 149, column: 24, scope: !942)
!944 = !DILocation(line: 149, column: 21, scope: !942)
!945 = !DILocation(line: 149, column: 13, scope: !935)
!946 = !DILocation(line: 149, column: 29, scope: !942)
!947 = !DILocation(line: 150, column: 9, scope: !935)
!948 = !DILocation(line: 150, column: 12, scope: !935)
!949 = !DILocation(line: 150, column: 18, scope: !935)
!950 = !DILocation(line: 151, column: 35, scope: !935)
!951 = !DILocation(line: 151, column: 37, scope: !935)
!952 = !DILocation(line: 151, column: 9, scope: !935)
!953 = !DILocation(line: 152, column: 26, scope: !935)
!954 = !DILocation(line: 152, column: 51, scope: !935)
!955 = !DILocation(line: 152, column: 58, scope: !935)
!956 = !DILocation(line: 152, column: 9, scope: !935)
!957 = !DILocation(line: 153, column: 9, scope: !935)
!958 = distinct !{!958, !932, !959, !960}
!959 = !DILocation(line: 154, column: 5, scope: !882)
!960 = !{!"llvm.loop.mustprogress"}
!961 = !DILocation(line: 155, column: 5, scope: !882)
!962 = !DILocation(line: 156, column: 1, scope: !882)
!963 = distinct !DISubprogram(name: "getTimeoutFromObjectOrReply", scope: !1, file: !1, line: 166, type: !964, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !686)
!964 = !DISubroutineType(types: !965)
!965 = !{!69, !70, !363, !966, !69}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!967 = !DILocalVariable(name: "c", arg: 1, scope: !963, file: !1, line: 166, type: !70)
!968 = !DILocation(line: 166, column: 41, scope: !963)
!969 = !DILocalVariable(name: "object", arg: 2, scope: !963, file: !1, line: 166, type: !363)
!970 = !DILocation(line: 166, column: 50, scope: !963)
!971 = !DILocalVariable(name: "timeout", arg: 3, scope: !963, file: !1, line: 166, type: !966)
!972 = !DILocation(line: 166, column: 68, scope: !963)
!973 = !DILocalVariable(name: "unit", arg: 4, scope: !963, file: !1, line: 166, type: !69)
!974 = !DILocation(line: 166, column: 81, scope: !963)
!975 = !DILocalVariable(name: "tval", scope: !963, file: !1, line: 167, type: !59)
!976 = !DILocation(line: 167, column: 15, scope: !963)
!977 = !DILocalVariable(name: "ftval", scope: !963, file: !1, line: 168, type: !978)
!978 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!979 = !DILocation(line: 168, column: 17, scope: !963)
!980 = !DILocation(line: 170, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !963, file: !1, line: 170, column: 9)
!982 = !DILocation(line: 170, column: 14, scope: !981)
!983 = !DILocation(line: 170, column: 9, scope: !963)
!984 = !DILocation(line: 171, column: 44, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !1, line: 171, column: 13)
!986 = distinct !DILexicalBlock(scope: !981, file: !1, line: 170, column: 31)
!987 = !DILocation(line: 171, column: 46, scope: !985)
!988 = !DILocation(line: 171, column: 13, scope: !985)
!989 = !DILocation(line: 172, column: 55, scope: !985)
!990 = !DILocation(line: 171, column: 13, scope: !986)
!991 = !DILocation(line: 173, column: 13, scope: !985)
!992 = !DILocation(line: 174, column: 34, scope: !986)
!993 = !DILocation(line: 174, column: 40, scope: !986)
!994 = !DILocation(line: 174, column: 28, scope: !986)
!995 = !DILocation(line: 174, column: 16, scope: !986)
!996 = !DILocation(line: 174, column: 14, scope: !986)
!997 = !DILocation(line: 175, column: 5, scope: !986)
!998 = !DILocation(line: 176, column: 42, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 176, column: 13)
!1000 = distinct !DILexicalBlock(scope: !981, file: !1, line: 175, column: 12)
!1001 = !DILocation(line: 176, column: 44, scope: !999)
!1002 = !DILocation(line: 176, column: 13, scope: !999)
!1003 = !DILocation(line: 177, column: 58, scope: !999)
!1004 = !DILocation(line: 176, column: 13, scope: !1000)
!1005 = !DILocation(line: 178, column: 13, scope: !999)
!1006 = !DILocation(line: 181, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !963, file: !1, line: 181, column: 9)
!1008 = !DILocation(line: 181, column: 14, scope: !1007)
!1009 = !DILocation(line: 181, column: 9, scope: !963)
!1010 = !DILocation(line: 182, column: 23, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 181, column: 19)
!1012 = !DILocation(line: 182, column: 9, scope: !1011)
!1013 = !DILocation(line: 183, column: 9, scope: !1011)
!1014 = !DILocation(line: 186, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !963, file: !1, line: 186, column: 9)
!1016 = !DILocation(line: 186, column: 14, scope: !1015)
!1017 = !DILocation(line: 186, column: 9, scope: !963)
!1018 = !DILocation(line: 187, column: 17, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 186, column: 19)
!1020 = !DILocation(line: 187, column: 14, scope: !1019)
!1021 = !DILocation(line: 188, column: 5, scope: !1019)
!1022 = !DILocation(line: 189, column: 16, scope: !963)
!1023 = !DILocation(line: 189, column: 6, scope: !963)
!1024 = !DILocation(line: 189, column: 14, scope: !963)
!1025 = !DILocation(line: 191, column: 5, scope: !963)
!1026 = !DILocation(line: 192, column: 1, scope: !963)
