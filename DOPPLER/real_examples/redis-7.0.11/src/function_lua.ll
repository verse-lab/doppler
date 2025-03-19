; ModuleID = 'function_lua.c'
source_filename = "function_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.scriptFlag = type { i64, i8* }
%struct.luaEngineCtx = type { %struct.lua_State* }
%struct.lua_State = type opaque
%struct.engine = type { i8*, i32 (i8*, %struct.functionLibInfo*, i8*, i8**)*, void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)*, i64 (i8*)*, i64 (i8*)*, i64 (i8*)*, void (i8*, i8*)* }
%struct.functionLibInfo = type { i8*, %struct.dict*, %struct.engineInfo*, i8* }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
%struct.engineInfo = type { i8*, %struct.engine*, %struct.client* }
%struct.client = type { i64, i64, %struct.connection*, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i64, i32, %struct.redisObject**, i32, i32, %struct.redisObject**, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.user*, i32, i32, i64, %struct.list*, i64, %struct.list*, i64, i64, i64, i32, %struct.dictEntry*, i64, i64, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, [41 x i8], i32, i8*, i32, i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, %struct.dict*, i8*, i8*, %struct.listNode*, %struct.listNode*, %struct.listNode*, void (i64, i8*)*, i8*, i8*, i64, %struct.rax*, i64, i32, %struct.listNode*, %struct.clientMemUsageBucket*, %struct.listNode*, i64, i64, i64, i32, i64, i8* }
%struct.connection = type { %struct.ConnectionType*, i32, i16, i16, i32, i8*, void (%struct.connection*)*, void (%struct.connection*)*, void (%struct.connection*)*, i32 }
%struct.ConnectionType = type { void (%struct.aeEventLoop*, i32, i8*, i32)*, i32 (%struct.connection*, i8*, i32, i8*, void (%struct.connection*)*)*, i32 (%struct.connection*, i8*, i64)*, i32 (%struct.connection*, %struct.iovec*, i32)*, i32 (%struct.connection*, i8*, i64)*, void (%struct.connection*)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i32 (%struct.connection*, void (%struct.connection*)*, i32)*, i32 (%struct.connection*, void (%struct.connection*)*)*, i8* (%struct.connection*)*, i32 (%struct.connection*, i8*, i32, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i64 (%struct.connection*, i8*, i64, i64)*, i32 (%struct.connection*)* }
%struct.aeEventLoop = type { i32, i32, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)*, i32 }
%struct.aeFileEvent = type { i32, {}*, {}*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent*, i32 }
%struct.iovec = type { i8*, i64 }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque
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
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64, i32 }
%struct.multiCmd = type { %struct.redisObject**, i32, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, i64, %struct.dict*, %struct.redisObject*, %struct.blockPos, i64, %struct.redisObject*, %struct.redisObject*, i32, i32, i64, i8* }
%struct.blockPos = type { i32, i32 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.scriptRunCtx = type { i8*, %struct.client*, %struct.client*, i32, i32, i64, i64 }
%struct.registerFunctionArgs = type { i8*, i8*, %struct.luaFunctionCtx*, i64 }
%struct.luaFunctionCtx = type { i32 }
%struct.loadCtx = type { %struct.functionLibInfo*, i64 }
%struct.errorInfo = type { i8*, i8*, i8*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@.str = private unnamed_addr constant [18 x i8] c"register_function\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"__LIBRARY_API__\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"__ERROR_HANDLER__\00", align 1
@.str.4 = private unnamed_addr constant [356 x i8] c"local dbg = debug\0Adebug = nil\0Alocal error_handler = function (err)\0A  local i = dbg.getinfo(2,'nSl')\0A  if i and i.what == 'C' then\0A    i = dbg.getinfo(3,'nSl')\0A  end\0A  if type(err) ~= 'table' then\0A    err = {err='ERR ' .. tostring(err)}  end  if i then\0A    err['source'] = i.source\0A    err['line'] = i.currentline\0A  end  return err\0Aend\0Areturn error_handler\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"@err_handler_def\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"__GLOBALS_API__\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"__ENGINE_CTX__\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"LUA\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"__LIBRARY_CTX__\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"redis.register_function can only be called on FUNCTION LOAD command\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"wrong number of arguments to redis.register_function\00", align 1
@.str.13 = private unnamed_addr constant [119 x i8] c"calling redis.register_function with a single argument is only applicable to Lua table (representing named arguments).\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"named argument key given to redis.register_function is not a string\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"function_name\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"function_name argument given to redis.register_function must be a string\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"description argument given to redis.register_function must be a string\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"callback argument given to redis.register_function must be a function\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"flags argument to redis.register_function must be a table representing function flags\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"unknown flag given\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"unknown argument given to redis.register_function\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"redis.register_function must get a function name argument\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"redis.register_function must get a callback argument\00", align 1
@scripts_flags_def = external dso_local global [0 x %struct.scriptFlag], align 8
@.str.27 = private unnamed_addr constant [59 x i8] c"first argument to redis.register_function must be a string\00", align 1
@.str.28 = private unnamed_addr constant [62 x i8] c"second argument to redis.register_function must be a function\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"@user_function\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Error compiling function: %s\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"lua_isfunction(lua, -1)\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"function_lua.c\00", align 1
@getMonotonicUs = external dso_local global i64 ()*, align 8
@.str.33 = private unnamed_addr constant [32 x i8] c"Error registering functions: %s\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"FUNCTION LOAD timeout\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaEngineInitEngine() #0 !dbg !111 {
entry:
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  %errh_func = alloca i8*, align 8
  %lua_engine = alloca %struct.engine*, align 8
  %.compoundliteral = alloca %struct.engine, align 8
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !116, metadata !DIExpression()), !dbg !126
  %call = call i8* @zmalloc(i64 8), !dbg !127
  %0 = bitcast i8* %call to %struct.luaEngineCtx*, !dbg !127
  store %struct.luaEngineCtx* %0, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !126
  %call1 = call %struct.lua_State* @luaL_newstate(), !dbg !128
  %1 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !129
  %lua = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %1, i32 0, i32 0, !dbg !130
  store %struct.lua_State* %call1, %struct.lua_State** %lua, align 8, !dbg !131
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !132
  %lua2 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %2, i32 0, i32 0, !dbg !133
  %3 = load %struct.lua_State*, %struct.lua_State** %lua2, align 8, !dbg !133
  call void @luaRegisterRedisAPI(%struct.lua_State* %3), !dbg !134
  %4 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !135
  %lua3 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %4, i32 0, i32 0, !dbg !135
  %5 = load %struct.lua_State*, %struct.lua_State** %lua3, align 8, !dbg !135
  call void @lua_createtable(%struct.lua_State* %5, i32 0, i32 0), !dbg !135
  %6 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !136
  %lua4 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %6, i32 0, i32 0, !dbg !136
  %7 = load %struct.lua_State*, %struct.lua_State** %lua4, align 8, !dbg !136
  call void @lua_createtable(%struct.lua_State* %7, i32 0, i32 0), !dbg !136
  %8 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !137
  %lua5 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %8, i32 0, i32 0, !dbg !138
  %9 = load %struct.lua_State*, %struct.lua_State** %lua5, align 8, !dbg !138
  call void @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !139
  %10 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !140
  %lua6 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %10, i32 0, i32 0, !dbg !140
  %11 = load %struct.lua_State*, %struct.lua_State** %lua6, align 8, !dbg !140
  call void @lua_pushcclosure(%struct.lua_State* %11, i32 (%struct.lua_State*)* @luaRegisterFunction, i32 0), !dbg !140
  %12 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !141
  %lua7 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %12, i32 0, i32 0, !dbg !142
  %13 = load %struct.lua_State*, %struct.lua_State** %lua7, align 8, !dbg !142
  call void @lua_settable(%struct.lua_State* %13, i32 -3), !dbg !143
  %14 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !144
  %lua8 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %14, i32 0, i32 0, !dbg !145
  %15 = load %struct.lua_State*, %struct.lua_State** %lua8, align 8, !dbg !145
  call void @luaRegisterLogFunction(%struct.lua_State* %15), !dbg !146
  %16 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !147
  %lua9 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %16, i32 0, i32 0, !dbg !148
  %17 = load %struct.lua_State*, %struct.lua_State** %lua9, align 8, !dbg !148
  call void @luaRegisterVersion(%struct.lua_State* %17), !dbg !149
  %18 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !150
  %lua10 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %18, i32 0, i32 0, !dbg !151
  %19 = load %struct.lua_State*, %struct.lua_State** %lua10, align 8, !dbg !151
  call void @luaSetErrorMetatable(%struct.lua_State* %19), !dbg !152
  %20 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !153
  %lua11 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %20, i32 0, i32 0, !dbg !154
  %21 = load %struct.lua_State*, %struct.lua_State** %lua11, align 8, !dbg !154
  call void @lua_setfield(%struct.lua_State* %21, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !155
  %22 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !156
  %lua12 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %22, i32 0, i32 0, !dbg !157
  %23 = load %struct.lua_State*, %struct.lua_State** %lua12, align 8, !dbg !157
  call void @luaSetErrorMetatable(%struct.lua_State* %23), !dbg !158
  %24 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !159
  %lua13 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %24, i32 0, i32 0, !dbg !160
  %25 = load %struct.lua_State*, %struct.lua_State** %lua13, align 8, !dbg !160
  call void @luaSetTableProtectionRecursively(%struct.lua_State* %25), !dbg !161
  %26 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !162
  %lua14 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %26, i32 0, i32 0, !dbg !163
  %27 = load %struct.lua_State*, %struct.lua_State** %lua14, align 8, !dbg !163
  call void @lua_setfield(%struct.lua_State* %27, i32 -10000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !164
  %28 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !165
  %lua15 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %28, i32 0, i32 0, !dbg !166
  %29 = load %struct.lua_State*, %struct.lua_State** %lua15, align 8, !dbg !166
  call void @lua_pushstring(%struct.lua_State* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)), !dbg !167
  call void @llvm.dbg.declare(metadata i8** %errh_func, metadata !168, metadata !DIExpression()), !dbg !170
  store i8* getelementptr inbounds ([356 x i8], [356 x i8]* @.str.4, i64 0, i64 0), i8** %errh_func, align 8, !dbg !170
  %30 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !171
  %lua16 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %30, i32 0, i32 0, !dbg !172
  %31 = load %struct.lua_State*, %struct.lua_State** %lua16, align 8, !dbg !172
  %32 = load i8*, i8** %errh_func, align 8, !dbg !173
  %33 = load i8*, i8** %errh_func, align 8, !dbg !174
  %call17 = call i64 @strlen(i8* %33) #7, !dbg !175
  %call18 = call i32 @luaL_loadbuffer(%struct.lua_State* %31, i8* %32, i64 %call17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)), !dbg !176
  %34 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !177
  %lua19 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %34, i32 0, i32 0, !dbg !178
  %35 = load %struct.lua_State*, %struct.lua_State** %lua19, align 8, !dbg !178
  %call20 = call i32 @lua_pcall(%struct.lua_State* %35, i32 0, i32 1, i32 0), !dbg !179
  %36 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !180
  %lua21 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %36, i32 0, i32 0, !dbg !181
  %37 = load %struct.lua_State*, %struct.lua_State** %lua21, align 8, !dbg !181
  call void @lua_settable(%struct.lua_State* %37, i32 -10000), !dbg !182
  %38 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !183
  %lua22 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %38, i32 0, i32 0, !dbg !184
  %39 = load %struct.lua_State*, %struct.lua_State** %lua22, align 8, !dbg !184
  call void @lua_pushvalue(%struct.lua_State* %39, i32 -10002), !dbg !185
  %40 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !186
  %lua23 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %40, i32 0, i32 0, !dbg !187
  %41 = load %struct.lua_State*, %struct.lua_State** %lua23, align 8, !dbg !187
  call void @luaSetErrorMetatable(%struct.lua_State* %41), !dbg !188
  %42 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !189
  %lua24 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %42, i32 0, i32 0, !dbg !190
  %43 = load %struct.lua_State*, %struct.lua_State** %lua24, align 8, !dbg !190
  call void @luaSetTableProtectionRecursively(%struct.lua_State* %43), !dbg !191
  %44 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !192
  %lua25 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %44, i32 0, i32 0, !dbg !192
  %45 = load %struct.lua_State*, %struct.lua_State** %lua25, align 8, !dbg !192
  call void @lua_settop(%struct.lua_State* %45, i32 -2), !dbg !192
  %46 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !193
  %lua26 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %46, i32 0, i32 0, !dbg !194
  %47 = load %struct.lua_State*, %struct.lua_State** %lua26, align 8, !dbg !194
  call void @lua_pushvalue(%struct.lua_State* %47, i32 -10002), !dbg !195
  %48 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !196
  %lua27 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %48, i32 0, i32 0, !dbg !197
  %49 = load %struct.lua_State*, %struct.lua_State** %lua27, align 8, !dbg !197
  call void @lua_setfield(%struct.lua_State* %49, i32 -10000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)), !dbg !198
  %50 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !199
  %lua28 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %50, i32 0, i32 0, !dbg !200
  %51 = load %struct.lua_State*, %struct.lua_State** %lua28, align 8, !dbg !200
  %52 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !201
  %53 = bitcast %struct.luaEngineCtx* %52 to i8*, !dbg !201
  call void @luaSaveOnRegistry(%struct.lua_State* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %53), !dbg !202
  %54 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !203
  %lua29 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %54, i32 0, i32 0, !dbg !203
  %55 = load %struct.lua_State*, %struct.lua_State** %lua29, align 8, !dbg !203
  call void @lua_createtable(%struct.lua_State* %55, i32 0, i32 0), !dbg !203
  %56 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !204
  %lua30 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %56, i32 0, i32 0, !dbg !204
  %57 = load %struct.lua_State*, %struct.lua_State** %lua30, align 8, !dbg !204
  call void @lua_createtable(%struct.lua_State* %57, i32 0, i32 0), !dbg !204
  %58 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !205
  %lua31 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %58, i32 0, i32 0, !dbg !206
  %59 = load %struct.lua_State*, %struct.lua_State** %lua31, align 8, !dbg !206
  call void @lua_pushvalue(%struct.lua_State* %59, i32 -10002), !dbg !207
  %60 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !208
  %lua32 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %60, i32 0, i32 0, !dbg !209
  %61 = load %struct.lua_State*, %struct.lua_State** %lua32, align 8, !dbg !209
  call void @lua_setfield(%struct.lua_State* %61, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !210
  %62 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !211
  %lua33 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %62, i32 0, i32 0, !dbg !212
  %63 = load %struct.lua_State*, %struct.lua_State** %lua33, align 8, !dbg !212
  call void @lua_enablereadonlytable(%struct.lua_State* %63, i32 -1, i32 1), !dbg !213
  %64 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !214
  %lua34 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %64, i32 0, i32 0, !dbg !215
  %65 = load %struct.lua_State*, %struct.lua_State** %lua34, align 8, !dbg !215
  %call35 = call i32 @lua_setmetatable(%struct.lua_State* %65, i32 -2), !dbg !216
  %66 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !217
  %lua36 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %66, i32 0, i32 0, !dbg !218
  %67 = load %struct.lua_State*, %struct.lua_State** %lua36, align 8, !dbg !218
  call void @lua_enablereadonlytable(%struct.lua_State* %67, i32 -1, i32 1), !dbg !219
  %68 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !220
  %lua37 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %68, i32 0, i32 0, !dbg !221
  %69 = load %struct.lua_State*, %struct.lua_State** %lua37, align 8, !dbg !221
  call void @lua_replace(%struct.lua_State* %69, i32 -10002), !dbg !222
  call void @llvm.dbg.declare(metadata %struct.engine** %lua_engine, metadata !223, metadata !DIExpression()), !dbg !869
  %call38 = call i8* @zmalloc(i64 56), !dbg !870
  %70 = bitcast i8* %call38 to %struct.engine*, !dbg !870
  store %struct.engine* %70, %struct.engine** %lua_engine, align 8, !dbg !869
  %71 = load %struct.engine*, %struct.engine** %lua_engine, align 8, !dbg !871
  %engine_ctx = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 0, !dbg !872
  %72 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !873
  %73 = bitcast %struct.luaEngineCtx* %72 to i8*, !dbg !873
  store i8* %73, i8** %engine_ctx, align 8, !dbg !872
  %create = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 1, !dbg !872
  store i32 (i8*, %struct.functionLibInfo*, i8*, i8**)* @luaEngineCreate, i32 (i8*, %struct.functionLibInfo*, i8*, i8**)** %create, align 8, !dbg !872
  %call39 = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 2, !dbg !872
  store void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)* @luaEngineCall, void (%struct.scriptRunCtx*, i8*, i8*, %struct.redisObject**, i64, %struct.redisObject**, i64)** %call39, align 8, !dbg !872
  %get_used_memory = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 3, !dbg !872
  store i64 (i8*)* @luaEngineGetUsedMemoy, i64 (i8*)** %get_used_memory, align 8, !dbg !872
  %get_function_memory_overhead = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 4, !dbg !872
  store i64 (i8*)* @luaEngineFunctionMemoryOverhead, i64 (i8*)** %get_function_memory_overhead, align 8, !dbg !872
  %get_engine_memory_overhead = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 5, !dbg !872
  store i64 (i8*)* @luaEngineMemoryOverhead, i64 (i8*)** %get_engine_memory_overhead, align 8, !dbg !872
  %free_function = getelementptr inbounds %struct.engine, %struct.engine* %.compoundliteral, i32 0, i32 6, !dbg !872
  store void (i8*, i8*)* @luaEngineFreeFunction, void (i8*, i8*)** %free_function, align 8, !dbg !872
  %74 = bitcast %struct.engine* %71 to i8*, !dbg !874
  %75 = bitcast %struct.engine* %.compoundliteral to i8*, !dbg !874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 56, i1 false), !dbg !874
  %76 = load %struct.engine*, %struct.engine** %lua_engine, align 8, !dbg !875
  %call40 = call i32 @functionsRegisterEngine(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.engine* %76), !dbg !876
  ret i32 %call40, !dbg !877
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @zmalloc(i64) #2

declare dso_local %struct.lua_State* @luaL_newstate() #2

declare dso_local void @luaRegisterRedisAPI(%struct.lua_State*) #2

declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) #2

declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRegisterFunction(%struct.lua_State* %lua) #0 !dbg !878 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %register_f_args = alloca %struct.registerFunctionArgs, align 8
  %load_ctx = alloca %struct.loadCtx*, align 8
  %err = alloca i8*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !881, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs* %register_f_args, metadata !883, metadata !DIExpression()), !dbg !896
  %0 = bitcast %struct.registerFunctionArgs* %register_f_args to i8*, !dbg !896
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 32, i1 false), !dbg !896
  call void @llvm.dbg.declare(metadata %struct.loadCtx** %load_ctx, metadata !897, metadata !DIExpression()), !dbg !904
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !905
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !906
  %2 = bitcast i8* %call to %struct.loadCtx*, !dbg !906
  store %struct.loadCtx* %2, %struct.loadCtx** %load_ctx, align 8, !dbg !904
  %3 = load %struct.loadCtx*, %struct.loadCtx** %load_ctx, align 8, !dbg !907
  %tobool = icmp ne %struct.loadCtx* %3, null, !dbg !907
  br i1 %tobool, label %if.end, label %if.then, !dbg !909

if.then:                                          ; preds = %entry
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !910
  call void @luaPushError(%struct.lua_State* %4, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0)), !dbg !912
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !913
  %call1 = call i32 @luaError(%struct.lua_State* %5), !dbg !914
  store i32 %call1, i32* %retval, align 4, !dbg !915
  br label %return, !dbg !915

if.end:                                           ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !916
  %call2 = call i32 @luaRegisterFunctionReadArgs(%struct.lua_State* %6, %struct.registerFunctionArgs* %register_f_args), !dbg !918
  %cmp = icmp ne i32 %call2, 0, !dbg !919
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !920

if.then3:                                         ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !921
  %call4 = call i32 @luaError(%struct.lua_State* %7), !dbg !923
  store i32 %call4, i32* %retval, align 4, !dbg !924
  br label %return, !dbg !924

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %err, metadata !925, metadata !DIExpression()), !dbg !926
  store i8* null, i8** %err, align 8, !dbg !926
  %name = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %register_f_args, i32 0, i32 0, !dbg !927
  %8 = load i8*, i8** %name, align 8, !dbg !927
  %lua_f_ctx = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %register_f_args, i32 0, i32 2, !dbg !929
  %9 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !929
  %10 = bitcast %struct.luaFunctionCtx* %9 to i8*, !dbg !930
  %11 = load %struct.loadCtx*, %struct.loadCtx** %load_ctx, align 8, !dbg !931
  %li = getelementptr inbounds %struct.loadCtx, %struct.loadCtx* %11, i32 0, i32 0, !dbg !932
  %12 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li, align 8, !dbg !932
  %desc = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %register_f_args, i32 0, i32 1, !dbg !933
  %13 = load i8*, i8** %desc, align 8, !dbg !933
  %f_flags = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %register_f_args, i32 0, i32 3, !dbg !934
  %14 = load i64, i64* %f_flags, align 8, !dbg !934
  %call6 = call i32 @functionLibCreateFunction(i8* %8, i8* %10, %struct.functionLibInfo* %12, i8* %13, i64 %14, i8** %err), !dbg !935
  %cmp7 = icmp ne i32 %call6, 0, !dbg !936
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !937

if.then8:                                         ; preds = %if.end5
  %15 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !938
  call void @luaRegisterFunctionArgsDispose(%struct.lua_State* %15, %struct.registerFunctionArgs* %register_f_args), !dbg !940
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !941
  %17 = load i8*, i8** %err, align 8, !dbg !942
  call void @luaPushError(%struct.lua_State* %16, i8* %17), !dbg !943
  %18 = load i8*, i8** %err, align 8, !dbg !944
  call void @sdsfree(i8* %18), !dbg !945
  %19 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !946
  %call9 = call i32 @luaError(%struct.lua_State* %19), !dbg !947
  store i32 %call9, i32* %retval, align 4, !dbg !948
  br label %return, !dbg !948

if.end10:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !949
  br label %return, !dbg !949

return:                                           ; preds = %if.end10, %if.then8, %if.then3, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !950
  ret i32 %20, !dbg !950
}

declare dso_local void @lua_settable(%struct.lua_State*, i32) #2

declare dso_local void @luaRegisterLogFunction(%struct.lua_State*) #2

declare dso_local void @luaRegisterVersion(%struct.lua_State*) #2

declare dso_local void @luaSetErrorMetatable(%struct.lua_State*) #2

declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare dso_local void @luaSetTableProtectionRecursively(%struct.lua_State*) #2

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) #2

declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) #2

declare dso_local void @lua_settop(%struct.lua_State*, i32) #2

declare dso_local void @luaSaveOnRegistry(%struct.lua_State*, i8*, i8*) #2

declare dso_local void @lua_enablereadonlytable(%struct.lua_State*, i32, i32) #2

declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) #2

declare dso_local void @lua_replace(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaEngineCreate(i8* %engine_ctx, %struct.functionLibInfo* %li, i8* %blob, i8** %err) #0 !dbg !951 {
entry:
  %engine_ctx.addr = alloca i8*, align 8
  %li.addr = alloca %struct.functionLibInfo*, align 8
  %blob.addr = alloca i8*, align 8
  %err.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %load_ctx = alloca %struct.loadCtx, align 8
  %err_info = alloca %struct.errorInfo, align 8
  store i8* %engine_ctx, i8** %engine_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_ctx.addr, metadata !952, metadata !DIExpression()), !dbg !953
  store %struct.functionLibInfo* %li, %struct.functionLibInfo** %li.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionLibInfo** %li.addr, metadata !954, metadata !DIExpression()), !dbg !955
  store i8* %blob, i8** %blob.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %blob.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store i8** %err, i8*** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %err.addr, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !960, metadata !DIExpression()), !dbg !961
  store i32 -1, i32* %ret, align 4, !dbg !961
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !962, metadata !DIExpression()), !dbg !963
  %0 = load i8*, i8** %engine_ctx.addr, align 8, !dbg !964
  %1 = bitcast i8* %0 to %struct.luaEngineCtx*, !dbg !964
  store %struct.luaEngineCtx* %1, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !965, metadata !DIExpression()), !dbg !966
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !967
  %lua1 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %2, i32 0, i32 0, !dbg !968
  %3 = load %struct.lua_State*, %struct.lua_State** %lua1, align 8, !dbg !968
  store %struct.lua_State* %3, %struct.lua_State** %lua, align 8, !dbg !966
  %4 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !969
  %call = call i32 @lua_getmetatable(%struct.lua_State* %4, i32 -10002), !dbg !970
  %5 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !971
  call void @lua_enablereadonlytable(%struct.lua_State* %5, i32 -1, i32 0), !dbg !972
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !973
  call void @lua_getfield(%struct.lua_State* %6, i32 -10000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !974
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !975
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !976
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !977
  call void @lua_enablereadonlytable(%struct.lua_State* %8, i32 -10002, i32 1), !dbg !978
  %9 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !979
  call void @lua_settop(%struct.lua_State* %9, i32 -2), !dbg !979
  %10 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !980
  %11 = load i8*, i8** %blob.addr, align 8, !dbg !982
  %12 = load i8*, i8** %blob.addr, align 8, !dbg !983
  %call2 = call i64 @sdslen(i8* %12), !dbg !984
  %call3 = call i32 @luaL_loadbuffer(%struct.lua_State* %10, i8* %11, i64 %call2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0)), !dbg !985
  %tobool = icmp ne i32 %call3, 0, !dbg !985
  br i1 %tobool, label %if.then, label %if.end, !dbg !986

if.then:                                          ; preds = %entry
  %call4 = call i8* @sdsempty(), !dbg !987
  %13 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !989
  %call5 = call i8* @lua_tolstring(%struct.lua_State* %13, i32 -1, i64* null), !dbg !989
  %call6 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %call4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %call5), !dbg !990
  %14 = load i8**, i8*** %err.addr, align 8, !dbg !991
  store i8* %call6, i8** %14, align 8, !dbg !992
  %15 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !993
  call void @lua_settop(%struct.lua_State* %15, i32 -2), !dbg !993
  br label %done, !dbg !994

if.end:                                           ; preds = %entry
  %16 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !995
  %call7 = call i32 @lua_type(%struct.lua_State* %16, i32 -1), !dbg !995
  %cmp = icmp eq i32 %call7, 6, !dbg !995
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !995

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !995

cond.false:                                       ; preds = %if.end
  call void @_serverAssert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 121), !dbg !995
  unreachable, !dbg !995

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !995

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata %struct.loadCtx* %load_ctx, metadata !996, metadata !DIExpression()), !dbg !997
  %li8 = getelementptr inbounds %struct.loadCtx, %struct.loadCtx* %load_ctx, i32 0, i32 0, !dbg !998
  %17 = load %struct.functionLibInfo*, %struct.functionLibInfo** %li.addr, align 8, !dbg !999
  store %struct.functionLibInfo* %17, %struct.functionLibInfo** %li8, align 8, !dbg !998
  %start_time = getelementptr inbounds %struct.loadCtx, %struct.loadCtx* %load_ctx, i32 0, i32 1, !dbg !998
  %18 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1000
  %call9 = call i64 %18(), !dbg !1000
  store i64 %call9, i64* %start_time, align 8, !dbg !998
  %19 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1001
  %20 = bitcast %struct.loadCtx* %load_ctx to i8*, !dbg !1002
  call void @luaSaveOnRegistry(%struct.lua_State* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %20), !dbg !1003
  %21 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1004
  %call10 = call i32 @lua_sethook(%struct.lua_State* %21, void (%struct.lua_State*, %struct.lua_Debug*)* @luaEngineLoadHook, i32 8, i32 100000), !dbg !1005
  %22 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1006
  %call11 = call i32 @lua_pcall(%struct.lua_State* %22, i32 0, i32 0, i32 0), !dbg !1008
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1008
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !1009

if.then13:                                        ; preds = %cond.end
  call void @llvm.dbg.declare(metadata %struct.errorInfo* %err_info, metadata !1010, metadata !DIExpression()), !dbg !1020
  %23 = bitcast %struct.errorInfo* %err_info to i8*, !dbg !1020
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false), !dbg !1020
  %24 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1021
  call void @luaExtractErrorInformation(%struct.lua_State* %24, %struct.errorInfo* %err_info), !dbg !1022
  %call14 = call i8* @sdsempty(), !dbg !1023
  %msg = getelementptr inbounds %struct.errorInfo, %struct.errorInfo* %err_info, i32 0, i32 0, !dbg !1024
  %25 = load i8*, i8** %msg, align 8, !dbg !1024
  %call15 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %call14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8* %25), !dbg !1025
  %26 = load i8**, i8*** %err.addr, align 8, !dbg !1026
  store i8* %call15, i8** %26, align 8, !dbg !1027
  %27 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1028
  call void @lua_settop(%struct.lua_State* %27, i32 -2), !dbg !1028
  call void @luaErrorInformationDiscard(%struct.errorInfo* %err_info), !dbg !1029
  br label %done, !dbg !1030

if.end16:                                         ; preds = %cond.end
  store i32 0, i32* %ret, align 4, !dbg !1031
  br label %done, !dbg !1032

done:                                             ; preds = %if.end16, %if.then13, %if.then
  call void @llvm.dbg.label(metadata !1033), !dbg !1034
  %28 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1035
  %call17 = call i32 @lua_getmetatable(%struct.lua_State* %28, i32 -10002), !dbg !1036
  %29 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1037
  call void @lua_enablereadonlytable(%struct.lua_State* %29, i32 -1, i32 0), !dbg !1038
  %30 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1039
  call void @lua_getfield(%struct.lua_State* %30, i32 -10000, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)), !dbg !1040
  %31 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1041
  call void @lua_setfield(%struct.lua_State* %31, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !1042
  %32 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1043
  call void @lua_enablereadonlytable(%struct.lua_State* %32, i32 -10002, i32 1), !dbg !1044
  %33 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1045
  call void @lua_settop(%struct.lua_State* %33, i32 -2), !dbg !1045
  %34 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1046
  %call18 = call i32 @lua_sethook(%struct.lua_State* %34, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0), !dbg !1047
  %35 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1048
  call void @luaSaveOnRegistry(%struct.lua_State* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* null), !dbg !1049
  %36 = load i32, i32* %ret, align 4, !dbg !1050
  ret i32 %36, !dbg !1051
}

; Function Attrs: noinline nounwind uwtable
define internal void @luaEngineCall(%struct.scriptRunCtx* %run_ctx, i8* %engine_ctx, i8* %compiled_function, %struct.redisObject** %keys, i64 %nkeys, %struct.redisObject** %args, i64 %nargs) #0 !dbg !1052 {
entry:
  %run_ctx.addr = alloca %struct.scriptRunCtx*, align 8
  %engine_ctx.addr = alloca i8*, align 8
  %compiled_function.addr = alloca i8*, align 8
  %keys.addr = alloca %struct.redisObject**, align 8
  %nkeys.addr = alloca i64, align 8
  %args.addr = alloca %struct.redisObject**, align 8
  %nargs.addr = alloca i64, align 8
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %f_ctx = alloca %struct.luaFunctionCtx*, align 8
  store %struct.scriptRunCtx* %run_ctx, %struct.scriptRunCtx** %run_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.scriptRunCtx** %run_ctx.addr, metadata !1053, metadata !DIExpression()), !dbg !1054
  store i8* %engine_ctx, i8** %engine_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_ctx.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i8* %compiled_function, i8** %compiled_function.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %compiled_function.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  store %struct.redisObject** %keys, %struct.redisObject*** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %keys.addr, metadata !1059, metadata !DIExpression()), !dbg !1060
  store i64 %nkeys, i64* %nkeys.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nkeys.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  store %struct.redisObject** %args, %struct.redisObject*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %args.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  store i64 %nargs, i64* %nargs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nargs.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !1067, metadata !DIExpression()), !dbg !1068
  %0 = load i8*, i8** %engine_ctx.addr, align 8, !dbg !1069
  %1 = bitcast i8* %0 to %struct.luaEngineCtx*, !dbg !1069
  store %struct.luaEngineCtx* %1, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1068
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !1070, metadata !DIExpression()), !dbg !1071
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1072
  %lua1 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %2, i32 0, i32 0, !dbg !1073
  %3 = load %struct.lua_State*, %struct.lua_State** %lua1, align 8, !dbg !1073
  store %struct.lua_State* %3, %struct.lua_State** %lua, align 8, !dbg !1071
  call void @llvm.dbg.declare(metadata %struct.luaFunctionCtx** %f_ctx, metadata !1074, metadata !DIExpression()), !dbg !1075
  %4 = load i8*, i8** %compiled_function.addr, align 8, !dbg !1076
  %5 = bitcast i8* %4 to %struct.luaFunctionCtx*, !dbg !1076
  store %struct.luaFunctionCtx* %5, %struct.luaFunctionCtx** %f_ctx, align 8, !dbg !1075
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1077
  call void @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)), !dbg !1078
  %7 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1079
  call void @lua_gettable(%struct.lua_State* %7, i32 -10000), !dbg !1080
  %8 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1081
  %9 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %f_ctx, align 8, !dbg !1082
  %lua_function_ref = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %9, i32 0, i32 0, !dbg !1083
  %10 = load i32, i32* %lua_function_ref, align 4, !dbg !1083
  call void @lua_rawgeti(%struct.lua_State* %8, i32 -10000, i32 %10), !dbg !1084
  %11 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1085
  %call = call i32 @lua_type(%struct.lua_State* %11, i32 -1), !dbg !1085
  %cmp = icmp eq i32 %call, 6, !dbg !1085
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1085

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1085

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 177), !dbg !1085
  unreachable, !dbg !1085

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1085

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %12 = load %struct.scriptRunCtx*, %struct.scriptRunCtx** %run_ctx.addr, align 8, !dbg !1086
  %13 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1087
  %14 = load %struct.redisObject**, %struct.redisObject*** %keys.addr, align 8, !dbg !1088
  %15 = load i64, i64* %nkeys.addr, align 8, !dbg !1089
  %16 = load %struct.redisObject**, %struct.redisObject*** %args.addr, align 8, !dbg !1090
  %17 = load i64, i64* %nargs.addr, align 8, !dbg !1091
  call void @luaCallFunction(%struct.scriptRunCtx* %12, %struct.lua_State* %13, %struct.redisObject** %14, i64 %15, %struct.redisObject** %16, i64 %17, i32 0), !dbg !1092
  %18 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1093
  call void @lua_settop(%struct.lua_State* %18, i32 -2), !dbg !1093
  ret void, !dbg !1094
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @luaEngineGetUsedMemoy(i8* %engine_ctx) #0 !dbg !1095 {
entry:
  %engine_ctx.addr = alloca i8*, align 8
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  store i8* %engine_ctx, i8** %engine_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_ctx.addr, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !1098, metadata !DIExpression()), !dbg !1099
  %0 = load i8*, i8** %engine_ctx.addr, align 8, !dbg !1100
  %1 = bitcast i8* %0 to %struct.luaEngineCtx*, !dbg !1100
  store %struct.luaEngineCtx* %1, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1099
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1101
  %lua = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %2, i32 0, i32 0, !dbg !1102
  %3 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1102
  %call = call i64 @luaMemory(%struct.lua_State* %3), !dbg !1103
  ret i64 %call, !dbg !1104
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @luaEngineFunctionMemoryOverhead(i8* %compiled_function) #0 !dbg !1105 {
entry:
  %compiled_function.addr = alloca i8*, align 8
  store i8* %compiled_function, i8** %compiled_function.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %compiled_function.addr, metadata !1106, metadata !DIExpression()), !dbg !1107
  %0 = load i8*, i8** %compiled_function.addr, align 8, !dbg !1108
  %call = call i64 @malloc_usable_size(i8* %0) #8, !dbg !1108
  ret i64 %call, !dbg !1109
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @luaEngineMemoryOverhead(i8* %engine_ctx) #0 !dbg !1110 {
entry:
  %engine_ctx.addr = alloca i8*, align 8
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  store i8* %engine_ctx, i8** %engine_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_ctx.addr, metadata !1111, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !1113, metadata !DIExpression()), !dbg !1114
  %0 = load i8*, i8** %engine_ctx.addr, align 8, !dbg !1115
  %1 = bitcast i8* %0 to %struct.luaEngineCtx*, !dbg !1115
  store %struct.luaEngineCtx* %1, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1114
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1116
  %3 = bitcast %struct.luaEngineCtx* %2 to i8*, !dbg !1116
  %call = call i64 @malloc_usable_size(i8* %3) #8, !dbg !1116
  ret i64 %call, !dbg !1117
}

; Function Attrs: noinline nounwind uwtable
define internal void @luaEngineFreeFunction(i8* %engine_ctx, i8* %compiled_function) #0 !dbg !1118 {
entry:
  %engine_ctx.addr = alloca i8*, align 8
  %compiled_function.addr = alloca i8*, align 8
  %lua_engine_ctx = alloca %struct.luaEngineCtx*, align 8
  %lua = alloca %struct.lua_State*, align 8
  %f_ctx = alloca %struct.luaFunctionCtx*, align 8
  store i8* %engine_ctx, i8** %engine_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %engine_ctx.addr, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i8* %compiled_function, i8** %compiled_function.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %compiled_function.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata %struct.luaEngineCtx** %lua_engine_ctx, metadata !1123, metadata !DIExpression()), !dbg !1124
  %0 = load i8*, i8** %engine_ctx.addr, align 8, !dbg !1125
  %1 = bitcast i8* %0 to %struct.luaEngineCtx*, !dbg !1125
  store %struct.luaEngineCtx* %1, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua, metadata !1126, metadata !DIExpression()), !dbg !1127
  %2 = load %struct.luaEngineCtx*, %struct.luaEngineCtx** %lua_engine_ctx, align 8, !dbg !1128
  %lua1 = getelementptr inbounds %struct.luaEngineCtx, %struct.luaEngineCtx* %2, i32 0, i32 0, !dbg !1129
  %3 = load %struct.lua_State*, %struct.lua_State** %lua1, align 8, !dbg !1129
  store %struct.lua_State* %3, %struct.lua_State** %lua, align 8, !dbg !1127
  call void @llvm.dbg.declare(metadata %struct.luaFunctionCtx** %f_ctx, metadata !1130, metadata !DIExpression()), !dbg !1131
  %4 = load i8*, i8** %compiled_function.addr, align 8, !dbg !1132
  %5 = bitcast i8* %4 to %struct.luaFunctionCtx*, !dbg !1132
  store %struct.luaFunctionCtx* %5, %struct.luaFunctionCtx** %f_ctx, align 8, !dbg !1131
  %6 = load %struct.lua_State*, %struct.lua_State** %lua, align 8, !dbg !1133
  %7 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %f_ctx, align 8, !dbg !1133
  %lua_function_ref = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %7, i32 0, i32 0, !dbg !1133
  %8 = load i32, i32* %lua_function_ref, align 4, !dbg !1133
  call void @luaL_unref(%struct.lua_State* %6, i32 -10000, i32 %8), !dbg !1133
  %9 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %f_ctx, align 8, !dbg !1134
  %10 = bitcast %struct.luaFunctionCtx* %9 to i8*, !dbg !1134
  call void @zfree(i8* %10), !dbg !1135
  ret void, !dbg !1136
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @functionsRegisterEngine(i8*, %struct.engine*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i8* @luaGetFromRegistry(%struct.lua_State*, i8*) #2

declare dso_local void @luaPushError(%struct.lua_State*, i8*) #2

declare dso_local i32 @luaError(%struct.lua_State*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRegisterFunctionReadArgs(%struct.lua_State* %lua, %struct.registerFunctionArgs* %register_f_args) #0 !dbg !1137 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %register_f_args.addr = alloca %struct.registerFunctionArgs*, align 8
  %argc = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1141, metadata !DIExpression()), !dbg !1142
  store %struct.registerFunctionArgs* %register_f_args, %struct.registerFunctionArgs** %register_f_args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs** %register_f_args.addr, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata i32* %argc, metadata !1145, metadata !DIExpression()), !dbg !1146
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1147
  %call = call i32 @lua_gettop(%struct.lua_State* %0), !dbg !1148
  store i32 %call, i32* %argc, align 4, !dbg !1146
  %1 = load i32, i32* %argc, align 4, !dbg !1149
  %cmp = icmp slt i32 %1, 1, !dbg !1151
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1152

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %argc, align 4, !dbg !1153
  %cmp1 = icmp sgt i32 %2, 2, !dbg !1154
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1155

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1156
  call void @luaPushError(%struct.lua_State* %3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0)), !dbg !1158
  store i32 -1, i32* %retval, align 4, !dbg !1159
  br label %return, !dbg !1159

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %argc, align 4, !dbg !1160
  %cmp2 = icmp eq i32 %4, 1, !dbg !1162
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1163

if.then3:                                         ; preds = %if.end
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1164
  %6 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1166
  %call4 = call i32 @luaRegisterFunctionReadNamedArgs(%struct.lua_State* %5, %struct.registerFunctionArgs* %6), !dbg !1167
  store i32 %call4, i32* %retval, align 4, !dbg !1168
  br label %return, !dbg !1168

if.else:                                          ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1169
  %8 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1171
  %call5 = call i32 @luaRegisterFunctionReadPositionalArgs(%struct.lua_State* %7, %struct.registerFunctionArgs* %8), !dbg !1172
  store i32 %call5, i32* %retval, align 4, !dbg !1173
  br label %return, !dbg !1173

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1174
  ret i32 %9, !dbg !1174
}

declare dso_local i32 @functionLibCreateFunction(i8*, i8*, %struct.functionLibInfo*, i8*, i64, i8**) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaRegisterFunctionArgsDispose(%struct.lua_State* %lua, %struct.registerFunctionArgs* %register_f_args) #0 !dbg !1175 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %register_f_args.addr = alloca %struct.registerFunctionArgs*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store %struct.registerFunctionArgs* %register_f_args, %struct.registerFunctionArgs** %register_f_args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs** %register_f_args.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  %0 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1182
  %name = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %0, i32 0, i32 0, !dbg !1183
  %1 = load i8*, i8** %name, align 8, !dbg !1183
  call void @sdsfree(i8* %1), !dbg !1184
  %2 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1185
  %desc = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %2, i32 0, i32 1, !dbg !1187
  %3 = load i8*, i8** %desc, align 8, !dbg !1187
  %tobool = icmp ne i8* %3, null, !dbg !1185
  br i1 %tobool, label %if.then, label %if.end, !dbg !1188

if.then:                                          ; preds = %entry
  %4 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1189
  %desc1 = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %4, i32 0, i32 1, !dbg !1190
  %5 = load i8*, i8** %desc1, align 8, !dbg !1190
  call void @sdsfree(i8* %5), !dbg !1191
  br label %if.end, !dbg !1191

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1192
  %7 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1192
  %lua_f_ctx = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %7, i32 0, i32 2, !dbg !1192
  %8 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1192
  %lua_function_ref = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %8, i32 0, i32 0, !dbg !1192
  %9 = load i32, i32* %lua_function_ref, align 4, !dbg !1192
  call void @luaL_unref(%struct.lua_State* %6, i32 -10000, i32 %9), !dbg !1192
  %10 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1193
  %lua_f_ctx2 = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %10, i32 0, i32 2, !dbg !1194
  %11 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx2, align 8, !dbg !1194
  %12 = bitcast %struct.luaFunctionCtx* %11 to i8*, !dbg !1193
  call void @zfree(i8* %12), !dbg !1195
  ret void, !dbg !1196
}

declare dso_local void @sdsfree(i8*) #2

declare dso_local i32 @lua_gettop(%struct.lua_State*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRegisterFunctionReadNamedArgs(%struct.lua_State* %lua, %struct.registerFunctionArgs* %register_f_args) #0 !dbg !1197 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %register_f_args.addr = alloca %struct.registerFunctionArgs*, align 8
  %err = alloca i8*, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %lua_f_ctx = alloca %struct.luaFunctionCtx*, align 8
  %flags = alloca i64, align 8
  %key = alloca i8*, align 8
  %lua_function_ref = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1198, metadata !DIExpression()), !dbg !1199
  store %struct.registerFunctionArgs* %register_f_args, %struct.registerFunctionArgs** %register_f_args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs** %register_f_args.addr, metadata !1200, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata i8** %err, metadata !1202, metadata !DIExpression()), !dbg !1203
  store i8* null, i8** %err, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1204, metadata !DIExpression()), !dbg !1205
  store i8* null, i8** %name, align 8, !dbg !1205
  call void @llvm.dbg.declare(metadata i8** %desc, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i8* null, i8** %desc, align 8, !dbg !1207
  call void @llvm.dbg.declare(metadata %struct.luaFunctionCtx** %lua_f_ctx, metadata !1208, metadata !DIExpression()), !dbg !1209
  store %struct.luaFunctionCtx* null, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1209
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i64 0, i64* %flags, align 8, !dbg !1211
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1212
  %call = call i32 @lua_type(%struct.lua_State* %0, i32 1), !dbg !1212
  %cmp = icmp eq i32 %call, 5, !dbg !1212
  br i1 %cmp, label %if.end, label %if.then, !dbg !1214

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.13, i64 0, i64 0), i8** %err, align 8, !dbg !1215
  br label %error, !dbg !1217

if.end:                                           ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1218
  call void @lua_pushnil(%struct.lua_State* %1), !dbg !1219
  br label %while.cond, !dbg !1220

while.cond:                                       ; preds = %if.end48, %if.end28, %if.end
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1221
  %call1 = call i32 @lua_next(%struct.lua_State* %2, i32 -2), !dbg !1222
  %tobool = icmp ne i32 %call1, 0, !dbg !1220
  br i1 %tobool, label %while.body, label %while.end, !dbg !1220

while.body:                                       ; preds = %while.cond
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1223
  %call2 = call i32 @lua_isstring(%struct.lua_State* %3, i32 -2), !dbg !1226
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1226
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1227

if.then4:                                         ; preds = %while.body
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0), i8** %err, align 8, !dbg !1228
  br label %error, !dbg !1230

if.end5:                                          ; preds = %while.body
  call void @llvm.dbg.declare(metadata i8** %key, metadata !1231, metadata !DIExpression()), !dbg !1232
  %4 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1233
  %call6 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 -2, i64* null), !dbg !1233
  store i8* %call6, i8** %key, align 8, !dbg !1232
  %5 = load i8*, i8** %key, align 8, !dbg !1234
  %call7 = call i32 @strcasecmp(i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1236
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1236
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !1237

if.then9:                                         ; preds = %if.end5
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1238
  %call10 = call i8* @luaGetStringSds(%struct.lua_State* %6, i32 -1), !dbg !1241
  store i8* %call10, i8** %name, align 8, !dbg !1242
  %tobool11 = icmp ne i8* %call10, null, !dbg !1242
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !1243

if.then12:                                        ; preds = %if.then9
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0), i8** %err, align 8, !dbg !1244
  br label %error, !dbg !1246

if.end13:                                         ; preds = %if.then9
  br label %if.end48, !dbg !1247

if.else:                                          ; preds = %if.end5
  %7 = load i8*, i8** %key, align 8, !dbg !1248
  %call14 = call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1250
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1250
  br i1 %tobool15, label %if.else21, label %if.then16, !dbg !1251

if.then16:                                        ; preds = %if.else
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1252
  %call17 = call i8* @luaGetStringSds(%struct.lua_State* %8, i32 -1), !dbg !1255
  store i8* %call17, i8** %desc, align 8, !dbg !1256
  %tobool18 = icmp ne i8* %call17, null, !dbg !1256
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !1257

if.then19:                                        ; preds = %if.then16
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.18, i64 0, i64 0), i8** %err, align 8, !dbg !1258
  br label %error, !dbg !1260

if.end20:                                         ; preds = %if.then16
  br label %if.end47, !dbg !1261

if.else21:                                        ; preds = %if.else
  %9 = load i8*, i8** %key, align 8, !dbg !1262
  %call22 = call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1264
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1264
  br i1 %tobool23, label %if.else32, label %if.then24, !dbg !1265

if.then24:                                        ; preds = %if.else21
  %10 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1266
  %call25 = call i32 @lua_type(%struct.lua_State* %10, i32 -1), !dbg !1266
  %cmp26 = icmp eq i32 %call25, 6, !dbg !1266
  br i1 %cmp26, label %if.end28, label %if.then27, !dbg !1269

if.then27:                                        ; preds = %if.then24
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i64 0, i64 0), i8** %err, align 8, !dbg !1270
  br label %error, !dbg !1272

if.end28:                                         ; preds = %if.then24
  call void @llvm.dbg.declare(metadata i32* %lua_function_ref, metadata !1273, metadata !DIExpression()), !dbg !1274
  %11 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1275
  %call29 = call i32 @luaL_ref(%struct.lua_State* %11, i32 -10000), !dbg !1276
  store i32 %call29, i32* %lua_function_ref, align 4, !dbg !1274
  %call30 = call i8* @zmalloc(i64 4), !dbg !1277
  %12 = bitcast i8* %call30 to %struct.luaFunctionCtx*, !dbg !1277
  store %struct.luaFunctionCtx* %12, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1278
  %13 = load i32, i32* %lua_function_ref, align 4, !dbg !1279
  %14 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1280
  %lua_function_ref31 = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %14, i32 0, i32 0, !dbg !1281
  store i32 %13, i32* %lua_function_ref31, align 4, !dbg !1282
  br label %while.cond, !dbg !1283, !llvm.loop !1284

if.else32:                                        ; preds = %if.else21
  %15 = load i8*, i8** %key, align 8, !dbg !1287
  %call33 = call i32 @strcasecmp(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1289
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1289
  br i1 %tobool34, label %if.else44, label %if.then35, !dbg !1290

if.then35:                                        ; preds = %if.else32
  %16 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1291
  %call36 = call i32 @lua_type(%struct.lua_State* %16, i32 -1), !dbg !1291
  %cmp37 = icmp eq i32 %call36, 5, !dbg !1291
  br i1 %cmp37, label %if.end39, label %if.then38, !dbg !1294

if.then38:                                        ; preds = %if.then35
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i64 0, i64 0), i8** %err, align 8, !dbg !1295
  br label %error, !dbg !1297

if.end39:                                         ; preds = %if.then35
  %17 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1298
  %call40 = call i32 @luaRegisterFunctionReadFlags(%struct.lua_State* %17, i64* %flags), !dbg !1300
  %cmp41 = icmp ne i32 %call40, 0, !dbg !1301
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !1302

if.then42:                                        ; preds = %if.end39
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8** %err, align 8, !dbg !1303
  br label %error, !dbg !1305

if.end43:                                         ; preds = %if.end39
  br label %if.end45, !dbg !1306

if.else44:                                        ; preds = %if.else32
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i64 0, i64 0), i8** %err, align 8, !dbg !1307
  br label %error, !dbg !1309

if.end45:                                         ; preds = %if.end43
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end20
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end13
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1310
  call void @lua_settop(%struct.lua_State* %18, i32 -2), !dbg !1310
  br label %while.cond, !dbg !1220, !llvm.loop !1284

while.end:                                        ; preds = %while.cond
  %19 = load i8*, i8** %name, align 8, !dbg !1311
  %tobool49 = icmp ne i8* %19, null, !dbg !1311
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !1313

if.then50:                                        ; preds = %while.end
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0), i8** %err, align 8, !dbg !1314
  br label %error, !dbg !1316

if.end51:                                         ; preds = %while.end
  %20 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1317
  %tobool52 = icmp ne %struct.luaFunctionCtx* %20, null, !dbg !1317
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !1319

if.then53:                                        ; preds = %if.end51
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.26, i64 0, i64 0), i8** %err, align 8, !dbg !1320
  br label %error, !dbg !1322

if.end54:                                         ; preds = %if.end51
  %21 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1323
  %22 = load i8*, i8** %name, align 8, !dbg !1324
  %23 = load i8*, i8** %desc, align 8, !dbg !1325
  %24 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1326
  %25 = load i64, i64* %flags, align 8, !dbg !1327
  call void @luaRegisterFunctionArgsInitialize(%struct.registerFunctionArgs* %21, i8* %22, i8* %23, %struct.luaFunctionCtx* %24, i64 %25), !dbg !1328
  store i32 0, i32* %retval, align 4, !dbg !1329
  br label %return, !dbg !1329

error:                                            ; preds = %if.then53, %if.then50, %if.else44, %if.then42, %if.then38, %if.then27, %if.then19, %if.then12, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !1330), !dbg !1331
  %26 = load i8*, i8** %name, align 8, !dbg !1332
  %tobool55 = icmp ne i8* %26, null, !dbg !1332
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !1334

if.then56:                                        ; preds = %error
  %27 = load i8*, i8** %name, align 8, !dbg !1335
  call void @sdsfree(i8* %27), !dbg !1336
  br label %if.end57, !dbg !1336

if.end57:                                         ; preds = %if.then56, %error
  %28 = load i8*, i8** %desc, align 8, !dbg !1337
  %tobool58 = icmp ne i8* %28, null, !dbg !1337
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !1339

if.then59:                                        ; preds = %if.end57
  %29 = load i8*, i8** %desc, align 8, !dbg !1340
  call void @sdsfree(i8* %29), !dbg !1341
  br label %if.end60, !dbg !1341

if.end60:                                         ; preds = %if.then59, %if.end57
  %30 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1342
  %tobool61 = icmp ne %struct.luaFunctionCtx* %30, null, !dbg !1342
  br i1 %tobool61, label %if.then62, label %if.end64, !dbg !1344

if.then62:                                        ; preds = %if.end60
  %31 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1345
  %32 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1345
  %lua_function_ref63 = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %32, i32 0, i32 0, !dbg !1345
  %33 = load i32, i32* %lua_function_ref63, align 4, !dbg !1345
  call void @luaL_unref(%struct.lua_State* %31, i32 -10000, i32 %33), !dbg !1345
  %34 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1347
  %35 = bitcast %struct.luaFunctionCtx* %34 to i8*, !dbg !1347
  call void @zfree(i8* %35), !dbg !1348
  br label %if.end64, !dbg !1349

if.end64:                                         ; preds = %if.then62, %if.end60
  %36 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1350
  %37 = load i8*, i8** %err, align 8, !dbg !1351
  call void @luaPushError(%struct.lua_State* %36, i8* %37), !dbg !1352
  store i32 -1, i32* %retval, align 4, !dbg !1353
  br label %return, !dbg !1353

return:                                           ; preds = %if.end64, %if.end54
  %38 = load i32, i32* %retval, align 4, !dbg !1354
  ret i32 %38, !dbg !1354
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRegisterFunctionReadPositionalArgs(%struct.lua_State* %lua, %struct.registerFunctionArgs* %register_f_args) #0 !dbg !1355 {
entry:
  %retval = alloca i32, align 4
  %lua.addr = alloca %struct.lua_State*, align 8
  %register_f_args.addr = alloca %struct.registerFunctionArgs*, align 8
  %err = alloca i8*, align 8
  %name = alloca i8*, align 8
  %desc = alloca i8*, align 8
  %lua_f_ctx = alloca %struct.luaFunctionCtx*, align 8
  %lua_function_ref = alloca i32, align 4
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1356, metadata !DIExpression()), !dbg !1357
  store %struct.registerFunctionArgs* %register_f_args, %struct.registerFunctionArgs** %register_f_args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs** %register_f_args.addr, metadata !1358, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.declare(metadata i8** %err, metadata !1360, metadata !DIExpression()), !dbg !1361
  store i8* null, i8** %err, align 8, !dbg !1361
  call void @llvm.dbg.declare(metadata i8** %name, metadata !1362, metadata !DIExpression()), !dbg !1363
  store i8* null, i8** %name, align 8, !dbg !1363
  call void @llvm.dbg.declare(metadata i8** %desc, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i8* null, i8** %desc, align 8, !dbg !1365
  call void @llvm.dbg.declare(metadata %struct.luaFunctionCtx** %lua_f_ctx, metadata !1366, metadata !DIExpression()), !dbg !1367
  store %struct.luaFunctionCtx* null, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1367
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1368
  %call = call i8* @luaGetStringSds(%struct.lua_State* %0, i32 1), !dbg !1370
  store i8* %call, i8** %name, align 8, !dbg !1371
  %tobool = icmp ne i8* %call, null, !dbg !1371
  br i1 %tobool, label %if.end, label %if.then, !dbg !1372

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0), i8** %err, align 8, !dbg !1373
  br label %error, !dbg !1375

if.end:                                           ; preds = %entry
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1376
  %call1 = call i32 @lua_type(%struct.lua_State* %1, i32 2), !dbg !1376
  %cmp = icmp eq i32 %call1, 6, !dbg !1376
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !1378

if.then2:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.28, i64 0, i64 0), i8** %err, align 8, !dbg !1379
  br label %error, !dbg !1381

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %lua_function_ref, metadata !1382, metadata !DIExpression()), !dbg !1383
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1384
  %call4 = call i32 @luaL_ref(%struct.lua_State* %2, i32 -10000), !dbg !1385
  store i32 %call4, i32* %lua_function_ref, align 4, !dbg !1383
  %call5 = call i8* @zmalloc(i64 4), !dbg !1386
  %3 = bitcast i8* %call5 to %struct.luaFunctionCtx*, !dbg !1386
  store %struct.luaFunctionCtx* %3, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1387
  %4 = load i32, i32* %lua_function_ref, align 4, !dbg !1388
  %5 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1389
  %lua_function_ref6 = getelementptr inbounds %struct.luaFunctionCtx, %struct.luaFunctionCtx* %5, i32 0, i32 0, !dbg !1390
  store i32 %4, i32* %lua_function_ref6, align 4, !dbg !1391
  %6 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1392
  %7 = load i8*, i8** %name, align 8, !dbg !1393
  %8 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx, align 8, !dbg !1394
  call void @luaRegisterFunctionArgsInitialize(%struct.registerFunctionArgs* %6, i8* %7, i8* null, %struct.luaFunctionCtx* %8, i64 0), !dbg !1395
  store i32 0, i32* %retval, align 4, !dbg !1396
  br label %return, !dbg !1396

error:                                            ; preds = %if.then2, %if.then
  call void @llvm.dbg.label(metadata !1397), !dbg !1398
  %9 = load i8*, i8** %name, align 8, !dbg !1399
  %tobool7 = icmp ne i8* %9, null, !dbg !1399
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1401

if.then8:                                         ; preds = %error
  %10 = load i8*, i8** %name, align 8, !dbg !1402
  call void @sdsfree(i8* %10), !dbg !1403
  br label %if.end9, !dbg !1403

if.end9:                                          ; preds = %if.then8, %error
  %11 = load i8*, i8** %desc, align 8, !dbg !1404
  %tobool10 = icmp ne i8* %11, null, !dbg !1404
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1406

if.then11:                                        ; preds = %if.end9
  %12 = load i8*, i8** %desc, align 8, !dbg !1407
  call void @sdsfree(i8* %12), !dbg !1408
  br label %if.end12, !dbg !1408

if.end12:                                         ; preds = %if.then11, %if.end9
  %13 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1409
  %14 = load i8*, i8** %err, align 8, !dbg !1410
  call void @luaPushError(%struct.lua_State* %13, i8* %14), !dbg !1411
  store i32 -1, i32* %retval, align 4, !dbg !1412
  br label %return, !dbg !1412

return:                                           ; preds = %if.end12, %if.end3
  %15 = load i32, i32* %retval, align 4, !dbg !1413
  ret i32 %15, !dbg !1413
}

declare dso_local i32 @lua_type(%struct.lua_State*, i32) #2

declare dso_local void @lua_pushnil(%struct.lua_State*) #2

declare dso_local i32 @lua_next(%struct.lua_State*, i32) #2

declare dso_local i32 @lua_isstring(%struct.lua_State*, i32) #2

declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local i8* @luaGetStringSds(%struct.lua_State*, i32) #2

declare dso_local i32 @luaL_ref(%struct.lua_State*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaRegisterFunctionReadFlags(%struct.lua_State* %lua, i64* %flags) #0 !dbg !1414 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %flags.addr = alloca i64*, align 8
  %j = alloca i32, align 4
  %ret = alloca i32, align 4
  %f_flags = alloca i32, align 4
  %t = alloca i32, align 4
  %flag_str = alloca i8*, align 8
  %found = alloca i32, align 4
  %flag = alloca %struct.scriptFlag*, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1418, metadata !DIExpression()), !dbg !1419
  store i64* %flags, i64** %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %flags.addr, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1422, metadata !DIExpression()), !dbg !1423
  store i32 1, i32* %j, align 4, !dbg !1423
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1424, metadata !DIExpression()), !dbg !1425
  store i32 -1, i32* %ret, align 4, !dbg !1425
  call void @llvm.dbg.declare(metadata i32* %f_flags, metadata !1426, metadata !DIExpression()), !dbg !1427
  store i32 0, i32* %f_flags, align 4, !dbg !1427
  br label %while.body, !dbg !1428

while.body:                                       ; preds = %entry, %if.end17
  %0 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1429
  %1 = load i32, i32* %j, align 4, !dbg !1431
  %inc = add nsw i32 %1, 1, !dbg !1431
  store i32 %inc, i32* %j, align 4, !dbg !1431
  %conv = sitofp i32 %1 to double, !dbg !1432
  call void @lua_pushnumber(%struct.lua_State* %0, double %conv), !dbg !1433
  %2 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1434
  call void @lua_gettable(%struct.lua_State* %2, i32 -2), !dbg !1435
  call void @llvm.dbg.declare(metadata i32* %t, metadata !1436, metadata !DIExpression()), !dbg !1437
  %3 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1438
  %call = call i32 @lua_type(%struct.lua_State* %3, i32 -1), !dbg !1439
  store i32 %call, i32* %t, align 4, !dbg !1437
  %4 = load i32, i32* %t, align 4, !dbg !1440
  %cmp = icmp eq i32 %4, 0, !dbg !1442
  br i1 %cmp, label %if.then, label %if.end, !dbg !1443

if.then:                                          ; preds = %while.body
  %5 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1444
  call void @lua_settop(%struct.lua_State* %5, i32 -2), !dbg !1444
  br label %while.end, !dbg !1446

if.end:                                           ; preds = %while.body
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1447
  %call2 = call i32 @lua_isstring(%struct.lua_State* %6, i32 -1), !dbg !1449
  %tobool = icmp ne i32 %call2, 0, !dbg !1449
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !1450

if.then3:                                         ; preds = %if.end
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1451
  call void @lua_settop(%struct.lua_State* %7, i32 -2), !dbg !1451
  br label %done, !dbg !1453

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %flag_str, metadata !1454, metadata !DIExpression()), !dbg !1455
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1456
  %call5 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null), !dbg !1456
  store i8* %call5, i8** %flag_str, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata i32* %found, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i32 0, i32* %found, align 4, !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.scriptFlag** %flag, metadata !1459, metadata !DIExpression()), !dbg !1467
  store %struct.scriptFlag* getelementptr inbounds ([0 x %struct.scriptFlag], [0 x %struct.scriptFlag]* @scripts_flags_def, i64 0, i64 0), %struct.scriptFlag** %flag, align 8, !dbg !1467
  br label %for.cond, !dbg !1468

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1469
  %str = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %9, i32 0, i32 1, !dbg !1471
  %10 = load i8*, i8** %str, align 8, !dbg !1471
  %tobool6 = icmp ne i8* %10, null, !dbg !1472
  br i1 %tobool6, label %for.body, label %for.end, !dbg !1472

for.body:                                         ; preds = %for.cond
  %11 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1473
  %str7 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %11, i32 0, i32 1, !dbg !1476
  %12 = load i8*, i8** %str7, align 8, !dbg !1476
  %13 = load i8*, i8** %flag_str, align 8, !dbg !1477
  %call8 = call i32 @strcasecmp(i8* %12, i8* %13) #7, !dbg !1478
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1478
  br i1 %tobool9, label %if.end14, label %if.then10, !dbg !1479

if.then10:                                        ; preds = %for.body
  %14 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1480
  %flag11 = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %14, i32 0, i32 0, !dbg !1482
  %15 = load i64, i64* %flag11, align 8, !dbg !1482
  %16 = load i32, i32* %f_flags, align 4, !dbg !1483
  %conv12 = sext i32 %16 to i64, !dbg !1483
  %or = or i64 %conv12, %15, !dbg !1483
  %conv13 = trunc i64 %or to i32, !dbg !1483
  store i32 %conv13, i32* %f_flags, align 4, !dbg !1483
  store i32 1, i32* %found, align 4, !dbg !1484
  br label %for.end, !dbg !1485

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !1486

for.inc:                                          ; preds = %if.end14
  %17 = load %struct.scriptFlag*, %struct.scriptFlag** %flag, align 8, !dbg !1487
  %incdec.ptr = getelementptr inbounds %struct.scriptFlag, %struct.scriptFlag* %17, i32 1, !dbg !1487
  store %struct.scriptFlag* %incdec.ptr, %struct.scriptFlag** %flag, align 8, !dbg !1487
  br label %for.cond, !dbg !1488, !llvm.loop !1489

for.end:                                          ; preds = %if.then10, %for.cond
  %18 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1491
  call void @lua_settop(%struct.lua_State* %18, i32 -2), !dbg !1491
  %19 = load i32, i32* %found, align 4, !dbg !1492
  %tobool15 = icmp ne i32 %19, 0, !dbg !1492
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !1494

if.then16:                                        ; preds = %for.end
  br label %done, !dbg !1495

if.end17:                                         ; preds = %for.end
  br label %while.body, !dbg !1428, !llvm.loop !1497

while.end:                                        ; preds = %if.then
  %20 = load i32, i32* %f_flags, align 4, !dbg !1499
  %conv18 = sext i32 %20 to i64, !dbg !1499
  %21 = load i64*, i64** %flags.addr, align 8, !dbg !1500
  store i64 %conv18, i64* %21, align 8, !dbg !1501
  store i32 0, i32* %ret, align 4, !dbg !1502
  br label %done, !dbg !1503

done:                                             ; preds = %while.end, %if.then16, %if.then3
  call void @llvm.dbg.label(metadata !1504), !dbg !1505
  %22 = load i32, i32* %ret, align 4, !dbg !1506
  ret i32 %22, !dbg !1507
}

; Function Attrs: noinline nounwind uwtable
define internal void @luaRegisterFunctionArgsInitialize(%struct.registerFunctionArgs* %register_f_args, i8* %name, i8* %desc, %struct.luaFunctionCtx* %lua_f_ctx, i64 %flags) #0 !dbg !1508 {
entry:
  %register_f_args.addr = alloca %struct.registerFunctionArgs*, align 8
  %name.addr = alloca i8*, align 8
  %desc.addr = alloca i8*, align 8
  %lua_f_ctx.addr = alloca %struct.luaFunctionCtx*, align 8
  %flags.addr = alloca i64, align 8
  %.compoundliteral = alloca %struct.registerFunctionArgs, align 8
  store %struct.registerFunctionArgs* %register_f_args, %struct.registerFunctionArgs** %register_f_args.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.registerFunctionArgs** %register_f_args.addr, metadata !1511, metadata !DIExpression()), !dbg !1512
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  store i8* %desc, i8** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %desc.addr, metadata !1515, metadata !DIExpression()), !dbg !1516
  store %struct.luaFunctionCtx* %lua_f_ctx, %struct.luaFunctionCtx** %lua_f_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.luaFunctionCtx** %lua_f_ctx.addr, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !1519, metadata !DIExpression()), !dbg !1520
  %0 = load %struct.registerFunctionArgs*, %struct.registerFunctionArgs** %register_f_args.addr, align 8, !dbg !1521
  %name1 = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %.compoundliteral, i32 0, i32 0, !dbg !1522
  %1 = load i8*, i8** %name.addr, align 8, !dbg !1523
  store i8* %1, i8** %name1, align 8, !dbg !1522
  %desc2 = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %.compoundliteral, i32 0, i32 1, !dbg !1522
  %2 = load i8*, i8** %desc.addr, align 8, !dbg !1524
  store i8* %2, i8** %desc2, align 8, !dbg !1522
  %lua_f_ctx3 = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %.compoundliteral, i32 0, i32 2, !dbg !1522
  %3 = load %struct.luaFunctionCtx*, %struct.luaFunctionCtx** %lua_f_ctx.addr, align 8, !dbg !1525
  store %struct.luaFunctionCtx* %3, %struct.luaFunctionCtx** %lua_f_ctx3, align 8, !dbg !1522
  %f_flags = getelementptr inbounds %struct.registerFunctionArgs, %struct.registerFunctionArgs* %.compoundliteral, i32 0, i32 3, !dbg !1522
  %4 = load i64, i64* %flags.addr, align 8, !dbg !1526
  store i64 %4, i64* %f_flags, align 8, !dbg !1522
  %5 = bitcast %struct.registerFunctionArgs* %0 to i8*, !dbg !1527
  %6 = bitcast %struct.registerFunctionArgs* %.compoundliteral to i8*, !dbg !1527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false), !dbg !1527
  ret void, !dbg !1528
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @luaL_unref(%struct.lua_State*, i32, i32) #2

declare dso_local void @zfree(i8*) #2

declare dso_local void @lua_pushnumber(%struct.lua_State*, double) #2

declare dso_local void @lua_gettable(%struct.lua_State*, i32) #2

declare dso_local i32 @lua_getmetatable(%struct.lua_State*, i32) #2

declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !1529 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1533, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !1535, metadata !DIExpression()), !dbg !1536
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1537
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !1537
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1537
  store i8 %1, i8* %flags, align 1, !dbg !1536
  %2 = load i8, i8* %flags, align 1, !dbg !1538
  %conv = zext i8 %2 to i32, !dbg !1538
  %and = and i32 %conv, 7, !dbg !1539
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !1540

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !1541
  %conv1 = zext i8 %3 to i32, !dbg !1541
  %shr = ashr i32 %conv1, 3, !dbg !1541
  %conv2 = sext i32 %shr to i64, !dbg !1541
  store i64 %conv2, i64* %retval, align 8, !dbg !1543
  br label %return, !dbg !1543

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1544
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !1544
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !1545
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !1545
  %6 = load i8, i8* %len, align 1, !dbg !1545
  %conv4 = zext i8 %6 to i64, !dbg !1544
  store i64 %conv4, i64* %retval, align 8, !dbg !1546
  br label %return, !dbg !1546

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1547
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1547
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !1548
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !1548
  %9 = load i16, i16* %len7, align 1, !dbg !1548
  %conv8 = zext i16 %9 to i64, !dbg !1547
  store i64 %conv8, i64* %retval, align 8, !dbg !1549
  br label %return, !dbg !1549

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !1550
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !1550
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !1551
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !1551
  %12 = load i32, i32* %len11, align 1, !dbg !1551
  %conv12 = zext i32 %12 to i64, !dbg !1550
  store i64 %conv12, i64* %retval, align 8, !dbg !1552
  br label %return, !dbg !1552

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !1553
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !1553
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !1554
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !1554
  %15 = load i64, i64* %len15, align 1, !dbg !1554
  store i64 %15, i64* %retval, align 8, !dbg !1555
  br label %return, !dbg !1555

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1556
  br label %return, !dbg !1556

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !1557
  ret i64 %16, !dbg !1557
}

declare dso_local i8* @sdscatprintf(i8*, i8*, ...) #2

declare dso_local i8* @sdsempty() #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @luaEngineLoadHook(%struct.lua_State* %lua, %struct.lua_Debug* %ar) #0 !dbg !1558 {
entry:
  %lua.addr = alloca %struct.lua_State*, align 8
  %ar.addr = alloca %struct.lua_Debug*, align 8
  %load_ctx = alloca %struct.loadCtx*, align 8
  %duration = alloca i64, align 8
  store %struct.lua_State* %lua, %struct.lua_State** %lua.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_State** %lua.addr, metadata !1579, metadata !DIExpression()), !dbg !1580
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %ar.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lua_Debug** %ar.addr, metadata !1581, metadata !DIExpression()), !dbg !1582
  %0 = load %struct.lua_Debug*, %struct.lua_Debug** %ar.addr, align 8, !dbg !1583
  call void @llvm.dbg.declare(metadata %struct.loadCtx** %load_ctx, metadata !1584, metadata !DIExpression()), !dbg !1585
  %1 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1586
  %call = call i8* @luaGetFromRegistry(%struct.lua_State* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)), !dbg !1587
  %2 = bitcast i8* %call to %struct.loadCtx*, !dbg !1587
  store %struct.loadCtx* %2, %struct.loadCtx** %load_ctx, align 8, !dbg !1585
  call void @llvm.dbg.declare(metadata i64* %duration, metadata !1588, metadata !DIExpression()), !dbg !1589
  %3 = load %struct.loadCtx*, %struct.loadCtx** %load_ctx, align 8, !dbg !1590
  %start_time = getelementptr inbounds %struct.loadCtx, %struct.loadCtx* %3, i32 0, i32 1, !dbg !1591
  %4 = load i64, i64* %start_time, align 8, !dbg !1591
  %call1 = call i64 @elapsedMs(i64 %4), !dbg !1592
  store i64 %call1, i64* %duration, align 8, !dbg !1589
  %5 = load i64, i64* %duration, align 8, !dbg !1593
  %cmp = icmp ugt i64 %5, 500, !dbg !1595
  br i1 %cmp, label %if.then, label %if.end, !dbg !1596

if.then:                                          ; preds = %entry
  %6 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1597
  %call2 = call i32 @lua_sethook(%struct.lua_State* %6, void (%struct.lua_State*, %struct.lua_Debug*)* @luaEngineLoadHook, i32 4, i32 0), !dbg !1599
  %7 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1600
  call void @luaPushError(%struct.lua_State* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)), !dbg !1601
  %8 = load %struct.lua_State*, %struct.lua_State** %lua.addr, align 8, !dbg !1602
  %call3 = call i32 @luaError(%struct.lua_State* %8), !dbg !1603
  br label %if.end, !dbg !1604

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1605
}

declare dso_local void @luaExtractErrorInformation(%struct.lua_State*, %struct.errorInfo*) #2

declare dso_local void @luaErrorInformationDiscard(%struct.errorInfo*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedMs(i64 %start_time) #0 !dbg !1606 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !1609, metadata !DIExpression()), !dbg !1610
  %0 = load i64, i64* %start_time.addr, align 8, !dbg !1611
  %call = call i64 @elapsedUs(i64 %0), !dbg !1612
  %div = udiv i64 %call, 1000, !dbg !1613
  ret i64 %div, !dbg !1614
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @elapsedUs(i64 %start_time) #0 !dbg !1615 {
entry:
  %start_time.addr = alloca i64, align 8
  store i64 %start_time, i64* %start_time.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start_time.addr, metadata !1616, metadata !DIExpression()), !dbg !1617
  %0 = load i64 ()*, i64 ()** @getMonotonicUs, align 8, !dbg !1618
  %call = call i64 %0(), !dbg !1618
  %1 = load i64, i64* %start_time.addr, align 8, !dbg !1619
  %sub = sub i64 %call, %1, !dbg !1620
  ret i64 %sub, !dbg !1621
}

declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) #2

declare dso_local void @luaCallFunction(%struct.scriptRunCtx*, %struct.lua_State*, %struct.redisObject**, i64, %struct.redisObject**, i64, i32) #2

declare dso_local i64 @luaMemory(%struct.lua_State*) #2

; Function Attrs: nounwind
declare dso_local i64 @malloc_usable_size(i8*) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "function_lua.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!58, !59, !76, !86, !95}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !61, line: 51, size: 24, elements: !62)
!61 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!62 = !{!63, !69, !70, !71}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !61, line: 52, baseType: !64, size: 8)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 24, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 38, baseType: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !61, line: 53, baseType: !64, size: 8, offset: 8)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !61, line: 54, baseType: !68, size: 8, offset: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !60, file: !61, line: 55, baseType: !72, offset: 24)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !74)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !{!75}
!75 = !DISubrange(count: -1)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !61, line: 57, size: 40, elements: !78)
!78 = !{!79, !83, !84, !85}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !77, file: !61, line: 58, baseType: !80, size: 16)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !65, line: 25, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !67, line: 40, baseType: !82)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !77, file: !61, line: 59, baseType: !80, size: 16, offset: 16)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !61, line: 60, baseType: !68, size: 8, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !77, file: !61, line: 61, baseType: !72, offset: 40)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !61, line: 63, size: 72, elements: !88)
!88 = !{!89, !92, !93, !94}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !87, file: !61, line: 64, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 26, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 42, baseType: !5)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !87, file: !61, line: 65, baseType: !90, size: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !61, line: 66, baseType: !68, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !87, file: !61, line: 67, baseType: !72, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !61, line: 69, size: 136, elements: !97)
!97 = !{!98, !102, !103, !104}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !96, file: !61, line: 70, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 27, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 45, baseType: !101)
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !96, file: !61, line: 71, baseType: !99, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !61, line: 72, baseType: !68, size: 8, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !96, file: !61, line: 73, baseType: !72, offset: 136)
!105 = !{i32 7, !"Dwarf Version", i32 4}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 4}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!111 = distinct !DISubprogram(name: "luaEngineInitEngine", scope: !1, file: !1, line: 422, type: !112, scopeLine: 422, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !115)
!112 = !DISubroutineType(types: !113)
!113 = !{!114}
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !{}
!116 = !DILocalVariable(name: "lua_engine_ctx", scope: !111, file: !1, line: 423, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaEngineCtx", file: !1, line: 59, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaEngineCtx", file: !1, line: 57, size: 64, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lua", scope: !119, file: !1, line: 58, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !124, line: 50, baseType: !125)
!124 = !DIFile(filename: "../deps/lua/src/lua.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !124, line: 50, flags: DIFlagFwdDecl)
!126 = !DILocation(line: 423, column: 19, scope: !111)
!127 = !DILocation(line: 423, column: 36, scope: !111)
!128 = !DILocation(line: 424, column: 27, scope: !111)
!129 = !DILocation(line: 424, column: 5, scope: !111)
!130 = !DILocation(line: 424, column: 21, scope: !111)
!131 = !DILocation(line: 424, column: 25, scope: !111)
!132 = !DILocation(line: 426, column: 25, scope: !111)
!133 = !DILocation(line: 426, column: 41, scope: !111)
!134 = !DILocation(line: 426, column: 5, scope: !111)
!135 = !DILocation(line: 429, column: 5, scope: !111)
!136 = !DILocation(line: 430, column: 5, scope: !111)
!137 = !DILocation(line: 432, column: 20, scope: !111)
!138 = !DILocation(line: 432, column: 36, scope: !111)
!139 = !DILocation(line: 432, column: 5, scope: !111)
!140 = !DILocation(line: 433, column: 5, scope: !111)
!141 = !DILocation(line: 434, column: 18, scope: !111)
!142 = !DILocation(line: 434, column: 34, scope: !111)
!143 = !DILocation(line: 434, column: 5, scope: !111)
!144 = !DILocation(line: 436, column: 28, scope: !111)
!145 = !DILocation(line: 436, column: 44, scope: !111)
!146 = !DILocation(line: 436, column: 5, scope: !111)
!147 = !DILocation(line: 437, column: 24, scope: !111)
!148 = !DILocation(line: 437, column: 40, scope: !111)
!149 = !DILocation(line: 437, column: 5, scope: !111)
!150 = !DILocation(line: 439, column: 26, scope: !111)
!151 = !DILocation(line: 439, column: 42, scope: !111)
!152 = !DILocation(line: 439, column: 5, scope: !111)
!153 = !DILocation(line: 440, column: 18, scope: !111)
!154 = !DILocation(line: 440, column: 34, scope: !111)
!155 = !DILocation(line: 440, column: 5, scope: !111)
!156 = !DILocation(line: 442, column: 26, scope: !111)
!157 = !DILocation(line: 442, column: 42, scope: !111)
!158 = !DILocation(line: 442, column: 5, scope: !111)
!159 = !DILocation(line: 443, column: 38, scope: !111)
!160 = !DILocation(line: 443, column: 54, scope: !111)
!161 = !DILocation(line: 443, column: 5, scope: !111)
!162 = !DILocation(line: 444, column: 18, scope: !111)
!163 = !DILocation(line: 444, column: 34, scope: !111)
!164 = !DILocation(line: 444, column: 5, scope: !111)
!165 = !DILocation(line: 447, column: 20, scope: !111)
!166 = !DILocation(line: 447, column: 36, scope: !111)
!167 = !DILocation(line: 447, column: 5, scope: !111)
!168 = !DILocalVariable(name: "errh_func", scope: !111, file: !1, line: 448, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!170 = !DILocation(line: 448, column: 11, scope: !111)
!171 = !DILocation(line: 465, column: 21, scope: !111)
!172 = !DILocation(line: 465, column: 37, scope: !111)
!173 = !DILocation(line: 465, column: 42, scope: !111)
!174 = !DILocation(line: 465, column: 60, scope: !111)
!175 = !DILocation(line: 465, column: 53, scope: !111)
!176 = !DILocation(line: 465, column: 5, scope: !111)
!177 = !DILocation(line: 466, column: 15, scope: !111)
!178 = !DILocation(line: 466, column: 31, scope: !111)
!179 = !DILocation(line: 466, column: 5, scope: !111)
!180 = !DILocation(line: 467, column: 18, scope: !111)
!181 = !DILocation(line: 467, column: 34, scope: !111)
!182 = !DILocation(line: 467, column: 5, scope: !111)
!183 = !DILocation(line: 469, column: 19, scope: !111)
!184 = !DILocation(line: 469, column: 35, scope: !111)
!185 = !DILocation(line: 469, column: 5, scope: !111)
!186 = !DILocation(line: 470, column: 26, scope: !111)
!187 = !DILocation(line: 470, column: 42, scope: !111)
!188 = !DILocation(line: 470, column: 5, scope: !111)
!189 = !DILocation(line: 471, column: 38, scope: !111)
!190 = !DILocation(line: 471, column: 54, scope: !111)
!191 = !DILocation(line: 471, column: 5, scope: !111)
!192 = !DILocation(line: 472, column: 5, scope: !111)
!193 = !DILocation(line: 475, column: 19, scope: !111)
!194 = !DILocation(line: 475, column: 35, scope: !111)
!195 = !DILocation(line: 475, column: 5, scope: !111)
!196 = !DILocation(line: 476, column: 18, scope: !111)
!197 = !DILocation(line: 476, column: 34, scope: !111)
!198 = !DILocation(line: 476, column: 5, scope: !111)
!199 = !DILocation(line: 479, column: 23, scope: !111)
!200 = !DILocation(line: 479, column: 39, scope: !111)
!201 = !DILocation(line: 479, column: 70, scope: !111)
!202 = !DILocation(line: 479, column: 5, scope: !111)
!203 = !DILocation(line: 483, column: 5, scope: !111)
!204 = !DILocation(line: 484, column: 5, scope: !111)
!205 = !DILocation(line: 485, column: 19, scope: !111)
!206 = !DILocation(line: 485, column: 35, scope: !111)
!207 = !DILocation(line: 485, column: 5, scope: !111)
!208 = !DILocation(line: 486, column: 18, scope: !111)
!209 = !DILocation(line: 486, column: 34, scope: !111)
!210 = !DILocation(line: 486, column: 5, scope: !111)
!211 = !DILocation(line: 487, column: 29, scope: !111)
!212 = !DILocation(line: 487, column: 45, scope: !111)
!213 = !DILocation(line: 487, column: 5, scope: !111)
!214 = !DILocation(line: 488, column: 22, scope: !111)
!215 = !DILocation(line: 488, column: 38, scope: !111)
!216 = !DILocation(line: 488, column: 5, scope: !111)
!217 = !DILocation(line: 489, column: 29, scope: !111)
!218 = !DILocation(line: 489, column: 45, scope: !111)
!219 = !DILocation(line: 489, column: 5, scope: !111)
!220 = !DILocation(line: 490, column: 17, scope: !111)
!221 = !DILocation(line: 490, column: 33, scope: !111)
!222 = !DILocation(line: 490, column: 5, scope: !111)
!223 = !DILocalVariable(name: "lua_engine", scope: !111, file: !1, line: 493, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "engine", file: !226, line: 81, baseType: !227)
!226 = !DIFile(filename: "./functions.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engine", file: !226, line: 52, size: 448, elements: !228)
!228 = !{!229, !230, !843, !859, !863, !864, !865}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "engine_ctx", scope: !227, file: !226, line: 54, baseType: !58, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !227, file: !226, line: 58, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!114, !58, !234, !239, !842}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionLibInfo", file: !226, line: 50, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "functionLibInfo", file: !226, line: 104, size: 256, elements: !237)
!237 = !{!238, !240, !317, !841}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !226, line: 105, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !61, line: 43, baseType: !169)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !236, file: !226, line: 106, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !243, line: 61, baseType: !244)
!243 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !243, line: 79, size: 448, elements: !245)
!245 = !{!246, !282, !307, !309, !310, !314}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !244, file: !243, line: 80, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !243, line: 74, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !243, line: 63, size: 512, elements: !250)
!250 = !{!251, !257, !261, !262, !266, !270, !271, !278}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !249, file: !243, line: 64, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!99, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !249, file: !243, line: 65, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!58, !241, !255}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !249, file: !243, line: 66, baseType: !258, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !249, file: !243, line: 67, baseType: !263, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!114, !241, !255, !255}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !249, file: !243, line: 68, baseType: !267, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !241, !58}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !249, file: !243, line: 69, baseType: !267, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !249, file: !243, line: 70, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!114, !275, !277}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !276, line: 46, baseType: !101)
!276 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!277 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !249, file: !243, line: 73, baseType: !279, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!275, !241}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !244, file: !243, line: 82, baseType: !283, size: 128, offset: 64)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !305)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !243, line: 59, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !243, line: 47, size: 192, elements: !288)
!288 = !{!289, !290, !301, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !287, file: !243, line: 48, baseType: !58, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !287, file: !243, line: 54, baseType: !291, size: 64, offset: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !243, line: 49, size: 64, elements: !292)
!292 = !{!293, !294, !295, !300}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !291, file: !243, line: 50, baseType: !58, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !291, file: !243, line: 51, baseType: !99, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !291, file: !243, line: 52, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !297, line: 27, baseType: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 44, baseType: !299)
!299 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !291, file: !243, line: 53, baseType: !277, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !243, line: 55, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !287, file: !243, line: 56, baseType: !304, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !74)
!305 = !{!306}
!306 = !DISubrange(count: 2)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !244, file: !243, line: 83, baseType: !308, size: 128, offset: 192)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 128, elements: !305)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !244, file: !243, line: 85, baseType: !299, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !244, file: !243, line: 88, baseType: !311, size: 16, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !297, line: 25, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !67, line: 39, baseType: !313)
!313 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !244, file: !243, line: 89, baseType: !315, size: 16, offset: 400)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 16, elements: !305)
!316 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ei", scope: !236, file: !226, line: 107, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "engineInfo", file: !226, line: 89, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "engineInfo", file: !226, line: 85, size: 192, elements: !321)
!321 = !{!322, !323, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !320, file: !226, line: 86, baseType: !239, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !320, file: !226, line: 87, baseType: !224, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !320, file: !226, line: 88, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !328)
!328 = !{!329, !330, !331, !475, !476, !522, !532, !533, !534, !535, !536, !538, !539, !540, !541, !542, !693, !694, !695, !705, !706, !707, !708, !709, !711, !712, !713, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !743, !744, !745, !746, !747, !765, !766, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !802, !803, !804, !805, !824, !825, !826, !827, !834, !835, !836, !837, !838, !839, !840}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !327, file: !14, line: 1090, baseType: !99, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !14, line: 1091, baseType: !99, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !327, file: !14, line: 1092, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !335)
!335 = !{!336, !465, !467, !468, !469, !470, !471, !472, !473, !474}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !4, line: 78, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !340)
!340 = !{!341, !404, !415, !419, !430, !434, !435, !439, !443, !444, !448, !452, !459, !460, !461}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !339, file: !4, line: 60, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345, !114, !58, !114}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !347, line: 99, size: 640, elements: !348)
!347 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!348 = !{!349, !350, !351, !353, !364, !371, !395, !396, !397, !402, !403}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !346, file: !347, line: 100, baseType: !114, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !346, file: !347, line: 101, baseType: !114, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !346, file: !347, line: 102, baseType: !352, size: 64, offset: 64)
!352 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !346, file: !347, line: 103, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !347, line: 77, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !347, line: 72, size: 256, elements: !357)
!357 = !{!358, !359, !362, !363}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !356, file: !347, line: 73, baseType: !114, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !356, file: !347, line: 74, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !347, line: 66, baseType: !343)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !356, file: !347, line: 75, baseType: !360, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !356, file: !347, line: 76, baseType: !58, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !346, file: !347, line: 104, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !347, line: 96, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !347, line: 93, size: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !367, file: !347, line: 94, baseType: !114, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !367, file: !347, line: 95, baseType: !114, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !346, file: !347, line: 105, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !347, line: 90, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !347, line: 80, size: 512, elements: !375)
!375 = !{!376, !377, !380, !385, !390, !391, !393, !394}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !374, file: !347, line: 81, baseType: !352, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !374, file: !347, line: 82, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !379, line: 22, baseType: !99)
!379 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !374, file: !347, line: 83, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !347, line: 67, baseType: !383)
!383 = !DISubroutineType(types: !384)
!384 = !{!114, !345, !352, !58}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !374, file: !347, line: 84, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !347, line: 68, baseType: !388)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !345, !58}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !374, file: !347, line: 85, baseType: !58, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !374, file: !347, line: 86, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !347, line: 87, baseType: !392, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !374, file: !347, line: 88, baseType: !114, size: 32, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !346, file: !347, line: 106, baseType: !114, size: 32, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !346, file: !347, line: 107, baseType: !58, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !346, file: !347, line: 108, baseType: !398, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !347, line: 69, baseType: !400)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !345}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !346, file: !347, line: 109, baseType: !398, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !347, line: 110, baseType: !114, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !339, file: !4, line: 61, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!114, !408, !409, !114, !409, !411}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !408}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !339, file: !4, line: 62, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!114, !408, !255, !275}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !339, file: !4, line: 63, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!114, !408, !423, !114}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !426, line: 26, size: 128, elements: !427)
!426 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !425, file: !426, line: 28, baseType: !58, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !425, file: !426, line: 29, baseType: !275, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !339, file: !4, line: 64, baseType: !431, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!114, !408, !58, !275}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !339, file: !4, line: 65, baseType: !412, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !339, file: !4, line: 66, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!114, !408, !411}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !339, file: !4, line: 67, baseType: !440, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!114, !408, !411, !114}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !339, file: !4, line: 68, baseType: !436, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !339, file: !4, line: 69, baseType: !445, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!409, !408}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !339, file: !4, line: 70, baseType: !449, size: 64, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!114, !408, !409, !114, !352}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !339, file: !4, line: 71, baseType: !453, size: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!456, !408, !169, !456, !352}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !457, line: 108, baseType: !458)
!457 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !67, line: 194, baseType: !299)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !339, file: !4, line: 72, baseType: !453, size: 64, offset: 768)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !339, file: !4, line: 73, baseType: !453, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !339, file: !4, line: 74, baseType: !462, size: 64, offset: 896)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!114, !408}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !4, line: 79, baseType: !466, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !4, line: 80, baseType: !313, size: 16, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !334, file: !4, line: 81, baseType: !313, size: 16, offset: 112)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !334, file: !4, line: 82, baseType: !114, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !334, file: !4, line: 83, baseType: !58, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !334, file: !4, line: 84, baseType: !411, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !334, file: !4, line: 85, baseType: !411, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !334, file: !4, line: 86, baseType: !411, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !334, file: !4, line: 87, baseType: !114, size: 32, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !327, file: !14, line: 1093, baseType: !114, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !327, file: !14, line: 1094, baseType: !477, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !518}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !479, file: !14, line: 923, baseType: !241, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !479, file: !14, line: 924, baseType: !241, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !479, file: !14, line: 925, baseType: !241, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !479, file: !14, line: 926, baseType: !241, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !479, file: !14, line: 927, baseType: !241, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !479, file: !14, line: 928, baseType: !114, size: 32, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !479, file: !14, line: 929, baseType: !352, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !479, file: !14, line: 930, baseType: !101, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !479, file: !14, line: 931, baseType: !490, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !492, line: 54, baseType: !493)
!492 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !492, line: 47, size: 384, elements: !494)
!494 = !{!495, !504, !505, !509, !513, !517}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !493, file: !492, line: 48, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !492, line: 40, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !492, line: 36, size: 192, elements: !499)
!499 = !{!500, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !498, file: !492, line: 37, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !492, line: 38, baseType: !501, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !498, file: !492, line: 39, baseType: !58, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !493, file: !492, line: 49, baseType: !496, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !493, file: !492, line: 50, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!58, !58}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !493, file: !492, line: 51, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !58}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !493, file: !492, line: 52, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!114, !58, !58}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !493, file: !492, line: 53, baseType: !101, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !479, file: !14, line: 932, baseType: !519, size: 64, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !14, line: 1095, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !526)
!526 = !{!527, !528, !529, !530, !531}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !525, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !525, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !525, file: !14, line: 860, baseType: !114, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !525, file: !14, line: 861, baseType: !58, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !327, file: !14, line: 1096, baseType: !239, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !327, file: !14, line: 1097, baseType: !275, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !327, file: !14, line: 1098, baseType: !275, size: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !327, file: !14, line: 1099, baseType: !114, size: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !327, file: !14, line: 1100, baseType: !537, size: 64, offset: 640)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !327, file: !14, line: 1101, baseType: !114, size: 32, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !327, file: !14, line: 1102, baseType: !114, size: 32, offset: 736)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !327, file: !14, line: 1103, baseType: !537, size: 64, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !327, file: !14, line: 1104, baseType: !275, size: 64, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !327, file: !14, line: 1105, baseType: !543, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !545)
!545 = !{!546, !547, !548, !549, !550, !551, !552, !553, !555, !562, !564, !569, !570, !571, !572, !612, !634, !635, !650, !651, !652, !653, !654, !655, !656, !680, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !544, file: !14, line: 2235, baseType: !409, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !544, file: !14, line: 2237, baseType: !409, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !544, file: !14, line: 2238, baseType: !409, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !544, file: !14, line: 2239, baseType: !409, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !544, file: !14, line: 2240, baseType: !114, size: 32, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !544, file: !14, line: 2241, baseType: !409, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !544, file: !14, line: 2242, baseType: !409, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !544, file: !14, line: 2243, baseType: !554, size: 32, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !544, file: !14, line: 2244, baseType: !556, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !558, file: !14, line: 2111, baseType: !409, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !558, file: !14, line: 2112, baseType: !409, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !544, file: !14, line: 2245, baseType: !563, size: 64, offset: 576)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !544, file: !14, line: 2246, baseType: !565, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !567)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !325}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !544, file: !14, line: 2247, baseType: !114, size: 32, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !14, line: 2248, baseType: !99, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !544, file: !14, line: 2249, baseType: !99, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !544, file: !14, line: 2250, baseType: !573, size: 1792, offset: 896)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 1792, elements: !610)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !576)
!576 = !{!577, !578, !579, !581, !593, !595}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !575, file: !14, line: 2006, baseType: !409, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !14, line: 2007, baseType: !99, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !575, file: !14, line: 2008, baseType: !580, size: 32, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !575, file: !14, line: 2022, baseType: !582, size: 128, offset: 192)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !14, line: 2009, size: 128, elements: !583)
!583 = !{!584, !588}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !582, file: !14, line: 2013, baseType: !585, size: 32)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !14, line: 2010, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !585, file: !14, line: 2012, baseType: !114, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !582, file: !14, line: 2021, baseType: !589, size: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !14, line: 2014, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !589, file: !14, line: 2016, baseType: !409, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !589, file: !14, line: 2020, baseType: !114, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !575, file: !14, line: 2023, baseType: !594, size: 32, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !575, file: !14, line: 2047, baseType: !596, size: 96, offset: 352)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !14, line: 2024, size: 96, elements: !597)
!597 = !{!598, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !596, file: !14, line: 2037, baseType: !599, size: 96)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !596, file: !14, line: 2027, size: 96, elements: !600)
!600 = !{!601, !602, !603}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !599, file: !14, line: 2031, baseType: !114, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !599, file: !14, line: 2033, baseType: !114, size: 32, offset: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !599, file: !14, line: 2036, baseType: !114, size: 32, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !596, file: !14, line: 2046, baseType: !605, size: 96)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !596, file: !14, line: 2038, size: 96, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !605, file: !14, line: 2040, baseType: !114, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !605, file: !14, line: 2043, baseType: !114, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !605, file: !14, line: 2045, baseType: !114, size: 32, offset: 64)
!610 = !{!611}
!611 = !DISubrange(count: 4)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !544, file: !14, line: 2253, baseType: !613, size: 64, offset: 2688)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !615)
!615 = !DISubroutineType(types: !616)
!616 = !{!114, !543, !537, !114, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !620)
!620 = !{!621, !630, !632, !633}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !619, file: !14, line: 1962, baseType: !622, size: 16384)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !623, size: 16384, elements: !628)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !624, file: !14, line: 1952, baseType: !114, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !14, line: 1953, baseType: !114, size: 32, offset: 32)
!628 = !{!629}
!629 = !DISubrange(count: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !619, file: !14, line: 1963, baseType: !631, size: 64, offset: 16384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !619, file: !14, line: 1964, baseType: !114, size: 32, offset: 16448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !14, line: 1965, baseType: !114, size: 32, offset: 16480)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !544, file: !14, line: 2255, baseType: !543, size: 64, offset: 2752)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !544, file: !14, line: 2257, baseType: !636, size: 64, offset: 2816)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !638)
!638 = !{!639, !640, !642, !643, !644, !645, !646, !647, !648, !649}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !637, file: !14, line: 2072, baseType: !409, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !14, line: 2073, baseType: !641, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !637, file: !14, line: 2074, baseType: !114, size: 32, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !637, file: !14, line: 2075, baseType: !409, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !637, file: !14, line: 2076, baseType: !409, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !637, file: !14, line: 2077, baseType: !409, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !14, line: 2078, baseType: !114, size: 32, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !637, file: !14, line: 2079, baseType: !409, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !637, file: !14, line: 2080, baseType: !636, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !637, file: !14, line: 2082, baseType: !114, size: 32, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !544, file: !14, line: 2260, baseType: !352, size: 64, offset: 2880)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !544, file: !14, line: 2260, baseType: !352, size: 64, offset: 2944)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !544, file: !14, line: 2260, baseType: !352, size: 64, offset: 3008)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !544, file: !14, line: 2260, baseType: !352, size: 64, offset: 3072)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !544, file: !14, line: 2261, baseType: !114, size: 32, offset: 3136)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !544, file: !14, line: 2266, baseType: !239, size: 64, offset: 3200)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !544, file: !14, line: 2267, baseType: !657, size: 64, offset: 3264)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !659, line: 17, size: 832, elements: !660)
!659 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!660 = !{!661, !662, !663, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !658, file: !659, line: 19, baseType: !296, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !658, file: !659, line: 20, baseType: !296, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !658, file: !659, line: 21, baseType: !664, size: 32, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !297, line: 26, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !67, line: 41, baseType: !114)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !658, file: !659, line: 22, baseType: !664, size: 32, offset: 160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !658, file: !659, line: 23, baseType: !664, size: 32, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !658, file: !659, line: 24, baseType: !664, size: 32, offset: 224)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !658, file: !659, line: 25, baseType: !296, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !658, file: !659, line: 26, baseType: !664, size: 32, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !658, file: !659, line: 27, baseType: !664, size: 32, offset: 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !658, file: !659, line: 28, baseType: !296, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !658, file: !659, line: 29, baseType: !296, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !658, file: !659, line: 30, baseType: !664, size: 32, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !658, file: !659, line: 31, baseType: !277, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !658, file: !659, line: 32, baseType: !664, size: 32, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !658, file: !659, line: 33, baseType: !296, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !658, file: !659, line: 34, baseType: !679, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !544, file: !14, line: 2268, baseType: !681, size: 64, offset: 3328)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !544, file: !14, line: 2269, baseType: !574, size: 448, offset: 3392)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !544, file: !14, line: 2273, baseType: !114, size: 32, offset: 3840)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !544, file: !14, line: 2274, baseType: !114, size: 32, offset: 3872)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !544, file: !14, line: 2275, baseType: !114, size: 32, offset: 3904)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !544, file: !14, line: 2276, baseType: !114, size: 32, offset: 3936)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !544, file: !14, line: 2277, baseType: !114, size: 32, offset: 3968)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !544, file: !14, line: 2278, baseType: !241, size: 64, offset: 4032)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !544, file: !14, line: 2280, baseType: !543, size: 64, offset: 4096)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !544, file: !14, line: 2281, baseType: !691, size: 64, offset: 4160)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !327, file: !14, line: 1105, baseType: !543, size: 64, offset: 960)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !327, file: !14, line: 1106, baseType: !543, size: 64, offset: 1024)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !327, file: !14, line: 1109, baseType: !696, size: 64, offset: 1088)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !699)
!699 = !{!700, !701, !702, !703, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !698, file: !14, line: 1050, baseType: !239, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !14, line: 1051, baseType: !90, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !698, file: !14, line: 1052, baseType: !490, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !698, file: !14, line: 1053, baseType: !490, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !698, file: !14, line: 1056, baseType: !523, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !327, file: !14, line: 1112, baseType: !114, size: 32, offset: 1152)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !327, file: !14, line: 1113, baseType: !114, size: 32, offset: 1184)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !327, file: !14, line: 1114, baseType: !299, size: 64, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !327, file: !14, line: 1115, baseType: !490, size: 64, offset: 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !327, file: !14, line: 1116, baseType: !710, size: 64, offset: 1344)
!710 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !327, file: !14, line: 1117, baseType: !490, size: 64, offset: 1408)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !327, file: !14, line: 1118, baseType: !275, size: 64, offset: 1472)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !327, file: !14, line: 1120, baseType: !714, size: 64, offset: 1536)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !715, line: 10, baseType: !716)
!715 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !67, line: 160, baseType: !299)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !327, file: !14, line: 1121, baseType: !299, size: 64, offset: 1600)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !327, file: !14, line: 1122, baseType: !114, size: 32, offset: 1664)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !327, file: !14, line: 1123, baseType: !285, size: 64, offset: 1728)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !327, file: !14, line: 1124, baseType: !714, size: 64, offset: 1792)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !327, file: !14, line: 1125, baseType: !714, size: 64, offset: 1856)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !327, file: !14, line: 1126, baseType: !114, size: 32, offset: 1920)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !327, file: !14, line: 1127, baseType: !114, size: 32, offset: 1952)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !327, file: !14, line: 1128, baseType: !114, size: 32, offset: 1984)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !327, file: !14, line: 1129, baseType: !114, size: 32, offset: 2016)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !327, file: !14, line: 1130, baseType: !727, size: 64, offset: 2048)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !728, line: 58, baseType: !729)
!728 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !67, line: 153, baseType: !299)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !327, file: !14, line: 1131, baseType: !727, size: 64, offset: 2112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !327, file: !14, line: 1132, baseType: !239, size: 64, offset: 2176)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !327, file: !14, line: 1133, baseType: !352, size: 64, offset: 2240)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !327, file: !14, line: 1134, baseType: !352, size: 64, offset: 2304)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !327, file: !14, line: 1135, baseType: !352, size: 64, offset: 2368)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !327, file: !14, line: 1136, baseType: !352, size: 64, offset: 2432)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !327, file: !14, line: 1137, baseType: !352, size: 64, offset: 2496)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !327, file: !14, line: 1138, baseType: !352, size: 64, offset: 2560)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !327, file: !14, line: 1139, baseType: !352, size: 64, offset: 2624)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !327, file: !14, line: 1142, baseType: !740, size: 328, offset: 2688)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 328, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 41)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !327, file: !14, line: 1143, baseType: !114, size: 32, offset: 3040)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !327, file: !14, line: 1144, baseType: !169, size: 64, offset: 3072)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !327, file: !14, line: 1145, baseType: !114, size: 32, offset: 3136)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !327, file: !14, line: 1146, baseType: !114, size: 32, offset: 3168)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !327, file: !14, line: 1147, baseType: !748, size: 320, offset: 3200)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !750)
!750 = !{!751, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !749, file: !14, line: 957, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !755)
!755 = !{!756, !757, !758, !759}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !754, file: !14, line: 950, baseType: !537, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !754, file: !14, line: 951, baseType: !114, size: 32, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !754, file: !14, line: 952, baseType: !114, size: 32, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !754, file: !14, line: 953, baseType: !543, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !749, file: !14, line: 958, baseType: !114, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !749, file: !14, line: 959, baseType: !114, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !749, file: !14, line: 962, baseType: !114, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !749, file: !14, line: 965, baseType: !275, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !749, file: !14, line: 966, baseType: !114, size: 32, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !327, file: !14, line: 1148, baseType: !114, size: 32, offset: 3520)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !327, file: !14, line: 1149, baseType: !767, size: 704, offset: 3584)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !769)
!769 = !{!770, !771, !773, !774, !775, !780, !781, !782, !783, !784, !785, !786}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !768, file: !14, line: 973, baseType: !299, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !768, file: !14, line: 974, baseType: !772, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !352)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !768, file: !14, line: 978, baseType: !241, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !768, file: !14, line: 980, baseType: !523, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !768, file: !14, line: 985, baseType: !776, size: 64, offset: 256)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !776, file: !14, line: 983, baseType: !114, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !776, file: !14, line: 984, baseType: !114, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !768, file: !14, line: 990, baseType: !275, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !768, file: !14, line: 991, baseType: !523, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !768, file: !14, line: 992, baseType: !523, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !768, file: !14, line: 993, baseType: !114, size: 32, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !768, file: !14, line: 996, baseType: !114, size: 32, offset: 544)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !768, file: !14, line: 997, baseType: !352, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !768, file: !14, line: 1000, baseType: !58, size: 64, offset: 640)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !327, file: !14, line: 1150, baseType: !352, size: 64, offset: 4288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !327, file: !14, line: 1151, baseType: !490, size: 64, offset: 4352)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !327, file: !14, line: 1152, baseType: !241, size: 64, offset: 4416)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !327, file: !14, line: 1153, baseType: !490, size: 64, offset: 4480)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !327, file: !14, line: 1154, baseType: !241, size: 64, offset: 4544)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !327, file: !14, line: 1155, baseType: !239, size: 64, offset: 4608)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !327, file: !14, line: 1156, baseType: !239, size: 64, offset: 4672)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !327, file: !14, line: 1157, baseType: !496, size: 64, offset: 4736)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !327, file: !14, line: 1158, baseType: !496, size: 64, offset: 4800)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !327, file: !14, line: 1159, baseType: !496, size: 64, offset: 4864)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !327, file: !14, line: 1160, baseType: !798, size: 64, offset: 4928)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !99, !58}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !327, file: !14, line: 1163, baseType: !58, size: 64, offset: 4992)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !327, file: !14, line: 1166, baseType: !58, size: 64, offset: 5056)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !327, file: !14, line: 1173, baseType: !99, size: 64, offset: 5120)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !327, file: !14, line: 1174, baseType: !806, size: 64, offset: 5184)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !808, line: 137, baseType: !809)
!808 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !808, line: 133, size: 192, elements: !810)
!810 = !{!811, !822, !823}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !809, file: !808, line: 134, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !808, line: 131, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !808, line: 98, size: 32, elements: !815)
!815 = !{!816, !817, !818, !819, !820}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !814, file: !808, line: 99, baseType: !90, size: 1, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !814, file: !808, line: 100, baseType: !90, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !814, file: !808, line: 101, baseType: !90, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !814, file: !808, line: 102, baseType: !90, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !814, file: !808, line: 130, baseType: !821, offset: 32)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, elements: !74)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !809, file: !808, line: 135, baseType: !99, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !809, file: !808, line: 136, baseType: !99, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !327, file: !14, line: 1182, baseType: !275, size: 64, offset: 5248)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !327, file: !14, line: 1183, baseType: !114, size: 32, offset: 5312)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !327, file: !14, line: 1185, baseType: !496, size: 64, offset: 5376)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !327, file: !14, line: 1186, baseType: !828, size: 64, offset: 5440)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !830, file: !14, line: 1085, baseType: !490, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !830, file: !14, line: 1086, baseType: !275, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !327, file: !14, line: 1188, baseType: !496, size: 64, offset: 5504)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !327, file: !14, line: 1190, baseType: !275, size: 64, offset: 5568)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !327, file: !14, line: 1194, baseType: !275, size: 64, offset: 5632)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !327, file: !14, line: 1195, baseType: !772, size: 64, offset: 5696)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !327, file: !14, line: 1196, baseType: !114, size: 32, offset: 5760)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !327, file: !14, line: 1197, baseType: !275, size: 64, offset: 5824)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !327, file: !14, line: 1198, baseType: !169, size: 64, offset: 5888)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !236, file: !226, line: 108, baseType: !239, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !227, file: !226, line: 65, baseType: !844, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !847, !58, !58, !537, !275, !537, !275}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptRunCtx", file: !849, line: 68, baseType: !850)
!849 = !DIFile(filename: "./script.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptRunCtx", file: !849, line: 70, size: 384, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "funcname", scope: !850, file: !849, line: 71, baseType: !409, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !850, file: !849, line: 72, baseType: !325, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "original_client", scope: !850, file: !849, line: 73, baseType: !325, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !849, line: 74, baseType: !114, size: 32, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "repl_flags", scope: !850, file: !849, line: 75, baseType: !114, size: 32, offset: 224)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !850, file: !849, line: 76, baseType: !378, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_time", scope: !850, file: !849, line: 77, baseType: !772, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "get_used_memory", scope: !227, file: !226, line: 69, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!275, !58}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "get_function_memory_overhead", scope: !227, file: !226, line: 74, baseType: !860, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "get_engine_memory_overhead", scope: !227, file: !226, line: 77, baseType: !860, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "free_function", scope: !227, file: !226, line: 80, baseType: !866, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !58, !58}
!869 = !DILocation(line: 493, column: 13, scope: !111)
!870 = !DILocation(line: 493, column: 26, scope: !111)
!871 = !DILocation(line: 494, column: 6, scope: !111)
!872 = !DILocation(line: 494, column: 28, scope: !111)
!873 = !DILocation(line: 495, column: 23, scope: !111)
!874 = !DILocation(line: 494, column: 19, scope: !111)
!875 = !DILocation(line: 503, column: 53, scope: !111)
!876 = !DILocation(line: 503, column: 12, scope: !111)
!877 = !DILocation(line: 503, column: 5, scope: !111)
!878 = distinct !DISubprogram(name: "luaRegisterFunction", scope: !1, file: !1, line: 397, type: !879, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!879 = !DISubroutineType(types: !880)
!880 = !{!114, !122}
!881 = !DILocalVariable(name: "lua", arg: 1, scope: !878, file: !1, line: 397, type: !122)
!882 = !DILocation(line: 397, column: 43, scope: !878)
!883 = !DILocalVariable(name: "register_f_args", scope: !878, file: !1, line: 398, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "registerFunctionArgs", file: !1, line: 77, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "registerFunctionArgs", file: !1, line: 72, size: 256, elements: !886)
!886 = !{!887, !888, !889, !895}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !885, file: !1, line: 73, baseType: !239, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !885, file: !1, line: 74, baseType: !239, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lua_f_ctx", scope: !885, file: !1, line: 75, baseType: !890, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaFunctionCtx", file: !1, line: 65, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaFunctionCtx", file: !1, line: 62, size: 32, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "lua_function_ref", scope: !892, file: !1, line: 64, baseType: !114, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !885, file: !1, line: 76, baseType: !99, size: 64, offset: 192)
!896 = !DILocation(line: 398, column: 26, scope: !878)
!897 = !DILocalVariable(name: "load_ctx", scope: !878, file: !1, line: 400, type: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "loadCtx", file: !1, line: 70, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loadCtx", file: !1, line: 67, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "li", scope: !900, file: !1, line: 68, baseType: !234, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !900, file: !1, line: 69, baseType: !378, size: 64, offset: 64)
!904 = !DILocation(line: 400, column: 14, scope: !878)
!905 = !DILocation(line: 400, column: 44, scope: !878)
!906 = !DILocation(line: 400, column: 25, scope: !878)
!907 = !DILocation(line: 401, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !878, file: !1, line: 401, column: 9)
!909 = !DILocation(line: 401, column: 9, scope: !878)
!910 = !DILocation(line: 402, column: 22, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !1, line: 401, column: 20)
!912 = !DILocation(line: 402, column: 9, scope: !911)
!913 = !DILocation(line: 403, column: 25, scope: !911)
!914 = !DILocation(line: 403, column: 16, scope: !911)
!915 = !DILocation(line: 403, column: 9, scope: !911)
!916 = !DILocation(line: 406, column: 37, scope: !917)
!917 = distinct !DILexicalBlock(scope: !878, file: !1, line: 406, column: 9)
!918 = !DILocation(line: 406, column: 9, scope: !917)
!919 = !DILocation(line: 406, column: 60, scope: !917)
!920 = !DILocation(line: 406, column: 9, scope: !878)
!921 = !DILocation(line: 407, column: 25, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !1, line: 406, column: 69)
!923 = !DILocation(line: 407, column: 16, scope: !922)
!924 = !DILocation(line: 407, column: 9, scope: !922)
!925 = !DILocalVariable(name: "err", scope: !878, file: !1, line: 410, type: !239)
!926 = !DILocation(line: 410, column: 9, scope: !878)
!927 = !DILocation(line: 411, column: 51, scope: !928)
!928 = distinct !DILexicalBlock(scope: !878, file: !1, line: 411, column: 9)
!929 = !DILocation(line: 411, column: 73, scope: !928)
!930 = !DILocation(line: 411, column: 57, scope: !928)
!931 = !DILocation(line: 411, column: 84, scope: !928)
!932 = !DILocation(line: 411, column: 94, scope: !928)
!933 = !DILocation(line: 411, column: 114, scope: !928)
!934 = !DILocation(line: 411, column: 136, scope: !928)
!935 = !DILocation(line: 411, column: 9, scope: !928)
!936 = !DILocation(line: 411, column: 151, scope: !928)
!937 = !DILocation(line: 411, column: 9, scope: !878)
!938 = !DILocation(line: 412, column: 40, scope: !939)
!939 = distinct !DILexicalBlock(scope: !928, file: !1, line: 411, column: 160)
!940 = !DILocation(line: 412, column: 9, scope: !939)
!941 = !DILocation(line: 413, column: 22, scope: !939)
!942 = !DILocation(line: 413, column: 27, scope: !939)
!943 = !DILocation(line: 413, column: 9, scope: !939)
!944 = !DILocation(line: 414, column: 17, scope: !939)
!945 = !DILocation(line: 414, column: 9, scope: !939)
!946 = !DILocation(line: 415, column: 25, scope: !939)
!947 = !DILocation(line: 415, column: 16, scope: !939)
!948 = !DILocation(line: 415, column: 9, scope: !939)
!949 = !DILocation(line: 418, column: 5, scope: !878)
!950 = !DILocation(line: 419, column: 1, scope: !878)
!951 = distinct !DISubprogram(name: "luaEngineCreate", scope: !1, file: !1, line: 102, type: !232, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!952 = !DILocalVariable(name: "engine_ctx", arg: 1, scope: !951, file: !1, line: 102, type: !58)
!953 = !DILocation(line: 102, column: 34, scope: !951)
!954 = !DILocalVariable(name: "li", arg: 2, scope: !951, file: !1, line: 102, type: !234)
!955 = !DILocation(line: 102, column: 63, scope: !951)
!956 = !DILocalVariable(name: "blob", arg: 3, scope: !951, file: !1, line: 102, type: !239)
!957 = !DILocation(line: 102, column: 71, scope: !951)
!958 = !DILocalVariable(name: "err", arg: 4, scope: !951, file: !1, line: 102, type: !842)
!959 = !DILocation(line: 102, column: 82, scope: !951)
!960 = !DILocalVariable(name: "ret", scope: !951, file: !1, line: 103, type: !114)
!961 = !DILocation(line: 103, column: 9, scope: !951)
!962 = !DILocalVariable(name: "lua_engine_ctx", scope: !951, file: !1, line: 104, type: !117)
!963 = !DILocation(line: 104, column: 19, scope: !951)
!964 = !DILocation(line: 104, column: 36, scope: !951)
!965 = !DILocalVariable(name: "lua", scope: !951, file: !1, line: 105, type: !122)
!966 = !DILocation(line: 105, column: 16, scope: !951)
!967 = !DILocation(line: 105, column: 22, scope: !951)
!968 = !DILocation(line: 105, column: 38, scope: !951)
!969 = !DILocation(line: 108, column: 22, scope: !951)
!970 = !DILocation(line: 108, column: 5, scope: !951)
!971 = !DILocation(line: 109, column: 29, scope: !951)
!972 = !DILocation(line: 109, column: 5, scope: !951)
!973 = !DILocation(line: 110, column: 18, scope: !951)
!974 = !DILocation(line: 110, column: 5, scope: !951)
!975 = !DILocation(line: 111, column: 18, scope: !951)
!976 = !DILocation(line: 111, column: 5, scope: !951)
!977 = !DILocation(line: 112, column: 29, scope: !951)
!978 = !DILocation(line: 112, column: 5, scope: !951)
!979 = !DILocation(line: 113, column: 5, scope: !951)
!980 = !DILocation(line: 116, column: 25, scope: !981)
!981 = distinct !DILexicalBlock(scope: !951, file: !1, line: 116, column: 9)
!982 = !DILocation(line: 116, column: 30, scope: !981)
!983 = !DILocation(line: 116, column: 43, scope: !981)
!984 = !DILocation(line: 116, column: 36, scope: !981)
!985 = !DILocation(line: 116, column: 9, scope: !981)
!986 = !DILocation(line: 116, column: 9, scope: !951)
!987 = !DILocation(line: 117, column: 29, scope: !988)
!988 = distinct !DILexicalBlock(scope: !981, file: !1, line: 116, column: 69)
!989 = !DILocation(line: 117, column: 73, scope: !988)
!990 = !DILocation(line: 117, column: 16, scope: !988)
!991 = !DILocation(line: 117, column: 10, scope: !988)
!992 = !DILocation(line: 117, column: 14, scope: !988)
!993 = !DILocation(line: 118, column: 9, scope: !988)
!994 = !DILocation(line: 119, column: 9, scope: !988)
!995 = !DILocation(line: 121, column: 5, scope: !951)
!996 = !DILocalVariable(name: "load_ctx", scope: !951, file: !1, line: 123, type: !899)
!997 = !DILocation(line: 123, column: 13, scope: !951)
!998 = !DILocation(line: 123, column: 24, scope: !951)
!999 = !DILocation(line: 124, column: 15, scope: !951)
!1000 = !DILocation(line: 125, column: 23, scope: !951)
!1001 = !DILocation(line: 127, column: 23, scope: !951)
!1002 = !DILocation(line: 127, column: 52, scope: !951)
!1003 = !DILocation(line: 127, column: 5, scope: !951)
!1004 = !DILocation(line: 129, column: 17, scope: !951)
!1005 = !DILocation(line: 129, column: 5, scope: !951)
!1006 = !DILocation(line: 131, column: 19, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !951, file: !1, line: 131, column: 9)
!1008 = !DILocation(line: 131, column: 9, scope: !1007)
!1009 = !DILocation(line: 131, column: 9, scope: !951)
!1010 = !DILocalVariable(name: "err_info", scope: !1011, file: !1, line: 132, type: !1012)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 131, column: 31)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "errorInfo", file: !1013, line: 66, baseType: !1014)
!1013 = !DIFile(filename: "./script_lua.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "errorInfo", file: !1013, line: 61, size: 256, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !1014, file: !1013, line: 62, baseType: !239, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1014, file: !1013, line: 63, baseType: !239, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1014, file: !1013, line: 64, baseType: !239, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_err_stats_update", scope: !1014, file: !1013, line: 65, baseType: !114, size: 32, offset: 192)
!1020 = !DILocation(line: 132, column: 19, scope: !1011)
!1021 = !DILocation(line: 133, column: 36, scope: !1011)
!1022 = !DILocation(line: 133, column: 9, scope: !1011)
!1023 = !DILocation(line: 134, column: 29, scope: !1011)
!1024 = !DILocation(line: 134, column: 85, scope: !1011)
!1025 = !DILocation(line: 134, column: 16, scope: !1011)
!1026 = !DILocation(line: 134, column: 10, scope: !1011)
!1027 = !DILocation(line: 134, column: 14, scope: !1011)
!1028 = !DILocation(line: 135, column: 9, scope: !1011)
!1029 = !DILocation(line: 136, column: 9, scope: !1011)
!1030 = !DILocation(line: 137, column: 9, scope: !1011)
!1031 = !DILocation(line: 140, column: 9, scope: !951)
!1032 = !DILocation(line: 140, column: 5, scope: !951)
!1033 = !DILabel(scope: !951, name: "done", file: !1, line: 142)
!1034 = !DILocation(line: 142, column: 1, scope: !951)
!1035 = !DILocation(line: 144, column: 22, scope: !951)
!1036 = !DILocation(line: 144, column: 5, scope: !951)
!1037 = !DILocation(line: 145, column: 29, scope: !951)
!1038 = !DILocation(line: 145, column: 5, scope: !951)
!1039 = !DILocation(line: 146, column: 18, scope: !951)
!1040 = !DILocation(line: 146, column: 5, scope: !951)
!1041 = !DILocation(line: 147, column: 18, scope: !951)
!1042 = !DILocation(line: 147, column: 5, scope: !951)
!1043 = !DILocation(line: 148, column: 29, scope: !951)
!1044 = !DILocation(line: 148, column: 5, scope: !951)
!1045 = !DILocation(line: 149, column: 5, scope: !951)
!1046 = !DILocation(line: 151, column: 17, scope: !951)
!1047 = !DILocation(line: 151, column: 5, scope: !951)
!1048 = !DILocation(line: 152, column: 23, scope: !951)
!1049 = !DILocation(line: 152, column: 5, scope: !951)
!1050 = !DILocation(line: 153, column: 12, scope: !951)
!1051 = !DILocation(line: 153, column: 5, scope: !951)
!1052 = distinct !DISubprogram(name: "luaEngineCall", scope: !1, file: !1, line: 159, type: !845, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1053 = !DILocalVariable(name: "run_ctx", arg: 1, scope: !1052, file: !1, line: 159, type: !847)
!1054 = !DILocation(line: 159, column: 41, scope: !1052)
!1055 = !DILocalVariable(name: "engine_ctx", arg: 2, scope: !1052, file: !1, line: 160, type: !58)
!1056 = !DILocation(line: 160, column: 33, scope: !1052)
!1057 = !DILocalVariable(name: "compiled_function", arg: 3, scope: !1052, file: !1, line: 161, type: !58)
!1058 = !DILocation(line: 161, column: 33, scope: !1052)
!1059 = !DILocalVariable(name: "keys", arg: 4, scope: !1052, file: !1, line: 162, type: !537)
!1060 = !DILocation(line: 162, column: 34, scope: !1052)
!1061 = !DILocalVariable(name: "nkeys", arg: 5, scope: !1052, file: !1, line: 163, type: !275)
!1062 = !DILocation(line: 163, column: 34, scope: !1052)
!1063 = !DILocalVariable(name: "args", arg: 6, scope: !1052, file: !1, line: 164, type: !537)
!1064 = !DILocation(line: 164, column: 34, scope: !1052)
!1065 = !DILocalVariable(name: "nargs", arg: 7, scope: !1052, file: !1, line: 165, type: !275)
!1066 = !DILocation(line: 165, column: 34, scope: !1052)
!1067 = !DILocalVariable(name: "lua_engine_ctx", scope: !1052, file: !1, line: 167, type: !117)
!1068 = !DILocation(line: 167, column: 19, scope: !1052)
!1069 = !DILocation(line: 167, column: 36, scope: !1052)
!1070 = !DILocalVariable(name: "lua", scope: !1052, file: !1, line: 168, type: !122)
!1071 = !DILocation(line: 168, column: 16, scope: !1052)
!1072 = !DILocation(line: 168, column: 22, scope: !1052)
!1073 = !DILocation(line: 168, column: 38, scope: !1052)
!1074 = !DILocalVariable(name: "f_ctx", scope: !1052, file: !1, line: 169, type: !890)
!1075 = !DILocation(line: 169, column: 21, scope: !1052)
!1076 = !DILocation(line: 169, column: 29, scope: !1052)
!1077 = !DILocation(line: 172, column: 20, scope: !1052)
!1078 = !DILocation(line: 172, column: 5, scope: !1052)
!1079 = !DILocation(line: 173, column: 18, scope: !1052)
!1080 = !DILocation(line: 173, column: 5, scope: !1052)
!1081 = !DILocation(line: 175, column: 17, scope: !1052)
!1082 = !DILocation(line: 175, column: 41, scope: !1052)
!1083 = !DILocation(line: 175, column: 48, scope: !1052)
!1084 = !DILocation(line: 175, column: 5, scope: !1052)
!1085 = !DILocation(line: 177, column: 5, scope: !1052)
!1086 = !DILocation(line: 179, column: 21, scope: !1052)
!1087 = !DILocation(line: 179, column: 30, scope: !1052)
!1088 = !DILocation(line: 179, column: 35, scope: !1052)
!1089 = !DILocation(line: 179, column: 41, scope: !1052)
!1090 = !DILocation(line: 179, column: 48, scope: !1052)
!1091 = !DILocation(line: 179, column: 54, scope: !1052)
!1092 = !DILocation(line: 179, column: 5, scope: !1052)
!1093 = !DILocation(line: 180, column: 5, scope: !1052)
!1094 = !DILocation(line: 181, column: 1, scope: !1052)
!1095 = distinct !DISubprogram(name: "luaEngineGetUsedMemoy", scope: !1, file: !1, line: 183, type: !861, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1096 = !DILocalVariable(name: "engine_ctx", arg: 1, scope: !1095, file: !1, line: 183, type: !58)
!1097 = !DILocation(line: 183, column: 43, scope: !1095)
!1098 = !DILocalVariable(name: "lua_engine_ctx", scope: !1095, file: !1, line: 184, type: !117)
!1099 = !DILocation(line: 184, column: 19, scope: !1095)
!1100 = !DILocation(line: 184, column: 36, scope: !1095)
!1101 = !DILocation(line: 185, column: 22, scope: !1095)
!1102 = !DILocation(line: 185, column: 38, scope: !1095)
!1103 = !DILocation(line: 185, column: 12, scope: !1095)
!1104 = !DILocation(line: 185, column: 5, scope: !1095)
!1105 = distinct !DISubprogram(name: "luaEngineFunctionMemoryOverhead", scope: !1, file: !1, line: 188, type: !861, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1106 = !DILocalVariable(name: "compiled_function", arg: 1, scope: !1105, file: !1, line: 188, type: !58)
!1107 = !DILocation(line: 188, column: 53, scope: !1105)
!1108 = !DILocation(line: 189, column: 12, scope: !1105)
!1109 = !DILocation(line: 189, column: 5, scope: !1105)
!1110 = distinct !DISubprogram(name: "luaEngineMemoryOverhead", scope: !1, file: !1, line: 192, type: !861, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1111 = !DILocalVariable(name: "engine_ctx", arg: 1, scope: !1110, file: !1, line: 192, type: !58)
!1112 = !DILocation(line: 192, column: 45, scope: !1110)
!1113 = !DILocalVariable(name: "lua_engine_ctx", scope: !1110, file: !1, line: 193, type: !117)
!1114 = !DILocation(line: 193, column: 19, scope: !1110)
!1115 = !DILocation(line: 193, column: 36, scope: !1110)
!1116 = !DILocation(line: 194, column: 12, scope: !1110)
!1117 = !DILocation(line: 194, column: 5, scope: !1110)
!1118 = distinct !DISubprogram(name: "luaEngineFreeFunction", scope: !1, file: !1, line: 197, type: !867, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1119 = !DILocalVariable(name: "engine_ctx", arg: 1, scope: !1118, file: !1, line: 197, type: !58)
!1120 = !DILocation(line: 197, column: 41, scope: !1118)
!1121 = !DILocalVariable(name: "compiled_function", arg: 2, scope: !1118, file: !1, line: 197, type: !58)
!1122 = !DILocation(line: 197, column: 59, scope: !1118)
!1123 = !DILocalVariable(name: "lua_engine_ctx", scope: !1118, file: !1, line: 198, type: !117)
!1124 = !DILocation(line: 198, column: 19, scope: !1118)
!1125 = !DILocation(line: 198, column: 36, scope: !1118)
!1126 = !DILocalVariable(name: "lua", scope: !1118, file: !1, line: 199, type: !122)
!1127 = !DILocation(line: 199, column: 16, scope: !1118)
!1128 = !DILocation(line: 199, column: 22, scope: !1118)
!1129 = !DILocation(line: 199, column: 38, scope: !1118)
!1130 = !DILocalVariable(name: "f_ctx", scope: !1118, file: !1, line: 200, type: !890)
!1131 = !DILocation(line: 200, column: 21, scope: !1118)
!1132 = !DILocation(line: 200, column: 29, scope: !1118)
!1133 = !DILocation(line: 201, column: 5, scope: !1118)
!1134 = !DILocation(line: 202, column: 11, scope: !1118)
!1135 = !DILocation(line: 202, column: 5, scope: !1118)
!1136 = !DILocation(line: 203, column: 1, scope: !1118)
!1137 = distinct !DISubprogram(name: "luaRegisterFunctionReadArgs", scope: !1, file: !1, line: 383, type: !1138, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!114, !122, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!1141 = !DILocalVariable(name: "lua", arg: 1, scope: !1137, file: !1, line: 383, type: !122)
!1142 = !DILocation(line: 383, column: 51, scope: !1137)
!1143 = !DILocalVariable(name: "register_f_args", arg: 2, scope: !1137, file: !1, line: 383, type: !1140)
!1144 = !DILocation(line: 383, column: 78, scope: !1137)
!1145 = !DILocalVariable(name: "argc", scope: !1137, file: !1, line: 384, type: !114)
!1146 = !DILocation(line: 384, column: 9, scope: !1137)
!1147 = !DILocation(line: 384, column: 27, scope: !1137)
!1148 = !DILocation(line: 384, column: 16, scope: !1137)
!1149 = !DILocation(line: 385, column: 9, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 385, column: 9)
!1151 = !DILocation(line: 385, column: 14, scope: !1150)
!1152 = !DILocation(line: 385, column: 18, scope: !1150)
!1153 = !DILocation(line: 385, column: 21, scope: !1150)
!1154 = !DILocation(line: 385, column: 26, scope: !1150)
!1155 = !DILocation(line: 385, column: 9, scope: !1137)
!1156 = !DILocation(line: 386, column: 22, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 385, column: 31)
!1158 = !DILocation(line: 386, column: 9, scope: !1157)
!1159 = !DILocation(line: 387, column: 9, scope: !1157)
!1160 = !DILocation(line: 390, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 390, column: 9)
!1162 = !DILocation(line: 390, column: 14, scope: !1161)
!1163 = !DILocation(line: 390, column: 9, scope: !1137)
!1164 = !DILocation(line: 391, column: 49, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 390, column: 20)
!1166 = !DILocation(line: 391, column: 54, scope: !1165)
!1167 = !DILocation(line: 391, column: 16, scope: !1165)
!1168 = !DILocation(line: 391, column: 9, scope: !1165)
!1169 = !DILocation(line: 393, column: 54, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 392, column: 12)
!1171 = !DILocation(line: 393, column: 59, scope: !1170)
!1172 = !DILocation(line: 393, column: 16, scope: !1170)
!1173 = !DILocation(line: 393, column: 9, scope: !1170)
!1174 = !DILocation(line: 395, column: 1, scope: !1137)
!1175 = distinct !DISubprogram(name: "luaRegisterFunctionArgsDispose", scope: !1, file: !1, line: 219, type: !1176, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !122, !1140}
!1178 = !DILocalVariable(name: "lua", arg: 1, scope: !1175, file: !1, line: 219, type: !122)
!1179 = !DILocation(line: 219, column: 55, scope: !1175)
!1180 = !DILocalVariable(name: "register_f_args", arg: 2, scope: !1175, file: !1, line: 219, type: !1140)
!1181 = !DILocation(line: 219, column: 82, scope: !1175)
!1182 = !DILocation(line: 220, column: 13, scope: !1175)
!1183 = !DILocation(line: 220, column: 30, scope: !1175)
!1184 = !DILocation(line: 220, column: 5, scope: !1175)
!1185 = !DILocation(line: 221, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 221, column: 9)
!1187 = !DILocation(line: 221, column: 26, scope: !1186)
!1188 = !DILocation(line: 221, column: 9, scope: !1175)
!1189 = !DILocation(line: 221, column: 40, scope: !1186)
!1190 = !DILocation(line: 221, column: 57, scope: !1186)
!1191 = !DILocation(line: 221, column: 32, scope: !1186)
!1192 = !DILocation(line: 222, column: 5, scope: !1175)
!1193 = !DILocation(line: 223, column: 11, scope: !1175)
!1194 = !DILocation(line: 223, column: 28, scope: !1175)
!1195 = !DILocation(line: 223, column: 5, scope: !1175)
!1196 = !DILocation(line: 224, column: 1, scope: !1175)
!1197 = distinct !DISubprogram(name: "luaRegisterFunctionReadNamedArgs", scope: !1, file: !1, line: 270, type: !1138, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1198 = !DILocalVariable(name: "lua", arg: 1, scope: !1197, file: !1, line: 270, type: !122)
!1199 = !DILocation(line: 270, column: 56, scope: !1197)
!1200 = !DILocalVariable(name: "register_f_args", arg: 2, scope: !1197, file: !1, line: 270, type: !1140)
!1201 = !DILocation(line: 270, column: 83, scope: !1197)
!1202 = !DILocalVariable(name: "err", scope: !1197, file: !1, line: 271, type: !169)
!1203 = !DILocation(line: 271, column: 11, scope: !1197)
!1204 = !DILocalVariable(name: "name", scope: !1197, file: !1, line: 272, type: !239)
!1205 = !DILocation(line: 272, column: 9, scope: !1197)
!1206 = !DILocalVariable(name: "desc", scope: !1197, file: !1, line: 273, type: !239)
!1207 = !DILocation(line: 273, column: 9, scope: !1197)
!1208 = !DILocalVariable(name: "lua_f_ctx", scope: !1197, file: !1, line: 274, type: !890)
!1209 = !DILocation(line: 274, column: 21, scope: !1197)
!1210 = !DILocalVariable(name: "flags", scope: !1197, file: !1, line: 275, type: !99)
!1211 = !DILocation(line: 275, column: 14, scope: !1197)
!1212 = !DILocation(line: 276, column: 10, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 276, column: 9)
!1214 = !DILocation(line: 276, column: 9, scope: !1197)
!1215 = !DILocation(line: 277, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 276, column: 31)
!1217 = !DILocation(line: 278, column: 9, scope: !1216)
!1218 = !DILocation(line: 282, column: 17, scope: !1197)
!1219 = !DILocation(line: 282, column: 5, scope: !1197)
!1220 = !DILocation(line: 283, column: 5, scope: !1197)
!1221 = !DILocation(line: 283, column: 21, scope: !1197)
!1222 = !DILocation(line: 283, column: 12, scope: !1197)
!1223 = !DILocation(line: 285, column: 27, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 285, column: 13)
!1225 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 283, column: 31)
!1226 = !DILocation(line: 285, column: 14, scope: !1224)
!1227 = !DILocation(line: 285, column: 13, scope: !1225)
!1228 = !DILocation(line: 286, column: 17, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 285, column: 37)
!1230 = !DILocation(line: 287, column: 13, scope: !1229)
!1231 = !DILocalVariable(name: "key", scope: !1225, file: !1, line: 289, type: !409)
!1232 = !DILocation(line: 289, column: 21, scope: !1225)
!1233 = !DILocation(line: 289, column: 27, scope: !1225)
!1234 = !DILocation(line: 290, column: 25, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 290, column: 13)
!1236 = !DILocation(line: 290, column: 14, scope: !1235)
!1237 = !DILocation(line: 290, column: 13, scope: !1225)
!1238 = !DILocation(line: 291, column: 42, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 291, column: 17)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 290, column: 48)
!1241 = !DILocation(line: 291, column: 26, scope: !1239)
!1242 = !DILocation(line: 291, column: 24, scope: !1239)
!1243 = !DILocation(line: 291, column: 17, scope: !1240)
!1244 = !DILocation(line: 292, column: 21, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !1, line: 291, column: 53)
!1246 = !DILocation(line: 293, column: 17, scope: !1245)
!1247 = !DILocation(line: 295, column: 9, scope: !1240)
!1248 = !DILocation(line: 295, column: 32, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 295, column: 20)
!1250 = !DILocation(line: 295, column: 21, scope: !1249)
!1251 = !DILocation(line: 295, column: 20, scope: !1235)
!1252 = !DILocation(line: 296, column: 42, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 296, column: 17)
!1254 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 295, column: 53)
!1255 = !DILocation(line: 296, column: 26, scope: !1253)
!1256 = !DILocation(line: 296, column: 24, scope: !1253)
!1257 = !DILocation(line: 296, column: 17, scope: !1254)
!1258 = !DILocation(line: 297, column: 21, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1253, file: !1, line: 296, column: 53)
!1260 = !DILocation(line: 298, column: 17, scope: !1259)
!1261 = !DILocation(line: 300, column: 9, scope: !1254)
!1262 = !DILocation(line: 300, column: 32, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 300, column: 20)
!1264 = !DILocation(line: 300, column: 21, scope: !1263)
!1265 = !DILocation(line: 300, column: 20, scope: !1249)
!1266 = !DILocation(line: 301, column: 18, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 301, column: 17)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 300, column: 50)
!1269 = !DILocation(line: 301, column: 17, scope: !1268)
!1270 = !DILocation(line: 302, column: 21, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 301, column: 43)
!1272 = !DILocation(line: 303, column: 17, scope: !1271)
!1273 = !DILocalVariable(name: "lua_function_ref", scope: !1268, file: !1, line: 305, type: !114)
!1274 = !DILocation(line: 305, column: 17, scope: !1268)
!1275 = !DILocation(line: 305, column: 45, scope: !1268)
!1276 = !DILocation(line: 305, column: 36, scope: !1268)
!1277 = !DILocation(line: 307, column: 25, scope: !1268)
!1278 = !DILocation(line: 307, column: 23, scope: !1268)
!1279 = !DILocation(line: 308, column: 43, scope: !1268)
!1280 = !DILocation(line: 308, column: 13, scope: !1268)
!1281 = !DILocation(line: 308, column: 24, scope: !1268)
!1282 = !DILocation(line: 308, column: 41, scope: !1268)
!1283 = !DILocation(line: 309, column: 13, scope: !1268)
!1284 = distinct !{!1284, !1220, !1285, !1286}
!1285 = !DILocation(line: 325, column: 5, scope: !1197)
!1286 = !{!"llvm.loop.mustprogress"}
!1287 = !DILocation(line: 310, column: 32, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1263, file: !1, line: 310, column: 20)
!1289 = !DILocation(line: 310, column: 21, scope: !1288)
!1290 = !DILocation(line: 310, column: 20, scope: !1263)
!1291 = !DILocation(line: 311, column: 18, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 311, column: 17)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 310, column: 47)
!1294 = !DILocation(line: 311, column: 17, scope: !1293)
!1295 = !DILocation(line: 312, column: 21, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !1, line: 311, column: 40)
!1297 = !DILocation(line: 313, column: 17, scope: !1296)
!1298 = !DILocation(line: 315, column: 46, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !1, line: 315, column: 17)
!1300 = !DILocation(line: 315, column: 17, scope: !1299)
!1301 = !DILocation(line: 315, column: 59, scope: !1299)
!1302 = !DILocation(line: 315, column: 17, scope: !1293)
!1303 = !DILocation(line: 316, column: 21, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 315, column: 68)
!1305 = !DILocation(line: 317, column: 17, scope: !1304)
!1306 = !DILocation(line: 319, column: 9, scope: !1293)
!1307 = !DILocation(line: 321, column: 17, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 319, column: 16)
!1309 = !DILocation(line: 322, column: 13, scope: !1308)
!1310 = !DILocation(line: 324, column: 9, scope: !1225)
!1311 = !DILocation(line: 327, column: 10, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 327, column: 9)
!1313 = !DILocation(line: 327, column: 9, scope: !1197)
!1314 = !DILocation(line: 328, column: 13, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !1, line: 327, column: 16)
!1316 = !DILocation(line: 329, column: 9, scope: !1315)
!1317 = !DILocation(line: 332, column: 10, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 332, column: 9)
!1319 = !DILocation(line: 332, column: 9, scope: !1197)
!1320 = !DILocation(line: 333, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !1, line: 332, column: 21)
!1322 = !DILocation(line: 334, column: 9, scope: !1321)
!1323 = !DILocation(line: 337, column: 39, scope: !1197)
!1324 = !DILocation(line: 337, column: 56, scope: !1197)
!1325 = !DILocation(line: 337, column: 62, scope: !1197)
!1326 = !DILocation(line: 337, column: 68, scope: !1197)
!1327 = !DILocation(line: 337, column: 79, scope: !1197)
!1328 = !DILocation(line: 337, column: 5, scope: !1197)
!1329 = !DILocation(line: 339, column: 5, scope: !1197)
!1330 = !DILabel(scope: !1197, name: "error", file: !1, line: 341)
!1331 = !DILocation(line: 341, column: 1, scope: !1197)
!1332 = !DILocation(line: 342, column: 9, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 342, column: 9)
!1334 = !DILocation(line: 342, column: 9, scope: !1197)
!1335 = !DILocation(line: 342, column: 23, scope: !1333)
!1336 = !DILocation(line: 342, column: 15, scope: !1333)
!1337 = !DILocation(line: 343, column: 9, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 343, column: 9)
!1339 = !DILocation(line: 343, column: 9, scope: !1197)
!1340 = !DILocation(line: 343, column: 23, scope: !1338)
!1341 = !DILocation(line: 343, column: 15, scope: !1338)
!1342 = !DILocation(line: 344, column: 9, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 344, column: 9)
!1344 = !DILocation(line: 344, column: 9, scope: !1197)
!1345 = !DILocation(line: 345, column: 9, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 344, column: 20)
!1347 = !DILocation(line: 346, column: 15, scope: !1346)
!1348 = !DILocation(line: 346, column: 9, scope: !1346)
!1349 = !DILocation(line: 347, column: 5, scope: !1346)
!1350 = !DILocation(line: 348, column: 18, scope: !1197)
!1351 = !DILocation(line: 348, column: 23, scope: !1197)
!1352 = !DILocation(line: 348, column: 5, scope: !1197)
!1353 = !DILocation(line: 349, column: 5, scope: !1197)
!1354 = !DILocation(line: 350, column: 1, scope: !1197)
!1355 = distinct !DISubprogram(name: "luaRegisterFunctionReadPositionalArgs", scope: !1, file: !1, line: 352, type: !1138, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1356 = !DILocalVariable(name: "lua", arg: 1, scope: !1355, file: !1, line: 352, type: !122)
!1357 = !DILocation(line: 352, column: 61, scope: !1355)
!1358 = !DILocalVariable(name: "register_f_args", arg: 2, scope: !1355, file: !1, line: 352, type: !1140)
!1359 = !DILocation(line: 352, column: 88, scope: !1355)
!1360 = !DILocalVariable(name: "err", scope: !1355, file: !1, line: 353, type: !169)
!1361 = !DILocation(line: 353, column: 11, scope: !1355)
!1362 = !DILocalVariable(name: "name", scope: !1355, file: !1, line: 354, type: !239)
!1363 = !DILocation(line: 354, column: 9, scope: !1355)
!1364 = !DILocalVariable(name: "desc", scope: !1355, file: !1, line: 355, type: !239)
!1365 = !DILocation(line: 355, column: 9, scope: !1355)
!1366 = !DILocalVariable(name: "lua_f_ctx", scope: !1355, file: !1, line: 356, type: !890)
!1367 = !DILocation(line: 356, column: 21, scope: !1355)
!1368 = !DILocation(line: 357, column: 34, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 357, column: 9)
!1370 = !DILocation(line: 357, column: 18, scope: !1369)
!1371 = !DILocation(line: 357, column: 16, scope: !1369)
!1372 = !DILocation(line: 357, column: 9, scope: !1355)
!1373 = !DILocation(line: 358, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 357, column: 44)
!1375 = !DILocation(line: 359, column: 9, scope: !1374)
!1376 = !DILocation(line: 362, column: 10, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 362, column: 9)
!1378 = !DILocation(line: 362, column: 9, scope: !1355)
!1379 = !DILocation(line: 363, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 362, column: 34)
!1381 = !DILocation(line: 364, column: 9, scope: !1380)
!1382 = !DILocalVariable(name: "lua_function_ref", scope: !1355, file: !1, line: 367, type: !114)
!1383 = !DILocation(line: 367, column: 9, scope: !1355)
!1384 = !DILocation(line: 367, column: 37, scope: !1355)
!1385 = !DILocation(line: 367, column: 28, scope: !1355)
!1386 = !DILocation(line: 369, column: 17, scope: !1355)
!1387 = !DILocation(line: 369, column: 15, scope: !1355)
!1388 = !DILocation(line: 370, column: 35, scope: !1355)
!1389 = !DILocation(line: 370, column: 5, scope: !1355)
!1390 = !DILocation(line: 370, column: 16, scope: !1355)
!1391 = !DILocation(line: 370, column: 33, scope: !1355)
!1392 = !DILocation(line: 372, column: 39, scope: !1355)
!1393 = !DILocation(line: 372, column: 56, scope: !1355)
!1394 = !DILocation(line: 372, column: 68, scope: !1355)
!1395 = !DILocation(line: 372, column: 5, scope: !1355)
!1396 = !DILocation(line: 374, column: 5, scope: !1355)
!1397 = !DILabel(scope: !1355, name: "error", file: !1, line: 376)
!1398 = !DILocation(line: 376, column: 1, scope: !1355)
!1399 = !DILocation(line: 377, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 377, column: 9)
!1401 = !DILocation(line: 377, column: 9, scope: !1355)
!1402 = !DILocation(line: 377, column: 23, scope: !1400)
!1403 = !DILocation(line: 377, column: 15, scope: !1400)
!1404 = !DILocation(line: 378, column: 9, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 378, column: 9)
!1406 = !DILocation(line: 378, column: 9, scope: !1355)
!1407 = !DILocation(line: 378, column: 23, scope: !1405)
!1408 = !DILocation(line: 378, column: 15, scope: !1405)
!1409 = !DILocation(line: 379, column: 18, scope: !1355)
!1410 = !DILocation(line: 379, column: 23, scope: !1355)
!1411 = !DILocation(line: 379, column: 5, scope: !1355)
!1412 = !DILocation(line: 380, column: 5, scope: !1355)
!1413 = !DILocation(line: 381, column: 1, scope: !1355)
!1414 = distinct !DISubprogram(name: "luaRegisterFunctionReadFlags", scope: !1, file: !1, line: 229, type: !1415, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!114, !122, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!1418 = !DILocalVariable(name: "lua", arg: 1, scope: !1414, file: !1, line: 229, type: !122)
!1419 = !DILocation(line: 229, column: 52, scope: !1414)
!1420 = !DILocalVariable(name: "flags", arg: 2, scope: !1414, file: !1, line: 229, type: !1417)
!1421 = !DILocation(line: 229, column: 67, scope: !1414)
!1422 = !DILocalVariable(name: "j", scope: !1414, file: !1, line: 230, type: !114)
!1423 = !DILocation(line: 230, column: 9, scope: !1414)
!1424 = !DILocalVariable(name: "ret", scope: !1414, file: !1, line: 231, type: !114)
!1425 = !DILocation(line: 231, column: 9, scope: !1414)
!1426 = !DILocalVariable(name: "f_flags", scope: !1414, file: !1, line: 232, type: !114)
!1427 = !DILocation(line: 232, column: 9, scope: !1414)
!1428 = !DILocation(line: 233, column: 5, scope: !1414)
!1429 = !DILocation(line: 234, column: 24, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 233, column: 14)
!1431 = !DILocation(line: 234, column: 29, scope: !1430)
!1432 = !DILocation(line: 234, column: 28, scope: !1430)
!1433 = !DILocation(line: 234, column: 9, scope: !1430)
!1434 = !DILocation(line: 235, column: 22, scope: !1430)
!1435 = !DILocation(line: 235, column: 9, scope: !1430)
!1436 = !DILocalVariable(name: "t", scope: !1430, file: !1, line: 236, type: !114)
!1437 = !DILocation(line: 236, column: 13, scope: !1430)
!1438 = !DILocation(line: 236, column: 26, scope: !1430)
!1439 = !DILocation(line: 236, column: 17, scope: !1430)
!1440 = !DILocation(line: 237, column: 13, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 237, column: 13)
!1442 = !DILocation(line: 237, column: 15, scope: !1441)
!1443 = !DILocation(line: 237, column: 13, scope: !1430)
!1444 = !DILocation(line: 238, column: 13, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 237, column: 28)
!1446 = !DILocation(line: 239, column: 13, scope: !1445)
!1447 = !DILocation(line: 241, column: 27, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 241, column: 13)
!1449 = !DILocation(line: 241, column: 14, scope: !1448)
!1450 = !DILocation(line: 241, column: 13, scope: !1430)
!1451 = !DILocation(line: 242, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !1, line: 241, column: 37)
!1453 = !DILocation(line: 243, column: 13, scope: !1452)
!1454 = !DILocalVariable(name: "flag_str", scope: !1430, file: !1, line: 246, type: !409)
!1455 = !DILocation(line: 246, column: 21, scope: !1430)
!1456 = !DILocation(line: 246, column: 32, scope: !1430)
!1457 = !DILocalVariable(name: "found", scope: !1430, file: !1, line: 247, type: !114)
!1458 = !DILocation(line: 247, column: 13, scope: !1430)
!1459 = !DILocalVariable(name: "flag", scope: !1460, file: !1, line: 248, type: !1461)
!1460 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 248, column: 9)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "scriptFlag", file: !849, line: 92, baseType: !1463)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scriptFlag", file: !849, line: 89, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1463, file: !849, line: 90, baseType: !99, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1463, file: !849, line: 91, baseType: !409, size: 64, offset: 64)
!1467 = !DILocation(line: 248, column: 26, scope: !1460)
!1468 = !DILocation(line: 248, column: 14, scope: !1460)
!1469 = !DILocation(line: 248, column: 52, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 248, column: 9)
!1471 = !DILocation(line: 248, column: 58, scope: !1470)
!1472 = !DILocation(line: 248, column: 9, scope: !1460)
!1473 = !DILocation(line: 249, column: 29, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 249, column: 17)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 248, column: 72)
!1476 = !DILocation(line: 249, column: 35, scope: !1474)
!1477 = !DILocation(line: 249, column: 40, scope: !1474)
!1478 = !DILocation(line: 249, column: 18, scope: !1474)
!1479 = !DILocation(line: 249, column: 17, scope: !1475)
!1480 = !DILocation(line: 250, column: 28, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 249, column: 51)
!1482 = !DILocation(line: 250, column: 34, scope: !1481)
!1483 = !DILocation(line: 250, column: 25, scope: !1481)
!1484 = !DILocation(line: 251, column: 23, scope: !1481)
!1485 = !DILocation(line: 252, column: 17, scope: !1481)
!1486 = !DILocation(line: 254, column: 9, scope: !1475)
!1487 = !DILocation(line: 248, column: 64, scope: !1470)
!1488 = !DILocation(line: 248, column: 9, scope: !1470)
!1489 = distinct !{!1489, !1472, !1490, !1286}
!1490 = !DILocation(line: 254, column: 9, scope: !1460)
!1491 = !DILocation(line: 256, column: 9, scope: !1430)
!1492 = !DILocation(line: 257, column: 14, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1430, file: !1, line: 257, column: 13)
!1494 = !DILocation(line: 257, column: 13, scope: !1430)
!1495 = !DILocation(line: 259, column: 13, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 257, column: 21)
!1497 = distinct !{!1497, !1428, !1498}
!1498 = !DILocation(line: 261, column: 5, scope: !1414)
!1499 = !DILocation(line: 263, column: 14, scope: !1414)
!1500 = !DILocation(line: 263, column: 6, scope: !1414)
!1501 = !DILocation(line: 263, column: 12, scope: !1414)
!1502 = !DILocation(line: 264, column: 9, scope: !1414)
!1503 = !DILocation(line: 264, column: 5, scope: !1414)
!1504 = !DILabel(scope: !1414, name: "done", file: !1, line: 266)
!1505 = !DILocation(line: 266, column: 1, scope: !1414)
!1506 = !DILocation(line: 267, column: 12, scope: !1414)
!1507 = !DILocation(line: 267, column: 5, scope: !1414)
!1508 = distinct !DISubprogram(name: "luaRegisterFunctionArgsInitialize", scope: !1, file: !1, line: 205, type: !1509, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{null, !1140, !239, !239, !890, !99}
!1511 = !DILocalVariable(name: "register_f_args", arg: 1, scope: !1508, file: !1, line: 205, type: !1140)
!1512 = !DILocation(line: 205, column: 69, scope: !1508)
!1513 = !DILocalVariable(name: "name", arg: 2, scope: !1508, file: !1, line: 206, type: !239)
!1514 = !DILocation(line: 206, column: 9, scope: !1508)
!1515 = !DILocalVariable(name: "desc", arg: 3, scope: !1508, file: !1, line: 207, type: !239)
!1516 = !DILocation(line: 207, column: 9, scope: !1508)
!1517 = !DILocalVariable(name: "lua_f_ctx", arg: 4, scope: !1508, file: !1, line: 208, type: !890)
!1518 = !DILocation(line: 208, column: 21, scope: !1508)
!1519 = !DILocalVariable(name: "flags", arg: 5, scope: !1508, file: !1, line: 209, type: !99)
!1520 = !DILocation(line: 209, column: 14, scope: !1508)
!1521 = !DILocation(line: 211, column: 6, scope: !1508)
!1522 = !DILocation(line: 211, column: 46, scope: !1508)
!1523 = !DILocation(line: 212, column: 17, scope: !1508)
!1524 = !DILocation(line: 213, column: 17, scope: !1508)
!1525 = !DILocation(line: 214, column: 22, scope: !1508)
!1526 = !DILocation(line: 215, column: 20, scope: !1508)
!1527 = !DILocation(line: 211, column: 24, scope: !1508)
!1528 = !DILocation(line: 217, column: 1, scope: !1508)
!1529 = distinct !DISubprogram(name: "sdslen", scope: !61, file: !61, line: 87, type: !1530, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!275, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1533 = !DILocalVariable(name: "s", arg: 1, scope: !1529, file: !61, line: 87, type: !1532)
!1534 = !DILocation(line: 87, column: 39, scope: !1529)
!1535 = !DILocalVariable(name: "flags", scope: !1529, file: !61, line: 88, type: !68)
!1536 = !DILocation(line: 88, column: 19, scope: !1529)
!1537 = !DILocation(line: 88, column: 27, scope: !1529)
!1538 = !DILocation(line: 89, column: 12, scope: !1529)
!1539 = !DILocation(line: 89, column: 17, scope: !1529)
!1540 = !DILocation(line: 89, column: 5, scope: !1529)
!1541 = !DILocation(line: 91, column: 20, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1529, file: !61, line: 89, column: 33)
!1543 = !DILocation(line: 91, column: 13, scope: !1542)
!1544 = !DILocation(line: 93, column: 20, scope: !1542)
!1545 = !DILocation(line: 93, column: 34, scope: !1542)
!1546 = !DILocation(line: 93, column: 13, scope: !1542)
!1547 = !DILocation(line: 95, column: 20, scope: !1542)
!1548 = !DILocation(line: 95, column: 35, scope: !1542)
!1549 = !DILocation(line: 95, column: 13, scope: !1542)
!1550 = !DILocation(line: 97, column: 20, scope: !1542)
!1551 = !DILocation(line: 97, column: 35, scope: !1542)
!1552 = !DILocation(line: 97, column: 13, scope: !1542)
!1553 = !DILocation(line: 99, column: 20, scope: !1542)
!1554 = !DILocation(line: 99, column: 35, scope: !1542)
!1555 = !DILocation(line: 99, column: 13, scope: !1542)
!1556 = !DILocation(line: 101, column: 5, scope: !1529)
!1557 = !DILocation(line: 102, column: 1, scope: !1529)
!1558 = distinct !DISubprogram(name: "luaEngineLoadHook", scope: !1, file: !1, line: 83, type: !1559, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !122, !1561}
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !124, line: 326, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !124, line: 346, size: 960, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1578}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1563, file: !124, line: 347, baseType: !114, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1563, file: !124, line: 348, baseType: !409, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !1563, file: !124, line: 349, baseType: !409, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !1563, file: !124, line: 350, baseType: !409, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !1563, file: !124, line: 351, baseType: !409, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !1563, file: !124, line: 352, baseType: !114, size: 32, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !1563, file: !124, line: 353, baseType: !114, size: 32, offset: 352)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !1563, file: !124, line: 354, baseType: !114, size: 32, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !1563, file: !124, line: 355, baseType: !114, size: 32, offset: 416)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !1563, file: !124, line: 356, baseType: !1575, size: 480, offset: 448)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 480, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 60)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !1563, file: !124, line: 358, baseType: !114, size: 32, offset: 928)
!1579 = !DILocalVariable(name: "lua", arg: 1, scope: !1558, file: !1, line: 83, type: !122)
!1580 = !DILocation(line: 83, column: 42, scope: !1558)
!1581 = !DILocalVariable(name: "ar", arg: 2, scope: !1558, file: !1, line: 83, type: !1561)
!1582 = !DILocation(line: 83, column: 58, scope: !1558)
!1583 = !DILocation(line: 84, column: 5, scope: !1558)
!1584 = !DILocalVariable(name: "load_ctx", scope: !1558, file: !1, line: 85, type: !898)
!1585 = !DILocation(line: 85, column: 14, scope: !1558)
!1586 = !DILocation(line: 85, column: 44, scope: !1558)
!1587 = !DILocation(line: 85, column: 25, scope: !1558)
!1588 = !DILocalVariable(name: "duration", scope: !1558, file: !1, line: 86, type: !99)
!1589 = !DILocation(line: 86, column: 14, scope: !1558)
!1590 = !DILocation(line: 86, column: 35, scope: !1558)
!1591 = !DILocation(line: 86, column: 45, scope: !1558)
!1592 = !DILocation(line: 86, column: 25, scope: !1558)
!1593 = !DILocation(line: 87, column: 9, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 87, column: 9)
!1595 = !DILocation(line: 87, column: 18, scope: !1594)
!1596 = !DILocation(line: 87, column: 9, scope: !1558)
!1597 = !DILocation(line: 88, column: 21, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 87, column: 37)
!1599 = !DILocation(line: 88, column: 9, scope: !1598)
!1600 = !DILocation(line: 90, column: 22, scope: !1598)
!1601 = !DILocation(line: 90, column: 9, scope: !1598)
!1602 = !DILocation(line: 91, column: 18, scope: !1598)
!1603 = !DILocation(line: 91, column: 9, scope: !1598)
!1604 = !DILocation(line: 92, column: 5, scope: !1598)
!1605 = !DILocation(line: 93, column: 1, scope: !1558)
!1606 = distinct !DISubprogram(name: "elapsedMs", scope: !379, file: !379, line: 57, type: !1607, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!99, !378}
!1609 = !DILocalVariable(name: "start_time", arg: 1, scope: !1606, file: !379, line: 57, type: !378)
!1610 = !DILocation(line: 57, column: 43, scope: !1606)
!1611 = !DILocation(line: 58, column: 22, scope: !1606)
!1612 = !DILocation(line: 58, column: 12, scope: !1606)
!1613 = !DILocation(line: 58, column: 34, scope: !1606)
!1614 = !DILocation(line: 58, column: 5, scope: !1606)
!1615 = distinct !DISubprogram(name: "elapsedUs", scope: !379, file: !379, line: 53, type: !1607, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !115)
!1616 = !DILocalVariable(name: "start_time", arg: 1, scope: !1615, file: !379, line: 53, type: !378)
!1617 = !DILocation(line: 53, column: 43, scope: !1615)
!1618 = !DILocation(line: 54, column: 12, scope: !1615)
!1619 = !DILocation(line: 54, column: 31, scope: !1615)
!1620 = !DILocation(line: 54, column: 29, scope: !1615)
!1621 = !DILocation(line: 54, column: 5, scope: !1615)
