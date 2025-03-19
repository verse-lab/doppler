; ModuleID = 'redis-check-rdb.c'
source_filename = "redis-check-rdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { %struct._rio*, %struct.redisObject*, i32, i64, i64, i64, i32, i32, [1024 x i8] }
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, i64, %union.anon }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.connection*, i64, i8*, i64, i64 }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.22], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
%struct.socketFds = type { [16 x i32], i32 }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.pause_event = type { i32, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon.22 = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.aofManifest = type { %struct.aofInfo*, %struct.list*, %struct.list*, i64, i64, i32 }
%struct.aofInfo = type { i8*, i64, i32 }
%struct.saveparam = type { i64, i32 }
%struct.redisOpArray = type { %struct.redisOp*, i32, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32 }
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
%struct.keySpec = type { i8*, i64, i32, %union.anon.16, i32, %union.anon.19 }
%union.anon.16 = type { %struct.anon.18 }
%struct.anon.18 = type { i8*, i32 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { i32, i32, i32 }
%struct.RedisModuleCommand = type opaque
%struct.user = type { i8*, i32, %struct.list*, %struct.list*, %struct.redisObject* }
%struct.dictEntry = type { i8*, %union.anon.15, %struct.dictEntry*, [0 x i8*] }
%union.anon.15 = type { i8* }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.siginfo_t = type { i32, i32, i32, i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.8, [80 x i8] }
%struct.anon.8 = type { i32, i32, i32, i64, i64 }
%struct.sigaction = type { %union.anon.14, %struct.__sigset_t, i32, void ()* }
%union.anon.14 = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.functionsLibCtx = type opaque
%struct.timeval = type { i64, i64 }

@rdbCheckMode = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"read-expire\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"read-key\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"read-object-value\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"check-sum\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"read-len\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"read-aux\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"read-module-aux\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"read-functions\00", align 1
@rdb_check_doing_string = dso_local global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)], align 16, !dbg !22
@.str.10 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"list-linked\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"set-hashtable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"zset-v1\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"hash-hashtable\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"zset-v2\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"module-value\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"hash-zipmap\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"list-ziplist\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"set-intset\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"zset-ziplist\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"hash-ziplist\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"quicklist\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"hash-listpack\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"zset-listpack\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"quicklist-v2\00", align 1
@rdb_type_string = dso_local global [19 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)], align 16, !dbg !27
@.str.28 = private unnamed_addr constant [22 x i8] c"[info] %lu keys read\0A\00", align 1
@rdbstate = dso_local global %struct.anon zeroinitializer, align 8, !dbg !307
@.str.29 = private unnamed_addr constant [20 x i8] c"[info] %lu expires\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"[info] %lu already expired\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"--- RDB ERROR DETECTED ---\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"[offset %llu] %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"[additional info] While doing: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"[additional info] Reading key '%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"[additional info] Reading type %d (%s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Server crash checking the specified RDB file!\00", align 1
@redis_check_rdb.rdb = internal global %struct._rio zeroinitializer, align 8, !dbg !32
@.str.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Wrong signature trying to load DB from file\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Can't handle RDB format version %d\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Selecting DB ID %llu\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"AUX FIELD %s = '%s'\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"bad when_opcode\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"MODULE AUX for: %s\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"Failed loading library, %s\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"Invalid object type: %d\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.48 = private unnamed_addr constant [63 x i8] c"RDB file was saved with checksum disabled: no check performed.\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"RDB CRC error\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Checksum OK\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"Unexpected EOF reading RDB file\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [27 x i8] c"Usage: %s <rdb-file-name>\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"redis-check-rdb %s\0A\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.56 = private unnamed_addr constant [21 x i8] c"Checking RDB file %s\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"\\o/ RDB looks OK! \\o/\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"7.0.11\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c" (git:%s\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"-dirty\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbShowGenericInfo() #0 !dbg !340 {
entry:
  %0 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 3), align 8, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i64 %0), !dbg !344
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 4), align 8, !dbg !345
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0), i64 %1), !dbg !346
  %2 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 5), align 8, !dbg !347
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i64 %2), !dbg !348
  ret void, !dbg !349
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbCheckError(i8* %fmt, ...) #0 !dbg !350 {
entry:
  %fmt.addr = alloca i8*, align 8
  %msg = alloca [1024 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !353, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.declare(metadata [1024 x i8]* %msg, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !357, metadata !DIExpression()), !dbg !370
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !371
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !371
  call void @llvm.va_start(i8* %arraydecay1), !dbg !371
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i64 0, i64 0, !dbg !372
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !373
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !374
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %0, %struct.__va_list_tag* %arraydecay3) #7, !dbg !375
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !376
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !376
  call void @llvm.va_end(i8* %arraydecay45), !dbg !376
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0)), !dbg !377
  %1 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 0), align 8, !dbg !378
  %tobool = icmp ne %struct._rio* %1, null, !dbg !379
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !379

cond.true:                                        ; preds = %entry
  %2 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 0), align 8, !dbg !380
  %processed_bytes = getelementptr inbounds %struct._rio, %struct._rio* %2, i32 0, i32 7, !dbg !381
  %3 = load i64, i64* %processed_bytes, align 8, !dbg !381
  br label %cond.end, !dbg !379

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !379

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ], !dbg !379
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i64 0, i64 0, !dbg !382
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i64 %cond, i8* %arraydecay7), !dbg !383
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !384
  %idxprom = sext i32 %4 to i64, !dbg !385
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* @rdb_check_doing_string, i64 0, i64 %idxprom, !dbg !385
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !385
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0), i8* %5), !dbg !386
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 1), align 8, !dbg !387
  %tobool10 = icmp ne %struct.redisObject* %6, null, !dbg !389
  br i1 %tobool10, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %cond.end
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 1), align 8, !dbg !391
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !392
  %8 = load i8*, i8** %ptr, align 8, !dbg !392
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0), i8* %8), !dbg !393
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !394
  %cmp = icmp ne i32 %9, -1, !dbg !396
  br i1 %cmp, label %if.then12, label %if.end22, !dbg !397

if.then12:                                        ; preds = %if.end
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !398
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !399
  %conv = zext i32 %11 to i64, !dbg !400
  %cmp13 = icmp ult i64 %conv, 19, !dbg !401
  br i1 %cmp13, label %cond.true15, label %cond.false18, !dbg !402

cond.true15:                                      ; preds = %if.then12
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !403
  %idxprom16 = sext i32 %12 to i64, !dbg !404
  %arrayidx17 = getelementptr inbounds [19 x i8*], [19 x i8*]* @rdb_type_string, i64 0, i64 %idxprom16, !dbg !404
  %13 = load i8*, i8** %arrayidx17, align 8, !dbg !404
  br label %cond.end19, !dbg !402

cond.false18:                                     ; preds = %if.then12
  br label %cond.end19, !dbg !402

cond.end19:                                       ; preds = %cond.false18, %cond.true15
  %cond20 = phi i8* [ %13, %cond.true15 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), %cond.false18 ], !dbg !402
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i32 %10, i8* %cond20), !dbg !405
  br label %if.end22, !dbg !405

if.end22:                                         ; preds = %cond.end19, %if.end
  call void @rdbShowGenericInfo(), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbCheckInfo(i8* %fmt, ...) #0 !dbg !408 {
entry:
  %fmt.addr = alloca i8*, align 8
  %msg = alloca [1024 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !409, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.declare(metadata [1024 x i8]* %msg, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !413, metadata !DIExpression()), !dbg !414
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !415
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !415
  call void @llvm.va_start(i8* %arraydecay1), !dbg !415
  %arraydecay2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i64 0, i64 0, !dbg !416
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !417
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !418
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 1024, i8* %0, %struct.__va_list_tag* %arraydecay3) #7, !dbg !419
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !420
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !420
  call void @llvm.va_end(i8* %arraydecay45), !dbg !420
  %1 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 0), align 8, !dbg !421
  %tobool = icmp ne %struct._rio* %1, null, !dbg !422
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !422

cond.true:                                        ; preds = %entry
  %2 = load %struct._rio*, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 0), align 8, !dbg !423
  %processed_bytes = getelementptr inbounds %struct._rio, %struct._rio* %2, i32 0, i32 7, !dbg !424
  %3 = load i64, i64* %processed_bytes, align 8, !dbg !424
  br label %cond.end, !dbg !422

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !422

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 0, %cond.false ], !dbg !422
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %msg, i64 0, i64 0, !dbg !425
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i64 %cond, i8* %arraydecay6), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbCheckSetError(i8* %fmt, ...) #0 !dbg !428 {
entry:
  %fmt.addr = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !431, metadata !DIExpression()), !dbg !432
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !433
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !433
  call void @llvm.va_start(i8* %arraydecay1), !dbg !433
  %0 = load i8*, i8** %fmt.addr, align 8, !dbg !434
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !435
  %call = call i32 @vsnprintf(i8* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 8, i64 0), i64 1024, i8* %0, %struct.__va_list_tag* %arraydecay2) #7, !dbg !436
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !437
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !437
  call void @llvm.va_end(i8* %arraydecay34), !dbg !437
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 7), align 4, !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbCheckHandleCrash(i32 %sig, %struct.siginfo_t* %info, i8* %secret) #0 !dbg !440 {
entry:
  %sig.addr = alloca i32, align 4
  %info.addr = alloca %struct.siginfo_t*, align 8
  %secret.addr = alloca i8*, align 8
  store i32 %sig, i32* %sig.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sig.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store %struct.siginfo_t* %info, %struct.siginfo_t** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.siginfo_t** %info.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i8* %secret, i8** %secret.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %secret.addr, metadata !523, metadata !DIExpression()), !dbg !524
  %0 = load i32, i32* %sig.addr, align 4, !dbg !525
  %1 = load %struct.siginfo_t*, %struct.siginfo_t** %info.addr, align 8, !dbg !526
  %2 = load i8*, i8** %secret.addr, align 8, !dbg !527
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0)), !dbg !528
  call void @exit(i32 1) #8, !dbg !529
  unreachable, !dbg !529
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @rdbCheckSetupSignals() #0 !dbg !530 {
entry:
  %act = alloca %struct.sigaction, align 8
  call void @llvm.dbg.declare(metadata %struct.sigaction* %act, metadata !531, metadata !DIExpression()), !dbg !558
  %sa_mask = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 1, !dbg !559
  %call = call i32 @sigemptyset(%struct.__sigset_t* %sa_mask) #7, !dbg !560
  %sa_flags = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 2, !dbg !561
  store i32 -1073741820, i32* %sa_flags, align 8, !dbg !562
  %__sigaction_handler = getelementptr inbounds %struct.sigaction, %struct.sigaction* %act, i32 0, i32 0, !dbg !563
  %sa_sigaction = bitcast %union.anon.14* %__sigaction_handler to void (i32, %struct.siginfo_t*, i8*)**, !dbg !563
  store void (i32, %struct.siginfo_t*, i8*)* @rdbCheckHandleCrash, void (i32, %struct.siginfo_t*, i8*)** %sa_sigaction, align 8, !dbg !564
  %call1 = call i32 @sigaction(i32 11, %struct.sigaction* %act, %struct.sigaction* null) #7, !dbg !565
  %call2 = call i32 @sigaction(i32 7, %struct.sigaction* %act, %struct.sigaction* null) #7, !dbg !566
  %call3 = call i32 @sigaction(i32 8, %struct.sigaction* %act, %struct.sigaction* null) #7, !dbg !567
  %call4 = call i32 @sigaction(i32 4, %struct.sigaction* %act, %struct.sigaction* null) #7, !dbg !568
  %call5 = call i32 @sigaction(i32 6, %struct.sigaction* %act, %struct.sigaction* null) #7, !dbg !569
  ret void, !dbg !570
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @redis_check_rdb(i8* %rdbfilename, %struct._IO_FILE* %fp) #0 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %rdbfilename.addr = alloca i8*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %dbid = alloca i64, align 8
  %selected_dbid = alloca i32, align 4
  %type = alloca i32, align 4
  %rdbver = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %expiretime = alloca i64, align 8
  %now = alloca i64, align 8
  %sb = alloca %struct.stat, align 8
  %closefile = alloca i32, align 4
  %key = alloca %struct.redisObject*, align 8
  %val = alloca %struct.redisObject*, align 8
  %byte = alloca i8, align 1
  %db_size = alloca i64, align 8
  %expires_size = alloca i64, align 8
  %auxkey = alloca %struct.redisObject*, align 8
  %auxval = alloca %struct.redisObject*, align 8
  %moduleid = alloca i64, align 8
  %when_opcode = alloca i64, align 8
  %when = alloca i64, align 8
  %name = alloca [10 x i8], align 1
  %o = alloca %struct.redisObject*, align 8
  %err = alloca i8*, align 8
  %cksum = alloca i64, align 8
  %expected = alloca i64, align 8
  store i8* %rdbfilename, i8** %rdbfilename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rdbfilename.addr, metadata !571, metadata !DIExpression()), !dbg !572
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !573, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata i64* %dbid, metadata !575, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata i32* %selected_dbid, metadata !577, metadata !DIExpression()), !dbg !578
  store i32 -1, i32* %selected_dbid, align 4, !dbg !578
  call void @llvm.dbg.declare(metadata i32* %type, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i32* %rdbver, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata i64* %expiretime, metadata !585, metadata !DIExpression()), !dbg !586
  call void @llvm.dbg.declare(metadata i64* %now, metadata !587, metadata !DIExpression()), !dbg !588
  %call = call i64 @mstime(), !dbg !589
  store i64 %call, i64* %now, align 8, !dbg !588
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !590, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.declare(metadata i32* %closefile, metadata !627, metadata !DIExpression()), !dbg !628
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !629
  %cmp = icmp eq %struct._IO_FILE* %0, null, !dbg !630
  %conv = zext i1 %cmp to i32, !dbg !630
  store i32 %conv, i32* %closefile, align 4, !dbg !628
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !631
  %cmp1 = icmp eq %struct._IO_FILE* %1, null, !dbg !633
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !634

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %rdbfilename.addr, align 8, !dbg !635
  %call3 = call noalias %struct._IO_FILE* @fopen64(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)), !dbg !636
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fp.addr, align 8, !dbg !637
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null, !dbg !638
  br i1 %cmp4, label %if.then, label %if.end, !dbg !639

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !641
  %call6 = call i32 @fileno(%struct._IO_FILE* %3) #7, !dbg !643
  %call7 = call i32 @fstat64(i32 %call6, %struct.stat* %sb) #7, !dbg !644
  %cmp8 = icmp eq i32 %call7, -1, !dbg !645
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !646

if.then10:                                        ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8, !dbg !647
  store i64 0, i64* %st_size, align 8, !dbg !648
  br label %if.end11, !dbg !649

if.end11:                                         ; preds = %if.then10, %if.end
  %st_size12 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8, !dbg !650
  %4 = load i64, i64* %st_size12, align 8, !dbg !650
  %5 = load i8*, i8** %rdbfilename.addr, align 8, !dbg !651
  call void @startLoadingFile(i64 %4, i8* %5, i32 0), !dbg !652
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !653
  call void @rioInitWithFile(%struct._rio* @redis_check_rdb.rdb, %struct._IO_FILE* %6), !dbg !654
  store %struct._rio* @redis_check_rdb.rdb, %struct._rio** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 0), align 8, !dbg !655
  store void (%struct._rio*, i8*, i64)* @rdbLoadProgressCallback, void (%struct._rio*, i8*, i64)** getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i32 0, i32 4), align 8, !dbg !656
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !657
  %call13 = call i64 @rioRead(%struct._rio* @redis_check_rdb.rdb, i8* %arraydecay, i64 9), !dbg !659
  %cmp14 = icmp eq i64 %call13, 0, !dbg !660
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !661

if.then16:                                        ; preds = %if.end11
  br label %eoferr, !dbg !662

if.end17:                                         ; preds = %if.end11
  %arrayidx = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 9, !dbg !663
  store i8 0, i8* %arrayidx, align 1, !dbg !664
  %arraydecay18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !665
  %call19 = call i32 @memcmp(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i64 5) #9, !dbg !667
  %cmp20 = icmp ne i32 %call19, 0, !dbg !668
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !669

if.then22:                                        ; preds = %if.end17
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0)), !dbg !670
  br label %err229, !dbg !672

if.end23:                                         ; preds = %if.end17
  %arraydecay24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !673
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay24, i64 5, !dbg !674
  %call25 = call i32 @atoi(i8* %add.ptr) #9, !dbg !675
  store i32 %call25, i32* %rdbver, align 4, !dbg !676
  %7 = load i32, i32* %rdbver, align 4, !dbg !677
  %cmp26 = icmp slt i32 %7, 1, !dbg !679
  br i1 %cmp26, label %if.then30, label %lor.lhs.false, !dbg !680

lor.lhs.false:                                    ; preds = %if.end23
  %8 = load i32, i32* %rdbver, align 4, !dbg !681
  %cmp28 = icmp sgt i32 %8, 10, !dbg !682
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !683

if.then30:                                        ; preds = %lor.lhs.false, %if.end23
  %9 = load i32, i32* %rdbver, align 4, !dbg !684
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i32 %9), !dbg !686
  br label %err229, !dbg !687

if.end31:                                         ; preds = %lor.lhs.false
  store i64 -1, i64* %expiretime, align 8, !dbg !688
  br label %while.body, !dbg !689

while.body:                                       ; preds = %if.end31, %if.end43, %if.end51, %if.end60, %if.end69, %if.end82, %if.end97, %if.end111, %if.end135, %if.end151, %if.end199
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata %struct.redisObject** %val, metadata !693, metadata !DIExpression()), !dbg !694
  store i32 1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !695
  %call32 = call i32 @rdbLoadType(%struct._rio* @redis_check_rdb.rdb), !dbg !696
  store i32 %call32, i32* %type, align 4, !dbg !698
  %cmp33 = icmp eq i32 %call32, -1, !dbg !699
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !700

if.then35:                                        ; preds = %while.body
  br label %eoferr, !dbg !701

if.end36:                                         ; preds = %while.body
  %10 = load i32, i32* %type, align 4, !dbg !702
  %cmp37 = icmp eq i32 %10, 253, !dbg !704
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !705

if.then39:                                        ; preds = %if.end36
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !706
  %call40 = call i64 @rdbLoadTime(%struct._rio* @redis_check_rdb.rdb), !dbg !708
  store i64 %call40, i64* %expiretime, align 8, !dbg !709
  %11 = load i64, i64* %expiretime, align 8, !dbg !710
  %mul = mul nsw i64 %11, 1000, !dbg !710
  store i64 %mul, i64* %expiretime, align 8, !dbg !710
  %call41 = call i32 @rioGetReadError(%struct._rio* @redis_check_rdb.rdb), !dbg !711
  %tobool = icmp ne i32 %call41, 0, !dbg !711
  br i1 %tobool, label %if.then42, label %if.end43, !dbg !713

if.then42:                                        ; preds = %if.then39
  br label %eoferr, !dbg !714

if.end43:                                         ; preds = %if.then39
  br label %while.body, !dbg !715, !llvm.loop !716

if.else:                                          ; preds = %if.end36
  %12 = load i32, i32* %type, align 4, !dbg !718
  %cmp44 = icmp eq i32 %12, 252, !dbg !720
  br i1 %cmp44, label %if.then46, label %if.else52, !dbg !721

if.then46:                                        ; preds = %if.else
  store i32 2, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !722
  %13 = load i32, i32* %rdbver, align 4, !dbg !724
  %call47 = call i64 @rdbLoadMillisecondTime(%struct._rio* @redis_check_rdb.rdb, i32 %13), !dbg !725
  store i64 %call47, i64* %expiretime, align 8, !dbg !726
  %call48 = call i32 @rioGetReadError(%struct._rio* @redis_check_rdb.rdb), !dbg !727
  %tobool49 = icmp ne i32 %call48, 0, !dbg !727
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !729

if.then50:                                        ; preds = %if.then46
  br label %eoferr, !dbg !730

if.end51:                                         ; preds = %if.then46
  br label %while.body, !dbg !731, !llvm.loop !716

if.else52:                                        ; preds = %if.else
  %14 = load i32, i32* %type, align 4, !dbg !732
  %cmp53 = icmp eq i32 %14, 249, !dbg !734
  br i1 %cmp53, label %if.then55, label %if.else61, !dbg !735

if.then55:                                        ; preds = %if.else52
  call void @llvm.dbg.declare(metadata i8* %byte, metadata !736, metadata !DIExpression()), !dbg !741
  %call56 = call i64 @rioRead(%struct._rio* @redis_check_rdb.rdb, i8* %byte, i64 1), !dbg !742
  %cmp57 = icmp eq i64 %call56, 0, !dbg !744
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !745

if.then59:                                        ; preds = %if.then55
  br label %eoferr, !dbg !746

if.end60:                                         ; preds = %if.then55
  br label %while.body, !dbg !747, !llvm.loop !716

if.else61:                                        ; preds = %if.else52
  %15 = load i32, i32* %type, align 4, !dbg !748
  %cmp62 = icmp eq i32 %15, 248, !dbg !750
  br i1 %cmp62, label %if.then64, label %if.else70, !dbg !751

if.then64:                                        ; preds = %if.else61
  %call65 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !752
  %cmp66 = icmp eq i64 %call65, -1, !dbg !755
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !756

if.then68:                                        ; preds = %if.then64
  br label %eoferr, !dbg !757

if.end69:                                         ; preds = %if.then64
  br label %while.body, !dbg !758, !llvm.loop !716

if.else70:                                        ; preds = %if.else61
  %16 = load i32, i32* %type, align 4, !dbg !759
  %cmp71 = icmp eq i32 %16, 255, !dbg !761
  br i1 %cmp71, label %if.then73, label %if.else74, !dbg !762

if.then73:                                        ; preds = %if.else70
  br label %while.end, !dbg !763

if.else74:                                        ; preds = %if.else70
  %17 = load i32, i32* %type, align 4, !dbg !765
  %cmp75 = icmp eq i32 %17, 254, !dbg !767
  br i1 %cmp75, label %if.then77, label %if.else84, !dbg !768

if.then77:                                        ; preds = %if.else74
  store i32 6, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !769
  %call78 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !771
  store i64 %call78, i64* %dbid, align 8, !dbg !773
  %cmp79 = icmp eq i64 %call78, -1, !dbg !774
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !775

if.then81:                                        ; preds = %if.then77
  br label %eoferr, !dbg !776

if.end82:                                         ; preds = %if.then77
  %18 = load i64, i64* %dbid, align 8, !dbg !777
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i64 %18), !dbg !778
  %19 = load i64, i64* %dbid, align 8, !dbg !779
  %conv83 = trunc i64 %19 to i32, !dbg !779
  store i32 %conv83, i32* %selected_dbid, align 4, !dbg !780
  br label %while.body, !dbg !781, !llvm.loop !716

if.else84:                                        ; preds = %if.else74
  %20 = load i32, i32* %type, align 4, !dbg !782
  %cmp85 = icmp eq i32 %20, 251, !dbg !784
  br i1 %cmp85, label %if.then87, label %if.else98, !dbg !785

if.then87:                                        ; preds = %if.else84
  call void @llvm.dbg.declare(metadata i64* %db_size, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata i64* %expires_size, metadata !789, metadata !DIExpression()), !dbg !790
  store i32 6, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !791
  %call88 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !792
  store i64 %call88, i64* %db_size, align 8, !dbg !794
  %cmp89 = icmp eq i64 %call88, -1, !dbg !795
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !796

if.then91:                                        ; preds = %if.then87
  br label %eoferr, !dbg !797

if.end92:                                         ; preds = %if.then87
  %call93 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !798
  store i64 %call93, i64* %expires_size, align 8, !dbg !800
  %cmp94 = icmp eq i64 %call93, -1, !dbg !801
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !802

if.then96:                                        ; preds = %if.end92
  br label %eoferr, !dbg !803

if.end97:                                         ; preds = %if.end92
  br label %while.body, !dbg !804, !llvm.loop !716

if.else98:                                        ; preds = %if.else84
  %21 = load i32, i32* %type, align 4, !dbg !805
  %cmp99 = icmp eq i32 %21, 250, !dbg !807
  br i1 %cmp99, label %if.then101, label %if.else113, !dbg !808

if.then101:                                       ; preds = %if.else98
  call void @llvm.dbg.declare(metadata %struct.redisObject** %auxkey, metadata !809, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.declare(metadata %struct.redisObject** %auxval, metadata !812, metadata !DIExpression()), !dbg !813
  store i32 7, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !814
  %call102 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* @redis_check_rdb.rdb), !dbg !815
  store %struct.redisObject* %call102, %struct.redisObject** %auxkey, align 8, !dbg !817
  %cmp103 = icmp eq %struct.redisObject* %call102, null, !dbg !818
  br i1 %cmp103, label %if.then105, label %if.end106, !dbg !819

if.then105:                                       ; preds = %if.then101
  br label %eoferr, !dbg !820

if.end106:                                        ; preds = %if.then101
  %call107 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* @redis_check_rdb.rdb), !dbg !821
  store %struct.redisObject* %call107, %struct.redisObject** %auxval, align 8, !dbg !823
  %cmp108 = icmp eq %struct.redisObject* %call107, null, !dbg !824
  br i1 %cmp108, label %if.then110, label %if.end111, !dbg !825

if.then110:                                       ; preds = %if.end106
  %22 = load %struct.redisObject*, %struct.redisObject** %auxkey, align 8, !dbg !826
  call void @decrRefCount(%struct.redisObject* %22), !dbg !828
  br label %eoferr, !dbg !829

if.end111:                                        ; preds = %if.end106
  %23 = load %struct.redisObject*, %struct.redisObject** %auxkey, align 8, !dbg !830
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i32 0, i32 2, !dbg !831
  %24 = load i8*, i8** %ptr, align 8, !dbg !831
  %25 = load %struct.redisObject*, %struct.redisObject** %auxval, align 8, !dbg !832
  %ptr112 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %25, i32 0, i32 2, !dbg !833
  %26 = load i8*, i8** %ptr112, align 8, !dbg !833
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i8* %24, i8* %26), !dbg !834
  %27 = load %struct.redisObject*, %struct.redisObject** %auxkey, align 8, !dbg !835
  call void @decrRefCount(%struct.redisObject* %27), !dbg !836
  %28 = load %struct.redisObject*, %struct.redisObject** %auxval, align 8, !dbg !837
  call void @decrRefCount(%struct.redisObject* %28), !dbg !838
  br label %while.body, !dbg !839, !llvm.loop !716

if.else113:                                       ; preds = %if.else98
  %29 = load i32, i32* %type, align 4, !dbg !840
  %cmp114 = icmp eq i32 %29, 247, !dbg !842
  br i1 %cmp114, label %if.then116, label %if.else140, !dbg !843

if.then116:                                       ; preds = %if.else113
  call void @llvm.dbg.declare(metadata i64* %moduleid, metadata !844, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.declare(metadata i64* %when_opcode, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata i64* %when, metadata !849, metadata !DIExpression()), !dbg !850
  store i32 8, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !851
  %call117 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !852
  store i64 %call117, i64* %moduleid, align 8, !dbg !854
  %cmp118 = icmp eq i64 %call117, -1, !dbg !855
  br i1 %cmp118, label %if.then120, label %if.end121, !dbg !856

if.then120:                                       ; preds = %if.then116
  br label %eoferr, !dbg !857

if.end121:                                        ; preds = %if.then116
  %call122 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !858
  store i64 %call122, i64* %when_opcode, align 8, !dbg !860
  %cmp123 = icmp eq i64 %call122, -1, !dbg !861
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !862

if.then125:                                       ; preds = %if.end121
  br label %eoferr, !dbg !863

if.end126:                                        ; preds = %if.end121
  %call127 = call i64 @rdbLoadLen(%struct._rio* @redis_check_rdb.rdb, i32* null), !dbg !864
  store i64 %call127, i64* %when, align 8, !dbg !866
  %cmp128 = icmp eq i64 %call127, -1, !dbg !867
  br i1 %cmp128, label %if.then130, label %if.end131, !dbg !868

if.then130:                                       ; preds = %if.end126
  br label %eoferr, !dbg !869

if.end131:                                        ; preds = %if.end126
  %30 = load i64, i64* %when_opcode, align 8, !dbg !870
  %cmp132 = icmp ne i64 %30, 2, !dbg !872
  br i1 %cmp132, label %if.then134, label %if.end135, !dbg !873

if.then134:                                       ; preds = %if.end131
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0)), !dbg !874
  br label %err229, !dbg !876

if.end135:                                        ; preds = %if.end131
  call void @llvm.dbg.declare(metadata [10 x i8]* %name, metadata !877, metadata !DIExpression()), !dbg !879
  %arraydecay136 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !880
  %31 = load i64, i64* %moduleid, align 8, !dbg !881
  call void @moduleTypeNameByID(i8* %arraydecay136, i64 %31), !dbg !882
  %arraydecay137 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !883
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0), i8* %arraydecay137), !dbg !884
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !885, metadata !DIExpression()), !dbg !886
  %arraydecay138 = getelementptr inbounds [10 x i8], [10 x i8]* %name, i64 0, i64 0, !dbg !887
  %call139 = call %struct.redisObject* @rdbLoadCheckModuleValue(%struct._rio* @redis_check_rdb.rdb, i8* %arraydecay138), !dbg !888
  store %struct.redisObject* %call139, %struct.redisObject** %o, align 8, !dbg !886
  %32 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !889
  call void @decrRefCount(%struct.redisObject* %32), !dbg !890
  br label %while.body, !dbg !891, !llvm.loop !716

if.else140:                                       ; preds = %if.else113
  %33 = load i32, i32* %type, align 4, !dbg !892
  %cmp141 = icmp eq i32 %33, 246, !dbg !894
  br i1 %cmp141, label %if.then146, label %lor.lhs.false143, !dbg !895

lor.lhs.false143:                                 ; preds = %if.else140
  %34 = load i32, i32* %type, align 4, !dbg !896
  %cmp144 = icmp eq i32 %34, 245, !dbg !897
  br i1 %cmp144, label %if.then146, label %if.else152, !dbg !898

if.then146:                                       ; preds = %lor.lhs.false143, %if.else140
  call void @llvm.dbg.declare(metadata i8** %err, metadata !899, metadata !DIExpression()), !dbg !901
  store i8* null, i8** %err, align 8, !dbg !901
  store i32 9, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !902
  %35 = load i32, i32* %rdbver, align 4, !dbg !903
  %36 = load i32, i32* %type, align 4, !dbg !905
  %call147 = call i32 @rdbFunctionLoad(%struct._rio* @redis_check_rdb.rdb, i32 %35, %struct.functionsLibCtx* null, i32 %36, i32 0, i8** %err), !dbg !906
  %cmp148 = icmp ne i32 %call147, 0, !dbg !907
  br i1 %cmp148, label %if.then150, label %if.end151, !dbg !908

if.then150:                                       ; preds = %if.then146
  %37 = load i8*, i8** %err, align 8, !dbg !909
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i8* %37), !dbg !911
  %38 = load i8*, i8** %err, align 8, !dbg !912
  call void @sdsfree(i8* %38), !dbg !913
  br label %err229, !dbg !914

if.end151:                                        ; preds = %if.then146
  br label %while.body, !dbg !915, !llvm.loop !716

if.else152:                                       ; preds = %lor.lhs.false143
  %39 = load i32, i32* %type, align 4, !dbg !916
  %cmp153 = icmp sge i32 %39, 0, !dbg !916
  br i1 %cmp153, label %land.lhs.true155, label %lor.lhs.false158, !dbg !916

land.lhs.true155:                                 ; preds = %if.else152
  %40 = load i32, i32* %type, align 4, !dbg !916
  %cmp156 = icmp sle i32 %40, 7, !dbg !916
  br i1 %cmp156, label %if.end165, label %lor.lhs.false158, !dbg !916

lor.lhs.false158:                                 ; preds = %land.lhs.true155, %if.else152
  %41 = load i32, i32* %type, align 4, !dbg !916
  %cmp159 = icmp sge i32 %41, 9, !dbg !916
  br i1 %cmp159, label %land.lhs.true161, label %if.then164, !dbg !916

land.lhs.true161:                                 ; preds = %lor.lhs.false158
  %42 = load i32, i32* %type, align 4, !dbg !916
  %cmp162 = icmp sle i32 %42, 19, !dbg !916
  br i1 %cmp162, label %if.end165, label %if.then164, !dbg !919

if.then164:                                       ; preds = %land.lhs.true161, %lor.lhs.false158
  %43 = load i32, i32* %type, align 4, !dbg !920
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0), i32 %43), !dbg !922
  br label %err229, !dbg !923

if.end165:                                        ; preds = %land.lhs.true161, %land.lhs.true155
  %44 = load i32, i32* %type, align 4, !dbg !924
  store i32 %44, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !925
  br label %if.end166

if.end166:                                        ; preds = %if.end165
  br label %if.end167

if.end167:                                        ; preds = %if.end166
  br label %if.end168

if.end168:                                        ; preds = %if.end167
  br label %if.end169

if.end169:                                        ; preds = %if.end168
  br label %if.end170

if.end170:                                        ; preds = %if.end169
  br label %if.end171

if.end171:                                        ; preds = %if.end170
  br label %if.end172

if.end172:                                        ; preds = %if.end171
  br label %if.end173

if.end173:                                        ; preds = %if.end172
  br label %if.end174

if.end174:                                        ; preds = %if.end173
  br label %if.end175

if.end175:                                        ; preds = %if.end174
  store i32 3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !926
  %call176 = call %struct.redisObject* @rdbLoadStringObject(%struct._rio* @redis_check_rdb.rdb), !dbg !927
  store %struct.redisObject* %call176, %struct.redisObject** %key, align 8, !dbg !929
  %cmp177 = icmp eq %struct.redisObject* %call176, null, !dbg !930
  br i1 %cmp177, label %if.then179, label %if.end180, !dbg !931

if.then179:                                       ; preds = %if.end175
  br label %eoferr, !dbg !932

if.end180:                                        ; preds = %if.end175
  %45 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !933
  store %struct.redisObject* %45, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 1), align 8, !dbg !934
  %46 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 3), align 8, !dbg !935
  %inc = add i64 %46, 1, !dbg !935
  store i64 %inc, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 3), align 8, !dbg !935
  store i32 4, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !936
  %47 = load i32, i32* %type, align 4, !dbg !937
  %48 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !939
  %ptr181 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %48, i32 0, i32 2, !dbg !940
  %49 = load i8*, i8** %ptr181, align 8, !dbg !940
  %50 = load i32, i32* %selected_dbid, align 4, !dbg !941
  %call182 = call %struct.redisObject* @rdbLoadObject(i32 %47, %struct._rio* @redis_check_rdb.rdb, i8* %49, i32 %50, i32* null), !dbg !942
  store %struct.redisObject* %call182, %struct.redisObject** %val, align 8, !dbg !943
  %cmp183 = icmp eq %struct.redisObject* %call182, null, !dbg !944
  br i1 %cmp183, label %if.then185, label %if.end186, !dbg !945

if.then185:                                       ; preds = %if.end180
  br label %eoferr, !dbg !946

if.end186:                                        ; preds = %if.end180
  %51 = load i64, i64* %expiretime, align 8, !dbg !947
  %cmp187 = icmp ne i64 %51, -1, !dbg !949
  br i1 %cmp187, label %land.lhs.true189, label %if.end194, !dbg !950

land.lhs.true189:                                 ; preds = %if.end186
  %52 = load i64, i64* %expiretime, align 8, !dbg !951
  %53 = load i64, i64* %now, align 8, !dbg !952
  %cmp190 = icmp slt i64 %52, %53, !dbg !953
  br i1 %cmp190, label %if.then192, label %if.end194, !dbg !954

if.then192:                                       ; preds = %land.lhs.true189
  %54 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 5), align 8, !dbg !955
  %inc193 = add i64 %54, 1, !dbg !955
  store i64 %inc193, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 5), align 8, !dbg !955
  br label %if.end194, !dbg !956

if.end194:                                        ; preds = %if.then192, %land.lhs.true189, %if.end186
  %55 = load i64, i64* %expiretime, align 8, !dbg !957
  %cmp195 = icmp ne i64 %55, -1, !dbg !959
  br i1 %cmp195, label %if.then197, label %if.end199, !dbg !960

if.then197:                                       ; preds = %if.end194
  %56 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 4), align 8, !dbg !961
  %inc198 = add i64 %56, 1, !dbg !961
  store i64 %inc198, i64* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 4), align 8, !dbg !961
  br label %if.end199, !dbg !962

if.end199:                                        ; preds = %if.then197, %if.end194
  store %struct.redisObject* null, %struct.redisObject** getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 1), align 8, !dbg !963
  %57 = load %struct.redisObject*, %struct.redisObject** %key, align 8, !dbg !964
  call void @decrRefCount(%struct.redisObject* %57), !dbg !965
  %58 = load %struct.redisObject*, %struct.redisObject** %val, align 8, !dbg !966
  call void @decrRefCount(%struct.redisObject* %58), !dbg !967
  store i32 -1, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 2), align 8, !dbg !968
  store i64 -1, i64* %expiretime, align 8, !dbg !969
  br label %while.body, !dbg !689, !llvm.loop !716

while.end:                                        ; preds = %if.then73
  %59 = load i32, i32* %rdbver, align 4, !dbg !970
  %cmp200 = icmp sge i32 %59, 5, !dbg !972
  br i1 %cmp200, label %land.lhs.true202, label %if.end220, !dbg !973

land.lhs.true202:                                 ; preds = %while.end
  %60 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 224), align 4, !dbg !974
  %tobool203 = icmp ne i32 %60, 0, !dbg !975
  br i1 %tobool203, label %if.then204, label %if.end220, !dbg !976

if.then204:                                       ; preds = %land.lhs.true202
  call void @llvm.dbg.declare(metadata i64* %cksum, metadata !977, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.declare(metadata i64* %expected, metadata !980, metadata !DIExpression()), !dbg !981
  %61 = load i64, i64* getelementptr inbounds (%struct._rio, %struct._rio* @redis_check_rdb.rdb, i32 0, i32 5), align 8, !dbg !982
  store i64 %61, i64* %expected, align 8, !dbg !981
  store i32 5, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 6), align 8, !dbg !983
  %62 = bitcast i64* %cksum to i8*, !dbg !984
  %call205 = call i64 @rioRead(%struct._rio* @redis_check_rdb.rdb, i8* %62, i64 8), !dbg !986
  %cmp206 = icmp eq i64 %call205, 0, !dbg !987
  br i1 %cmp206, label %if.then208, label %if.end209, !dbg !988

if.then208:                                       ; preds = %if.then204
  br label %eoferr, !dbg !989

if.end209:                                        ; preds = %if.then204
  %63 = load i64, i64* %cksum, align 8, !dbg !990
  %cmp210 = icmp eq i64 %63, 0, !dbg !992
  br i1 %cmp210, label %if.then212, label %if.else213, !dbg !993

if.then212:                                       ; preds = %if.end209
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.48, i64 0, i64 0)), !dbg !994
  br label %if.end219, !dbg !996

if.else213:                                       ; preds = %if.end209
  %64 = load i64, i64* %cksum, align 8, !dbg !997
  %65 = load i64, i64* %expected, align 8, !dbg !999
  %cmp214 = icmp ne i64 %64, %65, !dbg !1000
  br i1 %cmp214, label %if.then216, label %if.else217, !dbg !1001

if.then216:                                       ; preds = %if.else213
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0)), !dbg !1002
  br label %err229, !dbg !1004

if.else217:                                       ; preds = %if.else213
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0)), !dbg !1005
  br label %if.end218

if.end218:                                        ; preds = %if.else217
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.then212
  br label %if.end220, !dbg !1007

if.end220:                                        ; preds = %if.end219, %land.lhs.true202, %while.end
  %66 = load i32, i32* %closefile, align 4, !dbg !1008
  %tobool221 = icmp ne i32 %66, 0, !dbg !1008
  br i1 %tobool221, label %if.then222, label %if.end224, !dbg !1010

if.then222:                                       ; preds = %if.end220
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1011
  %call223 = call i32 @fclose(%struct._IO_FILE* %67), !dbg !1012
  br label %if.end224, !dbg !1012

if.end224:                                        ; preds = %if.then222, %if.end220
  call void @stopLoading(i32 1), !dbg !1013
  store i32 0, i32* %retval, align 4, !dbg !1014
  br label %return, !dbg !1014

eoferr:                                           ; preds = %if.then208, %if.then185, %if.then179, %if.then130, %if.then125, %if.then120, %if.then110, %if.then105, %if.then96, %if.then91, %if.then81, %if.then68, %if.then59, %if.then50, %if.then42, %if.then35, %if.then16
  call void @llvm.dbg.label(metadata !1015), !dbg !1016
  %68 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 7), align 4, !dbg !1017
  %tobool225 = icmp ne i32 %68, 0, !dbg !1019
  br i1 %tobool225, label %if.then226, label %if.else227, !dbg !1020

if.then226:                                       ; preds = %eoferr
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds (%struct.anon, %struct.anon* @rdbstate, i32 0, i32 8, i64 0)), !dbg !1021
  br label %if.end228, !dbg !1023

if.else227:                                       ; preds = %eoferr
  call void (i8*, ...) @rdbCheckError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51, i64 0, i64 0)), !dbg !1024
  br label %if.end228

if.end228:                                        ; preds = %if.else227, %if.then226
  br label %err229, !dbg !1017

err229:                                           ; preds = %if.end228, %if.then216, %if.then164, %if.then150, %if.then134, %if.then30, %if.then22
  call void @llvm.dbg.label(metadata !1026), !dbg !1027
  %69 = load i32, i32* %closefile, align 4, !dbg !1028
  %tobool230 = icmp ne i32 %69, 0, !dbg !1028
  br i1 %tobool230, label %if.then231, label %if.end233, !dbg !1030

if.then231:                                       ; preds = %err229
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1031
  %call232 = call i32 @fclose(%struct._IO_FILE* %70), !dbg !1032
  br label %if.end233, !dbg !1032

if.end233:                                        ; preds = %if.then231, %err229
  call void @stopLoading(i32 0), !dbg !1033
  store i32 1, i32* %retval, align 4, !dbg !1034
  br label %return, !dbg !1034

return:                                           ; preds = %if.end233, %if.end224, %if.then
  %71 = load i32, i32* %retval, align 4, !dbg !1035
  ret i32 %71, !dbg !1035
}

declare dso_local i64 @mstime() #1

declare dso_local noalias %struct._IO_FILE* @fopen64(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat64(i32, %struct.stat*) #4

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #4

declare dso_local void @startLoadingFile(i64, i8*, i32) #1

declare dso_local void @rioInitWithFile(%struct._rio*, %struct._IO_FILE*) #1

declare dso_local void @rdbLoadProgressCallback(%struct._rio*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @rioRead(%struct._rio* %r, i8* %buf, i64 %len) #0 !dbg !1036 {
entry:
  %retval = alloca i64, align 8
  %r.addr = alloca %struct._rio*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %bytes_to_read = alloca i64, align 8
  store %struct._rio* %r, %struct._rio** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._rio** %r.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  %0 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1045
  %flags = getelementptr inbounds %struct._rio, %struct._rio* %0, i32 0, i32 6, !dbg !1047
  %1 = load i64, i64* %flags, align 8, !dbg !1047
  %and = and i64 %1, 1, !dbg !1048
  %tobool = icmp ne i64 %and, 0, !dbg !1048
  br i1 %tobool, label %if.then, label %if.end, !dbg !1049

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1050
  br label %return, !dbg !1050

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1051

while.cond:                                       ; preds = %if.end12, %if.end
  %2 = load i64, i64* %len.addr, align 8, !dbg !1052
  %tobool1 = icmp ne i64 %2, 0, !dbg !1051
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1051

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %bytes_to_read, metadata !1053, metadata !DIExpression()), !dbg !1055
  %3 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1056
  %max_processing_chunk = getelementptr inbounds %struct._rio, %struct._rio* %3, i32 0, i32 8, !dbg !1057
  %4 = load i64, i64* %max_processing_chunk, align 8, !dbg !1057
  %tobool2 = icmp ne i64 %4, 0, !dbg !1056
  br i1 %tobool2, label %land.lhs.true, label %cond.false, !dbg !1058

land.lhs.true:                                    ; preds = %while.body
  %5 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1059
  %max_processing_chunk3 = getelementptr inbounds %struct._rio, %struct._rio* %5, i32 0, i32 8, !dbg !1060
  %6 = load i64, i64* %max_processing_chunk3, align 8, !dbg !1060
  %7 = load i64, i64* %len.addr, align 8, !dbg !1061
  %cmp = icmp ult i64 %6, %7, !dbg !1062
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1063

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1064
  %max_processing_chunk4 = getelementptr inbounds %struct._rio, %struct._rio* %8, i32 0, i32 8, !dbg !1065
  %9 = load i64, i64* %max_processing_chunk4, align 8, !dbg !1065
  br label %cond.end, !dbg !1063

cond.false:                                       ; preds = %land.lhs.true, %while.body
  %10 = load i64, i64* %len.addr, align 8, !dbg !1066
  br label %cond.end, !dbg !1063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %9, %cond.true ], [ %10, %cond.false ], !dbg !1063
  store i64 %cond, i64* %bytes_to_read, align 8, !dbg !1055
  %11 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1067
  %read = getelementptr inbounds %struct._rio, %struct._rio* %11, i32 0, i32 0, !dbg !1069
  %12 = load i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)** %read, align 8, !dbg !1069
  %13 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1070
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !1071
  %15 = load i64, i64* %bytes_to_read, align 8, !dbg !1072
  %call = call i64 %12(%struct._rio* %13, i8* %14, i64 %15), !dbg !1067
  %cmp5 = icmp eq i64 %call, 0, !dbg !1073
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !1074

if.then6:                                         ; preds = %cond.end
  %16 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1075
  %flags7 = getelementptr inbounds %struct._rio, %struct._rio* %16, i32 0, i32 6, !dbg !1077
  %17 = load i64, i64* %flags7, align 8, !dbg !1078
  %or = or i64 %17, 1, !dbg !1078
  store i64 %or, i64* %flags7, align 8, !dbg !1078
  store i64 0, i64* %retval, align 8, !dbg !1079
  br label %return, !dbg !1079

if.end8:                                          ; preds = %cond.end
  %18 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1080
  %update_cksum = getelementptr inbounds %struct._rio, %struct._rio* %18, i32 0, i32 4, !dbg !1082
  %19 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %update_cksum, align 8, !dbg !1082
  %tobool9 = icmp ne void (%struct._rio*, i8*, i64)* %19, null, !dbg !1080
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1083

if.then10:                                        ; preds = %if.end8
  %20 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1084
  %update_cksum11 = getelementptr inbounds %struct._rio, %struct._rio* %20, i32 0, i32 4, !dbg !1085
  %21 = load void (%struct._rio*, i8*, i64)*, void (%struct._rio*, i8*, i64)** %update_cksum11, align 8, !dbg !1085
  %22 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1086
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !1087
  %24 = load i64, i64* %bytes_to_read, align 8, !dbg !1088
  call void %21(%struct._rio* %22, i8* %23, i64 %24), !dbg !1084
  br label %if.end12, !dbg !1084

if.end12:                                         ; preds = %if.then10, %if.end8
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !1089
  %26 = load i64, i64* %bytes_to_read, align 8, !dbg !1090
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !1091
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !1092
  %27 = load i64, i64* %bytes_to_read, align 8, !dbg !1093
  %28 = load i64, i64* %len.addr, align 8, !dbg !1094
  %sub = sub i64 %28, %27, !dbg !1094
  store i64 %sub, i64* %len.addr, align 8, !dbg !1094
  %29 = load i64, i64* %bytes_to_read, align 8, !dbg !1095
  %30 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1096
  %processed_bytes = getelementptr inbounds %struct._rio, %struct._rio* %30, i32 0, i32 7, !dbg !1097
  %31 = load i64, i64* %processed_bytes, align 8, !dbg !1098
  %add = add i64 %31, %29, !dbg !1098
  store i64 %add, i64* %processed_bytes, align 8, !dbg !1098
  br label %while.cond, !dbg !1051, !llvm.loop !1099

while.end:                                        ; preds = %while.cond
  store i64 1, i64* %retval, align 8, !dbg !1102
  br label %return, !dbg !1102

return:                                           ; preds = %while.end, %if.then6, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !1103
  ret i64 %32, !dbg !1103
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @rdbLoadType(%struct._rio*) #1

declare dso_local i64 @rdbLoadTime(%struct._rio*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @rioGetReadError(%struct._rio* %r) #0 !dbg !1104 {
entry:
  %r.addr = alloca %struct._rio*, align 8
  store %struct._rio* %r, %struct._rio** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._rio** %r.addr, metadata !1107, metadata !DIExpression()), !dbg !1108
  %0 = load %struct._rio*, %struct._rio** %r.addr, align 8, !dbg !1109
  %flags = getelementptr inbounds %struct._rio, %struct._rio* %0, i32 0, i32 6, !dbg !1110
  %1 = load i64, i64* %flags, align 8, !dbg !1110
  %and = and i64 %1, 1, !dbg !1111
  %cmp = icmp ne i64 %and, 0, !dbg !1112
  %conv = zext i1 %cmp to i32, !dbg !1112
  ret i32 %conv, !dbg !1113
}

declare dso_local i64 @rdbLoadMillisecondTime(%struct._rio*, i32) #1

declare dso_local i64 @rdbLoadLen(%struct._rio*, i32*) #1

declare dso_local %struct.redisObject* @rdbLoadStringObject(%struct._rio*) #1

declare dso_local void @decrRefCount(%struct.redisObject*) #1

declare dso_local void @moduleTypeNameByID(i8*, i64) #1

declare dso_local %struct.redisObject* @rdbLoadCheckModuleValue(%struct._rio*, i8*) #1

declare dso_local i32 @rdbFunctionLoad(%struct._rio*, i32, %struct.functionsLibCtx*, i32, i32, i8**) #1

declare dso_local void @sdsfree(i8*) #1

declare dso_local %struct.redisObject* @rdbLoadObject(i32, %struct._rio*, i8*, i32, i32*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local void @stopLoading(i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @redis_check_rdb_main(i32 %argc, i8** %argv, %struct._IO_FILE* %fp) #0 !dbg !1114 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %tv = alloca %struct.timeval, align 8
  %version = alloca i8*, align 8
  %retval18 = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata %struct.timeval* %tv, metadata !1124, metadata !DIExpression()), !dbg !1131
  %0 = load i32, i32* %argc.addr, align 4, !dbg !1132
  %cmp = icmp ne i32 %0, 2, !dbg !1134
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1135

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1136
  %cmp1 = icmp eq %struct._IO_FILE* %1, null, !dbg !1137
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1138

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1139
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !1141
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0, !dbg !1141
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !1141
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i64 0, i64 0), i8* %4), !dbg !1142
  call void @exit(i32 1) #8, !dbg !1143
  unreachable, !dbg !1143

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !1144
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !1144
  %6 = load i8*, i8** %arrayidx2, align 8, !dbg !1144
  %call3 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0)) #9, !dbg !1146
  %tobool = icmp ne i32 %call3, 0, !dbg !1146
  br i1 %tobool, label %lor.lhs.false, label %if.then7, !dbg !1147

lor.lhs.false:                                    ; preds = %if.else
  %7 = load i8**, i8*** %argv.addr, align 8, !dbg !1148
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 1, !dbg !1148
  %8 = load i8*, i8** %arrayidx4, align 8, !dbg !1148
  %call5 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0)) #9, !dbg !1149
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1149
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !1150

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  call void @llvm.dbg.declare(metadata i8** %version, metadata !1151, metadata !DIExpression()), !dbg !1153
  %call8 = call i8* @checkRdbVersion(), !dbg !1154
  store i8* %call8, i8** %version, align 8, !dbg !1153
  %9 = load i8*, i8** %version, align 8, !dbg !1155
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i64 0, i64 0), i8* %9), !dbg !1156
  %10 = load i8*, i8** %version, align 8, !dbg !1157
  call void @sdsfree(i8* %10), !dbg !1158
  call void @exit(i32 0) #8, !dbg !1159
  unreachable, !dbg !1159

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end10

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @gettimeofday(%struct.timeval* %tv, i8* null) #7, !dbg !1160
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0, !dbg !1161
  %11 = load i64, i64* %tv_sec, align 8, !dbg !1161
  %mul = mul nsw i64 %11, 1000000, !dbg !1162
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1, !dbg !1163
  %12 = load i64, i64* %tv_usec, align 8, !dbg !1163
  %add = add nsw i64 %mul, %12, !dbg !1164
  %call12 = call i32 @getpid() #7, !dbg !1165
  %conv = sext i32 %call12 to i64, !dbg !1165
  %xor = xor i64 %add, %conv, !dbg !1166
  call void @init_genrand64(i64 %xor), !dbg !1167
  %13 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 87, i64 0), align 8, !dbg !1168
  %cmp13 = icmp eq %struct.redisObject* %13, null, !dbg !1170
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !1171

if.then15:                                        ; preds = %if.end10
  call void @createSharedObjects(), !dbg !1172
  br label %if.end16, !dbg !1172

if.end16:                                         ; preds = %if.then15, %if.end10
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 92), align 8, !dbg !1173
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 160), align 8, !dbg !1174
  store i32 1, i32* @rdbCheckMode, align 4, !dbg !1175
  %14 = load i8**, i8*** %argv.addr, align 8, !dbg !1176
  %arrayidx17 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !1176
  %15 = load i8*, i8** %arrayidx17, align 8, !dbg !1176
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* %15), !dbg !1177
  call void @rdbCheckSetupSignals(), !dbg !1178
  call void @llvm.dbg.declare(metadata i32* %retval18, metadata !1179, metadata !DIExpression()), !dbg !1180
  %16 = load i8**, i8*** %argv.addr, align 8, !dbg !1181
  %arrayidx19 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !1181
  %17 = load i8*, i8** %arrayidx19, align 8, !dbg !1181
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1182
  %call20 = call i32 @redis_check_rdb(i8* %17, %struct._IO_FILE* %18), !dbg !1183
  store i32 %call20, i32* %retval18, align 4, !dbg !1180
  %19 = load i32, i32* %retval18, align 4, !dbg !1184
  %cmp21 = icmp eq i32 %19, 0, !dbg !1186
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1187

if.then23:                                        ; preds = %if.end16
  call void (i8*, ...) @rdbCheckInfo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.57, i64 0, i64 0)), !dbg !1188
  call void @rdbShowGenericInfo(), !dbg !1190
  br label %if.end24, !dbg !1191

if.end24:                                         ; preds = %if.then23, %if.end16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !1192
  %tobool25 = icmp ne %struct._IO_FILE* %20, null, !dbg !1192
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !1194

if.then26:                                        ; preds = %if.end24
  %21 = load i32, i32* %retval18, align 4, !dbg !1195
  %cmp27 = icmp eq i32 %21, 0, !dbg !1196
  %22 = zext i1 %cmp27 to i64, !dbg !1197
  %cond = select i1 %cmp27, i32 0, i32 -1, !dbg !1197
  ret i32 %cond, !dbg !1198

if.end29:                                         ; preds = %if.end24
  %23 = load i32, i32* %retval18, align 4, !dbg !1199
  call void @exit(i32 %23) #8, !dbg !1200
  unreachable, !dbg !1200
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal i8* @checkRdbVersion() #0 !dbg !1201 {
entry:
  %version = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %version, metadata !1204, metadata !DIExpression()), !dbg !1205
  %call = call i8* @sdsempty(), !dbg !1206
  %call1 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %call, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0)), !dbg !1207
  store i8* %call1, i8** %version, align 8, !dbg !1208
  %call2 = call i8* @redisGitSHA1(), !dbg !1209
  %call3 = call i64 @strtoll(i8* %call2, i8** null, i32 16) #7, !dbg !1211
  %tobool = icmp ne i64 %call3, 0, !dbg !1211
  br i1 %tobool, label %if.then, label %if.end12, !dbg !1212

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %version, align 8, !dbg !1213
  %call4 = call i8* @redisGitSHA1(), !dbg !1215
  %call5 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i8* %call4), !dbg !1216
  store i8* %call5, i8** %version, align 8, !dbg !1217
  %call6 = call i8* @redisGitDirty(), !dbg !1218
  %call7 = call i64 @strtoll(i8* %call6, i8** null, i32 10) #7, !dbg !1220
  %tobool8 = icmp ne i64 %call7, 0, !dbg !1220
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !1221

if.then9:                                         ; preds = %if.then
  %1 = load i8*, i8** %version, align 8, !dbg !1222
  %call10 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0)), !dbg !1223
  store i8* %call10, i8** %version, align 8, !dbg !1224
  br label %if.end, !dbg !1225

if.end:                                           ; preds = %if.then9, %if.then
  %2 = load i8*, i8** %version, align 8, !dbg !1226
  %call11 = call i8* @sdscat(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0)), !dbg !1227
  store i8* %call11, i8** %version, align 8, !dbg !1228
  br label %if.end12, !dbg !1229

if.end12:                                         ; preds = %if.end, %entry
  %3 = load i8*, i8** %version, align 8, !dbg !1230
  ret i8* %3, !dbg !1231
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) #4

declare dso_local void @init_genrand64(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @getpid() #4

declare dso_local void @createSharedObjects() #1

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #1

declare dso_local i8* @sdsempty() #1

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8*, i8**, i32) #4

declare dso_local i8* @redisGitSHA1() #1

declare dso_local i8* @redisGitDirty() #1

declare dso_local i8* @sdscat(i8*, i8*) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!334, !335, !336, !337, !338}
!llvm.ident = !{!339}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rdbCheckMode", scope: !2, file: !3, line: 41, type: !37, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-check-rdb.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!15 = !{!16, !17, !7, !19, !20}
!16 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!21 = !{!0, !22, !27, !32, !307}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "rdb_check_doing_string", scope: !2, file: !3, line: 68, type: !24, isLocal: false, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 640, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 10)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "rdb_type_string", scope: !2, file: !3, line: 81, type: !29, isLocal: false, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1216, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 19)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "rdb", scope: !34, file: !3, line: 197, type: !98, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "redis_check_rdb", scope: !3, file: !3, line: 191, type: !35, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !17, !38}
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !40, line: 7, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !42, line: 49, size: 1728, elements: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !59, !61, !62, !63, !67, !69, !71, !75, !78, !80, !83, !86, !87, !88, !92, !93}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !41, file: !42, line: 51, baseType: !37, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !41, file: !42, line: 54, baseType: !17, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !41, file: !42, line: 55, baseType: !17, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !41, file: !42, line: 56, baseType: !17, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !41, file: !42, line: 57, baseType: !17, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !41, file: !42, line: 58, baseType: !17, size: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !41, file: !42, line: 59, baseType: !17, size: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !41, file: !42, line: 60, baseType: !17, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !41, file: !42, line: 61, baseType: !17, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !41, file: !42, line: 64, baseType: !17, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !41, file: !42, line: 65, baseType: !17, size: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !41, file: !42, line: 66, baseType: !17, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !41, file: !42, line: 68, baseType: !57, size: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !42, line: 36, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !41, file: !42, line: 70, baseType: !60, size: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !41, file: !42, line: 72, baseType: !37, size: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !41, file: !42, line: 73, baseType: !37, size: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !41, file: !42, line: 74, baseType: !64, size: 64, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !65, line: 152, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !41, file: !42, line: 77, baseType: !68, size: 16, offset: 1024)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !41, file: !42, line: 78, baseType: !70, size: 8, offset: 1040)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !41, file: !42, line: 79, baseType: !72, size: 8, offset: 1048)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !41, file: !42, line: 81, baseType: !76, size: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !42, line: 43, baseType: null)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !41, file: !42, line: 89, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !65, line: 153, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !41, file: !42, line: 91, baseType: !81, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !42, line: 37, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !41, file: !42, line: 92, baseType: !84, size: 64, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !42, line: 38, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !41, file: !42, line: 93, baseType: !60, size: 64, offset: 1344)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !41, file: !42, line: 94, baseType: !19, size: 64, offset: 1408)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !41, file: !42, line: 95, baseType: !89, size: 64, offset: 1472)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!91 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !41, file: !42, line: 96, baseType: !37, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !41, file: !42, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !{}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !99, line: 102, baseType: !100)
!99 = !DIFile(filename: "./rio.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !99, line: 48, size: 896, elements: !101)
!101 = !{!102, !107, !113, !119, !123, !127, !131, !132, !133, !134}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !100, file: !99, line: 52, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!89, !106, !19, !89}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !100, file: !99, line: 53, baseType: !108, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!89, !106, !111, !89}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !100, file: !99, line: 54, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !106}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !118, line: 58, baseType: !79)
!118 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !100, file: !99, line: 55, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!37, !106}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !100, file: !99, line: 61, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !106, !111, !89}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !100, file: !99, line: 64, baseType: !128, size: 64, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !129, line: 27, baseType: !130)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !65, line: 45, baseType: !91)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !99, line: 64, baseType: !128, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !100, file: !99, line: 67, baseType: !89, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !100, file: !99, line: 70, baseType: !89, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !100, file: !99, line: 99, baseType: !135, size: 320, offset: 576)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 73, size: 320, elements: !136)
!136 = !{!137, !144, !150, !301}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !135, file: !99, line: 78, baseType: !138, size: 128)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !99, line: 75, size: 128, elements: !139)
!139 = !{!140, !143}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !138, file: !99, line: 76, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !142, line: 43, baseType: !17)
!142 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !138, file: !99, line: 77, baseType: !117, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !135, file: !99, line: 84, baseType: !145, size: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !99, line: 80, size: 192, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !145, file: !99, line: 81, baseType: !38, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !145, file: !99, line: 82, baseType: !117, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !145, file: !99, line: 83, baseType: !117, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !135, file: !99, line: 92, baseType: !151, size: 320)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !99, line: 86, size: 320, elements: !152)
!152 = !{!153, !297, !298, !299, !300}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !151, file: !99, line: 87, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !157)
!157 = !{!158, !286, !288, !290, !291, !292, !293, !294, !295, !296}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !6, line: 78, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !162)
!162 = !{!163, !225, !236, !240, !251, !255, !256, !260, !264, !265, !269, !273, !280, !281, !282}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !161, file: !6, line: 60, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !37, !19, !37}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !169, line: 99, size: 640, elements: !170)
!169 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!170 = !{!171, !172, !173, !174, !185, !192, !216, !217, !218, !223, !224}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !168, file: !169, line: 100, baseType: !37, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !168, file: !169, line: 101, baseType: !37, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !168, file: !169, line: 102, baseType: !20, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !168, file: !169, line: 103, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !169, line: 77, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !169, line: 72, size: 256, elements: !178)
!178 = !{!179, !180, !183, !184}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !177, file: !169, line: 73, baseType: !37, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !177, file: !169, line: 74, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !169, line: 66, baseType: !165)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !177, file: !169, line: 75, baseType: !181, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !177, file: !169, line: 76, baseType: !19, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !168, file: !169, line: 104, baseType: !186, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !169, line: 96, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !169, line: 93, size: 64, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !188, file: !169, line: 94, baseType: !37, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !188, file: !169, line: 95, baseType: !37, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !168, file: !169, line: 105, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !169, line: 90, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !169, line: 80, size: 512, elements: !196)
!196 = !{!197, !198, !201, !206, !211, !212, !214, !215}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !195, file: !169, line: 81, baseType: !20, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !195, file: !169, line: 82, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !200, line: 22, baseType: !128)
!200 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!201 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !195, file: !169, line: 83, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !169, line: 67, baseType: !204)
!204 = !DISubroutineType(types: !205)
!205 = !{!37, !167, !20, !19}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !195, file: !169, line: 84, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !169, line: 68, baseType: !209)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !167, !19}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !195, file: !169, line: 85, baseType: !19, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !195, file: !169, line: 86, baseType: !213, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !195, file: !169, line: 87, baseType: !213, size: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !195, file: !169, line: 88, baseType: !37, size: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !168, file: !169, line: 106, baseType: !37, size: 32, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !168, file: !169, line: 107, baseType: !19, size: 64, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !168, file: !169, line: 108, baseType: !219, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !169, line: 69, baseType: !221)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !167}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !168, file: !169, line: 109, baseType: !219, size: 64, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !169, line: 110, baseType: !37, size: 32, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !161, file: !6, line: 61, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!37, !229, !230, !37, !230, !232}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !229}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !161, file: !6, line: 62, baseType: !237, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!37, !229, !111, !89}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !161, file: !6, line: 63, baseType: !241, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!37, !229, !244, !37}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !247, line: 26, size: 128, elements: !248)
!247 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!248 = !{!249, !250}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !246, file: !247, line: 28, baseType: !19, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !246, file: !247, line: 29, baseType: !89, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !161, file: !6, line: 64, baseType: !252, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!37, !229, !19, !89}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !161, file: !6, line: 65, baseType: !233, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !161, file: !6, line: 66, baseType: !257, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!37, !229, !232}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !161, file: !6, line: 67, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!37, !229, !232, !37}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !161, file: !6, line: 68, baseType: !257, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !161, file: !6, line: 69, baseType: !266, size: 64, offset: 576)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!230, !229}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !161, file: !6, line: 70, baseType: !270, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!37, !229, !230, !37, !20}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !161, file: !6, line: 71, baseType: !274, size: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !229, !17, !277, !20}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !278, line: 108, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !65, line: 194, baseType: !66)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !161, file: !6, line: 72, baseType: !274, size: 64, offset: 768)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !161, file: !6, line: 73, baseType: !274, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !161, file: !6, line: 74, baseType: !283, size: 64, offset: 896)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!37, !229}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !156, file: !6, line: 79, baseType: !287, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !6, line: 80, baseType: !289, size: 16, offset: 96)
!289 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !156, file: !6, line: 81, baseType: !289, size: 16, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !156, file: !6, line: 82, baseType: !37, size: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !156, file: !6, line: 83, baseType: !19, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !156, file: !6, line: 84, baseType: !232, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !156, file: !6, line: 85, baseType: !232, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !156, file: !6, line: 86, baseType: !232, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !156, file: !6, line: 87, baseType: !37, size: 32, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !151, file: !99, line: 88, baseType: !117, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !151, file: !99, line: 89, baseType: !141, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !151, file: !99, line: 90, baseType: !89, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read_so_far", scope: !151, file: !99, line: 91, baseType: !89, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !135, file: !99, line: 98, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !99, line: 94, size: 192, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !302, file: !99, line: 95, baseType: !37, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !302, file: !99, line: 96, baseType: !117, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !302, file: !99, line: 97, baseType: !141, size: 64, offset: 128)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "rdbstate", scope: !2, file: !3, line: 53, type: !309, isLocal: false, isDefinition: true)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 43, size: 8640, elements: !310)
!310 = !{!311, !313, !324, !325, !326, !327, !328, !329, !330}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rio", scope: !309, file: !3, line: 44, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !309, file: !3, line: 45, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !316, line: 862, baseType: !317)
!316 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !316, line: 854, size: 128, elements: !318)
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !316, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !317, file: !316, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !317, file: !316, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !317, file: !316, line: 860, baseType: !37, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !317, file: !316, line: 861, baseType: !19, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "key_type", scope: !309, file: !3, line: 46, baseType: !37, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !309, file: !3, line: 47, baseType: !91, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !309, file: !3, line: 48, baseType: !91, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "already_expired", scope: !309, file: !3, line: 49, baseType: !91, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doing", scope: !309, file: !3, line: 50, baseType: !37, size: 32, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "error_set", scope: !309, file: !3, line: 51, baseType: !37, size: 32, offset: 416)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !309, file: !3, line: 52, baseType: !331, size: 8192, offset: 448)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 1024)
!334 = !{i32 7, !"Dwarf Version", i32 4}
!335 = !{i32 2, !"Debug Info Version", i32 3}
!336 = !{i32 1, !"wchar_size", i32 4}
!337 = !{i32 7, !"uwtable", i32 1}
!338 = !{i32 7, !"frame-pointer", i32 2}
!339 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!340 = distinct !DISubprogram(name: "rdbShowGenericInfo", scope: !3, file: !3, line: 103, type: !341, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!341 = !DISubroutineType(types: !342)
!342 = !{null}
!343 = !DILocation(line: 104, column: 47, scope: !340)
!344 = !DILocation(line: 104, column: 5, scope: !340)
!345 = !DILocation(line: 105, column: 45, scope: !340)
!346 = !DILocation(line: 105, column: 5, scope: !340)
!347 = !DILocation(line: 106, column: 53, scope: !340)
!348 = !DILocation(line: 106, column: 5, scope: !340)
!349 = !DILocation(line: 107, column: 1, scope: !340)
!350 = distinct !DISubprogram(name: "rdbCheckError", scope: !3, file: !3, line: 111, type: !351, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !230, null}
!353 = !DILocalVariable(name: "fmt", arg: 1, scope: !350, file: !3, line: 111, type: !230)
!354 = !DILocation(line: 111, column: 32, scope: !350)
!355 = !DILocalVariable(name: "msg", scope: !350, file: !3, line: 112, type: !331)
!356 = !DILocation(line: 112, column: 10, scope: !350)
!357 = !DILocalVariable(name: "ap", scope: !350, file: !3, line: 113, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !359, line: 52, baseType: !360)
!359 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !361, line: 32, baseType: !362)
!361 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stdarg.h", directory: "")
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !363)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !73)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !365)
!365 = !{!366, !367, !368, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !364, file: !3, line: 113, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !364, file: !3, line: 113, baseType: !7, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !364, file: !3, line: 113, baseType: !19, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !364, file: !3, line: 113, baseType: !19, size: 64, offset: 128)
!370 = !DILocation(line: 113, column: 13, scope: !350)
!371 = !DILocation(line: 115, column: 5, scope: !350)
!372 = !DILocation(line: 116, column: 15, scope: !350)
!373 = !DILocation(line: 116, column: 33, scope: !350)
!374 = !DILocation(line: 116, column: 38, scope: !350)
!375 = !DILocation(line: 116, column: 5, scope: !350)
!376 = !DILocation(line: 117, column: 5, scope: !350)
!377 = !DILocation(line: 119, column: 5, scope: !350)
!378 = !DILocation(line: 121, column: 40, scope: !350)
!379 = !DILocation(line: 121, column: 31, scope: !350)
!380 = !DILocation(line: 122, column: 22, scope: !350)
!381 = !DILocation(line: 122, column: 27, scope: !350)
!382 = !DILocation(line: 122, column: 49, scope: !350)
!383 = !DILocation(line: 120, column: 5, scope: !350)
!384 = !DILocation(line: 124, column: 41, scope: !350)
!385 = !DILocation(line: 124, column: 9, scope: !350)
!386 = !DILocation(line: 123, column: 5, scope: !350)
!387 = !DILocation(line: 125, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !350, file: !3, line: 125, column: 9)
!389 = !DILocation(line: 125, column: 9, scope: !388)
!390 = !DILocation(line: 125, column: 9, scope: !350)
!391 = !DILocation(line: 127, column: 29, scope: !388)
!392 = !DILocation(line: 127, column: 34, scope: !388)
!393 = !DILocation(line: 126, column: 9, scope: !388)
!394 = !DILocation(line: 128, column: 18, scope: !395)
!395 = distinct !DILexicalBlock(scope: !350, file: !3, line: 128, column: 9)
!396 = !DILocation(line: 128, column: 27, scope: !395)
!397 = !DILocation(line: 128, column: 9, scope: !350)
!398 = !DILocation(line: 130, column: 22, scope: !395)
!399 = !DILocation(line: 131, column: 33, scope: !395)
!400 = !DILocation(line: 131, column: 14, scope: !395)
!401 = !DILocation(line: 131, column: 42, scope: !395)
!402 = !DILocation(line: 131, column: 13, scope: !395)
!403 = !DILocation(line: 133, column: 42, scope: !395)
!404 = !DILocation(line: 133, column: 17, scope: !395)
!405 = !DILocation(line: 129, column: 9, scope: !395)
!406 = !DILocation(line: 134, column: 5, scope: !350)
!407 = !DILocation(line: 135, column: 1, scope: !350)
!408 = distinct !DISubprogram(name: "rdbCheckInfo", scope: !3, file: !3, line: 138, type: !351, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!409 = !DILocalVariable(name: "fmt", arg: 1, scope: !408, file: !3, line: 138, type: !230)
!410 = !DILocation(line: 138, column: 31, scope: !408)
!411 = !DILocalVariable(name: "msg", scope: !408, file: !3, line: 139, type: !331)
!412 = !DILocation(line: 139, column: 10, scope: !408)
!413 = !DILocalVariable(name: "ap", scope: !408, file: !3, line: 140, type: !358)
!414 = !DILocation(line: 140, column: 13, scope: !408)
!415 = !DILocation(line: 142, column: 5, scope: !408)
!416 = !DILocation(line: 143, column: 15, scope: !408)
!417 = !DILocation(line: 143, column: 33, scope: !408)
!418 = !DILocation(line: 143, column: 38, scope: !408)
!419 = !DILocation(line: 143, column: 5, scope: !408)
!420 = !DILocation(line: 144, column: 5, scope: !408)
!421 = !DILocation(line: 147, column: 40, scope: !408)
!422 = !DILocation(line: 147, column: 31, scope: !408)
!423 = !DILocation(line: 148, column: 22, scope: !408)
!424 = !DILocation(line: 148, column: 27, scope: !408)
!425 = !DILocation(line: 148, column: 49, scope: !408)
!426 = !DILocation(line: 146, column: 5, scope: !408)
!427 = !DILocation(line: 149, column: 1, scope: !408)
!428 = distinct !DISubprogram(name: "rdbCheckSetError", scope: !3, file: !3, line: 153, type: !351, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!429 = !DILocalVariable(name: "fmt", arg: 1, scope: !428, file: !3, line: 153, type: !230)
!430 = !DILocation(line: 153, column: 35, scope: !428)
!431 = !DILocalVariable(name: "ap", scope: !428, file: !3, line: 154, type: !358)
!432 = !DILocation(line: 154, column: 13, scope: !428)
!433 = !DILocation(line: 156, column: 5, scope: !428)
!434 = !DILocation(line: 157, column: 55, scope: !428)
!435 = !DILocation(line: 157, column: 60, scope: !428)
!436 = !DILocation(line: 157, column: 5, scope: !428)
!437 = !DILocation(line: 158, column: 5, scope: !428)
!438 = !DILocation(line: 159, column: 24, scope: !428)
!439 = !DILocation(line: 160, column: 1, scope: !428)
!440 = distinct !DISubprogram(name: "rdbCheckHandleCrash", scope: !3, file: !3, line: 165, type: !441, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !37, !443, !19}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !445, line: 124, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/siginfo_t.h", directory: "")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 36, size: 1024, elements: !447)
!447 = !{!448, !449, !450, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !446, file: !445, line: 38, baseType: !37, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !446, file: !445, line: 40, baseType: !37, size: 32, offset: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !446, file: !445, line: 42, baseType: !37, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !446, file: !445, line: 48, baseType: !37, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !446, file: !445, line: 123, baseType: !453, size: 896, offset: 128)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !445, line: 51, size: 896, elements: !454)
!454 = !{!455, !459, !466, !478, !484, !493, !508, !513}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !453, file: !445, line: 53, baseType: !456, size: 896)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 896, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 28)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !453, file: !445, line: 60, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 56, size: 64, elements: !461)
!461 = !{!462, !464}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !460, file: !445, line: 58, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !65, line: 154, baseType: !37)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !460, file: !445, line: 59, baseType: !465, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !65, line: 146, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !453, file: !445, line: 68, baseType: !467, size: 128)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 63, size: 128, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "si_tid", scope: !467, file: !445, line: 65, baseType: !37, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "si_overrun", scope: !467, file: !445, line: 66, baseType: !37, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !467, file: !445, line: 67, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigval_t", file: !473, line: 30, baseType: !474)
!473 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigval_t.h", directory: "")
!474 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !473, line: 24, size: 64, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !474, file: !473, line: 26, baseType: !37, size: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !474, file: !473, line: 27, baseType: !19, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !453, file: !445, line: 76, baseType: !479, size: 128)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 71, size: 128, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !479, file: !445, line: 73, baseType: !463, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !479, file: !445, line: 74, baseType: !465, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "si_sigval", scope: !479, file: !445, line: 75, baseType: !472, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !453, file: !445, line: 86, baseType: !485, size: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 79, size: 256, elements: !486)
!486 = !{!487, !488, !489, !490, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !485, file: !445, line: 81, baseType: !463, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "si_uid", scope: !485, file: !445, line: 82, baseType: !465, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "si_status", scope: !485, file: !445, line: 83, baseType: !37, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "si_utime", scope: !485, file: !445, line: 84, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clock_t", file: !65, line: 156, baseType: !66)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "si_stime", scope: !485, file: !445, line: 85, baseType: !491, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !453, file: !445, line: 105, baseType: !494, size: 256)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 89, size: 256, elements: !495)
!495 = !{!496, !497, !498}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr", scope: !494, file: !445, line: 91, baseType: !19, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "si_addr_lsb", scope: !494, file: !445, line: 93, baseType: !289, size: 16, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_bounds", scope: !494, file: !445, line: 104, baseType: !499, size: 128, offset: 128)
!499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !445, line: 94, size: 128, elements: !500)
!500 = !{!501, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !499, file: !445, line: 101, baseType: !502, size: 128)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !445, line: 97, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !502, file: !445, line: 99, baseType: !19, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !502, file: !445, line: 100, baseType: !19, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !499, file: !445, line: 103, baseType: !507, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !65, line: 42, baseType: !7)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !453, file: !445, line: 112, baseType: !509, size: 128)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 108, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "si_band", scope: !509, file: !445, line: 110, baseType: !66, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "si_fd", scope: !509, file: !445, line: 111, baseType: !37, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !453, file: !445, line: 121, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !445, line: 116, size: 128, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !514, file: !445, line: 118, baseType: !19, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !514, file: !445, line: 119, baseType: !37, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !514, file: !445, line: 120, baseType: !7, size: 32, offset: 96)
!519 = !DILocalVariable(name: "sig", arg: 1, scope: !440, file: !3, line: 165, type: !37)
!520 = !DILocation(line: 165, column: 30, scope: !440)
!521 = !DILocalVariable(name: "info", arg: 2, scope: !440, file: !3, line: 165, type: !443)
!522 = !DILocation(line: 165, column: 46, scope: !440)
!523 = !DILocalVariable(name: "secret", arg: 3, scope: !440, file: !3, line: 165, type: !19)
!524 = !DILocation(line: 165, column: 58, scope: !440)
!525 = !DILocation(line: 166, column: 5, scope: !440)
!526 = !DILocation(line: 167, column: 5, scope: !440)
!527 = !DILocation(line: 168, column: 5, scope: !440)
!528 = !DILocation(line: 170, column: 5, scope: !440)
!529 = !DILocation(line: 171, column: 5, scope: !440)
!530 = distinct !DISubprogram(name: "rdbCheckSetupSignals", scope: !3, file: !3, line: 174, type: !341, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!531 = !DILocalVariable(name: "act", scope: !530, file: !3, line: 175, type: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !533, line: 27, size: 1216, elements: !534)
!533 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sigaction.h", directory: "")
!534 = !{!535, !546, !555, !556}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__sigaction_handler", scope: !532, file: !533, line: 38, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 31, size: 64, elements: !537)
!537 = !{!538, !544}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !536, file: !533, line: 34, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !540, line: 72, baseType: !541)
!540 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !37}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !536, file: !533, line: 36, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !532, file: !533, line: 46, baseType: !547, size: 1024, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !548, line: 8, baseType: !549)
!548 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 5, size: 1024, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !549, file: !548, line: 7, baseType: !552, size: 1024)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 16)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !532, file: !533, line: 49, baseType: !37, size: 32, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !532, file: !533, line: 52, baseType: !557, size: 64, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!558 = !DILocation(line: 175, column: 22, scope: !530)
!559 = !DILocation(line: 177, column: 22, scope: !530)
!560 = !DILocation(line: 177, column: 5, scope: !530)
!561 = !DILocation(line: 178, column: 9, scope: !530)
!562 = !DILocation(line: 178, column: 18, scope: !530)
!563 = !DILocation(line: 179, column: 9, scope: !530)
!564 = !DILocation(line: 179, column: 22, scope: !530)
!565 = !DILocation(line: 180, column: 5, scope: !530)
!566 = !DILocation(line: 181, column: 5, scope: !530)
!567 = !DILocation(line: 182, column: 5, scope: !530)
!568 = !DILocation(line: 183, column: 5, scope: !530)
!569 = !DILocation(line: 184, column: 5, scope: !530)
!570 = !DILocation(line: 185, column: 1, scope: !530)
!571 = !DILocalVariable(name: "rdbfilename", arg: 1, scope: !34, file: !3, line: 191, type: !17)
!572 = !DILocation(line: 191, column: 27, scope: !34)
!573 = !DILocalVariable(name: "fp", arg: 2, scope: !34, file: !3, line: 191, type: !38)
!574 = !DILocation(line: 191, column: 46, scope: !34)
!575 = !DILocalVariable(name: "dbid", scope: !34, file: !3, line: 192, type: !128)
!576 = !DILocation(line: 192, column: 14, scope: !34)
!577 = !DILocalVariable(name: "selected_dbid", scope: !34, file: !3, line: 193, type: !37)
!578 = !DILocation(line: 193, column: 9, scope: !34)
!579 = !DILocalVariable(name: "type", scope: !34, file: !3, line: 194, type: !37)
!580 = !DILocation(line: 194, column: 9, scope: !34)
!581 = !DILocalVariable(name: "rdbver", scope: !34, file: !3, line: 194, type: !37)
!582 = !DILocation(line: 194, column: 15, scope: !34)
!583 = !DILocalVariable(name: "buf", scope: !34, file: !3, line: 195, type: !331)
!584 = !DILocation(line: 195, column: 10, scope: !34)
!585 = !DILocalVariable(name: "expiretime", scope: !34, file: !3, line: 196, type: !20)
!586 = !DILocation(line: 196, column: 15, scope: !34)
!587 = !DILocalVariable(name: "now", scope: !34, file: !3, line: 196, type: !20)
!588 = !DILocation(line: 196, column: 27, scope: !34)
!589 = !DILocation(line: 196, column: 33, scope: !34)
!590 = !DILocalVariable(name: "sb", scope: !34, file: !3, line: 198, type: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !592, line: 26, size: 1152, elements: !593)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "")
!593 = !{!594, !596, !598, !600, !602, !603, !605, !606, !607, !608, !610, !612, !620, !621, !622}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !591, file: !592, line: 31, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !65, line: 145, baseType: !91)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !591, file: !592, line: 36, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !65, line: 148, baseType: !91)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !591, file: !592, line: 44, baseType: !599, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !65, line: 151, baseType: !91)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !591, file: !592, line: 45, baseType: !601, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !65, line: 150, baseType: !7)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !591, file: !592, line: 47, baseType: !465, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !591, file: !592, line: 48, baseType: !604, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !65, line: 147, baseType: !7)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !591, file: !592, line: 50, baseType: !37, size: 32, offset: 288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !591, file: !592, line: 52, baseType: !595, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !591, file: !592, line: 57, baseType: !64, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !591, file: !592, line: 61, baseType: !609, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !65, line: 175, baseType: !66)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !591, file: !592, line: 63, baseType: !611, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !65, line: 180, baseType: !66)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !591, file: !592, line: 74, baseType: !613, size: 128, offset: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !614, line: 11, size: 128, elements: !615)
!614 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!615 = !{!616, !618}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !613, file: !614, line: 16, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !65, line: 160, baseType: !66)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !613, file: !614, line: 21, baseType: !619, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !65, line: 197, baseType: !66)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !591, file: !592, line: 75, baseType: !613, size: 128, offset: 704)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !591, file: !592, line: 76, baseType: !613, size: 128, offset: 832)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !591, file: !592, line: 89, baseType: !623, size: 192, offset: 960)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 192, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 3)
!626 = !DILocation(line: 198, column: 17, scope: !34)
!627 = !DILocalVariable(name: "closefile", scope: !34, file: !3, line: 200, type: !37)
!628 = !DILocation(line: 200, column: 9, scope: !34)
!629 = !DILocation(line: 200, column: 22, scope: !34)
!630 = !DILocation(line: 200, column: 25, scope: !34)
!631 = !DILocation(line: 201, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !34, file: !3, line: 201, column: 9)
!633 = !DILocation(line: 201, column: 12, scope: !632)
!634 = !DILocation(line: 201, column: 20, scope: !632)
!635 = !DILocation(line: 201, column: 35, scope: !632)
!636 = !DILocation(line: 201, column: 29, scope: !632)
!637 = !DILocation(line: 201, column: 27, scope: !632)
!638 = !DILocation(line: 201, column: 53, scope: !632)
!639 = !DILocation(line: 201, column: 9, scope: !34)
!640 = !DILocation(line: 201, column: 62, scope: !632)
!641 = !DILocation(line: 203, column: 22, scope: !642)
!642 = distinct !DILexicalBlock(scope: !34, file: !3, line: 203, column: 9)
!643 = !DILocation(line: 203, column: 15, scope: !642)
!644 = !DILocation(line: 203, column: 9, scope: !642)
!645 = !DILocation(line: 203, column: 32, scope: !642)
!646 = !DILocation(line: 203, column: 9, scope: !34)
!647 = !DILocation(line: 204, column: 12, scope: !642)
!648 = !DILocation(line: 204, column: 20, scope: !642)
!649 = !DILocation(line: 204, column: 9, scope: !642)
!650 = !DILocation(line: 206, column: 25, scope: !34)
!651 = !DILocation(line: 206, column: 34, scope: !34)
!652 = !DILocation(line: 206, column: 5, scope: !34)
!653 = !DILocation(line: 207, column: 26, scope: !34)
!654 = !DILocation(line: 207, column: 5, scope: !34)
!655 = !DILocation(line: 208, column: 18, scope: !34)
!656 = !DILocation(line: 209, column: 22, scope: !34)
!657 = !DILocation(line: 210, column: 22, scope: !658)
!658 = distinct !DILexicalBlock(scope: !34, file: !3, line: 210, column: 9)
!659 = !DILocation(line: 210, column: 9, scope: !658)
!660 = !DILocation(line: 210, column: 29, scope: !658)
!661 = !DILocation(line: 210, column: 9, scope: !34)
!662 = !DILocation(line: 210, column: 35, scope: !658)
!663 = !DILocation(line: 211, column: 5, scope: !34)
!664 = !DILocation(line: 211, column: 12, scope: !34)
!665 = !DILocation(line: 212, column: 16, scope: !666)
!666 = distinct !DILexicalBlock(scope: !34, file: !3, line: 212, column: 9)
!667 = !DILocation(line: 212, column: 9, scope: !666)
!668 = !DILocation(line: 212, column: 31, scope: !666)
!669 = !DILocation(line: 212, column: 9, scope: !34)
!670 = !DILocation(line: 213, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 212, column: 37)
!672 = !DILocation(line: 214, column: 9, scope: !671)
!673 = !DILocation(line: 216, column: 19, scope: !34)
!674 = !DILocation(line: 216, column: 22, scope: !34)
!675 = !DILocation(line: 216, column: 14, scope: !34)
!676 = !DILocation(line: 216, column: 12, scope: !34)
!677 = !DILocation(line: 217, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !34, file: !3, line: 217, column: 9)
!679 = !DILocation(line: 217, column: 16, scope: !678)
!680 = !DILocation(line: 217, column: 20, scope: !678)
!681 = !DILocation(line: 217, column: 23, scope: !678)
!682 = !DILocation(line: 217, column: 30, scope: !678)
!683 = !DILocation(line: 217, column: 9, scope: !34)
!684 = !DILocation(line: 218, column: 60, scope: !685)
!685 = distinct !DILexicalBlock(scope: !678, file: !3, line: 217, column: 45)
!686 = !DILocation(line: 218, column: 9, scope: !685)
!687 = !DILocation(line: 219, column: 9, scope: !685)
!688 = !DILocation(line: 222, column: 16, scope: !34)
!689 = !DILocation(line: 223, column: 5, scope: !34)
!690 = !DILocalVariable(name: "key", scope: !691, file: !3, line: 224, type: !314)
!691 = distinct !DILexicalBlock(scope: !34, file: !3, line: 223, column: 14)
!692 = !DILocation(line: 224, column: 15, scope: !691)
!693 = !DILocalVariable(name: "val", scope: !691, file: !3, line: 224, type: !314)
!694 = !DILocation(line: 224, column: 21, scope: !691)
!695 = !DILocation(line: 227, column: 24, scope: !691)
!696 = !DILocation(line: 228, column: 21, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 228, column: 13)
!698 = !DILocation(line: 228, column: 19, scope: !697)
!699 = !DILocation(line: 228, column: 40, scope: !697)
!700 = !DILocation(line: 228, column: 13, scope: !691)
!701 = !DILocation(line: 228, column: 47, scope: !697)
!702 = !DILocation(line: 231, column: 13, scope: !703)
!703 = distinct !DILexicalBlock(scope: !691, file: !3, line: 231, column: 13)
!704 = !DILocation(line: 231, column: 18, scope: !703)
!705 = !DILocation(line: 231, column: 13, scope: !691)
!706 = !DILocation(line: 232, column: 28, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !3, line: 231, column: 44)
!708 = !DILocation(line: 236, column: 26, scope: !707)
!709 = !DILocation(line: 236, column: 24, scope: !707)
!710 = !DILocation(line: 237, column: 24, scope: !707)
!711 = !DILocation(line: 238, column: 17, scope: !712)
!712 = distinct !DILexicalBlock(scope: !707, file: !3, line: 238, column: 17)
!713 = !DILocation(line: 238, column: 17, scope: !707)
!714 = !DILocation(line: 238, column: 40, scope: !712)
!715 = !DILocation(line: 239, column: 13, scope: !707)
!716 = distinct !{!716, !689, !717}
!717 = !DILocation(line: 349, column: 5, scope: !34)
!718 = !DILocation(line: 240, column: 20, scope: !719)
!719 = distinct !DILexicalBlock(scope: !703, file: !3, line: 240, column: 20)
!720 = !DILocation(line: 240, column: 25, scope: !719)
!721 = !DILocation(line: 240, column: 20, scope: !703)
!722 = !DILocation(line: 243, column: 28, scope: !723)
!723 = distinct !DILexicalBlock(scope: !719, file: !3, line: 240, column: 54)
!724 = !DILocation(line: 244, column: 55, scope: !723)
!725 = !DILocation(line: 244, column: 26, scope: !723)
!726 = !DILocation(line: 244, column: 24, scope: !723)
!727 = !DILocation(line: 245, column: 17, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !3, line: 245, column: 17)
!729 = !DILocation(line: 245, column: 17, scope: !723)
!730 = !DILocation(line: 245, column: 40, scope: !728)
!731 = !DILocation(line: 246, column: 13, scope: !723)
!732 = !DILocation(line: 247, column: 20, scope: !733)
!733 = distinct !DILexicalBlock(scope: !719, file: !3, line: 247, column: 20)
!734 = !DILocation(line: 247, column: 25, scope: !733)
!735 = !DILocation(line: 247, column: 20, scope: !719)
!736 = !DILocalVariable(name: "byte", scope: !737, file: !3, line: 249, type: !738)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 247, column: 45)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !129, line: 24, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !65, line: 38, baseType: !740)
!740 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!741 = !DILocation(line: 249, column: 21, scope: !737)
!742 = !DILocation(line: 250, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !3, line: 250, column: 17)
!744 = !DILocation(line: 250, column: 39, scope: !743)
!745 = !DILocation(line: 250, column: 17, scope: !737)
!746 = !DILocation(line: 250, column: 45, scope: !743)
!747 = !DILocation(line: 251, column: 13, scope: !737)
!748 = !DILocation(line: 252, column: 20, scope: !749)
!749 = distinct !DILexicalBlock(scope: !733, file: !3, line: 252, column: 20)
!750 = !DILocation(line: 252, column: 25, scope: !749)
!751 = !DILocation(line: 252, column: 20, scope: !733)
!752 = !DILocation(line: 254, column: 17, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 254, column: 17)
!754 = distinct !DILexicalBlock(scope: !749, file: !3, line: 252, column: 45)
!755 = !DILocation(line: 254, column: 39, scope: !753)
!756 = !DILocation(line: 254, column: 17, scope: !754)
!757 = !DILocation(line: 254, column: 54, scope: !753)
!758 = !DILocation(line: 255, column: 13, scope: !754)
!759 = !DILocation(line: 256, column: 20, scope: !760)
!760 = distinct !DILexicalBlock(scope: !749, file: !3, line: 256, column: 20)
!761 = !DILocation(line: 256, column: 25, scope: !760)
!762 = !DILocation(line: 256, column: 20, scope: !749)
!763 = !DILocation(line: 258, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !3, line: 256, column: 44)
!765 = !DILocation(line: 259, column: 20, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 259, column: 20)
!767 = !DILocation(line: 259, column: 25, scope: !766)
!768 = !DILocation(line: 259, column: 20, scope: !760)
!769 = !DILocation(line: 261, column: 28, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 259, column: 49)
!771 = !DILocation(line: 262, column: 25, scope: !772)
!772 = distinct !DILexicalBlock(scope: !770, file: !3, line: 262, column: 17)
!773 = !DILocation(line: 262, column: 23, scope: !772)
!774 = !DILocation(line: 262, column: 48, scope: !772)
!775 = !DILocation(line: 262, column: 17, scope: !770)
!776 = !DILocation(line: 263, column: 17, scope: !772)
!777 = !DILocation(line: 264, column: 70, scope: !770)
!778 = !DILocation(line: 264, column: 13, scope: !770)
!779 = !DILocation(line: 265, column: 29, scope: !770)
!780 = !DILocation(line: 265, column: 27, scope: !770)
!781 = !DILocation(line: 266, column: 13, scope: !770)
!782 = !DILocation(line: 267, column: 20, scope: !783)
!783 = distinct !DILexicalBlock(scope: !766, file: !3, line: 267, column: 20)
!784 = !DILocation(line: 267, column: 25, scope: !783)
!785 = !DILocation(line: 267, column: 20, scope: !766)
!786 = !DILocalVariable(name: "db_size", scope: !787, file: !3, line: 270, type: !128)
!787 = distinct !DILexicalBlock(scope: !783, file: !3, line: 267, column: 49)
!788 = !DILocation(line: 270, column: 22, scope: !787)
!789 = !DILocalVariable(name: "expires_size", scope: !787, file: !3, line: 270, type: !128)
!790 = !DILocation(line: 270, column: 31, scope: !787)
!791 = !DILocation(line: 271, column: 28, scope: !787)
!792 = !DILocation(line: 272, column: 28, scope: !793)
!793 = distinct !DILexicalBlock(scope: !787, file: !3, line: 272, column: 17)
!794 = !DILocation(line: 272, column: 26, scope: !793)
!795 = !DILocation(line: 272, column: 51, scope: !793)
!796 = !DILocation(line: 272, column: 17, scope: !787)
!797 = !DILocation(line: 273, column: 17, scope: !793)
!798 = !DILocation(line: 274, column: 33, scope: !799)
!799 = distinct !DILexicalBlock(scope: !787, file: !3, line: 274, column: 17)
!800 = !DILocation(line: 274, column: 31, scope: !799)
!801 = !DILocation(line: 274, column: 56, scope: !799)
!802 = !DILocation(line: 274, column: 17, scope: !787)
!803 = !DILocation(line: 275, column: 17, scope: !799)
!804 = !DILocation(line: 276, column: 13, scope: !787)
!805 = !DILocation(line: 277, column: 20, scope: !806)
!806 = distinct !DILexicalBlock(scope: !783, file: !3, line: 277, column: 20)
!807 = !DILocation(line: 277, column: 25, scope: !806)
!808 = !DILocation(line: 277, column: 20, scope: !783)
!809 = !DILocalVariable(name: "auxkey", scope: !810, file: !3, line: 283, type: !314)
!810 = distinct !DILexicalBlock(scope: !806, file: !3, line: 277, column: 44)
!811 = !DILocation(line: 283, column: 19, scope: !810)
!812 = !DILocalVariable(name: "auxval", scope: !810, file: !3, line: 283, type: !314)
!813 = !DILocation(line: 283, column: 28, scope: !810)
!814 = !DILocation(line: 284, column: 28, scope: !810)
!815 = !DILocation(line: 285, column: 27, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !3, line: 285, column: 17)
!817 = !DILocation(line: 285, column: 25, scope: !816)
!818 = !DILocation(line: 285, column: 54, scope: !816)
!819 = !DILocation(line: 285, column: 17, scope: !810)
!820 = !DILocation(line: 285, column: 63, scope: !816)
!821 = !DILocation(line: 286, column: 27, scope: !822)
!822 = distinct !DILexicalBlock(scope: !810, file: !3, line: 286, column: 17)
!823 = !DILocation(line: 286, column: 25, scope: !822)
!824 = !DILocation(line: 286, column: 54, scope: !822)
!825 = !DILocation(line: 286, column: 17, scope: !810)
!826 = !DILocation(line: 287, column: 30, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 286, column: 63)
!828 = !DILocation(line: 287, column: 17, scope: !827)
!829 = !DILocation(line: 288, column: 17, scope: !827)
!830 = !DILocation(line: 292, column: 24, scope: !810)
!831 = !DILocation(line: 292, column: 32, scope: !810)
!832 = !DILocation(line: 292, column: 44, scope: !810)
!833 = !DILocation(line: 292, column: 52, scope: !810)
!834 = !DILocation(line: 291, column: 13, scope: !810)
!835 = !DILocation(line: 293, column: 26, scope: !810)
!836 = !DILocation(line: 293, column: 13, scope: !810)
!837 = !DILocation(line: 294, column: 26, scope: !810)
!838 = !DILocation(line: 294, column: 13, scope: !810)
!839 = !DILocation(line: 295, column: 13, scope: !810)
!840 = !DILocation(line: 296, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !806, file: !3, line: 296, column: 20)
!842 = !DILocation(line: 296, column: 25, scope: !841)
!843 = !DILocation(line: 296, column: 20, scope: !806)
!844 = !DILocalVariable(name: "moduleid", scope: !845, file: !3, line: 298, type: !128)
!845 = distinct !DILexicalBlock(scope: !841, file: !3, line: 296, column: 51)
!846 = !DILocation(line: 298, column: 22, scope: !845)
!847 = !DILocalVariable(name: "when_opcode", scope: !845, file: !3, line: 298, type: !128)
!848 = !DILocation(line: 298, column: 32, scope: !845)
!849 = !DILocalVariable(name: "when", scope: !845, file: !3, line: 298, type: !128)
!850 = !DILocation(line: 298, column: 45, scope: !845)
!851 = !DILocation(line: 299, column: 28, scope: !845)
!852 = !DILocation(line: 300, column: 29, scope: !853)
!853 = distinct !DILexicalBlock(scope: !845, file: !3, line: 300, column: 17)
!854 = !DILocation(line: 300, column: 27, scope: !853)
!855 = !DILocation(line: 300, column: 52, scope: !853)
!856 = !DILocation(line: 300, column: 17, scope: !845)
!857 = !DILocation(line: 300, column: 67, scope: !853)
!858 = !DILocation(line: 301, column: 32, scope: !859)
!859 = distinct !DILexicalBlock(scope: !845, file: !3, line: 301, column: 17)
!860 = !DILocation(line: 301, column: 30, scope: !859)
!861 = !DILocation(line: 301, column: 55, scope: !859)
!862 = !DILocation(line: 301, column: 17, scope: !845)
!863 = !DILocation(line: 301, column: 70, scope: !859)
!864 = !DILocation(line: 302, column: 25, scope: !865)
!865 = distinct !DILexicalBlock(scope: !845, file: !3, line: 302, column: 17)
!866 = !DILocation(line: 302, column: 23, scope: !865)
!867 = !DILocation(line: 302, column: 48, scope: !865)
!868 = !DILocation(line: 302, column: 17, scope: !845)
!869 = !DILocation(line: 302, column: 63, scope: !865)
!870 = !DILocation(line: 303, column: 17, scope: !871)
!871 = distinct !DILexicalBlock(scope: !845, file: !3, line: 303, column: 17)
!872 = !DILocation(line: 303, column: 29, scope: !871)
!873 = !DILocation(line: 303, column: 17, scope: !845)
!874 = !DILocation(line: 304, column: 17, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 303, column: 56)
!876 = !DILocation(line: 305, column: 17, scope: !875)
!877 = !DILocalVariable(name: "name", scope: !845, file: !3, line: 308, type: !878)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 80, elements: !25)
!879 = !DILocation(line: 308, column: 18, scope: !845)
!880 = !DILocation(line: 309, column: 32, scope: !845)
!881 = !DILocation(line: 309, column: 37, scope: !845)
!882 = !DILocation(line: 309, column: 13, scope: !845)
!883 = !DILocation(line: 310, column: 48, scope: !845)
!884 = !DILocation(line: 310, column: 13, scope: !845)
!885 = !DILocalVariable(name: "o", scope: !845, file: !3, line: 312, type: !314)
!886 = !DILocation(line: 312, column: 19, scope: !845)
!887 = !DILocation(line: 312, column: 52, scope: !845)
!888 = !DILocation(line: 312, column: 23, scope: !845)
!889 = !DILocation(line: 313, column: 26, scope: !845)
!890 = !DILocation(line: 313, column: 13, scope: !845)
!891 = !DILocation(line: 314, column: 13, scope: !845)
!892 = !DILocation(line: 315, column: 20, scope: !893)
!893 = distinct !DILexicalBlock(scope: !841, file: !3, line: 315, column: 20)
!894 = !DILocation(line: 315, column: 25, scope: !893)
!895 = !DILocation(line: 315, column: 48, scope: !893)
!896 = !DILocation(line: 315, column: 51, scope: !893)
!897 = !DILocation(line: 315, column: 56, scope: !893)
!898 = !DILocation(line: 315, column: 20, scope: !841)
!899 = !DILocalVariable(name: "err", scope: !900, file: !3, line: 316, type: !141)
!900 = distinct !DILexicalBlock(scope: !893, file: !3, line: 315, column: 81)
!901 = !DILocation(line: 316, column: 17, scope: !900)
!902 = !DILocation(line: 317, column: 28, scope: !900)
!903 = !DILocation(line: 318, column: 39, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 318, column: 17)
!905 = !DILocation(line: 318, column: 53, scope: !904)
!906 = !DILocation(line: 318, column: 17, scope: !904)
!907 = !DILocation(line: 318, column: 68, scope: !904)
!908 = !DILocation(line: 318, column: 17, scope: !900)
!909 = !DILocation(line: 319, column: 61, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 318, column: 77)
!911 = !DILocation(line: 319, column: 17, scope: !910)
!912 = !DILocation(line: 320, column: 25, scope: !910)
!913 = !DILocation(line: 320, column: 17, scope: !910)
!914 = !DILocation(line: 321, column: 17, scope: !910)
!915 = !DILocation(line: 323, column: 13, scope: !900)
!916 = !DILocation(line: 325, column: 18, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 325, column: 17)
!918 = distinct !DILexicalBlock(scope: !893, file: !3, line: 324, column: 16)
!919 = !DILocation(line: 325, column: 17, scope: !918)
!920 = !DILocation(line: 326, column: 58, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 325, column: 41)
!922 = !DILocation(line: 326, column: 17, scope: !921)
!923 = !DILocation(line: 327, column: 17, scope: !921)
!924 = !DILocation(line: 329, column: 33, scope: !918)
!925 = !DILocation(line: 329, column: 31, scope: !918)
!926 = !DILocation(line: 333, column: 24, scope: !691)
!927 = !DILocation(line: 334, column: 20, scope: !928)
!928 = distinct !DILexicalBlock(scope: !691, file: !3, line: 334, column: 13)
!929 = !DILocation(line: 334, column: 18, scope: !928)
!930 = !DILocation(line: 334, column: 47, scope: !928)
!931 = !DILocation(line: 334, column: 13, scope: !691)
!932 = !DILocation(line: 334, column: 56, scope: !928)
!933 = !DILocation(line: 335, column: 24, scope: !691)
!934 = !DILocation(line: 335, column: 22, scope: !691)
!935 = !DILocation(line: 336, column: 22, scope: !691)
!936 = !DILocation(line: 338, column: 24, scope: !691)
!937 = !DILocation(line: 339, column: 34, scope: !938)
!938 = distinct !DILexicalBlock(scope: !691, file: !3, line: 339, column: 13)
!939 = !DILocation(line: 339, column: 44, scope: !938)
!940 = !DILocation(line: 339, column: 49, scope: !938)
!941 = !DILocation(line: 339, column: 53, scope: !938)
!942 = !DILocation(line: 339, column: 20, scope: !938)
!943 = !DILocation(line: 339, column: 18, scope: !938)
!944 = !DILocation(line: 339, column: 74, scope: !938)
!945 = !DILocation(line: 339, column: 13, scope: !691)
!946 = !DILocation(line: 339, column: 83, scope: !938)
!947 = !DILocation(line: 341, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !691, file: !3, line: 341, column: 13)
!949 = !DILocation(line: 341, column: 24, scope: !948)
!950 = !DILocation(line: 341, column: 30, scope: !948)
!951 = !DILocation(line: 341, column: 33, scope: !948)
!952 = !DILocation(line: 341, column: 46, scope: !948)
!953 = !DILocation(line: 341, column: 44, scope: !948)
!954 = !DILocation(line: 341, column: 13, scope: !691)
!955 = !DILocation(line: 342, column: 37, scope: !948)
!956 = !DILocation(line: 342, column: 13, scope: !948)
!957 = !DILocation(line: 343, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !691, file: !3, line: 343, column: 13)
!959 = !DILocation(line: 343, column: 24, scope: !958)
!960 = !DILocation(line: 343, column: 13, scope: !691)
!961 = !DILocation(line: 343, column: 47, scope: !958)
!962 = !DILocation(line: 343, column: 31, scope: !958)
!963 = !DILocation(line: 344, column: 22, scope: !691)
!964 = !DILocation(line: 345, column: 22, scope: !691)
!965 = !DILocation(line: 345, column: 9, scope: !691)
!966 = !DILocation(line: 346, column: 22, scope: !691)
!967 = !DILocation(line: 346, column: 9, scope: !691)
!968 = !DILocation(line: 347, column: 27, scope: !691)
!969 = !DILocation(line: 348, column: 20, scope: !691)
!970 = !DILocation(line: 351, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !34, file: !3, line: 351, column: 9)
!972 = !DILocation(line: 351, column: 16, scope: !971)
!973 = !DILocation(line: 351, column: 21, scope: !971)
!974 = !DILocation(line: 351, column: 31, scope: !971)
!975 = !DILocation(line: 351, column: 24, scope: !971)
!976 = !DILocation(line: 351, column: 9, scope: !34)
!977 = !DILocalVariable(name: "cksum", scope: !978, file: !3, line: 352, type: !128)
!978 = distinct !DILexicalBlock(scope: !971, file: !3, line: 351, column: 45)
!979 = !DILocation(line: 352, column: 18, scope: !978)
!980 = !DILocalVariable(name: "expected", scope: !978, file: !3, line: 352, type: !128)
!981 = !DILocation(line: 352, column: 25, scope: !978)
!982 = !DILocation(line: 352, column: 40, scope: !978)
!983 = !DILocation(line: 354, column: 24, scope: !978)
!984 = !DILocation(line: 355, column: 26, scope: !985)
!985 = distinct !DILexicalBlock(scope: !978, file: !3, line: 355, column: 13)
!986 = !DILocation(line: 355, column: 13, scope: !985)
!987 = !DILocation(line: 355, column: 36, scope: !985)
!988 = !DILocation(line: 355, column: 13, scope: !978)
!989 = !DILocation(line: 355, column: 42, scope: !985)
!990 = !DILocation(line: 357, column: 13, scope: !991)
!991 = distinct !DILexicalBlock(scope: !978, file: !3, line: 357, column: 13)
!992 = !DILocation(line: 357, column: 19, scope: !991)
!993 = !DILocation(line: 357, column: 13, scope: !978)
!994 = !DILocation(line: 358, column: 13, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 357, column: 25)
!996 = !DILocation(line: 359, column: 9, scope: !995)
!997 = !DILocation(line: 359, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !991, file: !3, line: 359, column: 20)
!999 = !DILocation(line: 359, column: 29, scope: !998)
!1000 = !DILocation(line: 359, column: 26, scope: !998)
!1001 = !DILocation(line: 359, column: 20, scope: !991)
!1002 = !DILocation(line: 360, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !998, file: !3, line: 359, column: 39)
!1004 = !DILocation(line: 361, column: 13, scope: !1003)
!1005 = !DILocation(line: 363, column: 13, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !3, line: 362, column: 16)
!1007 = !DILocation(line: 365, column: 5, scope: !978)
!1008 = !DILocation(line: 367, column: 9, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !34, file: !3, line: 367, column: 9)
!1010 = !DILocation(line: 367, column: 9, scope: !34)
!1011 = !DILocation(line: 367, column: 27, scope: !1009)
!1012 = !DILocation(line: 367, column: 20, scope: !1009)
!1013 = !DILocation(line: 368, column: 5, scope: !34)
!1014 = !DILocation(line: 369, column: 5, scope: !34)
!1015 = !DILabel(scope: !34, name: "eoferr", file: !3, line: 371)
!1016 = !DILocation(line: 371, column: 1, scope: !34)
!1017 = !DILocation(line: 372, column: 18, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !34, file: !3, line: 372, column: 9)
!1019 = !DILocation(line: 372, column: 9, scope: !1018)
!1020 = !DILocation(line: 372, column: 9, scope: !34)
!1021 = !DILocation(line: 373, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 372, column: 29)
!1023 = !DILocation(line: 374, column: 5, scope: !1022)
!1024 = !DILocation(line: 375, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 374, column: 12)
!1026 = !DILabel(scope: !34, name: "err", file: !3, line: 377)
!1027 = !DILocation(line: 377, column: 1, scope: !34)
!1028 = !DILocation(line: 378, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !34, file: !3, line: 378, column: 9)
!1030 = !DILocation(line: 378, column: 9, scope: !34)
!1031 = !DILocation(line: 378, column: 27, scope: !1029)
!1032 = !DILocation(line: 378, column: 20, scope: !1029)
!1033 = !DILocation(line: 379, column: 5, scope: !34)
!1034 = !DILocation(line: 380, column: 5, scope: !34)
!1035 = !DILocation(line: 381, column: 1, scope: !34)
!1036 = distinct !DISubprogram(name: "rioRead", scope: !99, file: !99, line: 124, type: !1037, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!89, !312, !19, !89}
!1039 = !DILocalVariable(name: "r", arg: 1, scope: !1036, file: !99, line: 124, type: !312)
!1040 = !DILocation(line: 124, column: 35, scope: !1036)
!1041 = !DILocalVariable(name: "buf", arg: 2, scope: !1036, file: !99, line: 124, type: !19)
!1042 = !DILocation(line: 124, column: 44, scope: !1036)
!1043 = !DILocalVariable(name: "len", arg: 3, scope: !1036, file: !99, line: 124, type: !89)
!1044 = !DILocation(line: 124, column: 56, scope: !1036)
!1045 = !DILocation(line: 125, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1036, file: !99, line: 125, column: 9)
!1047 = !DILocation(line: 125, column: 12, scope: !1046)
!1048 = !DILocation(line: 125, column: 18, scope: !1046)
!1049 = !DILocation(line: 125, column: 9, scope: !1036)
!1050 = !DILocation(line: 125, column: 41, scope: !1046)
!1051 = !DILocation(line: 126, column: 5, scope: !1036)
!1052 = !DILocation(line: 126, column: 12, scope: !1036)
!1053 = !DILocalVariable(name: "bytes_to_read", scope: !1054, file: !99, line: 127, type: !89)
!1054 = distinct !DILexicalBlock(scope: !1036, file: !99, line: 126, column: 17)
!1055 = !DILocation(line: 127, column: 16, scope: !1054)
!1056 = !DILocation(line: 127, column: 33, scope: !1054)
!1057 = !DILocation(line: 127, column: 36, scope: !1054)
!1058 = !DILocation(line: 127, column: 57, scope: !1054)
!1059 = !DILocation(line: 127, column: 60, scope: !1054)
!1060 = !DILocation(line: 127, column: 63, scope: !1054)
!1061 = !DILocation(line: 127, column: 86, scope: !1054)
!1062 = !DILocation(line: 127, column: 84, scope: !1054)
!1063 = !DILocation(line: 127, column: 32, scope: !1054)
!1064 = !DILocation(line: 127, column: 93, scope: !1054)
!1065 = !DILocation(line: 127, column: 96, scope: !1054)
!1066 = !DILocation(line: 127, column: 119, scope: !1054)
!1067 = !DILocation(line: 128, column: 13, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1054, file: !99, line: 128, column: 13)
!1069 = !DILocation(line: 128, column: 16, scope: !1068)
!1070 = !DILocation(line: 128, column: 21, scope: !1068)
!1071 = !DILocation(line: 128, column: 23, scope: !1068)
!1072 = !DILocation(line: 128, column: 27, scope: !1068)
!1073 = !DILocation(line: 128, column: 42, scope: !1068)
!1074 = !DILocation(line: 128, column: 13, scope: !1054)
!1075 = !DILocation(line: 129, column: 13, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1068, file: !99, line: 128, column: 48)
!1077 = !DILocation(line: 129, column: 16, scope: !1076)
!1078 = !DILocation(line: 129, column: 22, scope: !1076)
!1079 = !DILocation(line: 130, column: 13, scope: !1076)
!1080 = !DILocation(line: 132, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1054, file: !99, line: 132, column: 13)
!1082 = !DILocation(line: 132, column: 16, scope: !1081)
!1083 = !DILocation(line: 132, column: 13, scope: !1054)
!1084 = !DILocation(line: 132, column: 30, scope: !1081)
!1085 = !DILocation(line: 132, column: 33, scope: !1081)
!1086 = !DILocation(line: 132, column: 46, scope: !1081)
!1087 = !DILocation(line: 132, column: 48, scope: !1081)
!1088 = !DILocation(line: 132, column: 52, scope: !1081)
!1089 = !DILocation(line: 133, column: 22, scope: !1054)
!1090 = !DILocation(line: 133, column: 28, scope: !1054)
!1091 = !DILocation(line: 133, column: 26, scope: !1054)
!1092 = !DILocation(line: 133, column: 13, scope: !1054)
!1093 = !DILocation(line: 134, column: 16, scope: !1054)
!1094 = !DILocation(line: 134, column: 13, scope: !1054)
!1095 = !DILocation(line: 135, column: 31, scope: !1054)
!1096 = !DILocation(line: 135, column: 9, scope: !1054)
!1097 = !DILocation(line: 135, column: 12, scope: !1054)
!1098 = !DILocation(line: 135, column: 28, scope: !1054)
!1099 = distinct !{!1099, !1051, !1100, !1101}
!1100 = !DILocation(line: 136, column: 5, scope: !1036)
!1101 = !{!"llvm.loop.mustprogress"}
!1102 = !DILocation(line: 137, column: 5, scope: !1036)
!1103 = !DILocation(line: 138, column: 1, scope: !1036)
!1104 = distinct !DISubprogram(name: "rioGetReadError", scope: !99, file: !99, line: 151, type: !1105, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!37, !312}
!1107 = !DILocalVariable(name: "r", arg: 1, scope: !1104, file: !99, line: 151, type: !312)
!1108 = !DILocation(line: 151, column: 40, scope: !1104)
!1109 = !DILocation(line: 152, column: 13, scope: !1104)
!1110 = !DILocation(line: 152, column: 16, scope: !1104)
!1111 = !DILocation(line: 152, column: 22, scope: !1104)
!1112 = !DILocation(line: 152, column: 45, scope: !1104)
!1113 = !DILocation(line: 152, column: 5, scope: !1104)
!1114 = distinct !DISubprogram(name: "redis_check_rdb_main", scope: !3, file: !3, line: 409, type: !1115, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!37, !37, !1117, !38}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1118 = !DILocalVariable(name: "argc", arg: 1, scope: !1114, file: !3, line: 409, type: !37)
!1119 = !DILocation(line: 409, column: 30, scope: !1114)
!1120 = !DILocalVariable(name: "argv", arg: 2, scope: !1114, file: !3, line: 409, type: !1117)
!1121 = !DILocation(line: 409, column: 43, scope: !1114)
!1122 = !DILocalVariable(name: "fp", arg: 3, scope: !1114, file: !3, line: 409, type: !38)
!1123 = !DILocation(line: 409, column: 55, scope: !1114)
!1124 = !DILocalVariable(name: "tv", scope: !1114, file: !3, line: 410, type: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1126, line: 8, size: 128, elements: !1127)
!1126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1125, file: !1126, line: 14, baseType: !617, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1125, file: !1126, line: 15, baseType: !1130, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !65, line: 162, baseType: !66)
!1131 = !DILocation(line: 410, column: 20, scope: !1114)
!1132 = !DILocation(line: 412, column: 9, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 412, column: 9)
!1134 = !DILocation(line: 412, column: 14, scope: !1133)
!1135 = !DILocation(line: 412, column: 19, scope: !1133)
!1136 = !DILocation(line: 412, column: 22, scope: !1133)
!1137 = !DILocation(line: 412, column: 25, scope: !1133)
!1138 = !DILocation(line: 412, column: 9, scope: !1114)
!1139 = !DILocation(line: 413, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 412, column: 34)
!1141 = !DILocation(line: 413, column: 56, scope: !1140)
!1142 = !DILocation(line: 413, column: 9, scope: !1140)
!1143 = !DILocation(line: 414, column: 9, scope: !1140)
!1144 = !DILocation(line: 415, column: 24, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 415, column: 16)
!1146 = !DILocation(line: 415, column: 17, scope: !1145)
!1147 = !DILocation(line: 415, column: 38, scope: !1145)
!1148 = !DILocation(line: 415, column: 49, scope: !1145)
!1149 = !DILocation(line: 415, column: 42, scope: !1145)
!1150 = !DILocation(line: 415, column: 16, scope: !1133)
!1151 = !DILocalVariable(name: "version", scope: !1152, file: !3, line: 416, type: !141)
!1152 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 415, column: 72)
!1153 = !DILocation(line: 416, column: 13, scope: !1152)
!1154 = !DILocation(line: 416, column: 23, scope: !1152)
!1155 = !DILocation(line: 417, column: 40, scope: !1152)
!1156 = !DILocation(line: 417, column: 9, scope: !1152)
!1157 = !DILocation(line: 418, column: 17, scope: !1152)
!1158 = !DILocation(line: 418, column: 9, scope: !1152)
!1159 = !DILocation(line: 419, column: 9, scope: !1152)
!1160 = !DILocation(line: 422, column: 5, scope: !1114)
!1161 = !DILocation(line: 423, column: 36, scope: !1114)
!1162 = !DILocation(line: 423, column: 43, scope: !1114)
!1163 = !DILocation(line: 423, column: 58, scope: !1114)
!1164 = !DILocation(line: 423, column: 53, scope: !1114)
!1165 = !DILocation(line: 423, column: 69, scope: !1114)
!1166 = !DILocation(line: 423, column: 67, scope: !1114)
!1167 = !DILocation(line: 423, column: 5, scope: !1114)
!1168 = !DILocation(line: 428, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 428, column: 9)
!1170 = !DILocation(line: 428, column: 28, scope: !1169)
!1171 = !DILocation(line: 428, column: 9, scope: !1114)
!1172 = !DILocation(line: 429, column: 9, scope: !1169)
!1173 = !DILocation(line: 430, column: 50, scope: !1114)
!1174 = !DILocation(line: 431, column: 34, scope: !1114)
!1175 = !DILocation(line: 432, column: 18, scope: !1114)
!1176 = !DILocation(line: 433, column: 42, scope: !1114)
!1177 = !DILocation(line: 433, column: 5, scope: !1114)
!1178 = !DILocation(line: 434, column: 5, scope: !1114)
!1179 = !DILocalVariable(name: "retval", scope: !1114, file: !3, line: 435, type: !37)
!1180 = !DILocation(line: 435, column: 9, scope: !1114)
!1181 = !DILocation(line: 435, column: 34, scope: !1114)
!1182 = !DILocation(line: 435, column: 42, scope: !1114)
!1183 = !DILocation(line: 435, column: 18, scope: !1114)
!1184 = !DILocation(line: 436, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 436, column: 9)
!1186 = !DILocation(line: 436, column: 16, scope: !1185)
!1187 = !DILocation(line: 436, column: 9, scope: !1114)
!1188 = !DILocation(line: 437, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 436, column: 22)
!1190 = !DILocation(line: 438, column: 9, scope: !1189)
!1191 = !DILocation(line: 439, column: 5, scope: !1189)
!1192 = !DILocation(line: 440, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 440, column: 9)
!1194 = !DILocation(line: 440, column: 9, scope: !1114)
!1195 = !DILocation(line: 440, column: 21, scope: !1193)
!1196 = !DILocation(line: 440, column: 28, scope: !1193)
!1197 = !DILocation(line: 440, column: 20, scope: !1193)
!1198 = !DILocation(line: 440, column: 13, scope: !1193)
!1199 = !DILocation(line: 441, column: 10, scope: !1114)
!1200 = !DILocation(line: 441, column: 5, scope: !1114)
!1201 = distinct !DISubprogram(name: "checkRdbVersion", scope: !3, file: !3, line: 383, type: !1202, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !97)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!141}
!1204 = !DILocalVariable(name: "version", scope: !1201, file: !3, line: 384, type: !141)
!1205 = !DILocation(line: 384, column: 9, scope: !1201)
!1206 = !DILocation(line: 385, column: 28, scope: !1201)
!1207 = !DILocation(line: 385, column: 15, scope: !1201)
!1208 = !DILocation(line: 385, column: 13, scope: !1201)
!1209 = !DILocation(line: 388, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 388, column: 9)
!1211 = !DILocation(line: 388, column: 9, scope: !1210)
!1212 = !DILocation(line: 388, column: 9, scope: !1201)
!1213 = !DILocation(line: 389, column: 32, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 388, column: 42)
!1215 = !DILocation(line: 389, column: 53, scope: !1214)
!1216 = !DILocation(line: 389, column: 19, scope: !1214)
!1217 = !DILocation(line: 389, column: 17, scope: !1214)
!1218 = !DILocation(line: 390, column: 21, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 390, column: 13)
!1220 = !DILocation(line: 390, column: 13, scope: !1219)
!1221 = !DILocation(line: 390, column: 13, scope: !1214)
!1222 = !DILocation(line: 391, column: 36, scope: !1219)
!1223 = !DILocation(line: 391, column: 23, scope: !1219)
!1224 = !DILocation(line: 391, column: 21, scope: !1219)
!1225 = !DILocation(line: 391, column: 13, scope: !1219)
!1226 = !DILocation(line: 392, column: 26, scope: !1214)
!1227 = !DILocation(line: 392, column: 19, scope: !1214)
!1228 = !DILocation(line: 392, column: 17, scope: !1214)
!1229 = !DILocation(line: 393, column: 5, scope: !1214)
!1230 = !DILocation(line: 394, column: 12, scope: !1201)
!1231 = !DILocation(line: 394, column: 5, scope: !1201)
