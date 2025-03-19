; ModuleID = 'childinfo.c'
source_filename = "childinfo.c"
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
%struct.child_info_data = type { i64, i64, i64, double, i32 }

@server = external dso_local global %struct.redisServer, align 8
@sendChildInfoGeneric.cow_updated = internal global i64 0, align 8, !dbg !0
@sendChildInfoGeneric.cow_update_cost = internal global i64 0, align 8, !dbg !25
@sendChildInfoGeneric.cow = internal global i64 0, align 8, !dbg !31
@sendChildInfoGeneric.peak_cow = internal global i64 0, align 8, !dbg !33
@sendChildInfoGeneric.update_count = internal global i64 0, align 8, !dbg !35
@sendChildInfoGeneric.sum_cow = internal global i64 0, align 8, !dbg !37
@getMonotonicUs = external dso_local global i64 ()*, align 8
@.str = private unnamed_addr constant [62 x i8] c"Fork CoW for %s: current %zu MB, peak %zu MB, average %llu MB\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Child failed reporting info to parent, exiting. %s\00", align 1
@readChildInfo.buffer = internal global %struct.child_info_data zeroinitializer, align 8, !dbg !40

; Function Attrs: noinline nounwind uwtable
define dso_local void @openChildInfoPipe() #0 !dbg !67 {
entry:
  %call = call i32 @anetPipe(i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), i32 2048, i32 0), !dbg !70
  %cmp = icmp eq i32 %call, -1, !dbg !72
  br i1 %cmp, label %if.then, label %if.else, !dbg !73

if.then:                                          ; preds = %entry
  call void @closeChildInfoPipe(), !dbg !74
  br label %if.end, !dbg !76

if.else:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !77
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !79
}

declare dso_local i32 @anetPipe(i32*, i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @closeChildInfoPipe() #0 !dbg !80 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), align 4, !dbg !81
  %cmp = icmp ne i32 %0, -1, !dbg !83
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !84

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 1), align 4, !dbg !85
  %cmp1 = icmp ne i32 %1, -1, !dbg !86
  br i1 %cmp1, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), align 4, !dbg !88
  %call = call i32 @close(i32 %2), !dbg !90
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 1), align 4, !dbg !91
  %call2 = call i32 @close(i32 %3), !dbg !92
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), align 4, !dbg !93
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 1), align 4, !dbg !94
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !95
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void, !dbg !97
}

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sendChildInfoGeneric(i32 %info_type, i64 %keys, double %progress, i8* %pname) #0 !dbg !2 {
entry:
  %info_type.addr = alloca i32, align 4
  %keys.addr = alloca i64, align 8
  %progress.addr = alloca double, align 8
  %pname.addr = alloca i8*, align 8
  %data = alloca %struct.child_info_data, align 8
  %now = alloca i64, align 8
  %cow_info = alloca i32, align 4
  %wlen = alloca i64, align 8
  store i32 %info_type, i32* %info_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %info_type.addr, metadata !98, metadata !DIExpression()), !dbg !99
  store i64 %keys, i64* %keys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %keys.addr, metadata !100, metadata !DIExpression()), !dbg !101
  store double %progress, double* %progress.addr, align 8
  call void @llvm.dbg.declare(metadata double* %progress.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i8* %pname, i8** %pname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pname.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 1), align 4, !dbg !106
  %cmp = icmp eq i32 %0, -1, !dbg !108
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  br label %if.end41, !dbg !110

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.child_info_data* %data, metadata !111, metadata !DIExpression()), !dbg !112
  %1 = bitcast %struct.child_info_data* %data to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 40, i1 false), !dbg !112
  call void @llvm.dbg.declare(metadata i64* %now, metadata !113, metadata !DIExpression()), !dbg !114
  %2 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !115
  %call = call i64 %2(), !dbg !115
  store i64 %call, i64* %now, align 8, !dbg !114
  %3 = load i32, i32* %info_type.addr, align 4, !dbg !116
  %cmp1 = icmp ne i32 %3, 0, !dbg !118
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !119

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, i64* @sendChildInfoGeneric.cow_updated, align 8, !dbg !120
  %tobool = icmp ne i64 %4, 0, !dbg !120
  br i1 %tobool, label %lor.lhs.false2, label %if.then4, !dbg !121

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i64, i64* %now, align 8, !dbg !122
  %6 = load i64, i64* @sendChildInfoGeneric.cow_updated, align 8, !dbg !123
  %sub = sub i64 %5, %6, !dbg !124
  %7 = load i64, i64* @sendChildInfoGeneric.cow_update_cost, align 8, !dbg !125
  %mul = mul i64 %7, 100, !dbg !126
  %cmp3 = icmp ugt i64 %sub, %mul, !dbg !127
  br i1 %cmp3, label %if.then4, label %if.end26, !dbg !128

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  %call5 = call i64 @zmalloc_get_private_dirty(i64 -1), !dbg !129
  store i64 %call5, i64* @sendChildInfoGeneric.cow, align 8, !dbg !131
  %8 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !132
  %call6 = call i64 %8(), !dbg !132
  store i64 %call6, i64* @sendChildInfoGeneric.cow_updated, align 8, !dbg !133
  %9 = load i64, i64* @sendChildInfoGeneric.cow_updated, align 8, !dbg !134
  %10 = load i64, i64* %now, align 8, !dbg !135
  %sub7 = sub i64 %9, %10, !dbg !136
  store i64 %sub7, i64* @sendChildInfoGeneric.cow_update_cost, align 8, !dbg !137
  %11 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !138
  %12 = load i64, i64* @sendChildInfoGeneric.peak_cow, align 8, !dbg !140
  %cmp8 = icmp ugt i64 %11, %12, !dbg !141
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !142

if.then9:                                         ; preds = %if.then4
  %13 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !143
  store i64 %13, i64* @sendChildInfoGeneric.peak_cow, align 8, !dbg !144
  br label %if.end10, !dbg !145

if.end10:                                         ; preds = %if.then9, %if.then4
  %14 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !146
  %15 = load i64, i64* @sendChildInfoGeneric.sum_cow, align 8, !dbg !147
  %add = add i64 %15, %14, !dbg !147
  store i64 %add, i64* @sendChildInfoGeneric.sum_cow, align 8, !dbg !147
  %16 = load i64, i64* @sendChildInfoGeneric.update_count, align 8, !dbg !148
  %inc = add i64 %16, 1, !dbg !148
  store i64 %inc, i64* @sendChildInfoGeneric.update_count, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i32* %cow_info, metadata !149, metadata !DIExpression()), !dbg !150
  %17 = load i32, i32* %info_type.addr, align 4, !dbg !151
  %cmp11 = icmp ne i32 %17, 0, !dbg !152
  %conv = zext i1 %cmp11 to i32, !dbg !152
  store i32 %conv, i32* %cow_info, align 4, !dbg !150
  %18 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !153
  %tobool12 = icmp ne i64 %18, 0, !dbg !153
  br i1 %tobool12, label %if.then15, label %lor.lhs.false13, !dbg !155

lor.lhs.false13:                                  ; preds = %if.end10
  %19 = load i32, i32* %cow_info, align 4, !dbg !156
  %tobool14 = icmp ne i32 %19, 0, !dbg !156
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !157

if.then15:                                        ; preds = %lor.lhs.false13, %if.end10
  br label %do.body, !dbg !158

do.body:                                          ; preds = %if.then15
  %20 = load i32, i32* %cow_info, align 4, !dbg !160
  %tobool16 = icmp ne i32 %20, 0, !dbg !160
  %21 = zext i1 %tobool16 to i64, !dbg !160
  %cond = select i1 %tobool16, i32 2, i32 1, !dbg !160
  %and = and i32 %cond, 255, !dbg !160
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !160
  %cmp17 = icmp slt i32 %and, %22, !dbg !160
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !163

if.then19:                                        ; preds = %do.body
  br label %do.end, !dbg !160

if.end20:                                         ; preds = %do.body
  %23 = load i32, i32* %cow_info, align 4, !dbg !163
  %tobool21 = icmp ne i32 %23, 0, !dbg !163
  %24 = zext i1 %tobool21 to i64, !dbg !163
  %cond22 = select i1 %tobool21, i32 2, i32 1, !dbg !163
  %25 = load i8*, i8** %pname.addr, align 8, !dbg !163
  %26 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !163
  %shr = lshr i64 %26, 20, !dbg !163
  %27 = load i64, i64* @sendChildInfoGeneric.peak_cow, align 8, !dbg !163
  %shr23 = lshr i64 %27, 20, !dbg !163
  %28 = load i64, i64* @sendChildInfoGeneric.sum_cow, align 8, !dbg !163
  %29 = load i64, i64* @sendChildInfoGeneric.update_count, align 8, !dbg !163
  %div = udiv i64 %28, %29, !dbg !163
  %shr24 = lshr i64 %div, 20, !dbg !163
  call void (i32, i8*, ...) @_serverLog(i32 %cond22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %25, i64 %shr, i64 %shr23, i64 %shr24), !dbg !163
  br label %do.end, !dbg !163

do.end:                                           ; preds = %if.end20, %if.then19
  br label %if.end25, !dbg !164

if.end25:                                         ; preds = %do.end, %lor.lhs.false13
  br label %if.end26, !dbg !165

if.end26:                                         ; preds = %if.end25, %lor.lhs.false2
  %30 = load i32, i32* %info_type.addr, align 4, !dbg !166
  %information_type = getelementptr inbounds %struct.child_info_data, %struct.child_info_data* %data, i32 0, i32 4, !dbg !167
  store i32 %30, i32* %information_type, align 8, !dbg !168
  %31 = load i64, i64* %keys.addr, align 8, !dbg !169
  %keys27 = getelementptr inbounds %struct.child_info_data, %struct.child_info_data* %data, i32 0, i32 0, !dbg !170
  store i64 %31, i64* %keys27, align 8, !dbg !171
  %32 = load i64, i64* @sendChildInfoGeneric.cow, align 8, !dbg !172
  %cow = getelementptr inbounds %struct.child_info_data, %struct.child_info_data* %data, i32 0, i32 1, !dbg !173
  store i64 %32, i64* %cow, align 8, !dbg !174
  %33 = load i64, i64* @sendChildInfoGeneric.cow_updated, align 8, !dbg !175
  %cow_updated = getelementptr inbounds %struct.child_info_data, %struct.child_info_data* %data, i32 0, i32 2, !dbg !176
  store i64 %33, i64* %cow_updated, align 8, !dbg !177
  %34 = load double, double* %progress.addr, align 8, !dbg !178
  %progress28 = getelementptr inbounds %struct.child_info_data, %struct.child_info_data* %data, i32 0, i32 3, !dbg !179
  store double %34, double* %progress28, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i64* %wlen, metadata !181, metadata !DIExpression()), !dbg !186
  store i64 40, i64* %wlen, align 8, !dbg !186
  %35 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 1), align 4, !dbg !187
  %36 = bitcast %struct.child_info_data* %data to i8*, !dbg !189
  %37 = load i64, i64* %wlen, align 8, !dbg !190
  %call29 = call i64 @write(i32 %35, i8* %36, i64 %37), !dbg !191
  %38 = load i64, i64* %wlen, align 8, !dbg !192
  %cmp30 = icmp ne i64 %call29, %38, !dbg !193
  br i1 %cmp30, label %if.then32, label %if.end41, !dbg !194

if.then32:                                        ; preds = %if.end26
  br label %do.body33, !dbg !195

do.body33:                                        ; preds = %if.then32
  %39 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !197
  %cmp34 = icmp slt i32 3, %39, !dbg !197
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !200

if.then36:                                        ; preds = %do.body33
  br label %do.end40, !dbg !197

if.end37:                                         ; preds = %do.body33
  %call38 = call i32* @__errno_location() #6, !dbg !200
  %40 = load i32, i32* %call38, align 4, !dbg !200
  %call39 = call i8* @strerror(i32 %40) #7, !dbg !200
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %call39), !dbg !200
  br label %do.end40, !dbg !200

do.end40:                                         ; preds = %if.end37, %if.then36
  call void @exitFromChild(i32 1), !dbg !201
  br label %if.end41, !dbg !202

if.end41:                                         ; preds = %if.then, %do.end40, %if.end26
  ret void, !dbg !203
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i64 @zmalloc_get_private_dirty(i64) #1

declare dso_local void @_serverLog(i32, i8*, ...) #1

declare dso_local i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

declare dso_local void @exitFromChild(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateChildInfo(i32 %information_type, i64 %cow, i64 %cow_updated, i64 %keys, double %progress) #0 !dbg !204 {
entry:
  %information_type.addr = alloca i32, align 4
  %cow.addr = alloca i64, align 8
  %cow_updated.addr = alloca i64, align 8
  %keys.addr = alloca i64, align 8
  %progress.addr = alloca double, align 8
  store i32 %information_type, i32* %information_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %information_type.addr, metadata !207, metadata !DIExpression()), !dbg !208
  store i64 %cow, i64* %cow.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cow.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i64 %cow_updated, i64* %cow_updated.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cow_updated.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i64 %keys, i64* %keys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %keys.addr, metadata !213, metadata !DIExpression()), !dbg !214
  store double %progress, double* %progress.addr, align 8
  call void @llvm.dbg.declare(metadata double* %progress.addr, metadata !215, metadata !DIExpression()), !dbg !216
  %0 = load i64, i64* %cow.addr, align 8, !dbg !217
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 133), align 8, !dbg !219
  %cmp = icmp ugt i64 %0, %1, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %cow.addr, align 8, !dbg !222
  store i64 %2, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 133), align 8, !dbg !223
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %information_type.addr, align 4, !dbg !225
  %cmp1 = icmp eq i32 %3, 0, !dbg !227
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !228

if.then2:                                         ; preds = %if.end
  %4 = load i64, i64* %cow.addr, align 8, !dbg !229
  store i64 %4, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 134), align 8, !dbg !231
  %5 = load i64, i64* %cow_updated.addr, align 8, !dbg !232
  store i64 %5, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 135), align 8, !dbg !233
  %6 = load i64, i64* %keys.addr, align 8, !dbg !234
  store i64 %6, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 136), align 8, !dbg !235
  %7 = load double, double* %progress.addr, align 8, !dbg !236
  %cmp3 = fcmp une double %7, -1.000000e+00, !dbg !238
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !239

if.then4:                                         ; preds = %if.then2
  %8 = load double, double* %progress.addr, align 8, !dbg !240
  store double %8, double* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 141), align 8, !dbg !241
  br label %if.end5, !dbg !242

if.end5:                                          ; preds = %if.then4, %if.then2
  br label %if.end17, !dbg !243

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %information_type.addr, align 4, !dbg !244
  %cmp6 = icmp eq i32 %9, 1, !dbg !246
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !247

if.then7:                                         ; preds = %if.else
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 133), align 8, !dbg !248
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 139), align 8, !dbg !250
  br label %if.end16, !dbg !251

if.else8:                                         ; preds = %if.else
  %11 = load i32, i32* %information_type.addr, align 4, !dbg !252
  %cmp9 = icmp eq i32 %11, 2, !dbg !254
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !255

if.then10:                                        ; preds = %if.else8
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 133), align 8, !dbg !256
  store i64 %12, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 138), align 8, !dbg !258
  br label %if.end15, !dbg !259

if.else11:                                        ; preds = %if.else8
  %13 = load i32, i32* %information_type.addr, align 4, !dbg !260
  %cmp12 = icmp eq i32 %13, 3, !dbg !262
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !263

if.then13:                                        ; preds = %if.else11
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 133), align 8, !dbg !264
  store i64 %14, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 140), align 8, !dbg !266
  br label %if.end14, !dbg !267

if.end14:                                         ; preds = %if.then13, %if.else11
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end5
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readChildInfo(i32* %information_type, i64* %cow, i64* %cow_updated, i64* %keys, double* %progress) #0 !dbg !42 {
entry:
  %retval = alloca i32, align 4
  %information_type.addr = alloca i32*, align 8
  %cow.addr = alloca i64*, align 8
  %cow_updated.addr = alloca i64*, align 8
  %keys.addr = alloca i64*, align 8
  %progress.addr = alloca double*, align 8
  %wlen = alloca i64, align 8
  %nread = alloca i32, align 4
  store i32* %information_type, i32** %information_type.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %information_type.addr, metadata !269, metadata !DIExpression()), !dbg !270
  store i64* %cow, i64** %cow.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cow.addr, metadata !271, metadata !DIExpression()), !dbg !272
  store i64* %cow_updated, i64** %cow_updated.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cow_updated.addr, metadata !273, metadata !DIExpression()), !dbg !274
  store i64* %keys, i64** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %keys.addr, metadata !275, metadata !DIExpression()), !dbg !276
  store double* %progress, double** %progress.addr, align 8
  call void @llvm.dbg.declare(metadata double** %progress.addr, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i64* %wlen, metadata !279, metadata !DIExpression()), !dbg !280
  store i64 40, i64* %wlen, align 8, !dbg !280
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !281
  %conv = sext i32 %0 to i64, !dbg !283
  %1 = load i64, i64* %wlen, align 8, !dbg !284
  %cmp = icmp eq i64 %conv, %1, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %nread, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), align 4, !dbg !291
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !292
  %idx.ext = sext i32 %3 to i64, !dbg !293
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%struct.child_info_data* @readChildInfo.buffer to i8*), i64 %idx.ext, !dbg !293
  %4 = load i64, i64* %wlen, align 8, !dbg !294
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !295
  %conv2 = sext i32 %5 to i64, !dbg !296
  %sub = sub nsw i64 %4, %conv2, !dbg !297
  %call = call i64 @read(i32 %2, i8* %add.ptr, i64 %sub), !dbg !298
  %conv3 = trunc i64 %call to i32, !dbg !298
  store i32 %conv3, i32* %nread, align 4, !dbg !290
  %6 = load i32, i32* %nread, align 4, !dbg !299
  %cmp4 = icmp sgt i32 %6, 0, !dbg !301
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !302

if.then6:                                         ; preds = %if.end
  %7 = load i32, i32* %nread, align 4, !dbg !303
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !305
  %add = add nsw i32 %8, %7, !dbg !305
  store i32 %add, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !305
  br label %if.end7, !dbg !306

if.end7:                                          ; preds = %if.then6, %if.end
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 244), align 4, !dbg !307
  %conv8 = sext i32 %9 to i64, !dbg !309
  %10 = load i64, i64* %wlen, align 8, !dbg !310
  %cmp9 = icmp eq i64 %conv8, %10, !dbg !311
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !312

if.then11:                                        ; preds = %if.end7
  %11 = load i32, i32* getelementptr inbounds (%struct.child_info_data, %struct.child_info_data* @readChildInfo.buffer, i32 0, i32 4), align 8, !dbg !313
  %12 = load i32*, i32** %information_type.addr, align 8, !dbg !315
  store i32 %11, i32* %12, align 4, !dbg !316
  %13 = load i64, i64* getelementptr inbounds (%struct.child_info_data, %struct.child_info_data* @readChildInfo.buffer, i32 0, i32 1), align 8, !dbg !317
  %14 = load i64*, i64** %cow.addr, align 8, !dbg !318
  store i64 %13, i64* %14, align 8, !dbg !319
  %15 = load i64, i64* getelementptr inbounds (%struct.child_info_data, %struct.child_info_data* @readChildInfo.buffer, i32 0, i32 2), align 8, !dbg !320
  %16 = load i64*, i64** %cow_updated.addr, align 8, !dbg !321
  store i64 %15, i64* %16, align 8, !dbg !322
  %17 = load i64, i64* getelementptr inbounds (%struct.child_info_data, %struct.child_info_data* @readChildInfo.buffer, i32 0, i32 0), align 8, !dbg !323
  %18 = load i64*, i64** %keys.addr, align 8, !dbg !324
  store i64 %17, i64* %18, align 8, !dbg !325
  %19 = load double, double* getelementptr inbounds (%struct.child_info_data, %struct.child_info_data* @readChildInfo.buffer, i32 0, i32 3), align 8, !dbg !326
  %20 = load double*, double** %progress.addr, align 8, !dbg !327
  store double %19, double* %20, align 8, !dbg !328
  store i32 1, i32* %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.else:                                          ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !330
  br label %return, !dbg !330

return:                                           ; preds = %if.else, %if.then11
  %21 = load i32, i32* %retval, align 4, !dbg !332
  ret i32 %21, !dbg !332
}

declare dso_local i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @receiveChildInfo() #0 !dbg !333 {
entry:
  %cow = alloca i64, align 8
  %cow_updated = alloca i64, align 8
  %keys = alloca i64, align 8
  %progress = alloca double, align 8
  %information_type = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 243, i64 0), align 4, !dbg !334
  %cmp = icmp eq i32 %0, -1, !dbg !336
  br i1 %cmp, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  br label %while.end, !dbg !338

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %cow, metadata !339, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i64* %cow_updated, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i64* %keys, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata double* %progress, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %information_type, metadata !347, metadata !DIExpression()), !dbg !348
  br label %while.cond, !dbg !349

while.cond:                                       ; preds = %while.body, %if.end
  %call = call i32 @readChildInfo(i32* %information_type, i64* %cow, i64* %cow_updated, i64* %keys, double* %progress), !dbg !350
  %tobool = icmp ne i32 %call, 0, !dbg !349
  br i1 %tobool, label %while.body, label %while.end, !dbg !349

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %information_type, align 4, !dbg !351
  %2 = load i64, i64* %cow, align 8, !dbg !353
  %3 = load i64, i64* %cow_updated, align 8, !dbg !354
  %4 = load i64, i64* %keys, align 8, !dbg !355
  %5 = load double, double* %progress, align 8, !dbg !356
  call void @updateChildInfo(i32 %1, i64 %2, i64 %3, i64 %4, double %5), !dbg !357
  br label %while.cond, !dbg !349, !llvm.loop !358

while.end:                                        ; preds = %if.then, %while.cond
  ret void, !dbg !361
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cow_updated", scope: !2, file: !3, line: 72, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "sendChildInfoGeneric", scope: !3, file: !3, line: 69, type: !4, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!3 = !DIFile(filename: "childinfo.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !15, !18, !19}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "childInfoType", file: !7, line: 1453, baseType: !8)
!7 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "childInfoType", file: !7, line: 1448, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14}
!11 = !DIEnumerator(name: "CHILD_INFO_TYPE_CURRENT_INFO", value: 0)
!12 = !DIEnumerator(name: "CHILD_INFO_TYPE_AOF_COW_SIZE", value: 1)
!13 = !DIEnumerator(name: "CHILD_INFO_TYPE_RDB_COW_SIZE", value: 2)
!14 = !DIEnumerator(name: "CHILD_INFO_TYPE_MODULE_COW_SIZE", value: 3)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !23, globals: !24, splitDebugInlining: false, nameTableKind: None)
!22 = !{!8}
!23 = !{!19}
!24 = !{!0, !25, !31, !33, !35, !37, !40}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "cow_update_cost", scope: !2, file: !3, line: 73, type: !27, isLocal: true, isDefinition: true)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !28, line: 27, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !30, line: 45, baseType: !17)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "cow", scope: !2, file: !3, line: 74, type: !15, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "peak_cow", scope: !2, file: !3, line: 75, type: !15, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "update_count", scope: !2, file: !3, line: 76, type: !15, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "sum_cow", scope: !2, file: !3, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "buffer", scope: !42, file: !3, line: 145, type: !53, isLocal: true, isDefinition: true)
!42 = distinct !DISubprogram(name: "readChildInfo", scope: !3, file: !3, line: 143, type: !43, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !46, !47, !48, !47, !51}
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !50, line: 22, baseType: !27)
!50 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!52 = !{}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "child_info_data", file: !3, line: 40, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 34, size: 320, elements: !55)
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !54, file: !3, line: 35, baseType: !15, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "cow", scope: !54, file: !3, line: 36, baseType: !15, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "cow_updated", scope: !54, file: !3, line: 37, baseType: !49, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !54, file: !3, line: 38, baseType: !18, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "information_type", scope: !54, file: !3, line: 39, baseType: !6, size: 32, offset: 256)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!67 = distinct !DISubprogram(name: "openChildInfoPipe", scope: !3, file: !3, line: 45, type: !68, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!68 = !DISubroutineType(types: !69)
!69 = !{null}
!70 = !DILocation(line: 46, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 46, column: 9)
!72 = !DILocation(line: 46, column: 57, scope: !71)
!73 = !DILocation(line: 46, column: 9, scope: !67)
!74 = !DILocation(line: 49, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !3, line: 46, column: 64)
!76 = !DILocation(line: 50, column: 5, scope: !75)
!77 = !DILocation(line: 51, column: 33, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !3, line: 50, column: 12)
!79 = !DILocation(line: 53, column: 1, scope: !67)
!80 = distinct !DISubprogram(name: "closeChildInfoPipe", scope: !3, file: !3, line: 56, type: !68, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!81 = !DILocation(line: 57, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !80, file: !3, line: 57, column: 9)
!83 = !DILocation(line: 57, column: 35, scope: !82)
!84 = !DILocation(line: 57, column: 41, scope: !82)
!85 = !DILocation(line: 58, column: 9, scope: !82)
!86 = !DILocation(line: 58, column: 35, scope: !82)
!87 = !DILocation(line: 57, column: 9, scope: !80)
!88 = !DILocation(line: 60, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !3, line: 59, column: 5)
!90 = !DILocation(line: 60, column: 9, scope: !89)
!91 = !DILocation(line: 61, column: 15, scope: !89)
!92 = !DILocation(line: 61, column: 9, scope: !89)
!93 = !DILocation(line: 62, column: 35, scope: !89)
!94 = !DILocation(line: 63, column: 35, scope: !89)
!95 = !DILocation(line: 64, column: 33, scope: !89)
!96 = !DILocation(line: 65, column: 5, scope: !89)
!97 = !DILocation(line: 66, column: 1, scope: !80)
!98 = !DILocalVariable(name: "info_type", arg: 1, scope: !2, file: !3, line: 69, type: !6)
!99 = !DILocation(line: 69, column: 41, scope: !2)
!100 = !DILocalVariable(name: "keys", arg: 2, scope: !2, file: !3, line: 69, type: !15)
!101 = !DILocation(line: 69, column: 59, scope: !2)
!102 = !DILocalVariable(name: "progress", arg: 3, scope: !2, file: !3, line: 69, type: !18)
!103 = !DILocation(line: 69, column: 72, scope: !2)
!104 = !DILocalVariable(name: "pname", arg: 4, scope: !2, file: !3, line: 69, type: !19)
!105 = !DILocation(line: 69, column: 88, scope: !2)
!106 = !DILocation(line: 70, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !2, file: !3, line: 70, column: 9)
!108 = !DILocation(line: 70, column: 35, scope: !107)
!109 = !DILocation(line: 70, column: 9, scope: !2)
!110 = !DILocation(line: 70, column: 42, scope: !107)
!111 = !DILocalVariable(name: "data", scope: !2, file: !3, line: 79, type: !53)
!112 = !DILocation(line: 79, column: 21, scope: !2)
!113 = !DILocalVariable(name: "now", scope: !2, file: !3, line: 86, type: !49)
!114 = !DILocation(line: 86, column: 14, scope: !2)
!115 = !DILocation(line: 86, column: 20, scope: !2)
!116 = !DILocation(line: 87, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 9)
!118 = !DILocation(line: 87, column: 19, scope: !117)
!119 = !DILocation(line: 87, column: 51, scope: !117)
!120 = !DILocation(line: 88, column: 10, scope: !117)
!121 = !DILocation(line: 88, column: 22, scope: !117)
!122 = !DILocation(line: 89, column: 9, scope: !117)
!123 = !DILocation(line: 89, column: 15, scope: !117)
!124 = !DILocation(line: 89, column: 13, scope: !117)
!125 = !DILocation(line: 89, column: 29, scope: !117)
!126 = !DILocation(line: 89, column: 45, scope: !117)
!127 = !DILocation(line: 89, column: 27, scope: !117)
!128 = !DILocation(line: 87, column: 9, scope: !2)
!129 = !DILocation(line: 91, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !117, file: !3, line: 90, column: 5)
!131 = !DILocation(line: 91, column: 13, scope: !130)
!132 = !DILocation(line: 92, column: 23, scope: !130)
!133 = !DILocation(line: 92, column: 21, scope: !130)
!134 = !DILocation(line: 93, column: 27, scope: !130)
!135 = !DILocation(line: 93, column: 41, scope: !130)
!136 = !DILocation(line: 93, column: 39, scope: !130)
!137 = !DILocation(line: 93, column: 25, scope: !130)
!138 = !DILocation(line: 94, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !3, line: 94, column: 13)
!140 = !DILocation(line: 94, column: 19, scope: !139)
!141 = !DILocation(line: 94, column: 17, scope: !139)
!142 = !DILocation(line: 94, column: 13, scope: !130)
!143 = !DILocation(line: 94, column: 40, scope: !139)
!144 = !DILocation(line: 94, column: 38, scope: !139)
!145 = !DILocation(line: 94, column: 29, scope: !139)
!146 = !DILocation(line: 95, column: 20, scope: !130)
!147 = !DILocation(line: 95, column: 17, scope: !130)
!148 = !DILocation(line: 96, column: 21, scope: !130)
!149 = !DILocalVariable(name: "cow_info", scope: !130, file: !3, line: 98, type: !45)
!150 = !DILocation(line: 98, column: 13, scope: !130)
!151 = !DILocation(line: 98, column: 25, scope: !130)
!152 = !DILocation(line: 98, column: 35, scope: !130)
!153 = !DILocation(line: 99, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !130, file: !3, line: 99, column: 13)
!155 = !DILocation(line: 99, column: 17, scope: !154)
!156 = !DILocation(line: 99, column: 20, scope: !154)
!157 = !DILocation(line: 99, column: 13, scope: !130)
!158 = !DILocation(line: 100, column: 13, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 99, column: 30)
!160 = !DILocation(line: 100, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 100, column: 13)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 100, column: 13)
!163 = !DILocation(line: 100, column: 13, scope: !162)
!164 = !DILocation(line: 103, column: 9, scope: !159)
!165 = !DILocation(line: 104, column: 5, scope: !130)
!166 = !DILocation(line: 106, column: 29, scope: !2)
!167 = !DILocation(line: 106, column: 10, scope: !2)
!168 = !DILocation(line: 106, column: 27, scope: !2)
!169 = !DILocation(line: 107, column: 17, scope: !2)
!170 = !DILocation(line: 107, column: 10, scope: !2)
!171 = !DILocation(line: 107, column: 15, scope: !2)
!172 = !DILocation(line: 108, column: 16, scope: !2)
!173 = !DILocation(line: 108, column: 10, scope: !2)
!174 = !DILocation(line: 108, column: 14, scope: !2)
!175 = !DILocation(line: 109, column: 24, scope: !2)
!176 = !DILocation(line: 109, column: 10, scope: !2)
!177 = !DILocation(line: 109, column: 22, scope: !2)
!178 = !DILocation(line: 110, column: 21, scope: !2)
!179 = !DILocation(line: 110, column: 10, scope: !2)
!180 = !DILocation(line: 110, column: 19, scope: !2)
!181 = !DILocalVariable(name: "wlen", scope: !2, file: !3, line: 112, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !183, line: 108, baseType: !184)
!183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 194, baseType: !185)
!185 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!186 = !DILocation(line: 112, column: 13, scope: !2)
!187 = !DILocation(line: 114, column: 15, scope: !188)
!188 = distinct !DILexicalBlock(scope: !2, file: !3, line: 114, column: 9)
!189 = !DILocation(line: 114, column: 42, scope: !188)
!190 = !DILocation(line: 114, column: 49, scope: !188)
!191 = !DILocation(line: 114, column: 9, scope: !188)
!192 = !DILocation(line: 114, column: 58, scope: !188)
!193 = !DILocation(line: 114, column: 55, scope: !188)
!194 = !DILocation(line: 114, column: 9, scope: !2)
!195 = !DILocation(line: 116, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !188, file: !3, line: 114, column: 64)
!197 = !DILocation(line: 116, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 116, column: 9)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 116, column: 9)
!200 = !DILocation(line: 116, column: 9, scope: !199)
!201 = !DILocation(line: 117, column: 9, scope: !196)
!202 = !DILocation(line: 118, column: 5, scope: !196)
!203 = !DILocation(line: 119, column: 1, scope: !2)
!204 = distinct !DISubprogram(name: "updateChildInfo", scope: !3, file: !3, line: 122, type: !205, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !6, !15, !49, !15, !18}
!207 = !DILocalVariable(name: "information_type", arg: 1, scope: !204, file: !3, line: 122, type: !6)
!208 = !DILocation(line: 122, column: 36, scope: !204)
!209 = !DILocalVariable(name: "cow", arg: 2, scope: !204, file: !3, line: 122, type: !15)
!210 = !DILocation(line: 122, column: 61, scope: !204)
!211 = !DILocalVariable(name: "cow_updated", arg: 3, scope: !204, file: !3, line: 122, type: !49)
!212 = !DILocation(line: 122, column: 75, scope: !204)
!213 = !DILocalVariable(name: "keys", arg: 4, scope: !204, file: !3, line: 122, type: !15)
!214 = !DILocation(line: 122, column: 95, scope: !204)
!215 = !DILocalVariable(name: "progress", arg: 5, scope: !204, file: !3, line: 122, type: !18)
!216 = !DILocation(line: 122, column: 108, scope: !204)
!217 = !DILocation(line: 123, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !204, file: !3, line: 123, column: 9)
!219 = !DILocation(line: 123, column: 22, scope: !218)
!220 = !DILocation(line: 123, column: 13, scope: !218)
!221 = !DILocation(line: 123, column: 9, scope: !204)
!222 = !DILocation(line: 123, column: 76, scope: !218)
!223 = !DILocation(line: 123, column: 74, scope: !218)
!224 = !DILocation(line: 123, column: 45, scope: !218)
!225 = !DILocation(line: 125, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !204, file: !3, line: 125, column: 9)
!227 = !DILocation(line: 125, column: 26, scope: !226)
!228 = !DILocation(line: 125, column: 9, scope: !204)
!229 = !DILocation(line: 126, column: 41, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 125, column: 59)
!231 = !DILocation(line: 126, column: 39, scope: !230)
!232 = !DILocation(line: 127, column: 43, scope: !230)
!233 = !DILocation(line: 127, column: 41, scope: !230)
!234 = !DILocation(line: 128, column: 51, scope: !230)
!235 = !DILocation(line: 128, column: 49, scope: !230)
!236 = !DILocation(line: 129, column: 13, scope: !237)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 129, column: 13)
!238 = !DILocation(line: 129, column: 22, scope: !237)
!239 = !DILocation(line: 129, column: 13, scope: !230)
!240 = !DILocation(line: 129, column: 59, scope: !237)
!241 = !DILocation(line: 129, column: 57, scope: !237)
!242 = !DILocation(line: 129, column: 29, scope: !237)
!243 = !DILocation(line: 130, column: 5, scope: !230)
!244 = !DILocation(line: 130, column: 16, scope: !245)
!245 = distinct !DILexicalBlock(scope: !226, file: !3, line: 130, column: 16)
!246 = !DILocation(line: 130, column: 33, scope: !245)
!247 = !DILocation(line: 130, column: 16, scope: !226)
!248 = !DILocation(line: 131, column: 44, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !3, line: 130, column: 66)
!250 = !DILocation(line: 131, column: 35, scope: !249)
!251 = !DILocation(line: 132, column: 5, scope: !249)
!252 = !DILocation(line: 132, column: 16, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 132, column: 16)
!254 = !DILocation(line: 132, column: 33, scope: !253)
!255 = !DILocation(line: 132, column: 16, scope: !245)
!256 = !DILocation(line: 133, column: 44, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 132, column: 66)
!258 = !DILocation(line: 133, column: 35, scope: !257)
!259 = !DILocation(line: 134, column: 5, scope: !257)
!260 = !DILocation(line: 134, column: 16, scope: !261)
!261 = distinct !DILexicalBlock(scope: !253, file: !3, line: 134, column: 16)
!262 = !DILocation(line: 134, column: 33, scope: !261)
!263 = !DILocation(line: 134, column: 16, scope: !253)
!264 = !DILocation(line: 135, column: 47, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !3, line: 134, column: 69)
!266 = !DILocation(line: 135, column: 38, scope: !265)
!267 = !DILocation(line: 136, column: 5, scope: !265)
!268 = !DILocation(line: 137, column: 1, scope: !204)
!269 = !DILocalVariable(name: "information_type", arg: 1, scope: !42, file: !3, line: 143, type: !46)
!270 = !DILocation(line: 143, column: 34, scope: !42)
!271 = !DILocalVariable(name: "cow", arg: 2, scope: !42, file: !3, line: 143, type: !47)
!272 = !DILocation(line: 143, column: 60, scope: !42)
!273 = !DILocalVariable(name: "cow_updated", arg: 3, scope: !42, file: !3, line: 143, type: !48)
!274 = !DILocation(line: 143, column: 75, scope: !42)
!275 = !DILocalVariable(name: "keys", arg: 4, scope: !42, file: !3, line: 143, type: !47)
!276 = !DILocation(line: 143, column: 96, scope: !42)
!277 = !DILocalVariable(name: "progress", arg: 5, scope: !42, file: !3, line: 143, type: !51)
!278 = !DILocation(line: 143, column: 110, scope: !42)
!279 = !DILocalVariable(name: "wlen", scope: !42, file: !3, line: 146, type: !182)
!280 = !DILocation(line: 146, column: 13, scope: !42)
!281 = !DILocation(line: 149, column: 16, scope: !282)
!282 = distinct !DILexicalBlock(scope: !42, file: !3, line: 149, column: 9)
!283 = !DILocation(line: 149, column: 9, scope: !282)
!284 = !DILocation(line: 149, column: 36, scope: !282)
!285 = !DILocation(line: 149, column: 33, scope: !282)
!286 = !DILocation(line: 149, column: 9, scope: !42)
!287 = !DILocation(line: 149, column: 66, scope: !282)
!288 = !DILocation(line: 149, column: 42, scope: !282)
!289 = !DILocalVariable(name: "nread", scope: !42, file: !3, line: 151, type: !45)
!290 = !DILocation(line: 151, column: 9, scope: !42)
!291 = !DILocation(line: 151, column: 22, scope: !42)
!292 = !DILocation(line: 151, column: 74, scope: !42)
!293 = !DILocation(line: 151, column: 65, scope: !42)
!294 = !DILocation(line: 151, column: 92, scope: !42)
!295 = !DILocation(line: 151, column: 106, scope: !42)
!296 = !DILocation(line: 151, column: 99, scope: !42)
!297 = !DILocation(line: 151, column: 97, scope: !42)
!298 = !DILocation(line: 151, column: 17, scope: !42)
!299 = !DILocation(line: 152, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !42, file: !3, line: 152, column: 9)
!301 = !DILocation(line: 152, column: 15, scope: !300)
!302 = !DILocation(line: 152, column: 9, scope: !42)
!303 = !DILocation(line: 153, column: 36, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 152, column: 20)
!305 = !DILocation(line: 153, column: 33, scope: !304)
!306 = !DILocation(line: 154, column: 5, scope: !304)
!307 = !DILocation(line: 157, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !42, file: !3, line: 157, column: 9)
!309 = !DILocation(line: 157, column: 9, scope: !308)
!310 = !DILocation(line: 157, column: 36, scope: !308)
!311 = !DILocation(line: 157, column: 33, scope: !308)
!312 = !DILocation(line: 157, column: 9, scope: !42)
!313 = !DILocation(line: 158, column: 36, scope: !314)
!314 = distinct !DILexicalBlock(scope: !308, file: !3, line: 157, column: 42)
!315 = !DILocation(line: 158, column: 10, scope: !314)
!316 = !DILocation(line: 158, column: 27, scope: !314)
!317 = !DILocation(line: 159, column: 23, scope: !314)
!318 = !DILocation(line: 159, column: 10, scope: !314)
!319 = !DILocation(line: 159, column: 14, scope: !314)
!320 = !DILocation(line: 160, column: 31, scope: !314)
!321 = !DILocation(line: 160, column: 10, scope: !314)
!322 = !DILocation(line: 160, column: 22, scope: !314)
!323 = !DILocation(line: 161, column: 24, scope: !314)
!324 = !DILocation(line: 161, column: 10, scope: !314)
!325 = !DILocation(line: 161, column: 15, scope: !314)
!326 = !DILocation(line: 162, column: 28, scope: !314)
!327 = !DILocation(line: 162, column: 10, scope: !314)
!328 = !DILocation(line: 162, column: 19, scope: !314)
!329 = !DILocation(line: 163, column: 9, scope: !314)
!330 = !DILocation(line: 165, column: 9, scope: !331)
!331 = distinct !DILexicalBlock(scope: !308, file: !3, line: 164, column: 12)
!332 = !DILocation(line: 167, column: 1, scope: !42)
!333 = distinct !DISubprogram(name: "receiveChildInfo", scope: !3, file: !3, line: 170, type: !68, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !52)
!334 = !DILocation(line: 171, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !3, line: 171, column: 9)
!336 = !DILocation(line: 171, column: 35, scope: !335)
!337 = !DILocation(line: 171, column: 9, scope: !333)
!338 = !DILocation(line: 171, column: 42, scope: !335)
!339 = !DILocalVariable(name: "cow", scope: !333, file: !3, line: 173, type: !15)
!340 = !DILocation(line: 173, column: 12, scope: !333)
!341 = !DILocalVariable(name: "cow_updated", scope: !333, file: !3, line: 174, type: !49)
!342 = !DILocation(line: 174, column: 14, scope: !333)
!343 = !DILocalVariable(name: "keys", scope: !333, file: !3, line: 175, type: !15)
!344 = !DILocation(line: 175, column: 12, scope: !333)
!345 = !DILocalVariable(name: "progress", scope: !333, file: !3, line: 176, type: !18)
!346 = !DILocation(line: 176, column: 12, scope: !333)
!347 = !DILocalVariable(name: "information_type", scope: !333, file: !3, line: 177, type: !6)
!348 = !DILocation(line: 177, column: 19, scope: !333)
!349 = !DILocation(line: 180, column: 5, scope: !333)
!350 = !DILocation(line: 180, column: 12, scope: !333)
!351 = !DILocation(line: 181, column: 25, scope: !352)
!352 = distinct !DILexicalBlock(scope: !333, file: !3, line: 180, column: 84)
!353 = !DILocation(line: 181, column: 43, scope: !352)
!354 = !DILocation(line: 181, column: 48, scope: !352)
!355 = !DILocation(line: 181, column: 61, scope: !352)
!356 = !DILocation(line: 181, column: 67, scope: !352)
!357 = !DILocation(line: 181, column: 9, scope: !352)
!358 = distinct !{!358, !349, !359, !360}
!359 = !DILocation(line: 182, column: 5, scope: !333)
!360 = !{!"llvm.loop.mustprogress"}
!361 = !DILocation(line: 183, column: 1, scope: !333)
