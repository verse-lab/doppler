; ModuleID = 'functions.c'
source_filename = "functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, {}*, {}*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
%struct.functionsLibCtx = type { %struct.dict*, %struct.dict*, i64, %struct.dict* }
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
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.redisTLSContextConfig = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.sentinelConfig = type { %struct.list*, %struct.list*, %struct.list* }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.scriptFlag = type { i64, i8* }
%struct.functionsLibEngineStats = type { i64, i64 }
%struct.functionInfo = type { i8*, i8*, %struct.functionLibInfo*, i8*, i64 }
%struct.functionLibInfo = type { i8*, %struct.dict*, %struct.engineInfo*, i8* }
%struct.engineInfo = type { i8*, %struct.engine*, %struct.client* }
%struct.engine = type { i8*, i32 (i8*, %struct.functionLibInfo*, i8*, i8**)*, void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, void (i8*, i8*)* }
%struct.scriptRunCtx = type { i8*, %struct.client*, %struct.client*, i32, i32, i64, i64 }
%struct.dictIterator = type { %struct.dict*, i64, i32, i32, %struct.dictEntry*, %struct.dictEntry*, i64 }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct._rio = type { i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*, i8*, i64)*, i64 (%struct._rio*)*, i32 (%struct._rio*)*, void (%struct._rio*, i8*, i64)*, i64, i64, i64, i64, %union.anon.6 }
%union.anon.6 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.connection*, i64, i8*, i64, i64 }
%struct.anon.7 = type { i8*, i64 }
%struct.functionsLibMataData = type { i8*, i8*, i8* }

@engineDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictSdsCaseHash, i8* (%struct.dict*, i8*)* @dictSdsDup, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCaseCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* null, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !0
@functionDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictSdsCaseHash, i8* (%struct.dict*, i8*)* @dictSdsDup, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCaseCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* null, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !118
@engineStatsDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictSdsCaseHash, i8* (%struct.dict*, i8*)* @dictSdsDup, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCaseCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* @engineStatsDispose, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !197
@libraryFunctionDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictSdsHash, i8* (%struct.dict*, i8*)* @dictSdsDup, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* @engineFunctionDispose, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !199
@librariesDictType = dso_local global { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* } { i64 (i8*)* @dictSdsHash, i8* (%struct.dict*, i8*)* @dictSdsDup, i8* (%struct.dict*, i8*)* null, i32 (%struct.dict*, i8*, i8*)* @dictSdsKeyCompare, void (%struct.dict*, i8*)* @dictSdsDestructor, void (%struct.dict*, i8*)* @engineLibraryDispose, i32 (i64, double)* null, i64 (%struct.dict*)* null }, align 8, !dbg !201
@curr_functions_lib_ctx = internal global %struct.functionsLibCtx* null, align 8, !dbg !203
@engines = internal global %struct.dict* null, align 8, !dbg !213
@.str = private unnamed_addr constant [107 x i8] c"Library names can only contain letters, numbers, or underscores(_) and must be at least one character long\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Function already exists in the library\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"res == DICT_OK\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"functions.c\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Same engine was registered twice\00", align 1
@engine_cache_memory = internal global i64 0, align 8, !dbg !215
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"running_script\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"duration_ms\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"engines\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"libraries_count\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"functions_count\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"withcode\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"libraryname\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"library name argument was not given\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Unknown argument %s\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"library_name\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"library_code\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Library not found\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.26 = private unnamed_addr constant [77 x i8] c"Wrong restore policy given, value should be either FLUSH, APPEND or REPLACE.\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"DUMP payload version or checksum are wrong\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"can not read data type\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"given type is not a function\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"failed loading the given functions payload\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"FUNCTION FLUSH only supports SYNC|ASYNC option\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"LOAD [REPLACE] <FUNCTION CODE>\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"    Create a new library with the given library name and code.\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"DELETE <LIBRARY NAME>\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"    Delete the given library.\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"LIST [LIBRARYNAME PATTERN] [WITHCODE]\00", align 1
@.str.39 = private unnamed_addr constant [53 x i8] c"    Return general information on all the libraries:\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"    * Library name\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"    * The engine used to run the Library\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"    * Library description\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"    * Functions list\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"    * Library code (if WITHCODE is given)\00", align 1
@.str.45 = private unnamed_addr constant [93 x i8] c"    It also possible to get only function that matches a pattern using LIBRARYNAME argument.\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"STATS\00", align 1
@.str.47 = private unnamed_addr constant [59 x i8] c"    Return information about the current function running:\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"    * Function name\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"    * Command used to run the function\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"    * Duration in MS that the function is running\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"    If no function is running, return nil\00", align 1
@.str.52 = private unnamed_addr constant [54 x i8] c"    In addition, returns a list of available engines.\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"KILL\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"    Kill the current running function.\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"FLUSH [ASYNC|SYNC]\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"    Delete all the libraries.\00", align 1
@.str.57 = private unnamed_addr constant [86 x i8] c"    When called without the optional mode argument, the behavior is determined by the\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"    lazyfree-lazy-user-flush configuration directive. Valid modes are:\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"    * ASYNC: Asynchronously flush the libraries.\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"    * SYNC: Synchronously flush the libraries.\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"DUMP\00", align 1
@.str.62 = private unnamed_addr constant [115 x i8] c"    Return a serialized payload representing the current libraries, can be restored using FUNCTION RESTORE command\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"RESTORE <PAYLOAD> [FLUSH|APPEND|REPLACE]\00", align 1
@.str.64 = private unnamed_addr constant [103 x i8] c"    Restore the libraries represented by the given payload, it is possible to give a restore policy to\00", align 1
@.str.65 = private unnamed_addr constant [63 x i8] c"    control how to handle existing libraries (default APPEND):\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"    * FLUSH: delete all existing libraries.\00", align 1
@.str.67 = private unnamed_addr constant [93 x i8] c"    * APPEND: appends the restored libraries to the existing libraries. On collision, abort.\00", align 1
@.str.68 = private unnamed_addr constant [103 x i8] c"    * REPLACE: appends the restored libraries to the existing libraries, On collision, replace the old\00", align 1
@.str.69 = private unnamed_addr constant [101 x i8] c"      libraries with the new libraries (notice that even on this option there is a chance of failure\00", align 1
@.str.70 = private unnamed_addr constant [65 x i8] c"      in case of functions name collision with another library).\00", align 1
@__const.functionHelpCommand.help = private unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.70, i32 0, i32 0), i8* null], align 16
@.str.71 = private unnamed_addr constant [3 x i8] c"#!\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Missing library metadata\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"Invalid library metadata\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.75 = private unnamed_addr constant [63 x i8] c"Invalid metadata value, name argument was given multiple times\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"Invalid metadata value given: %s\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"Library name was not given\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Engine '%S' not found\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Library '%S' already exists\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"No functions registered\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Function %s already exists\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"Unknown option given: %s\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"Function code is missing\00", align 1
@scripts_flags_def = external dso_local global [0 x %struct.scriptFlag], align 8
@.str.84 = private unnamed_addr constant [15 x i8] c"ret == DICT_OK\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"Function not found\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"Bad number of keys provided\00", align 1
@.str.88 = private unnamed_addr constant [52 x i8] c"Number of keys can't be greater than number of args\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"Number of keys can't be negative\00", align 1
@.str.90 = private unnamed_addr constant [26 x i8] c"Library %s already exists\00", align 1

declare dso_local i64 @dictSdsCaseHash(i8*) #0

declare dso_local i8* @dictSdsDup(%struct.dict*, i8*) #0

declare dso_local i32 @dictSdsKeyCaseCompare(%struct.dict*, i8*, i8*) #0

declare dso_local void @dictSdsDestructor(%struct.dict*, i8*) #0

; Function Attrs: noinline nounwind uwtable
define internal void @engineStatsDispose(%struct.dict* %d, i8* %obj) #1 !dbg !223 {
entry:
  %d.addr = alloca %struct.dict*, align 8
  %obj.addr = alloca i8*, align 8
  %stats = alloca %struct.functionsLibEngineStats*, align 8
  store %struct.dict* %d, %struct.dict** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %d.addr, metadata !225, metadata !DIExpression()), !dbg !226
  store i8* %obj, i8** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj.addr, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load %struct.dict*, %struct.dict** %d.addr, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %stats, metadata !230, metadata !DIExpression()), !dbg !237
  %1 = load i8*, i8** %obj.addr, align 8, !dbg !238
  %2 = bitcast i8* %1 to %struct.functionsLibEngineStats*, !dbg !238
  store %struct.functionsLibEngineStats* %2, %struct.functionsLibEngineStats** %stats, align 8, !dbg !237
  %3 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !239
  %4 = bitcast %struct.functionsLibEngineStats* %3 to i8*, !dbg !239
  call void @zfree(i8* %4), !dbg !240
  ret void, !dbg !241
}

declare dso_local i64 @dictSdsHash(i8*) #0

declare dso_local i32 @dictSdsKeyCompare(%struct.dict*, i8*, i8*) #0

; Function Attrs: noinline nounwind uwtable
define internal void @engineFunctionDispose(%struct.dict* %d, i8* %obj) #1 !dbg !242 {
entry:
  %d.addr = alloca %struct.dict*, align 8
  %obj.addr = alloca i8*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %engine = alloca %struct.engine*, align 8
  store %struct.dict* %d, %struct.dict** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %d.addr, metadata !243, metadata !DIExpression()), !dbg !244
  store i8* %obj, i8** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct.dict*, %struct.dict** %d.addr, align 8, !dbg !247
  %1 = load i8*, i8** %obj.addr, align 8, !dbg !248
  %tobool = icmp ne i8* %1, null, !dbg !248
  br i1 %tobool, label %if.end, label %if.then, !dbg !250

if.then:                                          ; preds = %entry
  br label %return, !dbg !251

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !253, metadata !DIExpression()), !dbg !829
  %2 = load i8*, i8** %obj.addr, align 8, !dbg !830
  %3 = bitcast i8* %2 to %struct.functionInfo*, !dbg !830
  store %struct.functionInfo* %3, %struct.functionInfo** %fi, align 8, !dbg !829
  %4 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !831
  %name = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %4, i32 0, i32 0, !dbg !832
  %5 = load i8*, i8** %name, align 8, !dbg !832
  call void @sdsfree(i8* %5), !dbg !833
  %6 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !834
  %desc = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %6, i32 0, i32 3, !dbg !836
  %7 = load i8*, i8** %desc, align 8, !dbg !836
  %tobool1 = icmp ne i8* %7, null, !dbg !834
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !837

if.then2:                                         ; preds = %if.end
  %8 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !838
  %desc3 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %8, i32 0, i32 3, !dbg !840
  %9 = load i8*, i8** %desc3, align 8, !dbg !840
  call void @sdsfree(i8* %9), !dbg !841
  br label %if.end4, !dbg !842

if.end4:                                          ; preds = %if.then2, %if.end
  call void @llvm.dbg.declare(metadata %struct.engine** %engine, metadata !843, metadata !DIExpression()), !dbg !844
  %10 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !845
  %li = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %10, i32 0, i32 2, !dbg !846
  %11 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !846
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %11, i32 0, i32 2, !dbg !847
  %12 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !847
  %engine5 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %12, i32 0, i32 1, !dbg !848
  %13 = load %struct.engine*, %struct.engine** %engine5, align 8, !dbg !848
  store %struct.engine* %13, %struct.engine** %engine, align 8, !dbg !844
  %14 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !849
  %free_function = getelementptr inbounds %struct.engine, %struct.engine* %14, i32 0, i32 6, !dbg !850
  %15 = load void (i8*, i8*)*, void (i8*, i8*)** %free_function, align 8, !dbg !850
  %16 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !851
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %16, i32 0, i32 0, !dbg !852
  %17 = load i8*, i8** %engine_ctx, align 8, !dbg !852
  %18 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !853
  %function = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %18, i32 0, i32 1, !dbg !854
  %19 = load i8*, i8** %function, align 8, !dbg !854
  call void %15(i8* %17, i8* %19), !dbg !849
  %20 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !855
  %21 = bitcast %struct.functionInfo* %20 to i8*, !dbg !855
  call void @zfree(i8* %21), !dbg !856
  br label %return, !dbg !857

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !857
}

; Function Attrs: noinline nounwind uwtable
define internal void @engineLibraryDispose(%struct.dict* %d, i8* %obj) #1 !dbg !858 {
entry:
  %d.addr = alloca %struct.dict*, align 8
  %obj.addr = alloca i8*, align 8
  store %struct.dict* %d, %struct.dict** %d.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %d.addr, metadata !859, metadata !DIExpression()), !dbg !860
  store i8* %obj, i8** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obj.addr, metadata !861, metadata !DIExpression()), !dbg !862
  %0 = load %struct.dict*, %struct.dict** %d.addr, align 8, !dbg !863
  %1 = load i8*, i8** %obj.addr, align 8, !dbg !864
  %2 = bitcast i8* %1 to %struct.functionLibInfo*, !dbg !864
  call void @engineLibraryFree(%struct.functionLibInfo* %2), !dbg !865
  ret void, !dbg !866
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionsLibCtxClear(%struct.functionsLibCtx* %lib_ctx) #1 !dbg !867 {
entry:
  %lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %stats = alloca %struct.functionsLibEngineStats*, align 8
  store %struct.functionsLibCtx* %lib_ctx, %struct.functionsLibCtx** %lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %lib_ctx.addr, metadata !870, metadata !DIExpression()), !dbg !871
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !872
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 1, !dbg !873
  %1 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !873
  call void @dictEmpty(%struct.dict* %1, void (%struct.dict*)* null), !dbg !874
  %2 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !875
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %2, i32 0, i32 0, !dbg !876
  %3 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !876
  call void @dictEmpty(%struct.dict* %3, void (%struct.dict*)* null), !dbg !877
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !878, metadata !DIExpression()), !dbg !890
  %4 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !891
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %4, i32 0, i32 3, !dbg !892
  %5 = load %struct.dict*, %struct.dict** %engines_stats, align 8, !dbg !892
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %5), !dbg !893
  store %struct.dictIterator* %call, %struct.dictIterator** %iter, align 8, !dbg !890
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !894, metadata !DIExpression()), !dbg !895
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !895
  br label %while.cond, !dbg !896

while.cond:                                       ; preds = %while.body, %entry
  %6 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !897
  %call2 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %6), !dbg !898
  store %struct.dictEntry* %call2, %struct.dictEntry** %entry1, align 8, !dbg !899
  %tobool = icmp ne %struct.dictEntry* %call2, null, !dbg !896
  br i1 %tobool, label %while.body, label %while.end, !dbg !896

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %stats, metadata !900, metadata !DIExpression()), !dbg !902
  %7 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !903
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %7, i32 0, i32 1, !dbg !903
  %val = bitcast %union.anon* %v to i8**, !dbg !903
  %8 = load i8*, i8** %val, align 8, !dbg !903
  %9 = bitcast i8* %8 to %struct.functionsLibEngineStats*, !dbg !903
  store %struct.functionsLibEngineStats* %9, %struct.functionsLibEngineStats** %stats, align 8, !dbg !902
  %10 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !904
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %10, i32 0, i32 1, !dbg !905
  store i64 0, i64* %n_functions, align 8, !dbg !906
  %11 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !907
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %11, i32 0, i32 0, !dbg !908
  store i64 0, i64* %n_lib, align 8, !dbg !909
  br label %while.cond, !dbg !896, !llvm.loop !910

while.end:                                        ; preds = %while.cond
  %12 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !913
  call void @dictReleaseIterator(%struct.dictIterator* %12), !dbg !914
  %13 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !915
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %13, i32 0, i32 2, !dbg !916
  store i64 0, i64* %cache_memory, align 8, !dbg !917
  ret void, !dbg !918
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare dso_local void @dictEmpty(%struct.dict*, void (%struct.dict*)*) #0

declare dso_local %struct.dictIterator* @dictGetIterator(%struct.dict*) #0

declare dso_local %struct.dictEntry* @dictNext(%struct.dictIterator*) #0

declare dso_local void @dictReleaseIterator(%struct.dictIterator*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionsLibCtxClearCurrent(i32 %async) #1 !dbg !919 {
entry:
  %async.addr = alloca i32, align 4
  %old_l_ctx = alloca %struct.functionsLibCtx*, align 8
  store i32 %async, i32* %async.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %async.addr, metadata !922, metadata !DIExpression()), !dbg !923
  %0 = load i32, i32* %async.addr, align 4, !dbg !924
  %tobool = icmp ne i32 %0, 0, !dbg !924
  br i1 %tobool, label %if.then, label %if.else, !dbg !926

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %old_l_ctx, metadata !927, metadata !DIExpression()), !dbg !929
  %1 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !930
  store %struct.functionsLibCtx* %1, %struct.functionsLibCtx** %old_l_ctx, align 8, !dbg !929
  %call = call %struct.functionsLibCtx* @functionsLibCtxCreate(), !dbg !931
  store %struct.functionsLibCtx* %call, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !932
  %2 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %old_l_ctx, align 8, !dbg !933
  call void @freeFunctionsAsync(%struct.functionsLibCtx* %2), !dbg !934
  br label %if.end, !dbg !935

if.else:                                          ; preds = %entry
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !936
  call void @functionsLibCtxClear(%struct.functionsLibCtx* %3), !dbg !938
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !939
}

declare dso_local void @freeFunctionsAsync(%struct.functionsLibCtx*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionsLibCtxFree(%struct.functionsLibCtx* %functions_lib_ctx) #1 !dbg !940 {
entry:
  %functions_lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  store %struct.functionsLibCtx* %functions_lib_ctx, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx.addr, metadata !941, metadata !DIExpression()), !dbg !942
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !943
  call void @functionsLibCtxClear(%struct.functionsLibCtx* %0), !dbg !944
  %1 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !945
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %1, i32 0, i32 1, !dbg !946
  %2 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !946
  call void @dictRelease(%struct.dict* %2), !dbg !947
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !948
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 0, !dbg !949
  %4 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !949
  call void @dictRelease(%struct.dict* %4), !dbg !950
  %5 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !951
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %5, i32 0, i32 3, !dbg !952
  %6 = load %struct.dict*, %struct.dict** %engines_stats, align 8, !dbg !952
  call void @dictRelease(%struct.dict* %6), !dbg !953
  %7 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !954
  %8 = bitcast %struct.functionsLibCtx* %7 to i8*, !dbg !954
  call void @zfree(i8* %8), !dbg !955
  ret void, !dbg !956
}

declare dso_local void @dictRelease(%struct.dict*) #0

declare dso_local void @zfree(i8*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionsLibCtxSwapWithCurrent(%struct.functionsLibCtx* %new_lib_ctx) #1 !dbg !957 {
entry:
  %new_lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  store %struct.functionsLibCtx* %new_lib_ctx, %struct.functionsLibCtx** %new_lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %new_lib_ctx.addr, metadata !958, metadata !DIExpression()), !dbg !959
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !960
  call void @functionsLibCtxFree(%struct.functionsLibCtx* %0), !dbg !961
  %1 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %new_lib_ctx.addr, align 8, !dbg !962
  store %struct.functionsLibCtx* %1, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !963
  ret void, !dbg !964
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.functionsLibCtx* @functionsLibCtxGetCurrent() #1 !dbg !965 {
entry:
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !968
  ret %struct.functionsLibCtx* %0, !dbg !969
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.functionsLibCtx* @functionsLibCtxCreate() #1 !dbg !970 {
entry:
  %ret = alloca %struct.functionsLibCtx*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry5 = alloca %struct.dictEntry*, align 8
  %ei = alloca %struct.engineInfo*, align 8
  %stats = alloca %struct.functionsLibEngineStats*, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %ret, metadata !971, metadata !DIExpression()), !dbg !972
  %call = call i8* @zmalloc(i64 32), !dbg !973
  %0 = bitcast i8* %call to %struct.functionsLibCtx*, !dbg !973
  store %struct.functionsLibCtx* %0, %struct.functionsLibCtx** %ret, align 8, !dbg !972
  %call1 = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @librariesDictType to %struct.dictType*)), !dbg !974
  %1 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !975
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %1, i32 0, i32 0, !dbg !976
  store %struct.dict* %call1, %struct.dict** %libraries, align 8, !dbg !977
  %call2 = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @functionDictType to %struct.dictType*)), !dbg !978
  %2 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !979
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %2, i32 0, i32 1, !dbg !980
  store %struct.dict* %call2, %struct.dict** %functions, align 8, !dbg !981
  %call3 = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @engineStatsDictType to %struct.dictType*)), !dbg !982
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !983
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 3, !dbg !984
  store %struct.dict* %call3, %struct.dict** %engines_stats, align 8, !dbg !985
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !986, metadata !DIExpression()), !dbg !987
  %4 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !988
  %call4 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %4), !dbg !989
  store %struct.dictIterator* %call4, %struct.dictIterator** %iter, align 8, !dbg !987
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry5, metadata !990, metadata !DIExpression()), !dbg !991
  store %struct.dictEntry* null, %struct.dictEntry** %entry5, align 8, !dbg !991
  br label %while.cond, !dbg !992

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !993
  %call6 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %5), !dbg !994
  store %struct.dictEntry* %call6, %struct.dictEntry** %entry5, align 8, !dbg !995
  %tobool = icmp ne %struct.dictEntry* %call6, null, !dbg !992
  br i1 %tobool, label %while.body, label %while.end, !dbg !992

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei, metadata !996, metadata !DIExpression()), !dbg !998
  %6 = load %struct.dictEntry*, %struct.dictEntry** %entry5, align 8, !dbg !999
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %6, i32 0, i32 1, !dbg !999
  %val = bitcast %union.anon* %v to i8**, !dbg !999
  %7 = load i8*, i8** %val, align 8, !dbg !999
  %8 = bitcast i8* %7 to %struct.engineInfo*, !dbg !999
  store %struct.engineInfo* %8, %struct.engineInfo** %ei, align 8, !dbg !998
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %stats, metadata !1000, metadata !DIExpression()), !dbg !1001
  %call7 = call i8* @zcalloc(i64 16), !dbg !1002
  %9 = bitcast i8* %call7 to %struct.functionsLibEngineStats*, !dbg !1002
  store %struct.functionsLibEngineStats* %9, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1001
  %10 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !1003
  %engines_stats8 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %10, i32 0, i32 3, !dbg !1004
  %11 = load %struct.dict*, %struct.dict** %engines_stats8, align 8, !dbg !1004
  %12 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1005
  %name = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %12, i32 0, i32 0, !dbg !1006
  %13 = load i8*, i8** %name, align 8, !dbg !1006
  %14 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1007
  %15 = bitcast %struct.functionsLibEngineStats* %14 to i8*, !dbg !1007
  %call9 = call i32 @dictAdd(%struct.dict* %11, i8* %13, i8* %15), !dbg !1008
  br label %while.cond, !dbg !992, !llvm.loop !1009

while.end:                                        ; preds = %while.cond
  %16 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1011
  call void @dictReleaseIterator(%struct.dictIterator* %16), !dbg !1012
  %17 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !1013
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %17, i32 0, i32 2, !dbg !1014
  store i64 0, i64* %cache_memory, align 8, !dbg !1015
  %18 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %ret, align 8, !dbg !1016
  ret %struct.functionsLibCtx* %18, !dbg !1017
}

declare dso_local i8* @zmalloc(i64) #0

declare dso_local %struct.dict* @dictCreate(%struct.dictType*) #0

declare dso_local i8* @zcalloc(i64) #0

declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @functionLibCreateFunction(i8* %name, i8* %function, %struct.functionLibInfo* %li, i8* %desc, i64 %f_flags, i8** %err) #1 !dbg !1018 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %function.addr = alloca i8*, align 8
  %li.addr = alloca %struct.functionLibInfo*, align 8
  %desc.addr = alloca i8*, align 8
  %f_flags.addr = alloca i64, align 8
  %err.addr = alloca i8**, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %.compoundliteral = alloca %struct.functionInfo, align 8
  %res = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i8* %function, i8** %function.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %function.addr, metadata !1023, metadata !DIExpression()), !dbg !1024
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !1025, metadata !DIExpression()), !dbg !1026
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i64 %f_flags, i64* %f_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f_flags.addr, metadata !1029, metadata !DIExpression()), !dbg !1030
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !1031, metadata !DIExpression()), !dbg !1032
  %0 = load i8*, i8** %name.addr, align 8, !dbg !1033
  %call = call i32 @functionsVerifyName(i8* %0), !dbg !1035
  %cmp = icmp ne i32 %call, 0, !dbg !1036
  br i1 %cmp, label %if.then, label %if.end, !dbg !1037

if.then:                                          ; preds = %entry
  %call1 = call i8* @sdsnew(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0)), !dbg !1038
  %1 = load i8**, i8*** %err.addr, align 8, !dbg !1040
  store i8* %call1, i8** %1, align 8, !dbg !1041
  store i32 -1, i32* %retval, align 4, !dbg !1042
  br label %return, !dbg !1042

if.end:                                           ; preds = %entry
  %2 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1043
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %2, i32 0, i32 1, !dbg !1045
  %3 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1045
  %4 = load i8*, i8** %name.addr, align 8, !dbg !1046
  %call2 = call i8* @dictFetchValue(%struct.dict* %3, i8* %4), !dbg !1047
  %tobool = icmp ne i8* %call2, null, !dbg !1047
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !1048

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0)), !dbg !1049
  %5 = load i8**, i8*** %err.addr, align 8, !dbg !1051
  store i8* %call4, i8** %5, align 8, !dbg !1052
  store i32 -1, i32* %retval, align 4, !dbg !1053
  br label %return, !dbg !1053

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !1054, metadata !DIExpression()), !dbg !1055
  %call6 = call i8* @zmalloc(i64 40), !dbg !1056
  %6 = bitcast i8* %call6 to %struct.functionInfo*, !dbg !1056
  store %struct.functionInfo* %6, %struct.functionInfo** %fi, align 8, !dbg !1055
  %7 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1057
  %name7 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %.compoundliteral, i32 0, i32 0, !dbg !1058
  %8 = load i8*, i8** %name.addr, align 8, !dbg !1059
  store i8* %8, i8** %name7, align 8, !dbg !1058
  %function8 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %.compoundliteral, i32 0, i32 1, !dbg !1058
  %9 = load i8*, i8** %function.addr, align 8, !dbg !1060
  store i8* %9, i8** %function8, align 8, !dbg !1058
  %li9 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %.compoundliteral, i32 0, i32 2, !dbg !1058
  %10 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1061
  store %struct.functionLibInfo* %10, %struct.functionLibInfo** %li9, align 8, !dbg !1058
  %desc10 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %.compoundliteral, i32 0, i32 3, !dbg !1058
  %11 = load i8*, i8** %desc.addr, align 8, !dbg !1062
  store i8* %11, i8** %desc10, align 8, !dbg !1058
  %f_flags11 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %.compoundliteral, i32 0, i32 4, !dbg !1058
  %12 = load i64, i64* %f_flags.addr, align 8, !dbg !1063
  store i64 %12, i64* %f_flags11, align 8, !dbg !1058
  %13 = bitcast %struct.functionInfo* %7 to i8*, !dbg !1064
  %14 = bitcast %struct.functionInfo* %.compoundliteral to i8*, !dbg !1064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 40, i1 false), !dbg !1064
  call void @llvm.dbg.declare(metadata i32* %res, metadata !1065, metadata !DIExpression()), !dbg !1066
  %15 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1067
  %functions12 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %15, i32 0, i32 1, !dbg !1068
  %16 = load %struct.dict*, %struct.dict** %functions12, align 8, !dbg !1068
  %17 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1069
  %name13 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %17, i32 0, i32 0, !dbg !1070
  %18 = load i8*, i8** %name13, align 8, !dbg !1070
  %19 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1071
  %20 = bitcast %struct.functionInfo* %19 to i8*, !dbg !1071
  %call14 = call i32 @dictAdd(%struct.dict* %16, i8* %18, i8* %20), !dbg !1072
  store i32 %call14, i32* %res, align 4, !dbg !1066
  %21 = load i32, i32* %res, align 4, !dbg !1073
  %cmp15 = icmp eq i32 %21, 0, !dbg !1073
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !1073

cond.true:                                        ; preds = %if.end5
  br label %cond.end, !dbg !1073

cond.false:                                       ; preds = %if.end5
  call void @_serverAssert(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 267), !dbg !1073
  unreachable, !dbg !1073

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1073

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  store i32 0, i32* %retval, align 4, !dbg !1074
  br label %return, !dbg !1074

return:                                           ; preds = %cond.end, %if.then3, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !1075
  ret i32 %22, !dbg !1075
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @functionsVerifyName(i8* %name) #1 !dbg !1076 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %curr_char = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1079, metadata !DIExpression()), !dbg !1080
  %0 = load i8*, i8** %name.addr, align 8, !dbg !1081
  %call = call i64 @sdslen(i8* %0), !dbg !1083
  %cmp = icmp eq i64 %call, 0, !dbg !1084
  br i1 %cmp, label %if.then, label %if.end, !dbg !1085

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1086
  br label %return, !dbg !1086

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1088, metadata !DIExpression()), !dbg !1090
  store i64 0, i64* %i, align 8, !dbg !1090
  br label %for.cond, !dbg !1091

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %i, align 8, !dbg !1092
  %2 = load i8*, i8** %name.addr, align 8, !dbg !1094
  %call1 = call i64 @sdslen(i8* %2), !dbg !1095
  %cmp2 = icmp ult i64 %1, %call1, !dbg !1096
  br i1 %cmp2, label %for.body, label %for.end, !dbg !1097

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %curr_char, metadata !1098, metadata !DIExpression()), !dbg !1100
  %3 = load i8*, i8** %name.addr, align 8, !dbg !1101
  %4 = load i64, i64* %i, align 8, !dbg !1102
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !1101
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1101
  store i8 %5, i8* %curr_char, align 1, !dbg !1100
  %6 = load i8, i8* %curr_char, align 1, !dbg !1103
  %conv = sext i8 %6 to i32, !dbg !1103
  %cmp3 = icmp sge i32 %conv, 97, !dbg !1105
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !1106

land.lhs.true:                                    ; preds = %for.body
  %7 = load i8, i8* %curr_char, align 1, !dbg !1107
  %conv5 = sext i8 %7 to i32, !dbg !1107
  %cmp6 = icmp sle i32 %conv5, 122, !dbg !1108
  br i1 %cmp6, label %if.then27, label %lor.lhs.false, !dbg !1109

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %8 = load i8, i8* %curr_char, align 1, !dbg !1110
  %conv8 = sext i8 %8 to i32, !dbg !1110
  %cmp9 = icmp sge i32 %conv8, 65, !dbg !1111
  br i1 %cmp9, label %land.lhs.true11, label %lor.lhs.false15, !dbg !1112

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %9 = load i8, i8* %curr_char, align 1, !dbg !1113
  %conv12 = sext i8 %9 to i32, !dbg !1113
  %cmp13 = icmp sle i32 %conv12, 90, !dbg !1114
  br i1 %cmp13, label %if.then27, label %lor.lhs.false15, !dbg !1115

lor.lhs.false15:                                  ; preds = %land.lhs.true11, %lor.lhs.false
  %10 = load i8, i8* %curr_char, align 1, !dbg !1116
  %conv16 = sext i8 %10 to i32, !dbg !1116
  %cmp17 = icmp sge i32 %conv16, 48, !dbg !1117
  br i1 %cmp17, label %land.lhs.true19, label %lor.lhs.false23, !dbg !1118

land.lhs.true19:                                  ; preds = %lor.lhs.false15
  %11 = load i8, i8* %curr_char, align 1, !dbg !1119
  %conv20 = sext i8 %11 to i32, !dbg !1119
  %cmp21 = icmp sle i32 %conv20, 57, !dbg !1120
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23, !dbg !1121

lor.lhs.false23:                                  ; preds = %land.lhs.true19, %lor.lhs.false15
  %12 = load i8, i8* %curr_char, align 1, !dbg !1122
  %conv24 = sext i8 %12 to i32, !dbg !1122
  %cmp25 = icmp eq i32 %conv24, 95, !dbg !1123
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1124

if.then27:                                        ; preds = %lor.lhs.false23, %land.lhs.true19, %land.lhs.true11, %land.lhs.true
  br label %for.inc, !dbg !1125

if.end28:                                         ; preds = %lor.lhs.false23
  store i32 -1, i32* %retval, align 4, !dbg !1127
  br label %return, !dbg !1127

for.inc:                                          ; preds = %if.then27
  %13 = load i64, i64* %i, align 8, !dbg !1128
  %inc = add i64 %13, 1, !dbg !1128
  store i64 %inc, i64* %i, align 8, !dbg !1128
  br label %for.cond, !dbg !1129, !llvm.loop !1130

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1132
  br label %return, !dbg !1132

return:                                           ; preds = %for.end, %if.end28, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !1133
  ret i32 %14, !dbg !1133
}

declare dso_local i8* @sdsnew(i8*) #0

declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @_serverAssert(i8*, i8*, i32) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @functionsRegisterEngine(i8* %engine_name, %struct.engine* %engine) #1 !dbg !1134 {
entry:
  %retval = alloca i32, align 4
  %engine_name.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.engine*, align 8
  %engine_name_sds = alloca i8*, align 8
  %c = alloca %struct.client*, align 8
  %ei = alloca %struct.engineInfo*, align 8
  %.compoundliteral = alloca %struct.engineInfo, align 8
  store i8* %engine_name, i8** %engine_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_name.addr, metadata !1137, metadata !DIExpression()), !dbg !1138
  store %struct.engine* %engine, %struct.engine** %engine.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.engine** %engine.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata i8** %engine_name_sds, metadata !1141, metadata !DIExpression()), !dbg !1142
  %0 = load i8*, i8** %engine_name.addr, align 8, !dbg !1143
  %call = call i8* @sdsnew(i8* %0), !dbg !1144
  store i8* %call, i8** %engine_name_sds, align 8, !dbg !1142
  %1 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !1145
  %2 = load i8*, i8** %engine_name_sds, align 8, !dbg !1147
  %call1 = call i8* @dictFetchValue(%struct.dict* %1, i8* %2), !dbg !1148
  %tobool = icmp ne i8* %call1, null, !dbg !1148
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1149

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1150

do.body:                                          ; preds = %if.then
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !1152
  %cmp = icmp slt i32 3, %3, !dbg !1152
  br i1 %cmp, label %if.then2, label %if.end, !dbg !1155

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !1152

if.end:                                           ; preds = %do.body
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)), !dbg !1155
  br label %do.end, !dbg !1155

do.end:                                           ; preds = %if.end, %if.then2
  %4 = load i8*, i8** %engine_name_sds, align 8, !dbg !1156
  call void @sdsfree(i8* %4), !dbg !1157
  store i32 -1, i32* %retval, align 4, !dbg !1158
  br label %return, !dbg !1158

if.end3:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !1159, metadata !DIExpression()), !dbg !1160
  %call4 = call %struct.client* @createClient(%struct.connection* null), !dbg !1161
  store %struct.client* %call4, %struct.client** %c, align 8, !dbg !1160
  %5 = load %struct.client*, %struct.client** %c, align 8, !dbg !1162
  %flags = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1, !dbg !1163
  %6 = load i64, i64* %flags, align 8, !dbg !1164
  %or = or i64 %6, 2199023255808, !dbg !1164
  store i64 %or, i64* %flags, align 8, !dbg !1164
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei, metadata !1165, metadata !DIExpression()), !dbg !1166
  %call5 = call i8* @zmalloc(i64 24), !dbg !1167
  %7 = bitcast i8* %call5 to %struct.engineInfo*, !dbg !1167
  store %struct.engineInfo* %7, %struct.engineInfo** %ei, align 8, !dbg !1166
  %8 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1168
  %name = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %.compoundliteral, i32 0, i32 0, !dbg !1169
  %9 = load i8*, i8** %engine_name_sds, align 8, !dbg !1170
  store i8* %9, i8** %name, align 8, !dbg !1169
  %engine6 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %.compoundliteral, i32 0, i32 1, !dbg !1169
  %10 = load %struct.engine*, %struct.engine** %engine.addr, align 8, !dbg !1171
  store %struct.engine* %10, %struct.engine** %engine6, align 8, !dbg !1169
  %c7 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %.compoundliteral, i32 0, i32 2, !dbg !1169
  %11 = load %struct.client*, %struct.client** %c, align 8, !dbg !1172
  store %struct.client* %11, %struct.client** %c7, align 8, !dbg !1169
  %12 = bitcast %struct.engineInfo* %8 to i8*, !dbg !1173
  %13 = bitcast %struct.engineInfo* %.compoundliteral to i8*, !dbg !1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false), !dbg !1173
  %14 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !1174
  %15 = load i8*, i8** %engine_name_sds, align 8, !dbg !1175
  %16 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1176
  %17 = bitcast %struct.engineInfo* %16 to i8*, !dbg !1176
  %call8 = call i32 @dictAdd(%struct.dict* %14, i8* %15, i8* %17), !dbg !1177
  %18 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1178
  %19 = bitcast %struct.engineInfo* %18 to i8*, !dbg !1178
  %call9 = call i64 @malloc_usable_size(i8* %19) #7, !dbg !1178
  %20 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1179
  %name10 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %20, i32 0, i32 0, !dbg !1180
  %21 = load i8*, i8** %name10, align 8, !dbg !1180
  %call11 = call i64 @sdsZmallocSize(i8* %21), !dbg !1181
  %add = add i64 %call9, %call11, !dbg !1182
  %22 = load %struct.engine*, %struct.engine** %engine.addr, align 8, !dbg !1183
  %23 = bitcast %struct.engine* %22 to i8*, !dbg !1183
  %call12 = call i64 @malloc_usable_size(i8* %23) #7, !dbg !1183
  %add13 = add i64 %add, %call12, !dbg !1184
  %24 = load %struct.engine*, %struct.engine** %engine.addr, align 8, !dbg !1185
  %get_engine_memory_overhead = getelementptr inbounds %struct.engine, %struct.engine* %24, i32 0, i32 5, !dbg !1186
  %25 = load i64 (i8*)*, i64 (i8*)** %get_engine_memory_overhead, align 8, !dbg !1186
  %26 = load %struct.engine*, %struct.engine** %engine.addr, align 8, !dbg !1187
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %26, i32 0, i32 0, !dbg !1188
  %27 = load i8*, i8** %engine_ctx, align 8, !dbg !1188
  %call14 = call i64 %25(i8* %27), !dbg !1185
  %add15 = add i64 %add13, %call14, !dbg !1189
  %28 = load i64, i64* @engine_cache_memory, align 8, !dbg !1190
  %add16 = add i64 %28, %add15, !dbg !1190
  store i64 %add16, i64* @engine_cache_memory, align 8, !dbg !1190
  store i32 0, i32* %retval, align 4, !dbg !1191
  br label %return, !dbg !1191

return:                                           ; preds = %if.end3, %do.end
  %29 = load i32, i32* %retval, align 4, !dbg !1192
  ret i32 %29, !dbg !1192
}

declare dso_local void @_serverLog(i32, i8*, ...) #0

declare dso_local void @sdsfree(i8*) #0

declare dso_local %struct.client* @createClient(%struct.connection*) #0

; Function Attrs: nounwind
declare dso_local i64 @malloc_usable_size(i8*) #4

declare dso_local i64 @sdsZmallocSize(i8*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionStatsCommand(%struct.client* %c) #1 !dbg !1193 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %script_client = alloca %struct.client*, align 8
  %i = alloca i32, align 4
  %iter = alloca %struct.dictIterator*, align 8
  %entry21 = alloca %struct.dictEntry*, align 8
  %ei = alloca %struct.engineInfo*, align 8
  %e_stats = alloca %struct.functionsLibEngineStats*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1194, metadata !DIExpression()), !dbg !1195
  %call = call i32 (...) @scriptIsRunning(), !dbg !1196
  %tobool = icmp ne i32 %call, 0, !dbg !1196
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1198

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 (...) @scriptIsEval(), !dbg !1199
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1199
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1200

if.then:                                          ; preds = %land.lhs.true
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1201
  %1 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 21), align 8, !dbg !1203
  call void @addReplyErrorObject(%struct.client* %0, %struct.redisObject* %1), !dbg !1204
  br label %return, !dbg !1205

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1206
  call void @addReplyMapLen(%struct.client* %2, i64 2), !dbg !1207
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1208
  call void @addReplyBulkCString(%struct.client* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)), !dbg !1209
  %call3 = call i32 (...) @scriptIsRunning(), !dbg !1210
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1210
  br i1 %tobool4, label %if.else, label %if.then5, !dbg !1212

if.then5:                                         ; preds = %if.end
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1213
  call void @addReplyNull(%struct.client* %4), !dbg !1215
  br label %if.end16, !dbg !1216

if.else:                                          ; preds = %if.end
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1217
  call void @addReplyMapLen(%struct.client* %5, i64 3), !dbg !1219
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1220
  call void @addReplyBulkCString(%struct.client* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !1221
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1222
  %call6 = call i8* (...) @scriptCurrFunction(), !dbg !1223
  call void @addReplyBulkCString(%struct.client* %7, i8* %call6), !dbg !1224
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1225
  call void @addReplyBulkCString(%struct.client* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)), !dbg !1226
  call void @llvm.dbg.declare(metadata %struct.client** %script_client, metadata !1227, metadata !DIExpression()), !dbg !1228
  %call7 = call %struct.client* (...) @scriptGetCaller(), !dbg !1229
  store %struct.client* %call7, %struct.client** %script_client, align 8, !dbg !1228
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1230
  %10 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1231
  %argc = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 9, !dbg !1232
  %11 = load i32, i32* %argc, align 8, !dbg !1232
  %conv = sext i32 %11 to i64, !dbg !1231
  call void @addReplyArrayLen(%struct.client* %9, i64 %conv), !dbg !1233
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1234, metadata !DIExpression()), !dbg !1236
  store i32 0, i32* %i, align 4, !dbg !1236
  br label %for.cond, !dbg !1237

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, i32* %i, align 4, !dbg !1238
  %13 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1240
  %argc8 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 9, !dbg !1241
  %14 = load i32, i32* %argc8, align 8, !dbg !1241
  %cmp = icmp slt i32 %12, %14, !dbg !1242
  br i1 %cmp, label %for.body, label %for.end, !dbg !1243

for.body:                                         ; preds = %for.cond
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1244
  %16 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1246
  %argv = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 10, !dbg !1247
  %17 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1247
  %18 = load i32, i32* %i, align 4, !dbg !1248
  %idxprom = sext i32 %18 to i64, !dbg !1246
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %idxprom, !dbg !1246
  %19 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1246
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %19, i32 0, i32 2, !dbg !1249
  %20 = load i8*, i8** %ptr, align 8, !dbg !1249
  %21 = load %struct.client*, %struct.client** %script_client, align 8, !dbg !1250
  %argv10 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 10, !dbg !1251
  %22 = load %struct.redisObject**, %struct.redisObject*** %argv10, align 8, !dbg !1251
  %23 = load i32, i32* %i, align 4, !dbg !1252
  %idxprom11 = sext i32 %23 to i64, !dbg !1250
  %arrayidx12 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %idxprom11, !dbg !1250
  %24 = load %struct.redisObject*, %struct.redisObject** %arrayidx12, align 8, !dbg !1250
  %ptr13 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i32 0, i32 2, !dbg !1253
  %25 = load i8*, i8** %ptr13, align 8, !dbg !1253
  %call14 = call i64 @sdslen(i8* %25), !dbg !1254
  call void @addReplyBulkCBuffer(%struct.client* %15, i8* %20, i64 %call14), !dbg !1255
  br label %for.inc, !dbg !1256

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !1257
  %inc = add nsw i32 %26, 1, !dbg !1257
  store i32 %inc, i32* %i, align 4, !dbg !1257
  br label %for.cond, !dbg !1258, !llvm.loop !1259

for.end:                                          ; preds = %for.cond
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1261
  call void @addReplyBulkCString(%struct.client* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !dbg !1262
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1263
  %call15 = call i64 (...) @scriptRunDuration(), !dbg !1264
  call void @addReplyLongLong(%struct.client* %28, i64 %call15), !dbg !1265
  br label %if.end16

if.end16:                                         ; preds = %for.end, %if.then5
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1266
  call void @addReplyBulkCString(%struct.client* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !1267
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1268
  %31 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !1269
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %31, i32 0, i32 2, !dbg !1269
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1269
  %32 = load i64, i64* %arrayidx17, align 8, !dbg !1269
  %33 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !1269
  %ht_used18 = getelementptr inbounds %struct.dict, %struct.dict* %33, i32 0, i32 2, !dbg !1269
  %arrayidx19 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used18, i64 0, i64 1, !dbg !1269
  %34 = load i64, i64* %arrayidx19, align 8, !dbg !1269
  %add = add i64 %32, %34, !dbg !1269
  call void @addReplyMapLen(%struct.client* %30, i64 %add), !dbg !1270
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !1271, metadata !DIExpression()), !dbg !1272
  %35 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !1273
  %call20 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %35), !dbg !1274
  store %struct.dictIterator* %call20, %struct.dictIterator** %iter, align 8, !dbg !1272
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry21, metadata !1275, metadata !DIExpression()), !dbg !1276
  store %struct.dictEntry* null, %struct.dictEntry** %entry21, align 8, !dbg !1276
  br label %while.cond, !dbg !1277

while.cond:                                       ; preds = %while.body, %if.end16
  %36 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1278
  %call22 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %36), !dbg !1279
  store %struct.dictEntry* %call22, %struct.dictEntry** %entry21, align 8, !dbg !1280
  %tobool23 = icmp ne %struct.dictEntry* %call22, null, !dbg !1277
  br i1 %tobool23, label %while.body, label %while.end, !dbg !1277

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei, metadata !1281, metadata !DIExpression()), !dbg !1283
  %37 = load %struct.dictEntry*, %struct.dictEntry** %entry21, align 8, !dbg !1284
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %37, i32 0, i32 1, !dbg !1284
  %val = bitcast %union.anon* %v to i8**, !dbg !1284
  %38 = load i8*, i8** %val, align 8, !dbg !1284
  %39 = bitcast i8* %38 to %struct.engineInfo*, !dbg !1284
  store %struct.engineInfo* %39, %struct.engineInfo** %ei, align 8, !dbg !1283
  %40 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1285
  %41 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1286
  %name = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %41, i32 0, i32 0, !dbg !1287
  %42 = load i8*, i8** %name, align 8, !dbg !1287
  call void @addReplyBulkCString(%struct.client* %40, i8* %42), !dbg !1288
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1289
  call void @addReplyMapLen(%struct.client* %43, i64 2), !dbg !1290
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %e_stats, metadata !1291, metadata !DIExpression()), !dbg !1292
  %44 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1293
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %44, i32 0, i32 3, !dbg !1294
  %45 = load %struct.dict*, %struct.dict** %engines_stats, align 8, !dbg !1294
  %46 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1295
  %name24 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %46, i32 0, i32 0, !dbg !1296
  %47 = load i8*, i8** %name24, align 8, !dbg !1296
  %call25 = call i8* @dictFetchValue(%struct.dict* %45, i8* %47), !dbg !1297
  %48 = bitcast i8* %call25 to %struct.functionsLibEngineStats*, !dbg !1297
  store %struct.functionsLibEngineStats* %48, %struct.functionsLibEngineStats** %e_stats, align 8, !dbg !1292
  %49 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1298
  call void @addReplyBulkCString(%struct.client* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !1299
  %50 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1300
  %51 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %e_stats, align 8, !dbg !1301
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %51, i32 0, i32 0, !dbg !1302
  %52 = load i64, i64* %n_lib, align 8, !dbg !1302
  call void @addReplyLongLong(%struct.client* %50, i64 %52), !dbg !1303
  %53 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1304
  call void @addReplyBulkCString(%struct.client* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)), !dbg !1305
  %54 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1306
  %55 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %e_stats, align 8, !dbg !1307
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %55, i32 0, i32 1, !dbg !1308
  %56 = load i64, i64* %n_functions, align 8, !dbg !1308
  call void @addReplyLongLong(%struct.client* %54, i64 %56), !dbg !1309
  br label %while.cond, !dbg !1277, !llvm.loop !1310

while.end:                                        ; preds = %while.cond
  %57 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1312
  call void @dictReleaseIterator(%struct.dictIterator* %57), !dbg !1313
  br label %return, !dbg !1314

return:                                           ; preds = %while.end, %if.then
  ret void, !dbg !1314
}

declare dso_local i32 @scriptIsRunning(...) #0

declare dso_local i32 @scriptIsEval(...) #0

declare dso_local void @addReplyErrorObject(%struct.client*, %struct.redisObject*) #0

declare dso_local void @addReplyMapLen(%struct.client*, i64) #0

declare dso_local void @addReplyBulkCString(%struct.client*, i8*) #0

declare dso_local void @addReplyNull(%struct.client*) #0

declare dso_local i8* @scriptCurrFunction(...) #0

declare dso_local %struct.client* @scriptGetCaller(...) #0

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #0

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #0

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #1 !dbg !1315 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1319, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1321, metadata !DIExpression()), !dbg !1322
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1323
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1323
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1323
  store i8 %1, i8* %flags, align 1, !dbg !1322
  %2 = load i8, i8* %flags, align 1, !dbg !1324
  %conv = zext i8 %2 to i32, !dbg !1324
  %and = and i32 %conv, 7, !dbg !1325
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1326

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1327
  %conv1 = zext i8 %3 to i32, !dbg !1327
  %shr = ashr i32 %conv1, 3, !dbg !1327
  %conv2 = sext i32 %shr to i64, !dbg !1327
  store i64 %conv2, i64* %retval, align 8, !dbg !1329
  br label %return, !dbg !1329

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1330
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1330
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1331
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1331
  %6 = load i8, i8* %len, align 1, !dbg !1331
  %conv4 = zext i8 %6 to i64, !dbg !1330
  store i64 %conv4, i64* %retval, align 8, !dbg !1332
  br label %return, !dbg !1332

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1333
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1333
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1334
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1334
  %9 = load i16, i16* %len7, align 1, !dbg !1334
  %conv8 = zext i16 %9 to i64, !dbg !1333
  store i64 %conv8, i64* %retval, align 8, !dbg !1335
  br label %return, !dbg !1335

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1336
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1336
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1337
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1337
  %12 = load i32, i32* %len11, align 1, !dbg !1337
  %conv12 = zext i32 %12 to i64, !dbg !1336
  store i64 %conv12, i64* %retval, align 8, !dbg !1338
  br label %return, !dbg !1338

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1339
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1339
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1340
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1340
  %15 = load i64, i64* %len15, align 1, !dbg !1340
  store i64 %15, i64* %retval, align 8, !dbg !1341
  br label %return, !dbg !1341

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1342
  br label %return, !dbg !1342

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1343
  ret i64 %16, !dbg !1343
}

declare dso_local void @addReplyLongLong(%struct.client*, i64) #0

declare dso_local i64 @scriptRunDuration(...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionListCommand(%struct.client* %c) #1 !dbg !1344 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %with_code = alloca i32, align 4
  %library_name = alloca i8*, align 8
  %i = alloca i32, align 4
  %next_arg = alloca %struct.redisObject*, align 8
  %reply_len = alloca i64, align 8
  %len_ptr = alloca i8*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry31 = alloca %struct.dictEntry*, align 8
  %li = alloca %struct.functionLibInfo*, align 8
  %functions_iter = alloca %struct.dictIterator*, align 8
  %function_entry = alloca %struct.dictEntry*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1345, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata i32* %with_code, metadata !1347, metadata !DIExpression()), !dbg !1348
  store i32 0, i32* %with_code, align 4, !dbg !1348
  call void @llvm.dbg.declare(metadata i8** %library_name, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i8* null, i8** %library_name, align 8, !dbg !1350
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1351, metadata !DIExpression()), !dbg !1353
  store i32 2, i32* %i, align 4, !dbg !1353
  br label %for.cond, !dbg !1354

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1355
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1357
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !1358
  %2 = load i32, i32* %argc, align 8, !dbg !1358
  %cmp = icmp slt i32 %0, %2, !dbg !1359
  br i1 %cmp, label %for.body, label %for.end, !dbg !1360

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %next_arg, metadata !1361, metadata !DIExpression()), !dbg !1363
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1364
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !1365
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1365
  %5 = load i32, i32* %i, align 4, !dbg !1366
  %idxprom = sext i32 %5 to i64, !dbg !1364
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 %idxprom, !dbg !1364
  %6 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1364
  store %struct.redisObject* %6, %struct.redisObject** %next_arg, align 8, !dbg !1363
  %7 = load i32, i32* %with_code, align 4, !dbg !1367
  %tobool = icmp ne i32 %7, 0, !dbg !1367
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !1369

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.redisObject*, %struct.redisObject** %next_arg, align 8, !dbg !1370
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %8, i32 0, i32 2, !dbg !1371
  %9 = load i8*, i8** %ptr, align 8, !dbg !1371
  %call = call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !1372
  %tobool1 = icmp ne i32 %call, 0, !dbg !1372
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1373

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %with_code, align 4, !dbg !1374
  br label %for.inc, !dbg !1376

if.end:                                           ; preds = %land.lhs.true, %for.body
  %10 = load i8*, i8** %library_name, align 8, !dbg !1377
  %tobool2 = icmp ne i8* %10, null, !dbg !1377
  br i1 %tobool2, label %if.end16, label %land.lhs.true3, !dbg !1379

land.lhs.true3:                                   ; preds = %if.end
  %11 = load %struct.redisObject*, %struct.redisObject** %next_arg, align 8, !dbg !1380
  %ptr4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i32 0, i32 2, !dbg !1381
  %12 = load i8*, i8** %ptr4, align 8, !dbg !1381
  %call5 = call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !1382
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1382
  br i1 %tobool6, label %if.end16, label %if.then7, !dbg !1383

if.then7:                                         ; preds = %land.lhs.true3
  %13 = load i32, i32* %i, align 4, !dbg !1384
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1387
  %argc8 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 9, !dbg !1388
  %15 = load i32, i32* %argc8, align 8, !dbg !1388
  %sub = sub nsw i32 %15, 1, !dbg !1389
  %cmp9 = icmp sge i32 %13, %sub, !dbg !1390
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1391

if.then10:                                        ; preds = %if.then7
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1392
  call void @addReplyError(%struct.client* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0)), !dbg !1394
  br label %if.end87, !dbg !1395

if.end11:                                         ; preds = %if.then7
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1396
  %argv12 = getelementptr inbounds %struct.client, %struct.client* %17, i32 0, i32 10, !dbg !1397
  %18 = load %struct.redisObject**, %struct.redisObject*** %argv12, align 8, !dbg !1397
  %19 = load i32, i32* %i, align 4, !dbg !1398
  %inc = add nsw i32 %19, 1, !dbg !1398
  store i32 %inc, i32* %i, align 4, !dbg !1398
  %idxprom13 = sext i32 %inc to i64, !dbg !1396
  %arrayidx14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %idxprom13, !dbg !1396
  %20 = load %struct.redisObject*, %struct.redisObject** %arrayidx14, align 8, !dbg !1396
  %ptr15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %20, i32 0, i32 2, !dbg !1399
  %21 = load i8*, i8** %ptr15, align 8, !dbg !1399
  store i8* %21, i8** %library_name, align 8, !dbg !1400
  br label %for.inc, !dbg !1401

if.end16:                                         ; preds = %land.lhs.true3, %if.end
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1402
  %call17 = call i8* @sdsempty(), !dbg !1403
  %23 = load %struct.redisObject*, %struct.redisObject** %next_arg, align 8, !dbg !1404
  %ptr18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i32 0, i32 2, !dbg !1405
  %24 = load i8*, i8** %ptr18, align 8, !dbg !1405
  %call19 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %24), !dbg !1406
  call void @addReplyErrorSds(%struct.client* %22, i8* %call19), !dbg !1407
  br label %if.end87, !dbg !1408

for.inc:                                          ; preds = %if.end11, %if.then
  %25 = load i32, i32* %i, align 4, !dbg !1409
  %inc20 = add nsw i32 %25, 1, !dbg !1409
  store i32 %inc20, i32* %i, align 4, !dbg !1409
  br label %for.cond, !dbg !1410, !llvm.loop !1411

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %reply_len, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i64 0, i64* %reply_len, align 8, !dbg !1414
  call void @llvm.dbg.declare(metadata i8** %len_ptr, metadata !1415, metadata !DIExpression()), !dbg !1416
  store i8* null, i8** %len_ptr, align 8, !dbg !1416
  %26 = load i8*, i8** %library_name, align 8, !dbg !1417
  %tobool21 = icmp ne i8* %26, null, !dbg !1417
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !1419

if.then22:                                        ; preds = %for.end
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1420
  %call23 = call i8* @addReplyDeferredLen(%struct.client* %27), !dbg !1422
  store i8* %call23, i8** %len_ptr, align 8, !dbg !1423
  br label %if.end28, !dbg !1424

if.else:                                          ; preds = %for.end
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1425
  %29 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1427
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %29, i32 0, i32 0, !dbg !1427
  %30 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !1427
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %30, i32 0, i32 2, !dbg !1427
  %arrayidx24 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1427
  %31 = load i64, i64* %arrayidx24, align 8, !dbg !1427
  %32 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1427
  %libraries25 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %32, i32 0, i32 0, !dbg !1427
  %33 = load %struct.dict*, %struct.dict** %libraries25, align 8, !dbg !1427
  %ht_used26 = getelementptr inbounds %struct.dict, %struct.dict* %33, i32 0, i32 2, !dbg !1427
  %arrayidx27 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used26, i64 0, i64 1, !dbg !1427
  %34 = load i64, i64* %arrayidx27, align 8, !dbg !1427
  %add = add i64 %31, %34, !dbg !1427
  call void @addReplyArrayLen(%struct.client* %28, i64 %add), !dbg !1428
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !1429, metadata !DIExpression()), !dbg !1430
  %35 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1431
  %libraries29 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %35, i32 0, i32 0, !dbg !1432
  %36 = load %struct.dict*, %struct.dict** %libraries29, align 8, !dbg !1432
  %call30 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %36), !dbg !1433
  store %struct.dictIterator* %call30, %struct.dictIterator** %iter, align 8, !dbg !1430
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry31, metadata !1434, metadata !DIExpression()), !dbg !1435
  store %struct.dictEntry* null, %struct.dictEntry** %entry31, align 8, !dbg !1435
  br label %while.cond, !dbg !1436

while.cond:                                       ; preds = %if.end83, %if.then42, %if.end28
  %37 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1437
  %call32 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %37), !dbg !1438
  store %struct.dictEntry* %call32, %struct.dictEntry** %entry31, align 8, !dbg !1439
  %tobool33 = icmp ne %struct.dictEntry* %call32, null, !dbg !1436
  br i1 %tobool33, label %while.body, label %while.end84, !dbg !1436

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li, metadata !1440, metadata !DIExpression()), !dbg !1442
  %38 = load %struct.dictEntry*, %struct.dictEntry** %entry31, align 8, !dbg !1443
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %38, i32 0, i32 1, !dbg !1443
  %val = bitcast %union.anon* %v to i8**, !dbg !1443
  %39 = load i8*, i8** %val, align 8, !dbg !1443
  %40 = bitcast i8* %39 to %struct.functionLibInfo*, !dbg !1443
  store %struct.functionLibInfo* %40, %struct.functionLibInfo** %li, align 8, !dbg !1442
  %41 = load i8*, i8** %library_name, align 8, !dbg !1444
  %tobool34 = icmp ne i8* %41, null, !dbg !1444
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !1446

if.then35:                                        ; preds = %while.body
  %42 = load i8*, i8** %library_name, align 8, !dbg !1447
  %43 = load i8*, i8** %library_name, align 8, !dbg !1450
  %call36 = call i64 @sdslen(i8* %43), !dbg !1451
  %conv = trunc i64 %call36 to i32, !dbg !1451
  %44 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1452
  %name = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %44, i32 0, i32 0, !dbg !1453
  %45 = load i8*, i8** %name, align 8, !dbg !1453
  %46 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1454
  %name37 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %46, i32 0, i32 0, !dbg !1455
  %47 = load i8*, i8** %name37, align 8, !dbg !1455
  %call38 = call i64 @sdslen(i8* %47), !dbg !1456
  %conv39 = trunc i64 %call38 to i32, !dbg !1456
  %call40 = call i32 @stringmatchlen(i8* %42, i32 %conv, i8* %45, i32 %conv39, i32 1), !dbg !1457
  %tobool41 = icmp ne i32 %call40, 0, !dbg !1457
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !1458

if.then42:                                        ; preds = %if.then35
  br label %while.cond, !dbg !1459, !llvm.loop !1461

if.end43:                                         ; preds = %if.then35
  br label %if.end44, !dbg !1463

if.end44:                                         ; preds = %if.end43, %while.body
  %48 = load i64, i64* %reply_len, align 8, !dbg !1464
  %inc45 = add i64 %48, 1, !dbg !1464
  store i64 %inc45, i64* %reply_len, align 8, !dbg !1464
  %49 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1465
  %50 = load i32, i32* %with_code, align 4, !dbg !1466
  %tobool46 = icmp ne i32 %50, 0, !dbg !1466
  %51 = zext i1 %tobool46 to i64, !dbg !1466
  %cond = select i1 %tobool46, i32 4, i32 3, !dbg !1466
  %conv47 = sext i32 %cond to i64, !dbg !1466
  call void @addReplyMapLen(%struct.client* %49, i64 %conv47), !dbg !1467
  %52 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1468
  call void @addReplyBulkCString(%struct.client* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)), !dbg !1469
  %53 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1470
  %54 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1471
  %name48 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %54, i32 0, i32 0, !dbg !1472
  %55 = load i8*, i8** %name48, align 8, !dbg !1472
  %56 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1473
  %name49 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %56, i32 0, i32 0, !dbg !1474
  %57 = load i8*, i8** %name49, align 8, !dbg !1474
  %call50 = call i64 @sdslen(i8* %57), !dbg !1475
  call void @addReplyBulkCBuffer(%struct.client* %53, i8* %55, i64 %call50), !dbg !1476
  %58 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1477
  call void @addReplyBulkCString(%struct.client* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)), !dbg !1478
  %59 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1479
  %60 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1480
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %60, i32 0, i32 2, !dbg !1481
  %61 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1481
  %name51 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %61, i32 0, i32 0, !dbg !1482
  %62 = load i8*, i8** %name51, align 8, !dbg !1482
  %63 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1483
  %ei52 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %63, i32 0, i32 2, !dbg !1484
  %64 = load %struct.engineInfo*, %struct.engineInfo** %ei52, align 8, !dbg !1484
  %name53 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %64, i32 0, i32 0, !dbg !1485
  %65 = load i8*, i8** %name53, align 8, !dbg !1485
  %call54 = call i64 @sdslen(i8* %65), !dbg !1486
  call void @addReplyBulkCBuffer(%struct.client* %59, i8* %62, i64 %call54), !dbg !1487
  %66 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1488
  call void @addReplyBulkCString(%struct.client* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)), !dbg !1489
  %67 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1490
  %68 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1491
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %68, i32 0, i32 1, !dbg !1491
  %69 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1491
  %ht_used55 = getelementptr inbounds %struct.dict, %struct.dict* %69, i32 0, i32 2, !dbg !1491
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used55, i64 0, i64 0, !dbg !1491
  %70 = load i64, i64* %arrayidx56, align 8, !dbg !1491
  %71 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1491
  %functions57 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %71, i32 0, i32 1, !dbg !1491
  %72 = load %struct.dict*, %struct.dict** %functions57, align 8, !dbg !1491
  %ht_used58 = getelementptr inbounds %struct.dict, %struct.dict* %72, i32 0, i32 2, !dbg !1491
  %arrayidx59 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used58, i64 0, i64 1, !dbg !1491
  %73 = load i64, i64* %arrayidx59, align 8, !dbg !1491
  %add60 = add i64 %70, %73, !dbg !1491
  call void @addReplyArrayLen(%struct.client* %67, i64 %add60), !dbg !1492
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %functions_iter, metadata !1493, metadata !DIExpression()), !dbg !1494
  %74 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1495
  %functions61 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %74, i32 0, i32 1, !dbg !1496
  %75 = load %struct.dict*, %struct.dict** %functions61, align 8, !dbg !1496
  %call62 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %75), !dbg !1497
  store %struct.dictIterator* %call62, %struct.dictIterator** %functions_iter, align 8, !dbg !1494
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %function_entry, metadata !1498, metadata !DIExpression()), !dbg !1499
  store %struct.dictEntry* null, %struct.dictEntry** %function_entry, align 8, !dbg !1499
  br label %while.cond63, !dbg !1500

while.cond63:                                     ; preds = %if.end78, %if.end44
  %76 = load %struct.dictIterator*, %struct.dictIterator** %functions_iter, align 8, !dbg !1501
  %call64 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %76), !dbg !1502
  store %struct.dictEntry* %call64, %struct.dictEntry** %function_entry, align 8, !dbg !1503
  %tobool65 = icmp ne %struct.dictEntry* %call64, null, !dbg !1500
  br i1 %tobool65, label %while.body66, label %while.end, !dbg !1500

while.body66:                                     ; preds = %while.cond63
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !1504, metadata !DIExpression()), !dbg !1506
  %77 = load %struct.dictEntry*, %struct.dictEntry** %function_entry, align 8, !dbg !1507
  %v67 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %77, i32 0, i32 1, !dbg !1507
  %val68 = bitcast %union.anon* %v67 to i8**, !dbg !1507
  %78 = load i8*, i8** %val68, align 8, !dbg !1507
  %79 = bitcast i8* %78 to %struct.functionInfo*, !dbg !1507
  store %struct.functionInfo* %79, %struct.functionInfo** %fi, align 8, !dbg !1506
  %80 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1508
  call void @addReplyMapLen(%struct.client* %80, i64 3), !dbg !1509
  %81 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1510
  call void @addReplyBulkCString(%struct.client* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !1511
  %82 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1512
  %83 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1513
  %name69 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %83, i32 0, i32 0, !dbg !1514
  %84 = load i8*, i8** %name69, align 8, !dbg !1514
  %85 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1515
  %name70 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %85, i32 0, i32 0, !dbg !1516
  %86 = load i8*, i8** %name70, align 8, !dbg !1516
  %call71 = call i64 @sdslen(i8* %86), !dbg !1517
  call void @addReplyBulkCBuffer(%struct.client* %82, i8* %84, i64 %call71), !dbg !1518
  %87 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1519
  call void @addReplyBulkCString(%struct.client* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0)), !dbg !1520
  %88 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1521
  %desc = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %88, i32 0, i32 3, !dbg !1523
  %89 = load i8*, i8** %desc, align 8, !dbg !1523
  %tobool72 = icmp ne i8* %89, null, !dbg !1521
  br i1 %tobool72, label %if.then73, label %if.else77, !dbg !1524

if.then73:                                        ; preds = %while.body66
  %90 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1525
  %91 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1527
  %desc74 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %91, i32 0, i32 3, !dbg !1528
  %92 = load i8*, i8** %desc74, align 8, !dbg !1528
  %93 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1529
  %desc75 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %93, i32 0, i32 3, !dbg !1530
  %94 = load i8*, i8** %desc75, align 8, !dbg !1530
  %call76 = call i64 @sdslen(i8* %94), !dbg !1531
  call void @addReplyBulkCBuffer(%struct.client* %90, i8* %92, i64 %call76), !dbg !1532
  br label %if.end78, !dbg !1533

if.else77:                                        ; preds = %while.body66
  %95 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1534
  call void @addReplyNull(%struct.client* %95), !dbg !1536
  br label %if.end78

if.end78:                                         ; preds = %if.else77, %if.then73
  %96 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1537
  call void @addReplyBulkCString(%struct.client* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)), !dbg !1538
  %97 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1539
  %98 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1540
  call void @functionListReplyFlags(%struct.client* %97, %struct.functionInfo* %98), !dbg !1541
  br label %while.cond63, !dbg !1500, !llvm.loop !1542

while.end:                                        ; preds = %while.cond63
  %99 = load %struct.dictIterator*, %struct.dictIterator** %functions_iter, align 8, !dbg !1544
  call void @dictReleaseIterator(%struct.dictIterator* %99), !dbg !1545
  %100 = load i32, i32* %with_code, align 4, !dbg !1546
  %tobool79 = icmp ne i32 %100, 0, !dbg !1546
  br i1 %tobool79, label %if.then80, label %if.end83, !dbg !1548

if.then80:                                        ; preds = %while.end
  %101 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1549
  call void @addReplyBulkCString(%struct.client* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0)), !dbg !1551
  %102 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1552
  %103 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1553
  %code = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %103, i32 0, i32 3, !dbg !1554
  %104 = load i8*, i8** %code, align 8, !dbg !1554
  %105 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1555
  %code81 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %105, i32 0, i32 3, !dbg !1556
  %106 = load i8*, i8** %code81, align 8, !dbg !1556
  %call82 = call i64 @sdslen(i8* %106), !dbg !1557
  call void @addReplyBulkCBuffer(%struct.client* %102, i8* %104, i64 %call82), !dbg !1558
  br label %if.end83, !dbg !1559

if.end83:                                         ; preds = %if.then80, %while.end
  br label %while.cond, !dbg !1436, !llvm.loop !1461

while.end84:                                      ; preds = %while.cond
  %107 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1560
  call void @dictReleaseIterator(%struct.dictIterator* %107), !dbg !1561
  %108 = load i8*, i8** %len_ptr, align 8, !dbg !1562
  %tobool85 = icmp ne i8* %108, null, !dbg !1562
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !1564

if.then86:                                        ; preds = %while.end84
  %109 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1565
  %110 = load i8*, i8** %len_ptr, align 8, !dbg !1567
  %111 = load i64, i64* %reply_len, align 8, !dbg !1568
  call void @setDeferredArrayLen(%struct.client* %109, i8* %110, i64 %111), !dbg !1569
  br label %if.end87, !dbg !1570

if.end87:                                         ; preds = %if.then10, %if.end16, %if.then86, %while.end84
  ret void, !dbg !1571
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #5

declare dso_local void @addReplyError(%struct.client*, i8*) #0

declare dso_local void @addReplyErrorSds(%struct.client*, i8*) #0

declare dso_local i8* @sdscatfmt(i8*, i8*, ...) #0

declare dso_local i8* @sdsempty() #0

declare dso_local i8* @addReplyDeferredLen(%struct.client*) #0

declare dso_local i32 @stringmatchlen(i8*, i32, i8*, i32, i32) #0

; Function Attrs: noinline nounwind uwtable
define internal void @functionListReplyFlags(%struct.client* %c, %struct.functionInfo* %fi) #1 !dbg !1572 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %fi.addr = alloca %struct.functionInfo*, align 8
  %flagcount = alloca i32, align 4
  %flag = alloca %struct.scriptFlag*, align 8
  %flag3 = alloca %struct.scriptFlag*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1575, metadata !DIExpression()), !dbg !1576
  store %struct.functionInfo* %fi, %struct.functionInfo** %fi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi.addr, metadata !1577, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.declare(metadata i32* %flagcount, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i32 0, i32* %flagcount, align 4, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct.scriptFlag** %flag, metadata !1581, metadata !DIExpression()), !dbg !1589
  store %struct.scriptFlag* getelementptr inbounds ([0 x %struct.scriptFlag], [0 x %struct.scriptFlag]* @scripts_flags_def, i64 0, i64 0), %struct.scriptFlag** %flag, align 8, !dbg !1589
  br label %for.cond, !dbg !1590

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1591
  %str = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %0, i32 0, i32 1, !dbg !1593
  %1 = load i8*, i8** %str, align 8, !dbg !1593
  %tobool = icmp ne i8* %1, null, !dbg !1594
  br i1 %tobool, label %for.body, label %for.end, !dbg !1594

for.body:                                         ; preds = %for.cond
  %2 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !1595
  %f_flags = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %2, i32 0, i32 4, !dbg !1598
  %3 = load i64, i64* %f_flags, align 8, !dbg !1598
  %4 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1599
  %flag1 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %4, i32 0, i32 0, !dbg !1600
  %5 = load i64, i64* %flag1, align 8, !dbg !1600
  %and = and i64 %3, %5, !dbg !1601
  %tobool2 = icmp ne i64 %and, 0, !dbg !1601
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1602

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %flagcount, align 4, !dbg !1603
  %inc = add nsw i32 %6, 1, !dbg !1603
  store i32 %inc, i32* %flagcount, align 4, !dbg !1603
  br label %if.end, !dbg !1605

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1606

for.inc:                                          ; preds = %if.end
  %7 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1607
  %incdec.ptr = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %7, i32 1, !dbg !1607
  store %struct.scriptFlag* %incdec.ptr, %struct.scriptFlag** %flag, align 8, !dbg !1607
  br label %for.cond, !dbg !1608, !llvm.loop !1609

for.end:                                          ; preds = %for.cond
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1611
  %9 = load i32, i32* %flagcount, align 4, !dbg !1612
  %conv = sext i32 %9 to i64, !dbg !1612
  call void @addReplySetLen(%struct.client* %8, i64 %conv), !dbg !1613
  call void @llvm.dbg.declare(metadata %struct.scriptFlag** %flag3, metadata !1614, metadata !DIExpression()), !dbg !1616
  store %struct.scriptFlag* getelementptr inbounds ([0 x %struct.scriptFlag], [0 x %struct.scriptFlag]* @scripts_flags_def, i64 0, i64 0), %struct.scriptFlag** %flag3, align 8, !dbg !1616
  br label %for.cond4, !dbg !1617

for.cond4:                                        ; preds = %for.inc15, %for.end
  %10 = load %struct.scriptFlag*, %struct.scriptFlag** %flag3, align 8, !dbg !1618
  %str5 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %10, i32 0, i32 1, !dbg !1620
  %11 = load i8*, i8** %str5, align 8, !dbg !1620
  %tobool6 = icmp ne i8* %11, null, !dbg !1621
  br i1 %tobool6, label %for.body7, label %for.end17, !dbg !1621

for.body7:                                        ; preds = %for.cond4
  %12 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !1622
  %f_flags8 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %12, i32 0, i32 4, !dbg !1625
  %13 = load i64, i64* %f_flags8, align 8, !dbg !1625
  %14 = load %struct.scriptFlag*, %struct.scriptFlag** %flag3, align 8, !dbg !1626
  %flag9 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %14, i32 0, i32 0, !dbg !1627
  %15 = load i64, i64* %flag9, align 8, !dbg !1627
  %and10 = and i64 %13, %15, !dbg !1628
  %tobool11 = icmp ne i64 %and10, 0, !dbg !1628
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !1629

if.then12:                                        ; preds = %for.body7
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1630
  %17 = load %struct.scriptFlag*, %struct.scriptFlag** %flag3, align 8, !dbg !1632
  %str13 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %17, i32 0, i32 1, !dbg !1633
  %18 = load i8*, i8** %str13, align 8, !dbg !1633
  call void @addReplyStatus(%struct.client* %16, i8* %18), !dbg !1634
  br label %if.end14, !dbg !1635

if.end14:                                         ; preds = %if.then12, %for.body7
  br label %for.inc15, !dbg !1636

for.inc15:                                        ; preds = %if.end14
  %19 = load %struct.scriptFlag*, %struct.scriptFlag** %flag3, align 8, !dbg !1637
  %incdec.ptr16 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %19, i32 1, !dbg !1637
  store %struct.scriptFlag* %incdec.ptr16, %struct.scriptFlag** %flag3, align 8, !dbg !1637
  br label %for.cond4, !dbg !1638, !llvm.loop !1639

for.end17:                                        ; preds = %for.cond4
  ret void, !dbg !1641
}

declare dso_local void @setDeferredArrayLen(%struct.client*, i8*, i64) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionDeleteCommand(%struct.client* %c) #1 !dbg !1642 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %function_name = alloca %struct.redisObject*, align 8
  %li = alloca %struct.functionLibInfo*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1643, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.declare(metadata %struct.redisObject** %function_name, metadata !1645, metadata !DIExpression()), !dbg !1646
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1647
  %argv = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 10, !dbg !1648
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1648
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 2, !dbg !1647
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1647
  store %struct.redisObject* %2, %struct.redisObject** %function_name, align 8, !dbg !1646
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li, metadata !1649, metadata !DIExpression()), !dbg !1650
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1651
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 0, !dbg !1652
  %4 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !1652
  %5 = load %struct.redisObject*, %struct.redisObject** %function_name, align 8, !dbg !1653
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i32 0, i32 2, !dbg !1654
  %6 = load i8*, i8** %ptr, align 8, !dbg !1654
  %call = call i8* @dictFetchValue(%struct.dict* %4, i8* %6), !dbg !1655
  %7 = bitcast i8* %call to %struct.functionLibInfo*, !dbg !1655
  store %struct.functionLibInfo* %7, %struct.functionLibInfo** %li, align 8, !dbg !1650
  %8 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1656
  %tobool = icmp ne %struct.functionLibInfo* %8, null, !dbg !1656
  br i1 %tobool, label %if.end, label %if.then, !dbg !1658

if.then:                                          ; preds = %entry
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1659
  call void @addReplyError(%struct.client* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0)), !dbg !1661
  br label %return, !dbg !1662

if.end:                                           ; preds = %entry
  %10 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1663
  %11 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1664
  call void @libraryUnlink(%struct.functionsLibCtx* %10, %struct.functionLibInfo* %11), !dbg !1665
  %12 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1666
  call void @engineLibraryFree(%struct.functionLibInfo* %12), !dbg !1667
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1668
  %inc = add nsw i64 %13, 1, !dbg !1668
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !1668
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1669
  %15 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !1670
  call void @addReply(%struct.client* %14, %struct.redisObject* %15), !dbg !1671
  br label %return, !dbg !1672

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1672
}

; Function Attrs: noinline nounwind uwtable
define internal void @libraryUnlink(%struct.functionsLibCtx* %lib_ctx, %struct.functionLibInfo* %li) #1 !dbg !1673 {
entry:
  %lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  %li.addr = alloca %struct.functionLibInfo*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %ret = alloca i32, align 4
  %stats = alloca %struct.functionsLibEngineStats*, align 8
  store %struct.functionsLibCtx* %lib_ctx, %struct.functionsLibCtx** %lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %lib_ctx.addr, metadata !1676, metadata !DIExpression()), !dbg !1677
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !1678, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !1680, metadata !DIExpression()), !dbg !1681
  %0 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1682
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %0, i32 0, i32 1, !dbg !1683
  %1 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1683
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %1), !dbg !1684
  store %struct.dictIterator* %call, %struct.dictIterator** %iter, align 8, !dbg !1681
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !1685, metadata !DIExpression()), !dbg !1686
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !1686
  br label %while.cond, !dbg !1687

while.cond:                                       ; preds = %cond.end, %entry
  %2 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1688
  %call2 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %2), !dbg !1689
  store %struct.dictEntry* %call2, %struct.dictEntry** %entry1, align 8, !dbg !1690
  %tobool = icmp ne %struct.dictEntry* %call2, null, !dbg !1687
  br i1 %tobool, label %while.body, label %while.end, !dbg !1687

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !1691, metadata !DIExpression()), !dbg !1693
  %3 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !1694
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i32 0, i32 1, !dbg !1694
  %val = bitcast %union.anon* %v to i8**, !dbg !1694
  %4 = load i8*, i8** %val, align 8, !dbg !1694
  %5 = bitcast i8* %4 to %struct.functionInfo*, !dbg !1694
  store %struct.functionInfo* %5, %struct.functionInfo** %fi, align 8, !dbg !1693
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1695, metadata !DIExpression()), !dbg !1696
  %6 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1697
  %functions3 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %6, i32 0, i32 1, !dbg !1698
  %7 = load %struct.dict*, %struct.dict** %functions3, align 8, !dbg !1698
  %8 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1699
  %name = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %8, i32 0, i32 0, !dbg !1700
  %9 = load i8*, i8** %name, align 8, !dbg !1700
  %call4 = call i32 @dictDelete(%struct.dict* %7, i8* %9), !dbg !1701
  store i32 %call4, i32* %ret, align 4, !dbg !1696
  %10 = load i32, i32* %ret, align 4, !dbg !1702
  %cmp = icmp eq i32 %10, 0, !dbg !1702
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1702

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !1702

cond.false:                                       ; preds = %while.body
  call void @_serverAssert(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 289), !dbg !1702
  unreachable, !dbg !1702

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1702

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %11 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1703
  %call5 = call i64 @functionMallocSize(%struct.functionInfo* %11), !dbg !1704
  %12 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1705
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %12, i32 0, i32 2, !dbg !1706
  %13 = load i64, i64* %cache_memory, align 8, !dbg !1707
  %sub = sub i64 %13, %call5, !dbg !1707
  store i64 %sub, i64* %cache_memory, align 8, !dbg !1707
  br label %while.cond, !dbg !1687, !llvm.loop !1708

while.end:                                        ; preds = %while.cond
  %14 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !1710
  call void @dictReleaseIterator(%struct.dictIterator* %14), !dbg !1711
  %15 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1712
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %15, i32 0, i32 0, !dbg !1713
  %16 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !1713
  %17 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1714
  %name6 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %17, i32 0, i32 0, !dbg !1715
  %18 = load i8*, i8** %name6, align 8, !dbg !1715
  %call7 = call %struct.dictEntry* @dictUnlink(%struct.dict* %16, i8* %18), !dbg !1716
  store %struct.dictEntry* %call7, %struct.dictEntry** %entry1, align 8, !dbg !1717
  br label %do.body, !dbg !1718

do.body:                                          ; preds = %while.end
  %19 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1719
  %libraries8 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %19, i32 0, i32 0, !dbg !1719
  %20 = load %struct.dict*, %struct.dict** %libraries8, align 8, !dbg !1719
  %type = getelementptr inbounds %struct.dict, %struct.dict* %20, i32 0, i32 0, !dbg !1719
  %21 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !1719
  %valDup = getelementptr inbounds %struct.dictType, %struct.dictType* %21, i32 0, i32 2, !dbg !1719
  %valDup9 = bitcast {}** %valDup to i8* (%struct.dict*, i8*)**, !dbg !1719
  %22 = load i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)** %valDup9, align 8, !dbg !1719
  %tobool10 = icmp ne i8* (%struct.dict*, i8*)* %22, null, !dbg !1719
  br i1 %tobool10, label %if.then, label %if.else, !dbg !1722

if.then:                                          ; preds = %do.body
  %23 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1719
  %libraries11 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %23, i32 0, i32 0, !dbg !1719
  %24 = load %struct.dict*, %struct.dict** %libraries11, align 8, !dbg !1719
  %type12 = getelementptr inbounds %struct.dict, %struct.dict* %24, i32 0, i32 0, !dbg !1719
  %25 = load %struct.dictType*, %struct.dictType** %type12, align 8, !dbg !1719
  %valDup13 = getelementptr inbounds %struct.dictType, %struct.dictType* %25, i32 0, i32 2, !dbg !1719
  %valDup14 = bitcast {}** %valDup13 to i8* (%struct.dict*, i8*)**, !dbg !1719
  %26 = load i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)** %valDup14, align 8, !dbg !1719
  %27 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1719
  %libraries15 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %27, i32 0, i32 0, !dbg !1719
  %28 = load %struct.dict*, %struct.dict** %libraries15, align 8, !dbg !1719
  %call16 = call i8* %26(%struct.dict* %28, i8* null), !dbg !1719
  %29 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !1719
  %v17 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %29, i32 0, i32 1, !dbg !1719
  %val18 = bitcast %union.anon* %v17 to i8**, !dbg !1719
  store i8* %call16, i8** %val18, align 8, !dbg !1719
  br label %if.end, !dbg !1719

if.else:                                          ; preds = %do.body
  %30 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !1719
  %v19 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %30, i32 0, i32 1, !dbg !1719
  %val20 = bitcast %union.anon* %v19 to i8**, !dbg !1719
  store i8* null, i8** %val20, align 8, !dbg !1719
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end, !dbg !1722

do.end:                                           ; preds = %if.end
  %31 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1723
  %libraries21 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %31, i32 0, i32 0, !dbg !1724
  %32 = load %struct.dict*, %struct.dict** %libraries21, align 8, !dbg !1724
  %33 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !1725
  call void @dictFreeUnlinkedEntry(%struct.dict* %32, %struct.dictEntry* %33), !dbg !1726
  %34 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1727
  %call22 = call i64 @libraryMallocSize(%struct.functionLibInfo* %34), !dbg !1728
  %35 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1729
  %cache_memory23 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %35, i32 0, i32 2, !dbg !1730
  %36 = load i64, i64* %cache_memory23, align 8, !dbg !1731
  %sub24 = sub i64 %36, %call22, !dbg !1731
  store i64 %sub24, i64* %cache_memory23, align 8, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %stats, metadata !1732, metadata !DIExpression()), !dbg !1733
  %37 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !1734
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %37, i32 0, i32 3, !dbg !1735
  %38 = load %struct.dict*, %struct.dict** %engines_stats, align 8, !dbg !1735
  %39 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1736
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %39, i32 0, i32 2, !dbg !1737
  %40 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1737
  %name25 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %40, i32 0, i32 0, !dbg !1738
  %41 = load i8*, i8** %name25, align 8, !dbg !1738
  %call26 = call i8* @dictFetchValue(%struct.dict* %38, i8* %41), !dbg !1739
  %42 = bitcast i8* %call26 to %struct.functionsLibEngineStats*, !dbg !1739
  store %struct.functionsLibEngineStats* %42, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1733
  %43 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1740
  %tobool27 = icmp ne %struct.functionsLibEngineStats* %43, null, !dbg !1740
  br i1 %tobool27, label %cond.true28, label %cond.false29, !dbg !1740

cond.true28:                                      ; preds = %do.end
  br label %cond.end31, !dbg !1740

cond.false29:                                     ; preds = %do.end
  call void @_serverAssert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 300), !dbg !1740
  unreachable, !dbg !1740

unreachable.cont30:                               ; No predecessors!
  br label %cond.end31, !dbg !1740

cond.end31:                                       ; preds = %unreachable.cont30, %cond.true28
  %44 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1741
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %44, i32 0, i32 0, !dbg !1742
  %45 = load i64, i64* %n_lib, align 8, !dbg !1743
  %dec = add i64 %45, -1, !dbg !1743
  store i64 %dec, i64* %n_lib, align 8, !dbg !1743
  %46 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1744
  %functions32 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %46, i32 0, i32 1, !dbg !1744
  %47 = load %struct.dict*, %struct.dict** %functions32, align 8, !dbg !1744
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %47, i32 0, i32 2, !dbg !1744
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !1744
  %48 = load i64, i64* %arrayidx, align 8, !dbg !1744
  %49 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1744
  %functions33 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %49, i32 0, i32 1, !dbg !1744
  %50 = load %struct.dict*, %struct.dict** %functions33, align 8, !dbg !1744
  %ht_used34 = getelementptr inbounds %struct.dict, %struct.dict* %50, i32 0, i32 2, !dbg !1744
  %arrayidx35 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used34, i64 0, i64 1, !dbg !1744
  %51 = load i64, i64* %arrayidx35, align 8, !dbg !1744
  %add = add i64 %48, %51, !dbg !1744
  %52 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !1745
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %52, i32 0, i32 1, !dbg !1746
  %53 = load i64, i64* %n_functions, align 8, !dbg !1747
  %sub36 = sub i64 %53, %add, !dbg !1747
  store i64 %sub36, i64* %n_functions, align 8, !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: noinline nounwind uwtable
define internal void @engineLibraryFree(%struct.functionLibInfo* %li) #1 !dbg !1749 {
entry:
  %li.addr = alloca %struct.functionLibInfo*, align 8
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !1752, metadata !DIExpression()), !dbg !1753
  %0 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1754
  %tobool = icmp ne %struct.functionLibInfo* %0, null, !dbg !1754
  br i1 %tobool, label %if.end, label %if.then, !dbg !1756

if.then:                                          ; preds = %entry
  br label %return, !dbg !1757

if.end:                                           ; preds = %entry
  %1 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1759
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %1, i32 0, i32 1, !dbg !1760
  %2 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1760
  call void @dictRelease(%struct.dict* %2), !dbg !1761
  %3 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1762
  %name = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %3, i32 0, i32 0, !dbg !1763
  %4 = load i8*, i8** %name, align 8, !dbg !1763
  call void @sdsfree(i8* %4), !dbg !1764
  %5 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1765
  %code = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %5, i32 0, i32 3, !dbg !1766
  %6 = load i8*, i8** %code, align 8, !dbg !1766
  call void @sdsfree(i8* %6), !dbg !1767
  %7 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !1768
  %8 = bitcast %struct.functionLibInfo* %7 to i8*, !dbg !1768
  call void @zfree(i8* %8), !dbg !1769
  br label %return, !dbg !1770

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1770
}

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionKillCommand(%struct.client* %c) #1 !dbg !1771 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1772, metadata !DIExpression()), !dbg !1773
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1774
  call void @scriptKill(%struct.client* %0, i32 0), !dbg !1775
  ret void, !dbg !1776
}

declare dso_local void @scriptKill(%struct.client*, i32) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @fcallGetCommandFlags(%struct.client* %c, i64 %cmd_flags) #1 !dbg !1777 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca %struct.client*, align 8
  %cmd_flags.addr = alloca i64, align 8
  %function_name = alloca %struct.redisObject*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %script_flags = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1780, metadata !DIExpression()), !dbg !1781
  store i64 %cmd_flags, i64* %cmd_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmd_flags.addr, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata %struct.redisObject** %function_name, metadata !1784, metadata !DIExpression()), !dbg !1785
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1786
  %argv = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 10, !dbg !1787
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1787
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 1, !dbg !1786
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1786
  store %struct.redisObject* %2, %struct.redisObject** %function_name, align 8, !dbg !1785
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1788
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 1, !dbg !1789
  %4 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1789
  %5 = load %struct.redisObject*, %struct.redisObject** %function_name, align 8, !dbg !1790
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i32 0, i32 2, !dbg !1791
  %6 = load i8*, i8** %ptr, align 8, !dbg !1791
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %4, i8* %6), !dbg !1792
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1793
  %cur_script = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 29, !dbg !1794
  store %struct.dictEntry* %call, %struct.dictEntry** %cur_script, align 8, !dbg !1795
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1796
  %cur_script1 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 29, !dbg !1798
  %9 = load %struct.dictEntry*, %struct.dictEntry** %cur_script1, align 8, !dbg !1798
  %tobool = icmp ne %struct.dictEntry* %9, null, !dbg !1796
  br i1 %tobool, label %if.end, label %if.then, !dbg !1799

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %cmd_flags.addr, align 8, !dbg !1800
  store i64 %10, i64* %retval, align 8, !dbg !1801
  br label %return, !dbg !1801

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !1802, metadata !DIExpression()), !dbg !1803
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1804
  %cur_script2 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 29, !dbg !1804
  %12 = load %struct.dictEntry*, %struct.dictEntry** %cur_script2, align 8, !dbg !1804
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %12, i32 0, i32 1, !dbg !1804
  %val = bitcast %union.anon* %v to i8**, !dbg !1804
  %13 = load i8*, i8** %val, align 8, !dbg !1804
  %14 = bitcast i8* %13 to %struct.functionInfo*, !dbg !1804
  store %struct.functionInfo* %14, %struct.functionInfo** %fi, align 8, !dbg !1803
  call void @llvm.dbg.declare(metadata i64* %script_flags, metadata !1805, metadata !DIExpression()), !dbg !1806
  %15 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1807
  %f_flags = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %15, i32 0, i32 4, !dbg !1808
  %16 = load i64, i64* %f_flags, align 8, !dbg !1808
  store i64 %16, i64* %script_flags, align 8, !dbg !1806
  %17 = load i64, i64* %cmd_flags.addr, align 8, !dbg !1809
  %18 = load i64, i64* %script_flags, align 8, !dbg !1810
  %call3 = call i64 @scriptFlagsToCmdFlags(i64 %17, i64 %18), !dbg !1811
  store i64 %call3, i64* %retval, align 8, !dbg !1812
  br label %return, !dbg !1812

return:                                           ; preds = %if.end, %if.then
  %19 = load i64, i64* %retval, align 8, !dbg !1813
  ret i64 %19, !dbg !1813
}

declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) #0

declare dso_local i64 @scriptFlagsToCmdFlags(i64, i64) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @fcallCommand(%struct.client* %c) #1 !dbg !1814 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1815, metadata !DIExpression()), !dbg !1816
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1817
  call void @fcallCommandGeneric(%struct.client* %0, i32 0), !dbg !1818
  ret void, !dbg !1819
}

; Function Attrs: noinline nounwind uwtable
define internal void @fcallCommandGeneric(%struct.client* %c, i32 %ro) #1 !dbg !1820 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %ro.addr = alloca i32, align 4
  %function_name = alloca %struct.redisObject*, align 8
  %de = alloca %struct.dictEntry*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %engine = alloca %struct.engine*, align 8
  %numkeys = alloca i64, align 8
  %run_ctx = alloca %struct.scriptRunCtx, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1823, metadata !DIExpression()), !dbg !1824
  store i32 %ro, i32* %ro.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ro.addr, metadata !1825, metadata !DIExpression()), !dbg !1826
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1827
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 64), align 8, !dbg !1828
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1829
  %db = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 4, !dbg !1830
  %3 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !1830
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %3, i32 0, i32 5, !dbg !1831
  %4 = load i32, i32* %id, align 8, !dbg !1831
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1832
  %argv = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 10, !dbg !1833
  %6 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1833
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1834
  %argc = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 9, !dbg !1835
  %8 = load i32, i32* %argc, align 8, !dbg !1835
  call void @replicationFeedMonitors(%struct.client* %0, %struct.list* %1, i32 %4, %struct.redisObject** %6, i32 %8), !dbg !1836
  call void @llvm.dbg.declare(metadata %struct.redisObject** %function_name, metadata !1837, metadata !DIExpression()), !dbg !1838
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1839
  %argv1 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 10, !dbg !1840
  %10 = load %struct.redisObject**, %struct.redisObject*** %argv1, align 8, !dbg !1840
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 1, !dbg !1839
  %11 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1839
  store %struct.redisObject* %11, %struct.redisObject** %function_name, align 8, !dbg !1838
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %de, metadata !1841, metadata !DIExpression()), !dbg !1842
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1843
  %cur_script = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 29, !dbg !1844
  %13 = load %struct.dictEntry*, %struct.dictEntry** %cur_script, align 8, !dbg !1844
  store %struct.dictEntry* %13, %struct.dictEntry** %de, align 8, !dbg !1842
  %14 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1845
  %tobool = icmp ne %struct.dictEntry* %14, null, !dbg !1845
  br i1 %tobool, label %if.end, label %if.then, !dbg !1847

if.then:                                          ; preds = %entry
  %15 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !1848
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %15, i32 0, i32 1, !dbg !1849
  %16 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !1849
  %17 = load %struct.redisObject*, %struct.redisObject** %function_name, align 8, !dbg !1850
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i32 0, i32 2, !dbg !1851
  %18 = load i8*, i8** %ptr, align 8, !dbg !1851
  %call = call %struct.dictEntry* @dictFind(%struct.dict* %16, i8* %18), !dbg !1852
  store %struct.dictEntry* %call, %struct.dictEntry** %de, align 8, !dbg !1853
  br label %if.end, !dbg !1854

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1855
  %tobool2 = icmp ne %struct.dictEntry* %19, null, !dbg !1855
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1857

if.then3:                                         ; preds = %if.end
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1858
  call void @addReplyError(%struct.client* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i64 0, i64 0)), !dbg !1860
  br label %return, !dbg !1861

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !1862, metadata !DIExpression()), !dbg !1863
  %21 = load %struct.dictEntry*, %struct.dictEntry** %de, align 8, !dbg !1864
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %21, i32 0, i32 1, !dbg !1864
  %val = bitcast %union.anon* %v to i8**, !dbg !1864
  %22 = load i8*, i8** %val, align 8, !dbg !1864
  %23 = bitcast i8* %22 to %struct.functionInfo*, !dbg !1864
  store %struct.functionInfo* %23, %struct.functionInfo** %fi, align 8, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct.engine** %engine, metadata !1865, metadata !DIExpression()), !dbg !1866
  %24 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1867
  %li = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %24, i32 0, i32 2, !dbg !1868
  %25 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !1868
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %25, i32 0, i32 2, !dbg !1869
  %26 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !1869
  %engine5 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %26, i32 0, i32 1, !dbg !1870
  %27 = load %struct.engine*, %struct.engine** %engine5, align 8, !dbg !1870
  store %struct.engine* %27, %struct.engine** %engine, align 8, !dbg !1866
  call void @llvm.dbg.declare(metadata i64* %numkeys, metadata !1871, metadata !DIExpression()), !dbg !1872
  %28 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1873
  %argv6 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 10, !dbg !1875
  %29 = load %struct.redisObject**, %struct.redisObject*** %argv6, align 8, !dbg !1875
  %arrayidx7 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %29, i64 2, !dbg !1873
  %30 = load %struct.redisObject*, %struct.redisObject** %arrayidx7, align 8, !dbg !1873
  %call8 = call i32 @getLongLongFromObject(%struct.redisObject* %30, i64* %numkeys), !dbg !1876
  %cmp = icmp ne i32 %call8, 0, !dbg !1877
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !1878

if.then9:                                         ; preds = %if.end4
  %31 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1879
  call void @addReplyError(%struct.client* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i64 0, i64 0)), !dbg !1881
  br label %return, !dbg !1882

if.end10:                                         ; preds = %if.end4
  %32 = load i64, i64* %numkeys, align 8, !dbg !1883
  %33 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1885
  %argc11 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 9, !dbg !1886
  %34 = load i32, i32* %argc11, align 8, !dbg !1886
  %sub = sub nsw i32 %34, 3, !dbg !1887
  %conv = sext i32 %sub to i64, !dbg !1888
  %cmp12 = icmp sgt i64 %32, %conv, !dbg !1889
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !1890

if.then14:                                        ; preds = %if.end10
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1891
  call void @addReplyError(%struct.client* %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.88, i64 0, i64 0)), !dbg !1893
  br label %return, !dbg !1894

if.else:                                          ; preds = %if.end10
  %36 = load i64, i64* %numkeys, align 8, !dbg !1895
  %cmp15 = icmp slt i64 %36, 0, !dbg !1897
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1898

if.then17:                                        ; preds = %if.else
  %37 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1899
  call void @addReplyError(%struct.client* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i64 0, i64 0)), !dbg !1901
  br label %return, !dbg !1902

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx* %run_ctx, metadata !1903, metadata !DIExpression()), !dbg !1904
  %38 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1905
  %li20 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %38, i32 0, i32 2, !dbg !1907
  %39 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li20, align 8, !dbg !1907
  %ei21 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %39, i32 0, i32 2, !dbg !1908
  %40 = load %struct.engineInfo*, %struct.engineInfo** %ei21, align 8, !dbg !1908
  %c22 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %40, i32 0, i32 2, !dbg !1909
  %41 = load %struct.client*, %struct.client** %c22, align 8, !dbg !1909
  %42 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1910
  %43 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1911
  %name = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %43, i32 0, i32 0, !dbg !1912
  %44 = load i8*, i8** %name, align 8, !dbg !1912
  %45 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1913
  %f_flags = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %45, i32 0, i32 4, !dbg !1914
  %46 = load i64, i64* %f_flags, align 8, !dbg !1914
  %47 = load i32, i32* %ro.addr, align 4, !dbg !1915
  %call23 = call i32 @scriptPrepareForRun(%struct.scriptRunCtx* %run_ctx, %struct.client* %41, %struct.client* %42, i8* %44, i64 %46, i32 %47), !dbg !1916
  %cmp24 = icmp ne i32 %call23, 0, !dbg !1917
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1918

if.then26:                                        ; preds = %if.end19
  br label %return, !dbg !1919

if.end27:                                         ; preds = %if.end19
  %48 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !1920
  %call28 = getelementptr inbounds %struct.engine, %struct.engine* %48, i32 0, i32 2, !dbg !1921
  %49 = load void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)*, void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)** %call28, align 8, !dbg !1921
  %50 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !1922
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %50, i32 0, i32 0, !dbg !1923
  %51 = load i8*, i8** %engine_ctx, align 8, !dbg !1923
  %52 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !1924
  %function = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %52, i32 0, i32 1, !dbg !1925
  %53 = load i8*, i8** %function, align 8, !dbg !1925
  %54 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1926
  %argv29 = getelementptr inbounds %struct.client, %struct.client* %54, i32 0, i32 10, !dbg !1927
  %55 = load %struct.redisObject**, %struct.redisObject*** %argv29, align 8, !dbg !1927
  %add.ptr = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %55, i64 3, !dbg !1928
  %56 = load i64, i64* %numkeys, align 8, !dbg !1929
  %57 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1930
  %argv30 = getelementptr inbounds %struct.client, %struct.client* %57, i32 0, i32 10, !dbg !1931
  %58 = load %struct.redisObject**, %struct.redisObject*** %argv30, align 8, !dbg !1931
  %add.ptr31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %58, i64 3, !dbg !1932
  %59 = load i64, i64* %numkeys, align 8, !dbg !1933
  %add.ptr32 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr31, i64 %59, !dbg !1934
  %60 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1935
  %argc33 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 9, !dbg !1936
  %61 = load i32, i32* %argc33, align 8, !dbg !1936
  %sub34 = sub nsw i32 %61, 3, !dbg !1937
  %conv35 = sext i32 %sub34 to i64, !dbg !1935
  %62 = load i64, i64* %numkeys, align 8, !dbg !1938
  %sub36 = sub nsw i64 %conv35, %62, !dbg !1939
  call void %49(%struct.scriptRunCtx* %run_ctx, i8* %51, i8* %53, %struct.redisObject** %add.ptr, i64 %56, %struct.redisObject** %add.ptr32, i64 %sub36), !dbg !1920
  call void @scriptResetRun(%struct.scriptRunCtx* %run_ctx), !dbg !1940
  br label %return, !dbg !1941

return:                                           ; preds = %if.end27, %if.then26, %if.then17, %if.then14, %if.then9, %if.then3
  ret void, !dbg !1941
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fcallroCommand(%struct.client* %c) #1 !dbg !1942 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1943, metadata !DIExpression()), !dbg !1944
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1945
  call void @fcallCommandGeneric(%struct.client* %0, i32 1), !dbg !1946
  ret void, !dbg !1947
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionDumpCommand(%struct.client* %c) #1 !dbg !1948 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %buf = alloca [2 x i8], align 1
  %crc = alloca i64, align 8
  %payload = alloca %struct._rio, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1949, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !1951, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.declare(metadata i64* %crc, metadata !1954, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.declare(metadata %struct._rio* %payload, metadata !1956, metadata !DIExpression()), !dbg !2065
  %call = call i8* @sdsempty(), !dbg !2066
  call void @rioInitWithBuffer(%struct._rio* %payload, i8* %call), !dbg !2067
  %call1 = call i64 @rdbSaveFunctions(%struct._rio* %payload), !dbg !2068
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !2069
  store i8 10, i8* %arrayidx, align 1, !dbg !2070
  %arrayidx2 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !2071
  store i8 0, i8* %arrayidx2, align 1, !dbg !2072
  %io = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2073
  %buffer = bitcast %union.anon.6* %io to %struct.anon.7*, !dbg !2074
  %ptr = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer, i32 0, i32 0, !dbg !2075
  %0 = load i8*, i8** %ptr, align 8, !dbg !2075
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !2076
  %call3 = call i8* @sdscatlen(i8* %0, i8* %arraydecay, i64 2), !dbg !2077
  %io4 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2078
  %buffer5 = bitcast %union.anon.6* %io4 to %struct.anon.7*, !dbg !2079
  %ptr6 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer5, i32 0, i32 0, !dbg !2080
  store i8* %call3, i8** %ptr6, align 8, !dbg !2081
  %io7 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2082
  %buffer8 = bitcast %union.anon.6* %io7 to %struct.anon.7*, !dbg !2083
  %ptr9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer8, i32 0, i32 0, !dbg !2084
  %1 = load i8*, i8** %ptr9, align 8, !dbg !2084
  %io10 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2085
  %buffer11 = bitcast %union.anon.6* %io10 to %struct.anon.7*, !dbg !2086
  %ptr12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer11, i32 0, i32 0, !dbg !2087
  %2 = load i8*, i8** %ptr12, align 8, !dbg !2087
  %call13 = call i64 @sdslen(i8* %2), !dbg !2088
  %call14 = call i64 @crc64(i64 0, i8* %1, i64 %call13), !dbg !2089
  store i64 %call14, i64* %crc, align 8, !dbg !2090
  %io15 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2091
  %buffer16 = bitcast %union.anon.6* %io15 to %struct.anon.7*, !dbg !2092
  %ptr17 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer16, i32 0, i32 0, !dbg !2093
  %3 = load i8*, i8** %ptr17, align 8, !dbg !2093
  %4 = bitcast i64* %crc to i8*, !dbg !2094
  %call18 = call i8* @sdscatlen(i8* %3, i8* %4, i64 8), !dbg !2095
  %io19 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2096
  %buffer20 = bitcast %union.anon.6* %io19 to %struct.anon.7*, !dbg !2097
  %ptr21 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer20, i32 0, i32 0, !dbg !2098
  store i8* %call18, i8** %ptr21, align 8, !dbg !2099
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2100
  %io22 = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2101
  %buffer23 = bitcast %union.anon.6* %io22 to %struct.anon.7*, !dbg !2102
  %ptr24 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer23, i32 0, i32 0, !dbg !2103
  %6 = load i8*, i8** %ptr24, align 8, !dbg !2103
  call void @addReplyBulkSds(%struct.client* %5, i8* %6), !dbg !2104
  ret void, !dbg !2105
}

declare dso_local void @rioInitWithBuffer(%struct._rio*, i8*) #0

declare dso_local i64 @rdbSaveFunctions(%struct._rio*) #0

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #0

declare dso_local i64 @crc64(i64, i8*, i64) #0

declare dso_local void @addReplyBulkSds(%struct.client*, i8*) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionRestoreCommand(%struct.client* %c) #1 !dbg !2106 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %restore_replicy = alloca i32, align 4
  %data = alloca i8*, align 8
  %data_len = alloca i64, align 8
  %payload = alloca %struct._rio, align 8
  %err = alloca i8*, align 8
  %restore_policy_str = alloca i8*, align 8
  %rdbver = alloca i16, align 2
  %functions_lib_ctx = alloca %struct.functionsLibCtx*, align 8
  %type = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2107, metadata !DIExpression()), !dbg !2108
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2109
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !2111
  %1 = load i32, i32* %argc, align 8, !dbg !2111
  %cmp = icmp sgt i32 %1, 4, !dbg !2112
  br i1 %cmp, label %if.then, label %if.end, !dbg !2113

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2114
  call void @addReplySubcommandSyntaxError(%struct.client* %2), !dbg !2116
  br label %if.end64, !dbg !2117

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %restore_replicy, metadata !2118, metadata !DIExpression()), !dbg !2120
  store i32 1, i32* %restore_replicy, align 4, !dbg !2120
  call void @llvm.dbg.declare(metadata i8** %data, metadata !2121, metadata !DIExpression()), !dbg !2122
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2123
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !2124
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2124
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 2, !dbg !2123
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2123
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i32 0, i32 2, !dbg !2125
  %6 = load i8*, i8** %ptr, align 8, !dbg !2125
  store i8* %6, i8** %data, align 8, !dbg !2122
  call void @llvm.dbg.declare(metadata i64* %data_len, metadata !2126, metadata !DIExpression()), !dbg !2127
  %7 = load i8*, i8** %data, align 8, !dbg !2128
  %call = call i64 @sdslen(i8* %7), !dbg !2129
  store i64 %call, i64* %data_len, align 8, !dbg !2127
  call void @llvm.dbg.declare(metadata %struct._rio* %payload, metadata !2130, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.declare(metadata i8** %err, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i8* null, i8** %err, align 8, !dbg !2133
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2134
  %argc1 = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 9, !dbg !2136
  %9 = load i32, i32* %argc1, align 8, !dbg !2136
  %cmp2 = icmp eq i32 %9, 4, !dbg !2137
  br i1 %cmp2, label %if.then3, label %if.end20, !dbg !2138

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %restore_policy_str, metadata !2139, metadata !DIExpression()), !dbg !2141
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2142
  %argv4 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 10, !dbg !2143
  %11 = load %struct.redisObject**, %struct.redisObject*** %argv4, align 8, !dbg !2143
  %arrayidx5 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %11, i64 3, !dbg !2142
  %12 = load %struct.redisObject*, %struct.redisObject** %arrayidx5, align 8, !dbg !2142
  %ptr6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i32 0, i32 2, !dbg !2144
  %13 = load i8*, i8** %ptr6, align 8, !dbg !2144
  store i8* %13, i8** %restore_policy_str, align 8, !dbg !2141
  %14 = load i8*, i8** %restore_policy_str, align 8, !dbg !2145
  %call7 = call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !2147
  %tobool = icmp ne i32 %call7, 0, !dbg !2147
  br i1 %tobool, label %if.else, label %if.then8, !dbg !2148

if.then8:                                         ; preds = %if.then3
  store i32 1, i32* %restore_replicy, align 4, !dbg !2149
  br label %if.end19, !dbg !2151

if.else:                                          ; preds = %if.then3
  %15 = load i8*, i8** %restore_policy_str, align 8, !dbg !2152
  %call9 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !2154
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2154
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !2155

if.then11:                                        ; preds = %if.else
  store i32 2, i32* %restore_replicy, align 4, !dbg !2156
  br label %if.end18, !dbg !2158

if.else12:                                        ; preds = %if.else
  %16 = load i8*, i8** %restore_policy_str, align 8, !dbg !2159
  %call13 = call i32 @strcasecmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !2161
  %tobool14 = icmp ne i32 %call13, 0, !dbg !2161
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !2162

if.then15:                                        ; preds = %if.else12
  store i32 0, i32* %restore_replicy, align 4, !dbg !2163
  br label %if.end17, !dbg !2165

if.else16:                                        ; preds = %if.else12
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2166
  call void @addReplyError(%struct.client* %17, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.26, i64 0, i64 0)), !dbg !2168
  br label %if.end64, !dbg !2169

if.end17:                                         ; preds = %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then8
  br label %if.end20, !dbg !2170

if.end20:                                         ; preds = %if.end19, %if.end
  call void @llvm.dbg.declare(metadata i16* %rdbver, metadata !2171, metadata !DIExpression()), !dbg !2172
  %18 = load i8*, i8** %data, align 8, !dbg !2173
  %19 = load i64, i64* %data_len, align 8, !dbg !2175
  %call21 = call i32 @verifyDumpPayload(i8* %18, i64 %19, i16* %rdbver), !dbg !2176
  %cmp22 = icmp ne i32 %call21, 0, !dbg !2177
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !2178

if.then23:                                        ; preds = %if.end20
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2179
  call void @addReplyError(%struct.client* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0)), !dbg !2181
  br label %if.end64, !dbg !2182

if.end24:                                         ; preds = %if.end20
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx, metadata !2183, metadata !DIExpression()), !dbg !2184
  %call25 = call %struct.functionsLibCtx* @functionsLibCtxCreate(), !dbg !2185
  store %struct.functionsLibCtx* %call25, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2184
  %21 = load i8*, i8** %data, align 8, !dbg !2186
  call void @rioInitWithBuffer(%struct._rio* %payload, i8* %21), !dbg !2187
  br label %while.cond, !dbg !2188

while.cond:                                       ; preds = %if.end45, %if.end24
  %22 = load i64, i64* %data_len, align 8, !dbg !2189
  %io = getelementptr inbounds %struct._rio, %struct._rio* %payload, i32 0, i32 9, !dbg !2190
  %buffer = bitcast %union.anon.6* %io to %struct.anon.7*, !dbg !2191
  %pos = getelementptr inbounds %struct.anon.7, %struct.anon.7* %buffer, i32 0, i32 1, !dbg !2192
  %23 = load i64, i64* %pos, align 8, !dbg !2192
  %sub = sub i64 %22, %23, !dbg !2193
  %cmp26 = icmp ugt i64 %sub, 10, !dbg !2194
  br i1 %cmp26, label %while.body, label %while.end, !dbg !2188

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %type, metadata !2195, metadata !DIExpression()), !dbg !2197
  %call27 = call i32 @rdbLoadType(%struct._rio* %payload), !dbg !2198
  store i32 %call27, i32* %type, align 4, !dbg !2200
  %cmp28 = icmp eq i32 %call27, -1, !dbg !2201
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !2202

if.then29:                                        ; preds = %while.body
  %call30 = call i8* @sdsnew(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0)), !dbg !2203
  store i8* %call30, i8** %err, align 8, !dbg !2205
  br label %load_error, !dbg !2206

if.end31:                                         ; preds = %while.body
  %24 = load i32, i32* %type, align 4, !dbg !2207
  %cmp32 = icmp ne i32 %24, 246, !dbg !2209
  br i1 %cmp32, label %land.lhs.true, label %if.end36, !dbg !2210

land.lhs.true:                                    ; preds = %if.end31
  %25 = load i32, i32* %type, align 4, !dbg !2211
  %cmp33 = icmp ne i32 %25, 245, !dbg !2212
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !2213

if.then34:                                        ; preds = %land.lhs.true
  %call35 = call i8* @sdsnew(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0)), !dbg !2214
  store i8* %call35, i8** %err, align 8, !dbg !2216
  br label %load_error, !dbg !2217

if.end36:                                         ; preds = %land.lhs.true, %if.end31
  %26 = load i16, i16* %rdbver, align 2, !dbg !2218
  %conv = zext i16 %26 to i32, !dbg !2218
  %27 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2220
  %28 = load i32, i32* %type, align 4, !dbg !2221
  %call37 = call i32 @rdbFunctionLoad(%struct._rio* %payload, i32 %conv, %struct.functionsLibCtx* %27, i32 %28, i32 0, i8** %err), !dbg !2222
  %cmp38 = icmp ne i32 %call37, 0, !dbg !2223
  br i1 %cmp38, label %if.then40, label %if.end45, !dbg !2224

if.then40:                                        ; preds = %if.end36
  %29 = load i8*, i8** %err, align 8, !dbg !2225
  %tobool41 = icmp ne i8* %29, null, !dbg !2225
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !2228

if.then42:                                        ; preds = %if.then40
  %call43 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0)), !dbg !2229
  store i8* %call43, i8** %err, align 8, !dbg !2231
  br label %if.end44, !dbg !2232

if.end44:                                         ; preds = %if.then42, %if.then40
  br label %load_error, !dbg !2233

if.end45:                                         ; preds = %if.end36
  br label %while.cond, !dbg !2188, !llvm.loop !2234

while.end:                                        ; preds = %while.cond
  %30 = load i32, i32* %restore_replicy, align 4, !dbg !2236
  %cmp46 = icmp eq i32 %30, 0, !dbg !2238
  br i1 %cmp46, label %if.then48, label %if.else49, !dbg !2239

if.then48:                                        ; preds = %while.end
  %31 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2240
  call void @functionsLibCtxSwapWithCurrent(%struct.functionsLibCtx* %31), !dbg !2242
  store %struct.functionsLibCtx* null, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2243
  br label %if.end57, !dbg !2244

if.else49:                                        ; preds = %while.end
  %32 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !2245
  %33 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2248
  %34 = load i32, i32* %restore_replicy, align 4, !dbg !2249
  %cmp50 = icmp eq i32 %34, 2, !dbg !2250
  %conv51 = zext i1 %cmp50 to i32, !dbg !2250
  %call52 = call i32 @libraryJoin(%struct.functionsLibCtx* %32, %struct.functionsLibCtx* %33, i32 %conv51, i8** %err), !dbg !2251
  %cmp53 = icmp ne i32 %call52, 0, !dbg !2252
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !2253

if.then55:                                        ; preds = %if.else49
  br label %load_error, !dbg !2254

if.end56:                                         ; preds = %if.else49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then48
  %35 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2256
  %inc = add nsw i64 %35, 1, !dbg !2256
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2256
  br label %load_error, !dbg !2257

load_error:                                       ; preds = %if.end57, %if.then55, %if.end44, %if.then34, %if.then29
  call void @llvm.dbg.label(metadata !2258), !dbg !2259
  %36 = load i8*, i8** %err, align 8, !dbg !2260
  %tobool58 = icmp ne i8* %36, null, !dbg !2260
  br i1 %tobool58, label %if.then59, label %if.else60, !dbg !2262

if.then59:                                        ; preds = %load_error
  %37 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2263
  %38 = load i8*, i8** %err, align 8, !dbg !2265
  call void @addReplyErrorSds(%struct.client* %37, i8* %38), !dbg !2266
  br label %if.end61, !dbg !2267

if.else60:                                        ; preds = %load_error
  %39 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2268
  %40 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !2270
  call void @addReply(%struct.client* %39, %struct.redisObject* %40), !dbg !2271
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %41 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2272
  %tobool62 = icmp ne %struct.functionsLibCtx* %41, null, !dbg !2272
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2274

if.then63:                                        ; preds = %if.end61
  %42 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !2275
  call void @functionsLibCtxFree(%struct.functionsLibCtx* %42), !dbg !2277
  br label %if.end64, !dbg !2278

if.end64:                                         ; preds = %if.then, %if.else16, %if.then23, %if.then63, %if.end61
  ret void, !dbg !2279
}

declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) #0

declare dso_local i32 @verifyDumpPayload(i8*, i64, i16*) #0

declare dso_local i32 @rdbLoadType(%struct._rio*) #0

declare dso_local i32 @rdbFunctionLoad(%struct._rio*, i32, %struct.functionsLibCtx*, i32, i32, i8**) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @libraryJoin(%struct.functionsLibCtx* %functions_lib_ctx_dst, %struct.functionsLibCtx* %functions_lib_ctx_src, i32 %replace, i8** %err) #1 !dbg !2280 {
entry:
  %functions_lib_ctx_dst.addr = alloca %struct.functionsLibCtx*, align 8
  %functions_lib_ctx_src.addr = alloca %struct.functionsLibCtx*, align 8
  %replace.addr = alloca i32, align 4
  %err.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %iter = alloca %struct.dictIterator*, align 8
  %old_libraries_list = alloca %struct.list*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %li = alloca %struct.functionLibInfo*, align 8
  %old_li = alloca %struct.functionLibInfo*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %li40 = alloca %struct.functionLibInfo*, align 8
  %head = alloca %struct.listNode*, align 8
  %li71 = alloca %struct.functionLibInfo*, align 8
  store %struct.functionsLibCtx* %functions_lib_ctx_dst, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, metadata !2283, metadata !DIExpression()), !dbg !2284
  store %struct.functionsLibCtx* %functions_lib_ctx_src, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx_src.addr, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i32 %replace, i32* %replace.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %replace.addr, metadata !2287, metadata !DIExpression()), !dbg !2288
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !2289, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2291, metadata !DIExpression()), !dbg !2292
  store i32 -1, i32* %ret, align 4, !dbg !2292
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !2293, metadata !DIExpression()), !dbg !2294
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.list** %old_libraries_list, metadata !2295, metadata !DIExpression()), !dbg !2296
  store %struct.list* null, %struct.list** %old_libraries_list, align 8, !dbg !2296
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !2297, metadata !DIExpression()), !dbg !2298
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !2298
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2299
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 0, !dbg !2300
  %1 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !2300
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %1), !dbg !2301
  store %struct.dictIterator* %call, %struct.dictIterator** %iter, align 8, !dbg !2302
  br label %while.cond, !dbg !2303

while.cond:                                       ; preds = %if.end16, %entry
  %2 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2304
  %call2 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %2), !dbg !2305
  store %struct.dictEntry* %call2, %struct.dictEntry** %entry1, align 8, !dbg !2306
  %tobool = icmp ne %struct.dictEntry* %call2, null, !dbg !2303
  br i1 %tobool, label %while.body, label %while.end, !dbg !2303

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li, metadata !2307, metadata !DIExpression()), !dbg !2309
  %3 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2310
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i32 0, i32 1, !dbg !2310
  %val = bitcast %union.anon* %v to i8**, !dbg !2310
  %4 = load i8*, i8** %val, align 8, !dbg !2310
  %5 = bitcast i8* %4 to %struct.functionLibInfo*, !dbg !2310
  store %struct.functionLibInfo* %5, %struct.functionLibInfo** %li, align 8, !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %old_li, metadata !2311, metadata !DIExpression()), !dbg !2312
  %6 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8, !dbg !2313
  %libraries3 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %6, i32 0, i32 0, !dbg !2314
  %7 = load %struct.dict*, %struct.dict** %libraries3, align 8, !dbg !2314
  %8 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !2315
  %name = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %8, i32 0, i32 0, !dbg !2316
  %9 = load i8*, i8** %name, align 8, !dbg !2316
  %call4 = call i8* @dictFetchValue(%struct.dict* %7, i8* %9), !dbg !2317
  %10 = bitcast i8* %call4 to %struct.functionLibInfo*, !dbg !2317
  store %struct.functionLibInfo* %10, %struct.functionLibInfo** %old_li, align 8, !dbg !2312
  %11 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2318
  %tobool5 = icmp ne %struct.functionLibInfo* %11, null, !dbg !2318
  br i1 %tobool5, label %if.then, label %if.end16, !dbg !2320

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %replace.addr, align 4, !dbg !2321
  %tobool6 = icmp ne i32 %12, 0, !dbg !2321
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !2324

if.then7:                                         ; preds = %if.then
  %call8 = call i8* @sdsempty(), !dbg !2325
  %13 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !2327
  %name9 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %13, i32 0, i32 0, !dbg !2328
  %14 = load i8*, i8** %name9, align 8, !dbg !2328
  %call10 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.90, i64 0, i64 0), i8* %14), !dbg !2329
  %15 = load i8**, i8*** %err.addr, align 8, !dbg !2330
  store i8* %call10, i8** %15, align 8, !dbg !2331
  br label %done, !dbg !2332

if.else:                                          ; preds = %if.then
  %16 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2333
  %tobool11 = icmp ne %struct.list* %16, null, !dbg !2333
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !2336

if.then12:                                        ; preds = %if.else
  %call13 = call %struct.list* @listCreate(), !dbg !2337
  store %struct.list* %call13, %struct.list** %old_libraries_list, align 8, !dbg !2339
  %17 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2340
  %free = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 3, !dbg !2340
  store void (i8*)* bitcast (void (%struct.functionLibInfo*)* @engineLibraryFree to void (i8*)*), void (i8*)** %free, align 8, !dbg !2340
  br label %if.end, !dbg !2341

if.end:                                           ; preds = %if.then12, %if.else
  %18 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8, !dbg !2342
  %19 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2343
  call void @libraryUnlink(%struct.functionsLibCtx* %18, %struct.functionLibInfo* %19), !dbg !2344
  %20 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2345
  %21 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2346
  %22 = bitcast %struct.functionLibInfo* %21 to i8*, !dbg !2346
  %call14 = call %struct.list* @listAddNodeTail(%struct.list* %20, i8* %22), !dbg !2347
  br label %if.end15

if.end15:                                         ; preds = %if.end
  br label %if.end16, !dbg !2348

if.end16:                                         ; preds = %if.end15, %while.body
  br label %while.cond, !dbg !2303, !llvm.loop !2349

while.end:                                        ; preds = %while.cond
  %23 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2351
  call void @dictReleaseIterator(%struct.dictIterator* %23), !dbg !2352
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2353
  %24 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2354
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %24, i32 0, i32 1, !dbg !2355
  %25 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !2355
  %call17 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %25), !dbg !2356
  store %struct.dictIterator* %call17, %struct.dictIterator** %iter, align 8, !dbg !2357
  br label %while.cond18, !dbg !2358

while.cond18:                                     ; preds = %if.end32, %while.end
  %26 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2359
  %call19 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %26), !dbg !2360
  store %struct.dictEntry* %call19, %struct.dictEntry** %entry1, align 8, !dbg !2361
  %tobool20 = icmp ne %struct.dictEntry* %call19, null, !dbg !2358
  br i1 %tobool20, label %while.body21, label %while.end33, !dbg !2358

while.body21:                                     ; preds = %while.cond18
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !2362, metadata !DIExpression()), !dbg !2364
  %27 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2365
  %v22 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %27, i32 0, i32 1, !dbg !2365
  %val23 = bitcast %union.anon* %v22 to i8**, !dbg !2365
  %28 = load i8*, i8** %val23, align 8, !dbg !2365
  %29 = bitcast i8* %28 to %struct.functionInfo*, !dbg !2365
  store %struct.functionInfo* %29, %struct.functionInfo** %fi, align 8, !dbg !2364
  %30 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8, !dbg !2366
  %functions24 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %30, i32 0, i32 1, !dbg !2368
  %31 = load %struct.dict*, %struct.dict** %functions24, align 8, !dbg !2368
  %32 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2369
  %name25 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %32, i32 0, i32 0, !dbg !2370
  %33 = load i8*, i8** %name25, align 8, !dbg !2370
  %call26 = call i8* @dictFetchValue(%struct.dict* %31, i8* %33), !dbg !2371
  %tobool27 = icmp ne i8* %call26, null, !dbg !2371
  br i1 %tobool27, label %if.then28, label %if.end32, !dbg !2372

if.then28:                                        ; preds = %while.body21
  %call29 = call i8* @sdsempty(), !dbg !2373
  %34 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2375
  %name30 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %34, i32 0, i32 0, !dbg !2376
  %35 = load i8*, i8** %name30, align 8, !dbg !2376
  %call31 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i64 0, i64 0), i8* %35), !dbg !2377
  %36 = load i8**, i8*** %err.addr, align 8, !dbg !2378
  store i8* %call31, i8** %36, align 8, !dbg !2379
  br label %done, !dbg !2380

if.end32:                                         ; preds = %while.body21
  br label %while.cond18, !dbg !2358, !llvm.loop !2381

while.end33:                                      ; preds = %while.cond18
  %37 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2383
  call void @dictReleaseIterator(%struct.dictIterator* %37), !dbg !2384
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2385
  %38 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2386
  %libraries34 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %38, i32 0, i32 0, !dbg !2387
  %39 = load %struct.dict*, %struct.dict** %libraries34, align 8, !dbg !2387
  %call35 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %39), !dbg !2388
  store %struct.dictIterator* %call35, %struct.dictIterator** %iter, align 8, !dbg !2389
  br label %while.cond36, !dbg !2390

while.cond36:                                     ; preds = %do.end, %while.end33
  %40 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2391
  %call37 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %40), !dbg !2392
  store %struct.dictEntry* %call37, %struct.dictEntry** %entry1, align 8, !dbg !2393
  %tobool38 = icmp ne %struct.dictEntry* %call37, null, !dbg !2390
  br i1 %tobool38, label %while.body39, label %while.end59, !dbg !2390

while.body39:                                     ; preds = %while.cond36
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li40, metadata !2394, metadata !DIExpression()), !dbg !2396
  %41 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2397
  %v41 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %41, i32 0, i32 1, !dbg !2397
  %val42 = bitcast %union.anon* %v41 to i8**, !dbg !2397
  %42 = load i8*, i8** %val42, align 8, !dbg !2397
  %43 = bitcast i8* %42 to %struct.functionLibInfo*, !dbg !2397
  store %struct.functionLibInfo* %43, %struct.functionLibInfo** %li40, align 8, !dbg !2396
  %44 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8, !dbg !2398
  %45 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li40, align 8, !dbg !2399
  call void @libraryLink(%struct.functionsLibCtx* %44, %struct.functionLibInfo* %45), !dbg !2400
  br label %do.body, !dbg !2401

do.body:                                          ; preds = %while.body39
  %46 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2402
  %libraries43 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %46, i32 0, i32 0, !dbg !2402
  %47 = load %struct.dict*, %struct.dict** %libraries43, align 8, !dbg !2402
  %type = getelementptr inbounds %struct.dict, %struct.dict* %47, i32 0, i32 0, !dbg !2402
  %48 = load %struct.dictType*, %struct.dictType** %type, align 8, !dbg !2402
  %valDup = getelementptr inbounds %struct.dictType, %struct.dictType* %48, i32 0, i32 2, !dbg !2402
  %valDup44 = bitcast {}** %valDup to i8* (%struct.dict*, i8*)**, !dbg !2402
  %49 = load i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)** %valDup44, align 8, !dbg !2402
  %tobool45 = icmp ne i8* (%struct.dict*, i8*)* %49, null, !dbg !2402
  br i1 %tobool45, label %if.then46, label %if.else55, !dbg !2405

if.then46:                                        ; preds = %do.body
  %50 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2402
  %libraries47 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %50, i32 0, i32 0, !dbg !2402
  %51 = load %struct.dict*, %struct.dict** %libraries47, align 8, !dbg !2402
  %type48 = getelementptr inbounds %struct.dict, %struct.dict* %51, i32 0, i32 0, !dbg !2402
  %52 = load %struct.dictType*, %struct.dictType** %type48, align 8, !dbg !2402
  %valDup49 = getelementptr inbounds %struct.dictType, %struct.dictType* %52, i32 0, i32 2, !dbg !2402
  %valDup50 = bitcast {}** %valDup49 to i8* (%struct.dict*, i8*)**, !dbg !2402
  %53 = load i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)** %valDup50, align 8, !dbg !2402
  %54 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2402
  %libraries51 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %54, i32 0, i32 0, !dbg !2402
  %55 = load %struct.dict*, %struct.dict** %libraries51, align 8, !dbg !2402
  %call52 = call i8* %53(%struct.dict* %55, i8* null), !dbg !2402
  %56 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2402
  %v53 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %56, i32 0, i32 1, !dbg !2402
  %val54 = bitcast %union.anon* %v53 to i8**, !dbg !2402
  store i8* %call52, i8** %val54, align 8, !dbg !2402
  br label %if.end58, !dbg !2402

if.else55:                                        ; preds = %do.body
  %57 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2402
  %v56 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %57, i32 0, i32 1, !dbg !2402
  %val57 = bitcast %union.anon* %v56 to i8**, !dbg !2402
  store i8* null, i8** %val57, align 8, !dbg !2402
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then46
  br label %do.end, !dbg !2405

do.end:                                           ; preds = %if.end58
  br label %while.cond36, !dbg !2390, !llvm.loop !2406

while.end59:                                      ; preds = %while.cond36
  %58 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2408
  call void @dictReleaseIterator(%struct.dictIterator* %58), !dbg !2409
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2410
  %59 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_src.addr, align 8, !dbg !2411
  call void @functionsLibCtxClear(%struct.functionsLibCtx* %59), !dbg !2412
  %60 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2413
  %tobool60 = icmp ne %struct.list* %60, null, !dbg !2413
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !2415

if.then61:                                        ; preds = %while.end59
  %61 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2416
  call void @listRelease(%struct.list* %61), !dbg !2418
  store %struct.list* null, %struct.list** %old_libraries_list, align 8, !dbg !2419
  br label %if.end62, !dbg !2420

if.end62:                                         ; preds = %if.then61, %while.end59
  store i32 0, i32* %ret, align 4, !dbg !2421
  br label %done, !dbg !2422

done:                                             ; preds = %if.end62, %if.then28, %if.then7
  call void @llvm.dbg.label(metadata !2423), !dbg !2424
  %62 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2425
  %tobool63 = icmp ne %struct.dictIterator* %62, null, !dbg !2425
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !2427

if.then64:                                        ; preds = %done
  %63 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2428
  call void @dictReleaseIterator(%struct.dictIterator* %63), !dbg !2429
  br label %if.end65, !dbg !2429

if.end65:                                         ; preds = %if.then64, %done
  %64 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2430
  %tobool66 = icmp ne %struct.list* %64, null, !dbg !2430
  br i1 %tobool66, label %if.then67, label %if.end74, !dbg !2432

if.then67:                                        ; preds = %if.end65
  br label %while.cond68, !dbg !2433

while.cond68:                                     ; preds = %while.body69, %if.then67
  %65 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2435
  %len = getelementptr inbounds %struct.list, %struct.list* %65, i32 0, i32 5, !dbg !2435
  %66 = load i64, i64* %len, align 8, !dbg !2435
  %cmp = icmp ugt i64 %66, 0, !dbg !2436
  br i1 %cmp, label %while.body69, label %while.end73, !dbg !2433

while.body69:                                     ; preds = %while.cond68
  call void @llvm.dbg.declare(metadata %struct.listNode** %head, metadata !2437, metadata !DIExpression()), !dbg !2439
  %67 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2440
  %head70 = getelementptr inbounds %struct.list, %struct.list* %67, i32 0, i32 0, !dbg !2440
  %68 = load %struct.listNode*, %struct.listNode** %head70, align 8, !dbg !2440
  store %struct.listNode* %68, %struct.listNode** %head, align 8, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li71, metadata !2441, metadata !DIExpression()), !dbg !2442
  %69 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !2443
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %69, i32 0, i32 2, !dbg !2443
  %70 = load i8*, i8** %value, align 8, !dbg !2443
  %71 = bitcast i8* %70 to %struct.functionLibInfo*, !dbg !2443
  store %struct.functionLibInfo* %71, %struct.functionLibInfo** %li71, align 8, !dbg !2442
  %72 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !2444
  %value72 = getelementptr inbounds %struct.listNode, %struct.listNode* %72, i32 0, i32 2, !dbg !2444
  store i8* null, i8** %value72, align 8, !dbg !2445
  %73 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx_dst.addr, align 8, !dbg !2446
  %74 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li71, align 8, !dbg !2447
  call void @libraryLink(%struct.functionsLibCtx* %73, %struct.functionLibInfo* %74), !dbg !2448
  %75 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2449
  %76 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !2450
  call void @listDelNode(%struct.list* %75, %struct.listNode* %76), !dbg !2451
  br label %while.cond68, !dbg !2433, !llvm.loop !2452

while.end73:                                      ; preds = %while.cond68
  %77 = load %struct.list*, %struct.list** %old_libraries_list, align 8, !dbg !2454
  call void @listRelease(%struct.list* %77), !dbg !2455
  br label %if.end74, !dbg !2456

if.end74:                                         ; preds = %while.end73, %if.end65
  %78 = load i32, i32* %ret, align 4, !dbg !2457
  ret i32 %78, !dbg !2458
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionFlushCommand(%struct.client* %c) #1 !dbg !2459 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %async = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2460, metadata !DIExpression()), !dbg !2461
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2462
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !2464
  %1 = load i32, i32* %argc, align 8, !dbg !2464
  %cmp = icmp sgt i32 %1, 3, !dbg !2465
  br i1 %cmp, label %if.then, label %if.end, !dbg !2466

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2467
  call void @addReplySubcommandSyntaxError(%struct.client* %2), !dbg !2469
  br label %return, !dbg !2470

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %async, metadata !2471, metadata !DIExpression()), !dbg !2472
  store i32 0, i32* %async, align 4, !dbg !2472
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2473
  %argc1 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 9, !dbg !2475
  %4 = load i32, i32* %argc1, align 8, !dbg !2475
  %cmp2 = icmp eq i32 %4, 3, !dbg !2476
  br i1 %cmp2, label %land.lhs.true, label %if.else, !dbg !2477

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2478
  %argv = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 10, !dbg !2479
  %6 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2479
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %6, i64 2, !dbg !2478
  %7 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2478
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !2480
  %8 = load i8*, i8** %ptr, align 8, !dbg !2480
  %call = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !2481
  %tobool = icmp ne i32 %call, 0, !dbg !2481
  br i1 %tobool, label %if.else, label %if.then3, !dbg !2482

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %async, align 4, !dbg !2483
  br label %if.end21, !dbg !2485

if.else:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2486
  %argc4 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 9, !dbg !2488
  %10 = load i32, i32* %argc4, align 8, !dbg !2488
  %cmp5 = icmp eq i32 %10, 3, !dbg !2489
  br i1 %cmp5, label %land.lhs.true6, label %if.else13, !dbg !2490

land.lhs.true6:                                   ; preds = %if.else
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2491
  %argv7 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 10, !dbg !2492
  %12 = load %struct.redisObject**, %struct.redisObject*** %argv7, align 8, !dbg !2492
  %arrayidx8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 2, !dbg !2491
  %13 = load %struct.redisObject*, %struct.redisObject** %arrayidx8, align 8, !dbg !2491
  %ptr9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %13, i32 0, i32 2, !dbg !2493
  %14 = load i8*, i8** %ptr9, align 8, !dbg !2493
  %call10 = call i32 @strcasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !2494
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2494
  br i1 %tobool11, label %if.else13, label %if.then12, !dbg !2495

if.then12:                                        ; preds = %land.lhs.true6
  store i32 1, i32* %async, align 4, !dbg !2496
  br label %if.end20, !dbg !2498

if.else13:                                        ; preds = %land.lhs.true6, %if.else
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2499
  %argc14 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 9, !dbg !2501
  %16 = load i32, i32* %argc14, align 8, !dbg !2501
  %cmp15 = icmp eq i32 %16, 2, !dbg !2502
  br i1 %cmp15, label %if.then16, label %if.else18, !dbg !2503

if.then16:                                        ; preds = %if.else13
  %17 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 381), align 8, !dbg !2504
  %tobool17 = icmp ne i32 %17, 0, !dbg !2506
  %18 = zext i1 %tobool17 to i64, !dbg !2506
  %cond = select i1 %tobool17, i32 1, i32 0, !dbg !2506
  store i32 %cond, i32* %async, align 4, !dbg !2507
  br label %if.end19, !dbg !2508

if.else18:                                        ; preds = %if.else13
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2509
  call void @addReplyError(%struct.client* %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i64 0, i64 0)), !dbg !2511
  br label %return, !dbg !2512

if.end19:                                         ; preds = %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  %20 = load i32, i32* %async, align 4, !dbg !2513
  call void @functionsLibCtxClearCurrent(i32 %20), !dbg !2514
  %21 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2515
  %inc = add nsw i64 %21, 1, !dbg !2515
  store i64 %inc, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2515
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2516
  %23 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 1), align 8, !dbg !2517
  call void @addReply(%struct.client* %22, %struct.redisObject* %23), !dbg !2518
  br label %return, !dbg !2519

return:                                           ; preds = %if.end21, %if.else18, %if.then
  ret void, !dbg !2519
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionHelpCommand(%struct.client* %c) #1 !dbg !2520 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %help = alloca [38 x i8*], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata [38 x i8*]* %help, metadata !2523, metadata !DIExpression()), !dbg !2527
  %0 = bitcast [38 x i8*]* %help to i8*, !dbg !2527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([38 x i8*]* @__const.functionHelpCommand.help to i8*), i64 304, i1 false), !dbg !2527
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2528
  %arraydecay = getelementptr inbounds [38 x i8*], [38 x i8*]* %help, i64 0, i64 0, !dbg !2529
  call void @addReplyHelp(%struct.client* %1, i8** %arraydecay), !dbg !2530
  ret void, !dbg !2531
}

declare dso_local void @addReplyHelp(%struct.client*, i8**) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @functionExtractLibMetaData(i8* %payload, %struct.functionsLibMataData* %md, i8** %err) #1 !dbg !2532 {
entry:
  %retval = alloca i32, align 4
  %payload.addr = alloca i8*, align 8
  %md.addr = alloca %struct.functionsLibMataData*, align 8
  %err.addr = alloca i8**, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %engine = alloca i8*, align 8
  %code = alloca i8*, align 8
  %shebang_end = alloca i8*, align 8
  %shebang_len = alloca i64, align 8
  %shebang = alloca i8*, align 8
  %numparts = alloca i32, align 4
  %parts = alloca i8**, align 8
  %i = alloca i32, align 4
  %part = alloca i8*, align 8
  store i8* %payload, i8** %payload.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %payload.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store %struct.functionsLibMataData* %md, %struct.functionsLibMataData** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibMataData** %md.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2548, metadata !DIExpression()), !dbg !2549
  store i8* null, i8** %name, align 8, !dbg !2549
  call void @llvm.dbg.declare(metadata i8** %desc, metadata !2550, metadata !DIExpression()), !dbg !2551
  store i8* null, i8** %desc, align 8, !dbg !2551
  call void @llvm.dbg.declare(metadata i8** %engine, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i8* null, i8** %engine, align 8, !dbg !2553
  call void @llvm.dbg.declare(metadata i8** %code, metadata !2554, metadata !DIExpression()), !dbg !2555
  store i8* null, i8** %code, align 8, !dbg !2555
  %0 = load i8*, i8** %payload.addr, align 8, !dbg !2556
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0), i64 2) #8, !dbg !2558
  %cmp = icmp ne i32 %call, 0, !dbg !2559
  br i1 %cmp, label %if.then, label %if.end, !dbg !2560

if.then:                                          ; preds = %entry
  %call1 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.72, i64 0, i64 0)), !dbg !2561
  %1 = load i8**, i8*** %err.addr, align 8, !dbg !2563
  store i8* %call1, i8** %1, align 8, !dbg !2564
  store i32 -1, i32* %retval, align 4, !dbg !2565
  br label %return, !dbg !2565

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %shebang_end, metadata !2566, metadata !DIExpression()), !dbg !2567
  %2 = load i8*, i8** %payload.addr, align 8, !dbg !2568
  %call2 = call i8* @strchr(i8* %2, i32 10) #8, !dbg !2569
  store i8* %call2, i8** %shebang_end, align 8, !dbg !2567
  %3 = load i8*, i8** %shebang_end, align 8, !dbg !2570
  %cmp3 = icmp eq i8* %3, null, !dbg !2572
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !2573

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i64 0, i64 0)), !dbg !2574
  %4 = load i8**, i8*** %err.addr, align 8, !dbg !2576
  store i8* %call5, i8** %4, align 8, !dbg !2577
  store i32 -1, i32* %retval, align 4, !dbg !2578
  br label %return, !dbg !2578

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %shebang_len, metadata !2579, metadata !DIExpression()), !dbg !2580
  %5 = load i8*, i8** %shebang_end, align 8, !dbg !2581
  %6 = load i8*, i8** %payload.addr, align 8, !dbg !2582
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !2583
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64, !dbg !2583
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2583
  store i64 %sub.ptr.sub, i64* %shebang_len, align 8, !dbg !2580
  call void @llvm.dbg.declare(metadata i8** %shebang, metadata !2584, metadata !DIExpression()), !dbg !2585
  %7 = load i8*, i8** %payload.addr, align 8, !dbg !2586
  %8 = load i64, i64* %shebang_len, align 8, !dbg !2587
  %call7 = call i8* @sdsnewlen(i8* %7, i64 %8), !dbg !2588
  store i8* %call7, i8** %shebang, align 8, !dbg !2585
  call void @llvm.dbg.declare(metadata i32* %numparts, metadata !2589, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata i8*** %parts, metadata !2591, metadata !DIExpression()), !dbg !2592
  %9 = load i8*, i8** %shebang, align 8, !dbg !2593
  %call8 = call i8** @sdssplitargs(i8* %9, i32* %numparts), !dbg !2594
  store i8** %call8, i8*** %parts, align 8, !dbg !2592
  %10 = load i8*, i8** %shebang, align 8, !dbg !2595
  call void @sdsfree(i8* %10), !dbg !2596
  %11 = load i8**, i8*** %parts, align 8, !dbg !2597
  %tobool = icmp ne i8** %11, null, !dbg !2597
  br i1 %tobool, label %lor.lhs.false, label %if.then10, !dbg !2599

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load i32, i32* %numparts, align 4, !dbg !2600
  %cmp9 = icmp eq i32 %12, 0, !dbg !2601
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !2602

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  %call11 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.73, i64 0, i64 0)), !dbg !2603
  %13 = load i8**, i8*** %err.addr, align 8, !dbg !2605
  store i8* %call11, i8** %13, align 8, !dbg !2606
  %14 = load i8**, i8*** %parts, align 8, !dbg !2607
  %15 = load i32, i32* %numparts, align 4, !dbg !2608
  call void @sdsfreesplitres(i8** %14, i32 %15), !dbg !2609
  store i32 -1, i32* %retval, align 4, !dbg !2610
  br label %return, !dbg !2610

if.end12:                                         ; preds = %lor.lhs.false
  %16 = load i8**, i8*** %parts, align 8, !dbg !2611
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !2611
  %17 = load i8*, i8** %arrayidx, align 8, !dbg !2611
  %call13 = call i8* @sdsdup(i8* %17), !dbg !2612
  store i8* %call13, i8** %engine, align 8, !dbg !2613
  %18 = load i8*, i8** %engine, align 8, !dbg !2614
  call void @sdsrange(i8* %18, i64 2, i64 -1), !dbg !2615
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2616, metadata !DIExpression()), !dbg !2618
  store i32 1, i32* %i, align 4, !dbg !2618
  br label %for.cond, !dbg !2619

for.cond:                                         ; preds = %for.inc, %if.end12
  %19 = load i32, i32* %i, align 4, !dbg !2620
  %20 = load i32, i32* %numparts, align 4, !dbg !2622
  %cmp14 = icmp slt i32 %19, %20, !dbg !2623
  br i1 %cmp14, label %for.body, label %for.end, !dbg !2624

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %part, metadata !2625, metadata !DIExpression()), !dbg !2627
  %21 = load i8**, i8*** %parts, align 8, !dbg !2628
  %22 = load i32, i32* %i, align 4, !dbg !2629
  %idxprom = sext i32 %22 to i64, !dbg !2628
  %arrayidx15 = getelementptr inbounds i8*, i8** %21, i64 %idxprom, !dbg !2628
  %23 = load i8*, i8** %arrayidx15, align 8, !dbg !2628
  store i8* %23, i8** %part, align 8, !dbg !2627
  %24 = load i8*, i8** %part, align 8, !dbg !2630
  %call16 = call i32 @strncasecmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i64 5) #8, !dbg !2632
  %cmp17 = icmp eq i32 %call16, 0, !dbg !2633
  br i1 %cmp17, label %if.then18, label %if.end25, !dbg !2634

if.then18:                                        ; preds = %for.body
  %25 = load i8*, i8** %name, align 8, !dbg !2635
  %tobool19 = icmp ne i8* %25, null, !dbg !2635
  br i1 %tobool19, label %if.then20, label %if.end23, !dbg !2638

if.then20:                                        ; preds = %if.then18
  %call21 = call i8* @sdsempty(), !dbg !2639
  %call22 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call21, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.75, i64 0, i64 0)), !dbg !2641
  %26 = load i8**, i8*** %err.addr, align 8, !dbg !2642
  store i8* %call22, i8** %26, align 8, !dbg !2643
  br label %error, !dbg !2644

if.end23:                                         ; preds = %if.then18
  %27 = load i8*, i8** %part, align 8, !dbg !2645
  %call24 = call i8* @sdsdup(i8* %27), !dbg !2646
  store i8* %call24, i8** %name, align 8, !dbg !2647
  %28 = load i8*, i8** %name, align 8, !dbg !2648
  call void @sdsrange(i8* %28, i64 5, i64 -1), !dbg !2649
  br label %for.inc, !dbg !2650

if.end25:                                         ; preds = %for.body
  %call26 = call i8* @sdsempty(), !dbg !2651
  %29 = load i8*, i8** %part, align 8, !dbg !2652
  %call27 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i64 0, i64 0), i8* %29), !dbg !2653
  %30 = load i8**, i8*** %err.addr, align 8, !dbg !2654
  store i8* %call27, i8** %30, align 8, !dbg !2655
  br label %error, !dbg !2656

for.inc:                                          ; preds = %if.end23
  %31 = load i32, i32* %i, align 4, !dbg !2657
  %inc = add nsw i32 %31, 1, !dbg !2657
  store i32 %inc, i32* %i, align 4, !dbg !2657
  br label %for.cond, !dbg !2658, !llvm.loop !2659

for.end:                                          ; preds = %for.cond
  %32 = load i8*, i8** %name, align 8, !dbg !2661
  %tobool28 = icmp ne i8* %32, null, !dbg !2661
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !2663

if.then29:                                        ; preds = %for.end
  %call30 = call i8* @sdsnew(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.77, i64 0, i64 0)), !dbg !2664
  %33 = load i8**, i8*** %err.addr, align 8, !dbg !2666
  store i8* %call30, i8** %33, align 8, !dbg !2667
  br label %error, !dbg !2668

if.end31:                                         ; preds = %for.end
  %34 = load i8**, i8*** %parts, align 8, !dbg !2669
  %35 = load i32, i32* %numparts, align 4, !dbg !2670
  call void @sdsfreesplitres(i8** %34, i32 %35), !dbg !2671
  %36 = load i8*, i8** %name, align 8, !dbg !2672
  %37 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2673
  %name32 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %37, i32 0, i32 1, !dbg !2674
  store i8* %36, i8** %name32, align 8, !dbg !2675
  %38 = load i8*, i8** %shebang_end, align 8, !dbg !2676
  %39 = load i8*, i8** %payload.addr, align 8, !dbg !2677
  %call33 = call i64 @sdslen(i8* %39), !dbg !2678
  %40 = load i64, i64* %shebang_len, align 8, !dbg !2679
  %sub = sub i64 %call33, %40, !dbg !2680
  %call34 = call i8* @sdsnewlen(i8* %38, i64 %sub), !dbg !2681
  %41 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2682
  %code35 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %41, i32 0, i32 2, !dbg !2683
  store i8* %call34, i8** %code35, align 8, !dbg !2684
  %42 = load i8*, i8** %engine, align 8, !dbg !2685
  %43 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2686
  %engine36 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %43, i32 0, i32 0, !dbg !2687
  store i8* %42, i8** %engine36, align 8, !dbg !2688
  store i32 0, i32* %retval, align 4, !dbg !2689
  br label %return, !dbg !2689

error:                                            ; preds = %if.then29, %if.end25, %if.then20
  call void @llvm.dbg.label(metadata !2690), !dbg !2691
  %44 = load i8*, i8** %name, align 8, !dbg !2692
  %tobool37 = icmp ne i8* %44, null, !dbg !2692
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !2694

if.then38:                                        ; preds = %error
  %45 = load i8*, i8** %name, align 8, !dbg !2695
  call void @sdsfree(i8* %45), !dbg !2696
  br label %if.end39, !dbg !2696

if.end39:                                         ; preds = %if.then38, %error
  %46 = load i8*, i8** %desc, align 8, !dbg !2697
  %tobool40 = icmp ne i8* %46, null, !dbg !2697
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2699

if.then41:                                        ; preds = %if.end39
  %47 = load i8*, i8** %desc, align 8, !dbg !2700
  call void @sdsfree(i8* %47), !dbg !2701
  br label %if.end42, !dbg !2701

if.end42:                                         ; preds = %if.then41, %if.end39
  %48 = load i8*, i8** %engine, align 8, !dbg !2702
  %tobool43 = icmp ne i8* %48, null, !dbg !2702
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !2704

if.then44:                                        ; preds = %if.end42
  %49 = load i8*, i8** %engine, align 8, !dbg !2705
  call void @sdsfree(i8* %49), !dbg !2706
  br label %if.end45, !dbg !2706

if.end45:                                         ; preds = %if.then44, %if.end42
  %50 = load i8*, i8** %code, align 8, !dbg !2707
  %tobool46 = icmp ne i8* %50, null, !dbg !2707
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !2709

if.then47:                                        ; preds = %if.end45
  %51 = load i8*, i8** %code, align 8, !dbg !2710
  call void @sdsfree(i8* %51), !dbg !2711
  br label %if.end48, !dbg !2711

if.end48:                                         ; preds = %if.then47, %if.end45
  %52 = load i8**, i8*** %parts, align 8, !dbg !2712
  %53 = load i32, i32* %numparts, align 4, !dbg !2713
  call void @sdsfreesplitres(i8** %52, i32 %53), !dbg !2714
  store i32 -1, i32* %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

return:                                           ; preds = %if.end48, %if.end31, %if.then10, %if.then4, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !2716
  ret i32 %54, !dbg !2716
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #5

declare dso_local i8* @sdsnewlen(i8*, i64) #0

declare dso_local i8** @sdssplitargs(i8*, i32*) #0

declare dso_local void @sdsfreesplitres(i8**, i32) #0

declare dso_local i8* @sdsdup(i8*) #0

declare dso_local void @sdsrange(i8*, i64, i64) #0

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionFreeLibMetaData(%struct.functionsLibMataData* %md) #1 !dbg !2717 {
entry:
  %md.addr = alloca %struct.functionsLibMataData*, align 8
  store %struct.functionsLibMataData* %md, %struct.functionsLibMataData** %md.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibMataData** %md.addr, metadata !2720, metadata !DIExpression()), !dbg !2721
  %0 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2722
  %code = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %0, i32 0, i32 2, !dbg !2724
  %1 = load i8*, i8** %code, align 8, !dbg !2724
  %tobool = icmp ne i8* %1, null, !dbg !2722
  br i1 %tobool, label %if.then, label %if.end, !dbg !2725

if.then:                                          ; preds = %entry
  %2 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2726
  %code1 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %2, i32 0, i32 2, !dbg !2727
  %3 = load i8*, i8** %code1, align 8, !dbg !2727
  call void @sdsfree(i8* %3), !dbg !2728
  br label %if.end, !dbg !2728

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2729
  %name = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %4, i32 0, i32 1, !dbg !2731
  %5 = load i8*, i8** %name, align 8, !dbg !2731
  %tobool2 = icmp ne i8* %5, null, !dbg !2729
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2732

if.then3:                                         ; preds = %if.end
  %6 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2733
  %name4 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %6, i32 0, i32 1, !dbg !2734
  %7 = load i8*, i8** %name4, align 8, !dbg !2734
  call void @sdsfree(i8* %7), !dbg !2735
  br label %if.end5, !dbg !2735

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2736
  %engine = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %8, i32 0, i32 0, !dbg !2738
  %9 = load i8*, i8** %engine, align 8, !dbg !2738
  %tobool6 = icmp ne i8* %9, null, !dbg !2736
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !2739

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.functionsLibMataData*, %struct.functionsLibMataData** %md.addr, align 8, !dbg !2740
  %engine8 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %10, i32 0, i32 0, !dbg !2741
  %11 = load i8*, i8** %engine8, align 8, !dbg !2741
  call void @sdsfree(i8* %11), !dbg !2742
  br label %if.end9, !dbg !2742

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !2743
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @functionsCreateWithLibraryCtx(i8* %code, i32 %replace, i8** %err, %struct.functionsLibCtx* %lib_ctx) #1 !dbg !2744 {
entry:
  %retval = alloca i8*, align 8
  %code.addr = alloca i8*, align 8
  %replace.addr = alloca i32, align 4
  %err.addr = alloca i8**, align 8
  %lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %new_li = alloca %struct.functionLibInfo*, align 8
  %old_li = alloca %struct.functionLibInfo*, align 8
  %md = alloca %struct.functionsLibMataData, align 8
  %ei = alloca %struct.engineInfo*, align 8
  %engine13 = alloca %struct.engine*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %loaded_lib_name = alloca i8*, align 8
  store i8* %code, i8** %code.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %code.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store i32 %replace, i32* %replace.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %replace.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  store %struct.functionsLibCtx* %lib_ctx, %struct.functionsLibCtx** %lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %lib_ctx.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !2755, metadata !DIExpression()), !dbg !2756
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2756
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !2757, metadata !DIExpression()), !dbg !2758
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !2758
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %new_li, metadata !2759, metadata !DIExpression()), !dbg !2760
  store %struct.functionLibInfo* null, %struct.functionLibInfo** %new_li, align 8, !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %old_li, metadata !2761, metadata !DIExpression()), !dbg !2762
  store %struct.functionLibInfo* null, %struct.functionLibInfo** %old_li, align 8, !dbg !2762
  call void @llvm.dbg.declare(metadata %struct.functionsLibMataData* %md, metadata !2763, metadata !DIExpression()), !dbg !2764
  %0 = bitcast %struct.functionsLibMataData* %md to i8*, !dbg !2764
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false), !dbg !2764
  %1 = load i8*, i8** %code.addr, align 8, !dbg !2765
  %2 = load i8**, i8*** %err.addr, align 8, !dbg !2767
  %call = call i32 @functionExtractLibMetaData(i8* %1, %struct.functionsLibMataData* %md, i8** %2), !dbg !2768
  %cmp = icmp ne i32 %call, 0, !dbg !2769
  br i1 %cmp, label %if.then, label %if.end, !dbg !2770

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2771
  br label %return, !dbg !2771

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2773
  %3 = load i8*, i8** %name, align 8, !dbg !2773
  %call2 = call i32 @functionsVerifyName(i8* %3), !dbg !2775
  %tobool = icmp ne i32 %call2, 0, !dbg !2775
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !2776

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @sdsnew(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0)), !dbg !2777
  %4 = load i8**, i8*** %err.addr, align 8, !dbg !2779
  store i8* %call4, i8** %4, align 8, !dbg !2780
  br label %error, !dbg !2781

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei, metadata !2782, metadata !DIExpression()), !dbg !2783
  %5 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !2784
  %engine = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 0, !dbg !2785
  %6 = load i8*, i8** %engine, align 8, !dbg !2785
  %call6 = call i8* @dictFetchValue(%struct.dict* %5, i8* %6), !dbg !2786
  %7 = bitcast i8* %call6 to %struct.engineInfo*, !dbg !2786
  store %struct.engineInfo* %7, %struct.engineInfo** %ei, align 8, !dbg !2783
  %8 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !2787
  %tobool7 = icmp ne %struct.engineInfo* %8, null, !dbg !2787
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !2789

if.then8:                                         ; preds = %if.end5
  %call9 = call i8* @sdsempty(), !dbg !2790
  %engine10 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 0, !dbg !2792
  %9 = load i8*, i8** %engine10, align 8, !dbg !2792
  %call11 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.78, i64 0, i64 0), i8* %9), !dbg !2793
  %10 = load i8**, i8*** %err.addr, align 8, !dbg !2794
  store i8* %call11, i8** %10, align 8, !dbg !2795
  br label %error, !dbg !2796

if.end12:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata %struct.engine** %engine13, metadata !2797, metadata !DIExpression()), !dbg !2798
  %11 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !2799
  %engine14 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %11, i32 0, i32 1, !dbg !2800
  %12 = load %struct.engine*, %struct.engine** %engine14, align 8, !dbg !2800
  store %struct.engine* %12, %struct.engine** %engine13, align 8, !dbg !2798
  %13 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2801
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %13, i32 0, i32 0, !dbg !2802
  %14 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !2802
  %name15 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2803
  %15 = load i8*, i8** %name15, align 8, !dbg !2803
  %call16 = call i8* @dictFetchValue(%struct.dict* %14, i8* %15), !dbg !2804
  %16 = bitcast i8* %call16 to %struct.functionLibInfo*, !dbg !2804
  store %struct.functionLibInfo* %16, %struct.functionLibInfo** %old_li, align 8, !dbg !2805
  %17 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2806
  %tobool17 = icmp ne %struct.functionLibInfo* %17, null, !dbg !2806
  br i1 %tobool17, label %land.lhs.true, label %if.end23, !dbg !2808

land.lhs.true:                                    ; preds = %if.end12
  %18 = load i32, i32* %replace.addr, align 4, !dbg !2809
  %tobool18 = icmp ne i32 %18, 0, !dbg !2809
  br i1 %tobool18, label %if.end23, label %if.then19, !dbg !2810

if.then19:                                        ; preds = %land.lhs.true
  store %struct.functionLibInfo* null, %struct.functionLibInfo** %old_li, align 8, !dbg !2811
  %call20 = call i8* @sdsempty(), !dbg !2813
  %name21 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2814
  %19 = load i8*, i8** %name21, align 8, !dbg !2814
  %call22 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.79, i64 0, i64 0), i8* %19), !dbg !2815
  %20 = load i8**, i8*** %err.addr, align 8, !dbg !2816
  store i8* %call22, i8** %20, align 8, !dbg !2817
  br label %error, !dbg !2818

if.end23:                                         ; preds = %land.lhs.true, %if.end12
  %21 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2819
  %tobool24 = icmp ne %struct.functionLibInfo* %21, null, !dbg !2819
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2821

if.then25:                                        ; preds = %if.end23
  %22 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2822
  %23 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2824
  call void @libraryUnlink(%struct.functionsLibCtx* %22, %struct.functionLibInfo* %23), !dbg !2825
  br label %if.end26, !dbg !2826

if.end26:                                         ; preds = %if.then25, %if.end23
  %name27 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2827
  %24 = load i8*, i8** %name27, align 8, !dbg !2827
  %25 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !2828
  %26 = load i8*, i8** %code.addr, align 8, !dbg !2829
  %call28 = call %struct.functionLibInfo* @engineLibraryCreate(i8* %24, %struct.engineInfo* %25, i8* %26), !dbg !2830
  store %struct.functionLibInfo* %call28, %struct.functionLibInfo** %new_li, align 8, !dbg !2831
  %27 = load %struct.engine*, %struct.engine** %engine13, align 8, !dbg !2832
  %create = getelementptr inbounds %struct.engine, %struct.engine* %27, i32 0, i32 1, !dbg !2834
  %28 = load i32 (i8*, %struct.functionLibInfo*, i8*, i8**)*, i32 (i8*, %struct.functionLibInfo*, i8*, i8**)** %create, align 8, !dbg !2834
  %29 = load %struct.engine*, %struct.engine** %engine13, align 8, !dbg !2835
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %29, i32 0, i32 0, !dbg !2836
  %30 = load i8*, i8** %engine_ctx, align 8, !dbg !2836
  %31 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2837
  %code29 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 2, !dbg !2838
  %32 = load i8*, i8** %code29, align 8, !dbg !2838
  %33 = load i8**, i8*** %err.addr, align 8, !dbg !2839
  %call30 = call i32 %28(i8* %30, %struct.functionLibInfo* %31, i8* %32, i8** %33), !dbg !2832
  %cmp31 = icmp ne i32 %call30, 0, !dbg !2840
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !2841

if.then32:                                        ; preds = %if.end26
  br label %error, !dbg !2842

if.end33:                                         ; preds = %if.end26
  %34 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2844
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %34, i32 0, i32 1, !dbg !2844
  %35 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !2844
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %35, i32 0, i32 2, !dbg !2844
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !2844
  %36 = load i64, i64* %arrayidx, align 8, !dbg !2844
  %37 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2844
  %functions34 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %37, i32 0, i32 1, !dbg !2844
  %38 = load %struct.dict*, %struct.dict** %functions34, align 8, !dbg !2844
  %ht_used35 = getelementptr inbounds %struct.dict, %struct.dict* %38, i32 0, i32 2, !dbg !2844
  %arrayidx36 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used35, i64 0, i64 1, !dbg !2844
  %39 = load i64, i64* %arrayidx36, align 8, !dbg !2844
  %add = add i64 %36, %39, !dbg !2844
  %cmp37 = icmp eq i64 %add, 0, !dbg !2846
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !2847

if.then38:                                        ; preds = %if.end33
  %call39 = call i8* @sdsnew(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i64 0, i64 0)), !dbg !2848
  %40 = load i8**, i8*** %err.addr, align 8, !dbg !2850
  store i8* %call39, i8** %40, align 8, !dbg !2851
  br label %error, !dbg !2852

if.end40:                                         ; preds = %if.end33
  %41 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2853
  %functions41 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %41, i32 0, i32 1, !dbg !2854
  %42 = load %struct.dict*, %struct.dict** %functions41, align 8, !dbg !2854
  %call42 = call %struct.dictIterator* @dictGetIterator(%struct.dict* %42), !dbg !2855
  store %struct.dictIterator* %call42, %struct.dictIterator** %iter, align 8, !dbg !2856
  br label %while.cond, !dbg !2857

while.cond:                                       ; preds = %if.end53, %if.end40
  %43 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2858
  %call43 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %43), !dbg !2859
  store %struct.dictEntry* %call43, %struct.dictEntry** %entry1, align 8, !dbg !2860
  %tobool44 = icmp ne %struct.dictEntry* %call43, null, !dbg !2857
  br i1 %tobool44, label %while.body, label %while.end, !dbg !2857

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !2861, metadata !DIExpression()), !dbg !2863
  %44 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2864
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %44, i32 0, i32 1, !dbg !2864
  %val = bitcast %union.anon* %v to i8**, !dbg !2864
  %45 = load i8*, i8** %val, align 8, !dbg !2864
  %46 = bitcast i8* %45 to %struct.functionInfo*, !dbg !2864
  store %struct.functionInfo* %46, %struct.functionInfo** %fi, align 8, !dbg !2863
  %47 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2865
  %functions45 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %47, i32 0, i32 1, !dbg !2867
  %48 = load %struct.dict*, %struct.dict** %functions45, align 8, !dbg !2867
  %49 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2868
  %name46 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %49, i32 0, i32 0, !dbg !2869
  %50 = load i8*, i8** %name46, align 8, !dbg !2869
  %call47 = call i8* @dictFetchValue(%struct.dict* %48, i8* %50), !dbg !2870
  %tobool48 = icmp ne i8* %call47, null, !dbg !2870
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !2871

if.then49:                                        ; preds = %while.body
  %call50 = call i8* @sdsempty(), !dbg !2872
  %51 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2874
  %name51 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %51, i32 0, i32 0, !dbg !2875
  %52 = load i8*, i8** %name51, align 8, !dbg !2875
  %call52 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i64 0, i64 0), i8* %52), !dbg !2876
  %53 = load i8**, i8*** %err.addr, align 8, !dbg !2877
  store i8* %call52, i8** %53, align 8, !dbg !2878
  br label %error, !dbg !2879

if.end53:                                         ; preds = %while.body
  br label %while.cond, !dbg !2857, !llvm.loop !2880

while.end:                                        ; preds = %while.cond
  %54 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2882
  call void @dictReleaseIterator(%struct.dictIterator* %54), !dbg !2883
  store %struct.dictIterator* null, %struct.dictIterator** %iter, align 8, !dbg !2884
  %55 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2885
  %56 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2886
  call void @libraryLink(%struct.functionsLibCtx* %55, %struct.functionLibInfo* %56), !dbg !2887
  %57 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2888
  %tobool54 = icmp ne %struct.functionLibInfo* %57, null, !dbg !2888
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !2890

if.then55:                                        ; preds = %while.end
  %58 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2891
  call void @engineLibraryFree(%struct.functionLibInfo* %58), !dbg !2893
  br label %if.end56, !dbg !2894

if.end56:                                         ; preds = %if.then55, %while.end
  call void @llvm.dbg.declare(metadata i8** %loaded_lib_name, metadata !2895, metadata !DIExpression()), !dbg !2896
  %name57 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2897
  %59 = load i8*, i8** %name57, align 8, !dbg !2897
  store i8* %59, i8** %loaded_lib_name, align 8, !dbg !2896
  %name58 = getelementptr inbounds %struct.functionsLibMataData, %struct.functionsLibMataData* %md, i32 0, i32 1, !dbg !2898
  store i8* null, i8** %name58, align 8, !dbg !2899
  call void @functionFreeLibMetaData(%struct.functionsLibMataData* %md), !dbg !2900
  %60 = load i8*, i8** %loaded_lib_name, align 8, !dbg !2901
  store i8* %60, i8** %retval, align 8, !dbg !2902
  br label %return, !dbg !2902

error:                                            ; preds = %if.then49, %if.then38, %if.then32, %if.then19, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !2903), !dbg !2904
  %61 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2905
  %tobool59 = icmp ne %struct.dictIterator* %61, null, !dbg !2905
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !2907

if.then60:                                        ; preds = %error
  %62 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2908
  call void @dictReleaseIterator(%struct.dictIterator* %62), !dbg !2909
  br label %if.end61, !dbg !2909

if.end61:                                         ; preds = %if.then60, %error
  %63 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2910
  %tobool62 = icmp ne %struct.functionLibInfo* %63, null, !dbg !2910
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !2912

if.then63:                                        ; preds = %if.end61
  %64 = load %struct.functionLibInfo*, %struct.functionLibInfo** %new_li, align 8, !dbg !2913
  call void @engineLibraryFree(%struct.functionLibInfo* %64), !dbg !2914
  br label %if.end64, !dbg !2914

if.end64:                                         ; preds = %if.then63, %if.end61
  %65 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2915
  %tobool65 = icmp ne %struct.functionLibInfo* %65, null, !dbg !2915
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !2917

if.then66:                                        ; preds = %if.end64
  %66 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2918
  %67 = load %struct.functionLibInfo*, %struct.functionLibInfo** %old_li, align 8, !dbg !2919
  call void @libraryLink(%struct.functionsLibCtx* %66, %struct.functionLibInfo* %67), !dbg !2920
  br label %if.end67, !dbg !2920

if.end67:                                         ; preds = %if.then66, %if.end64
  call void @functionFreeLibMetaData(%struct.functionsLibMataData* %md), !dbg !2921
  store i8* null, i8** %retval, align 8, !dbg !2922
  br label %return, !dbg !2922

return:                                           ; preds = %if.end67, %if.end56, %if.then
  %68 = load i8*, i8** %retval, align 8, !dbg !2923
  ret i8* %68, !dbg !2923
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal %struct.functionLibInfo* @engineLibraryCreate(i8* %name, %struct.engineInfo* %ei, i8* %code) #1 !dbg !2924 {
entry:
  %name.addr = alloca i8*, align 8
  %ei.addr = alloca %struct.engineInfo*, align 8
  %code.addr = alloca i8*, align 8
  %li = alloca %struct.functionLibInfo*, align 8
  %.compoundliteral = alloca %struct.functionLibInfo, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2927, metadata !DIExpression()), !dbg !2928
  store %struct.engineInfo* %ei, %struct.engineInfo** %ei.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei.addr, metadata !2929, metadata !DIExpression()), !dbg !2930
  store i8* %code, i8** %code.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %code.addr, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li, metadata !2933, metadata !DIExpression()), !dbg !2934
  %call = call i8* @zmalloc(i64 32), !dbg !2935
  %0 = bitcast i8* %call to %struct.functionLibInfo*, !dbg !2935
  store %struct.functionLibInfo* %0, %struct.functionLibInfo** %li, align 8, !dbg !2934
  %1 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !2936
  %name1 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %.compoundliteral, i32 0, i32 0, !dbg !2937
  %2 = load i8*, i8** %name.addr, align 8, !dbg !2938
  %call2 = call i8* @sdsdup(i8* %2), !dbg !2939
  store i8* %call2, i8** %name1, align 8, !dbg !2937
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %.compoundliteral, i32 0, i32 1, !dbg !2937
  %call3 = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @libraryFunctionDictType to %struct.dictType*)), !dbg !2940
  store %struct.dict* %call3, %struct.dict** %functions, align 8, !dbg !2937
  %ei4 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %.compoundliteral, i32 0, i32 2, !dbg !2937
  %3 = load %struct.engineInfo*, %struct.engineInfo** %ei.addr, align 8, !dbg !2941
  store %struct.engineInfo* %3, %struct.engineInfo** %ei4, align 8, !dbg !2937
  %code5 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %.compoundliteral, i32 0, i32 3, !dbg !2937
  %4 = load i8*, i8** %code.addr, align 8, !dbg !2942
  %call6 = call i8* @sdsdup(i8* %4), !dbg !2943
  store i8* %call6, i8** %code5, align 8, !dbg !2937
  %5 = bitcast %struct.functionLibInfo* %1 to i8*, !dbg !2944
  %6 = bitcast %struct.functionLibInfo* %.compoundliteral to i8*, !dbg !2944
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false), !dbg !2944
  %7 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !2945
  ret %struct.functionLibInfo* %7, !dbg !2946
}

; Function Attrs: noinline nounwind uwtable
define internal void @libraryLink(%struct.functionsLibCtx* %lib_ctx, %struct.functionLibInfo* %li) #1 !dbg !2947 {
entry:
  %lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  %li.addr = alloca %struct.functionLibInfo*, align 8
  %iter = alloca %struct.dictIterator*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %fi = alloca %struct.functionInfo*, align 8
  %stats = alloca %struct.functionsLibEngineStats*, align 8
  store %struct.functionsLibCtx* %lib_ctx, %struct.functionsLibCtx** %lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %lib_ctx.addr, metadata !2948, metadata !DIExpression()), !dbg !2949
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !2950, metadata !DIExpression()), !dbg !2951
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !2952, metadata !DIExpression()), !dbg !2953
  %0 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !2954
  %functions = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %0, i32 0, i32 1, !dbg !2955
  %1 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !2955
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %1), !dbg !2956
  store %struct.dictIterator* %call, %struct.dictIterator** %iter, align 8, !dbg !2953
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !2957, metadata !DIExpression()), !dbg !2958
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !2958
  br label %while.cond, !dbg !2959

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2960
  %call2 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %2), !dbg !2961
  store %struct.dictEntry* %call2, %struct.dictEntry** %entry1, align 8, !dbg !2962
  %tobool = icmp ne %struct.dictEntry* %call2, null, !dbg !2959
  br i1 %tobool, label %while.body, label %while.end, !dbg !2959

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi, metadata !2963, metadata !DIExpression()), !dbg !2965
  %3 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !2966
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %3, i32 0, i32 1, !dbg !2966
  %val = bitcast %union.anon* %v to i8**, !dbg !2966
  %4 = load i8*, i8** %val, align 8, !dbg !2966
  %5 = bitcast i8* %4 to %struct.functionInfo*, !dbg !2966
  store %struct.functionInfo* %5, %struct.functionInfo** %fi, align 8, !dbg !2965
  %6 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2967
  %functions3 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %6, i32 0, i32 1, !dbg !2968
  %7 = load %struct.dict*, %struct.dict** %functions3, align 8, !dbg !2968
  %8 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2969
  %name = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %8, i32 0, i32 0, !dbg !2970
  %9 = load i8*, i8** %name, align 8, !dbg !2970
  %10 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2971
  %11 = bitcast %struct.functionInfo* %10 to i8*, !dbg !2971
  %call4 = call i32 @dictAdd(%struct.dict* %7, i8* %9, i8* %11), !dbg !2972
  %12 = load %struct.functionInfo*, %struct.functionInfo** %fi, align 8, !dbg !2973
  %call5 = call i64 @functionMallocSize(%struct.functionInfo* %12), !dbg !2974
  %13 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2975
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %13, i32 0, i32 2, !dbg !2976
  %14 = load i64, i64* %cache_memory, align 8, !dbg !2977
  %add = add i64 %14, %call5, !dbg !2977
  store i64 %add, i64* %cache_memory, align 8, !dbg !2977
  br label %while.cond, !dbg !2959, !llvm.loop !2978

while.end:                                        ; preds = %while.cond
  %15 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !2980
  call void @dictReleaseIterator(%struct.dictIterator* %15), !dbg !2981
  %16 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2982
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %16, i32 0, i32 0, !dbg !2983
  %17 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !2983
  %18 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !2984
  %name6 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %18, i32 0, i32 0, !dbg !2985
  %19 = load i8*, i8** %name6, align 8, !dbg !2985
  %20 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !2986
  %21 = bitcast %struct.functionLibInfo* %20 to i8*, !dbg !2986
  %call7 = call i32 @dictAdd(%struct.dict* %17, i8* %19, i8* %21), !dbg !2987
  %22 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !2988
  %call8 = call i64 @libraryMallocSize(%struct.functionLibInfo* %22), !dbg !2989
  %23 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2990
  %cache_memory9 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %23, i32 0, i32 2, !dbg !2991
  %24 = load i64, i64* %cache_memory9, align 8, !dbg !2992
  %add10 = add i64 %24, %call8, !dbg !2992
  store i64 %add10, i64* %cache_memory9, align 8, !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.functionsLibEngineStats** %stats, metadata !2993, metadata !DIExpression()), !dbg !2994
  %25 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %lib_ctx.addr, align 8, !dbg !2995
  %engines_stats = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %25, i32 0, i32 3, !dbg !2996
  %26 = load %struct.dict*, %struct.dict** %engines_stats, align 8, !dbg !2996
  %27 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !2997
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %27, i32 0, i32 2, !dbg !2998
  %28 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !2998
  %name11 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %28, i32 0, i32 0, !dbg !2999
  %29 = load i8*, i8** %name11, align 8, !dbg !2999
  %call12 = call i8* @dictFetchValue(%struct.dict* %26, i8* %29), !dbg !3000
  %30 = bitcast i8* %call12 to %struct.functionsLibEngineStats*, !dbg !3000
  store %struct.functionsLibEngineStats* %30, %struct.functionsLibEngineStats** %stats, align 8, !dbg !2994
  %31 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !3001
  %tobool13 = icmp ne %struct.functionsLibEngineStats* %31, null, !dbg !3001
  br i1 %tobool13, label %cond.true, label %cond.false, !dbg !3001

cond.true:                                        ; preds = %while.end
  br label %cond.end, !dbg !3001

cond.false:                                       ; preds = %while.end
  call void @_serverAssert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 320), !dbg !3001
  unreachable, !dbg !3001

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !3001

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %32 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !3002
  %n_lib = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %32, i32 0, i32 0, !dbg !3003
  %33 = load i64, i64* %n_lib, align 8, !dbg !3004
  %inc = add i64 %33, 1, !dbg !3004
  store i64 %inc, i64* %n_lib, align 8, !dbg !3004
  %34 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !3005
  %functions14 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %34, i32 0, i32 1, !dbg !3005
  %35 = load %struct.dict*, %struct.dict** %functions14, align 8, !dbg !3005
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %35, i32 0, i32 2, !dbg !3005
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !3005
  %36 = load i64, i64* %arrayidx, align 8, !dbg !3005
  %37 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !3005
  %functions15 = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %37, i32 0, i32 1, !dbg !3005
  %38 = load %struct.dict*, %struct.dict** %functions15, align 8, !dbg !3005
  %ht_used16 = getelementptr inbounds %struct.dict, %struct.dict* %38, i32 0, i32 2, !dbg !3005
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used16, i64 0, i64 1, !dbg !3005
  %39 = load i64, i64* %arrayidx17, align 8, !dbg !3005
  %add18 = add i64 %36, %39, !dbg !3005
  %40 = load %struct.functionsLibEngineStats*, %struct.functionsLibEngineStats** %stats, align 8, !dbg !3006
  %n_functions = getelementptr inbounds %struct.functionsLibEngineStats, %struct.functionsLibEngineStats* %40, i32 0, i32 1, !dbg !3007
  %41 = load i64, i64* %n_functions, align 8, !dbg !3008
  %add19 = add i64 %41, %add18, !dbg !3008
  store i64 %add19, i64* %n_functions, align 8, !dbg !3008
  ret void, !dbg !3009
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @functionLoadCommand(%struct.client* %c) #1 !dbg !3010 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %replace = alloca i32, align 4
  %argc_pos = alloca i32, align 4
  %next_arg = alloca %struct.redisObject*, align 8
  %code = alloca %struct.redisObject*, align 8
  %err = alloca i8*, align 8
  %library_name = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.declare(metadata i32* %replace, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i32 0, i32* %replace, align 4, !dbg !3014
  call void @llvm.dbg.declare(metadata i32* %argc_pos, metadata !3015, metadata !DIExpression()), !dbg !3016
  store i32 2, i32* %argc_pos, align 4, !dbg !3016
  br label %while.cond, !dbg !3017

while.cond:                                       ; preds = %if.then, %entry
  %0 = load i32, i32* %argc_pos, align 4, !dbg !3018
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3019
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !3020
  %2 = load i32, i32* %argc, align 8, !dbg !3020
  %sub = sub nsw i32 %2, 1, !dbg !3021
  %cmp = icmp slt i32 %0, %sub, !dbg !3022
  br i1 %cmp, label %while.body, label %while.end, !dbg !3017

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %next_arg, metadata !3023, metadata !DIExpression()), !dbg !3025
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3026
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !3027
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !3027
  %5 = load i32, i32* %argc_pos, align 4, !dbg !3028
  %inc = add nsw i32 %5, 1, !dbg !3028
  store i32 %inc, i32* %argc_pos, align 4, !dbg !3028
  %idxprom = sext i32 %5 to i64, !dbg !3026
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 %idxprom, !dbg !3026
  %6 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3026
  store %struct.redisObject* %6, %struct.redisObject** %next_arg, align 8, !dbg !3025
  %7 = load %struct.redisObject*, %struct.redisObject** %next_arg, align 8, !dbg !3029
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %7, i32 0, i32 2, !dbg !3031
  %8 = load i8*, i8** %ptr, align 8, !dbg !3031
  %call = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !3032
  %tobool = icmp ne i32 %call, 0, !dbg !3032
  br i1 %tobool, label %if.end, label %if.then, !dbg !3033

if.then:                                          ; preds = %while.body
  store i32 1, i32* %replace, align 4, !dbg !3034
  br label %while.cond, !dbg !3036, !llvm.loop !3037

if.end:                                           ; preds = %while.body
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3039
  %10 = load %struct.redisObject*, %struct.redisObject** %next_arg, align 8, !dbg !3040
  %ptr1 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i32 0, i32 2, !dbg !3041
  %11 = load i8*, i8** %ptr1, align 8, !dbg !3041
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.82, i64 0, i64 0), i8* %11), !dbg !3042
  br label %return, !dbg !3043

while.end:                                        ; preds = %while.cond
  %12 = load i32, i32* %argc_pos, align 4, !dbg !3044
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3046
  %argc2 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 9, !dbg !3047
  %14 = load i32, i32* %argc2, align 8, !dbg !3047
  %cmp3 = icmp sge i32 %12, %14, !dbg !3048
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3049

if.then4:                                         ; preds = %while.end
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3050
  call void @addReplyError(%struct.client* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i64 0, i64 0)), !dbg !3052
  br label %return, !dbg !3053

if.end5:                                          ; preds = %while.end
  call void @llvm.dbg.declare(metadata %struct.redisObject** %code, metadata !3054, metadata !DIExpression()), !dbg !3055
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3056
  %argv6 = getelementptr inbounds %struct.client, %struct.client* %16, i32 0, i32 10, !dbg !3057
  %17 = load %struct.redisObject**, %struct.redisObject*** %argv6, align 8, !dbg !3057
  %18 = load i32, i32* %argc_pos, align 4, !dbg !3058
  %idxprom7 = sext i32 %18 to i64, !dbg !3056
  %arrayidx8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %idxprom7, !dbg !3056
  %19 = load %struct.redisObject*, %struct.redisObject** %arrayidx8, align 8, !dbg !3056
  store %struct.redisObject* %19, %struct.redisObject** %code, align 8, !dbg !3055
  call void @llvm.dbg.declare(metadata i8** %err, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i8* null, i8** %err, align 8, !dbg !3060
  call void @llvm.dbg.declare(metadata i8** %library_name, metadata !3061, metadata !DIExpression()), !dbg !3062
  store i8* null, i8** %library_name, align 8, !dbg !3062
  %20 = load %struct.redisObject*, %struct.redisObject** %code, align 8, !dbg !3063
  %ptr9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %20, i32 0, i32 2, !dbg !3065
  %21 = load i8*, i8** %ptr9, align 8, !dbg !3065
  %22 = load i32, i32* %replace, align 4, !dbg !3066
  %23 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3067
  %call10 = call i8* @functionsCreateWithLibraryCtx(i8* %21, i32 %22, i8** %err, %struct.functionsLibCtx* %23), !dbg !3068
  store i8* %call10, i8** %library_name, align 8, !dbg !3069
  %tobool11 = icmp ne i8* %call10, null, !dbg !3069
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !3070

if.then12:                                        ; preds = %if.end5
  %24 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3071
  %25 = load i8*, i8** %err, align 8, !dbg !3073
  call void @addReplyErrorSds(%struct.client* %24, i8* %25), !dbg !3074
  br label %return, !dbg !3075

if.end13:                                         ; preds = %if.end5
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3076
  %inc14 = add nsw i64 %26, 1, !dbg !3076
  store i64 %inc14, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !3076
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3077
  %28 = load i8*, i8** %library_name, align 8, !dbg !3078
  call void @addReplyBulkSds(%struct.client* %27, i8* %28), !dbg !3079
  br label %return, !dbg !3080

return:                                           ; preds = %if.end13, %if.then12, %if.then4, %if.end
  ret void, !dbg !3080
}

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @functionsMemory() #1 !dbg !3081 {
entry:
  %iter = alloca %struct.dictIterator*, align 8
  %entry1 = alloca %struct.dictEntry*, align 8
  %engines_nemory = alloca i64, align 8
  %ei = alloca %struct.engineInfo*, align 8
  %engine = alloca %struct.engine*, align 8
  call void @llvm.dbg.declare(metadata %struct.dictIterator** %iter, metadata !3084, metadata !DIExpression()), !dbg !3085
  %0 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3086
  %call = call %struct.dictIterator* @dictGetIterator(%struct.dict* %0), !dbg !3087
  store %struct.dictIterator* %call, %struct.dictIterator** %iter, align 8, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct.dictEntry** %entry1, metadata !3088, metadata !DIExpression()), !dbg !3089
  store %struct.dictEntry* null, %struct.dictEntry** %entry1, align 8, !dbg !3089
  call void @llvm.dbg.declare(metadata i64* %engines_nemory, metadata !3090, metadata !DIExpression()), !dbg !3091
  store i64 0, i64* %engines_nemory, align 8, !dbg !3091
  br label %while.cond, !dbg !3092

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !3093
  %call2 = call %struct.dictEntry* @dictNext(%struct.dictIterator* %1), !dbg !3094
  store %struct.dictEntry* %call2, %struct.dictEntry** %entry1, align 8, !dbg !3095
  %tobool = icmp ne %struct.dictEntry* %call2, null, !dbg !3092
  br i1 %tobool, label %while.body, label %while.end, !dbg !3092

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.engineInfo** %ei, metadata !3096, metadata !DIExpression()), !dbg !3098
  %2 = load %struct.dictEntry*, %struct.dictEntry** %entry1, align 8, !dbg !3099
  %v = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %2, i32 0, i32 1, !dbg !3099
  %val = bitcast %union.anon* %v to i8**, !dbg !3099
  %3 = load i8*, i8** %val, align 8, !dbg !3099
  %4 = bitcast i8* %3 to %struct.engineInfo*, !dbg !3099
  store %struct.engineInfo* %4, %struct.engineInfo** %ei, align 8, !dbg !3098
  call void @llvm.dbg.declare(metadata %struct.engine** %engine, metadata !3100, metadata !DIExpression()), !dbg !3101
  %5 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !3102
  %engine3 = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %5, i32 0, i32 1, !dbg !3103
  %6 = load %struct.engine*, %struct.engine** %engine3, align 8, !dbg !3103
  store %struct.engine* %6, %struct.engine** %engine, align 8, !dbg !3101
  %7 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !3104
  %get_used_memory = getelementptr inbounds %struct.engine, %struct.engine* %7, i32 0, i32 3, !dbg !3105
  %8 = load i64 (i8*)*, i64 (i8*)** %get_used_memory, align 8, !dbg !3105
  %9 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !3106
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %9, i32 0, i32 0, !dbg !3107
  %10 = load i8*, i8** %engine_ctx, align 8, !dbg !3107
  %call4 = call i64 %8(i8* %10), !dbg !3104
  %11 = load i64, i64* %engines_nemory, align 8, !dbg !3108
  %add = add i64 %11, %call4, !dbg !3108
  store i64 %add, i64* %engines_nemory, align 8, !dbg !3108
  br label %while.cond, !dbg !3092, !llvm.loop !3109

while.end:                                        ; preds = %while.cond
  %12 = load %struct.dictIterator*, %struct.dictIterator** %iter, align 8, !dbg !3111
  call void @dictReleaseIterator(%struct.dictIterator* %12), !dbg !3112
  %13 = load i64, i64* %engines_nemory, align 8, !dbg !3113
  ret i64 %13, !dbg !3114
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @functionsMemoryOverhead() #1 !dbg !3115 {
entry:
  %memory_overhead = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %memory_overhead, metadata !3116, metadata !DIExpression()), !dbg !3117
  %0 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3118
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %0, i32 0, i32 2, !dbg !3118
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !3118
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3118
  %2 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3118
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %2, i32 0, i32 2, !dbg !3118
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !3118
  %3 = load i64, i64* %arrayidx2, align 8, !dbg !3118
  %add = add i64 %1, %3, !dbg !3118
  %mul = mul i64 %add, 24, !dbg !3119
  %4 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3120
  %ht_size_exp = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 5, !dbg !3120
  %arrayidx3 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp, i64 0, i64 0, !dbg !3120
  %5 = load i8, i8* %arrayidx3, align 2, !dbg !3120
  %conv = sext i8 %5 to i32, !dbg !3120
  %cmp = icmp eq i32 %conv, -1, !dbg !3120
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3120

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3120

cond.false:                                       ; preds = %entry
  %6 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3120
  %ht_size_exp5 = getelementptr inbounds %struct.dict, %struct.dict* %6, i32 0, i32 5, !dbg !3120
  %arrayidx6 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp5, i64 0, i64 0, !dbg !3120
  %7 = load i8, i8* %arrayidx6, align 2, !dbg !3120
  %conv7 = sext i8 %7 to i32, !dbg !3120
  %sh_prom = zext i32 %conv7 to i64, !dbg !3120
  %shl = shl i64 1, %sh_prom, !dbg !3120
  br label %cond.end, !dbg !3120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %shl, %cond.false ], !dbg !3120
  %8 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3120
  %ht_size_exp8 = getelementptr inbounds %struct.dict, %struct.dict* %8, i32 0, i32 5, !dbg !3120
  %arrayidx9 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp8, i64 0, i64 1, !dbg !3120
  %9 = load i8, i8* %arrayidx9, align 1, !dbg !3120
  %conv10 = sext i8 %9 to i32, !dbg !3120
  %cmp11 = icmp eq i32 %conv10, -1, !dbg !3120
  br i1 %cmp11, label %cond.true13, label %cond.false14, !dbg !3120

cond.true13:                                      ; preds = %cond.end
  br label %cond.end20, !dbg !3120

cond.false14:                                     ; preds = %cond.end
  %10 = load %struct.dict*, %struct.dict** @engines, align 8, !dbg !3120
  %ht_size_exp15 = getelementptr inbounds %struct.dict, %struct.dict* %10, i32 0, i32 5, !dbg !3120
  %arrayidx16 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp15, i64 0, i64 1, !dbg !3120
  %11 = load i8, i8* %arrayidx16, align 1, !dbg !3120
  %conv17 = sext i8 %11 to i32, !dbg !3120
  %sh_prom18 = zext i32 %conv17 to i64, !dbg !3120
  %shl19 = shl i64 1, %sh_prom18, !dbg !3120
  br label %cond.end20, !dbg !3120

cond.end20:                                       ; preds = %cond.false14, %cond.true13
  %cond21 = phi i64 [ 0, %cond.true13 ], [ %shl19, %cond.false14 ], !dbg !3120
  %add22 = add i64 %cond, %cond21, !dbg !3120
  %mul23 = mul i64 %add22, 8, !dbg !3121
  %add24 = add i64 %mul, %mul23, !dbg !3122
  store i64 %add24, i64* %memory_overhead, align 8, !dbg !3117
  %12 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3123
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %12, i32 0, i32 1, !dbg !3123
  %13 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !3123
  %ht_used25 = getelementptr inbounds %struct.dict, %struct.dict* %13, i32 0, i32 2, !dbg !3123
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used25, i64 0, i64 0, !dbg !3123
  %14 = load i64, i64* %arrayidx26, align 8, !dbg !3123
  %15 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3123
  %functions27 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %15, i32 0, i32 1, !dbg !3123
  %16 = load %struct.dict*, %struct.dict** %functions27, align 8, !dbg !3123
  %ht_used28 = getelementptr inbounds %struct.dict, %struct.dict* %16, i32 0, i32 2, !dbg !3123
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used28, i64 0, i64 1, !dbg !3123
  %17 = load i64, i64* %arrayidx29, align 8, !dbg !3123
  %add30 = add i64 %14, %17, !dbg !3123
  %mul31 = mul i64 %add30, 24, !dbg !3124
  %18 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3125
  %functions32 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %18, i32 0, i32 1, !dbg !3125
  %19 = load %struct.dict*, %struct.dict** %functions32, align 8, !dbg !3125
  %ht_size_exp33 = getelementptr inbounds %struct.dict, %struct.dict* %19, i32 0, i32 5, !dbg !3125
  %arrayidx34 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp33, i64 0, i64 0, !dbg !3125
  %20 = load i8, i8* %arrayidx34, align 2, !dbg !3125
  %conv35 = sext i8 %20 to i32, !dbg !3125
  %cmp36 = icmp eq i32 %conv35, -1, !dbg !3125
  br i1 %cmp36, label %cond.true38, label %cond.false39, !dbg !3125

cond.true38:                                      ; preds = %cond.end20
  br label %cond.end46, !dbg !3125

cond.false39:                                     ; preds = %cond.end20
  %21 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3125
  %functions40 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %21, i32 0, i32 1, !dbg !3125
  %22 = load %struct.dict*, %struct.dict** %functions40, align 8, !dbg !3125
  %ht_size_exp41 = getelementptr inbounds %struct.dict, %struct.dict* %22, i32 0, i32 5, !dbg !3125
  %arrayidx42 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp41, i64 0, i64 0, !dbg !3125
  %23 = load i8, i8* %arrayidx42, align 2, !dbg !3125
  %conv43 = sext i8 %23 to i32, !dbg !3125
  %sh_prom44 = zext i32 %conv43 to i64, !dbg !3125
  %shl45 = shl i64 1, %sh_prom44, !dbg !3125
  br label %cond.end46, !dbg !3125

cond.end46:                                       ; preds = %cond.false39, %cond.true38
  %cond47 = phi i64 [ 0, %cond.true38 ], [ %shl45, %cond.false39 ], !dbg !3125
  %24 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3125
  %functions48 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %24, i32 0, i32 1, !dbg !3125
  %25 = load %struct.dict*, %struct.dict** %functions48, align 8, !dbg !3125
  %ht_size_exp49 = getelementptr inbounds %struct.dict, %struct.dict* %25, i32 0, i32 5, !dbg !3125
  %arrayidx50 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp49, i64 0, i64 1, !dbg !3125
  %26 = load i8, i8* %arrayidx50, align 1, !dbg !3125
  %conv51 = sext i8 %26 to i32, !dbg !3125
  %cmp52 = icmp eq i32 %conv51, -1, !dbg !3125
  br i1 %cmp52, label %cond.true54, label %cond.false55, !dbg !3125

cond.true54:                                      ; preds = %cond.end46
  br label %cond.end62, !dbg !3125

cond.false55:                                     ; preds = %cond.end46
  %27 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3125
  %functions56 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %27, i32 0, i32 1, !dbg !3125
  %28 = load %struct.dict*, %struct.dict** %functions56, align 8, !dbg !3125
  %ht_size_exp57 = getelementptr inbounds %struct.dict, %struct.dict* %28, i32 0, i32 5, !dbg !3125
  %arrayidx58 = getelementptr inbounds [2 x i8], [2 x i8]* %ht_size_exp57, i64 0, i64 1, !dbg !3125
  %29 = load i8, i8* %arrayidx58, align 1, !dbg !3125
  %conv59 = sext i8 %29 to i32, !dbg !3125
  %sh_prom60 = zext i32 %conv59 to i64, !dbg !3125
  %shl61 = shl i64 1, %sh_prom60, !dbg !3125
  br label %cond.end62, !dbg !3125

cond.end62:                                       ; preds = %cond.false55, %cond.true54
  %cond63 = phi i64 [ 0, %cond.true54 ], [ %shl61, %cond.false55 ], !dbg !3125
  %add64 = add i64 %cond47, %cond63, !dbg !3125
  %mul65 = mul i64 %add64, 8, !dbg !3126
  %add66 = add i64 %mul31, %mul65, !dbg !3127
  %add67 = add i64 %add66, 32, !dbg !3128
  %30 = load i64, i64* %memory_overhead, align 8, !dbg !3129
  %add68 = add i64 %30, %add67, !dbg !3129
  store i64 %add68, i64* %memory_overhead, align 8, !dbg !3129
  %31 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3130
  %cache_memory = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %31, i32 0, i32 2, !dbg !3131
  %32 = load i64, i64* %cache_memory, align 8, !dbg !3131
  %33 = load i64, i64* %memory_overhead, align 8, !dbg !3132
  %add69 = add i64 %33, %32, !dbg !3132
  store i64 %add69, i64* %memory_overhead, align 8, !dbg !3132
  %34 = load i64, i64* @engine_cache_memory, align 8, !dbg !3133
  %35 = load i64, i64* %memory_overhead, align 8, !dbg !3134
  %add70 = add i64 %35, %34, !dbg !3134
  store i64 %add70, i64* %memory_overhead, align 8, !dbg !3134
  %36 = load i64, i64* %memory_overhead, align 8, !dbg !3135
  ret i64 %36, !dbg !3136
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @functionsNum() #1 !dbg !3137 {
entry:
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3138
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 1, !dbg !3138
  %1 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !3138
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !3138
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !3138
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3138
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3138
  %functions1 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 1, !dbg !3138
  %4 = load %struct.dict*, %struct.dict** %functions1, align 8, !dbg !3138
  %ht_used2 = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 2, !dbg !3138
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used2, i64 0, i64 1, !dbg !3138
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !3138
  %add = add i64 %2, %5, !dbg !3138
  ret i64 %add, !dbg !3139
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @functionsLibNum() #1 !dbg !3140 {
entry:
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3141
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 0, !dbg !3141
  %1 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !3141
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !3141
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !3141
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3141
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3141
  %libraries1 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 0, !dbg !3141
  %4 = load %struct.dict*, %struct.dict** %libraries1, align 8, !dbg !3141
  %ht_used2 = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 2, !dbg !3141
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used2, i64 0, i64 1, !dbg !3141
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !3141
  %add = add i64 %2, %5, !dbg !3141
  ret i64 %add, !dbg !3142
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.dict* @functionsLibGet() #1 !dbg !3143 {
entry:
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3146
  %libraries = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 0, !dbg !3147
  %1 = load %struct.dict*, %struct.dict** %libraries, align 8, !dbg !3147
  ret %struct.dict* %1, !dbg !3148
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @functionsLibCtxfunctionsLen(%struct.functionsLibCtx* %functions_ctx) #1 !dbg !3149 {
entry:
  %functions_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  store %struct.functionsLibCtx* %functions_ctx, %struct.functionsLibCtx** %functions_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_ctx.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_ctx.addr, align 8, !dbg !3154
  %functions = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %0, i32 0, i32 1, !dbg !3154
  %1 = load %struct.dict*, %struct.dict** %functions, align 8, !dbg !3154
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %1, i32 0, i32 2, !dbg !3154
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !3154
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3154
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_ctx.addr, align 8, !dbg !3154
  %functions1 = getelementptr inbounds %struct.functionsLibCtx, %struct.functionsLibCtx* %3, i32 0, i32 1, !dbg !3154
  %4 = load %struct.dict*, %struct.dict** %functions1, align 8, !dbg !3154
  %ht_used2 = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 2, !dbg !3154
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used2, i64 0, i64 1, !dbg !3154
  %5 = load i64, i64* %arrayidx3, align 8, !dbg !3154
  %add = add i64 %2, %5, !dbg !3154
  ret i64 %add, !dbg !3155
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @functionsInit() #1 !dbg !3156 {
entry:
  %retval = alloca i32, align 4
  %call = call %struct.dict* @dictCreate(%struct.dictType* bitcast ({ i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }* @engineDictType to %struct.dictType*)), !dbg !3159
  store %struct.dict* %call, %struct.dict** @engines, align 8, !dbg !3160
  %call1 = call i32 (...) @luaEngineInitEngine(), !dbg !3161
  %cmp = icmp ne i32 %call1, 0, !dbg !3163
  br i1 %cmp, label %if.then, label %if.end, !dbg !3164

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !3165
  br label %return, !dbg !3165

if.end:                                           ; preds = %entry
  %call2 = call %struct.functionsLibCtx* @functionsLibCtxCreate(), !dbg !3167
  store %struct.functionsLibCtx* %call2, %struct.functionsLibCtx** @curr_functions_lib_ctx, align 8, !dbg !3168
  store i32 0, i32* %retval, align 4, !dbg !3169
  br label %return, !dbg !3169

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4, !dbg !3170
  ret i32 %0, !dbg !3170
}

declare dso_local i32 @luaEngineInitEngine(...) #0

declare dso_local void @addReplySetLen(%struct.client*, i64) #0

declare dso_local void @addReplyStatus(%struct.client*, i8*) #0

declare dso_local i32 @dictDelete(%struct.dict*, i8*) #0

; Function Attrs: noinline nounwind uwtable
define internal i64 @functionMallocSize(%struct.functionInfo* %fi) #1 !dbg !3171 {
entry:
  %fi.addr = alloca %struct.functionInfo*, align 8
  store %struct.functionInfo* %fi, %struct.functionInfo** %fi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionInfo** %fi.addr, metadata !3174, metadata !DIExpression()), !dbg !3175
  %0 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3176
  %1 = bitcast %struct.functionInfo* %0 to i8*, !dbg !3176
  %call = call i64 @malloc_usable_size(i8* %1) #7, !dbg !3176
  %2 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3177
  %name = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %2, i32 0, i32 0, !dbg !3178
  %3 = load i8*, i8** %name, align 8, !dbg !3178
  %call1 = call i64 @sdsZmallocSize(i8* %3), !dbg !3179
  %add = add i64 %call, %call1, !dbg !3180
  %4 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3181
  %desc = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %4, i32 0, i32 3, !dbg !3182
  %5 = load i8*, i8** %desc, align 8, !dbg !3182
  %tobool = icmp ne i8* %5, null, !dbg !3181
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3181

cond.true:                                        ; preds = %entry
  %6 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3183
  %desc2 = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %6, i32 0, i32 3, !dbg !3184
  %7 = load i8*, i8** %desc2, align 8, !dbg !3184
  %call3 = call i64 @sdsZmallocSize(i8* %7), !dbg !3185
  br label %cond.end, !dbg !3181

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3181

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call3, %cond.true ], [ 0, %cond.false ], !dbg !3181
  %add4 = add i64 %add, %cond, !dbg !3186
  %8 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3187
  %li = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %8, i32 0, i32 2, !dbg !3188
  %9 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !3188
  %ei = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %9, i32 0, i32 2, !dbg !3189
  %10 = load %struct.engineInfo*, %struct.engineInfo** %ei, align 8, !dbg !3189
  %engine = getelementptr inbounds %struct.engineInfo, %struct.engineInfo* %10, i32 0, i32 1, !dbg !3190
  %11 = load %struct.engine*, %struct.engine** %engine, align 8, !dbg !3190
  %get_function_memory_overhead = getelementptr inbounds %struct.engine, %struct.engine* %11, i32 0, i32 4, !dbg !3191
  %12 = load i64 (i8*)*, i64 (i8*)** %get_function_memory_overhead, align 8, !dbg !3191
  %13 = load %struct.functionInfo*, %struct.functionInfo** %fi.addr, align 8, !dbg !3192
  %function = getelementptr inbounds %struct.functionInfo, %struct.functionInfo* %13, i32 0, i32 1, !dbg !3193
  %14 = load i8*, i8** %function, align 8, !dbg !3193
  %call5 = call i64 %12(i8* %14), !dbg !3187
  %add6 = add i64 %add4, %call5, !dbg !3194
  ret i64 %add6, !dbg !3195
}

declare dso_local %struct.dictEntry* @dictUnlink(%struct.dict*, i8*) #0

declare dso_local void @dictFreeUnlinkedEntry(%struct.dict*, %struct.dictEntry*) #0

; Function Attrs: noinline nounwind uwtable
define internal i64 @libraryMallocSize(%struct.functionLibInfo* %li) #1 !dbg !3196 {
entry:
  %li.addr = alloca %struct.functionLibInfo*, align 8
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  %0 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !3201
  %1 = bitcast %struct.functionLibInfo* %0 to i8*, !dbg !3201
  %call = call i64 @malloc_usable_size(i8* %1) #7, !dbg !3201
  %2 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !3202
  %name = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %2, i32 0, i32 0, !dbg !3203
  %3 = load i8*, i8** %name, align 8, !dbg !3203
  %call1 = call i64 @sdsZmallocSize(i8* %3), !dbg !3204
  %add = add i64 %call, %call1, !dbg !3205
  %4 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !3206
  %code = getelementptr inbounds %struct.functionLibInfo, %struct.functionLibInfo* %4, i32 0, i32 3, !dbg !3207
  %5 = load i8*, i8** %code, align 8, !dbg !3207
  %call2 = call i64 @sdsZmallocSize(i8* %5), !dbg !3208
  %add3 = add i64 %add, %call2, !dbg !3209
  ret i64 %add3, !dbg !3210
}

declare dso_local void @replicationFeedMonitors(%struct.client*, %struct.list*, i32, %struct.redisObject**, i32) #0

declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) #0

declare dso_local i32 @scriptPrepareForRun(%struct.scriptRunCtx*, %struct.client*, %struct.client*, i8*, i64, i32) #0

declare dso_local void @scriptResetRun(%struct.scriptRunCtx*) #0

declare dso_local %struct.list* @listCreate() #0

declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) #0

declare dso_local void @listRelease(%struct.list*) #0

declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) #0

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "engineDictType", scope: !2, file: !3, line: 66, type: !120, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !64, globals: !117, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "functions.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 36, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "restorePolicy_Flush", value: 0)
!62 = !DIEnumerator(name: "restorePolicy_Append", value: 1)
!63 = !DIEnumerator(name: "restorePolicy_Replace", value: 2)
!64 = !{!65, !66, !68, !70, !71, !86, !96, !105, !114}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !73, line: 51, size: 24, elements: !74)
!73 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!74 = !{!75, !80, !81, !82}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !72, file: !73, line: 52, baseType: !76, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !79, line: 38, baseType: !67)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !72, file: !73, line: 53, baseType: !76, size: 8, offset: 8)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !72, file: !73, line: 54, baseType: !67, size: 8, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !72, file: !73, line: 55, baseType: !83, offset: 24)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: -1)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !73, line: 57, size: 40, elements: !88)
!88 = !{!89, !93, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !73, line: 58, baseType: !90, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !77, line: 25, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !79, line: 40, baseType: !92)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !73, line: 59, baseType: !90, size: 16, offset: 16)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !73, line: 60, baseType: !67, size: 8, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !73, line: 61, baseType: !83, offset: 40)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !73, line: 63, size: 72, elements: !98)
!98 = !{!99, !102, !103, !104}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !97, file: !73, line: 64, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !77, line: 26, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 42, baseType: !7)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !97, file: !73, line: 65, baseType: !100, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !73, line: 66, baseType: !67, size: 8, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !97, file: !73, line: 67, baseType: !83, offset: 72)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !73, line: 69, size: 136, elements: !107)
!107 = !{!108, !111, !112, !113}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !106, file: !73, line: 70, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !77, line: 27, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !79, line: 45, baseType: !70)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !106, file: !73, line: 71, baseType: !109, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !73, line: 72, baseType: !67, size: 8, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !106, file: !73, line: 73, baseType: !83, offset: 136)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !65}
!117 = !{!0, !118, !197, !199, !201, !203, !213, !215}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "functionDictType", scope: !2, file: !3, line: 76, type: !120, isLocal: false, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !121, line: 74, baseType: !122)
!121 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !121, line: 63, size: 512, elements: !123)
!123 = !{!124, !130, !176, !177, !182, !186, !187, !193}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !122, file: !121, line: 64, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!109, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !122, file: !121, line: 65, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!65, !134, !128}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !121, line: 61, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !121, line: 79, size: 448, elements: !137)
!137 = !{!138, !140, !166, !168, !169, !173}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !121, line: 80, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !136, file: !121, line: 82, baseType: !141, size: 128, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !164)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !121, line: 59, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !121, line: 47, size: 192, elements: !146)
!146 = !{!147, !148, !160, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !145, file: !121, line: 48, baseType: !65, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !145, file: !121, line: 54, baseType: !149, size: 64, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !121, line: 49, size: 64, elements: !150)
!150 = !{!151, !152, !153, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !121, line: 50, baseType: !65, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !149, file: !121, line: 51, baseType: !109, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !149, file: !121, line: 52, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !155, line: 27, baseType: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !79, line: 44, baseType: !157)
!157 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !149, file: !121, line: 53, baseType: !159, size: 64)
!159 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !121, line: 55, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !145, file: !121, line: 56, baseType: !163, offset: 192)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !84)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !136, file: !121, line: 83, baseType: !167, size: 128, offset: 192)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !164)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !136, file: !121, line: 85, baseType: !157, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !136, file: !121, line: 88, baseType: !170, size: 16, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !155, line: 25, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !79, line: 39, baseType: !172)
!172 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !136, file: !121, line: 89, baseType: !174, size: 16, offset: 400)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 16, elements: !164)
!175 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !122, file: !121, line: 66, baseType: !131, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !122, file: !121, line: 67, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !134, !128, !128}
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !122, file: !121, line: 68, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !134, !65}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !122, file: !121, line: 69, baseType: !183, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !122, file: !121, line: 70, baseType: !188, size: 64, offset: 384)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!181, !191, !159}
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !192, line: 46, baseType: !70)
!192 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !122, file: !121, line: 73, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!191, !134}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "engineStatsDictType", scope: !2, file: !3, line: 86, type: !120, isLocal: false, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "libraryFunctionDictType", scope: !2, file: !3, line: 96, type: !120, isLocal: false, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "librariesDictType", scope: !2, file: !3, line: 106, type: !120, isLocal: false, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "curr_functions_lib_ctx", scope: !2, file: !3, line: 123, type: !205, isLocal: true, isDefinition: true)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibCtx", file: !16, line: 936, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibCtx", file: !3, line: 53, size: 256, elements: !208)
!208 = !{!209, !210, !211, !212}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "libraries", scope: !207, file: !3, line: 54, baseType: !134, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !207, file: !3, line: 55, baseType: !134, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cache_memory", scope: !207, file: !3, line: 56, baseType: !191, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "engines_stats", scope: !207, file: !3, line: 57, baseType: !134, size: 64, offset: 192)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "engines", scope: !2, file: !3, line: 117, type: !134, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "engine_cache_memory", scope: !2, file: !3, line: 40, type: !191, isLocal: true, isDefinition: true)
!217 = !{i32 7, !"Dwarf Version", i32 4}
!218 = !{i32 2, !"Debug Info Version", i32 3}
!219 = !{i32 1, !"wchar_size", i32 4}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!223 = distinct !DISubprogram(name: "engineStatsDispose", scope: !3, file: !3, line: 136, type: !184, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!224 = !{}
!225 = !DILocalVariable(name: "d", arg: 1, scope: !223, file: !3, line: 136, type: !134)
!226 = !DILocation(line: 136, column: 38, scope: !223)
!227 = !DILocalVariable(name: "obj", arg: 2, scope: !223, file: !3, line: 136, type: !65)
!228 = !DILocation(line: 136, column: 47, scope: !223)
!229 = !DILocation(line: 137, column: 5, scope: !223)
!230 = !DILocalVariable(name: "stats", scope: !223, file: !3, line: 138, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibEngineStats", file: !3, line: 51, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibEngineStats", file: !3, line: 48, size: 128, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "n_lib", scope: !233, file: !3, line: 49, baseType: !191, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "n_functions", scope: !233, file: !3, line: 50, baseType: !191, size: 64, offset: 64)
!237 = !DILocation(line: 138, column: 30, scope: !223)
!238 = !DILocation(line: 138, column: 38, scope: !223)
!239 = !DILocation(line: 139, column: 11, scope: !223)
!240 = !DILocation(line: 139, column: 5, scope: !223)
!241 = !DILocation(line: 140, column: 1, scope: !223)
!242 = distinct !DISubprogram(name: "engineFunctionDispose", scope: !3, file: !3, line: 143, type: !184, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!243 = !DILocalVariable(name: "d", arg: 1, scope: !242, file: !3, line: 143, type: !134)
!244 = !DILocation(line: 143, column: 41, scope: !242)
!245 = !DILocalVariable(name: "obj", arg: 2, scope: !242, file: !3, line: 143, type: !65)
!246 = !DILocation(line: 143, column: 50, scope: !242)
!247 = !DILocation(line: 144, column: 5, scope: !242)
!248 = !DILocation(line: 145, column: 10, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !3, line: 145, column: 9)
!250 = !DILocation(line: 145, column: 9, scope: !242)
!251 = !DILocation(line: 146, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 145, column: 15)
!253 = !DILocalVariable(name: "fi", scope: !242, file: !3, line: 148, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionInfo", file: !256, line: 100, baseType: !257)
!256 = !DIFile(filename: "./functions.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionInfo", file: !256, line: 93, size: 320, elements: !258)
!258 = !{!259, !261, !262, !827, !828}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !256, line: 94, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !73, line: 43, baseType: !68)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !257, file: !256, line: 95, baseType: !65, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !257, file: !256, line: 97, baseType: !263, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionLibInfo", file: !256, line: 50, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionLibInfo", file: !256, line: 104, size: 256, elements: !266)
!266 = !{!267, !268, !269, !826}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !256, line: 105, baseType: !260, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !265, file: !256, line: 106, baseType: !134, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !265, file: !256, line: 107, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "engineInfo", file: !256, line: 89, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engineInfo", file: !256, line: 85, size: 192, elements: !273)
!273 = !{!274, !275, !825}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !272, file: !256, line: 86, baseType: !260, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !272, file: !256, line: 87, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "engine", file: !256, line: 81, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engine", file: !256, line: 52, size: 448, elements: !279)
!279 = !{!280, !281, !286, !815, !819, !820, !821}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "engine_ctx", scope: !278, file: !256, line: 54, baseType: !65, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !278, file: !256, line: 58, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!181, !65, !263, !260, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !278, file: !256, line: 65, baseType: !287, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290, !65, !65, !506, !191, !506, !191}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptRunCtx", file: !292, line: 68, baseType: !293)
!292 = !DIFile(filename: "./script.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptRunCtx", file: !292, line: 70, size: 384, elements: !294)
!294 = !{!295, !298, !810, !811, !812, !813, !814}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "funcname", scope: !293, file: !292, line: 71, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !293, file: !292, line: 72, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !302)
!302 = !{!303, !304, !305, !447, !448, !491, !501, !502, !503, !504, !505, !507, !508, !509, !510, !511, !662, !663, !664, !674, !675, !676, !677, !678, !680, !681, !682, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !712, !713, !714, !715, !716, !734, !735, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !771, !772, !773, !774, !793, !794, !795, !796, !803, !804, !805, !806, !807, !808, !809}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !301, file: !16, line: 1090, baseType: !109, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !16, line: 1091, baseType: !109, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !301, file: !16, line: 1092, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !309)
!309 = !{!310, !437, !439, !440, !441, !442, !443, !444, !445, !446}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !308, file: !6, line: 78, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !314)
!314 = !{!315, !378, !387, !391, !402, !406, !407, !411, !415, !416, !420, !424, !431, !432, !433}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !313, file: !6, line: 60, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319, !181, !65, !181}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !321, line: 99, size: 640, elements: !322)
!321 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!322 = !{!323, !324, !325, !327, !338, !345, !369, !370, !371, !376, !377}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !320, file: !321, line: 100, baseType: !181, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !320, file: !321, line: 101, baseType: !181, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !320, file: !321, line: 102, baseType: !326, size: 64, offset: 64)
!326 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !320, file: !321, line: 103, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !321, line: 77, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !321, line: 72, size: 256, elements: !331)
!331 = !{!332, !333, !336, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !330, file: !321, line: 73, baseType: !181, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !330, file: !321, line: 74, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !321, line: 66, baseType: !317)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !330, file: !321, line: 75, baseType: !334, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !330, file: !321, line: 76, baseType: !65, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !320, file: !321, line: 104, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !321, line: 96, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !321, line: 93, size: 64, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !341, file: !321, line: 94, baseType: !181, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !341, file: !321, line: 95, baseType: !181, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !320, file: !321, line: 105, baseType: !346, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !321, line: 90, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !321, line: 80, size: 512, elements: !349)
!349 = !{!350, !351, !354, !359, !364, !365, !367, !368}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !348, file: !321, line: 81, baseType: !326, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !348, file: !321, line: 82, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !353, line: 22, baseType: !109)
!353 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!354 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !348, file: !321, line: 83, baseType: !355, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !321, line: 67, baseType: !357)
!357 = !DISubroutineType(types: !358)
!358 = !{!181, !319, !326, !65}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !348, file: !321, line: 84, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !321, line: 68, baseType: !362)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !319, !65}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !348, file: !321, line: 85, baseType: !65, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !348, file: !321, line: 86, baseType: !366, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !321, line: 87, baseType: !366, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !348, file: !321, line: 88, baseType: !181, size: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !320, file: !321, line: 106, baseType: !181, size: 32, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !320, file: !321, line: 107, baseType: !65, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !320, file: !321, line: 108, baseType: !372, size: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !321, line: 69, baseType: !374)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !319}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !320, file: !321, line: 109, baseType: !372, size: 64, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !321, line: 110, baseType: !181, size: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !313, file: !6, line: 61, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!181, !382, !296, !181, !296, !383}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !313, file: !6, line: 62, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!181, !382, !128, !191}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !313, file: !6, line: 63, baseType: !392, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!181, !382, !395, !181}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !398, line: 26, size: 128, elements: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !397, file: !398, line: 28, baseType: !65, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !397, file: !398, line: 29, baseType: !191, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !313, file: !6, line: 64, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!181, !382, !65, !191}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !313, file: !6, line: 65, baseType: !384, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !313, file: !6, line: 66, baseType: !408, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!181, !382, !383}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !313, file: !6, line: 67, baseType: !412, size: 64, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!181, !382, !383, !181}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !313, file: !6, line: 68, baseType: !408, size: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !313, file: !6, line: 69, baseType: !417, size: 64, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!296, !382}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !313, file: !6, line: 70, baseType: !421, size: 64, offset: 640)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!181, !382, !296, !181, !326}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !313, file: !6, line: 71, baseType: !425, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !382, !68, !428, !326}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !429, line: 108, baseType: !430)
!429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 194, baseType: !157)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !313, file: !6, line: 72, baseType: !425, size: 64, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !313, file: !6, line: 73, baseType: !425, size: 64, offset: 832)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !313, file: !6, line: 74, baseType: !434, size: 64, offset: 896)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!181, !382}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !6, line: 79, baseType: !438, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !6, line: 80, baseType: !172, size: 16, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !308, file: !6, line: 81, baseType: !172, size: 16, offset: 112)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !308, file: !6, line: 82, baseType: !181, size: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !308, file: !6, line: 83, baseType: !65, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !308, file: !6, line: 84, baseType: !383, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !308, file: !6, line: 85, baseType: !383, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !308, file: !6, line: 86, baseType: !383, size: 64, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !308, file: !6, line: 87, baseType: !181, size: 32, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !301, file: !16, line: 1093, baseType: !181, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !301, file: !16, line: 1094, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !487}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !451, file: !16, line: 923, baseType: !134, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !451, file: !16, line: 924, baseType: !134, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !451, file: !16, line: 925, baseType: !134, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !451, file: !16, line: 926, baseType: !134, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !451, file: !16, line: 927, baseType: !134, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !451, file: !16, line: 928, baseType: !181, size: 32, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !451, file: !16, line: 929, baseType: !326, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !451, file: !16, line: 930, baseType: !70, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !451, file: !16, line: 931, baseType: !462, size: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !464, line: 54, baseType: !465)
!464 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !464, line: 47, size: 384, elements: !466)
!466 = !{!467, !476, !477, !481, !482, !486}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !465, file: !464, line: 48, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !464, line: 40, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !464, line: 36, size: 192, elements: !471)
!471 = !{!472, !474, !475}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !470, file: !464, line: 37, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !464, line: 38, baseType: !473, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !470, file: !464, line: 39, baseType: !65, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !465, file: !464, line: 49, baseType: !468, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !465, file: !464, line: 50, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!65, !65}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !465, file: !464, line: 51, baseType: !114, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !465, file: !464, line: 52, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!181, !65, !65}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !465, file: !464, line: 53, baseType: !70, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !451, file: !16, line: 932, baseType: !488, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !16, line: 917, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !16, line: 1095, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !495)
!495 = !{!496, !497, !498, !499, !500}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !494, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !494, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !494, file: !16, line: 860, baseType: !181, size: 32, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !494, file: !16, line: 861, baseType: !65, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !301, file: !16, line: 1096, baseType: !260, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !301, file: !16, line: 1097, baseType: !191, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !301, file: !16, line: 1098, baseType: !191, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !301, file: !16, line: 1099, baseType: !181, size: 32, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !301, file: !16, line: 1100, baseType: !506, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !301, file: !16, line: 1101, baseType: !181, size: 32, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !301, file: !16, line: 1102, baseType: !181, size: 32, offset: 736)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !301, file: !16, line: 1103, baseType: !506, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !301, file: !16, line: 1104, baseType: !191, size: 64, offset: 832)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !301, file: !16, line: 1105, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !524, !531, !533, !538, !539, !540, !541, !581, !603, !604, !619, !620, !621, !622, !623, !624, !625, !649, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !513, file: !16, line: 2235, baseType: !296, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !513, file: !16, line: 2237, baseType: !296, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !513, file: !16, line: 2238, baseType: !296, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !513, file: !16, line: 2239, baseType: !296, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !513, file: !16, line: 2240, baseType: !181, size: 32, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !513, file: !16, line: 2241, baseType: !296, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !513, file: !16, line: 2242, baseType: !296, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !513, file: !16, line: 2243, baseType: !523, size: 32, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !513, file: !16, line: 2244, baseType: !525, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !527, file: !16, line: 2111, baseType: !296, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !527, file: !16, line: 2112, baseType: !296, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !513, file: !16, line: 2245, baseType: !532, size: 64, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !513, file: !16, line: 2246, baseType: !534, size: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !536)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !299}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !513, file: !16, line: 2247, baseType: !181, size: 32, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !16, line: 2248, baseType: !109, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !513, file: !16, line: 2249, baseType: !109, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !513, file: !16, line: 2250, baseType: !542, size: 1792, offset: 896)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 1792, elements: !579)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !545)
!545 = !{!546, !547, !548, !550, !562, !564}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !544, file: !16, line: 2006, baseType: !296, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !16, line: 2007, baseType: !109, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !544, file: !16, line: 2008, baseType: !549, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !544, file: !16, line: 2022, baseType: !551, size: 128, offset: 192)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !16, line: 2009, size: 128, elements: !552)
!552 = !{!553, !557}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !551, file: !16, line: 2013, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !16, line: 2010, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !554, file: !16, line: 2012, baseType: !181, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !551, file: !16, line: 2021, baseType: !558, size: 128)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !551, file: !16, line: 2014, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !558, file: !16, line: 2016, baseType: !296, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !558, file: !16, line: 2020, baseType: !181, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !544, file: !16, line: 2023, baseType: !563, size: 32, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !544, file: !16, line: 2047, baseType: !565, size: 96, offset: 352)
!565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !16, line: 2024, size: 96, elements: !566)
!566 = !{!567, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !565, file: !16, line: 2037, baseType: !568, size: 96)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !16, line: 2027, size: 96, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !568, file: !16, line: 2031, baseType: !181, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !568, file: !16, line: 2033, baseType: !181, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !568, file: !16, line: 2036, baseType: !181, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !565, file: !16, line: 2046, baseType: !574, size: 96)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !565, file: !16, line: 2038, size: 96, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !574, file: !16, line: 2040, baseType: !181, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !574, file: !16, line: 2043, baseType: !181, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !574, file: !16, line: 2045, baseType: !181, size: 32, offset: 64)
!579 = !{!580}
!580 = !DISubrange(count: 4)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !513, file: !16, line: 2253, baseType: !582, size: 64, offset: 2688)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !584)
!584 = !DISubroutineType(types: !585)
!585 = !{!181, !512, !506, !181, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !589)
!589 = !{!590, !599, !601, !602}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !588, file: !16, line: 1962, baseType: !591, size: 16384)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !592, size: 16384, elements: !597)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !594)
!594 = !{!595, !596}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !593, file: !16, line: 1952, baseType: !181, size: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !16, line: 1953, baseType: !181, size: 32, offset: 32)
!597 = !{!598}
!598 = !DISubrange(count: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !588, file: !16, line: 1963, baseType: !600, size: 64, offset: 16384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !588, file: !16, line: 1964, baseType: !181, size: 32, offset: 16448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !588, file: !16, line: 1965, baseType: !181, size: 32, offset: 16480)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !513, file: !16, line: 2255, baseType: !512, size: 64, offset: 2752)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !513, file: !16, line: 2257, baseType: !605, size: 64, offset: 2816)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !607)
!607 = !{!608, !609, !611, !612, !613, !614, !615, !616, !617, !618}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !16, line: 2072, baseType: !296, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !16, line: 2073, baseType: !610, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !606, file: !16, line: 2074, baseType: !181, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !606, file: !16, line: 2075, baseType: !296, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !606, file: !16, line: 2076, baseType: !296, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !606, file: !16, line: 2077, baseType: !296, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !16, line: 2078, baseType: !181, size: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !606, file: !16, line: 2079, baseType: !296, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !606, file: !16, line: 2080, baseType: !605, size: 64, offset: 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !606, file: !16, line: 2082, baseType: !181, size: 32, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !513, file: !16, line: 2260, baseType: !326, size: 64, offset: 2880)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !513, file: !16, line: 2260, baseType: !326, size: 64, offset: 2944)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !513, file: !16, line: 2260, baseType: !326, size: 64, offset: 3008)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !513, file: !16, line: 2260, baseType: !326, size: 64, offset: 3072)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !513, file: !16, line: 2261, baseType: !181, size: 32, offset: 3136)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !513, file: !16, line: 2266, baseType: !260, size: 64, offset: 3200)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !513, file: !16, line: 2267, baseType: !626, size: 64, offset: 3264)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !628, line: 17, size: 832, elements: !629)
!628 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!629 = !{!630, !631, !632, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !627, file: !628, line: 19, baseType: !154, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !627, file: !628, line: 20, baseType: !154, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !627, file: !628, line: 21, baseType: !633, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !155, line: 26, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !79, line: 41, baseType: !181)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !627, file: !628, line: 22, baseType: !633, size: 32, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !627, file: !628, line: 23, baseType: !633, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !627, file: !628, line: 24, baseType: !633, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !627, file: !628, line: 25, baseType: !154, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !627, file: !628, line: 26, baseType: !633, size: 32, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !627, file: !628, line: 27, baseType: !633, size: 32, offset: 352)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !627, file: !628, line: 28, baseType: !154, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !627, file: !628, line: 29, baseType: !154, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !627, file: !628, line: 30, baseType: !633, size: 32, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !627, file: !628, line: 31, baseType: !159, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !627, file: !628, line: 32, baseType: !633, size: 32, offset: 640)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !627, file: !628, line: 33, baseType: !154, size: 64, offset: 704)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !627, file: !628, line: 34, baseType: !648, size: 64, offset: 768)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !513, file: !16, line: 2268, baseType: !650, size: 64, offset: 3328)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !513, file: !16, line: 2269, baseType: !543, size: 448, offset: 3392)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !513, file: !16, line: 2273, baseType: !181, size: 32, offset: 3840)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !513, file: !16, line: 2274, baseType: !181, size: 32, offset: 3872)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !513, file: !16, line: 2275, baseType: !181, size: 32, offset: 3904)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !513, file: !16, line: 2276, baseType: !181, size: 32, offset: 3936)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !513, file: !16, line: 2277, baseType: !181, size: 32, offset: 3968)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !513, file: !16, line: 2278, baseType: !134, size: 64, offset: 4032)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !513, file: !16, line: 2280, baseType: !512, size: 64, offset: 4096)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !513, file: !16, line: 2281, baseType: !660, size: 64, offset: 4160)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !301, file: !16, line: 1105, baseType: !512, size: 64, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !301, file: !16, line: 1106, baseType: !512, size: 64, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !301, file: !16, line: 1109, baseType: !665, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !668)
!668 = !{!669, !670, !671, !672, !673}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !667, file: !16, line: 1050, baseType: !260, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !16, line: 1051, baseType: !100, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !667, file: !16, line: 1052, baseType: !462, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !667, file: !16, line: 1053, baseType: !462, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !667, file: !16, line: 1056, baseType: !492, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !301, file: !16, line: 1112, baseType: !181, size: 32, offset: 1152)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !301, file: !16, line: 1113, baseType: !181, size: 32, offset: 1184)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !301, file: !16, line: 1114, baseType: !157, size: 64, offset: 1216)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !301, file: !16, line: 1115, baseType: !462, size: 64, offset: 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !301, file: !16, line: 1116, baseType: !679, size: 64, offset: 1344)
!679 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !301, file: !16, line: 1117, baseType: !462, size: 64, offset: 1408)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !301, file: !16, line: 1118, baseType: !191, size: 64, offset: 1472)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !301, file: !16, line: 1120, baseType: !683, size: 64, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !684, line: 10, baseType: !685)
!684 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !79, line: 160, baseType: !157)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !301, file: !16, line: 1121, baseType: !157, size: 64, offset: 1600)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !301, file: !16, line: 1122, baseType: !181, size: 32, offset: 1664)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !301, file: !16, line: 1123, baseType: !143, size: 64, offset: 1728)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !301, file: !16, line: 1124, baseType: !683, size: 64, offset: 1792)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !301, file: !16, line: 1125, baseType: !683, size: 64, offset: 1856)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !301, file: !16, line: 1126, baseType: !181, size: 32, offset: 1920)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !301, file: !16, line: 1127, baseType: !181, size: 32, offset: 1952)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !301, file: !16, line: 1128, baseType: !181, size: 32, offset: 1984)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !301, file: !16, line: 1129, baseType: !181, size: 32, offset: 2016)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !301, file: !16, line: 1130, baseType: !696, size: 64, offset: 2048)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !697, line: 58, baseType: !698)
!697 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !79, line: 153, baseType: !157)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !301, file: !16, line: 1131, baseType: !696, size: 64, offset: 2112)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !301, file: !16, line: 1132, baseType: !260, size: 64, offset: 2176)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !301, file: !16, line: 1133, baseType: !326, size: 64, offset: 2240)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !301, file: !16, line: 1134, baseType: !326, size: 64, offset: 2304)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !301, file: !16, line: 1135, baseType: !326, size: 64, offset: 2368)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !301, file: !16, line: 1136, baseType: !326, size: 64, offset: 2432)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !301, file: !16, line: 1137, baseType: !326, size: 64, offset: 2496)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !301, file: !16, line: 1138, baseType: !326, size: 64, offset: 2560)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !301, file: !16, line: 1139, baseType: !326, size: 64, offset: 2624)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !301, file: !16, line: 1142, baseType: !709, size: 328, offset: 2688)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 328, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 41)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !301, file: !16, line: 1143, baseType: !181, size: 32, offset: 3040)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !301, file: !16, line: 1144, baseType: !68, size: 64, offset: 3072)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !301, file: !16, line: 1145, baseType: !181, size: 32, offset: 3136)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !301, file: !16, line: 1146, baseType: !181, size: 32, offset: 3168)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !301, file: !16, line: 1147, baseType: !717, size: 320, offset: 3200)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !719)
!719 = !{!720, !729, !730, !731, !732, !733}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !718, file: !16, line: 957, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !724)
!724 = !{!725, !726, !727, !728}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !723, file: !16, line: 950, baseType: !506, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !723, file: !16, line: 951, baseType: !181, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !723, file: !16, line: 952, baseType: !181, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !723, file: !16, line: 953, baseType: !512, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !16, line: 958, baseType: !181, size: 32, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !718, file: !16, line: 959, baseType: !181, size: 32, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !718, file: !16, line: 962, baseType: !181, size: 32, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !718, file: !16, line: 965, baseType: !191, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !718, file: !16, line: 966, baseType: !181, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !301, file: !16, line: 1148, baseType: !181, size: 32, offset: 3520)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !301, file: !16, line: 1149, baseType: !736, size: 704, offset: 3584)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !738)
!738 = !{!739, !740, !742, !743, !744, !749, !750, !751, !752, !753, !754, !755}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !16, line: 973, baseType: !157, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !737, file: !16, line: 974, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !326)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !737, file: !16, line: 978, baseType: !134, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !737, file: !16, line: 980, baseType: !492, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !737, file: !16, line: 985, baseType: !745, size: 64, offset: 256)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !745, file: !16, line: 983, baseType: !181, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !745, file: !16, line: 984, baseType: !181, size: 32, offset: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !737, file: !16, line: 990, baseType: !191, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !737, file: !16, line: 991, baseType: !492, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !737, file: !16, line: 992, baseType: !492, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !737, file: !16, line: 993, baseType: !181, size: 32, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !737, file: !16, line: 996, baseType: !181, size: 32, offset: 544)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !737, file: !16, line: 997, baseType: !326, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !737, file: !16, line: 1000, baseType: !65, size: 64, offset: 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !301, file: !16, line: 1150, baseType: !326, size: 64, offset: 4288)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !301, file: !16, line: 1151, baseType: !462, size: 64, offset: 4352)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !301, file: !16, line: 1152, baseType: !134, size: 64, offset: 4416)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !301, file: !16, line: 1153, baseType: !462, size: 64, offset: 4480)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !301, file: !16, line: 1154, baseType: !134, size: 64, offset: 4544)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !301, file: !16, line: 1155, baseType: !260, size: 64, offset: 4608)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !301, file: !16, line: 1156, baseType: !260, size: 64, offset: 4672)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !301, file: !16, line: 1157, baseType: !468, size: 64, offset: 4736)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !301, file: !16, line: 1158, baseType: !468, size: 64, offset: 4800)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !301, file: !16, line: 1159, baseType: !468, size: 64, offset: 4864)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !301, file: !16, line: 1160, baseType: !767, size: 64, offset: 4928)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !109, !65}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !301, file: !16, line: 1163, baseType: !65, size: 64, offset: 4992)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !301, file: !16, line: 1166, baseType: !65, size: 64, offset: 5056)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !301, file: !16, line: 1173, baseType: !109, size: 64, offset: 5120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !301, file: !16, line: 1174, baseType: !775, size: 64, offset: 5184)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !777, line: 137, baseType: !778)
!777 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !777, line: 133, size: 192, elements: !779)
!779 = !{!780, !791, !792}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !778, file: !777, line: 134, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !777, line: 131, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !777, line: 98, size: 32, elements: !784)
!784 = !{!785, !786, !787, !788, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !783, file: !777, line: 99, baseType: !100, size: 1, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !783, file: !777, line: 100, baseType: !100, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !783, file: !777, line: 101, baseType: !100, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !783, file: !777, line: 102, baseType: !100, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !783, file: !777, line: 130, baseType: !790, offset: 32)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, elements: !84)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !778, file: !777, line: 135, baseType: !109, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !778, file: !777, line: 136, baseType: !109, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !301, file: !16, line: 1182, baseType: !191, size: 64, offset: 5248)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !301, file: !16, line: 1183, baseType: !181, size: 32, offset: 5312)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !301, file: !16, line: 1185, baseType: !468, size: 64, offset: 5376)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !301, file: !16, line: 1186, baseType: !797, size: 64, offset: 5440)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !799, file: !16, line: 1085, baseType: !462, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !799, file: !16, line: 1086, baseType: !191, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !301, file: !16, line: 1188, baseType: !468, size: 64, offset: 5504)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !301, file: !16, line: 1190, baseType: !191, size: 64, offset: 5568)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !301, file: !16, line: 1194, baseType: !191, size: 64, offset: 5632)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !301, file: !16, line: 1195, baseType: !741, size: 64, offset: 5696)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !301, file: !16, line: 1196, baseType: !181, size: 32, offset: 5760)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !301, file: !16, line: 1197, baseType: !191, size: 64, offset: 5824)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !301, file: !16, line: 1198, baseType: !68, size: 64, offset: 5888)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "original_client", scope: !293, file: !292, line: 73, baseType: !299, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !292, line: 74, baseType: !181, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "repl_flags", scope: !293, file: !292, line: 75, baseType: !181, size: 32, offset: 224)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !293, file: !292, line: 76, baseType: !352, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time", scope: !293, file: !292, line: 77, baseType: !741, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "get_used_memory", scope: !278, file: !256, line: 69, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!191, !65}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "get_function_memory_overhead", scope: !278, file: !256, line: 74, baseType: !816, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "get_engine_memory_overhead", scope: !278, file: !256, line: 77, baseType: !816, size: 64, offset: 320)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "free_function", scope: !278, file: !256, line: 80, baseType: !822, size: 64, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !65, !65}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !272, file: !256, line: 88, baseType: !299, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !265, file: !256, line: 108, baseType: !260, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !257, file: !256, line: 98, baseType: !260, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !257, file: !256, line: 99, baseType: !109, size: 64, offset: 256)
!829 = !DILocation(line: 148, column: 19, scope: !242)
!830 = !DILocation(line: 148, column: 24, scope: !242)
!831 = !DILocation(line: 149, column: 13, scope: !242)
!832 = !DILocation(line: 149, column: 17, scope: !242)
!833 = !DILocation(line: 149, column: 5, scope: !242)
!834 = !DILocation(line: 150, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !242, file: !3, line: 150, column: 9)
!836 = !DILocation(line: 150, column: 13, scope: !835)
!837 = !DILocation(line: 150, column: 9, scope: !242)
!838 = !DILocation(line: 151, column: 17, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !3, line: 150, column: 19)
!840 = !DILocation(line: 151, column: 21, scope: !839)
!841 = !DILocation(line: 151, column: 9, scope: !839)
!842 = !DILocation(line: 152, column: 5, scope: !839)
!843 = !DILocalVariable(name: "engine", scope: !242, file: !3, line: 153, type: !276)
!844 = !DILocation(line: 153, column: 13, scope: !242)
!845 = !DILocation(line: 153, column: 22, scope: !242)
!846 = !DILocation(line: 153, column: 26, scope: !242)
!847 = !DILocation(line: 153, column: 30, scope: !242)
!848 = !DILocation(line: 153, column: 34, scope: !242)
!849 = !DILocation(line: 154, column: 5, scope: !242)
!850 = !DILocation(line: 154, column: 13, scope: !242)
!851 = !DILocation(line: 154, column: 27, scope: !242)
!852 = !DILocation(line: 154, column: 35, scope: !242)
!853 = !DILocation(line: 154, column: 47, scope: !242)
!854 = !DILocation(line: 154, column: 51, scope: !242)
!855 = !DILocation(line: 155, column: 11, scope: !242)
!856 = !DILocation(line: 155, column: 5, scope: !242)
!857 = !DILocation(line: 156, column: 1, scope: !242)
!858 = distinct !DISubprogram(name: "engineLibraryDispose", scope: !3, file: !3, line: 168, type: !184, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!859 = !DILocalVariable(name: "d", arg: 1, scope: !858, file: !3, line: 168, type: !134)
!860 = !DILocation(line: 168, column: 40, scope: !858)
!861 = !DILocalVariable(name: "obj", arg: 2, scope: !858, file: !3, line: 168, type: !65)
!862 = !DILocation(line: 168, column: 49, scope: !858)
!863 = !DILocation(line: 169, column: 5, scope: !858)
!864 = !DILocation(line: 170, column: 23, scope: !858)
!865 = !DILocation(line: 170, column: 5, scope: !858)
!866 = !DILocation(line: 171, column: 1, scope: !858)
!867 = distinct !DISubprogram(name: "functionsLibCtxClear", scope: !3, file: !3, line: 174, type: !868, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !205}
!870 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !867, file: !3, line: 174, type: !205)
!871 = !DILocation(line: 174, column: 44, scope: !867)
!872 = !DILocation(line: 175, column: 15, scope: !867)
!873 = !DILocation(line: 175, column: 24, scope: !867)
!874 = !DILocation(line: 175, column: 5, scope: !867)
!875 = !DILocation(line: 176, column: 15, scope: !867)
!876 = !DILocation(line: 176, column: 24, scope: !867)
!877 = !DILocation(line: 176, column: 5, scope: !867)
!878 = !DILocalVariable(name: "iter", scope: !867, file: !3, line: 177, type: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictIterator", file: !121, line: 103, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictIterator", file: !121, line: 96, size: 384, elements: !882)
!882 = !{!883, !884, !885, !886, !887, !888, !889}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !881, file: !121, line: 97, baseType: !134, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !881, file: !121, line: 98, baseType: !157, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !881, file: !121, line: 99, baseType: !181, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "safe", scope: !881, file: !121, line: 99, baseType: !181, size: 32, offset: 160)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !881, file: !121, line: 100, baseType: !143, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "nextEntry", scope: !881, file: !121, line: 100, baseType: !143, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !881, file: !121, line: 102, baseType: !679, size: 64, offset: 320)
!890 = !DILocation(line: 177, column: 19, scope: !867)
!891 = !DILocation(line: 177, column: 42, scope: !867)
!892 = !DILocation(line: 177, column: 51, scope: !867)
!893 = !DILocation(line: 177, column: 26, scope: !867)
!894 = !DILocalVariable(name: "entry", scope: !867, file: !3, line: 178, type: !143)
!895 = !DILocation(line: 178, column: 16, scope: !867)
!896 = !DILocation(line: 179, column: 5, scope: !867)
!897 = !DILocation(line: 179, column: 30, scope: !867)
!898 = !DILocation(line: 179, column: 21, scope: !867)
!899 = !DILocation(line: 179, column: 19, scope: !867)
!900 = !DILocalVariable(name: "stats", scope: !901, file: !3, line: 180, type: !231)
!901 = distinct !DILexicalBlock(scope: !867, file: !3, line: 179, column: 38)
!902 = !DILocation(line: 180, column: 34, scope: !901)
!903 = !DILocation(line: 180, column: 42, scope: !901)
!904 = !DILocation(line: 181, column: 9, scope: !901)
!905 = !DILocation(line: 181, column: 16, scope: !901)
!906 = !DILocation(line: 181, column: 28, scope: !901)
!907 = !DILocation(line: 182, column: 9, scope: !901)
!908 = !DILocation(line: 182, column: 16, scope: !901)
!909 = !DILocation(line: 182, column: 22, scope: !901)
!910 = distinct !{!910, !896, !911, !912}
!911 = !DILocation(line: 183, column: 5, scope: !867)
!912 = !{!"llvm.loop.mustprogress"}
!913 = !DILocation(line: 184, column: 25, scope: !867)
!914 = !DILocation(line: 184, column: 5, scope: !867)
!915 = !DILocation(line: 185, column: 5, scope: !867)
!916 = !DILocation(line: 185, column: 29, scope: !867)
!917 = !DILocation(line: 185, column: 42, scope: !867)
!918 = !DILocation(line: 186, column: 1, scope: !867)
!919 = distinct !DISubprogram(name: "functionsLibCtxClearCurrent", scope: !3, file: !3, line: 188, type: !920, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!920 = !DISubroutineType(types: !921)
!921 = !{null, !181}
!922 = !DILocalVariable(name: "async", arg: 1, scope: !919, file: !3, line: 188, type: !181)
!923 = !DILocation(line: 188, column: 38, scope: !919)
!924 = !DILocation(line: 189, column: 9, scope: !925)
!925 = distinct !DILexicalBlock(scope: !919, file: !3, line: 189, column: 9)
!926 = !DILocation(line: 189, column: 9, scope: !919)
!927 = !DILocalVariable(name: "old_l_ctx", scope: !928, file: !3, line: 190, type: !205)
!928 = distinct !DILexicalBlock(scope: !925, file: !3, line: 189, column: 16)
!929 = !DILocation(line: 190, column: 26, scope: !928)
!930 = !DILocation(line: 190, column: 38, scope: !928)
!931 = !DILocation(line: 191, column: 34, scope: !928)
!932 = !DILocation(line: 191, column: 32, scope: !928)
!933 = !DILocation(line: 192, column: 28, scope: !928)
!934 = !DILocation(line: 192, column: 9, scope: !928)
!935 = !DILocation(line: 193, column: 5, scope: !928)
!936 = !DILocation(line: 194, column: 30, scope: !937)
!937 = distinct !DILexicalBlock(scope: !925, file: !3, line: 193, column: 12)
!938 = !DILocation(line: 194, column: 9, scope: !937)
!939 = !DILocation(line: 196, column: 1, scope: !919)
!940 = distinct !DISubprogram(name: "functionsLibCtxFree", scope: !3, file: !3, line: 199, type: !868, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!941 = !DILocalVariable(name: "functions_lib_ctx", arg: 1, scope: !940, file: !3, line: 199, type: !205)
!942 = !DILocation(line: 199, column: 43, scope: !940)
!943 = !DILocation(line: 200, column: 26, scope: !940)
!944 = !DILocation(line: 200, column: 5, scope: !940)
!945 = !DILocation(line: 201, column: 17, scope: !940)
!946 = !DILocation(line: 201, column: 36, scope: !940)
!947 = !DILocation(line: 201, column: 5, scope: !940)
!948 = !DILocation(line: 202, column: 17, scope: !940)
!949 = !DILocation(line: 202, column: 36, scope: !940)
!950 = !DILocation(line: 202, column: 5, scope: !940)
!951 = !DILocation(line: 203, column: 17, scope: !940)
!952 = !DILocation(line: 203, column: 36, scope: !940)
!953 = !DILocation(line: 203, column: 5, scope: !940)
!954 = !DILocation(line: 204, column: 11, scope: !940)
!955 = !DILocation(line: 204, column: 5, scope: !940)
!956 = !DILocation(line: 205, column: 1, scope: !940)
!957 = distinct !DISubprogram(name: "functionsLibCtxSwapWithCurrent", scope: !3, file: !3, line: 209, type: !868, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!958 = !DILocalVariable(name: "new_lib_ctx", arg: 1, scope: !957, file: !3, line: 209, type: !205)
!959 = !DILocation(line: 209, column: 54, scope: !957)
!960 = !DILocation(line: 210, column: 25, scope: !957)
!961 = !DILocation(line: 210, column: 5, scope: !957)
!962 = !DILocation(line: 211, column: 30, scope: !957)
!963 = !DILocation(line: 211, column: 28, scope: !957)
!964 = !DILocation(line: 212, column: 1, scope: !957)
!965 = distinct !DISubprogram(name: "functionsLibCtxGetCurrent", scope: !3, file: !3, line: 215, type: !966, scopeLine: 215, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!966 = !DISubroutineType(types: !967)
!967 = !{!205}
!968 = !DILocation(line: 216, column: 12, scope: !965)
!969 = !DILocation(line: 216, column: 5, scope: !965)
!970 = distinct !DISubprogram(name: "functionsLibCtxCreate", scope: !3, file: !3, line: 220, type: !966, scopeLine: 220, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!971 = !DILocalVariable(name: "ret", scope: !970, file: !3, line: 221, type: !205)
!972 = !DILocation(line: 221, column: 22, scope: !970)
!973 = !DILocation(line: 221, column: 28, scope: !970)
!974 = !DILocation(line: 222, column: 22, scope: !970)
!975 = !DILocation(line: 222, column: 5, scope: !970)
!976 = !DILocation(line: 222, column: 10, scope: !970)
!977 = !DILocation(line: 222, column: 20, scope: !970)
!978 = !DILocation(line: 223, column: 22, scope: !970)
!979 = !DILocation(line: 223, column: 5, scope: !970)
!980 = !DILocation(line: 223, column: 10, scope: !970)
!981 = !DILocation(line: 223, column: 20, scope: !970)
!982 = !DILocation(line: 224, column: 26, scope: !970)
!983 = !DILocation(line: 224, column: 5, scope: !970)
!984 = !DILocation(line: 224, column: 10, scope: !970)
!985 = !DILocation(line: 224, column: 24, scope: !970)
!986 = !DILocalVariable(name: "iter", scope: !970, file: !3, line: 225, type: !879)
!987 = !DILocation(line: 225, column: 19, scope: !970)
!988 = !DILocation(line: 225, column: 42, scope: !970)
!989 = !DILocation(line: 225, column: 26, scope: !970)
!990 = !DILocalVariable(name: "entry", scope: !970, file: !3, line: 226, type: !143)
!991 = !DILocation(line: 226, column: 16, scope: !970)
!992 = !DILocation(line: 227, column: 5, scope: !970)
!993 = !DILocation(line: 227, column: 30, scope: !970)
!994 = !DILocation(line: 227, column: 21, scope: !970)
!995 = !DILocation(line: 227, column: 19, scope: !970)
!996 = !DILocalVariable(name: "ei", scope: !997, file: !3, line: 228, type: !270)
!997 = distinct !DILexicalBlock(scope: !970, file: !3, line: 227, column: 38)
!998 = !DILocation(line: 228, column: 21, scope: !997)
!999 = !DILocation(line: 228, column: 26, scope: !997)
!1000 = !DILocalVariable(name: "stats", scope: !997, file: !3, line: 229, type: !231)
!1001 = !DILocation(line: 229, column: 34, scope: !997)
!1002 = !DILocation(line: 229, column: 42, scope: !997)
!1003 = !DILocation(line: 230, column: 17, scope: !997)
!1004 = !DILocation(line: 230, column: 22, scope: !997)
!1005 = !DILocation(line: 230, column: 37, scope: !997)
!1006 = !DILocation(line: 230, column: 41, scope: !997)
!1007 = !DILocation(line: 230, column: 47, scope: !997)
!1008 = !DILocation(line: 230, column: 9, scope: !997)
!1009 = distinct !{!1009, !992, !1010, !912}
!1010 = !DILocation(line: 231, column: 5, scope: !970)
!1011 = !DILocation(line: 232, column: 25, scope: !970)
!1012 = !DILocation(line: 232, column: 5, scope: !970)
!1013 = !DILocation(line: 233, column: 5, scope: !970)
!1014 = !DILocation(line: 233, column: 10, scope: !970)
!1015 = !DILocation(line: 233, column: 23, scope: !970)
!1016 = !DILocation(line: 234, column: 12, scope: !970)
!1017 = !DILocation(line: 234, column: 5, scope: !970)
!1018 = distinct !DISubprogram(name: "functionLibCreateFunction", scope: !3, file: !3, line: 246, type: !1019, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!181, !260, !65, !263, !260, !109, !285}
!1021 = !DILocalVariable(name: "name", arg: 1, scope: !1018, file: !3, line: 246, type: !260)
!1022 = !DILocation(line: 246, column: 35, scope: !1018)
!1023 = !DILocalVariable(name: "function", arg: 2, scope: !1018, file: !3, line: 246, type: !65)
!1024 = !DILocation(line: 246, column: 47, scope: !1018)
!1025 = !DILocalVariable(name: "li", arg: 3, scope: !1018, file: !3, line: 246, type: !263)
!1026 = !DILocation(line: 246, column: 74, scope: !1018)
!1027 = !DILocalVariable(name: "desc", arg: 4, scope: !1018, file: !3, line: 246, type: !260)
!1028 = !DILocation(line: 246, column: 82, scope: !1018)
!1029 = !DILocalVariable(name: "f_flags", arg: 5, scope: !1018, file: !3, line: 246, type: !109)
!1030 = !DILocation(line: 246, column: 97, scope: !1018)
!1031 = !DILocalVariable(name: "err", arg: 6, scope: !1018, file: !3, line: 246, type: !285)
!1032 = !DILocation(line: 246, column: 111, scope: !1018)
!1033 = !DILocation(line: 247, column: 29, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 247, column: 9)
!1035 = !DILocation(line: 247, column: 9, scope: !1034)
!1036 = !DILocation(line: 247, column: 35, scope: !1034)
!1037 = !DILocation(line: 247, column: 9, scope: !1018)
!1038 = !DILocation(line: 248, column: 16, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 247, column: 44)
!1040 = !DILocation(line: 248, column: 10, scope: !1039)
!1041 = !DILocation(line: 248, column: 14, scope: !1039)
!1042 = !DILocation(line: 249, column: 9, scope: !1039)
!1043 = !DILocation(line: 252, column: 24, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 252, column: 9)
!1045 = !DILocation(line: 252, column: 28, scope: !1044)
!1046 = !DILocation(line: 252, column: 39, scope: !1044)
!1047 = !DILocation(line: 252, column: 9, scope: !1044)
!1048 = !DILocation(line: 252, column: 9, scope: !1018)
!1049 = !DILocation(line: 253, column: 16, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 252, column: 46)
!1051 = !DILocation(line: 253, column: 10, scope: !1050)
!1052 = !DILocation(line: 253, column: 14, scope: !1050)
!1053 = !DILocation(line: 254, column: 9, scope: !1050)
!1054 = !DILocalVariable(name: "fi", scope: !1018, file: !3, line: 257, type: !254)
!1055 = !DILocation(line: 257, column: 19, scope: !1018)
!1056 = !DILocation(line: 257, column: 24, scope: !1018)
!1057 = !DILocation(line: 258, column: 6, scope: !1018)
!1058 = !DILocation(line: 258, column: 26, scope: !1018)
!1059 = !DILocation(line: 259, column: 17, scope: !1018)
!1060 = !DILocation(line: 260, column: 21, scope: !1018)
!1061 = !DILocation(line: 261, column: 15, scope: !1018)
!1062 = !DILocation(line: 262, column: 17, scope: !1018)
!1063 = !DILocation(line: 263, column: 20, scope: !1018)
!1064 = !DILocation(line: 258, column: 11, scope: !1018)
!1065 = !DILocalVariable(name: "res", scope: !1018, file: !3, line: 266, type: !181)
!1066 = !DILocation(line: 266, column: 9, scope: !1018)
!1067 = !DILocation(line: 266, column: 23, scope: !1018)
!1068 = !DILocation(line: 266, column: 27, scope: !1018)
!1069 = !DILocation(line: 266, column: 38, scope: !1018)
!1070 = !DILocation(line: 266, column: 42, scope: !1018)
!1071 = !DILocation(line: 266, column: 48, scope: !1018)
!1072 = !DILocation(line: 266, column: 15, scope: !1018)
!1073 = !DILocation(line: 267, column: 5, scope: !1018)
!1074 = !DILocation(line: 269, column: 5, scope: !1018)
!1075 = !DILocation(line: 270, column: 1, scope: !1018)
!1076 = distinct !DISubprogram(name: "functionsVerifyName", scope: !3, file: !3, line: 871, type: !1077, scopeLine: 871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!181, !260}
!1079 = !DILocalVariable(name: "name", arg: 1, scope: !1076, file: !3, line: 871, type: !260)
!1080 = !DILocation(line: 871, column: 36, scope: !1076)
!1081 = !DILocation(line: 872, column: 16, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 872, column: 9)
!1083 = !DILocation(line: 872, column: 9, scope: !1082)
!1084 = !DILocation(line: 872, column: 22, scope: !1082)
!1085 = !DILocation(line: 872, column: 9, scope: !1076)
!1086 = !DILocation(line: 873, column: 9, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 872, column: 28)
!1088 = !DILocalVariable(name: "i", scope: !1089, file: !3, line: 875, type: !191)
!1089 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 875, column: 5)
!1090 = !DILocation(line: 875, column: 17, scope: !1089)
!1091 = !DILocation(line: 875, column: 10, scope: !1089)
!1092 = !DILocation(line: 875, column: 25, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 875, column: 5)
!1094 = !DILocation(line: 875, column: 36, scope: !1093)
!1095 = !DILocation(line: 875, column: 29, scope: !1093)
!1096 = !DILocation(line: 875, column: 27, scope: !1093)
!1097 = !DILocation(line: 875, column: 5, scope: !1089)
!1098 = !DILocalVariable(name: "curr_char", scope: !1099, file: !3, line: 876, type: !69)
!1099 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 875, column: 49)
!1100 = !DILocation(line: 876, column: 14, scope: !1099)
!1101 = !DILocation(line: 876, column: 26, scope: !1099)
!1102 = !DILocation(line: 876, column: 31, scope: !1099)
!1103 = !DILocation(line: 877, column: 14, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 877, column: 13)
!1105 = !DILocation(line: 877, column: 24, scope: !1104)
!1106 = !DILocation(line: 877, column: 31, scope: !1104)
!1107 = !DILocation(line: 877, column: 34, scope: !1104)
!1108 = !DILocation(line: 877, column: 44, scope: !1104)
!1109 = !DILocation(line: 877, column: 52, scope: !1104)
!1110 = !DILocation(line: 878, column: 14, scope: !1104)
!1111 = !DILocation(line: 878, column: 24, scope: !1104)
!1112 = !DILocation(line: 878, column: 31, scope: !1104)
!1113 = !DILocation(line: 878, column: 34, scope: !1104)
!1114 = !DILocation(line: 878, column: 44, scope: !1104)
!1115 = !DILocation(line: 878, column: 52, scope: !1104)
!1116 = !DILocation(line: 879, column: 14, scope: !1104)
!1117 = !DILocation(line: 879, column: 24, scope: !1104)
!1118 = !DILocation(line: 879, column: 31, scope: !1104)
!1119 = !DILocation(line: 879, column: 34, scope: !1104)
!1120 = !DILocation(line: 879, column: 44, scope: !1104)
!1121 = !DILocation(line: 879, column: 52, scope: !1104)
!1122 = !DILocation(line: 880, column: 14, scope: !1104)
!1123 = !DILocation(line: 880, column: 24, scope: !1104)
!1124 = !DILocation(line: 877, column: 13, scope: !1099)
!1125 = !DILocation(line: 882, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 881, column: 9)
!1127 = !DILocation(line: 884, column: 9, scope: !1099)
!1128 = !DILocation(line: 875, column: 44, scope: !1093)
!1129 = !DILocation(line: 875, column: 5, scope: !1093)
!1130 = distinct !{!1130, !1097, !1131, !912}
!1131 = !DILocation(line: 885, column: 5, scope: !1089)
!1132 = !DILocation(line: 886, column: 5, scope: !1076)
!1133 = !DILocation(line: 887, column: 1, scope: !1076)
!1134 = distinct !DISubprogram(name: "functionsRegisterEngine", scope: !3, file: !3, line: 409, type: !1135, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!181, !296, !276}
!1137 = !DILocalVariable(name: "engine_name", arg: 1, scope: !1134, file: !3, line: 409, type: !296)
!1138 = !DILocation(line: 409, column: 41, scope: !1134)
!1139 = !DILocalVariable(name: "engine", arg: 2, scope: !1134, file: !3, line: 409, type: !276)
!1140 = !DILocation(line: 409, column: 62, scope: !1134)
!1141 = !DILocalVariable(name: "engine_name_sds", scope: !1134, file: !3, line: 410, type: !260)
!1142 = !DILocation(line: 410, column: 9, scope: !1134)
!1143 = !DILocation(line: 410, column: 34, scope: !1134)
!1144 = !DILocation(line: 410, column: 27, scope: !1134)
!1145 = !DILocation(line: 411, column: 24, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 411, column: 9)
!1147 = !DILocation(line: 411, column: 33, scope: !1146)
!1148 = !DILocation(line: 411, column: 9, scope: !1146)
!1149 = !DILocation(line: 411, column: 9, scope: !1134)
!1150 = !DILocation(line: 412, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 411, column: 51)
!1152 = !DILocation(line: 412, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 412, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 412, column: 9)
!1155 = !DILocation(line: 412, column: 9, scope: !1154)
!1156 = !DILocation(line: 413, column: 17, scope: !1151)
!1157 = !DILocation(line: 413, column: 9, scope: !1151)
!1158 = !DILocation(line: 414, column: 9, scope: !1151)
!1159 = !DILocalVariable(name: "c", scope: !1134, file: !3, line: 417, type: !299)
!1160 = !DILocation(line: 417, column: 13, scope: !1134)
!1161 = !DILocation(line: 417, column: 17, scope: !1134)
!1162 = !DILocation(line: 418, column: 5, scope: !1134)
!1163 = !DILocation(line: 418, column: 8, scope: !1134)
!1164 = !DILocation(line: 418, column: 14, scope: !1134)
!1165 = !DILocalVariable(name: "ei", scope: !1134, file: !3, line: 419, type: !270)
!1166 = !DILocation(line: 419, column: 17, scope: !1134)
!1167 = !DILocation(line: 419, column: 22, scope: !1134)
!1168 = !DILocation(line: 420, column: 6, scope: !1134)
!1169 = !DILocation(line: 420, column: 25, scope: !1134)
!1170 = !DILocation(line: 420, column: 35, scope: !1134)
!1171 = !DILocation(line: 420, column: 62, scope: !1134)
!1172 = !DILocation(line: 420, column: 75, scope: !1134)
!1173 = !DILocation(line: 420, column: 11, scope: !1134)
!1174 = !DILocation(line: 422, column: 13, scope: !1134)
!1175 = !DILocation(line: 422, column: 22, scope: !1134)
!1176 = !DILocation(line: 422, column: 39, scope: !1134)
!1177 = !DILocation(line: 422, column: 5, scope: !1134)
!1178 = !DILocation(line: 424, column: 28, scope: !1134)
!1179 = !DILocation(line: 424, column: 62, scope: !1134)
!1180 = !DILocation(line: 424, column: 66, scope: !1134)
!1181 = !DILocation(line: 424, column: 47, scope: !1134)
!1182 = !DILocation(line: 424, column: 45, scope: !1134)
!1183 = !DILocation(line: 425, column: 13, scope: !1134)
!1184 = !DILocation(line: 424, column: 72, scope: !1134)
!1185 = !DILocation(line: 426, column: 13, scope: !1134)
!1186 = !DILocation(line: 426, column: 21, scope: !1134)
!1187 = !DILocation(line: 426, column: 48, scope: !1134)
!1188 = !DILocation(line: 426, column: 56, scope: !1134)
!1189 = !DILocation(line: 425, column: 34, scope: !1134)
!1190 = !DILocation(line: 424, column: 25, scope: !1134)
!1191 = !DILocation(line: 428, column: 5, scope: !1134)
!1192 = !DILocation(line: 429, column: 1, scope: !1134)
!1193 = distinct !DISubprogram(name: "functionStatsCommand", scope: !3, file: !3, line: 434, type: !536, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1194 = !DILocalVariable(name: "c", arg: 1, scope: !1193, file: !3, line: 434, type: !299)
!1195 = !DILocation(line: 434, column: 35, scope: !1193)
!1196 = !DILocation(line: 435, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 435, column: 9)
!1198 = !DILocation(line: 435, column: 27, scope: !1197)
!1199 = !DILocation(line: 435, column: 30, scope: !1197)
!1200 = !DILocation(line: 435, column: 9, scope: !1193)
!1201 = !DILocation(line: 436, column: 29, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 435, column: 46)
!1203 = !DILocation(line: 436, column: 39, scope: !1202)
!1204 = !DILocation(line: 436, column: 9, scope: !1202)
!1205 = !DILocation(line: 437, column: 9, scope: !1202)
!1206 = !DILocation(line: 440, column: 20, scope: !1193)
!1207 = !DILocation(line: 440, column: 5, scope: !1193)
!1208 = !DILocation(line: 442, column: 25, scope: !1193)
!1209 = !DILocation(line: 442, column: 5, scope: !1193)
!1210 = !DILocation(line: 443, column: 10, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 443, column: 9)
!1212 = !DILocation(line: 443, column: 9, scope: !1193)
!1213 = !DILocation(line: 444, column: 22, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 443, column: 29)
!1215 = !DILocation(line: 444, column: 9, scope: !1214)
!1216 = !DILocation(line: 445, column: 5, scope: !1214)
!1217 = !DILocation(line: 446, column: 24, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 445, column: 12)
!1219 = !DILocation(line: 446, column: 9, scope: !1218)
!1220 = !DILocation(line: 447, column: 29, scope: !1218)
!1221 = !DILocation(line: 447, column: 9, scope: !1218)
!1222 = !DILocation(line: 448, column: 29, scope: !1218)
!1223 = !DILocation(line: 448, column: 32, scope: !1218)
!1224 = !DILocation(line: 448, column: 9, scope: !1218)
!1225 = !DILocation(line: 449, column: 29, scope: !1218)
!1226 = !DILocation(line: 449, column: 9, scope: !1218)
!1227 = !DILocalVariable(name: "script_client", scope: !1218, file: !3, line: 450, type: !299)
!1228 = !DILocation(line: 450, column: 17, scope: !1218)
!1229 = !DILocation(line: 450, column: 33, scope: !1218)
!1230 = !DILocation(line: 451, column: 26, scope: !1218)
!1231 = !DILocation(line: 451, column: 29, scope: !1218)
!1232 = !DILocation(line: 451, column: 44, scope: !1218)
!1233 = !DILocation(line: 451, column: 9, scope: !1218)
!1234 = !DILocalVariable(name: "i", scope: !1235, file: !3, line: 452, type: !181)
!1235 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 452, column: 9)
!1236 = !DILocation(line: 452, column: 18, scope: !1235)
!1237 = !DILocation(line: 452, column: 14, scope: !1235)
!1238 = !DILocation(line: 452, column: 26, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 452, column: 9)
!1240 = !DILocation(line: 452, column: 30, scope: !1239)
!1241 = !DILocation(line: 452, column: 45, scope: !1239)
!1242 = !DILocation(line: 452, column: 28, scope: !1239)
!1243 = !DILocation(line: 452, column: 9, scope: !1235)
!1244 = !DILocation(line: 453, column: 33, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 452, column: 57)
!1246 = !DILocation(line: 453, column: 36, scope: !1245)
!1247 = !DILocation(line: 453, column: 51, scope: !1245)
!1248 = !DILocation(line: 453, column: 56, scope: !1245)
!1249 = !DILocation(line: 453, column: 60, scope: !1245)
!1250 = !DILocation(line: 453, column: 72, scope: !1245)
!1251 = !DILocation(line: 453, column: 87, scope: !1245)
!1252 = !DILocation(line: 453, column: 92, scope: !1245)
!1253 = !DILocation(line: 453, column: 96, scope: !1245)
!1254 = !DILocation(line: 453, column: 65, scope: !1245)
!1255 = !DILocation(line: 453, column: 13, scope: !1245)
!1256 = !DILocation(line: 454, column: 9, scope: !1245)
!1257 = !DILocation(line: 452, column: 52, scope: !1239)
!1258 = !DILocation(line: 452, column: 9, scope: !1239)
!1259 = distinct !{!1259, !1243, !1260, !912}
!1260 = !DILocation(line: 454, column: 9, scope: !1235)
!1261 = !DILocation(line: 455, column: 29, scope: !1218)
!1262 = !DILocation(line: 455, column: 9, scope: !1218)
!1263 = !DILocation(line: 456, column: 26, scope: !1218)
!1264 = !DILocation(line: 456, column: 29, scope: !1218)
!1265 = !DILocation(line: 456, column: 9, scope: !1218)
!1266 = !DILocation(line: 459, column: 25, scope: !1193)
!1267 = !DILocation(line: 459, column: 5, scope: !1193)
!1268 = !DILocation(line: 460, column: 20, scope: !1193)
!1269 = !DILocation(line: 460, column: 23, scope: !1193)
!1270 = !DILocation(line: 460, column: 5, scope: !1193)
!1271 = !DILocalVariable(name: "iter", scope: !1193, file: !3, line: 461, type: !879)
!1272 = !DILocation(line: 461, column: 19, scope: !1193)
!1273 = !DILocation(line: 461, column: 42, scope: !1193)
!1274 = !DILocation(line: 461, column: 26, scope: !1193)
!1275 = !DILocalVariable(name: "entry", scope: !1193, file: !3, line: 462, type: !143)
!1276 = !DILocation(line: 462, column: 16, scope: !1193)
!1277 = !DILocation(line: 463, column: 5, scope: !1193)
!1278 = !DILocation(line: 463, column: 30, scope: !1193)
!1279 = !DILocation(line: 463, column: 21, scope: !1193)
!1280 = !DILocation(line: 463, column: 19, scope: !1193)
!1281 = !DILocalVariable(name: "ei", scope: !1282, file: !3, line: 464, type: !270)
!1282 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 463, column: 38)
!1283 = !DILocation(line: 464, column: 21, scope: !1282)
!1284 = !DILocation(line: 464, column: 26, scope: !1282)
!1285 = !DILocation(line: 465, column: 29, scope: !1282)
!1286 = !DILocation(line: 465, column: 32, scope: !1282)
!1287 = !DILocation(line: 465, column: 36, scope: !1282)
!1288 = !DILocation(line: 465, column: 9, scope: !1282)
!1289 = !DILocation(line: 466, column: 24, scope: !1282)
!1290 = !DILocation(line: 466, column: 9, scope: !1282)
!1291 = !DILocalVariable(name: "e_stats", scope: !1282, file: !3, line: 467, type: !231)
!1292 = !DILocation(line: 467, column: 34, scope: !1282)
!1293 = !DILocation(line: 467, column: 59, scope: !1282)
!1294 = !DILocation(line: 467, column: 83, scope: !1282)
!1295 = !DILocation(line: 467, column: 98, scope: !1282)
!1296 = !DILocation(line: 467, column: 102, scope: !1282)
!1297 = !DILocation(line: 467, column: 44, scope: !1282)
!1298 = !DILocation(line: 468, column: 29, scope: !1282)
!1299 = !DILocation(line: 468, column: 9, scope: !1282)
!1300 = !DILocation(line: 469, column: 26, scope: !1282)
!1301 = !DILocation(line: 469, column: 29, scope: !1282)
!1302 = !DILocation(line: 469, column: 38, scope: !1282)
!1303 = !DILocation(line: 469, column: 9, scope: !1282)
!1304 = !DILocation(line: 470, column: 29, scope: !1282)
!1305 = !DILocation(line: 470, column: 9, scope: !1282)
!1306 = !DILocation(line: 471, column: 26, scope: !1282)
!1307 = !DILocation(line: 471, column: 29, scope: !1282)
!1308 = !DILocation(line: 471, column: 38, scope: !1282)
!1309 = !DILocation(line: 471, column: 9, scope: !1282)
!1310 = distinct !{!1310, !1277, !1311, !912}
!1311 = !DILocation(line: 472, column: 5, scope: !1193)
!1312 = !DILocation(line: 473, column: 25, scope: !1193)
!1313 = !DILocation(line: 473, column: 5, scope: !1193)
!1314 = !DILocation(line: 474, column: 1, scope: !1193)
!1315 = distinct !DISubprogram(name: "sdslen", scope: !73, file: !73, line: 87, type: !1316, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!191, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1319 = !DILocalVariable(name: "s", arg: 1, scope: !1315, file: !73, line: 87, type: !1318)
!1320 = !DILocation(line: 87, column: 39, scope: !1315)
!1321 = !DILocalVariable(name: "flags", scope: !1315, file: !73, line: 88, type: !67)
!1322 = !DILocation(line: 88, column: 19, scope: !1315)
!1323 = !DILocation(line: 88, column: 27, scope: !1315)
!1324 = !DILocation(line: 89, column: 12, scope: !1315)
!1325 = !DILocation(line: 89, column: 17, scope: !1315)
!1326 = !DILocation(line: 89, column: 5, scope: !1315)
!1327 = !DILocation(line: 91, column: 20, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1315, file: !73, line: 89, column: 33)
!1329 = !DILocation(line: 91, column: 13, scope: !1328)
!1330 = !DILocation(line: 93, column: 20, scope: !1328)
!1331 = !DILocation(line: 93, column: 34, scope: !1328)
!1332 = !DILocation(line: 93, column: 13, scope: !1328)
!1333 = !DILocation(line: 95, column: 20, scope: !1328)
!1334 = !DILocation(line: 95, column: 35, scope: !1328)
!1335 = !DILocation(line: 95, column: 13, scope: !1328)
!1336 = !DILocation(line: 97, column: 20, scope: !1328)
!1337 = !DILocation(line: 97, column: 35, scope: !1328)
!1338 = !DILocation(line: 97, column: 13, scope: !1328)
!1339 = !DILocation(line: 99, column: 20, scope: !1328)
!1340 = !DILocation(line: 99, column: 35, scope: !1328)
!1341 = !DILocation(line: 99, column: 13, scope: !1328)
!1342 = !DILocation(line: 101, column: 5, scope: !1315)
!1343 = !DILocation(line: 102, column: 1, scope: !1315)
!1344 = distinct !DISubprogram(name: "functionListCommand", scope: !3, file: !3, line: 508, type: !536, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1345 = !DILocalVariable(name: "c", arg: 1, scope: !1344, file: !3, line: 508, type: !299)
!1346 = !DILocation(line: 508, column: 34, scope: !1344)
!1347 = !DILocalVariable(name: "with_code", scope: !1344, file: !3, line: 509, type: !181)
!1348 = !DILocation(line: 509, column: 9, scope: !1344)
!1349 = !DILocalVariable(name: "library_name", scope: !1344, file: !3, line: 510, type: !260)
!1350 = !DILocation(line: 510, column: 9, scope: !1344)
!1351 = !DILocalVariable(name: "i", scope: !1352, file: !3, line: 511, type: !181)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 511, column: 5)
!1353 = !DILocation(line: 511, column: 14, scope: !1352)
!1354 = !DILocation(line: 511, column: 10, scope: !1352)
!1355 = !DILocation(line: 511, column: 22, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 511, column: 5)
!1357 = !DILocation(line: 511, column: 26, scope: !1356)
!1358 = !DILocation(line: 511, column: 29, scope: !1356)
!1359 = !DILocation(line: 511, column: 24, scope: !1356)
!1360 = !DILocation(line: 511, column: 5, scope: !1352)
!1361 = !DILocalVariable(name: "next_arg", scope: !1362, file: !3, line: 512, type: !492)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 511, column: 41)
!1363 = !DILocation(line: 512, column: 15, scope: !1362)
!1364 = !DILocation(line: 512, column: 26, scope: !1362)
!1365 = !DILocation(line: 512, column: 29, scope: !1362)
!1366 = !DILocation(line: 512, column: 34, scope: !1362)
!1367 = !DILocation(line: 513, column: 14, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 513, column: 13)
!1369 = !DILocation(line: 513, column: 24, scope: !1368)
!1370 = !DILocation(line: 513, column: 39, scope: !1368)
!1371 = !DILocation(line: 513, column: 49, scope: !1368)
!1372 = !DILocation(line: 513, column: 28, scope: !1368)
!1373 = !DILocation(line: 513, column: 13, scope: !1362)
!1374 = !DILocation(line: 514, column: 23, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 513, column: 67)
!1376 = !DILocation(line: 515, column: 13, scope: !1375)
!1377 = !DILocation(line: 517, column: 14, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 517, column: 13)
!1379 = !DILocation(line: 517, column: 27, scope: !1378)
!1380 = !DILocation(line: 517, column: 42, scope: !1378)
!1381 = !DILocation(line: 517, column: 52, scope: !1378)
!1382 = !DILocation(line: 517, column: 31, scope: !1378)
!1383 = !DILocation(line: 517, column: 13, scope: !1362)
!1384 = !DILocation(line: 518, column: 17, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 518, column: 17)
!1386 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 517, column: 73)
!1387 = !DILocation(line: 518, column: 22, scope: !1385)
!1388 = !DILocation(line: 518, column: 25, scope: !1385)
!1389 = !DILocation(line: 518, column: 30, scope: !1385)
!1390 = !DILocation(line: 518, column: 19, scope: !1385)
!1391 = !DILocation(line: 518, column: 17, scope: !1386)
!1392 = !DILocation(line: 519, column: 31, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 518, column: 35)
!1394 = !DILocation(line: 519, column: 17, scope: !1393)
!1395 = !DILocation(line: 520, column: 17, scope: !1393)
!1396 = !DILocation(line: 522, column: 28, scope: !1386)
!1397 = !DILocation(line: 522, column: 31, scope: !1386)
!1398 = !DILocation(line: 522, column: 36, scope: !1386)
!1399 = !DILocation(line: 522, column: 42, scope: !1386)
!1400 = !DILocation(line: 522, column: 26, scope: !1386)
!1401 = !DILocation(line: 523, column: 13, scope: !1386)
!1402 = !DILocation(line: 525, column: 26, scope: !1362)
!1403 = !DILocation(line: 525, column: 39, scope: !1362)
!1404 = !DILocation(line: 525, column: 74, scope: !1362)
!1405 = !DILocation(line: 525, column: 84, scope: !1362)
!1406 = !DILocation(line: 525, column: 29, scope: !1362)
!1407 = !DILocation(line: 525, column: 9, scope: !1362)
!1408 = !DILocation(line: 526, column: 9, scope: !1362)
!1409 = !DILocation(line: 511, column: 36, scope: !1356)
!1410 = !DILocation(line: 511, column: 5, scope: !1356)
!1411 = distinct !{!1411, !1360, !1412, !912}
!1412 = !DILocation(line: 527, column: 5, scope: !1352)
!1413 = !DILocalVariable(name: "reply_len", scope: !1344, file: !3, line: 528, type: !191)
!1414 = !DILocation(line: 528, column: 12, scope: !1344)
!1415 = !DILocalVariable(name: "len_ptr", scope: !1344, file: !3, line: 529, type: !65)
!1416 = !DILocation(line: 529, column: 11, scope: !1344)
!1417 = !DILocation(line: 530, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 530, column: 9)
!1419 = !DILocation(line: 530, column: 9, scope: !1344)
!1420 = !DILocation(line: 531, column: 39, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 530, column: 23)
!1422 = !DILocation(line: 531, column: 19, scope: !1421)
!1423 = !DILocation(line: 531, column: 17, scope: !1421)
!1424 = !DILocation(line: 532, column: 5, scope: !1421)
!1425 = !DILocation(line: 534, column: 26, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 532, column: 12)
!1427 = !DILocation(line: 534, column: 29, scope: !1426)
!1428 = !DILocation(line: 534, column: 9, scope: !1426)
!1429 = !DILocalVariable(name: "iter", scope: !1344, file: !3, line: 536, type: !879)
!1430 = !DILocation(line: 536, column: 19, scope: !1344)
!1431 = !DILocation(line: 536, column: 42, scope: !1344)
!1432 = !DILocation(line: 536, column: 66, scope: !1344)
!1433 = !DILocation(line: 536, column: 26, scope: !1344)
!1434 = !DILocalVariable(name: "entry", scope: !1344, file: !3, line: 537, type: !143)
!1435 = !DILocation(line: 537, column: 16, scope: !1344)
!1436 = !DILocation(line: 538, column: 5, scope: !1344)
!1437 = !DILocation(line: 538, column: 30, scope: !1344)
!1438 = !DILocation(line: 538, column: 21, scope: !1344)
!1439 = !DILocation(line: 538, column: 19, scope: !1344)
!1440 = !DILocalVariable(name: "li", scope: !1441, file: !3, line: 539, type: !263)
!1441 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 538, column: 38)
!1442 = !DILocation(line: 539, column: 26, scope: !1441)
!1443 = !DILocation(line: 539, column: 31, scope: !1441)
!1444 = !DILocation(line: 540, column: 13, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 540, column: 13)
!1446 = !DILocation(line: 540, column: 13, scope: !1441)
!1447 = !DILocation(line: 541, column: 33, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 541, column: 17)
!1449 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 540, column: 27)
!1450 = !DILocation(line: 541, column: 54, scope: !1448)
!1451 = !DILocation(line: 541, column: 47, scope: !1448)
!1452 = !DILocation(line: 541, column: 69, scope: !1448)
!1453 = !DILocation(line: 541, column: 73, scope: !1448)
!1454 = !DILocation(line: 541, column: 86, scope: !1448)
!1455 = !DILocation(line: 541, column: 90, scope: !1448)
!1456 = !DILocation(line: 541, column: 79, scope: !1448)
!1457 = !DILocation(line: 541, column: 18, scope: !1448)
!1458 = !DILocation(line: 541, column: 17, scope: !1449)
!1459 = !DILocation(line: 542, column: 17, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 541, column: 101)
!1461 = distinct !{!1461, !1436, !1462, !912}
!1462 = !DILocation(line: 576, column: 5, scope: !1344)
!1463 = !DILocation(line: 544, column: 9, scope: !1449)
!1464 = !DILocation(line: 545, column: 9, scope: !1441)
!1465 = !DILocation(line: 546, column: 24, scope: !1441)
!1466 = !DILocation(line: 546, column: 27, scope: !1441)
!1467 = !DILocation(line: 546, column: 9, scope: !1441)
!1468 = !DILocation(line: 547, column: 29, scope: !1441)
!1469 = !DILocation(line: 547, column: 9, scope: !1441)
!1470 = !DILocation(line: 548, column: 29, scope: !1441)
!1471 = !DILocation(line: 548, column: 32, scope: !1441)
!1472 = !DILocation(line: 548, column: 36, scope: !1441)
!1473 = !DILocation(line: 548, column: 49, scope: !1441)
!1474 = !DILocation(line: 548, column: 53, scope: !1441)
!1475 = !DILocation(line: 548, column: 42, scope: !1441)
!1476 = !DILocation(line: 548, column: 9, scope: !1441)
!1477 = !DILocation(line: 549, column: 29, scope: !1441)
!1478 = !DILocation(line: 549, column: 9, scope: !1441)
!1479 = !DILocation(line: 550, column: 29, scope: !1441)
!1480 = !DILocation(line: 550, column: 32, scope: !1441)
!1481 = !DILocation(line: 550, column: 36, scope: !1441)
!1482 = !DILocation(line: 550, column: 40, scope: !1441)
!1483 = !DILocation(line: 550, column: 53, scope: !1441)
!1484 = !DILocation(line: 550, column: 57, scope: !1441)
!1485 = !DILocation(line: 550, column: 61, scope: !1441)
!1486 = !DILocation(line: 550, column: 46, scope: !1441)
!1487 = !DILocation(line: 550, column: 9, scope: !1441)
!1488 = !DILocation(line: 552, column: 29, scope: !1441)
!1489 = !DILocation(line: 552, column: 9, scope: !1441)
!1490 = !DILocation(line: 553, column: 26, scope: !1441)
!1491 = !DILocation(line: 553, column: 29, scope: !1441)
!1492 = !DILocation(line: 553, column: 9, scope: !1441)
!1493 = !DILocalVariable(name: "functions_iter", scope: !1441, file: !3, line: 554, type: !879)
!1494 = !DILocation(line: 554, column: 23, scope: !1441)
!1495 = !DILocation(line: 554, column: 56, scope: !1441)
!1496 = !DILocation(line: 554, column: 60, scope: !1441)
!1497 = !DILocation(line: 554, column: 40, scope: !1441)
!1498 = !DILocalVariable(name: "function_entry", scope: !1441, file: !3, line: 555, type: !143)
!1499 = !DILocation(line: 555, column: 20, scope: !1441)
!1500 = !DILocation(line: 556, column: 9, scope: !1441)
!1501 = !DILocation(line: 556, column: 43, scope: !1441)
!1502 = !DILocation(line: 556, column: 34, scope: !1441)
!1503 = !DILocation(line: 556, column: 32, scope: !1441)
!1504 = !DILocalVariable(name: "fi", scope: !1505, file: !3, line: 557, type: !254)
!1505 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 556, column: 61)
!1506 = !DILocation(line: 557, column: 27, scope: !1505)
!1507 = !DILocation(line: 557, column: 32, scope: !1505)
!1508 = !DILocation(line: 558, column: 28, scope: !1505)
!1509 = !DILocation(line: 558, column: 13, scope: !1505)
!1510 = !DILocation(line: 559, column: 33, scope: !1505)
!1511 = !DILocation(line: 559, column: 13, scope: !1505)
!1512 = !DILocation(line: 560, column: 33, scope: !1505)
!1513 = !DILocation(line: 560, column: 36, scope: !1505)
!1514 = !DILocation(line: 560, column: 40, scope: !1505)
!1515 = !DILocation(line: 560, column: 53, scope: !1505)
!1516 = !DILocation(line: 560, column: 57, scope: !1505)
!1517 = !DILocation(line: 560, column: 46, scope: !1505)
!1518 = !DILocation(line: 560, column: 13, scope: !1505)
!1519 = !DILocation(line: 561, column: 33, scope: !1505)
!1520 = !DILocation(line: 561, column: 13, scope: !1505)
!1521 = !DILocation(line: 562, column: 17, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 562, column: 17)
!1523 = !DILocation(line: 562, column: 21, scope: !1522)
!1524 = !DILocation(line: 562, column: 17, scope: !1505)
!1525 = !DILocation(line: 563, column: 37, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 562, column: 27)
!1527 = !DILocation(line: 563, column: 40, scope: !1526)
!1528 = !DILocation(line: 563, column: 44, scope: !1526)
!1529 = !DILocation(line: 563, column: 57, scope: !1526)
!1530 = !DILocation(line: 563, column: 61, scope: !1526)
!1531 = !DILocation(line: 563, column: 50, scope: !1526)
!1532 = !DILocation(line: 563, column: 17, scope: !1526)
!1533 = !DILocation(line: 564, column: 13, scope: !1526)
!1534 = !DILocation(line: 565, column: 30, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 564, column: 20)
!1536 = !DILocation(line: 565, column: 17, scope: !1535)
!1537 = !DILocation(line: 567, column: 33, scope: !1505)
!1538 = !DILocation(line: 567, column: 13, scope: !1505)
!1539 = !DILocation(line: 568, column: 36, scope: !1505)
!1540 = !DILocation(line: 568, column: 39, scope: !1505)
!1541 = !DILocation(line: 568, column: 13, scope: !1505)
!1542 = distinct !{!1542, !1500, !1543, !912}
!1543 = !DILocation(line: 569, column: 9, scope: !1441)
!1544 = !DILocation(line: 570, column: 29, scope: !1441)
!1545 = !DILocation(line: 570, column: 9, scope: !1441)
!1546 = !DILocation(line: 572, column: 13, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 572, column: 13)
!1548 = !DILocation(line: 572, column: 13, scope: !1441)
!1549 = !DILocation(line: 573, column: 33, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 572, column: 24)
!1551 = !DILocation(line: 573, column: 13, scope: !1550)
!1552 = !DILocation(line: 574, column: 33, scope: !1550)
!1553 = !DILocation(line: 574, column: 36, scope: !1550)
!1554 = !DILocation(line: 574, column: 40, scope: !1550)
!1555 = !DILocation(line: 574, column: 53, scope: !1550)
!1556 = !DILocation(line: 574, column: 57, scope: !1550)
!1557 = !DILocation(line: 574, column: 46, scope: !1550)
!1558 = !DILocation(line: 574, column: 13, scope: !1550)
!1559 = !DILocation(line: 575, column: 9, scope: !1550)
!1560 = !DILocation(line: 577, column: 25, scope: !1344)
!1561 = !DILocation(line: 577, column: 5, scope: !1344)
!1562 = !DILocation(line: 578, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 578, column: 9)
!1564 = !DILocation(line: 578, column: 9, scope: !1344)
!1565 = !DILocation(line: 579, column: 29, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 578, column: 18)
!1567 = !DILocation(line: 579, column: 32, scope: !1566)
!1568 = !DILocation(line: 579, column: 41, scope: !1566)
!1569 = !DILocation(line: 579, column: 9, scope: !1566)
!1570 = !DILocation(line: 580, column: 5, scope: !1566)
!1571 = !DILocation(line: 581, column: 1, scope: !1344)
!1572 = distinct !DISubprogram(name: "functionListReplyFlags", scope: !3, file: !3, line: 476, type: !1573, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !299, !254}
!1575 = !DILocalVariable(name: "c", arg: 1, scope: !1572, file: !3, line: 476, type: !299)
!1576 = !DILocation(line: 476, column: 44, scope: !1572)
!1577 = !DILocalVariable(name: "fi", arg: 2, scope: !1572, file: !3, line: 476, type: !254)
!1578 = !DILocation(line: 476, column: 61, scope: !1572)
!1579 = !DILocalVariable(name: "flagcount", scope: !1572, file: !3, line: 478, type: !181)
!1580 = !DILocation(line: 478, column: 9, scope: !1572)
!1581 = !DILocalVariable(name: "flag", scope: !1582, file: !3, line: 479, type: !1583)
!1582 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 479, column: 5)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptFlag", file: !292, line: 92, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptFlag", file: !292, line: 89, size: 128, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1585, file: !292, line: 90, baseType: !109, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1585, file: !292, line: 91, baseType: !296, size: 64, offset: 64)
!1589 = !DILocation(line: 479, column: 22, scope: !1582)
!1590 = !DILocation(line: 479, column: 10, scope: !1582)
!1591 = !DILocation(line: 479, column: 48, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 479, column: 5)
!1593 = !DILocation(line: 479, column: 54, scope: !1592)
!1594 = !DILocation(line: 479, column: 5, scope: !1582)
!1595 = !DILocation(line: 480, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 480, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 479, column: 68)
!1598 = !DILocation(line: 480, column: 17, scope: !1596)
!1599 = !DILocation(line: 480, column: 27, scope: !1596)
!1600 = !DILocation(line: 480, column: 33, scope: !1596)
!1601 = !DILocation(line: 480, column: 25, scope: !1596)
!1602 = !DILocation(line: 480, column: 13, scope: !1597)
!1603 = !DILocation(line: 481, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 480, column: 39)
!1605 = !DILocation(line: 482, column: 9, scope: !1604)
!1606 = !DILocation(line: 483, column: 5, scope: !1597)
!1607 = !DILocation(line: 479, column: 60, scope: !1592)
!1608 = !DILocation(line: 479, column: 5, scope: !1592)
!1609 = distinct !{!1609, !1594, !1610, !912}
!1610 = !DILocation(line: 483, column: 5, scope: !1582)
!1611 = !DILocation(line: 485, column: 20, scope: !1572)
!1612 = !DILocation(line: 485, column: 23, scope: !1572)
!1613 = !DILocation(line: 485, column: 5, scope: !1572)
!1614 = !DILocalVariable(name: "flag", scope: !1615, file: !3, line: 487, type: !1583)
!1615 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 487, column: 5)
!1616 = !DILocation(line: 487, column: 22, scope: !1615)
!1617 = !DILocation(line: 487, column: 10, scope: !1615)
!1618 = !DILocation(line: 487, column: 48, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 487, column: 5)
!1620 = !DILocation(line: 487, column: 54, scope: !1619)
!1621 = !DILocation(line: 487, column: 5, scope: !1615)
!1622 = !DILocation(line: 488, column: 13, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 488, column: 13)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 487, column: 68)
!1625 = !DILocation(line: 488, column: 17, scope: !1623)
!1626 = !DILocation(line: 488, column: 27, scope: !1623)
!1627 = !DILocation(line: 488, column: 33, scope: !1623)
!1628 = !DILocation(line: 488, column: 25, scope: !1623)
!1629 = !DILocation(line: 488, column: 13, scope: !1624)
!1630 = !DILocation(line: 489, column: 28, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 488, column: 39)
!1632 = !DILocation(line: 489, column: 31, scope: !1631)
!1633 = !DILocation(line: 489, column: 37, scope: !1631)
!1634 = !DILocation(line: 489, column: 13, scope: !1631)
!1635 = !DILocation(line: 490, column: 9, scope: !1631)
!1636 = !DILocation(line: 491, column: 5, scope: !1624)
!1637 = !DILocation(line: 487, column: 60, scope: !1619)
!1638 = !DILocation(line: 487, column: 5, scope: !1619)
!1639 = distinct !{!1639, !1621, !1640, !912}
!1640 = !DILocation(line: 491, column: 5, scope: !1615)
!1641 = !DILocation(line: 492, column: 1, scope: !1572)
!1642 = distinct !DISubprogram(name: "functionDeleteCommand", scope: !3, file: !3, line: 586, type: !536, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1643 = !DILocalVariable(name: "c", arg: 1, scope: !1642, file: !3, line: 586, type: !299)
!1644 = !DILocation(line: 586, column: 36, scope: !1642)
!1645 = !DILocalVariable(name: "function_name", scope: !1642, file: !3, line: 587, type: !492)
!1646 = !DILocation(line: 587, column: 11, scope: !1642)
!1647 = !DILocation(line: 587, column: 27, scope: !1642)
!1648 = !DILocation(line: 587, column: 30, scope: !1642)
!1649 = !DILocalVariable(name: "li", scope: !1642, file: !3, line: 588, type: !263)
!1650 = !DILocation(line: 588, column: 22, scope: !1642)
!1651 = !DILocation(line: 588, column: 42, scope: !1642)
!1652 = !DILocation(line: 588, column: 66, scope: !1642)
!1653 = !DILocation(line: 588, column: 77, scope: !1642)
!1654 = !DILocation(line: 588, column: 92, scope: !1642)
!1655 = !DILocation(line: 588, column: 27, scope: !1642)
!1656 = !DILocation(line: 589, column: 10, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 589, column: 9)
!1658 = !DILocation(line: 589, column: 9, scope: !1642)
!1659 = !DILocation(line: 590, column: 23, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 589, column: 14)
!1661 = !DILocation(line: 590, column: 9, scope: !1660)
!1662 = !DILocation(line: 591, column: 9, scope: !1660)
!1663 = !DILocation(line: 594, column: 19, scope: !1642)
!1664 = !DILocation(line: 594, column: 43, scope: !1642)
!1665 = !DILocation(line: 594, column: 5, scope: !1642)
!1666 = !DILocation(line: 595, column: 23, scope: !1642)
!1667 = !DILocation(line: 595, column: 5, scope: !1642)
!1668 = !DILocation(line: 598, column: 17, scope: !1642)
!1669 = !DILocation(line: 599, column: 14, scope: !1642)
!1670 = !DILocation(line: 599, column: 24, scope: !1642)
!1671 = !DILocation(line: 599, column: 5, scope: !1642)
!1672 = !DILocation(line: 600, column: 1, scope: !1642)
!1673 = distinct !DISubprogram(name: "libraryUnlink", scope: !3, file: !3, line: 283, type: !1674, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !205, !263}
!1676 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !1673, file: !3, line: 283, type: !205)
!1677 = !DILocation(line: 283, column: 44, scope: !1673)
!1678 = !DILocalVariable(name: "li", arg: 2, scope: !1673, file: !3, line: 283, type: !263)
!1679 = !DILocation(line: 283, column: 70, scope: !1673)
!1680 = !DILocalVariable(name: "iter", scope: !1673, file: !3, line: 284, type: !879)
!1681 = !DILocation(line: 284, column: 19, scope: !1673)
!1682 = !DILocation(line: 284, column: 42, scope: !1673)
!1683 = !DILocation(line: 284, column: 46, scope: !1673)
!1684 = !DILocation(line: 284, column: 26, scope: !1673)
!1685 = !DILocalVariable(name: "entry", scope: !1673, file: !3, line: 285, type: !143)
!1686 = !DILocation(line: 285, column: 16, scope: !1673)
!1687 = !DILocation(line: 286, column: 5, scope: !1673)
!1688 = !DILocation(line: 286, column: 30, scope: !1673)
!1689 = !DILocation(line: 286, column: 21, scope: !1673)
!1690 = !DILocation(line: 286, column: 19, scope: !1673)
!1691 = !DILocalVariable(name: "fi", scope: !1692, file: !3, line: 287, type: !254)
!1692 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 286, column: 38)
!1693 = !DILocation(line: 287, column: 23, scope: !1692)
!1694 = !DILocation(line: 287, column: 28, scope: !1692)
!1695 = !DILocalVariable(name: "ret", scope: !1692, file: !3, line: 288, type: !181)
!1696 = !DILocation(line: 288, column: 13, scope: !1692)
!1697 = !DILocation(line: 288, column: 30, scope: !1692)
!1698 = !DILocation(line: 288, column: 39, scope: !1692)
!1699 = !DILocation(line: 288, column: 50, scope: !1692)
!1700 = !DILocation(line: 288, column: 54, scope: !1692)
!1701 = !DILocation(line: 288, column: 19, scope: !1692)
!1702 = !DILocation(line: 289, column: 9, scope: !1692)
!1703 = !DILocation(line: 290, column: 53, scope: !1692)
!1704 = !DILocation(line: 290, column: 34, scope: !1692)
!1705 = !DILocation(line: 290, column: 9, scope: !1692)
!1706 = !DILocation(line: 290, column: 18, scope: !1692)
!1707 = !DILocation(line: 290, column: 31, scope: !1692)
!1708 = distinct !{!1708, !1687, !1709, !912}
!1709 = !DILocation(line: 291, column: 5, scope: !1673)
!1710 = !DILocation(line: 292, column: 25, scope: !1673)
!1711 = !DILocation(line: 292, column: 5, scope: !1673)
!1712 = !DILocation(line: 293, column: 24, scope: !1673)
!1713 = !DILocation(line: 293, column: 33, scope: !1673)
!1714 = !DILocation(line: 293, column: 44, scope: !1673)
!1715 = !DILocation(line: 293, column: 48, scope: !1673)
!1716 = !DILocation(line: 293, column: 13, scope: !1673)
!1717 = !DILocation(line: 293, column: 11, scope: !1673)
!1718 = !DILocation(line: 294, column: 5, scope: !1673)
!1719 = !DILocation(line: 294, column: 5, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 294, column: 5)
!1721 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 294, column: 5)
!1722 = !DILocation(line: 294, column: 5, scope: !1721)
!1723 = !DILocation(line: 295, column: 27, scope: !1673)
!1724 = !DILocation(line: 295, column: 36, scope: !1673)
!1725 = !DILocation(line: 295, column: 47, scope: !1673)
!1726 = !DILocation(line: 295, column: 5, scope: !1673)
!1727 = !DILocation(line: 296, column: 48, scope: !1673)
!1728 = !DILocation(line: 296, column: 30, scope: !1673)
!1729 = !DILocation(line: 296, column: 5, scope: !1673)
!1730 = !DILocation(line: 296, column: 14, scope: !1673)
!1731 = !DILocation(line: 296, column: 27, scope: !1673)
!1732 = !DILocalVariable(name: "stats", scope: !1673, file: !3, line: 299, type: !231)
!1733 = !DILocation(line: 299, column: 30, scope: !1673)
!1734 = !DILocation(line: 299, column: 53, scope: !1673)
!1735 = !DILocation(line: 299, column: 62, scope: !1673)
!1736 = !DILocation(line: 299, column: 77, scope: !1673)
!1737 = !DILocation(line: 299, column: 81, scope: !1673)
!1738 = !DILocation(line: 299, column: 85, scope: !1673)
!1739 = !DILocation(line: 299, column: 38, scope: !1673)
!1740 = !DILocation(line: 300, column: 5, scope: !1673)
!1741 = !DILocation(line: 301, column: 5, scope: !1673)
!1742 = !DILocation(line: 301, column: 12, scope: !1673)
!1743 = !DILocation(line: 301, column: 17, scope: !1673)
!1744 = !DILocation(line: 302, column: 27, scope: !1673)
!1745 = !DILocation(line: 302, column: 5, scope: !1673)
!1746 = !DILocation(line: 302, column: 12, scope: !1673)
!1747 = !DILocation(line: 302, column: 24, scope: !1673)
!1748 = !DILocation(line: 303, column: 1, scope: !1673)
!1749 = distinct !DISubprogram(name: "engineLibraryFree", scope: !3, file: !3, line: 158, type: !1750, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !263}
!1752 = !DILocalVariable(name: "li", arg: 1, scope: !1749, file: !3, line: 158, type: !263)
!1753 = !DILocation(line: 158, column: 48, scope: !1749)
!1754 = !DILocation(line: 159, column: 10, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 159, column: 9)
!1756 = !DILocation(line: 159, column: 9, scope: !1749)
!1757 = !DILocation(line: 160, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 159, column: 14)
!1759 = !DILocation(line: 162, column: 17, scope: !1749)
!1760 = !DILocation(line: 162, column: 21, scope: !1749)
!1761 = !DILocation(line: 162, column: 5, scope: !1749)
!1762 = !DILocation(line: 163, column: 13, scope: !1749)
!1763 = !DILocation(line: 163, column: 17, scope: !1749)
!1764 = !DILocation(line: 163, column: 5, scope: !1749)
!1765 = !DILocation(line: 164, column: 13, scope: !1749)
!1766 = !DILocation(line: 164, column: 17, scope: !1749)
!1767 = !DILocation(line: 164, column: 5, scope: !1749)
!1768 = !DILocation(line: 165, column: 11, scope: !1749)
!1769 = !DILocation(line: 165, column: 5, scope: !1749)
!1770 = !DILocation(line: 166, column: 1, scope: !1749)
!1771 = distinct !DISubprogram(name: "functionKillCommand", scope: !3, file: !3, line: 603, type: !536, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1772 = !DILocalVariable(name: "c", arg: 1, scope: !1771, file: !3, line: 603, type: !299)
!1773 = !DILocation(line: 603, column: 34, scope: !1771)
!1774 = !DILocation(line: 604, column: 16, scope: !1771)
!1775 = !DILocation(line: 604, column: 5, scope: !1771)
!1776 = !DILocation(line: 605, column: 1, scope: !1771)
!1777 = distinct !DISubprogram(name: "fcallGetCommandFlags", scope: !3, file: !3, line: 609, type: !1778, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!109, !299, !109}
!1780 = !DILocalVariable(name: "c", arg: 1, scope: !1777, file: !3, line: 609, type: !299)
!1781 = !DILocation(line: 609, column: 39, scope: !1777)
!1782 = !DILocalVariable(name: "cmd_flags", arg: 2, scope: !1777, file: !3, line: 609, type: !109)
!1783 = !DILocation(line: 609, column: 51, scope: !1777)
!1784 = !DILocalVariable(name: "function_name", scope: !1777, file: !3, line: 610, type: !492)
!1785 = !DILocation(line: 610, column: 11, scope: !1777)
!1786 = !DILocation(line: 610, column: 27, scope: !1777)
!1787 = !DILocation(line: 610, column: 30, scope: !1777)
!1788 = !DILocation(line: 611, column: 30, scope: !1777)
!1789 = !DILocation(line: 611, column: 54, scope: !1777)
!1790 = !DILocation(line: 611, column: 65, scope: !1777)
!1791 = !DILocation(line: 611, column: 80, scope: !1777)
!1792 = !DILocation(line: 611, column: 21, scope: !1777)
!1793 = !DILocation(line: 611, column: 5, scope: !1777)
!1794 = !DILocation(line: 611, column: 8, scope: !1777)
!1795 = !DILocation(line: 611, column: 19, scope: !1777)
!1796 = !DILocation(line: 612, column: 10, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 612, column: 9)
!1798 = !DILocation(line: 612, column: 13, scope: !1797)
!1799 = !DILocation(line: 612, column: 9, scope: !1777)
!1800 = !DILocation(line: 613, column: 16, scope: !1797)
!1801 = !DILocation(line: 613, column: 9, scope: !1797)
!1802 = !DILocalVariable(name: "fi", scope: !1777, file: !3, line: 614, type: !254)
!1803 = !DILocation(line: 614, column: 19, scope: !1777)
!1804 = !DILocation(line: 614, column: 24, scope: !1777)
!1805 = !DILocalVariable(name: "script_flags", scope: !1777, file: !3, line: 615, type: !109)
!1806 = !DILocation(line: 615, column: 14, scope: !1777)
!1807 = !DILocation(line: 615, column: 29, scope: !1777)
!1808 = !DILocation(line: 615, column: 33, scope: !1777)
!1809 = !DILocation(line: 616, column: 34, scope: !1777)
!1810 = !DILocation(line: 616, column: 45, scope: !1777)
!1811 = !DILocation(line: 616, column: 12, scope: !1777)
!1812 = !DILocation(line: 616, column: 5, scope: !1777)
!1813 = !DILocation(line: 617, column: 1, scope: !1777)
!1814 = distinct !DISubprogram(name: "fcallCommand", scope: !3, file: !3, line: 661, type: !536, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1815 = !DILocalVariable(name: "c", arg: 1, scope: !1814, file: !3, line: 661, type: !299)
!1816 = !DILocation(line: 661, column: 27, scope: !1814)
!1817 = !DILocation(line: 662, column: 25, scope: !1814)
!1818 = !DILocation(line: 662, column: 5, scope: !1814)
!1819 = !DILocation(line: 663, column: 1, scope: !1814)
!1820 = distinct !DISubprogram(name: "fcallCommandGeneric", scope: !3, file: !3, line: 619, type: !1821, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !299, !181}
!1823 = !DILocalVariable(name: "c", arg: 1, scope: !1820, file: !3, line: 619, type: !299)
!1824 = !DILocation(line: 619, column: 41, scope: !1820)
!1825 = !DILocalVariable(name: "ro", arg: 2, scope: !1820, file: !3, line: 619, type: !181)
!1826 = !DILocation(line: 619, column: 48, scope: !1820)
!1827 = !DILocation(line: 621, column: 29, scope: !1820)
!1828 = !DILocation(line: 621, column: 38, scope: !1820)
!1829 = !DILocation(line: 621, column: 47, scope: !1820)
!1830 = !DILocation(line: 621, column: 50, scope: !1820)
!1831 = !DILocation(line: 621, column: 54, scope: !1820)
!1832 = !DILocation(line: 621, column: 57, scope: !1820)
!1833 = !DILocation(line: 621, column: 60, scope: !1820)
!1834 = !DILocation(line: 621, column: 65, scope: !1820)
!1835 = !DILocation(line: 621, column: 68, scope: !1820)
!1836 = !DILocation(line: 621, column: 5, scope: !1820)
!1837 = !DILocalVariable(name: "function_name", scope: !1820, file: !3, line: 623, type: !492)
!1838 = !DILocation(line: 623, column: 11, scope: !1820)
!1839 = !DILocation(line: 623, column: 27, scope: !1820)
!1840 = !DILocation(line: 623, column: 30, scope: !1820)
!1841 = !DILocalVariable(name: "de", scope: !1820, file: !3, line: 624, type: !143)
!1842 = !DILocation(line: 624, column: 16, scope: !1820)
!1843 = !DILocation(line: 624, column: 21, scope: !1820)
!1844 = !DILocation(line: 624, column: 24, scope: !1820)
!1845 = !DILocation(line: 625, column: 10, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 625, column: 9)
!1847 = !DILocation(line: 625, column: 9, scope: !1820)
!1848 = !DILocation(line: 626, column: 23, scope: !1846)
!1849 = !DILocation(line: 626, column: 47, scope: !1846)
!1850 = !DILocation(line: 626, column: 58, scope: !1846)
!1851 = !DILocation(line: 626, column: 73, scope: !1846)
!1852 = !DILocation(line: 626, column: 14, scope: !1846)
!1853 = !DILocation(line: 626, column: 12, scope: !1846)
!1854 = !DILocation(line: 626, column: 9, scope: !1846)
!1855 = !DILocation(line: 627, column: 10, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 627, column: 9)
!1857 = !DILocation(line: 627, column: 9, scope: !1820)
!1858 = !DILocation(line: 628, column: 23, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 627, column: 14)
!1860 = !DILocation(line: 628, column: 9, scope: !1859)
!1861 = !DILocation(line: 629, column: 9, scope: !1859)
!1862 = !DILocalVariable(name: "fi", scope: !1820, file: !3, line: 631, type: !254)
!1863 = !DILocation(line: 631, column: 19, scope: !1820)
!1864 = !DILocation(line: 631, column: 24, scope: !1820)
!1865 = !DILocalVariable(name: "engine", scope: !1820, file: !3, line: 632, type: !276)
!1866 = !DILocation(line: 632, column: 13, scope: !1820)
!1867 = !DILocation(line: 632, column: 22, scope: !1820)
!1868 = !DILocation(line: 632, column: 26, scope: !1820)
!1869 = !DILocation(line: 632, column: 30, scope: !1820)
!1870 = !DILocation(line: 632, column: 34, scope: !1820)
!1871 = !DILocalVariable(name: "numkeys", scope: !1820, file: !3, line: 634, type: !326)
!1872 = !DILocation(line: 634, column: 15, scope: !1820)
!1873 = !DILocation(line: 636, column: 31, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 636, column: 9)
!1875 = !DILocation(line: 636, column: 34, scope: !1874)
!1876 = !DILocation(line: 636, column: 9, scope: !1874)
!1877 = !DILocation(line: 636, column: 53, scope: !1874)
!1878 = !DILocation(line: 636, column: 9, scope: !1820)
!1879 = !DILocation(line: 637, column: 23, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 636, column: 62)
!1881 = !DILocation(line: 637, column: 9, scope: !1880)
!1882 = !DILocation(line: 638, column: 9, scope: !1880)
!1883 = !DILocation(line: 640, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 640, column: 9)
!1885 = !DILocation(line: 640, column: 20, scope: !1884)
!1886 = !DILocation(line: 640, column: 23, scope: !1884)
!1887 = !DILocation(line: 640, column: 28, scope: !1884)
!1888 = !DILocation(line: 640, column: 19, scope: !1884)
!1889 = !DILocation(line: 640, column: 17, scope: !1884)
!1890 = !DILocation(line: 640, column: 9, scope: !1820)
!1891 = !DILocation(line: 641, column: 23, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 640, column: 34)
!1893 = !DILocation(line: 641, column: 9, scope: !1892)
!1894 = !DILocation(line: 642, column: 9, scope: !1892)
!1895 = !DILocation(line: 643, column: 16, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 643, column: 16)
!1897 = !DILocation(line: 643, column: 24, scope: !1896)
!1898 = !DILocation(line: 643, column: 16, scope: !1884)
!1899 = !DILocation(line: 644, column: 23, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 643, column: 29)
!1901 = !DILocation(line: 644, column: 9, scope: !1900)
!1902 = !DILocation(line: 645, column: 9, scope: !1900)
!1903 = !DILocalVariable(name: "run_ctx", scope: !1820, file: !3, line: 648, type: !291)
!1904 = !DILocation(line: 648, column: 18, scope: !1820)
!1905 = !DILocation(line: 650, column: 39, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 650, column: 9)
!1907 = !DILocation(line: 650, column: 43, scope: !1906)
!1908 = !DILocation(line: 650, column: 47, scope: !1906)
!1909 = !DILocation(line: 650, column: 51, scope: !1906)
!1910 = !DILocation(line: 650, column: 54, scope: !1906)
!1911 = !DILocation(line: 650, column: 57, scope: !1906)
!1912 = !DILocation(line: 650, column: 61, scope: !1906)
!1913 = !DILocation(line: 650, column: 67, scope: !1906)
!1914 = !DILocation(line: 650, column: 71, scope: !1906)
!1915 = !DILocation(line: 650, column: 80, scope: !1906)
!1916 = !DILocation(line: 650, column: 9, scope: !1906)
!1917 = !DILocation(line: 650, column: 84, scope: !1906)
!1918 = !DILocation(line: 650, column: 9, scope: !1820)
!1919 = !DILocation(line: 651, column: 9, scope: !1906)
!1920 = !DILocation(line: 653, column: 5, scope: !1820)
!1921 = !DILocation(line: 653, column: 13, scope: !1820)
!1922 = !DILocation(line: 653, column: 28, scope: !1820)
!1923 = !DILocation(line: 653, column: 36, scope: !1820)
!1924 = !DILocation(line: 653, column: 48, scope: !1820)
!1925 = !DILocation(line: 653, column: 52, scope: !1820)
!1926 = !DILocation(line: 653, column: 62, scope: !1820)
!1927 = !DILocation(line: 653, column: 65, scope: !1820)
!1928 = !DILocation(line: 653, column: 70, scope: !1820)
!1929 = !DILocation(line: 653, column: 75, scope: !1820)
!1930 = !DILocation(line: 654, column: 18, scope: !1820)
!1931 = !DILocation(line: 654, column: 21, scope: !1820)
!1932 = !DILocation(line: 654, column: 26, scope: !1820)
!1933 = !DILocation(line: 654, column: 32, scope: !1820)
!1934 = !DILocation(line: 654, column: 30, scope: !1820)
!1935 = !DILocation(line: 654, column: 41, scope: !1820)
!1936 = !DILocation(line: 654, column: 44, scope: !1820)
!1937 = !DILocation(line: 654, column: 49, scope: !1820)
!1938 = !DILocation(line: 654, column: 55, scope: !1820)
!1939 = !DILocation(line: 654, column: 53, scope: !1820)
!1940 = !DILocation(line: 655, column: 5, scope: !1820)
!1941 = !DILocation(line: 656, column: 1, scope: !1820)
!1942 = distinct !DISubprogram(name: "fcallroCommand", scope: !3, file: !3, line: 668, type: !536, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1943 = !DILocalVariable(name: "c", arg: 1, scope: !1942, file: !3, line: 668, type: !299)
!1944 = !DILocation(line: 668, column: 29, scope: !1942)
!1945 = !DILocation(line: 669, column: 25, scope: !1942)
!1946 = !DILocation(line: 669, column: 5, scope: !1942)
!1947 = !DILocation(line: 670, column: 1, scope: !1942)
!1948 = distinct !DISubprogram(name: "functionDumpCommand", scope: !3, file: !3, line: 690, type: !536, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!1949 = !DILocalVariable(name: "c", arg: 1, scope: !1948, file: !3, line: 690, type: !299)
!1950 = !DILocation(line: 690, column: 34, scope: !1948)
!1951 = !DILocalVariable(name: "buf", scope: !1948, file: !3, line: 691, type: !1952)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16, elements: !164)
!1953 = !DILocation(line: 691, column: 19, scope: !1948)
!1954 = !DILocalVariable(name: "crc", scope: !1948, file: !3, line: 692, type: !109)
!1955 = !DILocation(line: 692, column: 14, scope: !1948)
!1956 = !DILocalVariable(name: "payload", scope: !1948, file: !3, line: 693, type: !1957)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "rio", file: !1958, line: 102, baseType: !1959)
!1958 = !DIFile(filename: "./rio.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rio", file: !1958, line: 48, size: 896, elements: !1960)
!1960 = !{!1961, !1966, !1970, !1974, !1978, !1982, !1983, !1984, !1985, !1986}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1959, file: !1958, line: 52, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!191, !1965, !65, !191}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1959, file: !1958, line: 53, baseType: !1967, size: 64, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!191, !1965, !128, !191}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "tell", scope: !1959, file: !1958, line: 54, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!696, !1965}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1959, file: !1958, line: 55, baseType: !1975, size: 64, offset: 192)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!181, !1965}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "update_cksum", scope: !1959, file: !1958, line: 61, baseType: !1979, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1965, !128, !191}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !1959, file: !1958, line: 64, baseType: !109, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1959, file: !1958, line: 64, baseType: !109, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "processed_bytes", scope: !1959, file: !1958, line: 67, baseType: !191, size: 64, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "max_processing_chunk", scope: !1959, file: !1958, line: 70, baseType: !191, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !1959, file: !1958, line: 99, baseType: !1987, size: 320, offset: 576)
!1987 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !1958, line: 73, size: 320, elements: !1988)
!1988 = !{!1989, !1994, !2051, !2059}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1987, file: !1958, line: 78, baseType: !1990, size: 128)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1958, line: 75, size: 128, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1990, file: !1958, line: 76, baseType: !260, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1990, file: !1958, line: 77, baseType: !696, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1987, file: !1958, line: 84, baseType: !1995, size: 192)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1958, line: 80, size: 192, elements: !1996)
!1996 = !{!1997, !2049, !2050}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !1995, file: !1958, line: 81, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2000, line: 7, baseType: !2001)
!2000 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2002, line: 49, size: 1728, elements: !2003)
!2002 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2019, !2021, !2022, !2023, !2025, !2026, !2027, !2031, !2034, !2035, !2038, !2041, !2042, !2043, !2044, !2045}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2001, file: !2002, line: 51, baseType: !181, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2001, file: !2002, line: 54, baseType: !68, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2001, file: !2002, line: 55, baseType: !68, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2001, file: !2002, line: 56, baseType: !68, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2001, file: !2002, line: 57, baseType: !68, size: 64, offset: 256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2001, file: !2002, line: 58, baseType: !68, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2001, file: !2002, line: 59, baseType: !68, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2001, file: !2002, line: 60, baseType: !68, size: 64, offset: 448)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2001, file: !2002, line: 61, baseType: !68, size: 64, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2001, file: !2002, line: 64, baseType: !68, size: 64, offset: 576)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2001, file: !2002, line: 65, baseType: !68, size: 64, offset: 640)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2001, file: !2002, line: 66, baseType: !68, size: 64, offset: 704)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2001, file: !2002, line: 68, baseType: !2017, size: 64, offset: 768)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2002, line: 36, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2001, file: !2002, line: 70, baseType: !2020, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2001, file: !2002, line: 72, baseType: !181, size: 32, offset: 896)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2001, file: !2002, line: 73, baseType: !181, size: 32, offset: 928)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2001, file: !2002, line: 74, baseType: !2024, size: 64, offset: 960)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !157)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2001, file: !2002, line: 77, baseType: !92, size: 16, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2001, file: !2002, line: 78, baseType: !175, size: 8, offset: 1040)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2001, file: !2002, line: 79, baseType: !2028, size: 8, offset: 1048)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !2029)
!2029 = !{!2030}
!2030 = !DISubrange(count: 1)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2001, file: !2002, line: 81, baseType: !2032, size: 64, offset: 1088)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2002, line: 43, baseType: null)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2001, file: !2002, line: 89, baseType: !698, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2001, file: !2002, line: 91, baseType: !2036, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2002, line: 37, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2001, file: !2002, line: 92, baseType: !2039, size: 64, offset: 1280)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2002, line: 38, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2001, file: !2002, line: 93, baseType: !2020, size: 64, offset: 1344)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2001, file: !2002, line: 94, baseType: !65, size: 64, offset: 1408)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2001, file: !2002, line: 95, baseType: !191, size: 64, offset: 1472)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2001, file: !2002, line: 96, baseType: !181, size: 32, offset: 1536)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2001, file: !2002, line: 98, baseType: !2046, size: 160, offset: 1568)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 160, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 20)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "buffered", scope: !1995, file: !1958, line: 82, baseType: !696, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "autosync", scope: !1995, file: !1958, line: 83, baseType: !696, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !1987, file: !1958, line: 92, baseType: !2052, size: 320)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1958, line: 86, size: 320, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !2052, file: !1958, line: 87, baseType: !306, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2052, file: !1958, line: 88, baseType: !696, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2052, file: !1958, line: 89, baseType: !260, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !2052, file: !1958, line: 90, baseType: !191, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "read_so_far", scope: !2052, file: !1958, line: 91, baseType: !191, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1987, file: !1958, line: 98, baseType: !2060, size: 192)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1987, file: !1958, line: 94, size: 192, elements: !2061)
!2061 = !{!2062, !2063, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2060, file: !1958, line: 95, baseType: !181, size: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2060, file: !1958, line: 96, baseType: !696, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2060, file: !1958, line: 97, baseType: !260, size: 64, offset: 128)
!2065 = !DILocation(line: 693, column: 9, scope: !1948)
!2066 = !DILocation(line: 694, column: 33, scope: !1948)
!2067 = !DILocation(line: 694, column: 5, scope: !1948)
!2068 = !DILocation(line: 696, column: 5, scope: !1948)
!2069 = !DILocation(line: 699, column: 5, scope: !1948)
!2070 = !DILocation(line: 699, column: 12, scope: !1948)
!2071 = !DILocation(line: 700, column: 5, scope: !1948)
!2072 = !DILocation(line: 700, column: 12, scope: !1948)
!2073 = !DILocation(line: 701, column: 47, scope: !1948)
!2074 = !DILocation(line: 701, column: 50, scope: !1948)
!2075 = !DILocation(line: 701, column: 57, scope: !1948)
!2076 = !DILocation(line: 701, column: 62, scope: !1948)
!2077 = !DILocation(line: 701, column: 29, scope: !1948)
!2078 = !DILocation(line: 701, column: 13, scope: !1948)
!2079 = !DILocation(line: 701, column: 16, scope: !1948)
!2080 = !DILocation(line: 701, column: 23, scope: !1948)
!2081 = !DILocation(line: 701, column: 27, scope: !1948)
!2082 = !DILocation(line: 704, column: 45, scope: !1948)
!2083 = !DILocation(line: 704, column: 48, scope: !1948)
!2084 = !DILocation(line: 704, column: 55, scope: !1948)
!2085 = !DILocation(line: 705, column: 32, scope: !1948)
!2086 = !DILocation(line: 705, column: 35, scope: !1948)
!2087 = !DILocation(line: 705, column: 42, scope: !1948)
!2088 = !DILocation(line: 705, column: 17, scope: !1948)
!2089 = !DILocation(line: 704, column: 11, scope: !1948)
!2090 = !DILocation(line: 704, column: 9, scope: !1948)
!2091 = !DILocation(line: 707, column: 47, scope: !1948)
!2092 = !DILocation(line: 707, column: 50, scope: !1948)
!2093 = !DILocation(line: 707, column: 57, scope: !1948)
!2094 = !DILocation(line: 707, column: 62, scope: !1948)
!2095 = !DILocation(line: 707, column: 29, scope: !1948)
!2096 = !DILocation(line: 707, column: 13, scope: !1948)
!2097 = !DILocation(line: 707, column: 16, scope: !1948)
!2098 = !DILocation(line: 707, column: 23, scope: !1948)
!2099 = !DILocation(line: 707, column: 27, scope: !1948)
!2100 = !DILocation(line: 709, column: 21, scope: !1948)
!2101 = !DILocation(line: 709, column: 32, scope: !1948)
!2102 = !DILocation(line: 709, column: 35, scope: !1948)
!2103 = !DILocation(line: 709, column: 42, scope: !1948)
!2104 = !DILocation(line: 709, column: 5, scope: !1948)
!2105 = !DILocation(line: 710, column: 1, scope: !1948)
!2106 = distinct !DISubprogram(name: "functionRestoreCommand", scope: !3, file: !3, line: 722, type: !536, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2107 = !DILocalVariable(name: "c", arg: 1, scope: !2106, file: !3, line: 722, type: !299)
!2108 = !DILocation(line: 722, column: 37, scope: !2106)
!2109 = !DILocation(line: 723, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 723, column: 9)
!2111 = !DILocation(line: 723, column: 12, scope: !2110)
!2112 = !DILocation(line: 723, column: 17, scope: !2110)
!2113 = !DILocation(line: 723, column: 9, scope: !2106)
!2114 = !DILocation(line: 724, column: 39, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 723, column: 22)
!2116 = !DILocation(line: 724, column: 9, scope: !2115)
!2117 = !DILocation(line: 725, column: 9, scope: !2115)
!2118 = !DILocalVariable(name: "restore_replicy", scope: !2106, file: !3, line: 728, type: !2119)
!2119 = !DIDerivedType(tag: DW_TAG_typedef, name: "restorePolicy", file: !3, line: 38, baseType: !59)
!2120 = !DILocation(line: 728, column: 19, scope: !2106)
!2121 = !DILocalVariable(name: "data", scope: !2106, file: !3, line: 729, type: !260)
!2122 = !DILocation(line: 729, column: 9, scope: !2106)
!2123 = !DILocation(line: 729, column: 16, scope: !2106)
!2124 = !DILocation(line: 729, column: 19, scope: !2106)
!2125 = !DILocation(line: 729, column: 28, scope: !2106)
!2126 = !DILocalVariable(name: "data_len", scope: !2106, file: !3, line: 730, type: !191)
!2127 = !DILocation(line: 730, column: 12, scope: !2106)
!2128 = !DILocation(line: 730, column: 30, scope: !2106)
!2129 = !DILocation(line: 730, column: 23, scope: !2106)
!2130 = !DILocalVariable(name: "payload", scope: !2106, file: !3, line: 731, type: !1957)
!2131 = !DILocation(line: 731, column: 9, scope: !2106)
!2132 = !DILocalVariable(name: "err", scope: !2106, file: !3, line: 732, type: !260)
!2133 = !DILocation(line: 732, column: 9, scope: !2106)
!2134 = !DILocation(line: 734, column: 9, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 734, column: 9)
!2136 = !DILocation(line: 734, column: 12, scope: !2135)
!2137 = !DILocation(line: 734, column: 17, scope: !2135)
!2138 = !DILocation(line: 734, column: 9, scope: !2106)
!2139 = !DILocalVariable(name: "restore_policy_str", scope: !2140, file: !3, line: 735, type: !296)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 734, column: 23)
!2141 = !DILocation(line: 735, column: 21, scope: !2140)
!2142 = !DILocation(line: 735, column: 42, scope: !2140)
!2143 = !DILocation(line: 735, column: 45, scope: !2140)
!2144 = !DILocation(line: 735, column: 54, scope: !2140)
!2145 = !DILocation(line: 736, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2140, file: !3, line: 736, column: 13)
!2147 = !DILocation(line: 736, column: 14, scope: !2146)
!2148 = !DILocation(line: 736, column: 13, scope: !2140)
!2149 = !DILocation(line: 737, column: 29, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 736, column: 56)
!2151 = !DILocation(line: 738, column: 9, scope: !2150)
!2152 = !DILocation(line: 738, column: 32, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 738, column: 20)
!2154 = !DILocation(line: 738, column: 21, scope: !2153)
!2155 = !DILocation(line: 738, column: 20, scope: !2146)
!2156 = !DILocation(line: 739, column: 29, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 738, column: 64)
!2158 = !DILocation(line: 740, column: 9, scope: !2157)
!2159 = !DILocation(line: 740, column: 32, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 740, column: 20)
!2161 = !DILocation(line: 740, column: 21, scope: !2160)
!2162 = !DILocation(line: 740, column: 20, scope: !2153)
!2163 = !DILocation(line: 741, column: 29, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 740, column: 62)
!2165 = !DILocation(line: 742, column: 9, scope: !2164)
!2166 = !DILocation(line: 743, column: 27, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 742, column: 16)
!2168 = !DILocation(line: 743, column: 13, scope: !2167)
!2169 = !DILocation(line: 744, column: 13, scope: !2167)
!2170 = !DILocation(line: 746, column: 5, scope: !2140)
!2171 = !DILocalVariable(name: "rdbver", scope: !2106, file: !3, line: 748, type: !90)
!2172 = !DILocation(line: 748, column: 14, scope: !2106)
!2173 = !DILocation(line: 749, column: 43, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 749, column: 9)
!2175 = !DILocation(line: 749, column: 49, scope: !2174)
!2176 = !DILocation(line: 749, column: 9, scope: !2174)
!2177 = !DILocation(line: 749, column: 68, scope: !2174)
!2178 = !DILocation(line: 749, column: 9, scope: !2106)
!2179 = !DILocation(line: 750, column: 23, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 749, column: 77)
!2181 = !DILocation(line: 750, column: 9, scope: !2180)
!2182 = !DILocation(line: 751, column: 9, scope: !2180)
!2183 = !DILocalVariable(name: "functions_lib_ctx", scope: !2106, file: !3, line: 754, type: !205)
!2184 = !DILocation(line: 754, column: 22, scope: !2106)
!2185 = !DILocation(line: 754, column: 42, scope: !2106)
!2186 = !DILocation(line: 755, column: 33, scope: !2106)
!2187 = !DILocation(line: 755, column: 5, scope: !2106)
!2188 = !DILocation(line: 758, column: 5, scope: !2106)
!2189 = !DILocation(line: 758, column: 12, scope: !2106)
!2190 = !DILocation(line: 758, column: 31, scope: !2106)
!2191 = !DILocation(line: 758, column: 34, scope: !2106)
!2192 = !DILocation(line: 758, column: 41, scope: !2106)
!2193 = !DILocation(line: 758, column: 21, scope: !2106)
!2194 = !DILocation(line: 758, column: 45, scope: !2106)
!2195 = !DILocalVariable(name: "type", scope: !2196, file: !3, line: 759, type: !181)
!2196 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 758, column: 51)
!2197 = !DILocation(line: 759, column: 13, scope: !2196)
!2198 = !DILocation(line: 760, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 760, column: 13)
!2200 = !DILocation(line: 760, column: 19, scope: !2199)
!2201 = !DILocation(line: 760, column: 44, scope: !2199)
!2202 = !DILocation(line: 760, column: 13, scope: !2196)
!2203 = !DILocation(line: 761, column: 19, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 760, column: 51)
!2205 = !DILocation(line: 761, column: 17, scope: !2204)
!2206 = !DILocation(line: 762, column: 13, scope: !2204)
!2207 = !DILocation(line: 764, column: 13, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 764, column: 13)
!2209 = !DILocation(line: 764, column: 18, scope: !2208)
!2210 = !DILocation(line: 764, column: 41, scope: !2208)
!2211 = !DILocation(line: 764, column: 44, scope: !2208)
!2212 = !DILocation(line: 764, column: 49, scope: !2208)
!2213 = !DILocation(line: 764, column: 13, scope: !2196)
!2214 = !DILocation(line: 765, column: 19, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 764, column: 74)
!2216 = !DILocation(line: 765, column: 17, scope: !2215)
!2217 = !DILocation(line: 766, column: 13, scope: !2215)
!2218 = !DILocation(line: 768, column: 39, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 768, column: 13)
!2220 = !DILocation(line: 768, column: 47, scope: !2219)
!2221 = !DILocation(line: 768, column: 66, scope: !2219)
!2222 = !DILocation(line: 768, column: 13, scope: !2219)
!2223 = !DILocation(line: 768, column: 93, scope: !2219)
!2224 = !DILocation(line: 768, column: 13, scope: !2196)
!2225 = !DILocation(line: 769, column: 18, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 769, column: 17)
!2227 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 768, column: 102)
!2228 = !DILocation(line: 769, column: 17, scope: !2227)
!2229 = !DILocation(line: 770, column: 23, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 769, column: 23)
!2231 = !DILocation(line: 770, column: 21, scope: !2230)
!2232 = !DILocation(line: 771, column: 13, scope: !2230)
!2233 = !DILocation(line: 772, column: 13, scope: !2227)
!2234 = distinct !{!2234, !2188, !2235, !912}
!2235 = !DILocation(line: 774, column: 5, scope: !2106)
!2236 = !DILocation(line: 776, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 776, column: 9)
!2238 = !DILocation(line: 776, column: 25, scope: !2237)
!2239 = !DILocation(line: 776, column: 9, scope: !2106)
!2240 = !DILocation(line: 777, column: 40, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 776, column: 49)
!2242 = !DILocation(line: 777, column: 9, scope: !2241)
!2243 = !DILocation(line: 778, column: 27, scope: !2241)
!2244 = !DILocation(line: 779, column: 5, scope: !2241)
!2245 = !DILocation(line: 780, column: 25, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 780, column: 13)
!2247 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 779, column: 12)
!2248 = !DILocation(line: 780, column: 49, scope: !2246)
!2249 = !DILocation(line: 780, column: 68, scope: !2246)
!2250 = !DILocation(line: 780, column: 84, scope: !2246)
!2251 = !DILocation(line: 780, column: 13, scope: !2246)
!2252 = !DILocation(line: 780, column: 116, scope: !2246)
!2253 = !DILocation(line: 780, column: 13, scope: !2247)
!2254 = !DILocation(line: 781, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 780, column: 125)
!2256 = !DILocation(line: 787, column: 17, scope: !2106)
!2257 = !DILocation(line: 787, column: 5, scope: !2106)
!2258 = !DILabel(scope: !2106, name: "load_error", file: !3, line: 789)
!2259 = !DILocation(line: 789, column: 1, scope: !2106)
!2260 = !DILocation(line: 790, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 790, column: 9)
!2262 = !DILocation(line: 790, column: 9, scope: !2106)
!2263 = !DILocation(line: 791, column: 26, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 790, column: 14)
!2265 = !DILocation(line: 791, column: 29, scope: !2264)
!2266 = !DILocation(line: 791, column: 9, scope: !2264)
!2267 = !DILocation(line: 792, column: 5, scope: !2264)
!2268 = !DILocation(line: 793, column: 18, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 792, column: 12)
!2270 = !DILocation(line: 793, column: 28, scope: !2269)
!2271 = !DILocation(line: 793, column: 9, scope: !2269)
!2272 = !DILocation(line: 795, column: 9, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 795, column: 9)
!2274 = !DILocation(line: 795, column: 9, scope: !2106)
!2275 = !DILocation(line: 796, column: 29, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 795, column: 28)
!2277 = !DILocation(line: 796, column: 9, scope: !2276)
!2278 = !DILocation(line: 797, column: 5, scope: !2276)
!2279 = !DILocation(line: 798, column: 1, scope: !2106)
!2280 = distinct !DISubprogram(name: "libraryJoin", scope: !3, file: !3, line: 331, type: !2281, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!181, !205, !205, !181, !285}
!2283 = !DILocalVariable(name: "functions_lib_ctx_dst", arg: 1, scope: !2280, file: !3, line: 331, type: !205)
!2284 = !DILocation(line: 331, column: 41, scope: !2280)
!2285 = !DILocalVariable(name: "functions_lib_ctx_src", arg: 2, scope: !2280, file: !3, line: 331, type: !205)
!2286 = !DILocation(line: 331, column: 81, scope: !2280)
!2287 = !DILocalVariable(name: "replace", arg: 3, scope: !2280, file: !3, line: 331, type: !181)
!2288 = !DILocation(line: 331, column: 108, scope: !2280)
!2289 = !DILocalVariable(name: "err", arg: 4, scope: !2280, file: !3, line: 331, type: !285)
!2290 = !DILocation(line: 331, column: 122, scope: !2280)
!2291 = !DILocalVariable(name: "ret", scope: !2280, file: !3, line: 332, type: !181)
!2292 = !DILocation(line: 332, column: 9, scope: !2280)
!2293 = !DILocalVariable(name: "iter", scope: !2280, file: !3, line: 333, type: !879)
!2294 = !DILocation(line: 333, column: 19, scope: !2280)
!2295 = !DILocalVariable(name: "old_libraries_list", scope: !2280, file: !3, line: 336, type: !462)
!2296 = !DILocation(line: 336, column: 11, scope: !2280)
!2297 = !DILocalVariable(name: "entry", scope: !2280, file: !3, line: 337, type: !143)
!2298 = !DILocation(line: 337, column: 16, scope: !2280)
!2299 = !DILocation(line: 338, column: 28, scope: !2280)
!2300 = !DILocation(line: 338, column: 51, scope: !2280)
!2301 = !DILocation(line: 338, column: 12, scope: !2280)
!2302 = !DILocation(line: 338, column: 10, scope: !2280)
!2303 = !DILocation(line: 339, column: 5, scope: !2280)
!2304 = !DILocation(line: 339, column: 30, scope: !2280)
!2305 = !DILocation(line: 339, column: 21, scope: !2280)
!2306 = !DILocation(line: 339, column: 19, scope: !2280)
!2307 = !DILocalVariable(name: "li", scope: !2308, file: !3, line: 340, type: !263)
!2308 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 339, column: 38)
!2309 = !DILocation(line: 340, column: 26, scope: !2308)
!2310 = !DILocation(line: 340, column: 31, scope: !2308)
!2311 = !DILocalVariable(name: "old_li", scope: !2308, file: !3, line: 341, type: !263)
!2312 = !DILocation(line: 341, column: 26, scope: !2308)
!2313 = !DILocation(line: 341, column: 50, scope: !2308)
!2314 = !DILocation(line: 341, column: 73, scope: !2308)
!2315 = !DILocation(line: 341, column: 84, scope: !2308)
!2316 = !DILocation(line: 341, column: 88, scope: !2308)
!2317 = !DILocation(line: 341, column: 35, scope: !2308)
!2318 = !DILocation(line: 342, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 342, column: 13)
!2320 = !DILocation(line: 342, column: 13, scope: !2308)
!2321 = !DILocation(line: 343, column: 18, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 343, column: 17)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 342, column: 21)
!2324 = !DILocation(line: 343, column: 17, scope: !2323)
!2325 = !DILocation(line: 345, column: 34, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 343, column: 27)
!2327 = !DILocation(line: 345, column: 75, scope: !2326)
!2328 = !DILocation(line: 345, column: 79, scope: !2326)
!2329 = !DILocation(line: 345, column: 24, scope: !2326)
!2330 = !DILocation(line: 345, column: 18, scope: !2326)
!2331 = !DILocation(line: 345, column: 22, scope: !2326)
!2332 = !DILocation(line: 346, column: 17, scope: !2326)
!2333 = !DILocation(line: 348, column: 22, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 348, column: 21)
!2335 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 347, column: 20)
!2336 = !DILocation(line: 348, column: 21, scope: !2335)
!2337 = !DILocation(line: 349, column: 42, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 348, column: 42)
!2339 = !DILocation(line: 349, column: 40, scope: !2338)
!2340 = !DILocation(line: 350, column: 21, scope: !2338)
!2341 = !DILocation(line: 351, column: 17, scope: !2338)
!2342 = !DILocation(line: 352, column: 31, scope: !2335)
!2343 = !DILocation(line: 352, column: 54, scope: !2335)
!2344 = !DILocation(line: 352, column: 17, scope: !2335)
!2345 = !DILocation(line: 353, column: 33, scope: !2335)
!2346 = !DILocation(line: 353, column: 53, scope: !2335)
!2347 = !DILocation(line: 353, column: 17, scope: !2335)
!2348 = !DILocation(line: 355, column: 9, scope: !2323)
!2349 = distinct !{!2349, !2303, !2350, !912}
!2350 = !DILocation(line: 356, column: 5, scope: !2280)
!2351 = !DILocation(line: 357, column: 25, scope: !2280)
!2352 = !DILocation(line: 357, column: 5, scope: !2280)
!2353 = !DILocation(line: 358, column: 10, scope: !2280)
!2354 = !DILocation(line: 361, column: 28, scope: !2280)
!2355 = !DILocation(line: 361, column: 51, scope: !2280)
!2356 = !DILocation(line: 361, column: 12, scope: !2280)
!2357 = !DILocation(line: 361, column: 10, scope: !2280)
!2358 = !DILocation(line: 362, column: 5, scope: !2280)
!2359 = !DILocation(line: 362, column: 30, scope: !2280)
!2360 = !DILocation(line: 362, column: 21, scope: !2280)
!2361 = !DILocation(line: 362, column: 19, scope: !2280)
!2362 = !DILocalVariable(name: "fi", scope: !2363, file: !3, line: 363, type: !254)
!2363 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 362, column: 38)
!2364 = !DILocation(line: 363, column: 23, scope: !2363)
!2365 = !DILocation(line: 363, column: 28, scope: !2363)
!2366 = !DILocation(line: 364, column: 28, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 364, column: 13)
!2368 = !DILocation(line: 364, column: 51, scope: !2367)
!2369 = !DILocation(line: 364, column: 62, scope: !2367)
!2370 = !DILocation(line: 364, column: 66, scope: !2367)
!2371 = !DILocation(line: 364, column: 13, scope: !2367)
!2372 = !DILocation(line: 364, column: 13, scope: !2363)
!2373 = !DILocation(line: 365, column: 30, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 364, column: 73)
!2375 = !DILocation(line: 365, column: 72, scope: !2374)
!2376 = !DILocation(line: 365, column: 76, scope: !2374)
!2377 = !DILocation(line: 365, column: 20, scope: !2374)
!2378 = !DILocation(line: 365, column: 14, scope: !2374)
!2379 = !DILocation(line: 365, column: 18, scope: !2374)
!2380 = !DILocation(line: 366, column: 13, scope: !2374)
!2381 = distinct !{!2381, !2358, !2382, !912}
!2382 = !DILocation(line: 368, column: 5, scope: !2280)
!2383 = !DILocation(line: 369, column: 25, scope: !2280)
!2384 = !DILocation(line: 369, column: 5, scope: !2280)
!2385 = !DILocation(line: 370, column: 10, scope: !2280)
!2386 = !DILocation(line: 373, column: 28, scope: !2280)
!2387 = !DILocation(line: 373, column: 51, scope: !2280)
!2388 = !DILocation(line: 373, column: 12, scope: !2280)
!2389 = !DILocation(line: 373, column: 10, scope: !2280)
!2390 = !DILocation(line: 374, column: 5, scope: !2280)
!2391 = !DILocation(line: 374, column: 30, scope: !2280)
!2392 = !DILocation(line: 374, column: 21, scope: !2280)
!2393 = !DILocation(line: 374, column: 19, scope: !2280)
!2394 = !DILocalVariable(name: "li", scope: !2395, file: !3, line: 375, type: !263)
!2395 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 374, column: 38)
!2396 = !DILocation(line: 375, column: 26, scope: !2395)
!2397 = !DILocation(line: 375, column: 31, scope: !2395)
!2398 = !DILocation(line: 376, column: 21, scope: !2395)
!2399 = !DILocation(line: 376, column: 44, scope: !2395)
!2400 = !DILocation(line: 376, column: 9, scope: !2395)
!2401 = !DILocation(line: 377, column: 9, scope: !2395)
!2402 = !DILocation(line: 377, column: 9, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 377, column: 9)
!2404 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 377, column: 9)
!2405 = !DILocation(line: 377, column: 9, scope: !2404)
!2406 = distinct !{!2406, !2390, !2407, !912}
!2407 = !DILocation(line: 378, column: 5, scope: !2280)
!2408 = !DILocation(line: 379, column: 25, scope: !2280)
!2409 = !DILocation(line: 379, column: 5, scope: !2280)
!2410 = !DILocation(line: 380, column: 10, scope: !2280)
!2411 = !DILocation(line: 382, column: 26, scope: !2280)
!2412 = !DILocation(line: 382, column: 5, scope: !2280)
!2413 = !DILocation(line: 383, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 383, column: 9)
!2415 = !DILocation(line: 383, column: 9, scope: !2280)
!2416 = !DILocation(line: 384, column: 21, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 383, column: 29)
!2418 = !DILocation(line: 384, column: 9, scope: !2417)
!2419 = !DILocation(line: 385, column: 28, scope: !2417)
!2420 = !DILocation(line: 386, column: 5, scope: !2417)
!2421 = !DILocation(line: 387, column: 9, scope: !2280)
!2422 = !DILocation(line: 387, column: 5, scope: !2280)
!2423 = !DILabel(scope: !2280, name: "done", file: !3, line: 389)
!2424 = !DILocation(line: 389, column: 1, scope: !2280)
!2425 = !DILocation(line: 390, column: 9, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 390, column: 9)
!2427 = !DILocation(line: 390, column: 9, scope: !2280)
!2428 = !DILocation(line: 390, column: 35, scope: !2426)
!2429 = !DILocation(line: 390, column: 15, scope: !2426)
!2430 = !DILocation(line: 391, column: 9, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 391, column: 9)
!2432 = !DILocation(line: 391, column: 9, scope: !2280)
!2433 = !DILocation(line: 393, column: 9, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 391, column: 29)
!2435 = !DILocation(line: 393, column: 16, scope: !2434)
!2436 = !DILocation(line: 393, column: 47, scope: !2434)
!2437 = !DILocalVariable(name: "head", scope: !2438, file: !3, line: 394, type: !468)
!2438 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 393, column: 52)
!2439 = !DILocation(line: 394, column: 23, scope: !2438)
!2440 = !DILocation(line: 394, column: 30, scope: !2438)
!2441 = !DILocalVariable(name: "li", scope: !2438, file: !3, line: 395, type: !263)
!2442 = !DILocation(line: 395, column: 30, scope: !2438)
!2443 = !DILocation(line: 395, column: 35, scope: !2438)
!2444 = !DILocation(line: 396, column: 13, scope: !2438)
!2445 = !DILocation(line: 396, column: 33, scope: !2438)
!2446 = !DILocation(line: 397, column: 25, scope: !2438)
!2447 = !DILocation(line: 397, column: 48, scope: !2438)
!2448 = !DILocation(line: 397, column: 13, scope: !2438)
!2449 = !DILocation(line: 398, column: 25, scope: !2438)
!2450 = !DILocation(line: 398, column: 45, scope: !2438)
!2451 = !DILocation(line: 398, column: 13, scope: !2438)
!2452 = distinct !{!2452, !2433, !2453, !912}
!2453 = !DILocation(line: 399, column: 9, scope: !2434)
!2454 = !DILocation(line: 400, column: 21, scope: !2434)
!2455 = !DILocation(line: 400, column: 9, scope: !2434)
!2456 = !DILocation(line: 401, column: 5, scope: !2434)
!2457 = !DILocation(line: 402, column: 12, scope: !2280)
!2458 = !DILocation(line: 402, column: 5, scope: !2280)
!2459 = distinct !DISubprogram(name: "functionFlushCommand", scope: !3, file: !3, line: 801, type: !536, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2460 = !DILocalVariable(name: "c", arg: 1, scope: !2459, file: !3, line: 801, type: !299)
!2461 = !DILocation(line: 801, column: 35, scope: !2459)
!2462 = !DILocation(line: 802, column: 9, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 802, column: 9)
!2464 = !DILocation(line: 802, column: 12, scope: !2463)
!2465 = !DILocation(line: 802, column: 17, scope: !2463)
!2466 = !DILocation(line: 802, column: 9, scope: !2459)
!2467 = !DILocation(line: 803, column: 39, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 802, column: 22)
!2469 = !DILocation(line: 803, column: 9, scope: !2468)
!2470 = !DILocation(line: 804, column: 9, scope: !2468)
!2471 = !DILocalVariable(name: "async", scope: !2459, file: !3, line: 806, type: !181)
!2472 = !DILocation(line: 806, column: 9, scope: !2459)
!2473 = !DILocation(line: 807, column: 9, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 807, column: 9)
!2475 = !DILocation(line: 807, column: 12, scope: !2474)
!2476 = !DILocation(line: 807, column: 17, scope: !2474)
!2477 = !DILocation(line: 807, column: 22, scope: !2474)
!2478 = !DILocation(line: 807, column: 37, scope: !2474)
!2479 = !DILocation(line: 807, column: 40, scope: !2474)
!2480 = !DILocation(line: 807, column: 49, scope: !2474)
!2481 = !DILocation(line: 807, column: 26, scope: !2474)
!2482 = !DILocation(line: 807, column: 9, scope: !2459)
!2483 = !DILocation(line: 808, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 807, column: 62)
!2485 = !DILocation(line: 809, column: 5, scope: !2484)
!2486 = !DILocation(line: 809, column: 16, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 809, column: 16)
!2488 = !DILocation(line: 809, column: 19, scope: !2487)
!2489 = !DILocation(line: 809, column: 24, scope: !2487)
!2490 = !DILocation(line: 809, column: 29, scope: !2487)
!2491 = !DILocation(line: 809, column: 44, scope: !2487)
!2492 = !DILocation(line: 809, column: 47, scope: !2487)
!2493 = !DILocation(line: 809, column: 56, scope: !2487)
!2494 = !DILocation(line: 809, column: 33, scope: !2487)
!2495 = !DILocation(line: 809, column: 16, scope: !2474)
!2496 = !DILocation(line: 810, column: 15, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 809, column: 70)
!2498 = !DILocation(line: 811, column: 5, scope: !2497)
!2499 = !DILocation(line: 811, column: 16, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 811, column: 16)
!2501 = !DILocation(line: 811, column: 19, scope: !2500)
!2502 = !DILocation(line: 811, column: 24, scope: !2500)
!2503 = !DILocation(line: 811, column: 16, scope: !2487)
!2504 = !DILocation(line: 812, column: 24, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 811, column: 30)
!2506 = !DILocation(line: 812, column: 17, scope: !2505)
!2507 = !DILocation(line: 812, column: 15, scope: !2505)
!2508 = !DILocation(line: 813, column: 5, scope: !2505)
!2509 = !DILocation(line: 814, column: 23, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 813, column: 12)
!2511 = !DILocation(line: 814, column: 9, scope: !2510)
!2512 = !DILocation(line: 815, column: 9, scope: !2510)
!2513 = !DILocation(line: 818, column: 33, scope: !2459)
!2514 = !DILocation(line: 818, column: 5, scope: !2459)
!2515 = !DILocation(line: 822, column: 17, scope: !2459)
!2516 = !DILocation(line: 823, column: 14, scope: !2459)
!2517 = !DILocation(line: 823, column: 23, scope: !2459)
!2518 = !DILocation(line: 823, column: 5, scope: !2459)
!2519 = !DILocation(line: 824, column: 1, scope: !2459)
!2520 = distinct !DISubprogram(name: "functionHelpCommand", scope: !3, file: !3, line: 827, type: !536, scopeLine: 827, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2521 = !DILocalVariable(name: "c", arg: 1, scope: !2520, file: !3, line: 827, type: !299)
!2522 = !DILocation(line: 827, column: 34, scope: !2520)
!2523 = !DILocalVariable(name: "help", scope: !2520, file: !3, line: 828, type: !2524)
!2524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 2432, elements: !2525)
!2525 = !{!2526}
!2526 = !DISubrange(count: 38)
!2527 = !DILocation(line: 828, column: 17, scope: !2520)
!2528 = !DILocation(line: 867, column: 18, scope: !2520)
!2529 = !DILocation(line: 867, column: 21, scope: !2520)
!2530 = !DILocation(line: 867, column: 5, scope: !2520)
!2531 = !DILocation(line: 868, column: 1, scope: !2520)
!2532 = distinct !DISubprogram(name: "functionExtractLibMetaData", scope: !3, file: !3, line: 889, type: !2533, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!181, !260, !2535, !285}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibMataData", file: !3, line: 64, baseType: !2537)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibMataData", file: !3, line: 60, size: 192, elements: !2538)
!2538 = !{!2539, !2540, !2541}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2537, file: !3, line: 61, baseType: !260, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2537, file: !3, line: 62, baseType: !260, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2537, file: !3, line: 63, baseType: !260, size: 64, offset: 128)
!2542 = !DILocalVariable(name: "payload", arg: 1, scope: !2532, file: !3, line: 889, type: !260)
!2543 = !DILocation(line: 889, column: 36, scope: !2532)
!2544 = !DILocalVariable(name: "md", arg: 2, scope: !2532, file: !3, line: 889, type: !2535)
!2545 = !DILocation(line: 889, column: 67, scope: !2532)
!2546 = !DILocalVariable(name: "err", arg: 3, scope: !2532, file: !3, line: 889, type: !285)
!2547 = !DILocation(line: 889, column: 76, scope: !2532)
!2548 = !DILocalVariable(name: "name", scope: !2532, file: !3, line: 890, type: !260)
!2549 = !DILocation(line: 890, column: 9, scope: !2532)
!2550 = !DILocalVariable(name: "desc", scope: !2532, file: !3, line: 891, type: !260)
!2551 = !DILocation(line: 891, column: 9, scope: !2532)
!2552 = !DILocalVariable(name: "engine", scope: !2532, file: !3, line: 892, type: !260)
!2553 = !DILocation(line: 892, column: 9, scope: !2532)
!2554 = !DILocalVariable(name: "code", scope: !2532, file: !3, line: 893, type: !260)
!2555 = !DILocation(line: 893, column: 9, scope: !2532)
!2556 = !DILocation(line: 894, column: 17, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 894, column: 9)
!2558 = !DILocation(line: 894, column: 9, scope: !2557)
!2559 = !DILocation(line: 894, column: 35, scope: !2557)
!2560 = !DILocation(line: 894, column: 9, scope: !2532)
!2561 = !DILocation(line: 895, column: 16, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 894, column: 41)
!2563 = !DILocation(line: 895, column: 10, scope: !2562)
!2564 = !DILocation(line: 895, column: 14, scope: !2562)
!2565 = !DILocation(line: 896, column: 9, scope: !2562)
!2566 = !DILocalVariable(name: "shebang_end", scope: !2532, file: !3, line: 898, type: !68)
!2567 = !DILocation(line: 898, column: 11, scope: !2532)
!2568 = !DILocation(line: 898, column: 32, scope: !2532)
!2569 = !DILocation(line: 898, column: 25, scope: !2532)
!2570 = !DILocation(line: 899, column: 9, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 899, column: 9)
!2572 = !DILocation(line: 899, column: 21, scope: !2571)
!2573 = !DILocation(line: 899, column: 9, scope: !2532)
!2574 = !DILocation(line: 900, column: 16, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 899, column: 30)
!2576 = !DILocation(line: 900, column: 10, scope: !2575)
!2577 = !DILocation(line: 900, column: 14, scope: !2575)
!2578 = !DILocation(line: 901, column: 9, scope: !2575)
!2579 = !DILocalVariable(name: "shebang_len", scope: !2532, file: !3, line: 903, type: !191)
!2580 = !DILocation(line: 903, column: 12, scope: !2532)
!2581 = !DILocation(line: 903, column: 26, scope: !2532)
!2582 = !DILocation(line: 903, column: 40, scope: !2532)
!2583 = !DILocation(line: 903, column: 38, scope: !2532)
!2584 = !DILocalVariable(name: "shebang", scope: !2532, file: !3, line: 904, type: !260)
!2585 = !DILocation(line: 904, column: 9, scope: !2532)
!2586 = !DILocation(line: 904, column: 29, scope: !2532)
!2587 = !DILocation(line: 904, column: 38, scope: !2532)
!2588 = !DILocation(line: 904, column: 19, scope: !2532)
!2589 = !DILocalVariable(name: "numparts", scope: !2532, file: !3, line: 905, type: !181)
!2590 = !DILocation(line: 905, column: 9, scope: !2532)
!2591 = !DILocalVariable(name: "parts", scope: !2532, file: !3, line: 906, type: !285)
!2592 = !DILocation(line: 906, column: 10, scope: !2532)
!2593 = !DILocation(line: 906, column: 31, scope: !2532)
!2594 = !DILocation(line: 906, column: 18, scope: !2532)
!2595 = !DILocation(line: 907, column: 13, scope: !2532)
!2596 = !DILocation(line: 907, column: 5, scope: !2532)
!2597 = !DILocation(line: 908, column: 10, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 908, column: 9)
!2599 = !DILocation(line: 908, column: 16, scope: !2598)
!2600 = !DILocation(line: 908, column: 19, scope: !2598)
!2601 = !DILocation(line: 908, column: 28, scope: !2598)
!2602 = !DILocation(line: 908, column: 9, scope: !2532)
!2603 = !DILocation(line: 909, column: 16, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 908, column: 34)
!2605 = !DILocation(line: 909, column: 10, scope: !2604)
!2606 = !DILocation(line: 909, column: 14, scope: !2604)
!2607 = !DILocation(line: 910, column: 25, scope: !2604)
!2608 = !DILocation(line: 910, column: 32, scope: !2604)
!2609 = !DILocation(line: 910, column: 9, scope: !2604)
!2610 = !DILocation(line: 911, column: 9, scope: !2604)
!2611 = !DILocation(line: 913, column: 21, scope: !2532)
!2612 = !DILocation(line: 913, column: 14, scope: !2532)
!2613 = !DILocation(line: 913, column: 12, scope: !2532)
!2614 = !DILocation(line: 914, column: 14, scope: !2532)
!2615 = !DILocation(line: 914, column: 5, scope: !2532)
!2616 = !DILocalVariable(name: "i", scope: !2617, file: !3, line: 915, type: !181)
!2617 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 915, column: 5)
!2618 = !DILocation(line: 915, column: 14, scope: !2617)
!2619 = !DILocation(line: 915, column: 10, scope: !2617)
!2620 = !DILocation(line: 915, column: 22, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 915, column: 5)
!2622 = !DILocation(line: 915, column: 26, scope: !2621)
!2623 = !DILocation(line: 915, column: 24, scope: !2621)
!2624 = !DILocation(line: 915, column: 5, scope: !2617)
!2625 = !DILocalVariable(name: "part", scope: !2626, file: !3, line: 916, type: !260)
!2626 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 915, column: 42)
!2627 = !DILocation(line: 916, column: 13, scope: !2626)
!2628 = !DILocation(line: 916, column: 20, scope: !2626)
!2629 = !DILocation(line: 916, column: 26, scope: !2626)
!2630 = !DILocation(line: 917, column: 25, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 917, column: 13)
!2632 = !DILocation(line: 917, column: 13, scope: !2631)
!2633 = !DILocation(line: 917, column: 43, scope: !2631)
!2634 = !DILocation(line: 917, column: 13, scope: !2626)
!2635 = !DILocation(line: 918, column: 17, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 918, column: 17)
!2637 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 917, column: 49)
!2638 = !DILocation(line: 918, column: 17, scope: !2637)
!2639 = !DILocation(line: 919, column: 34, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 918, column: 23)
!2641 = !DILocation(line: 919, column: 24, scope: !2640)
!2642 = !DILocation(line: 919, column: 18, scope: !2640)
!2643 = !DILocation(line: 919, column: 22, scope: !2640)
!2644 = !DILocation(line: 920, column: 17, scope: !2640)
!2645 = !DILocation(line: 922, column: 27, scope: !2637)
!2646 = !DILocation(line: 922, column: 20, scope: !2637)
!2647 = !DILocation(line: 922, column: 18, scope: !2637)
!2648 = !DILocation(line: 923, column: 22, scope: !2637)
!2649 = !DILocation(line: 923, column: 13, scope: !2637)
!2650 = !DILocation(line: 924, column: 13, scope: !2637)
!2651 = !DILocation(line: 926, column: 26, scope: !2626)
!2652 = !DILocation(line: 926, column: 74, scope: !2626)
!2653 = !DILocation(line: 926, column: 16, scope: !2626)
!2654 = !DILocation(line: 926, column: 10, scope: !2626)
!2655 = !DILocation(line: 926, column: 14, scope: !2626)
!2656 = !DILocation(line: 927, column: 9, scope: !2626)
!2657 = !DILocation(line: 915, column: 37, scope: !2621)
!2658 = !DILocation(line: 915, column: 5, scope: !2621)
!2659 = distinct !{!2659, !2624, !2660, !912}
!2660 = !DILocation(line: 928, column: 5, scope: !2617)
!2661 = !DILocation(line: 930, column: 10, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 930, column: 9)
!2663 = !DILocation(line: 930, column: 9, scope: !2532)
!2664 = !DILocation(line: 931, column: 16, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 930, column: 16)
!2666 = !DILocation(line: 931, column: 10, scope: !2665)
!2667 = !DILocation(line: 931, column: 14, scope: !2665)
!2668 = !DILocation(line: 932, column: 9, scope: !2665)
!2669 = !DILocation(line: 935, column: 21, scope: !2532)
!2670 = !DILocation(line: 935, column: 28, scope: !2532)
!2671 = !DILocation(line: 935, column: 5, scope: !2532)
!2672 = !DILocation(line: 937, column: 16, scope: !2532)
!2673 = !DILocation(line: 937, column: 5, scope: !2532)
!2674 = !DILocation(line: 937, column: 9, scope: !2532)
!2675 = !DILocation(line: 937, column: 14, scope: !2532)
!2676 = !DILocation(line: 938, column: 26, scope: !2532)
!2677 = !DILocation(line: 938, column: 46, scope: !2532)
!2678 = !DILocation(line: 938, column: 39, scope: !2532)
!2679 = !DILocation(line: 938, column: 57, scope: !2532)
!2680 = !DILocation(line: 938, column: 55, scope: !2532)
!2681 = !DILocation(line: 938, column: 16, scope: !2532)
!2682 = !DILocation(line: 938, column: 5, scope: !2532)
!2683 = !DILocation(line: 938, column: 9, scope: !2532)
!2684 = !DILocation(line: 938, column: 14, scope: !2532)
!2685 = !DILocation(line: 939, column: 18, scope: !2532)
!2686 = !DILocation(line: 939, column: 5, scope: !2532)
!2687 = !DILocation(line: 939, column: 9, scope: !2532)
!2688 = !DILocation(line: 939, column: 16, scope: !2532)
!2689 = !DILocation(line: 941, column: 5, scope: !2532)
!2690 = !DILabel(scope: !2532, name: "error", file: !3, line: 943)
!2691 = !DILocation(line: 943, column: 1, scope: !2532)
!2692 = !DILocation(line: 944, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 944, column: 9)
!2694 = !DILocation(line: 944, column: 9, scope: !2532)
!2695 = !DILocation(line: 944, column: 23, scope: !2693)
!2696 = !DILocation(line: 944, column: 15, scope: !2693)
!2697 = !DILocation(line: 945, column: 9, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 945, column: 9)
!2699 = !DILocation(line: 945, column: 9, scope: !2532)
!2700 = !DILocation(line: 945, column: 23, scope: !2698)
!2701 = !DILocation(line: 945, column: 15, scope: !2698)
!2702 = !DILocation(line: 946, column: 9, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 946, column: 9)
!2704 = !DILocation(line: 946, column: 9, scope: !2532)
!2705 = !DILocation(line: 946, column: 25, scope: !2703)
!2706 = !DILocation(line: 946, column: 17, scope: !2703)
!2707 = !DILocation(line: 947, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 947, column: 9)
!2709 = !DILocation(line: 947, column: 9, scope: !2532)
!2710 = !DILocation(line: 947, column: 23, scope: !2708)
!2711 = !DILocation(line: 947, column: 15, scope: !2708)
!2712 = !DILocation(line: 948, column: 21, scope: !2532)
!2713 = !DILocation(line: 948, column: 28, scope: !2532)
!2714 = !DILocation(line: 948, column: 5, scope: !2532)
!2715 = !DILocation(line: 949, column: 5, scope: !2532)
!2716 = !DILocation(line: 950, column: 1, scope: !2532)
!2717 = distinct !DISubprogram(name: "functionFreeLibMetaData", scope: !3, file: !3, line: 952, type: !2718, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2535}
!2720 = !DILocalVariable(name: "md", arg: 1, scope: !2717, file: !3, line: 952, type: !2535)
!2721 = !DILocation(line: 952, column: 52, scope: !2717)
!2722 = !DILocation(line: 953, column: 9, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 953, column: 9)
!2724 = !DILocation(line: 953, column: 13, scope: !2723)
!2725 = !DILocation(line: 953, column: 9, scope: !2717)
!2726 = !DILocation(line: 953, column: 27, scope: !2723)
!2727 = !DILocation(line: 953, column: 31, scope: !2723)
!2728 = !DILocation(line: 953, column: 19, scope: !2723)
!2729 = !DILocation(line: 954, column: 9, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 954, column: 9)
!2731 = !DILocation(line: 954, column: 13, scope: !2730)
!2732 = !DILocation(line: 954, column: 9, scope: !2717)
!2733 = !DILocation(line: 954, column: 27, scope: !2730)
!2734 = !DILocation(line: 954, column: 31, scope: !2730)
!2735 = !DILocation(line: 954, column: 19, scope: !2730)
!2736 = !DILocation(line: 955, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 955, column: 9)
!2738 = !DILocation(line: 955, column: 13, scope: !2737)
!2739 = !DILocation(line: 955, column: 9, scope: !2717)
!2740 = !DILocation(line: 955, column: 29, scope: !2737)
!2741 = !DILocation(line: 955, column: 33, scope: !2737)
!2742 = !DILocation(line: 955, column: 21, scope: !2737)
!2743 = !DILocation(line: 956, column: 1, scope: !2717)
!2744 = distinct !DISubprogram(name: "functionsCreateWithLibraryCtx", scope: !3, file: !3, line: 960, type: !2745, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!260, !260, !181, !285, !205}
!2747 = !DILocalVariable(name: "code", arg: 1, scope: !2744, file: !3, line: 960, type: !260)
!2748 = !DILocation(line: 960, column: 39, scope: !2744)
!2749 = !DILocalVariable(name: "replace", arg: 2, scope: !2744, file: !3, line: 960, type: !181)
!2750 = !DILocation(line: 960, column: 49, scope: !2744)
!2751 = !DILocalVariable(name: "err", arg: 3, scope: !2744, file: !3, line: 960, type: !285)
!2752 = !DILocation(line: 960, column: 63, scope: !2744)
!2753 = !DILocalVariable(name: "lib_ctx", arg: 4, scope: !2744, file: !3, line: 960, type: !205)
!2754 = !DILocation(line: 960, column: 85, scope: !2744)
!2755 = !DILocalVariable(name: "iter", scope: !2744, file: !3, line: 961, type: !879)
!2756 = !DILocation(line: 961, column: 19, scope: !2744)
!2757 = !DILocalVariable(name: "entry", scope: !2744, file: !3, line: 962, type: !143)
!2758 = !DILocation(line: 962, column: 16, scope: !2744)
!2759 = !DILocalVariable(name: "new_li", scope: !2744, file: !3, line: 963, type: !263)
!2760 = !DILocation(line: 963, column: 22, scope: !2744)
!2761 = !DILocalVariable(name: "old_li", scope: !2744, file: !3, line: 964, type: !263)
!2762 = !DILocation(line: 964, column: 22, scope: !2744)
!2763 = !DILocalVariable(name: "md", scope: !2744, file: !3, line: 965, type: !2536)
!2764 = !DILocation(line: 965, column: 26, scope: !2744)
!2765 = !DILocation(line: 966, column: 36, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 966, column: 9)
!2767 = !DILocation(line: 966, column: 47, scope: !2766)
!2768 = !DILocation(line: 966, column: 9, scope: !2766)
!2769 = !DILocation(line: 966, column: 52, scope: !2766)
!2770 = !DILocation(line: 966, column: 9, scope: !2744)
!2771 = !DILocation(line: 967, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 966, column: 61)
!2773 = !DILocation(line: 970, column: 32, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 970, column: 9)
!2775 = !DILocation(line: 970, column: 9, scope: !2774)
!2776 = !DILocation(line: 970, column: 9, scope: !2744)
!2777 = !DILocation(line: 971, column: 16, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 970, column: 39)
!2779 = !DILocation(line: 971, column: 10, scope: !2778)
!2780 = !DILocation(line: 971, column: 14, scope: !2778)
!2781 = !DILocation(line: 972, column: 9, scope: !2778)
!2782 = !DILocalVariable(name: "ei", scope: !2744, file: !3, line: 975, type: !270)
!2783 = !DILocation(line: 975, column: 17, scope: !2744)
!2784 = !DILocation(line: 975, column: 37, scope: !2744)
!2785 = !DILocation(line: 975, column: 49, scope: !2744)
!2786 = !DILocation(line: 975, column: 22, scope: !2744)
!2787 = !DILocation(line: 976, column: 10, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 976, column: 9)
!2789 = !DILocation(line: 976, column: 9, scope: !2744)
!2790 = !DILocation(line: 977, column: 26, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 976, column: 14)
!2792 = !DILocation(line: 977, column: 66, scope: !2791)
!2793 = !DILocation(line: 977, column: 16, scope: !2791)
!2794 = !DILocation(line: 977, column: 10, scope: !2791)
!2795 = !DILocation(line: 977, column: 14, scope: !2791)
!2796 = !DILocation(line: 978, column: 9, scope: !2791)
!2797 = !DILocalVariable(name: "engine", scope: !2744, file: !3, line: 980, type: !276)
!2798 = !DILocation(line: 980, column: 13, scope: !2744)
!2799 = !DILocation(line: 980, column: 22, scope: !2744)
!2800 = !DILocation(line: 980, column: 26, scope: !2744)
!2801 = !DILocation(line: 982, column: 29, scope: !2744)
!2802 = !DILocation(line: 982, column: 38, scope: !2744)
!2803 = !DILocation(line: 982, column: 52, scope: !2744)
!2804 = !DILocation(line: 982, column: 14, scope: !2744)
!2805 = !DILocation(line: 982, column: 12, scope: !2744)
!2806 = !DILocation(line: 983, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 983, column: 9)
!2808 = !DILocation(line: 983, column: 16, scope: !2807)
!2809 = !DILocation(line: 983, column: 20, scope: !2807)
!2810 = !DILocation(line: 983, column: 9, scope: !2744)
!2811 = !DILocation(line: 984, column: 16, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 983, column: 29)
!2813 = !DILocation(line: 985, column: 26, scope: !2812)
!2814 = !DILocation(line: 985, column: 72, scope: !2812)
!2815 = !DILocation(line: 985, column: 16, scope: !2812)
!2816 = !DILocation(line: 985, column: 10, scope: !2812)
!2817 = !DILocation(line: 985, column: 14, scope: !2812)
!2818 = !DILocation(line: 986, column: 9, scope: !2812)
!2819 = !DILocation(line: 989, column: 9, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 989, column: 9)
!2821 = !DILocation(line: 989, column: 9, scope: !2744)
!2822 = !DILocation(line: 990, column: 23, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 989, column: 17)
!2824 = !DILocation(line: 990, column: 32, scope: !2823)
!2825 = !DILocation(line: 990, column: 9, scope: !2823)
!2826 = !DILocation(line: 991, column: 5, scope: !2823)
!2827 = !DILocation(line: 993, column: 37, scope: !2744)
!2828 = !DILocation(line: 993, column: 43, scope: !2744)
!2829 = !DILocation(line: 993, column: 47, scope: !2744)
!2830 = !DILocation(line: 993, column: 14, scope: !2744)
!2831 = !DILocation(line: 993, column: 12, scope: !2744)
!2832 = !DILocation(line: 994, column: 9, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 994, column: 9)
!2834 = !DILocation(line: 994, column: 17, scope: !2833)
!2835 = !DILocation(line: 994, column: 24, scope: !2833)
!2836 = !DILocation(line: 994, column: 32, scope: !2833)
!2837 = !DILocation(line: 994, column: 44, scope: !2833)
!2838 = !DILocation(line: 994, column: 55, scope: !2833)
!2839 = !DILocation(line: 994, column: 61, scope: !2833)
!2840 = !DILocation(line: 994, column: 66, scope: !2833)
!2841 = !DILocation(line: 994, column: 9, scope: !2744)
!2842 = !DILocation(line: 995, column: 9, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 994, column: 75)
!2844 = !DILocation(line: 998, column: 9, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 998, column: 9)
!2846 = !DILocation(line: 998, column: 37, scope: !2845)
!2847 = !DILocation(line: 998, column: 9, scope: !2744)
!2848 = !DILocation(line: 999, column: 16, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 998, column: 43)
!2850 = !DILocation(line: 999, column: 10, scope: !2849)
!2851 = !DILocation(line: 999, column: 14, scope: !2849)
!2852 = !DILocation(line: 1000, column: 9, scope: !2849)
!2853 = !DILocation(line: 1004, column: 28, scope: !2744)
!2854 = !DILocation(line: 1004, column: 36, scope: !2744)
!2855 = !DILocation(line: 1004, column: 12, scope: !2744)
!2856 = !DILocation(line: 1004, column: 10, scope: !2744)
!2857 = !DILocation(line: 1005, column: 5, scope: !2744)
!2858 = !DILocation(line: 1005, column: 30, scope: !2744)
!2859 = !DILocation(line: 1005, column: 21, scope: !2744)
!2860 = !DILocation(line: 1005, column: 19, scope: !2744)
!2861 = !DILocalVariable(name: "fi", scope: !2862, file: !3, line: 1006, type: !254)
!2862 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1005, column: 38)
!2863 = !DILocation(line: 1006, column: 23, scope: !2862)
!2864 = !DILocation(line: 1006, column: 28, scope: !2862)
!2865 = !DILocation(line: 1007, column: 28, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1007, column: 13)
!2867 = !DILocation(line: 1007, column: 37, scope: !2866)
!2868 = !DILocation(line: 1007, column: 48, scope: !2866)
!2869 = !DILocation(line: 1007, column: 52, scope: !2866)
!2870 = !DILocation(line: 1007, column: 13, scope: !2866)
!2871 = !DILocation(line: 1007, column: 13, scope: !2862)
!2872 = !DILocation(line: 1009, column: 30, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1007, column: 59)
!2874 = !DILocation(line: 1009, column: 72, scope: !2873)
!2875 = !DILocation(line: 1009, column: 76, scope: !2873)
!2876 = !DILocation(line: 1009, column: 20, scope: !2873)
!2877 = !DILocation(line: 1009, column: 14, scope: !2873)
!2878 = !DILocation(line: 1009, column: 18, scope: !2873)
!2879 = !DILocation(line: 1010, column: 13, scope: !2873)
!2880 = distinct !{!2880, !2857, !2881, !912}
!2881 = !DILocation(line: 1012, column: 5, scope: !2744)
!2882 = !DILocation(line: 1013, column: 25, scope: !2744)
!2883 = !DILocation(line: 1013, column: 5, scope: !2744)
!2884 = !DILocation(line: 1014, column: 10, scope: !2744)
!2885 = !DILocation(line: 1016, column: 17, scope: !2744)
!2886 = !DILocation(line: 1016, column: 26, scope: !2744)
!2887 = !DILocation(line: 1016, column: 5, scope: !2744)
!2888 = !DILocation(line: 1018, column: 9, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1018, column: 9)
!2890 = !DILocation(line: 1018, column: 9, scope: !2744)
!2891 = !DILocation(line: 1019, column: 27, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1018, column: 17)
!2893 = !DILocation(line: 1019, column: 9, scope: !2892)
!2894 = !DILocation(line: 1020, column: 5, scope: !2892)
!2895 = !DILocalVariable(name: "loaded_lib_name", scope: !2744, file: !3, line: 1022, type: !260)
!2896 = !DILocation(line: 1022, column: 9, scope: !2744)
!2897 = !DILocation(line: 1022, column: 30, scope: !2744)
!2898 = !DILocation(line: 1023, column: 8, scope: !2744)
!2899 = !DILocation(line: 1023, column: 13, scope: !2744)
!2900 = !DILocation(line: 1024, column: 5, scope: !2744)
!2901 = !DILocation(line: 1026, column: 12, scope: !2744)
!2902 = !DILocation(line: 1026, column: 5, scope: !2744)
!2903 = !DILabel(scope: !2744, name: "error", file: !3, line: 1028)
!2904 = !DILocation(line: 1028, column: 1, scope: !2744)
!2905 = !DILocation(line: 1029, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1029, column: 9)
!2907 = !DILocation(line: 1029, column: 9, scope: !2744)
!2908 = !DILocation(line: 1029, column: 35, scope: !2906)
!2909 = !DILocation(line: 1029, column: 15, scope: !2906)
!2910 = !DILocation(line: 1030, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1030, column: 9)
!2912 = !DILocation(line: 1030, column: 9, scope: !2744)
!2913 = !DILocation(line: 1030, column: 35, scope: !2911)
!2914 = !DILocation(line: 1030, column: 17, scope: !2911)
!2915 = !DILocation(line: 1031, column: 9, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1031, column: 9)
!2917 = !DILocation(line: 1031, column: 9, scope: !2744)
!2918 = !DILocation(line: 1031, column: 29, scope: !2916)
!2919 = !DILocation(line: 1031, column: 38, scope: !2916)
!2920 = !DILocation(line: 1031, column: 17, scope: !2916)
!2921 = !DILocation(line: 1032, column: 5, scope: !2744)
!2922 = !DILocation(line: 1033, column: 5, scope: !2744)
!2923 = !DILocation(line: 1034, column: 1, scope: !2744)
!2924 = distinct !DISubprogram(name: "engineLibraryCreate", scope: !3, file: !3, line: 272, type: !2925, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!263, !260, !270, !260}
!2927 = !DILocalVariable(name: "name", arg: 1, scope: !2924, file: !3, line: 272, type: !260)
!2928 = !DILocation(line: 272, column: 49, scope: !2924)
!2929 = !DILocalVariable(name: "ei", arg: 2, scope: !2924, file: !3, line: 272, type: !270)
!2930 = !DILocation(line: 272, column: 67, scope: !2924)
!2931 = !DILocalVariable(name: "code", arg: 3, scope: !2924, file: !3, line: 272, type: !260)
!2932 = !DILocation(line: 272, column: 75, scope: !2924)
!2933 = !DILocalVariable(name: "li", scope: !2924, file: !3, line: 273, type: !263)
!2934 = !DILocation(line: 273, column: 22, scope: !2924)
!2935 = !DILocation(line: 273, column: 27, scope: !2924)
!2936 = !DILocation(line: 274, column: 6, scope: !2924)
!2937 = !DILocation(line: 274, column: 29, scope: !2924)
!2938 = !DILocation(line: 275, column: 24, scope: !2924)
!2939 = !DILocation(line: 275, column: 17, scope: !2924)
!2940 = !DILocation(line: 276, column: 22, scope: !2924)
!2941 = !DILocation(line: 277, column: 15, scope: !2924)
!2942 = !DILocation(line: 278, column: 24, scope: !2924)
!2943 = !DILocation(line: 278, column: 17, scope: !2924)
!2944 = !DILocation(line: 274, column: 11, scope: !2924)
!2945 = !DILocation(line: 280, column: 12, scope: !2924)
!2946 = !DILocation(line: 280, column: 5, scope: !2924)
!2947 = distinct !DISubprogram(name: "libraryLink", scope: !3, file: !3, line: 305, type: !1674, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!2948 = !DILocalVariable(name: "lib_ctx", arg: 1, scope: !2947, file: !3, line: 305, type: !205)
!2949 = !DILocation(line: 305, column: 42, scope: !2947)
!2950 = !DILocalVariable(name: "li", arg: 2, scope: !2947, file: !3, line: 305, type: !263)
!2951 = !DILocation(line: 305, column: 68, scope: !2947)
!2952 = !DILocalVariable(name: "iter", scope: !2947, file: !3, line: 306, type: !879)
!2953 = !DILocation(line: 306, column: 19, scope: !2947)
!2954 = !DILocation(line: 306, column: 42, scope: !2947)
!2955 = !DILocation(line: 306, column: 46, scope: !2947)
!2956 = !DILocation(line: 306, column: 26, scope: !2947)
!2957 = !DILocalVariable(name: "entry", scope: !2947, file: !3, line: 307, type: !143)
!2958 = !DILocation(line: 307, column: 16, scope: !2947)
!2959 = !DILocation(line: 308, column: 5, scope: !2947)
!2960 = !DILocation(line: 308, column: 30, scope: !2947)
!2961 = !DILocation(line: 308, column: 21, scope: !2947)
!2962 = !DILocation(line: 308, column: 19, scope: !2947)
!2963 = !DILocalVariable(name: "fi", scope: !2964, file: !3, line: 309, type: !254)
!2964 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 308, column: 38)
!2965 = !DILocation(line: 309, column: 23, scope: !2964)
!2966 = !DILocation(line: 309, column: 28, scope: !2964)
!2967 = !DILocation(line: 310, column: 17, scope: !2964)
!2968 = !DILocation(line: 310, column: 26, scope: !2964)
!2969 = !DILocation(line: 310, column: 37, scope: !2964)
!2970 = !DILocation(line: 310, column: 41, scope: !2964)
!2971 = !DILocation(line: 310, column: 47, scope: !2964)
!2972 = !DILocation(line: 310, column: 9, scope: !2964)
!2973 = !DILocation(line: 311, column: 53, scope: !2964)
!2974 = !DILocation(line: 311, column: 34, scope: !2964)
!2975 = !DILocation(line: 311, column: 9, scope: !2964)
!2976 = !DILocation(line: 311, column: 18, scope: !2964)
!2977 = !DILocation(line: 311, column: 31, scope: !2964)
!2978 = distinct !{!2978, !2959, !2979, !912}
!2979 = !DILocation(line: 312, column: 5, scope: !2947)
!2980 = !DILocation(line: 313, column: 25, scope: !2947)
!2981 = !DILocation(line: 313, column: 5, scope: !2947)
!2982 = !DILocation(line: 315, column: 13, scope: !2947)
!2983 = !DILocation(line: 315, column: 22, scope: !2947)
!2984 = !DILocation(line: 315, column: 33, scope: !2947)
!2985 = !DILocation(line: 315, column: 37, scope: !2947)
!2986 = !DILocation(line: 315, column: 43, scope: !2947)
!2987 = !DILocation(line: 315, column: 5, scope: !2947)
!2988 = !DILocation(line: 316, column: 48, scope: !2947)
!2989 = !DILocation(line: 316, column: 30, scope: !2947)
!2990 = !DILocation(line: 316, column: 5, scope: !2947)
!2991 = !DILocation(line: 316, column: 14, scope: !2947)
!2992 = !DILocation(line: 316, column: 27, scope: !2947)
!2993 = !DILocalVariable(name: "stats", scope: !2947, file: !3, line: 319, type: !231)
!2994 = !DILocation(line: 319, column: 30, scope: !2947)
!2995 = !DILocation(line: 319, column: 53, scope: !2947)
!2996 = !DILocation(line: 319, column: 62, scope: !2947)
!2997 = !DILocation(line: 319, column: 77, scope: !2947)
!2998 = !DILocation(line: 319, column: 81, scope: !2947)
!2999 = !DILocation(line: 319, column: 85, scope: !2947)
!3000 = !DILocation(line: 319, column: 38, scope: !2947)
!3001 = !DILocation(line: 320, column: 5, scope: !2947)
!3002 = !DILocation(line: 321, column: 5, scope: !2947)
!3003 = !DILocation(line: 321, column: 12, scope: !2947)
!3004 = !DILocation(line: 321, column: 17, scope: !2947)
!3005 = !DILocation(line: 322, column: 27, scope: !2947)
!3006 = !DILocation(line: 322, column: 5, scope: !2947)
!3007 = !DILocation(line: 322, column: 12, scope: !2947)
!3008 = !DILocation(line: 322, column: 24, scope: !2947)
!3009 = !DILocation(line: 323, column: 1, scope: !2947)
!3010 = distinct !DISubprogram(name: "functionLoadCommand", scope: !3, file: !3, line: 1041, type: !536, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3011 = !DILocalVariable(name: "c", arg: 1, scope: !3010, file: !3, line: 1041, type: !299)
!3012 = !DILocation(line: 1041, column: 34, scope: !3010)
!3013 = !DILocalVariable(name: "replace", scope: !3010, file: !3, line: 1042, type: !181)
!3014 = !DILocation(line: 1042, column: 9, scope: !3010)
!3015 = !DILocalVariable(name: "argc_pos", scope: !3010, file: !3, line: 1043, type: !181)
!3016 = !DILocation(line: 1043, column: 9, scope: !3010)
!3017 = !DILocation(line: 1044, column: 5, scope: !3010)
!3018 = !DILocation(line: 1044, column: 12, scope: !3010)
!3019 = !DILocation(line: 1044, column: 23, scope: !3010)
!3020 = !DILocation(line: 1044, column: 26, scope: !3010)
!3021 = !DILocation(line: 1044, column: 31, scope: !3010)
!3022 = !DILocation(line: 1044, column: 21, scope: !3010)
!3023 = !DILocalVariable(name: "next_arg", scope: !3024, file: !3, line: 1045, type: !492)
!3024 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1044, column: 36)
!3025 = !DILocation(line: 1045, column: 15, scope: !3024)
!3026 = !DILocation(line: 1045, column: 26, scope: !3024)
!3027 = !DILocation(line: 1045, column: 29, scope: !3024)
!3028 = !DILocation(line: 1045, column: 42, scope: !3024)
!3029 = !DILocation(line: 1046, column: 25, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1046, column: 13)
!3031 = !DILocation(line: 1046, column: 35, scope: !3030)
!3032 = !DILocation(line: 1046, column: 14, scope: !3030)
!3033 = !DILocation(line: 1046, column: 13, scope: !3024)
!3034 = !DILocation(line: 1047, column: 21, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1046, column: 52)
!3036 = !DILocation(line: 1048, column: 13, scope: !3035)
!3037 = distinct !{!3037, !3017, !3038, !912}
!3038 = !DILocation(line: 1052, column: 5, scope: !3010)
!3039 = !DILocation(line: 1050, column: 29, scope: !3024)
!3040 = !DILocation(line: 1050, column: 67, scope: !3024)
!3041 = !DILocation(line: 1050, column: 77, scope: !3024)
!3042 = !DILocation(line: 1050, column: 9, scope: !3024)
!3043 = !DILocation(line: 1051, column: 9, scope: !3024)
!3044 = !DILocation(line: 1054, column: 9, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1054, column: 9)
!3046 = !DILocation(line: 1054, column: 21, scope: !3045)
!3047 = !DILocation(line: 1054, column: 24, scope: !3045)
!3048 = !DILocation(line: 1054, column: 18, scope: !3045)
!3049 = !DILocation(line: 1054, column: 9, scope: !3010)
!3050 = !DILocation(line: 1055, column: 23, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1054, column: 30)
!3052 = !DILocation(line: 1055, column: 9, scope: !3051)
!3053 = !DILocation(line: 1056, column: 9, scope: !3051)
!3054 = !DILocalVariable(name: "code", scope: !3010, file: !3, line: 1059, type: !492)
!3055 = !DILocation(line: 1059, column: 11, scope: !3010)
!3056 = !DILocation(line: 1059, column: 18, scope: !3010)
!3057 = !DILocation(line: 1059, column: 21, scope: !3010)
!3058 = !DILocation(line: 1059, column: 26, scope: !3010)
!3059 = !DILocalVariable(name: "err", scope: !3010, file: !3, line: 1060, type: !260)
!3060 = !DILocation(line: 1060, column: 9, scope: !3010)
!3061 = !DILocalVariable(name: "library_name", scope: !3010, file: !3, line: 1061, type: !260)
!3062 = !DILocation(line: 1061, column: 9, scope: !3010)
!3063 = !DILocation(line: 1062, column: 56, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1062, column: 9)
!3065 = !DILocation(line: 1062, column: 62, scope: !3064)
!3066 = !DILocation(line: 1062, column: 67, scope: !3064)
!3067 = !DILocation(line: 1062, column: 82, scope: !3064)
!3068 = !DILocation(line: 1062, column: 26, scope: !3064)
!3069 = !DILocation(line: 1062, column: 24, scope: !3064)
!3070 = !DILocation(line: 1062, column: 9, scope: !3010)
!3071 = !DILocation(line: 1064, column: 26, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1063, column: 5)
!3073 = !DILocation(line: 1064, column: 29, scope: !3072)
!3074 = !DILocation(line: 1064, column: 9, scope: !3072)
!3075 = !DILocation(line: 1065, column: 9, scope: !3072)
!3076 = !DILocation(line: 1069, column: 17, scope: !3010)
!3077 = !DILocation(line: 1070, column: 21, scope: !3010)
!3078 = !DILocation(line: 1070, column: 24, scope: !3010)
!3079 = !DILocation(line: 1070, column: 5, scope: !3010)
!3080 = !DILocation(line: 1071, column: 1, scope: !3010)
!3081 = distinct !DISubprogram(name: "functionsMemory", scope: !3, file: !3, line: 1074, type: !3082, scopeLine: 1074, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!70}
!3084 = !DILocalVariable(name: "iter", scope: !3081, file: !3, line: 1075, type: !879)
!3085 = !DILocation(line: 1075, column: 19, scope: !3081)
!3086 = !DILocation(line: 1075, column: 42, scope: !3081)
!3087 = !DILocation(line: 1075, column: 26, scope: !3081)
!3088 = !DILocalVariable(name: "entry", scope: !3081, file: !3, line: 1076, type: !143)
!3089 = !DILocation(line: 1076, column: 16, scope: !3081)
!3090 = !DILocalVariable(name: "engines_nemory", scope: !3081, file: !3, line: 1077, type: !191)
!3091 = !DILocation(line: 1077, column: 12, scope: !3081)
!3092 = !DILocation(line: 1078, column: 5, scope: !3081)
!3093 = !DILocation(line: 1078, column: 30, scope: !3081)
!3094 = !DILocation(line: 1078, column: 21, scope: !3081)
!3095 = !DILocation(line: 1078, column: 19, scope: !3081)
!3096 = !DILocalVariable(name: "ei", scope: !3097, file: !3, line: 1079, type: !270)
!3097 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1078, column: 38)
!3098 = !DILocation(line: 1079, column: 21, scope: !3097)
!3099 = !DILocation(line: 1079, column: 26, scope: !3097)
!3100 = !DILocalVariable(name: "engine", scope: !3097, file: !3, line: 1080, type: !276)
!3101 = !DILocation(line: 1080, column: 17, scope: !3097)
!3102 = !DILocation(line: 1080, column: 26, scope: !3097)
!3103 = !DILocation(line: 1080, column: 30, scope: !3097)
!3104 = !DILocation(line: 1081, column: 27, scope: !3097)
!3105 = !DILocation(line: 1081, column: 35, scope: !3097)
!3106 = !DILocation(line: 1081, column: 51, scope: !3097)
!3107 = !DILocation(line: 1081, column: 59, scope: !3097)
!3108 = !DILocation(line: 1081, column: 24, scope: !3097)
!3109 = distinct !{!3109, !3092, !3110, !912}
!3110 = !DILocation(line: 1082, column: 5, scope: !3081)
!3111 = !DILocation(line: 1083, column: 25, scope: !3081)
!3112 = !DILocation(line: 1083, column: 5, scope: !3081)
!3113 = !DILocation(line: 1085, column: 12, scope: !3081)
!3114 = !DILocation(line: 1085, column: 5, scope: !3081)
!3115 = distinct !DISubprogram(name: "functionsMemoryOverhead", scope: !3, file: !3, line: 1089, type: !3082, scopeLine: 1089, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3116 = !DILocalVariable(name: "memory_overhead", scope: !3115, file: !3, line: 1090, type: !191)
!3117 = !DILocation(line: 1090, column: 12, scope: !3115)
!3118 = !DILocation(line: 1090, column: 30, scope: !3115)
!3119 = !DILocation(line: 1090, column: 48, scope: !3115)
!3120 = !DILocation(line: 1091, column: 13, scope: !3115)
!3121 = !DILocation(line: 1091, column: 32, scope: !3115)
!3122 = !DILocation(line: 1090, column: 68, scope: !3115)
!3123 = !DILocation(line: 1092, column: 24, scope: !3115)
!3124 = !DILocation(line: 1092, column: 68, scope: !3115)
!3125 = !DILocation(line: 1093, column: 13, scope: !3115)
!3126 = !DILocation(line: 1093, column: 58, scope: !3115)
!3127 = !DILocation(line: 1092, column: 88, scope: !3115)
!3128 = !DILocation(line: 1093, column: 79, scope: !3115)
!3129 = !DILocation(line: 1092, column: 21, scope: !3115)
!3130 = !DILocation(line: 1094, column: 24, scope: !3115)
!3131 = !DILocation(line: 1094, column: 48, scope: !3115)
!3132 = !DILocation(line: 1094, column: 21, scope: !3115)
!3133 = !DILocation(line: 1095, column: 24, scope: !3115)
!3134 = !DILocation(line: 1095, column: 21, scope: !3115)
!3135 = !DILocation(line: 1097, column: 12, scope: !3115)
!3136 = !DILocation(line: 1097, column: 5, scope: !3115)
!3137 = distinct !DISubprogram(name: "functionsNum", scope: !3, file: !3, line: 1101, type: !3082, scopeLine: 1101, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3138 = !DILocation(line: 1102, column: 12, scope: !3137)
!3139 = !DILocation(line: 1102, column: 5, scope: !3137)
!3140 = distinct !DISubprogram(name: "functionsLibNum", scope: !3, file: !3, line: 1105, type: !3082, scopeLine: 1105, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3141 = !DILocation(line: 1106, column: 12, scope: !3140)
!3142 = !DILocation(line: 1106, column: 5, scope: !3140)
!3143 = distinct !DISubprogram(name: "functionsLibGet", scope: !3, file: !3, line: 1109, type: !3144, scopeLine: 1109, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!134}
!3146 = !DILocation(line: 1110, column: 12, scope: !3143)
!3147 = !DILocation(line: 1110, column: 36, scope: !3143)
!3148 = !DILocation(line: 1110, column: 5, scope: !3143)
!3149 = distinct !DISubprogram(name: "functionsLibCtxfunctionsLen", scope: !3, file: !3, line: 1113, type: !3150, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!191, !205}
!3152 = !DILocalVariable(name: "functions_ctx", arg: 1, scope: !3149, file: !3, line: 1113, type: !205)
!3153 = !DILocation(line: 1113, column: 53, scope: !3149)
!3154 = !DILocation(line: 1114, column: 12, scope: !3149)
!3155 = !DILocation(line: 1114, column: 5, scope: !3149)
!3156 = distinct !DISubprogram(name: "functionsInit", scope: !3, file: !3, line: 1119, type: !3157, scopeLine: 1119, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!181}
!3159 = !DILocation(line: 1120, column: 15, scope: !3156)
!3160 = !DILocation(line: 1120, column: 13, scope: !3156)
!3161 = !DILocation(line: 1122, column: 9, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1122, column: 9)
!3163 = !DILocation(line: 1122, column: 31, scope: !3162)
!3164 = !DILocation(line: 1122, column: 9, scope: !3156)
!3165 = !DILocation(line: 1123, column: 9, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 1122, column: 40)
!3167 = !DILocation(line: 1127, column: 30, scope: !3156)
!3168 = !DILocation(line: 1127, column: 28, scope: !3156)
!3169 = !DILocation(line: 1129, column: 5, scope: !3156)
!3170 = !DILocation(line: 1130, column: 1, scope: !3156)
!3171 = distinct !DISubprogram(name: "functionMallocSize", scope: !3, file: !3, line: 125, type: !3172, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!191, !254}
!3174 = !DILocalVariable(name: "fi", arg: 1, scope: !3171, file: !3, line: 125, type: !254)
!3175 = !DILocation(line: 125, column: 48, scope: !3171)
!3176 = !DILocation(line: 126, column: 12, scope: !3171)
!3177 = !DILocation(line: 126, column: 46, scope: !3171)
!3178 = !DILocation(line: 126, column: 50, scope: !3171)
!3179 = !DILocation(line: 126, column: 31, scope: !3171)
!3180 = !DILocation(line: 126, column: 29, scope: !3171)
!3181 = !DILocation(line: 127, column: 16, scope: !3171)
!3182 = !DILocation(line: 127, column: 20, scope: !3171)
!3183 = !DILocation(line: 127, column: 42, scope: !3171)
!3184 = !DILocation(line: 127, column: 46, scope: !3171)
!3185 = !DILocation(line: 127, column: 27, scope: !3171)
!3186 = !DILocation(line: 127, column: 13, scope: !3171)
!3187 = !DILocation(line: 128, column: 15, scope: !3171)
!3188 = !DILocation(line: 128, column: 19, scope: !3171)
!3189 = !DILocation(line: 128, column: 23, scope: !3171)
!3190 = !DILocation(line: 128, column: 27, scope: !3171)
!3191 = !DILocation(line: 128, column: 35, scope: !3171)
!3192 = !DILocation(line: 128, column: 64, scope: !3171)
!3193 = !DILocation(line: 128, column: 68, scope: !3171)
!3194 = !DILocation(line: 128, column: 13, scope: !3171)
!3195 = !DILocation(line: 126, column: 5, scope: !3171)
!3196 = distinct !DISubprogram(name: "libraryMallocSize", scope: !3, file: !3, line: 131, type: !3197, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !224)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!191, !263}
!3199 = !DILocalVariable(name: "li", arg: 1, scope: !3196, file: !3, line: 131, type: !263)
!3200 = !DILocation(line: 131, column: 50, scope: !3196)
!3201 = !DILocation(line: 132, column: 12, scope: !3196)
!3202 = !DILocation(line: 132, column: 46, scope: !3196)
!3203 = !DILocation(line: 132, column: 50, scope: !3196)
!3204 = !DILocation(line: 132, column: 31, scope: !3196)
!3205 = !DILocation(line: 132, column: 29, scope: !3196)
!3206 = !DILocation(line: 133, column: 30, scope: !3196)
!3207 = !DILocation(line: 133, column: 34, scope: !3196)
!3208 = !DILocation(line: 133, column: 15, scope: !3196)
!3209 = !DILocation(line: 133, column: 13, scope: !3196)
!3210 = !DILocation(line: 132, column: 5, scope: !3196)
