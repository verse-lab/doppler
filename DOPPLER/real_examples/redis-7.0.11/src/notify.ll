; ModuleID = 'notify.c'
source_filename = "notify.c"
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

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"__keyspace@\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"__:\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"__keyevent@\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @keyspaceEventsStringToFlags(i8* %classes) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %classes.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %flags = alloca i32, align 4
  store i8* %classes, i8** %classes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %classes.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %p, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i8*, i8** %classes.addr, align 8, !dbg !19
  store i8* %0, i8** %p, align 8, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %c, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %flags, align 4, !dbg !23
  br label %while.cond, !dbg !24

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i8*, i8** %p, align 8, !dbg !25
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !25
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !25
  %2 = load i8, i8* %1, align 1, !dbg !26
  %conv = sext i8 %2 to i32, !dbg !26
  store i32 %conv, i32* %c, align 4, !dbg !27
  %cmp = icmp ne i32 %conv, 0, !dbg !28
  br i1 %cmp, label %while.body, label %while.end, !dbg !24

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4, !dbg !29
  switch i32 %3, label %sw.default [
    i32 65, label %sw.bb
    i32 103, label %sw.bb2
    i32 36, label %sw.bb4
    i32 108, label %sw.bb6
    i32 115, label %sw.bb8
    i32 104, label %sw.bb10
    i32 122, label %sw.bb12
    i32 120, label %sw.bb14
    i32 101, label %sw.bb16
    i32 75, label %sw.bb18
    i32 69, label %sw.bb20
    i32 116, label %sw.bb22
    i32 109, label %sw.bb24
    i32 100, label %sw.bb26
    i32 110, label %sw.bb28
  ], !dbg !31

sw.bb:                                            ; preds = %while.body
  %4 = load i32, i32* %flags, align 4, !dbg !32
  %or = or i32 %4, 10236, !dbg !32
  store i32 %or, i32* %flags, align 4, !dbg !32
  br label %sw.epilog, !dbg !34

sw.bb2:                                           ; preds = %while.body
  %5 = load i32, i32* %flags, align 4, !dbg !35
  %or3 = or i32 %5, 4, !dbg !35
  store i32 %or3, i32* %flags, align 4, !dbg !35
  br label %sw.epilog, !dbg !36

sw.bb4:                                           ; preds = %while.body
  %6 = load i32, i32* %flags, align 4, !dbg !37
  %or5 = or i32 %6, 8, !dbg !37
  store i32 %or5, i32* %flags, align 4, !dbg !37
  br label %sw.epilog, !dbg !38

sw.bb6:                                           ; preds = %while.body
  %7 = load i32, i32* %flags, align 4, !dbg !39
  %or7 = or i32 %7, 16, !dbg !39
  store i32 %or7, i32* %flags, align 4, !dbg !39
  br label %sw.epilog, !dbg !40

sw.bb8:                                           ; preds = %while.body
  %8 = load i32, i32* %flags, align 4, !dbg !41
  %or9 = or i32 %8, 32, !dbg !41
  store i32 %or9, i32* %flags, align 4, !dbg !41
  br label %sw.epilog, !dbg !42

sw.bb10:                                          ; preds = %while.body
  %9 = load i32, i32* %flags, align 4, !dbg !43
  %or11 = or i32 %9, 64, !dbg !43
  store i32 %or11, i32* %flags, align 4, !dbg !43
  br label %sw.epilog, !dbg !44

sw.bb12:                                          ; preds = %while.body
  %10 = load i32, i32* %flags, align 4, !dbg !45
  %or13 = or i32 %10, 128, !dbg !45
  store i32 %or13, i32* %flags, align 4, !dbg !45
  br label %sw.epilog, !dbg !46

sw.bb14:                                          ; preds = %while.body
  %11 = load i32, i32* %flags, align 4, !dbg !47
  %or15 = or i32 %11, 256, !dbg !47
  store i32 %or15, i32* %flags, align 4, !dbg !47
  br label %sw.epilog, !dbg !48

sw.bb16:                                          ; preds = %while.body
  %12 = load i32, i32* %flags, align 4, !dbg !49
  %or17 = or i32 %12, 512, !dbg !49
  store i32 %or17, i32* %flags, align 4, !dbg !49
  br label %sw.epilog, !dbg !50

sw.bb18:                                          ; preds = %while.body
  %13 = load i32, i32* %flags, align 4, !dbg !51
  %or19 = or i32 %13, 1, !dbg !51
  store i32 %or19, i32* %flags, align 4, !dbg !51
  br label %sw.epilog, !dbg !52

sw.bb20:                                          ; preds = %while.body
  %14 = load i32, i32* %flags, align 4, !dbg !53
  %or21 = or i32 %14, 2, !dbg !53
  store i32 %or21, i32* %flags, align 4, !dbg !53
  br label %sw.epilog, !dbg !54

sw.bb22:                                          ; preds = %while.body
  %15 = load i32, i32* %flags, align 4, !dbg !55
  %or23 = or i32 %15, 1024, !dbg !55
  store i32 %or23, i32* %flags, align 4, !dbg !55
  br label %sw.epilog, !dbg !56

sw.bb24:                                          ; preds = %while.body
  %16 = load i32, i32* %flags, align 4, !dbg !57
  %or25 = or i32 %16, 2048, !dbg !57
  store i32 %or25, i32* %flags, align 4, !dbg !57
  br label %sw.epilog, !dbg !58

sw.bb26:                                          ; preds = %while.body
  %17 = load i32, i32* %flags, align 4, !dbg !59
  %or27 = or i32 %17, 8192, !dbg !59
  store i32 %or27, i32* %flags, align 4, !dbg !59
  br label %sw.epilog, !dbg !60

sw.bb28:                                          ; preds = %while.body
  %18 = load i32, i32* %flags, align 4, !dbg !61
  %or29 = or i32 %18, 16384, !dbg !61
  store i32 %or29, i32* %flags, align 4, !dbg !61
  br label %sw.epilog, !dbg !62

sw.default:                                       ; preds = %while.body
  store i32 -1, i32* %retval, align 4, !dbg !63
  br label %return, !dbg !63

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !dbg !24, !llvm.loop !64

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %flags, align 4, !dbg !67
  store i32 %19, i32* %retval, align 4, !dbg !68
  br label %return, !dbg !68

return:                                           ; preds = %while.end, %sw.default
  %20 = load i32, i32* %retval, align 4, !dbg !69
  ret i32 %20, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @keyspaceEventsFlagsToString(i32 %flags) #0 !dbg !70 {
entry:
  %flags.addr = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8** %res, metadata !77, metadata !DIExpression()), !dbg !78
  %call = call i8* @sdsempty(), !dbg !79
  store i8* %call, i8** %res, align 8, !dbg !80
  %0 = load i32, i32* %flags.addr, align 4, !dbg !81
  %and = and i32 %0, 10236, !dbg !83
  %cmp = icmp eq i32 %and, 10236, !dbg !84
  br i1 %cmp, label %if.then, label %if.else, !dbg !85

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %res, align 8, !dbg !86
  %call1 = call i8* @sdscatlen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1), !dbg !88
  store i8* %call1, i8** %res, align 8, !dbg !89
  br label %if.end55, !dbg !90

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %flags.addr, align 4, !dbg !91
  %and2 = and i32 %2, 4, !dbg !94
  %tobool = icmp ne i32 %and2, 0, !dbg !94
  br i1 %tobool, label %if.then3, label %if.end, !dbg !95

if.then3:                                         ; preds = %if.else
  %3 = load i8*, i8** %res, align 8, !dbg !96
  %call4 = call i8* @sdscatlen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1), !dbg !97
  store i8* %call4, i8** %res, align 8, !dbg !98
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then3, %if.else
  %4 = load i32, i32* %flags.addr, align 4, !dbg !100
  %and5 = and i32 %4, 8, !dbg !102
  %tobool6 = icmp ne i32 %and5, 0, !dbg !102
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !103

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %res, align 8, !dbg !104
  %call8 = call i8* @sdscatlen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !105
  store i8* %call8, i8** %res, align 8, !dbg !106
  br label %if.end9, !dbg !107

if.end9:                                          ; preds = %if.then7, %if.end
  %6 = load i32, i32* %flags.addr, align 4, !dbg !108
  %and10 = and i32 %6, 16, !dbg !110
  %tobool11 = icmp ne i32 %and10, 0, !dbg !110
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !111

if.then12:                                        ; preds = %if.end9
  %7 = load i8*, i8** %res, align 8, !dbg !112
  %call13 = call i8* @sdscatlen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1), !dbg !113
  store i8* %call13, i8** %res, align 8, !dbg !114
  br label %if.end14, !dbg !115

if.end14:                                         ; preds = %if.then12, %if.end9
  %8 = load i32, i32* %flags.addr, align 4, !dbg !116
  %and15 = and i32 %8, 32, !dbg !118
  %tobool16 = icmp ne i32 %and15, 0, !dbg !118
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !119

if.then17:                                        ; preds = %if.end14
  %9 = load i8*, i8** %res, align 8, !dbg !120
  %call18 = call i8* @sdscatlen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1), !dbg !121
  store i8* %call18, i8** %res, align 8, !dbg !122
  br label %if.end19, !dbg !123

if.end19:                                         ; preds = %if.then17, %if.end14
  %10 = load i32, i32* %flags.addr, align 4, !dbg !124
  %and20 = and i32 %10, 64, !dbg !126
  %tobool21 = icmp ne i32 %and20, 0, !dbg !126
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !127

if.then22:                                        ; preds = %if.end19
  %11 = load i8*, i8** %res, align 8, !dbg !128
  %call23 = call i8* @sdscatlen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1), !dbg !129
  store i8* %call23, i8** %res, align 8, !dbg !130
  br label %if.end24, !dbg !131

if.end24:                                         ; preds = %if.then22, %if.end19
  %12 = load i32, i32* %flags.addr, align 4, !dbg !132
  %and25 = and i32 %12, 128, !dbg !134
  %tobool26 = icmp ne i32 %and25, 0, !dbg !134
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !135

if.then27:                                        ; preds = %if.end24
  %13 = load i8*, i8** %res, align 8, !dbg !136
  %call28 = call i8* @sdscatlen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i64 1), !dbg !137
  store i8* %call28, i8** %res, align 8, !dbg !138
  br label %if.end29, !dbg !139

if.end29:                                         ; preds = %if.then27, %if.end24
  %14 = load i32, i32* %flags.addr, align 4, !dbg !140
  %and30 = and i32 %14, 256, !dbg !142
  %tobool31 = icmp ne i32 %and30, 0, !dbg !142
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !143

if.then32:                                        ; preds = %if.end29
  %15 = load i8*, i8** %res, align 8, !dbg !144
  %call33 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1), !dbg !145
  store i8* %call33, i8** %res, align 8, !dbg !146
  br label %if.end34, !dbg !147

if.end34:                                         ; preds = %if.then32, %if.end29
  %16 = load i32, i32* %flags.addr, align 4, !dbg !148
  %and35 = and i32 %16, 512, !dbg !150
  %tobool36 = icmp ne i32 %and35, 0, !dbg !150
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !151

if.then37:                                        ; preds = %if.end34
  %17 = load i8*, i8** %res, align 8, !dbg !152
  %call38 = call i8* @sdscatlen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i64 1), !dbg !153
  store i8* %call38, i8** %res, align 8, !dbg !154
  br label %if.end39, !dbg !155

if.end39:                                         ; preds = %if.then37, %if.end34
  %18 = load i32, i32* %flags.addr, align 4, !dbg !156
  %and40 = and i32 %18, 1024, !dbg !158
  %tobool41 = icmp ne i32 %and40, 0, !dbg !158
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !159

if.then42:                                        ; preds = %if.end39
  %19 = load i8*, i8** %res, align 8, !dbg !160
  %call43 = call i8* @sdscatlen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1), !dbg !161
  store i8* %call43, i8** %res, align 8, !dbg !162
  br label %if.end44, !dbg !163

if.end44:                                         ; preds = %if.then42, %if.end39
  %20 = load i32, i32* %flags.addr, align 4, !dbg !164
  %and45 = and i32 %20, 8192, !dbg !166
  %tobool46 = icmp ne i32 %and45, 0, !dbg !166
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !167

if.then47:                                        ; preds = %if.end44
  %21 = load i8*, i8** %res, align 8, !dbg !168
  %call48 = call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 1), !dbg !169
  store i8* %call48, i8** %res, align 8, !dbg !170
  br label %if.end49, !dbg !171

if.end49:                                         ; preds = %if.then47, %if.end44
  %22 = load i32, i32* %flags.addr, align 4, !dbg !172
  %and50 = and i32 %22, 16384, !dbg !174
  %tobool51 = icmp ne i32 %and50, 0, !dbg !174
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !175

if.then52:                                        ; preds = %if.end49
  %23 = load i8*, i8** %res, align 8, !dbg !176
  %call53 = call i8* @sdscatlen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1), !dbg !177
  store i8* %call53, i8** %res, align 8, !dbg !178
  br label %if.end54, !dbg !179

if.end54:                                         ; preds = %if.then52, %if.end49
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then
  %24 = load i32, i32* %flags.addr, align 4, !dbg !180
  %and56 = and i32 %24, 1, !dbg !182
  %tobool57 = icmp ne i32 %and56, 0, !dbg !182
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !183

if.then58:                                        ; preds = %if.end55
  %25 = load i8*, i8** %res, align 8, !dbg !184
  %call59 = call i8* @sdscatlen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 1), !dbg !185
  store i8* %call59, i8** %res, align 8, !dbg !186
  br label %if.end60, !dbg !187

if.end60:                                         ; preds = %if.then58, %if.end55
  %26 = load i32, i32* %flags.addr, align 4, !dbg !188
  %and61 = and i32 %26, 2, !dbg !190
  %tobool62 = icmp ne i32 %and61, 0, !dbg !190
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !191

if.then63:                                        ; preds = %if.end60
  %27 = load i8*, i8** %res, align 8, !dbg !192
  %call64 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1), !dbg !193
  store i8* %call64, i8** %res, align 8, !dbg !194
  br label %if.end65, !dbg !195

if.end65:                                         ; preds = %if.then63, %if.end60
  %28 = load i32, i32* %flags.addr, align 4, !dbg !196
  %and66 = and i32 %28, 2048, !dbg !198
  %tobool67 = icmp ne i32 %and66, 0, !dbg !198
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !199

if.then68:                                        ; preds = %if.end65
  %29 = load i8*, i8** %res, align 8, !dbg !200
  %call69 = call i8* @sdscatlen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i64 1), !dbg !201
  store i8* %call69, i8** %res, align 8, !dbg !202
  br label %if.end70, !dbg !203

if.end70:                                         ; preds = %if.then68, %if.end65
  %30 = load i8*, i8** %res, align 8, !dbg !204
  ret i8* %30, !dbg !205
}

declare dso_local i8* @sdsempty() #2

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @notifyKeyspaceEvent(i32 %type, i8* %event, %struct.redisObject* %key, i32 %dbid) #0 !dbg !206 {
entry:
  %type.addr = alloca i32, align 4
  %event.addr = alloca i8*, align 8
  %key.addr = alloca %struct.redisObject*, align 8
  %dbid.addr = alloca i32, align 4
  %chan = alloca i8*, align 8
  %chanobj = alloca %struct.redisObject*, align 8
  %eventobj = alloca %struct.redisObject*, align 8
  %len = alloca i32, align 4
  %buf = alloca [24 x i8], align 16
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !221, metadata !DIExpression()), !dbg !222
  store i8* %event, i8** %event.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %event.addr, metadata !223, metadata !DIExpression()), !dbg !224
  store %struct.redisObject* %key, %struct.redisObject** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store i32 %dbid, i32* %dbid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dbid.addr, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i8** %chan, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata %struct.redisObject** %chanobj, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata %struct.redisObject** %eventobj, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %len, metadata !235, metadata !DIExpression()), !dbg !236
  store i32 -1, i32* %len, align 4, !dbg !236
  call void @llvm.dbg.declare(metadata [24 x i8]* %buf, metadata !237, metadata !DIExpression()), !dbg !241
  %0 = load i32, i32* %type.addr, align 4, !dbg !242
  %1 = load i8*, i8** %event.addr, align 8, !dbg !243
  %2 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !244
  %3 = load i32, i32* %dbid.addr, align 4, !dbg !245
  call void @moduleNotifyKeyspaceEvent(i32 %0, i8* %1, %struct.redisObject* %2, i32 %3), !dbg !246
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 350), align 8, !dbg !247
  %5 = load i32, i32* %type.addr, align 4, !dbg !249
  %and = and i32 %4, %5, !dbg !250
  %tobool = icmp ne i32 %and, 0, !dbg !250
  br i1 %tobool, label %if.end, label %if.then, !dbg !251

if.then:                                          ; preds = %entry
  br label %return, !dbg !252

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %event.addr, align 8, !dbg !253
  %7 = load i8*, i8** %event.addr, align 8, !dbg !254
  %call = call i64 @strlen(i8* %7) #4, !dbg !255
  %call1 = call %struct.redisObject* @createStringObject(i8* %6, i64 %call), !dbg !256
  store %struct.redisObject* %call1, %struct.redisObject** %eventobj, align 8, !dbg !257
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 350), align 8, !dbg !258
  %and2 = and i32 %8, 1, !dbg !260
  %tobool3 = icmp ne i32 %and2, 0, !dbg !260
  br i1 %tobool3, label %if.then4, label %if.end14, !dbg !261

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i64 11), !dbg !262
  store i8* %call5, i8** %chan, align 8, !dbg !264
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %buf, i64 0, i64 0, !dbg !265
  %9 = load i32, i32* %dbid.addr, align 4, !dbg !266
  %conv = sext i32 %9 to i64, !dbg !266
  %call6 = call i32 @ll2string(i8* %arraydecay, i64 24, i64 %conv), !dbg !267
  store i32 %call6, i32* %len, align 4, !dbg !268
  %10 = load i8*, i8** %chan, align 8, !dbg !269
  %arraydecay7 = getelementptr inbounds [24 x i8], [24 x i8]* %buf, i64 0, i64 0, !dbg !270
  %11 = load i32, i32* %len, align 4, !dbg !271
  %conv8 = sext i32 %11 to i64, !dbg !271
  %call9 = call i8* @sdscatlen(i8* %10, i8* %arraydecay7, i64 %conv8), !dbg !272
  store i8* %call9, i8** %chan, align 8, !dbg !273
  %12 = load i8*, i8** %chan, align 8, !dbg !274
  %call10 = call i8* @sdscatlen(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3), !dbg !275
  store i8* %call10, i8** %chan, align 8, !dbg !276
  %13 = load i8*, i8** %chan, align 8, !dbg !277
  %14 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !278
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i32 0, i32 2, !dbg !279
  %15 = load i8*, i8** %ptr, align 8, !dbg !279
  %call11 = call i8* @sdscatsds(i8* %13, i8* %15), !dbg !280
  store i8* %call11, i8** %chan, align 8, !dbg !281
  %16 = load i8*, i8** %chan, align 8, !dbg !282
  %call12 = call %struct.redisObject* @createObject(i32 0, i8* %16), !dbg !283
  store %struct.redisObject* %call12, %struct.redisObject** %chanobj, align 8, !dbg !284
  %17 = load %struct.redisObject*, %struct.redisObject** %chanobj, align 8, !dbg !285
  %18 = load %struct.redisObject*, %struct.redisObject** %eventobj, align 8, !dbg !286
  %call13 = call i32 @pubsubPublishMessage(%struct.redisObject* %17, %struct.redisObject* %18, i32 0), !dbg !287
  %19 = load %struct.redisObject*, %struct.redisObject** %chanobj, align 8, !dbg !288
  call void @decrRefCount(%struct.redisObject* %19), !dbg !289
  br label %if.end14, !dbg !290

if.end14:                                         ; preds = %if.then4, %if.end
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 350), align 8, !dbg !291
  %and15 = and i32 %20, 2, !dbg !293
  %tobool16 = icmp ne i32 %and15, 0, !dbg !293
  br i1 %tobool16, label %if.then17, label %if.end33, !dbg !294

if.then17:                                        ; preds = %if.end14
  %call18 = call i8* @sdsnewlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 11), !dbg !295
  store i8* %call18, i8** %chan, align 8, !dbg !297
  %21 = load i32, i32* %len, align 4, !dbg !298
  %cmp = icmp eq i32 %21, -1, !dbg !300
  br i1 %cmp, label %if.then20, label %if.end24, !dbg !301

if.then20:                                        ; preds = %if.then17
  %arraydecay21 = getelementptr inbounds [24 x i8], [24 x i8]* %buf, i64 0, i64 0, !dbg !302
  %22 = load i32, i32* %dbid.addr, align 4, !dbg !303
  %conv22 = sext i32 %22 to i64, !dbg !303
  %call23 = call i32 @ll2string(i8* %arraydecay21, i64 24, i64 %conv22), !dbg !304
  store i32 %call23, i32* %len, align 4, !dbg !305
  br label %if.end24, !dbg !306

if.end24:                                         ; preds = %if.then20, %if.then17
  %23 = load i8*, i8** %chan, align 8, !dbg !307
  %arraydecay25 = getelementptr inbounds [24 x i8], [24 x i8]* %buf, i64 0, i64 0, !dbg !308
  %24 = load i32, i32* %len, align 4, !dbg !309
  %conv26 = sext i32 %24 to i64, !dbg !309
  %call27 = call i8* @sdscatlen(i8* %23, i8* %arraydecay25, i64 %conv26), !dbg !310
  store i8* %call27, i8** %chan, align 8, !dbg !311
  %25 = load i8*, i8** %chan, align 8, !dbg !312
  %call28 = call i8* @sdscatlen(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i64 3), !dbg !313
  store i8* %call28, i8** %chan, align 8, !dbg !314
  %26 = load i8*, i8** %chan, align 8, !dbg !315
  %27 = load %struct.redisObject*, %struct.redisObject** %eventobj, align 8, !dbg !316
  %ptr29 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i32 0, i32 2, !dbg !317
  %28 = load i8*, i8** %ptr29, align 8, !dbg !317
  %call30 = call i8* @sdscatsds(i8* %26, i8* %28), !dbg !318
  store i8* %call30, i8** %chan, align 8, !dbg !319
  %29 = load i8*, i8** %chan, align 8, !dbg !320
  %call31 = call %struct.redisObject* @createObject(i32 0, i8* %29), !dbg !321
  store %struct.redisObject* %call31, %struct.redisObject** %chanobj, align 8, !dbg !322
  %30 = load %struct.redisObject*, %struct.redisObject** %chanobj, align 8, !dbg !323
  %31 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !324
  %call32 = call i32 @pubsubPublishMessage(%struct.redisObject* %30, %struct.redisObject* %31, i32 0), !dbg !325
  %32 = load %struct.redisObject*, %struct.redisObject** %chanobj, align 8, !dbg !326
  call void @decrRefCount(%struct.redisObject* %32), !dbg !327
  br label %if.end33, !dbg !328

if.end33:                                         ; preds = %if.end24, %if.end14
  %33 = load %struct.redisObject*, %struct.redisObject** %eventobj, align 8, !dbg !329
  call void @decrRefCount(%struct.redisObject* %33), !dbg !330
  br label %return, !dbg !331

return:                                           ; preds = %if.end33, %if.then
  ret void, !dbg !331
}

declare dso_local void @moduleNotifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) #2

declare dso_local %struct.redisObject* @createStringObject(i8*, i64) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @sdsnewlen(i8*, i64) #2

declare dso_local i32 @ll2string(i8*, i64, i64) #2

declare dso_local i8* @sdscatsds(i8*, i8*) #2

declare dso_local %struct.redisObject* @createObject(i32, i8*) #2

declare dso_local i32 @pubsubPublishMessage(%struct.redisObject*, %struct.redisObject*, i32) #2

declare dso_local void @decrRefCount(%struct.redisObject*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "notify.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!9 = distinct !DISubprogram(name: "keyspaceEventsStringToFlags", scope: !1, file: !1, line: 40, type: !10, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "classes", arg: 1, scope: !9, file: !1, line: 40, type: !13)
!16 = !DILocation(line: 40, column: 39, scope: !9)
!17 = !DILocalVariable(name: "p", scope: !9, file: !1, line: 41, type: !13)
!18 = !DILocation(line: 41, column: 11, scope: !9)
!19 = !DILocation(line: 41, column: 15, scope: !9)
!20 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 42, type: !12)
!21 = !DILocation(line: 42, column: 9, scope: !9)
!22 = !DILocalVariable(name: "flags", scope: !9, file: !1, line: 42, type: !12)
!23 = !DILocation(line: 42, column: 12, scope: !9)
!24 = !DILocation(line: 44, column: 5, scope: !9)
!25 = !DILocation(line: 44, column: 18, scope: !9)
!26 = !DILocation(line: 44, column: 16, scope: !9)
!27 = !DILocation(line: 44, column: 14, scope: !9)
!28 = !DILocation(line: 44, column: 22, scope: !9)
!29 = !DILocation(line: 45, column: 16, scope: !30)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 31)
!31 = !DILocation(line: 45, column: 9, scope: !30)
!32 = !DILocation(line: 46, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 19)
!34 = !DILocation(line: 46, column: 40, scope: !33)
!35 = !DILocation(line: 47, column: 25, scope: !33)
!36 = !DILocation(line: 47, column: 44, scope: !33)
!37 = !DILocation(line: 48, column: 25, scope: !33)
!38 = !DILocation(line: 48, column: 43, scope: !33)
!39 = !DILocation(line: 49, column: 25, scope: !33)
!40 = !DILocation(line: 49, column: 41, scope: !33)
!41 = !DILocation(line: 50, column: 25, scope: !33)
!42 = !DILocation(line: 50, column: 40, scope: !33)
!43 = !DILocation(line: 51, column: 25, scope: !33)
!44 = !DILocation(line: 51, column: 41, scope: !33)
!45 = !DILocation(line: 52, column: 25, scope: !33)
!46 = !DILocation(line: 52, column: 41, scope: !33)
!47 = !DILocation(line: 53, column: 25, scope: !33)
!48 = !DILocation(line: 53, column: 44, scope: !33)
!49 = !DILocation(line: 54, column: 25, scope: !33)
!50 = !DILocation(line: 54, column: 44, scope: !33)
!51 = !DILocation(line: 55, column: 25, scope: !33)
!52 = !DILocation(line: 55, column: 45, scope: !33)
!53 = !DILocation(line: 56, column: 25, scope: !33)
!54 = !DILocation(line: 56, column: 45, scope: !33)
!55 = !DILocation(line: 57, column: 25, scope: !33)
!56 = !DILocation(line: 57, column: 43, scope: !33)
!57 = !DILocation(line: 58, column: 25, scope: !33)
!58 = !DILocation(line: 58, column: 45, scope: !33)
!59 = !DILocation(line: 59, column: 25, scope: !33)
!60 = !DILocation(line: 59, column: 43, scope: !33)
!61 = !DILocation(line: 60, column: 25, scope: !33)
!62 = !DILocation(line: 60, column: 40, scope: !33)
!63 = !DILocation(line: 61, column: 18, scope: !33)
!64 = distinct !{!64, !24, !65, !66}
!65 = !DILocation(line: 63, column: 5, scope: !9)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 64, column: 12, scope: !9)
!68 = !DILocation(line: 64, column: 5, scope: !9)
!69 = !DILocation(line: 65, column: 1, scope: !9)
!70 = distinct !DISubprogram(name: "keyspaceEventsFlagsToString", scope: !1, file: !1, line: 71, type: !71, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !12}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !74, line: 43, baseType: !13)
!74 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!75 = !DILocalVariable(name: "flags", arg: 1, scope: !70, file: !1, line: 71, type: !12)
!76 = !DILocation(line: 71, column: 37, scope: !70)
!77 = !DILocalVariable(name: "res", scope: !70, file: !1, line: 72, type: !73)
!78 = !DILocation(line: 72, column: 9, scope: !70)
!79 = !DILocation(line: 74, column: 11, scope: !70)
!80 = !DILocation(line: 74, column: 9, scope: !70)
!81 = !DILocation(line: 75, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !70, file: !1, line: 75, column: 9)
!83 = !DILocation(line: 75, column: 16, scope: !82)
!84 = !DILocation(line: 75, column: 30, scope: !82)
!85 = !DILocation(line: 75, column: 9, scope: !70)
!86 = !DILocation(line: 76, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 75, column: 45)
!88 = !DILocation(line: 76, column: 15, scope: !87)
!89 = !DILocation(line: 76, column: 13, scope: !87)
!90 = !DILocation(line: 77, column: 5, scope: !87)
!91 = !DILocation(line: 78, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 78, column: 13)
!93 = distinct !DILexicalBlock(scope: !82, file: !1, line: 77, column: 12)
!94 = !DILocation(line: 78, column: 19, scope: !92)
!95 = !DILocation(line: 78, column: 13, scope: !93)
!96 = !DILocation(line: 78, column: 53, scope: !92)
!97 = !DILocation(line: 78, column: 43, scope: !92)
!98 = !DILocation(line: 78, column: 41, scope: !92)
!99 = !DILocation(line: 78, column: 37, scope: !92)
!100 = !DILocation(line: 79, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !1, line: 79, column: 13)
!102 = !DILocation(line: 79, column: 19, scope: !101)
!103 = !DILocation(line: 79, column: 13, scope: !93)
!104 = !DILocation(line: 79, column: 52, scope: !101)
!105 = !DILocation(line: 79, column: 42, scope: !101)
!106 = !DILocation(line: 79, column: 40, scope: !101)
!107 = !DILocation(line: 79, column: 36, scope: !101)
!108 = !DILocation(line: 80, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !93, file: !1, line: 80, column: 13)
!110 = !DILocation(line: 80, column: 19, scope: !109)
!111 = !DILocation(line: 80, column: 13, scope: !93)
!112 = !DILocation(line: 80, column: 50, scope: !109)
!113 = !DILocation(line: 80, column: 40, scope: !109)
!114 = !DILocation(line: 80, column: 38, scope: !109)
!115 = !DILocation(line: 80, column: 34, scope: !109)
!116 = !DILocation(line: 81, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !93, file: !1, line: 81, column: 13)
!118 = !DILocation(line: 81, column: 19, scope: !117)
!119 = !DILocation(line: 81, column: 13, scope: !93)
!120 = !DILocation(line: 81, column: 49, scope: !117)
!121 = !DILocation(line: 81, column: 39, scope: !117)
!122 = !DILocation(line: 81, column: 37, scope: !117)
!123 = !DILocation(line: 81, column: 33, scope: !117)
!124 = !DILocation(line: 82, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !93, file: !1, line: 82, column: 13)
!126 = !DILocation(line: 82, column: 19, scope: !125)
!127 = !DILocation(line: 82, column: 13, scope: !93)
!128 = !DILocation(line: 82, column: 50, scope: !125)
!129 = !DILocation(line: 82, column: 40, scope: !125)
!130 = !DILocation(line: 82, column: 38, scope: !125)
!131 = !DILocation(line: 82, column: 34, scope: !125)
!132 = !DILocation(line: 83, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !93, file: !1, line: 83, column: 13)
!134 = !DILocation(line: 83, column: 19, scope: !133)
!135 = !DILocation(line: 83, column: 13, scope: !93)
!136 = !DILocation(line: 83, column: 50, scope: !133)
!137 = !DILocation(line: 83, column: 40, scope: !133)
!138 = !DILocation(line: 83, column: 38, scope: !133)
!139 = !DILocation(line: 83, column: 34, scope: !133)
!140 = !DILocation(line: 84, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !93, file: !1, line: 84, column: 13)
!142 = !DILocation(line: 84, column: 19, scope: !141)
!143 = !DILocation(line: 84, column: 13, scope: !93)
!144 = !DILocation(line: 84, column: 53, scope: !141)
!145 = !DILocation(line: 84, column: 43, scope: !141)
!146 = !DILocation(line: 84, column: 41, scope: !141)
!147 = !DILocation(line: 84, column: 37, scope: !141)
!148 = !DILocation(line: 85, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !93, file: !1, line: 85, column: 13)
!150 = !DILocation(line: 85, column: 19, scope: !149)
!151 = !DILocation(line: 85, column: 13, scope: !93)
!152 = !DILocation(line: 85, column: 53, scope: !149)
!153 = !DILocation(line: 85, column: 43, scope: !149)
!154 = !DILocation(line: 85, column: 41, scope: !149)
!155 = !DILocation(line: 85, column: 37, scope: !149)
!156 = !DILocation(line: 86, column: 13, scope: !157)
!157 = distinct !DILexicalBlock(scope: !93, file: !1, line: 86, column: 13)
!158 = !DILocation(line: 86, column: 19, scope: !157)
!159 = !DILocation(line: 86, column: 13, scope: !93)
!160 = !DILocation(line: 86, column: 52, scope: !157)
!161 = !DILocation(line: 86, column: 42, scope: !157)
!162 = !DILocation(line: 86, column: 40, scope: !157)
!163 = !DILocation(line: 86, column: 36, scope: !157)
!164 = !DILocation(line: 87, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !93, file: !1, line: 87, column: 13)
!166 = !DILocation(line: 87, column: 19, scope: !165)
!167 = !DILocation(line: 87, column: 13, scope: !93)
!168 = !DILocation(line: 87, column: 52, scope: !165)
!169 = !DILocation(line: 87, column: 42, scope: !165)
!170 = !DILocation(line: 87, column: 40, scope: !165)
!171 = !DILocation(line: 87, column: 36, scope: !165)
!172 = !DILocation(line: 88, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !93, file: !1, line: 88, column: 13)
!174 = !DILocation(line: 88, column: 19, scope: !173)
!175 = !DILocation(line: 88, column: 13, scope: !93)
!176 = !DILocation(line: 88, column: 49, scope: !173)
!177 = !DILocation(line: 88, column: 39, scope: !173)
!178 = !DILocation(line: 88, column: 37, scope: !173)
!179 = !DILocation(line: 88, column: 33, scope: !173)
!180 = !DILocation(line: 90, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !70, file: !1, line: 90, column: 9)
!182 = !DILocation(line: 90, column: 15, scope: !181)
!183 = !DILocation(line: 90, column: 9, scope: !70)
!184 = !DILocation(line: 90, column: 50, scope: !181)
!185 = !DILocation(line: 90, column: 40, scope: !181)
!186 = !DILocation(line: 90, column: 38, scope: !181)
!187 = !DILocation(line: 90, column: 34, scope: !181)
!188 = !DILocation(line: 91, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !70, file: !1, line: 91, column: 9)
!190 = !DILocation(line: 91, column: 15, scope: !189)
!191 = !DILocation(line: 91, column: 9, scope: !70)
!192 = !DILocation(line: 91, column: 50, scope: !189)
!193 = !DILocation(line: 91, column: 40, scope: !189)
!194 = !DILocation(line: 91, column: 38, scope: !189)
!195 = !DILocation(line: 91, column: 34, scope: !189)
!196 = !DILocation(line: 92, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !70, file: !1, line: 92, column: 9)
!198 = !DILocation(line: 92, column: 15, scope: !197)
!199 = !DILocation(line: 92, column: 9, scope: !70)
!200 = !DILocation(line: 92, column: 50, scope: !197)
!201 = !DILocation(line: 92, column: 40, scope: !197)
!202 = !DILocation(line: 92, column: 38, scope: !197)
!203 = !DILocation(line: 92, column: 34, scope: !197)
!204 = !DILocation(line: 93, column: 12, scope: !70)
!205 = !DILocation(line: 93, column: 5, scope: !70)
!206 = distinct !DISubprogram(name: "notifyKeyspaceEvent", scope: !1, file: !1, line: 104, type: !207, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !12, !13, !209, !12}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !211, line: 862, baseType: !212)
!211 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !211, line: 854, size: 128, elements: !213)
!213 = !{!214, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !211, line: 855, baseType: !215, size: 4, flags: DIFlagBitField, extraData: i64 0)
!215 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !212, file: !211, line: 856, baseType: !215, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !212, file: !211, line: 857, baseType: !215, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !212, file: !211, line: 860, baseType: !12, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !212, file: !211, line: 861, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!221 = !DILocalVariable(name: "type", arg: 1, scope: !206, file: !1, line: 104, type: !12)
!222 = !DILocation(line: 104, column: 30, scope: !206)
!223 = !DILocalVariable(name: "event", arg: 2, scope: !206, file: !1, line: 104, type: !13)
!224 = !DILocation(line: 104, column: 42, scope: !206)
!225 = !DILocalVariable(name: "key", arg: 3, scope: !206, file: !1, line: 104, type: !209)
!226 = !DILocation(line: 104, column: 55, scope: !206)
!227 = !DILocalVariable(name: "dbid", arg: 4, scope: !206, file: !1, line: 104, type: !12)
!228 = !DILocation(line: 104, column: 64, scope: !206)
!229 = !DILocalVariable(name: "chan", scope: !206, file: !1, line: 105, type: !73)
!230 = !DILocation(line: 105, column: 9, scope: !206)
!231 = !DILocalVariable(name: "chanobj", scope: !206, file: !1, line: 106, type: !209)
!232 = !DILocation(line: 106, column: 11, scope: !206)
!233 = !DILocalVariable(name: "eventobj", scope: !206, file: !1, line: 106, type: !209)
!234 = !DILocation(line: 106, column: 21, scope: !206)
!235 = !DILocalVariable(name: "len", scope: !206, file: !1, line: 107, type: !12)
!236 = !DILocation(line: 107, column: 9, scope: !206)
!237 = !DILocalVariable(name: "buf", scope: !206, file: !1, line: 108, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DILocation(line: 108, column: 10, scope: !206)
!242 = !DILocation(line: 114, column: 32, scope: !206)
!243 = !DILocation(line: 114, column: 38, scope: !206)
!244 = !DILocation(line: 114, column: 45, scope: !206)
!245 = !DILocation(line: 114, column: 50, scope: !206)
!246 = !DILocation(line: 114, column: 6, scope: !206)
!247 = !DILocation(line: 117, column: 18, scope: !248)
!248 = distinct !DILexicalBlock(scope: !206, file: !1, line: 117, column: 9)
!249 = !DILocation(line: 117, column: 43, scope: !248)
!250 = !DILocation(line: 117, column: 41, scope: !248)
!251 = !DILocation(line: 117, column: 9, scope: !206)
!252 = !DILocation(line: 117, column: 50, scope: !248)
!253 = !DILocation(line: 119, column: 35, scope: !206)
!254 = !DILocation(line: 119, column: 48, scope: !206)
!255 = !DILocation(line: 119, column: 41, scope: !206)
!256 = !DILocation(line: 119, column: 16, scope: !206)
!257 = !DILocation(line: 119, column: 14, scope: !206)
!258 = !DILocation(line: 122, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !206, file: !1, line: 122, column: 9)
!260 = !DILocation(line: 122, column: 39, scope: !259)
!261 = !DILocation(line: 122, column: 9, scope: !206)
!262 = !DILocation(line: 123, column: 16, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 122, column: 58)
!264 = !DILocation(line: 123, column: 14, scope: !263)
!265 = !DILocation(line: 124, column: 25, scope: !263)
!266 = !DILocation(line: 124, column: 41, scope: !263)
!267 = !DILocation(line: 124, column: 15, scope: !263)
!268 = !DILocation(line: 124, column: 13, scope: !263)
!269 = !DILocation(line: 125, column: 26, scope: !263)
!270 = !DILocation(line: 125, column: 32, scope: !263)
!271 = !DILocation(line: 125, column: 37, scope: !263)
!272 = !DILocation(line: 125, column: 16, scope: !263)
!273 = !DILocation(line: 125, column: 14, scope: !263)
!274 = !DILocation(line: 126, column: 26, scope: !263)
!275 = !DILocation(line: 126, column: 16, scope: !263)
!276 = !DILocation(line: 126, column: 14, scope: !263)
!277 = !DILocation(line: 127, column: 26, scope: !263)
!278 = !DILocation(line: 127, column: 32, scope: !263)
!279 = !DILocation(line: 127, column: 37, scope: !263)
!280 = !DILocation(line: 127, column: 16, scope: !263)
!281 = !DILocation(line: 127, column: 14, scope: !263)
!282 = !DILocation(line: 128, column: 44, scope: !263)
!283 = !DILocation(line: 128, column: 19, scope: !263)
!284 = !DILocation(line: 128, column: 17, scope: !263)
!285 = !DILocation(line: 129, column: 30, scope: !263)
!286 = !DILocation(line: 129, column: 39, scope: !263)
!287 = !DILocation(line: 129, column: 9, scope: !263)
!288 = !DILocation(line: 130, column: 22, scope: !263)
!289 = !DILocation(line: 130, column: 9, scope: !263)
!290 = !DILocation(line: 131, column: 5, scope: !263)
!291 = !DILocation(line: 134, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !206, file: !1, line: 134, column: 9)
!293 = !DILocation(line: 134, column: 39, scope: !292)
!294 = !DILocation(line: 134, column: 9, scope: !206)
!295 = !DILocation(line: 135, column: 16, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 134, column: 58)
!297 = !DILocation(line: 135, column: 14, scope: !296)
!298 = !DILocation(line: 136, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !1, line: 136, column: 13)
!300 = !DILocation(line: 136, column: 17, scope: !299)
!301 = !DILocation(line: 136, column: 13, scope: !296)
!302 = !DILocation(line: 136, column: 40, scope: !299)
!303 = !DILocation(line: 136, column: 56, scope: !299)
!304 = !DILocation(line: 136, column: 30, scope: !299)
!305 = !DILocation(line: 136, column: 28, scope: !299)
!306 = !DILocation(line: 136, column: 24, scope: !299)
!307 = !DILocation(line: 137, column: 26, scope: !296)
!308 = !DILocation(line: 137, column: 32, scope: !296)
!309 = !DILocation(line: 137, column: 37, scope: !296)
!310 = !DILocation(line: 137, column: 16, scope: !296)
!311 = !DILocation(line: 137, column: 14, scope: !296)
!312 = !DILocation(line: 138, column: 26, scope: !296)
!313 = !DILocation(line: 138, column: 16, scope: !296)
!314 = !DILocation(line: 138, column: 14, scope: !296)
!315 = !DILocation(line: 139, column: 26, scope: !296)
!316 = !DILocation(line: 139, column: 32, scope: !296)
!317 = !DILocation(line: 139, column: 42, scope: !296)
!318 = !DILocation(line: 139, column: 16, scope: !296)
!319 = !DILocation(line: 139, column: 14, scope: !296)
!320 = !DILocation(line: 140, column: 44, scope: !296)
!321 = !DILocation(line: 140, column: 19, scope: !296)
!322 = !DILocation(line: 140, column: 17, scope: !296)
!323 = !DILocation(line: 141, column: 30, scope: !296)
!324 = !DILocation(line: 141, column: 39, scope: !296)
!325 = !DILocation(line: 141, column: 9, scope: !296)
!326 = !DILocation(line: 142, column: 22, scope: !296)
!327 = !DILocation(line: 142, column: 9, scope: !296)
!328 = !DILocation(line: 143, column: 5, scope: !296)
!329 = !DILocation(line: 144, column: 18, scope: !206)
!330 = !DILocation(line: 144, column: 5, scope: !206)
!331 = !DILocation(line: 145, column: 1, scope: !206)
