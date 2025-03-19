; ModuleID = 'connection.c'
source_filename = "connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.5], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
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

@CT_Socket = dso_local global %struct.ConnectionType { void (%struct.aeEventLoop*, i32, i8*, i32)* @connSocketEventHandler, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)* @connSocketConnect, i32 (%struct.connection*, i8*, i64)* @connSocketWrite, i32 (%struct.connection*, %struct.iovec*, i32)* @connSocketWritev, i32 (%struct.connection*, i8*, i64)* @connSocketRead, void (%struct.connection*)* @connSocketClose, i32 (%struct.connection*, void (%struct.connection*)*)* @connSocketAccept, i32 (%struct.connection*, void (%struct.connection*)*, i32)* @connSocketSetWriteHandler, i32 (%struct.connection*, void (%struct.connection*)*)* @connSocketSetReadHandler, i8* (%struct.connection*)* @connSocketGetLastError, i32 (%struct.connection*, i8*, i32, i64)* @connSocketBlockingConnect, i64 (%struct.connection*, i8*, i64, i64)* @connSocketSyncWrite, i64 (%struct.connection*, i8*, i64, i64)* @connSocketSyncRead, i64 (%struct.connection*, i8*, i64, i64)* @connSocketSyncReadLine, i32 (%struct.connection*)* @connSocketGetType }, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"fd=%i\00", align 1
@server = external dso_local global %struct.redisServer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.connection* @connCreateSocket() #0 !dbg !179 {
entry:
  %conn = alloca %struct.connection*, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn, metadata !185, metadata !DIExpression()), !dbg !186
  %call = call i8* @zcalloc(i64 64), !dbg !187
  %0 = bitcast i8* %call to %struct.connection*, !dbg !187
  store %struct.connection* %0, %struct.connection** %conn, align 8, !dbg !186
  %1 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !188
  %type = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 0, !dbg !189
  store %struct.ConnectionType* @CT_Socket, %struct.ConnectionType** %type, align 8, !dbg !190
  %2 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !191
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !192
  store i32 -1, i32* %fd, align 8, !dbg !193
  %3 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !194
  ret %struct.connection* %3, !dbg !195
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @zcalloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.connection* @connCreateAcceptedSocket(i32 %fd) #0 !dbg !196 {
entry:
  %fd.addr = alloca i32, align 4
  %conn = alloca %struct.connection*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata %struct.connection** %conn, metadata !201, metadata !DIExpression()), !dbg !202
  %call = call %struct.connection* @connCreateSocket(), !dbg !203
  store %struct.connection* %call, %struct.connection** %conn, align 8, !dbg !202
  %0 = load i32, i32* %fd.addr, align 4, !dbg !204
  %1 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !205
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 9, !dbg !206
  store i32 %0, i32* %fd1, align 8, !dbg !207
  %2 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !208
  %state = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 1, !dbg !209
  store i32 2, i32* %state, align 8, !dbg !210
  %3 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !211
  ret %struct.connection* %3, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connHasWriteHandler(%struct.connection* %conn) #0 !dbg !213 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !218
  %write_handler = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 7, !dbg !219
  %1 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler, align 8, !dbg !219
  %cmp = icmp ne void (%struct.connection*)* %1, null, !dbg !220
  %conv = zext i1 %cmp to i32, !dbg !220
  ret i32 %conv, !dbg !221
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connHasReadHandler(%struct.connection* %conn) #0 !dbg !222 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !223, metadata !DIExpression()), !dbg !224
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !225
  %read_handler = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 8, !dbg !226
  %1 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler, align 8, !dbg !226
  %cmp = icmp ne void (%struct.connection*)* %1, null, !dbg !227
  %conv = zext i1 %cmp to i32, !dbg !227
  ret i32 %conv, !dbg !228
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @connSetPrivateData(%struct.connection* %conn, i8* %data) #0 !dbg !229 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !232, metadata !DIExpression()), !dbg !233
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load i8*, i8** %data.addr, align 8, !dbg !236
  %1 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !237
  %private_data = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 5, !dbg !238
  store i8* %0, i8** %private_data, align 8, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @connGetPrivateData(%struct.connection* %conn) #0 !dbg !241 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !246
  %private_data = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 5, !dbg !247
  %1 = load i8*, i8** %private_data, align 8, !dbg !247
  ret i8* %1, !dbg !248
}

; Function Attrs: noinline nounwind uwtable
define internal void @connSocketEventHandler(%struct.aeEventLoop* %el, i32 %fd, i8* %clientData, i32 %mask) #0 !dbg !249 {
entry:
  %el.addr = alloca %struct.aeEventLoop*, align 8
  %fd.addr = alloca i32, align 4
  %clientData.addr = alloca i8*, align 8
  %mask.addr = alloca i32, align 4
  %conn = alloca %struct.connection*, align 8
  %conn_error = alloca i32, align 4
  %invert = alloca i32, align 4
  %call_write = alloca i32, align 4
  %call_read = alloca i32, align 4
  store %struct.aeEventLoop* %el, %struct.aeEventLoop** %el.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aeEventLoop** %el.addr, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %fd, i32* %fd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd.addr, metadata !252, metadata !DIExpression()), !dbg !253
  store i8* %clientData, i8** %clientData.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %clientData.addr, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load %struct.aeEventLoop*, %struct.aeEventLoop** %el.addr, align 8, !dbg !258
  %1 = load i32, i32* %fd.addr, align 4, !dbg !259
  call void @llvm.dbg.declare(metadata %struct.connection** %conn, metadata !260, metadata !DIExpression()), !dbg !261
  %2 = load i8*, i8** %clientData.addr, align 8, !dbg !262
  %3 = bitcast i8* %2 to %struct.connection*, !dbg !262
  store %struct.connection* %3, %struct.connection** %conn, align 8, !dbg !261
  %4 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !263
  %state = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 1, !dbg !265
  %5 = load i32, i32* %state, align 8, !dbg !265
  %cmp = icmp eq i32 %5, 1, !dbg !266
  br i1 %cmp, label %land.lhs.true, label %if.end17, !dbg !267

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %mask.addr, align 4, !dbg !268
  %and = and i32 %6, 2, !dbg !269
  %tobool = icmp ne i32 %and, 0, !dbg !269
  br i1 %tobool, label %land.lhs.true1, label %if.end17, !dbg !270

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !271
  %conn_handler = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 6, !dbg !272
  %8 = load void (%struct.connection*)*, void (%struct.connection*)** %conn_handler, align 8, !dbg !272
  %tobool2 = icmp ne void (%struct.connection*)* %8, null, !dbg !271
  br i1 %tobool2, label %if.then, label %if.end17, !dbg !273

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.dbg.declare(metadata i32* %conn_error, metadata !274, metadata !DIExpression()), !dbg !276
  %9 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !277
  %call = call i32 @connGetSocketError(%struct.connection* %9), !dbg !278
  store i32 %call, i32* %conn_error, align 4, !dbg !276
  %10 = load i32, i32* %conn_error, align 4, !dbg !279
  %tobool3 = icmp ne i32 %10, 0, !dbg !279
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !281

if.then4:                                         ; preds = %if.then
  %11 = load i32, i32* %conn_error, align 4, !dbg !282
  %12 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !284
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 4, !dbg !285
  store i32 %11, i32* %last_errno, align 8, !dbg !286
  %13 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !287
  %state5 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1, !dbg !288
  store i32 5, i32* %state5, align 8, !dbg !289
  br label %if.end, !dbg !290

if.else:                                          ; preds = %if.then
  %14 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !291
  %state6 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 1, !dbg !293
  store i32 3, i32* %state6, align 8, !dbg !294
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %15 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !295
  %write_handler = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 7, !dbg !297
  %16 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler, align 8, !dbg !297
  %tobool7 = icmp ne void (%struct.connection*)* %16, null, !dbg !295
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !298

if.then8:                                         ; preds = %if.end
  %17 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !299
  %18 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !300
  %fd9 = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 9, !dbg !301
  %19 = load i32, i32* %fd9, align 8, !dbg !301
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %17, i32 %19, i32 2), !dbg !302
  br label %if.end10, !dbg !302

if.end10:                                         ; preds = %if.then8, %if.end
  %20 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !303
  %21 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !305
  %conn_handler11 = getelementptr inbounds %struct.connection, %struct.connection* %21, i32 0, i32 6, !dbg !306
  %22 = load void (%struct.connection*)*, void (%struct.connection*)** %conn_handler11, align 8, !dbg !306
  %call12 = call i32 @callHandler(%struct.connection* %20, void (%struct.connection*)* %22), !dbg !307
  %tobool13 = icmp ne i32 %call12, 0, !dbg !307
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !308

if.then14:                                        ; preds = %if.end10
  br label %if.end56, !dbg !309

if.end15:                                         ; preds = %if.end10
  %23 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !310
  %conn_handler16 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 6, !dbg !311
  store void (%struct.connection*)* null, void (%struct.connection*)** %conn_handler16, align 8, !dbg !312
  br label %if.end17, !dbg !313

if.end17:                                         ; preds = %if.end15, %land.lhs.true1, %land.lhs.true, %entry
  call void @llvm.dbg.declare(metadata i32* %invert, metadata !314, metadata !DIExpression()), !dbg !315
  %24 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !316
  %flags = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 2, !dbg !317
  %25 = load i16, i16* %flags, align 4, !dbg !317
  %conv = sext i16 %25 to i32, !dbg !316
  %and18 = and i32 %conv, 2, !dbg !318
  store i32 %and18, i32* %invert, align 4, !dbg !315
  call void @llvm.dbg.declare(metadata i32* %call_write, metadata !319, metadata !DIExpression()), !dbg !320
  %26 = load i32, i32* %mask.addr, align 4, !dbg !321
  %and19 = and i32 %26, 2, !dbg !322
  %tobool20 = icmp ne i32 %and19, 0, !dbg !322
  br i1 %tobool20, label %land.rhs, label %land.end, !dbg !323

land.rhs:                                         ; preds = %if.end17
  %27 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !324
  %write_handler21 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 7, !dbg !325
  %28 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler21, align 8, !dbg !325
  %tobool22 = icmp ne void (%struct.connection*)* %28, null, !dbg !323
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end17
  %29 = phi i1 [ false, %if.end17 ], [ %tobool22, %land.rhs ], !dbg !326
  %land.ext = zext i1 %29 to i32, !dbg !323
  store i32 %land.ext, i32* %call_write, align 4, !dbg !320
  call void @llvm.dbg.declare(metadata i32* %call_read, metadata !327, metadata !DIExpression()), !dbg !328
  %30 = load i32, i32* %mask.addr, align 4, !dbg !329
  %and23 = and i32 %30, 1, !dbg !330
  %tobool24 = icmp ne i32 %and23, 0, !dbg !330
  br i1 %tobool24, label %land.rhs25, label %land.end27, !dbg !331

land.rhs25:                                       ; preds = %land.end
  %31 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !332
  %read_handler = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 8, !dbg !333
  %32 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler, align 8, !dbg !333
  %tobool26 = icmp ne void (%struct.connection*)* %32, null, !dbg !331
  br label %land.end27

land.end27:                                       ; preds = %land.rhs25, %land.end
  %33 = phi i1 [ false, %land.end ], [ %tobool26, %land.rhs25 ], !dbg !326
  %land.ext28 = zext i1 %33 to i32, !dbg !331
  store i32 %land.ext28, i32* %call_read, align 4, !dbg !328
  %34 = load i32, i32* %invert, align 4, !dbg !334
  %tobool29 = icmp ne i32 %34, 0, !dbg !334
  br i1 %tobool29, label %if.end38, label %land.lhs.true30, !dbg !336

land.lhs.true30:                                  ; preds = %land.end27
  %35 = load i32, i32* %call_read, align 4, !dbg !337
  %tobool31 = icmp ne i32 %35, 0, !dbg !337
  br i1 %tobool31, label %if.then32, label %if.end38, !dbg !338

if.then32:                                        ; preds = %land.lhs.true30
  %36 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !339
  %37 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !342
  %read_handler33 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 8, !dbg !343
  %38 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler33, align 8, !dbg !343
  %call34 = call i32 @callHandler(%struct.connection* %36, void (%struct.connection*)* %38), !dbg !344
  %tobool35 = icmp ne i32 %call34, 0, !dbg !344
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !345

if.then36:                                        ; preds = %if.then32
  br label %if.end56, !dbg !346

if.end37:                                         ; preds = %if.then32
  br label %if.end38, !dbg !347

if.end38:                                         ; preds = %if.end37, %land.lhs.true30, %land.end27
  %39 = load i32, i32* %call_write, align 4, !dbg !348
  %tobool39 = icmp ne i32 %39, 0, !dbg !348
  br i1 %tobool39, label %if.then40, label %if.end46, !dbg !350

if.then40:                                        ; preds = %if.end38
  %40 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !351
  %41 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !354
  %write_handler41 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 7, !dbg !355
  %42 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler41, align 8, !dbg !355
  %call42 = call i32 @callHandler(%struct.connection* %40, void (%struct.connection*)* %42), !dbg !356
  %tobool43 = icmp ne i32 %call42, 0, !dbg !356
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !357

if.then44:                                        ; preds = %if.then40
  br label %if.end56, !dbg !358

if.end45:                                         ; preds = %if.then40
  br label %if.end46, !dbg !359

if.end46:                                         ; preds = %if.end45, %if.end38
  %43 = load i32, i32* %invert, align 4, !dbg !360
  %tobool47 = icmp ne i32 %43, 0, !dbg !360
  br i1 %tobool47, label %land.lhs.true48, label %if.end56, !dbg !362

land.lhs.true48:                                  ; preds = %if.end46
  %44 = load i32, i32* %call_read, align 4, !dbg !363
  %tobool49 = icmp ne i32 %44, 0, !dbg !363
  br i1 %tobool49, label %if.then50, label %if.end56, !dbg !364

if.then50:                                        ; preds = %land.lhs.true48
  %45 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !365
  %46 = load %struct.connection*, %struct.connection** %conn, align 8, !dbg !368
  %read_handler51 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 8, !dbg !369
  %47 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler51, align 8, !dbg !369
  %call52 = call i32 @callHandler(%struct.connection* %45, void (%struct.connection*)* %47), !dbg !370
  %tobool53 = icmp ne i32 %call52, 0, !dbg !370
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !371

if.then54:                                        ; preds = %if.then50
  br label %if.end56, !dbg !372

if.end55:                                         ; preds = %if.then50
  br label %if.end56, !dbg !373

if.end56:                                         ; preds = %if.then14, %if.then36, %if.then44, %if.then54, %if.end55, %land.lhs.true48, %if.end46
  ret void, !dbg !374
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketConnect(%struct.connection* %conn, i8* %addr, i32 %port, i8* %src_addr, void (%struct.connection*)* %connect_handler) #0 !dbg !375 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %addr.addr = alloca i8*, align 8
  %port.addr = alloca i32, align 4
  %src_addr.addr = alloca i8*, align 8
  %connect_handler.addr = alloca void (%struct.connection*)*, align 8
  %fd = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !378, metadata !DIExpression()), !dbg !379
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !380, metadata !DIExpression()), !dbg !381
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !382, metadata !DIExpression()), !dbg !383
  store i8* %src_addr, i8** %src_addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src_addr.addr, metadata !384, metadata !DIExpression()), !dbg !385
  store void (%struct.connection*)* %connect_handler, void (%struct.connection*)** %connect_handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.connection*)** %connect_handler.addr, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !390
  %1 = load i32, i32* %port.addr, align 4, !dbg !391
  %2 = load i8*, i8** %src_addr.addr, align 8, !dbg !392
  %call = call i32 @anetTcpNonBlockBestEffortBindConnect(i8* null, i8* %0, i32 %1, i8* %2), !dbg !393
  store i32 %call, i32* %fd, align 4, !dbg !389
  %3 = load i32, i32* %fd, align 4, !dbg !394
  %cmp = icmp eq i32 %3, -1, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !397

if.then:                                          ; preds = %entry
  %4 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !398
  %state = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 1, !dbg !400
  store i32 5, i32* %state, align 8, !dbg !401
  %call1 = call i32* @__errno_location() #5, !dbg !402
  %5 = load i32, i32* %call1, align 4, !dbg !402
  %6 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !403
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 4, !dbg !404
  store i32 %5, i32* %last_errno, align 8, !dbg !405
  store i32 -1, i32* %retval, align 4, !dbg !406
  br label %return, !dbg !406

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %fd, align 4, !dbg !407
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !408
  %fd2 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 9, !dbg !409
  store i32 %7, i32* %fd2, align 8, !dbg !410
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !411
  %state3 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 1, !dbg !412
  store i32 1, i32* %state3, align 8, !dbg !413
  %10 = load void (%struct.connection*)*, void (%struct.connection*)** %connect_handler.addr, align 8, !dbg !414
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !415
  %conn_handler = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 6, !dbg !416
  store void (%struct.connection*)* %10, void (%struct.connection*)** %conn_handler, align 8, !dbg !417
  %12 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !418
  %13 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !419
  %fd4 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 9, !dbg !420
  %14 = load i32, i32* %fd4, align 8, !dbg !420
  %15 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !421
  %type = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 0, !dbg !422
  %16 = load %struct.ConnectionType*, %struct.ConnectionType** %type, align 8, !dbg !422
  %ae_handler = getelementptr inbounds %struct.ConnectionType, %struct.ConnectionType* %16, i32 0, i32 0, !dbg !423
  %17 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %ae_handler, align 8, !dbg !423
  %18 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !424
  %19 = bitcast %struct.connection* %18 to i8*, !dbg !424
  %call5 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %12, i32 %14, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* %17, i8* %19), !dbg !425
  store i32 0, i32* %retval, align 4, !dbg !426
  br label %return, !dbg !426

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !427
  ret i32 %20, !dbg !427
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketWrite(%struct.connection* %conn, i8* %data, i64 %data_len) #0 !dbg !428 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %data.addr = alloca i8*, align 8
  %data_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !431, metadata !DIExpression()), !dbg !432
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 %data_len, i64* %data_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %data_len.addr, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !439
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !440
  %1 = load i32, i32* %fd, align 8, !dbg !440
  %2 = load i8*, i8** %data.addr, align 8, !dbg !441
  %3 = load i64, i64* %data_len.addr, align 8, !dbg !442
  %call = call i64 @write(i32 %1, i8* %2, i64 %3), !dbg !443
  %conv = trunc i64 %call to i32, !dbg !443
  store i32 %conv, i32* %ret, align 4, !dbg !438
  %4 = load i32, i32* %ret, align 4, !dbg !444
  %cmp = icmp slt i32 %4, 0, !dbg !446
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !447

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32* @__errno_location() #5, !dbg !448
  %5 = load i32, i32* %call2, align 4, !dbg !448
  %cmp3 = icmp ne i32 %5, 11, !dbg !449
  br i1 %cmp3, label %if.then, label %if.end14, !dbg !450

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32* @__errno_location() #5, !dbg !451
  %6 = load i32, i32* %call5, align 4, !dbg !451
  %7 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !453
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 4, !dbg !454
  store i32 %6, i32* %last_errno, align 8, !dbg !455
  %call6 = call i32* @__errno_location() #5, !dbg !456
  %8 = load i32, i32* %call6, align 4, !dbg !456
  %cmp7 = icmp ne i32 %8, 4, !dbg !458
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !459

land.lhs.true9:                                   ; preds = %if.then
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !460
  %state = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 1, !dbg !461
  %10 = load i32, i32* %state, align 8, !dbg !461
  %cmp10 = icmp eq i32 %10, 3, !dbg !462
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !463

if.then12:                                        ; preds = %land.lhs.true9
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !464
  %state13 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1, !dbg !465
  store i32 5, i32* %state13, align 8, !dbg !466
  br label %if.end, !dbg !464

if.end:                                           ; preds = %if.then12, %land.lhs.true9, %if.then
  br label %if.end14, !dbg !467

if.end14:                                         ; preds = %if.end, %land.lhs.true, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !468
  ret i32 %12, !dbg !469
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketWritev(%struct.connection* %conn, %struct.iovec* %iov, i32 %iovcnt) #0 !dbg !470 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %iov.addr = alloca %struct.iovec*, align 8
  %iovcnt.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !473, metadata !DIExpression()), !dbg !474
  store %struct.iovec* %iov, %struct.iovec** %iov.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iovec** %iov.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i32 %iovcnt, i32* %iovcnt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %iovcnt.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !481
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !482
  %1 = load i32, i32* %fd, align 8, !dbg !482
  %2 = load %struct.iovec*, %struct.iovec** %iov.addr, align 8, !dbg !483
  %3 = load i32, i32* %iovcnt.addr, align 4, !dbg !484
  %call = call i64 @writev(i32 %1, %struct.iovec* %2, i32 %3), !dbg !485
  %conv = trunc i64 %call to i32, !dbg !485
  store i32 %conv, i32* %ret, align 4, !dbg !480
  %4 = load i32, i32* %ret, align 4, !dbg !486
  %cmp = icmp slt i32 %4, 0, !dbg !488
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !489

land.lhs.true:                                    ; preds = %entry
  %call2 = call i32* @__errno_location() #5, !dbg !490
  %5 = load i32, i32* %call2, align 4, !dbg !490
  %cmp3 = icmp ne i32 %5, 11, !dbg !491
  br i1 %cmp3, label %if.then, label %if.end14, !dbg !492

if.then:                                          ; preds = %land.lhs.true
  %call5 = call i32* @__errno_location() #5, !dbg !493
  %6 = load i32, i32* %call5, align 4, !dbg !493
  %7 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !495
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 4, !dbg !496
  store i32 %6, i32* %last_errno, align 8, !dbg !497
  %call6 = call i32* @__errno_location() #5, !dbg !498
  %8 = load i32, i32* %call6, align 4, !dbg !498
  %cmp7 = icmp ne i32 %8, 4, !dbg !500
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !501

land.lhs.true9:                                   ; preds = %if.then
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !502
  %state = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 1, !dbg !503
  %10 = load i32, i32* %state, align 8, !dbg !503
  %cmp10 = icmp eq i32 %10, 3, !dbg !504
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !505

if.then12:                                        ; preds = %land.lhs.true9
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !506
  %state13 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1, !dbg !507
  store i32 5, i32* %state13, align 8, !dbg !508
  br label %if.end, !dbg !506

if.end:                                           ; preds = %if.then12, %land.lhs.true9, %if.then
  br label %if.end14, !dbg !509

if.end14:                                         ; preds = %if.end, %land.lhs.true, %entry
  %12 = load i32, i32* %ret, align 4, !dbg !510
  ret i32 %12, !dbg !511
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketRead(%struct.connection* %conn, i8* %buf, i64 %buf_len) #0 !dbg !512 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 %buf_len, i64* %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buf_len.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !523
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !524
  %1 = load i32, i32* %fd, align 8, !dbg !524
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !525
  %3 = load i64, i64* %buf_len.addr, align 8, !dbg !526
  %call = call i64 @read(i32 %1, i8* %2, i64 %3), !dbg !527
  %conv = trunc i64 %call to i32, !dbg !527
  store i32 %conv, i32* %ret, align 4, !dbg !522
  %4 = load i32, i32* %ret, align 4, !dbg !528
  %tobool = icmp ne i32 %4, 0, !dbg !528
  br i1 %tobool, label %if.else, label %if.then, !dbg !530

if.then:                                          ; preds = %entry
  %5 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !531
  %state = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 1, !dbg !533
  store i32 4, i32* %state, align 8, !dbg !534
  br label %if.end17, !dbg !535

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !536
  %cmp = icmp slt i32 %6, 0, !dbg !538
  br i1 %cmp, label %land.lhs.true, label %if.end16, !dbg !539

land.lhs.true:                                    ; preds = %if.else
  %call2 = call i32* @__errno_location() #5, !dbg !540
  %7 = load i32, i32* %call2, align 4, !dbg !540
  %cmp3 = icmp ne i32 %7, 11, !dbg !541
  br i1 %cmp3, label %if.then5, label %if.end16, !dbg !542

if.then5:                                         ; preds = %land.lhs.true
  %call6 = call i32* @__errno_location() #5, !dbg !543
  %8 = load i32, i32* %call6, align 4, !dbg !543
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !545
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 4, !dbg !546
  store i32 %8, i32* %last_errno, align 8, !dbg !547
  %call7 = call i32* @__errno_location() #5, !dbg !548
  %10 = load i32, i32* %call7, align 4, !dbg !548
  %cmp8 = icmp ne i32 %10, 4, !dbg !550
  br i1 %cmp8, label %land.lhs.true10, label %if.end, !dbg !551

land.lhs.true10:                                  ; preds = %if.then5
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !552
  %state11 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 1, !dbg !553
  %12 = load i32, i32* %state11, align 8, !dbg !553
  %cmp12 = icmp eq i32 %12, 3, !dbg !554
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !555

if.then14:                                        ; preds = %land.lhs.true10
  %13 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !556
  %state15 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1, !dbg !557
  store i32 5, i32* %state15, align 8, !dbg !558
  br label %if.end, !dbg !556

if.end:                                           ; preds = %if.then14, %land.lhs.true10, %if.then5
  br label %if.end16, !dbg !559

if.end16:                                         ; preds = %if.end, %land.lhs.true, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %14 = load i32, i32* %ret, align 4, !dbg !560
  ret i32 %14, !dbg !561
}

; Function Attrs: noinline nounwind uwtable
define internal void @connSocketClose(%struct.connection* %conn) #0 !dbg !562 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !565, metadata !DIExpression()), !dbg !566
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !567
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !569
  %1 = load i32, i32* %fd, align 8, !dbg !569
  %cmp = icmp ne i32 %1, -1, !dbg !570
  br i1 %cmp, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %entry
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !572
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !574
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 9, !dbg !575
  %4 = load i32, i32* %fd1, align 8, !dbg !575
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %2, i32 %4, i32 3), !dbg !576
  %5 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !577
  %fd2 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 9, !dbg !578
  %6 = load i32, i32* %fd2, align 8, !dbg !578
  %call = call i32 @close(i32 %6), !dbg !579
  %7 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !580
  %fd3 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 9, !dbg !581
  store i32 -1, i32* %fd3, align 8, !dbg !582
  br label %if.end, !dbg !583

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !584
  %call4 = call i32 @connHasRefs(%struct.connection* %8), !dbg !586
  %tobool = icmp ne i32 %call4, 0, !dbg !586
  br i1 %tobool, label %if.then5, label %if.end7, !dbg !587

if.then5:                                         ; preds = %if.end
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !588
  %flags = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 2, !dbg !590
  %10 = load i16, i16* %flags, align 4, !dbg !591
  %conv = sext i16 %10 to i32, !dbg !591
  %or = or i32 %conv, 1, !dbg !591
  %conv6 = trunc i32 %or to i16, !dbg !591
  store i16 %conv6, i16* %flags, align 4, !dbg !591
  br label %return, !dbg !592

if.end7:                                          ; preds = %if.end
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !593
  %12 = bitcast %struct.connection* %11 to i8*, !dbg !593
  call void @zfree(i8* %12), !dbg !594
  br label %return, !dbg !595

return:                                           ; preds = %if.end7, %if.then5
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketAccept(%struct.connection* %conn, void (%struct.connection*)* %accept_handler) #0 !dbg !596 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %accept_handler.addr = alloca void (%struct.connection*)*, align 8
  %ret = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !599, metadata !DIExpression()), !dbg !600
  store void (%struct.connection*)* %accept_handler, void (%struct.connection*)** %accept_handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.connection*)** %accept_handler.addr, metadata !601, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !603, metadata !DIExpression()), !dbg !604
  store i32 0, i32* %ret, align 4, !dbg !604
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !605
  %state = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 1, !dbg !607
  %1 = load i32, i32* %state, align 8, !dbg !607
  %cmp = icmp ne i32 %1, 2, !dbg !608
  br i1 %cmp, label %if.then, label %if.end, !dbg !609

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !610
  br label %return, !dbg !610

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !611
  %state1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 1, !dbg !612
  store i32 3, i32* %state1, align 8, !dbg !613
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !614
  call void @connIncrRefs(%struct.connection* %3), !dbg !615
  %4 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !616
  %5 = load void (%struct.connection*)*, void (%struct.connection*)** %accept_handler.addr, align 8, !dbg !618
  %call = call i32 @callHandler(%struct.connection* %4, void (%struct.connection*)* %5), !dbg !619
  %tobool = icmp ne i32 %call, 0, !dbg !619
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !620

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %ret, align 4, !dbg !621
  br label %if.end3, !dbg !622

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !623
  call void @connDecrRefs(%struct.connection* %6), !dbg !624
  %7 = load i32, i32* %ret, align 4, !dbg !625
  store i32 %7, i32* %retval, align 4, !dbg !626
  br label %return, !dbg !626

return:                                           ; preds = %if.end3, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !627
  ret i32 %8, !dbg !627
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketSetWriteHandler(%struct.connection* %conn, void (%struct.connection*)* %func, i32 %barrier) #0 !dbg !628 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %func.addr = alloca void (%struct.connection*)*, align 8
  %barrier.addr = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !631, metadata !DIExpression()), !dbg !632
  store void (%struct.connection*)* %func, void (%struct.connection*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.connection*)** %func.addr, metadata !633, metadata !DIExpression()), !dbg !634
  store i32 %barrier, i32* %barrier.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %barrier.addr, metadata !635, metadata !DIExpression()), !dbg !636
  %0 = load void (%struct.connection*)*, void (%struct.connection*)** %func.addr, align 8, !dbg !637
  %1 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !639
  %write_handler = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 7, !dbg !640
  %2 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler, align 8, !dbg !640
  %cmp = icmp eq void (%struct.connection*)* %0, %2, !dbg !641
  br i1 %cmp, label %if.then, label %if.end, !dbg !642

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !643
  br label %return, !dbg !643

if.end:                                           ; preds = %entry
  %3 = load void (%struct.connection*)*, void (%struct.connection*)** %func.addr, align 8, !dbg !644
  %4 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !645
  %write_handler1 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 7, !dbg !646
  store void (%struct.connection*)* %3, void (%struct.connection*)** %write_handler1, align 8, !dbg !647
  %5 = load i32, i32* %barrier.addr, align 4, !dbg !648
  %tobool = icmp ne i32 %5, 0, !dbg !648
  br i1 %tobool, label %if.then2, label %if.else, !dbg !650

if.then2:                                         ; preds = %if.end
  %6 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !651
  %flags = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 2, !dbg !652
  %7 = load i16, i16* %flags, align 4, !dbg !653
  %conv = sext i16 %7 to i32, !dbg !653
  %or = or i32 %conv, 2, !dbg !653
  %conv3 = trunc i32 %or to i16, !dbg !653
  store i16 %conv3, i16* %flags, align 4, !dbg !653
  br label %if.end7, !dbg !651

if.else:                                          ; preds = %if.end
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !654
  %flags4 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 2, !dbg !655
  %9 = load i16, i16* %flags4, align 4, !dbg !656
  %conv5 = sext i16 %9 to i32, !dbg !656
  %and = and i32 %conv5, -3, !dbg !656
  %conv6 = trunc i32 %and to i16, !dbg !656
  store i16 %conv6, i16* %flags4, align 4, !dbg !656
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %10 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !657
  %write_handler8 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 7, !dbg !659
  %11 = load void (%struct.connection*)*, void (%struct.connection*)** %write_handler8, align 8, !dbg !659
  %tobool9 = icmp ne void (%struct.connection*)* %11, null, !dbg !657
  br i1 %tobool9, label %if.else11, label %if.then10, !dbg !660

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !661
  %13 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !662
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 9, !dbg !663
  %14 = load i32, i32* %fd, align 8, !dbg !663
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %12, i32 %14, i32 2), !dbg !664
  br label %if.end17, !dbg !664

if.else11:                                        ; preds = %if.end7
  %15 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !665
  %16 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !667
  %fd12 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 9, !dbg !668
  %17 = load i32, i32* %fd12, align 8, !dbg !668
  %18 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !669
  %type = getelementptr inbounds %struct.connection, %struct.connection* %18, i32 0, i32 0, !dbg !670
  %19 = load %struct.ConnectionType*, %struct.ConnectionType** %type, align 8, !dbg !670
  %ae_handler = getelementptr inbounds %struct.ConnectionType, %struct.ConnectionType* %19, i32 0, i32 0, !dbg !671
  %20 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %ae_handler, align 8, !dbg !671
  %21 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !672
  %22 = bitcast %struct.connection* %21 to i8*, !dbg !672
  %call = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %15, i32 %17, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* %20, i8* %22), !dbg !673
  %cmp13 = icmp eq i32 %call, -1, !dbg !674
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !675

if.then15:                                        ; preds = %if.else11
  store i32 -1, i32* %retval, align 4, !dbg !676
  br label %return, !dbg !676

if.end16:                                         ; preds = %if.else11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  store i32 0, i32* %retval, align 4, !dbg !677
  br label %return, !dbg !677

return:                                           ; preds = %if.end17, %if.then15, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !678
  ret i32 %23, !dbg !678
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketSetReadHandler(%struct.connection* %conn, void (%struct.connection*)* %func) #0 !dbg !679 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %func.addr = alloca void (%struct.connection*)*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !680, metadata !DIExpression()), !dbg !681
  store void (%struct.connection*)* %func, void (%struct.connection*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.connection*)** %func.addr, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load void (%struct.connection*)*, void (%struct.connection*)** %func.addr, align 8, !dbg !684
  %1 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !686
  %read_handler = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 8, !dbg !687
  %2 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler, align 8, !dbg !687
  %cmp = icmp eq void (%struct.connection*)* %0, %2, !dbg !688
  br i1 %cmp, label %if.then, label %if.end, !dbg !689

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end:                                           ; preds = %entry
  %3 = load void (%struct.connection*)*, void (%struct.connection*)** %func.addr, align 8, !dbg !691
  %4 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !692
  %read_handler1 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 8, !dbg !693
  store void (%struct.connection*)* %3, void (%struct.connection*)** %read_handler1, align 8, !dbg !694
  %5 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !695
  %read_handler2 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 8, !dbg !697
  %6 = load void (%struct.connection*)*, void (%struct.connection*)** %read_handler2, align 8, !dbg !697
  %tobool = icmp ne void (%struct.connection*)* %6, null, !dbg !695
  br i1 %tobool, label %if.else, label %if.then3, !dbg !698

if.then3:                                         ; preds = %if.end
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !699
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !700
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 9, !dbg !701
  %9 = load i32, i32* %fd, align 8, !dbg !701
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %7, i32 %9, i32 1), !dbg !702
  br label %if.end8, !dbg !702

if.else:                                          ; preds = %if.end
  %10 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 13), align 8, !dbg !703
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !705
  %fd4 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 9, !dbg !706
  %12 = load i32, i32* %fd4, align 8, !dbg !706
  %13 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !707
  %type = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0, !dbg !708
  %14 = load %struct.ConnectionType*, %struct.ConnectionType** %type, align 8, !dbg !708
  %ae_handler = getelementptr inbounds %struct.ConnectionType, %struct.ConnectionType* %14, i32 0, i32 0, !dbg !709
  %15 = load void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)** %ae_handler, align 8, !dbg !709
  %16 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !710
  %17 = bitcast %struct.connection* %16 to i8*, !dbg !710
  %call = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %10, i32 %12, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* %15, i8* %17), !dbg !711
  %cmp5 = icmp eq i32 %call, -1, !dbg !712
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !713

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4, !dbg !714
  br label %return, !dbg !714

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !715
  br label %return, !dbg !715

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !716
  ret i32 %18, !dbg !716
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @connSocketGetLastError(%struct.connection* %conn) #0 !dbg !717 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !720, metadata !DIExpression()), !dbg !721
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !722
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 4, !dbg !723
  %1 = load i32, i32* %last_errno, align 8, !dbg !723
  %call = call i8* @strerror(i32 %1) #6, !dbg !724
  ret i8* %call, !dbg !725
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketBlockingConnect(%struct.connection* %conn, i8* %addr, i32 %port, i64 %timeout) #0 !dbg !726 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %addr.addr = alloca i8*, align 8
  %port.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %fd = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !729, metadata !DIExpression()), !dbg !730
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !731, metadata !DIExpression()), !dbg !732
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !733, metadata !DIExpression()), !dbg !734
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata i32* %fd, metadata !737, metadata !DIExpression()), !dbg !738
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !739
  %1 = load i32, i32* %port.addr, align 4, !dbg !740
  %call = call i32 @anetTcpNonBlockConnect(i8* null, i8* %0, i32 %1), !dbg !741
  store i32 %call, i32* %fd, align 4, !dbg !738
  %2 = load i32, i32* %fd, align 4, !dbg !742
  %cmp = icmp eq i32 %2, -1, !dbg !744
  br i1 %cmp, label %if.then, label %if.end, !dbg !745

if.then:                                          ; preds = %entry
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !746
  %state = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 1, !dbg !748
  store i32 5, i32* %state, align 8, !dbg !749
  %call1 = call i32* @__errno_location() #5, !dbg !750
  %4 = load i32, i32* %call1, align 4, !dbg !750
  %5 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !751
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 4, !dbg !752
  store i32 %4, i32* %last_errno, align 8, !dbg !753
  store i32 -1, i32* %retval, align 4, !dbg !754
  br label %return, !dbg !754

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %fd, align 4, !dbg !755
  %7 = load i64, i64* %timeout.addr, align 8, !dbg !757
  %call2 = call i32 @aeWait(i32 %6, i32 2, i64 %7), !dbg !758
  %and = and i32 %call2, 2, !dbg !759
  %cmp3 = icmp eq i32 %and, 0, !dbg !760
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !761

if.then4:                                         ; preds = %if.end
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !762
  %state5 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 1, !dbg !764
  store i32 5, i32* %state5, align 8, !dbg !765
  %9 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !766
  %last_errno6 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 4, !dbg !767
  store i32 110, i32* %last_errno6, align 8, !dbg !768
  br label %if.end7, !dbg !769

if.end7:                                          ; preds = %if.then4, %if.end
  %10 = load i32, i32* %fd, align 4, !dbg !770
  %11 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !771
  %fd8 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 9, !dbg !772
  store i32 %10, i32* %fd8, align 8, !dbg !773
  %12 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !774
  %state9 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1, !dbg !775
  store i32 3, i32* %state9, align 8, !dbg !776
  store i32 0, i32* %retval, align 4, !dbg !777
  br label %return, !dbg !777

return:                                           ; preds = %if.end7, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !778
  ret i32 %13, !dbg !778
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @connSocketSyncWrite(%struct.connection* %conn, i8* %ptr, i64 %size, i64 %timeout) #0 !dbg !779 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !782, metadata !DIExpression()), !dbg !783
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !784, metadata !DIExpression()), !dbg !785
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !786, metadata !DIExpression()), !dbg !787
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !788, metadata !DIExpression()), !dbg !789
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !790
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !791
  %1 = load i32, i32* %fd, align 8, !dbg !791
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !792
  %3 = load i64, i64* %size.addr, align 8, !dbg !793
  %4 = load i64, i64* %timeout.addr, align 8, !dbg !794
  %call = call i64 @syncWrite(i32 %1, i8* %2, i64 %3, i64 %4), !dbg !795
  ret i64 %call, !dbg !796
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @connSocketSyncRead(%struct.connection* %conn, i8* %ptr, i64 %size, i64 %timeout) #0 !dbg !797 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !798, metadata !DIExpression()), !dbg !799
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !800, metadata !DIExpression()), !dbg !801
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !802, metadata !DIExpression()), !dbg !803
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !804, metadata !DIExpression()), !dbg !805
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !806
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !807
  %1 = load i32, i32* %fd, align 8, !dbg !807
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !808
  %3 = load i64, i64* %size.addr, align 8, !dbg !809
  %4 = load i64, i64* %timeout.addr, align 8, !dbg !810
  %call = call i64 @syncRead(i32 %1, i8* %2, i64 %3, i64 %4), !dbg !811
  ret i64 %call, !dbg !812
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @connSocketSyncReadLine(%struct.connection* %conn, i8* %ptr, i64 %size, i64 %timeout) #0 !dbg !813 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !814, metadata !DIExpression()), !dbg !815
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !816, metadata !DIExpression()), !dbg !817
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !818, metadata !DIExpression()), !dbg !819
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !820, metadata !DIExpression()), !dbg !821
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !822
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !823
  %1 = load i32, i32* %fd, align 8, !dbg !823
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !824
  %3 = load i64, i64* %size.addr, align 8, !dbg !825
  %4 = load i64, i64* %timeout.addr, align 8, !dbg !826
  %call = call i64 @syncReadLine(i32 %1, i8* %2, i64 %3, i64 %4), !dbg !827
  ret i64 %call, !dbg !828
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connSocketGetType(%struct.connection* %conn) #0 !dbg !829 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !830, metadata !DIExpression()), !dbg !831
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !832
  ret i32 1, !dbg !833
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connGetSocketError(%struct.connection* %conn) #0 !dbg !834 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %sockerr = alloca i32, align 4
  %errlen = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !835, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.declare(metadata i32* %sockerr, metadata !837, metadata !DIExpression()), !dbg !838
  store i32 0, i32* %sockerr, align 4, !dbg !838
  call void @llvm.dbg.declare(metadata i32* %errlen, metadata !839, metadata !DIExpression()), !dbg !843
  store i32 4, i32* %errlen, align 4, !dbg !843
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !844
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !846
  %1 = load i32, i32* %fd, align 8, !dbg !846
  %2 = bitcast i32* %sockerr to i8*, !dbg !847
  %call = call i32 @getsockopt(i32 %1, i32 1, i32 4, i8* %2, i32* %errlen) #6, !dbg !848
  %cmp = icmp eq i32 %call, -1, !dbg !849
  br i1 %cmp, label %if.then, label %if.end, !dbg !850

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #5, !dbg !851
  %3 = load i32, i32* %call1, align 4, !dbg !851
  store i32 %3, i32* %sockerr, align 4, !dbg !852
  br label %if.end, !dbg !853

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %sockerr, align 4, !dbg !854
  ret i32 %4, !dbg !855
}

; Function Attrs: nounwind
declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connPeerToString(%struct.connection* %conn, i8* %ip, i64 %ip_len, i32* %port) #0 !dbg !856 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %ip.addr = alloca i8*, align 8
  %ip_len.addr = alloca i64, align 8
  %port.addr = alloca i32*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store i8* %ip, i8** %ip.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ip.addr, metadata !862, metadata !DIExpression()), !dbg !863
  store i64 %ip_len, i64* %ip_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ip_len.addr, metadata !864, metadata !DIExpression()), !dbg !865
  store i32* %port, i32** %port.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %port.addr, metadata !866, metadata !DIExpression()), !dbg !867
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !868
  %tobool = icmp ne %struct.connection* %0, null, !dbg !868
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !868

cond.true:                                        ; preds = %entry
  %1 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !870
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 9, !dbg !871
  %2 = load i32, i32* %fd, align 8, !dbg !871
  br label %cond.end, !dbg !868

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !868

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ], !dbg !868
  %3 = load i8*, i8** %ip.addr, align 8, !dbg !872
  %4 = load i64, i64* %ip_len.addr, align 8, !dbg !873
  %5 = load i32*, i32** %port.addr, align 8, !dbg !874
  %call = call i32 @anetFdToString(i32 %cond, i8* %3, i64 %4, i32* %5, i32 0), !dbg !875
  %cmp = icmp eq i32 %call, -1, !dbg !876
  br i1 %cmp, label %if.then, label %if.end4, !dbg !877

if.then:                                          ; preds = %cond.end
  %6 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !878
  %tobool1 = icmp ne %struct.connection* %6, null, !dbg !878
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !881

if.then2:                                         ; preds = %if.then
  %call3 = call i32* @__errno_location() #5, !dbg !882
  %7 = load i32, i32* %call3, align 4, !dbg !882
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !883
  %last_errno = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 4, !dbg !884
  store i32 %7, i32* %last_errno, align 8, !dbg !885
  br label %if.end, !dbg !883

if.end:                                           ; preds = %if.then2, %if.then
  store i32 -1, i32* %retval, align 4, !dbg !886
  br label %return, !dbg !886

if.end4:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !887
  br label %return, !dbg !887

return:                                           ; preds = %if.end4, %if.end
  %9 = load i32, i32* %retval, align 4, !dbg !888
  ret i32 %9, !dbg !888
}

declare dso_local i32 @anetFdToString(i32, i8*, i64, i32*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connSockName(%struct.connection* %conn, i8* %ip, i64 %ip_len, i32* %port) #0 !dbg !889 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ip.addr = alloca i8*, align 8
  %ip_len.addr = alloca i64, align 8
  %port.addr = alloca i32*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !890, metadata !DIExpression()), !dbg !891
  store i8* %ip, i8** %ip.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ip.addr, metadata !892, metadata !DIExpression()), !dbg !893
  store i64 %ip_len, i64* %ip_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ip_len.addr, metadata !894, metadata !DIExpression()), !dbg !895
  store i32* %port, i32** %port.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %port.addr, metadata !896, metadata !DIExpression()), !dbg !897
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !898
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !899
  %1 = load i32, i32* %fd, align 8, !dbg !899
  %2 = load i8*, i8** %ip.addr, align 8, !dbg !900
  %3 = load i64, i64* %ip_len.addr, align 8, !dbg !901
  %4 = load i32*, i32** %port.addr, align 8, !dbg !902
  %call = call i32 @anetFdToString(i32 %1, i8* %2, i64 %3, i32* %4, i32 1), !dbg !903
  ret i32 %call, !dbg !904
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connFormatFdAddr(%struct.connection* %conn, i8* %buf, i64 %buf_len, i32 %fd_to_str_type) #0 !dbg !905 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  %fd_to_str_type.addr = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !908, metadata !DIExpression()), !dbg !909
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !910, metadata !DIExpression()), !dbg !911
  store i64 %buf_len, i64* %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buf_len.addr, metadata !912, metadata !DIExpression()), !dbg !913
  store i32 %fd_to_str_type, i32* %fd_to_str_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fd_to_str_type.addr, metadata !914, metadata !DIExpression()), !dbg !915
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !916
  %tobool = icmp ne %struct.connection* %0, null, !dbg !916
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !916

cond.true:                                        ; preds = %entry
  %1 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !917
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %1, i32 0, i32 9, !dbg !918
  %2 = load i32, i32* %fd, align 8, !dbg !918
  br label %cond.end, !dbg !916

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !916

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ -1, %cond.false ], !dbg !916
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !919
  %4 = load i64, i64* %buf_len.addr, align 8, !dbg !920
  %5 = load i32, i32* %fd_to_str_type.addr, align 4, !dbg !921
  %call = call i32 @anetFormatFdAddr(i32 %cond, i8* %3, i64 %4, i32 %5), !dbg !922
  ret i32 %call, !dbg !923
}

declare dso_local i32 @anetFormatFdAddr(i32, i8*, i64, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connBlock(%struct.connection* %conn) #0 !dbg !924 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !925, metadata !DIExpression()), !dbg !926
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !927
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !929
  %1 = load i32, i32* %fd, align 8, !dbg !929
  %cmp = icmp eq i32 %1, -1, !dbg !930
  br i1 %cmp, label %if.then, label %if.end, !dbg !931

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !932
  br label %return, !dbg !932

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !933
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !934
  %3 = load i32, i32* %fd1, align 8, !dbg !934
  %call = call i32 @anetBlock(i8* null, i32 %3), !dbg !935
  store i32 %call, i32* %retval, align 4, !dbg !936
  br label %return, !dbg !936

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !937
  ret i32 %4, !dbg !937
}

declare dso_local i32 @anetBlock(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connNonBlock(%struct.connection* %conn) #0 !dbg !938 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !939, metadata !DIExpression()), !dbg !940
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !941
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !943
  %1 = load i32, i32* %fd, align 8, !dbg !943
  %cmp = icmp eq i32 %1, -1, !dbg !944
  br i1 %cmp, label %if.then, label %if.end, !dbg !945

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !946
  br label %return, !dbg !946

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !947
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !948
  %3 = load i32, i32* %fd1, align 8, !dbg !948
  %call = call i32 @anetNonBlock(i8* null, i32 %3), !dbg !949
  store i32 %call, i32* %retval, align 4, !dbg !950
  br label %return, !dbg !950

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !951
  ret i32 %4, !dbg !951
}

declare dso_local i32 @anetNonBlock(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connEnableTcpNoDelay(%struct.connection* %conn) #0 !dbg !952 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !953, metadata !DIExpression()), !dbg !954
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !955
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !957
  %1 = load i32, i32* %fd, align 8, !dbg !957
  %cmp = icmp eq i32 %1, -1, !dbg !958
  br i1 %cmp, label %if.then, label %if.end, !dbg !959

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !960
  br label %return, !dbg !960

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !961
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !962
  %3 = load i32, i32* %fd1, align 8, !dbg !962
  %call = call i32 @anetEnableTcpNoDelay(i8* null, i32 %3), !dbg !963
  store i32 %call, i32* %retval, align 4, !dbg !964
  br label %return, !dbg !964

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !965
  ret i32 %4, !dbg !965
}

declare dso_local i32 @anetEnableTcpNoDelay(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connDisableTcpNoDelay(%struct.connection* %conn) #0 !dbg !966 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !967, metadata !DIExpression()), !dbg !968
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !969
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !971
  %1 = load i32, i32* %fd, align 8, !dbg !971
  %cmp = icmp eq i32 %1, -1, !dbg !972
  br i1 %cmp, label %if.then, label %if.end, !dbg !973

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !974
  br label %return, !dbg !974

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !975
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !976
  %3 = load i32, i32* %fd1, align 8, !dbg !976
  %call = call i32 @anetDisableTcpNoDelay(i8* null, i32 %3), !dbg !977
  store i32 %call, i32* %retval, align 4, !dbg !978
  br label %return, !dbg !978

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !979
  ret i32 %4, !dbg !979
}

declare dso_local i32 @anetDisableTcpNoDelay(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connKeepAlive(%struct.connection* %conn, i32 %interval) #0 !dbg !980 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %interval.addr = alloca i32, align 4
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !983, metadata !DIExpression()), !dbg !984
  store i32 %interval, i32* %interval.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %interval.addr, metadata !985, metadata !DIExpression()), !dbg !986
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !987
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !989
  %1 = load i32, i32* %fd, align 8, !dbg !989
  %cmp = icmp eq i32 %1, -1, !dbg !990
  br i1 %cmp, label %if.then, label %if.end, !dbg !991

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !992
  br label %return, !dbg !992

if.end:                                           ; preds = %entry
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !993
  %fd1 = getelementptr inbounds %struct.connection, %struct.connection* %2, i32 0, i32 9, !dbg !994
  %3 = load i32, i32* %fd1, align 8, !dbg !994
  %4 = load i32, i32* %interval.addr, align 4, !dbg !995
  %call = call i32 @anetKeepAlive(i8* null, i32 %3, i32 %4), !dbg !996
  store i32 %call, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !998
  ret i32 %5, !dbg !998
}

declare dso_local i32 @anetKeepAlive(i8*, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connSendTimeout(%struct.connection* %conn, i64 %ms) #0 !dbg !999 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ms.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i64 %ms, i64* %ms.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ms.addr, metadata !1004, metadata !DIExpression()), !dbg !1005
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1006
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !1007
  %1 = load i32, i32* %fd, align 8, !dbg !1007
  %2 = load i64, i64* %ms.addr, align 8, !dbg !1008
  %call = call i32 @anetSendTimeout(i8* null, i32 %1, i64 %2), !dbg !1009
  ret i32 %call, !dbg !1010
}

declare dso_local i32 @anetSendTimeout(i8*, i32, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connRecvTimeout(%struct.connection* %conn, i64 %ms) #0 !dbg !1011 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %ms.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i64 %ms, i64* %ms.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ms.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1016
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 9, !dbg !1017
  %1 = load i32, i32* %fd, align 8, !dbg !1017
  %2 = load i64, i64* %ms.addr, align 8, !dbg !1018
  %call = call i32 @anetRecvTimeout(i8* null, i32 %1, i64 %2), !dbg !1019
  ret i32 %call, !dbg !1020
}

declare dso_local i32 @anetRecvTimeout(i8*, i32, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @connGetState(%struct.connection* %conn) #0 !dbg !1021 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1022, metadata !DIExpression()), !dbg !1023
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1024
  %state = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 1, !dbg !1025
  %1 = load i32, i32* %state, align 8, !dbg !1025
  ret i32 %1, !dbg !1026
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @connGetInfo(%struct.connection* %conn, i8* %buf, i64 %buf_len) #0 !dbg !1027 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i64, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  store i64 %buf_len, i64* %buf_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %buf_len.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !1036
  %1 = load i64, i64* %buf_len.addr, align 8, !dbg !1037
  %sub = sub i64 %1, 1, !dbg !1038
  %2 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1039
  %cmp = icmp eq %struct.connection* %2, null, !dbg !1040
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1039

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1039

cond.false:                                       ; preds = %entry
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1041
  %fd = getelementptr inbounds %struct.connection, %struct.connection* %3, i32 0, i32 9, !dbg !1042
  %4 = load i32, i32* %fd, align 8, !dbg !1042
  br label %cond.end, !dbg !1039

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %4, %cond.false ], !dbg !1039
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 %sub, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %cond) #6, !dbg !1043
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !1044
  ret i8* %5, !dbg !1045
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

declare dso_local void @aeDeleteFileEvent(%struct.aeEventLoop*, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @callHandler(%struct.connection* %conn, void (%struct.connection*)* %handler) #0 !dbg !1046 {
entry:
  %retval = alloca i32, align 4
  %conn.addr = alloca %struct.connection*, align 8
  %handler.addr = alloca void (%struct.connection*)*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1048, metadata !DIExpression()), !dbg !1049
  store void (%struct.connection*)* %handler, void (%struct.connection*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.connection*)** %handler.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1052
  call void @connIncrRefs(%struct.connection* %0), !dbg !1053
  %1 = load void (%struct.connection*)*, void (%struct.connection*)** %handler.addr, align 8, !dbg !1054
  %tobool = icmp ne void (%struct.connection*)* %1, null, !dbg !1054
  br i1 %tobool, label %if.then, label %if.end, !dbg !1056

if.then:                                          ; preds = %entry
  %2 = load void (%struct.connection*)*, void (%struct.connection*)** %handler.addr, align 8, !dbg !1057
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1058
  call void %2(%struct.connection* %3), !dbg !1057
  br label %if.end, !dbg !1057

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1059
  call void @connDecrRefs(%struct.connection* %4), !dbg !1060
  %5 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1061
  %flags = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 2, !dbg !1063
  %6 = load i16, i16* %flags, align 4, !dbg !1063
  %conv = sext i16 %6 to i32, !dbg !1061
  %and = and i32 %conv, 1, !dbg !1064
  %tobool1 = icmp ne i32 %and, 0, !dbg !1064
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !1065

if.then2:                                         ; preds = %if.end
  %7 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1066
  %call = call i32 @connHasRefs(%struct.connection* %7), !dbg !1069
  %tobool3 = icmp ne i32 %call, 0, !dbg !1069
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1070

if.then4:                                         ; preds = %if.then2
  %8 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1071
  call void @connClose(%struct.connection* %8), !dbg !1072
  br label %if.end5, !dbg !1072

if.end5:                                          ; preds = %if.then4, %if.then2
  store i32 0, i32* %retval, align 4, !dbg !1073
  br label %return, !dbg !1073

if.end6:                                          ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

return:                                           ; preds = %if.end6, %if.end5
  %9 = load i32, i32* %retval, align 4, !dbg !1075
  ret i32 %9, !dbg !1075
}

; Function Attrs: noinline nounwind uwtable
define internal void @connIncrRefs(%struct.connection* %conn) #0 !dbg !1076 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1077, metadata !DIExpression()), !dbg !1078
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1079
  %refs = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 3, !dbg !1080
  %1 = load i16, i16* %refs, align 2, !dbg !1081
  %inc = add i16 %1, 1, !dbg !1081
  store i16 %inc, i16* %refs, align 2, !dbg !1081
  ret void, !dbg !1082
}

; Function Attrs: noinline nounwind uwtable
define internal void @connDecrRefs(%struct.connection* %conn) #0 !dbg !1083 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1086
  %refs = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 3, !dbg !1087
  %1 = load i16, i16* %refs, align 2, !dbg !1088
  %dec = add i16 %1, -1, !dbg !1088
  store i16 %dec, i16* %refs, align 2, !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @connHasRefs(%struct.connection* %conn) #0 !dbg !1090 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1091, metadata !DIExpression()), !dbg !1092
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1093
  %refs = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 3, !dbg !1094
  %1 = load i16, i16* %refs, align 2, !dbg !1094
  %conv = sext i16 %1 to i32, !dbg !1093
  ret i32 %conv, !dbg !1095
}

; Function Attrs: noinline nounwind uwtable
define internal void @connClose(%struct.connection* %conn) #0 !dbg !1096 {
entry:
  %conn.addr = alloca %struct.connection*, align 8
  store %struct.connection* %conn, %struct.connection** %conn.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.connection** %conn.addr, metadata !1097, metadata !DIExpression()), !dbg !1098
  %0 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1099
  %type = getelementptr inbounds %struct.connection, %struct.connection* %0, i32 0, i32 0, !dbg !1100
  %1 = load %struct.ConnectionType*, %struct.ConnectionType** %type, align 8, !dbg !1100
  %close = getelementptr inbounds %struct.ConnectionType, %struct.ConnectionType* %1, i32 0, i32 5, !dbg !1101
  %2 = load void (%struct.connection*)*, void (%struct.connection*)** %close, align 8, !dbg !1101
  %3 = load %struct.connection*, %struct.connection** %conn.addr, align 8, !dbg !1102
  call void %2(%struct.connection* %3), !dbg !1099
  ret void, !dbg !1103
}

declare dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) #2

declare dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop*, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) #2

declare dso_local i64 @write(i32, i8*, i64) #2

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #2

declare dso_local i64 @read(i32, i8*, i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local void @zfree(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

declare dso_local i32 @anetTcpNonBlockConnect(i8*, i8*, i32) #2

declare dso_local i32 @aeWait(i32, i32, i64) #2

declare dso_local i64 @syncWrite(i32, i8*, i64, i64) #2

declare dso_local i64 @syncRead(i32, i8*, i64, i64) #2

declare dso_local i64 @syncReadLine(i32, i8*, i64, i64) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CT_Socket", scope: !2, file: !3, line: 363, type: !18, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "connection.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5}
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
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !20)
!20 = !{!21, !90, !117, !125, !136, !140, !141, !145, !149, !150, !154, !158, !167, !168, !169}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !19, file: !6, line: 60, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !30, !16, !30}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !27, line: 99, size: 640, elements: !28)
!27 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!28 = !{!29, !31, !32, !34, !45, !52, !81, !82, !83, !88, !89}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !26, file: !27, line: 100, baseType: !30, size: 32)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !26, file: !27, line: 101, baseType: !30, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !26, file: !27, line: 102, baseType: !33, size: 64, offset: 64)
!33 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !26, file: !27, line: 103, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !27, line: 77, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !27, line: 72, size: 256, elements: !38)
!38 = !{!39, !40, !43, !44}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !37, file: !27, line: 73, baseType: !30, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !37, file: !27, line: 74, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !27, line: 66, baseType: !23)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !37, file: !27, line: 75, baseType: !41, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !37, file: !27, line: 76, baseType: !16, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !26, file: !27, line: 104, baseType: !46, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !27, line: 96, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !27, line: 93, size: 64, elements: !49)
!49 = !{!50, !51}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !48, file: !27, line: 94, baseType: !30, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !48, file: !27, line: 95, baseType: !30, size: 32, offset: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !26, file: !27, line: 105, baseType: !53, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !27, line: 90, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !27, line: 80, size: 512, elements: !56)
!56 = !{!57, !58, !66, !71, !76, !77, !79, !80}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !55, file: !27, line: 81, baseType: !33, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !55, file: !27, line: 82, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !60, line: 22, baseType: !61)
!60 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 27, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !55, file: !27, line: 83, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !27, line: 67, baseType: !69)
!69 = !DISubroutineType(types: !70)
!70 = !{!30, !25, !33, !16}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !55, file: !27, line: 84, baseType: !72, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !27, line: 68, baseType: !74)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !25, !16}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !55, file: !27, line: 85, baseType: !16, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !55, file: !27, line: 86, baseType: !78, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !27, line: 87, baseType: !78, size: 64, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !55, file: !27, line: 88, baseType: !30, size: 32, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !26, file: !27, line: 106, baseType: !30, size: 32, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !26, file: !27, line: 107, baseType: !16, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !26, file: !27, line: 108, baseType: !84, size: 64, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !27, line: 69, baseType: !86)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !25}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !26, file: !27, line: 109, baseType: !84, size: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !26, file: !27, line: 110, baseType: !30, size: 32, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !19, file: !6, line: 61, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!30, !94, !114, !30, !114, !107}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !96)
!96 = !{!97, !99, !101, !103, !104, !105, !106, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !6, line: 78, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !95, file: !6, line: 79, baseType: !100, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !6, line: 80, baseType: !102, size: 16, offset: 96)
!102 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !95, file: !6, line: 81, baseType: !102, size: 16, offset: 112)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !95, file: !6, line: 82, baseType: !30, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !95, file: !6, line: 83, baseType: !16, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !95, file: !6, line: 84, baseType: !107, size: 64, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !94}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !95, file: !6, line: 85, baseType: !107, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !95, file: !6, line: 86, baseType: !107, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !95, file: !6, line: 87, baseType: !30, size: 32, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !19, file: !6, line: 62, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!30, !94, !121, !123}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 46, baseType: !65)
!124 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!125 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !19, file: !6, line: 63, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!30, !94, !129, !30}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !132, line: 26, size: 128, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !131, file: !132, line: 28, baseType: !16, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !131, file: !132, line: 29, baseType: !123, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !19, file: !6, line: 64, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!30, !94, !16, !123}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !19, file: !6, line: 65, baseType: !108, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !19, file: !6, line: 66, baseType: !142, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!30, !94, !107}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !19, file: !6, line: 67, baseType: !146, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!30, !94, !107, !30}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !19, file: !6, line: 68, baseType: !142, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !19, file: !6, line: 69, baseType: !151, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!114, !94}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !19, file: !6, line: 70, baseType: !155, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!30, !94, !114, !30, !33}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !19, file: !6, line: 71, baseType: !159, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !94, !166, !162, !33}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !163, line: 108, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !64, line: 194, baseType: !165)
!165 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !19, file: !6, line: 72, baseType: !159, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !19, file: !6, line: 73, baseType: !159, size: 64, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !19, file: !6, line: 74, baseType: !170, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!30, !94}
!173 = !{i32 7, !"Dwarf Version", i32 4}
!174 = !{i32 2, !"Debug Info Version", i32 3}
!175 = !{i32 1, !"wchar_size", i32 4}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!179 = distinct !DISubprogram(name: "connCreateSocket", scope: !3, file: !3, line: 77, type: !180, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!180 = !DISubroutineType(types: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !95)
!184 = !{}
!185 = !DILocalVariable(name: "conn", scope: !179, file: !3, line: 78, type: !182)
!186 = !DILocation(line: 78, column: 17, scope: !179)
!187 = !DILocation(line: 78, column: 24, scope: !179)
!188 = !DILocation(line: 79, column: 5, scope: !179)
!189 = !DILocation(line: 79, column: 11, scope: !179)
!190 = !DILocation(line: 79, column: 16, scope: !179)
!191 = !DILocation(line: 80, column: 5, scope: !179)
!192 = !DILocation(line: 80, column: 11, scope: !179)
!193 = !DILocation(line: 80, column: 14, scope: !179)
!194 = !DILocation(line: 82, column: 12, scope: !179)
!195 = !DILocation(line: 82, column: 5, scope: !179)
!196 = distinct !DISubprogram(name: "connCreateAcceptedSocket", scope: !3, file: !3, line: 95, type: !197, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!197 = !DISubroutineType(types: !198)
!198 = !{!182, !30}
!199 = !DILocalVariable(name: "fd", arg: 1, scope: !196, file: !3, line: 95, type: !30)
!200 = !DILocation(line: 95, column: 42, scope: !196)
!201 = !DILocalVariable(name: "conn", scope: !196, file: !3, line: 96, type: !182)
!202 = !DILocation(line: 96, column: 17, scope: !196)
!203 = !DILocation(line: 96, column: 24, scope: !196)
!204 = !DILocation(line: 97, column: 16, scope: !196)
!205 = !DILocation(line: 97, column: 5, scope: !196)
!206 = !DILocation(line: 97, column: 11, scope: !196)
!207 = !DILocation(line: 97, column: 14, scope: !196)
!208 = !DILocation(line: 98, column: 5, scope: !196)
!209 = !DILocation(line: 98, column: 11, scope: !196)
!210 = !DILocation(line: 98, column: 17, scope: !196)
!211 = !DILocation(line: 99, column: 12, scope: !196)
!212 = !DILocation(line: 99, column: 5, scope: !196)
!213 = distinct !DISubprogram(name: "connHasWriteHandler", scope: !3, file: !3, line: 122, type: !214, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!214 = !DISubroutineType(types: !215)
!215 = !{!30, !182}
!216 = !DILocalVariable(name: "conn", arg: 1, scope: !213, file: !3, line: 122, type: !182)
!217 = !DILocation(line: 122, column: 37, scope: !213)
!218 = !DILocation(line: 123, column: 12, scope: !213)
!219 = !DILocation(line: 123, column: 18, scope: !213)
!220 = !DILocation(line: 123, column: 32, scope: !213)
!221 = !DILocation(line: 123, column: 5, scope: !213)
!222 = distinct !DISubprogram(name: "connHasReadHandler", scope: !3, file: !3, line: 127, type: !214, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!223 = !DILocalVariable(name: "conn", arg: 1, scope: !222, file: !3, line: 127, type: !182)
!224 = !DILocation(line: 127, column: 36, scope: !222)
!225 = !DILocation(line: 128, column: 12, scope: !222)
!226 = !DILocation(line: 128, column: 18, scope: !222)
!227 = !DILocation(line: 128, column: 31, scope: !222)
!228 = !DILocation(line: 128, column: 5, scope: !222)
!229 = distinct !DISubprogram(name: "connSetPrivateData", scope: !3, file: !3, line: 132, type: !230, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !182, !16}
!232 = !DILocalVariable(name: "conn", arg: 1, scope: !229, file: !3, line: 132, type: !182)
!233 = !DILocation(line: 132, column: 37, scope: !229)
!234 = !DILocalVariable(name: "data", arg: 2, scope: !229, file: !3, line: 132, type: !16)
!235 = !DILocation(line: 132, column: 49, scope: !229)
!236 = !DILocation(line: 133, column: 26, scope: !229)
!237 = !DILocation(line: 133, column: 5, scope: !229)
!238 = !DILocation(line: 133, column: 11, scope: !229)
!239 = !DILocation(line: 133, column: 24, scope: !229)
!240 = !DILocation(line: 134, column: 1, scope: !229)
!241 = distinct !DISubprogram(name: "connGetPrivateData", scope: !3, file: !3, line: 137, type: !242, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!242 = !DISubroutineType(types: !243)
!243 = !{!16, !182}
!244 = !DILocalVariable(name: "conn", arg: 1, scope: !241, file: !3, line: 137, type: !182)
!245 = !DILocation(line: 137, column: 38, scope: !241)
!246 = !DILocation(line: 138, column: 12, scope: !241)
!247 = !DILocation(line: 138, column: 18, scope: !241)
!248 = !DILocation(line: 138, column: 5, scope: !241)
!249 = distinct !DISubprogram(name: "connSocketEventHandler", scope: !3, file: !3, line: 269, type: !23, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!250 = !DILocalVariable(name: "el", arg: 1, scope: !249, file: !3, line: 269, type: !25)
!251 = !DILocation(line: 269, column: 56, scope: !249)
!252 = !DILocalVariable(name: "fd", arg: 2, scope: !249, file: !3, line: 269, type: !30)
!253 = !DILocation(line: 269, column: 64, scope: !249)
!254 = !DILocalVariable(name: "clientData", arg: 3, scope: !249, file: !3, line: 269, type: !16)
!255 = !DILocation(line: 269, column: 74, scope: !249)
!256 = !DILocalVariable(name: "mask", arg: 4, scope: !249, file: !3, line: 269, type: !30)
!257 = !DILocation(line: 269, column: 90, scope: !249)
!258 = !DILocation(line: 271, column: 5, scope: !249)
!259 = !DILocation(line: 272, column: 5, scope: !249)
!260 = !DILocalVariable(name: "conn", scope: !249, file: !3, line: 273, type: !182)
!261 = !DILocation(line: 273, column: 17, scope: !249)
!262 = !DILocation(line: 273, column: 24, scope: !249)
!263 = !DILocation(line: 275, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !249, file: !3, line: 275, column: 9)
!265 = !DILocation(line: 275, column: 15, scope: !264)
!266 = !DILocation(line: 275, column: 21, scope: !264)
!267 = !DILocation(line: 275, column: 46, scope: !264)
!268 = !DILocation(line: 276, column: 14, scope: !264)
!269 = !DILocation(line: 276, column: 19, scope: !264)
!270 = !DILocation(line: 276, column: 34, scope: !264)
!271 = !DILocation(line: 276, column: 37, scope: !264)
!272 = !DILocation(line: 276, column: 43, scope: !264)
!273 = !DILocation(line: 275, column: 9, scope: !249)
!274 = !DILocalVariable(name: "conn_error", scope: !275, file: !3, line: 278, type: !30)
!275 = distinct !DILexicalBlock(scope: !264, file: !3, line: 276, column: 57)
!276 = !DILocation(line: 278, column: 13, scope: !275)
!277 = !DILocation(line: 278, column: 45, scope: !275)
!278 = !DILocation(line: 278, column: 26, scope: !275)
!279 = !DILocation(line: 279, column: 13, scope: !280)
!280 = distinct !DILexicalBlock(scope: !275, file: !3, line: 279, column: 13)
!281 = !DILocation(line: 279, column: 13, scope: !275)
!282 = !DILocation(line: 280, column: 32, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 279, column: 25)
!284 = !DILocation(line: 280, column: 13, scope: !283)
!285 = !DILocation(line: 280, column: 19, scope: !283)
!286 = !DILocation(line: 280, column: 30, scope: !283)
!287 = !DILocation(line: 281, column: 13, scope: !283)
!288 = !DILocation(line: 281, column: 19, scope: !283)
!289 = !DILocation(line: 281, column: 25, scope: !283)
!290 = !DILocation(line: 282, column: 9, scope: !283)
!291 = !DILocation(line: 283, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !3, line: 282, column: 16)
!293 = !DILocation(line: 283, column: 19, scope: !292)
!294 = !DILocation(line: 283, column: 25, scope: !292)
!295 = !DILocation(line: 286, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !275, file: !3, line: 286, column: 13)
!297 = !DILocation(line: 286, column: 20, scope: !296)
!298 = !DILocation(line: 286, column: 13, scope: !275)
!299 = !DILocation(line: 286, column: 60, scope: !296)
!300 = !DILocation(line: 286, column: 63, scope: !296)
!301 = !DILocation(line: 286, column: 69, scope: !296)
!302 = !DILocation(line: 286, column: 35, scope: !296)
!303 = !DILocation(line: 288, column: 26, scope: !304)
!304 = distinct !DILexicalBlock(scope: !275, file: !3, line: 288, column: 13)
!305 = !DILocation(line: 288, column: 32, scope: !304)
!306 = !DILocation(line: 288, column: 38, scope: !304)
!307 = !DILocation(line: 288, column: 14, scope: !304)
!308 = !DILocation(line: 288, column: 13, scope: !275)
!309 = !DILocation(line: 288, column: 53, scope: !304)
!310 = !DILocation(line: 289, column: 9, scope: !275)
!311 = !DILocation(line: 289, column: 15, scope: !275)
!312 = !DILocation(line: 289, column: 28, scope: !275)
!313 = !DILocation(line: 290, column: 5, scope: !275)
!314 = !DILocalVariable(name: "invert", scope: !249, file: !3, line: 303, type: !30)
!315 = !DILocation(line: 303, column: 9, scope: !249)
!316 = !DILocation(line: 303, column: 18, scope: !249)
!317 = !DILocation(line: 303, column: 24, scope: !249)
!318 = !DILocation(line: 303, column: 30, scope: !249)
!319 = !DILocalVariable(name: "call_write", scope: !249, file: !3, line: 305, type: !30)
!320 = !DILocation(line: 305, column: 9, scope: !249)
!321 = !DILocation(line: 305, column: 23, scope: !249)
!322 = !DILocation(line: 305, column: 28, scope: !249)
!323 = !DILocation(line: 305, column: 43, scope: !249)
!324 = !DILocation(line: 305, column: 46, scope: !249)
!325 = !DILocation(line: 305, column: 52, scope: !249)
!326 = !DILocation(line: 0, scope: !249)
!327 = !DILocalVariable(name: "call_read", scope: !249, file: !3, line: 306, type: !30)
!328 = !DILocation(line: 306, column: 9, scope: !249)
!329 = !DILocation(line: 306, column: 22, scope: !249)
!330 = !DILocation(line: 306, column: 27, scope: !249)
!331 = !DILocation(line: 306, column: 42, scope: !249)
!332 = !DILocation(line: 306, column: 45, scope: !249)
!333 = !DILocation(line: 306, column: 51, scope: !249)
!334 = !DILocation(line: 309, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !249, file: !3, line: 309, column: 9)
!336 = !DILocation(line: 309, column: 17, scope: !335)
!337 = !DILocation(line: 309, column: 20, scope: !335)
!338 = !DILocation(line: 309, column: 9, scope: !249)
!339 = !DILocation(line: 310, column: 26, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 310, column: 13)
!341 = distinct !DILexicalBlock(scope: !335, file: !3, line: 309, column: 31)
!342 = !DILocation(line: 310, column: 32, scope: !340)
!343 = !DILocation(line: 310, column: 38, scope: !340)
!344 = !DILocation(line: 310, column: 14, scope: !340)
!345 = !DILocation(line: 310, column: 13, scope: !341)
!346 = !DILocation(line: 310, column: 53, scope: !340)
!347 = !DILocation(line: 311, column: 5, scope: !341)
!348 = !DILocation(line: 313, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !249, file: !3, line: 313, column: 9)
!350 = !DILocation(line: 313, column: 9, scope: !249)
!351 = !DILocation(line: 314, column: 26, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 314, column: 13)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 313, column: 21)
!354 = !DILocation(line: 314, column: 32, scope: !352)
!355 = !DILocation(line: 314, column: 38, scope: !352)
!356 = !DILocation(line: 314, column: 14, scope: !352)
!357 = !DILocation(line: 314, column: 13, scope: !353)
!358 = !DILocation(line: 314, column: 54, scope: !352)
!359 = !DILocation(line: 315, column: 5, scope: !353)
!360 = !DILocation(line: 318, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !249, file: !3, line: 318, column: 9)
!362 = !DILocation(line: 318, column: 16, scope: !361)
!363 = !DILocation(line: 318, column: 19, scope: !361)
!364 = !DILocation(line: 318, column: 9, scope: !249)
!365 = !DILocation(line: 319, column: 26, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 319, column: 13)
!367 = distinct !DILexicalBlock(scope: !361, file: !3, line: 318, column: 30)
!368 = !DILocation(line: 319, column: 32, scope: !366)
!369 = !DILocation(line: 319, column: 38, scope: !366)
!370 = !DILocation(line: 319, column: 14, scope: !366)
!371 = !DILocation(line: 319, column: 13, scope: !367)
!372 = !DILocation(line: 319, column: 53, scope: !366)
!373 = !DILocation(line: 320, column: 5, scope: !367)
!374 = !DILocation(line: 321, column: 1, scope: !249)
!375 = distinct !DISubprogram(name: "connSocketConnect", scope: !3, file: !3, line: 102, type: !376, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!376 = !DISubroutineType(types: !377)
!377 = !{!30, !182, !114, !30, !114, !107}
!378 = !DILocalVariable(name: "conn", arg: 1, scope: !375, file: !3, line: 102, type: !182)
!379 = !DILocation(line: 102, column: 42, scope: !375)
!380 = !DILocalVariable(name: "addr", arg: 2, scope: !375, file: !3, line: 102, type: !114)
!381 = !DILocation(line: 102, column: 60, scope: !375)
!382 = !DILocalVariable(name: "port", arg: 3, scope: !375, file: !3, line: 102, type: !30)
!383 = !DILocation(line: 102, column: 70, scope: !375)
!384 = !DILocalVariable(name: "src_addr", arg: 4, scope: !375, file: !3, line: 102, type: !114)
!385 = !DILocation(line: 102, column: 88, scope: !375)
!386 = !DILocalVariable(name: "connect_handler", arg: 5, scope: !375, file: !3, line: 103, type: !107)
!387 = !DILocation(line: 103, column: 32, scope: !375)
!388 = !DILocalVariable(name: "fd", scope: !375, file: !3, line: 104, type: !30)
!389 = !DILocation(line: 104, column: 9, scope: !375)
!390 = !DILocation(line: 104, column: 56, scope: !375)
!391 = !DILocation(line: 104, column: 61, scope: !375)
!392 = !DILocation(line: 104, column: 66, scope: !375)
!393 = !DILocation(line: 104, column: 14, scope: !375)
!394 = !DILocation(line: 105, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !375, file: !3, line: 105, column: 9)
!396 = !DILocation(line: 105, column: 12, scope: !395)
!397 = !DILocation(line: 105, column: 9, scope: !375)
!398 = !DILocation(line: 106, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 105, column: 19)
!400 = !DILocation(line: 106, column: 15, scope: !399)
!401 = !DILocation(line: 106, column: 21, scope: !399)
!402 = !DILocation(line: 107, column: 28, scope: !399)
!403 = !DILocation(line: 107, column: 9, scope: !399)
!404 = !DILocation(line: 107, column: 15, scope: !399)
!405 = !DILocation(line: 107, column: 26, scope: !399)
!406 = !DILocation(line: 108, column: 9, scope: !399)
!407 = !DILocation(line: 111, column: 16, scope: !375)
!408 = !DILocation(line: 111, column: 5, scope: !375)
!409 = !DILocation(line: 111, column: 11, scope: !375)
!410 = !DILocation(line: 111, column: 14, scope: !375)
!411 = !DILocation(line: 112, column: 5, scope: !375)
!412 = !DILocation(line: 112, column: 11, scope: !375)
!413 = !DILocation(line: 112, column: 17, scope: !375)
!414 = !DILocation(line: 114, column: 26, scope: !375)
!415 = !DILocation(line: 114, column: 5, scope: !375)
!416 = !DILocation(line: 114, column: 11, scope: !375)
!417 = !DILocation(line: 114, column: 24, scope: !375)
!418 = !DILocation(line: 115, column: 30, scope: !375)
!419 = !DILocation(line: 115, column: 34, scope: !375)
!420 = !DILocation(line: 115, column: 40, scope: !375)
!421 = !DILocation(line: 116, column: 13, scope: !375)
!422 = !DILocation(line: 116, column: 19, scope: !375)
!423 = !DILocation(line: 116, column: 25, scope: !375)
!424 = !DILocation(line: 116, column: 37, scope: !375)
!425 = !DILocation(line: 115, column: 5, scope: !375)
!426 = !DILocation(line: 118, column: 5, scope: !375)
!427 = !DILocation(line: 119, column: 1, scope: !375)
!428 = distinct !DISubprogram(name: "connSocketWrite", scope: !3, file: !3, line: 166, type: !429, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!429 = !DISubroutineType(types: !430)
!430 = !{!30, !182, !121, !123}
!431 = !DILocalVariable(name: "conn", arg: 1, scope: !428, file: !3, line: 166, type: !182)
!432 = !DILocation(line: 166, column: 40, scope: !428)
!433 = !DILocalVariable(name: "data", arg: 2, scope: !428, file: !3, line: 166, type: !121)
!434 = !DILocation(line: 166, column: 58, scope: !428)
!435 = !DILocalVariable(name: "data_len", arg: 3, scope: !428, file: !3, line: 166, type: !123)
!436 = !DILocation(line: 166, column: 71, scope: !428)
!437 = !DILocalVariable(name: "ret", scope: !428, file: !3, line: 167, type: !30)
!438 = !DILocation(line: 167, column: 9, scope: !428)
!439 = !DILocation(line: 167, column: 21, scope: !428)
!440 = !DILocation(line: 167, column: 27, scope: !428)
!441 = !DILocation(line: 167, column: 31, scope: !428)
!442 = !DILocation(line: 167, column: 37, scope: !428)
!443 = !DILocation(line: 167, column: 15, scope: !428)
!444 = !DILocation(line: 168, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !428, file: !3, line: 168, column: 9)
!446 = !DILocation(line: 168, column: 13, scope: !445)
!447 = !DILocation(line: 168, column: 17, scope: !445)
!448 = !DILocation(line: 168, column: 20, scope: !445)
!449 = !DILocation(line: 168, column: 26, scope: !445)
!450 = !DILocation(line: 168, column: 9, scope: !428)
!451 = !DILocation(line: 169, column: 28, scope: !452)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 168, column: 37)
!453 = !DILocation(line: 169, column: 9, scope: !452)
!454 = !DILocation(line: 169, column: 15, scope: !452)
!455 = !DILocation(line: 169, column: 26, scope: !452)
!456 = !DILocation(line: 174, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !452, file: !3, line: 174, column: 13)
!458 = !DILocation(line: 174, column: 19, scope: !457)
!459 = !DILocation(line: 174, column: 28, scope: !457)
!460 = !DILocation(line: 174, column: 31, scope: !457)
!461 = !DILocation(line: 174, column: 37, scope: !457)
!462 = !DILocation(line: 174, column: 43, scope: !457)
!463 = !DILocation(line: 174, column: 13, scope: !452)
!464 = !DILocation(line: 175, column: 13, scope: !457)
!465 = !DILocation(line: 175, column: 19, scope: !457)
!466 = !DILocation(line: 175, column: 25, scope: !457)
!467 = !DILocation(line: 176, column: 5, scope: !452)
!468 = !DILocation(line: 178, column: 12, scope: !428)
!469 = !DILocation(line: 178, column: 5, scope: !428)
!470 = distinct !DISubprogram(name: "connSocketWritev", scope: !3, file: !3, line: 181, type: !471, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!471 = !DISubroutineType(types: !472)
!472 = !{!30, !182, !129, !30}
!473 = !DILocalVariable(name: "conn", arg: 1, scope: !470, file: !3, line: 181, type: !182)
!474 = !DILocation(line: 181, column: 41, scope: !470)
!475 = !DILocalVariable(name: "iov", arg: 2, scope: !470, file: !3, line: 181, type: !129)
!476 = !DILocation(line: 181, column: 67, scope: !470)
!477 = !DILocalVariable(name: "iovcnt", arg: 3, scope: !470, file: !3, line: 181, type: !30)
!478 = !DILocation(line: 181, column: 76, scope: !470)
!479 = !DILocalVariable(name: "ret", scope: !470, file: !3, line: 182, type: !30)
!480 = !DILocation(line: 182, column: 9, scope: !470)
!481 = !DILocation(line: 182, column: 22, scope: !470)
!482 = !DILocation(line: 182, column: 28, scope: !470)
!483 = !DILocation(line: 182, column: 32, scope: !470)
!484 = !DILocation(line: 182, column: 37, scope: !470)
!485 = !DILocation(line: 182, column: 15, scope: !470)
!486 = !DILocation(line: 183, column: 9, scope: !487)
!487 = distinct !DILexicalBlock(scope: !470, file: !3, line: 183, column: 9)
!488 = !DILocation(line: 183, column: 13, scope: !487)
!489 = !DILocation(line: 183, column: 17, scope: !487)
!490 = !DILocation(line: 183, column: 20, scope: !487)
!491 = !DILocation(line: 183, column: 26, scope: !487)
!492 = !DILocation(line: 183, column: 9, scope: !470)
!493 = !DILocation(line: 184, column: 28, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !3, line: 183, column: 37)
!495 = !DILocation(line: 184, column: 9, scope: !494)
!496 = !DILocation(line: 184, column: 15, scope: !494)
!497 = !DILocation(line: 184, column: 26, scope: !494)
!498 = !DILocation(line: 189, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !494, file: !3, line: 189, column: 13)
!500 = !DILocation(line: 189, column: 19, scope: !499)
!501 = !DILocation(line: 189, column: 28, scope: !499)
!502 = !DILocation(line: 189, column: 31, scope: !499)
!503 = !DILocation(line: 189, column: 37, scope: !499)
!504 = !DILocation(line: 189, column: 43, scope: !499)
!505 = !DILocation(line: 189, column: 13, scope: !494)
!506 = !DILocation(line: 190, column: 13, scope: !499)
!507 = !DILocation(line: 190, column: 19, scope: !499)
!508 = !DILocation(line: 190, column: 25, scope: !499)
!509 = !DILocation(line: 191, column: 5, scope: !494)
!510 = !DILocation(line: 193, column: 12, scope: !470)
!511 = !DILocation(line: 193, column: 5, scope: !470)
!512 = distinct !DISubprogram(name: "connSocketRead", scope: !3, file: !3, line: 196, type: !513, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!513 = !DISubroutineType(types: !514)
!514 = !{!30, !182, !16, !123}
!515 = !DILocalVariable(name: "conn", arg: 1, scope: !512, file: !3, line: 196, type: !182)
!516 = !DILocation(line: 196, column: 39, scope: !512)
!517 = !DILocalVariable(name: "buf", arg: 2, scope: !512, file: !3, line: 196, type: !16)
!518 = !DILocation(line: 196, column: 51, scope: !512)
!519 = !DILocalVariable(name: "buf_len", arg: 3, scope: !512, file: !3, line: 196, type: !123)
!520 = !DILocation(line: 196, column: 63, scope: !512)
!521 = !DILocalVariable(name: "ret", scope: !512, file: !3, line: 197, type: !30)
!522 = !DILocation(line: 197, column: 9, scope: !512)
!523 = !DILocation(line: 197, column: 20, scope: !512)
!524 = !DILocation(line: 197, column: 26, scope: !512)
!525 = !DILocation(line: 197, column: 30, scope: !512)
!526 = !DILocation(line: 197, column: 35, scope: !512)
!527 = !DILocation(line: 197, column: 15, scope: !512)
!528 = !DILocation(line: 198, column: 10, scope: !529)
!529 = distinct !DILexicalBlock(scope: !512, file: !3, line: 198, column: 9)
!530 = !DILocation(line: 198, column: 9, scope: !512)
!531 = !DILocation(line: 199, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !3, line: 198, column: 15)
!533 = !DILocation(line: 199, column: 15, scope: !532)
!534 = !DILocation(line: 199, column: 21, scope: !532)
!535 = !DILocation(line: 200, column: 5, scope: !532)
!536 = !DILocation(line: 200, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !3, line: 200, column: 16)
!538 = !DILocation(line: 200, column: 20, scope: !537)
!539 = !DILocation(line: 200, column: 24, scope: !537)
!540 = !DILocation(line: 200, column: 27, scope: !537)
!541 = !DILocation(line: 200, column: 33, scope: !537)
!542 = !DILocation(line: 200, column: 16, scope: !529)
!543 = !DILocation(line: 201, column: 28, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 200, column: 44)
!545 = !DILocation(line: 201, column: 9, scope: !544)
!546 = !DILocation(line: 201, column: 15, scope: !544)
!547 = !DILocation(line: 201, column: 26, scope: !544)
!548 = !DILocation(line: 206, column: 13, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !3, line: 206, column: 13)
!550 = !DILocation(line: 206, column: 19, scope: !549)
!551 = !DILocation(line: 206, column: 28, scope: !549)
!552 = !DILocation(line: 206, column: 31, scope: !549)
!553 = !DILocation(line: 206, column: 37, scope: !549)
!554 = !DILocation(line: 206, column: 43, scope: !549)
!555 = !DILocation(line: 206, column: 13, scope: !544)
!556 = !DILocation(line: 207, column: 13, scope: !549)
!557 = !DILocation(line: 207, column: 19, scope: !549)
!558 = !DILocation(line: 207, column: 25, scope: !549)
!559 = !DILocation(line: 208, column: 5, scope: !544)
!560 = !DILocation(line: 210, column: 12, scope: !512)
!561 = !DILocation(line: 210, column: 5, scope: !512)
!562 = distinct !DISubprogram(name: "connSocketClose", scope: !3, file: !3, line: 148, type: !563, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !182}
!565 = !DILocalVariable(name: "conn", arg: 1, scope: !562, file: !3, line: 148, type: !182)
!566 = !DILocation(line: 148, column: 41, scope: !562)
!567 = !DILocation(line: 149, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !3, line: 149, column: 9)
!569 = !DILocation(line: 149, column: 15, scope: !568)
!570 = !DILocation(line: 149, column: 18, scope: !568)
!571 = !DILocation(line: 149, column: 9, scope: !562)
!572 = !DILocation(line: 150, column: 34, scope: !573)
!573 = distinct !DILexicalBlock(scope: !568, file: !3, line: 149, column: 25)
!574 = !DILocation(line: 150, column: 37, scope: !573)
!575 = !DILocation(line: 150, column: 43, scope: !573)
!576 = !DILocation(line: 150, column: 9, scope: !573)
!577 = !DILocation(line: 151, column: 15, scope: !573)
!578 = !DILocation(line: 151, column: 21, scope: !573)
!579 = !DILocation(line: 151, column: 9, scope: !573)
!580 = !DILocation(line: 152, column: 9, scope: !573)
!581 = !DILocation(line: 152, column: 15, scope: !573)
!582 = !DILocation(line: 152, column: 18, scope: !573)
!583 = !DILocation(line: 153, column: 5, scope: !573)
!584 = !DILocation(line: 158, column: 21, scope: !585)
!585 = distinct !DILexicalBlock(scope: !562, file: !3, line: 158, column: 9)
!586 = !DILocation(line: 158, column: 9, scope: !585)
!587 = !DILocation(line: 158, column: 9, scope: !562)
!588 = !DILocation(line: 159, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !3, line: 158, column: 28)
!590 = !DILocation(line: 159, column: 15, scope: !589)
!591 = !DILocation(line: 159, column: 21, scope: !589)
!592 = !DILocation(line: 160, column: 9, scope: !589)
!593 = !DILocation(line: 163, column: 11, scope: !562)
!594 = !DILocation(line: 163, column: 5, scope: !562)
!595 = !DILocation(line: 164, column: 1, scope: !562)
!596 = distinct !DISubprogram(name: "connSocketAccept", scope: !3, file: !3, line: 213, type: !597, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!597 = !DISubroutineType(types: !598)
!598 = !{!30, !182, !107}
!599 = !DILocalVariable(name: "conn", arg: 1, scope: !596, file: !3, line: 213, type: !182)
!600 = !DILocation(line: 213, column: 41, scope: !596)
!601 = !DILocalVariable(name: "accept_handler", arg: 2, scope: !596, file: !3, line: 213, type: !107)
!602 = !DILocation(line: 213, column: 70, scope: !596)
!603 = !DILocalVariable(name: "ret", scope: !596, file: !3, line: 214, type: !30)
!604 = !DILocation(line: 214, column: 9, scope: !596)
!605 = !DILocation(line: 216, column: 9, scope: !606)
!606 = distinct !DILexicalBlock(scope: !596, file: !3, line: 216, column: 9)
!607 = !DILocation(line: 216, column: 15, scope: !606)
!608 = !DILocation(line: 216, column: 21, scope: !606)
!609 = !DILocation(line: 216, column: 9, scope: !596)
!610 = !DILocation(line: 216, column: 46, scope: !606)
!611 = !DILocation(line: 217, column: 5, scope: !596)
!612 = !DILocation(line: 217, column: 11, scope: !596)
!613 = !DILocation(line: 217, column: 17, scope: !596)
!614 = !DILocation(line: 219, column: 18, scope: !596)
!615 = !DILocation(line: 219, column: 5, scope: !596)
!616 = !DILocation(line: 220, column: 22, scope: !617)
!617 = distinct !DILexicalBlock(scope: !596, file: !3, line: 220, column: 9)
!618 = !DILocation(line: 220, column: 28, scope: !617)
!619 = !DILocation(line: 220, column: 10, scope: !617)
!620 = !DILocation(line: 220, column: 9, scope: !596)
!621 = !DILocation(line: 220, column: 49, scope: !617)
!622 = !DILocation(line: 220, column: 45, scope: !617)
!623 = !DILocation(line: 221, column: 18, scope: !596)
!624 = !DILocation(line: 221, column: 5, scope: !596)
!625 = !DILocation(line: 223, column: 12, scope: !596)
!626 = !DILocation(line: 223, column: 5, scope: !596)
!627 = !DILocation(line: 224, column: 1, scope: !596)
!628 = distinct !DISubprogram(name: "connSocketSetWriteHandler", scope: !3, file: !3, line: 234, type: !629, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!629 = !DISubroutineType(types: !630)
!630 = !{!30, !182, !107, !30}
!631 = !DILocalVariable(name: "conn", arg: 1, scope: !628, file: !3, line: 234, type: !182)
!632 = !DILocation(line: 234, column: 50, scope: !628)
!633 = !DILocalVariable(name: "func", arg: 2, scope: !628, file: !3, line: 234, type: !107)
!634 = !DILocation(line: 234, column: 79, scope: !628)
!635 = !DILocalVariable(name: "barrier", arg: 3, scope: !628, file: !3, line: 234, type: !30)
!636 = !DILocation(line: 234, column: 89, scope: !628)
!637 = !DILocation(line: 235, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !628, file: !3, line: 235, column: 9)
!639 = !DILocation(line: 235, column: 17, scope: !638)
!640 = !DILocation(line: 235, column: 23, scope: !638)
!641 = !DILocation(line: 235, column: 14, scope: !638)
!642 = !DILocation(line: 235, column: 9, scope: !628)
!643 = !DILocation(line: 235, column: 38, scope: !638)
!644 = !DILocation(line: 237, column: 27, scope: !628)
!645 = !DILocation(line: 237, column: 5, scope: !628)
!646 = !DILocation(line: 237, column: 11, scope: !628)
!647 = !DILocation(line: 237, column: 25, scope: !628)
!648 = !DILocation(line: 238, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !628, file: !3, line: 238, column: 9)
!650 = !DILocation(line: 238, column: 9, scope: !628)
!651 = !DILocation(line: 239, column: 9, scope: !649)
!652 = !DILocation(line: 239, column: 15, scope: !649)
!653 = !DILocation(line: 239, column: 21, scope: !649)
!654 = !DILocation(line: 241, column: 9, scope: !649)
!655 = !DILocation(line: 241, column: 15, scope: !649)
!656 = !DILocation(line: 241, column: 21, scope: !649)
!657 = !DILocation(line: 242, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !628, file: !3, line: 242, column: 9)
!659 = !DILocation(line: 242, column: 16, scope: !658)
!660 = !DILocation(line: 242, column: 9, scope: !628)
!661 = !DILocation(line: 243, column: 34, scope: !658)
!662 = !DILocation(line: 243, column: 37, scope: !658)
!663 = !DILocation(line: 243, column: 43, scope: !658)
!664 = !DILocation(line: 243, column: 9, scope: !658)
!665 = !DILocation(line: 245, column: 38, scope: !666)
!666 = distinct !DILexicalBlock(scope: !658, file: !3, line: 245, column: 13)
!667 = !DILocation(line: 245, column: 41, scope: !666)
!668 = !DILocation(line: 245, column: 47, scope: !666)
!669 = !DILocation(line: 246, column: 21, scope: !666)
!670 = !DILocation(line: 246, column: 27, scope: !666)
!671 = !DILocation(line: 246, column: 33, scope: !666)
!672 = !DILocation(line: 246, column: 44, scope: !666)
!673 = !DILocation(line: 245, column: 13, scope: !666)
!674 = !DILocation(line: 246, column: 50, scope: !666)
!675 = !DILocation(line: 245, column: 13, scope: !658)
!676 = !DILocation(line: 246, column: 61, scope: !666)
!677 = !DILocation(line: 247, column: 5, scope: !628)
!678 = !DILocation(line: 248, column: 1, scope: !628)
!679 = distinct !DISubprogram(name: "connSocketSetReadHandler", scope: !3, file: !3, line: 253, type: !597, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!680 = !DILocalVariable(name: "conn", arg: 1, scope: !679, file: !3, line: 253, type: !182)
!681 = !DILocation(line: 253, column: 49, scope: !679)
!682 = !DILocalVariable(name: "func", arg: 2, scope: !679, file: !3, line: 253, type: !107)
!683 = !DILocation(line: 253, column: 78, scope: !679)
!684 = !DILocation(line: 254, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !679, file: !3, line: 254, column: 9)
!686 = !DILocation(line: 254, column: 17, scope: !685)
!687 = !DILocation(line: 254, column: 23, scope: !685)
!688 = !DILocation(line: 254, column: 14, scope: !685)
!689 = !DILocation(line: 254, column: 9, scope: !679)
!690 = !DILocation(line: 254, column: 37, scope: !685)
!691 = !DILocation(line: 256, column: 26, scope: !679)
!692 = !DILocation(line: 256, column: 5, scope: !679)
!693 = !DILocation(line: 256, column: 11, scope: !679)
!694 = !DILocation(line: 256, column: 24, scope: !679)
!695 = !DILocation(line: 257, column: 10, scope: !696)
!696 = distinct !DILexicalBlock(scope: !679, file: !3, line: 257, column: 9)
!697 = !DILocation(line: 257, column: 16, scope: !696)
!698 = !DILocation(line: 257, column: 9, scope: !679)
!699 = !DILocation(line: 258, column: 34, scope: !696)
!700 = !DILocation(line: 258, column: 37, scope: !696)
!701 = !DILocation(line: 258, column: 43, scope: !696)
!702 = !DILocation(line: 258, column: 9, scope: !696)
!703 = !DILocation(line: 260, column: 38, scope: !704)
!704 = distinct !DILexicalBlock(scope: !696, file: !3, line: 260, column: 13)
!705 = !DILocation(line: 260, column: 41, scope: !704)
!706 = !DILocation(line: 260, column: 47, scope: !704)
!707 = !DILocation(line: 261, column: 33, scope: !704)
!708 = !DILocation(line: 261, column: 39, scope: !704)
!709 = !DILocation(line: 261, column: 45, scope: !704)
!710 = !DILocation(line: 261, column: 56, scope: !704)
!711 = !DILocation(line: 260, column: 13, scope: !704)
!712 = !DILocation(line: 261, column: 62, scope: !704)
!713 = !DILocation(line: 260, column: 13, scope: !696)
!714 = !DILocation(line: 261, column: 73, scope: !704)
!715 = !DILocation(line: 262, column: 5, scope: !679)
!716 = !DILocation(line: 263, column: 1, scope: !679)
!717 = distinct !DISubprogram(name: "connSocketGetLastError", scope: !3, file: !3, line: 265, type: !718, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!718 = !DISubroutineType(types: !719)
!719 = !{!114, !182}
!720 = !DILocalVariable(name: "conn", arg: 1, scope: !717, file: !3, line: 265, type: !182)
!721 = !DILocation(line: 265, column: 55, scope: !717)
!722 = !DILocation(line: 266, column: 21, scope: !717)
!723 = !DILocation(line: 266, column: 27, scope: !717)
!724 = !DILocation(line: 266, column: 12, scope: !717)
!725 = !DILocation(line: 266, column: 5, scope: !717)
!726 = distinct !DISubprogram(name: "connSocketBlockingConnect", scope: !3, file: !3, line: 323, type: !727, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!727 = !DISubroutineType(types: !728)
!728 = !{!30, !182, !114, !30, !33}
!729 = !DILocalVariable(name: "conn", arg: 1, scope: !726, file: !3, line: 323, type: !182)
!730 = !DILocation(line: 323, column: 50, scope: !726)
!731 = !DILocalVariable(name: "addr", arg: 2, scope: !726, file: !3, line: 323, type: !114)
!732 = !DILocation(line: 323, column: 68, scope: !726)
!733 = !DILocalVariable(name: "port", arg: 3, scope: !726, file: !3, line: 323, type: !30)
!734 = !DILocation(line: 323, column: 78, scope: !726)
!735 = !DILocalVariable(name: "timeout", arg: 4, scope: !726, file: !3, line: 323, type: !33)
!736 = !DILocation(line: 323, column: 94, scope: !726)
!737 = !DILocalVariable(name: "fd", scope: !726, file: !3, line: 324, type: !30)
!738 = !DILocation(line: 324, column: 9, scope: !726)
!739 = !DILocation(line: 324, column: 42, scope: !726)
!740 = !DILocation(line: 324, column: 47, scope: !726)
!741 = !DILocation(line: 324, column: 14, scope: !726)
!742 = !DILocation(line: 325, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !726, file: !3, line: 325, column: 9)
!744 = !DILocation(line: 325, column: 12, scope: !743)
!745 = !DILocation(line: 325, column: 9, scope: !726)
!746 = !DILocation(line: 326, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 325, column: 19)
!748 = !DILocation(line: 326, column: 15, scope: !747)
!749 = !DILocation(line: 326, column: 21, scope: !747)
!750 = !DILocation(line: 327, column: 28, scope: !747)
!751 = !DILocation(line: 327, column: 9, scope: !747)
!752 = !DILocation(line: 327, column: 15, scope: !747)
!753 = !DILocation(line: 327, column: 26, scope: !747)
!754 = !DILocation(line: 328, column: 9, scope: !747)
!755 = !DILocation(line: 331, column: 17, scope: !756)
!756 = distinct !DILexicalBlock(scope: !726, file: !3, line: 331, column: 9)
!757 = !DILocation(line: 331, column: 34, scope: !756)
!758 = !DILocation(line: 331, column: 10, scope: !756)
!759 = !DILocation(line: 331, column: 43, scope: !756)
!760 = !DILocation(line: 331, column: 58, scope: !756)
!761 = !DILocation(line: 331, column: 9, scope: !726)
!762 = !DILocation(line: 332, column: 9, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !3, line: 331, column: 64)
!764 = !DILocation(line: 332, column: 15, scope: !763)
!765 = !DILocation(line: 332, column: 21, scope: !763)
!766 = !DILocation(line: 333, column: 9, scope: !763)
!767 = !DILocation(line: 333, column: 15, scope: !763)
!768 = !DILocation(line: 333, column: 26, scope: !763)
!769 = !DILocation(line: 334, column: 5, scope: !763)
!770 = !DILocation(line: 336, column: 16, scope: !726)
!771 = !DILocation(line: 336, column: 5, scope: !726)
!772 = !DILocation(line: 336, column: 11, scope: !726)
!773 = !DILocation(line: 336, column: 14, scope: !726)
!774 = !DILocation(line: 337, column: 5, scope: !726)
!775 = !DILocation(line: 337, column: 11, scope: !726)
!776 = !DILocation(line: 337, column: 17, scope: !726)
!777 = !DILocation(line: 338, column: 5, scope: !726)
!778 = !DILocation(line: 339, column: 1, scope: !726)
!779 = distinct !DISubprogram(name: "connSocketSyncWrite", scope: !3, file: !3, line: 345, type: !780, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!780 = !DISubroutineType(types: !781)
!781 = !{!162, !182, !166, !162, !33}
!782 = !DILocalVariable(name: "conn", arg: 1, scope: !779, file: !3, line: 345, type: !182)
!783 = !DILocation(line: 345, column: 48, scope: !779)
!784 = !DILocalVariable(name: "ptr", arg: 2, scope: !779, file: !3, line: 345, type: !166)
!785 = !DILocation(line: 345, column: 60, scope: !779)
!786 = !DILocalVariable(name: "size", arg: 3, scope: !779, file: !3, line: 345, type: !162)
!787 = !DILocation(line: 345, column: 73, scope: !779)
!788 = !DILocalVariable(name: "timeout", arg: 4, scope: !779, file: !3, line: 345, type: !33)
!789 = !DILocation(line: 345, column: 89, scope: !779)
!790 = !DILocation(line: 346, column: 22, scope: !779)
!791 = !DILocation(line: 346, column: 28, scope: !779)
!792 = !DILocation(line: 346, column: 32, scope: !779)
!793 = !DILocation(line: 346, column: 37, scope: !779)
!794 = !DILocation(line: 346, column: 43, scope: !779)
!795 = !DILocation(line: 346, column: 12, scope: !779)
!796 = !DILocation(line: 346, column: 5, scope: !779)
!797 = distinct !DISubprogram(name: "connSocketSyncRead", scope: !3, file: !3, line: 349, type: !780, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!798 = !DILocalVariable(name: "conn", arg: 1, scope: !797, file: !3, line: 349, type: !182)
!799 = !DILocation(line: 349, column: 47, scope: !797)
!800 = !DILocalVariable(name: "ptr", arg: 2, scope: !797, file: !3, line: 349, type: !166)
!801 = !DILocation(line: 349, column: 59, scope: !797)
!802 = !DILocalVariable(name: "size", arg: 3, scope: !797, file: !3, line: 349, type: !162)
!803 = !DILocation(line: 349, column: 72, scope: !797)
!804 = !DILocalVariable(name: "timeout", arg: 4, scope: !797, file: !3, line: 349, type: !33)
!805 = !DILocation(line: 349, column: 88, scope: !797)
!806 = !DILocation(line: 350, column: 21, scope: !797)
!807 = !DILocation(line: 350, column: 27, scope: !797)
!808 = !DILocation(line: 350, column: 31, scope: !797)
!809 = !DILocation(line: 350, column: 36, scope: !797)
!810 = !DILocation(line: 350, column: 42, scope: !797)
!811 = !DILocation(line: 350, column: 12, scope: !797)
!812 = !DILocation(line: 350, column: 5, scope: !797)
!813 = distinct !DISubprogram(name: "connSocketSyncReadLine", scope: !3, file: !3, line: 353, type: !780, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!814 = !DILocalVariable(name: "conn", arg: 1, scope: !813, file: !3, line: 353, type: !182)
!815 = !DILocation(line: 353, column: 51, scope: !813)
!816 = !DILocalVariable(name: "ptr", arg: 2, scope: !813, file: !3, line: 353, type: !166)
!817 = !DILocation(line: 353, column: 63, scope: !813)
!818 = !DILocalVariable(name: "size", arg: 3, scope: !813, file: !3, line: 353, type: !162)
!819 = !DILocation(line: 353, column: 76, scope: !813)
!820 = !DILocalVariable(name: "timeout", arg: 4, scope: !813, file: !3, line: 353, type: !33)
!821 = !DILocation(line: 353, column: 92, scope: !813)
!822 = !DILocation(line: 354, column: 25, scope: !813)
!823 = !DILocation(line: 354, column: 31, scope: !813)
!824 = !DILocation(line: 354, column: 35, scope: !813)
!825 = !DILocation(line: 354, column: 40, scope: !813)
!826 = !DILocation(line: 354, column: 46, scope: !813)
!827 = !DILocation(line: 354, column: 12, scope: !813)
!828 = !DILocation(line: 354, column: 5, scope: !813)
!829 = distinct !DISubprogram(name: "connSocketGetType", scope: !3, file: !3, line: 357, type: !214, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!830 = !DILocalVariable(name: "conn", arg: 1, scope: !829, file: !3, line: 357, type: !182)
!831 = !DILocation(line: 357, column: 42, scope: !829)
!832 = !DILocation(line: 358, column: 12, scope: !829)
!833 = !DILocation(line: 360, column: 5, scope: !829)
!834 = distinct !DISubprogram(name: "connGetSocketError", scope: !3, file: !3, line: 382, type: !214, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!835 = !DILocalVariable(name: "conn", arg: 1, scope: !834, file: !3, line: 382, type: !182)
!836 = !DILocation(line: 382, column: 36, scope: !834)
!837 = !DILocalVariable(name: "sockerr", scope: !834, file: !3, line: 383, type: !30)
!838 = !DILocation(line: 383, column: 9, scope: !834)
!839 = !DILocalVariable(name: "errlen", scope: !834, file: !3, line: 384, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !841, line: 274, baseType: !842)
!841 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !64, line: 210, baseType: !7)
!843 = !DILocation(line: 384, column: 15, scope: !834)
!844 = !DILocation(line: 386, column: 20, scope: !845)
!845 = distinct !DILexicalBlock(scope: !834, file: !3, line: 386, column: 9)
!846 = !DILocation(line: 386, column: 26, scope: !845)
!847 = !DILocation(line: 386, column: 52, scope: !845)
!848 = !DILocation(line: 386, column: 9, scope: !845)
!849 = !DILocation(line: 386, column: 71, scope: !845)
!850 = !DILocation(line: 386, column: 9, scope: !834)
!851 = !DILocation(line: 387, column: 19, scope: !845)
!852 = !DILocation(line: 387, column: 17, scope: !845)
!853 = !DILocation(line: 387, column: 9, scope: !845)
!854 = !DILocation(line: 388, column: 12, scope: !834)
!855 = !DILocation(line: 388, column: 5, scope: !834)
!856 = distinct !DISubprogram(name: "connPeerToString", scope: !3, file: !3, line: 391, type: !857, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!857 = !DISubroutineType(types: !858)
!858 = !{!30, !182, !166, !123, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!860 = !DILocalVariable(name: "conn", arg: 1, scope: !856, file: !3, line: 391, type: !182)
!861 = !DILocation(line: 391, column: 34, scope: !856)
!862 = !DILocalVariable(name: "ip", arg: 2, scope: !856, file: !3, line: 391, type: !166)
!863 = !DILocation(line: 391, column: 46, scope: !856)
!864 = !DILocalVariable(name: "ip_len", arg: 3, scope: !856, file: !3, line: 391, type: !123)
!865 = !DILocation(line: 391, column: 57, scope: !856)
!866 = !DILocalVariable(name: "port", arg: 4, scope: !856, file: !3, line: 391, type: !859)
!867 = !DILocation(line: 391, column: 70, scope: !856)
!868 = !DILocation(line: 392, column: 24, scope: !869)
!869 = distinct !DILexicalBlock(scope: !856, file: !3, line: 392, column: 9)
!870 = !DILocation(line: 392, column: 31, scope: !869)
!871 = !DILocation(line: 392, column: 37, scope: !869)
!872 = !DILocation(line: 392, column: 46, scope: !869)
!873 = !DILocation(line: 392, column: 50, scope: !869)
!874 = !DILocation(line: 392, column: 58, scope: !869)
!875 = !DILocation(line: 392, column: 9, scope: !869)
!876 = !DILocation(line: 392, column: 81, scope: !869)
!877 = !DILocation(line: 392, column: 9, scope: !856)
!878 = !DILocation(line: 393, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 393, column: 13)
!880 = distinct !DILexicalBlock(scope: !869, file: !3, line: 392, column: 88)
!881 = !DILocation(line: 393, column: 13, scope: !880)
!882 = !DILocation(line: 393, column: 38, scope: !879)
!883 = !DILocation(line: 393, column: 19, scope: !879)
!884 = !DILocation(line: 393, column: 25, scope: !879)
!885 = !DILocation(line: 393, column: 36, scope: !879)
!886 = !DILocation(line: 394, column: 9, scope: !880)
!887 = !DILocation(line: 396, column: 5, scope: !856)
!888 = !DILocation(line: 397, column: 1, scope: !856)
!889 = distinct !DISubprogram(name: "connSockName", scope: !3, file: !3, line: 399, type: !857, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!890 = !DILocalVariable(name: "conn", arg: 1, scope: !889, file: !3, line: 399, type: !182)
!891 = !DILocation(line: 399, column: 30, scope: !889)
!892 = !DILocalVariable(name: "ip", arg: 2, scope: !889, file: !3, line: 399, type: !166)
!893 = !DILocation(line: 399, column: 42, scope: !889)
!894 = !DILocalVariable(name: "ip_len", arg: 3, scope: !889, file: !3, line: 399, type: !123)
!895 = !DILocation(line: 399, column: 53, scope: !889)
!896 = !DILocalVariable(name: "port", arg: 4, scope: !889, file: !3, line: 399, type: !859)
!897 = !DILocation(line: 399, column: 66, scope: !889)
!898 = !DILocation(line: 400, column: 27, scope: !889)
!899 = !DILocation(line: 400, column: 33, scope: !889)
!900 = !DILocation(line: 400, column: 37, scope: !889)
!901 = !DILocation(line: 400, column: 41, scope: !889)
!902 = !DILocation(line: 400, column: 49, scope: !889)
!903 = !DILocation(line: 400, column: 12, scope: !889)
!904 = !DILocation(line: 400, column: 5, scope: !889)
!905 = distinct !DISubprogram(name: "connFormatFdAddr", scope: !3, file: !3, line: 403, type: !906, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!906 = !DISubroutineType(types: !907)
!907 = !{!30, !182, !166, !123, !30}
!908 = !DILocalVariable(name: "conn", arg: 1, scope: !905, file: !3, line: 403, type: !182)
!909 = !DILocation(line: 403, column: 34, scope: !905)
!910 = !DILocalVariable(name: "buf", arg: 2, scope: !905, file: !3, line: 403, type: !166)
!911 = !DILocation(line: 403, column: 46, scope: !905)
!912 = !DILocalVariable(name: "buf_len", arg: 3, scope: !905, file: !3, line: 403, type: !123)
!913 = !DILocation(line: 403, column: 58, scope: !905)
!914 = !DILocalVariable(name: "fd_to_str_type", arg: 4, scope: !905, file: !3, line: 403, type: !30)
!915 = !DILocation(line: 403, column: 71, scope: !905)
!916 = !DILocation(line: 404, column: 29, scope: !905)
!917 = !DILocation(line: 404, column: 36, scope: !905)
!918 = !DILocation(line: 404, column: 42, scope: !905)
!919 = !DILocation(line: 404, column: 51, scope: !905)
!920 = !DILocation(line: 404, column: 56, scope: !905)
!921 = !DILocation(line: 404, column: 65, scope: !905)
!922 = !DILocation(line: 404, column: 12, scope: !905)
!923 = !DILocation(line: 404, column: 5, scope: !905)
!924 = distinct !DISubprogram(name: "connBlock", scope: !3, file: !3, line: 407, type: !214, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!925 = !DILocalVariable(name: "conn", arg: 1, scope: !924, file: !3, line: 407, type: !182)
!926 = !DILocation(line: 407, column: 27, scope: !924)
!927 = !DILocation(line: 408, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 408, column: 9)
!929 = !DILocation(line: 408, column: 15, scope: !928)
!930 = !DILocation(line: 408, column: 18, scope: !928)
!931 = !DILocation(line: 408, column: 9, scope: !924)
!932 = !DILocation(line: 408, column: 25, scope: !928)
!933 = !DILocation(line: 409, column: 28, scope: !924)
!934 = !DILocation(line: 409, column: 34, scope: !924)
!935 = !DILocation(line: 409, column: 12, scope: !924)
!936 = !DILocation(line: 409, column: 5, scope: !924)
!937 = !DILocation(line: 410, column: 1, scope: !924)
!938 = distinct !DISubprogram(name: "connNonBlock", scope: !3, file: !3, line: 412, type: !214, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!939 = !DILocalVariable(name: "conn", arg: 1, scope: !938, file: !3, line: 412, type: !182)
!940 = !DILocation(line: 412, column: 30, scope: !938)
!941 = !DILocation(line: 413, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 413, column: 9)
!943 = !DILocation(line: 413, column: 15, scope: !942)
!944 = !DILocation(line: 413, column: 18, scope: !942)
!945 = !DILocation(line: 413, column: 9, scope: !938)
!946 = !DILocation(line: 413, column: 25, scope: !942)
!947 = !DILocation(line: 414, column: 31, scope: !938)
!948 = !DILocation(line: 414, column: 37, scope: !938)
!949 = !DILocation(line: 414, column: 12, scope: !938)
!950 = !DILocation(line: 414, column: 5, scope: !938)
!951 = !DILocation(line: 415, column: 1, scope: !938)
!952 = distinct !DISubprogram(name: "connEnableTcpNoDelay", scope: !3, file: !3, line: 417, type: !214, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!953 = !DILocalVariable(name: "conn", arg: 1, scope: !952, file: !3, line: 417, type: !182)
!954 = !DILocation(line: 417, column: 38, scope: !952)
!955 = !DILocation(line: 418, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !952, file: !3, line: 418, column: 9)
!957 = !DILocation(line: 418, column: 15, scope: !956)
!958 = !DILocation(line: 418, column: 18, scope: !956)
!959 = !DILocation(line: 418, column: 9, scope: !952)
!960 = !DILocation(line: 418, column: 25, scope: !956)
!961 = !DILocation(line: 419, column: 39, scope: !952)
!962 = !DILocation(line: 419, column: 45, scope: !952)
!963 = !DILocation(line: 419, column: 12, scope: !952)
!964 = !DILocation(line: 419, column: 5, scope: !952)
!965 = !DILocation(line: 420, column: 1, scope: !952)
!966 = distinct !DISubprogram(name: "connDisableTcpNoDelay", scope: !3, file: !3, line: 422, type: !214, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!967 = !DILocalVariable(name: "conn", arg: 1, scope: !966, file: !3, line: 422, type: !182)
!968 = !DILocation(line: 422, column: 39, scope: !966)
!969 = !DILocation(line: 423, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !3, line: 423, column: 9)
!971 = !DILocation(line: 423, column: 15, scope: !970)
!972 = !DILocation(line: 423, column: 18, scope: !970)
!973 = !DILocation(line: 423, column: 9, scope: !966)
!974 = !DILocation(line: 423, column: 25, scope: !970)
!975 = !DILocation(line: 424, column: 40, scope: !966)
!976 = !DILocation(line: 424, column: 46, scope: !966)
!977 = !DILocation(line: 424, column: 12, scope: !966)
!978 = !DILocation(line: 424, column: 5, scope: !966)
!979 = !DILocation(line: 425, column: 1, scope: !966)
!980 = distinct !DISubprogram(name: "connKeepAlive", scope: !3, file: !3, line: 427, type: !981, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!981 = !DISubroutineType(types: !982)
!982 = !{!30, !182, !30}
!983 = !DILocalVariable(name: "conn", arg: 1, scope: !980, file: !3, line: 427, type: !182)
!984 = !DILocation(line: 427, column: 31, scope: !980)
!985 = !DILocalVariable(name: "interval", arg: 2, scope: !980, file: !3, line: 427, type: !30)
!986 = !DILocation(line: 427, column: 41, scope: !980)
!987 = !DILocation(line: 428, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !980, file: !3, line: 428, column: 9)
!989 = !DILocation(line: 428, column: 15, scope: !988)
!990 = !DILocation(line: 428, column: 18, scope: !988)
!991 = !DILocation(line: 428, column: 9, scope: !980)
!992 = !DILocation(line: 428, column: 25, scope: !988)
!993 = !DILocation(line: 429, column: 32, scope: !980)
!994 = !DILocation(line: 429, column: 38, scope: !980)
!995 = !DILocation(line: 429, column: 42, scope: !980)
!996 = !DILocation(line: 429, column: 12, scope: !980)
!997 = !DILocation(line: 429, column: 5, scope: !980)
!998 = !DILocation(line: 430, column: 1, scope: !980)
!999 = distinct !DISubprogram(name: "connSendTimeout", scope: !3, file: !3, line: 432, type: !1000, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!30, !182, !33}
!1002 = !DILocalVariable(name: "conn", arg: 1, scope: !999, file: !3, line: 432, type: !182)
!1003 = !DILocation(line: 432, column: 33, scope: !999)
!1004 = !DILocalVariable(name: "ms", arg: 2, scope: !999, file: !3, line: 432, type: !33)
!1005 = !DILocation(line: 432, column: 49, scope: !999)
!1006 = !DILocation(line: 433, column: 34, scope: !999)
!1007 = !DILocation(line: 433, column: 40, scope: !999)
!1008 = !DILocation(line: 433, column: 44, scope: !999)
!1009 = !DILocation(line: 433, column: 12, scope: !999)
!1010 = !DILocation(line: 433, column: 5, scope: !999)
!1011 = distinct !DISubprogram(name: "connRecvTimeout", scope: !3, file: !3, line: 436, type: !1000, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1012 = !DILocalVariable(name: "conn", arg: 1, scope: !1011, file: !3, line: 436, type: !182)
!1013 = !DILocation(line: 436, column: 33, scope: !1011)
!1014 = !DILocalVariable(name: "ms", arg: 2, scope: !1011, file: !3, line: 436, type: !33)
!1015 = !DILocation(line: 436, column: 49, scope: !1011)
!1016 = !DILocation(line: 437, column: 34, scope: !1011)
!1017 = !DILocation(line: 437, column: 40, scope: !1011)
!1018 = !DILocation(line: 437, column: 44, scope: !1011)
!1019 = !DILocation(line: 437, column: 12, scope: !1011)
!1020 = !DILocation(line: 437, column: 5, scope: !1011)
!1021 = distinct !DISubprogram(name: "connGetState", scope: !3, file: !3, line: 440, type: !214, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1022 = !DILocalVariable(name: "conn", arg: 1, scope: !1021, file: !3, line: 440, type: !182)
!1023 = !DILocation(line: 440, column: 30, scope: !1021)
!1024 = !DILocation(line: 441, column: 12, scope: !1021)
!1025 = !DILocation(line: 441, column: 18, scope: !1021)
!1026 = !DILocation(line: 441, column: 5, scope: !1021)
!1027 = distinct !DISubprogram(name: "connGetInfo", scope: !3, file: !3, line: 449, type: !1028, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!114, !182, !166, !123}
!1030 = !DILocalVariable(name: "conn", arg: 1, scope: !1027, file: !3, line: 449, type: !182)
!1031 = !DILocation(line: 449, column: 37, scope: !1027)
!1032 = !DILocalVariable(name: "buf", arg: 2, scope: !1027, file: !3, line: 449, type: !166)
!1033 = !DILocation(line: 449, column: 49, scope: !1027)
!1034 = !DILocalVariable(name: "buf_len", arg: 3, scope: !1027, file: !3, line: 449, type: !123)
!1035 = !DILocation(line: 449, column: 61, scope: !1027)
!1036 = !DILocation(line: 450, column: 14, scope: !1027)
!1037 = !DILocation(line: 450, column: 19, scope: !1027)
!1038 = !DILocation(line: 450, column: 26, scope: !1027)
!1039 = !DILocation(line: 450, column: 39, scope: !1027)
!1040 = !DILocation(line: 450, column: 44, scope: !1027)
!1041 = !DILocation(line: 450, column: 59, scope: !1027)
!1042 = !DILocation(line: 450, column: 65, scope: !1027)
!1043 = !DILocation(line: 450, column: 5, scope: !1027)
!1044 = !DILocation(line: 451, column: 12, scope: !1027)
!1045 = !DILocation(line: 451, column: 5, scope: !1027)
!1046 = distinct !DISubprogram(name: "callHandler", scope: !1047, file: !1047, line: 77, type: !597, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1047 = !DIFile(filename: "./connhelpers.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1048 = !DILocalVariable(name: "conn", arg: 1, scope: !1046, file: !1047, line: 77, type: !182)
!1049 = !DILocation(line: 77, column: 43, scope: !1046)
!1050 = !DILocalVariable(name: "handler", arg: 2, scope: !1046, file: !1047, line: 77, type: !107)
!1051 = !DILocation(line: 77, column: 72, scope: !1046)
!1052 = !DILocation(line: 78, column: 18, scope: !1046)
!1053 = !DILocation(line: 78, column: 5, scope: !1046)
!1054 = !DILocation(line: 79, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1046, file: !1047, line: 79, column: 9)
!1056 = !DILocation(line: 79, column: 9, scope: !1046)
!1057 = !DILocation(line: 79, column: 18, scope: !1055)
!1058 = !DILocation(line: 79, column: 26, scope: !1055)
!1059 = !DILocation(line: 80, column: 18, scope: !1046)
!1060 = !DILocation(line: 80, column: 5, scope: !1046)
!1061 = !DILocation(line: 81, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1046, file: !1047, line: 81, column: 9)
!1063 = !DILocation(line: 81, column: 15, scope: !1062)
!1064 = !DILocation(line: 81, column: 21, scope: !1062)
!1065 = !DILocation(line: 81, column: 9, scope: !1046)
!1066 = !DILocation(line: 82, column: 26, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !1047, line: 82, column: 13)
!1068 = distinct !DILexicalBlock(scope: !1062, file: !1047, line: 81, column: 50)
!1069 = !DILocation(line: 82, column: 14, scope: !1067)
!1070 = !DILocation(line: 82, column: 13, scope: !1068)
!1071 = !DILocation(line: 82, column: 43, scope: !1067)
!1072 = !DILocation(line: 82, column: 33, scope: !1067)
!1073 = !DILocation(line: 83, column: 9, scope: !1068)
!1074 = !DILocation(line: 85, column: 5, scope: !1046)
!1075 = !DILocation(line: 86, column: 1, scope: !1046)
!1076 = distinct !DISubprogram(name: "connIncrRefs", scope: !1047, file: !1047, line: 52, type: !563, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1077 = !DILocalVariable(name: "conn", arg: 1, scope: !1076, file: !1047, line: 52, type: !182)
!1078 = !DILocation(line: 52, column: 45, scope: !1076)
!1079 = !DILocation(line: 53, column: 5, scope: !1076)
!1080 = !DILocation(line: 53, column: 11, scope: !1076)
!1081 = !DILocation(line: 53, column: 15, scope: !1076)
!1082 = !DILocation(line: 54, column: 1, scope: !1076)
!1083 = distinct !DISubprogram(name: "connDecrRefs", scope: !1047, file: !1047, line: 64, type: !563, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1084 = !DILocalVariable(name: "conn", arg: 1, scope: !1083, file: !1047, line: 64, type: !182)
!1085 = !DILocation(line: 64, column: 45, scope: !1083)
!1086 = !DILocation(line: 65, column: 5, scope: !1083)
!1087 = !DILocation(line: 65, column: 11, scope: !1083)
!1088 = !DILocation(line: 65, column: 15, scope: !1083)
!1089 = !DILocation(line: 66, column: 1, scope: !1083)
!1090 = distinct !DISubprogram(name: "connHasRefs", scope: !1047, file: !1047, line: 68, type: !214, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1091 = !DILocalVariable(name: "conn", arg: 1, scope: !1090, file: !1047, line: 68, type: !182)
!1092 = !DILocation(line: 68, column: 43, scope: !1090)
!1093 = !DILocation(line: 69, column: 12, scope: !1090)
!1094 = !DILocation(line: 69, column: 18, scope: !1090)
!1095 = !DILocation(line: 69, column: 5, scope: !1090)
!1096 = distinct !DISubprogram(name: "connClose", scope: !6, file: !6, line: 195, type: !563, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!1097 = !DILocalVariable(name: "conn", arg: 1, scope: !1096, file: !6, line: 195, type: !182)
!1098 = !DILocation(line: 195, column: 42, scope: !1096)
!1099 = !DILocation(line: 196, column: 5, scope: !1096)
!1100 = !DILocation(line: 196, column: 11, scope: !1096)
!1101 = !DILocation(line: 196, column: 17, scope: !1096)
!1102 = !DILocation(line: 196, column: 23, scope: !1096)
!1103 = !DILocation(line: 197, column: 1, scope: !1096)
