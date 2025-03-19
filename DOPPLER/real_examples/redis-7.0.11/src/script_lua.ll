; ModuleID = 'script_lua.c'
source_filename = "script_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisObject = type { i32, i32, i8* }
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
%struct.ReplyParserCallbacks = type { void (i8*, i8*, i64)*, void (i8*, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i32, i8*, i64)*, void (i8*, double, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i8*, i64)*, void (i8*)* }
%struct.ReplyParser = type { i8*, %struct.ReplyParserCallbacks }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.lua_State = type opaque
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct.scriptRunCtx = type { i8*, %struct.client*, %struct.client*, i32, i32, i64, i64 }
%struct.errorInfo = type { i8*, i8*, i8*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.clientReplyBlock = type { i64, i64, [0 x i8] }

@.str = private unnamed_addr constant [29 x i8] c"lua_islightuserdata(lua, -1)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"script_lua.c\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"<error> %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@lua_args_cached_objects = internal global [32 x %struct.redisObject*] zeroinitializer, align 16, !dbg !0
@lua_args_cached_objects_len = internal global [32 x i64] zeroinitializer, align 16, !dbg !738
@lua_argv = internal global %struct.redisObject** null, align 8, !dbg !743
@lua_argv_size = internal global i32 0, align 4, !dbg !745
@.str.9 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"REDIS_VERSION_NUM\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"REDIS_VERSION\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"7.0.11\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"LOG_DEBUG\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"LOG_VERBOSE\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"LOG_NOTICE\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"LOG_WARNING\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"setresp\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"sha1hex\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"error_reply\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"status_reply\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"set_repl\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"REPL_NONE\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"REPL_AOF\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"REPL_SLAVE\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"REPL_REPLICA\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"REPL_ALL\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"acl_check_cmd\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"ERR %s\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ignore_error_stats_update\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"__RUN_CTX__\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.41 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@luaCallFunction.gc_count = internal global i64 0, align 8, !dbg !117
@.str.43 = private unnamed_addr constant [18 x i8] c"execution failure\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Error running script %s, %.100s\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c" script: %s, on %s:%s.\00", align 1
@.str.47 = private unnamed_addr constant [74 x i8] c"malicious code trying to call luaProtectedTableError with wrong arguments\00", align 1
@.str.48 = private unnamed_addr constant [52 x i8] c"Wrong number of arguments to luaProtectedTableError\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"Second argument to luaProtectedTableError must be a string or number\00", align 1
@.str.50 = private unnamed_addr constant [60 x i8] c"Script attempted to access nonexistent global variable '%s'\00", align 1
@.str.51 = private unnamed_addr constant [50 x i8] c"Wrong number of arguments to luaNewIndexAllowList\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"first argument to luaNewIndexAllowList must be a table\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"Second argument to luaNewIndexAllowList must be a string or number\00", align 1
@allow_lists = internal global [6 x i8**] [i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @libraries_allow_list, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @redis_api_allow_list, i32 0, i32 0), i8** getelementptr inbounds ([27 x i8*], [27 x i8*]* @lua_builtins_allow_list, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @lua_builtins_not_documented_allow_list, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @lua_builtins_removed_after_initialization_allow_list, i32 0, i32 0), i8** null], align 16, !dbg !747
@deny_list = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* null], align 16, !dbg !773
@.str.54 = private unnamed_addr constant [104 x i8] c"A key '%s' was added to Lua globals which is not on the globals allow list nor listed on the deny list.\00", align 1
@libraries_allow_list = internal global [8 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* null], align 16, !dbg !753
@redis_api_allow_list = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* null], align 16, !dbg !758
@lua_builtins_allow_list = internal global [27 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* null], align 16, !dbg !763
@lua_builtins_not_documented_allow_list = internal global [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0), i8* null], align 16, !dbg !768
@lua_builtins_removed_after_initialization_allow_list = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* null], align 16, !dbg !771
@.str.55 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"cjson\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"cmsgpack\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"__redis__err__handler\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"gcinfo\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"loadstring\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.92 = private unnamed_addr constant [44 x i8] c"redis.log() requires two arguments or more.\00", align 1
@.str.93 = private unnamed_addr constant [45 x i8] c"First argument must be a number (log level).\00", align 1
@.str.94 = private unnamed_addr constant [21 x i8] c"Invalid debug level.\00", align 1
@.str.95 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.96 = private unnamed_addr constant [63 x i8] c"redis.call/pcall can only be called inside a script invocation\00", align 1
@luaRedisGenericCommand.inuse = internal global i32 0, align 4, !dbg !776
@.str.97 = private unnamed_addr constant [98 x i8] c"luaRedisGenericCommand() recursive call detected. Are you doing funny stuff with Lua debug hooks?\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"<redis>\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c" ... (%d more)\00", align 1
@.str.101 = private unnamed_addr constant [61 x i8] c"Please specify at least one argument for this redis lib call\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.103 = private unnamed_addr constant [60 x i8] c"Lua redis lib command arguments must be strings or integers\00", align 1
@DefaultLuaTypeParserCallbacks = internal constant %struct.ReplyParserCallbacks { void (i8*, i8*, i64)* @redisProtocolToLuaType_NullArray, void (i8*, i8*, i64)* @redisProtocolToLuaType_NullBulkString, void (i8*, i8*, i64, i8*, i64)* @redisProtocolToLuaType_BulkString, void (i8*, i8*, i64, i8*, i64)* @redisProtocolToLuaType_Error, void (i8*, i8*, i64, i8*, i64)* @redisProtocolToLuaType_Status, void (i8*, i64, i8*, i64)* @redisProtocolToLuaType_Int, void (%struct.ReplyParser*, i8*, i64, i8*)* @redisProtocolToLuaType_Array, void (%struct.ReplyParser*, i8*, i64, i8*)* @redisProtocolToLuaType_Set, void (%struct.ReplyParser*, i8*, i64, i8*)* @redisProtocolToLuaType_Map, void (i8*, i32, i8*, i64)* @redisProtocolToLuaType_Bool, void (i8*, double, i8*, i64)* @redisProtocolToLuaType_Double, void (i8*, i8*, i64, i8*, i64)* @redisProtocolToLuaType_BigNumber, void (i8*, i8*, i8*, i64, i8*, i64)* @redisProtocolToLuaType_VerbatimString, void (%struct.ReplyParser*, i8*, i64, i8*)* @redisProtocolToLuaType_Attribute, void (i8*, i8*, i64)* @redisProtocolToLuaType_Null, void (i8*)* null }, align 8, !dbg !781
@.str.104 = private unnamed_addr constant [52 x i8] c"lua stack limit reach when parsing redis.call reply\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"big_number\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"verbatim_string\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.113 = private unnamed_addr constant [60 x i8] c"redis.setresp can only be called inside a script invocation\00", align 1
@.str.114 = private unnamed_addr constant [39 x i8] c"redis.setresp() requires one argument.\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"RESP version must be 2 or 3.\00", align 1
@.str.116 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"wrong number or type of arguments\00", align 1
@.str.118 = private unnamed_addr constant [61 x i8] c"redis.set_repl can only be called inside a script invocation\00", align 1
@.str.119 = private unnamed_addr constant [41 x i8] c"redis.set_repl() requires two arguments.\00", align 1
@.str.120 = private unnamed_addr constant [78 x i8] c"Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE.\00", align 1
@.str.121 = private unnamed_addr constant [66 x i8] c"redis.acl_check_cmd can only be called inside a script invocation\00", align 1
@.str.122 = private unnamed_addr constant [48 x i8] c"Invalid command passed to redis.acl_check_cmd()\00", align 1
@.str.123 = private unnamed_addr constant [58 x i8] c"math.random can only be called inside a script invocation\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.125 = private unnamed_addr constant [62 x i8] c"math.randomseed can only be called inside a script invocation\00", align 1
@.str.126 = private unnamed_addr constant [44 x i8] c"Lua script killed by user with SCRIPT KILL.\00", align 1
@.str.127 = private unnamed_addr constant [42 x i8] c"Script killed by user with SCRIPT KILL...\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"reached lua stack limit\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.129 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaSaveOnRegistry(%struct.lua_State* %lua, i8* %name, i8* %ptr) #0 !dbg !837 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !840, metadata !DIExpression()), !dbg !841
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !842, metadata !DIExpression()), !dbg !843
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !844, metadata !DIExpression()), !dbg !845
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !846
  %1 = load i8*, i8** %name.addr, align 8, !dbg !847
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1), !dbg !848
  %2 = load i8*, i8** %ptr.addr, align 8, !dbg !849
  %tobool = icmp ne i8* %2, null, !dbg !849
  br i1 %tobool, label %if.then, label %if.else, !dbg !851

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !852
  %4 = load i8*, i8** %ptr.addr, align 8, !dbg !854
  call void @lua_pushlightuserdata(%struct.lua_State* %3, i8* %4), !dbg !855
  br label %if.end, !dbg !856

if.else:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !857
  call void @lua_pushnil(%struct.lua_State* %5), !dbg !859
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !860
  call void @lua_settable(%struct.lua_State* %6, i32 -10000), !dbg !861
  ret void, !dbg !862
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) #2

declare dso_local void @lua_pushlightuserdata(%struct.lua_State*, i8*) #2

declare dso_local void @lua_pushnil(%struct.lua_State*) #2

declare dso_local void @lua_settable(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @luaGetFromRegistry(%struct.lua_State* %lua, i8* %name) #0 !dbg !863 {
entry:
  %retval = alloca i8*, align 8
  %lua.addr = alloca %struct.lua_State*, align 8
  %name.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !866, metadata !DIExpression()), !dbg !867
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !868, metadata !DIExpression()), !dbg !869
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !870
  %1 = load i8*, i8** %name.addr, align 8, !dbg !871
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1), !dbg !872
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !873
  call void @lua_gettable(%struct.lua_State* %2, i32 -10000), !dbg !874
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !875
  %call = call i32 @lua_type(%struct.lua_State* %3, i32 -1), !dbg !875
  %cmp = icmp eq i32 %call, 0, !dbg !875
  br i1 %cmp, label %if.then, label %if.end, !dbg !877

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !878
  br label %return, !dbg !878

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !880
  %call1 = call i32 @lua_type(%struct.lua_State* %4, i32 -1), !dbg !880
  %cmp2 = icmp eq i32 %call1, 2, !dbg !880
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !880

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !880

cond.false:                                       ; preds = %if.end
  call void @_serverAssert(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 179), !dbg !880
  unreachable, !dbg !880

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !880

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata i8** %ptr, metadata !881, metadata !DIExpression()), !dbg !882
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !883
  %call3 = call i8* @lua_topointer(%struct.lua_State* %5, i32 -1), !dbg !884
  store i8* %call3, i8** %ptr, align 8, !dbg !882
  %6 = load i8*, i8** %ptr, align 8, !dbg !885
  %tobool = icmp ne i8* %6, null, !dbg !885
  br i1 %tobool, label %cond.true4, label %cond.false5, !dbg !885

cond.true4:                                       ; preds = %cond.end
  br label %cond.end7, !dbg !885

cond.false5:                                      ; preds = %cond.end
  call void @_serverAssert(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 182), !dbg !885
  unreachable, !dbg !885

unreachable.cont6:                                ; No predecessors!
  br label %cond.end7, !dbg !885

cond.end7:                                        ; preds = %unreachable.cont6, %cond.true4
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !886
  call void @lua_settop(%struct.lua_State* %7, i32 -2), !dbg !886
  %8 = load i8*, i8** %ptr, align 8, !dbg !887
  store i8* %8, i8** %retval, align 8, !dbg !888
  br label %return, !dbg !888

return:                                           ; preds = %cond.end7, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !889
  ret i8* %9, !dbg !889
}

declare dso_local void @lua_gettable(%struct.lua_State*, i32) #2

declare dso_local i32 @lua_type(%struct.lua_State*, i32) #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local i8* @lua_topointer(%struct.lua_State*, i32) #2

declare dso_local void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaPushErrorBuff(%struct.lua_State* %lua, i8* %err_buffer) #0 !dbg !890 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %err_buffer.addr = alloca i8*, align 8
  %msg = alloca i8*, align 8
  %error_code = alloca i8*, align 8
  %err_msg = alloca i8*, align 8
  %final_msg = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !893, metadata !DIExpression()), !dbg !894
  store i8* %err_buffer, i8** %err_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %err_buffer.addr, metadata !895, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %error_code, metadata !899, metadata !DIExpression()), !dbg !900
  %call = call i32 (...) @ldbIsEnabled(), !dbg !901
  %tobool = icmp ne i32 %call, 0, !dbg !901
  br i1 %tobool, label %if.then, label %if.end, !dbg !903

if.then:                                          ; preds = %entry
  %call1 = call i8* @sdsempty(), !dbg !904
  %0 = load i8*, i8** %err_buffer.addr, align 8, !dbg !906
  %call2 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %call1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %0), !dbg !907
  call void @ldbLog(i8* %call2), !dbg !908
  br label %if.end, !dbg !909

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %err_buffer.addr, align 8, !dbg !910
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !910
  %2 = load i8, i8* %arrayidx, align 1, !dbg !910
  %conv = sext i8 %2 to i32, !dbg !910
  %cmp = icmp eq i32 %conv, 45, !dbg !912
  br i1 %cmp, label %if.then4, label %if.else15, !dbg !913

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %err_msg, metadata !914, metadata !DIExpression()), !dbg !916
  %3 = load i8*, i8** %err_buffer.addr, align 8, !dbg !917
  %call5 = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !918
  store i8* %call5, i8** %err_msg, align 8, !dbg !916
  %4 = load i8*, i8** %err_msg, align 8, !dbg !919
  %tobool6 = icmp ne i8* %4, null, !dbg !919
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !921

if.then7:                                         ; preds = %if.then4
  %5 = load i8*, i8** %err_buffer.addr, align 8, !dbg !922
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !924
  %call8 = call i8* @sdsnew(i8* %add.ptr), !dbg !925
  store i8* %call8, i8** %msg, align 8, !dbg !926
  %call9 = call i8* @sdsnew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !927
  store i8* %call9, i8** %error_code, align 8, !dbg !928
  br label %if.end14, !dbg !929

if.else:                                          ; preds = %if.then4
  %6 = load i8*, i8** %err_msg, align 8, !dbg !930
  store i8 0, i8* %6, align 1, !dbg !932
  %7 = load i8*, i8** %err_msg, align 8, !dbg !933
  %add.ptr10 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !934
  %call11 = call i8* @sdsnew(i8* %add.ptr10), !dbg !935
  store i8* %call11, i8** %msg, align 8, !dbg !936
  %8 = load i8*, i8** %err_buffer.addr, align 8, !dbg !937
  %add.ptr12 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !938
  %call13 = call i8* @sdsnew(i8* %add.ptr12), !dbg !939
  store i8* %call13, i8** %error_code, align 8, !dbg !940
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then7
  %9 = load i8*, i8** %err_buffer.addr, align 8, !dbg !941
  call void @sdsfree(i8* %9), !dbg !942
  br label %if.end17, !dbg !943

if.else15:                                        ; preds = %if.end
  %10 = load i8*, i8** %err_buffer.addr, align 8, !dbg !944
  store i8* %10, i8** %msg, align 8, !dbg !946
  %call16 = call i8* @sdsnew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !947
  store i8* %call16, i8** %error_code, align 8, !dbg !948
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  %11 = load i8*, i8** %msg, align 8, !dbg !949
  %call18 = call i8* @sdstrim(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)), !dbg !950
  store i8* %call18, i8** %msg, align 8, !dbg !951
  call void @llvm.dbg.declare(metadata i8** %final_msg, metadata !952, metadata !DIExpression()), !dbg !953
  %12 = load i8*, i8** %error_code, align 8, !dbg !954
  %13 = load i8*, i8** %msg, align 8, !dbg !955
  %call19 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %13), !dbg !956
  store i8* %call19, i8** %final_msg, align 8, !dbg !953
  %14 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !957
  call void @lua_createtable(%struct.lua_State* %14, i32 0, i32 0), !dbg !957
  %15 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !958
  call void @lua_pushstring(%struct.lua_State* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !959
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !960
  %17 = load i8*, i8** %final_msg, align 8, !dbg !961
  call void @lua_pushstring(%struct.lua_State* %16, i8* %17), !dbg !962
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !963
  call void @lua_settable(%struct.lua_State* %18, i32 -3), !dbg !964
  %19 = load i8*, i8** %msg, align 8, !dbg !965
  call void @sdsfree(i8* %19), !dbg !966
  %20 = load i8*, i8** %final_msg, align 8, !dbg !967
  call void @sdsfree(i8* %20), !dbg !968
  ret void, !dbg !969
}

declare dso_local i32 @ldbIsEnabled(...) #2

declare dso_local void @ldbLog(i8*) #2

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #2

declare dso_local i8* @sdsempty() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #3

declare dso_local i8* @sdsnew(i8*) #2

declare dso_local void @sdsfree(i8*) #2

declare dso_local i8* @sdstrim(i8*, i8*) #2

declare dso_local i8* @sdscatfmt(i8*, i8*, ...) #2

declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaPushError(%struct.lua_State* %lua, i8* %error) #0 !dbg !970 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %error.addr = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !973, metadata !DIExpression()), !dbg !974
  store i8* %error, i8** %error.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %error.addr, metadata !975, metadata !DIExpression()), !dbg !976
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !977
  %1 = load i8*, i8** %error.addr, align 8, !dbg !978
  %call = call i8* @sdsnew(i8* %1), !dbg !979
  call void @luaPushErrorBuff(%struct.lua_State* %0, i8* %call), !dbg !980
  ret void, !dbg !981
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaError(%struct.lua_State* %lua) #0 !dbg !982 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !985, metadata !DIExpression()), !dbg !986
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !987
  %call = call i32 @lua_error(%struct.lua_State* %0), !dbg !988
  ret i32 %call, !dbg !989
}

declare dso_local i32 @lua_error(%struct.lua_State*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeLuaRedisArgv(%struct.redisObject** %argv, i32 %argc, i32 %argv_len) #0 !dbg !990 {
entry:
  %argv.addr = alloca %struct.redisObject**, align 8
  %argc.addr = alloca i32, align 4
  %argv_len.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %o = alloca %struct.redisObject*, align 8
  %s = alloca i8*, align 8
  store %struct.redisObject** %argv, %struct.redisObject*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv.addr, metadata !993, metadata !DIExpression()), !dbg !994
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !995, metadata !DIExpression()), !dbg !996
  store i32 %argv_len, i32* %argv_len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argv_len.addr, metadata !997, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata i32* %j, metadata !999, metadata !DIExpression()), !dbg !1000
  store i32 0, i32* %j, align 4, !dbg !1001
  br label %for.cond, !dbg !1003

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4, !dbg !1004
  %1 = load i32, i32* %argc.addr, align 4, !dbg !1006
  %cmp = icmp slt i32 %0, %1, !dbg !1007
  br i1 %cmp, label %for.body, label %for.end, !dbg !1008

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !1009, metadata !DIExpression()), !dbg !1011
  %2 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1012
  %3 = load i32, i32* %j, align 4, !dbg !1013
  %idxprom = sext i32 %3 to i64, !dbg !1012
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %idxprom, !dbg !1012
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1012
  store %struct.redisObject* %4, %struct.redisObject** %o, align 8, !dbg !1011
  %5 = load i32, i32* %j, align 4, !dbg !1014
  %cmp1 = icmp slt i32 %5, 32, !dbg !1016
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !1017

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1018
  %refcount = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i32 0, i32 1, !dbg !1019
  %7 = load i32, i32* %refcount, align 4, !dbg !1019
  %cmp2 = icmp eq i32 %7, 1, !dbg !1020
  br i1 %cmp2, label %land.lhs.true3, label %if.else, !dbg !1021

land.lhs.true3:                                   ; preds = %land.lhs.true
  %8 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1022
  %9 = bitcast %struct.redisObject* %8 to i32*, !dbg !1023
  %bf.load = load i32, i32* %9, align 8, !dbg !1023
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !1023
  %bf.clear = and i32 %bf.lshr, 15, !dbg !1023
  %cmp4 = icmp eq i32 %bf.clear, 0, !dbg !1024
  br i1 %cmp4, label %land.lhs.true9, label %lor.lhs.false, !dbg !1025

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %10 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1026
  %11 = bitcast %struct.redisObject* %10 to i32*, !dbg !1027
  %bf.load5 = load i32, i32* %11, align 8, !dbg !1027
  %bf.lshr6 = lshr i32 %bf.load5, 4, !dbg !1027
  %bf.clear7 = and i32 %bf.lshr6, 15, !dbg !1027
  %cmp8 = icmp eq i32 %bf.clear7, 8, !dbg !1028
  br i1 %cmp8, label %land.lhs.true9, label %if.else, !dbg !1029

land.lhs.true9:                                   ; preds = %lor.lhs.false, %land.lhs.true3
  %12 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1030
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %12, i32 0, i32 2, !dbg !1031
  %13 = load i8*, i8** %ptr, align 8, !dbg !1031
  %call = call i64 @sdslen(i8* %13), !dbg !1032
  %cmp10 = icmp ule i64 %call, 64, !dbg !1033
  br i1 %cmp10, label %if.then, label %if.else, !dbg !1034

if.then:                                          ; preds = %land.lhs.true9
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1035, metadata !DIExpression()), !dbg !1037
  %14 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1038
  %ptr11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %14, i32 0, i32 2, !dbg !1039
  %15 = load i8*, i8** %ptr11, align 8, !dbg !1039
  store i8* %15, i8** %s, align 8, !dbg !1037
  %16 = load i32, i32* %j, align 4, !dbg !1040
  %idxprom12 = sext i32 %16 to i64, !dbg !1042
  %arrayidx13 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom12, !dbg !1042
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx13, align 8, !dbg !1042
  %tobool = icmp ne %struct.redisObject* %17, null, !dbg !1042
  br i1 %tobool, label %if.then14, label %if.end, !dbg !1043

if.then14:                                        ; preds = %if.then
  %18 = load i32, i32* %j, align 4, !dbg !1044
  %idxprom15 = sext i32 %18 to i64, !dbg !1045
  %arrayidx16 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom15, !dbg !1045
  %19 = load %struct.redisObject*, %struct.redisObject** %arrayidx16, align 8, !dbg !1045
  call void @decrRefCount(%struct.redisObject* %19), !dbg !1046
  br label %if.end, !dbg !1046

if.end:                                           ; preds = %if.then14, %if.then
  %20 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1047
  %21 = load i32, i32* %j, align 4, !dbg !1048
  %idxprom17 = sext i32 %21 to i64, !dbg !1049
  %arrayidx18 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom17, !dbg !1049
  store %struct.redisObject* %20, %struct.redisObject** %arrayidx18, align 8, !dbg !1050
  %22 = load i8*, i8** %s, align 8, !dbg !1051
  %call19 = call i64 @sdsalloc(i8* %22), !dbg !1052
  %23 = load i32, i32* %j, align 4, !dbg !1053
  %idxprom20 = sext i32 %23 to i64, !dbg !1054
  %arrayidx21 = getelementptr inbounds [32 x i64], [32 x i64]* @lua_args_cached_objects_len, i64 0, i64 %idxprom20, !dbg !1054
  store i64 %call19, i64* %arrayidx21, align 8, !dbg !1055
  br label %if.end22, !dbg !1056

if.else:                                          ; preds = %land.lhs.true9, %lor.lhs.false, %land.lhs.true, %for.body
  %24 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !1057
  call void @decrRefCount(%struct.redisObject* %24), !dbg !1059
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end
  br label %for.inc, !dbg !1060

for.inc:                                          ; preds = %if.end22
  %25 = load i32, i32* %j, align 4, !dbg !1061
  %inc = add nsw i32 %25, 1, !dbg !1061
  store i32 %inc, i32* %j, align 4, !dbg !1061
  br label %for.cond, !dbg !1062, !llvm.loop !1063

for.end:                                          ; preds = %for.cond
  %26 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1066
  %27 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !1068
  %cmp23 = icmp ne %struct.redisObject** %26, %27, !dbg !1069
  br i1 %cmp23, label %if.then26, label %lor.lhs.false24, !dbg !1070

lor.lhs.false24:                                  ; preds = %for.end
  %28 = load i32, i32* %argv_len.addr, align 4, !dbg !1071
  %29 = load i32, i32* @lua_argv_size, align 4, !dbg !1072
  %cmp25 = icmp ne i32 %28, %29, !dbg !1073
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !1074

if.then26:                                        ; preds = %lor.lhs.false24, %for.end
  %30 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1075
  %31 = bitcast %struct.redisObject** %30 to i8*, !dbg !1075
  call void @zfree(i8* %31), !dbg !1077
  store %struct.redisObject** null, %struct.redisObject*** @lua_argv, align 8, !dbg !1078
  store i32 0, i32* @lua_argv_size, align 4, !dbg !1079
  br label %if.end27, !dbg !1080

if.end27:                                         ; preds = %if.then26, %lor.lhs.false24
  ret void, !dbg !1081
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1082 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1088, metadata !DIExpression()), !dbg !1089
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1090
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1090
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1090
  store i8 %1, i8* %flags, align 1, !dbg !1089
  %2 = load i8, i8* %flags, align 1, !dbg !1091
  %conv = zext i8 %2 to i32, !dbg !1091
  %and = and i32 %conv, 7, !dbg !1092
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1093

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1094
  %conv1 = zext i8 %3 to i32, !dbg !1094
  %shr = ashr i32 %conv1, 3, !dbg !1094
  %conv2 = sext i32 %shr to i64, !dbg !1094
  store i64 %conv2, i64* %retval, align 8, !dbg !1096
  br label %return, !dbg !1096

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1097
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1097
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1098
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1098
  %6 = load i8, i8* %len, align 1, !dbg !1098
  %conv4 = zext i8 %6 to i64, !dbg !1097
  store i64 %conv4, i64* %retval, align 8, !dbg !1099
  br label %return, !dbg !1099

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1100
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1100
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1101
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1101
  %9 = load i16, i16* %len7, align 1, !dbg !1101
  %conv8 = zext i16 %9 to i64, !dbg !1100
  store i64 %conv8, i64* %retval, align 8, !dbg !1102
  br label %return, !dbg !1102

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1103
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1103
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1104
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1104
  %12 = load i32, i32* %len11, align 1, !dbg !1104
  %conv12 = zext i32 %12 to i64, !dbg !1103
  store i64 %conv12, i64* %retval, align 8, !dbg !1105
  br label %return, !dbg !1105

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1106
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1106
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1107
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1107
  %15 = load i64, i64* %len15, align 1, !dbg !1107
  store i64 %15, i64* %retval, align 8, !dbg !1108
  br label %return, !dbg !1108

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1109
  br label %return, !dbg !1109

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1110
  ret i64 %16, !dbg !1110
}

declare dso_local void @decrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdsalloc(i8* %s) #0 !dbg !1111 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1114, metadata !DIExpression()), !dbg !1115
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1116
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1116
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1116
  store i8 %1, i8* %flags, align 1, !dbg !1115
  %2 = load i8, i8* %flags, align 1, !dbg !1117
  %conv = zext i8 %2 to i32, !dbg !1117
  %and = and i32 %conv, 7, !dbg !1118
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1119

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1120
  %conv1 = zext i8 %3 to i32, !dbg !1120
  %shr = ashr i32 %conv1, 3, !dbg !1120
  %conv2 = sext i32 %shr to i64, !dbg !1120
  store i64 %conv2, i64* %retval, align 8, !dbg !1122
  br label %return, !dbg !1122

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1123
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1123
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1124
  %alloc = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 1, !dbg !1124
  %6 = load i8, i8* %alloc, align 1, !dbg !1124
  %conv4 = zext i8 %6 to i64, !dbg !1123
  store i64 %conv4, i64* %retval, align 8, !dbg !1125
  br label %return, !dbg !1125

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1126
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1126
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1127
  %alloc7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 1, !dbg !1127
  %9 = load i16, i16* %alloc7, align 1, !dbg !1127
  %conv8 = zext i16 %9 to i64, !dbg !1126
  store i64 %conv8, i64* %retval, align 8, !dbg !1128
  br label %return, !dbg !1128

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1129
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1129
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1130
  %alloc11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 1, !dbg !1130
  %12 = load i32, i32* %alloc11, align 1, !dbg !1130
  %conv12 = zext i32 %12 to i64, !dbg !1129
  store i64 %conv12, i64* %retval, align 8, !dbg !1131
  br label %return, !dbg !1131

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1132
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1132
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1133
  %alloc15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 1, !dbg !1133
  %15 = load i64, i64* %alloc15, align 1, !dbg !1133
  store i64 %15, i64* %retval, align 8, !dbg !1134
  br label %return, !dbg !1134

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1135
  br label %return, !dbg !1135

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1136
  ret i64 %16, !dbg !1136
}

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @luaGetStringSds(%struct.lua_State* %lua, i32 %index) #0 !dbg !1137 {
entry:
  %retval = alloca i8*, align 8
  %lua.addr = alloca %struct.lua_State*, align 8
  %index.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %str_sds = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !1142, metadata !DIExpression()), !dbg !1143
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1144
  %1 = load i32, i32* %index.addr, align 4, !dbg !1146
  %call = call i32 @lua_isstring(%struct.lua_State* %0, i32 %1), !dbg !1147
  %tobool = icmp ne i32 %call, 0, !dbg !1147
  br i1 %tobool, label %if.end, label %if.then, !dbg !1148

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !1149
  br label %return, !dbg !1149

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1151, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.declare(metadata i8** %str, metadata !1153, metadata !DIExpression()), !dbg !1154
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1155
  %3 = load i32, i32* %index.addr, align 4, !dbg !1156
  %call1 = call i8* @lua_tolstring(%struct.lua_State* %2, i32 %3, i64* %len), !dbg !1157
  store i8* %call1, i8** %str, align 8, !dbg !1154
  call void @llvm.dbg.declare(metadata i8** %str_sds, metadata !1158, metadata !DIExpression()), !dbg !1159
  %4 = load i8*, i8** %str, align 8, !dbg !1160
  %5 = load i64, i64* %len, align 8, !dbg !1161
  %call2 = call i8* @sdsnewlen(i8* %4, i64 %5), !dbg !1162
  store i8* %call2, i8** %str_sds, align 8, !dbg !1159
  %6 = load i8*, i8** %str_sds, align 8, !dbg !1163
  store i8* %6, i8** %retval, align 8, !dbg !1164
  br label %return, !dbg !1164

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !1165
  ret i8* %7, !dbg !1165
}

declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) #2

declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #2

declare dso_local i8* @sdsnewlen(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaSetErrorMetatable(%struct.lua_State* %lua) #0 !dbg !1166 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1169, metadata !DIExpression()), !dbg !1170
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1171
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0), !dbg !1171
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1172
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* @luaProtectedTableError, i32 0), !dbg !1172
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1173
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !1174
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1175
  %call = call i32 @lua_setmetatable(%struct.lua_State* %3, i32 -2), !dbg !1176
  ret void, !dbg !1177
}

declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaProtectedTableError(%struct.lua_State* %lua) #0 !dbg !1178 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %argc = alloca i32, align 4
  %variable_name = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1181, metadata !DIExpression()), !dbg !1182
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1183
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1184
  store i32 %call, i32* %argc, align 4, !dbg !1182
  %1 = load i32, i32* %argc, align 4, !dbg !1185
  %cmp = icmp ne i32 %1, 2, !dbg !1187
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1188

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1189

do.body:                                          ; preds = %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !1191
  %cmp1 = icmp slt i32 3, %2, !dbg !1191
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1194

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !1191

if.end:                                           ; preds = %do.body
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.47, i64 0, i64 0)), !dbg !1194
  br label %do.end, !dbg !1194

do.end:                                           ; preds = %if.end, %if.then2
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1195
  %call3 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.48, i64 0, i64 0)), !dbg !1196
  br label %if.end4, !dbg !1197

if.end4:                                          ; preds = %do.end, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1198
  %call5 = call i32 @lua_isstring(%struct.lua_State* %4, i32 -1), !dbg !1200
  %tobool = icmp ne i32 %call5, 0, !dbg !1200
  br i1 %tobool, label %if.end10, label %land.lhs.true, !dbg !1201

land.lhs.true:                                    ; preds = %if.end4
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1202
  %call6 = call i32 @lua_isnumber(%struct.lua_State* %5, i32 -1), !dbg !1203
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1203
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1204

if.then8:                                         ; preds = %land.lhs.true
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1205
  %call9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %6, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.49, i64 0, i64 0)), !dbg !1207
  br label %if.end10, !dbg !1208

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %if.end4
  call void @llvm.dbg.declare(metadata i8** %variable_name, metadata !1209, metadata !DIExpression()), !dbg !1210
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1211
  %call11 = call i8* @lua_tolstring(%struct.lua_State* %7, i32 -1, i64* null), !dbg !1211
  store i8* %call11, i8** %variable_name, align 8, !dbg !1210
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1212
  %9 = load i8*, i8** %variable_name, align 8, !dbg !1213
  %call12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.50, i64 0, i64 0), i8* %9), !dbg !1214
  ret i32 0, !dbg !1215
}

declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaSetAllowListProtection(%struct.lua_State* %lua) #0 !dbg !1216 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1217, metadata !DIExpression()), !dbg !1218
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1219
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0), !dbg !1219
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1220
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* @luaNewIndexAllowList, i32 0), !dbg !1220
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1221
  call void @lua_setfield(%struct.lua_State* %2, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)), !dbg !1222
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1223
  %call = call i32 @lua_setmetatable(%struct.lua_State* %3, i32 -2), !dbg !1224
  ret void, !dbg !1225
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaNewIndexAllowList(%struct.lua_State* %lua) #0 !dbg !1226 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %argc = alloca i32, align 4
  %variable_name = alloca i8*, align 8
  %allow_l = alloca i8***, align 8
  %c = alloca i8**, align 8
  %c33 = alloca i8**, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1229, metadata !DIExpression()), !dbg !1230
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1231
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1232
  store i32 %call, i32* %argc, align 4, !dbg !1230
  %1 = load i32, i32* %argc, align 4, !dbg !1233
  %cmp = icmp ne i32 %1, 3, !dbg !1235
  br i1 %cmp, label %if.then, label %if.end4, !dbg !1236

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1237

do.body:                                          ; preds = %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !1239
  %cmp1 = icmp slt i32 3, %2, !dbg !1239
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1242

if.then2:                                         ; preds = %do.body
  br label %do.end, !dbg !1239

if.end:                                           ; preds = %do.body
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.47, i64 0, i64 0)), !dbg !1242
  br label %do.end, !dbg !1242

do.end:                                           ; preds = %if.end, %if.then2
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1243
  %call3 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.51, i64 0, i64 0)), !dbg !1244
  br label %if.end4, !dbg !1245

if.end4:                                          ; preds = %do.end, %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1246
  %call5 = call i32 @lua_type(%struct.lua_State* %4, i32 -3), !dbg !1246
  %cmp6 = icmp eq i32 %call5, 5, !dbg !1246
  br i1 %cmp6, label %if.end9, label %if.then7, !dbg !1248

if.then7:                                         ; preds = %if.end4
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1249
  %call8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0)), !dbg !1251
  br label %if.end9, !dbg !1252

if.end9:                                          ; preds = %if.then7, %if.end4
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1253
  %call10 = call i32 @lua_isstring(%struct.lua_State* %6, i32 -2), !dbg !1255
  %tobool = icmp ne i32 %call10, 0, !dbg !1255
  br i1 %tobool, label %if.end15, label %land.lhs.true, !dbg !1256

land.lhs.true:                                    ; preds = %if.end9
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1257
  %call11 = call i32 @lua_isnumber(%struct.lua_State* %7, i32 -2), !dbg !1258
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1258
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !1259

if.then13:                                        ; preds = %land.lhs.true
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1260
  %call14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.53, i64 0, i64 0)), !dbg !1262
  br label %if.end15, !dbg !1263

if.end15:                                         ; preds = %if.then13, %land.lhs.true, %if.end9
  call void @llvm.dbg.declare(metadata i8** %variable_name, metadata !1264, metadata !DIExpression()), !dbg !1265
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1266
  %call16 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 -2, i64* null), !dbg !1266
  store i8* %call16, i8** %variable_name, align 8, !dbg !1265
  call void @llvm.dbg.declare(metadata i8**** %allow_l, metadata !1267, metadata !DIExpression()), !dbg !1269
  store i8*** getelementptr inbounds ([6 x i8**], [6 x i8**]* @allow_lists, i64 0, i64 0), i8**** %allow_l, align 8, !dbg !1269
  br label %for.cond, !dbg !1270

for.cond:                                         ; preds = %for.inc28, %if.end15
  %10 = load i8***, i8**** %allow_l, align 8, !dbg !1271
  %11 = load i8**, i8*** %10, align 8, !dbg !1274
  %tobool17 = icmp ne i8** %11, null, !dbg !1275
  br i1 %tobool17, label %for.body, label %for.end30, !dbg !1275

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8*** %c, metadata !1276, metadata !DIExpression()), !dbg !1278
  %12 = load i8***, i8**** %allow_l, align 8, !dbg !1279
  %13 = load i8**, i8*** %12, align 8, !dbg !1280
  store i8** %13, i8*** %c, align 8, !dbg !1278
  br label %for.cond18, !dbg !1281

for.cond18:                                       ; preds = %for.inc, %for.body
  %14 = load i8**, i8*** %c, align 8, !dbg !1282
  %15 = load i8*, i8** %14, align 8, !dbg !1285
  %tobool19 = icmp ne i8* %15, null, !dbg !1286
  br i1 %tobool19, label %for.body20, label %for.end, !dbg !1286

for.body20:                                       ; preds = %for.cond18
  %16 = load i8**, i8*** %c, align 8, !dbg !1287
  %17 = load i8*, i8** %16, align 8, !dbg !1290
  %18 = load i8*, i8** %variable_name, align 8, !dbg !1291
  %call21 = call i32 @strcmp(i8* %17, i8* %18) #7, !dbg !1292
  %cmp22 = icmp eq i32 %call21, 0, !dbg !1293
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !1294

if.then23:                                        ; preds = %for.body20
  br label %for.end, !dbg !1295

if.end24:                                         ; preds = %for.body20
  br label %for.inc, !dbg !1297

for.inc:                                          ; preds = %if.end24
  %19 = load i8**, i8*** %c, align 8, !dbg !1298
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1, !dbg !1298
  store i8** %incdec.ptr, i8*** %c, align 8, !dbg !1298
  br label %for.cond18, !dbg !1299, !llvm.loop !1300

for.end:                                          ; preds = %if.then23, %for.cond18
  %20 = load i8**, i8*** %c, align 8, !dbg !1302
  %21 = load i8*, i8** %20, align 8, !dbg !1304
  %tobool25 = icmp ne i8* %21, null, !dbg !1304
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1305

if.then26:                                        ; preds = %for.end
  br label %for.end30, !dbg !1306

if.end27:                                         ; preds = %for.end
  br label %for.inc28, !dbg !1308

for.inc28:                                        ; preds = %if.end27
  %22 = load i8***, i8**** %allow_l, align 8, !dbg !1309
  %incdec.ptr29 = getelementptr inbounds i8**, i8*** %22, i32 1, !dbg !1309
  store i8*** %incdec.ptr29, i8**** %allow_l, align 8, !dbg !1309
  br label %for.cond, !dbg !1310, !llvm.loop !1311

for.end30:                                        ; preds = %if.then26, %for.cond
  %23 = load i8***, i8**** %allow_l, align 8, !dbg !1313
  %24 = load i8**, i8*** %23, align 8, !dbg !1315
  %tobool31 = icmp ne i8** %24, null, !dbg !1315
  br i1 %tobool31, label %if.else, label %if.then32, !dbg !1316

if.then32:                                        ; preds = %for.end30
  call void @llvm.dbg.declare(metadata i8*** %c33, metadata !1317, metadata !DIExpression()), !dbg !1319
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @deny_list, i64 0, i64 0), i8*** %c33, align 8, !dbg !1319
  br label %for.cond34, !dbg !1320

for.cond34:                                       ; preds = %for.inc41, %if.then32
  %25 = load i8**, i8*** %c33, align 8, !dbg !1321
  %26 = load i8*, i8** %25, align 8, !dbg !1324
  %tobool35 = icmp ne i8* %26, null, !dbg !1325
  br i1 %tobool35, label %for.body36, label %for.end43, !dbg !1325

for.body36:                                       ; preds = %for.cond34
  %27 = load i8**, i8*** %c33, align 8, !dbg !1326
  %28 = load i8*, i8** %27, align 8, !dbg !1329
  %29 = load i8*, i8** %variable_name, align 8, !dbg !1330
  %call37 = call i32 @strcmp(i8* %28, i8* %29) #7, !dbg !1331
  %cmp38 = icmp eq i32 %call37, 0, !dbg !1332
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !1333

if.then39:                                        ; preds = %for.body36
  br label %for.end43, !dbg !1334

if.end40:                                         ; preds = %for.body36
  br label %for.inc41, !dbg !1336

for.inc41:                                        ; preds = %if.end40
  %30 = load i8**, i8*** %c33, align 8, !dbg !1337
  %incdec.ptr42 = getelementptr inbounds i8*, i8** %30, i32 1, !dbg !1337
  store i8** %incdec.ptr42, i8*** %c33, align 8, !dbg !1337
  br label %for.cond34, !dbg !1338, !llvm.loop !1339

for.end43:                                        ; preds = %if.then39, %for.cond34
  %31 = load i8**, i8*** %c33, align 8, !dbg !1341
  %32 = load i8*, i8** %31, align 8, !dbg !1343
  %tobool44 = icmp ne i8* %32, null, !dbg !1343
  br i1 %tobool44, label %if.end51, label %if.then45, !dbg !1344

if.then45:                                        ; preds = %for.end43
  br label %do.body46, !dbg !1345

do.body46:                                        ; preds = %if.then45
  %33 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !1347
  %cmp47 = icmp slt i32 3, %33, !dbg !1347
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !1350

if.then48:                                        ; preds = %do.body46
  br label %do.end50, !dbg !1347

if.end49:                                         ; preds = %do.body46
  %34 = load i8*, i8** %variable_name, align 8, !dbg !1350
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.54, i64 0, i64 0), i8* %34), !dbg !1350
  br label %do.end50, !dbg !1350

do.end50:                                         ; preds = %if.end49, %if.then48
  br label %if.end51, !dbg !1351

if.end51:                                         ; preds = %do.end50, %for.end43
  br label %if.end52, !dbg !1352

if.else:                                          ; preds = %for.end30
  %35 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1353
  call void @lua_rawset(%struct.lua_State* %35, i32 -3), !dbg !1355
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end51
  ret i32 0, !dbg !1356
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaSetTableProtectionRecursively(%struct.lua_State* %lua) #0 !dbg !1357 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1360
  %call = call i32 @lua_isreadonlytable(%struct.lua_State* %0, i32 -1), !dbg !1362
  %tobool = icmp ne i32 %call, 0, !dbg !1362
  br i1 %tobool, label %if.then, label %if.end, !dbg !1363

if.then:                                          ; preds = %entry
  br label %if.end10, !dbg !1364

if.end:                                           ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1366
  call void @lua_enablereadonlytable(%struct.lua_State* %1, i32 -1, i32 1), !dbg !1367
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1368
  %call1 = call i32 @lua_checkstack(%struct.lua_State* %2, i32 2), !dbg !1369
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1370
  call void @lua_pushnil(%struct.lua_State* %3), !dbg !1371
  br label %while.cond, !dbg !1372

while.cond:                                       ; preds = %if.end6, %if.end
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1373
  %call2 = call i32 @lua_next(%struct.lua_State* %4, i32 -2), !dbg !1374
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1372
  br i1 %tobool3, label %while.body, label %while.end, !dbg !1372

while.body:                                       ; preds = %while.cond
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1375
  %call4 = call i32 @lua_type(%struct.lua_State* %5, i32 -1), !dbg !1375
  %cmp = icmp eq i32 %call4, 5, !dbg !1375
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1378

if.then5:                                         ; preds = %while.body
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1379
  call void @luaSetTableProtectionRecursively(%struct.lua_State* %6), !dbg !1381
  br label %if.end6, !dbg !1382

if.end6:                                          ; preds = %if.then5, %while.body
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1383
  call void @lua_settop(%struct.lua_State* %7, i32 -2), !dbg !1383
  br label %while.cond, !dbg !1372, !llvm.loop !1384

while.end:                                        ; preds = %while.cond
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1386
  %call7 = call i32 @lua_getmetatable(%struct.lua_State* %8, i32 -1), !dbg !1388
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1388
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1389

if.then9:                                         ; preds = %while.end
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1390
  call void @luaSetTableProtectionRecursively(%struct.lua_State* %9), !dbg !1392
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1393
  call void @lua_settop(%struct.lua_State* %10, i32 -2), !dbg !1393
  br label %if.end10, !dbg !1394

if.end10:                                         ; preds = %if.then, %if.then9, %while.end
  ret void, !dbg !1395
}

declare dso_local i32 @lua_isreadonlytable(%struct.lua_State*, i32) #2

declare dso_local void @lua_enablereadonlytable(%struct.lua_State*, i32, i32) #2

declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) #2

declare dso_local i32 @lua_next(%struct.lua_State*, i32) #2

declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaRegisterVersion(%struct.lua_State* %lua) #0 !dbg !1396 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1397, metadata !DIExpression()), !dbg !1398
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1399
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0)), !dbg !1400
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1401
  call void @lua_pushnumber(%struct.lua_State* %1, double 4.587630e+05), !dbg !1402
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1403
  call void @lua_settable(%struct.lua_State* %2, i32 -3), !dbg !1404
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1405
  call void @lua_pushstring(%struct.lua_State* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)), !dbg !1406
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1407
  call void @lua_pushstring(%struct.lua_State* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)), !dbg !1408
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1409
  call void @lua_settable(%struct.lua_State* %5, i32 -3), !dbg !1410
  ret void, !dbg !1411
}

declare dso_local void @lua_pushnumber(%struct.lua_State*, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaRegisterLogFunction(%struct.lua_State* %lua) #0 !dbg !1412 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1413, metadata !DIExpression()), !dbg !1414
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1415
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0)), !dbg !1416
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1417
  call void @lua_pushcclosure(%struct.lua_State* %1, i32 (%struct.lua_State*)* @luaLogCommand, i32 0), !dbg !1417
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1418
  call void @lua_settable(%struct.lua_State* %2, i32 -3), !dbg !1419
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1420
  call void @lua_pushstring(%struct.lua_State* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)), !dbg !1421
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1422
  call void @lua_pushnumber(%struct.lua_State* %4, double 0.000000e+00), !dbg !1423
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1424
  call void @lua_settable(%struct.lua_State* %5, i32 -3), !dbg !1425
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1426
  call void @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0)), !dbg !1427
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1428
  call void @lua_pushnumber(%struct.lua_State* %7, double 1.000000e+00), !dbg !1429
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1430
  call void @lua_settable(%struct.lua_State* %8, i32 -3), !dbg !1431
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1432
  call void @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0)), !dbg !1433
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1434
  call void @lua_pushnumber(%struct.lua_State* %10, double 2.000000e+00), !dbg !1435
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1436
  call void @lua_settable(%struct.lua_State* %11, i32 -3), !dbg !1437
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1438
  call void @lua_pushstring(%struct.lua_State* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)), !dbg !1439
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1440
  call void @lua_pushnumber(%struct.lua_State* %13, double 3.000000e+00), !dbg !1441
  %14 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1442
  call void @lua_settable(%struct.lua_State* %14, i32 -3), !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaLogCommand(%struct.lua_State* %lua) #0 !dbg !1445 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %j = alloca i32, align 4
  %argc = alloca i32, align 4
  %level = alloca i32, align 4
  %log = alloca i8*, align 8
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1446, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1448, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1450, metadata !DIExpression()), !dbg !1451
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1452
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1453
  store i32 %call, i32* %argc, align 4, !dbg !1451
  call void @llvm.dbg.declare(metadata i32* %level, metadata !1454, metadata !DIExpression()), !dbg !1455
  call void @llvm.dbg.declare(metadata i8** %log, metadata !1456, metadata !DIExpression()), !dbg !1457
  %1 = load i32, i32* %argc, align 4, !dbg !1458
  %cmp = icmp slt i32 %1, 2, !dbg !1460
  br i1 %cmp, label %if.then, label %if.else, !dbg !1461

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1462
  call void @luaPushError(%struct.lua_State* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.92, i64 0, i64 0)), !dbg !1464
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1465
  %call1 = call i32 @luaError(%struct.lua_State* %3), !dbg !1466
  store i32 %call1, i32* %retval, align 4, !dbg !1467
  br label %return, !dbg !1467

if.else:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1468
  %5 = load i32, i32* %argc, align 4, !dbg !1470
  %sub = sub nsw i32 0, %5, !dbg !1471
  %call2 = call i32 @lua_isnumber(%struct.lua_State* %4, i32 %sub), !dbg !1472
  %tobool = icmp ne i32 %call2, 0, !dbg !1472
  br i1 %tobool, label %if.end, label %if.then3, !dbg !1473

if.then3:                                         ; preds = %if.else
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1474
  call void @luaPushError(%struct.lua_State* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.93, i64 0, i64 0)), !dbg !1476
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1477
  %call4 = call i32 @luaError(%struct.lua_State* %7), !dbg !1478
  store i32 %call4, i32* %retval, align 4, !dbg !1479
  br label %return, !dbg !1479

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1480
  %9 = load i32, i32* %argc, align 4, !dbg !1481
  %sub6 = sub nsw i32 0, %9, !dbg !1482
  %call7 = call double @lua_tonumber(%struct.lua_State* %8, i32 %sub6), !dbg !1483
  %conv = fptosi double %call7 to i32, !dbg !1483
  store i32 %conv, i32* %level, align 4, !dbg !1484
  %10 = load i32, i32* %level, align 4, !dbg !1485
  %cmp8 = icmp slt i32 %10, 0, !dbg !1487
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !1488

lor.lhs.false:                                    ; preds = %if.end5
  %11 = load i32, i32* %level, align 4, !dbg !1489
  %cmp10 = icmp sgt i32 %11, 3, !dbg !1490
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !1491

if.then12:                                        ; preds = %lor.lhs.false, %if.end5
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1492
  call void @luaPushError(%struct.lua_State* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.94, i64 0, i64 0)), !dbg !1494
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1495
  %call13 = call i32 @luaError(%struct.lua_State* %13), !dbg !1496
  store i32 %call13, i32* %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

if.end14:                                         ; preds = %lor.lhs.false
  %14 = load i32, i32* %level, align 4, !dbg !1498
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !1500
  %cmp15 = icmp slt i32 %14, %15, !dbg !1501
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1502

if.then17:                                        ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

if.end18:                                         ; preds = %if.end14
  %call19 = call i8* @sdsempty(), !dbg !1504
  store i8* %call19, i8** %log, align 8, !dbg !1505
  store i32 1, i32* %j, align 4, !dbg !1506
  br label %for.cond, !dbg !1508

for.cond:                                         ; preds = %for.inc, %if.end18
  %16 = load i32, i32* %j, align 4, !dbg !1509
  %17 = load i32, i32* %argc, align 4, !dbg !1511
  %cmp20 = icmp slt i32 %16, %17, !dbg !1512
  br i1 %cmp20, label %for.body, label %for.end, !dbg !1513

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1514, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1517, metadata !DIExpression()), !dbg !1518
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1519
  %19 = load i32, i32* %argc, align 4, !dbg !1520
  %sub22 = sub nsw i32 0, %19, !dbg !1521
  %20 = load i32, i32* %j, align 4, !dbg !1522
  %add = add nsw i32 %sub22, %20, !dbg !1523
  %call23 = call i8* @lua_tolstring(%struct.lua_State* %18, i32 %add, i64* %len), !dbg !1524
  store i8* %call23, i8** %s, align 8, !dbg !1525
  %21 = load i8*, i8** %s, align 8, !dbg !1526
  %tobool24 = icmp ne i8* %21, null, !dbg !1526
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !1528

if.then25:                                        ; preds = %for.body
  %22 = load i32, i32* %j, align 4, !dbg !1529
  %cmp26 = icmp ne i32 %22, 1, !dbg !1532
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !1533

if.then28:                                        ; preds = %if.then25
  %23 = load i8*, i8** %log, align 8, !dbg !1534
  %call29 = call i8* @sdscatlen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1), !dbg !1535
  store i8* %call29, i8** %log, align 8, !dbg !1536
  br label %if.end30, !dbg !1537

if.end30:                                         ; preds = %if.then28, %if.then25
  %24 = load i8*, i8** %log, align 8, !dbg !1538
  %25 = load i8*, i8** %s, align 8, !dbg !1539
  %26 = load i64, i64* %len, align 8, !dbg !1540
  %call31 = call i8* @sdscatlen(i8* %24, i8* %25, i64 %26), !dbg !1541
  store i8* %call31, i8** %log, align 8, !dbg !1542
  br label %if.end32, !dbg !1543

if.end32:                                         ; preds = %if.end30, %for.body
  br label %for.inc, !dbg !1544

for.inc:                                          ; preds = %if.end32
  %27 = load i32, i32* %j, align 4, !dbg !1545
  %inc = add nsw i32 %27, 1, !dbg !1545
  store i32 %inc, i32* %j, align 4, !dbg !1545
  br label %for.cond, !dbg !1546, !llvm.loop !1547

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %level, align 4, !dbg !1549
  %29 = load i8*, i8** %log, align 8, !dbg !1550
  call void @serverLogRaw(i32 %28, i8* %29), !dbg !1551
  %30 = load i8*, i8** %log, align 8, !dbg !1552
  call void @sdsfree(i8* %30), !dbg !1553
  store i32 0, i32* %retval, align 4, !dbg !1554
  br label %return, !dbg !1554

return:                                           ; preds = %for.end, %if.then17, %if.then12, %if.then3, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !1555
  ret i32 %31, !dbg !1555
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaRegisterRedisAPI(%struct.lua_State* %lua) #0 !dbg !1556 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1557, metadata !DIExpression()), !dbg !1558
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1559
  call void @lua_pushvalue(%struct.lua_State* %0, i32 -10002), !dbg !1560
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1561
  call void @luaSetAllowListProtection(%struct.lua_State* %1), !dbg !1562
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1563
  call void @lua_settop(%struct.lua_State* %2, i32 -2), !dbg !1563
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1564
  call void @luaLoadLibraries(%struct.lua_State* %3), !dbg !1565
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1566
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @luaRedisPcall, i32 0), !dbg !1566
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1567
  call void @lua_setfield(%struct.lua_State* %5, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)), !dbg !1567
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1568
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 0), !dbg !1568
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1569
  call void @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)), !dbg !1570
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1571
  call void @lua_pushcclosure(%struct.lua_State* %8, i32 (%struct.lua_State*)* @luaRedisCallCommand, i32 0), !dbg !1571
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1572
  call void @lua_settable(%struct.lua_State* %9, i32 -3), !dbg !1573
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1574
  call void @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)), !dbg !1575
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1576
  call void @lua_pushcclosure(%struct.lua_State* %11, i32 (%struct.lua_State*)* @luaRedisPCallCommand, i32 0), !dbg !1576
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1577
  call void @lua_settable(%struct.lua_State* %12, i32 -3), !dbg !1578
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1579
  call void @luaRegisterLogFunction(%struct.lua_State* %13), !dbg !1580
  %14 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1581
  call void @luaRegisterVersion(%struct.lua_State* %14), !dbg !1582
  %15 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1583
  call void @lua_pushstring(%struct.lua_State* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)), !dbg !1584
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1585
  call void @lua_pushcclosure(%struct.lua_State* %16, i32 (%struct.lua_State*)* @luaSetResp, i32 0), !dbg !1585
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1586
  call void @lua_settable(%struct.lua_State* %17, i32 -3), !dbg !1587
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1588
  call void @lua_pushstring(%struct.lua_State* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)), !dbg !1589
  %19 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1590
  call void @lua_pushcclosure(%struct.lua_State* %19, i32 (%struct.lua_State*)* @luaRedisSha1hexCommand, i32 0), !dbg !1590
  %20 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1591
  call void @lua_settable(%struct.lua_State* %20, i32 -3), !dbg !1592
  %21 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1593
  call void @lua_pushstring(%struct.lua_State* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)), !dbg !1594
  %22 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1595
  call void @lua_pushcclosure(%struct.lua_State* %22, i32 (%struct.lua_State*)* @luaRedisErrorReplyCommand, i32 0), !dbg !1595
  %23 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1596
  call void @lua_settable(%struct.lua_State* %23, i32 -3), !dbg !1597
  %24 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1598
  call void @lua_pushstring(%struct.lua_State* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0)), !dbg !1599
  %25 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1600
  call void @lua_pushcclosure(%struct.lua_State* %25, i32 (%struct.lua_State*)* @luaRedisStatusReplyCommand, i32 0), !dbg !1600
  %26 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1601
  call void @lua_settable(%struct.lua_State* %26, i32 -3), !dbg !1602
  %27 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1603
  call void @lua_pushstring(%struct.lua_State* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0)), !dbg !1604
  %28 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1605
  call void @lua_pushcclosure(%struct.lua_State* %28, i32 (%struct.lua_State*)* @luaRedisSetReplCommand, i32 0), !dbg !1605
  %29 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1606
  call void @lua_settable(%struct.lua_State* %29, i32 -3), !dbg !1607
  %30 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1608
  call void @lua_pushstring(%struct.lua_State* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0)), !dbg !1609
  %31 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1610
  call void @lua_pushnumber(%struct.lua_State* %31, double 0.000000e+00), !dbg !1611
  %32 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1612
  call void @lua_settable(%struct.lua_State* %32, i32 -3), !dbg !1613
  %33 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1614
  call void @lua_pushstring(%struct.lua_State* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0)), !dbg !1615
  %34 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1616
  call void @lua_pushnumber(%struct.lua_State* %34, double 1.000000e+00), !dbg !1617
  %35 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1618
  call void @lua_settable(%struct.lua_State* %35, i32 -3), !dbg !1619
  %36 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1620
  call void @lua_pushstring(%struct.lua_State* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0)), !dbg !1621
  %37 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1622
  call void @lua_pushnumber(%struct.lua_State* %37, double 2.000000e+00), !dbg !1623
  %38 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1624
  call void @lua_settable(%struct.lua_State* %38, i32 -3), !dbg !1625
  %39 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1626
  call void @lua_pushstring(%struct.lua_State* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0)), !dbg !1627
  %40 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1628
  call void @lua_pushnumber(%struct.lua_State* %40, double 2.000000e+00), !dbg !1629
  %41 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1630
  call void @lua_settable(%struct.lua_State* %41, i32 -3), !dbg !1631
  %42 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1632
  call void @lua_pushstring(%struct.lua_State* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)), !dbg !1633
  %43 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1634
  call void @lua_pushnumber(%struct.lua_State* %43, double 3.000000e+00), !dbg !1635
  %44 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1636
  call void @lua_settable(%struct.lua_State* %44, i32 -3), !dbg !1637
  %45 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1638
  call void @lua_pushstring(%struct.lua_State* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0)), !dbg !1639
  %46 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1640
  call void @lua_pushcclosure(%struct.lua_State* %46, i32 (%struct.lua_State*)* @luaRedisAclCheckCmdPermissionsCommand, i32 0), !dbg !1640
  %47 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1641
  call void @lua_settable(%struct.lua_State* %47, i32 -3), !dbg !1642
  %48 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1643
  call void @lua_setfield(%struct.lua_State* %48, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0)), !dbg !1643
  %49 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1644
  call void @lua_getfield(%struct.lua_State* %49, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)), !dbg !1644
  %50 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1645
  call void @lua_pushstring(%struct.lua_State* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0)), !dbg !1646
  %51 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1647
  call void @lua_pushcclosure(%struct.lua_State* %51, i32 (%struct.lua_State*)* @redis_math_random, i32 0), !dbg !1647
  %52 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1648
  call void @lua_settable(%struct.lua_State* %52, i32 -3), !dbg !1649
  %53 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1650
  call void @lua_pushstring(%struct.lua_State* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)), !dbg !1651
  %54 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1652
  call void @lua_pushcclosure(%struct.lua_State* %54, i32 (%struct.lua_State*)* @redis_math_randomseed, i32 0), !dbg !1652
  %55 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1653
  call void @lua_settable(%struct.lua_State* %55, i32 -3), !dbg !1654
  %56 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1655
  call void @lua_setfield(%struct.lua_State* %56, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)), !dbg !1655
  ret void, !dbg !1656
}

declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaLoadLibraries(%struct.lua_State* %lua) #0 !dbg !1657 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1658, metadata !DIExpression()), !dbg !1659
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1660
  call void @luaLoadLib(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.95, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_base), !dbg !1661
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1662
  call void @luaLoadLib(%struct.lua_State* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_table), !dbg !1663
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1664
  call void @luaLoadLib(%struct.lua_State* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_string), !dbg !1665
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1666
  call void @luaLoadLib(%struct.lua_State* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_math), !dbg !1667
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1668
  call void @luaLoadLib(%struct.lua_State* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_debug), !dbg !1669
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1670
  call void @luaLoadLib(%struct.lua_State* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_cjson), !dbg !1671
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1672
  call void @luaLoadLib(%struct.lua_State* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_struct), !dbg !1673
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1674
  call void @luaLoadLib(%struct.lua_State* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_cmsgpack), !dbg !1675
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1676
  call void @luaLoadLib(%struct.lua_State* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i32 (%struct.lua_State*)* @luaopen_bit), !dbg !1677
  ret void, !dbg !1678
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisPcall(%struct.lua_State* %lua) #0 !dbg !1679 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %argc = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1680, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1682, metadata !DIExpression()), !dbg !1683
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1684
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1685
  store i32 %call, i32* %argc, align 4, !dbg !1683
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1686
  call void @lua_pushboolean(%struct.lua_State* %1, i32 1), !dbg !1687
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1688
  call void @lua_insert(%struct.lua_State* %2, i32 1), !dbg !1689
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1690
  %4 = load i32, i32* %argc, align 4, !dbg !1692
  %sub = sub nsw i32 %4, 1, !dbg !1693
  %call1 = call i32 @lua_pcall(%struct.lua_State* %3, i32 %sub, i32 -1, i32 0), !dbg !1694
  %tobool = icmp ne i32 %call1, 0, !dbg !1694
  br i1 %tobool, label %if.then, label %if.end8, !dbg !1695

if.then:                                          ; preds = %entry
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1696
  call void @lua_remove(%struct.lua_State* %5, i32 1), !dbg !1698
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1699
  %call2 = call i32 @lua_type(%struct.lua_State* %6, i32 -1), !dbg !1699
  %cmp = icmp eq i32 %call2, 5, !dbg !1699
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !1701

if.then3:                                         ; preds = %if.then
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1702
  call void @lua_getfield(%struct.lua_State* %7, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !1704
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1705
  %call4 = call i32 @lua_isstring(%struct.lua_State* %8, i32 -1), !dbg !1707
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1707
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !1708

if.then6:                                         ; preds = %if.then3
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1709
  call void @lua_replace(%struct.lua_State* %9, i32 -2), !dbg !1711
  br label %if.end, !dbg !1712

if.end:                                           ; preds = %if.then6, %if.then3
  br label %if.end7, !dbg !1713

if.end7:                                          ; preds = %if.end, %if.then
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1714
  call void @lua_pushboolean(%struct.lua_State* %10, i32 0), !dbg !1715
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1716
  call void @lua_insert(%struct.lua_State* %11, i32 1), !dbg !1717
  br label %if.end8, !dbg !1718

if.end8:                                          ; preds = %if.end7, %entry
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1719
  %call9 = call i32 @lua_gettop(%struct.lua_State* %12), !dbg !1720
  ret i32 %call9, !dbg !1721
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisCallCommand(%struct.lua_State* %lua) #0 !dbg !1722 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1723, metadata !DIExpression()), !dbg !1724
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1725
  %call = call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 1), !dbg !1726
  ret i32 %call, !dbg !1727
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisPCallCommand(%struct.lua_State* %lua) #0 !dbg !1728 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1729, metadata !DIExpression()), !dbg !1730
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1731
  %call = call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 0), !dbg !1732
  ret i32 %call, !dbg !1733
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaSetResp(%struct.lua_State* %lua) #0 !dbg !1734 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %rctx = alloca %struct.scriptRunCtx*, align 8
  %argc = alloca i32, align 4
  %resp = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1735, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !1737, metadata !DIExpression()), !dbg !1738
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1739
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !1740
  %1 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !1740
  store %struct.scriptRunCtx* %1, %struct.scriptRunCtx** %rctx, align 8, !dbg !1738
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1741
  %tobool = icmp ne %struct.scriptRunCtx* %2, null, !dbg !1741
  br i1 %tobool, label %if.end, label %if.then, !dbg !1743

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1744
  call void @luaPushError(%struct.lua_State* %3, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.113, i64 0, i64 0)), !dbg !1746
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1747
  %call1 = call i32 @luaError(%struct.lua_State* %4), !dbg !1748
  store i32 %call1, i32* %retval, align 4, !dbg !1749
  br label %return, !dbg !1749

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1750, metadata !DIExpression()), !dbg !1751
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1752
  %call2 = call i32 @lua_gettop(%struct.lua_State* %5), !dbg !1753
  store i32 %call2, i32* %argc, align 4, !dbg !1751
  %6 = load i32, i32* %argc, align 4, !dbg !1754
  %cmp = icmp ne i32 %6, 1, !dbg !1756
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1757

if.then3:                                         ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1758
  call void @luaPushError(%struct.lua_State* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.114, i64 0, i64 0)), !dbg !1760
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1761
  %call4 = call i32 @luaError(%struct.lua_State* %8), !dbg !1762
  store i32 %call4, i32* %retval, align 4, !dbg !1763
  br label %return, !dbg !1763

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %resp, metadata !1764, metadata !DIExpression()), !dbg !1765
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1766
  %10 = load i32, i32* %argc, align 4, !dbg !1767
  %sub = sub nsw i32 0, %10, !dbg !1768
  %call6 = call double @lua_tonumber(%struct.lua_State* %9, i32 %sub), !dbg !1769
  %conv = fptosi double %call6 to i32, !dbg !1769
  store i32 %conv, i32* %resp, align 4, !dbg !1765
  %11 = load i32, i32* %resp, align 4, !dbg !1770
  %cmp7 = icmp ne i32 %11, 2, !dbg !1772
  br i1 %cmp7, label %land.lhs.true, label %if.end13, !dbg !1773

land.lhs.true:                                    ; preds = %if.end5
  %12 = load i32, i32* %resp, align 4, !dbg !1774
  %cmp9 = icmp ne i32 %12, 3, !dbg !1775
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !1776

if.then11:                                        ; preds = %land.lhs.true
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1777
  call void @luaPushError(%struct.lua_State* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.115, i64 0, i64 0)), !dbg !1779
  %14 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1780
  %call12 = call i32 @luaError(%struct.lua_State* %14), !dbg !1781
  store i32 %call12, i32* %retval, align 4, !dbg !1782
  br label %return, !dbg !1782

if.end13:                                         ; preds = %land.lhs.true, %if.end5
  %15 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1783
  %16 = load i32, i32* %resp, align 4, !dbg !1784
  %call14 = call i32 @scriptSetResp(%struct.scriptRunCtx* %15, i32 %16), !dbg !1785
  store i32 0, i32* %retval, align 4, !dbg !1786
  br label %return, !dbg !1786

return:                                           ; preds = %if.end13, %if.then11, %if.then3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !1787
  ret i32 %17, !dbg !1787
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisSha1hexCommand(%struct.lua_State* %lua) #0 !dbg !1788 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %argc = alloca i32, align 4
  %digest = alloca [41 x i8], align 16
  %len = alloca i64, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1791, metadata !DIExpression()), !dbg !1792
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1793
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1794
  store i32 %call, i32* %argc, align 4, !dbg !1792
  call void @llvm.dbg.declare(metadata [41 x i8]* %digest, metadata !1795, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.declare(metadata i64* %len, metadata !1797, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.declare(metadata i8** %s, metadata !1799, metadata !DIExpression()), !dbg !1800
  %1 = load i32, i32* %argc, align 4, !dbg !1801
  %cmp = icmp ne i32 %1, 1, !dbg !1803
  br i1 %cmp, label %if.then, label %if.end, !dbg !1804

if.then:                                          ; preds = %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1805
  call void @luaPushError(%struct.lua_State* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i64 0, i64 0)), !dbg !1807
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1808
  %call1 = call i32 @luaError(%struct.lua_State* %3), !dbg !1809
  store i32 %call1, i32* %retval, align 4, !dbg !1810
  br label %return, !dbg !1810

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1811
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 1, i64* %len), !dbg !1812
  store i8* %call2, i8** %s, align 8, !dbg !1813
  %arraydecay = getelementptr inbounds [41 x i8], [41 x i8]* %digest, i64 0, i64 0, !dbg !1814
  %5 = load i8*, i8** %s, align 8, !dbg !1815
  %6 = load i64, i64* %len, align 8, !dbg !1816
  call void @sha1hex(i8* %arraydecay, i8* %5, i64 %6), !dbg !1817
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1818
  %arraydecay3 = getelementptr inbounds [41 x i8], [41 x i8]* %digest, i64 0, i64 0, !dbg !1819
  call void @lua_pushstring(%struct.lua_State* %7, i8* %arraydecay3), !dbg !1820
  store i32 1, i32* %retval, align 4, !dbg !1821
  br label %return, !dbg !1821

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !1822
  ret i32 %8, !dbg !1822
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisErrorReplyCommand(%struct.lua_State* %lua) #0 !dbg !1823 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %err = alloca i8*, align 8
  %err_buff = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1824, metadata !DIExpression()), !dbg !1825
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1826
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1828
  %cmp = icmp ne i32 %call, 1, !dbg !1829
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1830

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1831
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 -1), !dbg !1832
  %cmp2 = icmp ne i32 %call1, 4, !dbg !1833
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1834

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1835
  call void @luaPushError(%struct.lua_State* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.117, i64 0, i64 0)), !dbg !1837
  store i32 1, i32* %retval, align 4, !dbg !1838
  br label %return, !dbg !1838

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %err, metadata !1839, metadata !DIExpression()), !dbg !1840
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1841
  %call3 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 -1, i64* null), !dbg !1841
  store i8* %call3, i8** %err, align 8, !dbg !1840
  call void @llvm.dbg.declare(metadata i8** %err_buff, metadata !1842, metadata !DIExpression()), !dbg !1843
  store i8* null, i8** %err_buff, align 8, !dbg !1843
  %4 = load i8*, i8** %err, align 8, !dbg !1844
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0, !dbg !1844
  %5 = load i8, i8* %arrayidx, align 1, !dbg !1844
  %conv = sext i8 %5 to i32, !dbg !1844
  %cmp4 = icmp ne i32 %conv, 45, !dbg !1846
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !1847

if.then6:                                         ; preds = %if.end
  %call7 = call i8* @sdsempty(), !dbg !1848
  %6 = load i8*, i8** %err, align 8, !dbg !1850
  %call8 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* %6), !dbg !1851
  store i8* %call8, i8** %err_buff, align 8, !dbg !1852
  br label %if.end10, !dbg !1853

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %err, align 8, !dbg !1854
  %call9 = call i8* @sdsnew(i8* %7), !dbg !1856
  store i8* %call9, i8** %err_buff, align 8, !dbg !1857
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1858
  %9 = load i8*, i8** %err_buff, align 8, !dbg !1859
  call void @luaPushErrorBuff(%struct.lua_State* %8, i8* %9), !dbg !1860
  store i32 1, i32* %retval, align 4, !dbg !1861
  br label %return, !dbg !1861

return:                                           ; preds = %if.end10, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !1862
  ret i32 %10, !dbg !1862
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisStatusReplyCommand(%struct.lua_State* %lua) #0 !dbg !1863 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1864, metadata !DIExpression()), !dbg !1865
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1866
  %call = call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0)), !dbg !1867
  ret i32 %call, !dbg !1868
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisSetReplCommand(%struct.lua_State* %lua) #0 !dbg !1869 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %flags = alloca i32, align 4
  %argc = alloca i32, align 4
  %rctx = alloca %struct.scriptRunCtx*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !1872, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1874, metadata !DIExpression()), !dbg !1875
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1876
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1877
  store i32 %call, i32* %argc, align 4, !dbg !1875
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !1878, metadata !DIExpression()), !dbg !1879
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1880
  %call1 = call i8* @luaGetFromRegistry(%struct.lua_State* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !1881
  %2 = bitcast i8* %call1 to %struct.scriptRunCtx*, !dbg !1881
  store %struct.scriptRunCtx* %2, %struct.scriptRunCtx** %rctx, align 8, !dbg !1879
  %3 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1882
  %tobool = icmp ne %struct.scriptRunCtx* %3, null, !dbg !1882
  br i1 %tobool, label %if.end, label %if.then, !dbg !1884

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1885
  call void @luaPushError(%struct.lua_State* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.118, i64 0, i64 0)), !dbg !1887
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1888
  %call2 = call i32 @luaError(%struct.lua_State* %5), !dbg !1889
  store i32 %call2, i32* %retval, align 4, !dbg !1890
  br label %return, !dbg !1890

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %argc, align 4, !dbg !1891
  %cmp = icmp ne i32 %6, 1, !dbg !1893
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1894

if.then3:                                         ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1895
  call void @luaPushError(%struct.lua_State* %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.119, i64 0, i64 0)), !dbg !1897
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1898
  %call4 = call i32 @luaError(%struct.lua_State* %8), !dbg !1899
  store i32 %call4, i32* %retval, align 4, !dbg !1900
  br label %return, !dbg !1900

if.end5:                                          ; preds = %if.end
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1901
  %call6 = call double @lua_tonumber(%struct.lua_State* %9, i32 -1), !dbg !1902
  %conv = fptosi double %call6 to i32, !dbg !1902
  store i32 %conv, i32* %flags, align 4, !dbg !1903
  %10 = load i32, i32* %flags, align 4, !dbg !1904
  %and = and i32 %10, -4, !dbg !1906
  %cmp7 = icmp ne i32 %and, 0, !dbg !1907
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1908

if.then9:                                         ; preds = %if.end5
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1909
  call void @luaPushError(%struct.lua_State* %11, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.120, i64 0, i64 0)), !dbg !1911
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1912
  %call10 = call i32 @luaError(%struct.lua_State* %12), !dbg !1913
  store i32 %call10, i32* %retval, align 4, !dbg !1914
  br label %return, !dbg !1914

if.end11:                                         ; preds = %if.end5
  %13 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1915
  %14 = load i32, i32* %flags, align 4, !dbg !1916
  %call12 = call i32 @scriptSetRepl(%struct.scriptRunCtx* %13, i32 %14), !dbg !1917
  store i32 0, i32* %retval, align 4, !dbg !1918
  br label %return, !dbg !1918

return:                                           ; preds = %if.end11, %if.then9, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1919
  ret i32 %15, !dbg !1919
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisAclCheckCmdPermissionsCommand(%struct.lua_State* %lua) #0 !dbg !1920 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %rctx = alloca %struct.scriptRunCtx*, align 8
  %raise_error = alloca i32, align 4
  %argc = alloca i32, align 4
  %argv_len = alloca i32, align 4
  %argv = alloca %struct.redisObject**, align 8
  %cmd = alloca %struct.redisCommand*, align 8
  %keyidxptr = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1921, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !1923, metadata !DIExpression()), !dbg !1924
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1925
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !1926
  %1 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !1926
  store %struct.scriptRunCtx* %1, %struct.scriptRunCtx** %rctx, align 8, !dbg !1924
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1927
  %tobool = icmp ne %struct.scriptRunCtx* %2, null, !dbg !1927
  br i1 %tobool, label %if.end, label %if.then, !dbg !1929

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1930
  call void @luaPushError(%struct.lua_State* %3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.121, i64 0, i64 0)), !dbg !1932
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1933
  %call1 = call i32 @luaError(%struct.lua_State* %4), !dbg !1934
  store i32 %call1, i32* %retval, align 4, !dbg !1935
  br label %return, !dbg !1935

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %raise_error, metadata !1936, metadata !DIExpression()), !dbg !1937
  store i32 0, i32* %raise_error, align 4, !dbg !1937
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1938, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.declare(metadata i32* %argv_len, metadata !1940, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv, metadata !1942, metadata !DIExpression()), !dbg !1943
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1944
  %call2 = call %struct.redisObject** @luaArgsToRedisArgv(%struct.lua_State* %5, i32* %argc, i32* %argv_len), !dbg !1945
  store %struct.redisObject** %call2, %struct.redisObject*** %argv, align 8, !dbg !1943
  %6 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1946
  %cmp = icmp eq %struct.redisObject** %6, null, !dbg !1948
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1949

if.then3:                                         ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1950
  %call4 = call i32 @luaError(%struct.lua_State* %7), !dbg !1951
  store i32 %call4, i32* %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.redisCommand** %cmd, metadata !1953, metadata !DIExpression()), !dbg !1954
  %8 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1955
  %9 = load i32, i32* %argc, align 4, !dbg !1957
  %call6 = call %struct.redisCommand* @lookupCommand(%struct.redisObject** %8, i32 %9), !dbg !1958
  store %struct.redisCommand* %call6, %struct.redisCommand** %cmd, align 8, !dbg !1959
  %cmp7 = icmp eq %struct.redisCommand* %call6, null, !dbg !1960
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1961

if.then8:                                         ; preds = %if.end5
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1962
  call void @luaPushError(%struct.lua_State* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.122, i64 0, i64 0)), !dbg !1964
  store i32 1, i32* %raise_error, align 4, !dbg !1965
  br label %if.end14, !dbg !1966

if.else:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %keyidxptr, metadata !1967, metadata !DIExpression()), !dbg !1969
  %11 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !1970
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %11, i32 0, i32 2, !dbg !1972
  %12 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !1972
  %user = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 18, !dbg !1973
  %13 = load %struct.user*, %struct.user** %user, align 8, !dbg !1973
  %14 = load %struct.redisCommand*, %struct.redisCommand** %cmd, align 8, !dbg !1974
  %15 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1975
  %16 = load i32, i32* %argc, align 4, !dbg !1976
  %call9 = call i32 @ACLCheckAllUserCommandPerm(%struct.user* %13, %struct.redisCommand* %14, %struct.redisObject** %15, i32 %16, i32* %keyidxptr), !dbg !1977
  %cmp10 = icmp ne i32 %call9, 0, !dbg !1978
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !1979

if.then11:                                        ; preds = %if.else
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1980
  call void @lua_pushboolean(%struct.lua_State* %17, i32 0), !dbg !1982
  br label %if.end13, !dbg !1983

if.else12:                                        ; preds = %if.else
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1984
  call void @lua_pushboolean(%struct.lua_State* %18, i32 1), !dbg !1986
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then8
  %19 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1987
  %20 = load i32, i32* %argc, align 4, !dbg !1988
  %21 = load i32, i32* %argv_len, align 4, !dbg !1989
  call void @freeLuaRedisArgv(%struct.redisObject** %19, i32 %20, i32 %21), !dbg !1990
  %22 = load i32, i32* %raise_error, align 4, !dbg !1991
  %tobool15 = icmp ne i32 %22, 0, !dbg !1991
  br i1 %tobool15, label %if.then16, label %if.else18, !dbg !1993

if.then16:                                        ; preds = %if.end14
  %23 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1994
  %call17 = call i32 @luaError(%struct.lua_State* %23), !dbg !1995
  store i32 %call17, i32* %retval, align 4, !dbg !1996
  br label %return, !dbg !1996

if.else18:                                        ; preds = %if.end14
  store i32 1, i32* %retval, align 4, !dbg !1997
  br label %return, !dbg !1997

return:                                           ; preds = %if.else18, %if.then16, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !1998
  ret i32 %24, !dbg !1998
}

declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @redis_math_random(%struct.lua_State* %L) #0 !dbg !1999 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %rctx = alloca %struct.scriptRunCtx*, align 8
  %r = alloca double, align 8
  %u = alloca i32, align 4
  %l = alloca i32, align 4
  %u14 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %L.addr, metadata !2000, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !2002, metadata !DIExpression()), !dbg !2003
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2004
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !2005
  %1 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !2005
  store %struct.scriptRunCtx* %1, %struct.scriptRunCtx** %rctx, align 8, !dbg !2003
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2006
  %tobool = icmp ne %struct.scriptRunCtx* %2, null, !dbg !2006
  br i1 %tobool, label %if.end, label %if.then, !dbg !2008

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2009
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.123, i64 0, i64 0)), !dbg !2011
  store i32 %call1, i32* %retval, align 4, !dbg !2012
  br label %return, !dbg !2012

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %r, metadata !2013, metadata !DIExpression()), !dbg !2014
  %call2 = call i32 (...) @redisLrand48(), !dbg !2015
  %rem = srem i32 %call2, 2147483647, !dbg !2016
  %conv = sitofp i32 %rem to double, !dbg !2017
  %div = fdiv double %conv, 0x41DFFFFFFFC00000, !dbg !2018
  store double %div, double* %r, align 8, !dbg !2014
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2019
  %call3 = call i32 @lua_gettop(%struct.lua_State* %4), !dbg !2020
  switch i32 %call3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb11
  ], !dbg !2021

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2022
  %6 = load double, double* %r, align 8, !dbg !2025
  call void @lua_pushnumber(%struct.lua_State* %5, double %6), !dbg !2026
  br label %sw.epilog, !dbg !2027

sw.bb4:                                           ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %u, metadata !2028, metadata !DIExpression()), !dbg !2030
  %7 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2031
  %call5 = call i64 @luaL_checkinteger(%struct.lua_State* %7, i32 1), !dbg !2031
  %conv6 = trunc i64 %call5 to i32, !dbg !2031
  store i32 %conv6, i32* %u, align 4, !dbg !2030
  %8 = load i32, i32* %u, align 4, !dbg !2032
  %cmp = icmp sle i32 1, %8, !dbg !2032
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !2032

lor.rhs:                                          ; preds = %sw.bb4
  %9 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2032
  %call8 = call i32 @luaL_argerror(%struct.lua_State* %9, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i64 0, i64 0)), !dbg !2032
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2032
  br label %lor.end, !dbg !2032

lor.end:                                          ; preds = %lor.rhs, %sw.bb4
  %10 = phi i1 [ true, %sw.bb4 ], [ %tobool9, %lor.rhs ]
  %lor.ext = zext i1 %10 to i32, !dbg !2032
  %11 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2033
  %12 = load double, double* %r, align 8, !dbg !2034
  %13 = load i32, i32* %u, align 4, !dbg !2035
  %conv10 = sitofp i32 %13 to double, !dbg !2035
  %mul = fmul double %12, %conv10, !dbg !2036
  %14 = call double @llvm.floor.f64(double %mul), !dbg !2037
  %add = fadd double %14, 1.000000e+00, !dbg !2038
  call void @lua_pushnumber(%struct.lua_State* %11, double %add), !dbg !2039
  br label %sw.epilog, !dbg !2040

sw.bb11:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %l, metadata !2041, metadata !DIExpression()), !dbg !2043
  %15 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2044
  %call12 = call i64 @luaL_checkinteger(%struct.lua_State* %15, i32 1), !dbg !2044
  %conv13 = trunc i64 %call12 to i32, !dbg !2044
  store i32 %conv13, i32* %l, align 4, !dbg !2043
  call void @llvm.dbg.declare(metadata i32* %u14, metadata !2045, metadata !DIExpression()), !dbg !2046
  %16 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2047
  %call15 = call i64 @luaL_checkinteger(%struct.lua_State* %16, i32 2), !dbg !2047
  %conv16 = trunc i64 %call15 to i32, !dbg !2047
  store i32 %conv16, i32* %u14, align 4, !dbg !2046
  %17 = load i32, i32* %l, align 4, !dbg !2048
  %18 = load i32, i32* %u14, align 4, !dbg !2048
  %cmp17 = icmp sle i32 %17, %18, !dbg !2048
  br i1 %cmp17, label %lor.end22, label %lor.rhs19, !dbg !2048

lor.rhs19:                                        ; preds = %sw.bb11
  %19 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2048
  %call20 = call i32 @luaL_argerror(%struct.lua_State* %19, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i64 0, i64 0)), !dbg !2048
  %tobool21 = icmp ne i32 %call20, 0, !dbg !2048
  br label %lor.end22, !dbg !2048

lor.end22:                                        ; preds = %lor.rhs19, %sw.bb11
  %20 = phi i1 [ true, %sw.bb11 ], [ %tobool21, %lor.rhs19 ]
  %lor.ext23 = zext i1 %20 to i32, !dbg !2048
  %21 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2049
  %22 = load double, double* %r, align 8, !dbg !2050
  %23 = load i32, i32* %u14, align 4, !dbg !2051
  %24 = load i32, i32* %l, align 4, !dbg !2052
  %sub = sub nsw i32 %23, %24, !dbg !2053
  %add24 = add nsw i32 %sub, 1, !dbg !2054
  %conv25 = sitofp i32 %add24 to double, !dbg !2055
  %mul26 = fmul double %22, %conv25, !dbg !2056
  %25 = call double @llvm.floor.f64(double %mul26), !dbg !2057
  %26 = load i32, i32* %l, align 4, !dbg !2058
  %conv27 = sitofp i32 %26 to double, !dbg !2058
  %add28 = fadd double %25, %conv27, !dbg !2059
  call void @lua_pushnumber(%struct.lua_State* %21, double %add28), !dbg !2060
  br label %sw.epilog, !dbg !2061

sw.default:                                       ; preds = %if.end
  %27 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2062
  %call29 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.116, i64 0, i64 0)), !dbg !2063
  store i32 %call29, i32* %retval, align 4, !dbg !2064
  br label %return, !dbg !2064

sw.epilog:                                        ; preds = %lor.end22, %lor.end, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !2065
  br label %return, !dbg !2065

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !2066
  ret i32 %28, !dbg !2066
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @redis_math_randomseed(%struct.lua_State* %L) #0 !dbg !2067 {
entry:
  %retval = alloca i32, align 4
  %L.addr = alloca %struct.lua_State*, align 8
  %rctx = alloca %struct.scriptRunCtx*, align 8
  store %struct.lua_State* %L, %struct.lua_State** %L.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %L.addr, metadata !2068, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !2070, metadata !DIExpression()), !dbg !2071
  %0 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2072
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !2073
  %1 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !2073
  store %struct.scriptRunCtx* %1, %struct.scriptRunCtx** %rctx, align 8, !dbg !2071
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2074
  %tobool = icmp ne %struct.scriptRunCtx* %2, null, !dbg !2074
  br i1 %tobool, label %if.end, label %if.then, !dbg !2076

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2077
  %call1 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.125, i64 0, i64 0)), !dbg !2079
  store i32 %call1, i32* %retval, align 4, !dbg !2080
  br label %return, !dbg !2080

if.end:                                           ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %L.addr, align 8, !dbg !2081
  %call2 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 1), !dbg !2081
  %conv = trunc i64 %call2 to i32, !dbg !2081
  call void @redisSrand48(i32 %conv), !dbg !2082
  store i32 0, i32* %retval, align 4, !dbg !2083
  br label %return, !dbg !2083

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !2084
  ret i32 %5, !dbg !2084
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaErrorInformationDiscard(%struct.errorInfo* %err_info) #0 !dbg !2085 {
entry:
  %err_info.addr = alloca %struct.errorInfo*, align 8
  store %struct.errorInfo* %err_info, %struct.errorInfo** %err_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.errorInfo** %err_info.addr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %0 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2099
  %msg = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %0, i32 0, i32 0, !dbg !2101
  %1 = load i8*, i8** %msg, align 8, !dbg !2101
  %tobool = icmp ne i8* %1, null, !dbg !2099
  br i1 %tobool, label %if.then, label %if.end, !dbg !2102

if.then:                                          ; preds = %entry
  %2 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2103
  %msg1 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %2, i32 0, i32 0, !dbg !2104
  %3 = load i8*, i8** %msg1, align 8, !dbg !2104
  call void @sdsfree(i8* %3), !dbg !2105
  br label %if.end, !dbg !2105

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2106
  %source = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %4, i32 0, i32 1, !dbg !2108
  %5 = load i8*, i8** %source, align 8, !dbg !2108
  %tobool2 = icmp ne i8* %5, null, !dbg !2106
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !2109

if.then3:                                         ; preds = %if.end
  %6 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2110
  %source4 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %6, i32 0, i32 1, !dbg !2111
  %7 = load i8*, i8** %source4, align 8, !dbg !2111
  call void @sdsfree(i8* %7), !dbg !2112
  br label %if.end5, !dbg !2112

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2113
  %line = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %8, i32 0, i32 2, !dbg !2115
  %9 = load i8*, i8** %line, align 8, !dbg !2115
  %tobool6 = icmp ne i8* %9, null, !dbg !2113
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !2116

if.then7:                                         ; preds = %if.end5
  %10 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2117
  %line8 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %10, i32 0, i32 2, !dbg !2118
  %11 = load i8*, i8** %line8, align 8, !dbg !2118
  call void @sdsfree(i8* %11), !dbg !2119
  br label %if.end9, !dbg !2119

if.end9:                                          ; preds = %if.then7, %if.end5
  ret void, !dbg !2120
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaExtractErrorInformation(%struct.lua_State* %lua, %struct.errorInfo* %err_info) #0 !dbg !2121 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %err_info.addr = alloca %struct.errorInfo*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2124, metadata !DIExpression()), !dbg !2125
  store %struct.errorInfo* %err_info, %struct.errorInfo** %err_info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.errorInfo** %err_info.addr, metadata !2126, metadata !DIExpression()), !dbg !2127
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2128
  %call = call i32 @lua_isstring(%struct.lua_State* %0, i32 -1), !dbg !2130
  %tobool = icmp ne i32 %call, 0, !dbg !2130
  br i1 %tobool, label %if.then, label %if.end, !dbg !2131

if.then:                                          ; preds = %entry
  %call1 = call i8* @sdsempty(), !dbg !2132
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2134
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null), !dbg !2134
  %call3 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %call2), !dbg !2135
  %2 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2136
  %msg = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %2, i32 0, i32 0, !dbg !2137
  store i8* %call3, i8** %msg, align 8, !dbg !2138
  %3 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2139
  %line = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %3, i32 0, i32 2, !dbg !2140
  store i8* null, i8** %line, align 8, !dbg !2141
  %4 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2142
  %source = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %4, i32 0, i32 1, !dbg !2143
  store i8* null, i8** %source, align 8, !dbg !2144
  %5 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2145
  %ignore_err_stats_update = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %5, i32 0, i32 3, !dbg !2146
  store i32 0, i32* %ignore_err_stats_update, align 8, !dbg !2147
  br label %if.end, !dbg !2148

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2149
  call void @lua_getfield(%struct.lua_State* %6, i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !2150
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2151
  %call4 = call i32 @lua_isstring(%struct.lua_State* %7, i32 -1), !dbg !2153
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2153
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !2154

if.then6:                                         ; preds = %if.end
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2155
  %call7 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null), !dbg !2155
  %call8 = call i8* @sdsnew(i8* %call7), !dbg !2157
  %9 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2158
  %msg9 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %9, i32 0, i32 0, !dbg !2159
  store i8* %call8, i8** %msg9, align 8, !dbg !2160
  br label %if.end10, !dbg !2161

if.end10:                                         ; preds = %if.then6, %if.end
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2162
  call void @lua_settop(%struct.lua_State* %10, i32 -2), !dbg !2162
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2163
  call void @lua_getfield(%struct.lua_State* %11, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0)), !dbg !2164
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2165
  %call11 = call i32 @lua_isstring(%struct.lua_State* %12, i32 -1), !dbg !2167
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2167
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !2168

if.then13:                                        ; preds = %if.end10
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2169
  %call14 = call i8* @lua_tolstring(%struct.lua_State* %13, i32 -1, i64* null), !dbg !2169
  %call15 = call i8* @sdsnew(i8* %call14), !dbg !2171
  %14 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2172
  %source16 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %14, i32 0, i32 1, !dbg !2173
  store i8* %call15, i8** %source16, align 8, !dbg !2174
  br label %if.end17, !dbg !2175

if.end17:                                         ; preds = %if.then13, %if.end10
  %15 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2176
  call void @lua_settop(%struct.lua_State* %15, i32 -2), !dbg !2176
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2177
  call void @lua_getfield(%struct.lua_State* %16, i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)), !dbg !2178
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2179
  %call18 = call i32 @lua_isstring(%struct.lua_State* %17, i32 -1), !dbg !2181
  %tobool19 = icmp ne i32 %call18, 0, !dbg !2181
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !2182

if.then20:                                        ; preds = %if.end17
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2183
  %call21 = call i8* @lua_tolstring(%struct.lua_State* %18, i32 -1, i64* null), !dbg !2183
  %call22 = call i8* @sdsnew(i8* %call21), !dbg !2185
  %19 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2186
  %line23 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %19, i32 0, i32 2, !dbg !2187
  store i8* %call22, i8** %line23, align 8, !dbg !2188
  br label %if.end24, !dbg !2189

if.end24:                                         ; preds = %if.then20, %if.end17
  %20 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2190
  call void @lua_settop(%struct.lua_State* %20, i32 -2), !dbg !2190
  %21 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2191
  call void @lua_getfield(%struct.lua_State* %21, i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)), !dbg !2192
  %22 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2193
  %call25 = call i32 @lua_type(%struct.lua_State* %22, i32 -1), !dbg !2193
  %cmp = icmp eq i32 %call25, 1, !dbg !2193
  br i1 %cmp, label %if.then26, label %if.end29, !dbg !2195

if.then26:                                        ; preds = %if.end24
  %23 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2196
  %call27 = call i32 @lua_toboolean(%struct.lua_State* %23, i32 -1), !dbg !2198
  %24 = load %struct.errorInfo*, %struct.errorInfo** %err_info.addr, align 8, !dbg !2199
  %ignore_err_stats_update28 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %24, i32 0, i32 3, !dbg !2200
  store i32 %call27, i32* %ignore_err_stats_update28, align 8, !dbg !2201
  br label %if.end29, !dbg !2202

if.end29:                                         ; preds = %if.then26, %if.end24
  %25 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2203
  call void @lua_settop(%struct.lua_State* %25, i32 -2), !dbg !2203
  ret void, !dbg !2204
}

declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaCallFunction(%struct.scriptRunCtx* %run_ctx, %struct.lua_State* %lua, %struct.redisObject** %keys, i64 %nkeys, %struct.redisObject** %args, i64 %nargs, i32 %debug_enabled) #0 !dbg !119 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %lua.addr = alloca %struct.lua_State*, align 8
  %keys.addr = alloca %struct.redisObject**, align 8
  %nkeys.addr = alloca i64, align 8
  %args.addr = alloca %struct.redisObject**, align 8
  %nargs.addr = alloca i64, align 8
  %debug_enabled.addr = alloca i32, align 4
  %c = alloca %struct.client*, align 8
  %delhook = alloca i32, align 4
  %err = alloca i32, align 4
  %msg = alloca i8*, align 8
  %err_info = alloca %struct.errorInfo, align 8
  %final_msg = alloca i8*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !2205, metadata !DIExpression()), !dbg !2206
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2207, metadata !DIExpression()), !dbg !2208
  store %struct.redisObject** %keys, %struct.redisObject*** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %keys.addr, metadata !2209, metadata !DIExpression()), !dbg !2210
  store i64 %nkeys, i64* %nkeys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nkeys.addr, metadata !2211, metadata !DIExpression()), !dbg !2212
  store %struct.redisObject** %args, %struct.redisObject*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %args.addr, metadata !2213, metadata !DIExpression()), !dbg !2214
  store i64 %nargs, i64* %nargs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nargs.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  store i32 %debug_enabled, i32* %debug_enabled.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debug_enabled.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !2219, metadata !DIExpression()), !dbg !2220
  %0 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2221
  %original_client = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %0, i32 0, i32 2, !dbg !2222
  %1 = load %struct.client*, %struct.client** %original_client, align 8, !dbg !2222
  store %struct.client* %1, %struct.client** %c, align 8, !dbg !2220
  call void @llvm.dbg.declare(metadata i32* %delhook, metadata !2223, metadata !DIExpression()), !dbg !2224
  store i32 0, i32* %delhook, align 4, !dbg !2224
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2225
  %3 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2226
  %4 = bitcast %struct.scriptRunCtx* %3 to i8*, !dbg !2226
  call void @luaSaveOnRegistry(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* %4), !dbg !2227
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 374), align 8, !dbg !2228
  %cmp = icmp sgt i64 %5, 0, !dbg !2230
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2231

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %debug_enabled.addr, align 4, !dbg !2232
  %tobool = icmp ne i32 %6, 0, !dbg !2232
  br i1 %tobool, label %if.else, label %if.then, !dbg !2233

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2234
  %call = call i32 @lua_sethook(%struct.lua_State* %7, void (%struct.lua_State*, %struct.lua_Debug*)* @luaMaskCountHook, i32 8, i32 100000), !dbg !2236
  store i32 1, i32* %delhook, align 4, !dbg !2237
  br label %if.end4, !dbg !2238

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %debug_enabled.addr, align 4, !dbg !2239
  %tobool1 = icmp ne i32 %8, 0, !dbg !2239
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2241

if.then2:                                         ; preds = %if.else
  %9 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2242
  %call3 = call i32 @lua_sethook(%struct.lua_State* %9, void (%struct.lua_State*, %struct.lua_Debug*)* @luaLdbLineHook, i32 12, i32 100000), !dbg !2244
  store i32 1, i32* %delhook, align 4, !dbg !2245
  br label %if.end, !dbg !2246

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2247
  %11 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !2248
  %12 = load i64, i64* %nkeys.addr, align 8, !dbg !2249
  %conv = trunc i64 %12 to i32, !dbg !2249
  call void @luaCreateArray(%struct.lua_State* %10, %struct.redisObject** %11, i32 %conv), !dbg !2250
  %13 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2251
  %flags = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %13, i32 0, i32 3, !dbg !2253
  %14 = load i32, i32* %flags, align 8, !dbg !2253
  %conv5 = sext i32 %14 to i64, !dbg !2251
  %and = and i64 %conv5, 128, !dbg !2254
  %tobool6 = icmp ne i64 %and, 0, !dbg !2254
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !2255

if.then7:                                         ; preds = %if.end4
  %15 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2256
  call void @lua_enablereadonlytable(%struct.lua_State* %15, i32 -10002, i32 0), !dbg !2258
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2259
  call void @lua_setfield(%struct.lua_State* %16, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)), !dbg !2259
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2260
  call void @lua_enablereadonlytable(%struct.lua_State* %17, i32 -10002, i32 1), !dbg !2261
  br label %if.end8, !dbg !2262

if.end8:                                          ; preds = %if.then7, %if.end4
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2263
  %19 = load %struct.redisObject**, %struct.redisObject*** %args.addr, align 8, !dbg !2264
  %20 = load i64, i64* %nargs.addr, align 8, !dbg !2265
  %conv9 = trunc i64 %20 to i32, !dbg !2265
  call void @luaCreateArray(%struct.lua_State* %18, %struct.redisObject** %19, i32 %conv9), !dbg !2266
  %21 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2267
  %flags10 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %21, i32 0, i32 3, !dbg !2269
  %22 = load i32, i32* %flags10, align 8, !dbg !2269
  %conv11 = sext i32 %22 to i64, !dbg !2267
  %and12 = and i64 %conv11, 128, !dbg !2270
  %tobool13 = icmp ne i64 %and12, 0, !dbg !2270
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2271

if.then14:                                        ; preds = %if.end8
  %23 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2272
  call void @lua_enablereadonlytable(%struct.lua_State* %23, i32 -10002, i32 0), !dbg !2274
  %24 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2275
  call void @lua_setfield(%struct.lua_State* %24, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0)), !dbg !2275
  %25 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2276
  call void @lua_enablereadonlytable(%struct.lua_State* %25, i32 -10002, i32 1), !dbg !2277
  br label %if.end15, !dbg !2278

if.end15:                                         ; preds = %if.then14, %if.end8
  call void @llvm.dbg.declare(metadata i32* %err, metadata !2279, metadata !DIExpression()), !dbg !2280
  %26 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2281
  %flags16 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %26, i32 0, i32 3, !dbg !2283
  %27 = load i32, i32* %flags16, align 8, !dbg !2283
  %conv17 = sext i32 %27 to i64, !dbg !2281
  %and18 = and i64 %conv17, 128, !dbg !2284
  %tobool19 = icmp ne i64 %and18, 0, !dbg !2284
  br i1 %tobool19, label %if.then20, label %if.else22, !dbg !2285

if.then20:                                        ; preds = %if.end15
  %28 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2286
  %call21 = call i32 @lua_pcall(%struct.lua_State* %28, i32 0, i32 1, i32 -2), !dbg !2288
  store i32 %call21, i32* %err, align 4, !dbg !2289
  br label %if.end24, !dbg !2290

if.else22:                                        ; preds = %if.end15
  %29 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2291
  %call23 = call i32 @lua_pcall(%struct.lua_State* %29, i32 2, i32 1, i32 -4), !dbg !2293
  store i32 %call23, i32* %err, align 4, !dbg !2294
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  %30 = load i64, i64* @luaCallFunction.gc_count, align 8, !dbg !2295
  %inc = add nsw i64 %30, 1, !dbg !2295
  store i64 %inc, i64* @luaCallFunction.gc_count, align 8, !dbg !2295
  %31 = load i64, i64* @luaCallFunction.gc_count, align 8, !dbg !2297
  %cmp25 = icmp eq i64 %31, 50, !dbg !2299
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !2300

if.then27:                                        ; preds = %if.end24
  %32 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2301
  %call28 = call i32 @lua_gc(%struct.lua_State* %32, i32 5, i32 50), !dbg !2303
  store i64 0, i64* @luaCallFunction.gc_count, align 8, !dbg !2304
  br label %if.end29, !dbg !2305

if.end29:                                         ; preds = %if.then27, %if.end24
  %33 = load i32, i32* %err, align 4, !dbg !2306
  %tobool30 = icmp ne i32 %33, 0, !dbg !2306
  br i1 %tobool30, label %if.then31, label %if.else57, !dbg !2308

if.then31:                                        ; preds = %if.end29
  %34 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2309
  %call32 = call i32 @lua_type(%struct.lua_State* %34, i32 -1), !dbg !2309
  %cmp33 = icmp eq i32 %call32, 5, !dbg !2309
  br i1 %cmp33, label %if.else41, label %if.then35, !dbg !2312

if.then35:                                        ; preds = %if.then31
  call void @llvm.dbg.declare(metadata i8** %msg, metadata !2313, metadata !DIExpression()), !dbg !2315
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8** %msg, align 8, !dbg !2315
  %35 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2316
  %call36 = call i32 @lua_isstring(%struct.lua_State* %35, i32 -1), !dbg !2318
  %tobool37 = icmp ne i32 %call36, 0, !dbg !2318
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !2319

if.then38:                                        ; preds = %if.then35
  %36 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2320
  %call39 = call i8* @lua_tolstring(%struct.lua_State* %36, i32 -1, i64* null), !dbg !2320
  store i8* %call39, i8** %msg, align 8, !dbg !2322
  br label %if.end40, !dbg !2323

if.end40:                                         ; preds = %if.then38, %if.then35
  %37 = load %struct.client*, %struct.client** %c, align 8, !dbg !2324
  %38 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2325
  %funcname = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %38, i32 0, i32 0, !dbg !2326
  %39 = load i8*, i8** %funcname, align 8, !dbg !2326
  %40 = load i8*, i8** %msg, align 8, !dbg !2327
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0), i8* %39, i8* %40), !dbg !2328
  br label %if.end56, !dbg !2329

if.else41:                                        ; preds = %if.then31
  call void @llvm.dbg.declare(metadata %struct.errorInfo* %err_info, metadata !2330, metadata !DIExpression()), !dbg !2332
  %41 = bitcast %struct.errorInfo* %err_info to i8*, !dbg !2332
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 32, i1 false), !dbg !2332
  call void @llvm.dbg.declare(metadata i8** %final_msg, metadata !2333, metadata !DIExpression()), !dbg !2334
  %call42 = call i8* @sdsempty(), !dbg !2335
  store i8* %call42, i8** %final_msg, align 8, !dbg !2334
  %42 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2336
  call void @luaExtractErrorInformation(%struct.lua_State* %42, %struct.errorInfo* %err_info), !dbg !2337
  %43 = load i8*, i8** %final_msg, align 8, !dbg !2338
  %msg43 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 0, !dbg !2339
  %44 = load i8*, i8** %msg43, align 8, !dbg !2339
  %call44 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* %44), !dbg !2340
  store i8* %call44, i8** %final_msg, align 8, !dbg !2341
  %line = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 2, !dbg !2342
  %45 = load i8*, i8** %line, align 8, !dbg !2342
  %tobool45 = icmp ne i8* %45, null, !dbg !2344
  br i1 %tobool45, label %land.lhs.true46, label %if.end53, !dbg !2345

land.lhs.true46:                                  ; preds = %if.else41
  %source = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 1, !dbg !2346
  %46 = load i8*, i8** %source, align 8, !dbg !2346
  %tobool47 = icmp ne i8* %46, null, !dbg !2347
  br i1 %tobool47, label %if.then48, label %if.end53, !dbg !2348

if.then48:                                        ; preds = %land.lhs.true46
  %47 = load i8*, i8** %final_msg, align 8, !dbg !2349
  %48 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2351
  %funcname49 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %48, i32 0, i32 0, !dbg !2352
  %49 = load i8*, i8** %funcname49, align 8, !dbg !2352
  %source50 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 1, !dbg !2353
  %50 = load i8*, i8** %source50, align 8, !dbg !2353
  %line51 = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 2, !dbg !2354
  %51 = load i8*, i8** %line51, align 8, !dbg !2354
  %call52 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* %49, i8* %50, i8* %51), !dbg !2355
  store i8* %call52, i8** %final_msg, align 8, !dbg !2356
  br label %if.end53, !dbg !2357

if.end53:                                         ; preds = %if.then48, %land.lhs.true46, %if.else41
  %52 = load %struct.client*, %struct.client** %c, align 8, !dbg !2358
  %53 = load i8*, i8** %final_msg, align 8, !dbg !2359
  %ignore_err_stats_update = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 3, !dbg !2360
  %54 = load i32, i32* %ignore_err_stats_update, align 8, !dbg !2360
  %tobool54 = icmp ne i32 %54, 0, !dbg !2361
  %55 = zext i1 %tobool54 to i64, !dbg !2361
  %cond = select i1 %tobool54, i64 1, i64 0, !dbg !2361
  %conv55 = trunc i64 %cond to i32, !dbg !2361
  call void @addReplyErrorSdsEx(%struct.client* %52, i8* %53, i32 %conv55), !dbg !2362
  call void @luaErrorInformationDiscard(%struct.errorInfo* %err_info), !dbg !2363
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %if.end40
  %56 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2364
  call void @lua_settop(%struct.lua_State* %56, i32 -2), !dbg !2364
  br label %if.end59, !dbg !2365

if.else57:                                        ; preds = %if.end29
  %57 = load %struct.client*, %struct.client** %c, align 8, !dbg !2366
  %58 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !2368
  %c58 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %58, i32 0, i32 1, !dbg !2369
  %59 = load %struct.client*, %struct.client** %c58, align 8, !dbg !2369
  %60 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2370
  call void @luaReplyToRedisReply(%struct.client* %57, %struct.client* %59, %struct.lua_State* %60), !dbg !2371
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.end56
  %61 = load i32, i32* %delhook, align 4, !dbg !2372
  %tobool60 = icmp ne i32 %61, 0, !dbg !2372
  br i1 %tobool60, label %if.then61, label %if.end63, !dbg !2374

if.then61:                                        ; preds = %if.end59
  %62 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2375
  %call62 = call i32 @lua_sethook(%struct.lua_State* %62, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0), !dbg !2376
  br label %if.end63, !dbg !2376

if.end63:                                         ; preds = %if.then61, %if.end59
  %63 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2377
  call void @luaSaveOnRegistry(%struct.lua_State* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* null), !dbg !2378
  ret void, !dbg !2379
}

declare dso_local i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaMaskCountHook(%struct.lua_State* %lua, %struct.lua_Debug* %ar) #0 !dbg !2380 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %rctx = alloca %struct.scriptRunCtx*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2401, metadata !DIExpression()), !dbg !2402
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_Debug** %ar.addr, metadata !2403, metadata !DIExpression()), !dbg !2404
  %0 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8, !dbg !2405
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !2406, metadata !DIExpression()), !dbg !2407
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2408
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !2409
  %2 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !2409
  store %struct.scriptRunCtx* %2, %struct.scriptRunCtx** %rctx, align 8, !dbg !2407
  %3 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2410
  %call1 = call i32 @scriptInterrupt(%struct.scriptRunCtx* %3), !dbg !2412
  %cmp = icmp eq i32 %call1, 1, !dbg !2413
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2414

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2415

do.body:                                          ; preds = %if.then
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !2417
  %cmp2 = icmp slt i32 3, %4, !dbg !2417
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !2420

if.then3:                                         ; preds = %do.body
  br label %do.end, !dbg !2417

if.end:                                           ; preds = %do.body
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.126, i64 0, i64 0)), !dbg !2420
  br label %do.end, !dbg !2420

do.end:                                           ; preds = %if.end, %if.then3
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2421
  %call4 = call i32 @lua_sethook(%struct.lua_State* %5, void (%struct.lua_State*, %struct.lua_Debug*)* @luaMaskCountHook, i32 4, i32 0), !dbg !2422
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2423
  call void @luaPushError(%struct.lua_State* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.127, i64 0, i64 0)), !dbg !2424
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2425
  %call5 = call i32 @luaError(%struct.lua_State* %7), !dbg !2426
  br label %if.end6, !dbg !2427

if.end6:                                          ; preds = %do.end, %entry
  ret void, !dbg !2428
}

declare dso_local void @luaLdbLineHook(%struct.lua_State*, %struct.lua_Debug*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaCreateArray(%struct.lua_State* %lua, %struct.redisObject** %elev, i32 %elec) #0 !dbg !2429 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %elev.addr = alloca %struct.redisObject**, align 8
  %elec.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  store %struct.redisObject** %elev, %struct.redisObject*** %elev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %elev.addr, metadata !2434, metadata !DIExpression()), !dbg !2435
  store i32 %elec, i32* %elec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elec.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2438, metadata !DIExpression()), !dbg !2439
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2440
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0), !dbg !2440
  store i32 0, i32* %j, align 4, !dbg !2441
  br label %for.cond, !dbg !2443

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4, !dbg !2444
  %2 = load i32, i32* %elec.addr, align 4, !dbg !2446
  %cmp = icmp slt i32 %1, %2, !dbg !2447
  br i1 %cmp, label %for.body, label %for.end, !dbg !2448

for.body:                                         ; preds = %for.cond
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2449
  %4 = load %struct.redisObject**, %struct.redisObject*** %elev.addr, align 8, !dbg !2451
  %5 = load i32, i32* %j, align 4, !dbg !2452
  %idxprom = sext i32 %5 to i64, !dbg !2451
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 %idxprom, !dbg !2451
  %6 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2451
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i32 0, i32 2, !dbg !2453
  %7 = load i8*, i8** %ptr, align 8, !dbg !2453
  %8 = load %struct.redisObject**, %struct.redisObject*** %elev.addr, align 8, !dbg !2454
  %9 = load i32, i32* %j, align 4, !dbg !2455
  %idxprom1 = sext i32 %9 to i64, !dbg !2454
  %arrayidx2 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %idxprom1, !dbg !2454
  %10 = load %struct.redisObject*, %struct.redisObject** %arrayidx2, align 8, !dbg !2454
  %ptr3 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i32 0, i32 2, !dbg !2456
  %11 = load i8*, i8** %ptr3, align 8, !dbg !2456
  %call = call i64 @sdslen(i8* %11), !dbg !2457
  call void @lua_pushlstring(%struct.lua_State* %3, i8* %7, i64 %call), !dbg !2458
  %12 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2459
  %13 = load i32, i32* %j, align 4, !dbg !2460
  %add = add nsw i32 %13, 1, !dbg !2461
  call void @lua_rawseti(%struct.lua_State* %12, i32 -2, i32 %add), !dbg !2462
  br label %for.inc, !dbg !2463

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %j, align 4, !dbg !2464
  %inc = add nsw i32 %14, 1, !dbg !2464
  store i32 %inc, i32* %j, align 4, !dbg !2464
  br label %for.cond, !dbg !2465, !llvm.loop !2466

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2468
}

declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #2

declare dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) #2

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @addReplyErrorSdsEx(%struct.client*, i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaReplyToRedisReply(%struct.client* %c, %struct.client* %script_client, %struct.lua_State* %lua) #0 !dbg !2469 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %script_client.addr = alloca %struct.client*, align 8
  %lua.addr = alloca %struct.lua_State*, align 8
  %t = alloca i32, align 4
  %err_info = alloca %struct.errorInfo, align 8
  %ok = alloca i8*, align 8
  %big_num = alloca i8*, align 8
  %format = alloca i8*, align 8
  %len = alloca i64, align 8
  %str = alloca i8*, align 8
  %maplen = alloca i32, align 4
  %replylen = alloca i8*, align 8
  %setlen = alloca i32, align 4
  %replylen77 = alloca i8*, align 8
  %replylen87 = alloca i8*, align 8
  %j = alloca i32, align 4
  %mbulklen = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2472, metadata !DIExpression()), !dbg !2473
  store %struct.client* %script_client, %struct.client** %script_client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %script_client.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.declare(metadata i32* %t, metadata !2478, metadata !DIExpression()), !dbg !2479
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2480
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 -1), !dbg !2481
  store i32 %call, i32* %t, align 4, !dbg !2479
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2482
  %call1 = call i32 @lua_checkstack(%struct.lua_State* %1, i32 4), !dbg !2484
  %tobool = icmp ne i32 %call1, 0, !dbg !2484
  br i1 %tobool, label %if.end, label %if.then, !dbg !2485

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2486
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.128, i64 0, i64 0)), !dbg !2488
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2489
  call void @lua_settop(%struct.lua_State* %3, i32 -2), !dbg !2489
  br label %return, !dbg !2490

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %t, align 4, !dbg !2491
  switch i32 %4, label %sw.default [
    i32 4, label %sw.bb
    i32 1, label %sw.bb4
    i32 3, label %sw.bb11
    i32 5, label %sw.bb13
  ], !dbg !2492

sw.bb:                                            ; preds = %if.end
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2493
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2495
  %call2 = call i8* @lua_tolstring(%struct.lua_State* %6, i32 -1, i64* null), !dbg !2495
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2496
  %call3 = call i64 @lua_objlen(%struct.lua_State* %7, i32 -1), !dbg !2496
  call void @addReplyBulkCBuffer(%struct.client* %5, i8* %call2, i64 %call3), !dbg !2497
  br label %sw.epilog, !dbg !2498

sw.bb4:                                           ; preds = %if.end
  %8 = load %struct.client*, %struct.client** %script_client.addr, align 8, !dbg !2499
  %resp = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 3, !dbg !2501
  %9 = load i32, i32* %resp, align 8, !dbg !2501
  %cmp = icmp eq i32 %9, 2, !dbg !2502
  br i1 %cmp, label %if.then5, label %if.else, !dbg !2503

if.then5:                                         ; preds = %sw.bb4
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2504
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2505
  %call6 = call i32 @lua_toboolean(%struct.lua_State* %11, i32 -1), !dbg !2506
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2506
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !2506

cond.true:                                        ; preds = %if.then5
  %12 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 5), align 8, !dbg !2507
  br label %cond.end, !dbg !2506

cond.false:                                       ; preds = %if.then5
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2508
  %resp8 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 3, !dbg !2509
  %14 = load i32, i32* %resp8, align 8, !dbg !2509
  %idxprom = sext i32 %14 to i64, !dbg !2510
  %arrayidx = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom, !dbg !2510
  %15 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2510
  br label %cond.end, !dbg !2506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.redisObject* [ %12, %cond.true ], [ %15, %cond.false ], !dbg !2506
  call void @addReply(%struct.client* %10, %struct.redisObject* %cond), !dbg !2511
  br label %if.end10, !dbg !2511

if.else:                                          ; preds = %sw.bb4
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2512
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2513
  %call9 = call i32 @lua_toboolean(%struct.lua_State* %17, i32 -1), !dbg !2514
  call void @addReplyBool(%struct.client* %16, i32 %call9), !dbg !2515
  br label %if.end10

if.end10:                                         ; preds = %if.else, %cond.end
  br label %sw.epilog, !dbg !2516

sw.bb11:                                          ; preds = %if.end
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2517
  %19 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2518
  %call12 = call double @lua_tonumber(%struct.lua_State* %19, i32 -1), !dbg !2519
  %conv = fptosi double %call12 to i64, !dbg !2520
  call void @addReplyLongLong(%struct.client* %18, i64 %conv), !dbg !2521
  br label %sw.epilog, !dbg !2522

sw.bb13:                                          ; preds = %if.end
  %20 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2523
  call void @lua_pushstring(%struct.lua_State* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !2524
  %21 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2525
  call void @lua_rawget(%struct.lua_State* %21, i32 -2), !dbg !2526
  %22 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2527
  %call14 = call i32 @lua_type(%struct.lua_State* %22, i32 -1), !dbg !2528
  store i32 %call14, i32* %t, align 4, !dbg !2529
  %23 = load i32, i32* %t, align 4, !dbg !2530
  %cmp15 = icmp eq i32 %23, 4, !dbg !2532
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !2533

if.then17:                                        ; preds = %sw.bb13
  %24 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2534
  call void @lua_settop(%struct.lua_State* %24, i32 -2), !dbg !2534
  call void @llvm.dbg.declare(metadata %struct.errorInfo* %err_info, metadata !2536, metadata !DIExpression()), !dbg !2537
  %25 = bitcast %struct.errorInfo* %err_info to i8*, !dbg !2537
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false), !dbg !2537
  %26 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2538
  call void @luaExtractErrorInformation(%struct.lua_State* %26, %struct.errorInfo* %err_info), !dbg !2539
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2540
  %ignore_err_stats_update = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 3, !dbg !2541
  %28 = load i32, i32* %ignore_err_stats_update, align 8, !dbg !2541
  %tobool18 = icmp ne i32 %28, 0, !dbg !2542
  %29 = zext i1 %tobool18 to i64, !dbg !2542
  %cond19 = select i1 %tobool18, i64 1, i64 0, !dbg !2542
  %conv20 = trunc i64 %cond19 to i32, !dbg !2542
  %msg = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 0, !dbg !2543
  %30 = load i8*, i8** %msg, align 8, !dbg !2543
  call void (%struct.client*, i32, i8*, ...) @addReplyErrorFormatEx(%struct.client* %27, i32 %conv20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i8* %30), !dbg !2544
  call void @luaErrorInformationDiscard(%struct.errorInfo* %err_info), !dbg !2545
  %31 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2546
  call void @lua_settop(%struct.lua_State* %31, i32 -2), !dbg !2546
  br label %return, !dbg !2547

if.end21:                                         ; preds = %sw.bb13
  %32 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2548
  call void @lua_settop(%struct.lua_State* %32, i32 -2), !dbg !2548
  %33 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2549
  call void @lua_pushstring(%struct.lua_State* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0)), !dbg !2550
  %34 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2551
  call void @lua_rawget(%struct.lua_State* %34, i32 -2), !dbg !2552
  %35 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2553
  %call22 = call i32 @lua_type(%struct.lua_State* %35, i32 -1), !dbg !2554
  store i32 %call22, i32* %t, align 4, !dbg !2555
  %36 = load i32, i32* %t, align 4, !dbg !2556
  %cmp23 = icmp eq i32 %36, 4, !dbg !2558
  br i1 %cmp23, label %if.then25, label %if.end30, !dbg !2559

if.then25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i8** %ok, metadata !2560, metadata !DIExpression()), !dbg !2562
  %37 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2563
  %call26 = call i8* @lua_tolstring(%struct.lua_State* %37, i32 -1, i64* null), !dbg !2563
  %call27 = call i8* @sdsnew(i8* %call26), !dbg !2564
  store i8* %call27, i8** %ok, align 8, !dbg !2562
  %38 = load i8*, i8** %ok, align 8, !dbg !2565
  %call28 = call i8* @sdsmapchars(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i64 2), !dbg !2566
  %39 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2567
  %40 = load i8*, i8** %ok, align 8, !dbg !2568
  %41 = load i8*, i8** %ok, align 8, !dbg !2569
  %call29 = call i64 @sdslen(i8* %41), !dbg !2570
  call void @addReplyStatusLength(%struct.client* %39, i8* %40, i64 %call29), !dbg !2571
  %42 = load i8*, i8** %ok, align 8, !dbg !2572
  call void @sdsfree(i8* %42), !dbg !2573
  %43 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2574
  call void @lua_settop(%struct.lua_State* %43, i32 -3), !dbg !2574
  br label %return, !dbg !2575

if.end30:                                         ; preds = %if.end21
  %44 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2576
  call void @lua_settop(%struct.lua_State* %44, i32 -2), !dbg !2576
  %45 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2577
  call void @lua_pushstring(%struct.lua_State* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i64 0, i64 0)), !dbg !2578
  %46 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2579
  call void @lua_rawget(%struct.lua_State* %46, i32 -2), !dbg !2580
  %47 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2581
  %call31 = call i32 @lua_type(%struct.lua_State* %47, i32 -1), !dbg !2582
  store i32 %call31, i32* %t, align 4, !dbg !2583
  %48 = load i32, i32* %t, align 4, !dbg !2584
  %cmp32 = icmp eq i32 %48, 3, !dbg !2586
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2587

if.then34:                                        ; preds = %if.end30
  %49 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2588
  %50 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2590
  %call35 = call double @lua_tonumber(%struct.lua_State* %50, i32 -1), !dbg !2591
  call void @addReplyDouble(%struct.client* %49, double %call35), !dbg !2592
  %51 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2593
  call void @lua_settop(%struct.lua_State* %51, i32 -3), !dbg !2593
  br label %return, !dbg !2594

if.end36:                                         ; preds = %if.end30
  %52 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2595
  call void @lua_settop(%struct.lua_State* %52, i32 -2), !dbg !2595
  %53 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2596
  call void @lua_pushstring(%struct.lua_State* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0)), !dbg !2597
  %54 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2598
  call void @lua_rawget(%struct.lua_State* %54, i32 -2), !dbg !2599
  %55 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2600
  %call37 = call i32 @lua_type(%struct.lua_State* %55, i32 -1), !dbg !2601
  store i32 %call37, i32* %t, align 4, !dbg !2602
  %56 = load i32, i32* %t, align 4, !dbg !2603
  %cmp38 = icmp eq i32 %56, 4, !dbg !2605
  br i1 %cmp38, label %if.then40, label %if.end46, !dbg !2606

if.then40:                                        ; preds = %if.end36
  call void @llvm.dbg.declare(metadata i8** %big_num, metadata !2607, metadata !DIExpression()), !dbg !2609
  %57 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2610
  %call41 = call i8* @lua_tolstring(%struct.lua_State* %57, i32 -1, i64* null), !dbg !2610
  %58 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2611
  %call42 = call i64 @lua_objlen(%struct.lua_State* %58, i32 -1), !dbg !2611
  %call43 = call i8* @sdsnewlen(i8* %call41, i64 %call42), !dbg !2612
  store i8* %call43, i8** %big_num, align 8, !dbg !2609
  %59 = load i8*, i8** %big_num, align 8, !dbg !2613
  %call44 = call i8* @sdsmapchars(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0), i64 2), !dbg !2614
  %60 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2615
  %61 = load i8*, i8** %big_num, align 8, !dbg !2616
  %62 = load i8*, i8** %big_num, align 8, !dbg !2617
  %call45 = call i64 @sdslen(i8* %62), !dbg !2618
  call void @addReplyBigNum(%struct.client* %60, i8* %61, i64 %call45), !dbg !2619
  %63 = load i8*, i8** %big_num, align 8, !dbg !2620
  call void @sdsfree(i8* %63), !dbg !2621
  %64 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2622
  call void @lua_settop(%struct.lua_State* %64, i32 -3), !dbg !2622
  br label %return, !dbg !2623

if.end46:                                         ; preds = %if.end36
  %65 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2624
  call void @lua_settop(%struct.lua_State* %65, i32 -2), !dbg !2624
  %66 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2625
  call void @lua_pushstring(%struct.lua_State* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0)), !dbg !2626
  %67 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2627
  call void @lua_rawget(%struct.lua_State* %67, i32 -2), !dbg !2628
  %68 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2629
  %call47 = call i32 @lua_type(%struct.lua_State* %68, i32 -1), !dbg !2630
  store i32 %call47, i32* %t, align 4, !dbg !2631
  %69 = load i32, i32* %t, align 4, !dbg !2632
  %cmp48 = icmp eq i32 %69, 5, !dbg !2634
  br i1 %cmp48, label %if.then50, label %if.end63, !dbg !2635

if.then50:                                        ; preds = %if.end46
  %70 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2636
  call void @lua_pushstring(%struct.lua_State* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0)), !dbg !2638
  %71 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2639
  call void @lua_rawget(%struct.lua_State* %71, i32 -2), !dbg !2640
  %72 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2641
  %call51 = call i32 @lua_type(%struct.lua_State* %72, i32 -1), !dbg !2642
  store i32 %call51, i32* %t, align 4, !dbg !2643
  %73 = load i32, i32* %t, align 4, !dbg !2644
  %cmp52 = icmp eq i32 %73, 4, !dbg !2646
  br i1 %cmp52, label %if.then54, label %if.end62, !dbg !2647

if.then54:                                        ; preds = %if.then50
  call void @llvm.dbg.declare(metadata i8** %format, metadata !2648, metadata !DIExpression()), !dbg !2650
  %74 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2651
  %call55 = call i8* @lua_tolstring(%struct.lua_State* %74, i32 -1, i64* null), !dbg !2651
  store i8* %call55, i8** %format, align 8, !dbg !2650
  %75 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2652
  call void @lua_pushstring(%struct.lua_State* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)), !dbg !2653
  %76 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2654
  call void @lua_rawget(%struct.lua_State* %76, i32 -3), !dbg !2655
  %77 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2656
  %call56 = call i32 @lua_type(%struct.lua_State* %77, i32 -1), !dbg !2657
  store i32 %call56, i32* %t, align 4, !dbg !2658
  %78 = load i32, i32* %t, align 4, !dbg !2659
  %cmp57 = icmp eq i32 %78, 4, !dbg !2661
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !2662

if.then59:                                        ; preds = %if.then54
  call void @llvm.dbg.declare(metadata i64* %len, metadata !2663, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.declare(metadata i8** %str, metadata !2666, metadata !DIExpression()), !dbg !2667
  %79 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2668
  %call60 = call i8* @lua_tolstring(%struct.lua_State* %79, i32 -1, i64* %len), !dbg !2669
  store i8* %call60, i8** %str, align 8, !dbg !2667
  %80 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2670
  %81 = load i8*, i8** %str, align 8, !dbg !2671
  %82 = load i64, i64* %len, align 8, !dbg !2672
  %83 = load i8*, i8** %format, align 8, !dbg !2673
  call void @addReplyVerbatim(%struct.client* %80, i8* %81, i64 %82, i8* %83), !dbg !2674
  %84 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2675
  call void @lua_settop(%struct.lua_State* %84, i32 -5), !dbg !2675
  br label %return, !dbg !2676

if.end61:                                         ; preds = %if.then54
  %85 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2677
  call void @lua_settop(%struct.lua_State* %85, i32 -2), !dbg !2677
  br label %if.end62, !dbg !2678

if.end62:                                         ; preds = %if.end61, %if.then50
  %86 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2679
  call void @lua_settop(%struct.lua_State* %86, i32 -2), !dbg !2679
  br label %if.end63, !dbg !2680

if.end63:                                         ; preds = %if.end62, %if.end46
  %87 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2681
  call void @lua_settop(%struct.lua_State* %87, i32 -2), !dbg !2681
  %88 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2682
  call void @lua_pushstring(%struct.lua_State* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)), !dbg !2683
  %89 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2684
  call void @lua_rawget(%struct.lua_State* %89, i32 -2), !dbg !2685
  %90 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2686
  %call64 = call i32 @lua_type(%struct.lua_State* %90, i32 -1), !dbg !2687
  store i32 %call64, i32* %t, align 4, !dbg !2688
  %91 = load i32, i32* %t, align 4, !dbg !2689
  %cmp65 = icmp eq i32 %91, 5, !dbg !2691
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !2692

if.then67:                                        ; preds = %if.end63
  call void @llvm.dbg.declare(metadata i32* %maplen, metadata !2693, metadata !DIExpression()), !dbg !2695
  store i32 0, i32* %maplen, align 4, !dbg !2695
  call void @llvm.dbg.declare(metadata i8** %replylen, metadata !2696, metadata !DIExpression()), !dbg !2697
  %92 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2698
  %call68 = call i8* @addReplyDeferredLen(%struct.client* %92), !dbg !2699
  store i8* %call68, i8** %replylen, align 8, !dbg !2697
  %93 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2700
  call void @lua_pushnil(%struct.lua_State* %93), !dbg !2701
  br label %while.cond, !dbg !2702

while.cond:                                       ; preds = %while.body, %if.then67
  %94 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2703
  %call69 = call i32 @lua_next(%struct.lua_State* %94, i32 -2), !dbg !2704
  %tobool70 = icmp ne i32 %call69, 0, !dbg !2702
  br i1 %tobool70, label %while.body, label %while.end, !dbg !2702

while.body:                                       ; preds = %while.cond
  %95 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2705
  call void @lua_pushvalue(%struct.lua_State* %95, i32 -2), !dbg !2707
  %96 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2708
  %97 = load %struct.client*, %struct.client** %script_client.addr, align 8, !dbg !2709
  %98 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2710
  call void @luaReplyToRedisReply(%struct.client* %96, %struct.client* %97, %struct.lua_State* %98), !dbg !2711
  %99 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2712
  %100 = load %struct.client*, %struct.client** %script_client.addr, align 8, !dbg !2713
  %101 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2714
  call void @luaReplyToRedisReply(%struct.client* %99, %struct.client* %100, %struct.lua_State* %101), !dbg !2715
  %102 = load i32, i32* %maplen, align 4, !dbg !2716
  %inc = add nsw i32 %102, 1, !dbg !2716
  store i32 %inc, i32* %maplen, align 4, !dbg !2716
  br label %while.cond, !dbg !2702, !llvm.loop !2717

while.end:                                        ; preds = %while.cond
  %103 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2719
  %104 = load i8*, i8** %replylen, align 8, !dbg !2720
  %105 = load i32, i32* %maplen, align 4, !dbg !2721
  %conv71 = sext i32 %105 to i64, !dbg !2721
  call void @setDeferredMapLen(%struct.client* %103, i8* %104, i64 %conv71), !dbg !2722
  %106 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2723
  call void @lua_settop(%struct.lua_State* %106, i32 -3), !dbg !2723
  br label %return, !dbg !2724

if.end72:                                         ; preds = %if.end63
  %107 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2725
  call void @lua_settop(%struct.lua_State* %107, i32 -2), !dbg !2725
  %108 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2726
  call void @lua_pushstring(%struct.lua_State* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)), !dbg !2727
  %109 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2728
  call void @lua_rawget(%struct.lua_State* %109, i32 -2), !dbg !2729
  %110 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2730
  %call73 = call i32 @lua_type(%struct.lua_State* %110, i32 -1), !dbg !2731
  store i32 %call73, i32* %t, align 4, !dbg !2732
  %111 = load i32, i32* %t, align 4, !dbg !2733
  %cmp74 = icmp eq i32 %111, 5, !dbg !2735
  br i1 %cmp74, label %if.then76, label %if.end86, !dbg !2736

if.then76:                                        ; preds = %if.end72
  call void @llvm.dbg.declare(metadata i32* %setlen, metadata !2737, metadata !DIExpression()), !dbg !2739
  store i32 0, i32* %setlen, align 4, !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %replylen77, metadata !2740, metadata !DIExpression()), !dbg !2741
  %112 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2742
  %call78 = call i8* @addReplyDeferredLen(%struct.client* %112), !dbg !2743
  store i8* %call78, i8** %replylen77, align 8, !dbg !2741
  %113 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2744
  call void @lua_pushnil(%struct.lua_State* %113), !dbg !2745
  br label %while.cond79, !dbg !2746

while.cond79:                                     ; preds = %while.body82, %if.then76
  %114 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2747
  %call80 = call i32 @lua_next(%struct.lua_State* %114, i32 -2), !dbg !2748
  %tobool81 = icmp ne i32 %call80, 0, !dbg !2746
  br i1 %tobool81, label %while.body82, label %while.end84, !dbg !2746

while.body82:                                     ; preds = %while.cond79
  %115 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2749
  call void @lua_settop(%struct.lua_State* %115, i32 -2), !dbg !2749
  %116 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2751
  call void @lua_pushvalue(%struct.lua_State* %116, i32 -1), !dbg !2752
  %117 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2753
  %118 = load %struct.client*, %struct.client** %script_client.addr, align 8, !dbg !2754
  %119 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2755
  call void @luaReplyToRedisReply(%struct.client* %117, %struct.client* %118, %struct.lua_State* %119), !dbg !2756
  %120 = load i32, i32* %setlen, align 4, !dbg !2757
  %inc83 = add nsw i32 %120, 1, !dbg !2757
  store i32 %inc83, i32* %setlen, align 4, !dbg !2757
  br label %while.cond79, !dbg !2746, !llvm.loop !2758

while.end84:                                      ; preds = %while.cond79
  %121 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2760
  %122 = load i8*, i8** %replylen77, align 8, !dbg !2761
  %123 = load i32, i32* %setlen, align 4, !dbg !2762
  %conv85 = sext i32 %123 to i64, !dbg !2762
  call void @setDeferredSetLen(%struct.client* %121, i8* %122, i64 %conv85), !dbg !2763
  %124 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2764
  call void @lua_settop(%struct.lua_State* %124, i32 -3), !dbg !2764
  br label %return, !dbg !2765

if.end86:                                         ; preds = %if.end72
  %125 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2766
  call void @lua_settop(%struct.lua_State* %125, i32 -2), !dbg !2766
  call void @llvm.dbg.declare(metadata i8** %replylen87, metadata !2767, metadata !DIExpression()), !dbg !2768
  %126 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2769
  %call88 = call i8* @addReplyDeferredLen(%struct.client* %126), !dbg !2770
  store i8* %call88, i8** %replylen87, align 8, !dbg !2768
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2771, metadata !DIExpression()), !dbg !2772
  store i32 1, i32* %j, align 4, !dbg !2772
  call void @llvm.dbg.declare(metadata i32* %mbulklen, metadata !2773, metadata !DIExpression()), !dbg !2774
  store i32 0, i32* %mbulklen, align 4, !dbg !2774
  br label %while.body90, !dbg !2775

while.body90:                                     ; preds = %if.end86, %if.end97
  %127 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2776
  %128 = load i32, i32* %j, align 4, !dbg !2778
  %inc91 = add nsw i32 %128, 1, !dbg !2778
  store i32 %inc91, i32* %j, align 4, !dbg !2778
  %conv92 = sitofp i32 %128 to double, !dbg !2779
  call void @lua_pushnumber(%struct.lua_State* %127, double %conv92), !dbg !2780
  %129 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2781
  call void @lua_rawget(%struct.lua_State* %129, i32 -2), !dbg !2782
  %130 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2783
  %call93 = call i32 @lua_type(%struct.lua_State* %130, i32 -1), !dbg !2784
  store i32 %call93, i32* %t, align 4, !dbg !2785
  %131 = load i32, i32* %t, align 4, !dbg !2786
  %cmp94 = icmp eq i32 %131, 0, !dbg !2788
  br i1 %cmp94, label %if.then96, label %if.end97, !dbg !2789

if.then96:                                        ; preds = %while.body90
  %132 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2790
  call void @lua_settop(%struct.lua_State* %132, i32 -2), !dbg !2790
  br label %while.end99, !dbg !2792

if.end97:                                         ; preds = %while.body90
  %133 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2793
  %134 = load %struct.client*, %struct.client** %script_client.addr, align 8, !dbg !2794
  %135 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2795
  call void @luaReplyToRedisReply(%struct.client* %133, %struct.client* %134, %struct.lua_State* %135), !dbg !2796
  %136 = load i32, i32* %mbulklen, align 4, !dbg !2797
  %inc98 = add nsw i32 %136, 1, !dbg !2797
  store i32 %inc98, i32* %mbulklen, align 4, !dbg !2797
  br label %while.body90, !dbg !2775, !llvm.loop !2798

while.end99:                                      ; preds = %if.then96
  %137 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2800
  %138 = load i8*, i8** %replylen87, align 8, !dbg !2801
  %139 = load i32, i32* %mbulklen, align 4, !dbg !2802
  %conv100 = sext i32 %139 to i64, !dbg !2802
  call void @setDeferredArrayLen(%struct.client* %137, i8* %138, i64 %conv100), !dbg !2803
  br label %sw.epilog, !dbg !2804

sw.default:                                       ; preds = %if.end
  %140 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2805
  call void @addReplyNull(%struct.client* %140), !dbg !2806
  br label %sw.epilog, !dbg !2807

sw.epilog:                                        ; preds = %sw.default, %while.end99, %sw.bb11, %if.end10, %sw.bb
  %141 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2808
  call void @lua_settop(%struct.lua_State* %141, i32 -2), !dbg !2808
  br label %return, !dbg !2809

return:                                           ; preds = %sw.epilog, %while.end84, %while.end, %if.then59, %if.then40, %if.then34, %if.then25, %if.then17, %if.then
  ret void, !dbg !2809
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @luaMemory(%struct.lua_State* %lua) #0 !dbg !2810 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2815
  %call = call i32 @lua_gc(%struct.lua_State* %0, i32 3, i32 0), !dbg !2816
  %conv = sext i32 %call to i64, !dbg !2816
  %mul = mul nsw i64 %conv, 1024, !dbg !2817
  ret i64 %mul, !dbg !2818
}

declare dso_local i32 @lua_gettop(%struct.lua_State*) #2

declare dso_local void @_serverLog(i32, i8*, ...) #2

declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local void @lua_rawset(%struct.lua_State*, i32) #2

declare dso_local double @lua_tonumber(%struct.lua_State*, i32) #2

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

declare dso_local void @serverLogRaw(i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaLoadLib(%struct.lua_State* %lua, i8* %libname, i32 (%struct.lua_State*)* %luafunc) #0 !dbg !2819 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %libname.addr = alloca i8*, align 8
  %luafunc.addr = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2824, metadata !DIExpression()), !dbg !2825
  store i8* %libname, i8** %libname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %libname.addr, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i32 (%struct.lua_State*)* %luafunc, i32 (%struct.lua_State*)** %luafunc.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.lua_State*)** %luafunc.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2830
  %1 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %luafunc.addr, align 8, !dbg !2830
  call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %1, i32 0), !dbg !2830
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2831
  %3 = load i8*, i8** %libname.addr, align 8, !dbg !2832
  call void @lua_pushstring(%struct.lua_State* %2, i8* %3), !dbg !2833
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2834
  call void @lua_call(%struct.lua_State* %4, i32 1, i32 0), !dbg !2835
  ret void, !dbg !2836
}

declare dso_local i32 @luaopen_base(%struct.lua_State*) #2

declare dso_local i32 @luaopen_table(%struct.lua_State*) #2

declare dso_local i32 @luaopen_string(%struct.lua_State*) #2

declare dso_local i32 @luaopen_math(%struct.lua_State*) #2

declare dso_local i32 @luaopen_debug(%struct.lua_State*) #2

declare dso_local i32 @luaopen_cjson(%struct.lua_State*) #2

declare dso_local i32 @luaopen_struct(%struct.lua_State*) #2

declare dso_local i32 @luaopen_cmsgpack(%struct.lua_State*) #2

declare dso_local i32 @luaopen_bit(%struct.lua_State*) #2

declare dso_local void @lua_call(%struct.lua_State*, i32, i32) #2

declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) #2

declare dso_local void @lua_insert(%struct.lua_State*, i32) #2

declare dso_local void @lua_remove(%struct.lua_State*, i32) #2

declare dso_local void @lua_replace(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisGenericCommand(%struct.lua_State* %lua, i32 %raise_error) #0 !dbg !778 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %raise_error.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %rctx = alloca %struct.scriptRunCtx*, align 8
  %err = alloca i8*, align 8
  %c = alloca %struct.client*, align 8
  %reply = alloca i8*, align 8
  %recursion_warning = alloca i8*, align 8
  %cmdlog = alloca i8*, align 8
  %o = alloca %struct.clientReplyBlock*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  store i32 %raise_error, i32* %raise_error.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %raise_error.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %rctx, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2845
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)), !dbg !2846
  %1 = bitcast i8* %call to %struct.scriptRunCtx*, !dbg !2846
  store %struct.scriptRunCtx* %1, %struct.scriptRunCtx** %rctx, align 8, !dbg !2844
  %2 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2847
  %tobool = icmp ne %struct.scriptRunCtx* %2, null, !dbg !2847
  br i1 %tobool, label %if.end, label %if.then, !dbg !2849

if.then:                                          ; preds = %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2850
  call void @luaPushError(%struct.lua_State* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.96, i64 0, i64 0)), !dbg !2852
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2853
  %call1 = call i32 @luaError(%struct.lua_State* %4), !dbg !2854
  store i32 %call1, i32* %retval, align 4, !dbg !2855
  br label %return, !dbg !2855

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %err, metadata !2856, metadata !DIExpression()), !dbg !2857
  store i8* null, i8** %err, align 8, !dbg !2857
  call void @llvm.dbg.declare(metadata %struct.client** %c, metadata !2858, metadata !DIExpression()), !dbg !2859
  %5 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2860
  %c2 = getelementptr inbounds %struct.scriptRunCtx, %struct.scriptRunCtx* %5, i32 0, i32 1, !dbg !2861
  %6 = load %struct.client*, %struct.client** %c2, align 8, !dbg !2861
  store %struct.client* %6, %struct.client** %c, align 8, !dbg !2859
  call void @llvm.dbg.declare(metadata i8** %reply, metadata !2862, metadata !DIExpression()), !dbg !2863
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2864
  %8 = load %struct.client*, %struct.client** %c, align 8, !dbg !2865
  %argc = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 9, !dbg !2866
  %9 = load %struct.client*, %struct.client** %c, align 8, !dbg !2867
  %argv_len = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 11, !dbg !2868
  %call3 = call %struct.redisObject** @luaArgsToRedisArgv(%struct.lua_State* %7, i32* %argc, i32* %argv_len), !dbg !2869
  %10 = load %struct.client*, %struct.client** %c, align 8, !dbg !2870
  %argv = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 10, !dbg !2871
  store %struct.redisObject** %call3, %struct.redisObject*** %argv, align 8, !dbg !2872
  %11 = load %struct.client*, %struct.client** %c, align 8, !dbg !2873
  %argv4 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 10, !dbg !2875
  %12 = load %struct.redisObject**, %struct.redisObject*** %argv4, align 8, !dbg !2875
  %cmp = icmp eq %struct.redisObject** %12, null, !dbg !2876
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !2877

if.then5:                                         ; preds = %if.end
  %13 = load i32, i32* %raise_error.addr, align 4, !dbg !2878
  %tobool6 = icmp ne i32 %13, 0, !dbg !2878
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2878

cond.true:                                        ; preds = %if.then5
  %14 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2880
  %call7 = call i32 @luaError(%struct.lua_State* %14), !dbg !2881
  br label %cond.end, !dbg !2878

cond.false:                                       ; preds = %if.then5
  br label %cond.end, !dbg !2878

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ 1, %cond.false ], !dbg !2878
  store i32 %cond, i32* %retval, align 4, !dbg !2882
  br label %return, !dbg !2882

if.end8:                                          ; preds = %if.end
  %15 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !2883
  %tobool9 = icmp ne i32 %15, 0, !dbg !2883
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !2885

if.then10:                                        ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %recursion_warning, metadata !2886, metadata !DIExpression()), !dbg !2888
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.97, i64 0, i64 0), i8** %recursion_warning, align 8, !dbg !2888
  br label %do.body, !dbg !2889

do.body:                                          ; preds = %if.then10
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 154), align 8, !dbg !2890
  %cmp11 = icmp slt i32 3, %16, !dbg !2890
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2893

if.then12:                                        ; preds = %do.body
  br label %do.end, !dbg !2890

if.end13:                                         ; preds = %do.body
  %17 = load i8*, i8** %recursion_warning, align 8, !dbg !2893
  call void (i32, i8*, ...) @_serverLog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* %17), !dbg !2893
  br label %do.end, !dbg !2893

do.end:                                           ; preds = %if.end13, %if.then12
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2894
  %19 = load i8*, i8** %recursion_warning, align 8, !dbg !2895
  call void @luaPushError(%struct.lua_State* %18, i8* %19), !dbg !2896
  store i32 1, i32* %retval, align 4, !dbg !2897
  br label %return, !dbg !2897

if.end14:                                         ; preds = %if.end8
  %20 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !2898
  %inc = add nsw i32 %20, 1, !dbg !2898
  store i32 %inc, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !2898
  %call15 = call i32 (...) @ldbIsEnabled(), !dbg !2899
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2899
  br i1 %tobool16, label %if.then17, label %if.end31, !dbg !2901

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i8** %cmdlog, metadata !2902, metadata !DIExpression()), !dbg !2904
  %call18 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.99, i64 0, i64 0)), !dbg !2905
  store i8* %call18, i8** %cmdlog, align 8, !dbg !2904
  store i32 0, i32* %j, align 4, !dbg !2906
  br label %for.cond, !dbg !2908

for.cond:                                         ; preds = %for.inc, %if.then17
  %21 = load i32, i32* %j, align 4, !dbg !2909
  %22 = load %struct.client*, %struct.client** %c, align 8, !dbg !2911
  %argc19 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 9, !dbg !2912
  %23 = load i32, i32* %argc19, align 8, !dbg !2912
  %cmp20 = icmp slt i32 %21, %23, !dbg !2913
  br i1 %cmp20, label %for.body, label %for.end, !dbg !2914

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %j, align 4, !dbg !2915
  %cmp21 = icmp eq i32 %24, 10, !dbg !2918
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !2919

if.then22:                                        ; preds = %for.body
  %25 = load i8*, i8** %cmdlog, align 8, !dbg !2920
  %26 = load %struct.client*, %struct.client** %c, align 8, !dbg !2922
  %argc23 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 9, !dbg !2923
  %27 = load i32, i32* %argc23, align 8, !dbg !2923
  %28 = load i32, i32* %j, align 4, !dbg !2924
  %sub = sub nsw i32 %27, %28, !dbg !2925
  %sub24 = sub nsw i32 %sub, 1, !dbg !2926
  %call25 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.100, i64 0, i64 0), i32 %sub24), !dbg !2927
  store i8* %call25, i8** %cmdlog, align 8, !dbg !2928
  br label %for.end, !dbg !2929

if.else:                                          ; preds = %for.body
  %29 = load i8*, i8** %cmdlog, align 8, !dbg !2930
  %call26 = call i8* @sdscatlen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1), !dbg !2932
  store i8* %call26, i8** %cmdlog, align 8, !dbg !2933
  %30 = load i8*, i8** %cmdlog, align 8, !dbg !2934
  %31 = load %struct.client*, %struct.client** %c, align 8, !dbg !2935
  %argv27 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 10, !dbg !2936
  %32 = load %struct.redisObject**, %struct.redisObject*** %argv27, align 8, !dbg !2936
  %33 = load i32, i32* %j, align 4, !dbg !2937
  %idxprom = sext i32 %33 to i64, !dbg !2935
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 %idxprom, !dbg !2935
  %34 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2935
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i32 0, i32 2, !dbg !2938
  %35 = load i8*, i8** %ptr, align 8, !dbg !2938
  %call28 = call i8* @sdscatsds(i8* %30, i8* %35), !dbg !2939
  store i8* %call28, i8** %cmdlog, align 8, !dbg !2940
  br label %if.end29

if.end29:                                         ; preds = %if.else
  br label %for.inc, !dbg !2941

for.inc:                                          ; preds = %if.end29
  %36 = load i32, i32* %j, align 4, !dbg !2942
  %inc30 = add nsw i32 %36, 1, !dbg !2942
  store i32 %inc30, i32* %j, align 4, !dbg !2942
  br label %for.cond, !dbg !2943, !llvm.loop !2944

for.end:                                          ; preds = %if.then22, %for.cond
  %37 = load i8*, i8** %cmdlog, align 8, !dbg !2946
  call void @ldbLog(i8* %37), !dbg !2947
  br label %if.end31, !dbg !2948

if.end31:                                         ; preds = %for.end, %if.end14
  %38 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %rctx, align 8, !dbg !2949
  call void @scriptCall(%struct.scriptRunCtx* %38, i8** %err), !dbg !2950
  %39 = load i8*, i8** %err, align 8, !dbg !2951
  %tobool32 = icmp ne i8* %39, null, !dbg !2951
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !2953

if.then33:                                        ; preds = %if.end31
  %40 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2954
  %41 = load i8*, i8** %err, align 8, !dbg !2956
  call void @luaPushError(%struct.lua_State* %40, i8* %41), !dbg !2957
  %42 = load i8*, i8** %err, align 8, !dbg !2958
  call void @sdsfree(i8* %42), !dbg !2959
  %43 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2960
  call void @lua_pushstring(%struct.lua_State* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)), !dbg !2961
  %44 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2962
  call void @lua_pushboolean(%struct.lua_State* %44, i32 1), !dbg !2963
  %45 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !2964
  call void @lua_settable(%struct.lua_State* %45, i32 -3), !dbg !2965
  br label %cleanup, !dbg !2966

if.end34:                                         ; preds = %if.end31
  %46 = load %struct.client*, %struct.client** %c, align 8, !dbg !2967
  %reply35 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 22, !dbg !2967
  %47 = load %struct.list*, %struct.list** %reply35, align 8, !dbg !2967
  %len = getelementptr inbounds %struct.list, %struct.list* %47, i32 0, i32 5, !dbg !2967
  %48 = load i64, i64* %len, align 8, !dbg !2967
  %cmp36 = icmp eq i64 %48, 0, !dbg !2969
  br i1 %cmp36, label %land.lhs.true, label %if.else45, !dbg !2970

land.lhs.true:                                    ; preds = %if.end34
  %49 = load %struct.client*, %struct.client** %c, align 8, !dbg !2971
  %bufpos = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 77, !dbg !2972
  %50 = load i32, i32* %bufpos, align 8, !dbg !2972
  %conv = sext i32 %50 to i64, !dbg !2973
  %51 = load %struct.client*, %struct.client** %c, align 8, !dbg !2974
  %buf_usable_size = getelementptr inbounds %struct.client, %struct.client* %51, i32 0, i32 78, !dbg !2975
  %52 = load i64, i64* %buf_usable_size, align 8, !dbg !2975
  %cmp37 = icmp ult i64 %conv, %52, !dbg !2976
  br i1 %cmp37, label %if.then39, label %if.else45, !dbg !2977

if.then39:                                        ; preds = %land.lhs.true
  %53 = load %struct.client*, %struct.client** %c, align 8, !dbg !2978
  %buf = getelementptr inbounds %struct.client, %struct.client* %53, i32 0, i32 79, !dbg !2980
  %54 = load i8*, i8** %buf, align 8, !dbg !2980
  %55 = load %struct.client*, %struct.client** %c, align 8, !dbg !2981
  %bufpos40 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 77, !dbg !2982
  %56 = load i32, i32* %bufpos40, align 8, !dbg !2982
  %idxprom41 = sext i32 %56 to i64, !dbg !2978
  %arrayidx42 = getelementptr inbounds i8, i8* %54, i64 %idxprom41, !dbg !2978
  store i8 0, i8* %arrayidx42, align 1, !dbg !2983
  %57 = load %struct.client*, %struct.client** %c, align 8, !dbg !2984
  %buf43 = getelementptr inbounds %struct.client, %struct.client* %57, i32 0, i32 79, !dbg !2985
  %58 = load i8*, i8** %buf43, align 8, !dbg !2985
  store i8* %58, i8** %reply, align 8, !dbg !2986
  %59 = load %struct.client*, %struct.client** %c, align 8, !dbg !2987
  %bufpos44 = getelementptr inbounds %struct.client, %struct.client* %59, i32 0, i32 77, !dbg !2988
  store i32 0, i32* %bufpos44, align 8, !dbg !2989
  br label %if.end60, !dbg !2990

if.else45:                                        ; preds = %land.lhs.true, %if.end34
  %60 = load %struct.client*, %struct.client** %c, align 8, !dbg !2991
  %buf46 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 79, !dbg !2993
  %61 = load i8*, i8** %buf46, align 8, !dbg !2993
  %62 = load %struct.client*, %struct.client** %c, align 8, !dbg !2994
  %bufpos47 = getelementptr inbounds %struct.client, %struct.client* %62, i32 0, i32 77, !dbg !2995
  %63 = load i32, i32* %bufpos47, align 8, !dbg !2995
  %conv48 = sext i32 %63 to i64, !dbg !2994
  %call49 = call i8* @sdsnewlen(i8* %61, i64 %conv48), !dbg !2996
  store i8* %call49, i8** %reply, align 8, !dbg !2997
  %64 = load %struct.client*, %struct.client** %c, align 8, !dbg !2998
  %bufpos50 = getelementptr inbounds %struct.client, %struct.client* %64, i32 0, i32 77, !dbg !2999
  store i32 0, i32* %bufpos50, align 8, !dbg !3000
  br label %while.cond, !dbg !3001

while.cond:                                       ; preds = %while.body, %if.else45
  %65 = load %struct.client*, %struct.client** %c, align 8, !dbg !3002
  %reply51 = getelementptr inbounds %struct.client, %struct.client* %65, i32 0, i32 22, !dbg !3002
  %66 = load %struct.list*, %struct.list** %reply51, align 8, !dbg !3002
  %len52 = getelementptr inbounds %struct.list, %struct.list* %66, i32 0, i32 5, !dbg !3002
  %67 = load i64, i64* %len52, align 8, !dbg !3002
  %tobool53 = icmp ne i64 %67, 0, !dbg !3001
  br i1 %tobool53, label %while.body, label %while.end, !dbg !3001

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.clientReplyBlock** %o, metadata !3003, metadata !DIExpression()), !dbg !3012
  %68 = load %struct.client*, %struct.client** %c, align 8, !dbg !3013
  %reply54 = getelementptr inbounds %struct.client, %struct.client* %68, i32 0, i32 22, !dbg !3013
  %69 = load %struct.list*, %struct.list** %reply54, align 8, !dbg !3013
  %head = getelementptr inbounds %struct.list, %struct.list* %69, i32 0, i32 0, !dbg !3013
  %70 = load %struct.listNode*, %struct.listNode** %head, align 8, !dbg !3013
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %70, i32 0, i32 2, !dbg !3013
  %71 = load i8*, i8** %value, align 8, !dbg !3013
  %72 = bitcast i8* %71 to %struct.clientReplyBlock*, !dbg !3013
  store %struct.clientReplyBlock* %72, %struct.clientReplyBlock** %o, align 8, !dbg !3012
  %73 = load i8*, i8** %reply, align 8, !dbg !3014
  %74 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %o, align 8, !dbg !3015
  %buf55 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %74, i32 0, i32 2, !dbg !3016
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %buf55, i64 0, i64 0, !dbg !3015
  %75 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %o, align 8, !dbg !3017
  %used = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %75, i32 0, i32 1, !dbg !3018
  %76 = load i64, i64* %used, align 8, !dbg !3018
  %call56 = call i8* @sdscatlen(i8* %73, i8* %arraydecay, i64 %76), !dbg !3019
  store i8* %call56, i8** %reply, align 8, !dbg !3020
  %77 = load %struct.client*, %struct.client** %c, align 8, !dbg !3021
  %reply57 = getelementptr inbounds %struct.client, %struct.client* %77, i32 0, i32 22, !dbg !3022
  %78 = load %struct.list*, %struct.list** %reply57, align 8, !dbg !3022
  %79 = load %struct.client*, %struct.client** %c, align 8, !dbg !3023
  %reply58 = getelementptr inbounds %struct.client, %struct.client* %79, i32 0, i32 22, !dbg !3023
  %80 = load %struct.list*, %struct.list** %reply58, align 8, !dbg !3023
  %head59 = getelementptr inbounds %struct.list, %struct.list* %80, i32 0, i32 0, !dbg !3023
  %81 = load %struct.listNode*, %struct.listNode** %head59, align 8, !dbg !3023
  call void @listDelNode(%struct.list* %78, %struct.listNode* %81), !dbg !3024
  br label %while.cond, !dbg !3001, !llvm.loop !3025

while.end:                                        ; preds = %while.cond
  br label %if.end60

if.end60:                                         ; preds = %while.end, %if.then39
  %82 = load i32, i32* %raise_error.addr, align 4, !dbg !3027
  %tobool61 = icmp ne i32 %82, 0, !dbg !3027
  br i1 %tobool61, label %land.lhs.true62, label %if.end68, !dbg !3029

land.lhs.true62:                                  ; preds = %if.end60
  %83 = load i8*, i8** %reply, align 8, !dbg !3030
  %arrayidx63 = getelementptr inbounds i8, i8* %83, i64 0, !dbg !3030
  %84 = load i8, i8* %arrayidx63, align 1, !dbg !3030
  %conv64 = sext i8 %84 to i32, !dbg !3030
  %cmp65 = icmp ne i32 %conv64, 45, !dbg !3031
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !3032

if.then67:                                        ; preds = %land.lhs.true62
  store i32 0, i32* %raise_error.addr, align 4, !dbg !3033
  br label %if.end68, !dbg !3034

if.end68:                                         ; preds = %if.then67, %land.lhs.true62, %if.end60
  %85 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3035
  %86 = load i8*, i8** %reply, align 8, !dbg !3036
  call void @redisProtocolToLuaType(%struct.lua_State* %85, i8* %86), !dbg !3037
  %call69 = call i32 (...) @ldbIsEnabled(), !dbg !3038
  %tobool70 = icmp ne i32 %call69, 0, !dbg !3038
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !3040

if.then71:                                        ; preds = %if.end68
  %87 = load i8*, i8** %reply, align 8, !dbg !3041
  call void @ldbLogRedisReply(i8* %87), !dbg !3042
  br label %if.end72, !dbg !3042

if.end72:                                         ; preds = %if.then71, %if.end68
  %88 = load i8*, i8** %reply, align 8, !dbg !3043
  %89 = load %struct.client*, %struct.client** %c, align 8, !dbg !3045
  %buf73 = getelementptr inbounds %struct.client, %struct.client* %89, i32 0, i32 79, !dbg !3046
  %90 = load i8*, i8** %buf73, align 8, !dbg !3046
  %cmp74 = icmp ne i8* %88, %90, !dbg !3047
  br i1 %cmp74, label %if.then76, label %if.end77, !dbg !3048

if.then76:                                        ; preds = %if.end72
  %91 = load i8*, i8** %reply, align 8, !dbg !3049
  call void @sdsfree(i8* %91), !dbg !3050
  br label %if.end77, !dbg !3050

if.end77:                                         ; preds = %if.then76, %if.end72
  %92 = load %struct.client*, %struct.client** %c, align 8, !dbg !3051
  %reply_bytes = getelementptr inbounds %struct.client, %struct.client* %92, i32 0, i32 23, !dbg !3052
  store i64 0, i64* %reply_bytes, align 8, !dbg !3053
  br label %cleanup, !dbg !3051

cleanup:                                          ; preds = %if.end77, %if.then33
  call void @llvm.dbg.label(metadata !3054), !dbg !3055
  %93 = load %struct.client*, %struct.client** %c, align 8, !dbg !3056
  %argv78 = getelementptr inbounds %struct.client, %struct.client* %93, i32 0, i32 10, !dbg !3057
  %94 = load %struct.redisObject**, %struct.redisObject*** %argv78, align 8, !dbg !3057
  %95 = load %struct.client*, %struct.client** %c, align 8, !dbg !3058
  %argc79 = getelementptr inbounds %struct.client, %struct.client* %95, i32 0, i32 9, !dbg !3059
  %96 = load i32, i32* %argc79, align 8, !dbg !3059
  %97 = load %struct.client*, %struct.client** %c, align 8, !dbg !3060
  %argv_len80 = getelementptr inbounds %struct.client, %struct.client* %97, i32 0, i32 11, !dbg !3061
  %98 = load i32, i32* %argv_len80, align 8, !dbg !3061
  call void @freeLuaRedisArgv(%struct.redisObject** %94, i32 %96, i32 %98), !dbg !3062
  %99 = load %struct.client*, %struct.client** %c, align 8, !dbg !3063
  %argv_len81 = getelementptr inbounds %struct.client, %struct.client* %99, i32 0, i32 11, !dbg !3064
  store i32 0, i32* %argv_len81, align 8, !dbg !3065
  %100 = load %struct.client*, %struct.client** %c, align 8, !dbg !3066
  %argc82 = getelementptr inbounds %struct.client, %struct.client* %100, i32 0, i32 9, !dbg !3067
  store i32 0, i32* %argc82, align 8, !dbg !3068
  %101 = load %struct.client*, %struct.client** %c, align 8, !dbg !3069
  %user = getelementptr inbounds %struct.client, %struct.client* %101, i32 0, i32 18, !dbg !3070
  store %struct.user* null, %struct.user** %user, align 8, !dbg !3071
  %102 = load %struct.client*, %struct.client** %c, align 8, !dbg !3072
  %argv83 = getelementptr inbounds %struct.client, %struct.client* %102, i32 0, i32 10, !dbg !3073
  store %struct.redisObject** null, %struct.redisObject*** %argv83, align 8, !dbg !3074
  %103 = load %struct.client*, %struct.client** %c, align 8, !dbg !3075
  call void @freeClientArgv(%struct.client* %103), !dbg !3076
  %104 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !3077
  %dec = add nsw i32 %104, -1, !dbg !3077
  store i32 %dec, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !3077
  %105 = load i32, i32* %raise_error.addr, align 4, !dbg !3078
  %tobool84 = icmp ne i32 %105, 0, !dbg !3078
  br i1 %tobool84, label %if.then85, label %if.end87, !dbg !3080

if.then85:                                        ; preds = %cleanup
  %106 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3081
  %call86 = call i32 @luaError(%struct.lua_State* %106), !dbg !3083
  store i32 %call86, i32* %retval, align 4, !dbg !3084
  br label %return, !dbg !3084

if.end87:                                         ; preds = %cleanup
  store i32 1, i32* %retval, align 4, !dbg !3085
  br label %return, !dbg !3085

return:                                           ; preds = %if.end87, %if.then85, %do.end, %cond.end, %if.then
  %107 = load i32, i32* %retval, align 4, !dbg !3086
  ret i32 %107, !dbg !3086
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.redisObject** @luaArgsToRedisArgv(%struct.lua_State* %lua, i32* %argc, i32* %argv_len) #0 !dbg !3087 {
entry:
  %retval = alloca %struct.redisObject**, align 8
  %lua.addr = alloca %struct.lua_State*, align 8
  %argc.addr = alloca i32*, align 8
  %argv_len.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %obj_s = alloca i8*, align 8
  %obj_len = alloca i64, align 8
  %dbuf = alloca [64 x i8], align 16
  %num = alloca double, align 8
  %s = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !3091, metadata !DIExpression()), !dbg !3092
  store i32* %argc, i32** %argc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argc.addr, metadata !3093, metadata !DIExpression()), !dbg !3094
  store i32* %argv_len, i32** %argv_len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argv_len.addr, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3097, metadata !DIExpression()), !dbg !3098
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3099
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !3100
  %1 = load i32*, i32** %argc.addr, align 8, !dbg !3101
  store i32 %call, i32* %1, align 4, !dbg !3102
  %2 = load i32*, i32** %argc.addr, align 8, !dbg !3103
  %3 = load i32, i32* %2, align 4, !dbg !3105
  %cmp = icmp eq i32 %3, 0, !dbg !3106
  br i1 %cmp, label %if.then, label %if.end, !dbg !3107

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3108
  call void @luaPushError(%struct.lua_State* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.101, i64 0, i64 0)), !dbg !3110
  store %struct.redisObject** null, %struct.redisObject*** %retval, align 8, !dbg !3111
  br label %return, !dbg !3111

if.end:                                           ; preds = %entry
  %5 = load i32, i32* @lua_argv_size, align 4, !dbg !3112
  %6 = load i32*, i32** %argc.addr, align 8, !dbg !3114
  %7 = load i32, i32* %6, align 4, !dbg !3115
  %cmp1 = icmp slt i32 %5, %7, !dbg !3116
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !3117

if.then2:                                         ; preds = %if.end
  %8 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !3118
  %9 = bitcast %struct.redisObject** %8 to i8*, !dbg !3118
  %10 = load i32*, i32** %argc.addr, align 8, !dbg !3120
  %11 = load i32, i32* %10, align 4, !dbg !3121
  %conv = sext i32 %11 to i64, !dbg !3121
  %mul = mul i64 8, %conv, !dbg !3122
  %call3 = call i8* @zrealloc(i8* %9, i64 %mul), !dbg !3123
  %12 = bitcast i8* %call3 to %struct.redisObject**, !dbg !3123
  store %struct.redisObject** %12, %struct.redisObject*** @lua_argv, align 8, !dbg !3124
  %13 = load i32*, i32** %argc.addr, align 8, !dbg !3125
  %14 = load i32, i32* %13, align 4, !dbg !3126
  store i32 %14, i32* @lua_argv_size, align 4, !dbg !3127
  br label %if.end4, !dbg !3128

if.end4:                                          ; preds = %if.then2, %if.end
  %15 = load i32, i32* @lua_argv_size, align 4, !dbg !3129
  %16 = load i32*, i32** %argv_len.addr, align 8, !dbg !3130
  store i32 %15, i32* %16, align 4, !dbg !3131
  store i32 0, i32* %j, align 4, !dbg !3132
  br label %for.cond, !dbg !3134

for.cond:                                         ; preds = %for.inc, %if.end4
  %17 = load i32, i32* %j, align 4, !dbg !3135
  %18 = load i32*, i32** %argc.addr, align 8, !dbg !3137
  %19 = load i32, i32* %18, align 4, !dbg !3138
  %cmp5 = icmp slt i32 %17, %19, !dbg !3139
  br i1 %cmp5, label %for.body, label %for.end, !dbg !3140

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %obj_s, metadata !3141, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.declare(metadata i64* %obj_len, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.declare(metadata [64 x i8]* %dbuf, metadata !3146, metadata !DIExpression()), !dbg !3150
  %20 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3151
  %21 = load i32, i32* %j, align 4, !dbg !3153
  %add = add nsw i32 %21, 1, !dbg !3154
  %call7 = call i32 @lua_type(%struct.lua_State* %20, i32 %add), !dbg !3155
  %cmp8 = icmp eq i32 %call7, 3, !dbg !3156
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !3157

if.then10:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata double* %num, metadata !3158, metadata !DIExpression()), !dbg !3160
  %22 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3161
  %23 = load i32, i32* %j, align 4, !dbg !3162
  %add11 = add nsw i32 %23, 1, !dbg !3163
  %call12 = call double @lua_tonumber(%struct.lua_State* %22, i32 %add11), !dbg !3164
  store double %call12, double* %num, align 8, !dbg !3160
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %dbuf, i64 0, i64 0, !dbg !3165
  %24 = load double, double* %num, align 8, !dbg !3166
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i64 0, i64 0), double %24) #8, !dbg !3167
  %conv14 = sext i32 %call13 to i64, !dbg !3167
  store i64 %conv14, i64* %obj_len, align 8, !dbg !3168
  %arraydecay15 = getelementptr inbounds [64 x i8], [64 x i8]* %dbuf, i64 0, i64 0, !dbg !3169
  store i8* %arraydecay15, i8** %obj_s, align 8, !dbg !3170
  br label %if.end22, !dbg !3171

if.else:                                          ; preds = %for.body
  %25 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3172
  %26 = load i32, i32* %j, align 4, !dbg !3174
  %add16 = add nsw i32 %26, 1, !dbg !3175
  %call17 = call i8* @lua_tolstring(%struct.lua_State* %25, i32 %add16, i64* %obj_len), !dbg !3176
  store i8* %call17, i8** %obj_s, align 8, !dbg !3177
  %27 = load i8*, i8** %obj_s, align 8, !dbg !3178
  %cmp18 = icmp eq i8* %27, null, !dbg !3180
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !3181

if.then20:                                        ; preds = %if.else
  br label %for.end, !dbg !3182

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  %28 = load i32, i32* %j, align 4, !dbg !3183
  %cmp23 = icmp slt i32 %28, 32, !dbg !3185
  br i1 %cmp23, label %land.lhs.true, label %if.else40, !dbg !3186

land.lhs.true:                                    ; preds = %if.end22
  %29 = load i32, i32* %j, align 4, !dbg !3187
  %idxprom = sext i32 %29 to i64, !dbg !3188
  %arrayidx = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom, !dbg !3188
  %30 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3188
  %tobool = icmp ne %struct.redisObject* %30, null, !dbg !3188
  br i1 %tobool, label %land.lhs.true25, label %if.else40, !dbg !3189

land.lhs.true25:                                  ; preds = %land.lhs.true
  %31 = load i32, i32* %j, align 4, !dbg !3190
  %idxprom26 = sext i32 %31 to i64, !dbg !3191
  %arrayidx27 = getelementptr inbounds [32 x i64], [32 x i64]* @lua_args_cached_objects_len, i64 0, i64 %idxprom26, !dbg !3191
  %32 = load i64, i64* %arrayidx27, align 8, !dbg !3191
  %33 = load i64, i64* %obj_len, align 8, !dbg !3192
  %cmp28 = icmp uge i64 %32, %33, !dbg !3193
  br i1 %cmp28, label %if.then30, label %if.else40, !dbg !3194

if.then30:                                        ; preds = %land.lhs.true25
  call void @llvm.dbg.declare(metadata i8** %s, metadata !3195, metadata !DIExpression()), !dbg !3197
  %34 = load i32, i32* %j, align 4, !dbg !3198
  %idxprom31 = sext i32 %34 to i64, !dbg !3199
  %arrayidx32 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom31, !dbg !3199
  %35 = load %struct.redisObject*, %struct.redisObject** %arrayidx32, align 8, !dbg !3199
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %35, i32 0, i32 2, !dbg !3200
  %36 = load i8*, i8** %ptr, align 8, !dbg !3200
  store i8* %36, i8** %s, align 8, !dbg !3197
  %37 = load i32, i32* %j, align 4, !dbg !3201
  %idxprom33 = sext i32 %37 to i64, !dbg !3202
  %arrayidx34 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom33, !dbg !3202
  %38 = load %struct.redisObject*, %struct.redisObject** %arrayidx34, align 8, !dbg !3202
  %39 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !3203
  %40 = load i32, i32* %j, align 4, !dbg !3204
  %idxprom35 = sext i32 %40 to i64, !dbg !3203
  %arrayidx36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %39, i64 %idxprom35, !dbg !3203
  store %struct.redisObject* %38, %struct.redisObject** %arrayidx36, align 8, !dbg !3205
  %41 = load i32, i32* %j, align 4, !dbg !3206
  %idxprom37 = sext i32 %41 to i64, !dbg !3207
  %arrayidx38 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @lua_args_cached_objects, i64 0, i64 %idxprom37, !dbg !3207
  store %struct.redisObject* null, %struct.redisObject** %arrayidx38, align 8, !dbg !3208
  %42 = load i8*, i8** %s, align 8, !dbg !3209
  %43 = load i8*, i8** %obj_s, align 8, !dbg !3210
  %44 = load i64, i64* %obj_len, align 8, !dbg !3211
  %add39 = add i64 %44, 1, !dbg !3212
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 %43, i64 %add39, i1 false), !dbg !3213
  %45 = load i8*, i8** %s, align 8, !dbg !3214
  %46 = load i64, i64* %obj_len, align 8, !dbg !3215
  call void @sdssetlen(i8* %45, i64 %46), !dbg !3216
  br label %if.end44, !dbg !3217

if.else40:                                        ; preds = %land.lhs.true25, %land.lhs.true, %if.end22
  %47 = load i8*, i8** %obj_s, align 8, !dbg !3218
  %48 = load i64, i64* %obj_len, align 8, !dbg !3220
  %call41 = call %struct.redisObject* @createStringObject(i8* %47, i64 %48), !dbg !3221
  %49 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !3222
  %50 = load i32, i32* %j, align 4, !dbg !3223
  %idxprom42 = sext i32 %50 to i64, !dbg !3222
  %arrayidx43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %49, i64 %idxprom42, !dbg !3222
  store %struct.redisObject* %call41, %struct.redisObject** %arrayidx43, align 8, !dbg !3224
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then30
  br label %for.inc, !dbg !3225

for.inc:                                          ; preds = %if.end44
  %51 = load i32, i32* %j, align 4, !dbg !3226
  %inc = add nsw i32 %51, 1, !dbg !3226
  store i32 %inc, i32* %j, align 4, !dbg !3226
  br label %for.cond, !dbg !3227, !llvm.loop !3228

for.end:                                          ; preds = %if.then20, %for.cond
  %52 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3230
  %53 = load i32*, i32** %argc.addr, align 8, !dbg !3230
  %54 = load i32, i32* %53, align 4, !dbg !3230
  %sub = sub nsw i32 0, %54, !dbg !3230
  %sub45 = sub nsw i32 %sub, 1, !dbg !3230
  call void @lua_settop(%struct.lua_State* %52, i32 %sub45), !dbg !3230
  %55 = load i32, i32* %j, align 4, !dbg !3231
  %56 = load i32*, i32** %argc.addr, align 8, !dbg !3233
  %57 = load i32, i32* %56, align 4, !dbg !3234
  %cmp46 = icmp ne i32 %55, %57, !dbg !3235
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !3236

if.then48:                                        ; preds = %for.end
  %58 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !3237
  %59 = load i32, i32* %j, align 4, !dbg !3239
  %60 = load i32, i32* @lua_argv_size, align 4, !dbg !3240
  call void @freeLuaRedisArgv(%struct.redisObject** %58, i32 %59, i32 %60), !dbg !3241
  %61 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3242
  call void @luaPushError(%struct.lua_State* %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.103, i64 0, i64 0)), !dbg !3243
  store %struct.redisObject** null, %struct.redisObject*** %retval, align 8, !dbg !3244
  br label %return, !dbg !3244

if.end49:                                         ; preds = %for.end
  %62 = load %struct.redisObject**, %struct.redisObject*** @lua_argv, align 8, !dbg !3245
  store %struct.redisObject** %62, %struct.redisObject*** %retval, align 8, !dbg !3246
  br label %return, !dbg !3246

return:                                           ; preds = %if.end49, %if.then48, %if.then
  %63 = load %struct.redisObject**, %struct.redisObject*** %retval, align 8, !dbg !3247
  ret %struct.redisObject** %63, !dbg !3247
}

declare dso_local i8* @sdscatsds(i8*, i8*) #2

declare dso_local void @scriptCall(%struct.scriptRunCtx*, i8**) #2

declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType(%struct.lua_State* %lua, i8* %reply) #0 !dbg !3248 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %reply.addr = alloca i8*, align 8
  %parser = alloca %struct.ReplyParser, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !3251, metadata !DIExpression()), !dbg !3252
  store i8* %reply, i8** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reply.addr, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.declare(metadata %struct.ReplyParser* %parser, metadata !3255, metadata !DIExpression()), !dbg !3257
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %parser, i32 0, i32 0, !dbg !3258
  %0 = load i8*, i8** %reply.addr, align 8, !dbg !3259
  store i8* %0, i8** %curr_location, align 8, !dbg !3258
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %parser, i32 0, i32 1, !dbg !3258
  %1 = bitcast %struct.ReplyParserCallbacks* %callbacks to i8*, !dbg !3260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.ReplyParserCallbacks* @DefaultLuaTypeParserCallbacks to i8*), i64 128, i1 false), !dbg !3260
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3261
  %3 = bitcast %struct.lua_State* %2 to i8*, !dbg !3261
  %call = call i32 @parseReply(%struct.ReplyParser* %parser, i8* %3), !dbg !3262
  ret void, !dbg !3263
}

declare dso_local void @ldbLogRedisReply(i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @freeClientArgv(%struct.client*) #2

declare dso_local i8* @zrealloc(i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal void @sdssetlen(i8* %s, i64 %newlen) #0 !dbg !3264 {
entry:
  %s.addr = alloca i8*, align 8
  %newlen.addr = alloca i64, align 8
  %flags = alloca i8, align 1
  %fp = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !3267, metadata !DIExpression()), !dbg !3268
  store i64 %newlen, i64* %newlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %newlen.addr, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !3271, metadata !DIExpression()), !dbg !3272
  %0 = load i8*, i8** %s.addr, align 8, !dbg !3273
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3273
  %1 = load i8, i8* %arrayidx, align 1, !dbg !3273
  store i8 %1, i8* %flags, align 1, !dbg !3272
  %2 = load i8, i8* %flags, align 1, !dbg !3274
  %conv = zext i8 %2 to i32, !dbg !3274
  %and = and i32 %conv, 7, !dbg !3275
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !3276

sw.bb:                                            ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %fp, metadata !3277, metadata !DIExpression()), !dbg !3280
  %3 = load i8*, i8** %s.addr, align 8, !dbg !3281
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !3282
  store i8* %add.ptr, i8** %fp, align 8, !dbg !3280
  %4 = load i64, i64* %newlen.addr, align 8, !dbg !3283
  %shl = shl i64 %4, 3, !dbg !3284
  %or = or i64 0, %shl, !dbg !3285
  %conv1 = trunc i64 %or to i8, !dbg !3286
  %5 = load i8*, i8** %fp, align 8, !dbg !3287
  store i8 %conv1, i8* %5, align 1, !dbg !3288
  br label %sw.epilog, !dbg !3289

sw.bb2:                                           ; preds = %entry
  %6 = load i64, i64* %newlen.addr, align 8, !dbg !3290
  %conv3 = trunc i64 %6 to i8, !dbg !3290
  %7 = load i8*, i8** %s.addr, align 8, !dbg !3291
  %add.ptr4 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !3291
  %8 = bitcast i8* %add.ptr4 to %struct.sdshdr8*, !dbg !3292
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %8, i32 0, i32 0, !dbg !3292
  store i8 %conv3, i8* %len, align 1, !dbg !3293
  br label %sw.epilog, !dbg !3294

sw.bb5:                                           ; preds = %entry
  %9 = load i64, i64* %newlen.addr, align 8, !dbg !3295
  %conv6 = trunc i64 %9 to i16, !dbg !3295
  %10 = load i8*, i8** %s.addr, align 8, !dbg !3296
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !3296
  %11 = bitcast i8* %add.ptr7 to %struct.sdshdr16*, !dbg !3297
  %len8 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %11, i32 0, i32 0, !dbg !3297
  store i16 %conv6, i16* %len8, align 1, !dbg !3298
  br label %sw.epilog, !dbg !3299

sw.bb9:                                           ; preds = %entry
  %12 = load i64, i64* %newlen.addr, align 8, !dbg !3300
  %conv10 = trunc i64 %12 to i32, !dbg !3300
  %13 = load i8*, i8** %s.addr, align 8, !dbg !3301
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !3301
  %14 = bitcast i8* %add.ptr11 to %struct.sdshdr32*, !dbg !3302
  %len12 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %14, i32 0, i32 0, !dbg !3302
  store i32 %conv10, i32* %len12, align 1, !dbg !3303
  br label %sw.epilog, !dbg !3304

sw.bb13:                                          ; preds = %entry
  %15 = load i64, i64* %newlen.addr, align 8, !dbg !3305
  %16 = load i8*, i8** %s.addr, align 8, !dbg !3306
  %add.ptr14 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !3306
  %17 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !3307
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %17, i32 0, i32 0, !dbg !3307
  store i64 %15, i64* %len15, align 1, !dbg !3308
  br label %sw.epilog, !dbg !3309

sw.epilog:                                        ; preds = %entry, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb2, %sw.bb
  ret void, !dbg !3310
}

declare dso_local %struct.redisObject* @createStringObject(i8*, i64) #2

declare dso_local i32 @parseReply(%struct.ReplyParser*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_NullArray(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !3311 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3314, metadata !DIExpression()), !dbg !3315
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3316, metadata !DIExpression()), !dbg !3317
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3318
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3319
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3320
  %tobool = icmp ne i8* %2, null, !dbg !3320
  br i1 %tobool, label %if.end, label %if.then, !dbg !3322

if.then:                                          ; preds = %entry
  br label %return, !dbg !3323

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3325, metadata !DIExpression()), !dbg !3326
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3327
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3327
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3326
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3328
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3330
  %tobool1 = icmp ne i32 %call, 0, !dbg !3330
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3331

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 278, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3332
  unreachable, !dbg !3332

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3334
  call void @lua_pushboolean(%struct.lua_State* %6, i32 0), !dbg !3335
  br label %return, !dbg !3336

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3336
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_NullBulkString(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !3337 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3338, metadata !DIExpression()), !dbg !3339
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3340, metadata !DIExpression()), !dbg !3341
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3342, metadata !DIExpression()), !dbg !3343
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3344
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3345
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3346
  %tobool = icmp ne i8* %2, null, !dbg !3346
  br i1 %tobool, label %if.end, label %if.then, !dbg !3348

if.then:                                          ; preds = %entry
  br label %return, !dbg !3349

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3351, metadata !DIExpression()), !dbg !3352
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3353
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3353
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3352
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3354
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3356
  %tobool1 = icmp ne i32 %call, 0, !dbg !3356
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3357

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 263, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3358
  unreachable, !dbg !3358

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3360
  call void @lua_pushboolean(%struct.lua_State* %6, i32 0), !dbg !3361
  br label %return, !dbg !3362

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3362
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_BulkString(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !3363 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3372, metadata !DIExpression()), !dbg !3373
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3374
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3375
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3376
  %tobool = icmp ne i8* %2, null, !dbg !3376
  br i1 %tobool, label %if.end, label %if.then, !dbg !3378

if.then:                                          ; preds = %entry
  br label %return, !dbg !3379

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3381, metadata !DIExpression()), !dbg !3382
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3383
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3383
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3382
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3384
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3386
  %tobool1 = icmp ne i32 %call, 0, !dbg !3386
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3387

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3388
  unreachable, !dbg !3388

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3390
  %7 = load i8*, i8** %str.addr, align 8, !dbg !3391
  %8 = load i64, i64* %len.addr, align 8, !dbg !3392
  call void @lua_pushlstring(%struct.lua_State* %6, i8* %7, i64 %8), !dbg !3393
  br label %return, !dbg !3394

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3394
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Error(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !3395 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  %err_msg = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3396, metadata !DIExpression()), !dbg !3397
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3398, metadata !DIExpression()), !dbg !3399
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3400, metadata !DIExpression()), !dbg !3401
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3402, metadata !DIExpression()), !dbg !3403
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3404, metadata !DIExpression()), !dbg !3405
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3406
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3407
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3408
  %tobool = icmp ne i8* %2, null, !dbg !3408
  br i1 %tobool, label %if.end, label %if.then, !dbg !3410

if.then:                                          ; preds = %entry
  br label %return, !dbg !3411

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3413, metadata !DIExpression()), !dbg !3414
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3415
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3415
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3414
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3416
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 3), !dbg !3418
  %tobool1 = icmp ne i32 %call, 0, !dbg !3418
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3419

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3420
  unreachable, !dbg !3420

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %err_msg, metadata !3422, metadata !DIExpression()), !dbg !3423
  %call4 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.105, i64 0, i64 0)), !dbg !3424
  %6 = load i8*, i8** %str.addr, align 8, !dbg !3425
  %7 = load i64, i64* %len.addr, align 8, !dbg !3426
  %call5 = call i8* @sdscatlen(i8* %call4, i8* %6, i64 %7), !dbg !3427
  store i8* %call5, i8** %err_msg, align 8, !dbg !3423
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3428
  %9 = load i8*, i8** %err_msg, align 8, !dbg !3429
  call void @luaPushErrorBuff(%struct.lua_State* %8, i8* %9), !dbg !3430
  %10 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3431
  call void @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0)), !dbg !3432
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3433
  call void @lua_pushboolean(%struct.lua_State* %11, i32 1), !dbg !3434
  %12 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3435
  call void @lua_settable(%struct.lua_State* %12, i32 -3), !dbg !3436
  br label %return, !dbg !3437

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3437
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Status(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !3438 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3439, metadata !DIExpression()), !dbg !3440
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3441, metadata !DIExpression()), !dbg !3442
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3443, metadata !DIExpression()), !dbg !3444
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3445, metadata !DIExpression()), !dbg !3446
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3447, metadata !DIExpression()), !dbg !3448
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3449
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3450
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3451
  %tobool = icmp ne i8* %2, null, !dbg !3451
  br i1 %tobool, label %if.end, label %if.then, !dbg !3453

if.then:                                          ; preds = %entry
  br label %return, !dbg !3454

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3456, metadata !DIExpression()), !dbg !3457
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3458
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3458
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3457
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3459
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 3), !dbg !3461
  %tobool1 = icmp ne i32 %call, 0, !dbg !3461
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3462

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 311, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3463
  unreachable, !dbg !3463

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3465
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 0), !dbg !3465
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3466
  call void @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0)), !dbg !3467
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3468
  %9 = load i8*, i8** %str.addr, align 8, !dbg !3469
  %10 = load i64, i64* %len.addr, align 8, !dbg !3470
  call void @lua_pushlstring(%struct.lua_State* %8, i8* %9, i64 %10), !dbg !3471
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3472
  call void @lua_settable(%struct.lua_State* %11, i32 -3), !dbg !3473
  br label %return, !dbg !3474

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3474
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Int(i8* %ctx, i64 %val, i8* %proto, i64 %proto_len) #0 !dbg !3475 {
entry:
  %ctx.addr = alloca i8*, align 8
  %val.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3476, metadata !DIExpression()), !dbg !3477
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3484
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3485
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3486
  %tobool = icmp ne i8* %2, null, !dbg !3486
  br i1 %tobool, label %if.end, label %if.then, !dbg !3488

if.then:                                          ; preds = %entry
  br label %return, !dbg !3489

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3491, metadata !DIExpression()), !dbg !3492
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3493
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3493
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3492
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3494
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3496
  %tobool1 = icmp ne i32 %call, 0, !dbg !3496
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3497

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3498
  unreachable, !dbg !3498

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3500
  %7 = load i64, i64* %val.addr, align 8, !dbg !3501
  %conv = sitofp i64 %7 to double, !dbg !3502
  call void @lua_pushnumber(%struct.lua_State* %6, double %conv), !dbg !3503
  br label %return, !dbg !3504

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3504
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Array(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !3505 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %j = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !3506, metadata !DIExpression()), !dbg !3507
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3508, metadata !DIExpression()), !dbg !3509
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3510, metadata !DIExpression()), !dbg !3511
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3512, metadata !DIExpression()), !dbg !3513
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3514
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3515, metadata !DIExpression()), !dbg !3516
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !3517
  %2 = bitcast i8* %1 to %struct.lua_State*, !dbg !3517
  store %struct.lua_State* %2, %struct.lua_State** %lua, align 8, !dbg !3516
  %3 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3518
  %tobool = icmp ne %struct.lua_State* %3, null, !dbg !3518
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3520

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3521
  %call = call i32 @lua_checkstack(%struct.lua_State* %4, i32 2), !dbg !3524
  %tobool1 = icmp ne i32 %call, 0, !dbg !3524
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3525

if.then2:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 401, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3526
  unreachable, !dbg !3526

if.end:                                           ; preds = %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3528
  call void @lua_createtable(%struct.lua_State* %5, i32 0, i32 0), !dbg !3528
  br label %if.end3, !dbg !3529

if.end3:                                          ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata i64* %j, metadata !3530, metadata !DIExpression()), !dbg !3532
  store i64 0, i64* %j, align 8, !dbg !3532
  br label %for.cond, !dbg !3533

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i64, i64* %j, align 8, !dbg !3534
  %7 = load i64, i64* %len.addr, align 8, !dbg !3536
  %cmp = icmp ult i64 %6, %7, !dbg !3537
  br i1 %cmp, label %for.body, label %for.end, !dbg !3538

for.body:                                         ; preds = %for.cond
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3539
  %tobool4 = icmp ne %struct.lua_State* %8, null, !dbg !3539
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3542

if.then5:                                         ; preds = %for.body
  %9 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3543
  %10 = load i64, i64* %j, align 8, !dbg !3544
  %add = add i64 %10, 1, !dbg !3545
  %conv = uitofp i64 %add to double, !dbg !3544
  call void @lua_pushnumber(%struct.lua_State* %9, double %conv), !dbg !3546
  br label %if.end6, !dbg !3546

if.end6:                                          ; preds = %if.then5, %for.body
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3547
  %12 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3548
  %13 = bitcast %struct.lua_State* %12 to i8*, !dbg !3548
  %call7 = call i32 @parseReply(%struct.ReplyParser* %11, i8* %13), !dbg !3549
  %14 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3550
  %tobool8 = icmp ne %struct.lua_State* %14, null, !dbg !3550
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3552

if.then9:                                         ; preds = %if.end6
  %15 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3553
  call void @lua_settable(%struct.lua_State* %15, i32 -3), !dbg !3554
  br label %if.end10, !dbg !3554

if.end10:                                         ; preds = %if.then9, %if.end6
  br label %for.inc, !dbg !3555

for.inc:                                          ; preds = %if.end10
  %16 = load i64, i64* %j, align 8, !dbg !3556
  %inc = add i64 %16, 1, !dbg !3556
  store i64 %inc, i64* %j, align 8, !dbg !3556
  br label %for.cond, !dbg !3557, !llvm.loop !3558

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3560
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Set(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !3561 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %j = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !3562, metadata !DIExpression()), !dbg !3563
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3566, metadata !DIExpression()), !dbg !3567
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3568, metadata !DIExpression()), !dbg !3569
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3570
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3571, metadata !DIExpression()), !dbg !3572
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !3573
  %2 = bitcast i8* %1 to %struct.lua_State*, !dbg !3573
  store %struct.lua_State* %2, %struct.lua_State** %lua, align 8, !dbg !3572
  %3 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3574
  %tobool = icmp ne %struct.lua_State* %3, null, !dbg !3574
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3576

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3577
  %call = call i32 @lua_checkstack(%struct.lua_State* %4, i32 3), !dbg !3580
  %tobool1 = icmp ne i32 %call, 0, !dbg !3580
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3581

if.then2:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3582
  unreachable, !dbg !3582

if.end:                                           ; preds = %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3584
  call void @lua_createtable(%struct.lua_State* %5, i32 0, i32 0), !dbg !3584
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3585
  call void @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i64 0, i64 0)), !dbg !3586
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3587
  call void @lua_createtable(%struct.lua_State* %7, i32 0, i32 0), !dbg !3587
  br label %if.end3, !dbg !3588

if.end3:                                          ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata i64* %j, metadata !3589, metadata !DIExpression()), !dbg !3591
  store i64 0, i64* %j, align 8, !dbg !3591
  br label %for.cond, !dbg !3592

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i64, i64* %j, align 8, !dbg !3593
  %9 = load i64, i64* %len.addr, align 8, !dbg !3595
  %cmp = icmp ult i64 %8, %9, !dbg !3596
  br i1 %cmp, label %for.body, label %for.end, !dbg !3597

for.body:                                         ; preds = %for.cond
  %10 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3598
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3600
  %12 = bitcast %struct.lua_State* %11 to i8*, !dbg !3600
  %call4 = call i32 @parseReply(%struct.ReplyParser* %10, i8* %12), !dbg !3601
  %13 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3602
  %tobool5 = icmp ne %struct.lua_State* %13, null, !dbg !3602
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !3604

if.then6:                                         ; preds = %for.body
  %14 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3605
  %call7 = call i32 @lua_checkstack(%struct.lua_State* %14, i32 1), !dbg !3608
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3608
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3609

if.then9:                                         ; preds = %if.then6
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 384, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3610
  unreachable, !dbg !3610

if.end10:                                         ; preds = %if.then6
  %15 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3612
  call void @lua_pushboolean(%struct.lua_State* %15, i32 1), !dbg !3613
  %16 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3614
  call void @lua_settable(%struct.lua_State* %16, i32 -3), !dbg !3615
  br label %if.end11, !dbg !3616

if.end11:                                         ; preds = %if.end10, %for.body
  br label %for.inc, !dbg !3617

for.inc:                                          ; preds = %if.end11
  %17 = load i64, i64* %j, align 8, !dbg !3618
  %inc = add i64 %17, 1, !dbg !3618
  store i64 %inc, i64* %j, align 8, !dbg !3618
  br label %for.cond, !dbg !3619, !llvm.loop !3620

for.end:                                          ; preds = %for.cond
  %18 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3622
  %tobool12 = icmp ne %struct.lua_State* %18, null, !dbg !3622
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3624

if.then13:                                        ; preds = %for.end
  %19 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3625
  call void @lua_settable(%struct.lua_State* %19, i32 -3), !dbg !3626
  br label %if.end14, !dbg !3626

if.end14:                                         ; preds = %if.then13, %for.end
  ret void, !dbg !3627
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Map(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !3628 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %j = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !3629, metadata !DIExpression()), !dbg !3630
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3631, metadata !DIExpression()), !dbg !3632
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3633, metadata !DIExpression()), !dbg !3634
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3637
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3638, metadata !DIExpression()), !dbg !3639
  %1 = load i8*, i8** %ctx.addr, align 8, !dbg !3640
  %2 = bitcast i8* %1 to %struct.lua_State*, !dbg !3640
  store %struct.lua_State* %2, %struct.lua_State** %lua, align 8, !dbg !3639
  %3 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3641
  %tobool = icmp ne %struct.lua_State* %3, null, !dbg !3641
  br i1 %tobool, label %if.then, label %if.end3, !dbg !3643

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3644
  %call = call i32 @lua_checkstack(%struct.lua_State* %4, i32 3), !dbg !3647
  %tobool1 = icmp ne i32 %call, 0, !dbg !3647
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3648

if.then2:                                         ; preds = %if.then
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3649
  unreachable, !dbg !3649

if.end:                                           ; preds = %if.then
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3651
  call void @lua_createtable(%struct.lua_State* %5, i32 0, i32 0), !dbg !3651
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3652
  call void @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.108, i64 0, i64 0)), !dbg !3653
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3654
  call void @lua_createtable(%struct.lua_State* %7, i32 0, i32 0), !dbg !3654
  br label %if.end3, !dbg !3655

if.end3:                                          ; preds = %if.end, %entry
  call void @llvm.dbg.declare(metadata i64* %j, metadata !3656, metadata !DIExpression()), !dbg !3658
  store i64 0, i64* %j, align 8, !dbg !3658
  br label %for.cond, !dbg !3659

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i64, i64* %j, align 8, !dbg !3660
  %9 = load i64, i64* %len.addr, align 8, !dbg !3662
  %cmp = icmp ult i64 %8, %9, !dbg !3663
  br i1 %cmp, label %for.body, label %for.end, !dbg !3664

for.body:                                         ; preds = %for.cond
  %10 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3665
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3667
  %12 = bitcast %struct.lua_State* %11 to i8*, !dbg !3667
  %call4 = call i32 @parseReply(%struct.ReplyParser* %10, i8* %12), !dbg !3668
  %13 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3669
  %14 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3670
  %15 = bitcast %struct.lua_State* %14 to i8*, !dbg !3670
  %call5 = call i32 @parseReply(%struct.ReplyParser* %13, i8* %15), !dbg !3671
  %16 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3672
  %tobool6 = icmp ne %struct.lua_State* %16, null, !dbg !3672
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3674

if.then7:                                         ; preds = %for.body
  %17 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3675
  call void @lua_settable(%struct.lua_State* %17, i32 -3), !dbg !3676
  br label %if.end8, !dbg !3676

if.end8:                                          ; preds = %if.then7, %for.body
  br label %for.inc, !dbg !3677

for.inc:                                          ; preds = %if.end8
  %18 = load i64, i64* %j, align 8, !dbg !3678
  %inc = add i64 %18, 1, !dbg !3678
  store i64 %inc, i64* %j, align 8, !dbg !3678
  br label %for.cond, !dbg !3679, !llvm.loop !3680

for.end:                                          ; preds = %for.cond
  %19 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3682
  %tobool9 = icmp ne %struct.lua_State* %19, null, !dbg !3682
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3684

if.then10:                                        ; preds = %for.end
  %20 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3685
  call void @lua_settable(%struct.lua_State* %20, i32 -3), !dbg !3686
  br label %if.end11, !dbg !3686

if.end11:                                         ; preds = %if.then10, %for.end
  ret void, !dbg !3687
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Bool(i8* %ctx, i32 %val, i8* %proto, i64 %proto_len) #0 !dbg !3688 {
entry:
  %ctx.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3689, metadata !DIExpression()), !dbg !3690
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3691, metadata !DIExpression()), !dbg !3692
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3693, metadata !DIExpression()), !dbg !3694
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3695, metadata !DIExpression()), !dbg !3696
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3697
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3698
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3699
  %tobool = icmp ne i8* %2, null, !dbg !3699
  br i1 %tobool, label %if.end, label %if.then, !dbg !3701

if.then:                                          ; preds = %entry
  br label %return, !dbg !3702

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3704, metadata !DIExpression()), !dbg !3705
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3706
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3706
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3705
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3707
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3709
  %tobool1 = icmp ne i32 %call, 0, !dbg !3709
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3710

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 499, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3711
  unreachable, !dbg !3711

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3713
  %7 = load i32, i32* %val.addr, align 4, !dbg !3714
  call void @lua_pushboolean(%struct.lua_State* %6, i32 %7), !dbg !3715
  br label %return, !dbg !3716

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3716
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Double(i8* %ctx, double %d, i8* %proto, i64 %proto_len) #0 !dbg !3717 {
entry:
  %ctx.addr = alloca i8*, align 8
  %d.addr = alloca double, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3718, metadata !DIExpression()), !dbg !3719
  store double %d, double* %d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !3720, metadata !DIExpression()), !dbg !3721
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3722, metadata !DIExpression()), !dbg !3723
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3724, metadata !DIExpression()), !dbg !3725
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3726
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3727
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3728
  %tobool = icmp ne i8* %2, null, !dbg !3728
  br i1 %tobool, label %if.end, label %if.then, !dbg !3730

if.then:                                          ; preds = %entry
  br label %return, !dbg !3731

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3733, metadata !DIExpression()), !dbg !3734
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3735
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3735
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3734
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3736
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 3), !dbg !3738
  %tobool1 = icmp ne i32 %call, 0, !dbg !3738
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3739

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3740
  unreachable, !dbg !3740

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3742
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 0), !dbg !3742
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3743
  call void @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.109, i64 0, i64 0)), !dbg !3744
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3745
  %9 = load double, double* %d.addr, align 8, !dbg !3746
  call void @lua_pushnumber(%struct.lua_State* %8, double %9), !dbg !3747
  %10 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3748
  call void @lua_settable(%struct.lua_State* %10, i32 -3), !dbg !3749
  br label %return, !dbg !3750

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3750
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_BigNumber(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !3751 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3754, metadata !DIExpression()), !dbg !3755
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3756, metadata !DIExpression()), !dbg !3757
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3758, metadata !DIExpression()), !dbg !3759
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3760, metadata !DIExpression()), !dbg !3761
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3762
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3763
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3764
  %tobool = icmp ne i8* %2, null, !dbg !3764
  br i1 %tobool, label %if.end, label %if.then, !dbg !3766

if.then:                                          ; preds = %entry
  br label %return, !dbg !3767

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3769, metadata !DIExpression()), !dbg !3770
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3771
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3771
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3770
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3772
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 3), !dbg !3774
  %tobool1 = icmp ne i32 %call, 0, !dbg !3774
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3775

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 464, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3776
  unreachable, !dbg !3776

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3778
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 0), !dbg !3778
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3779
  call void @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i64 0, i64 0)), !dbg !3780
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3781
  %9 = load i8*, i8** %str.addr, align 8, !dbg !3782
  %10 = load i64, i64* %len.addr, align 8, !dbg !3783
  call void @lua_pushlstring(%struct.lua_State* %8, i8* %9, i64 %10), !dbg !3784
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3785
  call void @lua_settable(%struct.lua_State* %11, i32 -3), !dbg !3786
  br label %return, !dbg !3787

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3787
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_VerbatimString(i8* %ctx, i8* %format, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !3788 {
entry:
  %ctx.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3789, metadata !DIExpression()), !dbg !3790
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !3793, metadata !DIExpression()), !dbg !3794
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3795, metadata !DIExpression()), !dbg !3796
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3797, metadata !DIExpression()), !dbg !3798
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3799, metadata !DIExpression()), !dbg !3800
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3801
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3802
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3803
  %tobool = icmp ne i8* %2, null, !dbg !3803
  br i1 %tobool, label %if.end, label %if.then, !dbg !3805

if.then:                                          ; preds = %entry
  br label %return, !dbg !3806

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3808, metadata !DIExpression()), !dbg !3809
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3810
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3810
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3809
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3811
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 5), !dbg !3813
  %tobool1 = icmp ne i32 %call, 0, !dbg !3813
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3814

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 439, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3815
  unreachable, !dbg !3815

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3817
  call void @lua_createtable(%struct.lua_State* %6, i32 0, i32 0), !dbg !3817
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3818
  call void @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0)), !dbg !3819
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3820
  call void @lua_createtable(%struct.lua_State* %8, i32 0, i32 0), !dbg !3820
  %9 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3821
  call void @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0)), !dbg !3822
  %10 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3823
  %11 = load i8*, i8** %str.addr, align 8, !dbg !3824
  %12 = load i64, i64* %len.addr, align 8, !dbg !3825
  call void @lua_pushlstring(%struct.lua_State* %10, i8* %11, i64 %12), !dbg !3826
  %13 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3827
  call void @lua_settable(%struct.lua_State* %13, i32 -3), !dbg !3828
  %14 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3829
  call void @lua_pushstring(%struct.lua_State* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0)), !dbg !3830
  %15 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3831
  %16 = load i8*, i8** %format.addr, align 8, !dbg !3832
  call void @lua_pushlstring(%struct.lua_State* %15, i8* %16, i64 3), !dbg !3833
  %17 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3834
  call void @lua_settable(%struct.lua_State* %17, i32 -3), !dbg !3835
  %18 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3836
  call void @lua_settable(%struct.lua_State* %18, i32 -3), !dbg !3837
  br label %return, !dbg !3838

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3838
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Attribute(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !3839 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %j = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3844, metadata !DIExpression()), !dbg !3845
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3846, metadata !DIExpression()), !dbg !3847
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3848
  call void @llvm.dbg.declare(metadata i64* %j, metadata !3849, metadata !DIExpression()), !dbg !3851
  store i64 0, i64* %j, align 8, !dbg !3851
  br label %for.cond, !dbg !3852

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %j, align 8, !dbg !3853
  %2 = load i64, i64* %len.addr, align 8, !dbg !3855
  %cmp = icmp ult i64 %1, %2, !dbg !3856
  br i1 %cmp, label %for.body, label %for.end, !dbg !3857

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3858
  %call = call i32 @parseReply(%struct.ReplyParser* %3, i8* null), !dbg !3860
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3861
  %call1 = call i32 @parseReply(%struct.ReplyParser* %4, i8* null), !dbg !3862
  br label %for.inc, !dbg !3863

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %j, align 8, !dbg !3864
  %inc = add i64 %5, 1, !dbg !3864
  store i64 %inc, i64* %j, align 8, !dbg !3864
  br label %for.cond, !dbg !3865, !llvm.loop !3866

for.end:                                          ; preds = %for.cond
  %6 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !3868
  %7 = load i8*, i8** %ctx.addr, align 8, !dbg !3869
  %call2 = call i32 @parseReply(%struct.ReplyParser* %6, i8* %7), !dbg !3870
  ret void, !dbg !3871
}

; Function Attrs: noinline nounwind uwtable
define internal void @redisProtocolToLuaType_Null(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !3872 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %lua = alloca %struct.lua_State*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !3873, metadata !DIExpression()), !dbg !3874
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !3875, metadata !DIExpression()), !dbg !3876
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !3877, metadata !DIExpression()), !dbg !3878
  %0 = load i8*, i8** %proto.addr, align 8, !dbg !3879
  %1 = load i64, i64* %proto_len.addr, align 8, !dbg !3880
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3881
  %tobool = icmp ne i8* %2, null, !dbg !3881
  br i1 %tobool, label %if.end, label %if.then, !dbg !3883

if.then:                                          ; preds = %entry
  br label %return, !dbg !3884

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !3886, metadata !DIExpression()), !dbg !3887
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3888
  %4 = bitcast i8* %3 to %struct.lua_State*, !dbg !3888
  store %struct.lua_State* %4, %struct.lua_State** %lua, align 8, !dbg !3887
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3889
  %call = call i32 @lua_checkstack(%struct.lua_State* %5, i32 1), !dbg !3891
  %tobool1 = icmp ne i32 %call, 0, !dbg !3891
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3892

if.then2:                                         ; preds = %if.end
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 483, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.104, i64 0, i64 0)), !dbg !3893
  unreachable, !dbg !3893

if.end3:                                          ; preds = %if.end
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !3895
  call void @lua_pushnil(%struct.lua_State* %6), !dbg !3896
  br label %return, !dbg !3897

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !3897
}

declare dso_local void @_serverPanic(i8*, i32, i8*, ...) #2

declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) #2

declare dso_local i32 @scriptSetResp(%struct.scriptRunCtx*, i32) #2

declare dso_local void @sha1hex(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %lua, i8* %field) #0 !dbg !3898 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %field.addr = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !3901, metadata !DIExpression()), !dbg !3902
  store i8* %field, i8** %field.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %field.addr, metadata !3903, metadata !DIExpression()), !dbg !3904
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3905
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !3907
  %cmp = icmp ne i32 %call, 1, !dbg !3908
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3909

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3910
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 -1), !dbg !3911
  %cmp2 = icmp ne i32 %call1, 4, !dbg !3912
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3913

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3914
  call void @luaPushError(%struct.lua_State* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.117, i64 0, i64 0)), !dbg !3916
  store i32 1, i32* %retval, align 4, !dbg !3917
  br label %return, !dbg !3917

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3918
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 0), !dbg !3918
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3919
  %5 = load i8*, i8** %field.addr, align 8, !dbg !3920
  call void @lua_pushstring(%struct.lua_State* %4, i8* %5), !dbg !3921
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3922
  call void @lua_pushvalue(%struct.lua_State* %6, i32 -3), !dbg !3923
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !3924
  call void @lua_settable(%struct.lua_State* %7, i32 -3), !dbg !3925
  store i32 1, i32* %retval, align 4, !dbg !3926
  br label %return, !dbg !3926

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !3927
  ret i32 %8, !dbg !3927
}

declare dso_local i32 @scriptSetRepl(%struct.scriptRunCtx*, i32) #2

declare dso_local %struct.redisCommand* @lookupCommand(%struct.redisObject**, i32) #2

declare dso_local i32 @ACLCheckAllUserCommandPerm(%struct.user*, %struct.redisCommand*, %struct.redisObject**, i32, i32*) #2

declare dso_local i32 @redisLrand48(...) #2

declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

declare dso_local void @redisSrand48(i32) #2

declare dso_local i32 @scriptInterrupt(%struct.scriptRunCtx*) #2

declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) #2

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #2

declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) #2

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #2

declare dso_local void @addReplyBool(%struct.client*, i32) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

declare dso_local void @lua_rawget(%struct.lua_State*, i32) #2

declare dso_local void @addReplyErrorFormatEx(%struct.client*, i32, i8*, ...) #2

declare dso_local i8* @sdsmapchars(i8*, i8*, i8*, i64) #2

declare dso_local void @addReplyStatusLength(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyDouble(%struct.client*, double) #2

declare dso_local void @addReplyBigNum(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyVerbatim(%struct.client*, i8*, i64, i8*) #2

declare dso_local i8* @addReplyDeferredLen(%struct.client*) #2

declare dso_local void @setDeferredMapLen(%struct.client*, i8*, i64) #2

declare dso_local void @setDeferredSetLen(%struct.client*, i8*, i64) #2

declare dso_local void @setDeferredArrayLen(%struct.client*, i8*, i64) #2

declare dso_local void @addReplyNull(%struct.client*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!831, !832, !833, !834, !835}
!llvm.ident = !{!836}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lua_args_cached_objects", scope: !2, file: !3, line: 793, type: !830, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !59, globals: !116, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "script_lua.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!59 = !{!60, !61, !78, !88, !97, !107, !108, !110, !111, !112, !114, !115}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !63, line: 51, size: 24, elements: !64)
!63 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!64 = !{!65, !71, !72, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !62, file: !63, line: 52, baseType: !66, size: 8)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !67, line: 24, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !69, line: 38, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !63, line: 53, baseType: !66, size: 8, offset: 8)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !63, line: 54, baseType: !70, size: 8, offset: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !62, file: !63, line: 55, baseType: !74, offset: 24)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, elements: !76)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!76 = !{!77}
!77 = !DISubrange(count: -1)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !63, line: 57, size: 40, elements: !80)
!80 = !{!81, !85, !86, !87}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !79, file: !63, line: 58, baseType: !82, size: 16)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !67, line: 25, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !69, line: 40, baseType: !84)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !79, file: !63, line: 59, baseType: !82, size: 16, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !63, line: 60, baseType: !70, size: 8, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !79, file: !63, line: 61, baseType: !74, offset: 40)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !63, line: 63, size: 72, elements: !90)
!90 = !{!91, !94, !95, !96}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !89, file: !63, line: 64, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !67, line: 26, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !69, line: 42, baseType: !7)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !89, file: !63, line: 65, baseType: !92, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !63, line: 66, baseType: !70, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !89, file: !63, line: 67, baseType: !74, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !63, line: 69, size: 136, elements: !99)
!99 = !{!100, !104, !105, !106}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !98, file: !63, line: 70, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !67, line: 27, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !69, line: 45, baseType: !103)
!103 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !98, file: !63, line: 71, baseType: !101, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !63, line: 72, baseType: !70, size: 8, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !98, file: !63, line: 73, baseType: !74, offset: 136)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !103)
!109 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!110 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !113, line: 99, baseType: !110)
!113 = !DIFile(filename: "../deps/lua/src/lua.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!116 = !{!117, !0, !738, !743, !745, !747, !753, !758, !763, !768, !771, !773, !776, !781}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "gc_count", scope: !119, file: !3, line: 1691, type: !264, isLocal: true, isDefinition: true)
!119 = distinct !DISubprogram(name: "luaCallFunction", scope: !3, file: !3, line: 1634, type: !120, scopeLine: 1634, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !734, !425, !108, !425, !108, !114}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptRunCtx", file: !124, line: 68, baseType: !125)
!124 = !DIFile(filename: "./script.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptRunCtx", file: !124, line: 70, size: 384, elements: !126)
!126 = !{!127, !130, !729, !730, !731, !732, !733}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "funcname", scope: !125, file: !124, line: 71, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !125, file: !124, line: 72, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !16, line: 1199, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !16, line: 1089, size: 5952, elements: !134)
!134 = !{!135, !136, !137, !282, !283, !409, !419, !421, !422, !423, !424, !426, !427, !428, !429, !430, !581, !582, !583, !593, !594, !595, !596, !597, !599, !600, !601, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !631, !632, !633, !634, !635, !653, !654, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !690, !691, !692, !693, !712, !713, !714, !715, !722, !723, !724, !725, !726, !727, !728}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !133, file: !16, line: 1090, baseType: !101, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !16, line: 1091, baseType: !101, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !133, file: !16, line: 1092, baseType: !138, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !6, line: 40, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !6, line: 77, size: 512, elements: !141)
!141 = !{!142, !271, !273, !275, !276, !277, !278, !279, !280, !281}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !6, line: 78, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !6, line: 75, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !6, line: 59, size: 960, elements: !146)
!146 = !{!147, !209, !218, !224, !235, !239, !240, !244, !248, !249, !253, !257, !265, !266, !267}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !145, file: !6, line: 60, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151, !114, !60, !114}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !153, line: 99, size: 640, elements: !154)
!153 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!154 = !{!155, !156, !157, !158, !169, !176, !200, !201, !202, !207, !208}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !152, file: !153, line: 100, baseType: !114, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !152, file: !153, line: 101, baseType: !114, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !152, file: !153, line: 102, baseType: !115, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !152, file: !153, line: 103, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !153, line: 77, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !153, line: 72, size: 256, elements: !162)
!162 = !{!163, !164, !167, !168}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !161, file: !153, line: 73, baseType: !114, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !161, file: !153, line: 74, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !153, line: 66, baseType: !149)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !161, file: !153, line: 75, baseType: !165, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !161, file: !153, line: 76, baseType: !60, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !152, file: !153, line: 104, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !153, line: 96, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !153, line: 93, size: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !172, file: !153, line: 94, baseType: !114, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !172, file: !153, line: 95, baseType: !114, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !152, file: !153, line: 105, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !153, line: 90, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !153, line: 80, size: 512, elements: !180)
!180 = !{!181, !182, !185, !190, !195, !196, !198, !199}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !179, file: !153, line: 81, baseType: !115, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !179, file: !153, line: 82, baseType: !183, size: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !184, line: 22, baseType: !101)
!184 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !179, file: !153, line: 83, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !153, line: 67, baseType: !188)
!188 = !DISubroutineType(types: !189)
!189 = !{!114, !151, !115, !60}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !179, file: !153, line: 84, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !153, line: 68, baseType: !193)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !151, !60}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !179, file: !153, line: 85, baseType: !60, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !179, file: !153, line: 86, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !153, line: 87, baseType: !197, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !179, file: !153, line: 88, baseType: !114, size: 32, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !152, file: !153, line: 106, baseType: !114, size: 32, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !152, file: !153, line: 107, baseType: !60, size: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !152, file: !153, line: 108, baseType: !203, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !153, line: 69, baseType: !205)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !151}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !152, file: !153, line: 109, baseType: !203, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !153, line: 110, baseType: !114, size: 32, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !145, file: !6, line: 61, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!114, !213, !128, !114, !128, !214}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !6, line: 57, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !213}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !145, file: !6, line: 62, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!114, !213, !222, !108}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !145, file: !6, line: 63, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!114, !213, !228, !114}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !231, line: 26, size: 128, elements: !232)
!231 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !230, file: !231, line: 28, baseType: !60, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !230, file: !231, line: 29, baseType: !108, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !145, file: !6, line: 64, baseType: !236, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!114, !213, !60, !108}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !145, file: !6, line: 65, baseType: !215, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !145, file: !6, line: 66, baseType: !241, size: 64, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!114, !213, !214}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !145, file: !6, line: 67, baseType: !245, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!114, !213, !214, !114}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !145, file: !6, line: 68, baseType: !241, size: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !145, file: !6, line: 69, baseType: !250, size: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!128, !213}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !145, file: !6, line: 70, baseType: !254, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!114, !213, !128, !114, !115}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !145, file: !6, line: 71, baseType: !258, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !213, !107, !261, !115}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !262, line: 108, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !69, line: 194, baseType: !264)
!264 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !145, file: !6, line: 72, baseType: !258, size: 64, offset: 768)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !145, file: !6, line: 73, baseType: !258, size: 64, offset: 832)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !145, file: !6, line: 74, baseType: !268, size: 64, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!114, !213}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !140, file: !6, line: 79, baseType: !272, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !6, line: 49, baseType: !5)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !6, line: 80, baseType: !274, size: 16, offset: 96)
!274 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !140, file: !6, line: 81, baseType: !274, size: 16, offset: 112)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !140, file: !6, line: 82, baseType: !114, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !140, file: !6, line: 83, baseType: !60, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !140, file: !6, line: 84, baseType: !214, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !140, file: !6, line: 85, baseType: !214, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !140, file: !6, line: 86, baseType: !214, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !140, file: !6, line: 87, baseType: !114, size: 32, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !133, file: !16, line: 1093, baseType: !114, size: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !133, file: !16, line: 1094, baseType: !284, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !16, line: 933, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !16, line: 922, size: 640, elements: !287)
!287 = !{!288, !358, !359, !360, !361, !362, !363, !364, !365, !394}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !286, file: !16, line: 923, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !291, line: 61, baseType: !292)
!291 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !291, line: 79, size: 448, elements: !293)
!293 = !{!294, !325, !349, !351, !352, !355}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !291, line: 80, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !291, line: 74, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !291, line: 63, size: 512, elements: !298)
!298 = !{!299, !303, !307, !308, !312, !316, !317, !321}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !297, file: !291, line: 64, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!101, !222}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !297, file: !291, line: 65, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!60, !289, !222}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !297, file: !291, line: 66, baseType: !304, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !297, file: !291, line: 67, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!114, !289, !222, !222}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !297, file: !291, line: 68, baseType: !313, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !289, !60}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !297, file: !291, line: 69, baseType: !313, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !297, file: !291, line: 70, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!114, !108, !110}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !297, file: !291, line: 73, baseType: !322, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!108, !289}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !292, file: !291, line: 82, baseType: !326, size: 128, offset: 64)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 128, elements: !347)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !291, line: 59, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !291, line: 47, size: 192, elements: !331)
!331 = !{!332, !333, !343, !345}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !330, file: !291, line: 48, baseType: !60, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !330, file: !291, line: 54, baseType: !334, size: 64, offset: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !291, line: 49, size: 64, elements: !335)
!335 = !{!336, !337, !338, !342}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !291, line: 50, baseType: !60, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !334, file: !291, line: 51, baseType: !101, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !334, file: !291, line: 52, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !340, line: 27, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !69, line: 44, baseType: !264)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !334, file: !291, line: 53, baseType: !110, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !291, line: 55, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !330, file: !291, line: 56, baseType: !346, offset: 192)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !76)
!347 = !{!348}
!348 = !DISubrange(count: 2)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !292, file: !291, line: 83, baseType: !350, size: 128, offset: 192)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !347)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !292, file: !291, line: 85, baseType: !264, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !292, file: !291, line: 88, baseType: !353, size: 16, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !340, line: 25, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !69, line: 39, baseType: !274)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !292, file: !291, line: 89, baseType: !356, size: 16, offset: 400)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 16, elements: !347)
!357 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !286, file: !16, line: 924, baseType: !289, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !286, file: !16, line: 925, baseType: !289, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !286, file: !16, line: 926, baseType: !289, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !286, file: !16, line: 927, baseType: !289, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !286, file: !16, line: 928, baseType: !114, size: 32, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !286, file: !16, line: 929, baseType: !115, size: 64, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !286, file: !16, line: 930, baseType: !103, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !286, file: !16, line: 931, baseType: !366, size: 64, offset: 512)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !368, line: 54, baseType: !369)
!368 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !368, line: 47, size: 384, elements: !370)
!370 = !{!371, !380, !381, !385, !389, !393}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !369, file: !368, line: 48, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !368, line: 40, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !368, line: 36, size: 192, elements: !375)
!375 = !{!376, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !374, file: !368, line: 37, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !368, line: 38, baseType: !377, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !368, line: 39, baseType: !60, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !369, file: !368, line: 49, baseType: !372, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !369, file: !368, line: 50, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!60, !60}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !369, file: !368, line: 51, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !60}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !369, file: !368, line: 52, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!114, !60, !60}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !369, file: !368, line: 53, baseType: !103, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !286, file: !16, line: 932, baseType: !395, size: 64, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !16, line: 917, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !398, line: 158, size: 2097152, elements: !399)
!398 = !DIFile(filename: "./cluster.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "by_slot", scope: !397, file: !398, line: 159, baseType: !401, size: 2097152)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 2097152, elements: !407)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "slotToKeys", file: !398, line: 155, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotToKeys", file: !398, line: 152, size: 128, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !403, file: !398, line: 153, baseType: !101, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !403, file: !398, line: 154, baseType: !328, size: 64, offset: 64)
!407 = !{!408}
!408 = !DISubrange(count: 16384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !16, line: 1095, baseType: !410, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !16, line: 862, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !16, line: 854, size: 128, elements: !413)
!413 = !{!414, !415, !416, !417, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !412, file: !16, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !412, file: !16, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !412, file: !16, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !412, file: !16, line: 860, baseType: !114, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !412, file: !16, line: 861, baseType: !60, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !133, file: !16, line: 1096, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !63, line: 43, baseType: !107)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !133, file: !16, line: 1097, baseType: !108, size: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !133, file: !16, line: 1098, baseType: !108, size: 64, offset: 512)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !133, file: !16, line: 1099, baseType: !114, size: 32, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !133, file: !16, line: 1100, baseType: !425, size: 64, offset: 640)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !133, file: !16, line: 1101, baseType: !114, size: 32, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !133, file: !16, line: 1102, baseType: !114, size: 32, offset: 736)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !133, file: !16, line: 1103, baseType: !425, size: 64, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !133, file: !16, line: 1104, baseType: !108, size: 64, offset: 832)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !133, file: !16, line: 1105, baseType: !431, size: 64, offset: 896)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !16, line: 2233, size: 4224, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !443, !450, !452, !457, !458, !459, !460, !500, !522, !523, !538, !539, !540, !541, !542, !543, !544, !568, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !432, file: !16, line: 2235, baseType: !128, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !432, file: !16, line: 2237, baseType: !128, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !432, file: !16, line: 2238, baseType: !128, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !432, file: !16, line: 2239, baseType: !128, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !432, file: !16, line: 2240, baseType: !114, size: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !432, file: !16, line: 2241, baseType: !128, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !432, file: !16, line: 2242, baseType: !128, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !432, file: !16, line: 2243, baseType: !442, size: 32, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !16, line: 2135, baseType: !15)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !432, file: !16, line: 2244, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !16, line: 2113, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2110, size: 128, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !446, file: !16, line: 2111, baseType: !128, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !446, file: !16, line: 2112, baseType: !128, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !432, file: !16, line: 2245, baseType: !451, size: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !432, file: !16, line: 2246, baseType: !453, size: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !16, line: 2137, baseType: !455)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !131}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !432, file: !16, line: 2247, baseType: !114, size: 32, offset: 704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !16, line: 2248, baseType: !101, size: 64, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !432, file: !16, line: 2249, baseType: !101, size: 64, offset: 832)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !432, file: !16, line: 2250, baseType: !461, size: 1792, offset: 896)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 1792, elements: !498)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !16, line: 2048, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 2004, size: 448, elements: !464)
!464 = !{!465, !466, !467, !469, !481, !483}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !463, file: !16, line: 2006, baseType: !128, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !16, line: 2007, baseType: !101, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !463, file: !16, line: 2008, baseType: !468, size: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !16, line: 1994, baseType: !36)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !463, file: !16, line: 2022, baseType: !470, size: 128, offset: 192)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !16, line: 2009, size: 128, elements: !471)
!471 = !{!472, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !470, file: !16, line: 2013, baseType: !473, size: 32)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !16, line: 2010, size: 32, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !473, file: !16, line: 2012, baseType: !114, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !470, file: !16, line: 2021, baseType: !477, size: 128)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !16, line: 2014, size: 128, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !477, file: !16, line: 2016, baseType: !128, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !477, file: !16, line: 2020, baseType: !114, size: 32, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !463, file: !16, line: 2023, baseType: !482, size: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !16, line: 2002, baseType: !42)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !463, file: !16, line: 2047, baseType: !484, size: 96, offset: 352)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !463, file: !16, line: 2024, size: 96, elements: !485)
!485 = !{!486, !492}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !484, file: !16, line: 2037, baseType: !487, size: 96)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !16, line: 2027, size: 96, elements: !488)
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !487, file: !16, line: 2031, baseType: !114, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !487, file: !16, line: 2033, baseType: !114, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !487, file: !16, line: 2036, baseType: !114, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !484, file: !16, line: 2046, baseType: !493, size: 96)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !16, line: 2038, size: 96, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !493, file: !16, line: 2040, baseType: !114, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !493, file: !16, line: 2043, baseType: !114, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !493, file: !16, line: 2045, baseType: !114, size: 32, offset: 64)
!498 = !{!499}
!499 = !DISubrange(count: 4)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !432, file: !16, line: 2253, baseType: !501, size: 64, offset: 2688)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !16, line: 2138, baseType: !503)
!503 = !DISubroutineType(types: !504)
!504 = !{!114, !431, !425, !114, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !16, line: 1966, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1961, size: 16512, elements: !508)
!508 = !{!509, !518, !520, !521}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !507, file: !16, line: 1962, baseType: !510, size: 16384)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 16384, elements: !516)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !16, line: 1955, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1951, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !512, file: !16, line: 1952, baseType: !114, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !16, line: 1953, baseType: !114, size: 32, offset: 32)
!516 = !{!517}
!517 = !DISubrange(count: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !507, file: !16, line: 1963, baseType: !519, size: 64, offset: 16384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !507, file: !16, line: 1964, baseType: !114, size: 32, offset: 16448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !507, file: !16, line: 1965, baseType: !114, size: 32, offset: 16480)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !432, file: !16, line: 2255, baseType: !431, size: 64, offset: 2752)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !432, file: !16, line: 2257, baseType: !524, size: 64, offset: 2816)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !16, line: 2071, size: 576, elements: !526)
!526 = !{!527, !528, !530, !531, !532, !533, !534, !535, !536, !537}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !525, file: !16, line: 2072, baseType: !128, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !16, line: 2073, baseType: !529, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !16, line: 2064, baseType: !48)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !525, file: !16, line: 2074, baseType: !114, size: 32, offset: 96)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !525, file: !16, line: 2075, baseType: !128, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !525, file: !16, line: 2076, baseType: !128, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !525, file: !16, line: 2077, baseType: !128, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !16, line: 2078, baseType: !114, size: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !525, file: !16, line: 2079, baseType: !128, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !525, file: !16, line: 2080, baseType: !524, size: 64, offset: 448)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !525, file: !16, line: 2082, baseType: !114, size: 32, offset: 512)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !432, file: !16, line: 2260, baseType: !115, size: 64, offset: 2880)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !432, file: !16, line: 2260, baseType: !115, size: 64, offset: 2944)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !432, file: !16, line: 2260, baseType: !115, size: 64, offset: 3008)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !432, file: !16, line: 2260, baseType: !115, size: 64, offset: 3072)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !432, file: !16, line: 2261, baseType: !114, size: 32, offset: 3136)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !432, file: !16, line: 2266, baseType: !420, size: 64, offset: 3200)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !432, file: !16, line: 2267, baseType: !545, size: 64, offset: 3264)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !547, line: 17, size: 832, elements: !548)
!547 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!548 = !{!549, !550, !551, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !546, file: !547, line: 19, baseType: !339, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !546, file: !547, line: 20, baseType: !339, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !546, file: !547, line: 21, baseType: !552, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !340, line: 26, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !69, line: 41, baseType: !114)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !546, file: !547, line: 22, baseType: !552, size: 32, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !546, file: !547, line: 23, baseType: !552, size: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !546, file: !547, line: 24, baseType: !552, size: 32, offset: 224)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !546, file: !547, line: 25, baseType: !339, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !546, file: !547, line: 26, baseType: !552, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !546, file: !547, line: 27, baseType: !552, size: 32, offset: 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !546, file: !547, line: 28, baseType: !339, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !546, file: !547, line: 29, baseType: !339, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !546, file: !547, line: 30, baseType: !552, size: 32, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !546, file: !547, line: 31, baseType: !110, size: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !546, file: !547, line: 32, baseType: !552, size: 32, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !546, file: !547, line: 33, baseType: !339, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !546, file: !547, line: 34, baseType: !567, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !432, file: !16, line: 2268, baseType: !569, size: 64, offset: 3328)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !432, file: !16, line: 2269, baseType: !462, size: 448, offset: 3392)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !432, file: !16, line: 2273, baseType: !114, size: 32, offset: 3840)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !432, file: !16, line: 2274, baseType: !114, size: 32, offset: 3872)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !432, file: !16, line: 2275, baseType: !114, size: 32, offset: 3904)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !432, file: !16, line: 2276, baseType: !114, size: 32, offset: 3936)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !432, file: !16, line: 2277, baseType: !114, size: 32, offset: 3968)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !432, file: !16, line: 2278, baseType: !289, size: 64, offset: 4032)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !432, file: !16, line: 2280, baseType: !431, size: 64, offset: 4096)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !432, file: !16, line: 2281, baseType: !579, size: 64, offset: 4160)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !16, line: 685, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !133, file: !16, line: 1105, baseType: !431, size: 64, offset: 960)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !133, file: !16, line: 1106, baseType: !431, size: 64, offset: 1024)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !133, file: !16, line: 1109, baseType: !584, size: 64, offset: 1088)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !16, line: 1057, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1049, size: 320, elements: !587)
!587 = !{!588, !589, !590, !591, !592}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !586, file: !16, line: 1050, baseType: !420, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !16, line: 1051, baseType: !92, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !586, file: !16, line: 1052, baseType: !366, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !586, file: !16, line: 1053, baseType: !366, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !586, file: !16, line: 1056, baseType: !410, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !133, file: !16, line: 1112, baseType: !114, size: 32, offset: 1152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !133, file: !16, line: 1113, baseType: !114, size: 32, offset: 1184)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !133, file: !16, line: 1114, baseType: !264, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !133, file: !16, line: 1115, baseType: !366, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !133, file: !16, line: 1116, baseType: !598, size: 64, offset: 1344)
!598 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !133, file: !16, line: 1117, baseType: !366, size: 64, offset: 1408)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !133, file: !16, line: 1118, baseType: !108, size: 64, offset: 1472)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !133, file: !16, line: 1120, baseType: !602, size: 64, offset: 1536)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !603, line: 10, baseType: !604)
!603 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !69, line: 160, baseType: !264)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !133, file: !16, line: 1121, baseType: !264, size: 64, offset: 1600)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !133, file: !16, line: 1122, baseType: !114, size: 32, offset: 1664)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !133, file: !16, line: 1123, baseType: !328, size: 64, offset: 1728)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !133, file: !16, line: 1124, baseType: !602, size: 64, offset: 1792)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !133, file: !16, line: 1125, baseType: !602, size: 64, offset: 1856)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !133, file: !16, line: 1126, baseType: !114, size: 32, offset: 1920)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !133, file: !16, line: 1127, baseType: !114, size: 32, offset: 1952)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !133, file: !16, line: 1128, baseType: !114, size: 32, offset: 1984)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !133, file: !16, line: 1129, baseType: !114, size: 32, offset: 2016)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !133, file: !16, line: 1130, baseType: !615, size: 64, offset: 2048)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !616, line: 58, baseType: !617)
!616 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !264)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !133, file: !16, line: 1131, baseType: !615, size: 64, offset: 2112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !133, file: !16, line: 1132, baseType: !420, size: 64, offset: 2176)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !133, file: !16, line: 1133, baseType: !115, size: 64, offset: 2240)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !133, file: !16, line: 1134, baseType: !115, size: 64, offset: 2304)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !133, file: !16, line: 1135, baseType: !115, size: 64, offset: 2368)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !133, file: !16, line: 1136, baseType: !115, size: 64, offset: 2432)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !133, file: !16, line: 1137, baseType: !115, size: 64, offset: 2496)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !133, file: !16, line: 1138, baseType: !115, size: 64, offset: 2560)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !133, file: !16, line: 1139, baseType: !115, size: 64, offset: 2624)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !133, file: !16, line: 1142, baseType: !628, size: 328, offset: 2688)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 328, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 41)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !133, file: !16, line: 1143, baseType: !114, size: 32, offset: 3040)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !133, file: !16, line: 1144, baseType: !107, size: 64, offset: 3072)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !133, file: !16, line: 1145, baseType: !114, size: 32, offset: 3136)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !133, file: !16, line: 1146, baseType: !114, size: 32, offset: 3168)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !133, file: !16, line: 1147, baseType: !636, size: 320, offset: 3200)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !16, line: 967, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !16, line: 956, size: 320, elements: !638)
!638 = !{!639, !648, !649, !650, !651, !652}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !637, file: !16, line: 957, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !16, line: 954, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !16, line: 949, size: 192, elements: !643)
!643 = !{!644, !645, !646, !647}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !642, file: !16, line: 950, baseType: !425, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !642, file: !16, line: 951, baseType: !114, size: 32, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !642, file: !16, line: 952, baseType: !114, size: 32, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !642, file: !16, line: 953, baseType: !431, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !637, file: !16, line: 958, baseType: !114, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !637, file: !16, line: 959, baseType: !114, size: 32, offset: 96)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !637, file: !16, line: 962, baseType: !114, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !637, file: !16, line: 965, baseType: !108, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !637, file: !16, line: 966, baseType: !114, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !133, file: !16, line: 1148, baseType: !114, size: 32, offset: 3520)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !133, file: !16, line: 1149, baseType: !655, size: 704, offset: 3584)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !16, line: 1003, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !16, line: 971, size: 704, elements: !657)
!657 = !{!658, !659, !661, !662, !663, !668, !669, !670, !671, !672, !673, !674}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !16, line: 973, baseType: !264, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !656, file: !16, line: 974, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !16, line: 64, baseType: !115)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !656, file: !16, line: 978, baseType: !289, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !656, file: !16, line: 980, baseType: !410, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !656, file: !16, line: 985, baseType: !664, size: 64, offset: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !16, line: 982, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !664, file: !16, line: 983, baseType: !114, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !664, file: !16, line: 984, baseType: !114, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !656, file: !16, line: 990, baseType: !108, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !656, file: !16, line: 991, baseType: !410, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !656, file: !16, line: 992, baseType: !410, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !656, file: !16, line: 993, baseType: !114, size: 32, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !656, file: !16, line: 996, baseType: !114, size: 32, offset: 544)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !656, file: !16, line: 997, baseType: !115, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !656, file: !16, line: 1000, baseType: !60, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !133, file: !16, line: 1150, baseType: !115, size: 64, offset: 4288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !133, file: !16, line: 1151, baseType: !366, size: 64, offset: 4352)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !133, file: !16, line: 1152, baseType: !289, size: 64, offset: 4416)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !133, file: !16, line: 1153, baseType: !366, size: 64, offset: 4480)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !133, file: !16, line: 1154, baseType: !289, size: 64, offset: 4544)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !133, file: !16, line: 1155, baseType: !420, size: 64, offset: 4608)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !133, file: !16, line: 1156, baseType: !420, size: 64, offset: 4672)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !133, file: !16, line: 1157, baseType: !372, size: 64, offset: 4736)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !133, file: !16, line: 1158, baseType: !372, size: 64, offset: 4800)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !133, file: !16, line: 1159, baseType: !372, size: 64, offset: 4864)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !133, file: !16, line: 1160, baseType: !686, size: 64, offset: 4928)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !16, line: 715, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !101, !60}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !133, file: !16, line: 1163, baseType: !60, size: 64, offset: 4992)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !133, file: !16, line: 1166, baseType: !60, size: 64, offset: 5056)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !133, file: !16, line: 1173, baseType: !101, size: 64, offset: 5120)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !133, file: !16, line: 1174, baseType: !694, size: 64, offset: 5184)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !696, line: 137, baseType: !697)
!696 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !696, line: 133, size: 192, elements: !698)
!698 = !{!699, !710, !711}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !697, file: !696, line: 134, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !696, line: 131, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !696, line: 98, size: 32, elements: !703)
!703 = !{!704, !705, !706, !707, !708}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !702, file: !696, line: 99, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !702, file: !696, line: 100, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !702, file: !696, line: 101, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !702, file: !696, line: 102, baseType: !92, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !702, file: !696, line: 130, baseType: !709, offset: 32)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !76)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !697, file: !696, line: 135, baseType: !101, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !697, file: !696, line: 136, baseType: !101, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !133, file: !16, line: 1182, baseType: !108, size: 64, offset: 5248)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !133, file: !16, line: 1183, baseType: !114, size: 32, offset: 5312)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !133, file: !16, line: 1185, baseType: !372, size: 64, offset: 5376)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !133, file: !16, line: 1186, baseType: !716, size: 64, offset: 5440)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !16, line: 1087, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 1084, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !718, file: !16, line: 1085, baseType: !366, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !718, file: !16, line: 1086, baseType: !108, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !133, file: !16, line: 1188, baseType: !372, size: 64, offset: 5504)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !133, file: !16, line: 1190, baseType: !108, size: 64, offset: 5568)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !133, file: !16, line: 1194, baseType: !108, size: 64, offset: 5632)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !133, file: !16, line: 1195, baseType: !660, size: 64, offset: 5696)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !133, file: !16, line: 1196, baseType: !114, size: 32, offset: 5760)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !133, file: !16, line: 1197, baseType: !108, size: 64, offset: 5824)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !133, file: !16, line: 1198, baseType: !107, size: 64, offset: 5888)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "original_client", scope: !125, file: !124, line: 73, baseType: !131, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !124, line: 74, baseType: !114, size: 32, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "repl_flags", scope: !125, file: !124, line: 75, baseType: !114, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !125, file: !124, line: 76, baseType: !183, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time", scope: !125, file: !124, line: 77, baseType: !660, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !113, line: 50, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !113, line: 50, flags: DIFlagFwdDecl)
!737 = !{}
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "lua_args_cached_objects_len", scope: !2, file: !3, line: 794, type: !740, isLocal: true, isDefinition: true)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 2048, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 32)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "lua_argv", scope: !2, file: !3, line: 787, type: !425, isLocal: true, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(name: "lua_argv_size", scope: !2, file: !3, line: 788, type: !114, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "allow_lists", scope: !2, file: !3, line: 115, type: !749, isLocal: true, isDefinition: true)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !750, size: 384, elements: !751)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!751 = !{!752}
!752 = !DISubrange(count: 6)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "libraries_allow_list", scope: !2, file: !3, line: 45, type: !755, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 512, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 8)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "redis_api_allow_list", scope: !2, file: !3, line: 57, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 192, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 3)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "lua_builtins_allow_list", scope: !2, file: !3, line: 65, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1728, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 27)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "lua_builtins_not_documented_allow_list", scope: !2, file: !3, line: 96, type: !770, isLocal: true, isDefinition: true)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !347)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "lua_builtins_removed_after_initialization_allow_list", scope: !2, file: !3, line: 102, type: !770, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "deny_list", scope: !2, file: !3, line: 128, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !498)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "inuse", scope: !778, file: !3, line: 904, type: !114, isLocal: true, isDefinition: true)
!778 = distinct !DISubprogram(name: "luaRedisGenericCommand", scope: !3, file: !3, line: 888, type: !779, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!779 = !DISubroutineType(types: !780)
!780 = !{!114, !734, !114}
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(name: "DefaultLuaTypeParserCallbacks", scope: !2, file: !3, line: 211, type: !783, isLocal: true, isDefinition: true)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParserCallbacks", file: !785, line: 84, baseType: !786)
!785 = !DIFile(filename: "./resp_parser.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParserCallbacks", file: !785, line: 37, size: 1024, elements: !787)
!787 = !{!788, !792, !793, !797, !798, !799, !803, !812, !813, !814, !818, !822, !823, !827, !828, !829}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "null_array_callback", scope: !786, file: !785, line: 39, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !60, !128, !108}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "null_bulk_string_callback", scope: !786, file: !785, line: 42, baseType: !789, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_string_callback", scope: !786, file: !785, line: 45, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !60, !128, !108, !128, !108}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "error_callback", scope: !786, file: !785, line: 48, baseType: !794, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "simple_str_callback", scope: !786, file: !785, line: 51, baseType: !794, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "long_callback", scope: !786, file: !785, line: 54, baseType: !800, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !60, !115, !128, !108}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "array_callback", scope: !786, file: !785, line: 57, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !807, !60, !108, !128}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParser", file: !785, line: 86, size: 1088, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "curr_location", scope: !808, file: !785, line: 88, baseType: !128, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !808, file: !785, line: 89, baseType: !784, size: 1024, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "set_callback", scope: !786, file: !785, line: 60, baseType: !804, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "map_callback", scope: !786, file: !785, line: 63, baseType: !804, size: 64, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "bool_callback", scope: !786, file: !785, line: 66, baseType: !815, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !60, !114, !128, !108}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "double_callback", scope: !786, file: !785, line: 69, baseType: !819, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !60, !110, !128, !108}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "big_number_callback", scope: !786, file: !785, line: 72, baseType: !794, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "verbatim_string_callback", scope: !786, file: !785, line: 75, baseType: !824, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !60, !128, !128, !108, !128, !108}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_callback", scope: !786, file: !785, line: 78, baseType: !804, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "null_callback", scope: !786, file: !785, line: 81, baseType: !789, size: 64, offset: 896)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !786, file: !785, line: 83, baseType: !386, size: 64, offset: 960)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 2048, elements: !741)
!831 = !{i32 7, !"Dwarf Version", i32 4}
!832 = !{i32 2, !"Debug Info Version", i32 3}
!833 = !{i32 1, !"wchar_size", i32 4}
!834 = !{i32 7, !"uwtable", i32 1}
!835 = !{i32 7, !"frame-pointer", i32 2}
!836 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!837 = distinct !DISubprogram(name: "luaSaveOnRegistry", scope: !3, file: !3, line: 158, type: !838, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !734, !128, !60}
!840 = !DILocalVariable(name: "lua", arg: 1, scope: !837, file: !3, line: 158, type: !734)
!841 = !DILocation(line: 158, column: 35, scope: !837)
!842 = !DILocalVariable(name: "name", arg: 2, scope: !837, file: !3, line: 158, type: !128)
!843 = !DILocation(line: 158, column: 52, scope: !837)
!844 = !DILocalVariable(name: "ptr", arg: 3, scope: !837, file: !3, line: 158, type: !60)
!845 = !DILocation(line: 158, column: 64, scope: !837)
!846 = !DILocation(line: 159, column: 20, scope: !837)
!847 = !DILocation(line: 159, column: 25, scope: !837)
!848 = !DILocation(line: 159, column: 5, scope: !837)
!849 = !DILocation(line: 160, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !837, file: !3, line: 160, column: 9)
!851 = !DILocation(line: 160, column: 9, scope: !837)
!852 = !DILocation(line: 161, column: 31, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 160, column: 14)
!854 = !DILocation(line: 161, column: 36, scope: !853)
!855 = !DILocation(line: 161, column: 9, scope: !853)
!856 = !DILocation(line: 162, column: 5, scope: !853)
!857 = !DILocation(line: 163, column: 21, scope: !858)
!858 = distinct !DILexicalBlock(scope: !850, file: !3, line: 162, column: 12)
!859 = !DILocation(line: 163, column: 9, scope: !858)
!860 = !DILocation(line: 165, column: 18, scope: !837)
!861 = !DILocation(line: 165, column: 5, scope: !837)
!862 = !DILocation(line: 166, column: 1, scope: !837)
!863 = distinct !DISubprogram(name: "luaGetFromRegistry", scope: !3, file: !3, line: 171, type: !864, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!864 = !DISubroutineType(types: !865)
!865 = !{!60, !734, !128}
!866 = !DILocalVariable(name: "lua", arg: 1, scope: !863, file: !3, line: 171, type: !734)
!867 = !DILocation(line: 171, column: 37, scope: !863)
!868 = !DILocalVariable(name: "name", arg: 2, scope: !863, file: !3, line: 171, type: !128)
!869 = !DILocation(line: 171, column: 54, scope: !863)
!870 = !DILocation(line: 172, column: 20, scope: !863)
!871 = !DILocation(line: 172, column: 25, scope: !863)
!872 = !DILocation(line: 172, column: 5, scope: !863)
!873 = !DILocation(line: 173, column: 18, scope: !863)
!874 = !DILocation(line: 173, column: 5, scope: !863)
!875 = !DILocation(line: 175, column: 9, scope: !876)
!876 = distinct !DILexicalBlock(scope: !863, file: !3, line: 175, column: 9)
!877 = !DILocation(line: 175, column: 9, scope: !863)
!878 = !DILocation(line: 176, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !3, line: 175, column: 29)
!880 = !DILocation(line: 179, column: 5, scope: !863)
!881 = !DILocalVariable(name: "ptr", scope: !863, file: !3, line: 181, type: !60)
!882 = !DILocation(line: 181, column: 11, scope: !863)
!883 = !DILocation(line: 181, column: 39, scope: !863)
!884 = !DILocation(line: 181, column: 25, scope: !863)
!885 = !DILocation(line: 182, column: 5, scope: !863)
!886 = !DILocation(line: 185, column: 5, scope: !863)
!887 = !DILocation(line: 187, column: 12, scope: !863)
!888 = !DILocation(line: 187, column: 5, scope: !863)
!889 = !DILocation(line: 188, column: 1, scope: !863)
!890 = distinct !DISubprogram(name: "luaPushErrorBuff", scope: !3, file: !3, line: 530, type: !891, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !734, !420}
!893 = !DILocalVariable(name: "lua", arg: 1, scope: !890, file: !3, line: 530, type: !734)
!894 = !DILocation(line: 530, column: 34, scope: !890)
!895 = !DILocalVariable(name: "err_buffer", arg: 2, scope: !890, file: !3, line: 530, type: !420)
!896 = !DILocation(line: 530, column: 43, scope: !890)
!897 = !DILocalVariable(name: "msg", scope: !890, file: !3, line: 531, type: !420)
!898 = !DILocation(line: 531, column: 9, scope: !890)
!899 = !DILocalVariable(name: "error_code", scope: !890, file: !3, line: 532, type: !420)
!900 = !DILocation(line: 532, column: 9, scope: !890)
!901 = !DILocation(line: 536, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !890, file: !3, line: 536, column: 9)
!903 = !DILocation(line: 536, column: 9, scope: !890)
!904 = !DILocation(line: 537, column: 29, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 536, column: 25)
!906 = !DILocation(line: 537, column: 53, scope: !905)
!907 = !DILocation(line: 537, column: 16, scope: !905)
!908 = !DILocation(line: 537, column: 9, scope: !905)
!909 = !DILocation(line: 538, column: 5, scope: !905)
!910 = !DILocation(line: 546, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !890, file: !3, line: 546, column: 9)
!912 = !DILocation(line: 546, column: 23, scope: !911)
!913 = !DILocation(line: 546, column: 9, scope: !890)
!914 = !DILocalVariable(name: "err_msg", scope: !915, file: !3, line: 548, type: !107)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 546, column: 31)
!916 = !DILocation(line: 548, column: 15, scope: !915)
!917 = !DILocation(line: 548, column: 32, scope: !915)
!918 = !DILocation(line: 548, column: 25, scope: !915)
!919 = !DILocation(line: 549, column: 14, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !3, line: 549, column: 13)
!921 = !DILocation(line: 549, column: 13, scope: !915)
!922 = !DILocation(line: 550, column: 26, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 549, column: 23)
!924 = !DILocation(line: 550, column: 36, scope: !923)
!925 = !DILocation(line: 550, column: 19, scope: !923)
!926 = !DILocation(line: 550, column: 17, scope: !923)
!927 = !DILocation(line: 551, column: 26, scope: !923)
!928 = !DILocation(line: 551, column: 24, scope: !923)
!929 = !DILocation(line: 552, column: 9, scope: !923)
!930 = !DILocation(line: 553, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !920, file: !3, line: 552, column: 16)
!932 = !DILocation(line: 553, column: 22, scope: !931)
!933 = !DILocation(line: 554, column: 26, scope: !931)
!934 = !DILocation(line: 554, column: 33, scope: !931)
!935 = !DILocation(line: 554, column: 19, scope: !931)
!936 = !DILocation(line: 554, column: 17, scope: !931)
!937 = !DILocation(line: 555, column: 33, scope: !931)
!938 = !DILocation(line: 555, column: 44, scope: !931)
!939 = !DILocation(line: 555, column: 26, scope: !931)
!940 = !DILocation(line: 555, column: 24, scope: !931)
!941 = !DILocation(line: 557, column: 17, scope: !915)
!942 = !DILocation(line: 557, column: 9, scope: !915)
!943 = !DILocation(line: 558, column: 5, scope: !915)
!944 = !DILocation(line: 559, column: 15, scope: !945)
!945 = distinct !DILexicalBlock(scope: !911, file: !3, line: 558, column: 12)
!946 = !DILocation(line: 559, column: 13, scope: !945)
!947 = !DILocation(line: 560, column: 22, scope: !945)
!948 = !DILocation(line: 560, column: 20, scope: !945)
!949 = !DILocation(line: 564, column: 19, scope: !890)
!950 = !DILocation(line: 564, column: 11, scope: !890)
!951 = !DILocation(line: 564, column: 9, scope: !890)
!952 = !DILocalVariable(name: "final_msg", scope: !890, file: !3, line: 565, type: !420)
!953 = !DILocation(line: 565, column: 9, scope: !890)
!954 = !DILocation(line: 565, column: 31, scope: !890)
!955 = !DILocation(line: 565, column: 50, scope: !890)
!956 = !DILocation(line: 565, column: 21, scope: !890)
!957 = !DILocation(line: 567, column: 5, scope: !890)
!958 = !DILocation(line: 568, column: 20, scope: !890)
!959 = !DILocation(line: 568, column: 5, scope: !890)
!960 = !DILocation(line: 569, column: 20, scope: !890)
!961 = !DILocation(line: 569, column: 25, scope: !890)
!962 = !DILocation(line: 569, column: 5, scope: !890)
!963 = !DILocation(line: 570, column: 18, scope: !890)
!964 = !DILocation(line: 570, column: 5, scope: !890)
!965 = !DILocation(line: 572, column: 13, scope: !890)
!966 = !DILocation(line: 572, column: 5, scope: !890)
!967 = !DILocation(line: 573, column: 13, scope: !890)
!968 = !DILocation(line: 573, column: 5, scope: !890)
!969 = !DILocation(line: 574, column: 1, scope: !890)
!970 = distinct !DISubprogram(name: "luaPushError", scope: !3, file: !3, line: 576, type: !971, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !734, !128}
!973 = !DILocalVariable(name: "lua", arg: 1, scope: !970, file: !3, line: 576, type: !734)
!974 = !DILocation(line: 576, column: 30, scope: !970)
!975 = !DILocalVariable(name: "error", arg: 2, scope: !970, file: !3, line: 576, type: !128)
!976 = !DILocation(line: 576, column: 47, scope: !970)
!977 = !DILocation(line: 577, column: 22, scope: !970)
!978 = !DILocation(line: 577, column: 34, scope: !970)
!979 = !DILocation(line: 577, column: 27, scope: !970)
!980 = !DILocation(line: 577, column: 5, scope: !970)
!981 = !DILocation(line: 578, column: 1, scope: !970)
!982 = distinct !DISubprogram(name: "luaError", scope: !3, file: !3, line: 584, type: !983, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!983 = !DISubroutineType(types: !984)
!984 = !{!114, !734}
!985 = !DILocalVariable(name: "lua", arg: 1, scope: !982, file: !3, line: 584, type: !734)
!986 = !DILocation(line: 584, column: 25, scope: !982)
!987 = !DILocation(line: 585, column: 22, scope: !982)
!988 = !DILocation(line: 585, column: 12, scope: !982)
!989 = !DILocation(line: 585, column: 5, scope: !982)
!990 = distinct !DISubprogram(name: "freeLuaRedisArgv", scope: !3, file: !3, line: 858, type: !991, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !425, !114, !114}
!993 = !DILocalVariable(name: "argv", arg: 1, scope: !990, file: !3, line: 858, type: !425)
!994 = !DILocation(line: 858, column: 30, scope: !990)
!995 = !DILocalVariable(name: "argc", arg: 2, scope: !990, file: !3, line: 858, type: !114)
!996 = !DILocation(line: 858, column: 40, scope: !990)
!997 = !DILocalVariable(name: "argv_len", arg: 3, scope: !990, file: !3, line: 858, type: !114)
!998 = !DILocation(line: 858, column: 50, scope: !990)
!999 = !DILocalVariable(name: "j", scope: !990, file: !3, line: 859, type: !114)
!1000 = !DILocation(line: 859, column: 9, scope: !990)
!1001 = !DILocation(line: 860, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !990, file: !3, line: 860, column: 5)
!1003 = !DILocation(line: 860, column: 10, scope: !1002)
!1004 = !DILocation(line: 860, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 860, column: 5)
!1006 = !DILocation(line: 860, column: 21, scope: !1005)
!1007 = !DILocation(line: 860, column: 19, scope: !1005)
!1008 = !DILocation(line: 860, column: 5, scope: !1002)
!1009 = !DILocalVariable(name: "o", scope: !1010, file: !3, line: 861, type: !410)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 860, column: 32)
!1011 = !DILocation(line: 861, column: 15, scope: !1010)
!1012 = !DILocation(line: 861, column: 19, scope: !1010)
!1013 = !DILocation(line: 861, column: 24, scope: !1010)
!1014 = !DILocation(line: 866, column: 13, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 866, column: 13)
!1016 = !DILocation(line: 866, column: 15, scope: !1015)
!1017 = !DILocation(line: 866, column: 39, scope: !1015)
!1018 = !DILocation(line: 867, column: 13, scope: !1015)
!1019 = !DILocation(line: 867, column: 16, scope: !1015)
!1020 = !DILocation(line: 867, column: 25, scope: !1015)
!1021 = !DILocation(line: 867, column: 30, scope: !1015)
!1022 = !DILocation(line: 868, column: 14, scope: !1015)
!1023 = !DILocation(line: 868, column: 17, scope: !1015)
!1024 = !DILocation(line: 868, column: 26, scope: !1015)
!1025 = !DILocation(line: 868, column: 46, scope: !1015)
!1026 = !DILocation(line: 869, column: 14, scope: !1015)
!1027 = !DILocation(line: 869, column: 17, scope: !1015)
!1028 = !DILocation(line: 869, column: 26, scope: !1015)
!1029 = !DILocation(line: 869, column: 50, scope: !1015)
!1030 = !DILocation(line: 870, column: 20, scope: !1015)
!1031 = !DILocation(line: 870, column: 23, scope: !1015)
!1032 = !DILocation(line: 870, column: 13, scope: !1015)
!1033 = !DILocation(line: 870, column: 28, scope: !1015)
!1034 = !DILocation(line: 866, column: 13, scope: !1010)
!1035 = !DILocalVariable(name: "s", scope: !1036, file: !3, line: 872, type: !420)
!1036 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 871, column: 9)
!1037 = !DILocation(line: 872, column: 17, scope: !1036)
!1038 = !DILocation(line: 872, column: 21, scope: !1036)
!1039 = !DILocation(line: 872, column: 24, scope: !1036)
!1040 = !DILocation(line: 873, column: 41, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 873, column: 17)
!1042 = !DILocation(line: 873, column: 17, scope: !1041)
!1043 = !DILocation(line: 873, column: 17, scope: !1036)
!1044 = !DILocation(line: 873, column: 82, scope: !1041)
!1045 = !DILocation(line: 873, column: 58, scope: !1041)
!1046 = !DILocation(line: 873, column: 45, scope: !1041)
!1047 = !DILocation(line: 874, column: 42, scope: !1036)
!1048 = !DILocation(line: 874, column: 37, scope: !1036)
!1049 = !DILocation(line: 874, column: 13, scope: !1036)
!1050 = !DILocation(line: 874, column: 40, scope: !1036)
!1051 = !DILocation(line: 875, column: 55, scope: !1036)
!1052 = !DILocation(line: 875, column: 46, scope: !1036)
!1053 = !DILocation(line: 875, column: 41, scope: !1036)
!1054 = !DILocation(line: 875, column: 13, scope: !1036)
!1055 = !DILocation(line: 875, column: 44, scope: !1036)
!1056 = !DILocation(line: 876, column: 9, scope: !1036)
!1057 = !DILocation(line: 877, column: 26, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 876, column: 16)
!1059 = !DILocation(line: 877, column: 13, scope: !1058)
!1060 = !DILocation(line: 879, column: 5, scope: !1010)
!1061 = !DILocation(line: 860, column: 28, scope: !1005)
!1062 = !DILocation(line: 860, column: 5, scope: !1005)
!1063 = distinct !{!1063, !1008, !1064, !1065}
!1064 = !DILocation(line: 879, column: 5, scope: !1002)
!1065 = !{!"llvm.loop.mustprogress"}
!1066 = !DILocation(line: 880, column: 9, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !990, file: !3, line: 880, column: 9)
!1068 = !DILocation(line: 880, column: 17, scope: !1067)
!1069 = !DILocation(line: 880, column: 14, scope: !1067)
!1070 = !DILocation(line: 880, column: 26, scope: !1067)
!1071 = !DILocation(line: 880, column: 29, scope: !1067)
!1072 = !DILocation(line: 880, column: 41, scope: !1067)
!1073 = !DILocation(line: 880, column: 38, scope: !1067)
!1074 = !DILocation(line: 880, column: 9, scope: !990)
!1075 = !DILocation(line: 882, column: 15, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 880, column: 56)
!1077 = !DILocation(line: 882, column: 9, scope: !1076)
!1078 = !DILocation(line: 883, column: 18, scope: !1076)
!1079 = !DILocation(line: 884, column: 23, scope: !1076)
!1080 = !DILocation(line: 885, column: 5, scope: !1076)
!1081 = !DILocation(line: 886, column: 1, scope: !990)
!1082 = distinct !DISubprogram(name: "sdslen", scope: !63, file: !63, line: 87, type: !1083, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!108, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!1086 = !DILocalVariable(name: "s", arg: 1, scope: !1082, file: !63, line: 87, type: !1085)
!1087 = !DILocation(line: 87, column: 39, scope: !1082)
!1088 = !DILocalVariable(name: "flags", scope: !1082, file: !63, line: 88, type: !70)
!1089 = !DILocation(line: 88, column: 19, scope: !1082)
!1090 = !DILocation(line: 88, column: 27, scope: !1082)
!1091 = !DILocation(line: 89, column: 12, scope: !1082)
!1092 = !DILocation(line: 89, column: 17, scope: !1082)
!1093 = !DILocation(line: 89, column: 5, scope: !1082)
!1094 = !DILocation(line: 91, column: 20, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1082, file: !63, line: 89, column: 33)
!1096 = !DILocation(line: 91, column: 13, scope: !1095)
!1097 = !DILocation(line: 93, column: 20, scope: !1095)
!1098 = !DILocation(line: 93, column: 34, scope: !1095)
!1099 = !DILocation(line: 93, column: 13, scope: !1095)
!1100 = !DILocation(line: 95, column: 20, scope: !1095)
!1101 = !DILocation(line: 95, column: 35, scope: !1095)
!1102 = !DILocation(line: 95, column: 13, scope: !1095)
!1103 = !DILocation(line: 97, column: 20, scope: !1095)
!1104 = !DILocation(line: 97, column: 35, scope: !1095)
!1105 = !DILocation(line: 97, column: 13, scope: !1095)
!1106 = !DILocation(line: 99, column: 20, scope: !1095)
!1107 = !DILocation(line: 99, column: 35, scope: !1095)
!1108 = !DILocation(line: 99, column: 13, scope: !1095)
!1109 = !DILocation(line: 101, column: 5, scope: !1082)
!1110 = !DILocation(line: 102, column: 1, scope: !1082)
!1111 = distinct !DISubprogram(name: "sdsalloc", scope: !63, file: !63, line: 180, type: !1083, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1112 = !DILocalVariable(name: "s", arg: 1, scope: !1111, file: !63, line: 180, type: !1085)
!1113 = !DILocation(line: 180, column: 41, scope: !1111)
!1114 = !DILocalVariable(name: "flags", scope: !1111, file: !63, line: 181, type: !70)
!1115 = !DILocation(line: 181, column: 19, scope: !1111)
!1116 = !DILocation(line: 181, column: 27, scope: !1111)
!1117 = !DILocation(line: 182, column: 12, scope: !1111)
!1118 = !DILocation(line: 182, column: 17, scope: !1111)
!1119 = !DILocation(line: 182, column: 5, scope: !1111)
!1120 = !DILocation(line: 184, column: 20, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1111, file: !63, line: 182, column: 33)
!1122 = !DILocation(line: 184, column: 13, scope: !1121)
!1123 = !DILocation(line: 186, column: 20, scope: !1121)
!1124 = !DILocation(line: 186, column: 34, scope: !1121)
!1125 = !DILocation(line: 186, column: 13, scope: !1121)
!1126 = !DILocation(line: 188, column: 20, scope: !1121)
!1127 = !DILocation(line: 188, column: 35, scope: !1121)
!1128 = !DILocation(line: 188, column: 13, scope: !1121)
!1129 = !DILocation(line: 190, column: 20, scope: !1121)
!1130 = !DILocation(line: 190, column: 35, scope: !1121)
!1131 = !DILocation(line: 190, column: 13, scope: !1121)
!1132 = !DILocation(line: 192, column: 20, scope: !1121)
!1133 = !DILocation(line: 192, column: 35, scope: !1121)
!1134 = !DILocation(line: 192, column: 13, scope: !1121)
!1135 = !DILocation(line: 194, column: 5, scope: !1111)
!1136 = !DILocation(line: 195, column: 1, scope: !1111)
!1137 = distinct !DISubprogram(name: "luaGetStringSds", scope: !3, file: !3, line: 1260, type: !1138, scopeLine: 1260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!420, !734, !114}
!1140 = !DILocalVariable(name: "lua", arg: 1, scope: !1137, file: !3, line: 1260, type: !734)
!1141 = !DILocation(line: 1260, column: 32, scope: !1137)
!1142 = !DILocalVariable(name: "index", arg: 2, scope: !1137, file: !3, line: 1260, type: !114)
!1143 = !DILocation(line: 1260, column: 41, scope: !1137)
!1144 = !DILocation(line: 1261, column: 23, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1261, column: 9)
!1146 = !DILocation(line: 1261, column: 28, scope: !1145)
!1147 = !DILocation(line: 1261, column: 10, scope: !1145)
!1148 = !DILocation(line: 1261, column: 9, scope: !1137)
!1149 = !DILocation(line: 1262, column: 9, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 1261, column: 36)
!1151 = !DILocalVariable(name: "len", scope: !1137, file: !3, line: 1265, type: !108)
!1152 = !DILocation(line: 1265, column: 12, scope: !1137)
!1153 = !DILocalVariable(name: "str", scope: !1137, file: !3, line: 1266, type: !128)
!1154 = !DILocation(line: 1266, column: 17, scope: !1137)
!1155 = !DILocation(line: 1266, column: 37, scope: !1137)
!1156 = !DILocation(line: 1266, column: 42, scope: !1137)
!1157 = !DILocation(line: 1266, column: 23, scope: !1137)
!1158 = !DILocalVariable(name: "str_sds", scope: !1137, file: !3, line: 1267, type: !420)
!1159 = !DILocation(line: 1267, column: 9, scope: !1137)
!1160 = !DILocation(line: 1267, column: 29, scope: !1137)
!1161 = !DILocation(line: 1267, column: 34, scope: !1137)
!1162 = !DILocation(line: 1267, column: 19, scope: !1137)
!1163 = !DILocation(line: 1268, column: 12, scope: !1137)
!1164 = !DILocation(line: 1268, column: 5, scope: !1137)
!1165 = !DILocation(line: 1269, column: 1, scope: !1137)
!1166 = distinct !DISubprogram(name: "luaSetErrorMetatable", scope: !3, file: !3, line: 1292, type: !1167, scopeLine: 1292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !734}
!1169 = !DILocalVariable(name: "lua", arg: 1, scope: !1166, file: !3, line: 1292, type: !734)
!1170 = !DILocation(line: 1292, column: 38, scope: !1166)
!1171 = !DILocation(line: 1293, column: 5, scope: !1166)
!1172 = !DILocation(line: 1294, column: 5, scope: !1166)
!1173 = !DILocation(line: 1295, column: 18, scope: !1166)
!1174 = !DILocation(line: 1295, column: 5, scope: !1166)
!1175 = !DILocation(line: 1296, column: 22, scope: !1166)
!1176 = !DILocation(line: 1296, column: 5, scope: !1166)
!1177 = !DILocation(line: 1297, column: 1, scope: !1166)
!1178 = distinct !DISubprogram(name: "luaProtectedTableError", scope: !3, file: !3, line: 1271, type: !983, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1179 = !DILocalVariable(name: "lua", arg: 1, scope: !1178, file: !3, line: 1271, type: !734)
!1180 = !DILocation(line: 1271, column: 46, scope: !1178)
!1181 = !DILocalVariable(name: "argc", scope: !1178, file: !3, line: 1272, type: !114)
!1182 = !DILocation(line: 1272, column: 9, scope: !1178)
!1183 = !DILocation(line: 1272, column: 27, scope: !1178)
!1184 = !DILocation(line: 1272, column: 16, scope: !1178)
!1185 = !DILocation(line: 1273, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1273, column: 9)
!1187 = !DILocation(line: 1273, column: 14, scope: !1186)
!1188 = !DILocation(line: 1273, column: 9, scope: !1178)
!1189 = !DILocation(line: 1274, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1273, column: 20)
!1191 = !DILocation(line: 1274, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 1274, column: 9)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 1274, column: 9)
!1194 = !DILocation(line: 1274, column: 9, scope: !1193)
!1195 = !DILocation(line: 1275, column: 20, scope: !1190)
!1196 = !DILocation(line: 1275, column: 9, scope: !1190)
!1197 = !DILocation(line: 1276, column: 5, scope: !1190)
!1198 = !DILocation(line: 1277, column: 23, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1277, column: 9)
!1200 = !DILocation(line: 1277, column: 10, scope: !1199)
!1201 = !DILocation(line: 1277, column: 32, scope: !1199)
!1202 = !DILocation(line: 1277, column: 49, scope: !1199)
!1203 = !DILocation(line: 1277, column: 36, scope: !1199)
!1204 = !DILocation(line: 1277, column: 9, scope: !1178)
!1205 = !DILocation(line: 1278, column: 20, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1277, column: 59)
!1207 = !DILocation(line: 1278, column: 9, scope: !1206)
!1208 = !DILocation(line: 1279, column: 5, scope: !1206)
!1209 = !DILocalVariable(name: "variable_name", scope: !1178, file: !3, line: 1280, type: !128)
!1210 = !DILocation(line: 1280, column: 17, scope: !1178)
!1211 = !DILocation(line: 1280, column: 33, scope: !1178)
!1212 = !DILocation(line: 1281, column: 16, scope: !1178)
!1213 = !DILocation(line: 1281, column: 84, scope: !1178)
!1214 = !DILocation(line: 1281, column: 5, scope: !1178)
!1215 = !DILocation(line: 1282, column: 5, scope: !1178)
!1216 = distinct !DISubprogram(name: "luaSetAllowListProtection", scope: !3, file: !3, line: 1350, type: !1167, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1217 = !DILocalVariable(name: "lua", arg: 1, scope: !1216, file: !3, line: 1350, type: !734)
!1218 = !DILocation(line: 1350, column: 43, scope: !1216)
!1219 = !DILocation(line: 1351, column: 5, scope: !1216)
!1220 = !DILocation(line: 1352, column: 5, scope: !1216)
!1221 = !DILocation(line: 1353, column: 18, scope: !1216)
!1222 = !DILocation(line: 1353, column: 5, scope: !1216)
!1223 = !DILocation(line: 1354, column: 22, scope: !1216)
!1224 = !DILocation(line: 1354, column: 5, scope: !1216)
!1225 = !DILocation(line: 1355, column: 1, scope: !1216)
!1226 = distinct !DISubprogram(name: "luaNewIndexAllowList", scope: !3, file: !3, line: 1299, type: !983, scopeLine: 1299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1227 = !DILocalVariable(name: "lua", arg: 1, scope: !1226, file: !3, line: 1299, type: !734)
!1228 = !DILocation(line: 1299, column: 44, scope: !1226)
!1229 = !DILocalVariable(name: "argc", scope: !1226, file: !3, line: 1300, type: !114)
!1230 = !DILocation(line: 1300, column: 9, scope: !1226)
!1231 = !DILocation(line: 1300, column: 27, scope: !1226)
!1232 = !DILocation(line: 1300, column: 16, scope: !1226)
!1233 = !DILocation(line: 1301, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1301, column: 9)
!1235 = !DILocation(line: 1301, column: 14, scope: !1234)
!1236 = !DILocation(line: 1301, column: 9, scope: !1226)
!1237 = !DILocation(line: 1302, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1301, column: 20)
!1239 = !DILocation(line: 1302, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1302, column: 9)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1302, column: 9)
!1242 = !DILocation(line: 1302, column: 9, scope: !1241)
!1243 = !DILocation(line: 1303, column: 20, scope: !1238)
!1244 = !DILocation(line: 1303, column: 9, scope: !1238)
!1245 = !DILocation(line: 1304, column: 5, scope: !1238)
!1246 = !DILocation(line: 1305, column: 10, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1305, column: 9)
!1248 = !DILocation(line: 1305, column: 9, scope: !1226)
!1249 = !DILocation(line: 1306, column: 20, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1305, column: 32)
!1251 = !DILocation(line: 1306, column: 9, scope: !1250)
!1252 = !DILocation(line: 1307, column: 5, scope: !1250)
!1253 = !DILocation(line: 1308, column: 23, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1308, column: 9)
!1255 = !DILocation(line: 1308, column: 10, scope: !1254)
!1256 = !DILocation(line: 1308, column: 32, scope: !1254)
!1257 = !DILocation(line: 1308, column: 49, scope: !1254)
!1258 = !DILocation(line: 1308, column: 36, scope: !1254)
!1259 = !DILocation(line: 1308, column: 9, scope: !1226)
!1260 = !DILocation(line: 1309, column: 20, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1308, column: 59)
!1262 = !DILocation(line: 1309, column: 9, scope: !1261)
!1263 = !DILocation(line: 1310, column: 5, scope: !1261)
!1264 = !DILocalVariable(name: "variable_name", scope: !1226, file: !3, line: 1311, type: !128)
!1265 = !DILocation(line: 1311, column: 17, scope: !1226)
!1266 = !DILocation(line: 1311, column: 33, scope: !1226)
!1267 = !DILocalVariable(name: "allow_l", scope: !1226, file: !3, line: 1314, type: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1269 = !DILocation(line: 1314, column: 13, scope: !1226)
!1270 = !DILocation(line: 1315, column: 5, scope: !1226)
!1271 = !DILocation(line: 1315, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1315, column: 5)
!1273 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1315, column: 5)
!1274 = !DILocation(line: 1315, column: 12, scope: !1272)
!1275 = !DILocation(line: 1315, column: 5, scope: !1273)
!1276 = !DILocalVariable(name: "c", scope: !1277, file: !3, line: 1316, type: !750)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 1315, column: 33)
!1278 = !DILocation(line: 1316, column: 16, scope: !1277)
!1279 = !DILocation(line: 1316, column: 21, scope: !1277)
!1280 = !DILocation(line: 1316, column: 20, scope: !1277)
!1281 = !DILocation(line: 1317, column: 9, scope: !1277)
!1282 = !DILocation(line: 1317, column: 17, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1317, column: 9)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1317, column: 9)
!1285 = !DILocation(line: 1317, column: 16, scope: !1283)
!1286 = !DILocation(line: 1317, column: 9, scope: !1284)
!1287 = !DILocation(line: 1318, column: 25, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1318, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1317, column: 26)
!1290 = !DILocation(line: 1318, column: 24, scope: !1288)
!1291 = !DILocation(line: 1318, column: 28, scope: !1288)
!1292 = !DILocation(line: 1318, column: 17, scope: !1288)
!1293 = !DILocation(line: 1318, column: 43, scope: !1288)
!1294 = !DILocation(line: 1318, column: 17, scope: !1289)
!1295 = !DILocation(line: 1319, column: 17, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1318, column: 49)
!1297 = !DILocation(line: 1321, column: 9, scope: !1289)
!1298 = !DILocation(line: 1317, column: 21, scope: !1283)
!1299 = !DILocation(line: 1317, column: 9, scope: !1283)
!1300 = distinct !{!1300, !1286, !1301, !1065}
!1301 = !DILocation(line: 1321, column: 9, scope: !1284)
!1302 = !DILocation(line: 1322, column: 14, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1322, column: 13)
!1304 = !DILocation(line: 1322, column: 13, scope: !1303)
!1305 = !DILocation(line: 1322, column: 13, scope: !1277)
!1306 = !DILocation(line: 1323, column: 13, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1322, column: 17)
!1308 = !DILocation(line: 1325, column: 5, scope: !1277)
!1309 = !DILocation(line: 1315, column: 23, scope: !1272)
!1310 = !DILocation(line: 1315, column: 5, scope: !1272)
!1311 = distinct !{!1311, !1275, !1312, !1065}
!1312 = !DILocation(line: 1325, column: 5, scope: !1273)
!1313 = !DILocation(line: 1326, column: 11, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1326, column: 9)
!1315 = !DILocation(line: 1326, column: 10, scope: !1314)
!1316 = !DILocation(line: 1326, column: 9, scope: !1226)
!1317 = !DILocalVariable(name: "c", scope: !1318, file: !3, line: 1329, type: !750)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1326, column: 20)
!1319 = !DILocation(line: 1329, column: 16, scope: !1318)
!1320 = !DILocation(line: 1330, column: 9, scope: !1318)
!1321 = !DILocation(line: 1330, column: 18, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1330, column: 9)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1330, column: 9)
!1324 = !DILocation(line: 1330, column: 17, scope: !1322)
!1325 = !DILocation(line: 1330, column: 9, scope: !1323)
!1326 = !DILocation(line: 1331, column: 25, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1331, column: 17)
!1328 = distinct !DILexicalBlock(scope: !1322, file: !3, line: 1330, column: 27)
!1329 = !DILocation(line: 1331, column: 24, scope: !1327)
!1330 = !DILocation(line: 1331, column: 28, scope: !1327)
!1331 = !DILocation(line: 1331, column: 17, scope: !1327)
!1332 = !DILocation(line: 1331, column: 43, scope: !1327)
!1333 = !DILocation(line: 1331, column: 17, scope: !1328)
!1334 = !DILocation(line: 1332, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1331, column: 49)
!1336 = !DILocation(line: 1334, column: 9, scope: !1328)
!1337 = !DILocation(line: 1330, column: 22, scope: !1322)
!1338 = !DILocation(line: 1330, column: 9, scope: !1322)
!1339 = distinct !{!1339, !1325, !1340, !1065}
!1340 = !DILocation(line: 1334, column: 9, scope: !1323)
!1341 = !DILocation(line: 1335, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1335, column: 13)
!1343 = !DILocation(line: 1335, column: 14, scope: !1342)
!1344 = !DILocation(line: 1335, column: 13, scope: !1318)
!1345 = !DILocation(line: 1336, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1335, column: 18)
!1347 = !DILocation(line: 1336, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1336, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1336, column: 13)
!1350 = !DILocation(line: 1336, column: 13, scope: !1349)
!1351 = !DILocation(line: 1337, column: 9, scope: !1346)
!1352 = !DILocation(line: 1338, column: 5, scope: !1318)
!1353 = !DILocation(line: 1339, column: 20, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1338, column: 12)
!1355 = !DILocation(line: 1339, column: 9, scope: !1354)
!1356 = !DILocation(line: 1341, column: 5, scope: !1226)
!1357 = distinct !DISubprogram(name: "luaSetTableProtectionRecursively", scope: !3, file: !3, line: 1360, type: !1167, scopeLine: 1360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1358 = !DILocalVariable(name: "lua", arg: 1, scope: !1357, file: !3, line: 1360, type: !734)
!1359 = !DILocation(line: 1360, column: 50, scope: !1357)
!1360 = !DILocation(line: 1363, column: 29, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1363, column: 9)
!1362 = !DILocation(line: 1363, column: 9, scope: !1361)
!1363 = !DILocation(line: 1363, column: 9, scope: !1357)
!1364 = !DILocation(line: 1364, column: 9, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 1363, column: 39)
!1366 = !DILocation(line: 1368, column: 29, scope: !1357)
!1367 = !DILocation(line: 1368, column: 5, scope: !1357)
!1368 = !DILocation(line: 1370, column: 20, scope: !1357)
!1369 = !DILocation(line: 1370, column: 5, scope: !1357)
!1370 = !DILocation(line: 1371, column: 17, scope: !1357)
!1371 = !DILocation(line: 1371, column: 5, scope: !1357)
!1372 = !DILocation(line: 1372, column: 5, scope: !1357)
!1373 = !DILocation(line: 1372, column: 21, scope: !1357)
!1374 = !DILocation(line: 1372, column: 12, scope: !1357)
!1375 = !DILocation(line: 1374, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1374, column: 13)
!1377 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1372, column: 30)
!1378 = !DILocation(line: 1374, column: 13, scope: !1377)
!1379 = !DILocation(line: 1375, column: 46, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1374, column: 35)
!1381 = !DILocation(line: 1375, column: 13, scope: !1380)
!1382 = !DILocation(line: 1376, column: 9, scope: !1380)
!1383 = !DILocation(line: 1377, column: 9, scope: !1377)
!1384 = distinct !{!1384, !1372, !1385, !1065}
!1385 = !DILocation(line: 1378, column: 5, scope: !1357)
!1386 = !DILocation(line: 1381, column: 26, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1381, column: 9)
!1388 = !DILocation(line: 1381, column: 9, scope: !1387)
!1389 = !DILocation(line: 1381, column: 9, scope: !1357)
!1390 = !DILocation(line: 1382, column: 42, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1381, column: 36)
!1392 = !DILocation(line: 1382, column: 9, scope: !1391)
!1393 = !DILocation(line: 1383, column: 9, scope: !1391)
!1394 = !DILocation(line: 1384, column: 5, scope: !1391)
!1395 = !DILocation(line: 1385, column: 1, scope: !1357)
!1396 = distinct !DISubprogram(name: "luaRegisterVersion", scope: !3, file: !3, line: 1387, type: !1167, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1397 = !DILocalVariable(name: "lua", arg: 1, scope: !1396, file: !3, line: 1387, type: !734)
!1398 = !DILocation(line: 1387, column: 36, scope: !1396)
!1399 = !DILocation(line: 1388, column: 20, scope: !1396)
!1400 = !DILocation(line: 1388, column: 5, scope: !1396)
!1401 = !DILocation(line: 1389, column: 20, scope: !1396)
!1402 = !DILocation(line: 1389, column: 5, scope: !1396)
!1403 = !DILocation(line: 1390, column: 18, scope: !1396)
!1404 = !DILocation(line: 1390, column: 5, scope: !1396)
!1405 = !DILocation(line: 1392, column: 20, scope: !1396)
!1406 = !DILocation(line: 1392, column: 5, scope: !1396)
!1407 = !DILocation(line: 1393, column: 20, scope: !1396)
!1408 = !DILocation(line: 1393, column: 5, scope: !1396)
!1409 = !DILocation(line: 1394, column: 18, scope: !1396)
!1410 = !DILocation(line: 1394, column: 5, scope: !1396)
!1411 = !DILocation(line: 1395, column: 1, scope: !1396)
!1412 = distinct !DISubprogram(name: "luaRegisterLogFunction", scope: !3, file: !3, line: 1397, type: !1167, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1413 = !DILocalVariable(name: "lua", arg: 1, scope: !1412, file: !3, line: 1397, type: !734)
!1414 = !DILocation(line: 1397, column: 40, scope: !1412)
!1415 = !DILocation(line: 1399, column: 20, scope: !1412)
!1416 = !DILocation(line: 1399, column: 5, scope: !1412)
!1417 = !DILocation(line: 1400, column: 5, scope: !1412)
!1418 = !DILocation(line: 1401, column: 18, scope: !1412)
!1419 = !DILocation(line: 1401, column: 5, scope: !1412)
!1420 = !DILocation(line: 1403, column: 20, scope: !1412)
!1421 = !DILocation(line: 1403, column: 5, scope: !1412)
!1422 = !DILocation(line: 1404, column: 20, scope: !1412)
!1423 = !DILocation(line: 1404, column: 5, scope: !1412)
!1424 = !DILocation(line: 1405, column: 18, scope: !1412)
!1425 = !DILocation(line: 1405, column: 5, scope: !1412)
!1426 = !DILocation(line: 1407, column: 20, scope: !1412)
!1427 = !DILocation(line: 1407, column: 5, scope: !1412)
!1428 = !DILocation(line: 1408, column: 20, scope: !1412)
!1429 = !DILocation(line: 1408, column: 5, scope: !1412)
!1430 = !DILocation(line: 1409, column: 18, scope: !1412)
!1431 = !DILocation(line: 1409, column: 5, scope: !1412)
!1432 = !DILocation(line: 1411, column: 20, scope: !1412)
!1433 = !DILocation(line: 1411, column: 5, scope: !1412)
!1434 = !DILocation(line: 1412, column: 20, scope: !1412)
!1435 = !DILocation(line: 1412, column: 5, scope: !1412)
!1436 = !DILocation(line: 1413, column: 18, scope: !1412)
!1437 = !DILocation(line: 1413, column: 5, scope: !1412)
!1438 = !DILocation(line: 1415, column: 20, scope: !1412)
!1439 = !DILocation(line: 1415, column: 5, scope: !1412)
!1440 = !DILocation(line: 1416, column: 20, scope: !1412)
!1441 = !DILocation(line: 1416, column: 5, scope: !1412)
!1442 = !DILocation(line: 1417, column: 18, scope: !1412)
!1443 = !DILocation(line: 1417, column: 5, scope: !1412)
!1444 = !DILocation(line: 1418, column: 1, scope: !1412)
!1445 = distinct !DISubprogram(name: "luaLogCommand", scope: !3, file: !3, line: 1167, type: !983, scopeLine: 1167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1446 = !DILocalVariable(name: "lua", arg: 1, scope: !1445, file: !3, line: 1167, type: !734)
!1447 = !DILocation(line: 1167, column: 37, scope: !1445)
!1448 = !DILocalVariable(name: "j", scope: !1445, file: !3, line: 1168, type: !114)
!1449 = !DILocation(line: 1168, column: 9, scope: !1445)
!1450 = !DILocalVariable(name: "argc", scope: !1445, file: !3, line: 1168, type: !114)
!1451 = !DILocation(line: 1168, column: 12, scope: !1445)
!1452 = !DILocation(line: 1168, column: 30, scope: !1445)
!1453 = !DILocation(line: 1168, column: 19, scope: !1445)
!1454 = !DILocalVariable(name: "level", scope: !1445, file: !3, line: 1169, type: !114)
!1455 = !DILocation(line: 1169, column: 9, scope: !1445)
!1456 = !DILocalVariable(name: "log", scope: !1445, file: !3, line: 1170, type: !420)
!1457 = !DILocation(line: 1170, column: 9, scope: !1445)
!1458 = !DILocation(line: 1172, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1172, column: 9)
!1460 = !DILocation(line: 1172, column: 14, scope: !1459)
!1461 = !DILocation(line: 1172, column: 9, scope: !1445)
!1462 = !DILocation(line: 1173, column: 22, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1172, column: 19)
!1464 = !DILocation(line: 1173, column: 9, scope: !1463)
!1465 = !DILocation(line: 1174, column: 25, scope: !1463)
!1466 = !DILocation(line: 1174, column: 16, scope: !1463)
!1467 = !DILocation(line: 1174, column: 9, scope: !1463)
!1468 = !DILocation(line: 1175, column: 30, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1175, column: 16)
!1470 = !DILocation(line: 1175, column: 35, scope: !1469)
!1471 = !DILocation(line: 1175, column: 34, scope: !1469)
!1472 = !DILocation(line: 1175, column: 17, scope: !1469)
!1473 = !DILocation(line: 1175, column: 16, scope: !1459)
!1474 = !DILocation(line: 1176, column: 22, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1175, column: 42)
!1476 = !DILocation(line: 1176, column: 9, scope: !1475)
!1477 = !DILocation(line: 1177, column: 25, scope: !1475)
!1478 = !DILocation(line: 1177, column: 16, scope: !1475)
!1479 = !DILocation(line: 1177, column: 9, scope: !1475)
!1480 = !DILocation(line: 1179, column: 26, scope: !1445)
!1481 = !DILocation(line: 1179, column: 31, scope: !1445)
!1482 = !DILocation(line: 1179, column: 30, scope: !1445)
!1483 = !DILocation(line: 1179, column: 13, scope: !1445)
!1484 = !DILocation(line: 1179, column: 11, scope: !1445)
!1485 = !DILocation(line: 1180, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1180, column: 9)
!1487 = !DILocation(line: 1180, column: 15, scope: !1486)
!1488 = !DILocation(line: 1180, column: 26, scope: !1486)
!1489 = !DILocation(line: 1180, column: 29, scope: !1486)
!1490 = !DILocation(line: 1180, column: 35, scope: !1486)
!1491 = !DILocation(line: 1180, column: 9, scope: !1445)
!1492 = !DILocation(line: 1181, column: 22, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1180, column: 49)
!1494 = !DILocation(line: 1181, column: 9, scope: !1493)
!1495 = !DILocation(line: 1182, column: 25, scope: !1493)
!1496 = !DILocation(line: 1182, column: 16, scope: !1493)
!1497 = !DILocation(line: 1182, column: 9, scope: !1493)
!1498 = !DILocation(line: 1184, column: 9, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1184, column: 9)
!1500 = !DILocation(line: 1184, column: 24, scope: !1499)
!1501 = !DILocation(line: 1184, column: 15, scope: !1499)
!1502 = !DILocation(line: 1184, column: 9, scope: !1445)
!1503 = !DILocation(line: 1184, column: 35, scope: !1499)
!1504 = !DILocation(line: 1187, column: 11, scope: !1445)
!1505 = !DILocation(line: 1187, column: 9, scope: !1445)
!1506 = !DILocation(line: 1188, column: 12, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 1188, column: 5)
!1508 = !DILocation(line: 1188, column: 10, scope: !1507)
!1509 = !DILocation(line: 1188, column: 17, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 1188, column: 5)
!1511 = !DILocation(line: 1188, column: 21, scope: !1510)
!1512 = !DILocation(line: 1188, column: 19, scope: !1510)
!1513 = !DILocation(line: 1188, column: 5, scope: !1507)
!1514 = !DILocalVariable(name: "len", scope: !1515, file: !3, line: 1189, type: !108)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 1188, column: 32)
!1516 = !DILocation(line: 1189, column: 16, scope: !1515)
!1517 = !DILocalVariable(name: "s", scope: !1515, file: !3, line: 1190, type: !107)
!1518 = !DILocation(line: 1190, column: 15, scope: !1515)
!1519 = !DILocation(line: 1192, column: 34, scope: !1515)
!1520 = !DILocation(line: 1192, column: 40, scope: !1515)
!1521 = !DILocation(line: 1192, column: 39, scope: !1515)
!1522 = !DILocation(line: 1192, column: 46, scope: !1515)
!1523 = !DILocation(line: 1192, column: 45, scope: !1515)
!1524 = !DILocation(line: 1192, column: 20, scope: !1515)
!1525 = !DILocation(line: 1192, column: 11, scope: !1515)
!1526 = !DILocation(line: 1193, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1193, column: 13)
!1528 = !DILocation(line: 1193, column: 13, scope: !1515)
!1529 = !DILocation(line: 1194, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1194, column: 17)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 1193, column: 16)
!1532 = !DILocation(line: 1194, column: 19, scope: !1530)
!1533 = !DILocation(line: 1194, column: 17, scope: !1531)
!1534 = !DILocation(line: 1194, column: 41, scope: !1530)
!1535 = !DILocation(line: 1194, column: 31, scope: !1530)
!1536 = !DILocation(line: 1194, column: 29, scope: !1530)
!1537 = !DILocation(line: 1194, column: 25, scope: !1530)
!1538 = !DILocation(line: 1195, column: 29, scope: !1531)
!1539 = !DILocation(line: 1195, column: 33, scope: !1531)
!1540 = !DILocation(line: 1195, column: 35, scope: !1531)
!1541 = !DILocation(line: 1195, column: 19, scope: !1531)
!1542 = !DILocation(line: 1195, column: 17, scope: !1531)
!1543 = !DILocation(line: 1196, column: 9, scope: !1531)
!1544 = !DILocation(line: 1197, column: 5, scope: !1515)
!1545 = !DILocation(line: 1188, column: 28, scope: !1510)
!1546 = !DILocation(line: 1188, column: 5, scope: !1510)
!1547 = distinct !{!1547, !1513, !1548, !1065}
!1548 = !DILocation(line: 1197, column: 5, scope: !1507)
!1549 = !DILocation(line: 1198, column: 18, scope: !1445)
!1550 = !DILocation(line: 1198, column: 24, scope: !1445)
!1551 = !DILocation(line: 1198, column: 5, scope: !1445)
!1552 = !DILocation(line: 1199, column: 13, scope: !1445)
!1553 = !DILocation(line: 1199, column: 5, scope: !1445)
!1554 = !DILocation(line: 1200, column: 5, scope: !1445)
!1555 = !DILocation(line: 1201, column: 1, scope: !1445)
!1556 = distinct !DISubprogram(name: "luaRegisterRedisAPI", scope: !3, file: !3, line: 1420, type: !1167, scopeLine: 1420, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1557 = !DILocalVariable(name: "lua", arg: 1, scope: !1556, file: !3, line: 1420, type: !734)
!1558 = !DILocation(line: 1420, column: 37, scope: !1556)
!1559 = !DILocation(line: 1421, column: 19, scope: !1556)
!1560 = !DILocation(line: 1421, column: 5, scope: !1556)
!1561 = !DILocation(line: 1422, column: 31, scope: !1556)
!1562 = !DILocation(line: 1422, column: 5, scope: !1556)
!1563 = !DILocation(line: 1423, column: 5, scope: !1556)
!1564 = !DILocation(line: 1425, column: 22, scope: !1556)
!1565 = !DILocation(line: 1425, column: 5, scope: !1556)
!1566 = !DILocation(line: 1427, column: 5, scope: !1556)
!1567 = !DILocation(line: 1428, column: 5, scope: !1556)
!1568 = !DILocation(line: 1431, column: 5, scope: !1556)
!1569 = !DILocation(line: 1434, column: 20, scope: !1556)
!1570 = !DILocation(line: 1434, column: 5, scope: !1556)
!1571 = !DILocation(line: 1435, column: 5, scope: !1556)
!1572 = !DILocation(line: 1436, column: 18, scope: !1556)
!1573 = !DILocation(line: 1436, column: 5, scope: !1556)
!1574 = !DILocation(line: 1439, column: 20, scope: !1556)
!1575 = !DILocation(line: 1439, column: 5, scope: !1556)
!1576 = !DILocation(line: 1440, column: 5, scope: !1556)
!1577 = !DILocation(line: 1441, column: 18, scope: !1556)
!1578 = !DILocation(line: 1441, column: 5, scope: !1556)
!1579 = !DILocation(line: 1443, column: 28, scope: !1556)
!1580 = !DILocation(line: 1443, column: 5, scope: !1556)
!1581 = !DILocation(line: 1445, column: 24, scope: !1556)
!1582 = !DILocation(line: 1445, column: 5, scope: !1556)
!1583 = !DILocation(line: 1448, column: 20, scope: !1556)
!1584 = !DILocation(line: 1448, column: 5, scope: !1556)
!1585 = !DILocation(line: 1449, column: 5, scope: !1556)
!1586 = !DILocation(line: 1450, column: 18, scope: !1556)
!1587 = !DILocation(line: 1450, column: 5, scope: !1556)
!1588 = !DILocation(line: 1453, column: 20, scope: !1556)
!1589 = !DILocation(line: 1453, column: 5, scope: !1556)
!1590 = !DILocation(line: 1454, column: 5, scope: !1556)
!1591 = !DILocation(line: 1455, column: 18, scope: !1556)
!1592 = !DILocation(line: 1455, column: 5, scope: !1556)
!1593 = !DILocation(line: 1458, column: 20, scope: !1556)
!1594 = !DILocation(line: 1458, column: 5, scope: !1556)
!1595 = !DILocation(line: 1459, column: 5, scope: !1556)
!1596 = !DILocation(line: 1460, column: 18, scope: !1556)
!1597 = !DILocation(line: 1460, column: 5, scope: !1556)
!1598 = !DILocation(line: 1461, column: 20, scope: !1556)
!1599 = !DILocation(line: 1461, column: 5, scope: !1556)
!1600 = !DILocation(line: 1462, column: 5, scope: !1556)
!1601 = !DILocation(line: 1463, column: 18, scope: !1556)
!1602 = !DILocation(line: 1463, column: 5, scope: !1556)
!1603 = !DILocation(line: 1466, column: 20, scope: !1556)
!1604 = !DILocation(line: 1466, column: 5, scope: !1556)
!1605 = !DILocation(line: 1467, column: 5, scope: !1556)
!1606 = !DILocation(line: 1468, column: 18, scope: !1556)
!1607 = !DILocation(line: 1468, column: 5, scope: !1556)
!1608 = !DILocation(line: 1470, column: 20, scope: !1556)
!1609 = !DILocation(line: 1470, column: 5, scope: !1556)
!1610 = !DILocation(line: 1471, column: 20, scope: !1556)
!1611 = !DILocation(line: 1471, column: 5, scope: !1556)
!1612 = !DILocation(line: 1472, column: 18, scope: !1556)
!1613 = !DILocation(line: 1472, column: 5, scope: !1556)
!1614 = !DILocation(line: 1474, column: 20, scope: !1556)
!1615 = !DILocation(line: 1474, column: 5, scope: !1556)
!1616 = !DILocation(line: 1475, column: 20, scope: !1556)
!1617 = !DILocation(line: 1475, column: 5, scope: !1556)
!1618 = !DILocation(line: 1476, column: 18, scope: !1556)
!1619 = !DILocation(line: 1476, column: 5, scope: !1556)
!1620 = !DILocation(line: 1478, column: 20, scope: !1556)
!1621 = !DILocation(line: 1478, column: 5, scope: !1556)
!1622 = !DILocation(line: 1479, column: 20, scope: !1556)
!1623 = !DILocation(line: 1479, column: 5, scope: !1556)
!1624 = !DILocation(line: 1480, column: 18, scope: !1556)
!1625 = !DILocation(line: 1480, column: 5, scope: !1556)
!1626 = !DILocation(line: 1482, column: 20, scope: !1556)
!1627 = !DILocation(line: 1482, column: 5, scope: !1556)
!1628 = !DILocation(line: 1483, column: 20, scope: !1556)
!1629 = !DILocation(line: 1483, column: 5, scope: !1556)
!1630 = !DILocation(line: 1484, column: 18, scope: !1556)
!1631 = !DILocation(line: 1484, column: 5, scope: !1556)
!1632 = !DILocation(line: 1486, column: 20, scope: !1556)
!1633 = !DILocation(line: 1486, column: 5, scope: !1556)
!1634 = !DILocation(line: 1487, column: 20, scope: !1556)
!1635 = !DILocation(line: 1487, column: 5, scope: !1556)
!1636 = !DILocation(line: 1488, column: 18, scope: !1556)
!1637 = !DILocation(line: 1488, column: 5, scope: !1556)
!1638 = !DILocation(line: 1491, column: 20, scope: !1556)
!1639 = !DILocation(line: 1491, column: 5, scope: !1556)
!1640 = !DILocation(line: 1492, column: 5, scope: !1556)
!1641 = !DILocation(line: 1493, column: 18, scope: !1556)
!1642 = !DILocation(line: 1493, column: 5, scope: !1556)
!1643 = !DILocation(line: 1496, column: 5, scope: !1556)
!1644 = !DILocation(line: 1499, column: 5, scope: !1556)
!1645 = !DILocation(line: 1501, column: 20, scope: !1556)
!1646 = !DILocation(line: 1501, column: 5, scope: !1556)
!1647 = !DILocation(line: 1502, column: 5, scope: !1556)
!1648 = !DILocation(line: 1503, column: 18, scope: !1556)
!1649 = !DILocation(line: 1503, column: 5, scope: !1556)
!1650 = !DILocation(line: 1505, column: 20, scope: !1556)
!1651 = !DILocation(line: 1505, column: 5, scope: !1556)
!1652 = !DILocation(line: 1506, column: 5, scope: !1556)
!1653 = !DILocation(line: 1507, column: 18, scope: !1556)
!1654 = !DILocation(line: 1507, column: 5, scope: !1556)
!1655 = !DILocation(line: 1509, column: 5, scope: !1556)
!1656 = !DILocation(line: 1510, column: 1, scope: !1556)
!1657 = distinct !DISubprogram(name: "luaLoadLibraries", scope: !3, file: !3, line: 1241, type: !1167, scopeLine: 1241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1658 = !DILocalVariable(name: "lua", arg: 1, scope: !1657, file: !3, line: 1241, type: !734)
!1659 = !DILocation(line: 1241, column: 41, scope: !1657)
!1660 = !DILocation(line: 1242, column: 16, scope: !1657)
!1661 = !DILocation(line: 1242, column: 5, scope: !1657)
!1662 = !DILocation(line: 1243, column: 16, scope: !1657)
!1663 = !DILocation(line: 1243, column: 5, scope: !1657)
!1664 = !DILocation(line: 1244, column: 16, scope: !1657)
!1665 = !DILocation(line: 1244, column: 5, scope: !1657)
!1666 = !DILocation(line: 1245, column: 16, scope: !1657)
!1667 = !DILocation(line: 1245, column: 5, scope: !1657)
!1668 = !DILocation(line: 1246, column: 16, scope: !1657)
!1669 = !DILocation(line: 1246, column: 5, scope: !1657)
!1670 = !DILocation(line: 1247, column: 16, scope: !1657)
!1671 = !DILocation(line: 1247, column: 5, scope: !1657)
!1672 = !DILocation(line: 1248, column: 16, scope: !1657)
!1673 = !DILocation(line: 1248, column: 5, scope: !1657)
!1674 = !DILocation(line: 1249, column: 16, scope: !1657)
!1675 = !DILocation(line: 1249, column: 5, scope: !1657)
!1676 = !DILocation(line: 1250, column: 16, scope: !1657)
!1677 = !DILocation(line: 1250, column: 5, scope: !1657)
!1678 = !DILocation(line: 1256, column: 1, scope: !1657)
!1679 = distinct !DISubprogram(name: "luaRedisPcall", scope: !3, file: !3, line: 1006, type: !983, scopeLine: 1006, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1680 = !DILocalVariable(name: "lua", arg: 1, scope: !1679, file: !3, line: 1006, type: !734)
!1681 = !DILocation(line: 1006, column: 37, scope: !1679)
!1682 = !DILocalVariable(name: "argc", scope: !1679, file: !3, line: 1007, type: !114)
!1683 = !DILocation(line: 1007, column: 9, scope: !1679)
!1684 = !DILocation(line: 1007, column: 27, scope: !1679)
!1685 = !DILocation(line: 1007, column: 16, scope: !1679)
!1686 = !DILocation(line: 1008, column: 21, scope: !1679)
!1687 = !DILocation(line: 1008, column: 5, scope: !1679)
!1688 = !DILocation(line: 1009, column: 16, scope: !1679)
!1689 = !DILocation(line: 1009, column: 5, scope: !1679)
!1690 = !DILocation(line: 1010, column: 19, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1010, column: 9)
!1692 = !DILocation(line: 1010, column: 24, scope: !1691)
!1693 = !DILocation(line: 1010, column: 29, scope: !1691)
!1694 = !DILocation(line: 1010, column: 9, scope: !1691)
!1695 = !DILocation(line: 1010, column: 9, scope: !1679)
!1696 = !DILocation(line: 1012, column: 20, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 1010, column: 51)
!1698 = !DILocation(line: 1012, column: 9, scope: !1697)
!1699 = !DILocation(line: 1013, column: 13, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 1013, column: 13)
!1701 = !DILocation(line: 1013, column: 13, scope: !1697)
!1702 = !DILocation(line: 1014, column: 26, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 1013, column: 35)
!1704 = !DILocation(line: 1014, column: 13, scope: !1703)
!1705 = !DILocation(line: 1015, column: 30, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1015, column: 17)
!1707 = !DILocation(line: 1015, column: 17, scope: !1706)
!1708 = !DILocation(line: 1015, column: 17, scope: !1703)
!1709 = !DILocation(line: 1016, column: 29, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1015, column: 40)
!1711 = !DILocation(line: 1016, column: 17, scope: !1710)
!1712 = !DILocation(line: 1017, column: 13, scope: !1710)
!1713 = !DILocation(line: 1018, column: 9, scope: !1703)
!1714 = !DILocation(line: 1019, column: 25, scope: !1697)
!1715 = !DILocation(line: 1019, column: 9, scope: !1697)
!1716 = !DILocation(line: 1020, column: 20, scope: !1697)
!1717 = !DILocation(line: 1020, column: 9, scope: !1697)
!1718 = !DILocation(line: 1021, column: 5, scope: !1697)
!1719 = !DILocation(line: 1022, column: 23, scope: !1679)
!1720 = !DILocation(line: 1022, column: 12, scope: !1679)
!1721 = !DILocation(line: 1022, column: 5, scope: !1679)
!1722 = distinct !DISubprogram(name: "luaRedisCallCommand", scope: !3, file: !3, line: 1027, type: !983, scopeLine: 1027, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1723 = !DILocalVariable(name: "lua", arg: 1, scope: !1722, file: !3, line: 1027, type: !734)
!1724 = !DILocation(line: 1027, column: 43, scope: !1722)
!1725 = !DILocation(line: 1028, column: 35, scope: !1722)
!1726 = !DILocation(line: 1028, column: 12, scope: !1722)
!1727 = !DILocation(line: 1028, column: 5, scope: !1722)
!1728 = distinct !DISubprogram(name: "luaRedisPCallCommand", scope: !3, file: !3, line: 1032, type: !983, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1729 = !DILocalVariable(name: "lua", arg: 1, scope: !1728, file: !3, line: 1032, type: !734)
!1730 = !DILocation(line: 1032, column: 44, scope: !1728)
!1731 = !DILocation(line: 1033, column: 35, scope: !1728)
!1732 = !DILocation(line: 1033, column: 12, scope: !1728)
!1733 = !DILocation(line: 1033, column: 5, scope: !1728)
!1734 = distinct !DISubprogram(name: "luaSetResp", scope: !3, file: !3, line: 1204, type: !983, scopeLine: 1204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1735 = !DILocalVariable(name: "lua", arg: 1, scope: !1734, file: !3, line: 1204, type: !734)
!1736 = !DILocation(line: 1204, column: 34, scope: !1734)
!1737 = !DILocalVariable(name: "rctx", scope: !1734, file: !3, line: 1205, type: !122)
!1738 = !DILocation(line: 1205, column: 19, scope: !1734)
!1739 = !DILocation(line: 1205, column: 45, scope: !1734)
!1740 = !DILocation(line: 1205, column: 26, scope: !1734)
!1741 = !DILocation(line: 1206, column: 10, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1206, column: 9)
!1743 = !DILocation(line: 1206, column: 9, scope: !1734)
!1744 = !DILocation(line: 1207, column: 22, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 1206, column: 16)
!1746 = !DILocation(line: 1207, column: 9, scope: !1745)
!1747 = !DILocation(line: 1208, column: 25, scope: !1745)
!1748 = !DILocation(line: 1208, column: 16, scope: !1745)
!1749 = !DILocation(line: 1208, column: 9, scope: !1745)
!1750 = !DILocalVariable(name: "argc", scope: !1734, file: !3, line: 1210, type: !114)
!1751 = !DILocation(line: 1210, column: 9, scope: !1734)
!1752 = !DILocation(line: 1210, column: 27, scope: !1734)
!1753 = !DILocation(line: 1210, column: 16, scope: !1734)
!1754 = !DILocation(line: 1212, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1212, column: 9)
!1756 = !DILocation(line: 1212, column: 14, scope: !1755)
!1757 = !DILocation(line: 1212, column: 9, scope: !1734)
!1758 = !DILocation(line: 1213, column: 22, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1212, column: 20)
!1760 = !DILocation(line: 1213, column: 9, scope: !1759)
!1761 = !DILocation(line: 1214, column: 25, scope: !1759)
!1762 = !DILocation(line: 1214, column: 16, scope: !1759)
!1763 = !DILocation(line: 1214, column: 9, scope: !1759)
!1764 = !DILocalVariable(name: "resp", scope: !1734, file: !3, line: 1217, type: !114)
!1765 = !DILocation(line: 1217, column: 9, scope: !1734)
!1766 = !DILocation(line: 1217, column: 29, scope: !1734)
!1767 = !DILocation(line: 1217, column: 34, scope: !1734)
!1768 = !DILocation(line: 1217, column: 33, scope: !1734)
!1769 = !DILocation(line: 1217, column: 16, scope: !1734)
!1770 = !DILocation(line: 1218, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1218, column: 9)
!1772 = !DILocation(line: 1218, column: 14, scope: !1771)
!1773 = !DILocation(line: 1218, column: 19, scope: !1771)
!1774 = !DILocation(line: 1218, column: 22, scope: !1771)
!1775 = !DILocation(line: 1218, column: 27, scope: !1771)
!1776 = !DILocation(line: 1218, column: 9, scope: !1734)
!1777 = !DILocation(line: 1219, column: 22, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1218, column: 33)
!1779 = !DILocation(line: 1219, column: 9, scope: !1778)
!1780 = !DILocation(line: 1220, column: 25, scope: !1778)
!1781 = !DILocation(line: 1220, column: 16, scope: !1778)
!1782 = !DILocation(line: 1220, column: 9, scope: !1778)
!1783 = !DILocation(line: 1222, column: 19, scope: !1734)
!1784 = !DILocation(line: 1222, column: 25, scope: !1734)
!1785 = !DILocation(line: 1222, column: 5, scope: !1734)
!1786 = !DILocation(line: 1223, column: 5, scope: !1734)
!1787 = !DILocation(line: 1224, column: 1, scope: !1734)
!1788 = distinct !DISubprogram(name: "luaRedisSha1hexCommand", scope: !3, file: !3, line: 1038, type: !983, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1789 = !DILocalVariable(name: "lua", arg: 1, scope: !1788, file: !3, line: 1038, type: !734)
!1790 = !DILocation(line: 1038, column: 46, scope: !1788)
!1791 = !DILocalVariable(name: "argc", scope: !1788, file: !3, line: 1039, type: !114)
!1792 = !DILocation(line: 1039, column: 9, scope: !1788)
!1793 = !DILocation(line: 1039, column: 27, scope: !1788)
!1794 = !DILocation(line: 1039, column: 16, scope: !1788)
!1795 = !DILocalVariable(name: "digest", scope: !1788, file: !3, line: 1040, type: !628)
!1796 = !DILocation(line: 1040, column: 10, scope: !1788)
!1797 = !DILocalVariable(name: "len", scope: !1788, file: !3, line: 1041, type: !108)
!1798 = !DILocation(line: 1041, column: 12, scope: !1788)
!1799 = !DILocalVariable(name: "s", scope: !1788, file: !3, line: 1042, type: !107)
!1800 = !DILocation(line: 1042, column: 11, scope: !1788)
!1801 = !DILocation(line: 1044, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 1044, column: 9)
!1803 = !DILocation(line: 1044, column: 14, scope: !1802)
!1804 = !DILocation(line: 1044, column: 9, scope: !1788)
!1805 = !DILocation(line: 1045, column: 22, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1044, column: 20)
!1807 = !DILocation(line: 1045, column: 9, scope: !1806)
!1808 = !DILocation(line: 1046, column: 25, scope: !1806)
!1809 = !DILocation(line: 1046, column: 16, scope: !1806)
!1810 = !DILocation(line: 1046, column: 9, scope: !1806)
!1811 = !DILocation(line: 1049, column: 30, scope: !1788)
!1812 = !DILocation(line: 1049, column: 16, scope: !1788)
!1813 = !DILocation(line: 1049, column: 7, scope: !1788)
!1814 = !DILocation(line: 1050, column: 13, scope: !1788)
!1815 = !DILocation(line: 1050, column: 20, scope: !1788)
!1816 = !DILocation(line: 1050, column: 22, scope: !1788)
!1817 = !DILocation(line: 1050, column: 5, scope: !1788)
!1818 = !DILocation(line: 1051, column: 20, scope: !1788)
!1819 = !DILocation(line: 1051, column: 24, scope: !1788)
!1820 = !DILocation(line: 1051, column: 5, scope: !1788)
!1821 = !DILocation(line: 1052, column: 5, scope: !1788)
!1822 = !DILocation(line: 1053, column: 1, scope: !1788)
!1823 = distinct !DISubprogram(name: "luaRedisErrorReplyCommand", scope: !3, file: !3, line: 1076, type: !983, scopeLine: 1076, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1824 = !DILocalVariable(name: "lua", arg: 1, scope: !1823, file: !3, line: 1076, type: !734)
!1825 = !DILocation(line: 1076, column: 49, scope: !1823)
!1826 = !DILocation(line: 1077, column: 20, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1077, column: 9)
!1828 = !DILocation(line: 1077, column: 9, scope: !1827)
!1829 = !DILocation(line: 1077, column: 25, scope: !1827)
!1830 = !DILocation(line: 1077, column: 30, scope: !1827)
!1831 = !DILocation(line: 1077, column: 42, scope: !1827)
!1832 = !DILocation(line: 1077, column: 33, scope: !1827)
!1833 = !DILocation(line: 1077, column: 50, scope: !1827)
!1834 = !DILocation(line: 1077, column: 9, scope: !1823)
!1835 = !DILocation(line: 1078, column: 22, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1077, column: 66)
!1837 = !DILocation(line: 1078, column: 9, scope: !1836)
!1838 = !DILocation(line: 1079, column: 9, scope: !1836)
!1839 = !DILocalVariable(name: "err", scope: !1823, file: !3, line: 1083, type: !128)
!1840 = !DILocation(line: 1083, column: 17, scope: !1823)
!1841 = !DILocation(line: 1083, column: 23, scope: !1823)
!1842 = !DILocalVariable(name: "err_buff", scope: !1823, file: !3, line: 1084, type: !420)
!1843 = !DILocation(line: 1084, column: 9, scope: !1823)
!1844 = !DILocation(line: 1085, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 1085, column: 9)
!1846 = !DILocation(line: 1085, column: 16, scope: !1845)
!1847 = !DILocation(line: 1085, column: 9, scope: !1823)
!1848 = !DILocation(line: 1086, column: 30, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1085, column: 24)
!1850 = !DILocation(line: 1086, column: 49, scope: !1849)
!1851 = !DILocation(line: 1086, column: 20, scope: !1849)
!1852 = !DILocation(line: 1086, column: 18, scope: !1849)
!1853 = !DILocation(line: 1087, column: 5, scope: !1849)
!1854 = !DILocation(line: 1088, column: 27, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1087, column: 12)
!1856 = !DILocation(line: 1088, column: 20, scope: !1855)
!1857 = !DILocation(line: 1088, column: 18, scope: !1855)
!1858 = !DILocation(line: 1090, column: 22, scope: !1823)
!1859 = !DILocation(line: 1090, column: 27, scope: !1823)
!1860 = !DILocation(line: 1090, column: 5, scope: !1823)
!1861 = !DILocation(line: 1091, column: 5, scope: !1823)
!1862 = !DILocation(line: 1092, column: 1, scope: !1823)
!1863 = distinct !DISubprogram(name: "luaRedisStatusReplyCommand", scope: !3, file: !3, line: 1095, type: !983, scopeLine: 1095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1864 = !DILocalVariable(name: "lua", arg: 1, scope: !1863, file: !3, line: 1095, type: !734)
!1865 = !DILocation(line: 1095, column: 50, scope: !1863)
!1866 = !DILocation(line: 1096, column: 43, scope: !1863)
!1867 = !DILocation(line: 1096, column: 12, scope: !1863)
!1868 = !DILocation(line: 1096, column: 5, scope: !1863)
!1869 = distinct !DISubprogram(name: "luaRedisSetReplCommand", scope: !3, file: !3, line: 1103, type: !983, scopeLine: 1103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1870 = !DILocalVariable(name: "lua", arg: 1, scope: !1869, file: !3, line: 1103, type: !734)
!1871 = !DILocation(line: 1103, column: 46, scope: !1869)
!1872 = !DILocalVariable(name: "flags", scope: !1869, file: !3, line: 1104, type: !114)
!1873 = !DILocation(line: 1104, column: 9, scope: !1869)
!1874 = !DILocalVariable(name: "argc", scope: !1869, file: !3, line: 1104, type: !114)
!1875 = !DILocation(line: 1104, column: 16, scope: !1869)
!1876 = !DILocation(line: 1104, column: 34, scope: !1869)
!1877 = !DILocation(line: 1104, column: 23, scope: !1869)
!1878 = !DILocalVariable(name: "rctx", scope: !1869, file: !3, line: 1106, type: !122)
!1879 = !DILocation(line: 1106, column: 19, scope: !1869)
!1880 = !DILocation(line: 1106, column: 45, scope: !1869)
!1881 = !DILocation(line: 1106, column: 26, scope: !1869)
!1882 = !DILocation(line: 1107, column: 10, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1107, column: 9)
!1884 = !DILocation(line: 1107, column: 9, scope: !1869)
!1885 = !DILocation(line: 1108, column: 22, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1107, column: 16)
!1887 = !DILocation(line: 1108, column: 9, scope: !1886)
!1888 = !DILocation(line: 1109, column: 25, scope: !1886)
!1889 = !DILocation(line: 1109, column: 16, scope: !1886)
!1890 = !DILocation(line: 1109, column: 9, scope: !1886)
!1891 = !DILocation(line: 1112, column: 9, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1112, column: 9)
!1893 = !DILocation(line: 1112, column: 14, scope: !1892)
!1894 = !DILocation(line: 1112, column: 9, scope: !1869)
!1895 = !DILocation(line: 1113, column: 22, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1112, column: 20)
!1897 = !DILocation(line: 1113, column: 9, scope: !1896)
!1898 = !DILocation(line: 1114, column: 26, scope: !1896)
!1899 = !DILocation(line: 1114, column: 17, scope: !1896)
!1900 = !DILocation(line: 1114, column: 10, scope: !1896)
!1901 = !DILocation(line: 1117, column: 26, scope: !1869)
!1902 = !DILocation(line: 1117, column: 13, scope: !1869)
!1903 = !DILocation(line: 1117, column: 11, scope: !1869)
!1904 = !DILocation(line: 1118, column: 10, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1118, column: 9)
!1906 = !DILocation(line: 1118, column: 16, scope: !1905)
!1907 = !DILocation(line: 1118, column: 51, scope: !1905)
!1908 = !DILocation(line: 1118, column: 9, scope: !1869)
!1909 = !DILocation(line: 1119, column: 22, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 1118, column: 57)
!1911 = !DILocation(line: 1119, column: 9, scope: !1910)
!1912 = !DILocation(line: 1120, column: 25, scope: !1910)
!1913 = !DILocation(line: 1120, column: 16, scope: !1910)
!1914 = !DILocation(line: 1120, column: 9, scope: !1910)
!1915 = !DILocation(line: 1123, column: 19, scope: !1869)
!1916 = !DILocation(line: 1123, column: 25, scope: !1869)
!1917 = !DILocation(line: 1123, column: 5, scope: !1869)
!1918 = !DILocation(line: 1124, column: 5, scope: !1869)
!1919 = !DILocation(line: 1125, column: 1, scope: !1869)
!1920 = distinct !DISubprogram(name: "luaRedisAclCheckCmdPermissionsCommand", scope: !3, file: !3, line: 1130, type: !983, scopeLine: 1130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!1921 = !DILocalVariable(name: "lua", arg: 1, scope: !1920, file: !3, line: 1130, type: !734)
!1922 = !DILocation(line: 1130, column: 61, scope: !1920)
!1923 = !DILocalVariable(name: "rctx", scope: !1920, file: !3, line: 1131, type: !122)
!1924 = !DILocation(line: 1131, column: 19, scope: !1920)
!1925 = !DILocation(line: 1131, column: 45, scope: !1920)
!1926 = !DILocation(line: 1131, column: 26, scope: !1920)
!1927 = !DILocation(line: 1132, column: 10, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1132, column: 9)
!1929 = !DILocation(line: 1132, column: 9, scope: !1920)
!1930 = !DILocation(line: 1133, column: 22, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 1132, column: 16)
!1932 = !DILocation(line: 1133, column: 9, scope: !1931)
!1933 = !DILocation(line: 1134, column: 25, scope: !1931)
!1934 = !DILocation(line: 1134, column: 16, scope: !1931)
!1935 = !DILocation(line: 1134, column: 9, scope: !1931)
!1936 = !DILocalVariable(name: "raise_error", scope: !1920, file: !3, line: 1136, type: !114)
!1937 = !DILocation(line: 1136, column: 9, scope: !1920)
!1938 = !DILocalVariable(name: "argc", scope: !1920, file: !3, line: 1138, type: !114)
!1939 = !DILocation(line: 1138, column: 9, scope: !1920)
!1940 = !DILocalVariable(name: "argv_len", scope: !1920, file: !3, line: 1138, type: !114)
!1941 = !DILocation(line: 1138, column: 15, scope: !1920)
!1942 = !DILocalVariable(name: "argv", scope: !1920, file: !3, line: 1139, type: !425)
!1943 = !DILocation(line: 1139, column: 12, scope: !1920)
!1944 = !DILocation(line: 1139, column: 38, scope: !1920)
!1945 = !DILocation(line: 1139, column: 19, scope: !1920)
!1946 = !DILocation(line: 1142, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1142, column: 9)
!1948 = !DILocation(line: 1142, column: 14, scope: !1947)
!1949 = !DILocation(line: 1142, column: 9, scope: !1920)
!1950 = !DILocation(line: 1142, column: 39, scope: !1947)
!1951 = !DILocation(line: 1142, column: 30, scope: !1947)
!1952 = !DILocation(line: 1142, column: 23, scope: !1947)
!1953 = !DILocalVariable(name: "cmd", scope: !1920, file: !3, line: 1145, type: !431)
!1954 = !DILocation(line: 1145, column: 26, scope: !1920)
!1955 = !DILocation(line: 1146, column: 30, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1146, column: 9)
!1957 = !DILocation(line: 1146, column: 36, scope: !1956)
!1958 = !DILocation(line: 1146, column: 16, scope: !1956)
!1959 = !DILocation(line: 1146, column: 14, scope: !1956)
!1960 = !DILocation(line: 1146, column: 43, scope: !1956)
!1961 = !DILocation(line: 1146, column: 9, scope: !1920)
!1962 = !DILocation(line: 1147, column: 22, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1146, column: 52)
!1964 = !DILocation(line: 1147, column: 9, scope: !1963)
!1965 = !DILocation(line: 1148, column: 21, scope: !1963)
!1966 = !DILocation(line: 1149, column: 5, scope: !1963)
!1967 = !DILocalVariable(name: "keyidxptr", scope: !1968, file: !3, line: 1150, type: !114)
!1968 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1149, column: 12)
!1969 = !DILocation(line: 1150, column: 13, scope: !1968)
!1970 = !DILocation(line: 1151, column: 40, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 1151, column: 13)
!1972 = !DILocation(line: 1151, column: 46, scope: !1971)
!1973 = !DILocation(line: 1151, column: 63, scope: !1971)
!1974 = !DILocation(line: 1151, column: 69, scope: !1971)
!1975 = !DILocation(line: 1151, column: 74, scope: !1971)
!1976 = !DILocation(line: 1151, column: 80, scope: !1971)
!1977 = !DILocation(line: 1151, column: 13, scope: !1971)
!1978 = !DILocation(line: 1151, column: 98, scope: !1971)
!1979 = !DILocation(line: 1151, column: 13, scope: !1968)
!1980 = !DILocation(line: 1152, column: 29, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1151, column: 109)
!1982 = !DILocation(line: 1152, column: 13, scope: !1981)
!1983 = !DILocation(line: 1153, column: 9, scope: !1981)
!1984 = !DILocation(line: 1154, column: 29, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1971, file: !3, line: 1153, column: 16)
!1986 = !DILocation(line: 1154, column: 13, scope: !1985)
!1987 = !DILocation(line: 1158, column: 22, scope: !1920)
!1988 = !DILocation(line: 1158, column: 28, scope: !1920)
!1989 = !DILocation(line: 1158, column: 34, scope: !1920)
!1990 = !DILocation(line: 1158, column: 5, scope: !1920)
!1991 = !DILocation(line: 1159, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 1159, column: 9)
!1993 = !DILocation(line: 1159, column: 9, scope: !1920)
!1994 = !DILocation(line: 1160, column: 25, scope: !1992)
!1995 = !DILocation(line: 1160, column: 16, scope: !1992)
!1996 = !DILocation(line: 1160, column: 9, scope: !1992)
!1997 = !DILocation(line: 1162, column: 9, scope: !1992)
!1998 = !DILocation(line: 1163, column: 1, scope: !1920)
!1999 = distinct !DISubprogram(name: "redis_math_random", scope: !3, file: !3, line: 1534, type: !983, scopeLine: 1534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2000 = !DILocalVariable(name: "L", arg: 1, scope: !1999, file: !3, line: 1534, type: !734)
!2001 = !DILocation(line: 1534, column: 42, scope: !1999)
!2002 = !DILocalVariable(name: "rctx", scope: !1999, file: !3, line: 1535, type: !122)
!2003 = !DILocation(line: 1535, column: 17, scope: !1999)
!2004 = !DILocation(line: 1535, column: 43, scope: !1999)
!2005 = !DILocation(line: 1535, column: 24, scope: !1999)
!2006 = !DILocation(line: 1536, column: 8, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1536, column: 7)
!2008 = !DILocation(line: 1536, column: 7, scope: !1999)
!2009 = !DILocation(line: 1537, column: 23, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 1536, column: 14)
!2011 = !DILocation(line: 1537, column: 12, scope: !2010)
!2012 = !DILocation(line: 1537, column: 5, scope: !2010)
!2013 = !DILocalVariable(name: "r", scope: !1999, file: !3, line: 1542, type: !112)
!2014 = !DILocation(line: 1542, column: 14, scope: !1999)
!2015 = !DILocation(line: 1542, column: 31, scope: !1999)
!2016 = !DILocation(line: 1542, column: 45, scope: !1999)
!2017 = !DILocation(line: 1542, column: 18, scope: !1999)
!2018 = !DILocation(line: 1542, column: 65, scope: !1999)
!2019 = !DILocation(line: 1544, column: 22, scope: !1999)
!2020 = !DILocation(line: 1544, column: 11, scope: !1999)
!2021 = !DILocation(line: 1544, column: 3, scope: !1999)
!2022 = !DILocation(line: 1546, column: 22, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1545, column: 13)
!2024 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 1544, column: 26)
!2025 = !DILocation(line: 1546, column: 25, scope: !2023)
!2026 = !DILocation(line: 1546, column: 7, scope: !2023)
!2027 = !DILocation(line: 1547, column: 7, scope: !2023)
!2028 = !DILocalVariable(name: "u", scope: !2029, file: !3, line: 1550, type: !114)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1549, column: 13)
!2030 = !DILocation(line: 1550, column: 11, scope: !2029)
!2031 = !DILocation(line: 1550, column: 15, scope: !2029)
!2032 = !DILocation(line: 1551, column: 7, scope: !2029)
!2033 = !DILocation(line: 1552, column: 22, scope: !2029)
!2034 = !DILocation(line: 1552, column: 31, scope: !2029)
!2035 = !DILocation(line: 1552, column: 33, scope: !2029)
!2036 = !DILocation(line: 1552, column: 32, scope: !2029)
!2037 = !DILocation(line: 1552, column: 25, scope: !2029)
!2038 = !DILocation(line: 1552, column: 35, scope: !2029)
!2039 = !DILocation(line: 1552, column: 7, scope: !2029)
!2040 = !DILocation(line: 1553, column: 7, scope: !2029)
!2041 = !DILocalVariable(name: "l", scope: !2042, file: !3, line: 1556, type: !114)
!2042 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1555, column: 13)
!2043 = !DILocation(line: 1556, column: 11, scope: !2042)
!2044 = !DILocation(line: 1556, column: 15, scope: !2042)
!2045 = !DILocalVariable(name: "u", scope: !2042, file: !3, line: 1557, type: !114)
!2046 = !DILocation(line: 1557, column: 11, scope: !2042)
!2047 = !DILocation(line: 1557, column: 15, scope: !2042)
!2048 = !DILocation(line: 1558, column: 7, scope: !2042)
!2049 = !DILocation(line: 1559, column: 22, scope: !2042)
!2050 = !DILocation(line: 1559, column: 31, scope: !2042)
!2051 = !DILocation(line: 1559, column: 34, scope: !2042)
!2052 = !DILocation(line: 1559, column: 36, scope: !2042)
!2053 = !DILocation(line: 1559, column: 35, scope: !2042)
!2054 = !DILocation(line: 1559, column: 37, scope: !2042)
!2055 = !DILocation(line: 1559, column: 33, scope: !2042)
!2056 = !DILocation(line: 1559, column: 32, scope: !2042)
!2057 = !DILocation(line: 1559, column: 25, scope: !2042)
!2058 = !DILocation(line: 1559, column: 42, scope: !2042)
!2059 = !DILocation(line: 1559, column: 41, scope: !2042)
!2060 = !DILocation(line: 1559, column: 7, scope: !2042)
!2061 = !DILocation(line: 1560, column: 7, scope: !2042)
!2062 = !DILocation(line: 1562, column: 32, scope: !2024)
!2063 = !DILocation(line: 1562, column: 21, scope: !2024)
!2064 = !DILocation(line: 1562, column: 14, scope: !2024)
!2065 = !DILocation(line: 1564, column: 3, scope: !1999)
!2066 = !DILocation(line: 1565, column: 1, scope: !1999)
!2067 = distinct !DISubprogram(name: "redis_math_randomseed", scope: !3, file: !3, line: 1567, type: !983, scopeLine: 1567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2068 = !DILocalVariable(name: "L", arg: 1, scope: !2067, file: !3, line: 1567, type: !734)
!2069 = !DILocation(line: 1567, column: 46, scope: !2067)
!2070 = !DILocalVariable(name: "rctx", scope: !2067, file: !3, line: 1568, type: !122)
!2071 = !DILocation(line: 1568, column: 17, scope: !2067)
!2072 = !DILocation(line: 1568, column: 43, scope: !2067)
!2073 = !DILocation(line: 1568, column: 24, scope: !2067)
!2074 = !DILocation(line: 1569, column: 8, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 1569, column: 7)
!2076 = !DILocation(line: 1569, column: 7, scope: !2067)
!2077 = !DILocation(line: 1570, column: 23, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1569, column: 14)
!2079 = !DILocation(line: 1570, column: 12, scope: !2078)
!2080 = !DILocation(line: 1570, column: 5, scope: !2078)
!2081 = !DILocation(line: 1572, column: 16, scope: !2067)
!2082 = !DILocation(line: 1572, column: 3, scope: !2067)
!2083 = !DILocation(line: 1573, column: 3, scope: !2067)
!2084 = !DILocation(line: 1574, column: 1, scope: !2067)
!2085 = distinct !DISubprogram(name: "luaErrorInformationDiscard", scope: !3, file: !3, line: 1595, type: !2086, scopeLine: 1595, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !2088}
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorInfo", file: !2090, line: 66, baseType: !2091)
!2090 = !DIFile(filename: "./script_lua.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "errorInfo", file: !2090, line: 61, size: 256, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !2091, file: !2090, line: 62, baseType: !420, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !2091, file: !2090, line: 63, baseType: !420, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2091, file: !2090, line: 64, baseType: !420, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_err_stats_update", scope: !2091, file: !2090, line: 65, baseType: !114, size: 32, offset: 192)
!2097 = !DILocalVariable(name: "err_info", arg: 1, scope: !2085, file: !3, line: 1595, type: !2088)
!2098 = !DILocation(line: 1595, column: 44, scope: !2085)
!2099 = !DILocation(line: 1596, column: 9, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 1596, column: 9)
!2101 = !DILocation(line: 1596, column: 19, scope: !2100)
!2102 = !DILocation(line: 1596, column: 9, scope: !2085)
!2103 = !DILocation(line: 1596, column: 32, scope: !2100)
!2104 = !DILocation(line: 1596, column: 42, scope: !2100)
!2105 = !DILocation(line: 1596, column: 24, scope: !2100)
!2106 = !DILocation(line: 1597, column: 9, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 1597, column: 9)
!2108 = !DILocation(line: 1597, column: 19, scope: !2107)
!2109 = !DILocation(line: 1597, column: 9, scope: !2085)
!2110 = !DILocation(line: 1597, column: 35, scope: !2107)
!2111 = !DILocation(line: 1597, column: 45, scope: !2107)
!2112 = !DILocation(line: 1597, column: 27, scope: !2107)
!2113 = !DILocation(line: 1598, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 1598, column: 9)
!2115 = !DILocation(line: 1598, column: 19, scope: !2114)
!2116 = !DILocation(line: 1598, column: 9, scope: !2085)
!2117 = !DILocation(line: 1598, column: 33, scope: !2114)
!2118 = !DILocation(line: 1598, column: 43, scope: !2114)
!2119 = !DILocation(line: 1598, column: 25, scope: !2114)
!2120 = !DILocation(line: 1599, column: 1, scope: !2085)
!2121 = distinct !DISubprogram(name: "luaExtractErrorInformation", scope: !3, file: !3, line: 1601, type: !2122, scopeLine: 1601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !734, !2088}
!2124 = !DILocalVariable(name: "lua", arg: 1, scope: !2121, file: !3, line: 1601, type: !734)
!2125 = !DILocation(line: 1601, column: 44, scope: !2121)
!2126 = !DILocalVariable(name: "err_info", arg: 2, scope: !2121, file: !3, line: 1601, type: !2088)
!2127 = !DILocation(line: 1601, column: 60, scope: !2121)
!2128 = !DILocation(line: 1602, column: 22, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1602, column: 9)
!2130 = !DILocation(line: 1602, column: 9, scope: !2129)
!2131 = !DILocation(line: 1602, column: 9, scope: !2121)
!2132 = !DILocation(line: 1603, column: 35, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1602, column: 32)
!2134 = !DILocation(line: 1603, column: 57, scope: !2133)
!2135 = !DILocation(line: 1603, column: 25, scope: !2133)
!2136 = !DILocation(line: 1603, column: 9, scope: !2133)
!2137 = !DILocation(line: 1603, column: 19, scope: !2133)
!2138 = !DILocation(line: 1603, column: 23, scope: !2133)
!2139 = !DILocation(line: 1604, column: 9, scope: !2133)
!2140 = !DILocation(line: 1604, column: 19, scope: !2133)
!2141 = !DILocation(line: 1604, column: 24, scope: !2133)
!2142 = !DILocation(line: 1605, column: 9, scope: !2133)
!2143 = !DILocation(line: 1605, column: 19, scope: !2133)
!2144 = !DILocation(line: 1605, column: 26, scope: !2133)
!2145 = !DILocation(line: 1606, column: 9, scope: !2133)
!2146 = !DILocation(line: 1606, column: 19, scope: !2133)
!2147 = !DILocation(line: 1606, column: 43, scope: !2133)
!2148 = !DILocation(line: 1607, column: 5, scope: !2133)
!2149 = !DILocation(line: 1609, column: 18, scope: !2121)
!2150 = !DILocation(line: 1609, column: 5, scope: !2121)
!2151 = !DILocation(line: 1610, column: 22, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1610, column: 9)
!2153 = !DILocation(line: 1610, column: 9, scope: !2152)
!2154 = !DILocation(line: 1610, column: 9, scope: !2121)
!2155 = !DILocation(line: 1611, column: 32, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1610, column: 32)
!2157 = !DILocation(line: 1611, column: 25, scope: !2156)
!2158 = !DILocation(line: 1611, column: 9, scope: !2156)
!2159 = !DILocation(line: 1611, column: 19, scope: !2156)
!2160 = !DILocation(line: 1611, column: 23, scope: !2156)
!2161 = !DILocation(line: 1612, column: 5, scope: !2156)
!2162 = !DILocation(line: 1613, column: 5, scope: !2121)
!2163 = !DILocation(line: 1615, column: 18, scope: !2121)
!2164 = !DILocation(line: 1615, column: 5, scope: !2121)
!2165 = !DILocation(line: 1616, column: 22, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1616, column: 9)
!2167 = !DILocation(line: 1616, column: 9, scope: !2166)
!2168 = !DILocation(line: 1616, column: 9, scope: !2121)
!2169 = !DILocation(line: 1617, column: 35, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1616, column: 32)
!2171 = !DILocation(line: 1617, column: 28, scope: !2170)
!2172 = !DILocation(line: 1617, column: 9, scope: !2170)
!2173 = !DILocation(line: 1617, column: 19, scope: !2170)
!2174 = !DILocation(line: 1617, column: 26, scope: !2170)
!2175 = !DILocation(line: 1618, column: 5, scope: !2170)
!2176 = !DILocation(line: 1619, column: 5, scope: !2121)
!2177 = !DILocation(line: 1621, column: 18, scope: !2121)
!2178 = !DILocation(line: 1621, column: 5, scope: !2121)
!2179 = !DILocation(line: 1622, column: 22, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1622, column: 9)
!2181 = !DILocation(line: 1622, column: 9, scope: !2180)
!2182 = !DILocation(line: 1622, column: 9, scope: !2121)
!2183 = !DILocation(line: 1623, column: 33, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 1622, column: 32)
!2185 = !DILocation(line: 1623, column: 26, scope: !2184)
!2186 = !DILocation(line: 1623, column: 9, scope: !2184)
!2187 = !DILocation(line: 1623, column: 19, scope: !2184)
!2188 = !DILocation(line: 1623, column: 24, scope: !2184)
!2189 = !DILocation(line: 1624, column: 5, scope: !2184)
!2190 = !DILocation(line: 1625, column: 5, scope: !2121)
!2191 = !DILocation(line: 1627, column: 18, scope: !2121)
!2192 = !DILocation(line: 1627, column: 5, scope: !2121)
!2193 = !DILocation(line: 1628, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2121, file: !3, line: 1628, column: 9)
!2195 = !DILocation(line: 1628, column: 9, scope: !2121)
!2196 = !DILocation(line: 1629, column: 59, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 1628, column: 33)
!2198 = !DILocation(line: 1629, column: 45, scope: !2197)
!2199 = !DILocation(line: 1629, column: 9, scope: !2197)
!2200 = !DILocation(line: 1629, column: 19, scope: !2197)
!2201 = !DILocation(line: 1629, column: 43, scope: !2197)
!2202 = !DILocation(line: 1630, column: 5, scope: !2197)
!2203 = !DILocation(line: 1631, column: 5, scope: !2121)
!2204 = !DILocation(line: 1632, column: 1, scope: !2121)
!2205 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !119, file: !3, line: 1634, type: !122)
!2206 = !DILocation(line: 1634, column: 36, scope: !119)
!2207 = !DILocalVariable(name: "lua", arg: 2, scope: !119, file: !3, line: 1634, type: !734)
!2208 = !DILocation(line: 1634, column: 56, scope: !119)
!2209 = !DILocalVariable(name: "keys", arg: 3, scope: !119, file: !3, line: 1634, type: !425)
!2210 = !DILocation(line: 1634, column: 68, scope: !119)
!2211 = !DILocalVariable(name: "nkeys", arg: 4, scope: !119, file: !3, line: 1634, type: !108)
!2212 = !DILocation(line: 1634, column: 81, scope: !119)
!2213 = !DILocalVariable(name: "args", arg: 5, scope: !119, file: !3, line: 1634, type: !425)
!2214 = !DILocation(line: 1634, column: 95, scope: !119)
!2215 = !DILocalVariable(name: "nargs", arg: 6, scope: !119, file: !3, line: 1634, type: !108)
!2216 = !DILocation(line: 1634, column: 108, scope: !119)
!2217 = !DILocalVariable(name: "debug_enabled", arg: 7, scope: !119, file: !3, line: 1634, type: !114)
!2218 = !DILocation(line: 1634, column: 119, scope: !119)
!2219 = !DILocalVariable(name: "c", scope: !119, file: !3, line: 1635, type: !131)
!2220 = !DILocation(line: 1635, column: 13, scope: !119)
!2221 = !DILocation(line: 1635, column: 17, scope: !119)
!2222 = !DILocation(line: 1635, column: 26, scope: !119)
!2223 = !DILocalVariable(name: "delhook", scope: !119, file: !3, line: 1636, type: !114)
!2224 = !DILocation(line: 1636, column: 9, scope: !119)
!2225 = !DILocation(line: 1642, column: 23, scope: !119)
!2226 = !DILocation(line: 1642, column: 51, scope: !119)
!2227 = !DILocation(line: 1642, column: 5, scope: !119)
!2228 = !DILocation(line: 1644, column: 16, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1644, column: 9)
!2230 = !DILocation(line: 1644, column: 37, scope: !2229)
!2231 = !DILocation(line: 1644, column: 41, scope: !2229)
!2232 = !DILocation(line: 1644, column: 45, scope: !2229)
!2233 = !DILocation(line: 1644, column: 9, scope: !119)
!2234 = !DILocation(line: 1645, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 1644, column: 60)
!2236 = !DILocation(line: 1645, column: 9, scope: !2235)
!2237 = !DILocation(line: 1646, column: 17, scope: !2235)
!2238 = !DILocation(line: 1647, column: 5, scope: !2235)
!2239 = !DILocation(line: 1647, column: 16, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 1647, column: 16)
!2241 = !DILocation(line: 1647, column: 16, scope: !2229)
!2242 = !DILocation(line: 1648, column: 21, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 1647, column: 31)
!2244 = !DILocation(line: 1648, column: 9, scope: !2243)
!2245 = !DILocation(line: 1649, column: 17, scope: !2243)
!2246 = !DILocation(line: 1650, column: 5, scope: !2243)
!2247 = !DILocation(line: 1654, column: 20, scope: !119)
!2248 = !DILocation(line: 1654, column: 24, scope: !119)
!2249 = !DILocation(line: 1654, column: 29, scope: !119)
!2250 = !DILocation(line: 1654, column: 5, scope: !119)
!2251 = !DILocation(line: 1656, column: 9, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1656, column: 9)
!2253 = !DILocation(line: 1656, column: 18, scope: !2252)
!2254 = !DILocation(line: 1656, column: 24, scope: !2252)
!2255 = !DILocation(line: 1656, column: 9, scope: !119)
!2256 = !DILocation(line: 1658, column: 33, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 1656, column: 43)
!2258 = !DILocation(line: 1658, column: 9, scope: !2257)
!2259 = !DILocation(line: 1659, column: 9, scope: !2257)
!2260 = !DILocation(line: 1660, column: 33, scope: !2257)
!2261 = !DILocation(line: 1660, column: 9, scope: !2257)
!2262 = !DILocation(line: 1661, column: 5, scope: !2257)
!2263 = !DILocation(line: 1662, column: 20, scope: !119)
!2264 = !DILocation(line: 1662, column: 24, scope: !119)
!2265 = !DILocation(line: 1662, column: 29, scope: !119)
!2266 = !DILocation(line: 1662, column: 5, scope: !119)
!2267 = !DILocation(line: 1663, column: 9, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1663, column: 9)
!2269 = !DILocation(line: 1663, column: 18, scope: !2268)
!2270 = !DILocation(line: 1663, column: 24, scope: !2268)
!2271 = !DILocation(line: 1663, column: 9, scope: !119)
!2272 = !DILocation(line: 1665, column: 33, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !3, line: 1663, column: 43)
!2274 = !DILocation(line: 1665, column: 9, scope: !2273)
!2275 = !DILocation(line: 1666, column: 9, scope: !2273)
!2276 = !DILocation(line: 1667, column: 33, scope: !2273)
!2277 = !DILocation(line: 1667, column: 9, scope: !2273)
!2278 = !DILocation(line: 1668, column: 5, scope: !2273)
!2279 = !DILocalVariable(name: "err", scope: !119, file: !3, line: 1676, type: !114)
!2280 = !DILocation(line: 1676, column: 9, scope: !119)
!2281 = !DILocation(line: 1677, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1677, column: 9)
!2283 = !DILocation(line: 1677, column: 18, scope: !2282)
!2284 = !DILocation(line: 1677, column: 24, scope: !2282)
!2285 = !DILocation(line: 1677, column: 9, scope: !119)
!2286 = !DILocation(line: 1678, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1677, column: 44)
!2288 = !DILocation(line: 1678, column: 15, scope: !2287)
!2289 = !DILocation(line: 1678, column: 13, scope: !2287)
!2290 = !DILocation(line: 1679, column: 5, scope: !2287)
!2291 = !DILocation(line: 1680, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1679, column: 12)
!2293 = !DILocation(line: 1680, column: 15, scope: !2292)
!2294 = !DILocation(line: 1680, column: 13, scope: !2292)
!2295 = !DILocation(line: 1693, column: 17, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1690, column: 5)
!2297 = !DILocation(line: 1694, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1694, column: 13)
!2299 = !DILocation(line: 1694, column: 22, scope: !2298)
!2300 = !DILocation(line: 1694, column: 13, scope: !2296)
!2301 = !DILocation(line: 1695, column: 20, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1694, column: 46)
!2303 = !DILocation(line: 1695, column: 13, scope: !2302)
!2304 = !DILocation(line: 1696, column: 22, scope: !2302)
!2305 = !DILocation(line: 1697, column: 9, scope: !2302)
!2306 = !DILocation(line: 1700, column: 9, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1700, column: 9)
!2308 = !DILocation(line: 1700, column: 9, scope: !119)
!2309 = !DILocation(line: 1704, column: 14, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1704, column: 13)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1700, column: 14)
!2312 = !DILocation(line: 1704, column: 13, scope: !2311)
!2313 = !DILocalVariable(name: "msg", scope: !2314, file: !3, line: 1705, type: !128)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1704, column: 36)
!2315 = !DILocation(line: 1705, column: 25, scope: !2314)
!2316 = !DILocation(line: 1706, column: 30, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1706, column: 17)
!2318 = !DILocation(line: 1706, column: 17, scope: !2317)
!2319 = !DILocation(line: 1706, column: 17, scope: !2314)
!2320 = !DILocation(line: 1707, column: 23, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1706, column: 40)
!2322 = !DILocation(line: 1707, column: 21, scope: !2321)
!2323 = !DILocation(line: 1708, column: 13, scope: !2321)
!2324 = !DILocation(line: 1709, column: 33, scope: !2314)
!2325 = !DILocation(line: 1709, column: 72, scope: !2314)
!2326 = !DILocation(line: 1709, column: 81, scope: !2314)
!2327 = !DILocation(line: 1709, column: 91, scope: !2314)
!2328 = !DILocation(line: 1709, column: 13, scope: !2314)
!2329 = !DILocation(line: 1710, column: 9, scope: !2314)
!2330 = !DILocalVariable(name: "err_info", scope: !2331, file: !3, line: 1711, type: !2089)
!2331 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1710, column: 16)
!2332 = !DILocation(line: 1711, column: 23, scope: !2331)
!2333 = !DILocalVariable(name: "final_msg", scope: !2331, file: !3, line: 1712, type: !420)
!2334 = !DILocation(line: 1712, column: 17, scope: !2331)
!2335 = !DILocation(line: 1712, column: 29, scope: !2331)
!2336 = !DILocation(line: 1713, column: 40, scope: !2331)
!2337 = !DILocation(line: 1713, column: 13, scope: !2331)
!2338 = !DILocation(line: 1714, column: 35, scope: !2331)
!2339 = !DILocation(line: 1715, column: 44, scope: !2331)
!2340 = !DILocation(line: 1714, column: 25, scope: !2331)
!2341 = !DILocation(line: 1714, column: 23, scope: !2331)
!2342 = !DILocation(line: 1716, column: 26, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 1716, column: 17)
!2344 = !DILocation(line: 1716, column: 17, scope: !2343)
!2345 = !DILocation(line: 1716, column: 31, scope: !2343)
!2346 = !DILocation(line: 1716, column: 43, scope: !2343)
!2347 = !DILocation(line: 1716, column: 34, scope: !2343)
!2348 = !DILocation(line: 1716, column: 17, scope: !2331)
!2349 = !DILocation(line: 1717, column: 39, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1716, column: 51)
!2351 = !DILocation(line: 1718, column: 39, scope: !2350)
!2352 = !DILocation(line: 1718, column: 48, scope: !2350)
!2353 = !DILocation(line: 1719, column: 48, scope: !2350)
!2354 = !DILocation(line: 1720, column: 48, scope: !2350)
!2355 = !DILocation(line: 1717, column: 29, scope: !2350)
!2356 = !DILocation(line: 1717, column: 27, scope: !2350)
!2357 = !DILocation(line: 1721, column: 13, scope: !2350)
!2358 = !DILocation(line: 1722, column: 32, scope: !2331)
!2359 = !DILocation(line: 1722, column: 35, scope: !2331)
!2360 = !DILocation(line: 1722, column: 55, scope: !2331)
!2361 = !DILocation(line: 1722, column: 46, scope: !2331)
!2362 = !DILocation(line: 1722, column: 13, scope: !2331)
!2363 = !DILocation(line: 1723, column: 13, scope: !2331)
!2364 = !DILocation(line: 1725, column: 9, scope: !2311)
!2365 = !DILocation(line: 1726, column: 5, scope: !2311)
!2366 = !DILocation(line: 1729, column: 30, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1726, column: 12)
!2368 = !DILocation(line: 1729, column: 33, scope: !2367)
!2369 = !DILocation(line: 1729, column: 42, scope: !2367)
!2370 = !DILocation(line: 1729, column: 45, scope: !2367)
!2371 = !DILocation(line: 1729, column: 9, scope: !2367)
!2372 = !DILocation(line: 1733, column: 9, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !119, file: !3, line: 1733, column: 9)
!2374 = !DILocation(line: 1733, column: 9, scope: !119)
!2375 = !DILocation(line: 1733, column: 30, scope: !2373)
!2376 = !DILocation(line: 1733, column: 18, scope: !2373)
!2377 = !DILocation(line: 1736, column: 23, scope: !119)
!2378 = !DILocation(line: 1736, column: 5, scope: !119)
!2379 = !DILocation(line: 1737, column: 1, scope: !119)
!2380 = distinct !DISubprogram(name: "luaMaskCountHook", scope: !3, file: !3, line: 1577, type: !2381, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !734, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !113, line: 326, baseType: !2385)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !113, line: 346, size: 960, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2400}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2385, file: !113, line: 347, baseType: !114, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2385, file: !113, line: 348, baseType: !128, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !2385, file: !113, line: 349, baseType: !128, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !2385, file: !113, line: 350, baseType: !128, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !2385, file: !113, line: 351, baseType: !128, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !2385, file: !113, line: 352, baseType: !114, size: 32, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !2385, file: !113, line: 353, baseType: !114, size: 32, offset: 352)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !2385, file: !113, line: 354, baseType: !114, size: 32, offset: 384)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !2385, file: !113, line: 355, baseType: !114, size: 32, offset: 416)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !2385, file: !113, line: 356, baseType: !2397, size: 480, offset: 448)
!2397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 480, elements: !2398)
!2398 = !{!2399}
!2399 = !DISubrange(count: 60)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !2385, file: !113, line: 358, baseType: !114, size: 32, offset: 928)
!2401 = !DILocalVariable(name: "lua", arg: 1, scope: !2380, file: !3, line: 1577, type: !734)
!2402 = !DILocation(line: 1577, column: 41, scope: !2380)
!2403 = !DILocalVariable(name: "ar", arg: 2, scope: !2380, file: !3, line: 1577, type: !2383)
!2404 = !DILocation(line: 1577, column: 57, scope: !2380)
!2405 = !DILocation(line: 1578, column: 5, scope: !2380)
!2406 = !DILocalVariable(name: "rctx", scope: !2380, file: !3, line: 1579, type: !122)
!2407 = !DILocation(line: 1579, column: 19, scope: !2380)
!2408 = !DILocation(line: 1579, column: 45, scope: !2380)
!2409 = !DILocation(line: 1579, column: 26, scope: !2380)
!2410 = !DILocation(line: 1580, column: 25, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 1580, column: 9)
!2412 = !DILocation(line: 1580, column: 9, scope: !2411)
!2413 = !DILocation(line: 1580, column: 31, scope: !2411)
!2414 = !DILocation(line: 1580, column: 9, scope: !2380)
!2415 = !DILocation(line: 1581, column: 9, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 1580, column: 47)
!2417 = !DILocation(line: 1581, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 1581, column: 9)
!2419 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1581, column: 9)
!2420 = !DILocation(line: 1581, column: 9, scope: !2419)
!2421 = !DILocation(line: 1588, column: 21, scope: !2416)
!2422 = !DILocation(line: 1588, column: 9, scope: !2416)
!2423 = !DILocation(line: 1590, column: 22, scope: !2416)
!2424 = !DILocation(line: 1590, column: 9, scope: !2416)
!2425 = !DILocation(line: 1591, column: 18, scope: !2416)
!2426 = !DILocation(line: 1591, column: 9, scope: !2416)
!2427 = !DILocation(line: 1592, column: 5, scope: !2416)
!2428 = !DILocation(line: 1593, column: 1, scope: !2380)
!2429 = distinct !DISubprogram(name: "luaCreateArray", scope: !3, file: !3, line: 1514, type: !2430, scopeLine: 1514, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !734, !425, !114}
!2432 = !DILocalVariable(name: "lua", arg: 1, scope: !2429, file: !3, line: 1514, type: !734)
!2433 = !DILocation(line: 1514, column: 39, scope: !2429)
!2434 = !DILocalVariable(name: "elev", arg: 2, scope: !2429, file: !3, line: 1514, type: !425)
!2435 = !DILocation(line: 1514, column: 51, scope: !2429)
!2436 = !DILocalVariable(name: "elec", arg: 3, scope: !2429, file: !3, line: 1514, type: !114)
!2437 = !DILocation(line: 1514, column: 61, scope: !2429)
!2438 = !DILocalVariable(name: "j", scope: !2429, file: !3, line: 1515, type: !114)
!2439 = !DILocation(line: 1515, column: 9, scope: !2429)
!2440 = !DILocation(line: 1517, column: 5, scope: !2429)
!2441 = !DILocation(line: 1518, column: 12, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 1518, column: 5)
!2443 = !DILocation(line: 1518, column: 10, scope: !2442)
!2444 = !DILocation(line: 1518, column: 17, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1518, column: 5)
!2446 = !DILocation(line: 1518, column: 21, scope: !2445)
!2447 = !DILocation(line: 1518, column: 19, scope: !2445)
!2448 = !DILocation(line: 1518, column: 5, scope: !2442)
!2449 = !DILocation(line: 1519, column: 25, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1518, column: 32)
!2451 = !DILocation(line: 1519, column: 36, scope: !2450)
!2452 = !DILocation(line: 1519, column: 41, scope: !2450)
!2453 = !DILocation(line: 1519, column: 45, scope: !2450)
!2454 = !DILocation(line: 1519, column: 56, scope: !2450)
!2455 = !DILocation(line: 1519, column: 61, scope: !2450)
!2456 = !DILocation(line: 1519, column: 65, scope: !2450)
!2457 = !DILocation(line: 1519, column: 49, scope: !2450)
!2458 = !DILocation(line: 1519, column: 9, scope: !2450)
!2459 = !DILocation(line: 1520, column: 21, scope: !2450)
!2460 = !DILocation(line: 1520, column: 28, scope: !2450)
!2461 = !DILocation(line: 1520, column: 29, scope: !2450)
!2462 = !DILocation(line: 1520, column: 9, scope: !2450)
!2463 = !DILocation(line: 1521, column: 5, scope: !2450)
!2464 = !DILocation(line: 1518, column: 28, scope: !2445)
!2465 = !DILocation(line: 1518, column: 5, scope: !2445)
!2466 = distinct !{!2466, !2448, !2467, !1065}
!2467 = !DILocation(line: 1521, column: 5, scope: !2442)
!2468 = !DILocation(line: 1522, column: 1, scope: !2429)
!2469 = distinct !DISubprogram(name: "luaReplyToRedisReply", scope: !3, file: !3, line: 595, type: !2470, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !131, !131, !734}
!2472 = !DILocalVariable(name: "c", arg: 1, scope: !2469, file: !3, line: 595, type: !131)
!2473 = !DILocation(line: 595, column: 42, scope: !2469)
!2474 = !DILocalVariable(name: "script_client", arg: 2, scope: !2469, file: !3, line: 595, type: !131)
!2475 = !DILocation(line: 595, column: 53, scope: !2469)
!2476 = !DILocalVariable(name: "lua", arg: 3, scope: !2469, file: !3, line: 595, type: !734)
!2477 = !DILocation(line: 595, column: 79, scope: !2469)
!2478 = !DILocalVariable(name: "t", scope: !2469, file: !3, line: 596, type: !114)
!2479 = !DILocation(line: 596, column: 9, scope: !2469)
!2480 = !DILocation(line: 596, column: 22, scope: !2469)
!2481 = !DILocation(line: 596, column: 13, scope: !2469)
!2482 = !DILocation(line: 598, column: 25, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 598, column: 9)
!2484 = !DILocation(line: 598, column: 10, scope: !2483)
!2485 = !DILocation(line: 598, column: 9, scope: !2469)
!2486 = !DILocation(line: 603, column: 29, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 598, column: 34)
!2488 = !DILocation(line: 603, column: 9, scope: !2487)
!2489 = !DILocation(line: 604, column: 9, scope: !2487)
!2490 = !DILocation(line: 605, column: 9, scope: !2487)
!2491 = !DILocation(line: 608, column: 12, scope: !2469)
!2492 = !DILocation(line: 608, column: 5, scope: !2469)
!2493 = !DILocation(line: 610, column: 29, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 608, column: 15)
!2495 = !DILocation(line: 610, column: 38, scope: !2494)
!2496 = !DILocation(line: 610, column: 59, scope: !2494)
!2497 = !DILocation(line: 610, column: 9, scope: !2494)
!2498 = !DILocation(line: 611, column: 9, scope: !2494)
!2499 = !DILocation(line: 613, column: 13, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 613, column: 13)
!2501 = !DILocation(line: 613, column: 28, scope: !2500)
!2502 = !DILocation(line: 613, column: 33, scope: !2500)
!2503 = !DILocation(line: 613, column: 13, scope: !2494)
!2504 = !DILocation(line: 614, column: 22, scope: !2500)
!2505 = !DILocation(line: 614, column: 38, scope: !2500)
!2506 = !DILocation(line: 614, column: 24, scope: !2500)
!2507 = !DILocation(line: 614, column: 55, scope: !2500)
!2508 = !DILocation(line: 615, column: 60, scope: !2500)
!2509 = !DILocation(line: 615, column: 63, scope: !2500)
!2510 = !DILocation(line: 615, column: 48, scope: !2500)
!2511 = !DILocation(line: 614, column: 13, scope: !2500)
!2512 = !DILocation(line: 617, column: 26, scope: !2500)
!2513 = !DILocation(line: 617, column: 42, scope: !2500)
!2514 = !DILocation(line: 617, column: 28, scope: !2500)
!2515 = !DILocation(line: 617, column: 13, scope: !2500)
!2516 = !DILocation(line: 618, column: 9, scope: !2494)
!2517 = !DILocation(line: 620, column: 26, scope: !2494)
!2518 = !DILocation(line: 620, column: 52, scope: !2494)
!2519 = !DILocation(line: 620, column: 39, scope: !2494)
!2520 = !DILocation(line: 620, column: 28, scope: !2494)
!2521 = !DILocation(line: 620, column: 9, scope: !2494)
!2522 = !DILocation(line: 621, column: 9, scope: !2494)
!2523 = !DILocation(line: 630, column: 24, scope: !2494)
!2524 = !DILocation(line: 630, column: 9, scope: !2494)
!2525 = !DILocation(line: 631, column: 20, scope: !2494)
!2526 = !DILocation(line: 631, column: 9, scope: !2494)
!2527 = !DILocation(line: 632, column: 22, scope: !2494)
!2528 = !DILocation(line: 632, column: 13, scope: !2494)
!2529 = !DILocation(line: 632, column: 11, scope: !2494)
!2530 = !DILocation(line: 633, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 633, column: 13)
!2532 = !DILocation(line: 633, column: 15, scope: !2531)
!2533 = !DILocation(line: 633, column: 13, scope: !2494)
!2534 = !DILocation(line: 634, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 633, column: 31)
!2536 = !DILocalVariable(name: "err_info", scope: !2535, file: !3, line: 635, type: !2089)
!2537 = !DILocation(line: 635, column: 23, scope: !2535)
!2538 = !DILocation(line: 636, column: 40, scope: !2535)
!2539 = !DILocation(line: 636, column: 13, scope: !2535)
!2540 = !DILocation(line: 637, column: 35, scope: !2535)
!2541 = !DILocation(line: 638, column: 44, scope: !2535)
!2542 = !DILocation(line: 638, column: 35, scope: !2535)
!2543 = !DILocation(line: 640, column: 44, scope: !2535)
!2544 = !DILocation(line: 637, column: 13, scope: !2535)
!2545 = !DILocation(line: 641, column: 13, scope: !2535)
!2546 = !DILocation(line: 642, column: 13, scope: !2535)
!2547 = !DILocation(line: 643, column: 13, scope: !2535)
!2548 = !DILocation(line: 645, column: 9, scope: !2494)
!2549 = !DILocation(line: 648, column: 24, scope: !2494)
!2550 = !DILocation(line: 648, column: 9, scope: !2494)
!2551 = !DILocation(line: 649, column: 20, scope: !2494)
!2552 = !DILocation(line: 649, column: 9, scope: !2494)
!2553 = !DILocation(line: 650, column: 22, scope: !2494)
!2554 = !DILocation(line: 650, column: 13, scope: !2494)
!2555 = !DILocation(line: 650, column: 11, scope: !2494)
!2556 = !DILocation(line: 651, column: 13, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 651, column: 13)
!2558 = !DILocation(line: 651, column: 15, scope: !2557)
!2559 = !DILocation(line: 651, column: 13, scope: !2494)
!2560 = !DILocalVariable(name: "ok", scope: !2561, file: !3, line: 652, type: !420)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 651, column: 31)
!2562 = !DILocation(line: 652, column: 17, scope: !2561)
!2563 = !DILocation(line: 652, column: 29, scope: !2561)
!2564 = !DILocation(line: 652, column: 22, scope: !2561)
!2565 = !DILocation(line: 653, column: 25, scope: !2561)
!2566 = !DILocation(line: 653, column: 13, scope: !2561)
!2567 = !DILocation(line: 654, column: 34, scope: !2561)
!2568 = !DILocation(line: 654, column: 37, scope: !2561)
!2569 = !DILocation(line: 654, column: 48, scope: !2561)
!2570 = !DILocation(line: 654, column: 41, scope: !2561)
!2571 = !DILocation(line: 654, column: 13, scope: !2561)
!2572 = !DILocation(line: 655, column: 21, scope: !2561)
!2573 = !DILocation(line: 655, column: 13, scope: !2561)
!2574 = !DILocation(line: 656, column: 13, scope: !2561)
!2575 = !DILocation(line: 657, column: 13, scope: !2561)
!2576 = !DILocation(line: 659, column: 9, scope: !2494)
!2577 = !DILocation(line: 662, column: 24, scope: !2494)
!2578 = !DILocation(line: 662, column: 9, scope: !2494)
!2579 = !DILocation(line: 663, column: 20, scope: !2494)
!2580 = !DILocation(line: 663, column: 9, scope: !2494)
!2581 = !DILocation(line: 664, column: 22, scope: !2494)
!2582 = !DILocation(line: 664, column: 13, scope: !2494)
!2583 = !DILocation(line: 664, column: 11, scope: !2494)
!2584 = !DILocation(line: 665, column: 13, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 665, column: 13)
!2586 = !DILocation(line: 665, column: 15, scope: !2585)
!2587 = !DILocation(line: 665, column: 13, scope: !2494)
!2588 = !DILocation(line: 666, column: 28, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 665, column: 31)
!2590 = !DILocation(line: 666, column: 43, scope: !2589)
!2591 = !DILocation(line: 666, column: 30, scope: !2589)
!2592 = !DILocation(line: 666, column: 13, scope: !2589)
!2593 = !DILocation(line: 667, column: 13, scope: !2589)
!2594 = !DILocation(line: 668, column: 13, scope: !2589)
!2595 = !DILocation(line: 670, column: 9, scope: !2494)
!2596 = !DILocation(line: 673, column: 24, scope: !2494)
!2597 = !DILocation(line: 673, column: 9, scope: !2494)
!2598 = !DILocation(line: 674, column: 20, scope: !2494)
!2599 = !DILocation(line: 674, column: 9, scope: !2494)
!2600 = !DILocation(line: 675, column: 22, scope: !2494)
!2601 = !DILocation(line: 675, column: 13, scope: !2494)
!2602 = !DILocation(line: 675, column: 11, scope: !2494)
!2603 = !DILocation(line: 676, column: 13, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 676, column: 13)
!2605 = !DILocation(line: 676, column: 15, scope: !2604)
!2606 = !DILocation(line: 676, column: 13, scope: !2494)
!2607 = !DILocalVariable(name: "big_num", scope: !2608, file: !3, line: 677, type: !420)
!2608 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 676, column: 31)
!2609 = !DILocation(line: 677, column: 17, scope: !2608)
!2610 = !DILocation(line: 677, column: 37, scope: !2608)
!2611 = !DILocation(line: 677, column: 59, scope: !2608)
!2612 = !DILocation(line: 677, column: 27, scope: !2608)
!2613 = !DILocation(line: 678, column: 25, scope: !2608)
!2614 = !DILocation(line: 678, column: 13, scope: !2608)
!2615 = !DILocation(line: 679, column: 28, scope: !2608)
!2616 = !DILocation(line: 679, column: 30, scope: !2608)
!2617 = !DILocation(line: 679, column: 45, scope: !2608)
!2618 = !DILocation(line: 679, column: 38, scope: !2608)
!2619 = !DILocation(line: 679, column: 13, scope: !2608)
!2620 = !DILocation(line: 680, column: 21, scope: !2608)
!2621 = !DILocation(line: 680, column: 13, scope: !2608)
!2622 = !DILocation(line: 681, column: 13, scope: !2608)
!2623 = !DILocation(line: 682, column: 13, scope: !2608)
!2624 = !DILocation(line: 684, column: 9, scope: !2494)
!2625 = !DILocation(line: 687, column: 24, scope: !2494)
!2626 = !DILocation(line: 687, column: 9, scope: !2494)
!2627 = !DILocation(line: 688, column: 20, scope: !2494)
!2628 = !DILocation(line: 688, column: 9, scope: !2494)
!2629 = !DILocation(line: 689, column: 22, scope: !2494)
!2630 = !DILocation(line: 689, column: 13, scope: !2494)
!2631 = !DILocation(line: 689, column: 11, scope: !2494)
!2632 = !DILocation(line: 690, column: 13, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 690, column: 13)
!2634 = !DILocation(line: 690, column: 15, scope: !2633)
!2635 = !DILocation(line: 690, column: 13, scope: !2494)
!2636 = !DILocation(line: 691, column: 28, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 690, column: 30)
!2638 = !DILocation(line: 691, column: 13, scope: !2637)
!2639 = !DILocation(line: 692, column: 24, scope: !2637)
!2640 = !DILocation(line: 692, column: 13, scope: !2637)
!2641 = !DILocation(line: 693, column: 26, scope: !2637)
!2642 = !DILocation(line: 693, column: 17, scope: !2637)
!2643 = !DILocation(line: 693, column: 15, scope: !2637)
!2644 = !DILocation(line: 694, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 694, column: 17)
!2646 = !DILocation(line: 694, column: 19, scope: !2645)
!2647 = !DILocation(line: 694, column: 17, scope: !2637)
!2648 = !DILocalVariable(name: "format", scope: !2649, file: !3, line: 695, type: !107)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 694, column: 34)
!2650 = !DILocation(line: 695, column: 23, scope: !2649)
!2651 = !DILocation(line: 695, column: 39, scope: !2649)
!2652 = !DILocation(line: 696, column: 32, scope: !2649)
!2653 = !DILocation(line: 696, column: 17, scope: !2649)
!2654 = !DILocation(line: 697, column: 28, scope: !2649)
!2655 = !DILocation(line: 697, column: 17, scope: !2649)
!2656 = !DILocation(line: 698, column: 30, scope: !2649)
!2657 = !DILocation(line: 698, column: 21, scope: !2649)
!2658 = !DILocation(line: 698, column: 19, scope: !2649)
!2659 = !DILocation(line: 699, column: 21, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 699, column: 21)
!2661 = !DILocation(line: 699, column: 23, scope: !2660)
!2662 = !DILocation(line: 699, column: 21, scope: !2649)
!2663 = !DILocalVariable(name: "len", scope: !2664, file: !3, line: 700, type: !108)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 699, column: 38)
!2665 = !DILocation(line: 700, column: 28, scope: !2664)
!2666 = !DILocalVariable(name: "str", scope: !2664, file: !3, line: 701, type: !107)
!2667 = !DILocation(line: 701, column: 27, scope: !2664)
!2668 = !DILocation(line: 701, column: 54, scope: !2664)
!2669 = !DILocation(line: 701, column: 40, scope: !2664)
!2670 = !DILocation(line: 702, column: 38, scope: !2664)
!2671 = !DILocation(line: 702, column: 41, scope: !2664)
!2672 = !DILocation(line: 702, column: 46, scope: !2664)
!2673 = !DILocation(line: 702, column: 51, scope: !2664)
!2674 = !DILocation(line: 702, column: 21, scope: !2664)
!2675 = !DILocation(line: 703, column: 21, scope: !2664)
!2676 = !DILocation(line: 704, column: 21, scope: !2664)
!2677 = !DILocation(line: 706, column: 17, scope: !2649)
!2678 = !DILocation(line: 707, column: 13, scope: !2649)
!2679 = !DILocation(line: 708, column: 13, scope: !2637)
!2680 = !DILocation(line: 709, column: 9, scope: !2637)
!2681 = !DILocation(line: 710, column: 9, scope: !2494)
!2682 = !DILocation(line: 713, column: 24, scope: !2494)
!2683 = !DILocation(line: 713, column: 9, scope: !2494)
!2684 = !DILocation(line: 714, column: 20, scope: !2494)
!2685 = !DILocation(line: 714, column: 9, scope: !2494)
!2686 = !DILocation(line: 715, column: 22, scope: !2494)
!2687 = !DILocation(line: 715, column: 13, scope: !2494)
!2688 = !DILocation(line: 715, column: 11, scope: !2494)
!2689 = !DILocation(line: 716, column: 13, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 716, column: 13)
!2691 = !DILocation(line: 716, column: 15, scope: !2690)
!2692 = !DILocation(line: 716, column: 13, scope: !2494)
!2693 = !DILocalVariable(name: "maplen", scope: !2694, file: !3, line: 717, type: !114)
!2694 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 716, column: 30)
!2695 = !DILocation(line: 717, column: 17, scope: !2694)
!2696 = !DILocalVariable(name: "replylen", scope: !2694, file: !3, line: 718, type: !60)
!2697 = !DILocation(line: 718, column: 19, scope: !2694)
!2698 = !DILocation(line: 718, column: 50, scope: !2694)
!2699 = !DILocation(line: 718, column: 30, scope: !2694)
!2700 = !DILocation(line: 720, column: 25, scope: !2694)
!2701 = !DILocation(line: 720, column: 13, scope: !2694)
!2702 = !DILocation(line: 721, column: 13, scope: !2694)
!2703 = !DILocation(line: 721, column: 29, scope: !2694)
!2704 = !DILocation(line: 721, column: 20, scope: !2694)
!2705 = !DILocation(line: 723, column: 31, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 721, column: 38)
!2707 = !DILocation(line: 723, column: 17, scope: !2706)
!2708 = !DILocation(line: 724, column: 38, scope: !2706)
!2709 = !DILocation(line: 724, column: 41, scope: !2706)
!2710 = !DILocation(line: 724, column: 56, scope: !2706)
!2711 = !DILocation(line: 724, column: 17, scope: !2706)
!2712 = !DILocation(line: 725, column: 38, scope: !2706)
!2713 = !DILocation(line: 725, column: 41, scope: !2706)
!2714 = !DILocation(line: 725, column: 56, scope: !2706)
!2715 = !DILocation(line: 725, column: 17, scope: !2706)
!2716 = !DILocation(line: 727, column: 23, scope: !2706)
!2717 = distinct !{!2717, !2702, !2718, !1065}
!2718 = !DILocation(line: 728, column: 13, scope: !2694)
!2719 = !DILocation(line: 729, column: 31, scope: !2694)
!2720 = !DILocation(line: 729, column: 33, scope: !2694)
!2721 = !DILocation(line: 729, column: 42, scope: !2694)
!2722 = !DILocation(line: 729, column: 13, scope: !2694)
!2723 = !DILocation(line: 730, column: 13, scope: !2694)
!2724 = !DILocation(line: 731, column: 13, scope: !2694)
!2725 = !DILocation(line: 733, column: 9, scope: !2494)
!2726 = !DILocation(line: 736, column: 24, scope: !2494)
!2727 = !DILocation(line: 736, column: 9, scope: !2494)
!2728 = !DILocation(line: 737, column: 20, scope: !2494)
!2729 = !DILocation(line: 737, column: 9, scope: !2494)
!2730 = !DILocation(line: 738, column: 22, scope: !2494)
!2731 = !DILocation(line: 738, column: 13, scope: !2494)
!2732 = !DILocation(line: 738, column: 11, scope: !2494)
!2733 = !DILocation(line: 739, column: 13, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 739, column: 13)
!2735 = !DILocation(line: 739, column: 15, scope: !2734)
!2736 = !DILocation(line: 739, column: 13, scope: !2494)
!2737 = !DILocalVariable(name: "setlen", scope: !2738, file: !3, line: 740, type: !114)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 739, column: 30)
!2739 = !DILocation(line: 740, column: 17, scope: !2738)
!2740 = !DILocalVariable(name: "replylen", scope: !2738, file: !3, line: 741, type: !60)
!2741 = !DILocation(line: 741, column: 19, scope: !2738)
!2742 = !DILocation(line: 741, column: 50, scope: !2738)
!2743 = !DILocation(line: 741, column: 30, scope: !2738)
!2744 = !DILocation(line: 743, column: 25, scope: !2738)
!2745 = !DILocation(line: 743, column: 13, scope: !2738)
!2746 = !DILocation(line: 744, column: 13, scope: !2738)
!2747 = !DILocation(line: 744, column: 29, scope: !2738)
!2748 = !DILocation(line: 744, column: 20, scope: !2738)
!2749 = !DILocation(line: 746, column: 17, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2738, file: !3, line: 744, column: 38)
!2751 = !DILocation(line: 747, column: 31, scope: !2750)
!2752 = !DILocation(line: 747, column: 17, scope: !2750)
!2753 = !DILocation(line: 748, column: 38, scope: !2750)
!2754 = !DILocation(line: 748, column: 41, scope: !2750)
!2755 = !DILocation(line: 748, column: 56, scope: !2750)
!2756 = !DILocation(line: 748, column: 17, scope: !2750)
!2757 = !DILocation(line: 750, column: 23, scope: !2750)
!2758 = distinct !{!2758, !2746, !2759, !1065}
!2759 = !DILocation(line: 751, column: 13, scope: !2738)
!2760 = !DILocation(line: 752, column: 31, scope: !2738)
!2761 = !DILocation(line: 752, column: 33, scope: !2738)
!2762 = !DILocation(line: 752, column: 42, scope: !2738)
!2763 = !DILocation(line: 752, column: 13, scope: !2738)
!2764 = !DILocation(line: 753, column: 13, scope: !2738)
!2765 = !DILocation(line: 754, column: 13, scope: !2738)
!2766 = !DILocation(line: 756, column: 9, scope: !2494)
!2767 = !DILocalVariable(name: "replylen", scope: !2494, file: !3, line: 759, type: !60)
!2768 = !DILocation(line: 759, column: 15, scope: !2494)
!2769 = !DILocation(line: 759, column: 46, scope: !2494)
!2770 = !DILocation(line: 759, column: 26, scope: !2494)
!2771 = !DILocalVariable(name: "j", scope: !2494, file: !3, line: 760, type: !114)
!2772 = !DILocation(line: 760, column: 13, scope: !2494)
!2773 = !DILocalVariable(name: "mbulklen", scope: !2494, file: !3, line: 760, type: !114)
!2774 = !DILocation(line: 760, column: 20, scope: !2494)
!2775 = !DILocation(line: 761, column: 9, scope: !2494)
!2776 = !DILocation(line: 763, column: 28, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2494, file: !3, line: 761, column: 18)
!2778 = !DILocation(line: 763, column: 33, scope: !2777)
!2779 = !DILocation(line: 763, column: 32, scope: !2777)
!2780 = !DILocation(line: 763, column: 13, scope: !2777)
!2781 = !DILocation(line: 764, column: 24, scope: !2777)
!2782 = !DILocation(line: 764, column: 13, scope: !2777)
!2783 = !DILocation(line: 765, column: 26, scope: !2777)
!2784 = !DILocation(line: 765, column: 17, scope: !2777)
!2785 = !DILocation(line: 765, column: 15, scope: !2777)
!2786 = !DILocation(line: 766, column: 17, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 766, column: 17)
!2788 = !DILocation(line: 766, column: 19, scope: !2787)
!2789 = !DILocation(line: 766, column: 17, scope: !2777)
!2790 = !DILocation(line: 767, column: 17, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 766, column: 32)
!2792 = !DILocation(line: 768, column: 17, scope: !2791)
!2793 = !DILocation(line: 770, column: 34, scope: !2777)
!2794 = !DILocation(line: 770, column: 37, scope: !2777)
!2795 = !DILocation(line: 770, column: 52, scope: !2777)
!2796 = !DILocation(line: 770, column: 13, scope: !2777)
!2797 = !DILocation(line: 771, column: 21, scope: !2777)
!2798 = distinct !{!2798, !2775, !2799}
!2799 = !DILocation(line: 772, column: 9, scope: !2494)
!2800 = !DILocation(line: 773, column: 29, scope: !2494)
!2801 = !DILocation(line: 773, column: 31, scope: !2494)
!2802 = !DILocation(line: 773, column: 40, scope: !2494)
!2803 = !DILocation(line: 773, column: 9, scope: !2494)
!2804 = !DILocation(line: 774, column: 9, scope: !2494)
!2805 = !DILocation(line: 776, column: 22, scope: !2494)
!2806 = !DILocation(line: 776, column: 9, scope: !2494)
!2807 = !DILocation(line: 777, column: 5, scope: !2494)
!2808 = !DILocation(line: 778, column: 5, scope: !2469)
!2809 = !DILocation(line: 779, column: 1, scope: !2469)
!2810 = distinct !DISubprogram(name: "luaMemory", scope: !3, file: !3, line: 1739, type: !2811, scopeLine: 1739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!103, !734}
!2813 = !DILocalVariable(name: "lua", arg: 1, scope: !2810, file: !3, line: 1739, type: !734)
!2814 = !DILocation(line: 1739, column: 36, scope: !2810)
!2815 = !DILocation(line: 1740, column: 19, scope: !2810)
!2816 = !DILocation(line: 1740, column: 12, scope: !2810)
!2817 = !DILocation(line: 1740, column: 40, scope: !2810)
!2818 = !DILocation(line: 1740, column: 5, scope: !2810)
!2819 = distinct !DISubprogram(name: "luaLoadLib", scope: !3, file: !3, line: 1230, type: !2820, scopeLine: 1230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !734, !128, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !113, line: 52, baseType: !2823)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!2824 = !DILocalVariable(name: "lua", arg: 1, scope: !2819, file: !3, line: 1230, type: !734)
!2825 = !DILocation(line: 1230, column: 35, scope: !2819)
!2826 = !DILocalVariable(name: "libname", arg: 2, scope: !2819, file: !3, line: 1230, type: !128)
!2827 = !DILocation(line: 1230, column: 52, scope: !2819)
!2828 = !DILocalVariable(name: "luafunc", arg: 3, scope: !2819, file: !3, line: 1230, type: !2822)
!2829 = !DILocation(line: 1230, column: 75, scope: !2819)
!2830 = !DILocation(line: 1231, column: 3, scope: !2819)
!2831 = !DILocation(line: 1232, column: 18, scope: !2819)
!2832 = !DILocation(line: 1232, column: 23, scope: !2819)
!2833 = !DILocation(line: 1232, column: 3, scope: !2819)
!2834 = !DILocation(line: 1233, column: 12, scope: !2819)
!2835 = !DILocation(line: 1233, column: 3, scope: !2819)
!2836 = !DILocation(line: 1234, column: 1, scope: !2819)
!2837 = !DILocalVariable(name: "lua", arg: 1, scope: !778, file: !3, line: 888, type: !734)
!2838 = !DILocation(line: 888, column: 46, scope: !778)
!2839 = !DILocalVariable(name: "raise_error", arg: 2, scope: !778, file: !3, line: 888, type: !114)
!2840 = !DILocation(line: 888, column: 55, scope: !778)
!2841 = !DILocalVariable(name: "j", scope: !778, file: !3, line: 889, type: !114)
!2842 = !DILocation(line: 889, column: 9, scope: !778)
!2843 = !DILocalVariable(name: "rctx", scope: !778, file: !3, line: 890, type: !122)
!2844 = !DILocation(line: 890, column: 19, scope: !778)
!2845 = !DILocation(line: 890, column: 45, scope: !778)
!2846 = !DILocation(line: 890, column: 26, scope: !778)
!2847 = !DILocation(line: 891, column: 10, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !778, file: !3, line: 891, column: 9)
!2849 = !DILocation(line: 891, column: 9, scope: !778)
!2850 = !DILocation(line: 892, column: 22, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 891, column: 16)
!2852 = !DILocation(line: 892, column: 9, scope: !2851)
!2853 = !DILocation(line: 893, column: 25, scope: !2851)
!2854 = !DILocation(line: 893, column: 16, scope: !2851)
!2855 = !DILocation(line: 893, column: 9, scope: !2851)
!2856 = !DILocalVariable(name: "err", scope: !778, file: !3, line: 895, type: !420)
!2857 = !DILocation(line: 895, column: 9, scope: !778)
!2858 = !DILocalVariable(name: "c", scope: !778, file: !3, line: 896, type: !131)
!2859 = !DILocation(line: 896, column: 13, scope: !778)
!2860 = !DILocation(line: 896, column: 17, scope: !778)
!2861 = !DILocation(line: 896, column: 23, scope: !778)
!2862 = !DILocalVariable(name: "reply", scope: !778, file: !3, line: 897, type: !420)
!2863 = !DILocation(line: 897, column: 9, scope: !778)
!2864 = !DILocation(line: 899, column: 34, scope: !778)
!2865 = !DILocation(line: 899, column: 40, scope: !778)
!2866 = !DILocation(line: 899, column: 43, scope: !778)
!2867 = !DILocation(line: 899, column: 50, scope: !778)
!2868 = !DILocation(line: 899, column: 53, scope: !778)
!2869 = !DILocation(line: 899, column: 15, scope: !778)
!2870 = !DILocation(line: 899, column: 5, scope: !778)
!2871 = !DILocation(line: 899, column: 8, scope: !778)
!2872 = !DILocation(line: 899, column: 13, scope: !778)
!2873 = !DILocation(line: 900, column: 9, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !778, file: !3, line: 900, column: 9)
!2875 = !DILocation(line: 900, column: 12, scope: !2874)
!2876 = !DILocation(line: 900, column: 17, scope: !2874)
!2877 = !DILocation(line: 900, column: 9, scope: !778)
!2878 = !DILocation(line: 901, column: 16, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 900, column: 26)
!2880 = !DILocation(line: 901, column: 39, scope: !2879)
!2881 = !DILocation(line: 901, column: 30, scope: !2879)
!2882 = !DILocation(line: 901, column: 9, scope: !2879)
!2883 = !DILocation(line: 910, column: 9, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !778, file: !3, line: 910, column: 9)
!2885 = !DILocation(line: 910, column: 9, scope: !778)
!2886 = !DILocalVariable(name: "recursion_warning", scope: !2887, file: !3, line: 911, type: !107)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 910, column: 16)
!2888 = !DILocation(line: 911, column: 15, scope: !2887)
!2889 = !DILocation(line: 914, column: 9, scope: !2887)
!2890 = !DILocation(line: 914, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 914, column: 9)
!2892 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 914, column: 9)
!2893 = !DILocation(line: 914, column: 9, scope: !2892)
!2894 = !DILocation(line: 915, column: 22, scope: !2887)
!2895 = !DILocation(line: 915, column: 26, scope: !2887)
!2896 = !DILocation(line: 915, column: 9, scope: !2887)
!2897 = !DILocation(line: 916, column: 9, scope: !2887)
!2898 = !DILocation(line: 918, column: 10, scope: !778)
!2899 = !DILocation(line: 921, column: 9, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !778, file: !3, line: 921, column: 9)
!2901 = !DILocation(line: 921, column: 9, scope: !778)
!2902 = !DILocalVariable(name: "cmdlog", scope: !2903, file: !3, line: 922, type: !420)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 921, column: 25)
!2904 = !DILocation(line: 922, column: 13, scope: !2903)
!2905 = !DILocation(line: 922, column: 22, scope: !2903)
!2906 = !DILocation(line: 923, column: 16, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 923, column: 9)
!2908 = !DILocation(line: 923, column: 14, scope: !2907)
!2909 = !DILocation(line: 923, column: 21, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 923, column: 9)
!2911 = !DILocation(line: 923, column: 25, scope: !2910)
!2912 = !DILocation(line: 923, column: 28, scope: !2910)
!2913 = !DILocation(line: 923, column: 23, scope: !2910)
!2914 = !DILocation(line: 923, column: 9, scope: !2907)
!2915 = !DILocation(line: 924, column: 17, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 924, column: 17)
!2917 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 923, column: 39)
!2918 = !DILocation(line: 924, column: 19, scope: !2916)
!2919 = !DILocation(line: 924, column: 17, scope: !2917)
!2920 = !DILocation(line: 925, column: 39, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 924, column: 26)
!2922 = !DILocation(line: 926, column: 21, scope: !2921)
!2923 = !DILocation(line: 926, column: 24, scope: !2921)
!2924 = !DILocation(line: 926, column: 29, scope: !2921)
!2925 = !DILocation(line: 926, column: 28, scope: !2921)
!2926 = !DILocation(line: 926, column: 30, scope: !2921)
!2927 = !DILocation(line: 925, column: 26, scope: !2921)
!2928 = !DILocation(line: 925, column: 24, scope: !2921)
!2929 = !DILocation(line: 927, column: 17, scope: !2921)
!2930 = !DILocation(line: 929, column: 36, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 928, column: 20)
!2932 = !DILocation(line: 929, column: 26, scope: !2931)
!2933 = !DILocation(line: 929, column: 24, scope: !2931)
!2934 = !DILocation(line: 930, column: 36, scope: !2931)
!2935 = !DILocation(line: 930, column: 43, scope: !2931)
!2936 = !DILocation(line: 930, column: 46, scope: !2931)
!2937 = !DILocation(line: 930, column: 51, scope: !2931)
!2938 = !DILocation(line: 930, column: 55, scope: !2931)
!2939 = !DILocation(line: 930, column: 26, scope: !2931)
!2940 = !DILocation(line: 930, column: 24, scope: !2931)
!2941 = !DILocation(line: 932, column: 9, scope: !2917)
!2942 = !DILocation(line: 923, column: 35, scope: !2910)
!2943 = !DILocation(line: 923, column: 9, scope: !2910)
!2944 = distinct !{!2944, !2914, !2945, !1065}
!2945 = !DILocation(line: 932, column: 9, scope: !2907)
!2946 = !DILocation(line: 933, column: 16, scope: !2903)
!2947 = !DILocation(line: 933, column: 9, scope: !2903)
!2948 = !DILocation(line: 934, column: 5, scope: !2903)
!2949 = !DILocation(line: 936, column: 16, scope: !778)
!2950 = !DILocation(line: 936, column: 5, scope: !778)
!2951 = !DILocation(line: 937, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !778, file: !3, line: 937, column: 9)
!2953 = !DILocation(line: 937, column: 9, scope: !778)
!2954 = !DILocation(line: 938, column: 22, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 937, column: 14)
!2956 = !DILocation(line: 938, column: 27, scope: !2955)
!2957 = !DILocation(line: 938, column: 9, scope: !2955)
!2958 = !DILocation(line: 939, column: 17, scope: !2955)
!2959 = !DILocation(line: 939, column: 9, scope: !2955)
!2960 = !DILocation(line: 942, column: 24, scope: !2955)
!2961 = !DILocation(line: 942, column: 9, scope: !2955)
!2962 = !DILocation(line: 943, column: 25, scope: !2955)
!2963 = !DILocation(line: 943, column: 9, scope: !2955)
!2964 = !DILocation(line: 944, column: 22, scope: !2955)
!2965 = !DILocation(line: 944, column: 9, scope: !2955)
!2966 = !DILocation(line: 945, column: 9, scope: !2955)
!2967 = !DILocation(line: 951, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !778, file: !3, line: 951, column: 9)
!2969 = !DILocation(line: 951, column: 30, scope: !2968)
!2970 = !DILocation(line: 951, column: 35, scope: !2968)
!2971 = !DILocation(line: 951, column: 46, scope: !2968)
!2972 = !DILocation(line: 951, column: 49, scope: !2968)
!2973 = !DILocation(line: 951, column: 38, scope: !2968)
!2974 = !DILocation(line: 951, column: 58, scope: !2968)
!2975 = !DILocation(line: 951, column: 61, scope: !2968)
!2976 = !DILocation(line: 951, column: 56, scope: !2968)
!2977 = !DILocation(line: 951, column: 9, scope: !778)
!2978 = !DILocation(line: 955, column: 9, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 951, column: 78)
!2980 = !DILocation(line: 955, column: 12, scope: !2979)
!2981 = !DILocation(line: 955, column: 16, scope: !2979)
!2982 = !DILocation(line: 955, column: 19, scope: !2979)
!2983 = !DILocation(line: 955, column: 27, scope: !2979)
!2984 = !DILocation(line: 956, column: 17, scope: !2979)
!2985 = !DILocation(line: 956, column: 20, scope: !2979)
!2986 = !DILocation(line: 956, column: 15, scope: !2979)
!2987 = !DILocation(line: 957, column: 9, scope: !2979)
!2988 = !DILocation(line: 957, column: 12, scope: !2979)
!2989 = !DILocation(line: 957, column: 19, scope: !2979)
!2990 = !DILocation(line: 958, column: 5, scope: !2979)
!2991 = !DILocation(line: 959, column: 27, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 958, column: 12)
!2993 = !DILocation(line: 959, column: 30, scope: !2992)
!2994 = !DILocation(line: 959, column: 34, scope: !2992)
!2995 = !DILocation(line: 959, column: 37, scope: !2992)
!2996 = !DILocation(line: 959, column: 17, scope: !2992)
!2997 = !DILocation(line: 959, column: 15, scope: !2992)
!2998 = !DILocation(line: 960, column: 9, scope: !2992)
!2999 = !DILocation(line: 960, column: 12, scope: !2992)
!3000 = !DILocation(line: 960, column: 19, scope: !2992)
!3001 = !DILocation(line: 961, column: 9, scope: !2992)
!3002 = !DILocation(line: 961, column: 15, scope: !2992)
!3003 = !DILocalVariable(name: "o", scope: !3004, file: !3, line: 962, type: !3005)
!3004 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 961, column: 37)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientReplyBlock", file: !16, line: 887, baseType: !3007)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clientReplyBlock", file: !16, line: 884, size: 128, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3007, file: !16, line: 885, baseType: !108, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3007, file: !16, line: 885, baseType: !108, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3007, file: !16, line: 886, baseType: !74, offset: 128)
!3012 = !DILocation(line: 962, column: 31, scope: !3004)
!3013 = !DILocation(line: 962, column: 35, scope: !3004)
!3014 = !DILocation(line: 964, column: 31, scope: !3004)
!3015 = !DILocation(line: 964, column: 37, scope: !3004)
!3016 = !DILocation(line: 964, column: 40, scope: !3004)
!3017 = !DILocation(line: 964, column: 44, scope: !3004)
!3018 = !DILocation(line: 964, column: 47, scope: !3004)
!3019 = !DILocation(line: 964, column: 21, scope: !3004)
!3020 = !DILocation(line: 964, column: 19, scope: !3004)
!3021 = !DILocation(line: 965, column: 25, scope: !3004)
!3022 = !DILocation(line: 965, column: 28, scope: !3004)
!3023 = !DILocation(line: 965, column: 34, scope: !3004)
!3024 = !DILocation(line: 965, column: 13, scope: !3004)
!3025 = distinct !{!3025, !3001, !3026, !1065}
!3026 = !DILocation(line: 966, column: 9, scope: !2992)
!3027 = !DILocation(line: 968, column: 9, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !778, file: !3, line: 968, column: 9)
!3029 = !DILocation(line: 968, column: 21, scope: !3028)
!3030 = !DILocation(line: 968, column: 24, scope: !3028)
!3031 = !DILocation(line: 968, column: 33, scope: !3028)
!3032 = !DILocation(line: 968, column: 9, scope: !778)
!3033 = !DILocation(line: 968, column: 53, scope: !3028)
!3034 = !DILocation(line: 968, column: 41, scope: !3028)
!3035 = !DILocation(line: 969, column: 28, scope: !778)
!3036 = !DILocation(line: 969, column: 32, scope: !778)
!3037 = !DILocation(line: 969, column: 5, scope: !778)
!3038 = !DILocation(line: 972, column: 9, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !778, file: !3, line: 972, column: 9)
!3040 = !DILocation(line: 972, column: 9, scope: !778)
!3041 = !DILocation(line: 973, column: 26, scope: !3039)
!3042 = !DILocation(line: 973, column: 9, scope: !3039)
!3043 = !DILocation(line: 975, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !778, file: !3, line: 975, column: 9)
!3045 = !DILocation(line: 975, column: 18, scope: !3044)
!3046 = !DILocation(line: 975, column: 21, scope: !3044)
!3047 = !DILocation(line: 975, column: 15, scope: !3044)
!3048 = !DILocation(line: 975, column: 9, scope: !778)
!3049 = !DILocation(line: 975, column: 34, scope: !3044)
!3050 = !DILocation(line: 975, column: 26, scope: !3044)
!3051 = !DILocation(line: 976, column: 5, scope: !778)
!3052 = !DILocation(line: 976, column: 8, scope: !778)
!3053 = !DILocation(line: 976, column: 20, scope: !778)
!3054 = !DILabel(scope: !778, name: "cleanup", file: !3, line: 978)
!3055 = !DILocation(line: 978, column: 1, scope: !778)
!3056 = !DILocation(line: 981, column: 22, scope: !778)
!3057 = !DILocation(line: 981, column: 25, scope: !778)
!3058 = !DILocation(line: 981, column: 31, scope: !778)
!3059 = !DILocation(line: 981, column: 34, scope: !778)
!3060 = !DILocation(line: 981, column: 40, scope: !778)
!3061 = !DILocation(line: 981, column: 43, scope: !778)
!3062 = !DILocation(line: 981, column: 5, scope: !778)
!3063 = !DILocation(line: 982, column: 15, scope: !778)
!3064 = !DILocation(line: 982, column: 18, scope: !778)
!3065 = !DILocation(line: 982, column: 27, scope: !778)
!3066 = !DILocation(line: 982, column: 5, scope: !778)
!3067 = !DILocation(line: 982, column: 8, scope: !778)
!3068 = !DILocation(line: 982, column: 13, scope: !778)
!3069 = !DILocation(line: 983, column: 5, scope: !778)
!3070 = !DILocation(line: 983, column: 8, scope: !778)
!3071 = !DILocation(line: 983, column: 13, scope: !778)
!3072 = !DILocation(line: 984, column: 5, scope: !778)
!3073 = !DILocation(line: 984, column: 8, scope: !778)
!3074 = !DILocation(line: 984, column: 13, scope: !778)
!3075 = !DILocation(line: 985, column: 20, scope: !778)
!3076 = !DILocation(line: 985, column: 5, scope: !778)
!3077 = !DILocation(line: 986, column: 10, scope: !778)
!3078 = !DILocation(line: 988, column: 9, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !778, file: !3, line: 988, column: 9)
!3080 = !DILocation(line: 988, column: 9, scope: !778)
!3081 = !DILocation(line: 992, column: 25, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3079, file: !3, line: 988, column: 22)
!3083 = !DILocation(line: 992, column: 16, scope: !3082)
!3084 = !DILocation(line: 992, column: 9, scope: !3082)
!3085 = !DILocation(line: 994, column: 5, scope: !778)
!3086 = !DILocation(line: 995, column: 1, scope: !778)
!3087 = distinct !DISubprogram(name: "luaArgsToRedisArgv", scope: !3, file: !3, line: 796, type: !3088, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!425, !734, !3090, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!3091 = !DILocalVariable(name: "lua", arg: 1, scope: !3087, file: !3, line: 796, type: !734)
!3092 = !DILocation(line: 796, column: 45, scope: !3087)
!3093 = !DILocalVariable(name: "argc", arg: 2, scope: !3087, file: !3, line: 796, type: !3090)
!3094 = !DILocation(line: 796, column: 55, scope: !3087)
!3095 = !DILocalVariable(name: "argv_len", arg: 3, scope: !3087, file: !3, line: 796, type: !3090)
!3096 = !DILocation(line: 796, column: 66, scope: !3087)
!3097 = !DILocalVariable(name: "j", scope: !3087, file: !3, line: 797, type: !114)
!3098 = !DILocation(line: 797, column: 9, scope: !3087)
!3099 = !DILocation(line: 799, column: 24, scope: !3087)
!3100 = !DILocation(line: 799, column: 13, scope: !3087)
!3101 = !DILocation(line: 799, column: 6, scope: !3087)
!3102 = !DILocation(line: 799, column: 11, scope: !3087)
!3103 = !DILocation(line: 800, column: 10, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 800, column: 9)
!3105 = !DILocation(line: 800, column: 9, scope: !3104)
!3106 = !DILocation(line: 800, column: 15, scope: !3104)
!3107 = !DILocation(line: 800, column: 9, scope: !3087)
!3108 = !DILocation(line: 801, column: 22, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3104, file: !3, line: 800, column: 21)
!3110 = !DILocation(line: 801, column: 9, scope: !3109)
!3111 = !DILocation(line: 802, column: 9, scope: !3109)
!3112 = !DILocation(line: 806, column: 9, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 806, column: 9)
!3114 = !DILocation(line: 806, column: 26, scope: !3113)
!3115 = !DILocation(line: 806, column: 25, scope: !3113)
!3116 = !DILocation(line: 806, column: 23, scope: !3113)
!3117 = !DILocation(line: 806, column: 9, scope: !3087)
!3118 = !DILocation(line: 807, column: 29, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 806, column: 32)
!3120 = !DILocation(line: 807, column: 54, scope: !3119)
!3121 = !DILocation(line: 807, column: 53, scope: !3119)
!3122 = !DILocation(line: 807, column: 51, scope: !3119)
!3123 = !DILocation(line: 807, column: 20, scope: !3119)
!3124 = !DILocation(line: 807, column: 18, scope: !3119)
!3125 = !DILocation(line: 808, column: 26, scope: !3119)
!3126 = !DILocation(line: 808, column: 25, scope: !3119)
!3127 = !DILocation(line: 808, column: 23, scope: !3119)
!3128 = !DILocation(line: 809, column: 5, scope: !3119)
!3129 = !DILocation(line: 810, column: 17, scope: !3087)
!3130 = !DILocation(line: 810, column: 6, scope: !3087)
!3131 = !DILocation(line: 810, column: 15, scope: !3087)
!3132 = !DILocation(line: 812, column: 12, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 812, column: 5)
!3134 = !DILocation(line: 812, column: 10, scope: !3133)
!3135 = !DILocation(line: 812, column: 17, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 812, column: 5)
!3137 = !DILocation(line: 812, column: 22, scope: !3136)
!3138 = !DILocation(line: 812, column: 21, scope: !3136)
!3139 = !DILocation(line: 812, column: 19, scope: !3136)
!3140 = !DILocation(line: 812, column: 5, scope: !3133)
!3141 = !DILocalVariable(name: "obj_s", scope: !3142, file: !3, line: 813, type: !107)
!3142 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 812, column: 33)
!3143 = !DILocation(line: 813, column: 15, scope: !3142)
!3144 = !DILocalVariable(name: "obj_len", scope: !3142, file: !3, line: 814, type: !108)
!3145 = !DILocation(line: 814, column: 16, scope: !3142)
!3146 = !DILocalVariable(name: "dbuf", scope: !3142, file: !3, line: 815, type: !3147)
!3147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !3148)
!3148 = !{!3149}
!3149 = !DISubrange(count: 64)
!3150 = !DILocation(line: 815, column: 14, scope: !3142)
!3151 = !DILocation(line: 817, column: 22, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 817, column: 13)
!3153 = !DILocation(line: 817, column: 26, scope: !3152)
!3154 = !DILocation(line: 817, column: 27, scope: !3152)
!3155 = !DILocation(line: 817, column: 13, scope: !3152)
!3156 = !DILocation(line: 817, column: 31, scope: !3152)
!3157 = !DILocation(line: 817, column: 13, scope: !3142)
!3158 = !DILocalVariable(name: "num", scope: !3159, file: !3, line: 820, type: !112)
!3159 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 817, column: 47)
!3160 = !DILocation(line: 820, column: 24, scope: !3159)
!3161 = !DILocation(line: 820, column: 43, scope: !3159)
!3162 = !DILocation(line: 820, column: 47, scope: !3159)
!3163 = !DILocation(line: 820, column: 48, scope: !3159)
!3164 = !DILocation(line: 820, column: 30, scope: !3159)
!3165 = !DILocation(line: 822, column: 32, scope: !3159)
!3166 = !DILocation(line: 822, column: 66, scope: !3159)
!3167 = !DILocation(line: 822, column: 23, scope: !3159)
!3168 = !DILocation(line: 822, column: 21, scope: !3159)
!3169 = !DILocation(line: 823, column: 21, scope: !3159)
!3170 = !DILocation(line: 823, column: 19, scope: !3159)
!3171 = !DILocation(line: 824, column: 9, scope: !3159)
!3172 = !DILocation(line: 825, column: 42, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 824, column: 16)
!3174 = !DILocation(line: 825, column: 46, scope: !3173)
!3175 = !DILocation(line: 825, column: 47, scope: !3173)
!3176 = !DILocation(line: 825, column: 28, scope: !3173)
!3177 = !DILocation(line: 825, column: 19, scope: !3173)
!3178 = !DILocation(line: 826, column: 17, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 826, column: 17)
!3180 = !DILocation(line: 826, column: 23, scope: !3179)
!3181 = !DILocation(line: 826, column: 17, scope: !3173)
!3182 = !DILocation(line: 826, column: 32, scope: !3179)
!3183 = !DILocation(line: 829, column: 13, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 829, column: 13)
!3185 = !DILocation(line: 829, column: 15, scope: !3184)
!3186 = !DILocation(line: 829, column: 39, scope: !3184)
!3187 = !DILocation(line: 829, column: 66, scope: !3184)
!3188 = !DILocation(line: 829, column: 42, scope: !3184)
!3189 = !DILocation(line: 829, column: 69, scope: !3184)
!3190 = !DILocation(line: 830, column: 41, scope: !3184)
!3191 = !DILocation(line: 830, column: 13, scope: !3184)
!3192 = !DILocation(line: 830, column: 47, scope: !3184)
!3193 = !DILocation(line: 830, column: 44, scope: !3184)
!3194 = !DILocation(line: 829, column: 13, scope: !3142)
!3195 = !DILocalVariable(name: "s", scope: !3196, file: !3, line: 832, type: !420)
!3196 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 831, column: 9)
!3197 = !DILocation(line: 832, column: 17, scope: !3196)
!3198 = !DILocation(line: 832, column: 45, scope: !3196)
!3199 = !DILocation(line: 832, column: 21, scope: !3196)
!3200 = !DILocation(line: 832, column: 49, scope: !3196)
!3201 = !DILocation(line: 833, column: 51, scope: !3196)
!3202 = !DILocation(line: 833, column: 27, scope: !3196)
!3203 = !DILocation(line: 833, column: 13, scope: !3196)
!3204 = !DILocation(line: 833, column: 22, scope: !3196)
!3205 = !DILocation(line: 833, column: 25, scope: !3196)
!3206 = !DILocation(line: 834, column: 37, scope: !3196)
!3207 = !DILocation(line: 834, column: 13, scope: !3196)
!3208 = !DILocation(line: 834, column: 40, scope: !3196)
!3209 = !DILocation(line: 835, column: 20, scope: !3196)
!3210 = !DILocation(line: 835, column: 22, scope: !3196)
!3211 = !DILocation(line: 835, column: 28, scope: !3196)
!3212 = !DILocation(line: 835, column: 35, scope: !3196)
!3213 = !DILocation(line: 835, column: 13, scope: !3196)
!3214 = !DILocation(line: 836, column: 23, scope: !3196)
!3215 = !DILocation(line: 836, column: 26, scope: !3196)
!3216 = !DILocation(line: 836, column: 13, scope: !3196)
!3217 = !DILocation(line: 837, column: 9, scope: !3196)
!3218 = !DILocation(line: 838, column: 46, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 837, column: 16)
!3220 = !DILocation(line: 838, column: 53, scope: !3219)
!3221 = !DILocation(line: 838, column: 27, scope: !3219)
!3222 = !DILocation(line: 838, column: 13, scope: !3219)
!3223 = !DILocation(line: 838, column: 22, scope: !3219)
!3224 = !DILocation(line: 838, column: 25, scope: !3219)
!3225 = !DILocation(line: 840, column: 5, scope: !3142)
!3226 = !DILocation(line: 812, column: 29, scope: !3136)
!3227 = !DILocation(line: 812, column: 5, scope: !3136)
!3228 = distinct !{!3228, !3140, !3229, !1065}
!3229 = !DILocation(line: 840, column: 5, scope: !3133)
!3230 = !DILocation(line: 844, column: 5, scope: !3087)
!3231 = !DILocation(line: 849, column: 9, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 849, column: 9)
!3233 = !DILocation(line: 849, column: 15, scope: !3232)
!3234 = !DILocation(line: 849, column: 14, scope: !3232)
!3235 = !DILocation(line: 849, column: 11, scope: !3232)
!3236 = !DILocation(line: 849, column: 9, scope: !3087)
!3237 = !DILocation(line: 850, column: 26, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 849, column: 21)
!3239 = !DILocation(line: 850, column: 36, scope: !3238)
!3240 = !DILocation(line: 850, column: 39, scope: !3238)
!3241 = !DILocation(line: 850, column: 9, scope: !3238)
!3242 = !DILocation(line: 851, column: 22, scope: !3238)
!3243 = !DILocation(line: 851, column: 9, scope: !3238)
!3244 = !DILocation(line: 852, column: 9, scope: !3238)
!3245 = !DILocation(line: 855, column: 12, scope: !3087)
!3246 = !DILocation(line: 855, column: 5, scope: !3087)
!3247 = !DILocation(line: 856, column: 1, scope: !3087)
!3248 = distinct !DISubprogram(name: "redisProtocolToLuaType", scope: !3, file: !3, line: 230, type: !3249, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !734, !107}
!3251 = !DILocalVariable(name: "lua", arg: 1, scope: !3248, file: !3, line: 230, type: !734)
!3252 = !DILocation(line: 230, column: 47, scope: !3248)
!3253 = !DILocalVariable(name: "reply", arg: 2, scope: !3248, file: !3, line: 230, type: !107)
!3254 = !DILocation(line: 230, column: 58, scope: !3248)
!3255 = !DILocalVariable(name: "parser", scope: !3248, file: !3, line: 231, type: !3256)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParser", file: !785, line: 35, baseType: !808)
!3257 = !DILocation(line: 231, column: 17, scope: !3248)
!3258 = !DILocation(line: 231, column: 26, scope: !3248)
!3259 = !DILocation(line: 231, column: 44, scope: !3248)
!3260 = !DILocation(line: 231, column: 64, scope: !3248)
!3261 = !DILocation(line: 233, column: 25, scope: !3248)
!3262 = !DILocation(line: 233, column: 5, scope: !3248)
!3263 = !DILocation(line: 234, column: 1, scope: !3248)
!3264 = distinct !DISubprogram(name: "sdssetlen", scope: !63, file: !63, line: 130, type: !3265, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{null, !420, !108}
!3267 = !DILocalVariable(name: "s", arg: 1, scope: !3264, file: !63, line: 130, type: !420)
!3268 = !DILocation(line: 130, column: 34, scope: !3264)
!3269 = !DILocalVariable(name: "newlen", arg: 2, scope: !3264, file: !63, line: 130, type: !108)
!3270 = !DILocation(line: 130, column: 44, scope: !3264)
!3271 = !DILocalVariable(name: "flags", scope: !3264, file: !63, line: 131, type: !70)
!3272 = !DILocation(line: 131, column: 19, scope: !3264)
!3273 = !DILocation(line: 131, column: 27, scope: !3264)
!3274 = !DILocation(line: 132, column: 12, scope: !3264)
!3275 = !DILocation(line: 132, column: 17, scope: !3264)
!3276 = !DILocation(line: 132, column: 5, scope: !3264)
!3277 = !DILocalVariable(name: "fp", scope: !3278, file: !63, line: 135, type: !111)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !63, line: 134, column: 13)
!3279 = distinct !DILexicalBlock(scope: !3264, file: !63, line: 132, column: 33)
!3280 = !DILocation(line: 135, column: 32, scope: !3278)
!3281 = !DILocation(line: 135, column: 54, scope: !3278)
!3282 = !DILocation(line: 135, column: 56, scope: !3278)
!3283 = !DILocation(line: 136, column: 37, scope: !3278)
!3284 = !DILocation(line: 136, column: 44, scope: !3278)
!3285 = !DILocation(line: 136, column: 34, scope: !3278)
!3286 = !DILocation(line: 136, column: 23, scope: !3278)
!3287 = !DILocation(line: 136, column: 18, scope: !3278)
!3288 = !DILocation(line: 136, column: 21, scope: !3278)
!3289 = !DILocation(line: 138, column: 13, scope: !3279)
!3290 = !DILocation(line: 140, column: 33, scope: !3279)
!3291 = !DILocation(line: 140, column: 13, scope: !3279)
!3292 = !DILocation(line: 140, column: 27, scope: !3279)
!3293 = !DILocation(line: 140, column: 31, scope: !3279)
!3294 = !DILocation(line: 141, column: 13, scope: !3279)
!3295 = !DILocation(line: 143, column: 34, scope: !3279)
!3296 = !DILocation(line: 143, column: 13, scope: !3279)
!3297 = !DILocation(line: 143, column: 28, scope: !3279)
!3298 = !DILocation(line: 143, column: 32, scope: !3279)
!3299 = !DILocation(line: 144, column: 13, scope: !3279)
!3300 = !DILocation(line: 146, column: 34, scope: !3279)
!3301 = !DILocation(line: 146, column: 13, scope: !3279)
!3302 = !DILocation(line: 146, column: 28, scope: !3279)
!3303 = !DILocation(line: 146, column: 32, scope: !3279)
!3304 = !DILocation(line: 147, column: 13, scope: !3279)
!3305 = !DILocation(line: 149, column: 34, scope: !3279)
!3306 = !DILocation(line: 149, column: 13, scope: !3279)
!3307 = !DILocation(line: 149, column: 28, scope: !3279)
!3308 = !DILocation(line: 149, column: 32, scope: !3279)
!3309 = !DILocation(line: 150, column: 13, scope: !3279)
!3310 = !DILocation(line: 152, column: 1, scope: !3264)
!3311 = distinct !DISubprogram(name: "redisProtocolToLuaType_NullArray", scope: !3, file: !3, line: 268, type: !790, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3312 = !DILocalVariable(name: "ctx", arg: 1, scope: !3311, file: !3, line: 268, type: !60)
!3313 = !DILocation(line: 268, column: 52, scope: !3311)
!3314 = !DILocalVariable(name: "proto", arg: 2, scope: !3311, file: !3, line: 268, type: !128)
!3315 = !DILocation(line: 268, column: 69, scope: !3311)
!3316 = !DILocalVariable(name: "proto_len", arg: 3, scope: !3311, file: !3, line: 268, type: !108)
!3317 = !DILocation(line: 268, column: 83, scope: !3311)
!3318 = !DILocation(line: 269, column: 5, scope: !3311)
!3319 = !DILocation(line: 270, column: 5, scope: !3311)
!3320 = !DILocation(line: 271, column: 10, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 271, column: 9)
!3322 = !DILocation(line: 271, column: 9, scope: !3311)
!3323 = !DILocation(line: 272, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 271, column: 15)
!3325 = !DILocalVariable(name: "lua", scope: !3311, file: !3, line: 274, type: !734)
!3326 = !DILocation(line: 274, column: 16, scope: !3311)
!3327 = !DILocation(line: 274, column: 22, scope: !3311)
!3328 = !DILocation(line: 275, column: 25, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 275, column: 9)
!3330 = !DILocation(line: 275, column: 10, scope: !3329)
!3331 = !DILocation(line: 275, column: 9, scope: !3311)
!3332 = !DILocation(line: 278, column: 9, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 275, column: 34)
!3334 = !DILocation(line: 280, column: 21, scope: !3311)
!3335 = !DILocation(line: 280, column: 5, scope: !3311)
!3336 = !DILocation(line: 281, column: 1, scope: !3311)
!3337 = distinct !DISubprogram(name: "redisProtocolToLuaType_NullBulkString", scope: !3, file: !3, line: 252, type: !790, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3338 = !DILocalVariable(name: "ctx", arg: 1, scope: !3337, file: !3, line: 252, type: !60)
!3339 = !DILocation(line: 252, column: 57, scope: !3337)
!3340 = !DILocalVariable(name: "proto", arg: 2, scope: !3337, file: !3, line: 252, type: !128)
!3341 = !DILocation(line: 252, column: 74, scope: !3337)
!3342 = !DILocalVariable(name: "proto_len", arg: 3, scope: !3337, file: !3, line: 252, type: !108)
!3343 = !DILocation(line: 252, column: 88, scope: !3337)
!3344 = !DILocation(line: 253, column: 5, scope: !3337)
!3345 = !DILocation(line: 254, column: 5, scope: !3337)
!3346 = !DILocation(line: 255, column: 10, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 255, column: 9)
!3348 = !DILocation(line: 255, column: 9, scope: !3337)
!3349 = !DILocation(line: 256, column: 9, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 255, column: 15)
!3351 = !DILocalVariable(name: "lua", scope: !3337, file: !3, line: 259, type: !734)
!3352 = !DILocation(line: 259, column: 16, scope: !3337)
!3353 = !DILocation(line: 259, column: 22, scope: !3337)
!3354 = !DILocation(line: 260, column: 25, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 260, column: 9)
!3356 = !DILocation(line: 260, column: 10, scope: !3355)
!3357 = !DILocation(line: 260, column: 9, scope: !3337)
!3358 = !DILocation(line: 263, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 260, column: 34)
!3360 = !DILocation(line: 265, column: 21, scope: !3337)
!3361 = !DILocation(line: 265, column: 5, scope: !3337)
!3362 = !DILocation(line: 266, column: 1, scope: !3337)
!3363 = distinct !DISubprogram(name: "redisProtocolToLuaType_BulkString", scope: !3, file: !3, line: 284, type: !795, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3364 = !DILocalVariable(name: "ctx", arg: 1, scope: !3363, file: !3, line: 284, type: !60)
!3365 = !DILocation(line: 284, column: 53, scope: !3363)
!3366 = !DILocalVariable(name: "str", arg: 2, scope: !3363, file: !3, line: 284, type: !128)
!3367 = !DILocation(line: 284, column: 70, scope: !3363)
!3368 = !DILocalVariable(name: "len", arg: 3, scope: !3363, file: !3, line: 284, type: !108)
!3369 = !DILocation(line: 284, column: 82, scope: !3363)
!3370 = !DILocalVariable(name: "proto", arg: 4, scope: !3363, file: !3, line: 284, type: !128)
!3371 = !DILocation(line: 284, column: 99, scope: !3363)
!3372 = !DILocalVariable(name: "proto_len", arg: 5, scope: !3363, file: !3, line: 284, type: !108)
!3373 = !DILocation(line: 284, column: 113, scope: !3363)
!3374 = !DILocation(line: 285, column: 5, scope: !3363)
!3375 = !DILocation(line: 286, column: 5, scope: !3363)
!3376 = !DILocation(line: 287, column: 10, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 287, column: 9)
!3378 = !DILocation(line: 287, column: 9, scope: !3363)
!3379 = !DILocation(line: 288, column: 9, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 287, column: 15)
!3381 = !DILocalVariable(name: "lua", scope: !3363, file: !3, line: 291, type: !734)
!3382 = !DILocation(line: 291, column: 16, scope: !3363)
!3383 = !DILocation(line: 291, column: 22, scope: !3363)
!3384 = !DILocation(line: 292, column: 25, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 292, column: 9)
!3386 = !DILocation(line: 292, column: 10, scope: !3385)
!3387 = !DILocation(line: 292, column: 9, scope: !3363)
!3388 = !DILocation(line: 295, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 292, column: 34)
!3390 = !DILocation(line: 297, column: 21, scope: !3363)
!3391 = !DILocation(line: 297, column: 25, scope: !3363)
!3392 = !DILocation(line: 297, column: 29, scope: !3363)
!3393 = !DILocation(line: 297, column: 5, scope: !3363)
!3394 = !DILocation(line: 298, column: 1, scope: !3363)
!3395 = distinct !DISubprogram(name: "redisProtocolToLuaType_Error", scope: !3, file: !3, line: 319, type: !795, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3396 = !DILocalVariable(name: "ctx", arg: 1, scope: !3395, file: !3, line: 319, type: !60)
!3397 = !DILocation(line: 319, column: 48, scope: !3395)
!3398 = !DILocalVariable(name: "str", arg: 2, scope: !3395, file: !3, line: 319, type: !128)
!3399 = !DILocation(line: 319, column: 65, scope: !3395)
!3400 = !DILocalVariable(name: "len", arg: 3, scope: !3395, file: !3, line: 319, type: !108)
!3401 = !DILocation(line: 319, column: 77, scope: !3395)
!3402 = !DILocalVariable(name: "proto", arg: 4, scope: !3395, file: !3, line: 319, type: !128)
!3403 = !DILocation(line: 319, column: 94, scope: !3395)
!3404 = !DILocalVariable(name: "proto_len", arg: 5, scope: !3395, file: !3, line: 319, type: !108)
!3405 = !DILocation(line: 319, column: 108, scope: !3395)
!3406 = !DILocation(line: 320, column: 5, scope: !3395)
!3407 = !DILocation(line: 321, column: 5, scope: !3395)
!3408 = !DILocation(line: 322, column: 10, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 322, column: 9)
!3410 = !DILocation(line: 322, column: 9, scope: !3395)
!3411 = !DILocation(line: 323, column: 9, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 322, column: 15)
!3413 = !DILocalVariable(name: "lua", scope: !3395, file: !3, line: 326, type: !734)
!3414 = !DILocation(line: 326, column: 16, scope: !3395)
!3415 = !DILocation(line: 326, column: 22, scope: !3395)
!3416 = !DILocation(line: 327, column: 25, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 327, column: 9)
!3418 = !DILocation(line: 327, column: 10, scope: !3417)
!3419 = !DILocation(line: 327, column: 9, scope: !3395)
!3420 = !DILocation(line: 330, column: 9, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !3, line: 327, column: 34)
!3422 = !DILocalVariable(name: "err_msg", scope: !3395, file: !3, line: 332, type: !420)
!3423 = !DILocation(line: 332, column: 9, scope: !3395)
!3424 = !DILocation(line: 332, column: 29, scope: !3395)
!3425 = !DILocation(line: 332, column: 42, scope: !3395)
!3426 = !DILocation(line: 332, column: 47, scope: !3395)
!3427 = !DILocation(line: 332, column: 19, scope: !3395)
!3428 = !DILocation(line: 333, column: 22, scope: !3395)
!3429 = !DILocation(line: 333, column: 26, scope: !3395)
!3430 = !DILocation(line: 333, column: 5, scope: !3395)
!3431 = !DILocation(line: 336, column: 20, scope: !3395)
!3432 = !DILocation(line: 336, column: 5, scope: !3395)
!3433 = !DILocation(line: 337, column: 21, scope: !3395)
!3434 = !DILocation(line: 337, column: 5, scope: !3395)
!3435 = !DILocation(line: 338, column: 18, scope: !3395)
!3436 = !DILocation(line: 338, column: 5, scope: !3395)
!3437 = !DILocation(line: 339, column: 1, scope: !3395)
!3438 = distinct !DISubprogram(name: "redisProtocolToLuaType_Status", scope: !3, file: !3, line: 300, type: !795, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3439 = !DILocalVariable(name: "ctx", arg: 1, scope: !3438, file: !3, line: 300, type: !60)
!3440 = !DILocation(line: 300, column: 49, scope: !3438)
!3441 = !DILocalVariable(name: "str", arg: 2, scope: !3438, file: !3, line: 300, type: !128)
!3442 = !DILocation(line: 300, column: 66, scope: !3438)
!3443 = !DILocalVariable(name: "len", arg: 3, scope: !3438, file: !3, line: 300, type: !108)
!3444 = !DILocation(line: 300, column: 78, scope: !3438)
!3445 = !DILocalVariable(name: "proto", arg: 4, scope: !3438, file: !3, line: 300, type: !128)
!3446 = !DILocation(line: 300, column: 95, scope: !3438)
!3447 = !DILocalVariable(name: "proto_len", arg: 5, scope: !3438, file: !3, line: 300, type: !108)
!3448 = !DILocation(line: 300, column: 109, scope: !3438)
!3449 = !DILocation(line: 301, column: 5, scope: !3438)
!3450 = !DILocation(line: 302, column: 5, scope: !3438)
!3451 = !DILocation(line: 303, column: 10, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 303, column: 9)
!3453 = !DILocation(line: 303, column: 9, scope: !3438)
!3454 = !DILocation(line: 304, column: 9, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 303, column: 15)
!3456 = !DILocalVariable(name: "lua", scope: !3438, file: !3, line: 307, type: !734)
!3457 = !DILocation(line: 307, column: 16, scope: !3438)
!3458 = !DILocation(line: 307, column: 22, scope: !3438)
!3459 = !DILocation(line: 308, column: 25, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 308, column: 9)
!3461 = !DILocation(line: 308, column: 10, scope: !3460)
!3462 = !DILocation(line: 308, column: 9, scope: !3438)
!3463 = !DILocation(line: 311, column: 9, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 308, column: 34)
!3465 = !DILocation(line: 313, column: 5, scope: !3438)
!3466 = !DILocation(line: 314, column: 20, scope: !3438)
!3467 = !DILocation(line: 314, column: 5, scope: !3438)
!3468 = !DILocation(line: 315, column: 21, scope: !3438)
!3469 = !DILocation(line: 315, column: 25, scope: !3438)
!3470 = !DILocation(line: 315, column: 29, scope: !3438)
!3471 = !DILocation(line: 315, column: 5, scope: !3438)
!3472 = !DILocation(line: 316, column: 18, scope: !3438)
!3473 = !DILocation(line: 316, column: 5, scope: !3438)
!3474 = !DILocation(line: 317, column: 1, scope: !3438)
!3475 = distinct !DISubprogram(name: "redisProtocolToLuaType_Int", scope: !3, file: !3, line: 236, type: !801, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3476 = !DILocalVariable(name: "ctx", arg: 1, scope: !3475, file: !3, line: 236, type: !60)
!3477 = !DILocation(line: 236, column: 46, scope: !3475)
!3478 = !DILocalVariable(name: "val", arg: 2, scope: !3475, file: !3, line: 236, type: !115)
!3479 = !DILocation(line: 236, column: 61, scope: !3475)
!3480 = !DILocalVariable(name: "proto", arg: 3, scope: !3475, file: !3, line: 236, type: !128)
!3481 = !DILocation(line: 236, column: 78, scope: !3475)
!3482 = !DILocalVariable(name: "proto_len", arg: 4, scope: !3475, file: !3, line: 236, type: !108)
!3483 = !DILocation(line: 236, column: 92, scope: !3475)
!3484 = !DILocation(line: 237, column: 5, scope: !3475)
!3485 = !DILocation(line: 238, column: 5, scope: !3475)
!3486 = !DILocation(line: 239, column: 10, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 239, column: 9)
!3488 = !DILocation(line: 239, column: 9, scope: !3475)
!3489 = !DILocation(line: 240, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 239, column: 15)
!3491 = !DILocalVariable(name: "lua", scope: !3475, file: !3, line: 243, type: !734)
!3492 = !DILocation(line: 243, column: 16, scope: !3475)
!3493 = !DILocation(line: 243, column: 22, scope: !3475)
!3494 = !DILocation(line: 244, column: 25, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 244, column: 9)
!3496 = !DILocation(line: 244, column: 10, scope: !3495)
!3497 = !DILocation(line: 244, column: 9, scope: !3475)
!3498 = !DILocation(line: 247, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 244, column: 34)
!3500 = !DILocation(line: 249, column: 20, scope: !3475)
!3501 = !DILocation(line: 249, column: 36, scope: !3475)
!3502 = !DILocation(line: 249, column: 24, scope: !3475)
!3503 = !DILocation(line: 249, column: 5, scope: !3475)
!3504 = !DILocation(line: 250, column: 1, scope: !3475)
!3505 = distinct !DISubprogram(name: "redisProtocolToLuaType_Array", scope: !3, file: !3, line: 393, type: !805, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3506 = !DILocalVariable(name: "parser", arg: 1, scope: !3505, file: !3, line: 393, type: !807)
!3507 = !DILocation(line: 393, column: 62, scope: !3505)
!3508 = !DILocalVariable(name: "ctx", arg: 2, scope: !3505, file: !3, line: 393, type: !60)
!3509 = !DILocation(line: 393, column: 76, scope: !3505)
!3510 = !DILocalVariable(name: "len", arg: 3, scope: !3505, file: !3, line: 393, type: !108)
!3511 = !DILocation(line: 393, column: 88, scope: !3505)
!3512 = !DILocalVariable(name: "proto", arg: 4, scope: !3505, file: !3, line: 393, type: !128)
!3513 = !DILocation(line: 393, column: 105, scope: !3505)
!3514 = !DILocation(line: 394, column: 5, scope: !3505)
!3515 = !DILocalVariable(name: "lua", scope: !3505, file: !3, line: 396, type: !734)
!3516 = !DILocation(line: 396, column: 16, scope: !3505)
!3517 = !DILocation(line: 396, column: 22, scope: !3505)
!3518 = !DILocation(line: 397, column: 9, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 397, column: 9)
!3520 = !DILocation(line: 397, column: 9, scope: !3505)
!3521 = !DILocation(line: 398, column: 29, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 398, column: 13)
!3523 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 397, column: 13)
!3524 = !DILocation(line: 398, column: 14, scope: !3522)
!3525 = !DILocation(line: 398, column: 13, scope: !3523)
!3526 = !DILocation(line: 401, column: 13, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 398, column: 38)
!3528 = !DILocation(line: 403, column: 9, scope: !3523)
!3529 = !DILocation(line: 404, column: 5, scope: !3523)
!3530 = !DILocalVariable(name: "j", scope: !3531, file: !3, line: 405, type: !108)
!3531 = distinct !DILexicalBlock(scope: !3505, file: !3, line: 405, column: 5)
!3532 = !DILocation(line: 405, column: 17, scope: !3531)
!3533 = !DILocation(line: 405, column: 10, scope: !3531)
!3534 = !DILocation(line: 405, column: 24, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 405, column: 5)
!3536 = !DILocation(line: 405, column: 28, scope: !3535)
!3537 = !DILocation(line: 405, column: 26, scope: !3535)
!3538 = !DILocation(line: 405, column: 5, scope: !3531)
!3539 = !DILocation(line: 406, column: 13, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 406, column: 13)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 405, column: 38)
!3542 = !DILocation(line: 406, column: 13, scope: !3541)
!3543 = !DILocation(line: 406, column: 33, scope: !3540)
!3544 = !DILocation(line: 406, column: 37, scope: !3540)
!3545 = !DILocation(line: 406, column: 38, scope: !3540)
!3546 = !DILocation(line: 406, column: 18, scope: !3540)
!3547 = !DILocation(line: 407, column: 20, scope: !3541)
!3548 = !DILocation(line: 407, column: 27, scope: !3541)
!3549 = !DILocation(line: 407, column: 9, scope: !3541)
!3550 = !DILocation(line: 408, column: 13, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 408, column: 13)
!3552 = !DILocation(line: 408, column: 13, scope: !3541)
!3553 = !DILocation(line: 408, column: 31, scope: !3551)
!3554 = !DILocation(line: 408, column: 18, scope: !3551)
!3555 = !DILocation(line: 409, column: 5, scope: !3541)
!3556 = !DILocation(line: 405, column: 34, scope: !3535)
!3557 = !DILocation(line: 405, column: 5, scope: !3535)
!3558 = distinct !{!3558, !3538, !3559, !1065}
!3559 = !DILocation(line: 409, column: 5, scope: !3531)
!3560 = !DILocation(line: 410, column: 1, scope: !3505)
!3561 = distinct !DISubprogram(name: "redisProtocolToLuaType_Set", scope: !3, file: !3, line: 362, type: !805, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3562 = !DILocalVariable(name: "parser", arg: 1, scope: !3561, file: !3, line: 362, type: !807)
!3563 = !DILocation(line: 362, column: 60, scope: !3561)
!3564 = !DILocalVariable(name: "ctx", arg: 2, scope: !3561, file: !3, line: 362, type: !60)
!3565 = !DILocation(line: 362, column: 74, scope: !3561)
!3566 = !DILocalVariable(name: "len", arg: 3, scope: !3561, file: !3, line: 362, type: !108)
!3567 = !DILocation(line: 362, column: 86, scope: !3561)
!3568 = !DILocalVariable(name: "proto", arg: 4, scope: !3561, file: !3, line: 362, type: !128)
!3569 = !DILocation(line: 362, column: 103, scope: !3561)
!3570 = !DILocation(line: 363, column: 5, scope: !3561)
!3571 = !DILocalVariable(name: "lua", scope: !3561, file: !3, line: 365, type: !734)
!3572 = !DILocation(line: 365, column: 16, scope: !3561)
!3573 = !DILocation(line: 365, column: 22, scope: !3561)
!3574 = !DILocation(line: 366, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 366, column: 9)
!3576 = !DILocation(line: 366, column: 9, scope: !3561)
!3577 = !DILocation(line: 367, column: 29, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 367, column: 13)
!3579 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 366, column: 14)
!3580 = !DILocation(line: 367, column: 14, scope: !3578)
!3581 = !DILocation(line: 367, column: 13, scope: !3579)
!3582 = !DILocation(line: 370, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 367, column: 38)
!3584 = !DILocation(line: 372, column: 9, scope: !3579)
!3585 = !DILocation(line: 373, column: 24, scope: !3579)
!3586 = !DILocation(line: 373, column: 9, scope: !3579)
!3587 = !DILocation(line: 374, column: 9, scope: !3579)
!3588 = !DILocation(line: 375, column: 5, scope: !3579)
!3589 = !DILocalVariable(name: "j", scope: !3590, file: !3, line: 376, type: !108)
!3590 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 376, column: 5)
!3591 = !DILocation(line: 376, column: 17, scope: !3590)
!3592 = !DILocation(line: 376, column: 10, scope: !3590)
!3593 = !DILocation(line: 376, column: 24, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 376, column: 5)
!3595 = !DILocation(line: 376, column: 28, scope: !3594)
!3596 = !DILocation(line: 376, column: 26, scope: !3594)
!3597 = !DILocation(line: 376, column: 5, scope: !3590)
!3598 = !DILocation(line: 377, column: 20, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 376, column: 38)
!3600 = !DILocation(line: 377, column: 27, scope: !3599)
!3601 = !DILocation(line: 377, column: 9, scope: !3599)
!3602 = !DILocation(line: 378, column: 13, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 378, column: 13)
!3604 = !DILocation(line: 378, column: 13, scope: !3599)
!3605 = !DILocation(line: 379, column: 33, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 379, column: 17)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 378, column: 18)
!3608 = !DILocation(line: 379, column: 18, scope: !3606)
!3609 = !DILocation(line: 379, column: 17, scope: !3607)
!3610 = !DILocation(line: 384, column: 17, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 379, column: 42)
!3612 = !DILocation(line: 386, column: 29, scope: !3607)
!3613 = !DILocation(line: 386, column: 13, scope: !3607)
!3614 = !DILocation(line: 387, column: 26, scope: !3607)
!3615 = !DILocation(line: 387, column: 13, scope: !3607)
!3616 = !DILocation(line: 388, column: 9, scope: !3607)
!3617 = !DILocation(line: 389, column: 5, scope: !3599)
!3618 = !DILocation(line: 376, column: 34, scope: !3594)
!3619 = !DILocation(line: 376, column: 5, scope: !3594)
!3620 = distinct !{!3620, !3597, !3621, !1065}
!3621 = !DILocation(line: 389, column: 5, scope: !3590)
!3622 = !DILocation(line: 390, column: 9, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 390, column: 9)
!3624 = !DILocation(line: 390, column: 9, scope: !3561)
!3625 = !DILocation(line: 390, column: 27, scope: !3623)
!3626 = !DILocation(line: 390, column: 14, scope: !3623)
!3627 = !DILocation(line: 391, column: 1, scope: !3561)
!3628 = distinct !DISubprogram(name: "redisProtocolToLuaType_Map", scope: !3, file: !3, line: 341, type: !805, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3629 = !DILocalVariable(name: "parser", arg: 1, scope: !3628, file: !3, line: 341, type: !807)
!3630 = !DILocation(line: 341, column: 60, scope: !3628)
!3631 = !DILocalVariable(name: "ctx", arg: 2, scope: !3628, file: !3, line: 341, type: !60)
!3632 = !DILocation(line: 341, column: 74, scope: !3628)
!3633 = !DILocalVariable(name: "len", arg: 3, scope: !3628, file: !3, line: 341, type: !108)
!3634 = !DILocation(line: 341, column: 86, scope: !3628)
!3635 = !DILocalVariable(name: "proto", arg: 4, scope: !3628, file: !3, line: 341, type: !128)
!3636 = !DILocation(line: 341, column: 103, scope: !3628)
!3637 = !DILocation(line: 342, column: 5, scope: !3628)
!3638 = !DILocalVariable(name: "lua", scope: !3628, file: !3, line: 343, type: !734)
!3639 = !DILocation(line: 343, column: 16, scope: !3628)
!3640 = !DILocation(line: 343, column: 22, scope: !3628)
!3641 = !DILocation(line: 344, column: 9, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 344, column: 9)
!3643 = !DILocation(line: 344, column: 9, scope: !3628)
!3644 = !DILocation(line: 345, column: 29, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 345, column: 13)
!3646 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 344, column: 14)
!3647 = !DILocation(line: 345, column: 14, scope: !3645)
!3648 = !DILocation(line: 345, column: 13, scope: !3646)
!3649 = !DILocation(line: 348, column: 13, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 345, column: 38)
!3651 = !DILocation(line: 350, column: 9, scope: !3646)
!3652 = !DILocation(line: 351, column: 24, scope: !3646)
!3653 = !DILocation(line: 351, column: 9, scope: !3646)
!3654 = !DILocation(line: 352, column: 9, scope: !3646)
!3655 = !DILocation(line: 353, column: 5, scope: !3646)
!3656 = !DILocalVariable(name: "j", scope: !3657, file: !3, line: 354, type: !108)
!3657 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 354, column: 5)
!3658 = !DILocation(line: 354, column: 17, scope: !3657)
!3659 = !DILocation(line: 354, column: 10, scope: !3657)
!3660 = !DILocation(line: 354, column: 24, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 354, column: 5)
!3662 = !DILocation(line: 354, column: 28, scope: !3661)
!3663 = !DILocation(line: 354, column: 26, scope: !3661)
!3664 = !DILocation(line: 354, column: 5, scope: !3657)
!3665 = !DILocation(line: 355, column: 20, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3661, file: !3, line: 354, column: 38)
!3667 = !DILocation(line: 355, column: 27, scope: !3666)
!3668 = !DILocation(line: 355, column: 9, scope: !3666)
!3669 = !DILocation(line: 356, column: 20, scope: !3666)
!3670 = !DILocation(line: 356, column: 27, scope: !3666)
!3671 = !DILocation(line: 356, column: 9, scope: !3666)
!3672 = !DILocation(line: 357, column: 13, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 357, column: 13)
!3674 = !DILocation(line: 357, column: 13, scope: !3666)
!3675 = !DILocation(line: 357, column: 31, scope: !3673)
!3676 = !DILocation(line: 357, column: 18, scope: !3673)
!3677 = !DILocation(line: 358, column: 5, scope: !3666)
!3678 = !DILocation(line: 354, column: 34, scope: !3661)
!3679 = !DILocation(line: 354, column: 5, scope: !3661)
!3680 = distinct !{!3680, !3664, !3681, !1065}
!3681 = !DILocation(line: 358, column: 5, scope: !3657)
!3682 = !DILocation(line: 359, column: 9, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3628, file: !3, line: 359, column: 9)
!3684 = !DILocation(line: 359, column: 9, scope: !3628)
!3685 = !DILocation(line: 359, column: 27, scope: !3683)
!3686 = !DILocation(line: 359, column: 14, scope: !3683)
!3687 = !DILocation(line: 360, column: 1, scope: !3628)
!3688 = distinct !DISubprogram(name: "redisProtocolToLuaType_Bool", scope: !3, file: !3, line: 488, type: !816, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3689 = !DILocalVariable(name: "ctx", arg: 1, scope: !3688, file: !3, line: 488, type: !60)
!3690 = !DILocation(line: 488, column: 47, scope: !3688)
!3691 = !DILocalVariable(name: "val", arg: 2, scope: !3688, file: !3, line: 488, type: !114)
!3692 = !DILocation(line: 488, column: 56, scope: !3688)
!3693 = !DILocalVariable(name: "proto", arg: 3, scope: !3688, file: !3, line: 488, type: !128)
!3694 = !DILocation(line: 488, column: 73, scope: !3688)
!3695 = !DILocalVariable(name: "proto_len", arg: 4, scope: !3688, file: !3, line: 488, type: !108)
!3696 = !DILocation(line: 488, column: 87, scope: !3688)
!3697 = !DILocation(line: 489, column: 5, scope: !3688)
!3698 = !DILocation(line: 490, column: 5, scope: !3688)
!3699 = !DILocation(line: 491, column: 10, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 491, column: 9)
!3701 = !DILocation(line: 491, column: 9, scope: !3688)
!3702 = !DILocation(line: 492, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 491, column: 15)
!3704 = !DILocalVariable(name: "lua", scope: !3688, file: !3, line: 495, type: !734)
!3705 = !DILocation(line: 495, column: 16, scope: !3688)
!3706 = !DILocation(line: 495, column: 22, scope: !3688)
!3707 = !DILocation(line: 496, column: 25, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 496, column: 9)
!3709 = !DILocation(line: 496, column: 10, scope: !3708)
!3710 = !DILocation(line: 496, column: 9, scope: !3688)
!3711 = !DILocation(line: 499, column: 9, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 496, column: 34)
!3713 = !DILocation(line: 501, column: 21, scope: !3688)
!3714 = !DILocation(line: 501, column: 25, scope: !3688)
!3715 = !DILocation(line: 501, column: 5, scope: !3688)
!3716 = !DILocation(line: 502, column: 1, scope: !3688)
!3717 = distinct !DISubprogram(name: "redisProtocolToLuaType_Double", scope: !3, file: !3, line: 504, type: !820, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3718 = !DILocalVariable(name: "ctx", arg: 1, scope: !3717, file: !3, line: 504, type: !60)
!3719 = !DILocation(line: 504, column: 49, scope: !3717)
!3720 = !DILocalVariable(name: "d", arg: 2, scope: !3717, file: !3, line: 504, type: !110)
!3721 = !DILocation(line: 504, column: 61, scope: !3717)
!3722 = !DILocalVariable(name: "proto", arg: 3, scope: !3717, file: !3, line: 504, type: !128)
!3723 = !DILocation(line: 504, column: 76, scope: !3717)
!3724 = !DILocalVariable(name: "proto_len", arg: 4, scope: !3717, file: !3, line: 504, type: !108)
!3725 = !DILocation(line: 504, column: 90, scope: !3717)
!3726 = !DILocation(line: 505, column: 5, scope: !3717)
!3727 = !DILocation(line: 506, column: 5, scope: !3717)
!3728 = !DILocation(line: 507, column: 10, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 507, column: 9)
!3730 = !DILocation(line: 507, column: 9, scope: !3717)
!3731 = !DILocation(line: 508, column: 9, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3729, file: !3, line: 507, column: 15)
!3733 = !DILocalVariable(name: "lua", scope: !3717, file: !3, line: 511, type: !734)
!3734 = !DILocation(line: 511, column: 16, scope: !3717)
!3735 = !DILocation(line: 511, column: 22, scope: !3717)
!3736 = !DILocation(line: 512, column: 25, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 512, column: 9)
!3738 = !DILocation(line: 512, column: 10, scope: !3737)
!3739 = !DILocation(line: 512, column: 9, scope: !3717)
!3740 = !DILocation(line: 515, column: 9, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 512, column: 34)
!3742 = !DILocation(line: 517, column: 5, scope: !3717)
!3743 = !DILocation(line: 518, column: 20, scope: !3717)
!3744 = !DILocation(line: 518, column: 5, scope: !3717)
!3745 = !DILocation(line: 519, column: 20, scope: !3717)
!3746 = !DILocation(line: 519, column: 24, scope: !3717)
!3747 = !DILocation(line: 519, column: 5, scope: !3717)
!3748 = !DILocation(line: 520, column: 18, scope: !3717)
!3749 = !DILocation(line: 520, column: 5, scope: !3717)
!3750 = !DILocation(line: 521, column: 1, scope: !3717)
!3751 = distinct !DISubprogram(name: "redisProtocolToLuaType_BigNumber", scope: !3, file: !3, line: 453, type: !795, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3752 = !DILocalVariable(name: "ctx", arg: 1, scope: !3751, file: !3, line: 453, type: !60)
!3753 = !DILocation(line: 453, column: 52, scope: !3751)
!3754 = !DILocalVariable(name: "str", arg: 2, scope: !3751, file: !3, line: 453, type: !128)
!3755 = !DILocation(line: 453, column: 69, scope: !3751)
!3756 = !DILocalVariable(name: "len", arg: 3, scope: !3751, file: !3, line: 453, type: !108)
!3757 = !DILocation(line: 453, column: 81, scope: !3751)
!3758 = !DILocalVariable(name: "proto", arg: 4, scope: !3751, file: !3, line: 453, type: !128)
!3759 = !DILocation(line: 453, column: 98, scope: !3751)
!3760 = !DILocalVariable(name: "proto_len", arg: 5, scope: !3751, file: !3, line: 453, type: !108)
!3761 = !DILocation(line: 453, column: 112, scope: !3751)
!3762 = !DILocation(line: 454, column: 5, scope: !3751)
!3763 = !DILocation(line: 455, column: 5, scope: !3751)
!3764 = !DILocation(line: 456, column: 10, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 456, column: 9)
!3766 = !DILocation(line: 456, column: 9, scope: !3751)
!3767 = !DILocation(line: 457, column: 9, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 456, column: 15)
!3769 = !DILocalVariable(name: "lua", scope: !3751, file: !3, line: 460, type: !734)
!3770 = !DILocation(line: 460, column: 16, scope: !3751)
!3771 = !DILocation(line: 460, column: 22, scope: !3751)
!3772 = !DILocation(line: 461, column: 25, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 461, column: 9)
!3774 = !DILocation(line: 461, column: 10, scope: !3773)
!3775 = !DILocation(line: 461, column: 9, scope: !3751)
!3776 = !DILocation(line: 464, column: 9, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 461, column: 34)
!3778 = !DILocation(line: 466, column: 5, scope: !3751)
!3779 = !DILocation(line: 467, column: 20, scope: !3751)
!3780 = !DILocation(line: 467, column: 5, scope: !3751)
!3781 = !DILocation(line: 468, column: 21, scope: !3751)
!3782 = !DILocation(line: 468, column: 25, scope: !3751)
!3783 = !DILocation(line: 468, column: 29, scope: !3751)
!3784 = !DILocation(line: 468, column: 5, scope: !3751)
!3785 = !DILocation(line: 469, column: 18, scope: !3751)
!3786 = !DILocation(line: 469, column: 5, scope: !3751)
!3787 = !DILocation(line: 470, column: 1, scope: !3751)
!3788 = distinct !DISubprogram(name: "redisProtocolToLuaType_VerbatimString", scope: !3, file: !3, line: 428, type: !825, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3789 = !DILocalVariable(name: "ctx", arg: 1, scope: !3788, file: !3, line: 428, type: !60)
!3790 = !DILocation(line: 428, column: 57, scope: !3788)
!3791 = !DILocalVariable(name: "format", arg: 2, scope: !3788, file: !3, line: 428, type: !128)
!3792 = !DILocation(line: 428, column: 74, scope: !3788)
!3793 = !DILocalVariable(name: "str", arg: 3, scope: !3788, file: !3, line: 428, type: !128)
!3794 = !DILocation(line: 428, column: 94, scope: !3788)
!3795 = !DILocalVariable(name: "len", arg: 4, scope: !3788, file: !3, line: 428, type: !108)
!3796 = !DILocation(line: 428, column: 106, scope: !3788)
!3797 = !DILocalVariable(name: "proto", arg: 5, scope: !3788, file: !3, line: 428, type: !128)
!3798 = !DILocation(line: 428, column: 123, scope: !3788)
!3799 = !DILocalVariable(name: "proto_len", arg: 6, scope: !3788, file: !3, line: 428, type: !108)
!3800 = !DILocation(line: 428, column: 137, scope: !3788)
!3801 = !DILocation(line: 429, column: 5, scope: !3788)
!3802 = !DILocation(line: 430, column: 5, scope: !3788)
!3803 = !DILocation(line: 431, column: 10, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 431, column: 9)
!3805 = !DILocation(line: 431, column: 9, scope: !3788)
!3806 = !DILocation(line: 432, column: 9, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 431, column: 15)
!3808 = !DILocalVariable(name: "lua", scope: !3788, file: !3, line: 435, type: !734)
!3809 = !DILocation(line: 435, column: 16, scope: !3788)
!3810 = !DILocation(line: 435, column: 22, scope: !3788)
!3811 = !DILocation(line: 436, column: 25, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3788, file: !3, line: 436, column: 9)
!3813 = !DILocation(line: 436, column: 10, scope: !3812)
!3814 = !DILocation(line: 436, column: 9, scope: !3788)
!3815 = !DILocation(line: 439, column: 9, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 436, column: 34)
!3817 = !DILocation(line: 441, column: 5, scope: !3788)
!3818 = !DILocation(line: 442, column: 20, scope: !3788)
!3819 = !DILocation(line: 442, column: 5, scope: !3788)
!3820 = !DILocation(line: 443, column: 5, scope: !3788)
!3821 = !DILocation(line: 444, column: 20, scope: !3788)
!3822 = !DILocation(line: 444, column: 5, scope: !3788)
!3823 = !DILocation(line: 445, column: 21, scope: !3788)
!3824 = !DILocation(line: 445, column: 25, scope: !3788)
!3825 = !DILocation(line: 445, column: 29, scope: !3788)
!3826 = !DILocation(line: 445, column: 5, scope: !3788)
!3827 = !DILocation(line: 446, column: 18, scope: !3788)
!3828 = !DILocation(line: 446, column: 5, scope: !3788)
!3829 = !DILocation(line: 447, column: 20, scope: !3788)
!3830 = !DILocation(line: 447, column: 5, scope: !3788)
!3831 = !DILocation(line: 448, column: 21, scope: !3788)
!3832 = !DILocation(line: 448, column: 25, scope: !3788)
!3833 = !DILocation(line: 448, column: 5, scope: !3788)
!3834 = !DILocation(line: 449, column: 18, scope: !3788)
!3835 = !DILocation(line: 449, column: 5, scope: !3788)
!3836 = !DILocation(line: 450, column: 18, scope: !3788)
!3837 = !DILocation(line: 450, column: 5, scope: !3788)
!3838 = !DILocation(line: 451, column: 1, scope: !3788)
!3839 = distinct !DISubprogram(name: "redisProtocolToLuaType_Attribute", scope: !3, file: !3, line: 412, type: !805, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3840 = !DILocalVariable(name: "parser", arg: 1, scope: !3839, file: !3, line: 412, type: !807)
!3841 = !DILocation(line: 412, column: 66, scope: !3839)
!3842 = !DILocalVariable(name: "ctx", arg: 2, scope: !3839, file: !3, line: 412, type: !60)
!3843 = !DILocation(line: 412, column: 80, scope: !3839)
!3844 = !DILocalVariable(name: "len", arg: 3, scope: !3839, file: !3, line: 412, type: !108)
!3845 = !DILocation(line: 412, column: 92, scope: !3839)
!3846 = !DILocalVariable(name: "proto", arg: 4, scope: !3839, file: !3, line: 412, type: !128)
!3847 = !DILocation(line: 412, column: 109, scope: !3839)
!3848 = !DILocation(line: 413, column: 5, scope: !3839)
!3849 = !DILocalVariable(name: "j", scope: !3850, file: !3, line: 419, type: !108)
!3850 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 419, column: 5)
!3851 = !DILocation(line: 419, column: 17, scope: !3850)
!3852 = !DILocation(line: 419, column: 10, scope: !3850)
!3853 = !DILocation(line: 419, column: 24, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 419, column: 5)
!3855 = !DILocation(line: 419, column: 28, scope: !3854)
!3856 = !DILocation(line: 419, column: 26, scope: !3854)
!3857 = !DILocation(line: 419, column: 5, scope: !3850)
!3858 = !DILocation(line: 420, column: 20, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3854, file: !3, line: 419, column: 38)
!3860 = !DILocation(line: 420, column: 9, scope: !3859)
!3861 = !DILocation(line: 421, column: 20, scope: !3859)
!3862 = !DILocation(line: 421, column: 9, scope: !3859)
!3863 = !DILocation(line: 422, column: 5, scope: !3859)
!3864 = !DILocation(line: 419, column: 34, scope: !3854)
!3865 = !DILocation(line: 419, column: 5, scope: !3854)
!3866 = distinct !{!3866, !3857, !3867, !1065}
!3867 = !DILocation(line: 422, column: 5, scope: !3850)
!3868 = !DILocation(line: 425, column: 16, scope: !3839)
!3869 = !DILocation(line: 425, column: 23, scope: !3839)
!3870 = !DILocation(line: 425, column: 5, scope: !3839)
!3871 = !DILocation(line: 426, column: 1, scope: !3839)
!3872 = distinct !DISubprogram(name: "redisProtocolToLuaType_Null", scope: !3, file: !3, line: 472, type: !790, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3873 = !DILocalVariable(name: "ctx", arg: 1, scope: !3872, file: !3, line: 472, type: !60)
!3874 = !DILocation(line: 472, column: 47, scope: !3872)
!3875 = !DILocalVariable(name: "proto", arg: 2, scope: !3872, file: !3, line: 472, type: !128)
!3876 = !DILocation(line: 472, column: 64, scope: !3872)
!3877 = !DILocalVariable(name: "proto_len", arg: 3, scope: !3872, file: !3, line: 472, type: !108)
!3878 = !DILocation(line: 472, column: 78, scope: !3872)
!3879 = !DILocation(line: 473, column: 5, scope: !3872)
!3880 = !DILocation(line: 474, column: 5, scope: !3872)
!3881 = !DILocation(line: 475, column: 10, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 475, column: 9)
!3883 = !DILocation(line: 475, column: 9, scope: !3872)
!3884 = !DILocation(line: 476, column: 9, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 475, column: 15)
!3886 = !DILocalVariable(name: "lua", scope: !3872, file: !3, line: 479, type: !734)
!3887 = !DILocation(line: 479, column: 16, scope: !3872)
!3888 = !DILocation(line: 479, column: 22, scope: !3872)
!3889 = !DILocation(line: 480, column: 25, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 480, column: 9)
!3891 = !DILocation(line: 480, column: 10, scope: !3890)
!3892 = !DILocation(line: 480, column: 9, scope: !3872)
!3893 = !DILocation(line: 483, column: 9, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 480, column: 34)
!3895 = !DILocation(line: 485, column: 17, scope: !3872)
!3896 = !DILocation(line: 485, column: 5, scope: !3872)
!3897 = !DILocation(line: 486, column: 1, scope: !3872)
!3898 = distinct !DISubprogram(name: "luaRedisReturnSingleFieldTable", scope: !3, file: !3, line: 1062, type: !3899, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !737)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!114, !734, !107}
!3901 = !DILocalVariable(name: "lua", arg: 1, scope: !3898, file: !3, line: 1062, type: !734)
!3902 = !DILocation(line: 1062, column: 54, scope: !3898)
!3903 = !DILocalVariable(name: "field", arg: 2, scope: !3898, file: !3, line: 1062, type: !107)
!3904 = !DILocation(line: 1062, column: 65, scope: !3898)
!3905 = !DILocation(line: 1063, column: 20, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 1063, column: 9)
!3907 = !DILocation(line: 1063, column: 9, scope: !3906)
!3908 = !DILocation(line: 1063, column: 25, scope: !3906)
!3909 = !DILocation(line: 1063, column: 30, scope: !3906)
!3910 = !DILocation(line: 1063, column: 42, scope: !3906)
!3911 = !DILocation(line: 1063, column: 33, scope: !3906)
!3912 = !DILocation(line: 1063, column: 50, scope: !3906)
!3913 = !DILocation(line: 1063, column: 9, scope: !3898)
!3914 = !DILocation(line: 1064, column: 22, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 1063, column: 66)
!3916 = !DILocation(line: 1064, column: 9, scope: !3915)
!3917 = !DILocation(line: 1065, column: 9, scope: !3915)
!3918 = !DILocation(line: 1068, column: 5, scope: !3898)
!3919 = !DILocation(line: 1069, column: 20, scope: !3898)
!3920 = !DILocation(line: 1069, column: 25, scope: !3898)
!3921 = !DILocation(line: 1069, column: 5, scope: !3898)
!3922 = !DILocation(line: 1070, column: 19, scope: !3898)
!3923 = !DILocation(line: 1070, column: 5, scope: !3898)
!3924 = !DILocation(line: 1071, column: 18, scope: !3898)
!3925 = !DILocation(line: 1071, column: 5, scope: !3898)
!3926 = !DILocation(line: 1072, column: 5, scope: !3898)
!3927 = !DILocation(line: 1073, column: 1, scope: !3898)
