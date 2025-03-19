; ModuleID = 'evict.c'
source_filename = "evict.c"
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
%struct.evictionPoolEntry = type { i64, i8*, i8*, i32 }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@server = external dso_local global %struct.redisServer, align 8
@EvictionPoolLRU = internal global %struct.evictionPoolEntry* null, align 8, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"evict.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Unknown eviction policy in evictionPoolPopulate()\00", align 1
@isEvictionProcRunning = internal global i32 0, align 4, !dbg !76
@.str.2 = private unnamed_addr constant [34 x i8] c"server.also_propagate.numops == 0\00", align 1
@performEvictions.next_db = internal global i32 0, align 4, !dbg !69
@.str.3 = private unnamed_addr constant [13 x i8] c"eviction-del\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"eviction-lazyfree\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"server.core_propagates\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"server.maxmemory_eviction_tenacity >= 0\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"server.maxmemory_eviction_tenacity <= 100\00", align 1
@getMonotonicUs = external dso_local global i64 ()*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getLRUClock() #0 !dbg !94 {
entry:
  %call = call i64 @mstime(), !dbg !97
  %div = sdiv i64 %call, 1000, !dbg !98
  %and = and i64 %div, 16777215, !dbg !99
  %conv = trunc i64 %and to i32, !dbg !100
  ret i32 %conv, !dbg !101
}

declare dso_local i64 @mstime() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LRU_CLOCK() #0 !dbg !102 {
entry:
  %lruclock = alloca i32, align 4
  %atomic-temp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %lruclock, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 8), align 4, !dbg !105
  %div = sdiv i32 1000, %0, !dbg !107
  %cmp = icmp sle i32 %div, 1000, !dbg !108
  br i1 %cmp, label %if.then, label %if.else, !dbg !109

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !110

do.body:                                          ; preds = %if.then
  %1 = load atomic i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 15) monotonic, align 8, !dbg !112
  store i32 %1, i32* %atomic-temp, align 4, !dbg !112
  %2 = load i32, i32* %atomic-temp, align 4, !dbg !112
  store i32 %2, i32* %lruclock, align 4, !dbg !112
  br label %do.end, !dbg !112

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !114

if.else:                                          ; preds = %entry
  %call = call i32 @getLRUClock(), !dbg !115
  store i32 %call, i32* %lruclock, align 4, !dbg !117
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %3 = load i32, i32* %lruclock, align 4, !dbg !118
  ret i32 %3, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @estimateObjectIdleTime(%struct.redisObject* %o) #0 !dbg !120 {
entry:
  %retval = alloca i64, align 8
  %o.addr = alloca %struct.redisObject*, align 8
  %lruclock = alloca i64, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i64* %lruclock, metadata !135, metadata !DIExpression()), !dbg !136
  %call = call i32 @LRU_CLOCK(), !dbg !137
  %conv = zext i32 %call to i64, !dbg !137
  store i64 %conv, i64* %lruclock, align 8, !dbg !136
  %0 = load i64, i64* %lruclock, align 8, !dbg !138
  %1 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !140
  %2 = bitcast %struct.redisObject* %1 to i32*, !dbg !141
  %bf.load = load i32, i32* %2, align 8, !dbg !141
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !141
  %conv1 = zext i32 %bf.lshr to i64, !dbg !140
  %cmp = icmp uge i64 %0, %conv1, !dbg !142
  br i1 %cmp, label %if.then, label %if.else, !dbg !143

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %lruclock, align 8, !dbg !144
  %4 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !146
  %5 = bitcast %struct.redisObject* %4 to i32*, !dbg !147
  %bf.load3 = load i32, i32* %5, align 8, !dbg !147
  %bf.lshr4 = lshr i32 %bf.load3, 8, !dbg !147
  %conv5 = zext i32 %bf.lshr4 to i64, !dbg !146
  %sub = sub i64 %3, %conv5, !dbg !148
  %mul = mul i64 %sub, 1000, !dbg !149
  store i64 %mul, i64* %retval, align 8, !dbg !150
  br label %return, !dbg !150

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %lruclock, align 8, !dbg !151
  %7 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !153
  %8 = bitcast %struct.redisObject* %7 to i32*, !dbg !154
  %bf.load6 = load i32, i32* %8, align 8, !dbg !154
  %bf.lshr7 = lshr i32 %bf.load6, 8, !dbg !154
  %sub8 = sub nsw i32 16777215, %bf.lshr7, !dbg !155
  %conv9 = sext i32 %sub8 to i64, !dbg !156
  %add = add i64 %6, %conv9, !dbg !157
  %mul10 = mul i64 %add, 1000, !dbg !158
  store i64 %mul10, i64* %retval, align 8, !dbg !159
  br label %return, !dbg !159

return:                                           ; preds = %if.else, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !160
  ret i64 %9, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @evictionPoolAlloc() #0 !dbg !161 {
entry:
  %ep = alloca %struct.evictionPoolEntry*, align 8
  %j = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.evictionPoolEntry** %ep, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %j, metadata !166, metadata !DIExpression()), !dbg !167
  %call = call i8* @zmalloc(i64 512), !dbg !168
  %0 = bitcast i8* %call to %struct.evictionPoolEntry*, !dbg !168
  store %struct.evictionPoolEntry* %0, %struct.evictionPoolEntry** %ep, align 8, !dbg !169
  store i32 0, i32* %j, align 4, !dbg !170
  br label %for.cond, !dbg !172

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !dbg !173
  %cmp = icmp slt i32 %1, 16, !dbg !175
  br i1 %cmp, label %for.body, label %for.end, !dbg !176

for.body:                                         ; preds = %for.cond
  %2 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %ep, align 8, !dbg !177
  %3 = load i32, i32* %j, align 4, !dbg !179
  %idxprom = sext i32 %3 to i64, !dbg !177
  %arrayidx = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %2, i64 %idxprom, !dbg !177
  %idle = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx, i32 0, i32 0, !dbg !180
  store i64 0, i64* %idle, align 8, !dbg !181
  %4 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %ep, align 8, !dbg !182
  %5 = load i32, i32* %j, align 4, !dbg !183
  %idxprom1 = sext i32 %5 to i64, !dbg !182
  %arrayidx2 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %4, i64 %idxprom1, !dbg !182
  %key = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx2, i32 0, i32 1, !dbg !184
  store i8* null, i8** %key, align 8, !dbg !185
  %call3 = call i8* @sdsnewlen(i8* null, i64 255), !dbg !186
  %6 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %ep, align 8, !dbg !187
  %7 = load i32, i32* %j, align 4, !dbg !188
  %idxprom4 = sext i32 %7 to i64, !dbg !187
  %arrayidx5 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %6, i64 %idxprom4, !dbg !187
  %cached = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx5, i32 0, i32 2, !dbg !189
  store i8* %call3, i8** %cached, align 8, !dbg !190
  %8 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %ep, align 8, !dbg !191
  %9 = load i32, i32* %j, align 4, !dbg !192
  %idxprom6 = sext i32 %9 to i64, !dbg !191
  %arrayidx7 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %8, i64 %idxprom6, !dbg !191
  %dbid = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx7, i32 0, i32 3, !dbg !193
  store i32 0, i32* %dbid, align 8, !dbg !194
  br label %for.inc, !dbg !195

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4, !dbg !196
  %inc = add nsw i32 %10, 1, !dbg !196
  store i32 %inc, i32* %j, align 4, !dbg !196
  br label %for.cond, !dbg !197, !llvm.loop !198

for.end:                                          ; preds = %for.cond
  %11 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %ep, align 8, !dbg !201
  store %struct.evictionPoolEntry* %11, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8, !dbg !202
  ret void, !dbg !203
}

declare dso_local i8* @zmalloc(i64) #1

declare dso_local i8* @sdsnewlen(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @evictionPoolPopulate(i32 %dbid, %struct.dict* %sampledict, %struct.dict* %keydict, %struct.evictionPoolEntry* %pool) #0 !dbg !204 {
entry:
  %dbid.addr = alloca i32, align 4
  %sampledict.addr = alloca %struct.dict*, align 8
  %keydict.addr = alloca %struct.dict*, align 8
  %pool.addr = alloca %struct.evictionPoolEntry*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %idle = alloca i64, align 8
  %key = alloca i8*, align 8
  %o = alloca %struct.redisObject*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %cached = alloca i8*, align 8
  %cached62 = alloca i8*, align 8
  %klen = alloca i32, align 4
  store i32 %dbid, i32* %dbid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dbid.addr, metadata !281, metadata !DIExpression()), !dbg !282
  store %struct.dict* %sampledict, %struct.dict** %sampledict.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %sampledict.addr, metadata !283, metadata !DIExpression()), !dbg !284
  store %struct.dict* %keydict, %struct.dict** %keydict.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %keydict.addr, metadata !285, metadata !DIExpression()), !dbg !286
  store %struct.evictionPoolEntry* %pool, %struct.evictionPoolEntry** %pool.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evictionPoolEntry** %pool.addr, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %j, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata i32* %k, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i32* %count, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 312), align 4, !dbg !295
  %1 = zext i32 %0 to i64, !dbg !296
  %2 = call i8* @llvm.stacksave(), !dbg !296
  store i8* %2, i8** %saved_stack, align 8, !dbg !296
  %vla = alloca %struct.dictEntry*, i64 %1, align 16, !dbg !296
  store i64 %1, i64* %__vla_expr0, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %vla, metadata !299, metadata !DIExpression()), !dbg !303
  %3 = load %struct.dict*, %struct.dict** %sampledict.addr, align 8, !dbg !304
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 312), align 4, !dbg !305
  %call = call i32 @dictGetSomeKeys(%struct.dict* %3, %struct.dictEntry** %vla, i32 %4), !dbg !306
  store i32 %call, i32* %count, align 4, !dbg !307
  store i32 0, i32* %j, align 4, !dbg !308
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !dbg !311
  %6 = load i32, i32* %count, align 4, !dbg !313
  %cmp = icmp slt i32 %5, %6, !dbg !314
  br i1 %cmp, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %idle, metadata !316, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i8** %key, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !323, metadata !DIExpression()), !dbg !324
  %7 = load i32, i32* %j, align 4, !dbg !325
  %idxprom = sext i32 %7 to i64, !dbg !326
  %arrayidx = getelementptr inbounds %struct.dictEntry*, %struct.dictEntry** %vla, i64 %idxprom, !dbg !326
  %8 = load %struct.dictEntry*, %struct.dictEntry** %arrayidx, align 8, !dbg !326
  store %struct.dictEntry* %8, %struct.dictEntry** %de, align 8, !dbg !327
  %9 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !328
  %key1 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %9, i32 0, i32 0, !dbg !328
  %10 = load i8*, i8** %key1, align 8, !dbg !328
  store i8* %10, i8** %key, align 8, !dbg !329
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !330
  %cmp2 = icmp ne i32 %11, 512, !dbg !332
  br i1 %cmp2, label %if.then, label %if.end6, !dbg !333

if.then:                                          ; preds = %for.body
  %12 = load %struct.dict*, %struct.dict** %sampledict.addr, align 8, !dbg !334
  %13 = load %struct.dict*, %struct.dict** %keydict.addr, align 8, !dbg !337
  %cmp3 = icmp ne %struct.dict* %12, %13, !dbg !338
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !339

if.then4:                                         ; preds = %if.then
  %14 = load %struct.dict*, %struct.dict** %keydict.addr, align 8, !dbg !340
  %15 = load i8*, i8** %key, align 8, !dbg !341
  %call5 = call %struct.dictEntry* @dictFind(%struct.dict* %14, i8* %15), !dbg !342
  store %struct.dictEntry* %call5, %struct.dictEntry** %de, align 8, !dbg !343
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then4, %if.then
  %16 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !345
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %16, i32 0, i32 1, !dbg !345
  %val = bitcast %union.anon* %v to i8**, !dbg !345
  %17 = load i8*, i8** %val, align 8, !dbg !345
  %18 = bitcast i8* %17 to %struct.redisObject*, !dbg !345
  store %struct.redisObject* %18, %struct.redisObject** %o, align 8, !dbg !346
  br label %if.end6, !dbg !347

if.end6:                                          ; preds = %if.end, %for.body
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !348
  %and = and i32 %19, 1, !dbg !350
  %tobool = icmp ne i32 %and, 0, !dbg !350
  br i1 %tobool, label %if.then7, label %if.else, !dbg !351

if.then7:                                         ; preds = %if.end6
  %20 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !352
  %call8 = call i64 @estimateObjectIdleTime(%struct.redisObject* %20), !dbg !354
  store i64 %call8, i64* %idle, align 8, !dbg !355
  br label %if.end22, !dbg !356

if.else:                                          ; preds = %if.end6
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !357
  %and9 = and i32 %21, 2, !dbg !359
  %tobool10 = icmp ne i32 %and9, 0, !dbg !359
  br i1 %tobool10, label %if.then11, label %if.else13, !dbg !360

if.then11:                                        ; preds = %if.else
  %22 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !361
  %call12 = call i64 @LFUDecrAndReturn(%struct.redisObject* %22), !dbg !363
  %sub = sub i64 255, %call12, !dbg !364
  store i64 %sub, i64* %idle, align 8, !dbg !365
  br label %if.end21, !dbg !366

if.else13:                                        ; preds = %if.else
  %23 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !367
  %cmp14 = icmp eq i32 %23, 512, !dbg !369
  br i1 %cmp14, label %if.then15, label %if.else19, !dbg !370

if.then15:                                        ; preds = %if.else13
  %24 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !371
  %v16 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %24, i32 0, i32 1, !dbg !371
  %val17 = bitcast %union.anon* %v16 to i8**, !dbg !371
  %25 = load i8*, i8** %val17, align 8, !dbg !371
  %26 = ptrtoint i8* %25 to i64, !dbg !373
  %sub18 = sub i64 -1, %26, !dbg !374
  store i64 %sub18, i64* %idle, align 8, !dbg !375
  br label %if.end20, !dbg !376

if.else19:                                        ; preds = %if.else13
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)), !dbg !377
  unreachable, !dbg !377

if.end20:                                         ; preds = %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then11
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then7
  store i32 0, i32* %k, align 4, !dbg !379
  br label %while.cond, !dbg !380

while.cond:                                       ; preds = %while.body, %if.end22
  %27 = load i32, i32* %k, align 4, !dbg !381
  %cmp23 = icmp slt i32 %27, 16, !dbg !382
  br i1 %cmp23, label %land.lhs.true, label %land.end, !dbg !383

land.lhs.true:                                    ; preds = %while.cond
  %28 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !384
  %29 = load i32, i32* %k, align 4, !dbg !385
  %idxprom24 = sext i32 %29 to i64, !dbg !384
  %arrayidx25 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %28, i64 %idxprom24, !dbg !384
  %key26 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx25, i32 0, i32 1, !dbg !386
  %30 = load i8*, i8** %key26, align 8, !dbg !386
  %tobool27 = icmp ne i8* %30, null, !dbg !384
  br i1 %tobool27, label %land.rhs, label %land.end, !dbg !387

land.rhs:                                         ; preds = %land.lhs.true
  %31 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !388
  %32 = load i32, i32* %k, align 4, !dbg !389
  %idxprom28 = sext i32 %32 to i64, !dbg !388
  %arrayidx29 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %31, i64 %idxprom28, !dbg !388
  %idle30 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx29, i32 0, i32 0, !dbg !390
  %33 = load i64, i64* %idle30, align 8, !dbg !390
  %34 = load i64, i64* %idle, align 8, !dbg !391
  %cmp31 = icmp ult i64 %33, %34, !dbg !392
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %35 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp31, %land.rhs ], !dbg !393
  br i1 %35, label %while.body, label %while.end, !dbg !380

while.body:                                       ; preds = %land.end
  %36 = load i32, i32* %k, align 4, !dbg !394
  %inc = add nsw i32 %36, 1, !dbg !394
  store i32 %inc, i32* %k, align 4, !dbg !394
  br label %while.cond, !dbg !380, !llvm.loop !395

while.end:                                        ; preds = %land.end
  %37 = load i32, i32* %k, align 4, !dbg !396
  %cmp32 = icmp eq i32 %37, 0, !dbg !398
  br i1 %cmp32, label %land.lhs.true33, label %if.else38, !dbg !399

land.lhs.true33:                                  ; preds = %while.end
  %38 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !400
  %arrayidx34 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %38, i64 15, !dbg !400
  %key35 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx34, i32 0, i32 1, !dbg !401
  %39 = load i8*, i8** %key35, align 8, !dbg !401
  %cmp36 = icmp ne i8* %39, null, !dbg !402
  br i1 %cmp36, label %if.then37, label %if.else38, !dbg !403

if.then37:                                        ; preds = %land.lhs.true33
  br label %for.inc, !dbg !404

if.else38:                                        ; preds = %land.lhs.true33, %while.end
  %40 = load i32, i32* %k, align 4, !dbg !406
  %cmp39 = icmp slt i32 %40, 16, !dbg !408
  br i1 %cmp39, label %land.lhs.true40, label %if.else46, !dbg !409

land.lhs.true40:                                  ; preds = %if.else38
  %41 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !410
  %42 = load i32, i32* %k, align 4, !dbg !411
  %idxprom41 = sext i32 %42 to i64, !dbg !410
  %arrayidx42 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %41, i64 %idxprom41, !dbg !410
  %key43 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx42, i32 0, i32 1, !dbg !412
  %43 = load i8*, i8** %key43, align 8, !dbg !412
  %cmp44 = icmp eq i8* %43, null, !dbg !413
  br i1 %cmp44, label %if.then45, label %if.else46, !dbg !414

if.then45:                                        ; preds = %land.lhs.true40
  br label %if.end82, !dbg !415

if.else46:                                        ; preds = %land.lhs.true40, %if.else38
  %44 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !417
  %arrayidx47 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %44, i64 15, !dbg !417
  %key48 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx47, i32 0, i32 1, !dbg !420
  %45 = load i8*, i8** %key48, align 8, !dbg !420
  %cmp49 = icmp eq i8* %45, null, !dbg !421
  br i1 %cmp49, label %if.then50, label %if.else61, !dbg !422

if.then50:                                        ; preds = %if.else46
  call void @llvm.dbg.declare(metadata i8** %cached, metadata !423, metadata !DIExpression()), !dbg !425
  %46 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !426
  %arrayidx51 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %46, i64 15, !dbg !426
  %cached52 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx51, i32 0, i32 2, !dbg !427
  %47 = load i8*, i8** %cached52, align 8, !dbg !427
  store i8* %47, i8** %cached, align 8, !dbg !425
  %48 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !428
  %49 = load i32, i32* %k, align 4, !dbg !429
  %idx.ext = sext i32 %49 to i64, !dbg !430
  %add.ptr = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %48, i64 %idx.ext, !dbg !430
  %add.ptr53 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %add.ptr, i64 1, !dbg !431
  %50 = bitcast %struct.evictionPoolEntry* %add.ptr53 to i8*, !dbg !432
  %51 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !433
  %52 = load i32, i32* %k, align 4, !dbg !434
  %idx.ext54 = sext i32 %52 to i64, !dbg !435
  %add.ptr55 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %idx.ext54, !dbg !435
  %53 = bitcast %struct.evictionPoolEntry* %add.ptr55 to i8*, !dbg !432
  %54 = load i32, i32* %k, align 4, !dbg !436
  %sub56 = sub nsw i32 16, %54, !dbg !437
  %sub57 = sub nsw i32 %sub56, 1, !dbg !438
  %conv = sext i32 %sub57 to i64, !dbg !439
  %mul = mul i64 32, %conv, !dbg !440
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %53, i64 %mul, i1 false), !dbg !432
  %55 = load i8*, i8** %cached, align 8, !dbg !441
  %56 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !442
  %57 = load i32, i32* %k, align 4, !dbg !443
  %idxprom58 = sext i32 %57 to i64, !dbg !442
  %arrayidx59 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %56, i64 %idxprom58, !dbg !442
  %cached60 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx59, i32 0, i32 2, !dbg !444
  store i8* %55, i8** %cached60, align 8, !dbg !445
  br label %if.end81, !dbg !446

if.else61:                                        ; preds = %if.else46
  %58 = load i32, i32* %k, align 4, !dbg !447
  %dec = add nsw i32 %58, -1, !dbg !447
  store i32 %dec, i32* %k, align 4, !dbg !447
  call void @llvm.dbg.declare(metadata i8** %cached62, metadata !449, metadata !DIExpression()), !dbg !450
  %59 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !451
  %arrayidx63 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %59, i64 0, !dbg !451
  %cached64 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx63, i32 0, i32 2, !dbg !452
  %60 = load i8*, i8** %cached64, align 8, !dbg !452
  store i8* %60, i8** %cached62, align 8, !dbg !450
  %61 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !453
  %arrayidx65 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %61, i64 0, !dbg !453
  %key66 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx65, i32 0, i32 1, !dbg !455
  %62 = load i8*, i8** %key66, align 8, !dbg !455
  %63 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !456
  %arrayidx67 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %63, i64 0, !dbg !456
  %cached68 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx67, i32 0, i32 2, !dbg !457
  %64 = load i8*, i8** %cached68, align 8, !dbg !457
  %cmp69 = icmp ne i8* %62, %64, !dbg !458
  br i1 %cmp69, label %if.then71, label %if.end74, !dbg !459

if.then71:                                        ; preds = %if.else61
  %65 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !460
  %arrayidx72 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %65, i64 0, !dbg !460
  %key73 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx72, i32 0, i32 1, !dbg !461
  %66 = load i8*, i8** %key73, align 8, !dbg !461
  call void @sdsfree(i8* %66), !dbg !462
  br label %if.end74, !dbg !462

if.end74:                                         ; preds = %if.then71, %if.else61
  %67 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !463
  %68 = bitcast %struct.evictionPoolEntry* %67 to i8*, !dbg !464
  %69 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !465
  %add.ptr75 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %69, i64 1, !dbg !466
  %70 = bitcast %struct.evictionPoolEntry* %add.ptr75 to i8*, !dbg !464
  %71 = load i32, i32* %k, align 4, !dbg !467
  %conv76 = sext i32 %71 to i64, !dbg !467
  %mul77 = mul i64 32, %conv76, !dbg !468
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %70, i64 %mul77, i1 false), !dbg !464
  %72 = load i8*, i8** %cached62, align 8, !dbg !469
  %73 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !470
  %74 = load i32, i32* %k, align 4, !dbg !471
  %idxprom78 = sext i32 %74 to i64, !dbg !470
  %arrayidx79 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %73, i64 %idxprom78, !dbg !470
  %cached80 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx79, i32 0, i32 2, !dbg !472
  store i8* %72, i8** %cached80, align 8, !dbg !473
  br label %if.end81

if.end81:                                         ; preds = %if.end74, %if.then50
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then45
  br label %if.end83

if.end83:                                         ; preds = %if.end82
  call void @llvm.dbg.declare(metadata i32* %klen, metadata !474, metadata !DIExpression()), !dbg !475
  %75 = load i8*, i8** %key, align 8, !dbg !476
  %call84 = call i64 @sdslen(i8* %75), !dbg !477
  %conv85 = trunc i64 %call84 to i32, !dbg !477
  store i32 %conv85, i32* %klen, align 4, !dbg !475
  %76 = load i32, i32* %klen, align 4, !dbg !478
  %cmp86 = icmp sgt i32 %76, 255, !dbg !480
  br i1 %cmp86, label %if.then88, label %if.else93, !dbg !481

if.then88:                                        ; preds = %if.end83
  %77 = load i8*, i8** %key, align 8, !dbg !482
  %call89 = call i8* @sdsdup(i8* %77), !dbg !484
  %78 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !485
  %79 = load i32, i32* %k, align 4, !dbg !486
  %idxprom90 = sext i32 %79 to i64, !dbg !485
  %arrayidx91 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %78, i64 %idxprom90, !dbg !485
  %key92 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx91, i32 0, i32 1, !dbg !487
  store i8* %call89, i8** %key92, align 8, !dbg !488
  br label %if.end108, !dbg !489

if.else93:                                        ; preds = %if.end83
  %80 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !490
  %81 = load i32, i32* %k, align 4, !dbg !492
  %idxprom94 = sext i32 %81 to i64, !dbg !490
  %arrayidx95 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %80, i64 %idxprom94, !dbg !490
  %cached96 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx95, i32 0, i32 2, !dbg !493
  %82 = load i8*, i8** %cached96, align 8, !dbg !493
  %83 = load i8*, i8** %key, align 8, !dbg !494
  %84 = load i32, i32* %klen, align 4, !dbg !495
  %add = add nsw i32 %84, 1, !dbg !496
  %conv97 = sext i32 %add to i64, !dbg !495
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 %83, i64 %conv97, i1 false), !dbg !497
  %85 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !498
  %86 = load i32, i32* %k, align 4, !dbg !499
  %idxprom98 = sext i32 %86 to i64, !dbg !498
  %arrayidx99 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %85, i64 %idxprom98, !dbg !498
  %cached100 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx99, i32 0, i32 2, !dbg !500
  %87 = load i8*, i8** %cached100, align 8, !dbg !500
  %88 = load i32, i32* %klen, align 4, !dbg !501
  %conv101 = sext i32 %88 to i64, !dbg !501
  call void @sdssetlen(i8* %87, i64 %conv101), !dbg !502
  %89 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !503
  %90 = load i32, i32* %k, align 4, !dbg !504
  %idxprom102 = sext i32 %90 to i64, !dbg !503
  %arrayidx103 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %89, i64 %idxprom102, !dbg !503
  %cached104 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx103, i32 0, i32 2, !dbg !505
  %91 = load i8*, i8** %cached104, align 8, !dbg !505
  %92 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !506
  %93 = load i32, i32* %k, align 4, !dbg !507
  %idxprom105 = sext i32 %93 to i64, !dbg !506
  %arrayidx106 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %92, i64 %idxprom105, !dbg !506
  %key107 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx106, i32 0, i32 1, !dbg !508
  store i8* %91, i8** %key107, align 8, !dbg !509
  br label %if.end108

if.end108:                                        ; preds = %if.else93, %if.then88
  %94 = load i64, i64* %idle, align 8, !dbg !510
  %95 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !511
  %96 = load i32, i32* %k, align 4, !dbg !512
  %idxprom109 = sext i32 %96 to i64, !dbg !511
  %arrayidx110 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %95, i64 %idxprom109, !dbg !511
  %idle111 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx110, i32 0, i32 0, !dbg !513
  store i64 %94, i64* %idle111, align 8, !dbg !514
  %97 = load i32, i32* %dbid.addr, align 4, !dbg !515
  %98 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool.addr, align 8, !dbg !516
  %99 = load i32, i32* %k, align 4, !dbg !517
  %idxprom112 = sext i32 %99 to i64, !dbg !516
  %arrayidx113 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %98, i64 %idxprom112, !dbg !516
  %dbid114 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx113, i32 0, i32 3, !dbg !518
  store i32 %97, i32* %dbid114, align 8, !dbg !519
  br label %for.inc, !dbg !520

for.inc:                                          ; preds = %if.end108, %if.then37
  %100 = load i32, i32* %j, align 4, !dbg !521
  %inc115 = add nsw i32 %100, 1, !dbg !521
  store i32 %inc115, i32* %j, align 4, !dbg !521
  br label %for.cond, !dbg !522, !llvm.loop !523

for.end:                                          ; preds = %for.cond
  %101 = load i8*, i8** %saved_stack, align 8, !dbg !525
  call void @llvm.stackrestore(i8* %101), !dbg !525
  ret void, !dbg !525
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare dso_local i32 @dictGetSomeKeys(%struct.dict*, %struct.dictEntry**, i32) #1

declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @LFUDecrAndReturn(%struct.redisObject* %o) #0 !dbg !526 {
entry:
  %o.addr = alloca %struct.redisObject*, align 8
  %ldt = alloca i64, align 8
  %counter = alloca i64, align 8
  %num_periods = alloca i64, align 8
  store %struct.redisObject* %o, %struct.redisObject** %o.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i64* %ldt, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !533
  %1 = bitcast %struct.redisObject* %0 to i32*, !dbg !534
  %bf.load = load i32, i32* %1, align 8, !dbg !534
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !534
  %shr = ashr i32 %bf.lshr, 8, !dbg !535
  %conv = sext i32 %shr to i64, !dbg !533
  store i64 %conv, i64* %ldt, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %counter, metadata !536, metadata !DIExpression()), !dbg !537
  %2 = load %struct.redisObject*, %struct.redisObject** %o.addr, align 8, !dbg !538
  %3 = bitcast %struct.redisObject* %2 to i32*, !dbg !539
  %bf.load1 = load i32, i32* %3, align 8, !dbg !539
  %bf.lshr2 = lshr i32 %bf.load1, 8, !dbg !539
  %and = and i32 %bf.lshr2, 255, !dbg !540
  %conv3 = sext i32 %and to i64, !dbg !538
  store i64 %conv3, i64* %counter, align 8, !dbg !537
  call void @llvm.dbg.declare(metadata i64* %num_periods, metadata !541, metadata !DIExpression()), !dbg !542
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 315), align 8, !dbg !543
  %tobool = icmp ne i32 %4, 0, !dbg !544
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !544

cond.true:                                        ; preds = %entry
  %5 = load i64, i64* %ldt, align 8, !dbg !545
  %call = call i64 @LFUTimeElapsed(i64 %5), !dbg !546
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 315), align 8, !dbg !547
  %conv4 = sext i32 %6 to i64, !dbg !548
  %div = udiv i64 %call, %conv4, !dbg !549
  br label %cond.end, !dbg !544

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !544

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 0, %cond.false ], !dbg !544
  store i64 %cond, i64* %num_periods, align 8, !dbg !542
  %7 = load i64, i64* %num_periods, align 8, !dbg !550
  %tobool5 = icmp ne i64 %7, 0, !dbg !550
  br i1 %tobool5, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %cond.end
  %8 = load i64, i64* %num_periods, align 8, !dbg !553
  %9 = load i64, i64* %counter, align 8, !dbg !554
  %cmp = icmp ugt i64 %8, %9, !dbg !555
  br i1 %cmp, label %cond.true7, label %cond.false8, !dbg !556

cond.true7:                                       ; preds = %if.then
  br label %cond.end9, !dbg !556

cond.false8:                                      ; preds = %if.then
  %10 = load i64, i64* %counter, align 8, !dbg !557
  %11 = load i64, i64* %num_periods, align 8, !dbg !558
  %sub = sub i64 %10, %11, !dbg !559
  br label %cond.end9, !dbg !556

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i64 [ 0, %cond.true7 ], [ %sub, %cond.false8 ], !dbg !556
  store i64 %cond10, i64* %counter, align 8, !dbg !560
  br label %if.end, !dbg !561

if.end:                                           ; preds = %cond.end9, %cond.end
  %12 = load i64, i64* %counter, align 8, !dbg !562
  ret i64 %12, !dbg !563
}

declare dso_local void @_serverPanic(i8*, i32, i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

declare dso_local void @sdsfree(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !564 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !570, metadata !DIExpression()), !dbg !571
  %0 = load i8*, i8** %s.addr, align 8, !dbg !572
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !572
  %1 = load i8, i8* %arrayidx, align 1, !dbg !572
  store i8 %1, i8* %flags, align 1, !dbg !571
  %2 = load i8, i8* %flags, align 1, !dbg !573
  %conv = zext i8 %2 to i32, !dbg !573
  %and = and i32 %conv, 7, !dbg !574
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !575

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !576
  %conv1 = zext i8 %3 to i32, !dbg !576
  %shr = ashr i32 %conv1, 3, !dbg !576
  %conv2 = sext i32 %shr to i64, !dbg !576
  store i64 %conv2, i64* %retval, align 8, !dbg !578
  br label %return, !dbg !578

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !579
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !579
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !580
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !580
  %6 = load i8, i8* %len, align 1, !dbg !580
  %conv4 = zext i8 %6 to i64, !dbg !579
  store i64 %conv4, i64* %retval, align 8, !dbg !581
  br label %return, !dbg !581

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !582
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !582
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !583
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !583
  %9 = load i16, i16* %len7, align 1, !dbg !583
  %conv8 = zext i16 %9 to i64, !dbg !582
  store i64 %conv8, i64* %retval, align 8, !dbg !584
  br label %return, !dbg !584

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !585
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !585
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !586
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !586
  %12 = load i32, i32* %len11, align 1, !dbg !586
  %conv12 = zext i32 %12 to i64, !dbg !585
  store i64 %conv12, i64* %retval, align 8, !dbg !587
  br label %return, !dbg !587

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !588
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !588
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !589
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !589
  %15 = load i64, i64* %len15, align 1, !dbg !589
  store i64 %15, i64* %retval, align 8, !dbg !590
  br label %return, !dbg !590

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !591
  br label %return, !dbg !591

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !592
  ret i64 %16, !dbg !592
}

declare dso_local i8* @sdsdup(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @sdssetlen(i8* %s, i64 %newlen) #0 !dbg !593 {
entry:
  %s.addr = alloca i8*, align 8
  %newlen.addr = alloca i64, align 8
  %flags = alloca i8, align 1
  %fp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !596, metadata !DIExpression()), !dbg !597
  store i64 %newlen, i64* %newlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %newlen.addr, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i8*, i8** %s.addr, align 8, !dbg !602
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !602
  %1 = load i8, i8* %arrayidx, align 1, !dbg !602
  store i8 %1, i8* %flags, align 1, !dbg !601
  %2 = load i8, i8* %flags, align 1, !dbg !603
  %conv = zext i8 %2 to i32, !dbg !603
  %and = and i32 %conv, 7, !dbg !604
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !605

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %fp, metadata !606, metadata !DIExpression()), !dbg !609
  %3 = load i8*, i8** %s.addr, align 8, !dbg !610
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !611
  store i8* %add.ptr, i8** %fp, align 8, !dbg !609
  %4 = load i64, i64* %newlen.addr, align 8, !dbg !612
  %shl = shl i64 %4, 3, !dbg !613
  %or = or i64 0, %shl, !dbg !614
  %conv1 = trunc i64 %or to i8, !dbg !615
  %5 = load i8*, i8** %fp, align 8, !dbg !616
  store i8 %conv1, i8* %5, align 1, !dbg !617
  br label %sw.epilog, !dbg !618

sw.bb2:                                           ; preds = %entry
  %6 = load i64, i64* %newlen.addr, align 8, !dbg !619
  %conv3 = trunc i64 %6 to i8, !dbg !619
  %7 = load i8*, i8** %s.addr, align 8, !dbg !620
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !620
  %8 = bitcast i8* %add.ptr4 to %struct.sdshdr8*, !dbg !621
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %8, i32 0, i32 0, !dbg !621
  store i8 %conv3, i8* %len, align 1, !dbg !622
  br label %sw.epilog, !dbg !623

sw.bb5:                                           ; preds = %entry
  %9 = load i64, i64* %newlen.addr, align 8, !dbg !624
  %conv6 = trunc i64 %9 to i16, !dbg !624
  %10 = load i8*, i8** %s.addr, align 8, !dbg !625
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !625
  %11 = bitcast i8* %add.ptr7 to %struct.sdshdr16*, !dbg !626
  %len8 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %11, i32 0, i32 0, !dbg !626
  store i16 %conv6, i16* %len8, align 1, !dbg !627
  br label %sw.epilog, !dbg !628

sw.bb9:                                           ; preds = %entry
  %12 = load i64, i64* %newlen.addr, align 8, !dbg !629
  %conv10 = trunc i64 %12 to i32, !dbg !629
  %13 = load i8*, i8** %s.addr, align 8, !dbg !630
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !630
  %14 = bitcast i8* %add.ptr11 to %struct.sdshdr32*, !dbg !631
  %len12 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %14, i32 0, i32 0, !dbg !631
  store i32 %conv10, i32* %len12, align 1, !dbg !632
  br label %sw.epilog, !dbg !633

sw.bb13:                                          ; preds = %entry
  %15 = load i64, i64* %newlen.addr, align 8, !dbg !634
  %16 = load i8*, i8** %s.addr, align 8, !dbg !635
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !635
  %17 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !636
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %17, i32 0, i32 0, !dbg !636
  store i64 %15, i64* %len15, align 1, !dbg !637
  br label %sw.epilog, !dbg !638

sw.epilog:                                        ; preds = %entry, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb2, %sw.bb
  ret void, !dbg !639
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @LFUGetTimeInMinutes() #0 !dbg !640 {
entry:
  %atomic-load = load atomic i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 341) seq_cst, align 8, !dbg !643
  %div = sdiv i64 %atomic-load, 60, !dbg !644
  %and = and i64 %div, 65535, !dbg !645
  ret i64 %and, !dbg !646
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @LFUTimeElapsed(i64 %ldt) #0 !dbg !647 {
entry:
  %retval = alloca i64, align 8
  %ldt.addr = alloca i64, align 8
  %now = alloca i64, align 8
  store i64 %ldt, i64* %ldt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ldt.addr, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %now, metadata !652, metadata !DIExpression()), !dbg !653
  %call = call i64 @LFUGetTimeInMinutes(), !dbg !654
  store i64 %call, i64* %now, align 8, !dbg !653
  %0 = load i64, i64* %now, align 8, !dbg !655
  %1 = load i64, i64* %ldt.addr, align 8, !dbg !657
  %cmp = icmp uge i64 %0, %1, !dbg !658
  br i1 %cmp, label %if.then, label %if.end, !dbg !659

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %now, align 8, !dbg !660
  %3 = load i64, i64* %ldt.addr, align 8, !dbg !661
  %sub = sub i64 %2, %3, !dbg !662
  store i64 %sub, i64* %retval, align 8, !dbg !663
  br label %return, !dbg !663

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %ldt.addr, align 8, !dbg !664
  %sub1 = sub i64 65535, %4, !dbg !665
  %5 = load i64, i64* %now, align 8, !dbg !666
  %add = add i64 %sub1, %5, !dbg !667
  store i64 %add, i64* %retval, align 8, !dbg !668
  br label %return, !dbg !668

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !669
  ret i64 %6, !dbg !669
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @LFULogIncr(i8 zeroext %counter) #0 !dbg !670 {
entry:
  %retval = alloca i8, align 1
  %counter.addr = alloca i8, align 1
  %r = alloca double, align 8
  %baseval = alloca double, align 8
  %p = alloca double, align 8
  store i8 %counter, i8* %counter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %counter.addr, metadata !673, metadata !DIExpression()), !dbg !674
  %0 = load i8, i8* %counter.addr, align 1, !dbg !675
  %conv = zext i8 %0 to i32, !dbg !675
  %cmp = icmp eq i32 %conv, 255, !dbg !677
  br i1 %cmp, label %if.then, label %if.end, !dbg !678

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1, !dbg !679
  br label %return, !dbg !679

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %r, metadata !680, metadata !DIExpression()), !dbg !681
  %call = call i32 @rand() #6, !dbg !682
  %conv2 = sitofp i32 %call to double, !dbg !683
  %div = fdiv double %conv2, 0x41DFFFFFFFC00000, !dbg !684
  store double %div, double* %r, align 8, !dbg !681
  call void @llvm.dbg.declare(metadata double* %baseval, metadata !685, metadata !DIExpression()), !dbg !686
  %1 = load i8, i8* %counter.addr, align 1, !dbg !687
  %conv3 = zext i8 %1 to i32, !dbg !687
  %sub = sub nsw i32 %conv3, 5, !dbg !688
  %conv4 = sitofp i32 %sub to double, !dbg !687
  store double %conv4, double* %baseval, align 8, !dbg !686
  %2 = load double, double* %baseval, align 8, !dbg !689
  %cmp5 = fcmp olt double %2, 0.000000e+00, !dbg !691
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !692

if.then7:                                         ; preds = %if.end
  store double 0.000000e+00, double* %baseval, align 8, !dbg !693
  br label %if.end8, !dbg !694

if.end8:                                          ; preds = %if.then7, %if.end
  call void @llvm.dbg.declare(metadata double* %p, metadata !695, metadata !DIExpression()), !dbg !696
  %3 = load double, double* %baseval, align 8, !dbg !697
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 314), align 4, !dbg !698
  %conv9 = sitofp i32 %4 to double, !dbg !699
  %mul = fmul double %3, %conv9, !dbg !700
  %add = fadd double %mul, 1.000000e+00, !dbg !701
  %div10 = fdiv double 1.000000e+00, %add, !dbg !702
  store double %div10, double* %p, align 8, !dbg !696
  %5 = load double, double* %r, align 8, !dbg !703
  %6 = load double, double* %p, align 8, !dbg !705
  %cmp11 = fcmp olt double %5, %6, !dbg !706
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !707

if.then13:                                        ; preds = %if.end8
  %7 = load i8, i8* %counter.addr, align 1, !dbg !708
  %inc = add i8 %7, 1, !dbg !708
  store i8 %inc, i8* %counter.addr, align 1, !dbg !708
  br label %if.end14, !dbg !709

if.end14:                                         ; preds = %if.then13, %if.end8
  %8 = load i8, i8* %counter.addr, align 1, !dbg !710
  store i8 %8, i8* %retval, align 1, !dbg !711
  br label %return, !dbg !711

return:                                           ; preds = %if.end14, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !712
  ret i8 %9, !dbg !712
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @freeMemoryGetNotCountedMemory() #0 !dbg !713 {
entry:
  %overhead = alloca i64, align 8
  %extra_approx_size = alloca i64, align 8
  %counted_mem = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %overhead, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 0, i64* %overhead, align 8, !dbg !717
  %0 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 274), align 8, !dbg !718
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 264), align 8, !dbg !720
  %cmp = icmp sgt i64 %0, %1, !dbg !721
  br i1 %cmp, label %if.then, label %if.end5, !dbg !722

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %extra_approx_size, metadata !723, metadata !DIExpression()), !dbg !725
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 264), align 8, !dbg !726
  %div = sdiv i64 %2, 16384, !dbg !727
  %add = add nsw i64 %div, 1, !dbg !728
  %mul = mul i64 %add, 64, !dbg !729
  store i64 %mul, i64* %extra_approx_size, align 8, !dbg !725
  call void @llvm.dbg.declare(metadata i64* %counted_mem, metadata !730, metadata !DIExpression()), !dbg !731
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 264), align 8, !dbg !732
  %4 = load i64, i64* %extra_approx_size, align 8, !dbg !733
  %add1 = add i64 %3, %4, !dbg !734
  store i64 %add1, i64* %counted_mem, align 8, !dbg !731
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 274), align 8, !dbg !735
  %6 = load i64, i64* %counted_mem, align 8, !dbg !737
  %cmp2 = icmp ugt i64 %5, %6, !dbg !738
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !739

if.then3:                                         ; preds = %if.then
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 274), align 8, !dbg !740
  %8 = load i64, i64* %counted_mem, align 8, !dbg !742
  %sub = sub i64 %7, %8, !dbg !743
  %9 = load i64, i64* %overhead, align 8, !dbg !744
  %add4 = add i64 %9, %sub, !dbg !744
  store i64 %add4, i64* %overhead, align 8, !dbg !744
  br label %if.end, !dbg !745

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5, !dbg !746

if.end5:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 182), align 8, !dbg !747
  %cmp6 = icmp ne i32 %10, 0, !dbg !749
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !750

if.then7:                                         ; preds = %if.end5
  %11 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 195), align 8, !dbg !751
  %call = call i64 @sdsAllocSize(i8* %11), !dbg !753
  %12 = load i64, i64* %overhead, align 8, !dbg !754
  %add8 = add i64 %12, %call, !dbg !754
  store i64 %add8, i64* %overhead, align 8, !dbg !754
  br label %if.end9, !dbg !755

if.end9:                                          ; preds = %if.then7, %if.end5
  %13 = load i64, i64* %overhead, align 8, !dbg !756
  ret i64 %13, !dbg !757
}

declare dso_local i64 @sdsAllocSize(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getMaxmemoryState(i64* %total, i64* %logical, i64* %tofree, float* %level) #0 !dbg !758 {
entry:
  %retval = alloca i32, align 4
  %total.addr = alloca i64*, align 8
  %logical.addr = alloca i64*, align 8
  %tofree.addr = alloca i64*, align 8
  %level.addr = alloca float*, align 8
  %mem_reported = alloca i64, align 8
  %mem_used = alloca i64, align 8
  %mem_tofree = alloca i64, align 8
  %overhead = alloca i64, align 8
  store i64* %total, i64** %total.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %total.addr, metadata !763, metadata !DIExpression()), !dbg !764
  store i64* %logical, i64** %logical.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %logical.addr, metadata !765, metadata !DIExpression()), !dbg !766
  store i64* %tofree, i64** %tofree.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %tofree.addr, metadata !767, metadata !DIExpression()), !dbg !768
  store float* %level, float** %level.addr, align 8
  call void @llvm.dbg.declare(metadata float** %level.addr, metadata !769, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.declare(metadata i64* %mem_reported, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata i64* %mem_used, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata i64* %mem_tofree, metadata !775, metadata !DIExpression()), !dbg !776
  %call = call i64 @zmalloc_used_memory(), !dbg !777
  store i64 %call, i64* %mem_reported, align 8, !dbg !778
  %0 = load i64*, i64** %total.addr, align 8, !dbg !779
  %tobool = icmp ne i64* %0, null, !dbg !779
  br i1 %tobool, label %if.then, label %if.end, !dbg !781

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %mem_reported, align 8, !dbg !782
  %2 = load i64*, i64** %total.addr, align 8, !dbg !783
  store i64 %1, i64* %2, align 8, !dbg !784
  br label %if.end, !dbg !785

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !786
  %tobool1 = icmp ne i64 %3, 0, !dbg !788
  br i1 %tobool1, label %if.end6, label %if.then2, !dbg !789

if.then2:                                         ; preds = %if.end
  %4 = load float*, float** %level.addr, align 8, !dbg !790
  %tobool3 = icmp ne float* %4, null, !dbg !790
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !793

if.then4:                                         ; preds = %if.then2
  %5 = load float*, float** %level.addr, align 8, !dbg !794
  store float 0.000000e+00, float* %5, align 4, !dbg !795
  br label %if.end5, !dbg !796

if.end5:                                          ; preds = %if.then4, %if.then2
  store i32 0, i32* %retval, align 4, !dbg !797
  br label %return, !dbg !797

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %mem_reported, align 8, !dbg !798
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !800
  %cmp = icmp ule i64 %6, %7, !dbg !801
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !802

land.lhs.true:                                    ; preds = %if.end6
  %8 = load float*, float** %level.addr, align 8, !dbg !803
  %tobool7 = icmp ne float* %8, null, !dbg !803
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !804

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !805
  br label %return, !dbg !805

if.end9:                                          ; preds = %land.lhs.true, %if.end6
  %9 = load i64, i64* %mem_reported, align 8, !dbg !806
  store i64 %9, i64* %mem_used, align 8, !dbg !807
  call void @llvm.dbg.declare(metadata i64* %overhead, metadata !808, metadata !DIExpression()), !dbg !809
  %call10 = call i64 @freeMemoryGetNotCountedMemory(), !dbg !810
  store i64 %call10, i64* %overhead, align 8, !dbg !809
  %10 = load i64, i64* %mem_used, align 8, !dbg !811
  %11 = load i64, i64* %overhead, align 8, !dbg !812
  %cmp11 = icmp ugt i64 %10, %11, !dbg !813
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !814

cond.true:                                        ; preds = %if.end9
  %12 = load i64, i64* %mem_used, align 8, !dbg !815
  %13 = load i64, i64* %overhead, align 8, !dbg !816
  %sub = sub i64 %12, %13, !dbg !817
  br label %cond.end, !dbg !814

cond.false:                                       ; preds = %if.end9
  br label %cond.end, !dbg !814

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !814
  store i64 %cond, i64* %mem_used, align 8, !dbg !818
  %14 = load float*, float** %level.addr, align 8, !dbg !819
  %tobool12 = icmp ne float* %14, null, !dbg !819
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !821

if.then13:                                        ; preds = %cond.end
  %15 = load i64, i64* %mem_used, align 8, !dbg !822
  %conv = uitofp i64 %15 to float, !dbg !823
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !824
  %conv14 = uitofp i64 %16 to float, !dbg !825
  %div = fdiv float %conv, %conv14, !dbg !826
  %17 = load float*, float** %level.addr, align 8, !dbg !827
  store float %div, float* %17, align 4, !dbg !828
  br label %if.end15, !dbg !829

if.end15:                                         ; preds = %if.then13, %cond.end
  %18 = load i64, i64* %mem_reported, align 8, !dbg !830
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !832
  %cmp16 = icmp ule i64 %18, %19, !dbg !833
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !834

if.then18:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !835
  br label %return, !dbg !835

if.end19:                                         ; preds = %if.end15
  %20 = load i64, i64* %mem_used, align 8, !dbg !836
  %21 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !838
  %cmp20 = icmp ule i64 %20, %21, !dbg !839
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !840

if.then22:                                        ; preds = %if.end19
  store i32 0, i32* %retval, align 4, !dbg !841
  br label %return, !dbg !841

if.end23:                                         ; preds = %if.end19
  %22 = load i64, i64* %mem_used, align 8, !dbg !842
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !843
  %sub24 = sub i64 %22, %23, !dbg !844
  store i64 %sub24, i64* %mem_tofree, align 8, !dbg !845
  %24 = load i64*, i64** %logical.addr, align 8, !dbg !846
  %tobool25 = icmp ne i64* %24, null, !dbg !846
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !848

if.then26:                                        ; preds = %if.end23
  %25 = load i64, i64* %mem_used, align 8, !dbg !849
  %26 = load i64*, i64** %logical.addr, align 8, !dbg !850
  store i64 %25, i64* %26, align 8, !dbg !851
  br label %if.end27, !dbg !852

if.end27:                                         ; preds = %if.then26, %if.end23
  %27 = load i64*, i64** %tofree.addr, align 8, !dbg !853
  %tobool28 = icmp ne i64* %27, null, !dbg !853
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !855

if.then29:                                        ; preds = %if.end27
  %28 = load i64, i64* %mem_tofree, align 8, !dbg !856
  %29 = load i64*, i64** %tofree.addr, align 8, !dbg !857
  store i64 %28, i64* %29, align 8, !dbg !858
  br label %if.end30, !dbg !859

if.end30:                                         ; preds = %if.then29, %if.end27
  store i32 -1, i32* %retval, align 4, !dbg !860
  br label %return, !dbg !860

return:                                           ; preds = %if.end30, %if.then22, %if.then18, %if.then8, %if.end5
  %30 = load i32, i32* %retval, align 4, !dbg !861
  ret i32 %30, !dbg !861
}

declare dso_local i64 @zmalloc_used_memory() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @overMaxmemoryAfterAlloc(i64 %moremem) #0 !dbg !862 {
entry:
  %retval = alloca i32, align 4
  %moremem.addr = alloca i64, align 8
  %mem_used = alloca i64, align 8
  %overhead = alloca i64, align 8
  store i64 %moremem, i64* %moremem.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %moremem.addr, metadata !865, metadata !DIExpression()), !dbg !866
  %0 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !867
  %tobool = icmp ne i64 %0, 0, !dbg !869
  br i1 %tobool, label %if.end, label %if.then, !dbg !870

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !871
  br label %return, !dbg !871

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %mem_used, metadata !872, metadata !DIExpression()), !dbg !873
  %call = call i64 @zmalloc_used_memory(), !dbg !874
  store i64 %call, i64* %mem_used, align 8, !dbg !873
  %1 = load i64, i64* %mem_used, align 8, !dbg !875
  %2 = load i64, i64* %moremem.addr, align 8, !dbg !877
  %add = add i64 %1, %2, !dbg !878
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !879
  %cmp = icmp ule i64 %add, %3, !dbg !880
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !881

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !882
  br label %return, !dbg !882

if.end2:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %overhead, metadata !883, metadata !DIExpression()), !dbg !884
  %call3 = call i64 @freeMemoryGetNotCountedMemory(), !dbg !885
  store i64 %call3, i64* %overhead, align 8, !dbg !884
  %4 = load i64, i64* %mem_used, align 8, !dbg !886
  %5 = load i64, i64* %overhead, align 8, !dbg !887
  %cmp4 = icmp ugt i64 %4, %5, !dbg !888
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !889

cond.true:                                        ; preds = %if.end2
  %6 = load i64, i64* %mem_used, align 8, !dbg !890
  %7 = load i64, i64* %overhead, align 8, !dbg !891
  %sub = sub i64 %6, %7, !dbg !892
  br label %cond.end, !dbg !889

cond.false:                                       ; preds = %if.end2
  br label %cond.end, !dbg !889

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !889
  store i64 %cond, i64* %mem_used, align 8, !dbg !893
  %8 = load i64, i64* %mem_used, align 8, !dbg !894
  %9 = load i64, i64* %moremem.addr, align 8, !dbg !895
  %add5 = add i64 %8, %9, !dbg !896
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 309), align 8, !dbg !897
  %cmp6 = icmp ugt i64 %add5, %10, !dbg !898
  %conv = zext i1 %cmp6 to i32, !dbg !898
  store i32 %conv, i32* %retval, align 4, !dbg !899
  br label %return, !dbg !899

return:                                           ; preds = %cond.end, %if.then1, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !900
  ret i32 %11, !dbg !900
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @startEvictionTimeProc() #0 !dbg !901 {
entry:
  %0 = load i32, i32* @isEvictionProcRunning, align 4, !dbg !902
  %tobool = icmp ne i32 %0, 0, !dbg !902
  br i1 %tobool, label %if.end, label %if.then, !dbg !904

if.then:                                          ; preds = %entry
  store i32 1, i32* @isEvictionProcRunning, align 4, !dbg !905
  %1 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !907
  %call = call i64 @aeCreateTimeEvent(%struct.aeEventLoop* %1, i64 0, i32 (%struct.aeEventLoop*, i64, i8*)* @evictionTimeProc, i8* null, void (%struct.aeEventLoop*, i8*)* null), !dbg !908
  br label %if.end, !dbg !909

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !910
}

declare dso_local i64 @aeCreateTimeEvent(%struct.aeEventLoop*, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, i8*, void (%struct.aeEventLoop*, i8*)*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @evictionTimeProc(%struct.aeEventLoop* %eventLoop, i64 %id, i8* %clientData) #0 !dbg !911 {
entry:
  %retval = alloca i32, align 4
  %eventLoop.addr = alloca %struct.aeEventLoop*, align 8
  %id.addr = alloca i64, align 8
  %clientData.addr = alloca i8*, align 8
  store %struct.aeEventLoop* %eventLoop, %struct.aeEventLoop** %eventLoop.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aeEventLoop** %eventLoop.addr, metadata !972, metadata !DIExpression()), !dbg !973
  store i64 %id, i64* %id.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %id.addr, metadata !974, metadata !DIExpression()), !dbg !975
  store i8* %clientData, i8** %clientData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %clientData.addr, metadata !976, metadata !DIExpression()), !dbg !977
  %0 = load %struct.aeEventLoop*, %struct.aeEventLoop** %eventLoop.addr, align 8, !dbg !978
  %1 = load i64, i64* %id.addr, align 8, !dbg !979
  %2 = load i8*, i8** %clientData.addr, align 8, !dbg !980
  %call = call i32 @performEvictions(), !dbg !981
  %cmp = icmp eq i32 %call, 1, !dbg !983
  br i1 %cmp, label %if.then, label %if.end, !dbg !984

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !985
  br label %return, !dbg !985

if.end:                                           ; preds = %entry
  store i32 0, i32* @isEvictionProcRunning, align 4, !dbg !986
  store i32 -1, i32* %retval, align 4, !dbg !987
  br label %return, !dbg !987

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !988
  ret i32 %3, !dbg !988
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @performEvictions() #0 !dbg !71 {
entry:
  %retval = alloca i32, align 4
  %keys_freed = alloca i32, align 4
  %mem_reported = alloca i64, align 8
  %mem_tofree = alloca i64, align 8
  %mem_freed = alloca i64, align 8
  %latency = alloca i64, align 8
  %eviction_latency = alloca i64, align 8
  %delta = alloca i64, align 8
  %slaves = alloca i32, align 4
  %result = alloca i32, align 4
  %eviction_time_limit_us = alloca i64, align 8
  %evictionTimer = alloca i64, align 8
  %prev_core_propagates = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %bestkey = alloca i8*, align 8
  %bestdbid = alloca i32, align 4
  %db = alloca %struct.redisDb*, align 8
  %dict = alloca %struct.dict*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %pool = alloca %struct.evictionPoolEntry*, align 8
  %total_keys = alloca i64, align 8
  %keys = alloca i64, align 8
  %keyobj = alloca %struct.redisObject*, align 8
  %lazyfree_latency = alloca i64, align 8
  %call = call i32 @isSafeToPerformEvictions(), !dbg !989
  %tobool = icmp ne i32 %call, 0, !dbg !989
  br i1 %tobool, label %if.end, label %if.then, !dbg !991

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !992
  br label %return, !dbg !992

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %keys_freed, metadata !993, metadata !DIExpression()), !dbg !994
  store i32 0, i32* %keys_freed, align 4, !dbg !994
  call void @llvm.dbg.declare(metadata i64* %mem_reported, metadata !995, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.declare(metadata i64* %mem_tofree, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata i64* %mem_freed, metadata !999, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.declare(metadata i64* %latency, metadata !1001, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata i64* %eviction_latency, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i64* %delta, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %slaves, metadata !1008, metadata !DIExpression()), !dbg !1009
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 63), align 8, !dbg !1010
  %len = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 5, !dbg !1010
  %1 = load i64, i64* %len, align 8, !dbg !1010
  %conv = trunc i64 %1 to i32, !dbg !1010
  store i32 %conv, i32* %slaves, align 4, !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %result, metadata !1011, metadata !DIExpression()), !dbg !1012
  store i32 2, i32* %result, align 4, !dbg !1012
  %call1 = call i32 @getMaxmemoryState(i64* %mem_reported, i64* null, i64* %mem_tofree, float* null), !dbg !1013
  %cmp = icmp eq i32 %call1, 0, !dbg !1015
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !1016

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %result, align 4, !dbg !1017
  br label %update_metrics, !dbg !1019

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1020
  %cmp5 = icmp eq i32 %2, 1792, !dbg !1022
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1023

if.then7:                                         ; preds = %if.end4
  store i32 2, i32* %result, align 4, !dbg !1024
  br label %update_metrics, !dbg !1026

if.end8:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i64* %eviction_time_limit_us, metadata !1027, metadata !DIExpression()), !dbg !1028
  %call9 = call i64 @evictionTimeLimitUs(), !dbg !1029
  store i64 %call9, i64* %eviction_time_limit_us, align 8, !dbg !1028
  store i64 0, i64* %mem_freed, align 8, !dbg !1030
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1031
  %tobool10 = icmp ne i64 %3, 0, !dbg !1031
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !1033

if.then11:                                        ; preds = %if.end8
  %call12 = call i64 @mstime(), !dbg !1034
  store i64 %call12, i64* %latency, align 8, !dbg !1034
  br label %if.end13, !dbg !1034

if.else:                                          ; preds = %if.end8
  store i64 0, i64* %latency, align 8, !dbg !1036
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  call void @llvm.dbg.declare(metadata i64* %evictionTimer, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @elapsedStart(i64* %evictionTimer), !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %prev_core_propagates, metadata !1041, metadata !DIExpression()), !dbg !1042
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1043
  store i32 %4, i32* %prev_core_propagates, align 4, !dbg !1042
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 245, i32 1), align 8, !dbg !1044
  %cmp14 = icmp eq i32 %5, 0, !dbg !1044
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !1044

cond.true:                                        ; preds = %if.end13
  br label %cond.end, !dbg !1044

cond.false:                                       ; preds = %if.end13
  call void @_serverAssert(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 575), !dbg !1044
  unreachable, !dbg !1044

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1044

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1045
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 33), align 4, !dbg !1046
  br label %while.cond, !dbg !1047

while.cond:                                       ; preds = %if.end191, %cond.end
  %6 = load i64, i64* %mem_freed, align 8, !dbg !1048
  %7 = load i64, i64* %mem_tofree, align 8, !dbg !1049
  %cmp16 = icmp slt i64 %6, %7, !dbg !1050
  br i1 %cmp16, label %while.body, label %while.end192, !dbg !1047

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1051, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.declare(metadata i32* %k, metadata !1054, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1056, metadata !DIExpression()), !dbg !1057
  call void @llvm.dbg.declare(metadata i8** %bestkey, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i8* null, i8** %bestkey, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata i32* %bestdbid, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db, metadata !1062, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata %struct.dict** %dict, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1111, metadata !DIExpression()), !dbg !1112
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1113
  %and = and i32 %8, 3, !dbg !1115
  %tobool18 = icmp ne i32 %and, 0, !dbg !1115
  br i1 %tobool18, label %if.then21, label %lor.lhs.false, !dbg !1116

lor.lhs.false:                                    ; preds = %while.body
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1117
  %cmp19 = icmp eq i32 %9, 512, !dbg !1118
  br i1 %cmp19, label %if.then21, label %if.else99, !dbg !1119

if.then21:                                        ; preds = %lor.lhs.false, %while.body
  call void @llvm.dbg.declare(metadata %struct.evictionPoolEntry** %pool, metadata !1120, metadata !DIExpression()), !dbg !1122
  %10 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** @EvictionPoolLRU, align 8, !dbg !1123
  store %struct.evictionPoolEntry* %10, %struct.evictionPoolEntry** %pool, align 8, !dbg !1122
  br label %while.cond22, !dbg !1124

while.cond22:                                     ; preds = %for.end98, %if.then21
  %11 = load i8*, i8** %bestkey, align 8, !dbg !1125
  %cmp23 = icmp eq i8* %11, null, !dbg !1126
  br i1 %cmp23, label %while.body25, label %while.end, !dbg !1124

while.body25:                                     ; preds = %while.cond22
  call void @llvm.dbg.declare(metadata i64* %total_keys, metadata !1127, metadata !DIExpression()), !dbg !1129
  store i64 0, i64* %total_keys, align 8, !dbg !1129
  call void @llvm.dbg.declare(metadata i64* %keys, metadata !1130, metadata !DIExpression()), !dbg !1131
  store i32 0, i32* %i, align 4, !dbg !1132
  br label %for.cond, !dbg !1134

for.cond:                                         ; preds = %for.inc, %while.body25
  %12 = load i32, i32* %i, align 4, !dbg !1135
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !1137
  %cmp26 = icmp slt i32 %12, %13, !dbg !1138
  br i1 %cmp26, label %for.body, label %for.end, !dbg !1139

for.body:                                         ; preds = %for.cond
  %14 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !1140
  %15 = load i32, i32* %i, align 4, !dbg !1142
  %idx.ext = sext i32 %15 to i64, !dbg !1143
  %add.ptr = getelementptr inbounds %struct.redisDb, %struct.redisDb* %14, i64 %idx.ext, !dbg !1143
  store %struct.redisDb* %add.ptr, %struct.redisDb** %db, align 8, !dbg !1144
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1145
  %and28 = and i32 %16, 4, !dbg !1146
  %tobool29 = icmp ne i32 %and28, 0, !dbg !1146
  br i1 %tobool29, label %cond.true30, label %cond.false32, !dbg !1147

cond.true30:                                      ; preds = %for.body
  %17 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1148
  %dict31 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %17, i32 0, i32 0, !dbg !1149
  %18 = load %struct.dict*, %struct.dict** %dict31, align 8, !dbg !1149
  br label %cond.end33, !dbg !1147

cond.false32:                                     ; preds = %for.body
  %19 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1150
  %expires = getelementptr inbounds %struct.redisDb, %struct.redisDb* %19, i32 0, i32 1, !dbg !1151
  %20 = load %struct.dict*, %struct.dict** %expires, align 8, !dbg !1151
  br label %cond.end33, !dbg !1147

cond.end33:                                       ; preds = %cond.false32, %cond.true30
  %cond = phi %struct.dict* [ %18, %cond.true30 ], [ %20, %cond.false32 ], !dbg !1147
  store %struct.dict* %cond, %struct.dict** %dict, align 8, !dbg !1152
  %21 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1153
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %21, i32 0, i32 2, !dbg !1153
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1153
  %22 = load i64, i64* %arrayidx, align 8, !dbg !1153
  %23 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1153
  %ht_used34 = getelementptr inbounds %struct.dict, %struct.dict* %23, i32 0, i32 2, !dbg !1153
  %arrayidx35 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used34, i64 0, i64 1, !dbg !1153
  %24 = load i64, i64* %arrayidx35, align 8, !dbg !1153
  %add = add i64 %22, %24, !dbg !1153
  store i64 %add, i64* %keys, align 8, !dbg !1155
  %cmp36 = icmp ne i64 %add, 0, !dbg !1156
  br i1 %cmp36, label %if.then38, label %if.end41, !dbg !1157

if.then38:                                        ; preds = %cond.end33
  %25 = load i32, i32* %i, align 4, !dbg !1158
  %26 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1160
  %27 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1161
  %dict39 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %27, i32 0, i32 0, !dbg !1162
  %28 = load %struct.dict*, %struct.dict** %dict39, align 8, !dbg !1162
  %29 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1163
  call void @evictionPoolPopulate(i32 %25, %struct.dict* %26, %struct.dict* %28, %struct.evictionPoolEntry* %29), !dbg !1164
  %30 = load i64, i64* %keys, align 8, !dbg !1165
  %31 = load i64, i64* %total_keys, align 8, !dbg !1166
  %add40 = add i64 %31, %30, !dbg !1166
  store i64 %add40, i64* %total_keys, align 8, !dbg !1166
  br label %if.end41, !dbg !1167

if.end41:                                         ; preds = %if.then38, %cond.end33
  br label %for.inc, !dbg !1168

for.inc:                                          ; preds = %if.end41
  %32 = load i32, i32* %i, align 4, !dbg !1169
  %inc = add nsw i32 %32, 1, !dbg !1169
  store i32 %inc, i32* %i, align 4, !dbg !1169
  br label %for.cond, !dbg !1170, !llvm.loop !1171

for.end:                                          ; preds = %for.cond
  %33 = load i64, i64* %total_keys, align 8, !dbg !1173
  %tobool42 = icmp ne i64 %33, 0, !dbg !1173
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1175

if.then43:                                        ; preds = %for.end
  br label %while.end, !dbg !1176

if.end44:                                         ; preds = %for.end
  store i32 15, i32* %k, align 4, !dbg !1177
  br label %for.cond45, !dbg !1179

for.cond45:                                       ; preds = %for.inc97, %if.end44
  %34 = load i32, i32* %k, align 4, !dbg !1180
  %cmp46 = icmp sge i32 %34, 0, !dbg !1182
  br i1 %cmp46, label %for.body48, label %for.end98, !dbg !1183

for.body48:                                       ; preds = %for.cond45
  %35 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1184
  %36 = load i32, i32* %k, align 4, !dbg !1187
  %idxprom = sext i32 %36 to i64, !dbg !1184
  %arrayidx49 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %35, i64 %idxprom, !dbg !1184
  %key = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx49, i32 0, i32 1, !dbg !1188
  %37 = load i8*, i8** %key, align 8, !dbg !1188
  %cmp50 = icmp eq i8* %37, null, !dbg !1189
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1190

if.then52:                                        ; preds = %for.body48
  br label %for.inc97, !dbg !1191

if.end53:                                         ; preds = %for.body48
  %38 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1192
  %39 = load i32, i32* %k, align 4, !dbg !1193
  %idxprom54 = sext i32 %39 to i64, !dbg !1192
  %arrayidx55 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %38, i64 %idxprom54, !dbg !1192
  %dbid = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx55, i32 0, i32 3, !dbg !1194
  %40 = load i32, i32* %dbid, align 8, !dbg !1194
  store i32 %40, i32* %bestdbid, align 4, !dbg !1195
  %41 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1196
  %and56 = and i32 %41, 4, !dbg !1198
  %tobool57 = icmp ne i32 %and56, 0, !dbg !1198
  br i1 %tobool57, label %if.then58, label %if.else66, !dbg !1199

if.then58:                                        ; preds = %if.end53
  %42 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !1200
  %43 = load i32, i32* %bestdbid, align 4, !dbg !1202
  %idxprom59 = sext i32 %43 to i64, !dbg !1203
  %arrayidx60 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %42, i64 %idxprom59, !dbg !1203
  %dict61 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %arrayidx60, i32 0, i32 0, !dbg !1204
  %44 = load %struct.dict*, %struct.dict** %dict61, align 8, !dbg !1204
  %45 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1205
  %46 = load i32, i32* %k, align 4, !dbg !1206
  %idxprom62 = sext i32 %46 to i64, !dbg !1205
  %arrayidx63 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %45, i64 %idxprom62, !dbg !1205
  %key64 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx63, i32 0, i32 1, !dbg !1207
  %47 = load i8*, i8** %key64, align 8, !dbg !1207
  %call65 = call %struct.dictEntry* @dictFind(%struct.dict* %44, i8* %47), !dbg !1208
  store %struct.dictEntry* %call65, %struct.dictEntry** %de, align 8, !dbg !1209
  br label %if.end74, !dbg !1210

if.else66:                                        ; preds = %if.end53
  %48 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !1211
  %49 = load i32, i32* %bestdbid, align 4, !dbg !1213
  %idxprom67 = sext i32 %49 to i64, !dbg !1214
  %arrayidx68 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %48, i64 %idxprom67, !dbg !1214
  %expires69 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %arrayidx68, i32 0, i32 1, !dbg !1215
  %50 = load %struct.dict*, %struct.dict** %expires69, align 8, !dbg !1215
  %51 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1216
  %52 = load i32, i32* %k, align 4, !dbg !1217
  %idxprom70 = sext i32 %52 to i64, !dbg !1216
  %arrayidx71 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %51, i64 %idxprom70, !dbg !1216
  %key72 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx71, i32 0, i32 1, !dbg !1218
  %53 = load i8*, i8** %key72, align 8, !dbg !1218
  %call73 = call %struct.dictEntry* @dictFind(%struct.dict* %50, i8* %53), !dbg !1219
  store %struct.dictEntry* %call73, %struct.dictEntry** %de, align 8, !dbg !1220
  br label %if.end74

if.end74:                                         ; preds = %if.else66, %if.then58
  %54 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1221
  %55 = load i32, i32* %k, align 4, !dbg !1223
  %idxprom75 = sext i32 %55 to i64, !dbg !1221
  %arrayidx76 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %54, i64 %idxprom75, !dbg !1221
  %key77 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx76, i32 0, i32 1, !dbg !1224
  %56 = load i8*, i8** %key77, align 8, !dbg !1224
  %57 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1225
  %58 = load i32, i32* %k, align 4, !dbg !1226
  %idxprom78 = sext i32 %58 to i64, !dbg !1225
  %arrayidx79 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %57, i64 %idxprom78, !dbg !1225
  %cached = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx79, i32 0, i32 2, !dbg !1227
  %59 = load i8*, i8** %cached, align 8, !dbg !1227
  %cmp80 = icmp ne i8* %56, %59, !dbg !1228
  br i1 %cmp80, label %if.then82, label %if.end86, !dbg !1229

if.then82:                                        ; preds = %if.end74
  %60 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1230
  %61 = load i32, i32* %k, align 4, !dbg !1231
  %idxprom83 = sext i32 %61 to i64, !dbg !1230
  %arrayidx84 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %60, i64 %idxprom83, !dbg !1230
  %key85 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx84, i32 0, i32 1, !dbg !1232
  %62 = load i8*, i8** %key85, align 8, !dbg !1232
  call void @sdsfree(i8* %62), !dbg !1233
  br label %if.end86, !dbg !1233

if.end86:                                         ; preds = %if.then82, %if.end74
  %63 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1234
  %64 = load i32, i32* %k, align 4, !dbg !1235
  %idxprom87 = sext i32 %64 to i64, !dbg !1234
  %arrayidx88 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %63, i64 %idxprom87, !dbg !1234
  %key89 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx88, i32 0, i32 1, !dbg !1236
  store i8* null, i8** %key89, align 8, !dbg !1237
  %65 = load %struct.evictionPoolEntry*, %struct.evictionPoolEntry** %pool, align 8, !dbg !1238
  %66 = load i32, i32* %k, align 4, !dbg !1239
  %idxprom90 = sext i32 %66 to i64, !dbg !1238
  %arrayidx91 = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %65, i64 %idxprom90, !dbg !1238
  %idle = getelementptr inbounds %struct.evictionPoolEntry, %struct.evictionPoolEntry* %arrayidx91, i32 0, i32 0, !dbg !1240
  store i64 0, i64* %idle, align 8, !dbg !1241
  %67 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1242
  %tobool92 = icmp ne %struct.dictEntry* %67, null, !dbg !1242
  br i1 %tobool92, label %if.then93, label %if.else95, !dbg !1244

if.then93:                                        ; preds = %if.end86
  %68 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1245
  %key94 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %68, i32 0, i32 0, !dbg !1245
  %69 = load i8*, i8** %key94, align 8, !dbg !1245
  store i8* %69, i8** %bestkey, align 8, !dbg !1247
  br label %for.end98, !dbg !1248

if.else95:                                        ; preds = %if.end86
  br label %if.end96

if.end96:                                         ; preds = %if.else95
  br label %for.inc97, !dbg !1249

for.inc97:                                        ; preds = %if.end96, %if.then52
  %70 = load i32, i32* %k, align 4, !dbg !1250
  %dec = add nsw i32 %70, -1, !dbg !1250
  store i32 %dec, i32* %k, align 4, !dbg !1250
  br label %for.cond45, !dbg !1251, !llvm.loop !1252

for.end98:                                        ; preds = %if.then93, %for.cond45
  br label %while.cond22, !dbg !1124, !llvm.loop !1254

while.end:                                        ; preds = %if.then43, %while.cond22
  br label %if.end136, !dbg !1256

if.else99:                                        ; preds = %lor.lhs.false
  %71 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1257
  %cmp100 = icmp eq i32 %71, 1540, !dbg !1259
  br i1 %cmp100, label %if.then105, label %lor.lhs.false102, !dbg !1260

lor.lhs.false102:                                 ; preds = %if.else99
  %72 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1261
  %cmp103 = icmp eq i32 %72, 768, !dbg !1262
  br i1 %cmp103, label %if.then105, label %if.end135, !dbg !1263

if.then105:                                       ; preds = %lor.lhs.false102, %if.else99
  store i32 0, i32* %i, align 4, !dbg !1264
  br label %for.cond106, !dbg !1267

for.cond106:                                      ; preds = %for.inc132, %if.then105
  %73 = load i32, i32* %i, align 4, !dbg !1268
  %74 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !1270
  %cmp107 = icmp slt i32 %73, %74, !dbg !1271
  br i1 %cmp107, label %for.body109, label %for.end134, !dbg !1272

for.body109:                                      ; preds = %for.cond106
  %75 = load i32, i32* @performEvictions.next_db, align 4, !dbg !1273
  %inc110 = add i32 %75, 1, !dbg !1273
  store i32 %inc110, i32* @performEvictions.next_db, align 4, !dbg !1273
  %76 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 170), align 8, !dbg !1275
  %rem = urem i32 %inc110, %76, !dbg !1276
  store i32 %rem, i32* %j, align 4, !dbg !1277
  %77 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !1278
  %78 = load i32, i32* %j, align 4, !dbg !1279
  %idx.ext111 = sext i32 %78 to i64, !dbg !1280
  %add.ptr112 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %77, i64 %idx.ext111, !dbg !1280
  store %struct.redisDb* %add.ptr112, %struct.redisDb** %db, align 8, !dbg !1281
  %79 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 311), align 8, !dbg !1282
  %cmp113 = icmp eq i32 %79, 1540, !dbg !1283
  br i1 %cmp113, label %cond.true115, label %cond.false117, !dbg !1284

cond.true115:                                     ; preds = %for.body109
  %80 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1285
  %dict116 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %80, i32 0, i32 0, !dbg !1286
  %81 = load %struct.dict*, %struct.dict** %dict116, align 8, !dbg !1286
  br label %cond.end119, !dbg !1284

cond.false117:                                    ; preds = %for.body109
  %82 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1287
  %expires118 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %82, i32 0, i32 1, !dbg !1288
  %83 = load %struct.dict*, %struct.dict** %expires118, align 8, !dbg !1288
  br label %cond.end119, !dbg !1284

cond.end119:                                      ; preds = %cond.false117, %cond.true115
  %cond120 = phi %struct.dict* [ %81, %cond.true115 ], [ %83, %cond.false117 ], !dbg !1284
  store %struct.dict* %cond120, %struct.dict** %dict, align 8, !dbg !1289
  %84 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1290
  %ht_used121 = getelementptr inbounds %struct.dict, %struct.dict* %84, i32 0, i32 2, !dbg !1290
  %arrayidx122 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used121, i64 0, i64 0, !dbg !1290
  %85 = load i64, i64* %arrayidx122, align 8, !dbg !1290
  %86 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1290
  %ht_used123 = getelementptr inbounds %struct.dict, %struct.dict* %86, i32 0, i32 2, !dbg !1290
  %arrayidx124 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used123, i64 0, i64 1, !dbg !1290
  %87 = load i64, i64* %arrayidx124, align 8, !dbg !1290
  %add125 = add i64 %85, %87, !dbg !1290
  %cmp126 = icmp ne i64 %add125, 0, !dbg !1292
  br i1 %cmp126, label %if.then128, label %if.end131, !dbg !1293

if.then128:                                       ; preds = %cond.end119
  %88 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !1294
  %call129 = call %struct.dictEntry* @dictGetRandomKey(%struct.dict* %88), !dbg !1296
  store %struct.dictEntry* %call129, %struct.dictEntry** %de, align 8, !dbg !1297
  %89 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1298
  %key130 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %89, i32 0, i32 0, !dbg !1298
  %90 = load i8*, i8** %key130, align 8, !dbg !1298
  store i8* %90, i8** %bestkey, align 8, !dbg !1299
  %91 = load i32, i32* %j, align 4, !dbg !1300
  store i32 %91, i32* %bestdbid, align 4, !dbg !1301
  br label %for.end134, !dbg !1302

if.end131:                                        ; preds = %cond.end119
  br label %for.inc132, !dbg !1303

for.inc132:                                       ; preds = %if.end131
  %92 = load i32, i32* %i, align 4, !dbg !1304
  %inc133 = add nsw i32 %92, 1, !dbg !1304
  store i32 %inc133, i32* %i, align 4, !dbg !1304
  br label %for.cond106, !dbg !1305, !llvm.loop !1306

for.end134:                                       ; preds = %if.then128, %for.cond106
  br label %if.end135, !dbg !1308

if.end135:                                        ; preds = %for.end134, %lor.lhs.false102
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %while.end
  %93 = load i8*, i8** %bestkey, align 8, !dbg !1309
  %tobool137 = icmp ne i8* %93, null, !dbg !1309
  br i1 %tobool137, label %if.then138, label %if.else190, !dbg !1311

if.then138:                                       ; preds = %if.end136
  %94 = load %struct.redisDb*, %struct.redisDb** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 10), align 8, !dbg !1312
  %95 = load i32, i32* %bestdbid, align 4, !dbg !1314
  %idx.ext139 = sext i32 %95 to i64, !dbg !1315
  %add.ptr140 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %94, i64 %idx.ext139, !dbg !1315
  store %struct.redisDb* %add.ptr140, %struct.redisDb** %db, align 8, !dbg !1316
  call void @llvm.dbg.declare(metadata %struct.redisObject** %keyobj, metadata !1317, metadata !DIExpression()), !dbg !1318
  %96 = load i8*, i8** %bestkey, align 8, !dbg !1319
  %97 = load i8*, i8** %bestkey, align 8, !dbg !1320
  %call141 = call i64 @sdslen(i8* %97), !dbg !1321
  %call142 = call %struct.redisObject* @createStringObject(i8* %96, i64 %call141), !dbg !1322
  store %struct.redisObject* %call142, %struct.redisObject** %keyobj, align 8, !dbg !1318
  %call143 = call i64 @zmalloc_used_memory(), !dbg !1323
  store i64 %call143, i64* %delta, align 8, !dbg !1324
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1325
  %tobool144 = icmp ne i64 %98, 0, !dbg !1325
  br i1 %tobool144, label %if.then145, label %if.else147, !dbg !1327

if.then145:                                       ; preds = %if.then138
  %call146 = call i64 @mstime(), !dbg !1328
  store i64 %call146, i64* %eviction_latency, align 8, !dbg !1328
  br label %if.end148, !dbg !1328

if.else147:                                       ; preds = %if.then138
  store i64 0, i64* %eviction_latency, align 8, !dbg !1330
  br label %if.end148

if.end148:                                        ; preds = %if.else147, %if.then145
  %99 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 377), align 8, !dbg !1332
  %tobool149 = icmp ne i32 %99, 0, !dbg !1334
  br i1 %tobool149, label %if.then150, label %if.else152, !dbg !1335

if.then150:                                       ; preds = %if.end148
  %100 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1336
  %101 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1337
  %call151 = call i32 @dbAsyncDelete(%struct.redisDb* %100, %struct.redisObject* %101), !dbg !1338
  br label %if.end154, !dbg !1338

if.else152:                                       ; preds = %if.end148
  %102 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1339
  %103 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1340
  %call153 = call i32 @dbSyncDelete(%struct.redisDb* %102, %struct.redisObject* %103), !dbg !1341
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then150
  %104 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1342
  %tobool155 = icmp ne i64 %104, 0, !dbg !1342
  br i1 %tobool155, label %if.then156, label %if.end158, !dbg !1344

if.then156:                                       ; preds = %if.end154
  %call157 = call i64 @mstime(), !dbg !1345
  %105 = load i64, i64* %eviction_latency, align 8, !dbg !1345
  %sub = sub nsw i64 %call157, %105, !dbg !1345
  store i64 %sub, i64* %eviction_latency, align 8, !dbg !1345
  br label %if.end158, !dbg !1345

if.end158:                                        ; preds = %if.then156, %if.end154
  %106 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1347
  %tobool159 = icmp ne i64 %106, 0, !dbg !1347
  br i1 %tobool159, label %land.lhs.true, label %if.end163, !dbg !1347

land.lhs.true:                                    ; preds = %if.end158
  %107 = load i64, i64* %eviction_latency, align 8, !dbg !1347
  %108 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1347
  %cmp160 = icmp sge i64 %107, %108, !dbg !1347
  br i1 %cmp160, label %if.then162, label %if.end163, !dbg !1349

if.then162:                                       ; preds = %land.lhs.true
  %109 = load i64, i64* %eviction_latency, align 8, !dbg !1347
  call void @latencyAddSample(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %109), !dbg !1347
  br label %if.end163, !dbg !1347

if.end163:                                        ; preds = %if.then162, %land.lhs.true, %if.end158
  %call164 = call i64 @zmalloc_used_memory(), !dbg !1350
  %110 = load i64, i64* %delta, align 8, !dbg !1351
  %sub165 = sub nsw i64 %110, %call164, !dbg !1351
  store i64 %sub165, i64* %delta, align 8, !dbg !1351
  %111 = load i64, i64* %delta, align 8, !dbg !1352
  %112 = load i64, i64* %mem_freed, align 8, !dbg !1353
  %add166 = add nsw i64 %112, %111, !dbg !1353
  store i64 %add166, i64* %mem_freed, align 8, !dbg !1353
  %113 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 100), align 8, !dbg !1354
  %inc167 = add nsw i64 %113, 1, !dbg !1354
  store i64 %inc167, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 100), align 8, !dbg !1354
  %114 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1355
  %115 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1356
  call void @signalModifiedKey(%struct.client* null, %struct.redisDb* %114, %struct.redisObject* %115), !dbg !1357
  %116 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1358
  %117 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1359
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %117, i32 0, i32 5, !dbg !1360
  %118 = load i32, i32* %id, align 8, !dbg !1360
  call void @notifyKeyspaceEvent(i32 512, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.redisObject* %116, i32 %118), !dbg !1361
  %119 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1362
  %120 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1363
  %121 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 377), align 8, !dbg !1364
  call void @propagateDeletion(%struct.redisDb* %119, %struct.redisObject* %120, i32 %121), !dbg !1365
  %122 = load %struct.redisObject*, %struct.redisObject** %keyobj, align 8, !dbg !1366
  call void @decrRefCount(%struct.redisObject* %122), !dbg !1367
  %123 = load i32, i32* %keys_freed, align 4, !dbg !1368
  %inc168 = add nsw i32 %123, 1, !dbg !1368
  store i32 %inc168, i32* %keys_freed, align 4, !dbg !1368
  %124 = load i32, i32* %keys_freed, align 4, !dbg !1369
  %rem169 = srem i32 %124, 16, !dbg !1371
  %cmp170 = icmp eq i32 %rem169, 0, !dbg !1372
  br i1 %cmp170, label %if.then172, label %if.end189, !dbg !1373

if.then172:                                       ; preds = %if.end163
  %125 = load i32, i32* %slaves, align 4, !dbg !1374
  %tobool173 = icmp ne i32 %125, 0, !dbg !1374
  br i1 %tobool173, label %if.then174, label %if.end175, !dbg !1377

if.then174:                                       ; preds = %if.then172
  call void @flushSlavesOutputBuffers(), !dbg !1378
  br label %if.end175, !dbg !1378

if.end175:                                        ; preds = %if.then174, %if.then172
  %126 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 377), align 8, !dbg !1379
  %tobool176 = icmp ne i32 %126, 0, !dbg !1381
  br i1 %tobool176, label %if.then177, label %if.end183, !dbg !1382

if.then177:                                       ; preds = %if.end175
  %call178 = call i32 @getMaxmemoryState(i64* null, i64* null, i64* null, float* null), !dbg !1383
  %cmp179 = icmp eq i32 %call178, 0, !dbg !1386
  br i1 %cmp179, label %if.then181, label %if.end182, !dbg !1387

if.then181:                                       ; preds = %if.then177
  br label %while.end192, !dbg !1388

if.end182:                                        ; preds = %if.then177
  br label %if.end183, !dbg !1390

if.end183:                                        ; preds = %if.end182, %if.end175
  %127 = load i64, i64* %evictionTimer, align 8, !dbg !1391
  %call184 = call i64 @elapsedUs(i64 %127), !dbg !1393
  %128 = load i64, i64* %eviction_time_limit_us, align 8, !dbg !1394
  %cmp185 = icmp ugt i64 %call184, %128, !dbg !1395
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !1396

if.then187:                                       ; preds = %if.end183
  call void @startEvictionTimeProc(), !dbg !1397
  br label %while.end192, !dbg !1399

if.end188:                                        ; preds = %if.end183
  br label %if.end189, !dbg !1400

if.end189:                                        ; preds = %if.end188, %if.end163
  br label %if.end191, !dbg !1401

if.else190:                                       ; preds = %if.end136
  br label %cant_free, !dbg !1402

if.end191:                                        ; preds = %if.end189
  br label %while.cond, !dbg !1047, !llvm.loop !1404

while.end192:                                     ; preds = %if.then187, %if.then181, %while.cond
  %129 = load i32, i32* @isEvictionProcRunning, align 4, !dbg !1406
  %tobool193 = icmp ne i32 %129, 0, !dbg !1407
  %130 = zext i1 %tobool193 to i64, !dbg !1407
  %cond194 = select i1 %tobool193, i32 1, i32 0, !dbg !1407
  store i32 %cond194, i32* %result, align 4, !dbg !1408
  br label %cant_free, !dbg !1409

cant_free:                                        ; preds = %while.end192, %if.else190
  call void @llvm.dbg.label(metadata !1410), !dbg !1411
  %131 = load i32, i32* %result, align 4, !dbg !1412
  %cmp195 = icmp eq i32 %131, 2, !dbg !1414
  br i1 %cmp195, label %if.then197, label %if.end235, !dbg !1415

if.then197:                                       ; preds = %cant_free
  call void @llvm.dbg.declare(metadata i64* %lazyfree_latency, metadata !1416, metadata !DIExpression()), !dbg !1418
  %132 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1419
  %tobool198 = icmp ne i64 %132, 0, !dbg !1419
  br i1 %tobool198, label %if.then199, label %if.else201, !dbg !1421

if.then199:                                       ; preds = %if.then197
  %call200 = call i64 @mstime(), !dbg !1422
  store i64 %call200, i64* %lazyfree_latency, align 8, !dbg !1422
  br label %if.end202, !dbg !1422

if.else201:                                       ; preds = %if.then197
  store i64 0, i64* %lazyfree_latency, align 8, !dbg !1424
  br label %if.end202

if.end202:                                        ; preds = %if.else201, %if.then199
  br label %while.cond203, !dbg !1426

while.cond203:                                    ; preds = %cond.end219, %if.end202
  %call204 = call i64 @bioPendingJobsOfType(i32 2), !dbg !1427
  %tobool205 = icmp ne i64 %call204, 0, !dbg !1427
  br i1 %tobool205, label %land.rhs, label %land.end, !dbg !1428

land.rhs:                                         ; preds = %while.cond203
  %133 = load i64, i64* %evictionTimer, align 8, !dbg !1429
  %call206 = call i64 @elapsedUs(i64 %133), !dbg !1430
  %134 = load i64, i64* %eviction_time_limit_us, align 8, !dbg !1431
  %cmp207 = icmp ult i64 %call206, %134, !dbg !1432
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond203
  %135 = phi i1 [ false, %while.cond203 ], [ %cmp207, %land.rhs ], !dbg !1433
  br i1 %135, label %while.body209, label %while.end223, !dbg !1426

while.body209:                                    ; preds = %land.end
  %call210 = call i32 @getMaxmemoryState(i64* null, i64* null, i64* null, float* null), !dbg !1434
  %cmp211 = icmp eq i32 %call210, 0, !dbg !1437
  br i1 %cmp211, label %if.then213, label %if.end214, !dbg !1438

if.then213:                                       ; preds = %while.body209
  store i32 0, i32* %result, align 4, !dbg !1439
  br label %while.end223, !dbg !1441

if.end214:                                        ; preds = %while.body209
  %136 = load i64, i64* %eviction_time_limit_us, align 8, !dbg !1442
  %cmp215 = icmp ult i64 %136, 1000, !dbg !1443
  br i1 %cmp215, label %cond.true217, label %cond.false218, !dbg !1442

cond.true217:                                     ; preds = %if.end214
  %137 = load i64, i64* %eviction_time_limit_us, align 8, !dbg !1444
  br label %cond.end219, !dbg !1442

cond.false218:                                    ; preds = %if.end214
  br label %cond.end219, !dbg !1442

cond.end219:                                      ; preds = %cond.false218, %cond.true217
  %cond220 = phi i64 [ %137, %cond.true217 ], [ 1000, %cond.false218 ], !dbg !1442
  %conv221 = trunc i64 %cond220 to i32, !dbg !1442
  %call222 = call i32 @usleep(i32 %conv221), !dbg !1445
  br label %while.cond203, !dbg !1426, !llvm.loop !1446

while.end223:                                     ; preds = %if.then213, %land.end
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1448
  %tobool224 = icmp ne i64 %138, 0, !dbg !1448
  br i1 %tobool224, label %if.then225, label %if.end228, !dbg !1450

if.then225:                                       ; preds = %while.end223
  %call226 = call i64 @mstime(), !dbg !1451
  %139 = load i64, i64* %lazyfree_latency, align 8, !dbg !1451
  %sub227 = sub nsw i64 %call226, %139, !dbg !1451
  store i64 %sub227, i64* %lazyfree_latency, align 8, !dbg !1451
  br label %if.end228, !dbg !1451

if.end228:                                        ; preds = %if.then225, %while.end223
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1453
  %tobool229 = icmp ne i64 %140, 0, !dbg !1453
  br i1 %tobool229, label %land.lhs.true230, label %if.end234, !dbg !1453

land.lhs.true230:                                 ; preds = %if.end228
  %141 = load i64, i64* %lazyfree_latency, align 8, !dbg !1453
  %142 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1453
  %cmp231 = icmp sge i64 %141, %142, !dbg !1453
  br i1 %cmp231, label %if.then233, label %if.end234, !dbg !1455

if.then233:                                       ; preds = %land.lhs.true230
  %143 = load i64, i64* %lazyfree_latency, align 8, !dbg !1453
  call void @latencyAddSample(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %143), !dbg !1453
  br label %if.end234, !dbg !1453

if.end234:                                        ; preds = %if.then233, %land.lhs.true230, %if.end228
  br label %if.end235, !dbg !1456

if.end235:                                        ; preds = %if.end234, %cant_free
  %144 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1457
  %tobool236 = icmp ne i32 %144, 0, !dbg !1457
  br i1 %tobool236, label %cond.true237, label %cond.false238, !dbg !1457

cond.true237:                                     ; preds = %if.end235
  br label %cond.end240, !dbg !1457

cond.false238:                                    ; preds = %if.end235
  call void @_serverAssert(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 749), !dbg !1457
  unreachable, !dbg !1457

unreachable.cont239:                              ; No predecessors!
  br label %cond.end240, !dbg !1457

cond.end240:                                      ; preds = %unreachable.cont239, %cond.true237
  call void (...) @propagatePendingCommands(), !dbg !1458
  %145 = load i32, i32* %prev_core_propagates, align 4, !dbg !1459
  store i32 %145, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 32), align 8, !dbg !1460
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 33), align 4, !dbg !1461
  %146 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1462
  %tobool241 = icmp ne i64 %146, 0, !dbg !1462
  br i1 %tobool241, label %if.then242, label %if.end245, !dbg !1464

if.then242:                                       ; preds = %cond.end240
  %call243 = call i64 @mstime(), !dbg !1465
  %147 = load i64, i64* %latency, align 8, !dbg !1465
  %sub244 = sub nsw i64 %call243, %147, !dbg !1465
  store i64 %sub244, i64* %latency, align 8, !dbg !1465
  br label %if.end245, !dbg !1465

if.end245:                                        ; preds = %if.then242, %cond.end240
  %148 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1467
  %tobool246 = icmp ne i64 %148, 0, !dbg !1467
  br i1 %tobool246, label %land.lhs.true247, label %if.end251, !dbg !1467

land.lhs.true247:                                 ; preds = %if.end245
  %149 = load i64, i64* %latency, align 8, !dbg !1467
  %150 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 382), align 8, !dbg !1467
  %cmp248 = icmp sge i64 %149, %150, !dbg !1467
  br i1 %cmp248, label %if.then250, label %if.end251, !dbg !1469

if.then250:                                       ; preds = %land.lhs.true247
  %151 = load i64, i64* %latency, align 8, !dbg !1467
  call void @latencyAddSample(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %151), !dbg !1467
  br label %if.end251, !dbg !1467

if.end251:                                        ; preds = %if.then250, %land.lhs.true247, %if.end245
  br label %update_metrics, !dbg !1467

update_metrics:                                   ; preds = %if.end251, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !1470), !dbg !1471
  %152 = load i32, i32* %result, align 4, !dbg !1472
  %cmp252 = icmp eq i32 %152, 1, !dbg !1474
  br i1 %cmp252, label %if.then257, label %lor.lhs.false254, !dbg !1475

lor.lhs.false254:                                 ; preds = %update_metrics
  %153 = load i32, i32* %result, align 4, !dbg !1476
  %cmp255 = icmp eq i32 %153, 2, !dbg !1477
  br i1 %cmp255, label %if.then257, label %if.else262, !dbg !1478

if.then257:                                       ; preds = %lor.lhs.false254, %update_metrics
  %154 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 103), align 8, !dbg !1479
  %cmp258 = icmp eq i64 %154, 0, !dbg !1482
  br i1 %cmp258, label %if.then260, label %if.end261, !dbg !1483

if.then260:                                       ; preds = %if.then257
  call void @elapsedStart(i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 103)), !dbg !1484
  br label %if.end261, !dbg !1484

if.end261:                                        ; preds = %if.then260, %if.then257
  br label %if.end273, !dbg !1485

if.else262:                                       ; preds = %lor.lhs.false254
  %155 = load i32, i32* %result, align 4, !dbg !1486
  %cmp263 = icmp eq i32 %155, 0, !dbg !1488
  br i1 %cmp263, label %if.then265, label %if.end272, !dbg !1489

if.then265:                                       ; preds = %if.else262
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 103), align 8, !dbg !1490
  %cmp266 = icmp ne i64 %156, 0, !dbg !1493
  br i1 %cmp266, label %if.then268, label %if.end271, !dbg !1494

if.then268:                                       ; preds = %if.then265
  %157 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 103), align 8, !dbg !1495
  %call269 = call i64 @elapsedUs(i64 %157), !dbg !1497
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 102), align 8, !dbg !1498
  %add270 = add i64 %158, %call269, !dbg !1498
  store i64 %add270, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 102), align 8, !dbg !1498
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 103), align 8, !dbg !1499
  br label %if.end271, !dbg !1500

if.end271:                                        ; preds = %if.then268, %if.then265
  br label %if.end272, !dbg !1501

if.end272:                                        ; preds = %if.end271, %if.else262
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end261
  %159 = load i32, i32* %result, align 4, !dbg !1502
  store i32 %159, i32* %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

return:                                           ; preds = %if.end273, %if.then
  %160 = load i32, i32* %retval, align 4, !dbg !1504
  ret i32 %160, !dbg !1504
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @isSafeToPerformEvictions() #0 !dbg !1505 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 (...) @isInsideYieldingLongCommand(), !dbg !1506
  %tobool = icmp ne i32 %call, 0, !dbg !1506
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !1508

lor.lhs.false:                                    ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 86), align 4, !dbg !1509
  %tobool1 = icmp ne i32 %0, 0, !dbg !1510
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1511

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !1512
  br label %return, !dbg !1512

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 278), align 8, !dbg !1513
  %tobool2 = icmp ne i8* %1, null, !dbg !1515
  br i1 %tobool2, label %land.lhs.true, label %if.end5, !dbg !1516

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 294), align 8, !dbg !1517
  %tobool3 = icmp ne i32 %2, 0, !dbg !1518
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1519

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1520
  br label %return, !dbg !1520

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %call6 = call i32 @checkClientPauseTimeoutAndReturnIfPaused(), !dbg !1521
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1521
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1523

if.then8:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !1524
  br label %return, !dbg !1524

if.end9:                                          ; preds = %if.end5
  store i32 1, i32* %retval, align 4, !dbg !1525
  br label %return, !dbg !1525

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !1526
  ret i32 %3, !dbg !1526
}

; Function Attrs: noinline nounwind uwtable
define internal void @elapsedStart(i64* %start_time) #0 !dbg !1527 {
entry:
  %start_time.addr = alloca i64*, align 8
  store i64* %start_time, i64** %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %start_time.addr, metadata !1531, metadata !DIExpression()), !dbg !1532
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1533
  %call = call i64 %0(), !dbg !1533
  %1 = load i64*, i64** %start_time.addr, align 8, !dbg !1534
  store i64 %call, i64* %1, align 8, !dbg !1535
  ret void, !dbg !1536
}

declare dso_local void @_serverAssert(i8*, i8*, i32) #1

declare dso_local %struct.dictEntry* @dictGetRandomKey(%struct.dict*) #1

declare dso_local %struct.redisObject* @createStringObject(i8*, i64) #1

declare dso_local i32 @dbAsyncDelete(%struct.redisDb*, %struct.redisObject*) #1

declare dso_local i32 @dbSyncDelete(%struct.redisDb*, %struct.redisObject*) #1

declare dso_local void @latencyAddSample(i8*, i64) #1

declare dso_local void @signalModifiedKey(%struct.client*, %struct.redisDb*, %struct.redisObject*) #1

declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) #1

declare dso_local void @propagateDeletion(%struct.redisDb*, %struct.redisObject*, i32) #1

declare dso_local void @decrRefCount(%struct.redisObject*) #1

declare dso_local void @flushSlavesOutputBuffers() #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedUs(i64 %start_time) #0 !dbg !1537 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !1540, metadata !DIExpression()), !dbg !1541
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1542
  %call = call i64 %0(), !dbg !1542
  %1 = load i64, i64* %start_time.addr, align 8, !dbg !1543
  %sub = sub i64 %call, %1, !dbg !1544
  ret i64 %sub, !dbg !1545
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

declare dso_local i64 @bioPendingJobsOfType(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local void @propagatePendingCommands(...) #1

declare dso_local i32 @isInsideYieldingLongCommand(...) #1

declare dso_local i32 @checkClientPauseTimeoutAndReturnIfPaused() #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @evictionTimeLimitUs() #0 !dbg !1546 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1547
  %cmp = icmp sge i32 %0, 0, !dbg !1547
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1547

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1547

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 500), !dbg !1547
  unreachable, !dbg !1547

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1547

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1548
  %cmp1 = icmp sle i32 %1, 100, !dbg !1548
  br i1 %cmp1, label %cond.true2, label %cond.false3, !dbg !1548

cond.true2:                                       ; preds = %cond.end
  br label %cond.end5, !dbg !1548

cond.false3:                                      ; preds = %cond.end
  call void @_serverAssert(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 501), !dbg !1548
  unreachable, !dbg !1548

unreachable.cont4:                                ; No predecessors!
  br label %cond.end5, !dbg !1548

cond.end5:                                        ; preds = %unreachable.cont4, %cond.true2
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1549
  %cmp6 = icmp sle i32 %2, 10, !dbg !1551
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1552

if.then:                                          ; preds = %cond.end5
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1553
  %conv = sext i32 %3 to i64, !dbg !1555
  %mul = mul i64 50, %conv, !dbg !1556
  store i64 %mul, i64* %retval, align 8, !dbg !1557
  br label %return, !dbg !1557

if.end:                                           ; preds = %cond.end5
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1558
  %cmp7 = icmp slt i32 %4, 100, !dbg !1560
  br i1 %cmp7, label %if.then9, label %if.end13, !dbg !1561

if.then9:                                         ; preds = %if.end
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 313), align 8, !dbg !1562
  %conv10 = sitofp i32 %5 to double, !dbg !1564
  %sub = fsub double %conv10, 1.000000e+01, !dbg !1565
  %call = call double @pow(double 1.150000e+00, double %sub) #6, !dbg !1566
  %mul11 = fmul double 5.000000e+02, %call, !dbg !1567
  %conv12 = fptoui double %mul11 to i64, !dbg !1568
  store i64 %conv12, i64* %retval, align 8, !dbg !1569
  br label %return, !dbg !1569

if.end13:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !1570
  br label %return, !dbg !1570

return:                                           ; preds = %if.end13, %if.then9, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !1571
  ret i64 %6, !dbg !1571
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EvictionPoolLRU", scope: !2, file: !3, line: 63, type: !78, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !68, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "evict.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stdatomic.h", directory: "")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "memory_order_relaxed", value: 0)
!10 = !DIEnumerator(name: "memory_order_consume", value: 1)
!11 = !DIEnumerator(name: "memory_order_acquire", value: 2)
!12 = !DIEnumerator(name: "memory_order_release", value: 3)
!13 = !DIEnumerator(name: "memory_order_acq_rel", value: 4)
!14 = !DIEnumerator(name: "memory_order_seq_cst", value: 5)
!15 = !{!16, !17, !18, !19, !20, !21, !38, !48, !57, !67, !63}
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !23, line: 51, size: 24, elements: !24)
!23 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!24 = !{!25, !31, !32, !33}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !22, file: !23, line: 52, baseType: !26, size: 8)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !22, file: !23, line: 53, baseType: !26, size: 8, offset: 8)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !23, line: 54, baseType: !30, size: 8, offset: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !22, file: !23, line: 55, baseType: !34, offset: 24)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !36)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{!37}
!37 = !DISubrange(count: -1)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !23, line: 57, size: 40, elements: !40)
!40 = !{!41, !45, !46, !47}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !39, file: !23, line: 58, baseType: !42, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 25, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !39, file: !23, line: 59, baseType: !42, size: 16, offset: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !23, line: 60, baseType: !30, size: 8, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !39, file: !23, line: 61, baseType: !34, offset: 40)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !23, line: 63, size: 72, elements: !50)
!50 = !{!51, !54, !55, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !49, file: !23, line: 64, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !7)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !49, file: !23, line: 65, baseType: !52, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !23, line: 66, baseType: !30, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !49, file: !23, line: 67, baseType: !34, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !23, line: 69, size: 136, elements: !59)
!59 = !{!60, !64, !65, !66}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !58, file: !23, line: 70, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !27, line: 27, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 45, baseType: !63)
!63 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !58, file: !23, line: 71, baseType: !61, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !23, line: 72, baseType: !30, size: 8, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !58, file: !23, line: 73, baseType: !34, offset: 136)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!68 = !{!69, !0, !76}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "next_db", scope: !71, file: !3, line: 581, type: !7, isLocal: true, isDefinition: true)
!71 = distinct !DISubprogram(name: "performEvictions", scope: !3, file: !3, line: 540, type: !72, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!72 = !DISubroutineType(types: !73)
!73 = !{!74}
!74 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!75 = !{}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "isEvictionProcRunning", scope: !2, file: !3, line: 454, type: !74, isLocal: true, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evictionPoolEntry", file: !3, line: 56, size: 256, elements: !80)
!80 = !{!81, !83, !86, !87}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !79, file: !3, line: 57, baseType: !82, size: 64)
!82 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !79, file: !3, line: 58, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !23, line: 43, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !79, file: !3, line: 59, baseType: !84, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dbid", scope: !79, file: !3, line: 60, baseType: !74, size: 32, offset: 192)
!88 = !{i32 7, !"Dwarf Version", i32 4}
!89 = !{i32 2, !"Debug Info Version", i32 3}
!90 = !{i32 1, !"wchar_size", i32 4}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!94 = distinct !DISubprogram(name: "getLRUClock", scope: !3, file: !3, line: 72, type: !95, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!95 = !DISubroutineType(types: !96)
!96 = !{!7}
!97 = !DILocation(line: 73, column: 13, scope: !94)
!98 = !DILocation(line: 73, column: 21, scope: !94)
!99 = !DILocation(line: 73, column: 44, scope: !94)
!100 = !DILocation(line: 73, column: 12, scope: !94)
!101 = !DILocation(line: 73, column: 5, scope: !94)
!102 = distinct !DISubprogram(name: "LRU_CLOCK", scope: !3, file: !3, line: 80, type: !95, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!103 = !DILocalVariable(name: "lruclock", scope: !102, file: !3, line: 81, type: !7)
!104 = !DILocation(line: 81, column: 18, scope: !102)
!105 = !DILocation(line: 82, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !3, line: 82, column: 9)
!107 = !DILocation(line: 82, column: 13, scope: !106)
!108 = !DILocation(line: 82, column: 24, scope: !106)
!109 = !DILocation(line: 82, column: 9, scope: !102)
!110 = !DILocation(line: 83, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !3, line: 82, column: 49)
!112 = !DILocation(line: 83, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !111, file: !3, line: 83, column: 9)
!114 = !DILocation(line: 84, column: 5, scope: !111)
!115 = !DILocation(line: 85, column: 20, scope: !116)
!116 = distinct !DILexicalBlock(scope: !106, file: !3, line: 84, column: 12)
!117 = !DILocation(line: 85, column: 18, scope: !116)
!118 = !DILocation(line: 87, column: 12, scope: !102)
!119 = !DILocation(line: 87, column: 5, scope: !102)
!120 = distinct !DISubprogram(name: "estimateObjectIdleTime", scope: !3, file: !3, line: 92, type: !121, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!121 = !DISubroutineType(types: !122)
!122 = !{!82, !123}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !125, line: 862, baseType: !126)
!125 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !125, line: 854, size: 128, elements: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !125, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !126, file: !125, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !126, file: !125, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !126, file: !125, line: 860, baseType: !74, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !126, file: !125, line: 861, baseType: !17, size: 64, offset: 64)
!133 = !DILocalVariable(name: "o", arg: 1, scope: !120, file: !3, line: 92, type: !123)
!134 = !DILocation(line: 92, column: 49, scope: !120)
!135 = !DILocalVariable(name: "lruclock", scope: !120, file: !3, line: 93, type: !82)
!136 = !DILocation(line: 93, column: 24, scope: !120)
!137 = !DILocation(line: 93, column: 35, scope: !120)
!138 = !DILocation(line: 94, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !120, file: !3, line: 94, column: 9)
!140 = !DILocation(line: 94, column: 21, scope: !139)
!141 = !DILocation(line: 94, column: 24, scope: !139)
!142 = !DILocation(line: 94, column: 18, scope: !139)
!143 = !DILocation(line: 94, column: 9, scope: !120)
!144 = !DILocation(line: 95, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !3, line: 94, column: 29)
!146 = !DILocation(line: 95, column: 28, scope: !145)
!147 = !DILocation(line: 95, column: 31, scope: !145)
!148 = !DILocation(line: 95, column: 26, scope: !145)
!149 = !DILocation(line: 95, column: 36, scope: !145)
!150 = !DILocation(line: 95, column: 9, scope: !145)
!151 = !DILocation(line: 97, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !139, file: !3, line: 96, column: 12)
!153 = !DILocation(line: 97, column: 45, scope: !152)
!154 = !DILocation(line: 97, column: 48, scope: !152)
!155 = !DILocation(line: 97, column: 43, scope: !152)
!156 = !DILocation(line: 97, column: 28, scope: !152)
!157 = !DILocation(line: 97, column: 26, scope: !152)
!158 = !DILocation(line: 97, column: 54, scope: !152)
!159 = !DILocation(line: 97, column: 9, scope: !152)
!160 = !DILocation(line: 100, column: 1, scope: !120)
!161 = distinct !DISubprogram(name: "evictionPoolAlloc", scope: !3, file: !3, line: 123, type: !162, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!162 = !DISubroutineType(types: !163)
!163 = !{null}
!164 = !DILocalVariable(name: "ep", scope: !161, file: !3, line: 124, type: !78)
!165 = !DILocation(line: 124, column: 31, scope: !161)
!166 = !DILocalVariable(name: "j", scope: !161, file: !3, line: 125, type: !74)
!167 = !DILocation(line: 125, column: 9, scope: !161)
!168 = !DILocation(line: 127, column: 10, scope: !161)
!169 = !DILocation(line: 127, column: 8, scope: !161)
!170 = !DILocation(line: 128, column: 12, scope: !171)
!171 = distinct !DILexicalBlock(scope: !161, file: !3, line: 128, column: 5)
!172 = !DILocation(line: 128, column: 10, scope: !171)
!173 = !DILocation(line: 128, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !3, line: 128, column: 5)
!175 = !DILocation(line: 128, column: 19, scope: !174)
!176 = !DILocation(line: 128, column: 5, scope: !171)
!177 = !DILocation(line: 129, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !3, line: 128, column: 39)
!179 = !DILocation(line: 129, column: 12, scope: !178)
!180 = !DILocation(line: 129, column: 15, scope: !178)
!181 = !DILocation(line: 129, column: 20, scope: !178)
!182 = !DILocation(line: 130, column: 9, scope: !178)
!183 = !DILocation(line: 130, column: 12, scope: !178)
!184 = !DILocation(line: 130, column: 15, scope: !178)
!185 = !DILocation(line: 130, column: 19, scope: !178)
!186 = !DILocation(line: 131, column: 24, scope: !178)
!187 = !DILocation(line: 131, column: 9, scope: !178)
!188 = !DILocation(line: 131, column: 12, scope: !178)
!189 = !DILocation(line: 131, column: 15, scope: !178)
!190 = !DILocation(line: 131, column: 22, scope: !178)
!191 = !DILocation(line: 132, column: 9, scope: !178)
!192 = !DILocation(line: 132, column: 12, scope: !178)
!193 = !DILocation(line: 132, column: 15, scope: !178)
!194 = !DILocation(line: 132, column: 20, scope: !178)
!195 = !DILocation(line: 133, column: 5, scope: !178)
!196 = !DILocation(line: 128, column: 35, scope: !174)
!197 = !DILocation(line: 128, column: 5, scope: !174)
!198 = distinct !{!198, !176, !199, !200}
!199 = !DILocation(line: 133, column: 5, scope: !171)
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 134, column: 23, scope: !161)
!202 = !DILocation(line: 134, column: 21, scope: !161)
!203 = !DILocation(line: 135, column: 1, scope: !161)
!204 = distinct !DISubprogram(name: "evictionPoolPopulate", scope: !3, file: !3, line: 146, type: !205, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !74, !207, !207, !78}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !209, line: 61, baseType: !210)
!209 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !209, line: 79, size: 448, elements: !211)
!211 = !{!212, !247, !271, !273, !274, !278}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !209, line: 80, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !209, line: 74, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !209, line: 63, size: 512, elements: !216)
!216 = !{!217, !223, !227, !228, !232, !236, !237, !243}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !215, file: !209, line: 64, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!61, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !215, file: !209, line: 65, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!17, !207, !221}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !215, file: !209, line: 66, baseType: !224, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !215, file: !209, line: 67, baseType: !229, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!74, !207, !221, !221}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !215, file: !209, line: 68, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !207, !17}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !215, file: !209, line: 69, baseType: !233, size: 64, offset: 320)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !215, file: !209, line: 70, baseType: !238, size: 64, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!74, !241, !18}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !242, line: 46, baseType: !63)
!242 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !215, file: !209, line: 73, baseType: !244, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!241, !207}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !210, file: !209, line: 82, baseType: !248, size: 128, offset: 64)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !269)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !209, line: 59, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !209, line: 47, size: 192, elements: !253)
!253 = !{!254, !255, !265, !267}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !252, file: !209, line: 48, baseType: !17, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !252, file: !209, line: 54, baseType: !256, size: 64, offset: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !209, line: 49, size: 64, elements: !257)
!257 = !{!258, !259, !260, !264}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !256, file: !209, line: 50, baseType: !17, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !256, file: !209, line: 51, baseType: !61, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !256, file: !209, line: 52, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !262, line: 27, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 44, baseType: !16)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !256, file: !209, line: 53, baseType: !18, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !209, line: 55, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !252, file: !209, line: 56, baseType: !268, offset: 192)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, elements: !36)
!269 = !{!270}
!270 = !DISubrange(count: 2)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !210, file: !209, line: 83, baseType: !272, size: 128, offset: 192)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !269)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !210, file: !209, line: 85, baseType: !16, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !210, file: !209, line: 88, baseType: !275, size: 16, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !262, line: 25, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !29, line: 39, baseType: !277)
!277 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !210, file: !209, line: 89, baseType: !279, size: 16, offset: 400)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 16, elements: !269)
!280 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!281 = !DILocalVariable(name: "dbid", arg: 1, scope: !204, file: !3, line: 146, type: !74)
!282 = !DILocation(line: 146, column: 31, scope: !204)
!283 = !DILocalVariable(name: "sampledict", arg: 2, scope: !204, file: !3, line: 146, type: !207)
!284 = !DILocation(line: 146, column: 43, scope: !204)
!285 = !DILocalVariable(name: "keydict", arg: 3, scope: !204, file: !3, line: 146, type: !207)
!286 = !DILocation(line: 146, column: 61, scope: !204)
!287 = !DILocalVariable(name: "pool", arg: 4, scope: !204, file: !3, line: 146, type: !78)
!288 = !DILocation(line: 146, column: 96, scope: !204)
!289 = !DILocalVariable(name: "j", scope: !204, file: !3, line: 147, type: !74)
!290 = !DILocation(line: 147, column: 9, scope: !204)
!291 = !DILocalVariable(name: "k", scope: !204, file: !3, line: 147, type: !74)
!292 = !DILocation(line: 147, column: 12, scope: !204)
!293 = !DILocalVariable(name: "count", scope: !204, file: !3, line: 147, type: !74)
!294 = !DILocation(line: 147, column: 15, scope: !204)
!295 = !DILocation(line: 148, column: 31, scope: !204)
!296 = !DILocation(line: 148, column: 5, scope: !204)
!297 = !DILocalVariable(name: "__vla_expr0", scope: !204, type: !63, flags: DIFlagArtificial)
!298 = !DILocation(line: 0, scope: !204)
!299 = !DILocalVariable(name: "samples", scope: !204, file: !3, line: 148, type: !300)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: !297)
!303 = !DILocation(line: 148, column: 16, scope: !204)
!304 = !DILocation(line: 150, column: 29, scope: !204)
!305 = !DILocation(line: 150, column: 55, scope: !204)
!306 = !DILocation(line: 150, column: 13, scope: !204)
!307 = !DILocation(line: 150, column: 11, scope: !204)
!308 = !DILocation(line: 151, column: 12, scope: !309)
!309 = distinct !DILexicalBlock(scope: !204, file: !3, line: 151, column: 5)
!310 = !DILocation(line: 151, column: 10, scope: !309)
!311 = !DILocation(line: 151, column: 17, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 151, column: 5)
!313 = !DILocation(line: 151, column: 21, scope: !312)
!314 = !DILocation(line: 151, column: 19, scope: !312)
!315 = !DILocation(line: 151, column: 5, scope: !309)
!316 = !DILocalVariable(name: "idle", scope: !317, file: !3, line: 152, type: !82)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 151, column: 33)
!318 = !DILocation(line: 152, column: 28, scope: !317)
!319 = !DILocalVariable(name: "key", scope: !317, file: !3, line: 153, type: !84)
!320 = !DILocation(line: 153, column: 13, scope: !317)
!321 = !DILocalVariable(name: "o", scope: !317, file: !3, line: 154, type: !123)
!322 = !DILocation(line: 154, column: 15, scope: !317)
!323 = !DILocalVariable(name: "de", scope: !317, file: !3, line: 155, type: !250)
!324 = !DILocation(line: 155, column: 20, scope: !317)
!325 = !DILocation(line: 157, column: 22, scope: !317)
!326 = !DILocation(line: 157, column: 14, scope: !317)
!327 = !DILocation(line: 157, column: 12, scope: !317)
!328 = !DILocation(line: 158, column: 15, scope: !317)
!329 = !DILocation(line: 158, column: 13, scope: !317)
!330 = !DILocation(line: 163, column: 20, scope: !331)
!331 = distinct !DILexicalBlock(scope: !317, file: !3, line: 163, column: 13)
!332 = !DILocation(line: 163, column: 37, scope: !331)
!333 = !DILocation(line: 163, column: 13, scope: !317)
!334 = !DILocation(line: 164, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 164, column: 17)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 163, column: 64)
!337 = !DILocation(line: 164, column: 31, scope: !335)
!338 = !DILocation(line: 164, column: 28, scope: !335)
!339 = !DILocation(line: 164, column: 17, scope: !336)
!340 = !DILocation(line: 164, column: 54, scope: !335)
!341 = !DILocation(line: 164, column: 63, scope: !335)
!342 = !DILocation(line: 164, column: 45, scope: !335)
!343 = !DILocation(line: 164, column: 43, scope: !335)
!344 = !DILocation(line: 164, column: 40, scope: !335)
!345 = !DILocation(line: 165, column: 17, scope: !336)
!346 = !DILocation(line: 165, column: 15, scope: !336)
!347 = !DILocation(line: 166, column: 9, scope: !336)
!348 = !DILocation(line: 171, column: 20, scope: !349)
!349 = distinct !DILexicalBlock(scope: !317, file: !3, line: 171, column: 13)
!350 = !DILocation(line: 171, column: 37, scope: !349)
!351 = !DILocation(line: 171, column: 13, scope: !317)
!352 = !DILocation(line: 172, column: 43, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 171, column: 59)
!354 = !DILocation(line: 172, column: 20, scope: !353)
!355 = !DILocation(line: 172, column: 18, scope: !353)
!356 = !DILocation(line: 173, column: 9, scope: !353)
!357 = !DILocation(line: 173, column: 27, scope: !358)
!358 = distinct !DILexicalBlock(scope: !349, file: !3, line: 173, column: 20)
!359 = !DILocation(line: 173, column: 44, scope: !358)
!360 = !DILocation(line: 173, column: 20, scope: !349)
!361 = !DILocation(line: 181, column: 41, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 173, column: 66)
!363 = !DILocation(line: 181, column: 24, scope: !362)
!364 = !DILocation(line: 181, column: 23, scope: !362)
!365 = !DILocation(line: 181, column: 18, scope: !362)
!366 = !DILocation(line: 182, column: 9, scope: !362)
!367 = !DILocation(line: 182, column: 27, scope: !368)
!368 = distinct !DILexicalBlock(scope: !358, file: !3, line: 182, column: 20)
!369 = !DILocation(line: 182, column: 44, scope: !368)
!370 = !DILocation(line: 182, column: 20, scope: !358)
!371 = !DILocation(line: 184, column: 39, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 182, column: 71)
!373 = !DILocation(line: 184, column: 33, scope: !372)
!374 = !DILocation(line: 184, column: 31, scope: !372)
!375 = !DILocation(line: 184, column: 18, scope: !372)
!376 = !DILocation(line: 185, column: 9, scope: !372)
!377 = !DILocation(line: 186, column: 13, scope: !378)
!378 = distinct !DILexicalBlock(scope: !368, file: !3, line: 185, column: 16)
!379 = !DILocation(line: 192, column: 11, scope: !317)
!380 = !DILocation(line: 193, column: 9, scope: !317)
!381 = !DILocation(line: 193, column: 16, scope: !317)
!382 = !DILocation(line: 193, column: 18, scope: !317)
!383 = !DILocation(line: 193, column: 32, scope: !317)
!384 = !DILocation(line: 194, column: 16, scope: !317)
!385 = !DILocation(line: 194, column: 21, scope: !317)
!386 = !DILocation(line: 194, column: 24, scope: !317)
!387 = !DILocation(line: 194, column: 28, scope: !317)
!388 = !DILocation(line: 195, column: 16, scope: !317)
!389 = !DILocation(line: 195, column: 21, scope: !317)
!390 = !DILocation(line: 195, column: 24, scope: !317)
!391 = !DILocation(line: 195, column: 31, scope: !317)
!392 = !DILocation(line: 195, column: 29, scope: !317)
!393 = !DILocation(line: 0, scope: !317)
!394 = !DILocation(line: 195, column: 38, scope: !317)
!395 = distinct !{!395, !380, !394, !200}
!396 = !DILocation(line: 196, column: 13, scope: !397)
!397 = distinct !DILexicalBlock(scope: !317, file: !3, line: 196, column: 13)
!398 = !DILocation(line: 196, column: 15, scope: !397)
!399 = !DILocation(line: 196, column: 20, scope: !397)
!400 = !DILocation(line: 196, column: 23, scope: !397)
!401 = !DILocation(line: 196, column: 43, scope: !397)
!402 = !DILocation(line: 196, column: 47, scope: !397)
!403 = !DILocation(line: 196, column: 13, scope: !317)
!404 = !DILocation(line: 199, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 196, column: 56)
!406 = !DILocation(line: 200, column: 20, scope: !407)
!407 = distinct !DILexicalBlock(scope: !397, file: !3, line: 200, column: 20)
!408 = !DILocation(line: 200, column: 22, scope: !407)
!409 = !DILocation(line: 200, column: 36, scope: !407)
!410 = !DILocation(line: 200, column: 39, scope: !407)
!411 = !DILocation(line: 200, column: 44, scope: !407)
!412 = !DILocation(line: 200, column: 47, scope: !407)
!413 = !DILocation(line: 200, column: 51, scope: !407)
!414 = !DILocation(line: 200, column: 20, scope: !397)
!415 = !DILocation(line: 202, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !407, file: !3, line: 200, column: 60)
!417 = !DILocation(line: 205, column: 17, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 205, column: 17)
!419 = distinct !DILexicalBlock(scope: !407, file: !3, line: 202, column: 16)
!420 = !DILocation(line: 205, column: 37, scope: !418)
!421 = !DILocation(line: 205, column: 41, scope: !418)
!422 = !DILocation(line: 205, column: 17, scope: !419)
!423 = !DILocalVariable(name: "cached", scope: !424, file: !3, line: 210, type: !84)
!424 = distinct !DILexicalBlock(scope: !418, file: !3, line: 205, column: 50)
!425 = !DILocation(line: 210, column: 21, scope: !424)
!426 = !DILocation(line: 210, column: 30, scope: !424)
!427 = !DILocation(line: 210, column: 50, scope: !424)
!428 = !DILocation(line: 211, column: 25, scope: !424)
!429 = !DILocation(line: 211, column: 30, scope: !424)
!430 = !DILocation(line: 211, column: 29, scope: !424)
!431 = !DILocation(line: 211, column: 31, scope: !424)
!432 = !DILocation(line: 211, column: 17, scope: !424)
!433 = !DILocation(line: 211, column: 34, scope: !424)
!434 = !DILocation(line: 211, column: 39, scope: !424)
!435 = !DILocation(line: 211, column: 38, scope: !424)
!436 = !DILocation(line: 212, column: 50, scope: !424)
!437 = !DILocation(line: 212, column: 49, scope: !424)
!438 = !DILocation(line: 212, column: 51, scope: !424)
!439 = !DILocation(line: 212, column: 37, scope: !424)
!440 = !DILocation(line: 212, column: 36, scope: !424)
!441 = !DILocation(line: 213, column: 34, scope: !424)
!442 = !DILocation(line: 213, column: 17, scope: !424)
!443 = !DILocation(line: 213, column: 22, scope: !424)
!444 = !DILocation(line: 213, column: 25, scope: !424)
!445 = !DILocation(line: 213, column: 32, scope: !424)
!446 = !DILocation(line: 214, column: 13, scope: !424)
!447 = !DILocation(line: 216, column: 18, scope: !448)
!448 = distinct !DILexicalBlock(scope: !418, file: !3, line: 214, column: 20)
!449 = !DILocalVariable(name: "cached", scope: !448, file: !3, line: 219, type: !84)
!450 = !DILocation(line: 219, column: 21, scope: !448)
!451 = !DILocation(line: 219, column: 30, scope: !448)
!452 = !DILocation(line: 219, column: 38, scope: !448)
!453 = !DILocation(line: 220, column: 21, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !3, line: 220, column: 21)
!455 = !DILocation(line: 220, column: 29, scope: !454)
!456 = !DILocation(line: 220, column: 36, scope: !454)
!457 = !DILocation(line: 220, column: 44, scope: !454)
!458 = !DILocation(line: 220, column: 33, scope: !454)
!459 = !DILocation(line: 220, column: 21, scope: !448)
!460 = !DILocation(line: 220, column: 60, scope: !454)
!461 = !DILocation(line: 220, column: 68, scope: !454)
!462 = !DILocation(line: 220, column: 52, scope: !454)
!463 = !DILocation(line: 221, column: 25, scope: !448)
!464 = !DILocation(line: 221, column: 17, scope: !448)
!465 = !DILocation(line: 221, column: 30, scope: !448)
!466 = !DILocation(line: 221, column: 34, scope: !448)
!467 = !DILocation(line: 221, column: 53, scope: !448)
!468 = !DILocation(line: 221, column: 52, scope: !448)
!469 = !DILocation(line: 222, column: 34, scope: !448)
!470 = !DILocation(line: 222, column: 17, scope: !448)
!471 = !DILocation(line: 222, column: 22, scope: !448)
!472 = !DILocation(line: 222, column: 25, scope: !448)
!473 = !DILocation(line: 222, column: 32, scope: !448)
!474 = !DILocalVariable(name: "klen", scope: !317, file: !3, line: 230, type: !74)
!475 = !DILocation(line: 230, column: 13, scope: !317)
!476 = !DILocation(line: 230, column: 27, scope: !317)
!477 = !DILocation(line: 230, column: 20, scope: !317)
!478 = !DILocation(line: 231, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !317, file: !3, line: 231, column: 13)
!480 = !DILocation(line: 231, column: 18, scope: !479)
!481 = !DILocation(line: 231, column: 13, scope: !317)
!482 = !DILocation(line: 232, column: 34, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 231, column: 44)
!484 = !DILocation(line: 232, column: 27, scope: !483)
!485 = !DILocation(line: 232, column: 13, scope: !483)
!486 = !DILocation(line: 232, column: 18, scope: !483)
!487 = !DILocation(line: 232, column: 21, scope: !483)
!488 = !DILocation(line: 232, column: 25, scope: !483)
!489 = !DILocation(line: 233, column: 9, scope: !483)
!490 = !DILocation(line: 234, column: 20, scope: !491)
!491 = distinct !DILexicalBlock(scope: !479, file: !3, line: 233, column: 16)
!492 = !DILocation(line: 234, column: 25, scope: !491)
!493 = !DILocation(line: 234, column: 28, scope: !491)
!494 = !DILocation(line: 234, column: 35, scope: !491)
!495 = !DILocation(line: 234, column: 39, scope: !491)
!496 = !DILocation(line: 234, column: 43, scope: !491)
!497 = !DILocation(line: 234, column: 13, scope: !491)
!498 = !DILocation(line: 235, column: 23, scope: !491)
!499 = !DILocation(line: 235, column: 28, scope: !491)
!500 = !DILocation(line: 235, column: 31, scope: !491)
!501 = !DILocation(line: 235, column: 38, scope: !491)
!502 = !DILocation(line: 235, column: 13, scope: !491)
!503 = !DILocation(line: 236, column: 27, scope: !491)
!504 = !DILocation(line: 236, column: 32, scope: !491)
!505 = !DILocation(line: 236, column: 35, scope: !491)
!506 = !DILocation(line: 236, column: 13, scope: !491)
!507 = !DILocation(line: 236, column: 18, scope: !491)
!508 = !DILocation(line: 236, column: 21, scope: !491)
!509 = !DILocation(line: 236, column: 25, scope: !491)
!510 = !DILocation(line: 238, column: 24, scope: !317)
!511 = !DILocation(line: 238, column: 9, scope: !317)
!512 = !DILocation(line: 238, column: 14, scope: !317)
!513 = !DILocation(line: 238, column: 17, scope: !317)
!514 = !DILocation(line: 238, column: 22, scope: !317)
!515 = !DILocation(line: 239, column: 24, scope: !317)
!516 = !DILocation(line: 239, column: 9, scope: !317)
!517 = !DILocation(line: 239, column: 14, scope: !317)
!518 = !DILocation(line: 239, column: 17, scope: !317)
!519 = !DILocation(line: 239, column: 22, scope: !317)
!520 = !DILocation(line: 240, column: 5, scope: !317)
!521 = !DILocation(line: 151, column: 29, scope: !312)
!522 = !DILocation(line: 151, column: 5, scope: !312)
!523 = distinct !{!523, !315, !524, !200}
!524 = !DILocation(line: 240, column: 5, scope: !309)
!525 = !DILocation(line: 241, column: 1, scope: !204)
!526 = distinct !DISubprogram(name: "LFUDecrAndReturn", scope: !3, file: !3, line: 319, type: !527, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!527 = !DISubroutineType(types: !528)
!528 = !{!63, !123}
!529 = !DILocalVariable(name: "o", arg: 1, scope: !526, file: !3, line: 319, type: !123)
!530 = !DILocation(line: 319, column: 38, scope: !526)
!531 = !DILocalVariable(name: "ldt", scope: !526, file: !3, line: 320, type: !63)
!532 = !DILocation(line: 320, column: 19, scope: !526)
!533 = !DILocation(line: 320, column: 25, scope: !526)
!534 = !DILocation(line: 320, column: 28, scope: !526)
!535 = !DILocation(line: 320, column: 32, scope: !526)
!536 = !DILocalVariable(name: "counter", scope: !526, file: !3, line: 321, type: !63)
!537 = !DILocation(line: 321, column: 19, scope: !526)
!538 = !DILocation(line: 321, column: 29, scope: !526)
!539 = !DILocation(line: 321, column: 32, scope: !526)
!540 = !DILocation(line: 321, column: 36, scope: !526)
!541 = !DILocalVariable(name: "num_periods", scope: !526, file: !3, line: 322, type: !63)
!542 = !DILocation(line: 322, column: 19, scope: !526)
!543 = !DILocation(line: 322, column: 40, scope: !526)
!544 = !DILocation(line: 322, column: 33, scope: !526)
!545 = !DILocation(line: 322, column: 72, scope: !526)
!546 = !DILocation(line: 322, column: 57, scope: !526)
!547 = !DILocation(line: 322, column: 86, scope: !526)
!548 = !DILocation(line: 322, column: 79, scope: !526)
!549 = !DILocation(line: 322, column: 77, scope: !526)
!550 = !DILocation(line: 323, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !526, file: !3, line: 323, column: 9)
!552 = !DILocation(line: 323, column: 9, scope: !526)
!553 = !DILocation(line: 324, column: 20, scope: !551)
!554 = !DILocation(line: 324, column: 34, scope: !551)
!555 = !DILocation(line: 324, column: 32, scope: !551)
!556 = !DILocation(line: 324, column: 19, scope: !551)
!557 = !DILocation(line: 324, column: 49, scope: !551)
!558 = !DILocation(line: 324, column: 59, scope: !551)
!559 = !DILocation(line: 324, column: 57, scope: !551)
!560 = !DILocation(line: 324, column: 17, scope: !551)
!561 = !DILocation(line: 324, column: 9, scope: !551)
!562 = !DILocation(line: 325, column: 12, scope: !526)
!563 = !DILocation(line: 325, column: 5, scope: !526)
!564 = distinct !DISubprogram(name: "sdslen", scope: !23, file: !23, line: 87, type: !565, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!565 = !DISubroutineType(types: !566)
!566 = !{!241, !567}
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!568 = !DILocalVariable(name: "s", arg: 1, scope: !564, file: !23, line: 87, type: !567)
!569 = !DILocation(line: 87, column: 39, scope: !564)
!570 = !DILocalVariable(name: "flags", scope: !564, file: !23, line: 88, type: !30)
!571 = !DILocation(line: 88, column: 19, scope: !564)
!572 = !DILocation(line: 88, column: 27, scope: !564)
!573 = !DILocation(line: 89, column: 12, scope: !564)
!574 = !DILocation(line: 89, column: 17, scope: !564)
!575 = !DILocation(line: 89, column: 5, scope: !564)
!576 = !DILocation(line: 91, column: 20, scope: !577)
!577 = distinct !DILexicalBlock(scope: !564, file: !23, line: 89, column: 33)
!578 = !DILocation(line: 91, column: 13, scope: !577)
!579 = !DILocation(line: 93, column: 20, scope: !577)
!580 = !DILocation(line: 93, column: 34, scope: !577)
!581 = !DILocation(line: 93, column: 13, scope: !577)
!582 = !DILocation(line: 95, column: 20, scope: !577)
!583 = !DILocation(line: 95, column: 35, scope: !577)
!584 = !DILocation(line: 95, column: 13, scope: !577)
!585 = !DILocation(line: 97, column: 20, scope: !577)
!586 = !DILocation(line: 97, column: 35, scope: !577)
!587 = !DILocation(line: 97, column: 13, scope: !577)
!588 = !DILocation(line: 99, column: 20, scope: !577)
!589 = !DILocation(line: 99, column: 35, scope: !577)
!590 = !DILocation(line: 99, column: 13, scope: !577)
!591 = !DILocation(line: 101, column: 5, scope: !564)
!592 = !DILocation(line: 102, column: 1, scope: !564)
!593 = distinct !DISubprogram(name: "sdssetlen", scope: !23, file: !23, line: 130, type: !594, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !84, !241}
!596 = !DILocalVariable(name: "s", arg: 1, scope: !593, file: !23, line: 130, type: !84)
!597 = !DILocation(line: 130, column: 34, scope: !593)
!598 = !DILocalVariable(name: "newlen", arg: 2, scope: !593, file: !23, line: 130, type: !241)
!599 = !DILocation(line: 130, column: 44, scope: !593)
!600 = !DILocalVariable(name: "flags", scope: !593, file: !23, line: 131, type: !30)
!601 = !DILocation(line: 131, column: 19, scope: !593)
!602 = !DILocation(line: 131, column: 27, scope: !593)
!603 = !DILocation(line: 132, column: 12, scope: !593)
!604 = !DILocation(line: 132, column: 17, scope: !593)
!605 = !DILocation(line: 132, column: 5, scope: !593)
!606 = !DILocalVariable(name: "fp", scope: !607, file: !23, line: 135, type: !67)
!607 = distinct !DILexicalBlock(scope: !608, file: !23, line: 134, column: 13)
!608 = distinct !DILexicalBlock(scope: !593, file: !23, line: 132, column: 33)
!609 = !DILocation(line: 135, column: 32, scope: !607)
!610 = !DILocation(line: 135, column: 54, scope: !607)
!611 = !DILocation(line: 135, column: 56, scope: !607)
!612 = !DILocation(line: 136, column: 37, scope: !607)
!613 = !DILocation(line: 136, column: 44, scope: !607)
!614 = !DILocation(line: 136, column: 34, scope: !607)
!615 = !DILocation(line: 136, column: 23, scope: !607)
!616 = !DILocation(line: 136, column: 18, scope: !607)
!617 = !DILocation(line: 136, column: 21, scope: !607)
!618 = !DILocation(line: 138, column: 13, scope: !608)
!619 = !DILocation(line: 140, column: 33, scope: !608)
!620 = !DILocation(line: 140, column: 13, scope: !608)
!621 = !DILocation(line: 140, column: 27, scope: !608)
!622 = !DILocation(line: 140, column: 31, scope: !608)
!623 = !DILocation(line: 141, column: 13, scope: !608)
!624 = !DILocation(line: 143, column: 34, scope: !608)
!625 = !DILocation(line: 143, column: 13, scope: !608)
!626 = !DILocation(line: 143, column: 28, scope: !608)
!627 = !DILocation(line: 143, column: 32, scope: !608)
!628 = !DILocation(line: 144, column: 13, scope: !608)
!629 = !DILocation(line: 146, column: 34, scope: !608)
!630 = !DILocation(line: 146, column: 13, scope: !608)
!631 = !DILocation(line: 146, column: 28, scope: !608)
!632 = !DILocation(line: 146, column: 32, scope: !608)
!633 = !DILocation(line: 147, column: 13, scope: !608)
!634 = !DILocation(line: 149, column: 34, scope: !608)
!635 = !DILocation(line: 149, column: 13, scope: !608)
!636 = !DILocation(line: 149, column: 28, scope: !608)
!637 = !DILocation(line: 149, column: 32, scope: !608)
!638 = !DILocation(line: 150, column: 13, scope: !608)
!639 = !DILocation(line: 152, column: 1, scope: !593)
!640 = distinct !DISubprogram(name: "LFUGetTimeInMinutes", scope: !3, file: !3, line: 283, type: !641, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!641 = !DISubroutineType(types: !642)
!642 = !{!63}
!643 = !DILocation(line: 284, column: 20, scope: !640)
!644 = !DILocation(line: 284, column: 28, scope: !640)
!645 = !DILocation(line: 284, column: 33, scope: !640)
!646 = !DILocation(line: 284, column: 5, scope: !640)
!647 = distinct !DISubprogram(name: "LFUTimeElapsed", scope: !3, file: !3, line: 291, type: !648, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!648 = !DISubroutineType(types: !649)
!649 = !{!63, !63}
!650 = !DILocalVariable(name: "ldt", arg: 1, scope: !647, file: !3, line: 291, type: !63)
!651 = !DILocation(line: 291, column: 44, scope: !647)
!652 = !DILocalVariable(name: "now", scope: !647, file: !3, line: 292, type: !63)
!653 = !DILocation(line: 292, column: 19, scope: !647)
!654 = !DILocation(line: 292, column: 25, scope: !647)
!655 = !DILocation(line: 293, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !647, file: !3, line: 293, column: 9)
!657 = !DILocation(line: 293, column: 16, scope: !656)
!658 = !DILocation(line: 293, column: 13, scope: !656)
!659 = !DILocation(line: 293, column: 9, scope: !647)
!660 = !DILocation(line: 293, column: 28, scope: !656)
!661 = !DILocation(line: 293, column: 32, scope: !656)
!662 = !DILocation(line: 293, column: 31, scope: !656)
!663 = !DILocation(line: 293, column: 21, scope: !656)
!664 = !DILocation(line: 294, column: 18, scope: !647)
!665 = !DILocation(line: 294, column: 17, scope: !647)
!666 = !DILocation(line: 294, column: 22, scope: !647)
!667 = !DILocation(line: 294, column: 21, scope: !647)
!668 = !DILocation(line: 294, column: 5, scope: !647)
!669 = !DILocation(line: 295, column: 1, scope: !647)
!670 = distinct !DISubprogram(name: "LFULogIncr", scope: !3, file: !3, line: 299, type: !671, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!671 = !DISubroutineType(types: !672)
!672 = !{!26, !26}
!673 = !DILocalVariable(name: "counter", arg: 1, scope: !670, file: !3, line: 299, type: !26)
!674 = !DILocation(line: 299, column: 28, scope: !670)
!675 = !DILocation(line: 300, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !3, line: 300, column: 9)
!677 = !DILocation(line: 300, column: 17, scope: !676)
!678 = !DILocation(line: 300, column: 9, scope: !670)
!679 = !DILocation(line: 300, column: 25, scope: !676)
!680 = !DILocalVariable(name: "r", scope: !670, file: !3, line: 301, type: !18)
!681 = !DILocation(line: 301, column: 12, scope: !670)
!682 = !DILocation(line: 301, column: 24, scope: !670)
!683 = !DILocation(line: 301, column: 16, scope: !670)
!684 = !DILocation(line: 301, column: 30, scope: !670)
!685 = !DILocalVariable(name: "baseval", scope: !670, file: !3, line: 302, type: !18)
!686 = !DILocation(line: 302, column: 12, scope: !670)
!687 = !DILocation(line: 302, column: 22, scope: !670)
!688 = !DILocation(line: 302, column: 30, scope: !670)
!689 = !DILocation(line: 303, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !670, file: !3, line: 303, column: 9)
!691 = !DILocation(line: 303, column: 17, scope: !690)
!692 = !DILocation(line: 303, column: 9, scope: !670)
!693 = !DILocation(line: 303, column: 30, scope: !690)
!694 = !DILocation(line: 303, column: 22, scope: !690)
!695 = !DILocalVariable(name: "p", scope: !670, file: !3, line: 304, type: !18)
!696 = !DILocation(line: 304, column: 12, scope: !670)
!697 = !DILocation(line: 304, column: 21, scope: !670)
!698 = !DILocation(line: 304, column: 36, scope: !670)
!699 = !DILocation(line: 304, column: 29, scope: !670)
!700 = !DILocation(line: 304, column: 28, scope: !670)
!701 = !DILocation(line: 304, column: 50, scope: !670)
!702 = !DILocation(line: 304, column: 19, scope: !670)
!703 = !DILocation(line: 305, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !670, file: !3, line: 305, column: 9)
!705 = !DILocation(line: 305, column: 13, scope: !704)
!706 = !DILocation(line: 305, column: 11, scope: !704)
!707 = !DILocation(line: 305, column: 9, scope: !670)
!708 = !DILocation(line: 305, column: 23, scope: !704)
!709 = !DILocation(line: 305, column: 16, scope: !704)
!710 = !DILocation(line: 306, column: 12, scope: !670)
!711 = !DILocation(line: 306, column: 5, scope: !670)
!712 = !DILocation(line: 307, column: 1, scope: !670)
!713 = distinct !DISubprogram(name: "freeMemoryGetNotCountedMemory", scope: !3, file: !3, line: 336, type: !714, scopeLine: 336, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!714 = !DISubroutineType(types: !715)
!715 = !{!241}
!716 = !DILocalVariable(name: "overhead", scope: !713, file: !3, line: 337, type: !241)
!717 = !DILocation(line: 337, column: 12, scope: !713)
!718 = !DILocation(line: 354, column: 27, scope: !719)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 354, column: 9)
!720 = !DILocation(line: 354, column: 52, scope: !719)
!721 = !DILocation(line: 354, column: 43, scope: !719)
!722 = !DILocation(line: 354, column: 9, scope: !713)
!723 = !DILocalVariable(name: "extra_approx_size", scope: !724, file: !3, line: 358, type: !241)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 354, column: 71)
!725 = !DILocation(line: 358, column: 16, scope: !724)
!726 = !DILocation(line: 359, column: 21, scope: !724)
!727 = !DILocation(line: 359, column: 38, scope: !724)
!728 = !DILocation(line: 359, column: 63, scope: !724)
!729 = !DILocation(line: 359, column: 68, scope: !724)
!730 = !DILocalVariable(name: "counted_mem", scope: !724, file: !3, line: 361, type: !241)
!731 = !DILocation(line: 361, column: 16, scope: !724)
!732 = !DILocation(line: 361, column: 37, scope: !724)
!733 = !DILocation(line: 361, column: 57, scope: !724)
!734 = !DILocation(line: 361, column: 55, scope: !724)
!735 = !DILocation(line: 362, column: 20, scope: !736)
!736 = distinct !DILexicalBlock(scope: !724, file: !3, line: 362, column: 13)
!737 = !DILocation(line: 362, column: 38, scope: !736)
!738 = !DILocation(line: 362, column: 36, scope: !736)
!739 = !DILocation(line: 362, column: 13, scope: !724)
!740 = !DILocation(line: 363, column: 33, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !3, line: 362, column: 51)
!742 = !DILocation(line: 363, column: 51, scope: !741)
!743 = !DILocation(line: 363, column: 49, scope: !741)
!744 = !DILocation(line: 363, column: 22, scope: !741)
!745 = !DILocation(line: 364, column: 9, scope: !741)
!746 = !DILocation(line: 365, column: 5, scope: !724)
!747 = !DILocation(line: 367, column: 16, scope: !748)
!748 = distinct !DILexicalBlock(scope: !713, file: !3, line: 367, column: 9)
!749 = !DILocation(line: 367, column: 26, scope: !748)
!750 = !DILocation(line: 367, column: 9, scope: !713)
!751 = !DILocation(line: 368, column: 41, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !3, line: 367, column: 38)
!753 = !DILocation(line: 368, column: 21, scope: !752)
!754 = !DILocation(line: 368, column: 18, scope: !752)
!755 = !DILocation(line: 369, column: 5, scope: !752)
!756 = !DILocation(line: 370, column: 12, scope: !713)
!757 = !DILocation(line: 370, column: 5, scope: !713)
!758 = distinct !DISubprogram(name: "getMaxmemoryState", scope: !3, file: !3, line: 397, type: !759, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!759 = !DISubroutineType(types: !760)
!760 = !{!74, !761, !761, !761, !762}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!763 = !DILocalVariable(name: "total", arg: 1, scope: !758, file: !3, line: 397, type: !761)
!764 = !DILocation(line: 397, column: 31, scope: !758)
!765 = !DILocalVariable(name: "logical", arg: 2, scope: !758, file: !3, line: 397, type: !761)
!766 = !DILocation(line: 397, column: 46, scope: !758)
!767 = !DILocalVariable(name: "tofree", arg: 3, scope: !758, file: !3, line: 397, type: !761)
!768 = !DILocation(line: 397, column: 63, scope: !758)
!769 = !DILocalVariable(name: "level", arg: 4, scope: !758, file: !3, line: 397, type: !762)
!770 = !DILocation(line: 397, column: 78, scope: !758)
!771 = !DILocalVariable(name: "mem_reported", scope: !758, file: !3, line: 398, type: !241)
!772 = !DILocation(line: 398, column: 12, scope: !758)
!773 = !DILocalVariable(name: "mem_used", scope: !758, file: !3, line: 398, type: !241)
!774 = !DILocation(line: 398, column: 26, scope: !758)
!775 = !DILocalVariable(name: "mem_tofree", scope: !758, file: !3, line: 398, type: !241)
!776 = !DILocation(line: 398, column: 36, scope: !758)
!777 = !DILocation(line: 402, column: 20, scope: !758)
!778 = !DILocation(line: 402, column: 18, scope: !758)
!779 = !DILocation(line: 403, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !758, file: !3, line: 403, column: 9)
!781 = !DILocation(line: 403, column: 9, scope: !758)
!782 = !DILocation(line: 403, column: 25, scope: !780)
!783 = !DILocation(line: 403, column: 17, scope: !780)
!784 = !DILocation(line: 403, column: 23, scope: !780)
!785 = !DILocation(line: 403, column: 16, scope: !780)
!786 = !DILocation(line: 406, column: 17, scope: !787)
!787 = distinct !DILexicalBlock(scope: !758, file: !3, line: 406, column: 9)
!788 = !DILocation(line: 406, column: 10, scope: !787)
!789 = !DILocation(line: 406, column: 9, scope: !758)
!790 = !DILocation(line: 407, column: 13, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 407, column: 13)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 406, column: 28)
!793 = !DILocation(line: 407, column: 13, scope: !792)
!794 = !DILocation(line: 407, column: 21, scope: !791)
!795 = !DILocation(line: 407, column: 27, scope: !791)
!796 = !DILocation(line: 407, column: 20, scope: !791)
!797 = !DILocation(line: 408, column: 9, scope: !792)
!798 = !DILocation(line: 410, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !758, file: !3, line: 410, column: 9)
!800 = !DILocation(line: 410, column: 32, scope: !799)
!801 = !DILocation(line: 410, column: 22, scope: !799)
!802 = !DILocation(line: 410, column: 42, scope: !799)
!803 = !DILocation(line: 410, column: 46, scope: !799)
!804 = !DILocation(line: 410, column: 9, scope: !758)
!805 = !DILocation(line: 410, column: 53, scope: !799)
!806 = !DILocation(line: 414, column: 16, scope: !758)
!807 = !DILocation(line: 414, column: 14, scope: !758)
!808 = !DILocalVariable(name: "overhead", scope: !758, file: !3, line: 415, type: !241)
!809 = !DILocation(line: 415, column: 12, scope: !758)
!810 = !DILocation(line: 415, column: 23, scope: !758)
!811 = !DILocation(line: 416, column: 17, scope: !758)
!812 = !DILocation(line: 416, column: 28, scope: !758)
!813 = !DILocation(line: 416, column: 26, scope: !758)
!814 = !DILocation(line: 416, column: 16, scope: !758)
!815 = !DILocation(line: 416, column: 40, scope: !758)
!816 = !DILocation(line: 416, column: 49, scope: !758)
!817 = !DILocation(line: 416, column: 48, scope: !758)
!818 = !DILocation(line: 416, column: 14, scope: !758)
!819 = !DILocation(line: 419, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !758, file: !3, line: 419, column: 9)
!821 = !DILocation(line: 419, column: 9, scope: !758)
!822 = !DILocation(line: 419, column: 32, scope: !820)
!823 = !DILocation(line: 419, column: 25, scope: !820)
!824 = !DILocation(line: 419, column: 57, scope: !820)
!825 = !DILocation(line: 419, column: 43, scope: !820)
!826 = !DILocation(line: 419, column: 41, scope: !820)
!827 = !DILocation(line: 419, column: 17, scope: !820)
!828 = !DILocation(line: 419, column: 23, scope: !820)
!829 = !DILocation(line: 419, column: 16, scope: !820)
!830 = !DILocation(line: 421, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !758, file: !3, line: 421, column: 9)
!832 = !DILocation(line: 421, column: 32, scope: !831)
!833 = !DILocation(line: 421, column: 22, scope: !831)
!834 = !DILocation(line: 421, column: 9, scope: !758)
!835 = !DILocation(line: 421, column: 43, scope: !831)
!836 = !DILocation(line: 424, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !758, file: !3, line: 424, column: 9)
!838 = !DILocation(line: 424, column: 28, scope: !837)
!839 = !DILocation(line: 424, column: 18, scope: !837)
!840 = !DILocation(line: 424, column: 9, scope: !758)
!841 = !DILocation(line: 424, column: 39, scope: !837)
!842 = !DILocation(line: 427, column: 18, scope: !758)
!843 = !DILocation(line: 427, column: 36, scope: !758)
!844 = !DILocation(line: 427, column: 27, scope: !758)
!845 = !DILocation(line: 427, column: 16, scope: !758)
!846 = !DILocation(line: 429, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !758, file: !3, line: 429, column: 9)
!848 = !DILocation(line: 429, column: 9, scope: !758)
!849 = !DILocation(line: 429, column: 29, scope: !847)
!850 = !DILocation(line: 429, column: 19, scope: !847)
!851 = !DILocation(line: 429, column: 27, scope: !847)
!852 = !DILocation(line: 429, column: 18, scope: !847)
!853 = !DILocation(line: 430, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !758, file: !3, line: 430, column: 9)
!855 = !DILocation(line: 430, column: 9, scope: !758)
!856 = !DILocation(line: 430, column: 27, scope: !854)
!857 = !DILocation(line: 430, column: 18, scope: !854)
!858 = !DILocation(line: 430, column: 25, scope: !854)
!859 = !DILocation(line: 430, column: 17, scope: !854)
!860 = !DILocation(line: 432, column: 5, scope: !758)
!861 = !DILocation(line: 433, column: 1, scope: !758)
!862 = distinct !DISubprogram(name: "overMaxmemoryAfterAlloc", scope: !3, file: !3, line: 438, type: !863, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!863 = !DISubroutineType(types: !864)
!864 = !{!74, !241}
!865 = !DILocalVariable(name: "moremem", arg: 1, scope: !862, file: !3, line: 438, type: !241)
!866 = !DILocation(line: 438, column: 36, scope: !862)
!867 = !DILocation(line: 439, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 439, column: 9)
!869 = !DILocation(line: 439, column: 10, scope: !868)
!870 = !DILocation(line: 439, column: 9, scope: !862)
!871 = !DILocation(line: 439, column: 28, scope: !868)
!872 = !DILocalVariable(name: "mem_used", scope: !862, file: !3, line: 442, type: !241)
!873 = !DILocation(line: 442, column: 12, scope: !862)
!874 = !DILocation(line: 442, column: 23, scope: !862)
!875 = !DILocation(line: 443, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !862, file: !3, line: 443, column: 9)
!877 = !DILocation(line: 443, column: 20, scope: !876)
!878 = !DILocation(line: 443, column: 18, scope: !876)
!879 = !DILocation(line: 443, column: 38, scope: !876)
!880 = !DILocation(line: 443, column: 28, scope: !876)
!881 = !DILocation(line: 443, column: 9, scope: !862)
!882 = !DILocation(line: 443, column: 49, scope: !876)
!883 = !DILocalVariable(name: "overhead", scope: !862, file: !3, line: 445, type: !241)
!884 = !DILocation(line: 445, column: 12, scope: !862)
!885 = !DILocation(line: 445, column: 23, scope: !862)
!886 = !DILocation(line: 446, column: 17, scope: !862)
!887 = !DILocation(line: 446, column: 28, scope: !862)
!888 = !DILocation(line: 446, column: 26, scope: !862)
!889 = !DILocation(line: 446, column: 16, scope: !862)
!890 = !DILocation(line: 446, column: 40, scope: !862)
!891 = !DILocation(line: 446, column: 51, scope: !862)
!892 = !DILocation(line: 446, column: 49, scope: !862)
!893 = !DILocation(line: 446, column: 14, scope: !862)
!894 = !DILocation(line: 447, column: 12, scope: !862)
!895 = !DILocation(line: 447, column: 23, scope: !862)
!896 = !DILocation(line: 447, column: 21, scope: !862)
!897 = !DILocation(line: 447, column: 40, scope: !862)
!898 = !DILocation(line: 447, column: 31, scope: !862)
!899 = !DILocation(line: 447, column: 5, scope: !862)
!900 = !DILocation(line: 448, column: 1, scope: !862)
!901 = distinct !DISubprogram(name: "startEvictionTimeProc", scope: !3, file: !3, line: 469, type: !162, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !75)
!902 = !DILocation(line: 470, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !901, file: !3, line: 470, column: 9)
!904 = !DILocation(line: 470, column: 9, scope: !901)
!905 = !DILocation(line: 471, column: 31, scope: !906)
!906 = distinct !DILexicalBlock(scope: !903, file: !3, line: 470, column: 33)
!907 = !DILocation(line: 472, column: 34, scope: !906)
!908 = !DILocation(line: 472, column: 9, scope: !906)
!909 = !DILocation(line: 474, column: 5, scope: !906)
!910 = !DILocation(line: 475, column: 1, scope: !901)
!911 = distinct !DISubprogram(name: "evictionTimeProc", scope: !3, file: !3, line: 455, type: !912, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!912 = !DISubroutineType(types: !913)
!913 = !{!74, !914, !19, !17}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !916, line: 99, size: 640, elements: !917)
!916 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!917 = !{!918, !919, !920, !921, !934, !941, !963, !964, !965, !970, !971}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !915, file: !916, line: 100, baseType: !74, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !915, file: !916, line: 101, baseType: !74, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !915, file: !916, line: 102, baseType: !19, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !915, file: !916, line: 103, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !916, line: 77, baseType: !924)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !916, line: 72, size: 256, elements: !925)
!925 = !{!926, !927, !932, !933}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !924, file: !916, line: 73, baseType: !74, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !924, file: !916, line: 74, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !916, line: 66, baseType: !930)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !914, !74, !17, !74}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !924, file: !916, line: 75, baseType: !928, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !924, file: !916, line: 76, baseType: !17, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !915, file: !916, line: 104, baseType: !935, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !916, line: 96, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !916, line: 93, size: 64, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !937, file: !916, line: 94, baseType: !74, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !937, file: !916, line: 95, baseType: !74, size: 32, offset: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !915, file: !916, line: 105, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !916, line: 90, baseType: !944)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !916, line: 80, size: 512, elements: !945)
!945 = !{!946, !947, !950, !953, !958, !959, !961, !962}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !944, file: !916, line: 81, baseType: !19, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !944, file: !916, line: 82, baseType: !948, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !949, line: 22, baseType: !61)
!949 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!950 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !944, file: !916, line: 83, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !916, line: 67, baseType: !912)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !944, file: !916, line: 84, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !916, line: 68, baseType: !956)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !914, !17}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !944, file: !916, line: 85, baseType: !17, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !944, file: !916, line: 86, baseType: !960, size: 64, offset: 320)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !944, file: !916, line: 87, baseType: !960, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !944, file: !916, line: 88, baseType: !74, size: 32, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !915, file: !916, line: 106, baseType: !74, size: 32, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !915, file: !916, line: 107, baseType: !17, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !915, file: !916, line: 108, baseType: !966, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !916, line: 69, baseType: !968)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !914}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !915, file: !916, line: 109, baseType: !966, size: 64, offset: 512)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !916, line: 110, baseType: !74, size: 32, offset: 576)
!972 = !DILocalVariable(name: "eventLoop", arg: 1, scope: !911, file: !3, line: 456, type: !914)
!973 = !DILocation(line: 456, column: 29, scope: !911)
!974 = !DILocalVariable(name: "id", arg: 2, scope: !911, file: !3, line: 456, type: !19)
!975 = !DILocation(line: 456, column: 50, scope: !911)
!976 = !DILocalVariable(name: "clientData", arg: 3, scope: !911, file: !3, line: 456, type: !17)
!977 = !DILocation(line: 456, column: 60, scope: !911)
!978 = !DILocation(line: 457, column: 5, scope: !911)
!979 = !DILocation(line: 458, column: 5, scope: !911)
!980 = !DILocation(line: 459, column: 5, scope: !911)
!981 = !DILocation(line: 461, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !911, file: !3, line: 461, column: 9)
!983 = !DILocation(line: 461, column: 28, scope: !982)
!984 = !DILocation(line: 461, column: 9, scope: !911)
!985 = !DILocation(line: 461, column: 46, scope: !982)
!986 = !DILocation(line: 465, column: 27, scope: !911)
!987 = !DILocation(line: 466, column: 5, scope: !911)
!988 = !DILocation(line: 467, column: 1, scope: !911)
!989 = !DILocation(line: 543, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !71, file: !3, line: 543, column: 9)
!991 = !DILocation(line: 543, column: 9, scope: !71)
!992 = !DILocation(line: 543, column: 38, scope: !990)
!993 = !DILocalVariable(name: "keys_freed", scope: !71, file: !3, line: 545, type: !74)
!994 = !DILocation(line: 545, column: 9, scope: !71)
!995 = !DILocalVariable(name: "mem_reported", scope: !71, file: !3, line: 546, type: !241)
!996 = !DILocation(line: 546, column: 12, scope: !71)
!997 = !DILocalVariable(name: "mem_tofree", scope: !71, file: !3, line: 546, type: !241)
!998 = !DILocation(line: 546, column: 26, scope: !71)
!999 = !DILocalVariable(name: "mem_freed", scope: !71, file: !3, line: 547, type: !19)
!1000 = !DILocation(line: 547, column: 15, scope: !71)
!1001 = !DILocalVariable(name: "latency", scope: !71, file: !3, line: 548, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !125, line: 64, baseType: !19)
!1003 = !DILocation(line: 548, column: 14, scope: !71)
!1004 = !DILocalVariable(name: "eviction_latency", scope: !71, file: !3, line: 548, type: !1002)
!1005 = !DILocation(line: 548, column: 23, scope: !71)
!1006 = !DILocalVariable(name: "delta", scope: !71, file: !3, line: 549, type: !19)
!1007 = !DILocation(line: 549, column: 15, scope: !71)
!1008 = !DILocalVariable(name: "slaves", scope: !71, file: !3, line: 550, type: !74)
!1009 = !DILocation(line: 550, column: 9, scope: !71)
!1010 = !DILocation(line: 550, column: 18, scope: !71)
!1011 = !DILocalVariable(name: "result", scope: !71, file: !3, line: 551, type: !74)
!1012 = !DILocation(line: 551, column: 9, scope: !71)
!1013 = !DILocation(line: 553, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !71, file: !3, line: 553, column: 9)
!1015 = !DILocation(line: 553, column: 64, scope: !1014)
!1016 = !DILocation(line: 553, column: 9, scope: !71)
!1017 = !DILocation(line: 554, column: 16, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 553, column: 73)
!1019 = !DILocation(line: 555, column: 9, scope: !1018)
!1020 = !DILocation(line: 558, column: 16, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !71, file: !3, line: 558, column: 9)
!1022 = !DILocation(line: 558, column: 33, scope: !1021)
!1023 = !DILocation(line: 558, column: 9, scope: !71)
!1024 = !DILocation(line: 559, column: 16, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 558, column: 59)
!1026 = !DILocation(line: 560, column: 9, scope: !1025)
!1027 = !DILocalVariable(name: "eviction_time_limit_us", scope: !71, file: !3, line: 563, type: !63)
!1028 = !DILocation(line: 563, column: 19, scope: !71)
!1029 = !DILocation(line: 563, column: 44, scope: !71)
!1030 = !DILocation(line: 565, column: 15, scope: !71)
!1031 = !DILocation(line: 567, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !71, file: !3, line: 567, column: 5)
!1033 = !DILocation(line: 567, column: 5, scope: !71)
!1034 = !DILocation(line: 567, column: 5, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 567, column: 5)
!1036 = !DILocation(line: 567, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 567, column: 5)
!1038 = !DILocalVariable(name: "evictionTimer", scope: !71, file: !3, line: 569, type: !948)
!1039 = !DILocation(line: 569, column: 14, scope: !71)
!1040 = !DILocation(line: 570, column: 5, scope: !71)
!1041 = !DILocalVariable(name: "prev_core_propagates", scope: !71, file: !3, line: 574, type: !74)
!1042 = !DILocation(line: 574, column: 9, scope: !71)
!1043 = !DILocation(line: 574, column: 39, scope: !71)
!1044 = !DILocation(line: 575, column: 5, scope: !71)
!1045 = !DILocation(line: 576, column: 28, scope: !71)
!1046 = !DILocation(line: 577, column: 31, scope: !71)
!1047 = !DILocation(line: 579, column: 5, scope: !71)
!1048 = !DILocation(line: 579, column: 12, scope: !71)
!1049 = !DILocation(line: 579, column: 35, scope: !71)
!1050 = !DILocation(line: 579, column: 22, scope: !71)
!1051 = !DILocalVariable(name: "j", scope: !1052, file: !3, line: 580, type: !74)
!1052 = distinct !DILexicalBlock(scope: !71, file: !3, line: 579, column: 47)
!1053 = !DILocation(line: 580, column: 13, scope: !1052)
!1054 = !DILocalVariable(name: "k", scope: !1052, file: !3, line: 580, type: !74)
!1055 = !DILocation(line: 580, column: 16, scope: !1052)
!1056 = !DILocalVariable(name: "i", scope: !1052, file: !3, line: 580, type: !74)
!1057 = !DILocation(line: 580, column: 19, scope: !1052)
!1058 = !DILocalVariable(name: "bestkey", scope: !1052, file: !3, line: 582, type: !84)
!1059 = !DILocation(line: 582, column: 13, scope: !1052)
!1060 = !DILocalVariable(name: "bestdbid", scope: !1052, file: !3, line: 583, type: !74)
!1061 = !DILocation(line: 583, column: 13, scope: !1052)
!1062 = !DILocalVariable(name: "db", scope: !1052, file: !3, line: 584, type: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !125, line: 933, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !125, line: 922, size: 640, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1104}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1065, file: !125, line: 923, baseType: !207, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1065, file: !125, line: 924, baseType: !207, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !1065, file: !125, line: 925, baseType: !207, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !1065, file: !125, line: 926, baseType: !207, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !1065, file: !125, line: 927, baseType: !207, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1065, file: !125, line: 928, baseType: !74, size: 32, offset: 320)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !1065, file: !125, line: 929, baseType: !19, size: 64, offset: 384)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !1065, file: !125, line: 930, baseType: !63, size: 64, offset: 448)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !1065, file: !125, line: 931, baseType: !1076, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !1078, line: 54, baseType: !1079)
!1078 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !1078, line: 47, size: 384, elements: !1080)
!1080 = !{!1081, !1090, !1091, !1095, !1099, !1103}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1079, file: !1078, line: 48, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !1078, line: 40, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !1078, line: 36, size: 192, elements: !1085)
!1085 = !{!1086, !1088, !1089}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1084, file: !1078, line: 37, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !1078, line: 38, baseType: !1087, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1084, file: !1078, line: 39, baseType: !17, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1079, file: !1078, line: 49, baseType: !1082, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !1079, file: !1078, line: 50, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!17, !17}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1079, file: !1078, line: 51, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !17}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1079, file: !1078, line: 52, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!74, !17, !17}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1079, file: !1078, line: 53, baseType: !63, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !1065, file: !125, line: 932, baseType: !1105, size: 64, offset: 576)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !125, line: 917, baseType: !1107)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !125, line: 917, flags: DIFlagFwdDecl)
!1108 = !DILocation(line: 584, column: 18, scope: !1052)
!1109 = !DILocalVariable(name: "dict", scope: !1052, file: !3, line: 585, type: !207)
!1110 = !DILocation(line: 585, column: 15, scope: !1052)
!1111 = !DILocalVariable(name: "de", scope: !1052, file: !3, line: 586, type: !250)
!1112 = !DILocation(line: 586, column: 20, scope: !1052)
!1113 = !DILocation(line: 588, column: 20, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 588, column: 13)
!1115 = !DILocation(line: 588, column: 37, scope: !1114)
!1116 = !DILocation(line: 588, column: 79, scope: !1114)
!1117 = !DILocation(line: 589, column: 20, scope: !1114)
!1118 = !DILocation(line: 589, column: 37, scope: !1114)
!1119 = !DILocation(line: 588, column: 13, scope: !1052)
!1120 = !DILocalVariable(name: "pool", scope: !1121, file: !3, line: 591, type: !78)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 590, column: 9)
!1122 = !DILocation(line: 591, column: 39, scope: !1121)
!1123 = !DILocation(line: 591, column: 46, scope: !1121)
!1124 = !DILocation(line: 593, column: 13, scope: !1121)
!1125 = !DILocation(line: 593, column: 20, scope: !1121)
!1126 = !DILocation(line: 593, column: 28, scope: !1121)
!1127 = !DILocalVariable(name: "total_keys", scope: !1128, file: !3, line: 594, type: !63)
!1128 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 593, column: 37)
!1129 = !DILocation(line: 594, column: 31, scope: !1128)
!1130 = !DILocalVariable(name: "keys", scope: !1128, file: !3, line: 594, type: !63)
!1131 = !DILocation(line: 594, column: 47, scope: !1128)
!1132 = !DILocation(line: 599, column: 24, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 599, column: 17)
!1134 = !DILocation(line: 599, column: 22, scope: !1133)
!1135 = !DILocation(line: 599, column: 29, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 599, column: 17)
!1137 = !DILocation(line: 599, column: 40, scope: !1136)
!1138 = !DILocation(line: 599, column: 31, scope: !1136)
!1139 = !DILocation(line: 599, column: 17, scope: !1133)
!1140 = !DILocation(line: 600, column: 33, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 599, column: 52)
!1142 = !DILocation(line: 600, column: 36, scope: !1141)
!1143 = !DILocation(line: 600, column: 35, scope: !1141)
!1144 = !DILocation(line: 600, column: 24, scope: !1141)
!1145 = !DILocation(line: 601, column: 36, scope: !1141)
!1146 = !DILocation(line: 601, column: 53, scope: !1141)
!1147 = !DILocation(line: 601, column: 28, scope: !1141)
!1148 = !DILocation(line: 602, column: 29, scope: !1141)
!1149 = !DILocation(line: 602, column: 33, scope: !1141)
!1150 = !DILocation(line: 602, column: 40, scope: !1141)
!1151 = !DILocation(line: 602, column: 44, scope: !1141)
!1152 = !DILocation(line: 601, column: 26, scope: !1141)
!1153 = !DILocation(line: 603, column: 33, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 603, column: 25)
!1155 = !DILocation(line: 603, column: 31, scope: !1154)
!1156 = !DILocation(line: 603, column: 49, scope: !1154)
!1157 = !DILocation(line: 603, column: 25, scope: !1141)
!1158 = !DILocation(line: 604, column: 46, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 603, column: 55)
!1160 = !DILocation(line: 604, column: 49, scope: !1159)
!1161 = !DILocation(line: 604, column: 55, scope: !1159)
!1162 = !DILocation(line: 604, column: 59, scope: !1159)
!1163 = !DILocation(line: 604, column: 65, scope: !1159)
!1164 = !DILocation(line: 604, column: 25, scope: !1159)
!1165 = !DILocation(line: 605, column: 39, scope: !1159)
!1166 = !DILocation(line: 605, column: 36, scope: !1159)
!1167 = !DILocation(line: 606, column: 21, scope: !1159)
!1168 = !DILocation(line: 607, column: 17, scope: !1141)
!1169 = !DILocation(line: 599, column: 48, scope: !1136)
!1170 = !DILocation(line: 599, column: 17, scope: !1136)
!1171 = distinct !{!1171, !1139, !1172, !200}
!1172 = !DILocation(line: 607, column: 17, scope: !1133)
!1173 = !DILocation(line: 608, column: 22, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 608, column: 21)
!1175 = !DILocation(line: 608, column: 21, scope: !1128)
!1176 = !DILocation(line: 608, column: 34, scope: !1174)
!1177 = !DILocation(line: 611, column: 24, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 611, column: 17)
!1179 = !DILocation(line: 611, column: 22, scope: !1178)
!1180 = !DILocation(line: 611, column: 41, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 611, column: 17)
!1182 = !DILocation(line: 611, column: 43, scope: !1181)
!1183 = !DILocation(line: 611, column: 17, scope: !1178)
!1184 = !DILocation(line: 612, column: 25, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 612, column: 25)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 611, column: 54)
!1187 = !DILocation(line: 612, column: 30, scope: !1185)
!1188 = !DILocation(line: 612, column: 33, scope: !1185)
!1189 = !DILocation(line: 612, column: 37, scope: !1185)
!1190 = !DILocation(line: 612, column: 25, scope: !1186)
!1191 = !DILocation(line: 612, column: 46, scope: !1185)
!1192 = !DILocation(line: 613, column: 32, scope: !1186)
!1193 = !DILocation(line: 613, column: 37, scope: !1186)
!1194 = !DILocation(line: 613, column: 40, scope: !1186)
!1195 = !DILocation(line: 613, column: 30, scope: !1186)
!1196 = !DILocation(line: 615, column: 32, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 615, column: 25)
!1198 = !DILocation(line: 615, column: 49, scope: !1197)
!1199 = !DILocation(line: 615, column: 25, scope: !1186)
!1200 = !DILocation(line: 616, column: 46, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 615, column: 75)
!1202 = !DILocation(line: 616, column: 49, scope: !1201)
!1203 = !DILocation(line: 616, column: 39, scope: !1201)
!1204 = !DILocation(line: 616, column: 59, scope: !1201)
!1205 = !DILocation(line: 617, column: 29, scope: !1201)
!1206 = !DILocation(line: 617, column: 34, scope: !1201)
!1207 = !DILocation(line: 617, column: 37, scope: !1201)
!1208 = !DILocation(line: 616, column: 30, scope: !1201)
!1209 = !DILocation(line: 616, column: 28, scope: !1201)
!1210 = !DILocation(line: 618, column: 21, scope: !1201)
!1211 = !DILocation(line: 619, column: 46, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 618, column: 28)
!1213 = !DILocation(line: 619, column: 49, scope: !1212)
!1214 = !DILocation(line: 619, column: 39, scope: !1212)
!1215 = !DILocation(line: 619, column: 59, scope: !1212)
!1216 = !DILocation(line: 620, column: 29, scope: !1212)
!1217 = !DILocation(line: 620, column: 34, scope: !1212)
!1218 = !DILocation(line: 620, column: 37, scope: !1212)
!1219 = !DILocation(line: 619, column: 30, scope: !1212)
!1220 = !DILocation(line: 619, column: 28, scope: !1212)
!1221 = !DILocation(line: 624, column: 25, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 624, column: 25)
!1223 = !DILocation(line: 624, column: 30, scope: !1222)
!1224 = !DILocation(line: 624, column: 33, scope: !1222)
!1225 = !DILocation(line: 624, column: 40, scope: !1222)
!1226 = !DILocation(line: 624, column: 45, scope: !1222)
!1227 = !DILocation(line: 624, column: 48, scope: !1222)
!1228 = !DILocation(line: 624, column: 37, scope: !1222)
!1229 = !DILocation(line: 624, column: 25, scope: !1186)
!1230 = !DILocation(line: 625, column: 33, scope: !1222)
!1231 = !DILocation(line: 625, column: 38, scope: !1222)
!1232 = !DILocation(line: 625, column: 41, scope: !1222)
!1233 = !DILocation(line: 625, column: 25, scope: !1222)
!1234 = !DILocation(line: 626, column: 21, scope: !1186)
!1235 = !DILocation(line: 626, column: 26, scope: !1186)
!1236 = !DILocation(line: 626, column: 29, scope: !1186)
!1237 = !DILocation(line: 626, column: 33, scope: !1186)
!1238 = !DILocation(line: 627, column: 21, scope: !1186)
!1239 = !DILocation(line: 627, column: 26, scope: !1186)
!1240 = !DILocation(line: 627, column: 29, scope: !1186)
!1241 = !DILocation(line: 627, column: 34, scope: !1186)
!1242 = !DILocation(line: 631, column: 25, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 631, column: 25)
!1244 = !DILocation(line: 631, column: 25, scope: !1186)
!1245 = !DILocation(line: 632, column: 35, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 631, column: 29)
!1247 = !DILocation(line: 632, column: 33, scope: !1246)
!1248 = !DILocation(line: 633, column: 25, scope: !1246)
!1249 = !DILocation(line: 637, column: 17, scope: !1186)
!1250 = !DILocation(line: 611, column: 50, scope: !1181)
!1251 = !DILocation(line: 611, column: 17, scope: !1181)
!1252 = distinct !{!1252, !1183, !1253, !200}
!1253 = !DILocation(line: 637, column: 17, scope: !1178)
!1254 = distinct !{!1254, !1124, !1255, !200}
!1255 = !DILocation(line: 638, column: 13, scope: !1121)
!1256 = !DILocation(line: 639, column: 9, scope: !1121)
!1257 = !DILocation(line: 642, column: 25, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 642, column: 18)
!1259 = !DILocation(line: 642, column: 42, scope: !1258)
!1260 = !DILocation(line: 642, column: 70, scope: !1258)
!1261 = !DILocation(line: 643, column: 25, scope: !1258)
!1262 = !DILocation(line: 643, column: 42, scope: !1258)
!1263 = !DILocation(line: 642, column: 18, scope: !1114)
!1264 = !DILocation(line: 648, column: 20, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 648, column: 13)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 644, column: 9)
!1267 = !DILocation(line: 648, column: 18, scope: !1265)
!1268 = !DILocation(line: 648, column: 25, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 648, column: 13)
!1270 = !DILocation(line: 648, column: 36, scope: !1269)
!1271 = !DILocation(line: 648, column: 27, scope: !1269)
!1272 = !DILocation(line: 648, column: 13, scope: !1265)
!1273 = !DILocation(line: 649, column: 22, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 648, column: 48)
!1275 = !DILocation(line: 649, column: 42, scope: !1274)
!1276 = !DILocation(line: 649, column: 33, scope: !1274)
!1277 = !DILocation(line: 649, column: 19, scope: !1274)
!1278 = !DILocation(line: 650, column: 29, scope: !1274)
!1279 = !DILocation(line: 650, column: 32, scope: !1274)
!1280 = !DILocation(line: 650, column: 31, scope: !1274)
!1281 = !DILocation(line: 650, column: 20, scope: !1274)
!1282 = !DILocation(line: 651, column: 32, scope: !1274)
!1283 = !DILocation(line: 651, column: 49, scope: !1274)
!1284 = !DILocation(line: 651, column: 24, scope: !1274)
!1285 = !DILocation(line: 652, column: 25, scope: !1274)
!1286 = !DILocation(line: 652, column: 29, scope: !1274)
!1287 = !DILocation(line: 652, column: 36, scope: !1274)
!1288 = !DILocation(line: 652, column: 40, scope: !1274)
!1289 = !DILocation(line: 651, column: 22, scope: !1274)
!1290 = !DILocation(line: 653, column: 21, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 653, column: 21)
!1292 = !DILocation(line: 653, column: 36, scope: !1291)
!1293 = !DILocation(line: 653, column: 21, scope: !1274)
!1294 = !DILocation(line: 654, column: 43, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 653, column: 42)
!1296 = !DILocation(line: 654, column: 26, scope: !1295)
!1297 = !DILocation(line: 654, column: 24, scope: !1295)
!1298 = !DILocation(line: 655, column: 31, scope: !1295)
!1299 = !DILocation(line: 655, column: 29, scope: !1295)
!1300 = !DILocation(line: 656, column: 32, scope: !1295)
!1301 = !DILocation(line: 656, column: 30, scope: !1295)
!1302 = !DILocation(line: 657, column: 21, scope: !1295)
!1303 = !DILocation(line: 659, column: 13, scope: !1274)
!1304 = !DILocation(line: 648, column: 44, scope: !1269)
!1305 = !DILocation(line: 648, column: 13, scope: !1269)
!1306 = distinct !{!1306, !1272, !1307, !200}
!1307 = !DILocation(line: 659, column: 13, scope: !1265)
!1308 = !DILocation(line: 660, column: 9, scope: !1266)
!1309 = !DILocation(line: 663, column: 13, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 663, column: 13)
!1311 = !DILocation(line: 663, column: 13, scope: !1052)
!1312 = !DILocation(line: 664, column: 25, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 663, column: 22)
!1314 = !DILocation(line: 664, column: 28, scope: !1313)
!1315 = !DILocation(line: 664, column: 27, scope: !1313)
!1316 = !DILocation(line: 664, column: 16, scope: !1313)
!1317 = !DILocalVariable(name: "keyobj", scope: !1313, file: !3, line: 665, type: !123)
!1318 = !DILocation(line: 665, column: 19, scope: !1313)
!1319 = !DILocation(line: 665, column: 47, scope: !1313)
!1320 = !DILocation(line: 665, column: 62, scope: !1313)
!1321 = !DILocation(line: 665, column: 55, scope: !1313)
!1322 = !DILocation(line: 665, column: 28, scope: !1313)
!1323 = !DILocation(line: 676, column: 33, scope: !1313)
!1324 = !DILocation(line: 676, column: 19, scope: !1313)
!1325 = !DILocation(line: 677, column: 13, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 677, column: 13)
!1327 = !DILocation(line: 677, column: 13, scope: !1313)
!1328 = !DILocation(line: 677, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 677, column: 13)
!1330 = !DILocation(line: 677, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 677, column: 13)
!1332 = !DILocation(line: 678, column: 24, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 678, column: 17)
!1334 = !DILocation(line: 678, column: 17, scope: !1333)
!1335 = !DILocation(line: 678, column: 17, scope: !1313)
!1336 = !DILocation(line: 679, column: 31, scope: !1333)
!1337 = !DILocation(line: 679, column: 34, scope: !1333)
!1338 = !DILocation(line: 679, column: 17, scope: !1333)
!1339 = !DILocation(line: 681, column: 30, scope: !1333)
!1340 = !DILocation(line: 681, column: 33, scope: !1333)
!1341 = !DILocation(line: 681, column: 17, scope: !1333)
!1342 = !DILocation(line: 682, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 682, column: 13)
!1344 = !DILocation(line: 682, column: 13, scope: !1313)
!1345 = !DILocation(line: 682, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 682, column: 13)
!1347 = !DILocation(line: 683, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 683, column: 13)
!1349 = !DILocation(line: 683, column: 13, scope: !1313)
!1350 = !DILocation(line: 684, column: 34, scope: !1313)
!1351 = !DILocation(line: 684, column: 19, scope: !1313)
!1352 = !DILocation(line: 685, column: 26, scope: !1313)
!1353 = !DILocation(line: 685, column: 23, scope: !1313)
!1354 = !DILocation(line: 686, column: 36, scope: !1313)
!1355 = !DILocation(line: 687, column: 36, scope: !1313)
!1356 = !DILocation(line: 687, column: 39, scope: !1313)
!1357 = !DILocation(line: 687, column: 13, scope: !1313)
!1358 = !DILocation(line: 689, column: 17, scope: !1313)
!1359 = !DILocation(line: 689, column: 25, scope: !1313)
!1360 = !DILocation(line: 689, column: 29, scope: !1313)
!1361 = !DILocation(line: 688, column: 13, scope: !1313)
!1362 = !DILocation(line: 690, column: 31, scope: !1313)
!1363 = !DILocation(line: 690, column: 34, scope: !1313)
!1364 = !DILocation(line: 690, column: 48, scope: !1313)
!1365 = !DILocation(line: 690, column: 13, scope: !1313)
!1366 = !DILocation(line: 691, column: 26, scope: !1313)
!1367 = !DILocation(line: 691, column: 13, scope: !1313)
!1368 = !DILocation(line: 692, column: 23, scope: !1313)
!1369 = !DILocation(line: 694, column: 17, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 694, column: 17)
!1371 = !DILocation(line: 694, column: 28, scope: !1370)
!1372 = !DILocation(line: 694, column: 33, scope: !1370)
!1373 = !DILocation(line: 694, column: 17, scope: !1313)
!1374 = !DILocation(line: 699, column: 21, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 699, column: 21)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 694, column: 39)
!1377 = !DILocation(line: 699, column: 21, scope: !1376)
!1378 = !DILocation(line: 699, column: 29, scope: !1375)
!1379 = !DILocation(line: 708, column: 28, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 708, column: 21)
!1381 = !DILocation(line: 708, column: 21, scope: !1380)
!1382 = !DILocation(line: 708, column: 21, scope: !1376)
!1383 = !DILocation(line: 709, column: 25, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 709, column: 25)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 708, column: 52)
!1386 = !DILocation(line: 709, column: 64, scope: !1384)
!1387 = !DILocation(line: 709, column: 25, scope: !1385)
!1388 = !DILocation(line: 710, column: 25, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 709, column: 73)
!1390 = !DILocation(line: 712, column: 17, scope: !1385)
!1391 = !DILocation(line: 717, column: 31, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 717, column: 21)
!1393 = !DILocation(line: 717, column: 21, scope: !1392)
!1394 = !DILocation(line: 717, column: 48, scope: !1392)
!1395 = !DILocation(line: 717, column: 46, scope: !1392)
!1396 = !DILocation(line: 717, column: 21, scope: !1376)
!1397 = !DILocation(line: 719, column: 21, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 717, column: 72)
!1399 = !DILocation(line: 720, column: 21, scope: !1398)
!1400 = !DILocation(line: 722, column: 13, scope: !1376)
!1401 = !DILocation(line: 723, column: 9, scope: !1313)
!1402 = !DILocation(line: 724, column: 13, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 723, column: 16)
!1404 = distinct !{!1404, !1047, !1405, !200}
!1405 = !DILocation(line: 726, column: 5, scope: !71)
!1406 = !DILocation(line: 728, column: 15, scope: !71)
!1407 = !DILocation(line: 728, column: 14, scope: !71)
!1408 = !DILocation(line: 728, column: 12, scope: !71)
!1409 = !DILocation(line: 728, column: 5, scope: !71)
!1410 = !DILabel(scope: !71, name: "cant_free", file: !3, line: 730)
!1411 = !DILocation(line: 730, column: 1, scope: !71)
!1412 = !DILocation(line: 731, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !71, file: !3, line: 731, column: 9)
!1414 = !DILocation(line: 731, column: 16, scope: !1413)
!1415 = !DILocation(line: 731, column: 9, scope: !71)
!1416 = !DILocalVariable(name: "lazyfree_latency", scope: !1417, file: !3, line: 735, type: !1002)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 731, column: 31)
!1418 = !DILocation(line: 735, column: 18, scope: !1417)
!1419 = !DILocation(line: 736, column: 9, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 736, column: 9)
!1421 = !DILocation(line: 736, column: 9, scope: !1417)
!1422 = !DILocation(line: 736, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 736, column: 9)
!1424 = !DILocation(line: 736, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 736, column: 9)
!1426 = !DILocation(line: 737, column: 9, scope: !1417)
!1427 = !DILocation(line: 737, column: 16, scope: !1417)
!1428 = !DILocation(line: 737, column: 52, scope: !1417)
!1429 = !DILocation(line: 738, column: 25, scope: !1417)
!1430 = !DILocation(line: 738, column: 15, scope: !1417)
!1431 = !DILocation(line: 738, column: 42, scope: !1417)
!1432 = !DILocation(line: 738, column: 40, scope: !1417)
!1433 = !DILocation(line: 0, scope: !1417)
!1434 = !DILocation(line: 739, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 739, column: 17)
!1436 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 738, column: 66)
!1437 = !DILocation(line: 739, column: 56, scope: !1435)
!1438 = !DILocation(line: 739, column: 17, scope: !1436)
!1439 = !DILocation(line: 740, column: 24, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 739, column: 65)
!1441 = !DILocation(line: 741, column: 17, scope: !1440)
!1442 = !DILocation(line: 743, column: 20, scope: !1436)
!1443 = !DILocation(line: 743, column: 43, scope: !1436)
!1444 = !DILocation(line: 743, column: 52, scope: !1436)
!1445 = !DILocation(line: 743, column: 13, scope: !1436)
!1446 = distinct !{!1446, !1426, !1447, !200}
!1447 = !DILocation(line: 744, column: 9, scope: !1417)
!1448 = !DILocation(line: 745, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 745, column: 9)
!1450 = !DILocation(line: 745, column: 9, scope: !1417)
!1451 = !DILocation(line: 745, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 745, column: 9)
!1453 = !DILocation(line: 746, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 746, column: 9)
!1455 = !DILocation(line: 746, column: 9, scope: !1417)
!1456 = !DILocation(line: 747, column: 5, scope: !1417)
!1457 = !DILocation(line: 749, column: 5, scope: !71)
!1458 = !DILocation(line: 752, column: 5, scope: !71)
!1459 = !DILocation(line: 754, column: 30, scope: !71)
!1460 = !DILocation(line: 754, column: 28, scope: !71)
!1461 = !DILocation(line: 755, column: 31, scope: !71)
!1462 = !DILocation(line: 757, column: 5, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !71, file: !3, line: 757, column: 5)
!1464 = !DILocation(line: 757, column: 5, scope: !71)
!1465 = !DILocation(line: 757, column: 5, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 757, column: 5)
!1467 = !DILocation(line: 758, column: 5, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !71, file: !3, line: 758, column: 5)
!1469 = !DILocation(line: 758, column: 5, scope: !71)
!1470 = !DILabel(scope: !71, name: "update_metrics", file: !3, line: 760)
!1471 = !DILocation(line: 760, column: 1, scope: !71)
!1472 = !DILocation(line: 761, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !71, file: !3, line: 761, column: 9)
!1474 = !DILocation(line: 761, column: 16, scope: !1473)
!1475 = !DILocation(line: 761, column: 33, scope: !1473)
!1476 = !DILocation(line: 761, column: 36, scope: !1473)
!1477 = !DILocation(line: 761, column: 43, scope: !1473)
!1478 = !DILocation(line: 761, column: 9, scope: !71)
!1479 = !DILocation(line: 762, column: 20, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 762, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 761, column: 58)
!1482 = !DILocation(line: 762, column: 53, scope: !1480)
!1483 = !DILocation(line: 762, column: 13, scope: !1481)
!1484 = !DILocation(line: 763, column: 13, scope: !1480)
!1485 = !DILocation(line: 764, column: 5, scope: !1481)
!1486 = !DILocation(line: 764, column: 16, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 764, column: 16)
!1488 = !DILocation(line: 764, column: 23, scope: !1487)
!1489 = !DILocation(line: 764, column: 16, scope: !1473)
!1490 = !DILocation(line: 765, column: 20, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 765, column: 13)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 764, column: 36)
!1493 = !DILocation(line: 765, column: 53, scope: !1491)
!1494 = !DILocation(line: 765, column: 13, scope: !1492)
!1495 = !DILocation(line: 766, column: 74, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 765, column: 59)
!1497 = !DILocation(line: 766, column: 57, scope: !1496)
!1498 = !DILocation(line: 766, column: 54, scope: !1496)
!1499 = !DILocation(line: 767, column: 53, scope: !1496)
!1500 = !DILocation(line: 768, column: 9, scope: !1496)
!1501 = !DILocation(line: 769, column: 5, scope: !1492)
!1502 = !DILocation(line: 770, column: 12, scope: !71)
!1503 = !DILocation(line: 770, column: 5, scope: !71)
!1504 = !DILocation(line: 771, column: 1, scope: !71)
!1505 = distinct !DISubprogram(name: "isSafeToPerformEvictions", scope: !3, file: !3, line: 481, type: !72, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!1506 = !DILocation(line: 484, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 484, column: 9)
!1508 = !DILocation(line: 484, column: 39, scope: !1507)
!1509 = !DILocation(line: 484, column: 49, scope: !1507)
!1510 = !DILocation(line: 484, column: 42, scope: !1507)
!1511 = !DILocation(line: 484, column: 9, scope: !1505)
!1512 = !DILocation(line: 484, column: 58, scope: !1507)
!1513 = !DILocation(line: 488, column: 16, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 488, column: 9)
!1515 = !DILocation(line: 488, column: 9, scope: !1514)
!1516 = !DILocation(line: 488, column: 27, scope: !1514)
!1517 = !DILocation(line: 488, column: 37, scope: !1514)
!1518 = !DILocation(line: 488, column: 30, scope: !1514)
!1519 = !DILocation(line: 488, column: 9, scope: !1505)
!1520 = !DILocation(line: 488, column: 66, scope: !1514)
!1521 = !DILocation(line: 493, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 493, column: 9)
!1523 = !DILocation(line: 493, column: 9, scope: !1505)
!1524 = !DILocation(line: 493, column: 53, scope: !1522)
!1525 = !DILocation(line: 495, column: 5, scope: !1505)
!1526 = !DILocation(line: 496, column: 1, scope: !1505)
!1527 = distinct !DISubprogram(name: "elapsedStart", scope: !949, file: !949, line: 49, type: !1528, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!1531 = !DILocalVariable(name: "start_time", arg: 1, scope: !1527, file: !949, line: 49, type: !1530)
!1532 = !DILocation(line: 49, column: 43, scope: !1527)
!1533 = !DILocation(line: 50, column: 19, scope: !1527)
!1534 = !DILocation(line: 50, column: 6, scope: !1527)
!1535 = !DILocation(line: 50, column: 17, scope: !1527)
!1536 = !DILocation(line: 51, column: 1, scope: !1527)
!1537 = distinct !DISubprogram(name: "elapsedUs", scope: !949, file: !949, line: 53, type: !1538, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!61, !948}
!1540 = !DILocalVariable(name: "start_time", arg: 1, scope: !1537, file: !949, line: 53, type: !948)
!1541 = !DILocation(line: 53, column: 43, scope: !1537)
!1542 = !DILocation(line: 54, column: 12, scope: !1537)
!1543 = !DILocation(line: 54, column: 31, scope: !1537)
!1544 = !DILocation(line: 54, column: 29, scope: !1537)
!1545 = !DILocation(line: 54, column: 5, scope: !1537)
!1546 = distinct !DISubprogram(name: "evictionTimeLimitUs", scope: !3, file: !3, line: 499, type: !641, scopeLine: 499, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !75)
!1547 = !DILocation(line: 500, column: 5, scope: !1546)
!1548 = !DILocation(line: 501, column: 5, scope: !1546)
!1549 = !DILocation(line: 503, column: 16, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 503, column: 9)
!1551 = !DILocation(line: 503, column: 44, scope: !1550)
!1552 = !DILocation(line: 503, column: 9, scope: !1546)
!1553 = !DILocation(line: 505, column: 30, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 503, column: 51)
!1555 = !DILocation(line: 505, column: 23, scope: !1554)
!1556 = !DILocation(line: 505, column: 21, scope: !1554)
!1557 = !DILocation(line: 505, column: 9, scope: !1554)
!1558 = !DILocation(line: 508, column: 16, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 508, column: 9)
!1560 = !DILocation(line: 508, column: 44, scope: !1559)
!1561 = !DILocation(line: 508, column: 9, scope: !1546)
!1562 = !DILocation(line: 510, column: 57, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 508, column: 51)
!1564 = !DILocation(line: 510, column: 50, scope: !1563)
!1565 = !DILocation(line: 510, column: 85, scope: !1563)
!1566 = !DILocation(line: 510, column: 40, scope: !1563)
!1567 = !DILocation(line: 510, column: 38, scope: !1563)
!1568 = !DILocation(line: 510, column: 16, scope: !1563)
!1569 = !DILocation(line: 510, column: 9, scope: !1563)
!1570 = !DILocation(line: 513, column: 5, scope: !1546)
!1571 = !DILocation(line: 514, column: 1, scope: !1546)
