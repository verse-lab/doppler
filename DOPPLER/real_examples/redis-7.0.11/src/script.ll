; ModuleID = 'script.c'
source_filename = "script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scriptFlag = type { i64, i8* }
%struct.scriptRunCtx = type { i8*, %struct.client*, %struct.client*, i32, i32, i64, i64 }
%struct.client = type { i64, i64, %struct.connection*, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i64, i32, %struct.redisObject**, i32, i32, %struct.redisObject**, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.user*, i32, i32, i64, %struct.list*, i64, %struct.list*, i64, i64, i64, i32, %struct.dictEntry*, i64, i64, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, i8*, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, %struct.dict*, i8*, i8*, %struct.listNode*, %struct.listNode*, %struct.listNode*, void (i64, i8*)*, i8*, i8*, i64, %struct.rax*, i64, i32, %struct.listNode*, %struct.clientMemUsageBucket*, %struct.listNode*, i64, i64, i64, i32, i64, i8* }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type { [16384 x %struct.slotToKeys] }
%struct.slotToKeys = type { i64, %struct.dictEntry* }
%struct.redisObject = type { i32, i32, i8* }
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
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.socketFds = type { [16 x i32], i32 }
%struct.pause_event = type { i32, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.5 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.aofManifest = type { %struct.aofInfo*, %struct.list*, %struct.list*, i64, i64, i32 }
%struct.aofInfo = type { i8*, i64, i32 }
%struct.saveparam = type { i64, i32 }
%struct.redisOpArray = type { %struct.redisOp*, i32, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32 }
%struct.replBacklog = type { %struct.listNode*, i64, %struct.rax*, i64, i64 }
%struct.clusterState = type { %struct.clusterNode*, i64, i32, i32, %struct.dict*, %struct.dict*, [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], %struct.rax*, i64, i32, i32, i32, i64, i32, i64, %struct.clusterNode*, i64, i32, i64, i32, [11 x i64], [11 x i64], i64, i64 }
%struct.clusterNode = type { i64, [40 x i8], i32, i64, [2048 x i8], i16*, i32, i32, i32, %struct.clusterNode**, %struct.clusterNode*, i64, i64, i64, i64, i64, i64, i64, i64, i64, [46 x i8], i8*, i32, i32, i32, %struct.clusterLink*, %struct.clusterLink*, %struct.list* }
%struct.clusterLink = type { i64, %struct.connection*, i8*, i8*, i64, i64, %struct.clusterNode*, i32 }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@.str = private unnamed_addr constant [10 x i8] c"no-writes\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"allow-oom\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"allow-stale\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no-cluster\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"allow-cross-slot-keys\00", align 1
@scripts_flags_def = dso_local global [6 x %struct.scriptFlag] [%struct.scriptFlag { i64 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0) }, %struct.scriptFlag { i64 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.scriptFlag { i64 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0) }, %struct.scriptFlag { i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct.scriptFlag { i64 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0) }, %struct.scriptFlag zeroinitializer], align 16, !dbg !0
@curr_run_ctx = internal global %struct.scriptRunCtx* null, align 8, !dbg !123
@.str.5 = private unnamed_addr constant [18 x i8] c"scriptIsRunning()\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"script.c\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.7 = private unnamed_addr constant [139 x i8] c"Slow script detected: still in execution after %lld milliseconds. You can try killing the script using the %s command. Script name is: %s.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SCRIPT KILL\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"FUNCTION KILL\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"!curr_run_ctx\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Can not run script on cluster, 'no-cluster' flag is set.\00", align 1
@.str.12 = private unnamed_addr constant [127 x i8] c"-MASTERDOWN Link with MASTER is down, replica-serve-stale-data is set to 'no' and 'allow-stale' flag is not set on the script.\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"-READONLY Can not run script with write flag on readonly replica\00", align 1
@.str.14 = private unnamed_addr constant [172 x i8] c"-MISCONF Redis is configured to save RDB snapshots, but it's currently unable to persist to disk. Writable scripts are blocked. Use 'no-writes' flag for read only scripts.\00", align 1
@.str.15 = private unnamed_addr constant [187 x i8] c"-MISCONF Redis is configured to persist data to AOF, but it's currently unable to persist to disk. Writable scripts are blocked. Use 'no-writes' flag for read only scripts. AOF error: %s\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"Can not execute a script with write flag using *_ro command.\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.17 = private unnamed_addr constant [92 x i8] c"-OOM allow-oom flag is not set on the script, can not run it when used memory > 'maxmemory'\00", align 1
@getMonotonicUs = external dso_local global i64 ()*, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"curr_run_ctx\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"-NOTBUSY No scripts in execution right now.\00", align 1
@.str.20 = private unnamed_addr constant [110 x i8] c"-UNKILLABLE The busy script was sent by a master instance in the context of replication and cannot be killed.\00", align 1
@.str.21 = private unnamed_addr constant [193 x i8] c"-UNKILLABLE Sorry the script already executed write commands against the dataset. You can either wait the script termination or kill the server in a hard way using the SHUTDOWN NOSAVE command.\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"This Redis command is not allowed from script\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"(c->flags & CLIENT_BLOCKED) == 0\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"run_ctx == curr_run_ctx\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"!scriptIsTimedout()\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"scriptIsTimedout()\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"Wrong number of args calling Redis command from script\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Unknown Redis command called from script\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"Can not execute the command on a stale replica\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"The user executing the script %s\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"Write commands are not allowed from read-only scripts.\00", align 1
@.str.32 = private unnamed_addr constant [83 x i8] c"Script attempted to execute a write command while the cluster is down and readonly\00", align 1
@.str.33 = private unnamed_addr constant [64 x i8] c"Script attempted to execute a command while the cluster is down\00", align 1
@.str.34 = private unnamed_addr constant [61 x i8] c"Script attempted to access a non local key in a cluster node\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"Script attempted to access keys that do not hash to the same slot\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptIsTimedout() #0 !dbg !757 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !761
  %tobool = icmp ne i32 %call, 0, !dbg !761
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !762

land.rhs:                                         ; preds = %entry
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !763
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 3, !dbg !764
  %1 = load i32, i32* %flags, align 8, !dbg !764
  %conv = sext i32 %1 to i64, !dbg !763
  %and = and i64 %conv, 8, !dbg !765
  %tobool1 = icmp ne i64 %and, 0, !dbg !762
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool1, %land.rhs ], !dbg !766
  %land.ext = zext i1 %2 to i32, !dbg !762
  ret i32 %land.ext, !dbg !767
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.client* @scriptGetClient() #0 !dbg !768 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !771
  %tobool = icmp ne i32 %call, 0, !dbg !771
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !771

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !771

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 68), !dbg !771
  unreachable, !dbg !771

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !771

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !772
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 1, !dbg !773
  %1 = load %struct.client*, %struct.client** %c, align 8, !dbg !773
  ret %struct.client* %1, !dbg !774
}

declare dso_local void @_serverAssert(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.client* @scriptGetCaller() #0 !dbg !775 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !776
  %tobool = icmp ne i32 %call, 0, !dbg !776
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !776

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !776

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 73), !dbg !776
  unreachable, !dbg !776

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !776

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !777
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 2, !dbg !778
  %1 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !778
  ret %struct.client* %1, !dbg !779
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptInterrupt(%struct.scriptRunCtx* %run_ctx) #0 !dbg !780 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %elapsed = alloca i64, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !783, metadata !DIExpression()), !dbg !784
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !785
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 3, !dbg !787
  %1 = load i32, i32* %flags, align 8, !dbg !787
  %conv = sext i32 %1 to i64, !dbg !785
  %and = and i64 %conv, 8, !dbg !788
  %tobool = icmp ne i64 %and, 0, !dbg !788
  br i1 %tobool, label %if.then, label %if.end, !dbg !789

if.then:                                          ; preds = %entry
  call void @processEventsWhileBlocked(), !dbg !790
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !792
  %flags1 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 3, !dbg !793
  %3 = load i32, i32* %flags1, align 8, !dbg !793
  %conv2 = sext i32 %3 to i64, !dbg !792
  %and3 = and i64 %conv2, 16, !dbg !794
  %tobool4 = icmp ne i64 %and3, 0, !dbg !795
  %4 = zext i1 %tobool4 to i64, !dbg !795
  %cond = select i1 %tobool4, i32 1, i32 2, !dbg !795
  store i32 %cond, i32* %retval, align 4, !dbg !796
  br label %return, !dbg !796

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %elapsed, metadata !797, metadata !DIExpression()), !dbg !798
  %5 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !799
  %start_time = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %5, i32 0, i32 5, !dbg !800
  %6 = load i64, i64* %start_time, align 8, !dbg !800
  %call = call i64 @elapsedMs(i64 %6), !dbg !801
  store i64 %call, i64* %elapsed, align 8, !dbg !798
  %7 = load i64, i64* %elapsed, align 8, !dbg !802
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 374), align 8, !dbg !804
  %cmp = icmp slt i64 %7, %8, !dbg !805
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !806

if.then6:                                         ; preds = %if.end
  store i32 2, i32* %retval, align 4, !dbg !807
  br label %return, !dbg !807

if.end7:                                          ; preds = %if.end
  br label %do.body, !dbg !809

do.body:                                          ; preds = %if.end7
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !810
  %cmp8 = icmp slt i32 3, %9, !dbg !810
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !813

if.then10:                                        ; preds = %do.body
  br label %do.end, !dbg !810

if.end11:                                         ; preds = %do.body
  %10 = load i64, i64* %elapsed, align 8, !dbg !813
  %11 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !813
  %flags12 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %11, i32 0, i32 3, !dbg !813
  %12 = load i32, i32* %flags12, align 8, !dbg !813
  %conv13 = sext i32 %12 to i64, !dbg !813
  %and14 = and i64 %conv13, 128, !dbg !813
  %tobool15 = icmp ne i64 %and14, 0, !dbg !813
  %13 = zext i1 %tobool15 to i64, !dbg !813
  %cond16 = select i1 %tobool15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), !dbg !813
  %14 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !813
  %funcname = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %14, i32 0, i32 0, !dbg !813
  %15 = load i8*, i8** %funcname, align 8, !dbg !813
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.7, i64 0, i64 0), i64 %10, i8* %cond16, i8* %15), !dbg !813
  br label %do.end, !dbg !813

do.end:                                           ; preds = %if.end11, %if.then10
  %16 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !814
  call void @enterScriptTimedoutMode(%struct.scriptRunCtx* %16), !dbg !815
  %17 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !816
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %17, i32 0, i32 2, !dbg !817
  %18 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !817
  call void @protectClient(%struct.client* %18), !dbg !818
  call void @processEventsWhileBlocked(), !dbg !819
  %19 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !820
  %flags17 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %19, i32 0, i32 3, !dbg !821
  %20 = load i32, i32* %flags17, align 8, !dbg !821
  %conv18 = sext i32 %20 to i64, !dbg !820
  %and19 = and i64 %conv18, 16, !dbg !822
  %tobool20 = icmp ne i64 %and19, 0, !dbg !823
  %21 = zext i1 %tobool20 to i64, !dbg !823
  %cond21 = select i1 %tobool20, i32 1, i32 2, !dbg !823
  store i32 %cond21, i32* %retval, align 4, !dbg !824
  br label %return, !dbg !824

return:                                           ; preds = %do.end, %if.then6, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !825
  ret i32 %22, !dbg !825
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare dso_local void @processEventsWhileBlocked() #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedMs(i64 %start_time) #0 !dbg !826 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !829, metadata !DIExpression()), !dbg !830
  %0 = load i64, i64* %start_time.addr, align 8, !dbg !831
  %call = call i64 @elapsedUs(i64 %0), !dbg !832
  %div = udiv i64 %call, 1000, !dbg !833
  ret i64 %div, !dbg !834
}

declare dso_local void @_serverLog(i32, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @enterScriptTimedoutMode(%struct.scriptRunCtx* %run_ctx) #0 !dbg !835 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !838, metadata !DIExpression()), !dbg !839
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !840
  %1 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !840
  %cmp = icmp eq %struct.scriptRunCtx* %0, %1, !dbg !840
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !840

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !840

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 56), !dbg !840
  unreachable, !dbg !840

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !840

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %call = call i32 @scriptIsTimedout(), !dbg !841
  %tobool = icmp ne i32 %call, 0, !dbg !841
  br i1 %tobool, label %cond.false2, label %cond.true1, !dbg !841

cond.true1:                                       ; preds = %cond.end
  br label %cond.end4, !dbg !841

cond.false2:                                      ; preds = %cond.end
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 57), !dbg !841
  unreachable, !dbg !841

unreachable.cont3:                                ; No predecessors!
  br label %cond.end4, !dbg !841

cond.end4:                                        ; preds = %unreachable.cont3, %cond.true1
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !842
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 3, !dbg !843
  %3 = load i32, i32* %flags, align 8, !dbg !844
  %conv = sext i32 %3 to i64, !dbg !844
  %or = or i64 %conv, 8, !dbg !844
  %conv5 = trunc i64 %or to i32, !dbg !844
  store i32 %conv5, i32* %flags, align 8, !dbg !844
  call void (...) @blockingOperationStarts(), !dbg !845
  ret void, !dbg !846
}

declare dso_local void @protectClient(%struct.client*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @scriptFlagsToCmdFlags(i64 %cmd_flags, i64 %script_flags) #0 !dbg !847 {
entry:
  %cmd_flags.addr = alloca i64, align 8
  %script_flags.addr = alloca i64, align 8
  store i64 %cmd_flags, i64* %cmd_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmd_flags.addr, metadata !850, metadata !DIExpression()), !dbg !851
  store i64 %script_flags, i64* %script_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %script_flags.addr, metadata !852, metadata !DIExpression()), !dbg !853
  %0 = load i64, i64* %cmd_flags.addr, align 8, !dbg !854
  %and = and i64 %0, -1030, !dbg !854
  store i64 %and, i64* %cmd_flags.addr, align 8, !dbg !854
  %1 = load i64, i64* %script_flags.addr, align 8, !dbg !855
  %and1 = and i64 %1, 3, !dbg !857
  %tobool = icmp ne i64 %and1, 0, !dbg !857
  br i1 %tobool, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %cmd_flags.addr, align 8, !dbg !859
  %or = or i64 %2, 4, !dbg !859
  store i64 %or, i64* %cmd_flags.addr, align 8, !dbg !859
  br label %if.end, !dbg !860

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %script_flags.addr, align 8, !dbg !861
  %and2 = and i64 %3, 1, !dbg !863
  %tobool3 = icmp ne i64 %and2, 0, !dbg !863
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !864

if.then4:                                         ; preds = %if.end
  %4 = load i64, i64* %cmd_flags.addr, align 8, !dbg !865
  %or5 = or i64 %4, 1, !dbg !865
  store i64 %or5, i64* %cmd_flags.addr, align 8, !dbg !865
  br label %if.end6, !dbg !866

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load i64, i64* %script_flags.addr, align 8, !dbg !867
  %and7 = and i64 %5, 4, !dbg !869
  %tobool8 = icmp ne i64 %and7, 0, !dbg !869
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !870

if.then9:                                         ; preds = %if.end6
  %6 = load i64, i64* %cmd_flags.addr, align 8, !dbg !871
  %or10 = or i64 %6, 1024, !dbg !871
  store i64 %or10, i64* %cmd_flags.addr, align 8, !dbg !871
  br label %if.end11, !dbg !872

if.end11:                                         ; preds = %if.then9, %if.end6
  %7 = load i64, i64* %cmd_flags.addr, align 8, !dbg !873
  %and12 = and i64 %7, -65537, !dbg !873
  store i64 %and12, i64* %cmd_flags.addr, align 8, !dbg !873
  %8 = load i64, i64* %cmd_flags.addr, align 8, !dbg !874
  ret i64 %8, !dbg !875
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptPrepareForRun(%struct.scriptRunCtx* %run_ctx, %struct.client* %engine_client, %struct.client* %caller, i8* %funcname, i64 %script_flags, i32 %ro) #0 !dbg !876 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %engine_client.addr = alloca %struct.client*, align 8
  %caller.addr = alloca %struct.client*, align 8
  %funcname.addr = alloca i8*, align 8
  %script_flags.addr = alloca i64, align 8
  %ro.addr = alloca i32, align 4
  %running_stale = alloca i32, align 4
  %obey_client = alloca i32, align 4
  %deny_write_type = alloca i32, align 4
  %script_client = alloca %struct.client*, align 8
  %curr_client = alloca %struct.client*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !879, metadata !DIExpression()), !dbg !880
  store %struct.client* %engine_client, %struct.client** %engine_client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %engine_client.addr, metadata !881, metadata !DIExpression()), !dbg !882
  store %struct.client* %caller, %struct.client** %caller.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %caller.addr, metadata !883, metadata !DIExpression()), !dbg !884
  store i8* %funcname, i8** %funcname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !885, metadata !DIExpression()), !dbg !886
  store i64 %script_flags, i64* %script_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %script_flags.addr, metadata !887, metadata !DIExpression()), !dbg !888
  store i32 %ro, i32* %ro.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ro.addr, metadata !889, metadata !DIExpression()), !dbg !890
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !891
  %tobool = icmp ne %struct.scriptRunCtx* %0, null, !dbg !891
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !891

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !891

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 132), !dbg !891
  unreachable, !dbg !891

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !891

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata i32* %running_stale, metadata !892, metadata !DIExpression()), !dbg !893
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !894
  %tobool1 = icmp ne i8* %1, null, !dbg !895
  br i1 %tobool1, label %land.lhs.true, label %land.end, !dbg !896

land.lhs.true:                                    ; preds = %cond.end
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 284), align 4, !dbg !897
  %cmp = icmp ne i32 %2, 12, !dbg !898
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !899

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 292), align 8, !dbg !900
  %cmp2 = icmp eq i32 %3, 0, !dbg !901
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %cond.end
  %4 = phi i1 [ false, %land.lhs.true ], [ false, %cond.end ], [ %cmp2, %land.rhs ], !dbg !902
  %land.ext = zext i1 %4 to i32, !dbg !899
  store i32 %land.ext, i32* %running_stale, align 4, !dbg !893
  call void @llvm.dbg.declare(metadata i32* %obey_client, metadata !903, metadata !DIExpression()), !dbg !904
  %5 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !905
  %call = call i32 @mustObeyClient(%struct.client* %5), !dbg !906
  store i32 %call, i32* %obey_client, align 4, !dbg !904
  %6 = load i64, i64* %script_flags.addr, align 8, !dbg !907
  %and = and i64 %6, 16, !dbg !909
  %tobool3 = icmp ne i64 %and, 0, !dbg !909
  br i1 %tobool3, label %if.else56, label %if.then, !dbg !910

if.then:                                          ; preds = %land.end
  %7 = load i64, i64* %script_flags.addr, align 8, !dbg !911
  %and4 = and i64 %7, 8, !dbg !914
  %tobool5 = icmp ne i64 %and4, 0, !dbg !914
  br i1 %tobool5, label %land.lhs.true6, label %if.end, !dbg !915

land.lhs.true6:                                   ; preds = %if.then
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 352), align 8, !dbg !916
  %tobool7 = icmp ne i32 %8, 0, !dbg !917
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !918

if.then8:                                         ; preds = %land.lhs.true6
  %9 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !919
  call void @addReplyError(%struct.client* %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0)), !dbg !921
  store i32 -1, i32* %retval, align 4, !dbg !922
  br label %return, !dbg !922

if.end:                                           ; preds = %land.lhs.true6, %if.then
  %10 = load i32, i32* %running_stale, align 4, !dbg !923
  %tobool9 = icmp ne i32 %10, 0, !dbg !923
  br i1 %tobool9, label %land.lhs.true10, label %if.end14, !dbg !925

land.lhs.true10:                                  ; preds = %if.end
  %11 = load i64, i64* %script_flags.addr, align 8, !dbg !926
  %and11 = and i64 %11, 4, !dbg !927
  %tobool12 = icmp ne i64 %and11, 0, !dbg !927
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !928

if.then13:                                        ; preds = %land.lhs.true10
  %12 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !929
  call void @addReplyError(%struct.client* %12, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.12, i64 0, i64 0)), !dbg !931
  store i32 -1, i32* %retval, align 4, !dbg !932
  br label %return, !dbg !932

if.end14:                                         ; preds = %land.lhs.true10, %if.end
  %13 = load i64, i64* %script_flags.addr, align 8, !dbg !933
  %and15 = and i64 %13, 1, !dbg !935
  %tobool16 = icmp ne i64 %and15, 0, !dbg !935
  br i1 %tobool16, label %if.end47, label %if.then17, !dbg !936

if.then17:                                        ; preds = %if.end14
  %14 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !937
  %tobool18 = icmp ne i8* %14, null, !dbg !940
  br i1 %tobool18, label %land.lhs.true19, label %if.end24, !dbg !941

land.lhs.true19:                                  ; preds = %if.then17
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 293), align 4, !dbg !942
  %tobool20 = icmp ne i32 %15, 0, !dbg !943
  br i1 %tobool20, label %land.lhs.true21, label %if.end24, !dbg !944

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %16 = load i32, i32* %obey_client, align 4, !dbg !945
  %tobool22 = icmp ne i32 %16, 0, !dbg !945
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !946

if.then23:                                        ; preds = %land.lhs.true21
  %17 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !947
  call void @addReplyError(%struct.client* %17, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0)), !dbg !949
  store i32 -1, i32* %retval, align 4, !dbg !950
  br label %return, !dbg !950

if.end24:                                         ; preds = %land.lhs.true21, %land.lhs.true19, %if.then17
  call void @llvm.dbg.declare(metadata i32* %deny_write_type, metadata !951, metadata !DIExpression()), !dbg !952
  %call25 = call i32 @writeCommandsDeniedByDiskError(), !dbg !953
  store i32 %call25, i32* %deny_write_type, align 4, !dbg !952
  %18 = load i32, i32* %deny_write_type, align 4, !dbg !954
  %cmp26 = icmp ne i32 %18, 0, !dbg !956
  br i1 %cmp26, label %land.lhs.true27, label %if.end34, !dbg !957

land.lhs.true27:                                  ; preds = %if.end24
  %19 = load i32, i32* %obey_client, align 4, !dbg !958
  %tobool28 = icmp ne i32 %19, 0, !dbg !958
  br i1 %tobool28, label %if.end34, label %if.then29, !dbg !959

if.then29:                                        ; preds = %land.lhs.true27
  %20 = load i32, i32* %deny_write_type, align 4, !dbg !960
  %cmp30 = icmp eq i32 %20, 2, !dbg !963
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !964

if.then31:                                        ; preds = %if.then29
  %21 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !965
  call void @addReplyError(%struct.client* %21, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.14, i64 0, i64 0)), !dbg !966
  br label %if.end33, !dbg !966

if.else:                                          ; preds = %if.then29
  %22 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !967
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 209), align 4, !dbg !968
  %call32 = call i8* @strerror(i32 %23) #4, !dbg !969
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %22, i8* getelementptr inbounds ([187 x i8], [187 x i8]* @.str.15, i64 0, i64 0), i8* %call32), !dbg !970
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  store i32 -1, i32* %retval, align 4, !dbg !971
  br label %return, !dbg !971

if.end34:                                         ; preds = %land.lhs.true27, %if.end24
  %24 = load i32, i32* %ro.addr, align 4, !dbg !972
  %tobool35 = icmp ne i32 %24, 0, !dbg !972
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !974

if.then36:                                        ; preds = %if.end34
  %25 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !975
  call void @addReplyError(%struct.client* %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0)), !dbg !977
  store i32 -1, i32* %retval, align 4, !dbg !978
  br label %return, !dbg !978

if.end37:                                         ; preds = %if.end34
  %26 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !979
  %cmp38 = icmp eq i8* %26, null, !dbg !981
  br i1 %cmp38, label %land.lhs.true39, label %if.end46, !dbg !982

land.lhs.true39:                                  ; preds = %if.end37
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 268), align 4, !dbg !983
  %tobool40 = icmp ne i32 %27, 0, !dbg !984
  br i1 %tobool40, label %land.lhs.true41, label %if.end46, !dbg !985

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 267), align 8, !dbg !986
  %tobool42 = icmp ne i32 %28, 0, !dbg !987
  br i1 %tobool42, label %land.lhs.true43, label %if.end46, !dbg !988

land.lhs.true43:                                  ; preds = %land.lhs.true41
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 269), align 8, !dbg !989
  %30 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 267), align 8, !dbg !990
  %cmp44 = icmp slt i32 %29, %30, !dbg !991
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !992

if.then45:                                        ; preds = %land.lhs.true43
  %31 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !993
  %32 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 29), align 8, !dbg !995
  call void @addReplyErrorObject(%struct.client* %31, %struct.redisObject* %32), !dbg !996
  store i32 -1, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end46:                                         ; preds = %land.lhs.true43, %land.lhs.true41, %land.lhs.true39, %if.end37
  br label %if.end47, !dbg !998

if.end47:                                         ; preds = %if.end46, %if.end14
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 375), align 8, !dbg !999
  %tobool48 = icmp ne i32 %33, 0, !dbg !1001
  br i1 %tobool48, label %land.lhs.true49, label %if.end55, !dbg !1002

land.lhs.true49:                                  ; preds = %if.end47
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !1003
  %tobool50 = icmp ne i64 %34, 0, !dbg !1004
  br i1 %tobool50, label %land.lhs.true51, label %if.end55, !dbg !1005

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %35 = load i64, i64* %script_flags.addr, align 8, !dbg !1006
  %and52 = and i64 %35, 3, !dbg !1007
  %tobool53 = icmp ne i64 %and52, 0, !dbg !1007
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !1008

if.then54:                                        ; preds = %land.lhs.true51
  %36 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !1009
  call void @addReplyError(%struct.client* %36, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.17, i64 0, i64 0)), !dbg !1011
  store i32 -1, i32* %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

if.end55:                                         ; preds = %land.lhs.true51, %land.lhs.true49, %if.end47
  br label %if.end60, !dbg !1013

if.else56:                                        ; preds = %land.end
  %37 = load i32, i32* %running_stale, align 4, !dbg !1014
  %tobool57 = icmp ne i32 %37, 0, !dbg !1014
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !1017

if.then58:                                        ; preds = %if.else56
  %38 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !1018
  %39 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 25), align 8, !dbg !1020
  call void @addReplyErrorObject(%struct.client* %38, %struct.redisObject* %39), !dbg !1021
  store i32 -1, i32* %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end59:                                         ; preds = %if.else56
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end55
  %40 = load %struct.client*, %struct.client** %engine_client.addr, align 8, !dbg !1023
  %41 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1024
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %41, i32 0, i32 1, !dbg !1025
  store %struct.client* %40, %struct.client** %c, align 8, !dbg !1026
  %42 = load %struct.client*, %struct.client** %caller.addr, align 8, !dbg !1027
  %43 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1028
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %43, i32 0, i32 2, !dbg !1029
  store %struct.client* %42, %struct.client** %original_client, align 8, !dbg !1030
  %44 = load i8*, i8** %funcname.addr, align 8, !dbg !1031
  %45 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1032
  %funcname61 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %45, i32 0, i32 0, !dbg !1033
  store i8* %44, i8** %funcname61, align 8, !dbg !1034
  call void @llvm.dbg.declare(metadata %struct.client** %script_client, metadata !1035, metadata !DIExpression()), !dbg !1036
  %46 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1037
  %c62 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %46, i32 0, i32 1, !dbg !1038
  %47 = load %struct.client*, %struct.client** %c62, align 8, !dbg !1038
  store %struct.client* %47, %struct.client** %script_client, align 8, !dbg !1036
  call void @llvm.dbg.declare(metadata %struct.client** %curr_client, metadata !1039, metadata !DIExpression()), !dbg !1040
  %48 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1041
  %original_client63 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %48, i32 0, i32 2, !dbg !1042
  %49 = load %struct.client*, %struct.client** %original_client63, align 8, !dbg !1042
  store %struct.client* %49, %struct.client** %curr_client, align 8, !dbg !1040
  %50 = load %struct.client*, %struct.client** %curr_client, align 8, !dbg !1043
  store %struct.client* %50, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 373), align 8, !dbg !1044
  %51 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1045
  %52 = load %struct.client*, %struct.client** %curr_client, align 8, !dbg !1046
  %db = getelementptr inbounds %struct.client, %struct.client* %52, i32 0, i32 4, !dbg !1047
  %53 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1047
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %53, i32 0, i32 5, !dbg !1048
  %54 = load i32, i32* %id, align 8, !dbg !1048
  %call64 = call i32 @selectDb(%struct.client* %51, i32 %54), !dbg !1049
  %55 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1050
  %resp = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 3, !dbg !1051
  store i32 2, i32* %resp, align 8, !dbg !1052
  %56 = load %struct.client*, %struct.client** %curr_client, align 8, !dbg !1053
  %flags = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 1, !dbg !1055
  %57 = load i64, i64* %flags, align 8, !dbg !1055
  %and65 = and i64 %57, 8, !dbg !1056
  %tobool66 = icmp ne i64 %and65, 0, !dbg !1056
  br i1 %tobool66, label %if.then67, label %if.end69, !dbg !1057

if.then67:                                        ; preds = %if.end60
  %58 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1058
  %flags68 = getelementptr inbounds %struct.client, %struct.client* %58, i32 0, i32 1, !dbg !1060
  %59 = load i64, i64* %flags68, align 8, !dbg !1061
  %or = or i64 %59, 8, !dbg !1061
  store i64 %or, i64* %flags68, align 8, !dbg !1061
  br label %if.end69, !dbg !1062

if.end69:                                         ; preds = %if.then67, %if.end60
  %60 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1063
  %call70 = call i64 %60(), !dbg !1063
  %61 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1064
  %start_time = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %61, i32 0, i32 5, !dbg !1065
  store i64 %call70, i64* %start_time, align 8, !dbg !1066
  %call71 = call i64 @mstime(), !dbg !1067
  %62 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1068
  %snapshot_time = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %62, i32 0, i32 6, !dbg !1069
  store i64 %call71, i64* %snapshot_time, align 8, !dbg !1070
  %63 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1071
  %flags72 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %63, i32 0, i32 3, !dbg !1072
  store i32 0, i32* %flags72, align 8, !dbg !1073
  %64 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1074
  %repl_flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %64, i32 0, i32 4, !dbg !1075
  store i32 3, i32* %repl_flags, align 4, !dbg !1076
  %65 = load i32, i32* %ro.addr, align 4, !dbg !1077
  %tobool73 = icmp ne i32 %65, 0, !dbg !1077
  br i1 %tobool73, label %if.then79, label %lor.lhs.false, !dbg !1079

lor.lhs.false:                                    ; preds = %if.end69
  %66 = load i64, i64* %script_flags.addr, align 8, !dbg !1080
  %and74 = and i64 %66, 16, !dbg !1081
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1081
  br i1 %tobool75, label %if.end83, label %land.lhs.true76, !dbg !1082

land.lhs.true76:                                  ; preds = %lor.lhs.false
  %67 = load i64, i64* %script_flags.addr, align 8, !dbg !1083
  %and77 = and i64 %67, 1, !dbg !1084
  %tobool78 = icmp ne i64 %and77, 0, !dbg !1084
  br i1 %tobool78, label %if.then79, label %if.end83, !dbg !1085

if.then79:                                        ; preds = %land.lhs.true76, %if.end69
  %68 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1086
  %flags80 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %68, i32 0, i32 3, !dbg !1088
  %69 = load i32, i32* %flags80, align 8, !dbg !1089
  %conv = sext i32 %69 to i64, !dbg !1089
  %or81 = or i64 %conv, 32, !dbg !1089
  %conv82 = trunc i64 %or81 to i32, !dbg !1089
  store i32 %conv82, i32* %flags80, align 8, !dbg !1089
  br label %if.end83, !dbg !1090

if.end83:                                         ; preds = %if.then79, %land.lhs.true76, %lor.lhs.false
  %70 = load i64, i64* %script_flags.addr, align 8, !dbg !1091
  %and84 = and i64 %70, 16, !dbg !1093
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1093
  br i1 %tobool85, label %if.end94, label %land.lhs.true86, !dbg !1094

land.lhs.true86:                                  ; preds = %if.end83
  %71 = load i64, i64* %script_flags.addr, align 8, !dbg !1095
  %and87 = and i64 %71, 2, !dbg !1096
  %tobool88 = icmp ne i64 %and87, 0, !dbg !1096
  br i1 %tobool88, label %if.then89, label %if.end94, !dbg !1097

if.then89:                                        ; preds = %land.lhs.true86
  %72 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1098
  %flags90 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %72, i32 0, i32 3, !dbg !1100
  %73 = load i32, i32* %flags90, align 8, !dbg !1101
  %conv91 = sext i32 %73 to i64, !dbg !1101
  %or92 = or i64 %conv91, 64, !dbg !1101
  %conv93 = trunc i64 %or92 to i32, !dbg !1101
  store i32 %conv93, i32* %flags90, align 8, !dbg !1101
  br label %if.end94, !dbg !1102

if.end94:                                         ; preds = %if.then89, %land.lhs.true86, %if.end83
  %74 = load i64, i64* %script_flags.addr, align 8, !dbg !1103
  %and95 = and i64 %74, 16, !dbg !1105
  %tobool96 = icmp ne i64 %and95, 0, !dbg !1105
  br i1 %tobool96, label %if.then100, label %lor.lhs.false97, !dbg !1106

lor.lhs.false97:                                  ; preds = %if.end94
  %75 = load i64, i64* %script_flags.addr, align 8, !dbg !1107
  %and98 = and i64 %75, 32, !dbg !1108
  %tobool99 = icmp ne i64 %and98, 0, !dbg !1108
  br i1 %tobool99, label %if.then100, label %if.end105, !dbg !1109

if.then100:                                       ; preds = %lor.lhs.false97, %if.end94
  %76 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1110
  %flags101 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %76, i32 0, i32 3, !dbg !1112
  %77 = load i32, i32* %flags101, align 8, !dbg !1113
  %conv102 = sext i32 %77 to i64, !dbg !1113
  %or103 = or i64 %conv102, 256, !dbg !1113
  %conv104 = trunc i64 %or103 to i32, !dbg !1113
  store i32 %conv104, i32* %flags101, align 8, !dbg !1113
  br label %if.end105, !dbg !1114

if.end105:                                        ; preds = %if.then100, %lor.lhs.false97
  %78 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1115
  store %struct.scriptRunCtx* %78, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1116
  store i32 0, i32* %retval, align 4, !dbg !1117
  br label %return, !dbg !1117

return:                                           ; preds = %if.end105, %if.then58, %if.then54, %if.then45, %if.then36, %if.end33, %if.then23, %if.then13, %if.then8
  %79 = load i32, i32* %retval, align 4, !dbg !1118
  ret i32 %79, !dbg !1118
}

declare dso_local i32 @mustObeyClient(%struct.client*) #1

declare dso_local void @addReplyError(%struct.client*, i8*) #1

declare dso_local i32 @writeCommandsDeniedByDiskError() #1

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

declare dso_local void @addReplyErrorObject(%struct.client*, %struct.redisObject*) #1

declare dso_local i32 @selectDb(%struct.client*, i32) #1

declare dso_local i64 @mstime() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @scriptResetRun(%struct.scriptRunCtx* %run_ctx) #0 !dbg !1119 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1122
  %tobool = icmp ne %struct.scriptRunCtx* %0, null, !dbg !1122
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1122

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1122

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 258), !dbg !1122
  unreachable, !dbg !1122

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1122

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1123
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %1, i32 0, i32 1, !dbg !1124
  %2 = load %struct.client*, %struct.client** %c, align 8, !dbg !1124
  %flags = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !1125
  %3 = load i64, i64* %flags, align 8, !dbg !1126
  %and = and i64 %3, -9, !dbg !1126
  store i64 %and, i64* %flags, align 8, !dbg !1126
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 373), align 8, !dbg !1127
  %call = call i32 @scriptIsTimedout(), !dbg !1128
  %tobool1 = icmp ne i32 %call, 0, !dbg !1128
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1130

if.then:                                          ; preds = %cond.end
  %4 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1131
  call void @exitScriptTimedoutMode(%struct.scriptRunCtx* %4), !dbg !1133
  %5 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1134
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %5, i32 0, i32 2, !dbg !1135
  %6 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1135
  call void @unprotectClient(%struct.client* %6), !dbg !1136
  br label %if.end, !dbg !1137

if.end:                                           ; preds = %if.then, %cond.end
  %7 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1138
  %original_client2 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %7, i32 0, i32 2, !dbg !1139
  %8 = load %struct.client*, %struct.client** %original_client2, align 8, !dbg !1139
  call void @preventCommandPropagation(%struct.client* %8), !dbg !1140
  store %struct.scriptRunCtx* null, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1141
  ret void, !dbg !1142
}

; Function Attrs: noinline nounwind uwtable
define internal void @exitScriptTimedoutMode(%struct.scriptRunCtx* %run_ctx) #0 !dbg !1143 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1144, metadata !DIExpression()), !dbg !1145
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1146
  %1 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1146
  %cmp = icmp eq %struct.scriptRunCtx* %0, %1, !dbg !1146
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1146

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1146

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 47), !dbg !1146
  unreachable, !dbg !1146

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1146

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %call = call i32 @scriptIsTimedout(), !dbg !1147
  %tobool = icmp ne i32 %call, 0, !dbg !1147
  br i1 %tobool, label %cond.true1, label %cond.false2, !dbg !1147

cond.true1:                                       ; preds = %cond.end
  br label %cond.end4, !dbg !1147

cond.false2:                                      ; preds = %cond.end
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 48), !dbg !1147
  unreachable, !dbg !1147

unreachable.cont3:                                ; No predecessors!
  br label %cond.end4, !dbg !1147

cond.end4:                                        ; preds = %unreachable.cont3, %cond.true1
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1148
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 3, !dbg !1149
  %3 = load i32, i32* %flags, align 8, !dbg !1150
  %conv = sext i32 %3 to i64, !dbg !1150
  %and = and i64 %conv, -9, !dbg !1150
  %conv5 = trunc i64 %and to i32, !dbg !1150
  store i32 %conv5, i32* %flags, align 8, !dbg !1150
  call void (...) @blockingOperationEnds(), !dbg !1151
  %4 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !1152
  %tobool6 = icmp ne i8* %4, null, !dbg !1154
  br i1 %tobool6, label %land.lhs.true, label %if.end, !dbg !1155

land.lhs.true:                                    ; preds = %cond.end4
  %5 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 281), align 8, !dbg !1156
  %tobool7 = icmp ne %struct.client* %5, null, !dbg !1157
  br i1 %tobool7, label %if.then, label %if.end, !dbg !1158

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 281), align 8, !dbg !1159
  call void @queueClientForReprocessing(%struct.client* %6), !dbg !1160
  br label %if.end, !dbg !1160

if.end:                                           ; preds = %if.then, %land.lhs.true, %cond.end4
  ret void, !dbg !1161
}

declare dso_local void @unprotectClient(%struct.client*) #1

declare dso_local void @preventCommandPropagation(%struct.client*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptIsRunning() #0 !dbg !1162 {
entry:
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1163
  %cmp = icmp ne %struct.scriptRunCtx* %0, null, !dbg !1164
  %conv = zext i1 %cmp to i32, !dbg !1164
  ret i32 %conv, !dbg !1165
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scriptCurrFunction() #0 !dbg !1166 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !1169
  %tobool = icmp ne i32 %call, 0, !dbg !1169
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1169

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1169

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 284), !dbg !1169
  unreachable, !dbg !1169

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1169

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1170
  %funcname = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 0, !dbg !1171
  %1 = load i8*, i8** %funcname, align 8, !dbg !1171
  ret i8* %1, !dbg !1172
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptIsEval() #0 !dbg !1173 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !1174
  %tobool = icmp ne i32 %call, 0, !dbg !1174
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1174

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1174

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 289), !dbg !1174
  unreachable, !dbg !1174

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1174

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1175
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 3, !dbg !1176
  %1 = load i32, i32* %flags, align 8, !dbg !1176
  %conv = sext i32 %1 to i64, !dbg !1175
  %and = and i64 %conv, 128, !dbg !1177
  %conv1 = trunc i64 %and to i32, !dbg !1175
  ret i32 %conv1, !dbg !1178
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scriptKill(%struct.client* %c, i32 %is_eval) #0 !dbg !1179 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %is_eval.addr = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  store i32 %is_eval, i32* %is_eval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %is_eval.addr, metadata !1184, metadata !DIExpression()), !dbg !1185
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1186
  %tobool = icmp ne %struct.scriptRunCtx* %0, null, !dbg !1186
  br i1 %tobool, label %if.end, label %if.then, !dbg !1188

if.then:                                          ; preds = %entry
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1189
  call void @addReplyError(%struct.client* %1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0)), !dbg !1191
  br label %return, !dbg !1192

if.end:                                           ; preds = %entry
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1193
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 2, !dbg !1195
  %3 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1195
  %call = call i32 @mustObeyClient(%struct.client* %3), !dbg !1196
  %tobool1 = icmp ne i32 %call, 0, !dbg !1196
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1197

if.then2:                                         ; preds = %if.end
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1198
  call void @addReplyError(%struct.client* %4, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.20, i64 0, i64 0)), !dbg !1200
  br label %if.end3, !dbg !1201

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1202
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %5, i32 0, i32 3, !dbg !1204
  %6 = load i32, i32* %flags, align 8, !dbg !1204
  %conv = sext i32 %6 to i64, !dbg !1202
  %and = and i64 %conv, 1, !dbg !1205
  %tobool4 = icmp ne i64 %and, 0, !dbg !1205
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1206

if.then5:                                         ; preds = %if.end3
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1207
  call void @addReplyError(%struct.client* %7, i8* getelementptr inbounds ([193 x i8], [193 x i8]* @.str.21, i64 0, i64 0)), !dbg !1209
  br label %return, !dbg !1210

if.end6:                                          ; preds = %if.end3
  %8 = load i32, i32* %is_eval.addr, align 4, !dbg !1211
  %tobool7 = icmp ne i32 %8, 0, !dbg !1211
  br i1 %tobool7, label %land.lhs.true, label %if.end13, !dbg !1213

land.lhs.true:                                    ; preds = %if.end6
  %9 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1214
  %flags8 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %9, i32 0, i32 3, !dbg !1215
  %10 = load i32, i32* %flags8, align 8, !dbg !1215
  %conv9 = sext i32 %10 to i64, !dbg !1214
  %and10 = and i64 %conv9, 128, !dbg !1216
  %tobool11 = icmp ne i64 %and10, 0, !dbg !1216
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1217

if.then12:                                        ; preds = %land.lhs.true
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1218
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 22), align 8, !dbg !1220
  call void @addReplyErrorObject(%struct.client* %11, %struct.redisObject* %12), !dbg !1221
  br label %return, !dbg !1222

if.end13:                                         ; preds = %land.lhs.true, %if.end6
  %13 = load i32, i32* %is_eval.addr, align 4, !dbg !1223
  %tobool14 = icmp ne i32 %13, 0, !dbg !1223
  br i1 %tobool14, label %if.end21, label %land.lhs.true15, !dbg !1225

land.lhs.true15:                                  ; preds = %if.end13
  %14 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1226
  %flags16 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %14, i32 0, i32 3, !dbg !1227
  %15 = load i32, i32* %flags16, align 8, !dbg !1227
  %conv17 = sext i32 %15 to i64, !dbg !1226
  %and18 = and i64 %conv17, 128, !dbg !1228
  %tobool19 = icmp ne i64 %and18, 0, !dbg !1228
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1229

if.then20:                                        ; preds = %land.lhs.true15
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1230
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 21), align 8, !dbg !1232
  call void @addReplyErrorObject(%struct.client* %16, %struct.redisObject* %17), !dbg !1233
  br label %return, !dbg !1234

if.end21:                                         ; preds = %land.lhs.true15, %if.end13
  %18 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1235
  %flags22 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %18, i32 0, i32 3, !dbg !1236
  %19 = load i32, i32* %flags22, align 8, !dbg !1237
  %conv23 = sext i32 %19 to i64, !dbg !1237
  %or = or i64 %conv23, 16, !dbg !1237
  %conv24 = trunc i64 %or to i32, !dbg !1237
  store i32 %conv24, i32* %flags22, align 8, !dbg !1237
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1238
  %21 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !1239
  call void @addReply(%struct.client* %20, %struct.redisObject* %21), !dbg !1240
  br label %return, !dbg !1241

return:                                           ; preds = %if.end21, %if.then20, %if.then12, %if.then5, %if.then
  ret void, !dbg !1241
}

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptSetResp(%struct.scriptRunCtx* %run_ctx, i32 %resp) #0 !dbg !1242 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %resp.addr = alloca i32, align 4
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i32 %resp, i32* %resp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resp.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = load i32, i32* %resp.addr, align 4, !dbg !1249
  %cmp = icmp ne i32 %0, 2, !dbg !1251
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1252

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %resp.addr, align 4, !dbg !1253
  %cmp1 = icmp ne i32 %1, 3, !dbg !1254
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1255

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4, !dbg !1256
  br label %return, !dbg !1256

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %resp.addr, align 4, !dbg !1258
  %3 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1259
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %3, i32 0, i32 1, !dbg !1260
  %4 = load %struct.client*, %struct.client** %c, align 8, !dbg !1260
  %resp2 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 3, !dbg !1261
  store i32 %2, i32* %resp2, align 8, !dbg !1262
  store i32 0, i32* %retval, align 4, !dbg !1263
  br label %return, !dbg !1263

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !1264
  ret i32 %5, !dbg !1264
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @scriptSetRepl(%struct.scriptRunCtx* %run_ctx, i32 %repl) #0 !dbg !1265 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %repl.addr = alloca i32, align 4
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1266, metadata !DIExpression()), !dbg !1267
  store i32 %repl, i32* %repl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %repl.addr, metadata !1268, metadata !DIExpression()), !dbg !1269
  %0 = load i32, i32* %repl.addr, align 4, !dbg !1270
  %and = and i32 %0, -4, !dbg !1272
  %cmp = icmp ne i32 %and, 0, !dbg !1273
  br i1 %cmp, label %if.then, label %if.end, !dbg !1274

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1275
  br label %return, !dbg !1275

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %repl.addr, align 4, !dbg !1277
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1278
  %repl_flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 4, !dbg !1279
  store i32 %1, i32* %repl_flags, align 4, !dbg !1280
  store i32 0, i32* %retval, align 4, !dbg !1281
  br label %return, !dbg !1281

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1282
  ret i32 %3, !dbg !1282
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scriptCall(%struct.scriptRunCtx* %run_ctx, i8** %err) #0 !dbg !1283 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %err.addr = alloca i8**, align 8
  %c = alloca %struct.client*, align 8
  %cmd = alloca %struct.redisCommand*, align 8
  %call_flags = alloca i32, align 4
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1293
  %c1 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 1, !dbg !1294
  %1 = load %struct.client*, %struct.client** %c1, align 8, !dbg !1294
  store %struct.client* %1, %struct.client** %c, align 8, !dbg !1292
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1295
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 2, !dbg !1296
  %3 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1296
  %user = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 18, !dbg !1297
  %4 = load %struct.user*, %struct.user** %user, align 8, !dbg !1297
  %5 = load %struct.client*, %struct.client** %c, align 8, !dbg !1298
  %user2 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 18, !dbg !1299
  store %struct.user* %4, %struct.user** %user2, align 8, !dbg !1300
  %6 = load %struct.client*, %struct.client** %c, align 8, !dbg !1301
  call void @moduleCallCommandFilters(%struct.client* %6), !dbg !1302
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %cmd, metadata !1303, metadata !DIExpression()), !dbg !1304
  %7 = load %struct.client*, %struct.client** %c, align 8, !dbg !1305
  %argv = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 10, !dbg !1306
  %8 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1306
  %9 = load %struct.client*, %struct.client** %c, align 8, !dbg !1307
  %argc = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 9, !dbg !1308
  %10 = load i32, i32* %argc, align 8, !dbg !1308
  %call = call %struct.redisCommand* @lookupCommand(%struct.redisObject** %8, i32 %10), !dbg !1309
  store %struct.redisCommand* %call, %struct.redisCommand** %cmd, align 8, !dbg !1304
  %11 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1310
  %12 = load %struct.client*, %struct.client** %c, align 8, !dbg !1311
  %realcmd = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 17, !dbg !1312
  store %struct.redisCommand* %11, %struct.redisCommand** %realcmd, align 8, !dbg !1313
  %13 = load %struct.client*, %struct.client** %c, align 8, !dbg !1314
  %lastcmd = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 16, !dbg !1315
  store %struct.redisCommand* %11, %struct.redisCommand** %lastcmd, align 8, !dbg !1316
  %14 = load %struct.client*, %struct.client** %c, align 8, !dbg !1317
  %cmd3 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 15, !dbg !1318
  store %struct.redisCommand* %11, %struct.redisCommand** %cmd3, align 8, !dbg !1319
  %15 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1320
  %16 = load %struct.client*, %struct.client** %c, align 8, !dbg !1322
  %argc4 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 9, !dbg !1323
  %17 = load i32, i32* %argc4, align 8, !dbg !1323
  %18 = load i8**, i8*** %err.addr, align 8, !dbg !1324
  %call5 = call i32 @scriptVerifyCommandArity(%struct.redisCommand* %15, i32 %17, i8** %18), !dbg !1325
  %cmp = icmp ne i32 %call5, 0, !dbg !1326
  br i1 %cmp, label %if.then, label %if.end, !dbg !1327

if.then:                                          ; preds = %entry
  br label %error, !dbg !1328

if.end:                                           ; preds = %entry
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 376), align 4, !dbg !1330
  %tobool = icmp ne i32 %19, 0, !dbg !1332
  br i1 %tobool, label %if.end9, label %land.lhs.true, !dbg !1333

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1334
  %flags = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %20, i32 0, i32 12, !dbg !1335
  %21 = load i64, i64* %flags, align 8, !dbg !1335
  %and = and i64 %21, 64, !dbg !1336
  %tobool6 = icmp ne i64 %and, 0, !dbg !1336
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !1337

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0)), !dbg !1338
  %22 = load i8**, i8*** %err.addr, align 8, !dbg !1340
  store i8* %call8, i8** %22, align 8, !dbg !1341
  br label %error, !dbg !1342

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %23 = load %struct.client*, %struct.client** %c, align 8, !dbg !1343
  %24 = load i8**, i8*** %err.addr, align 8, !dbg !1345
  %call10 = call i32 @scriptVerifyAllowStale(%struct.client* %23, i8** %24), !dbg !1346
  %cmp11 = icmp ne i32 %call10, 0, !dbg !1347
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1348

if.then12:                                        ; preds = %if.end9
  br label %error, !dbg !1349

if.end13:                                         ; preds = %if.end9
  %25 = load %struct.client*, %struct.client** %c, align 8, !dbg !1351
  %26 = load i8**, i8*** %err.addr, align 8, !dbg !1353
  %call14 = call i32 @scriptVerifyACL(%struct.client* %25, i8** %26), !dbg !1354
  %cmp15 = icmp ne i32 %call14, 0, !dbg !1355
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1356

if.then16:                                        ; preds = %if.end13
  br label %error, !dbg !1357

if.end17:                                         ; preds = %if.end13
  %27 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1359
  %28 = load i8**, i8*** %err.addr, align 8, !dbg !1361
  %call18 = call i32 @scriptVerifyWriteCommandAllow(%struct.scriptRunCtx* %27, i8** %28), !dbg !1362
  %cmp19 = icmp ne i32 %call18, 0, !dbg !1363
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1364

if.then20:                                        ; preds = %if.end17
  br label %error, !dbg !1365

if.end21:                                         ; preds = %if.end17
  %29 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1367
  %30 = load i8**, i8*** %err.addr, align 8, !dbg !1369
  %call22 = call i32 @scriptVerifyOOM(%struct.scriptRunCtx* %29, i8** %30), !dbg !1370
  %cmp23 = icmp ne i32 %call22, 0, !dbg !1371
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !1372

if.then24:                                        ; preds = %if.end21
  br label %error, !dbg !1373

if.end25:                                         ; preds = %if.end21
  %31 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1375
  %flags26 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %31, i32 0, i32 12, !dbg !1377
  %32 = load i64, i64* %flags26, align 8, !dbg !1377
  %and27 = and i64 %32, 1, !dbg !1378
  %tobool28 = icmp ne i64 %and27, 0, !dbg !1378
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !1379

if.then29:                                        ; preds = %if.end25
  %33 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1380
  %flags30 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %33, i32 0, i32 3, !dbg !1382
  %34 = load i32, i32* %flags30, align 8, !dbg !1383
  %conv = sext i32 %34 to i64, !dbg !1383
  %or = or i64 %conv, 1, !dbg !1383
  %conv31 = trunc i64 %or to i32, !dbg !1383
  store i32 %conv31, i32* %flags30, align 8, !dbg !1383
  br label %if.end32, !dbg !1384

if.end32:                                         ; preds = %if.then29, %if.end25
  %35 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1385
  %36 = load %struct.client*, %struct.client** %c, align 8, !dbg !1387
  %37 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1388
  %original_client33 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %37, i32 0, i32 2, !dbg !1389
  %38 = load %struct.client*, %struct.client** %original_client33, align 8, !dbg !1389
  %39 = load i8**, i8*** %err.addr, align 8, !dbg !1390
  %call34 = call i32 @scriptVerifyClusterState(%struct.scriptRunCtx* %35, %struct.client* %36, %struct.client* %38, i8** %39), !dbg !1391
  %cmp35 = icmp ne i32 %call34, 0, !dbg !1392
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !1393

if.then37:                                        ; preds = %if.end32
  br label %error, !dbg !1394

if.end38:                                         ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i32* %call_flags, metadata !1396, metadata !DIExpression()), !dbg !1397
  store i32 3, i32* %call_flags, align 4, !dbg !1397
  %40 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1398
  %repl_flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %40, i32 0, i32 4, !dbg !1400
  %41 = load i32, i32* %repl_flags, align 4, !dbg !1400
  %and39 = and i32 %41, 1, !dbg !1401
  %tobool40 = icmp ne i32 %and39, 0, !dbg !1401
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1402

if.then41:                                        ; preds = %if.end38
  %42 = load i32, i32* %call_flags, align 4, !dbg !1403
  %or42 = or i32 %42, 4, !dbg !1403
  store i32 %or42, i32* %call_flags, align 4, !dbg !1403
  br label %if.end43, !dbg !1405

if.end43:                                         ; preds = %if.then41, %if.end38
  %43 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1406
  %repl_flags44 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %43, i32 0, i32 4, !dbg !1408
  %44 = load i32, i32* %repl_flags44, align 4, !dbg !1408
  %and45 = and i32 %44, 2, !dbg !1409
  %tobool46 = icmp ne i32 %and45, 0, !dbg !1409
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !1410

if.then47:                                        ; preds = %if.end43
  %45 = load i32, i32* %call_flags, align 4, !dbg !1411
  %or48 = or i32 %45, 8, !dbg !1411
  store i32 %or48, i32* %call_flags, align 4, !dbg !1411
  br label %if.end49, !dbg !1413

if.end49:                                         ; preds = %if.then47, %if.end43
  %46 = load %struct.client*, %struct.client** %c, align 8, !dbg !1414
  %47 = load i32, i32* %call_flags, align 4, !dbg !1415
  call void @call(%struct.client* %46, i32 %47), !dbg !1416
  %48 = load %struct.client*, %struct.client** %c, align 8, !dbg !1417
  %flags50 = getelementptr inbounds %struct.client, %struct.client* %48, i32 0, i32 1, !dbg !1417
  %49 = load i64, i64* %flags50, align 8, !dbg !1417
  %and51 = and i64 %49, 16, !dbg !1417
  %cmp52 = icmp eq i64 %and51, 0, !dbg !1417
  br i1 %cmp52, label %cond.true, label %cond.false, !dbg !1417

cond.true:                                        ; preds = %if.end49
  br label %cond.end, !dbg !1417

cond.false:                                       ; preds = %if.end49
  call void @_serverAssert(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 571), !dbg !1417
  unreachable, !dbg !1417

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1417

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  br label %return, !dbg !1418

error:                                            ; preds = %if.then37, %if.then24, %if.then20, %if.then16, %if.then12, %if.then7, %if.then
  call void @llvm.dbg.label(metadata !1419), !dbg !1420
  %50 = load %struct.client*, %struct.client** %c, align 8, !dbg !1421
  %51 = load i8**, i8*** %err.addr, align 8, !dbg !1422
  %52 = load i8*, i8** %51, align 8, !dbg !1423
  %53 = load i8**, i8*** %err.addr, align 8, !dbg !1424
  %54 = load i8*, i8** %53, align 8, !dbg !1425
  %call54 = call i64 @sdslen(i8* %54), !dbg !1426
  call void @afterErrorReply(%struct.client* %50, i8* %52, i64 %call54, i32 0), !dbg !1427
  %55 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1428
  %call55 = call i32 @incrCommandStatsOnError(%struct.redisCommand* %55, i32 1), !dbg !1429
  br label %return, !dbg !1430

return:                                           ; preds = %error, %cond.end
  ret void, !dbg !1430
}

declare dso_local void @moduleCallCommandFilters(%struct.client*) #1

declare dso_local %struct.redisCommand* @lookupCommand(%struct.redisObject**, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyCommandArity(%struct.redisCommand* %cmd, i32 %argc, i8** %err) #0 !dbg !1431 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca %struct.redisCommand*, align 8
  %argc.addr = alloca i32, align 4
  %err.addr = alloca i8**, align 8
  store %struct.redisCommand* %cmd, %struct.redisCommand** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %cmd.addr, metadata !1434, metadata !DIExpression()), !dbg !1435
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1436, metadata !DIExpression()), !dbg !1437
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  %0 = load %struct.redisCommand*, %struct.redisCommand** %cmd.addr, align 8, !dbg !1440
  %tobool = icmp ne %struct.redisCommand* %0, null, !dbg !1440
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1442

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.redisCommand*, %struct.redisCommand** %cmd.addr, align 8, !dbg !1443
  %arity = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %1, i32 0, i32 11, !dbg !1444
  %2 = load i32, i32* %arity, align 8, !dbg !1444
  %cmp = icmp sgt i32 %2, 0, !dbg !1445
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false3, !dbg !1446

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load %struct.redisCommand*, %struct.redisCommand** %cmd.addr, align 8, !dbg !1447
  %arity1 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %3, i32 0, i32 11, !dbg !1448
  %4 = load i32, i32* %arity1, align 8, !dbg !1448
  %5 = load i32, i32* %argc.addr, align 4, !dbg !1449
  %cmp2 = icmp ne i32 %4, %5, !dbg !1450
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !1451

lor.lhs.false3:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i32, i32* %argc.addr, align 4, !dbg !1452
  %7 = load %struct.redisCommand*, %struct.redisCommand** %cmd.addr, align 8, !dbg !1453
  %arity4 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %7, i32 0, i32 11, !dbg !1454
  %8 = load i32, i32* %arity4, align 8, !dbg !1454
  %sub = sub nsw i32 0, %8, !dbg !1455
  %cmp5 = icmp slt i32 %6, %sub, !dbg !1456
  br i1 %cmp5, label %if.then, label %if.end9, !dbg !1457

if.then:                                          ; preds = %lor.lhs.false3, %land.lhs.true, %entry
  %9 = load %struct.redisCommand*, %struct.redisCommand** %cmd.addr, align 8, !dbg !1458
  %tobool6 = icmp ne %struct.redisCommand* %9, null, !dbg !1458
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1461

if.then7:                                         ; preds = %if.then
  %call = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i64 0, i64 0)), !dbg !1462
  %10 = load i8**, i8*** %err.addr, align 8, !dbg !1463
  store i8* %call, i8** %10, align 8, !dbg !1464
  br label %if.end, !dbg !1465

if.else:                                          ; preds = %if.then
  %call8 = call i8* @sdsnew(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)), !dbg !1466
  %11 = load i8**, i8*** %err.addr, align 8, !dbg !1467
  store i8* %call8, i8** %11, align 8, !dbg !1468
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  store i32 -1, i32* %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

if.end9:                                          ; preds = %lor.lhs.false3
  store i32 0, i32* %retval, align 4, !dbg !1470
  br label %return, !dbg !1470

return:                                           ; preds = %if.end9, %if.end
  %12 = load i32, i32* %retval, align 4, !dbg !1471
  ret i32 %12, !dbg !1471
}

declare dso_local i8* @sdsnew(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyAllowStale(%struct.client* %c, i8** %err) #0 !dbg !1472 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %err.addr = alloca i8**, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1477, metadata !DIExpression()), !dbg !1478
  %0 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !1479
  %tobool = icmp ne i8* %0, null, !dbg !1481
  br i1 %tobool, label %if.end, label %if.then, !dbg !1482

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1483
  br label %return, !dbg !1483

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 284), align 4, !dbg !1485
  %cmp = icmp eq i32 %1, 12, !dbg !1487
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1488

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1489
  br label %return, !dbg !1489

if.end2:                                          ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 292), align 8, !dbg !1491
  %cmp3 = icmp eq i32 %2, 1, !dbg !1493
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1494

if.then4:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end5:                                          ; preds = %if.end2
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1497
  %cmd = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 15, !dbg !1499
  %4 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1499
  %flags = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %4, i32 0, i32 12, !dbg !1500
  %5 = load i64, i64* %flags, align 8, !dbg !1500
  %and = and i64 %5, 1024, !dbg !1501
  %tobool6 = icmp ne i64 %and, 0, !dbg !1501
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1502

if.then7:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

if.end8:                                          ; preds = %if.end5
  %call = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0)), !dbg !1505
  %6 = load i8**, i8*** %err.addr, align 8, !dbg !1506
  store i8* %call, i8** %6, align 8, !dbg !1507
  store i32 -1, i32* %retval, align 4, !dbg !1508
  br label %return, !dbg !1508

return:                                           ; preds = %if.end8, %if.then7, %if.then4, %if.then1, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1509
  ret i32 %7, !dbg !1509
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyACL(%struct.client* %c, i8** %err) #0 !dbg !1510 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %err.addr = alloca i8**, align 8
  %acl_errpos = alloca i32, align 4
  %acl_retval = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.declare(metadata i32* %acl_errpos, metadata !1515, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata i32* %acl_retval, metadata !1517, metadata !DIExpression()), !dbg !1518
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1519
  %call = call i32 @ACLCheckAllPerm(%struct.client* %0, i32* %acl_errpos), !dbg !1520
  store i32 %call, i32* %acl_retval, align 4, !dbg !1518
  %1 = load i32, i32* %acl_retval, align 4, !dbg !1521
  %cmp = icmp ne i32 %1, 0, !dbg !1523
  br i1 %cmp, label %if.then, label %if.end, !dbg !1524

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1525
  %3 = load i32, i32* %acl_retval, align 4, !dbg !1527
  %4 = load i32, i32* %acl_errpos, align 4, !dbg !1528
  call void @addACLLogEntry(%struct.client* %2, i32 %3, i32 1, i32 %4, i8* null, i8* null), !dbg !1529
  %call1 = call i8* @sdsempty(), !dbg !1530
  %5 = load i32, i32* %acl_retval, align 4, !dbg !1531
  %call2 = call i8* @getAclErrorMessage(i32 %5), !dbg !1532
  %call3 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8* %call2), !dbg !1533
  %6 = load i8**, i8*** %err.addr, align 8, !dbg !1534
  store i8* %call3, i8** %6, align 8, !dbg !1535
  store i32 -1, i32* %retval, align 4, !dbg !1536
  br label %return, !dbg !1536

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1537
  br label %return, !dbg !1537

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !1538
  ret i32 %7, !dbg !1538
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyWriteCommandAllow(%struct.scriptRunCtx* %run_ctx, i8** %err) #0 !dbg !1539 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %err.addr = alloca i8**, align 8
  %deny_write_type = alloca i32, align 4
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1545, metadata !DIExpression()), !dbg !1546
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1547
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 3, !dbg !1549
  %1 = load i32, i32* %flags, align 8, !dbg !1549
  %conv = sext i32 %1 to i64, !dbg !1547
  %and = and i64 %conv, 32, !dbg !1550
  %tobool = icmp ne i64 %and, 0, !dbg !1550
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1551

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1552
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %2, i32 0, i32 1, !dbg !1553
  %3 = load %struct.client*, %struct.client** %c, align 8, !dbg !1553
  %cmd = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 15, !dbg !1554
  %4 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1554
  %flags1 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %4, i32 0, i32 12, !dbg !1555
  %5 = load i64, i64* %flags1, align 8, !dbg !1555
  %and2 = and i64 %5, 65537, !dbg !1556
  %tobool3 = icmp ne i64 %and2, 0, !dbg !1556
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1557

if.then:                                          ; preds = %land.lhs.true
  %call = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0)), !dbg !1558
  %6 = load i8**, i8*** %err.addr, align 8, !dbg !1560
  store i8* %call, i8** %6, align 8, !dbg !1561
  store i32 -1, i32* %retval, align 4, !dbg !1562
  br label %return, !dbg !1562

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1563
  %c4 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %7, i32 0, i32 1, !dbg !1565
  %8 = load %struct.client*, %struct.client** %c4, align 8, !dbg !1565
  %cmd5 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 15, !dbg !1566
  %9 = load %struct.redisCommand*, %struct.redisCommand** %cmd5, align 8, !dbg !1566
  %flags6 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %9, i32 0, i32 12, !dbg !1567
  %10 = load i64, i64* %flags6, align 8, !dbg !1567
  %and7 = and i64 %10, 1, !dbg !1568
  %tobool8 = icmp ne i64 %and7, 0, !dbg !1568
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1569

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1570
  br label %return, !dbg !1570

if.end10:                                         ; preds = %if.end
  %11 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1571
  %flags11 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %11, i32 0, i32 3, !dbg !1573
  %12 = load i32, i32* %flags11, align 8, !dbg !1573
  %conv12 = sext i32 %12 to i64, !dbg !1571
  %and13 = and i64 %conv12, 1, !dbg !1574
  %tobool14 = icmp ne i64 %and13, 0, !dbg !1574
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1575

if.then15:                                        ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !1576
  br label %return, !dbg !1576

if.end16:                                         ; preds = %if.end10
  call void @llvm.dbg.declare(metadata i32* %deny_write_type, metadata !1577, metadata !DIExpression()), !dbg !1578
  %call17 = call i32 @writeCommandsDeniedByDiskError(), !dbg !1579
  store i32 %call17, i32* %deny_write_type, align 4, !dbg !1578
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !1580
  %tobool18 = icmp ne i8* %13, null, !dbg !1582
  br i1 %tobool18, label %land.lhs.true19, label %if.end26, !dbg !1583

land.lhs.true19:                                  ; preds = %if.end16
  %14 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 293), align 4, !dbg !1584
  %tobool20 = icmp ne i32 %14, 0, !dbg !1585
  br i1 %tobool20, label %land.lhs.true21, label %if.end26, !dbg !1586

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %15 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1587
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %15, i32 0, i32 2, !dbg !1588
  %16 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1588
  %call22 = call i32 @mustObeyClient(%struct.client* %16), !dbg !1589
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1589
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !1590

if.then24:                                        ; preds = %land.lhs.true21
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 26), align 8, !dbg !1591
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i32 0, i32 2, !dbg !1593
  %18 = load i8*, i8** %ptr, align 8, !dbg !1593
  %call25 = call i8* @sdsdup(i8* %18), !dbg !1594
  %19 = load i8**, i8*** %err.addr, align 8, !dbg !1595
  store i8* %call25, i8** %19, align 8, !dbg !1596
  store i32 -1, i32* %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end26:                                         ; preds = %land.lhs.true21, %land.lhs.true19, %if.end16
  %20 = load i32, i32* %deny_write_type, align 4, !dbg !1598
  %cmp = icmp ne i32 %20, 0, !dbg !1600
  br i1 %cmp, label %if.then28, label %if.end30, !dbg !1601

if.then28:                                        ; preds = %if.end26
  %21 = load i32, i32* %deny_write_type, align 4, !dbg !1602
  %call29 = call i8* @writeCommandsGetDiskErrorMessage(i32 %21), !dbg !1604
  %22 = load i8**, i8*** %err.addr, align 8, !dbg !1605
  store i8* %call29, i8** %22, align 8, !dbg !1606
  store i32 -1, i32* %retval, align 4, !dbg !1607
  br label %return, !dbg !1607

if.end30:                                         ; preds = %if.end26
  %call31 = call i32 @checkGoodReplicasStatus(), !dbg !1608
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1608
  br i1 %tobool32, label %if.end36, label %if.then33, !dbg !1610

if.then33:                                        ; preds = %if.end30
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 29), align 8, !dbg !1611
  %ptr34 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i32 0, i32 2, !dbg !1613
  %24 = load i8*, i8** %ptr34, align 8, !dbg !1613
  %call35 = call i8* @sdsdup(i8* %24), !dbg !1614
  %25 = load i8**, i8*** %err.addr, align 8, !dbg !1615
  store i8* %call35, i8** %25, align 8, !dbg !1616
  store i32 -1, i32* %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end36:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !1618
  br label %return, !dbg !1618

return:                                           ; preds = %if.end36, %if.then33, %if.then28, %if.then24, %if.then15, %if.then9, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !1619
  ret i32 %26, !dbg !1619
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyOOM(%struct.scriptRunCtx* %run_ctx, i8** %err) #0 !dbg !1620 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %err.addr = alloca i8**, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1621, metadata !DIExpression()), !dbg !1622
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1623, metadata !DIExpression()), !dbg !1624
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1625
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 3, !dbg !1627
  %1 = load i32, i32* %flags, align 8, !dbg !1627
  %conv = sext i32 %1 to i64, !dbg !1625
  %and = and i64 %conv, 64, !dbg !1628
  %tobool = icmp ne i64 %and, 0, !dbg !1628
  br i1 %tobool, label %if.then, label %if.end, !dbg !1629

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !1630
  br label %return, !dbg !1630

if.end:                                           ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !1632
  %tobool1 = icmp ne i64 %2, 0, !dbg !1634
  br i1 %tobool1, label %land.lhs.true, label %if.end16, !dbg !1635

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1636
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %3, i32 0, i32 2, !dbg !1637
  %4 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1637
  %call = call i32 @mustObeyClient(%struct.client* %4), !dbg !1638
  %tobool2 = icmp ne i32 %call, 0, !dbg !1638
  br i1 %tobool2, label %if.end16, label %land.lhs.true3, !dbg !1639

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1640
  %flags4 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %5, i32 0, i32 3, !dbg !1641
  %6 = load i32, i32* %flags4, align 8, !dbg !1641
  %conv5 = sext i32 %6 to i64, !dbg !1640
  %and6 = and i64 %conv5, 1, !dbg !1642
  %tobool7 = icmp ne i64 %and6, 0, !dbg !1642
  br i1 %tobool7, label %if.end16, label %land.lhs.true8, !dbg !1643

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 375), align 8, !dbg !1644
  %tobool9 = icmp ne i32 %7, 0, !dbg !1645
  br i1 %tobool9, label %land.lhs.true10, label %if.end16, !dbg !1646

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %8 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1647
  %c = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %8, i32 0, i32 1, !dbg !1648
  %9 = load %struct.client*, %struct.client** %c, align 8, !dbg !1648
  %cmd = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 15, !dbg !1649
  %10 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1649
  %flags11 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %10, i32 0, i32 12, !dbg !1650
  %11 = load i64, i64* %flags11, align 8, !dbg !1650
  %and12 = and i64 %11, 4, !dbg !1651
  %tobool13 = icmp ne i64 %and12, 0, !dbg !1651
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !1652

if.then14:                                        ; preds = %land.lhs.true10
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 31), align 8, !dbg !1653
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i32 0, i32 2, !dbg !1655
  %13 = load i8*, i8** %ptr, align 8, !dbg !1655
  %call15 = call i8* @sdsdup(i8* %13), !dbg !1656
  %14 = load i8**, i8*** %err.addr, align 8, !dbg !1657
  store i8* %call15, i8** %14, align 8, !dbg !1658
  store i32 -1, i32* %retval, align 4, !dbg !1659
  br label %return, !dbg !1659

if.end16:                                         ; preds = %land.lhs.true10, %land.lhs.true8, %land.lhs.true3, %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4, !dbg !1660
  br label %return, !dbg !1660

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1661
  ret i32 %15, !dbg !1661
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @scriptVerifyClusterState(%struct.scriptRunCtx* %run_ctx, %struct.client* %c, %struct.client* %original_c, i8** %err) #0 !dbg !1662 {
entry:
  %retval = alloca i32, align 4
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %c.addr = alloca %struct.client*, align 8
  %original_c.addr = alloca %struct.client*, align 8
  %err.addr = alloca i8**, align 8
  %error_code = alloca i32, align 4
  %hashslot = alloca i32, align 4
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1665, metadata !DIExpression()), !dbg !1666
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1667, metadata !DIExpression()), !dbg !1668
  store %struct.client* %original_c, %struct.client** %original_c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %original_c.addr, metadata !1669, metadata !DIExpression()), !dbg !1670
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1671, metadata !DIExpression()), !dbg !1672
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 352), align 8, !dbg !1673
  %tobool = icmp ne i32 %0, 0, !dbg !1675
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1676

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.client*, %struct.client** %original_c.addr, align 8, !dbg !1677
  %call = call i32 @mustObeyClient(%struct.client* %1), !dbg !1678
  %tobool1 = icmp ne i32 %call, 0, !dbg !1678
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1679

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1680
  br label %return, !dbg !1680

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %error_code, metadata !1682, metadata !DIExpression()), !dbg !1683
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1684
  %flags = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 1, !dbg !1685
  %3 = load i64, i64* %flags, align 8, !dbg !1686
  %and = and i64 %3, -131585, !dbg !1686
  store i64 %and, i64* %flags, align 8, !dbg !1686
  %4 = load %struct.client*, %struct.client** %original_c.addr, align 8, !dbg !1687
  %flags2 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1, !dbg !1688
  %5 = load i64, i64* %flags2, align 8, !dbg !1688
  %and3 = and i64 %5, 131584, !dbg !1689
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1690
  %flags4 = getelementptr inbounds %struct.client, %struct.client* %6, i32 0, i32 1, !dbg !1691
  %7 = load i64, i64* %flags4, align 8, !dbg !1692
  %or = or i64 %7, %and3, !dbg !1692
  store i64 %or, i64* %flags4, align 8, !dbg !1692
  call void @llvm.dbg.declare(metadata i32* %hashslot, metadata !1693, metadata !DIExpression()), !dbg !1694
  store i32 -1, i32* %hashslot, align 4, !dbg !1694
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1695
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1697
  %cmd = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 15, !dbg !1698
  %10 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1698
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1699
  %argv = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 10, !dbg !1700
  %12 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1700
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1701
  %argc = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 9, !dbg !1702
  %14 = load i32, i32* %argc, align 8, !dbg !1702
  %call5 = call %struct.clusterNode* @getNodeByQuery(%struct.client* %8, %struct.redisCommand* %10, %struct.redisObject** %12, i32 %14, i32* %hashslot, i32* %error_code), !dbg !1703
  %15 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 356), align 8, !dbg !1704
  %myself = getelementptr inbounds %struct.clusterState, %struct.clusterState* %15, i32 0, i32 0, !dbg !1705
  %16 = load %struct.clusterNode*, %struct.clusterNode** %myself, align 8, !dbg !1705
  %cmp = icmp ne %struct.clusterNode* %call5, %16, !dbg !1706
  br i1 %cmp, label %if.then6, label %if.end17, !dbg !1707

if.then6:                                         ; preds = %if.end
  %17 = load i32, i32* %error_code, align 4, !dbg !1708
  %cmp7 = icmp eq i32 %17, 7, !dbg !1711
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1712

if.then8:                                         ; preds = %if.then6
  %call9 = call i8* @sdsnew(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.32, i64 0, i64 0)), !dbg !1713
  %18 = load i8**, i8*** %err.addr, align 8, !dbg !1715
  store i8* %call9, i8** %18, align 8, !dbg !1716
  br label %if.end16, !dbg !1717

if.else:                                          ; preds = %if.then6
  %19 = load i32, i32* %error_code, align 4, !dbg !1718
  %cmp10 = icmp eq i32 %19, 5, !dbg !1720
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !1721

if.then11:                                        ; preds = %if.else
  %call12 = call i8* @sdsnew(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.33, i64 0, i64 0)), !dbg !1722
  %20 = load i8**, i8*** %err.addr, align 8, !dbg !1724
  store i8* %call12, i8** %20, align 8, !dbg !1725
  br label %if.end15, !dbg !1726

if.else13:                                        ; preds = %if.else
  %call14 = call i8* @sdsnew(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.34, i64 0, i64 0)), !dbg !1727
  %21 = load i8**, i8*** %err.addr, align 8, !dbg !1729
  store i8* %call14, i8** %21, align 8, !dbg !1730
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  store i32 -1, i32* %retval, align 4, !dbg !1731
  br label %return, !dbg !1731

if.end17:                                         ; preds = %if.end
  %22 = load i32, i32* %hashslot, align 4, !dbg !1732
  %cmp18 = icmp ne i32 %22, -1, !dbg !1734
  br i1 %cmp18, label %land.lhs.true, label %if.end35, !dbg !1735

land.lhs.true:                                    ; preds = %if.end17
  %23 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1736
  %flags19 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %23, i32 0, i32 3, !dbg !1737
  %24 = load i32, i32* %flags19, align 8, !dbg !1737
  %conv = sext i32 %24 to i64, !dbg !1736
  %and20 = and i64 %conv, 256, !dbg !1738
  %tobool21 = icmp ne i64 %and20, 0, !dbg !1738
  br i1 %tobool21, label %if.end35, label %if.then22, !dbg !1739

if.then22:                                        ; preds = %land.lhs.true
  %25 = load %struct.client*, %struct.client** %original_c.addr, align 8, !dbg !1740
  %slot = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 28, !dbg !1743
  %26 = load i32, i32* %slot, align 8, !dbg !1743
  %cmp23 = icmp eq i32 %26, -1, !dbg !1744
  br i1 %cmp23, label %if.then25, label %if.else27, !dbg !1745

if.then25:                                        ; preds = %if.then22
  %27 = load i32, i32* %hashslot, align 4, !dbg !1746
  %28 = load %struct.client*, %struct.client** %original_c.addr, align 8, !dbg !1748
  %slot26 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 28, !dbg !1749
  store i32 %27, i32* %slot26, align 8, !dbg !1750
  br label %if.end34, !dbg !1751

if.else27:                                        ; preds = %if.then22
  %29 = load %struct.client*, %struct.client** %original_c.addr, align 8, !dbg !1752
  %slot28 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 28, !dbg !1754
  %30 = load i32, i32* %slot28, align 8, !dbg !1754
  %31 = load i32, i32* %hashslot, align 4, !dbg !1755
  %cmp29 = icmp ne i32 %30, %31, !dbg !1756
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !1757

if.then31:                                        ; preds = %if.else27
  %call32 = call i8* @sdsnew(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.35, i64 0, i64 0)), !dbg !1758
  %32 = load i8**, i8*** %err.addr, align 8, !dbg !1760
  store i8* %call32, i8** %32, align 8, !dbg !1761
  store i32 -1, i32* %retval, align 4, !dbg !1762
  br label %return, !dbg !1762

if.end33:                                         ; preds = %if.else27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then25
  br label %if.end35, !dbg !1763

if.end35:                                         ; preds = %if.end34, %land.lhs.true, %if.end17
  store i32 0, i32* %retval, align 4, !dbg !1764
  br label %return, !dbg !1764

return:                                           ; preds = %if.end35, %if.then31, %if.end16, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !1765
  ret i32 %33, !dbg !1765
}

declare dso_local void @call(%struct.client*, i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

declare dso_local void @afterErrorReply(%struct.client*, i8*, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1766 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1770, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1772, metadata !DIExpression()), !dbg !1773
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1774
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1774
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1774
  store i8 %1, i8* %flags, align 1, !dbg !1773
  %2 = load i8, i8* %flags, align 1, !dbg !1775
  %conv = zext i8 %2 to i32, !dbg !1775
  %and = and i32 %conv, 7, !dbg !1776
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1777

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1778
  %conv1 = zext i8 %3 to i32, !dbg !1778
  %shr = ashr i32 %conv1, 3, !dbg !1778
  %conv2 = sext i32 %shr to i64, !dbg !1778
  store i64 %conv2, i64* %retval, align 8, !dbg !1780
  br label %return, !dbg !1780

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1781
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1781
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1782
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1782
  %6 = load i8, i8* %len, align 1, !dbg !1782
  %conv4 = zext i8 %6 to i64, !dbg !1781
  store i64 %conv4, i64* %retval, align 8, !dbg !1783
  br label %return, !dbg !1783

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1784
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1784
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1785
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1785
  %9 = load i16, i16* %len7, align 1, !dbg !1785
  %conv8 = zext i16 %9 to i64, !dbg !1784
  store i64 %conv8, i64* %retval, align 8, !dbg !1786
  br label %return, !dbg !1786

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1787
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1787
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1788
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1788
  %12 = load i32, i32* %len11, align 1, !dbg !1788
  %conv12 = zext i32 %12 to i64, !dbg !1787
  store i64 %conv12, i64* %retval, align 8, !dbg !1789
  br label %return, !dbg !1789

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1790
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1790
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1791
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1791
  %15 = load i64, i64* %len15, align 1, !dbg !1791
  store i64 %15, i64* %retval, align 8, !dbg !1792
  br label %return, !dbg !1792

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1793
  br label %return, !dbg !1793

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1794
  ret i64 %16, !dbg !1794
}

declare dso_local i32 @incrCommandStatsOnError(%struct.redisCommand*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @scriptTimeSnapshot() #0 !dbg !1795 {
entry:
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1798
  %tobool = icmp ne %struct.scriptRunCtx* %0, null, !dbg !1798
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1798

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1798

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 581), !dbg !1798
  unreachable, !dbg !1798

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1798

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1799
  %snapshot_time = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %1, i32 0, i32 6, !dbg !1800
  %2 = load i64, i64* %snapshot_time, align 8, !dbg !1800
  ret i64 %2, !dbg !1801
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @scriptRunDuration() #0 !dbg !1802 {
entry:
  %call = call i32 @scriptIsRunning(), !dbg !1805
  %tobool = icmp ne i32 %call, 0, !dbg !1805
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1805

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1805

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 586), !dbg !1805
  unreachable, !dbg !1805

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1805

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** @curr_run_ctx, align 8, !dbg !1806
  %start_time = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 5, !dbg !1807
  %1 = load i64, i64* %start_time, align 8, !dbg !1807
  %call1 = call i64 @elapsedMs(i64 %1), !dbg !1808
  ret i64 %call1, !dbg !1809
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedUs(i64 %start_time) #0 !dbg !1810 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !1811, metadata !DIExpression()), !dbg !1812
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1813
  %call = call i64 %0(), !dbg !1813
  %1 = load i64, i64* %start_time.addr, align 8, !dbg !1814
  %sub = sub i64 %call, %1, !dbg !1815
  ret i64 %sub, !dbg !1816
}

declare dso_local void @blockingOperationStarts(...) #1

declare dso_local void @blockingOperationEnds(...) #1

declare dso_local void @queueClientForReprocessing(%struct.client*) #1

declare dso_local i32 @ACLCheckAllPerm(%struct.client*, i32*) #1

declare dso_local void @addACLLogEntry(%struct.client*, i32, i32, i32, i8*, i8*) #1

declare dso_local i8* @sdscatfmt(i8*, i8*, ...) #1

declare dso_local i8* @sdsempty() #1

declare dso_local i8* @getAclErrorMessage(i32) #1

declare dso_local i8* @sdsdup(i8*) #1

declare dso_local i8* @writeCommandsGetDiskErrorMessage(i32) #1

declare dso_local i32 @checkGoodReplicasStatus() #1

declare dso_local %struct.clusterNode* @getNodeByQuery(%struct.client*, %struct.redisCommand*, %struct.redisObject**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!751, !752, !753, !754, !755}
!llvm.ident = !{!756}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "scripts_flags_def", scope: !2, file: !3, line: 34, type: !743, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !74, globals: !122, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "script.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5, !15, !36, !42, !48, !59}
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
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 398, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!61 = !DIEnumerator(name: "REPL_STATE_NONE", value: 0)
!62 = !DIEnumerator(name: "REPL_STATE_CONNECT", value: 1)
!63 = !DIEnumerator(name: "REPL_STATE_CONNECTING", value: 2)
!64 = !DIEnumerator(name: "REPL_STATE_RECEIVE_PING_REPLY", value: 3)
!65 = !DIEnumerator(name: "REPL_STATE_SEND_HANDSHAKE", value: 4)
!66 = !DIEnumerator(name: "REPL_STATE_RECEIVE_AUTH_REPLY", value: 5)
!67 = !DIEnumerator(name: "REPL_STATE_RECEIVE_PORT_REPLY", value: 6)
!68 = !DIEnumerator(name: "REPL_STATE_RECEIVE_IP_REPLY", value: 7)
!69 = !DIEnumerator(name: "REPL_STATE_RECEIVE_CAPA_REPLY", value: 8)
!70 = !DIEnumerator(name: "REPL_STATE_SEND_PSYNC", value: 9)
!71 = !DIEnumerator(name: "REPL_STATE_RECEIVE_PSYNC_REPLY", value: 10)
!72 = !DIEnumerator(name: "REPL_STATE_TRANSFER", value: 11)
!73 = !DIEnumerator(name: "REPL_STATE_CONNECTED", value: 12)
!74 = !{!75, !76, !93, !103, !112}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !78, line: 51, size: 24, elements: !79)
!78 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!79 = !{!80, !86, !87, !88}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !78, line: 52, baseType: !81, size: 8)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !82, line: 24, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !84, line: 38, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !78, line: 53, baseType: !81, size: 8, offset: 8)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !78, line: 54, baseType: !85, size: 8, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !77, file: !78, line: 55, baseType: !89, offset: 24)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, elements: !91)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!91 = !{!92}
!92 = !DISubrange(count: -1)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !78, line: 57, size: 40, elements: !95)
!95 = !{!96, !100, !101, !102}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !94, file: !78, line: 58, baseType: !97, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !82, line: 25, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !84, line: 40, baseType: !99)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !94, file: !78, line: 59, baseType: !97, size: 16, offset: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !78, line: 60, baseType: !85, size: 8, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !94, file: !78, line: 61, baseType: !89, offset: 40)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !78, line: 63, size: 72, elements: !105)
!105 = !{!106, !109, !110, !111}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !104, file: !78, line: 64, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !82, line: 26, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !84, line: 42, baseType: !7)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !104, file: !78, line: 65, baseType: !107, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !78, line: 66, baseType: !85, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !104, file: !78, line: 67, baseType: !89, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !78, line: 69, size: 136, elements: !114)
!114 = !{!115, !119, !120, !121}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !113, file: !78, line: 70, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !82, line: 27, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !84, line: 45, baseType: !118)
!118 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !113, file: !78, line: 71, baseType: !116, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !78, line: 72, baseType: !85, size: 8, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !113, file: !78, line: 73, baseType: !89, offset: 136)
!122 = !{!0, !123}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "curr_run_ctx", scope: !2, file: !3, line: 44, type: !125, isLocal: true, isDefinition: true)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptRunCtx", file: !127, line: 68, baseType: !128)
!127 = !DIFile(filename: "./script.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptRunCtx", file: !127, line: 70, size: 384, elements: !129)
!129 = !{!130, !133, !738, !739, !740, !741, !742}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "funcname", scope: !128, file: !127, line: 71, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !128, file: !127, line: 72, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !137)
!137 = !{!138, !139, !140, !290, !291, !418, !428, !430, !431, !432, !433, !435, !436, !437, !438, !439, !590, !591, !592, !602, !603, !604, !605, !606, !608, !609, !610, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !640, !641, !642, !643, !644, !662, !663, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !699, !700, !701, !702, !721, !722, !723, !724, !731, !732, !733, !734, !735, !736, !737}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !136, file: !16, line: 1090, baseType: !116, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !16, line: 1091, baseType: !116, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !136, file: !16, line: 1092, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !144)
!144 = !{!145, !279, !281, !283, !284, !285, !286, !287, !288, !289}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !6, line: 78, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !149)
!149 = !{!150, !214, !223, !231, !242, !246, !247, !251, !255, !256, !260, !264, !273, !274, !275}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !148, file: !6, line: 60, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154, !159, !75, !159}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !156, line: 99, size: 640, elements: !157)
!156 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!157 = !{!158, !160, !161, !163, !174, !181, !205, !206, !207, !212, !213}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !155, file: !156, line: 100, baseType: !159, size: 32)
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !155, file: !156, line: 101, baseType: !159, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !155, file: !156, line: 102, baseType: !162, size: 64, offset: 64)
!162 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !155, file: !156, line: 103, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !156, line: 77, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !156, line: 72, size: 256, elements: !167)
!167 = !{!168, !169, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !166, file: !156, line: 73, baseType: !159, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !166, file: !156, line: 74, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !156, line: 66, baseType: !152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !166, file: !156, line: 75, baseType: !170, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !166, file: !156, line: 76, baseType: !75, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !155, file: !156, line: 104, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !156, line: 96, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !156, line: 93, size: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !177, file: !156, line: 94, baseType: !159, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !177, file: !156, line: 95, baseType: !159, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !155, file: !156, line: 105, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !156, line: 90, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !156, line: 80, size: 512, elements: !185)
!185 = !{!186, !187, !190, !195, !200, !201, !203, !204}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !156, line: 81, baseType: !162, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !184, file: !156, line: 82, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !189, line: 22, baseType: !116)
!189 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !184, file: !156, line: 83, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !156, line: 67, baseType: !193)
!193 = !DISubroutineType(types: !194)
!194 = !{!159, !154, !162, !75}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !184, file: !156, line: 84, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !156, line: 68, baseType: !198)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !154, !75}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !184, file: !156, line: 85, baseType: !75, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !156, line: 86, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !156, line: 87, baseType: !202, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !184, file: !156, line: 88, baseType: !159, size: 32, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !155, file: !156, line: 106, baseType: !159, size: 32, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !155, file: !156, line: 107, baseType: !75, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !155, file: !156, line: 108, baseType: !208, size: 64, offset: 448)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !156, line: 69, baseType: !210)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !154}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !155, file: !156, line: 109, baseType: !208, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !156, line: 110, baseType: !159, size: 32, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !148, file: !6, line: 61, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!159, !218, !131, !159, !131, !219}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !218}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !148, file: !6, line: 62, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!159, !218, !227, !229}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !230, line: 46, baseType: !118)
!230 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!231 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !148, file: !6, line: 63, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!159, !218, !235, !159}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !238, line: 26, size: 128, elements: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !237, file: !238, line: 28, baseType: !75, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !237, file: !238, line: 29, baseType: !229, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !148, file: !6, line: 64, baseType: !243, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!159, !218, !75, !229}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !148, file: !6, line: 65, baseType: !220, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !148, file: !6, line: 66, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!159, !218, !219}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !148, file: !6, line: 67, baseType: !252, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!159, !218, !219, !159}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !148, file: !6, line: 68, baseType: !248, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !148, file: !6, line: 69, baseType: !257, size: 64, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!131, !218}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !148, file: !6, line: 70, baseType: !261, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!159, !218, !131, !159, !162}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !148, file: !6, line: 71, baseType: !265, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !218, !272, !268, !162}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !269, line: 108, baseType: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !84, line: 194, baseType: !271)
!271 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !148, file: !6, line: 72, baseType: !265, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !148, file: !6, line: 73, baseType: !265, size: 64, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !148, file: !6, line: 74, baseType: !276, size: 64, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!159, !218}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !143, file: !6, line: 79, baseType: !280, size: 32, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !6, line: 80, baseType: !282, size: 16, offset: 96)
!282 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !143, file: !6, line: 81, baseType: !282, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !143, file: !6, line: 82, baseType: !159, size: 32, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !143, file: !6, line: 83, baseType: !75, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !143, file: !6, line: 84, baseType: !219, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !143, file: !6, line: 85, baseType: !219, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !143, file: !6, line: 86, baseType: !219, size: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !143, file: !6, line: 87, baseType: !159, size: 32, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !136, file: !16, line: 1093, baseType: !159, size: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !136, file: !16, line: 1094, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !295)
!295 = !{!296, !367, !368, !369, !370, !371, !372, !373, !374, !403}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !294, file: !16, line: 923, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !299, line: 61, baseType: !300)
!299 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !299, line: 79, size: 448, elements: !301)
!301 = !{!302, !334, !358, !360, !361, !364}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !299, line: 80, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !299, line: 74, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !299, line: 63, size: 512, elements: !306)
!306 = !{!307, !311, !315, !316, !320, !324, !325, !330}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !305, file: !299, line: 64, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!116, !227}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !305, file: !299, line: 65, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!75, !297, !227}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !305, file: !299, line: 66, baseType: !312, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !305, file: !299, line: 67, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!159, !297, !227, !227}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !305, file: !299, line: 68, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !297, !75}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !305, file: !299, line: 69, baseType: !321, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !305, file: !299, line: 70, baseType: !326, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!159, !229, !329}
!329 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !305, file: !299, line: 73, baseType: !331, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!229, !297}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !300, file: !299, line: 82, baseType: !335, size: 128, offset: 64)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 128, elements: !356)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !299, line: 59, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !299, line: 47, size: 192, elements: !340)
!340 = !{!341, !342, !352, !354}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !339, file: !299, line: 48, baseType: !75, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !339, file: !299, line: 54, baseType: !343, size: 64, offset: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !299, line: 49, size: 64, elements: !344)
!344 = !{!345, !346, !347, !351}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !299, line: 50, baseType: !75, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !343, file: !299, line: 51, baseType: !116, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !343, file: !299, line: 52, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !349, line: 27, baseType: !350)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !84, line: 44, baseType: !271)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !343, file: !299, line: 53, baseType: !329, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !299, line: 55, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !339, file: !299, line: 56, baseType: !355, offset: 192)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !91)
!356 = !{!357}
!357 = !DISubrange(count: 2)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !300, file: !299, line: 83, baseType: !359, size: 128, offset: 192)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !356)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !300, file: !299, line: 85, baseType: !271, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !300, file: !299, line: 88, baseType: !362, size: 16, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !349, line: 25, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !84, line: 39, baseType: !282)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !300, file: !299, line: 89, baseType: !365, size: 16, offset: 400)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 16, elements: !356)
!366 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !294, file: !16, line: 924, baseType: !297, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !294, file: !16, line: 925, baseType: !297, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !294, file: !16, line: 926, baseType: !297, size: 64, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !294, file: !16, line: 927, baseType: !297, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !294, file: !16, line: 928, baseType: !159, size: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !294, file: !16, line: 929, baseType: !162, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !294, file: !16, line: 930, baseType: !118, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !294, file: !16, line: 931, baseType: !375, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !377, line: 54, baseType: !378)
!377 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !377, line: 47, size: 384, elements: !379)
!379 = !{!380, !389, !390, !394, !398, !402}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !378, file: !377, line: 48, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !377, line: 40, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !377, line: 36, size: 192, elements: !384)
!384 = !{!385, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !383, file: !377, line: 37, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !377, line: 38, baseType: !386, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !383, file: !377, line: 39, baseType: !75, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !378, file: !377, line: 49, baseType: !381, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !378, file: !377, line: 50, baseType: !391, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!75, !75}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !378, file: !377, line: 51, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !75}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !378, file: !377, line: 52, baseType: !399, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!159, !75, !75}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !377, line: 53, baseType: !118, size: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !294, file: !16, line: 932, baseType: !404, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !407, line: 158, size: 2097152, elements: !408)
!407 = !DIFile(filename: "./cluster.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "by_slot", scope: !406, file: !407, line: 159, baseType: !410, size: 2097152)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 2097152, elements: !416)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "slotToKeys", file: !407, line: 155, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotToKeys", file: !407, line: 152, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !412, file: !407, line: 153, baseType: !116, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !412, file: !407, line: 154, baseType: !337, size: 64, offset: 64)
!416 = !{!417}
!417 = !DISubrange(count: 16384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !16, line: 1095, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !421, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !421, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !421, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !421, file: !16, line: 860, baseType: !159, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !421, file: !16, line: 861, baseType: !75, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !136, file: !16, line: 1096, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !78, line: 43, baseType: !272)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !136, file: !16, line: 1097, baseType: !229, size: 64, offset: 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !136, file: !16, line: 1098, baseType: !229, size: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !136, file: !16, line: 1099, baseType: !159, size: 32, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !136, file: !16, line: 1100, baseType: !434, size: 64, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !136, file: !16, line: 1101, baseType: !159, size: 32, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !136, file: !16, line: 1102, baseType: !159, size: 32, offset: 736)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !136, file: !16, line: 1103, baseType: !434, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !136, file: !16, line: 1104, baseType: !229, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !136, file: !16, line: 1105, baseType: !440, size: 64, offset: 896)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !452, !459, !461, !466, !467, !468, !469, !509, !531, !532, !547, !548, !549, !550, !551, !552, !553, !577, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !441, file: !16, line: 2235, baseType: !131, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !441, file: !16, line: 2237, baseType: !131, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !441, file: !16, line: 2238, baseType: !131, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !441, file: !16, line: 2239, baseType: !131, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !441, file: !16, line: 2240, baseType: !159, size: 32, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !441, file: !16, line: 2241, baseType: !131, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !441, file: !16, line: 2242, baseType: !131, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !441, file: !16, line: 2243, baseType: !451, size: 32, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !441, file: !16, line: 2244, baseType: !453, size: 64, offset: 512)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !455, file: !16, line: 2111, baseType: !131, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !455, file: !16, line: 2112, baseType: !131, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !441, file: !16, line: 2245, baseType: !460, size: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !441, file: !16, line: 2246, baseType: !462, size: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !464)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !134}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !441, file: !16, line: 2247, baseType: !159, size: 32, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !16, line: 2248, baseType: !116, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !441, file: !16, line: 2249, baseType: !116, size: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !441, file: !16, line: 2250, baseType: !470, size: 1792, offset: 896)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 1792, elements: !507)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !473)
!473 = !{!474, !475, !476, !478, !490, !492}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !472, file: !16, line: 2006, baseType: !131, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !16, line: 2007, baseType: !116, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !472, file: !16, line: 2008, baseType: !477, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !472, file: !16, line: 2022, baseType: !479, size: 128, offset: 192)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !16, line: 2009, size: 128, elements: !480)
!480 = !{!481, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !479, file: !16, line: 2013, baseType: !482, size: 32)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !16, line: 2010, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !482, file: !16, line: 2012, baseType: !159, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !479, file: !16, line: 2021, baseType: !486, size: 128)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !16, line: 2014, size: 128, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !486, file: !16, line: 2016, baseType: !131, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !486, file: !16, line: 2020, baseType: !159, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !472, file: !16, line: 2023, baseType: !491, size: 32, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !472, file: !16, line: 2047, baseType: !493, size: 96, offset: 352)
!493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !16, line: 2024, size: 96, elements: !494)
!494 = !{!495, !501}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !493, file: !16, line: 2037, baseType: !496, size: 96)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !16, line: 2027, size: 96, elements: !497)
!497 = !{!498, !499, !500}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !496, file: !16, line: 2031, baseType: !159, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !496, file: !16, line: 2033, baseType: !159, size: 32, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !496, file: !16, line: 2036, baseType: !159, size: 32, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !493, file: !16, line: 2046, baseType: !502, size: 96)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !16, line: 2038, size: 96, elements: !503)
!503 = !{!504, !505, !506}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !502, file: !16, line: 2040, baseType: !159, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !502, file: !16, line: 2043, baseType: !159, size: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !502, file: !16, line: 2045, baseType: !159, size: 32, offset: 64)
!507 = !{!508}
!508 = !DISubrange(count: 4)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !441, file: !16, line: 2253, baseType: !510, size: 64, offset: 2688)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !512)
!512 = !DISubroutineType(types: !513)
!513 = !{!159, !440, !434, !159, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !517)
!517 = !{!518, !527, !529, !530}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !516, file: !16, line: 1962, baseType: !519, size: 16384)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 16384, elements: !525)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !521, file: !16, line: 1952, baseType: !159, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !16, line: 1953, baseType: !159, size: 32, offset: 32)
!525 = !{!526}
!526 = !DISubrange(count: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !516, file: !16, line: 1963, baseType: !528, size: 64, offset: 16384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !516, file: !16, line: 1964, baseType: !159, size: 32, offset: 16448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !16, line: 1965, baseType: !159, size: 32, offset: 16480)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !441, file: !16, line: 2255, baseType: !440, size: 64, offset: 2752)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !441, file: !16, line: 2257, baseType: !533, size: 64, offset: 2816)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !535)
!535 = !{!536, !537, !539, !540, !541, !542, !543, !544, !545, !546}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !534, file: !16, line: 2072, baseType: !131, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !534, file: !16, line: 2073, baseType: !538, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !534, file: !16, line: 2074, baseType: !159, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !534, file: !16, line: 2075, baseType: !131, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !534, file: !16, line: 2076, baseType: !131, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !534, file: !16, line: 2077, baseType: !131, size: 64, offset: 256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !16, line: 2078, baseType: !159, size: 32, offset: 320)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !534, file: !16, line: 2079, baseType: !131, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !534, file: !16, line: 2080, baseType: !533, size: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !534, file: !16, line: 2082, baseType: !159, size: 32, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !441, file: !16, line: 2260, baseType: !162, size: 64, offset: 2880)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !441, file: !16, line: 2260, baseType: !162, size: 64, offset: 2944)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !441, file: !16, line: 2260, baseType: !162, size: 64, offset: 3008)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !441, file: !16, line: 2260, baseType: !162, size: 64, offset: 3072)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !441, file: !16, line: 2261, baseType: !159, size: 32, offset: 3136)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !441, file: !16, line: 2266, baseType: !429, size: 64, offset: 3200)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !441, file: !16, line: 2267, baseType: !554, size: 64, offset: 3264)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !556, line: 17, size: 832, elements: !557)
!556 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!557 = !{!558, !559, !560, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !555, file: !556, line: 19, baseType: !348, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !555, file: !556, line: 20, baseType: !348, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !555, file: !556, line: 21, baseType: !561, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !349, line: 26, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !84, line: 41, baseType: !159)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !555, file: !556, line: 22, baseType: !561, size: 32, offset: 160)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !555, file: !556, line: 23, baseType: !561, size: 32, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !555, file: !556, line: 24, baseType: !561, size: 32, offset: 224)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !555, file: !556, line: 25, baseType: !348, size: 64, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !555, file: !556, line: 26, baseType: !561, size: 32, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !555, file: !556, line: 27, baseType: !561, size: 32, offset: 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !555, file: !556, line: 28, baseType: !348, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !555, file: !556, line: 29, baseType: !348, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !555, file: !556, line: 30, baseType: !561, size: 32, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !555, file: !556, line: 31, baseType: !329, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !555, file: !556, line: 32, baseType: !561, size: 32, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !555, file: !556, line: 33, baseType: !348, size: 64, offset: 704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !555, file: !556, line: 34, baseType: !576, size: 64, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !441, file: !16, line: 2268, baseType: !578, size: 64, offset: 3328)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !441, file: !16, line: 2269, baseType: !471, size: 448, offset: 3392)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !441, file: !16, line: 2273, baseType: !159, size: 32, offset: 3840)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !441, file: !16, line: 2274, baseType: !159, size: 32, offset: 3872)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !441, file: !16, line: 2275, baseType: !159, size: 32, offset: 3904)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !441, file: !16, line: 2276, baseType: !159, size: 32, offset: 3936)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !441, file: !16, line: 2277, baseType: !159, size: 32, offset: 3968)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !441, file: !16, line: 2278, baseType: !297, size: 64, offset: 4032)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !441, file: !16, line: 2280, baseType: !440, size: 64, offset: 4096)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !441, file: !16, line: 2281, baseType: !588, size: 64, offset: 4160)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !136, file: !16, line: 1105, baseType: !440, size: 64, offset: 960)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !136, file: !16, line: 1106, baseType: !440, size: 64, offset: 1024)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !136, file: !16, line: 1109, baseType: !593, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !596)
!596 = !{!597, !598, !599, !600, !601}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !16, line: 1050, baseType: !429, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !16, line: 1051, baseType: !107, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !595, file: !16, line: 1052, baseType: !375, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !595, file: !16, line: 1053, baseType: !375, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !595, file: !16, line: 1056, baseType: !419, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !136, file: !16, line: 1112, baseType: !159, size: 32, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !136, file: !16, line: 1113, baseType: !159, size: 32, offset: 1184)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !136, file: !16, line: 1114, baseType: !271, size: 64, offset: 1216)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !136, file: !16, line: 1115, baseType: !375, size: 64, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !136, file: !16, line: 1116, baseType: !607, size: 64, offset: 1344)
!607 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !136, file: !16, line: 1117, baseType: !375, size: 64, offset: 1408)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !136, file: !16, line: 1118, baseType: !229, size: 64, offset: 1472)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !136, file: !16, line: 1120, baseType: !611, size: 64, offset: 1536)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !612, line: 10, baseType: !613)
!612 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !84, line: 160, baseType: !271)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !136, file: !16, line: 1121, baseType: !271, size: 64, offset: 1600)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !136, file: !16, line: 1122, baseType: !159, size: 32, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !136, file: !16, line: 1123, baseType: !337, size: 64, offset: 1728)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !136, file: !16, line: 1124, baseType: !611, size: 64, offset: 1792)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !136, file: !16, line: 1125, baseType: !611, size: 64, offset: 1856)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !136, file: !16, line: 1126, baseType: !159, size: 32, offset: 1920)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !136, file: !16, line: 1127, baseType: !159, size: 32, offset: 1952)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !136, file: !16, line: 1128, baseType: !159, size: 32, offset: 1984)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !136, file: !16, line: 1129, baseType: !159, size: 32, offset: 2016)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !136, file: !16, line: 1130, baseType: !624, size: 64, offset: 2048)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !625, line: 58, baseType: !626)
!625 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !84, line: 153, baseType: !271)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !136, file: !16, line: 1131, baseType: !624, size: 64, offset: 2112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !136, file: !16, line: 1132, baseType: !429, size: 64, offset: 2176)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !136, file: !16, line: 1133, baseType: !162, size: 64, offset: 2240)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !136, file: !16, line: 1134, baseType: !162, size: 64, offset: 2304)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !136, file: !16, line: 1135, baseType: !162, size: 64, offset: 2368)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !136, file: !16, line: 1136, baseType: !162, size: 64, offset: 2432)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !136, file: !16, line: 1137, baseType: !162, size: 64, offset: 2496)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !136, file: !16, line: 1138, baseType: !162, size: 64, offset: 2560)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !136, file: !16, line: 1139, baseType: !162, size: 64, offset: 2624)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !136, file: !16, line: 1142, baseType: !637, size: 328, offset: 2688)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 328, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 41)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !136, file: !16, line: 1143, baseType: !159, size: 32, offset: 3040)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !136, file: !16, line: 1144, baseType: !272, size: 64, offset: 3072)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !136, file: !16, line: 1145, baseType: !159, size: 32, offset: 3136)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !136, file: !16, line: 1146, baseType: !159, size: 32, offset: 3168)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !136, file: !16, line: 1147, baseType: !645, size: 320, offset: 3200)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !647)
!647 = !{!648, !657, !658, !659, !660, !661}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !646, file: !16, line: 957, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !651, file: !16, line: 950, baseType: !434, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !651, file: !16, line: 951, baseType: !159, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !651, file: !16, line: 952, baseType: !159, size: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !651, file: !16, line: 953, baseType: !440, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !646, file: !16, line: 958, baseType: !159, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !646, file: !16, line: 959, baseType: !159, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !646, file: !16, line: 962, baseType: !159, size: 32, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !646, file: !16, line: 965, baseType: !229, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !646, file: !16, line: 966, baseType: !159, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !136, file: !16, line: 1148, baseType: !159, size: 32, offset: 3520)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !136, file: !16, line: 1149, baseType: !664, size: 704, offset: 3584)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !666)
!666 = !{!667, !668, !670, !671, !672, !677, !678, !679, !680, !681, !682, !683}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !665, file: !16, line: 973, baseType: !271, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !665, file: !16, line: 974, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !162)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !665, file: !16, line: 978, baseType: !297, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !665, file: !16, line: 980, baseType: !419, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !665, file: !16, line: 985, baseType: !673, size: 64, offset: 256)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !673, file: !16, line: 983, baseType: !159, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !673, file: !16, line: 984, baseType: !159, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !665, file: !16, line: 990, baseType: !229, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !665, file: !16, line: 991, baseType: !419, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !665, file: !16, line: 992, baseType: !419, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !665, file: !16, line: 993, baseType: !159, size: 32, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !665, file: !16, line: 996, baseType: !159, size: 32, offset: 544)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !665, file: !16, line: 997, baseType: !162, size: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !665, file: !16, line: 1000, baseType: !75, size: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !136, file: !16, line: 1150, baseType: !162, size: 64, offset: 4288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !136, file: !16, line: 1151, baseType: !375, size: 64, offset: 4352)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !136, file: !16, line: 1152, baseType: !297, size: 64, offset: 4416)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !136, file: !16, line: 1153, baseType: !375, size: 64, offset: 4480)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !136, file: !16, line: 1154, baseType: !297, size: 64, offset: 4544)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !136, file: !16, line: 1155, baseType: !429, size: 64, offset: 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !136, file: !16, line: 1156, baseType: !429, size: 64, offset: 4672)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !136, file: !16, line: 1157, baseType: !381, size: 64, offset: 4736)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !136, file: !16, line: 1158, baseType: !381, size: 64, offset: 4800)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !136, file: !16, line: 1159, baseType: !381, size: 64, offset: 4864)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !136, file: !16, line: 1160, baseType: !695, size: 64, offset: 4928)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !116, !75}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !136, file: !16, line: 1163, baseType: !75, size: 64, offset: 4992)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !136, file: !16, line: 1166, baseType: !75, size: 64, offset: 5056)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !136, file: !16, line: 1173, baseType: !116, size: 64, offset: 5120)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !136, file: !16, line: 1174, baseType: !703, size: 64, offset: 5184)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !705, line: 137, baseType: !706)
!705 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !705, line: 133, size: 192, elements: !707)
!707 = !{!708, !719, !720}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !706, file: !705, line: 134, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !705, line: 131, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !705, line: 98, size: 32, elements: !712)
!712 = !{!713, !714, !715, !716, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !711, file: !705, line: 99, baseType: !107, size: 1, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !711, file: !705, line: 100, baseType: !107, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !711, file: !705, line: 101, baseType: !107, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !711, file: !705, line: 102, baseType: !107, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !711, file: !705, line: 130, baseType: !718, offset: 32)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, elements: !91)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !706, file: !705, line: 135, baseType: !116, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !706, file: !705, line: 136, baseType: !116, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !136, file: !16, line: 1182, baseType: !229, size: 64, offset: 5248)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !136, file: !16, line: 1183, baseType: !159, size: 32, offset: 5312)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !136, file: !16, line: 1185, baseType: !381, size: 64, offset: 5376)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !136, file: !16, line: 1186, baseType: !725, size: 64, offset: 5440)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !727, file: !16, line: 1085, baseType: !375, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !727, file: !16, line: 1086, baseType: !229, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !136, file: !16, line: 1188, baseType: !381, size: 64, offset: 5504)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !136, file: !16, line: 1190, baseType: !229, size: 64, offset: 5568)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !136, file: !16, line: 1194, baseType: !229, size: 64, offset: 5632)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !136, file: !16, line: 1195, baseType: !669, size: 64, offset: 5696)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !136, file: !16, line: 1196, baseType: !159, size: 32, offset: 5760)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !136, file: !16, line: 1197, baseType: !229, size: 64, offset: 5824)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !136, file: !16, line: 1198, baseType: !272, size: 64, offset: 5888)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "original_client", scope: !128, file: !127, line: 73, baseType: !134, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !127, line: 74, baseType: !159, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "repl_flags", scope: !128, file: !127, line: 75, baseType: !159, size: 32, offset: 224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !128, file: !127, line: 76, baseType: !188, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time", scope: !128, file: !127, line: 77, baseType: !669, size: 64, offset: 320)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 768, elements: !749)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptFlag", file: !127, line: 92, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptFlag", file: !127, line: 89, size: 128, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !745, file: !127, line: 90, baseType: !116, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !745, file: !127, line: 91, baseType: !131, size: 64, offset: 64)
!749 = !{!750}
!750 = !DISubrange(count: 6)
!751 = !{i32 7, !"Dwarf Version", i32 4}
!752 = !{i32 2, !"Debug Info Version", i32 3}
!753 = !{i32 1, !"wchar_size", i32 4}
!754 = !{i32 7, !"uwtable", i32 1}
!755 = !{i32 7, !"frame-pointer", i32 2}
!756 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!757 = distinct !DISubprogram(name: "scriptIsTimedout", scope: !3, file: !3, line: 63, type: !758, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!159}
!760 = !{}
!761 = !DILocation(line: 64, column: 12, scope: !757)
!762 = !DILocation(line: 64, column: 30, scope: !757)
!763 = !DILocation(line: 64, column: 34, scope: !757)
!764 = !DILocation(line: 64, column: 48, scope: !757)
!765 = !DILocation(line: 64, column: 54, scope: !757)
!766 = !DILocation(line: 0, scope: !757)
!767 = !DILocation(line: 64, column: 5, scope: !757)
!768 = distinct !DISubprogram(name: "scriptGetClient", scope: !3, file: !3, line: 67, type: !769, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!769 = !DISubroutineType(types: !770)
!770 = !{!134}
!771 = !DILocation(line: 68, column: 5, scope: !768)
!772 = !DILocation(line: 69, column: 12, scope: !768)
!773 = !DILocation(line: 69, column: 26, scope: !768)
!774 = !DILocation(line: 69, column: 5, scope: !768)
!775 = distinct !DISubprogram(name: "scriptGetCaller", scope: !3, file: !3, line: 72, type: !769, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!776 = !DILocation(line: 73, column: 5, scope: !775)
!777 = !DILocation(line: 74, column: 12, scope: !775)
!778 = !DILocation(line: 74, column: 26, scope: !775)
!779 = !DILocation(line: 74, column: 5, scope: !775)
!780 = distinct !DISubprogram(name: "scriptInterrupt", scope: !3, file: !3, line: 80, type: !781, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!781 = !DISubroutineType(types: !782)
!782 = !{!159, !125}
!783 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !780, file: !3, line: 80, type: !125)
!784 = !DILocation(line: 80, column: 35, scope: !780)
!785 = !DILocation(line: 81, column: 9, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !3, line: 81, column: 9)
!787 = !DILocation(line: 81, column: 18, scope: !786)
!788 = !DILocation(line: 81, column: 24, scope: !786)
!789 = !DILocation(line: 81, column: 9, scope: !780)
!790 = !DILocation(line: 84, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !3, line: 81, column: 43)
!792 = !DILocation(line: 85, column: 17, scope: !791)
!793 = !DILocation(line: 85, column: 26, scope: !791)
!794 = !DILocation(line: 85, column: 32, scope: !791)
!795 = !DILocation(line: 85, column: 16, scope: !791)
!796 = !DILocation(line: 85, column: 9, scope: !791)
!797 = !DILocalVariable(name: "elapsed", scope: !780, file: !3, line: 88, type: !162)
!798 = !DILocation(line: 88, column: 15, scope: !780)
!799 = !DILocation(line: 88, column: 35, scope: !780)
!800 = !DILocation(line: 88, column: 44, scope: !780)
!801 = !DILocation(line: 88, column: 25, scope: !780)
!802 = !DILocation(line: 89, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !780, file: !3, line: 89, column: 9)
!804 = !DILocation(line: 89, column: 26, scope: !803)
!805 = !DILocation(line: 89, column: 17, scope: !803)
!806 = !DILocation(line: 89, column: 9, scope: !780)
!807 = !DILocation(line: 90, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !3, line: 89, column: 48)
!809 = !DILocation(line: 93, column: 5, scope: !780)
!810 = !DILocation(line: 93, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 93, column: 5)
!812 = distinct !DILexicalBlock(scope: !780, file: !3, line: 93, column: 5)
!813 = !DILocation(line: 93, column: 5, scope: !812)
!814 = !DILocation(line: 98, column: 29, scope: !780)
!815 = !DILocation(line: 98, column: 5, scope: !780)
!816 = !DILocation(line: 104, column: 19, scope: !780)
!817 = !DILocation(line: 104, column: 28, scope: !780)
!818 = !DILocation(line: 104, column: 5, scope: !780)
!819 = !DILocation(line: 106, column: 5, scope: !780)
!820 = !DILocation(line: 108, column: 13, scope: !780)
!821 = !DILocation(line: 108, column: 22, scope: !780)
!822 = !DILocation(line: 108, column: 28, scope: !780)
!823 = !DILocation(line: 108, column: 12, scope: !780)
!824 = !DILocation(line: 108, column: 5, scope: !780)
!825 = !DILocation(line: 109, column: 1, scope: !780)
!826 = distinct !DISubprogram(name: "elapsedMs", scope: !189, file: !189, line: 57, type: !827, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!827 = !DISubroutineType(types: !828)
!828 = !{!116, !188}
!829 = !DILocalVariable(name: "start_time", arg: 1, scope: !826, file: !189, line: 57, type: !188)
!830 = !DILocation(line: 57, column: 43, scope: !826)
!831 = !DILocation(line: 58, column: 22, scope: !826)
!832 = !DILocation(line: 58, column: 12, scope: !826)
!833 = !DILocation(line: 58, column: 34, scope: !826)
!834 = !DILocation(line: 58, column: 5, scope: !826)
!835 = distinct !DISubprogram(name: "enterScriptTimedoutMode", scope: !3, file: !3, line: 55, type: !836, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !125}
!838 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !835, file: !3, line: 55, type: !125)
!839 = !DILocation(line: 55, column: 51, scope: !835)
!840 = !DILocation(line: 56, column: 5, scope: !835)
!841 = !DILocation(line: 57, column: 5, scope: !835)
!842 = !DILocation(line: 59, column: 5, scope: !835)
!843 = !DILocation(line: 59, column: 14, scope: !835)
!844 = !DILocation(line: 59, column: 20, scope: !835)
!845 = !DILocation(line: 60, column: 5, scope: !835)
!846 = !DILocation(line: 61, column: 1, scope: !835)
!847 = distinct !DISubprogram(name: "scriptFlagsToCmdFlags", scope: !3, file: !3, line: 111, type: !848, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!848 = !DISubroutineType(types: !849)
!849 = !{!116, !116, !116}
!850 = !DILocalVariable(name: "cmd_flags", arg: 1, scope: !847, file: !3, line: 111, type: !116)
!851 = !DILocation(line: 111, column: 41, scope: !847)
!852 = !DILocalVariable(name: "script_flags", arg: 2, scope: !847, file: !3, line: 111, type: !116)
!853 = !DILocation(line: 111, column: 61, scope: !847)
!854 = !DILocation(line: 113, column: 15, scope: !847)
!855 = !DILocation(line: 116, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !847, file: !3, line: 116, column: 9)
!857 = !DILocation(line: 116, column: 24, scope: !856)
!858 = !DILocation(line: 116, column: 9, scope: !847)
!859 = !DILocation(line: 117, column: 19, scope: !856)
!860 = !DILocation(line: 117, column: 9, scope: !856)
!861 = !DILocation(line: 118, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !847, file: !3, line: 118, column: 9)
!863 = !DILocation(line: 118, column: 24, scope: !862)
!864 = !DILocation(line: 118, column: 9, scope: !847)
!865 = !DILocation(line: 119, column: 19, scope: !862)
!866 = !DILocation(line: 119, column: 9, scope: !862)
!867 = !DILocation(line: 120, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !847, file: !3, line: 120, column: 9)
!869 = !DILocation(line: 120, column: 22, scope: !868)
!870 = !DILocation(line: 120, column: 9, scope: !847)
!871 = !DILocation(line: 121, column: 19, scope: !868)
!872 = !DILocation(line: 121, column: 9, scope: !868)
!873 = !DILocation(line: 125, column: 15, scope: !847)
!874 = !DILocation(line: 127, column: 12, scope: !847)
!875 = !DILocation(line: 127, column: 5, scope: !847)
!876 = distinct !DISubprogram(name: "scriptPrepareForRun", scope: !3, file: !3, line: 131, type: !877, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!877 = !DISubroutineType(types: !878)
!878 = !{!159, !125, !134, !134, !131, !116, !159}
!879 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !876, file: !3, line: 131, type: !125)
!880 = !DILocation(line: 131, column: 39, scope: !876)
!881 = !DILocalVariable(name: "engine_client", arg: 2, scope: !876, file: !3, line: 131, type: !134)
!882 = !DILocation(line: 131, column: 56, scope: !876)
!883 = !DILocalVariable(name: "caller", arg: 3, scope: !876, file: !3, line: 131, type: !134)
!884 = !DILocation(line: 131, column: 79, scope: !876)
!885 = !DILocalVariable(name: "funcname", arg: 4, scope: !876, file: !3, line: 131, type: !131)
!886 = !DILocation(line: 131, column: 99, scope: !876)
!887 = !DILocalVariable(name: "script_flags", arg: 5, scope: !876, file: !3, line: 131, type: !116)
!888 = !DILocation(line: 131, column: 118, scope: !876)
!889 = !DILocalVariable(name: "ro", arg: 6, scope: !876, file: !3, line: 131, type: !159)
!890 = !DILocation(line: 131, column: 136, scope: !876)
!891 = !DILocation(line: 132, column: 5, scope: !876)
!892 = !DILocalVariable(name: "running_stale", scope: !876, file: !3, line: 134, type: !159)
!893 = !DILocation(line: 134, column: 9, scope: !876)
!894 = !DILocation(line: 134, column: 32, scope: !876)
!895 = !DILocation(line: 134, column: 25, scope: !876)
!896 = !DILocation(line: 134, column: 43, scope: !876)
!897 = !DILocation(line: 135, column: 20, scope: !876)
!898 = !DILocation(line: 135, column: 31, scope: !876)
!899 = !DILocation(line: 135, column: 55, scope: !876)
!900 = !DILocation(line: 136, column: 20, scope: !876)
!901 = !DILocation(line: 136, column: 42, scope: !876)
!902 = !DILocation(line: 0, scope: !876)
!903 = !DILocalVariable(name: "obey_client", scope: !876, file: !3, line: 137, type: !159)
!904 = !DILocation(line: 137, column: 9, scope: !876)
!905 = !DILocation(line: 137, column: 38, scope: !876)
!906 = !DILocation(line: 137, column: 23, scope: !876)
!907 = !DILocation(line: 139, column: 11, scope: !908)
!908 = distinct !DILexicalBlock(scope: !876, file: !3, line: 139, column: 9)
!909 = !DILocation(line: 139, column: 24, scope: !908)
!910 = !DILocation(line: 139, column: 9, scope: !876)
!911 = !DILocation(line: 140, column: 14, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 140, column: 13)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 139, column: 57)
!914 = !DILocation(line: 140, column: 27, scope: !912)
!915 = !DILocation(line: 140, column: 53, scope: !912)
!916 = !DILocation(line: 140, column: 63, scope: !912)
!917 = !DILocation(line: 140, column: 56, scope: !912)
!918 = !DILocation(line: 140, column: 13, scope: !913)
!919 = !DILocation(line: 141, column: 27, scope: !920)
!920 = distinct !DILexicalBlock(scope: !912, file: !3, line: 140, column: 80)
!921 = !DILocation(line: 141, column: 13, scope: !920)
!922 = !DILocation(line: 142, column: 13, scope: !920)
!923 = !DILocation(line: 145, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !913, file: !3, line: 145, column: 13)
!925 = !DILocation(line: 145, column: 27, scope: !924)
!926 = !DILocation(line: 145, column: 32, scope: !924)
!927 = !DILocation(line: 145, column: 45, scope: !924)
!928 = !DILocation(line: 145, column: 13, scope: !913)
!929 = !DILocation(line: 146, column: 27, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 145, column: 73)
!931 = !DILocation(line: 146, column: 13, scope: !930)
!932 = !DILocation(line: 149, column: 13, scope: !930)
!933 = !DILocation(line: 152, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !913, file: !3, line: 152, column: 13)
!935 = !DILocation(line: 152, column: 28, scope: !934)
!936 = !DILocation(line: 152, column: 13, scope: !913)
!937 = !DILocation(line: 157, column: 24, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 157, column: 17)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 152, column: 54)
!940 = !DILocation(line: 157, column: 17, scope: !938)
!941 = !DILocation(line: 157, column: 35, scope: !938)
!942 = !DILocation(line: 157, column: 45, scope: !938)
!943 = !DILocation(line: 157, column: 38, scope: !938)
!944 = !DILocation(line: 157, column: 59, scope: !938)
!945 = !DILocation(line: 157, column: 63, scope: !938)
!946 = !DILocation(line: 157, column: 17, scope: !939)
!947 = !DILocation(line: 158, column: 31, scope: !948)
!948 = distinct !DILexicalBlock(scope: !938, file: !3, line: 157, column: 76)
!949 = !DILocation(line: 158, column: 17, scope: !948)
!950 = !DILocation(line: 159, column: 17, scope: !948)
!951 = !DILocalVariable(name: "deny_write_type", scope: !939, file: !3, line: 163, type: !159)
!952 = !DILocation(line: 163, column: 17, scope: !939)
!953 = !DILocation(line: 163, column: 35, scope: !939)
!954 = !DILocation(line: 164, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !939, file: !3, line: 164, column: 17)
!956 = !DILocation(line: 164, column: 33, scope: !955)
!957 = !DILocation(line: 164, column: 57, scope: !955)
!958 = !DILocation(line: 164, column: 61, scope: !955)
!959 = !DILocation(line: 164, column: 17, scope: !939)
!960 = !DILocation(line: 165, column: 21, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 165, column: 21)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 164, column: 74)
!963 = !DILocation(line: 165, column: 37, scope: !961)
!964 = !DILocation(line: 165, column: 21, scope: !962)
!965 = !DILocation(line: 166, column: 35, scope: !961)
!966 = !DILocation(line: 166, column: 21, scope: !961)
!967 = !DILocation(line: 170, column: 41, scope: !961)
!968 = !DILocation(line: 173, column: 77, scope: !961)
!969 = !DILocation(line: 173, column: 61, scope: !961)
!970 = !DILocation(line: 170, column: 21, scope: !961)
!971 = !DILocation(line: 174, column: 17, scope: !962)
!972 = !DILocation(line: 177, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !939, file: !3, line: 177, column: 17)
!974 = !DILocation(line: 177, column: 17, scope: !939)
!975 = !DILocation(line: 178, column: 31, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 177, column: 21)
!977 = !DILocation(line: 178, column: 17, scope: !976)
!978 = !DILocation(line: 179, column: 17, scope: !976)
!979 = !DILocation(line: 184, column: 24, scope: !980)
!980 = distinct !DILexicalBlock(scope: !939, file: !3, line: 184, column: 17)
!981 = !DILocation(line: 184, column: 35, scope: !980)
!982 = !DILocation(line: 184, column: 43, scope: !980)
!983 = !DILocation(line: 185, column: 24, scope: !980)
!984 = !DILocation(line: 185, column: 17, scope: !980)
!985 = !DILocation(line: 185, column: 48, scope: !980)
!986 = !DILocation(line: 186, column: 24, scope: !980)
!987 = !DILocation(line: 186, column: 17, scope: !980)
!988 = !DILocation(line: 186, column: 49, scope: !980)
!989 = !DILocation(line: 187, column: 24, scope: !980)
!990 = !DILocation(line: 187, column: 56, scope: !980)
!991 = !DILocation(line: 187, column: 47, scope: !980)
!992 = !DILocation(line: 184, column: 17, scope: !939)
!993 = !DILocation(line: 189, column: 37, scope: !994)
!994 = distinct !DILexicalBlock(scope: !980, file: !3, line: 188, column: 13)
!995 = !DILocation(line: 189, column: 52, scope: !994)
!996 = !DILocation(line: 189, column: 17, scope: !994)
!997 = !DILocation(line: 190, column: 17, scope: !994)
!998 = !DILocation(line: 192, column: 9, scope: !939)
!999 = !DILocation(line: 196, column: 20, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !913, file: !3, line: 196, column: 13)
!1001 = !DILocation(line: 196, column: 13, scope: !1000)
!1002 = !DILocation(line: 196, column: 42, scope: !1000)
!1003 = !DILocation(line: 196, column: 52, scope: !1000)
!1004 = !DILocation(line: 196, column: 45, scope: !1000)
!1005 = !DILocation(line: 196, column: 62, scope: !1000)
!1006 = !DILocation(line: 197, column: 15, scope: !1000)
!1007 = !DILocation(line: 197, column: 28, scope: !1000)
!1008 = !DILocation(line: 196, column: 13, scope: !913)
!1009 = !DILocation(line: 199, column: 27, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 198, column: 9)
!1011 = !DILocation(line: 199, column: 13, scope: !1010)
!1012 = !DILocation(line: 201, column: 13, scope: !1010)
!1013 = !DILocation(line: 204, column: 5, scope: !913)
!1014 = !DILocation(line: 206, column: 13, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 206, column: 13)
!1016 = distinct !DILexicalBlock(scope: !908, file: !3, line: 204, column: 12)
!1017 = !DILocation(line: 206, column: 13, scope: !1016)
!1018 = !DILocation(line: 207, column: 33, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 206, column: 28)
!1020 = !DILocation(line: 207, column: 48, scope: !1019)
!1021 = !DILocation(line: 207, column: 13, scope: !1019)
!1022 = !DILocation(line: 208, column: 13, scope: !1019)
!1023 = !DILocation(line: 212, column: 18, scope: !876)
!1024 = !DILocation(line: 212, column: 5, scope: !876)
!1025 = !DILocation(line: 212, column: 14, scope: !876)
!1026 = !DILocation(line: 212, column: 16, scope: !876)
!1027 = !DILocation(line: 213, column: 32, scope: !876)
!1028 = !DILocation(line: 213, column: 5, scope: !876)
!1029 = !DILocation(line: 213, column: 14, scope: !876)
!1030 = !DILocation(line: 213, column: 30, scope: !876)
!1031 = !DILocation(line: 214, column: 25, scope: !876)
!1032 = !DILocation(line: 214, column: 5, scope: !876)
!1033 = !DILocation(line: 214, column: 14, scope: !876)
!1034 = !DILocation(line: 214, column: 23, scope: !876)
!1035 = !DILocalVariable(name: "script_client", scope: !876, file: !3, line: 216, type: !134)
!1036 = !DILocation(line: 216, column: 13, scope: !876)
!1037 = !DILocation(line: 216, column: 29, scope: !876)
!1038 = !DILocation(line: 216, column: 38, scope: !876)
!1039 = !DILocalVariable(name: "curr_client", scope: !876, file: !3, line: 217, type: !134)
!1040 = !DILocation(line: 217, column: 13, scope: !876)
!1041 = !DILocation(line: 217, column: 27, scope: !876)
!1042 = !DILocation(line: 217, column: 36, scope: !876)
!1043 = !DILocation(line: 218, column: 28, scope: !876)
!1044 = !DILocation(line: 218, column: 26, scope: !876)
!1045 = !DILocation(line: 221, column: 14, scope: !876)
!1046 = !DILocation(line: 221, column: 29, scope: !876)
!1047 = !DILocation(line: 221, column: 42, scope: !876)
!1048 = !DILocation(line: 221, column: 46, scope: !876)
!1049 = !DILocation(line: 221, column: 5, scope: !876)
!1050 = !DILocation(line: 222, column: 5, scope: !876)
!1051 = !DILocation(line: 222, column: 20, scope: !876)
!1052 = !DILocation(line: 222, column: 25, scope: !876)
!1053 = !DILocation(line: 225, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !876, file: !3, line: 225, column: 9)
!1055 = !DILocation(line: 225, column: 22, scope: !1054)
!1056 = !DILocation(line: 225, column: 28, scope: !1054)
!1057 = !DILocation(line: 225, column: 9, scope: !876)
!1058 = !DILocation(line: 226, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 225, column: 44)
!1060 = !DILocation(line: 226, column: 24, scope: !1059)
!1061 = !DILocation(line: 226, column: 30, scope: !1059)
!1062 = !DILocation(line: 227, column: 5, scope: !1059)
!1063 = !DILocation(line: 229, column: 27, scope: !876)
!1064 = !DILocation(line: 229, column: 5, scope: !876)
!1065 = !DILocation(line: 229, column: 14, scope: !876)
!1066 = !DILocation(line: 229, column: 25, scope: !876)
!1067 = !DILocation(line: 230, column: 30, scope: !876)
!1068 = !DILocation(line: 230, column: 5, scope: !876)
!1069 = !DILocation(line: 230, column: 14, scope: !876)
!1070 = !DILocation(line: 230, column: 28, scope: !876)
!1071 = !DILocation(line: 232, column: 5, scope: !876)
!1072 = !DILocation(line: 232, column: 14, scope: !876)
!1073 = !DILocation(line: 232, column: 20, scope: !876)
!1074 = !DILocation(line: 233, column: 5, scope: !876)
!1075 = !DILocation(line: 233, column: 14, scope: !876)
!1076 = !DILocation(line: 233, column: 25, scope: !876)
!1077 = !DILocation(line: 235, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !876, file: !3, line: 235, column: 9)
!1079 = !DILocation(line: 235, column: 12, scope: !1078)
!1080 = !DILocation(line: 235, column: 18, scope: !1078)
!1081 = !DILocation(line: 235, column: 31, scope: !1078)
!1082 = !DILocation(line: 235, column: 63, scope: !1078)
!1083 = !DILocation(line: 235, column: 67, scope: !1078)
!1084 = !DILocation(line: 235, column: 80, scope: !1078)
!1085 = !DILocation(line: 235, column: 9, scope: !876)
!1086 = !DILocation(line: 238, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 235, column: 107)
!1088 = !DILocation(line: 238, column: 18, scope: !1087)
!1089 = !DILocation(line: 238, column: 24, scope: !1087)
!1090 = !DILocation(line: 239, column: 5, scope: !1087)
!1091 = !DILocation(line: 240, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !876, file: !3, line: 240, column: 9)
!1093 = !DILocation(line: 240, column: 24, scope: !1092)
!1094 = !DILocation(line: 240, column: 56, scope: !1092)
!1095 = !DILocation(line: 240, column: 60, scope: !1092)
!1096 = !DILocation(line: 240, column: 73, scope: !1092)
!1097 = !DILocation(line: 240, column: 9, scope: !876)
!1098 = !DILocation(line: 243, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 240, column: 99)
!1100 = !DILocation(line: 243, column: 18, scope: !1099)
!1101 = !DILocation(line: 243, column: 24, scope: !1099)
!1102 = !DILocation(line: 244, column: 5, scope: !1099)
!1103 = !DILocation(line: 246, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !876, file: !3, line: 246, column: 9)
!1105 = !DILocation(line: 246, column: 23, scope: !1104)
!1106 = !DILocation(line: 246, column: 55, scope: !1104)
!1107 = !DILocation(line: 246, column: 59, scope: !1104)
!1108 = !DILocation(line: 246, column: 72, scope: !1104)
!1109 = !DILocation(line: 246, column: 9, scope: !876)
!1110 = !DILocation(line: 247, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 246, column: 105)
!1112 = !DILocation(line: 247, column: 18, scope: !1111)
!1113 = !DILocation(line: 247, column: 24, scope: !1111)
!1114 = !DILocation(line: 248, column: 5, scope: !1111)
!1115 = !DILocation(line: 251, column: 20, scope: !876)
!1116 = !DILocation(line: 251, column: 18, scope: !876)
!1117 = !DILocation(line: 253, column: 5, scope: !876)
!1118 = !DILocation(line: 254, column: 1, scope: !876)
!1119 = distinct !DISubprogram(name: "scriptResetRun", scope: !3, file: !3, line: 257, type: !836, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1120 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1119, file: !3, line: 257, type: !125)
!1121 = !DILocation(line: 257, column: 35, scope: !1119)
!1122 = !DILocation(line: 258, column: 5, scope: !1119)
!1123 = !DILocation(line: 261, column: 5, scope: !1119)
!1124 = !DILocation(line: 261, column: 14, scope: !1119)
!1125 = !DILocation(line: 261, column: 17, scope: !1119)
!1126 = !DILocation(line: 261, column: 23, scope: !1119)
!1127 = !DILocation(line: 263, column: 26, scope: !1119)
!1128 = !DILocation(line: 265, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 265, column: 9)
!1130 = !DILocation(line: 265, column: 9, scope: !1119)
!1131 = !DILocation(line: 266, column: 32, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 265, column: 29)
!1133 = !DILocation(line: 266, column: 9, scope: !1132)
!1134 = !DILocation(line: 269, column: 25, scope: !1132)
!1135 = !DILocation(line: 269, column: 34, scope: !1132)
!1136 = !DILocation(line: 269, column: 9, scope: !1132)
!1137 = !DILocation(line: 270, column: 5, scope: !1132)
!1138 = !DILocation(line: 272, column: 31, scope: !1119)
!1139 = !DILocation(line: 272, column: 40, scope: !1119)
!1140 = !DILocation(line: 272, column: 5, scope: !1119)
!1141 = !DILocation(line: 275, column: 18, scope: !1119)
!1142 = !DILocation(line: 276, column: 1, scope: !1119)
!1143 = distinct !DISubprogram(name: "exitScriptTimedoutMode", scope: !3, file: !3, line: 46, type: !836, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1144 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1143, file: !3, line: 46, type: !125)
!1145 = !DILocation(line: 46, column: 50, scope: !1143)
!1146 = !DILocation(line: 47, column: 5, scope: !1143)
!1147 = !DILocation(line: 48, column: 5, scope: !1143)
!1148 = !DILocation(line: 49, column: 5, scope: !1143)
!1149 = !DILocation(line: 49, column: 14, scope: !1143)
!1150 = !DILocation(line: 49, column: 20, scope: !1143)
!1151 = !DILocation(line: 50, column: 5, scope: !1143)
!1152 = !DILocation(line: 52, column: 16, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 52, column: 9)
!1154 = !DILocation(line: 52, column: 9, scope: !1153)
!1155 = !DILocation(line: 52, column: 27, scope: !1153)
!1156 = !DILocation(line: 52, column: 37, scope: !1153)
!1157 = !DILocation(line: 52, column: 30, scope: !1153)
!1158 = !DILocation(line: 52, column: 9, scope: !1143)
!1159 = !DILocation(line: 52, column: 79, scope: !1153)
!1160 = !DILocation(line: 52, column: 45, scope: !1153)
!1161 = !DILocation(line: 53, column: 1, scope: !1143)
!1162 = distinct !DISubprogram(name: "scriptIsRunning", scope: !3, file: !3, line: 279, type: !758, scopeLine: 279, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1163 = !DILocation(line: 280, column: 12, scope: !1162)
!1164 = !DILocation(line: 280, column: 25, scope: !1162)
!1165 = !DILocation(line: 280, column: 5, scope: !1162)
!1166 = distinct !DISubprogram(name: "scriptCurrFunction", scope: !3, file: !3, line: 283, type: !1167, scopeLine: 283, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!131}
!1169 = !DILocation(line: 284, column: 5, scope: !1166)
!1170 = !DILocation(line: 285, column: 12, scope: !1166)
!1171 = !DILocation(line: 285, column: 26, scope: !1166)
!1172 = !DILocation(line: 285, column: 5, scope: !1166)
!1173 = distinct !DISubprogram(name: "scriptIsEval", scope: !3, file: !3, line: 288, type: !758, scopeLine: 288, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1174 = !DILocation(line: 289, column: 5, scope: !1173)
!1175 = !DILocation(line: 290, column: 12, scope: !1173)
!1176 = !DILocation(line: 290, column: 26, scope: !1173)
!1177 = !DILocation(line: 290, column: 32, scope: !1173)
!1178 = !DILocation(line: 290, column: 5, scope: !1173)
!1179 = distinct !DISubprogram(name: "scriptKill", scope: !3, file: !3, line: 294, type: !1180, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !134, !159}
!1182 = !DILocalVariable(name: "c", arg: 1, scope: !1179, file: !3, line: 294, type: !134)
!1183 = !DILocation(line: 294, column: 25, scope: !1179)
!1184 = !DILocalVariable(name: "is_eval", arg: 2, scope: !1179, file: !3, line: 294, type: !159)
!1185 = !DILocation(line: 294, column: 32, scope: !1179)
!1186 = !DILocation(line: 295, column: 10, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 295, column: 9)
!1188 = !DILocation(line: 295, column: 9, scope: !1179)
!1189 = !DILocation(line: 296, column: 23, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 295, column: 24)
!1191 = !DILocation(line: 296, column: 9, scope: !1190)
!1192 = !DILocation(line: 297, column: 9, scope: !1190)
!1193 = !DILocation(line: 299, column: 24, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 299, column: 9)
!1195 = !DILocation(line: 299, column: 38, scope: !1194)
!1196 = !DILocation(line: 299, column: 9, scope: !1194)
!1197 = !DILocation(line: 299, column: 9, scope: !1179)
!1198 = !DILocation(line: 300, column: 23, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 299, column: 56)
!1200 = !DILocation(line: 300, column: 9, scope: !1199)
!1201 = !DILocation(line: 302, column: 5, scope: !1199)
!1202 = !DILocation(line: 303, column: 9, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 303, column: 9)
!1204 = !DILocation(line: 303, column: 23, scope: !1203)
!1205 = !DILocation(line: 303, column: 29, scope: !1203)
!1206 = !DILocation(line: 303, column: 9, scope: !1179)
!1207 = !DILocation(line: 304, column: 23, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 303, column: 51)
!1209 = !DILocation(line: 304, column: 9, scope: !1208)
!1210 = !DILocation(line: 309, column: 9, scope: !1208)
!1211 = !DILocation(line: 311, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 311, column: 9)
!1213 = !DILocation(line: 311, column: 17, scope: !1212)
!1214 = !DILocation(line: 311, column: 22, scope: !1212)
!1215 = !DILocation(line: 311, column: 36, scope: !1212)
!1216 = !DILocation(line: 311, column: 42, scope: !1212)
!1217 = !DILocation(line: 311, column: 9, scope: !1179)
!1218 = !DILocation(line: 313, column: 29, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 311, column: 63)
!1220 = !DILocation(line: 313, column: 39, scope: !1219)
!1221 = !DILocation(line: 313, column: 9, scope: !1219)
!1222 = !DILocation(line: 314, column: 9, scope: !1219)
!1223 = !DILocation(line: 316, column: 10, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 316, column: 9)
!1225 = !DILocation(line: 316, column: 18, scope: !1224)
!1226 = !DILocation(line: 316, column: 22, scope: !1224)
!1227 = !DILocation(line: 316, column: 36, scope: !1224)
!1228 = !DILocation(line: 316, column: 42, scope: !1224)
!1229 = !DILocation(line: 316, column: 9, scope: !1179)
!1230 = !DILocation(line: 318, column: 29, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 316, column: 63)
!1232 = !DILocation(line: 318, column: 39, scope: !1231)
!1233 = !DILocation(line: 318, column: 9, scope: !1231)
!1234 = !DILocation(line: 319, column: 9, scope: !1231)
!1235 = !DILocation(line: 321, column: 5, scope: !1179)
!1236 = !DILocation(line: 321, column: 19, scope: !1179)
!1237 = !DILocation(line: 321, column: 25, scope: !1179)
!1238 = !DILocation(line: 322, column: 14, scope: !1179)
!1239 = !DILocation(line: 322, column: 24, scope: !1179)
!1240 = !DILocation(line: 322, column: 5, scope: !1179)
!1241 = !DILocation(line: 323, column: 1, scope: !1179)
!1242 = distinct !DISubprogram(name: "scriptSetResp", scope: !3, file: !3, line: 467, type: !1243, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!159, !125, !159}
!1245 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1242, file: !3, line: 467, type: !125)
!1246 = !DILocation(line: 467, column: 33, scope: !1242)
!1247 = !DILocalVariable(name: "resp", arg: 2, scope: !1242, file: !3, line: 467, type: !159)
!1248 = !DILocation(line: 467, column: 46, scope: !1242)
!1249 = !DILocation(line: 468, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 468, column: 9)
!1251 = !DILocation(line: 468, column: 14, scope: !1250)
!1252 = !DILocation(line: 468, column: 19, scope: !1250)
!1253 = !DILocation(line: 468, column: 22, scope: !1250)
!1254 = !DILocation(line: 468, column: 27, scope: !1250)
!1255 = !DILocation(line: 468, column: 9, scope: !1242)
!1256 = !DILocation(line: 469, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 468, column: 33)
!1258 = !DILocation(line: 472, column: 24, scope: !1242)
!1259 = !DILocation(line: 472, column: 5, scope: !1242)
!1260 = !DILocation(line: 472, column: 14, scope: !1242)
!1261 = !DILocation(line: 472, column: 17, scope: !1242)
!1262 = !DILocation(line: 472, column: 22, scope: !1242)
!1263 = !DILocation(line: 473, column: 5, scope: !1242)
!1264 = !DILocation(line: 474, column: 1, scope: !1242)
!1265 = distinct !DISubprogram(name: "scriptSetRepl", scope: !3, file: !3, line: 478, type: !1243, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1266 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1265, file: !3, line: 478, type: !125)
!1267 = !DILocation(line: 478, column: 33, scope: !1265)
!1268 = !DILocalVariable(name: "repl", arg: 2, scope: !1265, file: !3, line: 478, type: !159)
!1269 = !DILocation(line: 478, column: 46, scope: !1265)
!1270 = !DILocation(line: 479, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 479, column: 9)
!1272 = !DILocation(line: 479, column: 15, scope: !1271)
!1273 = !DILocation(line: 479, column: 52, scope: !1271)
!1274 = !DILocation(line: 479, column: 9, scope: !1265)
!1275 = !DILocation(line: 480, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 479, column: 58)
!1277 = !DILocation(line: 482, column: 27, scope: !1265)
!1278 = !DILocation(line: 482, column: 5, scope: !1265)
!1279 = !DILocation(line: 482, column: 14, scope: !1265)
!1280 = !DILocation(line: 482, column: 25, scope: !1265)
!1281 = !DILocation(line: 483, column: 5, scope: !1265)
!1282 = !DILocation(line: 484, column: 1, scope: !1265)
!1283 = distinct !DISubprogram(name: "scriptCall", scope: !3, file: !3, line: 517, type: !1284, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{null, !125, !1286}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1287 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1283, file: !3, line: 517, type: !125)
!1288 = !DILocation(line: 517, column: 31, scope: !1283)
!1289 = !DILocalVariable(name: "err", arg: 2, scope: !1283, file: !3, line: 517, type: !1286)
!1290 = !DILocation(line: 517, column: 45, scope: !1283)
!1291 = !DILocalVariable(name: "c", scope: !1283, file: !3, line: 518, type: !134)
!1292 = !DILocation(line: 518, column: 13, scope: !1283)
!1293 = !DILocation(line: 518, column: 17, scope: !1283)
!1294 = !DILocation(line: 518, column: 26, scope: !1283)
!1295 = !DILocation(line: 521, column: 15, scope: !1283)
!1296 = !DILocation(line: 521, column: 24, scope: !1283)
!1297 = !DILocation(line: 521, column: 41, scope: !1283)
!1298 = !DILocation(line: 521, column: 5, scope: !1283)
!1299 = !DILocation(line: 521, column: 8, scope: !1283)
!1300 = !DILocation(line: 521, column: 13, scope: !1283)
!1301 = !DILocation(line: 524, column: 30, scope: !1283)
!1302 = !DILocation(line: 524, column: 5, scope: !1283)
!1303 = !DILocalVariable(name: "cmd", scope: !1283, file: !3, line: 526, type: !440)
!1304 = !DILocation(line: 526, column: 26, scope: !1283)
!1305 = !DILocation(line: 526, column: 46, scope: !1283)
!1306 = !DILocation(line: 526, column: 49, scope: !1283)
!1307 = !DILocation(line: 526, column: 55, scope: !1283)
!1308 = !DILocation(line: 526, column: 58, scope: !1283)
!1309 = !DILocation(line: 526, column: 32, scope: !1283)
!1310 = !DILocation(line: 527, column: 40, scope: !1283)
!1311 = !DILocation(line: 527, column: 27, scope: !1283)
!1312 = !DILocation(line: 527, column: 30, scope: !1283)
!1313 = !DILocation(line: 527, column: 38, scope: !1283)
!1314 = !DILocation(line: 527, column: 14, scope: !1283)
!1315 = !DILocation(line: 527, column: 17, scope: !1283)
!1316 = !DILocation(line: 527, column: 25, scope: !1283)
!1317 = !DILocation(line: 527, column: 5, scope: !1283)
!1318 = !DILocation(line: 527, column: 8, scope: !1283)
!1319 = !DILocation(line: 527, column: 12, scope: !1283)
!1320 = !DILocation(line: 528, column: 34, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 528, column: 9)
!1322 = !DILocation(line: 528, column: 39, scope: !1321)
!1323 = !DILocation(line: 528, column: 42, scope: !1321)
!1324 = !DILocation(line: 528, column: 48, scope: !1321)
!1325 = !DILocation(line: 528, column: 9, scope: !1321)
!1326 = !DILocation(line: 528, column: 53, scope: !1321)
!1327 = !DILocation(line: 528, column: 9, scope: !1283)
!1328 = !DILocation(line: 529, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 528, column: 62)
!1330 = !DILocation(line: 533, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 533, column: 9)
!1332 = !DILocation(line: 533, column: 10, scope: !1331)
!1333 = !DILocation(line: 533, column: 44, scope: !1331)
!1334 = !DILocation(line: 533, column: 48, scope: !1331)
!1335 = !DILocation(line: 533, column: 53, scope: !1331)
!1336 = !DILocation(line: 533, column: 59, scope: !1331)
!1337 = !DILocation(line: 533, column: 9, scope: !1283)
!1338 = !DILocation(line: 534, column: 16, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 533, column: 76)
!1340 = !DILocation(line: 534, column: 10, scope: !1339)
!1341 = !DILocation(line: 534, column: 14, scope: !1339)
!1342 = !DILocation(line: 535, column: 9, scope: !1339)
!1343 = !DILocation(line: 538, column: 32, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 538, column: 9)
!1345 = !DILocation(line: 538, column: 35, scope: !1344)
!1346 = !DILocation(line: 538, column: 9, scope: !1344)
!1347 = !DILocation(line: 538, column: 40, scope: !1344)
!1348 = !DILocation(line: 538, column: 9, scope: !1283)
!1349 = !DILocation(line: 539, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 538, column: 49)
!1351 = !DILocation(line: 542, column: 25, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 542, column: 9)
!1353 = !DILocation(line: 542, column: 28, scope: !1352)
!1354 = !DILocation(line: 542, column: 9, scope: !1352)
!1355 = !DILocation(line: 542, column: 33, scope: !1352)
!1356 = !DILocation(line: 542, column: 9, scope: !1283)
!1357 = !DILocation(line: 543, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 542, column: 42)
!1359 = !DILocation(line: 546, column: 39, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 546, column: 9)
!1361 = !DILocation(line: 546, column: 48, scope: !1360)
!1362 = !DILocation(line: 546, column: 9, scope: !1360)
!1363 = !DILocation(line: 546, column: 53, scope: !1360)
!1364 = !DILocation(line: 546, column: 9, scope: !1283)
!1365 = !DILocation(line: 547, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 546, column: 62)
!1367 = !DILocation(line: 550, column: 25, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 550, column: 9)
!1369 = !DILocation(line: 550, column: 34, scope: !1368)
!1370 = !DILocation(line: 550, column: 9, scope: !1368)
!1371 = !DILocation(line: 550, column: 39, scope: !1368)
!1372 = !DILocation(line: 550, column: 9, scope: !1283)
!1373 = !DILocation(line: 551, column: 9, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 550, column: 48)
!1375 = !DILocation(line: 554, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 554, column: 9)
!1377 = !DILocation(line: 554, column: 14, scope: !1376)
!1378 = !DILocation(line: 554, column: 20, scope: !1376)
!1379 = !DILocation(line: 554, column: 9, scope: !1283)
!1380 = !DILocation(line: 556, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 554, column: 33)
!1382 = !DILocation(line: 556, column: 18, scope: !1381)
!1383 = !DILocation(line: 556, column: 24, scope: !1381)
!1384 = !DILocation(line: 557, column: 5, scope: !1381)
!1385 = !DILocation(line: 559, column: 34, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 559, column: 9)
!1387 = !DILocation(line: 559, column: 43, scope: !1386)
!1388 = !DILocation(line: 559, column: 46, scope: !1386)
!1389 = !DILocation(line: 559, column: 55, scope: !1386)
!1390 = !DILocation(line: 559, column: 72, scope: !1386)
!1391 = !DILocation(line: 559, column: 9, scope: !1386)
!1392 = !DILocation(line: 559, column: 77, scope: !1386)
!1393 = !DILocation(line: 559, column: 9, scope: !1283)
!1394 = !DILocation(line: 560, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 559, column: 86)
!1396 = !DILocalVariable(name: "call_flags", scope: !1283, file: !3, line: 563, type: !159)
!1397 = !DILocation(line: 563, column: 9, scope: !1283)
!1398 = !DILocation(line: 564, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 564, column: 9)
!1400 = !DILocation(line: 564, column: 18, scope: !1399)
!1401 = !DILocation(line: 564, column: 29, scope: !1399)
!1402 = !DILocation(line: 564, column: 9, scope: !1283)
!1403 = !DILocation(line: 565, column: 20, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 564, column: 46)
!1405 = !DILocation(line: 566, column: 5, scope: !1404)
!1406 = !DILocation(line: 567, column: 9, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 567, column: 9)
!1408 = !DILocation(line: 567, column: 18, scope: !1407)
!1409 = !DILocation(line: 567, column: 29, scope: !1407)
!1410 = !DILocation(line: 567, column: 9, scope: !1283)
!1411 = !DILocation(line: 568, column: 20, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 567, column: 47)
!1413 = !DILocation(line: 569, column: 5, scope: !1412)
!1414 = !DILocation(line: 570, column: 10, scope: !1283)
!1415 = !DILocation(line: 570, column: 13, scope: !1283)
!1416 = !DILocation(line: 570, column: 5, scope: !1283)
!1417 = !DILocation(line: 571, column: 5, scope: !1283)
!1418 = !DILocation(line: 572, column: 5, scope: !1283)
!1419 = !DILabel(scope: !1283, name: "error", file: !3, line: 574)
!1420 = !DILocation(line: 574, column: 1, scope: !1283)
!1421 = !DILocation(line: 575, column: 21, scope: !1283)
!1422 = !DILocation(line: 575, column: 25, scope: !1283)
!1423 = !DILocation(line: 575, column: 24, scope: !1283)
!1424 = !DILocation(line: 575, column: 38, scope: !1283)
!1425 = !DILocation(line: 575, column: 37, scope: !1283)
!1426 = !DILocation(line: 575, column: 30, scope: !1283)
!1427 = !DILocation(line: 575, column: 5, scope: !1283)
!1428 = !DILocation(line: 576, column: 29, scope: !1283)
!1429 = !DILocation(line: 576, column: 5, scope: !1283)
!1430 = !DILocation(line: 577, column: 1, scope: !1283)
!1431 = distinct !DISubprogram(name: "scriptVerifyCommandArity", scope: !3, file: !3, line: 325, type: !1432, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!159, !440, !159, !1286}
!1434 = !DILocalVariable(name: "cmd", arg: 1, scope: !1431, file: !3, line: 325, type: !440)
!1435 = !DILocation(line: 325, column: 58, scope: !1431)
!1436 = !DILocalVariable(name: "argc", arg: 2, scope: !1431, file: !3, line: 325, type: !159)
!1437 = !DILocation(line: 325, column: 67, scope: !1431)
!1438 = !DILocalVariable(name: "err", arg: 3, scope: !1431, file: !3, line: 325, type: !1286)
!1439 = !DILocation(line: 325, column: 78, scope: !1431)
!1440 = !DILocation(line: 326, column: 10, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 326, column: 9)
!1442 = !DILocation(line: 326, column: 14, scope: !1441)
!1443 = !DILocation(line: 326, column: 19, scope: !1441)
!1444 = !DILocation(line: 326, column: 24, scope: !1441)
!1445 = !DILocation(line: 326, column: 30, scope: !1441)
!1446 = !DILocation(line: 326, column: 34, scope: !1441)
!1447 = !DILocation(line: 326, column: 37, scope: !1441)
!1448 = !DILocation(line: 326, column: 42, scope: !1441)
!1449 = !DILocation(line: 326, column: 51, scope: !1441)
!1450 = !DILocation(line: 326, column: 48, scope: !1441)
!1451 = !DILocation(line: 326, column: 57, scope: !1441)
!1452 = !DILocation(line: 326, column: 61, scope: !1441)
!1453 = !DILocation(line: 326, column: 69, scope: !1441)
!1454 = !DILocation(line: 326, column: 74, scope: !1441)
!1455 = !DILocation(line: 326, column: 68, scope: !1441)
!1456 = !DILocation(line: 326, column: 66, scope: !1441)
!1457 = !DILocation(line: 326, column: 9, scope: !1431)
!1458 = !DILocation(line: 327, column: 13, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 327, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 326, column: 83)
!1461 = !DILocation(line: 327, column: 13, scope: !1460)
!1462 = !DILocation(line: 328, column: 20, scope: !1459)
!1463 = !DILocation(line: 328, column: 14, scope: !1459)
!1464 = !DILocation(line: 328, column: 18, scope: !1459)
!1465 = !DILocation(line: 328, column: 13, scope: !1459)
!1466 = !DILocation(line: 330, column: 20, scope: !1459)
!1467 = !DILocation(line: 330, column: 14, scope: !1459)
!1468 = !DILocation(line: 330, column: 18, scope: !1459)
!1469 = !DILocation(line: 331, column: 9, scope: !1460)
!1470 = !DILocation(line: 333, column: 5, scope: !1431)
!1471 = !DILocation(line: 334, column: 1, scope: !1431)
!1472 = distinct !DISubprogram(name: "scriptVerifyAllowStale", scope: !3, file: !3, line: 486, type: !1473, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!159, !134, !1286}
!1475 = !DILocalVariable(name: "c", arg: 1, scope: !1472, file: !3, line: 486, type: !134)
!1476 = !DILocation(line: 486, column: 43, scope: !1472)
!1477 = !DILocalVariable(name: "err", arg: 2, scope: !1472, file: !3, line: 486, type: !1286)
!1478 = !DILocation(line: 486, column: 51, scope: !1472)
!1479 = !DILocation(line: 487, column: 17, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 487, column: 9)
!1481 = !DILocation(line: 487, column: 10, scope: !1480)
!1482 = !DILocation(line: 487, column: 9, scope: !1472)
!1483 = !DILocation(line: 489, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 487, column: 29)
!1485 = !DILocation(line: 492, column: 16, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 492, column: 9)
!1487 = !DILocation(line: 492, column: 27, scope: !1486)
!1488 = !DILocation(line: 492, column: 9, scope: !1472)
!1489 = !DILocation(line: 494, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 492, column: 52)
!1491 = !DILocation(line: 497, column: 16, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 497, column: 9)
!1493 = !DILocation(line: 497, column: 38, scope: !1492)
!1494 = !DILocation(line: 497, column: 9, scope: !1472)
!1495 = !DILocation(line: 499, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 497, column: 44)
!1497 = !DILocation(line: 502, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 502, column: 9)
!1499 = !DILocation(line: 502, column: 12, scope: !1498)
!1500 = !DILocation(line: 502, column: 17, scope: !1498)
!1501 = !DILocation(line: 502, column: 23, scope: !1498)
!1502 = !DILocation(line: 502, column: 9, scope: !1472)
!1503 = !DILocation(line: 504, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 502, column: 36)
!1505 = !DILocation(line: 508, column: 12, scope: !1472)
!1506 = !DILocation(line: 508, column: 6, scope: !1472)
!1507 = !DILocation(line: 508, column: 10, scope: !1472)
!1508 = !DILocation(line: 509, column: 5, scope: !1472)
!1509 = !DILocation(line: 510, column: 1, scope: !1472)
!1510 = distinct !DISubprogram(name: "scriptVerifyACL", scope: !3, file: !3, line: 336, type: !1473, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1511 = !DILocalVariable(name: "c", arg: 1, scope: !1510, file: !3, line: 336, type: !134)
!1512 = !DILocation(line: 336, column: 36, scope: !1510)
!1513 = !DILocalVariable(name: "err", arg: 2, scope: !1510, file: !3, line: 336, type: !1286)
!1514 = !DILocation(line: 336, column: 44, scope: !1510)
!1515 = !DILocalVariable(name: "acl_errpos", scope: !1510, file: !3, line: 338, type: !159)
!1516 = !DILocation(line: 338, column: 9, scope: !1510)
!1517 = !DILocalVariable(name: "acl_retval", scope: !1510, file: !3, line: 339, type: !159)
!1518 = !DILocation(line: 339, column: 9, scope: !1510)
!1519 = !DILocation(line: 339, column: 38, scope: !1510)
!1520 = !DILocation(line: 339, column: 22, scope: !1510)
!1521 = !DILocation(line: 340, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 340, column: 9)
!1523 = !DILocation(line: 340, column: 20, scope: !1522)
!1524 = !DILocation(line: 340, column: 9, scope: !1510)
!1525 = !DILocation(line: 341, column: 24, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 340, column: 31)
!1527 = !DILocation(line: 341, column: 26, scope: !1526)
!1528 = !DILocation(line: 341, column: 53, scope: !1526)
!1529 = !DILocation(line: 341, column: 9, scope: !1526)
!1530 = !DILocation(line: 342, column: 26, scope: !1526)
!1531 = !DILocation(line: 342, column: 93, scope: !1526)
!1532 = !DILocation(line: 342, column: 74, scope: !1526)
!1533 = !DILocation(line: 342, column: 16, scope: !1526)
!1534 = !DILocation(line: 342, column: 10, scope: !1526)
!1535 = !DILocation(line: 342, column: 14, scope: !1526)
!1536 = !DILocation(line: 343, column: 9, scope: !1526)
!1537 = !DILocation(line: 345, column: 5, scope: !1510)
!1538 = !DILocation(line: 346, column: 1, scope: !1510)
!1539 = distinct !DISubprogram(name: "scriptVerifyWriteCommandAllow", scope: !3, file: !3, line: 348, type: !1540, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!159, !125, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!1543 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1539, file: !3, line: 348, type: !125)
!1544 = !DILocation(line: 348, column: 56, scope: !1539)
!1545 = !DILocalVariable(name: "err", arg: 2, scope: !1539, file: !3, line: 348, type: !1542)
!1546 = !DILocation(line: 348, column: 72, scope: !1539)
!1547 = !DILocation(line: 354, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 354, column: 9)
!1549 = !DILocation(line: 354, column: 18, scope: !1548)
!1550 = !DILocation(line: 354, column: 24, scope: !1548)
!1551 = !DILocation(line: 354, column: 43, scope: !1548)
!1552 = !DILocation(line: 355, column: 10, scope: !1548)
!1553 = !DILocation(line: 355, column: 19, scope: !1548)
!1554 = !DILocation(line: 355, column: 22, scope: !1548)
!1555 = !DILocation(line: 355, column: 27, scope: !1548)
!1556 = !DILocation(line: 355, column: 33, scope: !1548)
!1557 = !DILocation(line: 354, column: 9, scope: !1539)
!1558 = !DILocation(line: 357, column: 16, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 356, column: 5)
!1560 = !DILocation(line: 357, column: 10, scope: !1559)
!1561 = !DILocation(line: 357, column: 14, scope: !1559)
!1562 = !DILocation(line: 358, column: 9, scope: !1559)
!1563 = !DILocation(line: 363, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 363, column: 9)
!1565 = !DILocation(line: 363, column: 20, scope: !1564)
!1566 = !DILocation(line: 363, column: 23, scope: !1564)
!1567 = !DILocation(line: 363, column: 28, scope: !1564)
!1568 = !DILocation(line: 363, column: 34, scope: !1564)
!1569 = !DILocation(line: 363, column: 9, scope: !1539)
!1570 = !DILocation(line: 364, column: 9, scope: !1564)
!1571 = !DILocation(line: 368, column: 10, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 368, column: 9)
!1573 = !DILocation(line: 368, column: 19, scope: !1572)
!1574 = !DILocation(line: 368, column: 25, scope: !1572)
!1575 = !DILocation(line: 368, column: 9, scope: !1539)
!1576 = !DILocation(line: 369, column: 9, scope: !1572)
!1577 = !DILocalVariable(name: "deny_write_type", scope: !1539, file: !3, line: 374, type: !159)
!1578 = !DILocation(line: 374, column: 9, scope: !1539)
!1579 = !DILocation(line: 374, column: 27, scope: !1539)
!1580 = !DILocation(line: 376, column: 16, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 376, column: 9)
!1582 = !DILocation(line: 376, column: 9, scope: !1581)
!1583 = !DILocation(line: 376, column: 27, scope: !1581)
!1584 = !DILocation(line: 376, column: 37, scope: !1581)
!1585 = !DILocation(line: 376, column: 30, scope: !1581)
!1586 = !DILocation(line: 376, column: 51, scope: !1581)
!1587 = !DILocation(line: 377, column: 25, scope: !1581)
!1588 = !DILocation(line: 377, column: 34, scope: !1581)
!1589 = !DILocation(line: 377, column: 10, scope: !1581)
!1590 = !DILocation(line: 376, column: 9, scope: !1539)
!1591 = !DILocation(line: 379, column: 30, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 378, column: 5)
!1593 = !DILocation(line: 379, column: 42, scope: !1592)
!1594 = !DILocation(line: 379, column: 16, scope: !1592)
!1595 = !DILocation(line: 379, column: 10, scope: !1592)
!1596 = !DILocation(line: 379, column: 14, scope: !1592)
!1597 = !DILocation(line: 380, column: 9, scope: !1592)
!1598 = !DILocation(line: 383, column: 9, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 383, column: 9)
!1600 = !DILocation(line: 383, column: 25, scope: !1599)
!1601 = !DILocation(line: 383, column: 9, scope: !1539)
!1602 = !DILocation(line: 384, column: 49, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 383, column: 50)
!1604 = !DILocation(line: 384, column: 16, scope: !1603)
!1605 = !DILocation(line: 384, column: 10, scope: !1603)
!1606 = !DILocation(line: 384, column: 14, scope: !1603)
!1607 = !DILocation(line: 385, column: 9, scope: !1603)
!1608 = !DILocation(line: 392, column: 10, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 392, column: 9)
!1610 = !DILocation(line: 392, column: 9, scope: !1539)
!1611 = !DILocation(line: 393, column: 30, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 392, column: 37)
!1613 = !DILocation(line: 393, column: 45, scope: !1612)
!1614 = !DILocation(line: 393, column: 16, scope: !1612)
!1615 = !DILocation(line: 393, column: 10, scope: !1612)
!1616 = !DILocation(line: 393, column: 14, scope: !1612)
!1617 = !DILocation(line: 394, column: 9, scope: !1612)
!1618 = !DILocation(line: 397, column: 5, scope: !1539)
!1619 = !DILocation(line: 398, column: 1, scope: !1539)
!1620 = distinct !DISubprogram(name: "scriptVerifyOOM", scope: !3, file: !3, line: 400, type: !1540, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1621 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1620, file: !3, line: 400, type: !125)
!1622 = !DILocation(line: 400, column: 42, scope: !1620)
!1623 = !DILocalVariable(name: "err", arg: 2, scope: !1620, file: !3, line: 400, type: !1542)
!1624 = !DILocation(line: 400, column: 58, scope: !1620)
!1625 = !DILocation(line: 401, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 401, column: 9)
!1627 = !DILocation(line: 401, column: 18, scope: !1626)
!1628 = !DILocation(line: 401, column: 24, scope: !1626)
!1629 = !DILocation(line: 401, column: 9, scope: !1620)
!1630 = !DILocation(line: 403, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 401, column: 44)
!1632 = !DILocation(line: 411, column: 16, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 411, column: 9)
!1634 = !DILocation(line: 411, column: 9, scope: !1633)
!1635 = !DILocation(line: 411, column: 26, scope: !1633)
!1636 = !DILocation(line: 412, column: 25, scope: !1633)
!1637 = !DILocation(line: 412, column: 34, scope: !1633)
!1638 = !DILocation(line: 412, column: 10, scope: !1633)
!1639 = !DILocation(line: 412, column: 51, scope: !1633)
!1640 = !DILocation(line: 413, column: 11, scope: !1633)
!1641 = !DILocation(line: 413, column: 20, scope: !1633)
!1642 = !DILocation(line: 413, column: 26, scope: !1633)
!1643 = !DILocation(line: 413, column: 48, scope: !1633)
!1644 = !DILocation(line: 414, column: 16, scope: !1633)
!1645 = !DILocation(line: 414, column: 9, scope: !1633)
!1646 = !DILocation(line: 414, column: 38, scope: !1633)
!1647 = !DILocation(line: 415, column: 10, scope: !1633)
!1648 = !DILocation(line: 415, column: 19, scope: !1633)
!1649 = !DILocation(line: 415, column: 22, scope: !1633)
!1650 = !DILocation(line: 415, column: 27, scope: !1633)
!1651 = !DILocation(line: 415, column: 33, scope: !1633)
!1652 = !DILocation(line: 411, column: 9, scope: !1620)
!1653 = !DILocation(line: 417, column: 30, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 416, column: 5)
!1655 = !DILocation(line: 417, column: 38, scope: !1654)
!1656 = !DILocation(line: 417, column: 16, scope: !1654)
!1657 = !DILocation(line: 417, column: 10, scope: !1654)
!1658 = !DILocation(line: 417, column: 14, scope: !1654)
!1659 = !DILocation(line: 418, column: 9, scope: !1654)
!1660 = !DILocation(line: 421, column: 5, scope: !1620)
!1661 = !DILocation(line: 422, column: 1, scope: !1620)
!1662 = distinct !DISubprogram(name: "scriptVerifyClusterState", scope: !3, file: !3, line: 424, type: !1663, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!159, !125, !134, !134, !1286}
!1665 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1662, file: !3, line: 424, type: !125)
!1666 = !DILocation(line: 424, column: 51, scope: !1662)
!1667 = !DILocalVariable(name: "c", arg: 2, scope: !1662, file: !3, line: 424, type: !134)
!1668 = !DILocation(line: 424, column: 68, scope: !1662)
!1669 = !DILocalVariable(name: "original_c", arg: 3, scope: !1662, file: !3, line: 424, type: !134)
!1670 = !DILocation(line: 424, column: 79, scope: !1662)
!1671 = !DILocalVariable(name: "err", arg: 4, scope: !1662, file: !3, line: 424, type: !1286)
!1672 = !DILocation(line: 424, column: 96, scope: !1662)
!1673 = !DILocation(line: 425, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 425, column: 9)
!1675 = !DILocation(line: 425, column: 10, scope: !1674)
!1676 = !DILocation(line: 425, column: 33, scope: !1674)
!1677 = !DILocation(line: 425, column: 51, scope: !1674)
!1678 = !DILocation(line: 425, column: 36, scope: !1674)
!1679 = !DILocation(line: 425, column: 9, scope: !1662)
!1680 = !DILocation(line: 426, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 425, column: 64)
!1682 = !DILocalVariable(name: "error_code", scope: !1662, file: !3, line: 431, type: !159)
!1683 = !DILocation(line: 431, column: 9, scope: !1662)
!1684 = !DILocation(line: 433, column: 5, scope: !1662)
!1685 = !DILocation(line: 433, column: 8, scope: !1662)
!1686 = !DILocation(line: 433, column: 14, scope: !1662)
!1687 = !DILocation(line: 434, column: 17, scope: !1662)
!1688 = !DILocation(line: 434, column: 29, scope: !1662)
!1689 = !DILocation(line: 434, column: 35, scope: !1662)
!1690 = !DILocation(line: 434, column: 5, scope: !1662)
!1691 = !DILocation(line: 434, column: 8, scope: !1662)
!1692 = !DILocation(line: 434, column: 14, scope: !1662)
!1693 = !DILocalVariable(name: "hashslot", scope: !1662, file: !3, line: 435, type: !159)
!1694 = !DILocation(line: 435, column: 9, scope: !1662)
!1695 = !DILocation(line: 436, column: 24, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 436, column: 9)
!1697 = !DILocation(line: 436, column: 27, scope: !1696)
!1698 = !DILocation(line: 436, column: 30, scope: !1696)
!1699 = !DILocation(line: 436, column: 35, scope: !1696)
!1700 = !DILocation(line: 436, column: 38, scope: !1696)
!1701 = !DILocation(line: 436, column: 44, scope: !1696)
!1702 = !DILocation(line: 436, column: 47, scope: !1696)
!1703 = !DILocation(line: 436, column: 9, scope: !1696)
!1704 = !DILocation(line: 436, column: 87, scope: !1696)
!1705 = !DILocation(line: 436, column: 96, scope: !1696)
!1706 = !DILocation(line: 436, column: 77, scope: !1696)
!1707 = !DILocation(line: 436, column: 9, scope: !1662)
!1708 = !DILocation(line: 437, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 437, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 436, column: 104)
!1711 = !DILocation(line: 437, column: 24, scope: !1709)
!1712 = !DILocation(line: 437, column: 13, scope: !1710)
!1713 = !DILocation(line: 438, column: 20, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 437, column: 56)
!1715 = !DILocation(line: 438, column: 14, scope: !1714)
!1716 = !DILocation(line: 438, column: 18, scope: !1714)
!1717 = !DILocation(line: 441, column: 9, scope: !1714)
!1718 = !DILocation(line: 441, column: 20, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 441, column: 20)
!1720 = !DILocation(line: 441, column: 31, scope: !1719)
!1721 = !DILocation(line: 441, column: 20, scope: !1709)
!1722 = !DILocation(line: 442, column: 20, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 441, column: 60)
!1724 = !DILocation(line: 442, column: 14, scope: !1723)
!1725 = !DILocation(line: 442, column: 18, scope: !1723)
!1726 = !DILocation(line: 444, column: 9, scope: !1723)
!1727 = !DILocation(line: 445, column: 20, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1719, file: !3, line: 444, column: 16)
!1729 = !DILocation(line: 445, column: 14, scope: !1728)
!1730 = !DILocation(line: 445, column: 18, scope: !1728)
!1731 = !DILocation(line: 448, column: 9, scope: !1710)
!1732 = !DILocation(line: 454, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 454, column: 9)
!1734 = !DILocation(line: 454, column: 18, scope: !1733)
!1735 = !DILocation(line: 454, column: 24, scope: !1733)
!1736 = !DILocation(line: 454, column: 29, scope: !1733)
!1737 = !DILocation(line: 454, column: 38, scope: !1733)
!1738 = !DILocation(line: 454, column: 44, scope: !1733)
!1739 = !DILocation(line: 454, column: 9, scope: !1662)
!1740 = !DILocation(line: 455, column: 13, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 455, column: 13)
!1742 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 454, column: 72)
!1743 = !DILocation(line: 455, column: 25, scope: !1741)
!1744 = !DILocation(line: 455, column: 30, scope: !1741)
!1745 = !DILocation(line: 455, column: 13, scope: !1742)
!1746 = !DILocation(line: 456, column: 32, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 455, column: 37)
!1748 = !DILocation(line: 456, column: 13, scope: !1747)
!1749 = !DILocation(line: 456, column: 25, scope: !1747)
!1750 = !DILocation(line: 456, column: 30, scope: !1747)
!1751 = !DILocation(line: 457, column: 9, scope: !1747)
!1752 = !DILocation(line: 457, column: 20, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1741, file: !3, line: 457, column: 20)
!1754 = !DILocation(line: 457, column: 32, scope: !1753)
!1755 = !DILocation(line: 457, column: 40, scope: !1753)
!1756 = !DILocation(line: 457, column: 37, scope: !1753)
!1757 = !DILocation(line: 457, column: 20, scope: !1741)
!1758 = !DILocation(line: 458, column: 20, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 457, column: 50)
!1760 = !DILocation(line: 458, column: 14, scope: !1759)
!1761 = !DILocation(line: 458, column: 18, scope: !1759)
!1762 = !DILocation(line: 460, column: 13, scope: !1759)
!1763 = !DILocation(line: 462, column: 5, scope: !1742)
!1764 = !DILocation(line: 463, column: 5, scope: !1662)
!1765 = !DILocation(line: 464, column: 1, scope: !1662)
!1766 = distinct !DISubprogram(name: "sdslen", scope: !78, file: !78, line: 87, type: !1767, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!229, !1769}
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!1770 = !DILocalVariable(name: "s", arg: 1, scope: !1766, file: !78, line: 87, type: !1769)
!1771 = !DILocation(line: 87, column: 39, scope: !1766)
!1772 = !DILocalVariable(name: "flags", scope: !1766, file: !78, line: 88, type: !85)
!1773 = !DILocation(line: 88, column: 19, scope: !1766)
!1774 = !DILocation(line: 88, column: 27, scope: !1766)
!1775 = !DILocation(line: 89, column: 12, scope: !1766)
!1776 = !DILocation(line: 89, column: 17, scope: !1766)
!1777 = !DILocation(line: 89, column: 5, scope: !1766)
!1778 = !DILocation(line: 91, column: 20, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1766, file: !78, line: 89, column: 33)
!1780 = !DILocation(line: 91, column: 13, scope: !1779)
!1781 = !DILocation(line: 93, column: 20, scope: !1779)
!1782 = !DILocation(line: 93, column: 34, scope: !1779)
!1783 = !DILocation(line: 93, column: 13, scope: !1779)
!1784 = !DILocation(line: 95, column: 20, scope: !1779)
!1785 = !DILocation(line: 95, column: 35, scope: !1779)
!1786 = !DILocation(line: 95, column: 13, scope: !1779)
!1787 = !DILocation(line: 97, column: 20, scope: !1779)
!1788 = !DILocation(line: 97, column: 35, scope: !1779)
!1789 = !DILocation(line: 97, column: 13, scope: !1779)
!1790 = !DILocation(line: 99, column: 20, scope: !1779)
!1791 = !DILocation(line: 99, column: 35, scope: !1779)
!1792 = !DILocation(line: 99, column: 13, scope: !1779)
!1793 = !DILocation(line: 101, column: 5, scope: !1766)
!1794 = !DILocation(line: 102, column: 1, scope: !1766)
!1795 = distinct !DISubprogram(name: "scriptTimeSnapshot", scope: !3, file: !3, line: 580, type: !1796, scopeLine: 580, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!669}
!1798 = !DILocation(line: 581, column: 5, scope: !1795)
!1799 = !DILocation(line: 582, column: 12, scope: !1795)
!1800 = !DILocation(line: 582, column: 26, scope: !1795)
!1801 = !DILocation(line: 582, column: 5, scope: !1795)
!1802 = distinct !DISubprogram(name: "scriptRunDuration", scope: !3, file: !3, line: 585, type: !1803, scopeLine: 585, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!162}
!1805 = !DILocation(line: 586, column: 5, scope: !1802)
!1806 = !DILocation(line: 587, column: 22, scope: !1802)
!1807 = !DILocation(line: 587, column: 36, scope: !1802)
!1808 = !DILocation(line: 587, column: 12, scope: !1802)
!1809 = !DILocation(line: 587, column: 5, scope: !1802)
!1810 = distinct !DISubprogram(name: "elapsedUs", scope: !189, file: !189, line: 53, type: !827, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !760)
!1811 = !DILocalVariable(name: "start_time", arg: 1, scope: !1810, file: !189, line: 53, type: !188)
!1812 = !DILocation(line: 53, column: 43, scope: !1810)
!1813 = !DILocation(line: 54, column: 12, scope: !1810)
!1814 = !DILocation(line: 54, column: 31, scope: !1810)
!1815 = !DILocation(line: 54, column: 29, scope: !1810)
!1816 = !DILocation(line: 54, column: 5, scope: !1810)
