; ModuleID = 'geo.c'
source_filename = "geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], [4 x %struct.redisObject*], %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i64, i8*, i8*, i8**, i32, i32, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, %struct.rax*, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i32, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i32, i32, i64, %struct.dict*, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, i32, i32, i32, [16 x i8*], i32, i8*, i8*, i32, %struct.socketFds, %struct.socketFds, i32, i32, %struct.socketFds, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.clientMemUsageBucket*, %struct.rax*, i64, i32, %struct.rax*, i32, %struct.list*, i64, [3 x %struct.pause_event*], [256 x i8], %struct.dict*, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, i64, i64, i64, i64, [5 x %struct.anon.7], i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i8*, [3 x %struct.clientBufferLimitsConfig], i32, i32, double*, i32, i32, i32, i32, i8*, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aofManifest*, i32, i64, i64, i64, i64, %struct.saveparam*, i32, i8*, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.connection**, i32, i32, i8*, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, %struct.replBacklog*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.list*, i8*, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, %struct.connection*, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i32, i32, [41 x i8], i64, i32, %struct.list*, i32, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [8 x i32], %struct.list*, %struct.list*, i32, i64, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i64, i64, %struct.dict*, %struct.dict*, i32, %struct.dict*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.client*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i64, i8*, i32, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, i8*, i8*, i8*, i8*, %struct.sentinelConfig*, i64, i32, i8*, i32, i32, i32, i64, i32 }
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
%struct.anon.7 = type { i64, i64, [16 x i64], i32 }
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
%struct.geoArray = type { %struct.geoPoint*, i64, i64 }
%struct.geoPoint = type { double, double, double, double, i8* }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoShape = type { i32, [2 x double], double, [4 x double], %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { double, double }
%struct.zrangespec = type { double, double, i32, i32 }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.GeoHashRadius = type { %struct.GeoHashBits, %struct.GeoHashArea, %struct.GeoHashNeighbors }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashRange = type { double, double }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@.str = private unnamed_addr constant [45 x i8] c"-ERR invalid longitude,latitude pair %f,%f\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"km\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"unsupported unit provided. please use M, KM, FT, MI\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"need numeric radius\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"radius cannot be negative\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"need numeric width\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"need numeric height\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"height or width cannot be negative\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"/tmp/log.txt\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s:%s:%d:\09\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"geo.c\00", align 1
@__func__.membersOfAllNeighbors = private unnamed_addr constant [22 x i8] c"membersOfAllNeighbors\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"neighbors[%d] is zero\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"neighbors[%d]:\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"area.longitude.min: %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"area.longitude.max: %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"area.latitude.min: %f\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"area.latitude.max: %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Skipping processing of %d, same as previous\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@shared = external dso_local global %struct.sharedObjectsStruct, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"zadd\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"could not decode requested zset member\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Unknown georadius search type\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"withdist\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"withhash\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"withcoord\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"asc\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"COUNT must be > 0\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"storedist\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"frommember\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"fromlonlat\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"byradius\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"bybox\00", align 1
@.str.43 = private unnamed_addr constant [67 x i8] c"%s is not compatible with WITHDIST, WITHHASH and WITHCOORD options\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"GEOSEARCHSTORE\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"STORE option in GEORADIUS\00", align 1
@.str.46 = private unnamed_addr constant [64 x i8] c"exactly one of FROMMEMBER or FROMLONLAT can be specified for %s\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"exactly one of BYRADIUS and BYBOX can be specified for %s\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"the ANY argument requires COUNT argument\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.50 = private unnamed_addr constant [54 x i8] c"dictAdd(zs->dict,gp->member,&znode->score) == DICT_OK\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"geosearchstore\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"georadiusstore\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"0123456789bcdefghjkmnpqrstuvwxyz\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.geoArray* @geoArrayCreate() #0 !dbg !112 {
entry:
  %ga = alloca %struct.geoArray*, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga, metadata !135, metadata !DIExpression()), !dbg !136
  %call = call i8* @zmalloc(i64 24), !dbg !137
  %0 = bitcast i8* %call to %struct.geoArray*, !dbg !137
  store %struct.geoArray* %0, %struct.geoArray** %ga, align 8, !dbg !136
  %1 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !138
  %array = getelementptr inbounds %struct.geoArray, %struct.geoArray* %1, i32 0, i32 0, !dbg !139
  store %struct.geoPoint* null, %struct.geoPoint** %array, align 8, !dbg !140
  %2 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !141
  %buckets = getelementptr inbounds %struct.geoArray, %struct.geoArray* %2, i32 0, i32 1, !dbg !142
  store i64 0, i64* %buckets, align 8, !dbg !143
  %3 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !144
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %3, i32 0, i32 2, !dbg !145
  store i64 0, i64* %used, align 8, !dbg !146
  %4 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !147
  ret %struct.geoArray* %4, !dbg !148
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @zmalloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.geoPoint* @geoArrayAppend(%struct.geoArray* %ga, double* %xy, double %dist, double %score, i8* %member) #0 !dbg !149 {
entry:
  %ga.addr = alloca %struct.geoArray*, align 8
  %xy.addr = alloca double*, align 8
  %dist.addr = alloca double, align 8
  %score.addr = alloca double, align 8
  %member.addr = alloca i8*, align 8
  %gp = alloca %struct.geoPoint*, align 8
  store %struct.geoArray* %ga, %struct.geoArray** %ga.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store double %dist, double* %dist.addr, align 8
  call void @llvm.dbg.declare(metadata double* %dist.addr, metadata !159, metadata !DIExpression()), !dbg !160
  store double %score, double* %score.addr, align 8
  call void @llvm.dbg.declare(metadata double* %score.addr, metadata !161, metadata !DIExpression()), !dbg !162
  store i8* %member, i8** %member.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %member.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !165
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %0, i32 0, i32 2, !dbg !167
  %1 = load i64, i64* %used, align 8, !dbg !167
  %2 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !168
  %buckets = getelementptr inbounds %struct.geoArray, %struct.geoArray* %2, i32 0, i32 1, !dbg !169
  %3 = load i64, i64* %buckets, align 8, !dbg !169
  %cmp = icmp eq i64 %1, %3, !dbg !170
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %4 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !172
  %buckets1 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %4, i32 0, i32 1, !dbg !174
  %5 = load i64, i64* %buckets1, align 8, !dbg !174
  %cmp2 = icmp eq i64 %5, 0, !dbg !175
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !176

cond.true:                                        ; preds = %if.then
  br label %cond.end, !dbg !176

cond.false:                                       ; preds = %if.then
  %6 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !177
  %buckets3 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %6, i32 0, i32 1, !dbg !178
  %7 = load i64, i64* %buckets3, align 8, !dbg !178
  %mul = mul i64 %7, 2, !dbg !179
  br label %cond.end, !dbg !176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8, %cond.true ], [ %mul, %cond.false ], !dbg !176
  %8 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !180
  %buckets4 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %8, i32 0, i32 1, !dbg !181
  store i64 %cond, i64* %buckets4, align 8, !dbg !182
  %9 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !183
  %array = getelementptr inbounds %struct.geoArray, %struct.geoArray* %9, i32 0, i32 0, !dbg !184
  %10 = load %struct.geoPoint*, %struct.geoPoint** %array, align 8, !dbg !184
  %11 = bitcast %struct.geoPoint* %10 to i8*, !dbg !183
  %12 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !185
  %buckets5 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %12, i32 0, i32 1, !dbg !186
  %13 = load i64, i64* %buckets5, align 8, !dbg !186
  %mul6 = mul i64 40, %13, !dbg !187
  %call = call i8* @zrealloc(i8* %11, i64 %mul6), !dbg !188
  %14 = bitcast i8* %call to %struct.geoPoint*, !dbg !188
  %15 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !189
  %array7 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %15, i32 0, i32 0, !dbg !190
  store %struct.geoPoint* %14, %struct.geoPoint** %array7, align 8, !dbg !191
  br label %if.end, !dbg !192

if.end:                                           ; preds = %cond.end, %entry
  call void @llvm.dbg.declare(metadata %struct.geoPoint** %gp, metadata !193, metadata !DIExpression()), !dbg !194
  %16 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !195
  %array8 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %16, i32 0, i32 0, !dbg !196
  %17 = load %struct.geoPoint*, %struct.geoPoint** %array8, align 8, !dbg !196
  %18 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !197
  %used9 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %18, i32 0, i32 2, !dbg !198
  %19 = load i64, i64* %used9, align 8, !dbg !198
  %add.ptr = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %17, i64 %19, !dbg !199
  store %struct.geoPoint* %add.ptr, %struct.geoPoint** %gp, align 8, !dbg !194
  %20 = load double*, double** %xy.addr, align 8, !dbg !200
  %arrayidx = getelementptr inbounds double, double* %20, i64 0, !dbg !200
  %21 = load double, double* %arrayidx, align 8, !dbg !200
  %22 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !201
  %longitude = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %22, i32 0, i32 0, !dbg !202
  store double %21, double* %longitude, align 8, !dbg !203
  %23 = load double*, double** %xy.addr, align 8, !dbg !204
  %arrayidx10 = getelementptr inbounds double, double* %23, i64 1, !dbg !204
  %24 = load double, double* %arrayidx10, align 8, !dbg !204
  %25 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !205
  %latitude = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %25, i32 0, i32 1, !dbg !206
  store double %24, double* %latitude, align 8, !dbg !207
  %26 = load double, double* %dist.addr, align 8, !dbg !208
  %27 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !209
  %dist11 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %27, i32 0, i32 2, !dbg !210
  store double %26, double* %dist11, align 8, !dbg !211
  %28 = load i8*, i8** %member.addr, align 8, !dbg !212
  %29 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !213
  %member12 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %29, i32 0, i32 4, !dbg !214
  store i8* %28, i8** %member12, align 8, !dbg !215
  %30 = load double, double* %score.addr, align 8, !dbg !216
  %31 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !217
  %score13 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %31, i32 0, i32 3, !dbg !218
  store double %30, double* %score13, align 8, !dbg !219
  %32 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !220
  %used14 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %32, i32 0, i32 2, !dbg !221
  %33 = load i64, i64* %used14, align 8, !dbg !222
  %inc = add i64 %33, 1, !dbg !222
  store i64 %inc, i64* %used14, align 8, !dbg !222
  %34 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !223
  ret %struct.geoPoint* %34, !dbg !224
}

declare dso_local i8* @zrealloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @geoArrayFree(%struct.geoArray* %ga) #0 !dbg !225 {
entry:
  %ga.addr = alloca %struct.geoArray*, align 8
  %i = alloca i64, align 8
  store %struct.geoArray* %ga, %struct.geoArray** %ga.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga.addr, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i64* %i, metadata !230, metadata !DIExpression()), !dbg !231
  store i64 0, i64* %i, align 8, !dbg !232
  br label %for.cond, !dbg !234

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !235
  %1 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !237
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %1, i32 0, i32 2, !dbg !238
  %2 = load i64, i64* %used, align 8, !dbg !238
  %cmp = icmp ult i64 %0, %2, !dbg !239
  br i1 %cmp, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %3 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !241
  %array = getelementptr inbounds %struct.geoArray, %struct.geoArray* %3, i32 0, i32 0, !dbg !242
  %4 = load %struct.geoPoint*, %struct.geoPoint** %array, align 8, !dbg !242
  %5 = load i64, i64* %i, align 8, !dbg !243
  %arrayidx = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %4, i64 %5, !dbg !241
  %member = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %arrayidx, i32 0, i32 4, !dbg !244
  %6 = load i8*, i8** %member, align 8, !dbg !244
  call void @sdsfree(i8* %6), !dbg !245
  br label %for.inc, !dbg !245

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8, !dbg !246
  %inc = add i64 %7, 1, !dbg !246
  store i64 %inc, i64* %i, align 8, !dbg !246
  br label %for.cond, !dbg !247, !llvm.loop !248

for.end:                                          ; preds = %for.cond
  %8 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !251
  %array1 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %8, i32 0, i32 0, !dbg !252
  %9 = load %struct.geoPoint*, %struct.geoPoint** %array1, align 8, !dbg !252
  %10 = bitcast %struct.geoPoint* %9 to i8*, !dbg !251
  call void @zfree(i8* %10), !dbg !253
  %11 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !254
  %12 = bitcast %struct.geoArray* %11 to i8*, !dbg !254
  call void @zfree(i8* %12), !dbg !255
  ret void, !dbg !256
}

declare dso_local void @sdsfree(i8*) #2

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decodeGeohash(double %bits, double* %xy) #0 !dbg !257 {
entry:
  %bits.addr = alloca double, align 8
  %xy.addr = alloca double*, align 8
  %hash = alloca %struct.GeoHashBits, align 8
  store double %bits, double* %bits.addr, align 8
  call void @llvm.dbg.declare(metadata double* %bits.addr, metadata !261, metadata !DIExpression()), !dbg !262
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !265, metadata !DIExpression()), !dbg !272
  %bits1 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !273
  %0 = load double, double* %bits.addr, align 8, !dbg !274
  %conv = fptoui double %0 to i64, !dbg !275
  store i64 %conv, i64* %bits1, align 8, !dbg !273
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 1, !dbg !273
  store i8 26, i8* %step, align 8, !dbg !273
  %1 = load double*, double** %xy.addr, align 8, !dbg !276
  %2 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !277
  %3 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %2, i32 0, i32 0, !dbg !277
  %4 = load i64, i64* %3, align 8, !dbg !277
  %5 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %2, i32 0, i32 1, !dbg !277
  %6 = load i8, i8* %5, align 8, !dbg !277
  %call = call i32 @geohashDecodeToLongLatWGS84(i64 %4, i8 %6, double* %1), !dbg !277
  ret i32 %call, !dbg !278
}

declare dso_local i32 @geohashDecodeToLongLatWGS84(i64, i8, double*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extractLongLatOrReply(%struct.client* %c, %struct.redisObject** %argv, double* %xy) #0 !dbg !279 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %argv.addr = alloca %struct.redisObject**, align 8
  %xy.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !872, metadata !DIExpression()), !dbg !873
  store %struct.redisObject** %argv, %struct.redisObject*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv.addr, metadata !874, metadata !DIExpression()), !dbg !875
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.declare(metadata i32* %i, metadata !878, metadata !DIExpression()), !dbg !879
  store i32 0, i32* %i, align 4, !dbg !880
  br label %for.cond, !dbg !882

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !883
  %cmp = icmp slt i32 %0, 2, !dbg !885
  br i1 %cmp, label %for.body, label %for.end, !dbg !886

for.body:                                         ; preds = %for.cond
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !887
  %2 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !890
  %3 = load i32, i32* %i, align 4, !dbg !891
  %idxprom = sext i32 %3 to i64, !dbg !890
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %idxprom, !dbg !890
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !890
  %5 = load double*, double** %xy.addr, align 8, !dbg !892
  %6 = load i32, i32* %i, align 4, !dbg !893
  %idx.ext = sext i32 %6 to i64, !dbg !894
  %add.ptr = getelementptr inbounds double, double* %5, i64 %idx.ext, !dbg !894
  %call = call i32 @getDoubleFromObjectOrReply(%struct.client* %1, %struct.redisObject* %4, double* %add.ptr, i8* null), !dbg !895
  %cmp1 = icmp ne i32 %call, 0, !dbg !896
  br i1 %cmp1, label %if.then, label %if.end, !dbg !897

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4, !dbg !898
  br label %return, !dbg !898

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !900

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !dbg !901
  %inc = add nsw i32 %7, 1, !dbg !901
  store i32 %inc, i32* %i, align 4, !dbg !901
  br label %for.cond, !dbg !902, !llvm.loop !903

for.end:                                          ; preds = %for.cond
  %8 = load double*, double** %xy.addr, align 8, !dbg !905
  %arrayidx2 = getelementptr inbounds double, double* %8, i64 0, !dbg !905
  %9 = load double, double* %arrayidx2, align 8, !dbg !905
  %cmp3 = fcmp olt double %9, -1.800000e+02, !dbg !907
  br i1 %cmp3, label %if.then12, label %lor.lhs.false, !dbg !908

lor.lhs.false:                                    ; preds = %for.end
  %10 = load double*, double** %xy.addr, align 8, !dbg !909
  %arrayidx4 = getelementptr inbounds double, double* %10, i64 0, !dbg !909
  %11 = load double, double* %arrayidx4, align 8, !dbg !909
  %cmp5 = fcmp ogt double %11, 1.800000e+02, !dbg !910
  br i1 %cmp5, label %if.then12, label %lor.lhs.false6, !dbg !911

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = load double*, double** %xy.addr, align 8, !dbg !912
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 1, !dbg !912
  %13 = load double, double* %arrayidx7, align 8, !dbg !912
  %cmp8 = fcmp olt double %13, 0xC0554345B1A57F00, !dbg !913
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9, !dbg !914

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %14 = load double*, double** %xy.addr, align 8, !dbg !915
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 1, !dbg !915
  %15 = load double, double* %arrayidx10, align 8, !dbg !915
  %cmp11 = fcmp ogt double %15, 0x40554345B1A57F00, !dbg !916
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !917

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %for.end
  %16 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !918
  %17 = load double*, double** %xy.addr, align 8, !dbg !920
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 0, !dbg !920
  %18 = load double, double* %arrayidx13, align 8, !dbg !920
  %19 = load double*, double** %xy.addr, align 8, !dbg !921
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 1, !dbg !921
  %20 = load double, double* %arrayidx14, align 8, !dbg !921
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), double %18, double %20), !dbg !922
  store i32 -1, i32* %retval, align 4, !dbg !923
  br label %return, !dbg !923

if.end15:                                         ; preds = %lor.lhs.false9
  store i32 0, i32* %retval, align 4, !dbg !924
  br label %return, !dbg !924

return:                                           ; preds = %if.end15, %if.then12, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !925
  ret i32 %21, !dbg !925
}

declare dso_local i32 @getDoubleFromObjectOrReply(%struct.client*, %struct.redisObject*, double*, i8*) #2

declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @longLatFromMember(%struct.redisObject* %zobj, %struct.redisObject* %member, double* %xy) #0 !dbg !926 {
entry:
  %retval = alloca i32, align 4
  %zobj.addr = alloca %struct.redisObject*, align 8
  %member.addr = alloca %struct.redisObject*, align 8
  %xy.addr = alloca double*, align 8
  %score = alloca double, align 8
  store %struct.redisObject* %zobj, %struct.redisObject** %zobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj.addr, metadata !929, metadata !DIExpression()), !dbg !930
  store %struct.redisObject* %member, %struct.redisObject** %member.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %member.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata double* %score, metadata !935, metadata !DIExpression()), !dbg !936
  store double 0.000000e+00, double* %score, align 8, !dbg !936
  %0 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !937
  %1 = load %struct.redisObject*, %struct.redisObject** %member.addr, align 8, !dbg !939
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i32 0, i32 2, !dbg !940
  %2 = load i8*, i8** %ptr, align 8, !dbg !940
  %call = call i32 @zsetScore(%struct.redisObject* %0, i8* %2, double* %score), !dbg !941
  %cmp = icmp eq i32 %call, -1, !dbg !942
  br i1 %cmp, label %if.then, label %if.end, !dbg !943

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !944
  br label %return, !dbg !944

if.end:                                           ; preds = %entry
  %3 = load double, double* %score, align 8, !dbg !945
  %4 = load double*, double** %xy.addr, align 8, !dbg !947
  %call1 = call i32 @decodeGeohash(double %3, double* %4), !dbg !948
  %tobool = icmp ne i32 %call1, 0, !dbg !948
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !949

if.then2:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !950
  br label %return, !dbg !950

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !951
  br label %return, !dbg !951

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !952
  ret i32 %5, !dbg !952
}

declare dso_local i32 @zsetScore(%struct.redisObject*, i8*, double*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @extractUnitOrReply(%struct.client* %c, %struct.redisObject* %unit) #0 !dbg !953 {
entry:
  %retval = alloca double, align 8
  %c.addr = alloca %struct.client*, align 8
  %unit.addr = alloca %struct.redisObject*, align 8
  %u = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store %struct.redisObject* %unit, %struct.redisObject** %unit.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %unit.addr, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata i8** %u, metadata !960, metadata !DIExpression()), !dbg !961
  %0 = load %struct.redisObject*, %struct.redisObject** %unit.addr, align 8, !dbg !962
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i32 0, i32 2, !dbg !963
  %1 = load i8*, i8** %ptr, align 8, !dbg !963
  store i8* %1, i8** %u, align 8, !dbg !961
  %2 = load i8*, i8** %u, align 8, !dbg !964
  %call = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !966
  %tobool = icmp ne i32 %call, 0, !dbg !966
  br i1 %tobool, label %if.else, label %if.then, !dbg !967

if.then:                                          ; preds = %entry
  store double 1.000000e+00, double* %retval, align 8, !dbg !968
  br label %return, !dbg !968

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %u, align 8, !dbg !970
  %call1 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !972
  %tobool2 = icmp ne i32 %call1, 0, !dbg !972
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !973

if.then3:                                         ; preds = %if.else
  store double 1.000000e+03, double* %retval, align 8, !dbg !974
  br label %return, !dbg !974

if.else4:                                         ; preds = %if.else
  %4 = load i8*, i8** %u, align 8, !dbg !976
  %call5 = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !978
  %tobool6 = icmp ne i32 %call5, 0, !dbg !978
  br i1 %tobool6, label %if.else8, label %if.then7, !dbg !979

if.then7:                                         ; preds = %if.else4
  store double 3.048000e-01, double* %retval, align 8, !dbg !980
  br label %return, !dbg !980

if.else8:                                         ; preds = %if.else4
  %5 = load i8*, i8** %u, align 8, !dbg !982
  %call9 = call i32 @strcasecmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !984
  %tobool10 = icmp ne i32 %call9, 0, !dbg !984
  br i1 %tobool10, label %if.else12, label %if.then11, !dbg !985

if.then11:                                        ; preds = %if.else8
  store double 1.609340e+03, double* %retval, align 8, !dbg !986
  br label %return, !dbg !986

if.else12:                                        ; preds = %if.else8
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !988
  call void @addReplyError(%struct.client* %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0)), !dbg !990
  store double -1.000000e+00, double* %retval, align 8, !dbg !991
  br label %return, !dbg !991

return:                                           ; preds = %if.else12, %if.then11, %if.then7, %if.then3, %if.then
  %7 = load double, double* %retval, align 8, !dbg !992
  ret double %7, !dbg !992
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local void @addReplyError(%struct.client*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extractDistanceOrReply(%struct.client* %c, %struct.redisObject** %argv, double* %conversion, double* %radius) #0 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %argv.addr = alloca %struct.redisObject**, align 8
  %conversion.addr = alloca double*, align 8
  %radius.addr = alloca double*, align 8
  %distance = alloca double, align 8
  %to_meters = alloca double, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !996, metadata !DIExpression()), !dbg !997
  store %struct.redisObject** %argv, %struct.redisObject*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv.addr, metadata !998, metadata !DIExpression()), !dbg !999
  store double* %conversion, double** %conversion.addr, align 8
  call void @llvm.dbg.declare(metadata double** %conversion.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  store double* %radius, double** %radius.addr, align 8
  call void @llvm.dbg.declare(metadata double** %radius.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata double* %distance, metadata !1004, metadata !DIExpression()), !dbg !1005
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1006
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1008
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 0, !dbg !1008
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1008
  %call = call i32 @getDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %2, double* %distance, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)), !dbg !1009
  %cmp = icmp ne i32 %call, 0, !dbg !1010
  br i1 %cmp, label %if.then, label %if.end, !dbg !1011

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

if.end:                                           ; preds = %entry
  %3 = load double, double* %distance, align 8, !dbg !1014
  %cmp1 = fcmp olt double %3, 0.000000e+00, !dbg !1016
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1017

if.then2:                                         ; preds = %if.end
  %4 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1018
  call void @addReplyError(%struct.client* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)), !dbg !1020
  store i32 -1, i32* %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

if.end3:                                          ; preds = %if.end
  %5 = load double*, double** %radius.addr, align 8, !dbg !1022
  %tobool = icmp ne double* %5, null, !dbg !1022
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !1024

if.then4:                                         ; preds = %if.end3
  %6 = load double, double* %distance, align 8, !dbg !1025
  %7 = load double*, double** %radius.addr, align 8, !dbg !1026
  store double %6, double* %7, align 8, !dbg !1027
  br label %if.end5, !dbg !1028

if.end5:                                          ; preds = %if.then4, %if.end3
  call void @llvm.dbg.declare(metadata double* %to_meters, metadata !1029, metadata !DIExpression()), !dbg !1030
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1031
  %9 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1032
  %arrayidx6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %9, i64 1, !dbg !1032
  %10 = load %struct.redisObject*, %struct.redisObject** %arrayidx6, align 8, !dbg !1032
  %call7 = call double @extractUnitOrReply(%struct.client* %8, %struct.redisObject* %10), !dbg !1033
  store double %call7, double* %to_meters, align 8, !dbg !1030
  %11 = load double, double* %to_meters, align 8, !dbg !1034
  %cmp8 = fcmp olt double %11, 0.000000e+00, !dbg !1036
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1037

if.then9:                                         ; preds = %if.end5
  store i32 -1, i32* %retval, align 4, !dbg !1038
  br label %return, !dbg !1038

if.end10:                                         ; preds = %if.end5
  %12 = load double*, double** %conversion.addr, align 8, !dbg !1040
  %tobool11 = icmp ne double* %12, null, !dbg !1040
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1042

if.then12:                                        ; preds = %if.end10
  %13 = load double, double* %to_meters, align 8, !dbg !1043
  %14 = load double*, double** %conversion.addr, align 8, !dbg !1044
  store double %13, double* %14, align 8, !dbg !1045
  br label %if.end13, !dbg !1046

if.end13:                                         ; preds = %if.then12, %if.end10
  store i32 0, i32* %retval, align 4, !dbg !1047
  br label %return, !dbg !1047

return:                                           ; preds = %if.end13, %if.then9, %if.then2, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !1048
  ret i32 %15, !dbg !1048
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extractBoxOrReply(%struct.client* %c, %struct.redisObject** %argv, double* %conversion, double* %width, double* %height) #0 !dbg !1049 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.client*, align 8
  %argv.addr = alloca %struct.redisObject**, align 8
  %conversion.addr = alloca double*, align 8
  %width.addr = alloca double*, align 8
  %height.addr = alloca double*, align 8
  %h = alloca double, align 8
  %w = alloca double, align 8
  %to_meters = alloca double, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1052, metadata !DIExpression()), !dbg !1053
  store %struct.redisObject** %argv, %struct.redisObject*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  store double* %conversion, double** %conversion.addr, align 8
  call void @llvm.dbg.declare(metadata double** %conversion.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  store double* %width, double** %width.addr, align 8
  call void @llvm.dbg.declare(metadata double** %width.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  store double* %height, double** %height.addr, align 8
  call void @llvm.dbg.declare(metadata double** %height.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.declare(metadata double* %h, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata double* %w, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1066
  %1 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1068
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %1, i64 0, !dbg !1068
  %2 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1068
  %call = call i32 @getDoubleFromObjectOrReply(%struct.client* %0, %struct.redisObject* %2, double* %w, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0)), !dbg !1069
  %cmp = icmp ne i32 %call, 0, !dbg !1070
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1071

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1072
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1073
  %arrayidx1 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 1, !dbg !1073
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx1, align 8, !dbg !1073
  %call2 = call i32 @getDoubleFromObjectOrReply(%struct.client* %3, %struct.redisObject* %5, double* %h, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0)), !dbg !1074
  %cmp3 = icmp ne i32 %call2, 0, !dbg !1075
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1076

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !1077
  br label %return, !dbg !1077

if.end:                                           ; preds = %lor.lhs.false
  %6 = load double, double* %h, align 8, !dbg !1079
  %cmp4 = fcmp olt double %6, 0.000000e+00, !dbg !1081
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !1082

lor.lhs.false5:                                   ; preds = %if.end
  %7 = load double, double* %w, align 8, !dbg !1083
  %cmp6 = fcmp olt double %7, 0.000000e+00, !dbg !1084
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !1085

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1086
  call void @addReplyError(%struct.client* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0)), !dbg !1088
  store i32 -1, i32* %retval, align 4, !dbg !1089
  br label %return, !dbg !1089

if.end8:                                          ; preds = %lor.lhs.false5
  %9 = load double*, double** %height.addr, align 8, !dbg !1090
  %tobool = icmp ne double* %9, null, !dbg !1090
  br i1 %tobool, label %if.then9, label %if.end10, !dbg !1092

if.then9:                                         ; preds = %if.end8
  %10 = load double, double* %h, align 8, !dbg !1093
  %11 = load double*, double** %height.addr, align 8, !dbg !1094
  store double %10, double* %11, align 8, !dbg !1095
  br label %if.end10, !dbg !1096

if.end10:                                         ; preds = %if.then9, %if.end8
  %12 = load double*, double** %width.addr, align 8, !dbg !1097
  %tobool11 = icmp ne double* %12, null, !dbg !1097
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1099

if.then12:                                        ; preds = %if.end10
  %13 = load double, double* %w, align 8, !dbg !1100
  %14 = load double*, double** %width.addr, align 8, !dbg !1101
  store double %13, double* %14, align 8, !dbg !1102
  br label %if.end13, !dbg !1103

if.end13:                                         ; preds = %if.then12, %if.end10
  call void @llvm.dbg.declare(metadata double* %to_meters, metadata !1104, metadata !DIExpression()), !dbg !1105
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1106
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv.addr, align 8, !dbg !1107
  %arrayidx14 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 2, !dbg !1107
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx14, align 8, !dbg !1107
  %call15 = call double @extractUnitOrReply(%struct.client* %15, %struct.redisObject* %17), !dbg !1108
  store double %call15, double* %to_meters, align 8, !dbg !1105
  %18 = load double, double* %to_meters, align 8, !dbg !1109
  %cmp16 = fcmp olt double %18, 0.000000e+00, !dbg !1111
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1112

if.then17:                                        ; preds = %if.end13
  store i32 -1, i32* %retval, align 4, !dbg !1113
  br label %return, !dbg !1113

if.end18:                                         ; preds = %if.end13
  %19 = load double*, double** %conversion.addr, align 8, !dbg !1115
  %tobool19 = icmp ne double* %19, null, !dbg !1115
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1117

if.then20:                                        ; preds = %if.end18
  %20 = load double, double* %to_meters, align 8, !dbg !1118
  %21 = load double*, double** %conversion.addr, align 8, !dbg !1119
  store double %20, double* %21, align 8, !dbg !1120
  br label %if.end21, !dbg !1121

if.end21:                                         ; preds = %if.then20, %if.end18
  store i32 0, i32* %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

return:                                           ; preds = %if.end21, %if.then17, %if.then7, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !1123
  ret i32 %22, !dbg !1123
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addReplyDoubleDistance(%struct.client* %c, double %d) #0 !dbg !1124 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %d.addr = alloca double, align 8
  %dbuf = alloca [128 x i8], align 16
  %dlen = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1127, metadata !DIExpression()), !dbg !1128
  store double %d, double* %d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %d.addr, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata [128 x i8]* %dbuf, metadata !1131, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata i32* %dlen, metadata !1136, metadata !DIExpression()), !dbg !1138
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %dbuf, i64 0, i64 0, !dbg !1139
  %0 = load double, double* %d.addr, align 8, !dbg !1140
  %call = call i32 @fixedpoint_d2string(i8* %arraydecay, i64 128, double %0, i32 4), !dbg !1141
  store i32 %call, i32* %dlen, align 4, !dbg !1138
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1142
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %dbuf, i64 0, i64 0, !dbg !1143
  %2 = load i32, i32* %dlen, align 4, !dbg !1144
  %conv = sext i32 %2 to i64, !dbg !1144
  call void @addReplyBulkCBuffer(%struct.client* %1, i8* %arraydecay1, i64 %conv), !dbg !1145
  ret void, !dbg !1146
}

declare dso_local i32 @fixedpoint_d2string(i8*, i64, double, i32) #2

declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geoWithinShape(%struct.GeoShape* %shape, double %score, double* %xy, double* %distance) #0 !dbg !1147 {
entry:
  %retval = alloca i32, align 4
  %shape.addr = alloca %struct.GeoShape*, align 8
  %score.addr = alloca double, align 8
  %xy.addr = alloca double*, align 8
  %distance.addr = alloca double*, align 8
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !1169, metadata !DIExpression()), !dbg !1170
  store double %score, double* %score.addr, align 8
  call void @llvm.dbg.declare(metadata double* %score.addr, metadata !1171, metadata !DIExpression()), !dbg !1172
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  store double* %distance, double** %distance.addr, align 8
  call void @llvm.dbg.declare(metadata double** %distance.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  %0 = load double, double* %score.addr, align 8, !dbg !1177
  %1 = load double*, double** %xy.addr, align 8, !dbg !1179
  %call = call i32 @decodeGeohash(double %0, double* %1), !dbg !1180
  %tobool = icmp ne i32 %call, 0, !dbg !1180
  br i1 %tobool, label %if.end, label %if.then, !dbg !1181

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1182
  br label %return, !dbg !1182

if.end:                                           ; preds = %entry
  %2 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1183
  %type = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %2, i32 0, i32 0, !dbg !1185
  %3 = load i32, i32* %type, align 8, !dbg !1185
  %cmp = icmp eq i32 %3, 1, !dbg !1186
  br i1 %cmp, label %if.then1, label %if.else, !dbg !1187

if.then1:                                         ; preds = %if.end
  %4 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1188
  %xy2 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %4, i32 0, i32 1, !dbg !1191
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %xy2, i64 0, i64 0, !dbg !1188
  %5 = load double, double* %arrayidx, align 8, !dbg !1188
  %6 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1192
  %xy3 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %6, i32 0, i32 1, !dbg !1193
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %xy3, i64 0, i64 1, !dbg !1192
  %7 = load double, double* %arrayidx4, align 8, !dbg !1192
  %8 = load double*, double** %xy.addr, align 8, !dbg !1194
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 0, !dbg !1194
  %9 = load double, double* %arrayidx5, align 8, !dbg !1194
  %10 = load double*, double** %xy.addr, align 8, !dbg !1195
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 1, !dbg !1195
  %11 = load double, double* %arrayidx6, align 8, !dbg !1195
  %12 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1196
  %t = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %12, i32 0, i32 4, !dbg !1197
  %radius = bitcast %union.anon.5* %t to double*, !dbg !1198
  %13 = load double, double* %radius, align 8, !dbg !1198
  %14 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1199
  %conversion = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %14, i32 0, i32 2, !dbg !1200
  %15 = load double, double* %conversion, align 8, !dbg !1200
  %mul = fmul double %13, %15, !dbg !1201
  %16 = load double*, double** %distance.addr, align 8, !dbg !1202
  %call7 = call i32 @geohashGetDistanceIfInRadiusWGS84(double %5, double %7, double %9, double %11, double %mul, double* %16), !dbg !1203
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1203
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1204

if.then9:                                         ; preds = %if.then1
  store i32 -1, i32* %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

if.end10:                                         ; preds = %if.then1
  br label %if.end32, !dbg !1206

if.else:                                          ; preds = %if.end
  %17 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1207
  %type11 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %17, i32 0, i32 0, !dbg !1209
  %18 = load i32, i32* %type11, align 8, !dbg !1209
  %cmp12 = icmp eq i32 %18, 2, !dbg !1210
  br i1 %cmp12, label %if.then13, label %if.end31, !dbg !1211

if.then13:                                        ; preds = %if.else
  %19 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1212
  %t14 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %19, i32 0, i32 4, !dbg !1215
  %r = bitcast %union.anon.5* %t14 to %struct.anon.6*, !dbg !1216
  %width = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r, i32 0, i32 1, !dbg !1217
  %20 = load double, double* %width, align 8, !dbg !1217
  %21 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1218
  %conversion15 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %21, i32 0, i32 2, !dbg !1219
  %22 = load double, double* %conversion15, align 8, !dbg !1219
  %mul16 = fmul double %20, %22, !dbg !1220
  %23 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1221
  %t17 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %23, i32 0, i32 4, !dbg !1222
  %r18 = bitcast %union.anon.5* %t17 to %struct.anon.6*, !dbg !1223
  %height = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r18, i32 0, i32 0, !dbg !1224
  %24 = load double, double* %height, align 8, !dbg !1224
  %25 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1225
  %conversion19 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %25, i32 0, i32 2, !dbg !1226
  %26 = load double, double* %conversion19, align 8, !dbg !1226
  %mul20 = fmul double %24, %26, !dbg !1227
  %27 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1228
  %xy21 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %27, i32 0, i32 1, !dbg !1229
  %arrayidx22 = getelementptr inbounds [2 x double], [2 x double]* %xy21, i64 0, i64 0, !dbg !1228
  %28 = load double, double* %arrayidx22, align 8, !dbg !1228
  %29 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1230
  %xy23 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %29, i32 0, i32 1, !dbg !1231
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %xy23, i64 0, i64 1, !dbg !1230
  %30 = load double, double* %arrayidx24, align 8, !dbg !1230
  %31 = load double*, double** %xy.addr, align 8, !dbg !1232
  %arrayidx25 = getelementptr inbounds double, double* %31, i64 0, !dbg !1232
  %32 = load double, double* %arrayidx25, align 8, !dbg !1232
  %33 = load double*, double** %xy.addr, align 8, !dbg !1233
  %arrayidx26 = getelementptr inbounds double, double* %33, i64 1, !dbg !1233
  %34 = load double, double* %arrayidx26, align 8, !dbg !1233
  %35 = load double*, double** %distance.addr, align 8, !dbg !1234
  %call27 = call i32 @geohashGetDistanceIfInRectangle(double %mul16, double %mul20, double %28, double %30, double %32, double %34, double* %35), !dbg !1235
  %tobool28 = icmp ne i32 %call27, 0, !dbg !1235
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1236

if.then29:                                        ; preds = %if.then13
  store i32 -1, i32* %retval, align 4, !dbg !1237
  br label %return, !dbg !1237

if.end30:                                         ; preds = %if.then13
  br label %if.end31, !dbg !1238

if.end31:                                         ; preds = %if.end30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end10
  store i32 0, i32* %retval, align 4, !dbg !1239
  br label %return, !dbg !1239

return:                                           ; preds = %if.end32, %if.then29, %if.then9, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !1240
  ret i32 %36, !dbg !1240
}

declare dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double*) #2

declare dso_local i32 @geohashGetDistanceIfInRectangle(double, double, double, double, double, double, double*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geoGetPointsInRange(%struct.redisObject* %zobj, double %min, double %max, %struct.GeoShape* %shape, %struct.geoArray* %ga, i64 %limit) #0 !dbg !1241 {
entry:
  %retval = alloca i32, align 4
  %zobj.addr = alloca %struct.redisObject*, align 8
  %min.addr = alloca double, align 8
  %max.addr = alloca double, align 8
  %shape.addr = alloca %struct.GeoShape*, align 8
  %ga.addr = alloca %struct.geoArray*, align 8
  %limit.addr = alloca i64, align 8
  %range = alloca %struct.zrangespec, align 8
  %origincount = alloca i64, align 8
  %zl = alloca i8*, align 8
  %eptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %vstr = alloca i8*, align 8
  %vlen = alloca i32, align 4
  %vlong = alloca i64, align 8
  %score = alloca double, align 8
  %xy = alloca [2 x double], align 16
  %distance = alloca double, align 8
  %member = alloca i8*, align 8
  %zs = alloca %struct.zset*, align 8
  %zsl = alloca %struct.zskiplist*, align 8
  %ln = alloca %struct.zskiplistNode*, align 8
  %xy46 = alloca [2 x double], align 16
  %distance47 = alloca double, align 8
  store %struct.redisObject* %zobj, %struct.redisObject** %zobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj.addr, metadata !1244, metadata !DIExpression()), !dbg !1245
  store double %min, double* %min.addr, align 8
  call void @llvm.dbg.declare(metadata double* %min.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  store double %max, double* %max.addr, align 8
  call void @llvm.dbg.declare(metadata double* %max.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  store %struct.geoArray* %ga, %struct.geoArray** %ga.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga.addr, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i64 %limit, i64* %limit.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %limit.addr, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata %struct.zrangespec* %range, metadata !1256, metadata !DIExpression()), !dbg !1264
  %min1 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %range, i32 0, i32 0, !dbg !1265
  %0 = load double, double* %min.addr, align 8, !dbg !1266
  store double %0, double* %min1, align 8, !dbg !1265
  %max2 = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %range, i32 0, i32 1, !dbg !1265
  %1 = load double, double* %max.addr, align 8, !dbg !1267
  store double %1, double* %max2, align 8, !dbg !1265
  %minex = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %range, i32 0, i32 2, !dbg !1265
  store i32 0, i32* %minex, align 8, !dbg !1265
  %maxex = getelementptr inbounds %struct.zrangespec, %struct.zrangespec* %range, i32 0, i32 3, !dbg !1265
  store i32 1, i32* %maxex, align 4, !dbg !1265
  call void @llvm.dbg.declare(metadata i64* %origincount, metadata !1268, metadata !DIExpression()), !dbg !1269
  %2 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1270
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %2, i32 0, i32 2, !dbg !1271
  %3 = load i64, i64* %used, align 8, !dbg !1271
  store i64 %3, i64* %origincount, align 8, !dbg !1269
  %4 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1272
  %5 = bitcast %struct.redisObject* %4 to i32*, !dbg !1274
  %bf.load = load i32, i32* %5, align 8, !dbg !1274
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !1274
  %bf.clear = and i32 %bf.lshr, 15, !dbg !1274
  %cmp = icmp eq i32 %bf.clear, 11, !dbg !1275
  br i1 %cmp, label %if.then, label %if.else, !dbg !1276

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %zl, metadata !1277, metadata !DIExpression()), !dbg !1280
  %6 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1281
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i32 0, i32 2, !dbg !1282
  %7 = load i8*, i8** %ptr, align 8, !dbg !1282
  store i8* %7, i8** %zl, align 8, !dbg !1280
  call void @llvm.dbg.declare(metadata i8** %eptr, metadata !1283, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.declare(metadata i8** %sptr, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %vstr, metadata !1287, metadata !DIExpression()), !dbg !1288
  store i8* null, i8** %vstr, align 8, !dbg !1288
  call void @llvm.dbg.declare(metadata i32* %vlen, metadata !1289, metadata !DIExpression()), !dbg !1290
  store i32 0, i32* %vlen, align 4, !dbg !1290
  call void @llvm.dbg.declare(metadata i64* %vlong, metadata !1291, metadata !DIExpression()), !dbg !1292
  store i64 0, i64* %vlong, align 8, !dbg !1292
  call void @llvm.dbg.declare(metadata double* %score, metadata !1293, metadata !DIExpression()), !dbg !1294
  store double 0.000000e+00, double* %score, align 8, !dbg !1294
  %8 = load i8*, i8** %zl, align 8, !dbg !1295
  %call = call i8* @zzlFirstInRange(i8* %8, %struct.zrangespec* %range), !dbg !1297
  store i8* %call, i8** %eptr, align 8, !dbg !1298
  %cmp3 = icmp eq i8* %call, null, !dbg !1299
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1300

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !1301
  br label %return, !dbg !1301

if.end:                                           ; preds = %if.then
  %9 = load i8*, i8** %zl, align 8, !dbg !1303
  %10 = load i8*, i8** %eptr, align 8, !dbg !1304
  %call5 = call i8* @lpNext(i8* %9, i8* %10), !dbg !1305
  store i8* %call5, i8** %sptr, align 8, !dbg !1306
  br label %while.cond, !dbg !1307

while.cond:                                       ; preds = %if.end29, %if.end
  %11 = load i8*, i8** %eptr, align 8, !dbg !1308
  %tobool = icmp ne i8* %11, null, !dbg !1307
  br i1 %tobool, label %while.body, label %while.end, !dbg !1307

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata [2 x double]* %xy, metadata !1309, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.declare(metadata double* %distance, metadata !1312, metadata !DIExpression()), !dbg !1313
  store double 0.000000e+00, double* %distance, align 8, !dbg !1313
  %12 = load i8*, i8** %sptr, align 8, !dbg !1314
  %call6 = call double @zzlGetScore(i8* %12), !dbg !1315
  store double %call6, double* %score, align 8, !dbg !1316
  %13 = load double, double* %score, align 8, !dbg !1317
  %call7 = call i32 @zslValueLteMax(double %13, %struct.zrangespec* %range), !dbg !1319
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1319
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1320

if.then9:                                         ; preds = %while.body
  br label %while.end, !dbg !1321

if.end10:                                         ; preds = %while.body
  %14 = load i8*, i8** %eptr, align 8, !dbg !1322
  %call11 = call i8* @lpGetValue(i8* %14, i32* %vlen, i64* %vlong), !dbg !1323
  store i8* %call11, i8** %vstr, align 8, !dbg !1324
  %15 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1325
  %16 = load double, double* %score, align 8, !dbg !1327
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !1328
  %call12 = call i32 @geoWithinShape(%struct.GeoShape* %15, double %16, double* %arraydecay, double* %distance), !dbg !1329
  %cmp13 = icmp eq i32 %call12, 0, !dbg !1330
  br i1 %cmp13, label %if.then14, label %if.end20, !dbg !1331

if.then14:                                        ; preds = %if.end10
  call void @llvm.dbg.declare(metadata i8** %member, metadata !1332, metadata !DIExpression()), !dbg !1334
  %17 = load i8*, i8** %vstr, align 8, !dbg !1335
  %cmp15 = icmp eq i8* %17, null, !dbg !1336
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !1337

cond.true:                                        ; preds = %if.then14
  %18 = load i64, i64* %vlong, align 8, !dbg !1338
  %call16 = call i8* @sdsfromlonglong(i64 %18), !dbg !1339
  br label %cond.end, !dbg !1337

cond.false:                                       ; preds = %if.then14
  %19 = load i8*, i8** %vstr, align 8, !dbg !1340
  %20 = load i32, i32* %vlen, align 4, !dbg !1341
  %conv = zext i32 %20 to i64, !dbg !1341
  %call17 = call i8* @sdsnewlen(i8* %19, i64 %conv), !dbg !1342
  br label %cond.end, !dbg !1337

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call16, %cond.true ], [ %call17, %cond.false ], !dbg !1337
  store i8* %cond, i8** %member, align 8, !dbg !1334
  %21 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1343
  %arraydecay18 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !1344
  %22 = load double, double* %distance, align 8, !dbg !1345
  %23 = load double, double* %score, align 8, !dbg !1346
  %24 = load i8*, i8** %member, align 8, !dbg !1347
  %call19 = call %struct.geoPoint* @geoArrayAppend(%struct.geoArray* %21, double* %arraydecay18, double %22, double %23, i8* %24), !dbg !1348
  br label %if.end20, !dbg !1349

if.end20:                                         ; preds = %cond.end, %if.end10
  %25 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1350
  %used21 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %25, i32 0, i32 2, !dbg !1352
  %26 = load i64, i64* %used21, align 8, !dbg !1352
  %tobool22 = icmp ne i64 %26, 0, !dbg !1350
  br i1 %tobool22, label %land.lhs.true, label %if.end29, !dbg !1353

land.lhs.true:                                    ; preds = %if.end20
  %27 = load i64, i64* %limit.addr, align 8, !dbg !1354
  %tobool23 = icmp ne i64 %27, 0, !dbg !1354
  br i1 %tobool23, label %land.lhs.true24, label %if.end29, !dbg !1355

land.lhs.true24:                                  ; preds = %land.lhs.true
  %28 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1356
  %used25 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %28, i32 0, i32 2, !dbg !1357
  %29 = load i64, i64* %used25, align 8, !dbg !1357
  %30 = load i64, i64* %limit.addr, align 8, !dbg !1358
  %cmp26 = icmp uge i64 %29, %30, !dbg !1359
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1360

if.then28:                                        ; preds = %land.lhs.true24
  br label %while.end, !dbg !1361

if.end29:                                         ; preds = %land.lhs.true24, %land.lhs.true, %if.end20
  %31 = load i8*, i8** %zl, align 8, !dbg !1362
  call void @zzlNext(i8* %31, i8** %eptr, i8** %sptr), !dbg !1363
  br label %while.cond, !dbg !1307, !llvm.loop !1364

while.end:                                        ; preds = %if.then28, %if.then9, %while.cond
  br label %if.end76, !dbg !1366

if.else:                                          ; preds = %entry
  %32 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1367
  %33 = bitcast %struct.redisObject* %32 to i32*, !dbg !1369
  %bf.load30 = load i32, i32* %33, align 8, !dbg !1369
  %bf.lshr31 = lshr i32 %bf.load30, 4, !dbg !1369
  %bf.clear32 = and i32 %bf.lshr31, 15, !dbg !1369
  %cmp33 = icmp eq i32 %bf.clear32, 7, !dbg !1370
  br i1 %cmp33, label %if.then35, label %if.end75, !dbg !1371

if.then35:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.zset** %zs, metadata !1372, metadata !DIExpression()), !dbg !1400
  %34 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1401
  %ptr36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i32 0, i32 2, !dbg !1402
  %35 = load i8*, i8** %ptr36, align 8, !dbg !1402
  %36 = bitcast i8* %35 to %struct.zset*, !dbg !1401
  store %struct.zset* %36, %struct.zset** %zs, align 8, !dbg !1400
  call void @llvm.dbg.declare(metadata %struct.zskiplist** %zsl, metadata !1403, metadata !DIExpression()), !dbg !1404
  %37 = load %struct.zset*, %struct.zset** %zs, align 8, !dbg !1405
  %zsl37 = getelementptr inbounds %struct.zset, %struct.zset* %37, i32 0, i32 1, !dbg !1406
  %38 = load %struct.zskiplist*, %struct.zskiplist** %zsl37, align 8, !dbg !1406
  store %struct.zskiplist* %38, %struct.zskiplist** %zsl, align 8, !dbg !1404
  call void @llvm.dbg.declare(metadata %struct.zskiplistNode** %ln, metadata !1407, metadata !DIExpression()), !dbg !1410
  %39 = load %struct.zskiplist*, %struct.zskiplist** %zsl, align 8, !dbg !1411
  %call38 = call %struct.zskiplistNode* @zslFirstInRange(%struct.zskiplist* %39, %struct.zrangespec* %range), !dbg !1413
  store %struct.zskiplistNode* %call38, %struct.zskiplistNode** %ln, align 8, !dbg !1414
  %cmp39 = icmp eq %struct.zskiplistNode* %call38, null, !dbg !1415
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1416

if.then41:                                        ; preds = %if.then35
  store i32 0, i32* %retval, align 4, !dbg !1417
  br label %return, !dbg !1417

if.end42:                                         ; preds = %if.then35
  br label %while.cond43, !dbg !1419

while.cond43:                                     ; preds = %if.end73, %if.end42
  %40 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1420
  %tobool44 = icmp ne %struct.zskiplistNode* %40, null, !dbg !1419
  br i1 %tobool44, label %while.body45, label %while.end74, !dbg !1419

while.body45:                                     ; preds = %while.cond43
  call void @llvm.dbg.declare(metadata [2 x double]* %xy46, metadata !1421, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.declare(metadata double* %distance47, metadata !1424, metadata !DIExpression()), !dbg !1425
  store double 0.000000e+00, double* %distance47, align 8, !dbg !1425
  %41 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1426
  %score48 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %41, i32 0, i32 1, !dbg !1428
  %42 = load double, double* %score48, align 8, !dbg !1428
  %call49 = call i32 @zslValueLteMax(double %42, %struct.zrangespec* %range), !dbg !1429
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1429
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !1430

if.then51:                                        ; preds = %while.body45
  br label %while.end74, !dbg !1431

if.end52:                                         ; preds = %while.body45
  %43 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1432
  %44 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1434
  %score53 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %44, i32 0, i32 1, !dbg !1435
  %45 = load double, double* %score53, align 8, !dbg !1435
  %arraydecay54 = getelementptr inbounds [2 x double], [2 x double]* %xy46, i64 0, i64 0, !dbg !1436
  %call55 = call i32 @geoWithinShape(%struct.GeoShape* %43, double %45, double* %arraydecay54, double* %distance47), !dbg !1437
  %cmp56 = icmp eq i32 %call55, 0, !dbg !1438
  br i1 %cmp56, label %if.then58, label %if.end63, !dbg !1439

if.then58:                                        ; preds = %if.end52
  %46 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1440
  %arraydecay59 = getelementptr inbounds [2 x double], [2 x double]* %xy46, i64 0, i64 0, !dbg !1442
  %47 = load double, double* %distance47, align 8, !dbg !1443
  %48 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1444
  %score60 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %48, i32 0, i32 1, !dbg !1445
  %49 = load double, double* %score60, align 8, !dbg !1445
  %50 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1446
  %ele = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %50, i32 0, i32 0, !dbg !1447
  %51 = load i8*, i8** %ele, align 8, !dbg !1447
  %call61 = call i8* @sdsdup(i8* %51), !dbg !1448
  %call62 = call %struct.geoPoint* @geoArrayAppend(%struct.geoArray* %46, double* %arraydecay59, double %47, double %49, i8* %call61), !dbg !1449
  br label %if.end63, !dbg !1450

if.end63:                                         ; preds = %if.then58, %if.end52
  %52 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1451
  %used64 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %52, i32 0, i32 2, !dbg !1453
  %53 = load i64, i64* %used64, align 8, !dbg !1453
  %tobool65 = icmp ne i64 %53, 0, !dbg !1451
  br i1 %tobool65, label %land.lhs.true66, label %if.end73, !dbg !1454

land.lhs.true66:                                  ; preds = %if.end63
  %54 = load i64, i64* %limit.addr, align 8, !dbg !1455
  %tobool67 = icmp ne i64 %54, 0, !dbg !1455
  br i1 %tobool67, label %land.lhs.true68, label %if.end73, !dbg !1456

land.lhs.true68:                                  ; preds = %land.lhs.true66
  %55 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1457
  %used69 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %55, i32 0, i32 2, !dbg !1458
  %56 = load i64, i64* %used69, align 8, !dbg !1458
  %57 = load i64, i64* %limit.addr, align 8, !dbg !1459
  %cmp70 = icmp uge i64 %56, %57, !dbg !1460
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !1461

if.then72:                                        ; preds = %land.lhs.true68
  br label %while.end74, !dbg !1462

if.end73:                                         ; preds = %land.lhs.true68, %land.lhs.true66, %if.end63
  %58 = load %struct.zskiplistNode*, %struct.zskiplistNode** %ln, align 8, !dbg !1463
  %level = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %58, i32 0, i32 3, !dbg !1464
  %arrayidx = getelementptr inbounds [0 x %struct.zskiplistLevel], [0 x %struct.zskiplistLevel]* %level, i64 0, i64 0, !dbg !1463
  %forward = getelementptr inbounds %struct.zskiplistLevel, %struct.zskiplistLevel* %arrayidx, i32 0, i32 0, !dbg !1465
  %59 = load %struct.zskiplistNode*, %struct.zskiplistNode** %forward, align 8, !dbg !1465
  store %struct.zskiplistNode* %59, %struct.zskiplistNode** %ln, align 8, !dbg !1466
  br label %while.cond43, !dbg !1419, !llvm.loop !1467

while.end74:                                      ; preds = %if.then72, %if.then51, %while.cond43
  br label %if.end75, !dbg !1469

if.end75:                                         ; preds = %while.end74, %if.else
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %while.end
  %60 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1470
  %used77 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %60, i32 0, i32 2, !dbg !1471
  %61 = load i64, i64* %used77, align 8, !dbg !1471
  %62 = load i64, i64* %origincount, align 8, !dbg !1472
  %sub = sub i64 %61, %62, !dbg !1473
  %conv78 = trunc i64 %sub to i32, !dbg !1470
  store i32 %conv78, i32* %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

return:                                           ; preds = %if.end76, %if.then41, %if.then4
  %63 = load i32, i32* %retval, align 4, !dbg !1475
  ret i32 %63, !dbg !1475
}

declare dso_local i8* @zzlFirstInRange(i8*, %struct.zrangespec*) #2

declare dso_local i8* @lpNext(i8*, i8*) #2

declare dso_local double @zzlGetScore(i8*) #2

declare dso_local i32 @zslValueLteMax(double, %struct.zrangespec*) #2

declare dso_local i8* @lpGetValue(i8*, i32*, i64*) #2

declare dso_local i8* @sdsfromlonglong(i64) #2

declare dso_local i8* @sdsnewlen(i8*, i64) #2

declare dso_local void @zzlNext(i8*, i8**, i8**) #2

declare dso_local %struct.zskiplistNode* @zslFirstInRange(%struct.zskiplist*, %struct.zrangespec*) #2

declare dso_local i8* @sdsdup(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @scoresOfGeoHashBox(i64 %hash.coerce0, i8 %hash.coerce1, i64* %min, i64* %max) #0 !dbg !1476 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %min.addr = alloca i64*, align 8
  %max.addr = alloca i64*, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !1482, metadata !DIExpression()), !dbg !1483
  store i64* %min, i64** %min.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %min.addr, metadata !1484, metadata !DIExpression()), !dbg !1485
  store i64* %max, i64** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %max.addr, metadata !1486, metadata !DIExpression()), !dbg !1487
  %3 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !1488
  %4 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %3, i32 0, i32 0, !dbg !1488
  %5 = load i64, i64* %4, align 8, !dbg !1488
  %6 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %3, i32 0, i32 1, !dbg !1488
  %7 = load i8, i8* %6, align 8, !dbg !1488
  %call = call i64 @geohashAlign52Bits(i64 %5, i8 %7), !dbg !1488
  %8 = load i64*, i64** %min.addr, align 8, !dbg !1489
  store i64 %call, i64* %8, align 8, !dbg !1490
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !1491
  %9 = load i64, i64* %bits, align 8, !dbg !1492
  %inc = add i64 %9, 1, !dbg !1492
  store i64 %inc, i64* %bits, align 8, !dbg !1492
  %10 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !1493
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %10, i32 0, i32 0, !dbg !1493
  %12 = load i64, i64* %11, align 8, !dbg !1493
  %13 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %10, i32 0, i32 1, !dbg !1493
  %14 = load i8, i8* %13, align 8, !dbg !1493
  %call1 = call i64 @geohashAlign52Bits(i64 %12, i8 %14), !dbg !1493
  %15 = load i64*, i64** %max.addr, align 8, !dbg !1494
  store i64 %call1, i64* %15, align 8, !dbg !1495
  ret void, !dbg !1496
}

declare dso_local i64 @geohashAlign52Bits(i64, i8) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @membersOfGeoHashBox(%struct.redisObject* %zobj, i64 %hash.coerce0, i8 %hash.coerce1, %struct.geoArray* %ga, %struct.GeoShape* %shape, i64 %limit) #0 !dbg !1497 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %zobj.addr = alloca %struct.redisObject*, align 8
  %ga.addr = alloca %struct.geoArray*, align 8
  %shape.addr = alloca %struct.GeoShape*, align 8
  %limit.addr = alloca i64, align 8
  %min = alloca i64, align 8
  %max = alloca i64, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  store %struct.redisObject* %zobj, %struct.redisObject** %zobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj.addr, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !1502, metadata !DIExpression()), !dbg !1503
  store %struct.geoArray* %ga, %struct.geoArray** %ga.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga.addr, metadata !1504, metadata !DIExpression()), !dbg !1505
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !1506, metadata !DIExpression()), !dbg !1507
  store i64 %limit, i64* %limit.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %limit.addr, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata i64* %min, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.declare(metadata i64* %max, metadata !1512, metadata !DIExpression()), !dbg !1513
  %3 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !1514
  %4 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %3, i32 0, i32 0, !dbg !1514
  %5 = load i64, i64* %4, align 8, !dbg !1514
  %6 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %3, i32 0, i32 1, !dbg !1514
  %7 = load i8, i8* %6, align 8, !dbg !1514
  call void @scoresOfGeoHashBox(i64 %5, i8 %7, i64* %min, i64* %max), !dbg !1514
  %8 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1515
  %9 = load i64, i64* %min, align 8, !dbg !1516
  %conv = uitofp i64 %9 to double, !dbg !1516
  %10 = load i64, i64* %max, align 8, !dbg !1517
  %conv1 = uitofp i64 %10 to double, !dbg !1517
  %11 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1518
  %12 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1519
  %13 = load i64, i64* %limit.addr, align 8, !dbg !1520
  %call = call i32 @geoGetPointsInRange(%struct.redisObject* %8, double %conv, double %conv1, %struct.GeoShape* %11, %struct.geoArray* %12, i64 %13), !dbg !1521
  ret i32 %call, !dbg !1522
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @membersOfAllNeighbors(%struct.redisObject* %zobj, %struct.GeoHashRadius* %n, %struct.GeoShape* %shape, %struct.geoArray* %ga, i64 %limit) #0 !dbg !1523 {
entry:
  %zobj.addr = alloca %struct.redisObject*, align 8
  %n.addr = alloca %struct.GeoHashRadius*, align 8
  %shape.addr = alloca %struct.GeoShape*, align 8
  %ga.addr = alloca %struct.geoArray*, align 8
  %limit.addr = alloca i64, align 8
  %neighbors = alloca [9 x %struct.GeoHashBits], align 16
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %last_processed = alloca i32, align 4
  %debugmsg = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %long_range = alloca %struct.GeoHashRange, align 8
  %lat_range = alloca %struct.GeoHashRange, align 8
  %myarea = alloca %struct.GeoHashArea, align 8
  %fp35 = alloca %struct._IO_FILE*, align 8
  %fp43 = alloca %struct._IO_FILE*, align 8
  %fp51 = alloca %struct._IO_FILE*, align 8
  %fp60 = alloca %struct._IO_FILE*, align 8
  %fp69 = alloca %struct._IO_FILE*, align 8
  %fp79 = alloca %struct._IO_FILE*, align 8
  %fp112 = alloca %struct._IO_FILE*, align 8
  store %struct.redisObject* %zobj, %struct.redisObject** %zobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj.addr, metadata !1556, metadata !DIExpression()), !dbg !1557
  store %struct.GeoHashRadius* %n, %struct.GeoHashRadius** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRadius** %n.addr, metadata !1558, metadata !DIExpression()), !dbg !1559
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !1560, metadata !DIExpression()), !dbg !1561
  store %struct.geoArray* %ga, %struct.geoArray** %ga.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga.addr, metadata !1562, metadata !DIExpression()), !dbg !1563
  store i64 %limit, i64* %limit.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %limit.addr, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.declare(metadata [9 x %struct.GeoHashBits]* %neighbors, metadata !1566, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1571, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1573, metadata !DIExpression()), !dbg !1574
  store i32 0, i32* %count, align 4, !dbg !1574
  call void @llvm.dbg.declare(metadata i32* %last_processed, metadata !1575, metadata !DIExpression()), !dbg !1576
  store i32 0, i32* %last_processed, align 4, !dbg !1576
  call void @llvm.dbg.declare(metadata i32* %debugmsg, metadata !1577, metadata !DIExpression()), !dbg !1578
  store i32 0, i32* %debugmsg, align 4, !dbg !1578
  %arrayidx = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 0, !dbg !1579
  %0 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1580
  %hash = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i32 0, i32 0, !dbg !1581
  %1 = bitcast %struct.GeoHashBits* %arrayidx to i8*, !dbg !1581
  %2 = bitcast %struct.GeoHashBits* %hash to i8*, !dbg !1581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 8 %2, i64 16, i1 false), !dbg !1581
  %arrayidx1 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 1, !dbg !1582
  %3 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1583
  %neighbors2 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %3, i32 0, i32 2, !dbg !1584
  %north = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors2, i32 0, i32 0, !dbg !1585
  %4 = bitcast %struct.GeoHashBits* %arrayidx1 to i8*, !dbg !1585
  %5 = bitcast %struct.GeoHashBits* %north to i8*, !dbg !1585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 8 %5, i64 16, i1 false), !dbg !1585
  %arrayidx3 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 2, !dbg !1586
  %6 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1587
  %neighbors4 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %6, i32 0, i32 2, !dbg !1588
  %south = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors4, i32 0, i32 3, !dbg !1589
  %7 = bitcast %struct.GeoHashBits* %arrayidx3 to i8*, !dbg !1589
  %8 = bitcast %struct.GeoHashBits* %south to i8*, !dbg !1589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 8 %8, i64 16, i1 false), !dbg !1589
  %arrayidx5 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 3, !dbg !1590
  %9 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1591
  %neighbors6 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %9, i32 0, i32 2, !dbg !1592
  %east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors6, i32 0, i32 1, !dbg !1593
  %10 = bitcast %struct.GeoHashBits* %arrayidx5 to i8*, !dbg !1593
  %11 = bitcast %struct.GeoHashBits* %east to i8*, !dbg !1593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 8 %11, i64 16, i1 false), !dbg !1593
  %arrayidx7 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 4, !dbg !1594
  %12 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1595
  %neighbors8 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %12, i32 0, i32 2, !dbg !1596
  %west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors8, i32 0, i32 2, !dbg !1597
  %13 = bitcast %struct.GeoHashBits* %arrayidx7 to i8*, !dbg !1597
  %14 = bitcast %struct.GeoHashBits* %west to i8*, !dbg !1597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 8 %14, i64 16, i1 false), !dbg !1597
  %arrayidx9 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 5, !dbg !1598
  %15 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1599
  %neighbors10 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %15, i32 0, i32 2, !dbg !1600
  %north_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors10, i32 0, i32 4, !dbg !1601
  %16 = bitcast %struct.GeoHashBits* %arrayidx9 to i8*, !dbg !1601
  %17 = bitcast %struct.GeoHashBits* %north_east to i8*, !dbg !1601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 8 %17, i64 16, i1 false), !dbg !1601
  %arrayidx11 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 6, !dbg !1602
  %18 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1603
  %neighbors12 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %18, i32 0, i32 2, !dbg !1604
  %north_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors12, i32 0, i32 6, !dbg !1605
  %19 = bitcast %struct.GeoHashBits* %arrayidx11 to i8*, !dbg !1605
  %20 = bitcast %struct.GeoHashBits* %north_west to i8*, !dbg !1605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 8 %20, i64 16, i1 false), !dbg !1605
  %arrayidx13 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 7, !dbg !1606
  %21 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1607
  %neighbors14 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %21, i32 0, i32 2, !dbg !1608
  %south_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors14, i32 0, i32 5, !dbg !1609
  %22 = bitcast %struct.GeoHashBits* %arrayidx13 to i8*, !dbg !1609
  %23 = bitcast %struct.GeoHashBits* %south_east to i8*, !dbg !1609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 8 %23, i64 16, i1 false), !dbg !1609
  %arrayidx15 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 8, !dbg !1610
  %24 = load %struct.GeoHashRadius*, %struct.GeoHashRadius** %n.addr, align 8, !dbg !1611
  %neighbors16 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %24, i32 0, i32 2, !dbg !1612
  %south_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors16, i32 0, i32 7, !dbg !1613
  %25 = bitcast %struct.GeoHashBits* %arrayidx15 to i8*, !dbg !1613
  %26 = bitcast %struct.GeoHashBits* %south_west to i8*, !dbg !1613
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 8 %26, i64 16, i1 false), !dbg !1613
  store i32 0, i32* %i, align 4, !dbg !1614
  br label %for.cond, !dbg !1616

for.cond:                                         ; preds = %for.inc, %entry
  %27 = load i32, i32* %i, align 4, !dbg !1617
  %conv = zext i32 %27 to i64, !dbg !1617
  %cmp = icmp ult i64 %conv, 9, !dbg !1619
  br i1 %cmp, label %for.body, label %for.end, !dbg !1620

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4, !dbg !1621
  %idxprom = zext i32 %28 to i64, !dbg !1621
  %arrayidx18 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom, !dbg !1621
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx18, i32 0, i32 0, !dbg !1621
  %29 = load i64, i64* %bits, align 16, !dbg !1621
  %tobool = icmp ne i64 %29, 0, !dbg !1621
  br i1 %tobool, label %if.end28, label %land.lhs.true, !dbg !1621

land.lhs.true:                                    ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !1621
  %idxprom19 = zext i32 %30 to i64, !dbg !1621
  %arrayidx20 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom19, !dbg !1621
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx20, i32 0, i32 1, !dbg !1621
  %31 = load i8, i8* %step, align 8, !dbg !1621
  %tobool21 = icmp ne i8 %31, 0, !dbg !1621
  br i1 %tobool21, label %if.end28, label %if.then, !dbg !1624

if.then:                                          ; preds = %land.lhs.true
  %32 = load i32, i32* %debugmsg, align 4, !dbg !1625
  %tobool22 = icmp ne i32 %32, 0, !dbg !1625
  br i1 %tobool22, label %if.then23, label %if.end, !dbg !1628

if.then23:                                        ; preds = %if.then
  br label %do.body, !dbg !1629

do.body:                                          ; preds = %if.then23
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !1630, metadata !DIExpression()), !dbg !1683
  %call = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1683
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !1683
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1683
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 384), !dbg !1683
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1683
  %35 = load i32, i32* %i, align 4, !dbg !1683
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %35), !dbg !1683
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1683
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1683
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1683
  %call27 = call i32 @fclose(%struct._IO_FILE* %37), !dbg !1683
  br label %do.end, !dbg !1683

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !1683

if.end:                                           ; preds = %do.end, %if.then
  br label %for.inc, !dbg !1684

if.end28:                                         ; preds = %land.lhs.true, %for.body
  %38 = load i32, i32* %debugmsg, align 4, !dbg !1685
  %tobool29 = icmp ne i32 %38, 0, !dbg !1685
  br i1 %tobool29, label %if.then30, label %if.end86, !dbg !1687

if.then30:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %long_range, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %lat_range, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @geohashGetCoordRange(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range), !dbg !1693
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %myarea, metadata !1694, metadata !DIExpression()), !dbg !1695
  %39 = bitcast %struct.GeoHashArea* %myarea to i8*, !dbg !1695
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 48, i1 false), !dbg !1695
  %40 = load i32, i32* %i, align 4, !dbg !1696
  %idxprom31 = zext i32 %40 to i64, !dbg !1697
  %arrayidx32 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom31, !dbg !1697
  %41 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !1698
  %42 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 0, !dbg !1698
  %43 = load double, double* %42, align 8, !dbg !1698
  %44 = getelementptr inbounds { double, double }, { double, double }* %41, i32 0, i32 1, !dbg !1698
  %45 = load double, double* %44, align 8, !dbg !1698
  %46 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !1698
  %47 = getelementptr inbounds { double, double }, { double, double }* %46, i32 0, i32 0, !dbg !1698
  %48 = load double, double* %47, align 8, !dbg !1698
  %49 = getelementptr inbounds { double, double }, { double, double }* %46, i32 0, i32 1, !dbg !1698
  %50 = load double, double* %49, align 8, !dbg !1698
  %51 = bitcast %struct.GeoHashBits* %arrayidx32 to { i64, i8 }*, !dbg !1698
  %52 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %51, i32 0, i32 0, !dbg !1698
  %53 = load i64, i64* %52, align 16, !dbg !1698
  %54 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %51, i32 0, i32 1, !dbg !1698
  %55 = load i8, i8* %54, align 8, !dbg !1698
  %call33 = call i32 @geohashDecode(double %43, double %45, double %48, double %50, i64 %53, i8 %55, %struct.GeoHashArea* %myarea), !dbg !1698
  br label %do.body34, !dbg !1699

do.body34:                                        ; preds = %if.then30
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp35, metadata !1700, metadata !DIExpression()), !dbg !1702
  %call36 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1702
  store %struct._IO_FILE* %call36, %struct._IO_FILE** %fp35, align 8, !dbg !1702
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8, !dbg !1702
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 396), !dbg !1702
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8, !dbg !1702
  %58 = load i32, i32* %i, align 4, !dbg !1702
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %58), !dbg !1702
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8, !dbg !1702
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1702
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp35, align 8, !dbg !1702
  %call40 = call i32 @fclose(%struct._IO_FILE* %60), !dbg !1702
  br label %do.end41, !dbg !1702

do.end41:                                         ; preds = %do.body34
  br label %do.body42, !dbg !1703

do.body42:                                        ; preds = %do.end41
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp43, metadata !1704, metadata !DIExpression()), !dbg !1706
  %call44 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1706
  store %struct._IO_FILE* %call44, %struct._IO_FILE** %fp43, align 8, !dbg !1706
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8, !dbg !1706
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 397), !dbg !1706
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8, !dbg !1706
  %longitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %myarea, i32 0, i32 1, !dbg !1706
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude, i32 0, i32 0, !dbg !1706
  %63 = load double, double* %min, align 8, !dbg !1706
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), double %63), !dbg !1706
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8, !dbg !1706
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1706
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp43, align 8, !dbg !1706
  %call48 = call i32 @fclose(%struct._IO_FILE* %65), !dbg !1706
  br label %do.end49, !dbg !1706

do.end49:                                         ; preds = %do.body42
  br label %do.body50, !dbg !1707

do.body50:                                        ; preds = %do.end49
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp51, metadata !1708, metadata !DIExpression()), !dbg !1710
  %call52 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1710
  store %struct._IO_FILE* %call52, %struct._IO_FILE** %fp51, align 8, !dbg !1710
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8, !dbg !1710
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 398), !dbg !1710
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8, !dbg !1710
  %longitude54 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %myarea, i32 0, i32 1, !dbg !1710
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude54, i32 0, i32 1, !dbg !1710
  %68 = load double, double* %max, align 8, !dbg !1710
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), double %68), !dbg !1710
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8, !dbg !1710
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1710
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %fp51, align 8, !dbg !1710
  %call57 = call i32 @fclose(%struct._IO_FILE* %70), !dbg !1710
  br label %do.end58, !dbg !1710

do.end58:                                         ; preds = %do.body50
  br label %do.body59, !dbg !1711

do.body59:                                        ; preds = %do.end58
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp60, metadata !1712, metadata !DIExpression()), !dbg !1714
  %call61 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1714
  store %struct._IO_FILE* %call61, %struct._IO_FILE** %fp60, align 8, !dbg !1714
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp60, align 8, !dbg !1714
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 399), !dbg !1714
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp60, align 8, !dbg !1714
  %latitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %myarea, i32 0, i32 2, !dbg !1714
  %min63 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude, i32 0, i32 0, !dbg !1714
  %73 = load double, double* %min63, align 8, !dbg !1714
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), double %73), !dbg !1714
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %fp60, align 8, !dbg !1714
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1714
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %fp60, align 8, !dbg !1714
  %call66 = call i32 @fclose(%struct._IO_FILE* %75), !dbg !1714
  br label %do.end67, !dbg !1714

do.end67:                                         ; preds = %do.body59
  br label %do.body68, !dbg !1715

do.body68:                                        ; preds = %do.end67
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp69, metadata !1716, metadata !DIExpression()), !dbg !1718
  %call70 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1718
  store %struct._IO_FILE* %call70, %struct._IO_FILE** %fp69, align 8, !dbg !1718
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8, !dbg !1718
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 400), !dbg !1718
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8, !dbg !1718
  %latitude72 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %myarea, i32 0, i32 2, !dbg !1718
  %max73 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude72, i32 0, i32 1, !dbg !1718
  %78 = load double, double* %max73, align 8, !dbg !1718
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), double %78), !dbg !1718
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8, !dbg !1718
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1718
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp69, align 8, !dbg !1718
  %call76 = call i32 @fclose(%struct._IO_FILE* %80), !dbg !1718
  br label %do.end77, !dbg !1718

do.end77:                                         ; preds = %do.body68
  br label %do.body78, !dbg !1719

do.body78:                                        ; preds = %do.end77
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp79, metadata !1720, metadata !DIExpression()), !dbg !1722
  %call80 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1722
  store %struct._IO_FILE* %call80, %struct._IO_FILE** %fp79, align 8, !dbg !1722
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8, !dbg !1722
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 401), !dbg !1722
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8, !dbg !1722
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1722
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8, !dbg !1722
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1722
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp79, align 8, !dbg !1722
  %call84 = call i32 @fclose(%struct._IO_FILE* %84), !dbg !1722
  br label %do.end85, !dbg !1722

do.end85:                                         ; preds = %do.body78
  br label %if.end86, !dbg !1723

if.end86:                                         ; preds = %do.end85, %if.end28
  %85 = load i32, i32* %last_processed, align 4, !dbg !1724
  %tobool87 = icmp ne i32 %85, 0, !dbg !1724
  br i1 %tobool87, label %land.lhs.true88, label %if.end120, !dbg !1726

land.lhs.true88:                                  ; preds = %if.end86
  %86 = load i32, i32* %i, align 4, !dbg !1727
  %idxprom89 = zext i32 %86 to i64, !dbg !1728
  %arrayidx90 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom89, !dbg !1728
  %bits91 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx90, i32 0, i32 0, !dbg !1729
  %87 = load i64, i64* %bits91, align 16, !dbg !1729
  %88 = load i32, i32* %last_processed, align 4, !dbg !1730
  %idxprom92 = zext i32 %88 to i64, !dbg !1731
  %arrayidx93 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom92, !dbg !1731
  %bits94 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx93, i32 0, i32 0, !dbg !1732
  %89 = load i64, i64* %bits94, align 16, !dbg !1732
  %cmp95 = icmp eq i64 %87, %89, !dbg !1733
  br i1 %cmp95, label %land.lhs.true97, label %if.end120, !dbg !1734

land.lhs.true97:                                  ; preds = %land.lhs.true88
  %90 = load i32, i32* %i, align 4, !dbg !1735
  %idxprom98 = zext i32 %90 to i64, !dbg !1736
  %arrayidx99 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom98, !dbg !1736
  %step100 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx99, i32 0, i32 1, !dbg !1737
  %91 = load i8, i8* %step100, align 8, !dbg !1737
  %conv101 = zext i8 %91 to i32, !dbg !1736
  %92 = load i32, i32* %last_processed, align 4, !dbg !1738
  %idxprom102 = zext i32 %92 to i64, !dbg !1739
  %arrayidx103 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom102, !dbg !1739
  %step104 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %arrayidx103, i32 0, i32 1, !dbg !1740
  %93 = load i8, i8* %step104, align 8, !dbg !1740
  %conv105 = zext i8 %93 to i32, !dbg !1739
  %cmp106 = icmp eq i32 %conv101, %conv105, !dbg !1741
  br i1 %cmp106, label %if.then108, label %if.end120, !dbg !1742

if.then108:                                       ; preds = %land.lhs.true97
  %94 = load i32, i32* %debugmsg, align 4, !dbg !1743
  %tobool109 = icmp ne i32 %94, 0, !dbg !1743
  br i1 %tobool109, label %if.then110, label %if.end119, !dbg !1746

if.then110:                                       ; preds = %if.then108
  br label %do.body111, !dbg !1747

do.body111:                                       ; preds = %if.then110
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp112, metadata !1748, metadata !DIExpression()), !dbg !1750
  %call113 = call noalias %struct._IO_FILE* @fopen64(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)), !dbg !1750
  store %struct._IO_FILE* %call113, %struct._IO_FILE** %fp112, align 8, !dbg !1750
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp112, align 8, !dbg !1750
  %call114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.membersOfAllNeighbors, i64 0, i64 0), i32 413), !dbg !1750
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %fp112, align 8, !dbg !1750
  %97 = load i32, i32* %i, align 4, !dbg !1750
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %97), !dbg !1750
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %fp112, align 8, !dbg !1750
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)), !dbg !1750
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp112, align 8, !dbg !1750
  %call117 = call i32 @fclose(%struct._IO_FILE* %99), !dbg !1750
  br label %do.end118, !dbg !1750

do.end118:                                        ; preds = %do.body111
  br label %if.end119, !dbg !1750

if.end119:                                        ; preds = %do.end118, %if.then108
  br label %for.inc, !dbg !1751

if.end120:                                        ; preds = %land.lhs.true97, %land.lhs.true88, %if.end86
  %100 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1752
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %100, i32 0, i32 2, !dbg !1754
  %101 = load i64, i64* %used, align 8, !dbg !1754
  %tobool121 = icmp ne i64 %101, 0, !dbg !1752
  br i1 %tobool121, label %land.lhs.true122, label %if.end129, !dbg !1755

land.lhs.true122:                                 ; preds = %if.end120
  %102 = load i64, i64* %limit.addr, align 8, !dbg !1756
  %tobool123 = icmp ne i64 %102, 0, !dbg !1756
  br i1 %tobool123, label %land.lhs.true124, label %if.end129, !dbg !1757

land.lhs.true124:                                 ; preds = %land.lhs.true122
  %103 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1758
  %used125 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %103, i32 0, i32 2, !dbg !1759
  %104 = load i64, i64* %used125, align 8, !dbg !1759
  %105 = load i64, i64* %limit.addr, align 8, !dbg !1760
  %cmp126 = icmp uge i64 %104, %105, !dbg !1761
  br i1 %cmp126, label %if.then128, label %if.end129, !dbg !1762

if.then128:                                       ; preds = %land.lhs.true124
  br label %for.end, !dbg !1763

if.end129:                                        ; preds = %land.lhs.true124, %land.lhs.true122, %if.end120
  %106 = load %struct.redisObject*, %struct.redisObject** %zobj.addr, align 8, !dbg !1764
  %107 = load i32, i32* %i, align 4, !dbg !1765
  %idxprom130 = zext i32 %107 to i64, !dbg !1766
  %arrayidx131 = getelementptr inbounds [9 x %struct.GeoHashBits], [9 x %struct.GeoHashBits]* %neighbors, i64 0, i64 %idxprom130, !dbg !1766
  %108 = load %struct.geoArray*, %struct.geoArray** %ga.addr, align 8, !dbg !1767
  %109 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !1768
  %110 = load i64, i64* %limit.addr, align 8, !dbg !1769
  %111 = bitcast %struct.GeoHashBits* %arrayidx131 to { i64, i8 }*, !dbg !1770
  %112 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %111, i32 0, i32 0, !dbg !1770
  %113 = load i64, i64* %112, align 16, !dbg !1770
  %114 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %111, i32 0, i32 1, !dbg !1770
  %115 = load i8, i8* %114, align 8, !dbg !1770
  %call132 = call i32 @membersOfGeoHashBox(%struct.redisObject* %106, i64 %113, i8 %115, %struct.geoArray* %108, %struct.GeoShape* %109, i64 %110), !dbg !1770
  %116 = load i32, i32* %count, align 4, !dbg !1771
  %add = add i32 %116, %call132, !dbg !1771
  store i32 %add, i32* %count, align 4, !dbg !1771
  %117 = load i32, i32* %i, align 4, !dbg !1772
  store i32 %117, i32* %last_processed, align 4, !dbg !1773
  br label %for.inc, !dbg !1774

for.inc:                                          ; preds = %if.end129, %if.end119, %if.end
  %118 = load i32, i32* %i, align 4, !dbg !1775
  %inc = add i32 %118, 1, !dbg !1775
  store i32 %inc, i32* %i, align 4, !dbg !1775
  br label %for.cond, !dbg !1776, !llvm.loop !1777

for.end:                                          ; preds = %if.then128, %for.cond
  %119 = load i32, i32* %count, align 4, !dbg !1779
  ret i32 %119, !dbg !1780
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local noalias %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local void @geohashGetCoordRange(%struct.GeoHashRange*, %struct.GeoHashRange*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @geohashDecode(double, double, double, double, i64, i8, %struct.GeoHashArea*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @geoaddCommand(%struct.client* %c) #0 !dbg !1781 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %xx = alloca i32, align 4
  %nx = alloca i32, align 4
  %longidx = alloca i32, align 4
  %i = alloca i32, align 4
  %opt = alloca i8*, align 8
  %elements = alloca i32, align 4
  %argc19 = alloca i32, align 4
  %argv20 = alloca %struct.redisObject**, align 8
  %xy = alloca [2 x double], align 16
  %hash = alloca %struct.GeoHashBits, align 8
  %bits = alloca i64, align 8
  %score = alloca %struct.redisObject*, align 8
  %val = alloca %struct.redisObject*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !1784, metadata !DIExpression()), !dbg !1785
  store i32 0, i32* %xx, align 4, !dbg !1785
  call void @llvm.dbg.declare(metadata i32* %nx, metadata !1786, metadata !DIExpression()), !dbg !1787
  store i32 0, i32* %nx, align 4, !dbg !1787
  call void @llvm.dbg.declare(metadata i32* %longidx, metadata !1788, metadata !DIExpression()), !dbg !1789
  store i32 2, i32* %longidx, align 4, !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1790, metadata !DIExpression()), !dbg !1791
  br label %while.cond, !dbg !1792

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i32, i32* %longidx, align 4, !dbg !1793
  %1 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1794
  %argc = getelementptr inbounds %struct.client, %struct.client* %1, i32 0, i32 9, !dbg !1795
  %2 = load i32, i32* %argc, align 8, !dbg !1795
  %cmp = icmp slt i32 %0, %2, !dbg !1796
  br i1 %cmp, label %while.body, label %while.end, !dbg !1792

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %opt, metadata !1797, metadata !DIExpression()), !dbg !1799
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1800
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !1801
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !1801
  %5 = load i32, i32* %longidx, align 4, !dbg !1802
  %idxprom = sext i32 %5 to i64, !dbg !1800
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 %idxprom, !dbg !1800
  %6 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !1800
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %6, i32 0, i32 2, !dbg !1803
  %7 = load i8*, i8** %ptr, align 8, !dbg !1803
  store i8* %7, i8** %opt, align 8, !dbg !1799
  %8 = load i8*, i8** %opt, align 8, !dbg !1804
  %call = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !1806
  %tobool = icmp ne i32 %call, 0, !dbg !1806
  br i1 %tobool, label %if.else, label %if.then, !dbg !1807

if.then:                                          ; preds = %while.body
  store i32 1, i32* %nx, align 4, !dbg !1808
  br label %if.end10, !dbg !1809

if.else:                                          ; preds = %while.body
  %9 = load i8*, i8** %opt, align 8, !dbg !1810
  %call1 = call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !1812
  %tobool2 = icmp ne i32 %call1, 0, !dbg !1812
  br i1 %tobool2, label %if.else4, label %if.then3, !dbg !1813

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %xx, align 4, !dbg !1814
  br label %if.end9, !dbg !1815

if.else4:                                         ; preds = %if.else
  %10 = load i8*, i8** %opt, align 8, !dbg !1816
  %call5 = call i32 @strcasecmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !1818
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1818
  br i1 %tobool6, label %if.else8, label %if.then7, !dbg !1819

if.then7:                                         ; preds = %if.else4
  br label %if.end, !dbg !1820

if.else8:                                         ; preds = %if.else4
  br label %while.end, !dbg !1822

if.end:                                           ; preds = %if.then7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %11 = load i32, i32* %longidx, align 4, !dbg !1823
  %inc = add nsw i32 %11, 1, !dbg !1823
  store i32 %inc, i32* %longidx, align 4, !dbg !1823
  br label %while.cond, !dbg !1792, !llvm.loop !1824

while.end:                                        ; preds = %if.else8, %while.cond
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1826
  %argc11 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 9, !dbg !1828
  %13 = load i32, i32* %argc11, align 8, !dbg !1828
  %14 = load i32, i32* %longidx, align 4, !dbg !1829
  %sub = sub nsw i32 %13, %14, !dbg !1830
  %rem = srem i32 %sub, 3, !dbg !1831
  %tobool12 = icmp ne i32 %rem, 0, !dbg !1831
  br i1 %tobool12, label %if.then15, label %lor.lhs.false, !dbg !1832

lor.lhs.false:                                    ; preds = %while.end
  %15 = load i32, i32* %xx, align 4, !dbg !1833
  %tobool13 = icmp ne i32 %15, 0, !dbg !1833
  br i1 %tobool13, label %land.lhs.true, label %if.end16, !dbg !1834

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load i32, i32* %nx, align 4, !dbg !1835
  %tobool14 = icmp ne i32 %16, 0, !dbg !1835
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1836

if.then15:                                        ; preds = %land.lhs.true, %while.end
  %17 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1837
  %18 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 16), align 8, !dbg !1839
  call void @addReplyErrorObject(%struct.client* %17, %struct.redisObject* %18), !dbg !1840
  br label %return, !dbg !1841

if.end16:                                         ; preds = %land.lhs.true, %lor.lhs.false
  call void @llvm.dbg.declare(metadata i32* %elements, metadata !1842, metadata !DIExpression()), !dbg !1843
  %19 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1844
  %argc17 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 9, !dbg !1845
  %20 = load i32, i32* %argc17, align 8, !dbg !1845
  %21 = load i32, i32* %longidx, align 4, !dbg !1846
  %sub18 = sub nsw i32 %20, %21, !dbg !1847
  %div = sdiv i32 %sub18, 3, !dbg !1848
  store i32 %div, i32* %elements, align 4, !dbg !1843
  call void @llvm.dbg.declare(metadata i32* %argc19, metadata !1849, metadata !DIExpression()), !dbg !1850
  %22 = load i32, i32* %longidx, align 4, !dbg !1851
  %23 = load i32, i32* %elements, align 4, !dbg !1852
  %mul = mul nsw i32 %23, 2, !dbg !1853
  %add = add nsw i32 %22, %mul, !dbg !1854
  store i32 %add, i32* %argc19, align 4, !dbg !1850
  call void @llvm.dbg.declare(metadata %struct.redisObject*** %argv20, metadata !1855, metadata !DIExpression()), !dbg !1856
  %24 = load i32, i32* %argc19, align 4, !dbg !1857
  %conv = sext i32 %24 to i64, !dbg !1857
  %mul21 = mul i64 %conv, 8, !dbg !1858
  %call22 = call i8* @zcalloc(i64 %mul21), !dbg !1859
  %25 = bitcast i8* %call22 to %struct.redisObject**, !dbg !1859
  store %struct.redisObject** %25, %struct.redisObject*** %argv20, align 8, !dbg !1856
  %call23 = call %struct.redisObject* @createRawStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i64 4), !dbg !1860
  %26 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1861
  %arrayidx24 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %26, i64 0, !dbg !1861
  store %struct.redisObject* %call23, %struct.redisObject** %arrayidx24, align 8, !dbg !1862
  store i32 1, i32* %i, align 4, !dbg !1863
  br label %for.cond, !dbg !1865

for.cond:                                         ; preds = %for.inc, %if.end16
  %27 = load i32, i32* %i, align 4, !dbg !1866
  %28 = load i32, i32* %longidx, align 4, !dbg !1868
  %cmp25 = icmp slt i32 %27, %28, !dbg !1869
  br i1 %cmp25, label %for.body, label %for.end, !dbg !1870

for.body:                                         ; preds = %for.cond
  %29 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1871
  %argv27 = getelementptr inbounds %struct.client, %struct.client* %29, i32 0, i32 10, !dbg !1873
  %30 = load %struct.redisObject**, %struct.redisObject*** %argv27, align 8, !dbg !1873
  %31 = load i32, i32* %i, align 4, !dbg !1874
  %idxprom28 = sext i32 %31 to i64, !dbg !1871
  %arrayidx29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %30, i64 %idxprom28, !dbg !1871
  %32 = load %struct.redisObject*, %struct.redisObject** %arrayidx29, align 8, !dbg !1871
  %33 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1875
  %34 = load i32, i32* %i, align 4, !dbg !1876
  %idxprom30 = sext i32 %34 to i64, !dbg !1875
  %arrayidx31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 %idxprom30, !dbg !1875
  store %struct.redisObject* %32, %struct.redisObject** %arrayidx31, align 8, !dbg !1877
  %35 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1878
  %36 = load i32, i32* %i, align 4, !dbg !1879
  %idxprom32 = sext i32 %36 to i64, !dbg !1878
  %arrayidx33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 %idxprom32, !dbg !1878
  %37 = load %struct.redisObject*, %struct.redisObject** %arrayidx33, align 8, !dbg !1878
  call void @incrRefCount(%struct.redisObject* %37), !dbg !1880
  br label %for.inc, !dbg !1881

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !dbg !1882
  %inc34 = add nsw i32 %38, 1, !dbg !1882
  store i32 %inc34, i32* %i, align 4, !dbg !1882
  br label %for.cond, !dbg !1883, !llvm.loop !1884

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !1886
  br label %for.cond35, !dbg !1888

for.cond35:                                       ; preds = %for.inc83, %for.end
  %39 = load i32, i32* %i, align 4, !dbg !1889
  %40 = load i32, i32* %elements, align 4, !dbg !1891
  %cmp36 = icmp slt i32 %39, %40, !dbg !1892
  br i1 %cmp36, label %for.body38, label %for.end85, !dbg !1893

for.body38:                                       ; preds = %for.cond35
  call void @llvm.dbg.declare(metadata [2 x double]* %xy, metadata !1894, metadata !DIExpression()), !dbg !1896
  %41 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1897
  %42 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1899
  %argv39 = getelementptr inbounds %struct.client, %struct.client* %42, i32 0, i32 10, !dbg !1900
  %43 = load %struct.redisObject**, %struct.redisObject*** %argv39, align 8, !dbg !1900
  %44 = load i32, i32* %longidx, align 4, !dbg !1901
  %idx.ext = sext i32 %44 to i64, !dbg !1902
  %add.ptr = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 %idx.ext, !dbg !1902
  %45 = load i32, i32* %i, align 4, !dbg !1903
  %mul40 = mul nsw i32 %45, 3, !dbg !1904
  %idx.ext41 = sext i32 %mul40 to i64, !dbg !1905
  %add.ptr42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr, i64 %idx.ext41, !dbg !1905
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !1906
  %call43 = call i32 @extractLongLatOrReply(%struct.client* %41, %struct.redisObject** %add.ptr42, double* %arraydecay), !dbg !1907
  %cmp44 = icmp eq i32 %call43, -1, !dbg !1908
  br i1 %cmp44, label %if.then46, label %if.end61, !dbg !1909

if.then46:                                        ; preds = %for.body38
  store i32 0, i32* %i, align 4, !dbg !1910
  br label %for.cond47, !dbg !1913

for.cond47:                                       ; preds = %for.inc58, %if.then46
  %46 = load i32, i32* %i, align 4, !dbg !1914
  %47 = load i32, i32* %argc19, align 4, !dbg !1916
  %cmp48 = icmp slt i32 %46, %47, !dbg !1917
  br i1 %cmp48, label %for.body50, label %for.end60, !dbg !1918

for.body50:                                       ; preds = %for.cond47
  %48 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1919
  %49 = load i32, i32* %i, align 4, !dbg !1921
  %idxprom51 = sext i32 %49 to i64, !dbg !1919
  %arrayidx52 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %48, i64 %idxprom51, !dbg !1919
  %50 = load %struct.redisObject*, %struct.redisObject** %arrayidx52, align 8, !dbg !1919
  %tobool53 = icmp ne %struct.redisObject* %50, null, !dbg !1919
  br i1 %tobool53, label %if.then54, label %if.end57, !dbg !1922

if.then54:                                        ; preds = %for.body50
  %51 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1923
  %52 = load i32, i32* %i, align 4, !dbg !1924
  %idxprom55 = sext i32 %52 to i64, !dbg !1923
  %arrayidx56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %51, i64 %idxprom55, !dbg !1923
  %53 = load %struct.redisObject*, %struct.redisObject** %arrayidx56, align 8, !dbg !1923
  call void @decrRefCount(%struct.redisObject* %53), !dbg !1925
  br label %if.end57, !dbg !1925

if.end57:                                         ; preds = %if.then54, %for.body50
  br label %for.inc58, !dbg !1926

for.inc58:                                        ; preds = %if.end57
  %54 = load i32, i32* %i, align 4, !dbg !1927
  %inc59 = add nsw i32 %54, 1, !dbg !1927
  store i32 %inc59, i32* %i, align 4, !dbg !1927
  br label %for.cond47, !dbg !1928, !llvm.loop !1929

for.end60:                                        ; preds = %for.cond47
  %55 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1931
  %56 = bitcast %struct.redisObject** %55 to i8*, !dbg !1931
  call void @zfree(i8* %56), !dbg !1932
  br label %return, !dbg !1933

if.end61:                                         ; preds = %for.body38
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !1934, metadata !DIExpression()), !dbg !1935
  %arrayidx62 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !1936
  %57 = load double, double* %arrayidx62, align 16, !dbg !1936
  %arrayidx63 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 1, !dbg !1937
  %58 = load double, double* %arrayidx63, align 8, !dbg !1937
  %call64 = call i32 @geohashEncodeWGS84(double %57, double %58, i8 zeroext 26, %struct.GeoHashBits* %hash), !dbg !1938
  call void @llvm.dbg.declare(metadata i64* %bits, metadata !1939, metadata !DIExpression()), !dbg !1940
  %59 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !1941
  %60 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %59, i32 0, i32 0, !dbg !1941
  %61 = load i64, i64* %60, align 8, !dbg !1941
  %62 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %59, i32 0, i32 1, !dbg !1941
  %63 = load i8, i8* %62, align 8, !dbg !1941
  %call65 = call i64 @geohashAlign52Bits(i64 %61, i8 %63), !dbg !1941
  store i64 %call65, i64* %bits, align 8, !dbg !1940
  call void @llvm.dbg.declare(metadata %struct.redisObject** %score, metadata !1942, metadata !DIExpression()), !dbg !1943
  %64 = load i64, i64* %bits, align 8, !dbg !1944
  %call66 = call i8* @sdsfromlonglong(i64 %64), !dbg !1945
  %call67 = call %struct.redisObject* @createObject(i32 0, i8* %call66), !dbg !1946
  store %struct.redisObject* %call67, %struct.redisObject** %score, align 8, !dbg !1943
  call void @llvm.dbg.declare(metadata %struct.redisObject** %val, metadata !1947, metadata !DIExpression()), !dbg !1948
  %65 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1949
  %argv68 = getelementptr inbounds %struct.client, %struct.client* %65, i32 0, i32 10, !dbg !1950
  %66 = load %struct.redisObject**, %struct.redisObject*** %argv68, align 8, !dbg !1950
  %67 = load i32, i32* %longidx, align 4, !dbg !1951
  %68 = load i32, i32* %i, align 4, !dbg !1952
  %mul69 = mul nsw i32 %68, 3, !dbg !1953
  %add70 = add nsw i32 %67, %mul69, !dbg !1954
  %add71 = add nsw i32 %add70, 2, !dbg !1955
  %idxprom72 = sext i32 %add71 to i64, !dbg !1949
  %arrayidx73 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %66, i64 %idxprom72, !dbg !1949
  %69 = load %struct.redisObject*, %struct.redisObject** %arrayidx73, align 8, !dbg !1949
  store %struct.redisObject* %69, %struct.redisObject** %val, align 8, !dbg !1948
  %70 = load %struct.redisObject*, %struct.redisObject** %score, align 8, !dbg !1956
  %71 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1957
  %72 = load i32, i32* %longidx, align 4, !dbg !1958
  %73 = load i32, i32* %i, align 4, !dbg !1959
  %mul74 = mul nsw i32 %73, 2, !dbg !1960
  %add75 = add nsw i32 %72, %mul74, !dbg !1961
  %idxprom76 = sext i32 %add75 to i64, !dbg !1957
  %arrayidx77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %71, i64 %idxprom76, !dbg !1957
  store %struct.redisObject* %70, %struct.redisObject** %arrayidx77, align 8, !dbg !1962
  %74 = load %struct.redisObject*, %struct.redisObject** %val, align 8, !dbg !1963
  %75 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1964
  %76 = load i32, i32* %longidx, align 4, !dbg !1965
  %add78 = add nsw i32 %76, 1, !dbg !1966
  %77 = load i32, i32* %i, align 4, !dbg !1967
  %mul79 = mul nsw i32 %77, 2, !dbg !1968
  %add80 = add nsw i32 %add78, %mul79, !dbg !1969
  %idxprom81 = sext i32 %add80 to i64, !dbg !1964
  %arrayidx82 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %75, i64 %idxprom81, !dbg !1964
  store %struct.redisObject* %74, %struct.redisObject** %arrayidx82, align 8, !dbg !1970
  %78 = load %struct.redisObject*, %struct.redisObject** %val, align 8, !dbg !1971
  call void @incrRefCount(%struct.redisObject* %78), !dbg !1972
  br label %for.inc83, !dbg !1973

for.inc83:                                        ; preds = %if.end61
  %79 = load i32, i32* %i, align 4, !dbg !1974
  %inc84 = add nsw i32 %79, 1, !dbg !1974
  store i32 %inc84, i32* %i, align 4, !dbg !1974
  br label %for.cond35, !dbg !1975, !llvm.loop !1976

for.end85:                                        ; preds = %for.cond35
  %80 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1978
  %81 = load i32, i32* %argc19, align 4, !dbg !1979
  %82 = load %struct.redisObject**, %struct.redisObject*** %argv20, align 8, !dbg !1980
  call void @replaceClientCommandVector(%struct.client* %80, i32 %81, %struct.redisObject** %82), !dbg !1981
  %83 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !1982
  call void @zaddCommand(%struct.client* %83), !dbg !1983
  br label %return, !dbg !1984

return:                                           ; preds = %for.end85, %for.end60, %if.then15
  ret void, !dbg !1984
}

declare dso_local void @addReplyErrorObject(%struct.client*, %struct.redisObject*) #2

declare dso_local i8* @zcalloc(i64) #2

declare dso_local %struct.redisObject* @createRawStringObject(i8*, i64) #2

declare dso_local void @incrRefCount(%struct.redisObject*) #2

declare dso_local void @decrRefCount(%struct.redisObject*) #2

declare dso_local i32 @geohashEncodeWGS84(double, double, i8 zeroext, %struct.GeoHashBits*) #2

declare dso_local %struct.redisObject* @createObject(i32, i8*) #2

declare dso_local void @replaceClientCommandVector(%struct.client*, i32, %struct.redisObject**) #2

declare dso_local void @zaddCommand(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @georadiusGeneric(%struct.client* %c, i32 %srcKeyIndex, i32 %flags) #0 !dbg !1985 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %srcKeyIndex.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %storekey = alloca %struct.redisObject*, align 8
  %storedist = alloca i32, align 4
  %zobj = alloca %struct.redisObject*, align 8
  %base_args = alloca i32, align 4
  %shape = alloca %struct.GeoShape, align 8
  %member = alloca %struct.redisObject*, align 8
  %withdist = alloca i32, align 4
  %withhash = alloca i32, align 4
  %withcoords = alloca i32, align 4
  %frommember = alloca i32, align 4
  %fromloc = alloca i32, align 4
  %byradius = alloca i32, align 4
  %bybox = alloca i32, align 4
  %sort = alloca i32, align 4
  %any = alloca i32, align 4
  %count = alloca i64, align 8
  %remaining = alloca i32, align 4
  %i = alloca i32, align 4
  %arg = alloca i8*, align 8
  %georadius = alloca %struct.GeoHashRadius, align 8
  %ga = alloca %struct.geoArray*, align 8
  %result_length = alloca i64, align 8
  %returned_items = alloca i64, align 8
  %option_length = alloca i64, align 8
  %sort_gp_callback = alloca i32 (i8*, i8*)*, align 8
  %i386 = alloca i32, align 4
  %gp = alloca %struct.geoPoint*, align 8
  %zobj418 = alloca %struct.redisObject*, align 8
  %zs = alloca %struct.zset*, align 8
  %i419 = alloca i32, align 4
  %maxelelen = alloca i64, align 8
  %totelelen = alloca i64, align 8
  %znode = alloca %struct.zskiplistNode*, align 8
  %gp430 = alloca %struct.geoPoint*, align 8
  %score437 = alloca double, align 8
  %elelen = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !1988, metadata !DIExpression()), !dbg !1989
  store i32 %srcKeyIndex, i32* %srcKeyIndex.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srcKeyIndex.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1992, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.declare(metadata %struct.redisObject** %storekey, metadata !1994, metadata !DIExpression()), !dbg !1995
  store %struct.redisObject* null, %struct.redisObject** %storekey, align 8, !dbg !1995
  call void @llvm.dbg.declare(metadata i32* %storedist, metadata !1996, metadata !DIExpression()), !dbg !1997
  store i32 0, i32* %storedist, align 4, !dbg !1997
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj, metadata !1998, metadata !DIExpression()), !dbg !1999
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2000
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !2001
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !2001
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2002
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !2003
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !2003
  %4 = load i32, i32* %srcKeyIndex.addr, align 4, !dbg !2004
  %idxprom = sext i32 %4 to i64, !dbg !2002
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 %idxprom, !dbg !2002
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !2002
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %1, %struct.redisObject* %5), !dbg !2005
  store %struct.redisObject* %call, %struct.redisObject** %zobj, align 8, !dbg !1999
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2006
  %7 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2008
  %call1 = call i32 @checkType(%struct.client* %6, %struct.redisObject* %7, i32 3), !dbg !2009
  %tobool = icmp ne i32 %call1, 0, !dbg !2009
  br i1 %tobool, label %if.then, label %if.end, !dbg !2010

if.then:                                          ; preds = %entry
  br label %return, !dbg !2011

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %base_args, metadata !2012, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.declare(metadata %struct.GeoShape* %shape, metadata !2014, metadata !DIExpression()), !dbg !2015
  %8 = bitcast %struct.GeoShape* %shape to i8*, !dbg !2015
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 80, i1 false), !dbg !2015
  %9 = load i32, i32* %flags.addr, align 4, !dbg !2016
  %and = and i32 %9, 1, !dbg !2018
  %tobool2 = icmp ne i32 %and, 0, !dbg !2018
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !2019

if.then3:                                         ; preds = %if.end
  store i32 6, i32* %base_args, align 4, !dbg !2020
  %type = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 0, !dbg !2022
  store i32 1, i32* %type, align 8, !dbg !2023
  %10 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2024
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2026
  %argv4 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 10, !dbg !2027
  %12 = load %struct.redisObject**, %struct.redisObject*** %argv4, align 8, !dbg !2027
  %add.ptr = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 2, !dbg !2028
  %xy = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 1, !dbg !2029
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !2030
  %call5 = call i32 @extractLongLatOrReply(%struct.client* %10, %struct.redisObject** %add.ptr, double* %arraydecay), !dbg !2031
  %cmp = icmp eq i32 %call5, -1, !dbg !2032
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !2033

if.then6:                                         ; preds = %if.then3
  br label %return, !dbg !2034

if.end7:                                          ; preds = %if.then3
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2035
  %14 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2037
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 10, !dbg !2038
  %15 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !2038
  %16 = load i32, i32* %base_args, align 4, !dbg !2039
  %idx.ext = sext i32 %16 to i64, !dbg !2040
  %add.ptr9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 %idx.ext, !dbg !2040
  %add.ptr10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr9, i64 -2, !dbg !2041
  %conversion = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2042
  %t = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 4, !dbg !2043
  %radius = bitcast %union.anon.5* %t to double*, !dbg !2044
  %call11 = call i32 @extractDistanceOrReply(%struct.client* %13, %struct.redisObject** %add.ptr10, double* %conversion, double* %radius), !dbg !2045
  %cmp12 = icmp ne i32 %call11, 0, !dbg !2046
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2047

if.then13:                                        ; preds = %if.end7
  br label %return, !dbg !2048

if.end14:                                         ; preds = %if.end7
  br label %if.end57, !dbg !2049

if.else:                                          ; preds = %if.end
  %17 = load i32, i32* %flags.addr, align 4, !dbg !2050
  %and15 = and i32 %17, 2, !dbg !2052
  %tobool16 = icmp ne i32 %and15, 0, !dbg !2052
  br i1 %tobool16, label %land.lhs.true, label %if.else19, !dbg !2053

land.lhs.true:                                    ; preds = %if.else
  %18 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2054
  %tobool17 = icmp ne %struct.redisObject* %18, null, !dbg !2054
  br i1 %tobool17, label %if.else19, label %if.then18, !dbg !2055

if.then18:                                        ; preds = %land.lhs.true
  store i32 5, i32* %base_args, align 4, !dbg !2056
  br label %if.end56, !dbg !2058

if.else19:                                        ; preds = %land.lhs.true, %if.else
  %19 = load i32, i32* %flags.addr, align 4, !dbg !2059
  %and20 = and i32 %19, 2, !dbg !2061
  %tobool21 = icmp ne i32 %and20, 0, !dbg !2061
  br i1 %tobool21, label %if.then22, label %if.else43, !dbg !2062

if.then22:                                        ; preds = %if.else19
  store i32 5, i32* %base_args, align 4, !dbg !2063
  %type23 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 0, !dbg !2065
  store i32 1, i32* %type23, align 8, !dbg !2066
  call void @llvm.dbg.declare(metadata %struct.redisObject** %member, metadata !2067, metadata !DIExpression()), !dbg !2068
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2069
  %argv24 = getelementptr inbounds %struct.client, %struct.client* %20, i32 0, i32 10, !dbg !2070
  %21 = load %struct.redisObject**, %struct.redisObject*** %argv24, align 8, !dbg !2070
  %arrayidx25 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %21, i64 2, !dbg !2069
  %22 = load %struct.redisObject*, %struct.redisObject** %arrayidx25, align 8, !dbg !2069
  store %struct.redisObject* %22, %struct.redisObject** %member, align 8, !dbg !2068
  %23 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2071
  %24 = load %struct.redisObject*, %struct.redisObject** %member, align 8, !dbg !2073
  %xy26 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 1, !dbg !2074
  %arraydecay27 = getelementptr inbounds [2 x double], [2 x double]* %xy26, i64 0, i64 0, !dbg !2075
  %call28 = call i32 @longLatFromMember(%struct.redisObject* %23, %struct.redisObject* %24, double* %arraydecay27), !dbg !2076
  %cmp29 = icmp eq i32 %call28, -1, !dbg !2077
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !2078

if.then30:                                        ; preds = %if.then22
  %25 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2079
  call void @addReplyError(%struct.client* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0)), !dbg !2081
  br label %return, !dbg !2082

if.end31:                                         ; preds = %if.then22
  %26 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2083
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2085
  %argv32 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 10, !dbg !2086
  %28 = load %struct.redisObject**, %struct.redisObject*** %argv32, align 8, !dbg !2086
  %29 = load i32, i32* %base_args, align 4, !dbg !2087
  %idx.ext33 = sext i32 %29 to i64, !dbg !2088
  %add.ptr34 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %28, i64 %idx.ext33, !dbg !2088
  %add.ptr35 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr34, i64 -2, !dbg !2089
  %conversion36 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2090
  %t37 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 4, !dbg !2091
  %radius38 = bitcast %union.anon.5* %t37 to double*, !dbg !2092
  %call39 = call i32 @extractDistanceOrReply(%struct.client* %26, %struct.redisObject** %add.ptr35, double* %conversion36, double* %radius38), !dbg !2093
  %cmp40 = icmp ne i32 %call39, 0, !dbg !2094
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !2095

if.then41:                                        ; preds = %if.end31
  br label %return, !dbg !2096

if.end42:                                         ; preds = %if.end31
  br label %if.end55, !dbg !2097

if.else43:                                        ; preds = %if.else19
  %30 = load i32, i32* %flags.addr, align 4, !dbg !2098
  %and44 = and i32 %30, 8, !dbg !2100
  %tobool45 = icmp ne i32 %and44, 0, !dbg !2100
  br i1 %tobool45, label %if.then46, label %if.else53, !dbg !2101

if.then46:                                        ; preds = %if.else43
  store i32 2, i32* %base_args, align 4, !dbg !2102
  %31 = load i32, i32* %flags.addr, align 4, !dbg !2104
  %and47 = and i32 %31, 16, !dbg !2106
  %tobool48 = icmp ne i32 %and47, 0, !dbg !2106
  br i1 %tobool48, label %if.then49, label %if.end52, !dbg !2107

if.then49:                                        ; preds = %if.then46
  store i32 3, i32* %base_args, align 4, !dbg !2108
  %32 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2110
  %argv50 = getelementptr inbounds %struct.client, %struct.client* %32, i32 0, i32 10, !dbg !2111
  %33 = load %struct.redisObject**, %struct.redisObject*** %argv50, align 8, !dbg !2111
  %arrayidx51 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %33, i64 1, !dbg !2110
  %34 = load %struct.redisObject*, %struct.redisObject** %arrayidx51, align 8, !dbg !2110
  store %struct.redisObject* %34, %struct.redisObject** %storekey, align 8, !dbg !2112
  br label %if.end52, !dbg !2113

if.end52:                                         ; preds = %if.then49, %if.then46
  br label %if.end54, !dbg !2114

if.else53:                                        ; preds = %if.else43
  %35 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2115
  call void @addReplyError(%struct.client* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0)), !dbg !2117
  br label %return, !dbg !2118

if.end54:                                         ; preds = %if.end52
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end42
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then18
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end14
  call void @llvm.dbg.declare(metadata i32* %withdist, metadata !2119, metadata !DIExpression()), !dbg !2120
  store i32 0, i32* %withdist, align 4, !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %withhash, metadata !2121, metadata !DIExpression()), !dbg !2122
  store i32 0, i32* %withhash, align 4, !dbg !2122
  call void @llvm.dbg.declare(metadata i32* %withcoords, metadata !2123, metadata !DIExpression()), !dbg !2124
  store i32 0, i32* %withcoords, align 4, !dbg !2124
  call void @llvm.dbg.declare(metadata i32* %frommember, metadata !2125, metadata !DIExpression()), !dbg !2126
  store i32 0, i32* %frommember, align 4, !dbg !2126
  call void @llvm.dbg.declare(metadata i32* %fromloc, metadata !2127, metadata !DIExpression()), !dbg !2128
  store i32 0, i32* %fromloc, align 4, !dbg !2128
  call void @llvm.dbg.declare(metadata i32* %byradius, metadata !2129, metadata !DIExpression()), !dbg !2130
  store i32 0, i32* %byradius, align 4, !dbg !2130
  call void @llvm.dbg.declare(metadata i32* %bybox, metadata !2131, metadata !DIExpression()), !dbg !2132
  store i32 0, i32* %bybox, align 4, !dbg !2132
  call void @llvm.dbg.declare(metadata i32* %sort, metadata !2133, metadata !DIExpression()), !dbg !2134
  store i32 0, i32* %sort, align 4, !dbg !2134
  call void @llvm.dbg.declare(metadata i32* %any, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 0, i32* %any, align 4, !dbg !2136
  call void @llvm.dbg.declare(metadata i64* %count, metadata !2137, metadata !DIExpression()), !dbg !2138
  store i64 0, i64* %count, align 8, !dbg !2138
  %36 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2139
  %argc = getelementptr inbounds %struct.client, %struct.client* %36, i32 0, i32 9, !dbg !2141
  %37 = load i32, i32* %argc, align 8, !dbg !2141
  %38 = load i32, i32* %base_args, align 4, !dbg !2142
  %cmp58 = icmp sgt i32 %37, %38, !dbg !2143
  br i1 %cmp58, label %if.then59, label %if.end279, !dbg !2144

if.then59:                                        ; preds = %if.end57
  call void @llvm.dbg.declare(metadata i32* %remaining, metadata !2145, metadata !DIExpression()), !dbg !2147
  %39 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2148
  %argc60 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 9, !dbg !2149
  %40 = load i32, i32* %argc60, align 8, !dbg !2149
  %41 = load i32, i32* %base_args, align 4, !dbg !2150
  %sub = sub nsw i32 %40, %41, !dbg !2151
  store i32 %sub, i32* %remaining, align 4, !dbg !2147
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2152, metadata !DIExpression()), !dbg !2154
  store i32 0, i32* %i, align 4, !dbg !2154
  br label %for.cond, !dbg !2155

for.cond:                                         ; preds = %for.inc, %if.then59
  %42 = load i32, i32* %i, align 4, !dbg !2156
  %43 = load i32, i32* %remaining, align 4, !dbg !2158
  %cmp61 = icmp slt i32 %42, %43, !dbg !2159
  br i1 %cmp61, label %for.body, label %for.end, !dbg !2160

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %arg, metadata !2161, metadata !DIExpression()), !dbg !2163
  %44 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2164
  %argv62 = getelementptr inbounds %struct.client, %struct.client* %44, i32 0, i32 10, !dbg !2165
  %45 = load %struct.redisObject**, %struct.redisObject*** %argv62, align 8, !dbg !2165
  %46 = load i32, i32* %base_args, align 4, !dbg !2166
  %47 = load i32, i32* %i, align 4, !dbg !2167
  %add = add nsw i32 %46, %47, !dbg !2168
  %idxprom63 = sext i32 %add to i64, !dbg !2164
  %arrayidx64 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %45, i64 %idxprom63, !dbg !2164
  %48 = load %struct.redisObject*, %struct.redisObject** %arrayidx64, align 8, !dbg !2164
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %48, i32 0, i32 2, !dbg !2169
  %49 = load i8*, i8** %ptr, align 8, !dbg !2169
  store i8* %49, i8** %arg, align 8, !dbg !2163
  %50 = load i8*, i8** %arg, align 8, !dbg !2170
  %call65 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !2172
  %tobool66 = icmp ne i32 %call65, 0, !dbg !2172
  br i1 %tobool66, label %if.else68, label %if.then67, !dbg !2173

if.then67:                                        ; preds = %for.body
  store i32 1, i32* %withdist, align 4, !dbg !2174
  br label %if.end277, !dbg !2176

if.else68:                                        ; preds = %for.body
  %51 = load i8*, i8** %arg, align 8, !dbg !2177
  %call69 = call i32 @strcasecmp(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !2179
  %tobool70 = icmp ne i32 %call69, 0, !dbg !2179
  br i1 %tobool70, label %if.else72, label %if.then71, !dbg !2180

if.then71:                                        ; preds = %if.else68
  store i32 1, i32* %withhash, align 4, !dbg !2181
  br label %if.end276, !dbg !2183

if.else72:                                        ; preds = %if.else68
  %52 = load i8*, i8** %arg, align 8, !dbg !2184
  %call73 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0)) #6, !dbg !2186
  %tobool74 = icmp ne i32 %call73, 0, !dbg !2186
  br i1 %tobool74, label %if.else76, label %if.then75, !dbg !2187

if.then75:                                        ; preds = %if.else72
  store i32 1, i32* %withcoords, align 4, !dbg !2188
  br label %if.end275, !dbg !2190

if.else76:                                        ; preds = %if.else72
  %53 = load i8*, i8** %arg, align 8, !dbg !2191
  %call77 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !2193
  %tobool78 = icmp ne i32 %call77, 0, !dbg !2193
  br i1 %tobool78, label %if.else80, label %if.then79, !dbg !2194

if.then79:                                        ; preds = %if.else76
  store i32 1, i32* %any, align 4, !dbg !2195
  br label %if.end274, !dbg !2197

if.else80:                                        ; preds = %if.else76
  %54 = load i8*, i8** %arg, align 8, !dbg !2198
  %call81 = call i32 @strcasecmp(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !2200
  %tobool82 = icmp ne i32 %call81, 0, !dbg !2200
  br i1 %tobool82, label %if.else84, label %if.then83, !dbg !2201

if.then83:                                        ; preds = %if.else80
  store i32 1, i32* %sort, align 4, !dbg !2202
  br label %if.end273, !dbg !2204

if.else84:                                        ; preds = %if.else80
  %55 = load i8*, i8** %arg, align 8, !dbg !2205
  %call85 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !2207
  %tobool86 = icmp ne i32 %call85, 0, !dbg !2207
  br i1 %tobool86, label %if.else88, label %if.then87, !dbg !2208

if.then87:                                        ; preds = %if.else84
  store i32 2, i32* %sort, align 4, !dbg !2209
  br label %if.end272, !dbg !2211

if.else88:                                        ; preds = %if.else84
  %56 = load i8*, i8** %arg, align 8, !dbg !2212
  %call89 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !2214
  %tobool90 = icmp ne i32 %call89, 0, !dbg !2214
  br i1 %tobool90, label %if.else107, label %land.lhs.true91, !dbg !2215

land.lhs.true91:                                  ; preds = %if.else88
  %57 = load i32, i32* %i, align 4, !dbg !2216
  %add92 = add nsw i32 %57, 1, !dbg !2217
  %58 = load i32, i32* %remaining, align 4, !dbg !2218
  %cmp93 = icmp slt i32 %add92, %58, !dbg !2219
  br i1 %cmp93, label %if.then94, label %if.else107, !dbg !2220

if.then94:                                        ; preds = %land.lhs.true91
  %59 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2221
  %60 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2224
  %argv95 = getelementptr inbounds %struct.client, %struct.client* %60, i32 0, i32 10, !dbg !2225
  %61 = load %struct.redisObject**, %struct.redisObject*** %argv95, align 8, !dbg !2225
  %62 = load i32, i32* %base_args, align 4, !dbg !2226
  %63 = load i32, i32* %i, align 4, !dbg !2227
  %add96 = add nsw i32 %62, %63, !dbg !2228
  %add97 = add nsw i32 %add96, 1, !dbg !2229
  %idxprom98 = sext i32 %add97 to i64, !dbg !2224
  %arrayidx99 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %61, i64 %idxprom98, !dbg !2224
  %64 = load %struct.redisObject*, %struct.redisObject** %arrayidx99, align 8, !dbg !2224
  %call100 = call i32 @getLongLongFromObjectOrReply(%struct.client* %59, %struct.redisObject* %64, i64* %count, i8* null), !dbg !2230
  %cmp101 = icmp ne i32 %call100, 0, !dbg !2231
  br i1 %cmp101, label %if.then102, label %if.end103, !dbg !2232

if.then102:                                       ; preds = %if.then94
  br label %return, !dbg !2233

if.end103:                                        ; preds = %if.then94
  %65 = load i64, i64* %count, align 8, !dbg !2234
  %cmp104 = icmp sle i64 %65, 0, !dbg !2236
  br i1 %cmp104, label %if.then105, label %if.end106, !dbg !2237

if.then105:                                       ; preds = %if.end103
  %66 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2238
  call void @addReplyError(%struct.client* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0)), !dbg !2240
  br label %return, !dbg !2241

if.end106:                                        ; preds = %if.end103
  %67 = load i32, i32* %i, align 4, !dbg !2242
  %inc = add nsw i32 %67, 1, !dbg !2242
  store i32 %inc, i32* %i, align 4, !dbg !2242
  br label %if.end271, !dbg !2243

if.else107:                                       ; preds = %land.lhs.true91, %if.else88
  %68 = load i8*, i8** %arg, align 8, !dbg !2244
  %call108 = call i32 @strcasecmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2246
  %tobool109 = icmp ne i32 %call108, 0, !dbg !2246
  br i1 %tobool109, label %if.else126, label %land.lhs.true110, !dbg !2247

land.lhs.true110:                                 ; preds = %if.else107
  %69 = load i32, i32* %i, align 4, !dbg !2248
  %add111 = add nsw i32 %69, 1, !dbg !2249
  %70 = load i32, i32* %remaining, align 4, !dbg !2250
  %cmp112 = icmp slt i32 %add111, %70, !dbg !2251
  br i1 %cmp112, label %land.lhs.true113, label %if.else126, !dbg !2252

land.lhs.true113:                                 ; preds = %land.lhs.true110
  %71 = load i32, i32* %flags.addr, align 4, !dbg !2253
  %and114 = and i32 %71, 4, !dbg !2254
  %tobool115 = icmp ne i32 %and114, 0, !dbg !2254
  br i1 %tobool115, label %if.else126, label %land.lhs.true116, !dbg !2255

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %72 = load i32, i32* %flags.addr, align 4, !dbg !2256
  %and117 = and i32 %72, 8, !dbg !2257
  %tobool118 = icmp ne i32 %and117, 0, !dbg !2257
  br i1 %tobool118, label %if.else126, label %if.then119, !dbg !2258

if.then119:                                       ; preds = %land.lhs.true116
  %73 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2259
  %argv120 = getelementptr inbounds %struct.client, %struct.client* %73, i32 0, i32 10, !dbg !2261
  %74 = load %struct.redisObject**, %struct.redisObject*** %argv120, align 8, !dbg !2261
  %75 = load i32, i32* %base_args, align 4, !dbg !2262
  %76 = load i32, i32* %i, align 4, !dbg !2263
  %add121 = add nsw i32 %75, %76, !dbg !2264
  %add122 = add nsw i32 %add121, 1, !dbg !2265
  %idxprom123 = sext i32 %add122 to i64, !dbg !2259
  %arrayidx124 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %74, i64 %idxprom123, !dbg !2259
  %77 = load %struct.redisObject*, %struct.redisObject** %arrayidx124, align 8, !dbg !2259
  store %struct.redisObject* %77, %struct.redisObject** %storekey, align 8, !dbg !2266
  store i32 0, i32* %storedist, align 4, !dbg !2267
  %78 = load i32, i32* %i, align 4, !dbg !2268
  %inc125 = add nsw i32 %78, 1, !dbg !2268
  store i32 %inc125, i32* %i, align 4, !dbg !2268
  br label %if.end270, !dbg !2269

if.else126:                                       ; preds = %land.lhs.true116, %land.lhs.true113, %land.lhs.true110, %if.else107
  %79 = load i8*, i8** %arg, align 8, !dbg !2270
  %call127 = call i32 @strcasecmp(i8* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !2272
  %tobool128 = icmp ne i32 %call127, 0, !dbg !2272
  br i1 %tobool128, label %if.else145, label %land.lhs.true129, !dbg !2273

land.lhs.true129:                                 ; preds = %if.else126
  %80 = load i32, i32* %i, align 4, !dbg !2274
  %add130 = add nsw i32 %80, 1, !dbg !2275
  %81 = load i32, i32* %remaining, align 4, !dbg !2276
  %cmp131 = icmp slt i32 %add130, %81, !dbg !2277
  br i1 %cmp131, label %land.lhs.true132, label %if.else145, !dbg !2278

land.lhs.true132:                                 ; preds = %land.lhs.true129
  %82 = load i32, i32* %flags.addr, align 4, !dbg !2279
  %and133 = and i32 %82, 4, !dbg !2280
  %tobool134 = icmp ne i32 %and133, 0, !dbg !2280
  br i1 %tobool134, label %if.else145, label %land.lhs.true135, !dbg !2281

land.lhs.true135:                                 ; preds = %land.lhs.true132
  %83 = load i32, i32* %flags.addr, align 4, !dbg !2282
  %and136 = and i32 %83, 8, !dbg !2283
  %tobool137 = icmp ne i32 %and136, 0, !dbg !2283
  br i1 %tobool137, label %if.else145, label %if.then138, !dbg !2284

if.then138:                                       ; preds = %land.lhs.true135
  %84 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2285
  %argv139 = getelementptr inbounds %struct.client, %struct.client* %84, i32 0, i32 10, !dbg !2287
  %85 = load %struct.redisObject**, %struct.redisObject*** %argv139, align 8, !dbg !2287
  %86 = load i32, i32* %base_args, align 4, !dbg !2288
  %87 = load i32, i32* %i, align 4, !dbg !2289
  %add140 = add nsw i32 %86, %87, !dbg !2290
  %add141 = add nsw i32 %add140, 1, !dbg !2291
  %idxprom142 = sext i32 %add141 to i64, !dbg !2285
  %arrayidx143 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %85, i64 %idxprom142, !dbg !2285
  %88 = load %struct.redisObject*, %struct.redisObject** %arrayidx143, align 8, !dbg !2285
  store %struct.redisObject* %88, %struct.redisObject** %storekey, align 8, !dbg !2292
  store i32 1, i32* %storedist, align 4, !dbg !2293
  %89 = load i32, i32* %i, align 4, !dbg !2294
  %inc144 = add nsw i32 %89, 1, !dbg !2294
  store i32 %inc144, i32* %i, align 4, !dbg !2294
  br label %if.end269, !dbg !2295

if.else145:                                       ; preds = %land.lhs.true135, %land.lhs.true132, %land.lhs.true129, %if.else126
  %90 = load i8*, i8** %arg, align 8, !dbg !2296
  %call146 = call i32 @strcasecmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !2298
  %tobool147 = icmp ne i32 %call146, 0, !dbg !2298
  br i1 %tobool147, label %if.else155, label %land.lhs.true148, !dbg !2299

land.lhs.true148:                                 ; preds = %if.else145
  %91 = load i32, i32* %flags.addr, align 4, !dbg !2300
  %and149 = and i32 %91, 8, !dbg !2301
  %tobool150 = icmp ne i32 %and149, 0, !dbg !2301
  br i1 %tobool150, label %land.lhs.true151, label %if.else155, !dbg !2302

land.lhs.true151:                                 ; preds = %land.lhs.true148
  %92 = load i32, i32* %flags.addr, align 4, !dbg !2303
  %and152 = and i32 %92, 16, !dbg !2304
  %tobool153 = icmp ne i32 %and152, 0, !dbg !2304
  br i1 %tobool153, label %if.then154, label %if.else155, !dbg !2305

if.then154:                                       ; preds = %land.lhs.true151
  store i32 1, i32* %storedist, align 4, !dbg !2306
  br label %if.end268, !dbg !2308

if.else155:                                       ; preds = %land.lhs.true151, %land.lhs.true148, %if.else145
  %93 = load i8*, i8** %arg, align 8, !dbg !2309
  %call156 = call i32 @strcasecmp(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0)) #6, !dbg !2311
  %tobool157 = icmp ne i32 %call156, 0, !dbg !2311
  br i1 %tobool157, label %if.else183, label %land.lhs.true158, !dbg !2312

land.lhs.true158:                                 ; preds = %if.else155
  %94 = load i32, i32* %i, align 4, !dbg !2313
  %add159 = add nsw i32 %94, 1, !dbg !2314
  %95 = load i32, i32* %remaining, align 4, !dbg !2315
  %cmp160 = icmp slt i32 %add159, %95, !dbg !2316
  br i1 %cmp160, label %land.lhs.true161, label %if.else183, !dbg !2317

land.lhs.true161:                                 ; preds = %land.lhs.true158
  %96 = load i32, i32* %flags.addr, align 4, !dbg !2318
  %and162 = and i32 %96, 8, !dbg !2319
  %tobool163 = icmp ne i32 %and162, 0, !dbg !2319
  br i1 %tobool163, label %land.lhs.true164, label %if.else183, !dbg !2320

land.lhs.true164:                                 ; preds = %land.lhs.true161
  %97 = load i32, i32* %fromloc, align 4, !dbg !2321
  %tobool165 = icmp ne i32 %97, 0, !dbg !2321
  br i1 %tobool165, label %if.else183, label %if.then166, !dbg !2322

if.then166:                                       ; preds = %land.lhs.true164
  %98 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2323
  %cmp167 = icmp eq %struct.redisObject* %98, null, !dbg !2326
  br i1 %cmp167, label %if.then168, label %if.end170, !dbg !2327

if.then168:                                       ; preds = %if.then166
  store i32 1, i32* %frommember, align 4, !dbg !2328
  %99 = load i32, i32* %i, align 4, !dbg !2330
  %inc169 = add nsw i32 %99, 1, !dbg !2330
  store i32 %inc169, i32* %i, align 4, !dbg !2330
  br label %for.inc, !dbg !2331

if.end170:                                        ; preds = %if.then166
  %100 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2332
  %101 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2334
  %argv171 = getelementptr inbounds %struct.client, %struct.client* %101, i32 0, i32 10, !dbg !2335
  %102 = load %struct.redisObject**, %struct.redisObject*** %argv171, align 8, !dbg !2335
  %103 = load i32, i32* %base_args, align 4, !dbg !2336
  %104 = load i32, i32* %i, align 4, !dbg !2337
  %add172 = add nsw i32 %103, %104, !dbg !2338
  %add173 = add nsw i32 %add172, 1, !dbg !2339
  %idxprom174 = sext i32 %add173 to i64, !dbg !2334
  %arrayidx175 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %102, i64 %idxprom174, !dbg !2334
  %105 = load %struct.redisObject*, %struct.redisObject** %arrayidx175, align 8, !dbg !2334
  %xy176 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 1, !dbg !2340
  %arraydecay177 = getelementptr inbounds [2 x double], [2 x double]* %xy176, i64 0, i64 0, !dbg !2341
  %call178 = call i32 @longLatFromMember(%struct.redisObject* %100, %struct.redisObject* %105, double* %arraydecay177), !dbg !2342
  %cmp179 = icmp eq i32 %call178, -1, !dbg !2343
  br i1 %cmp179, label %if.then180, label %if.end181, !dbg !2344

if.then180:                                       ; preds = %if.end170
  %106 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2345
  call void @addReplyError(%struct.client* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0)), !dbg !2347
  br label %return, !dbg !2348

if.end181:                                        ; preds = %if.end170
  store i32 1, i32* %frommember, align 4, !dbg !2349
  %107 = load i32, i32* %i, align 4, !dbg !2350
  %inc182 = add nsw i32 %107, 1, !dbg !2350
  store i32 %inc182, i32* %i, align 4, !dbg !2350
  br label %if.end267, !dbg !2351

if.else183:                                       ; preds = %land.lhs.true164, %land.lhs.true161, %land.lhs.true158, %if.else155
  %108 = load i8*, i8** %arg, align 8, !dbg !2352
  %call184 = call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0)) #6, !dbg !2354
  %tobool185 = icmp ne i32 %call184, 0, !dbg !2354
  br i1 %tobool185, label %if.else208, label %land.lhs.true186, !dbg !2355

land.lhs.true186:                                 ; preds = %if.else183
  %109 = load i32, i32* %i, align 4, !dbg !2356
  %add187 = add nsw i32 %109, 2, !dbg !2357
  %110 = load i32, i32* %remaining, align 4, !dbg !2358
  %cmp188 = icmp slt i32 %add187, %110, !dbg !2359
  br i1 %cmp188, label %land.lhs.true189, label %if.else208, !dbg !2360

land.lhs.true189:                                 ; preds = %land.lhs.true186
  %111 = load i32, i32* %flags.addr, align 4, !dbg !2361
  %and190 = and i32 %111, 8, !dbg !2362
  %tobool191 = icmp ne i32 %and190, 0, !dbg !2362
  br i1 %tobool191, label %land.lhs.true192, label %if.else208, !dbg !2363

land.lhs.true192:                                 ; preds = %land.lhs.true189
  %112 = load i32, i32* %frommember, align 4, !dbg !2364
  %tobool193 = icmp ne i32 %112, 0, !dbg !2364
  br i1 %tobool193, label %if.else208, label %if.then194, !dbg !2365

if.then194:                                       ; preds = %land.lhs.true192
  %113 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2366
  %114 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2369
  %argv195 = getelementptr inbounds %struct.client, %struct.client* %114, i32 0, i32 10, !dbg !2370
  %115 = load %struct.redisObject**, %struct.redisObject*** %argv195, align 8, !dbg !2370
  %116 = load i32, i32* %base_args, align 4, !dbg !2371
  %idx.ext196 = sext i32 %116 to i64, !dbg !2372
  %add.ptr197 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %115, i64 %idx.ext196, !dbg !2372
  %117 = load i32, i32* %i, align 4, !dbg !2373
  %idx.ext198 = sext i32 %117 to i64, !dbg !2374
  %add.ptr199 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr197, i64 %idx.ext198, !dbg !2374
  %add.ptr200 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr199, i64 1, !dbg !2375
  %xy201 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 1, !dbg !2376
  %arraydecay202 = getelementptr inbounds [2 x double], [2 x double]* %xy201, i64 0, i64 0, !dbg !2377
  %call203 = call i32 @extractLongLatOrReply(%struct.client* %113, %struct.redisObject** %add.ptr200, double* %arraydecay202), !dbg !2378
  %cmp204 = icmp eq i32 %call203, -1, !dbg !2379
  br i1 %cmp204, label %if.then205, label %if.end206, !dbg !2380

if.then205:                                       ; preds = %if.then194
  br label %return, !dbg !2381

if.end206:                                        ; preds = %if.then194
  store i32 1, i32* %fromloc, align 4, !dbg !2382
  %118 = load i32, i32* %i, align 4, !dbg !2383
  %add207 = add nsw i32 %118, 2, !dbg !2383
  store i32 %add207, i32* %i, align 4, !dbg !2383
  br label %if.end266, !dbg !2384

if.else208:                                       ; preds = %land.lhs.true192, %land.lhs.true189, %land.lhs.true186, %if.else183
  %119 = load i8*, i8** %arg, align 8, !dbg !2385
  %call209 = call i32 @strcasecmp(i8* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !2387
  %tobool210 = icmp ne i32 %call209, 0, !dbg !2387
  br i1 %tobool210, label %if.else235, label %land.lhs.true211, !dbg !2388

land.lhs.true211:                                 ; preds = %if.else208
  %120 = load i32, i32* %i, align 4, !dbg !2389
  %add212 = add nsw i32 %120, 2, !dbg !2390
  %121 = load i32, i32* %remaining, align 4, !dbg !2391
  %cmp213 = icmp slt i32 %add212, %121, !dbg !2392
  br i1 %cmp213, label %land.lhs.true214, label %if.else235, !dbg !2393

land.lhs.true214:                                 ; preds = %land.lhs.true211
  %122 = load i32, i32* %flags.addr, align 4, !dbg !2394
  %and215 = and i32 %122, 8, !dbg !2395
  %tobool216 = icmp ne i32 %and215, 0, !dbg !2395
  br i1 %tobool216, label %land.lhs.true217, label %if.else235, !dbg !2396

land.lhs.true217:                                 ; preds = %land.lhs.true214
  %123 = load i32, i32* %bybox, align 4, !dbg !2397
  %tobool218 = icmp ne i32 %123, 0, !dbg !2397
  br i1 %tobool218, label %if.else235, label %if.then219, !dbg !2398

if.then219:                                       ; preds = %land.lhs.true217
  %124 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2399
  %125 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2402
  %argv220 = getelementptr inbounds %struct.client, %struct.client* %125, i32 0, i32 10, !dbg !2403
  %126 = load %struct.redisObject**, %struct.redisObject*** %argv220, align 8, !dbg !2403
  %127 = load i32, i32* %base_args, align 4, !dbg !2404
  %idx.ext221 = sext i32 %127 to i64, !dbg !2405
  %add.ptr222 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %126, i64 %idx.ext221, !dbg !2405
  %128 = load i32, i32* %i, align 4, !dbg !2406
  %idx.ext223 = sext i32 %128 to i64, !dbg !2407
  %add.ptr224 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr222, i64 %idx.ext223, !dbg !2407
  %add.ptr225 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr224, i64 1, !dbg !2408
  %conversion226 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2409
  %t227 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 4, !dbg !2410
  %radius228 = bitcast %union.anon.5* %t227 to double*, !dbg !2411
  %call229 = call i32 @extractDistanceOrReply(%struct.client* %124, %struct.redisObject** %add.ptr225, double* %conversion226, double* %radius228), !dbg !2412
  %cmp230 = icmp ne i32 %call229, 0, !dbg !2413
  br i1 %cmp230, label %if.then231, label %if.end232, !dbg !2414

if.then231:                                       ; preds = %if.then219
  br label %return, !dbg !2415

if.end232:                                        ; preds = %if.then219
  %type233 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 0, !dbg !2416
  store i32 1, i32* %type233, align 8, !dbg !2417
  store i32 1, i32* %byradius, align 4, !dbg !2418
  %129 = load i32, i32* %i, align 4, !dbg !2419
  %add234 = add nsw i32 %129, 2, !dbg !2419
  store i32 %add234, i32* %i, align 4, !dbg !2419
  br label %if.end265, !dbg !2420

if.else235:                                       ; preds = %land.lhs.true217, %land.lhs.true214, %land.lhs.true211, %if.else208
  %130 = load i8*, i8** %arg, align 8, !dbg !2421
  %call236 = call i32 @strcasecmp(i8* %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0)) #6, !dbg !2423
  %tobool237 = icmp ne i32 %call236, 0, !dbg !2423
  br i1 %tobool237, label %if.else263, label %land.lhs.true238, !dbg !2424

land.lhs.true238:                                 ; preds = %if.else235
  %131 = load i32, i32* %i, align 4, !dbg !2425
  %add239 = add nsw i32 %131, 3, !dbg !2426
  %132 = load i32, i32* %remaining, align 4, !dbg !2427
  %cmp240 = icmp slt i32 %add239, %132, !dbg !2428
  br i1 %cmp240, label %land.lhs.true241, label %if.else263, !dbg !2429

land.lhs.true241:                                 ; preds = %land.lhs.true238
  %133 = load i32, i32* %flags.addr, align 4, !dbg !2430
  %and242 = and i32 %133, 8, !dbg !2431
  %tobool243 = icmp ne i32 %and242, 0, !dbg !2431
  br i1 %tobool243, label %land.lhs.true244, label %if.else263, !dbg !2432

land.lhs.true244:                                 ; preds = %land.lhs.true241
  %134 = load i32, i32* %byradius, align 4, !dbg !2433
  %tobool245 = icmp ne i32 %134, 0, !dbg !2433
  br i1 %tobool245, label %if.else263, label %if.then246, !dbg !2434

if.then246:                                       ; preds = %land.lhs.true244
  %135 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2435
  %136 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2438
  %argv247 = getelementptr inbounds %struct.client, %struct.client* %136, i32 0, i32 10, !dbg !2439
  %137 = load %struct.redisObject**, %struct.redisObject*** %argv247, align 8, !dbg !2439
  %138 = load i32, i32* %base_args, align 4, !dbg !2440
  %idx.ext248 = sext i32 %138 to i64, !dbg !2441
  %add.ptr249 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %137, i64 %idx.ext248, !dbg !2441
  %139 = load i32, i32* %i, align 4, !dbg !2442
  %idx.ext250 = sext i32 %139 to i64, !dbg !2443
  %add.ptr251 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr249, i64 %idx.ext250, !dbg !2443
  %add.ptr252 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %add.ptr251, i64 1, !dbg !2444
  %conversion253 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2445
  %t254 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 4, !dbg !2446
  %r = bitcast %union.anon.5* %t254 to %struct.anon.6*, !dbg !2447
  %width = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r, i32 0, i32 1, !dbg !2448
  %t255 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 4, !dbg !2449
  %r256 = bitcast %union.anon.5* %t255 to %struct.anon.6*, !dbg !2450
  %height = getelementptr inbounds %struct.anon.6, %struct.anon.6* %r256, i32 0, i32 0, !dbg !2451
  %call257 = call i32 @extractBoxOrReply(%struct.client* %135, %struct.redisObject** %add.ptr252, double* %conversion253, double* %width, double* %height), !dbg !2452
  %cmp258 = icmp ne i32 %call257, 0, !dbg !2453
  br i1 %cmp258, label %if.then259, label %if.end260, !dbg !2454

if.then259:                                       ; preds = %if.then246
  br label %return, !dbg !2455

if.end260:                                        ; preds = %if.then246
  %type261 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 0, !dbg !2456
  store i32 2, i32* %type261, align 8, !dbg !2457
  store i32 1, i32* %bybox, align 4, !dbg !2458
  %140 = load i32, i32* %i, align 4, !dbg !2459
  %add262 = add nsw i32 %140, 3, !dbg !2459
  store i32 %add262, i32* %i, align 4, !dbg !2459
  br label %if.end264, !dbg !2460

if.else263:                                       ; preds = %land.lhs.true244, %land.lhs.true241, %land.lhs.true238, %if.else235
  %141 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2461
  %142 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 16), align 8, !dbg !2463
  call void @addReplyErrorObject(%struct.client* %141, %struct.redisObject* %142), !dbg !2464
  br label %return, !dbg !2465

if.end264:                                        ; preds = %if.end260
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end232
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.end206
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end181
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then154
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then138
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.then119
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end106
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then87
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then83
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then79
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then75
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then71
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then67
  br label %for.inc, !dbg !2466

for.inc:                                          ; preds = %if.end277, %if.then168
  %143 = load i32, i32* %i, align 4, !dbg !2467
  %inc278 = add nsw i32 %143, 1, !dbg !2467
  store i32 %inc278, i32* %i, align 4, !dbg !2467
  br label %for.cond, !dbg !2468, !llvm.loop !2469

for.end:                                          ; preds = %for.cond
  br label %if.end279, !dbg !2471

if.end279:                                        ; preds = %for.end, %if.end57
  %144 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2472
  %tobool280 = icmp ne %struct.redisObject* %144, null, !dbg !2472
  br i1 %tobool280, label %land.lhs.true281, label %if.end289, !dbg !2474

land.lhs.true281:                                 ; preds = %if.end279
  %145 = load i32, i32* %withdist, align 4, !dbg !2475
  %tobool282 = icmp ne i32 %145, 0, !dbg !2475
  br i1 %tobool282, label %if.then286, label %lor.lhs.false, !dbg !2476

lor.lhs.false:                                    ; preds = %land.lhs.true281
  %146 = load i32, i32* %withhash, align 4, !dbg !2477
  %tobool283 = icmp ne i32 %146, 0, !dbg !2477
  br i1 %tobool283, label %if.then286, label %lor.lhs.false284, !dbg !2478

lor.lhs.false284:                                 ; preds = %lor.lhs.false
  %147 = load i32, i32* %withcoords, align 4, !dbg !2479
  %tobool285 = icmp ne i32 %147, 0, !dbg !2479
  br i1 %tobool285, label %if.then286, label %if.end289, !dbg !2480

if.then286:                                       ; preds = %lor.lhs.false284, %lor.lhs.false, %land.lhs.true281
  %148 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2481
  %149 = load i32, i32* %flags.addr, align 4, !dbg !2483
  %and287 = and i32 %149, 16, !dbg !2484
  %tobool288 = icmp ne i32 %and287, 0, !dbg !2483
  %150 = zext i1 %tobool288 to i64, !dbg !2483
  %cond = select i1 %tobool288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0), !dbg !2483
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %148, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.43, i64 0, i64 0), i8* %cond), !dbg !2485
  br label %return, !dbg !2486

if.end289:                                        ; preds = %lor.lhs.false284, %if.end279
  %151 = load i32, i32* %flags.addr, align 4, !dbg !2487
  %and290 = and i32 %151, 8, !dbg !2489
  %tobool291 = icmp ne i32 %and290, 0, !dbg !2489
  br i1 %tobool291, label %land.lhs.true292, label %if.end300, !dbg !2490

land.lhs.true292:                                 ; preds = %if.end289
  %152 = load i32, i32* %frommember, align 4, !dbg !2491
  %tobool293 = icmp ne i32 %152, 0, !dbg !2491
  br i1 %tobool293, label %if.end300, label %lor.lhs.false294, !dbg !2492

lor.lhs.false294:                                 ; preds = %land.lhs.true292
  %153 = load i32, i32* %fromloc, align 4, !dbg !2493
  %tobool295 = icmp ne i32 %153, 0, !dbg !2493
  br i1 %tobool295, label %if.end300, label %if.then296, !dbg !2494

if.then296:                                       ; preds = %lor.lhs.false294
  %154 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2495
  %155 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2497
  %argv297 = getelementptr inbounds %struct.client, %struct.client* %155, i32 0, i32 10, !dbg !2498
  %156 = load %struct.redisObject**, %struct.redisObject*** %argv297, align 8, !dbg !2498
  %arrayidx298 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %156, i64 0, !dbg !2497
  %157 = load %struct.redisObject*, %struct.redisObject** %arrayidx298, align 8, !dbg !2497
  %ptr299 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %157, i32 0, i32 2, !dbg !2499
  %158 = load i8*, i8** %ptr299, align 8, !dbg !2499
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %154, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.46, i64 0, i64 0), i8* %158), !dbg !2500
  br label %return, !dbg !2501

if.end300:                                        ; preds = %lor.lhs.false294, %land.lhs.true292, %if.end289
  %159 = load i32, i32* %flags.addr, align 4, !dbg !2502
  %and301 = and i32 %159, 8, !dbg !2504
  %tobool302 = icmp ne i32 %and301, 0, !dbg !2504
  br i1 %tobool302, label %land.lhs.true303, label %if.end311, !dbg !2505

land.lhs.true303:                                 ; preds = %if.end300
  %160 = load i32, i32* %byradius, align 4, !dbg !2506
  %tobool304 = icmp ne i32 %160, 0, !dbg !2506
  br i1 %tobool304, label %if.end311, label %lor.lhs.false305, !dbg !2507

lor.lhs.false305:                                 ; preds = %land.lhs.true303
  %161 = load i32, i32* %bybox, align 4, !dbg !2508
  %tobool306 = icmp ne i32 %161, 0, !dbg !2508
  br i1 %tobool306, label %if.end311, label %if.then307, !dbg !2509

if.then307:                                       ; preds = %lor.lhs.false305
  %162 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2510
  %163 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2512
  %argv308 = getelementptr inbounds %struct.client, %struct.client* %163, i32 0, i32 10, !dbg !2513
  %164 = load %struct.redisObject**, %struct.redisObject*** %argv308, align 8, !dbg !2513
  %arrayidx309 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %164, i64 0, !dbg !2512
  %165 = load %struct.redisObject*, %struct.redisObject** %arrayidx309, align 8, !dbg !2512
  %ptr310 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %165, i32 0, i32 2, !dbg !2514
  %166 = load i8*, i8** %ptr310, align 8, !dbg !2514
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %162, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.47, i64 0, i64 0), i8* %166), !dbg !2515
  br label %return, !dbg !2516

if.end311:                                        ; preds = %lor.lhs.false305, %land.lhs.true303, %if.end300
  %167 = load i32, i32* %any, align 4, !dbg !2517
  %tobool312 = icmp ne i32 %167, 0, !dbg !2517
  br i1 %tobool312, label %land.lhs.true313, label %if.end316, !dbg !2519

land.lhs.true313:                                 ; preds = %if.end311
  %168 = load i64, i64* %count, align 8, !dbg !2520
  %tobool314 = icmp ne i64 %168, 0, !dbg !2520
  br i1 %tobool314, label %if.end316, label %if.then315, !dbg !2521

if.then315:                                       ; preds = %land.lhs.true313
  %169 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2522
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0)), !dbg !2524
  br label %return, !dbg !2525

if.end316:                                        ; preds = %land.lhs.true313, %if.end311
  %170 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2526
  %cmp317 = icmp eq %struct.redisObject* %170, null, !dbg !2528
  br i1 %cmp317, label %if.then318, label %if.end331, !dbg !2529

if.then318:                                       ; preds = %if.end316
  %171 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2530
  %tobool319 = icmp ne %struct.redisObject* %171, null, !dbg !2530
  br i1 %tobool319, label %if.then320, label %if.else329, !dbg !2533

if.then320:                                       ; preds = %if.then318
  %172 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2534
  %db321 = getelementptr inbounds %struct.client, %struct.client* %172, i32 0, i32 4, !dbg !2537
  %173 = load %struct.redisDb*, %struct.redisDb** %db321, align 8, !dbg !2537
  %174 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2538
  %call322 = call i32 @dbDelete(%struct.redisDb* %173, %struct.redisObject* %174), !dbg !2539
  %tobool323 = icmp ne i32 %call322, 0, !dbg !2539
  br i1 %tobool323, label %if.then324, label %if.end328, !dbg !2540

if.then324:                                       ; preds = %if.then320
  %175 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2541
  %176 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2543
  %db325 = getelementptr inbounds %struct.client, %struct.client* %176, i32 0, i32 4, !dbg !2544
  %177 = load %struct.redisDb*, %struct.redisDb** %db325, align 8, !dbg !2544
  %178 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2545
  call void @signalModifiedKey(%struct.client* %175, %struct.redisDb* %177, %struct.redisObject* %178), !dbg !2546
  %179 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2547
  %180 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2548
  %db326 = getelementptr inbounds %struct.client, %struct.client* %180, i32 0, i32 4, !dbg !2549
  %181 = load %struct.redisDb*, %struct.redisDb** %db326, align 8, !dbg !2549
  %id = getelementptr inbounds %struct.redisDb, %struct.redisDb* %181, i32 0, i32 5, !dbg !2550
  %182 = load i32, i32* %id, align 8, !dbg !2550
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), %struct.redisObject* %179, i32 %182), !dbg !2551
  %183 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2552
  %inc327 = add nsw i64 %183, 1, !dbg !2552
  store i64 %inc327, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2552
  br label %if.end328, !dbg !2553

if.end328:                                        ; preds = %if.then324, %if.then320
  %184 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2554
  %185 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 4), align 8, !dbg !2555
  call void @addReply(%struct.client* %184, %struct.redisObject* %185), !dbg !2556
  br label %if.end330, !dbg !2557

if.else329:                                       ; preds = %if.then318
  %186 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2558
  %187 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 13), align 8, !dbg !2560
  call void @addReply(%struct.client* %186, %struct.redisObject* %187), !dbg !2561
  br label %if.end330

if.end330:                                        ; preds = %if.else329, %if.end328
  br label %return, !dbg !2562

if.end331:                                        ; preds = %if.end316
  %188 = load i64, i64* %count, align 8, !dbg !2563
  %cmp332 = icmp ne i64 %188, 0, !dbg !2565
  br i1 %cmp332, label %land.lhs.true333, label %if.end338, !dbg !2566

land.lhs.true333:                                 ; preds = %if.end331
  %189 = load i32, i32* %sort, align 4, !dbg !2567
  %cmp334 = icmp eq i32 %189, 0, !dbg !2568
  br i1 %cmp334, label %land.lhs.true335, label %if.end338, !dbg !2569

land.lhs.true335:                                 ; preds = %land.lhs.true333
  %190 = load i32, i32* %any, align 4, !dbg !2570
  %tobool336 = icmp ne i32 %190, 0, !dbg !2570
  br i1 %tobool336, label %if.end338, label %if.then337, !dbg !2571

if.then337:                                       ; preds = %land.lhs.true335
  store i32 1, i32* %sort, align 4, !dbg !2572
  br label %if.end338, !dbg !2573

if.end338:                                        ; preds = %if.then337, %land.lhs.true335, %land.lhs.true333, %if.end331
  call void @llvm.dbg.declare(metadata %struct.GeoHashRadius* %georadius, metadata !2574, metadata !DIExpression()), !dbg !2575
  call void @geohashCalculateAreasByShapeWGS84(%struct.GeoHashRadius* sret(%struct.GeoHashRadius) align 8 %georadius, %struct.GeoShape* %shape), !dbg !2576
  call void @llvm.dbg.declare(metadata %struct.geoArray** %ga, metadata !2577, metadata !DIExpression()), !dbg !2578
  %call339 = call %struct.geoArray* @geoArrayCreate(), !dbg !2579
  store %struct.geoArray* %call339, %struct.geoArray** %ga, align 8, !dbg !2578
  %191 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !2580
  %192 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2581
  %193 = load i32, i32* %any, align 4, !dbg !2582
  %tobool340 = icmp ne i32 %193, 0, !dbg !2582
  br i1 %tobool340, label %cond.true, label %cond.false, !dbg !2582

cond.true:                                        ; preds = %if.end338
  %194 = load i64, i64* %count, align 8, !dbg !2583
  br label %cond.end, !dbg !2582

cond.false:                                       ; preds = %if.end338
  br label %cond.end, !dbg !2582

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond341 = phi i64 [ %194, %cond.true ], [ 0, %cond.false ], !dbg !2582
  %call342 = call i32 @membersOfAllNeighbors(%struct.redisObject* %191, %struct.GeoHashRadius* %georadius, %struct.GeoShape* %shape, %struct.geoArray* %192, i64 %cond341), !dbg !2584
  %195 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2585
  %used = getelementptr inbounds %struct.geoArray, %struct.geoArray* %195, i32 0, i32 2, !dbg !2587
  %196 = load i64, i64* %used, align 8, !dbg !2587
  %cmp343 = icmp eq i64 %196, 0, !dbg !2588
  br i1 %cmp343, label %land.lhs.true344, label %if.end347, !dbg !2589

land.lhs.true344:                                 ; preds = %cond.end
  %197 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2590
  %cmp345 = icmp eq %struct.redisObject* %197, null, !dbg !2591
  br i1 %cmp345, label %if.then346, label %if.end347, !dbg !2592

if.then346:                                       ; preds = %land.lhs.true344
  %198 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2593
  %199 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 13), align 8, !dbg !2595
  call void @addReply(%struct.client* %198, %struct.redisObject* %199), !dbg !2596
  %200 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2597
  call void @geoArrayFree(%struct.geoArray* %200), !dbg !2598
  br label %return, !dbg !2599

if.end347:                                        ; preds = %land.lhs.true344, %cond.end
  call void @llvm.dbg.declare(metadata i64* %result_length, metadata !2600, metadata !DIExpression()), !dbg !2601
  %201 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2602
  %used348 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %201, i32 0, i32 2, !dbg !2603
  %202 = load i64, i64* %used348, align 8, !dbg !2603
  store i64 %202, i64* %result_length, align 8, !dbg !2601
  call void @llvm.dbg.declare(metadata i64* %returned_items, metadata !2604, metadata !DIExpression()), !dbg !2605
  %203 = load i64, i64* %count, align 8, !dbg !2606
  %cmp349 = icmp eq i64 %203, 0, !dbg !2607
  br i1 %cmp349, label %cond.true352, label %lor.lhs.false350, !dbg !2608

lor.lhs.false350:                                 ; preds = %if.end347
  %204 = load i64, i64* %result_length, align 8, !dbg !2609
  %205 = load i64, i64* %count, align 8, !dbg !2610
  %cmp351 = icmp slt i64 %204, %205, !dbg !2611
  br i1 %cmp351, label %cond.true352, label %cond.false353, !dbg !2612

cond.true352:                                     ; preds = %lor.lhs.false350, %if.end347
  %206 = load i64, i64* %result_length, align 8, !dbg !2613
  br label %cond.end354, !dbg !2612

cond.false353:                                    ; preds = %lor.lhs.false350
  %207 = load i64, i64* %count, align 8, !dbg !2614
  br label %cond.end354, !dbg !2612

cond.end354:                                      ; preds = %cond.false353, %cond.true352
  %cond355 = phi i64 [ %206, %cond.true352 ], [ %207, %cond.false353 ], !dbg !2612
  store i64 %cond355, i64* %returned_items, align 8, !dbg !2605
  call void @llvm.dbg.declare(metadata i64* %option_length, metadata !2615, metadata !DIExpression()), !dbg !2616
  store i64 0, i64* %option_length, align 8, !dbg !2616
  %208 = load i32, i32* %sort, align 4, !dbg !2617
  %cmp356 = icmp ne i32 %208, 0, !dbg !2619
  br i1 %cmp356, label %if.then357, label %if.end371, !dbg !2620

if.then357:                                       ; preds = %cond.end354
  call void @llvm.dbg.declare(metadata i32 (i8*, i8*)** %sort_gp_callback, metadata !2621, metadata !DIExpression()), !dbg !2626
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %sort_gp_callback, align 8, !dbg !2626
  %209 = load i32, i32* %sort, align 4, !dbg !2627
  %cmp358 = icmp eq i32 %209, 1, !dbg !2629
  br i1 %cmp358, label %if.then359, label %if.else360, !dbg !2630

if.then359:                                       ; preds = %if.then357
  store i32 (i8*, i8*)* @sort_gp_asc, i32 (i8*, i8*)** %sort_gp_callback, align 8, !dbg !2631
  br label %if.end364, !dbg !2633

if.else360:                                       ; preds = %if.then357
  %210 = load i32, i32* %sort, align 4, !dbg !2634
  %cmp361 = icmp eq i32 %210, 2, !dbg !2636
  br i1 %cmp361, label %if.then362, label %if.end363, !dbg !2637

if.then362:                                       ; preds = %if.else360
  store i32 (i8*, i8*)* @sort_gp_desc, i32 (i8*, i8*)** %sort_gp_callback, align 8, !dbg !2638
  br label %if.end363, !dbg !2640

if.end363:                                        ; preds = %if.then362, %if.else360
  br label %if.end364

if.end364:                                        ; preds = %if.end363, %if.then359
  %211 = load i64, i64* %returned_items, align 8, !dbg !2641
  %212 = load i64, i64* %result_length, align 8, !dbg !2643
  %cmp365 = icmp eq i64 %211, %212, !dbg !2644
  br i1 %cmp365, label %if.then366, label %if.else367, !dbg !2645

if.then366:                                       ; preds = %if.end364
  %213 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2646
  %array = getelementptr inbounds %struct.geoArray, %struct.geoArray* %213, i32 0, i32 0, !dbg !2648
  %214 = load %struct.geoPoint*, %struct.geoPoint** %array, align 8, !dbg !2648
  %215 = bitcast %struct.geoPoint* %214 to i8*, !dbg !2646
  %216 = load i64, i64* %result_length, align 8, !dbg !2649
  %217 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_gp_callback, align 8, !dbg !2650
  call void @qsort(i8* %215, i64 %216, i64 40, i32 (i8*, i8*)* %217), !dbg !2651
  br label %if.end370, !dbg !2652

if.else367:                                       ; preds = %if.end364
  %218 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2653
  %array368 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %218, i32 0, i32 0, !dbg !2655
  %219 = load %struct.geoPoint*, %struct.geoPoint** %array368, align 8, !dbg !2655
  %220 = bitcast %struct.geoPoint* %219 to i8*, !dbg !2653
  %221 = load i64, i64* %result_length, align 8, !dbg !2656
  %222 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %sort_gp_callback, align 8, !dbg !2657
  %223 = load i64, i64* %returned_items, align 8, !dbg !2658
  %sub369 = sub nsw i64 %223, 1, !dbg !2659
  call void @pqsort(i8* %220, i64 %221, i64 40, i32 (i8*, i8*)* %222, i64 0, i64 %sub369), !dbg !2660
  br label %if.end370

if.end370:                                        ; preds = %if.else367, %if.then366
  br label %if.end371, !dbg !2661

if.end371:                                        ; preds = %if.end370, %cond.end354
  %224 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2662
  %cmp372 = icmp eq %struct.redisObject* %224, null, !dbg !2664
  br i1 %cmp372, label %if.then373, label %if.else417, !dbg !2665

if.then373:                                       ; preds = %if.end371
  %225 = load i32, i32* %withdist, align 4, !dbg !2666
  %tobool374 = icmp ne i32 %225, 0, !dbg !2666
  br i1 %tobool374, label %if.then375, label %if.end377, !dbg !2669

if.then375:                                       ; preds = %if.then373
  %226 = load i64, i64* %option_length, align 8, !dbg !2670
  %inc376 = add nsw i64 %226, 1, !dbg !2670
  store i64 %inc376, i64* %option_length, align 8, !dbg !2670
  br label %if.end377, !dbg !2671

if.end377:                                        ; preds = %if.then375, %if.then373
  %227 = load i32, i32* %withcoords, align 4, !dbg !2672
  %tobool378 = icmp ne i32 %227, 0, !dbg !2672
  br i1 %tobool378, label %if.then379, label %if.end381, !dbg !2674

if.then379:                                       ; preds = %if.end377
  %228 = load i64, i64* %option_length, align 8, !dbg !2675
  %inc380 = add nsw i64 %228, 1, !dbg !2675
  store i64 %inc380, i64* %option_length, align 8, !dbg !2675
  br label %if.end381, !dbg !2676

if.end381:                                        ; preds = %if.then379, %if.end377
  %229 = load i32, i32* %withhash, align 4, !dbg !2677
  %tobool382 = icmp ne i32 %229, 0, !dbg !2677
  br i1 %tobool382, label %if.then383, label %if.end385, !dbg !2679

if.then383:                                       ; preds = %if.end381
  %230 = load i64, i64* %option_length, align 8, !dbg !2680
  %inc384 = add nsw i64 %230, 1, !dbg !2680
  store i64 %inc384, i64* %option_length, align 8, !dbg !2680
  br label %if.end385, !dbg !2681

if.end385:                                        ; preds = %if.then383, %if.end381
  %231 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2682
  %232 = load i64, i64* %returned_items, align 8, !dbg !2683
  call void @addReplyArrayLen(%struct.client* %231, i64 %232), !dbg !2684
  call void @llvm.dbg.declare(metadata i32* %i386, metadata !2685, metadata !DIExpression()), !dbg !2686
  store i32 0, i32* %i386, align 4, !dbg !2687
  br label %for.cond387, !dbg !2689

for.cond387:                                      ; preds = %for.inc414, %if.end385
  %233 = load i32, i32* %i386, align 4, !dbg !2690
  %conv = sext i32 %233 to i64, !dbg !2690
  %234 = load i64, i64* %returned_items, align 8, !dbg !2692
  %cmp388 = icmp slt i64 %conv, %234, !dbg !2693
  br i1 %cmp388, label %for.body390, label %for.end416, !dbg !2694

for.body390:                                      ; preds = %for.cond387
  call void @llvm.dbg.declare(metadata %struct.geoPoint** %gp, metadata !2695, metadata !DIExpression()), !dbg !2697
  %235 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2698
  %array391 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %235, i32 0, i32 0, !dbg !2699
  %236 = load %struct.geoPoint*, %struct.geoPoint** %array391, align 8, !dbg !2699
  %237 = load i32, i32* %i386, align 4, !dbg !2700
  %idx.ext392 = sext i32 %237 to i64, !dbg !2701
  %add.ptr393 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %236, i64 %idx.ext392, !dbg !2701
  store %struct.geoPoint* %add.ptr393, %struct.geoPoint** %gp, align 8, !dbg !2697
  %conversion394 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2702
  %238 = load double, double* %conversion394, align 8, !dbg !2702
  %239 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2703
  %dist = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %239, i32 0, i32 2, !dbg !2704
  %240 = load double, double* %dist, align 8, !dbg !2705
  %div = fdiv double %240, %238, !dbg !2705
  store double %div, double* %dist, align 8, !dbg !2705
  %241 = load i64, i64* %option_length, align 8, !dbg !2706
  %tobool395 = icmp ne i64 %241, 0, !dbg !2706
  br i1 %tobool395, label %if.then396, label %if.end398, !dbg !2708

if.then396:                                       ; preds = %for.body390
  %242 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2709
  %243 = load i64, i64* %option_length, align 8, !dbg !2710
  %add397 = add nsw i64 %243, 1, !dbg !2711
  call void @addReplyArrayLen(%struct.client* %242, i64 %add397), !dbg !2712
  br label %if.end398, !dbg !2712

if.end398:                                        ; preds = %if.then396, %for.body390
  %244 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2713
  %245 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2714
  %member399 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %245, i32 0, i32 4, !dbg !2715
  %246 = load i8*, i8** %member399, align 8, !dbg !2715
  call void @addReplyBulkSds(%struct.client* %244, i8* %246), !dbg !2716
  %247 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2717
  %member400 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %247, i32 0, i32 4, !dbg !2718
  store i8* null, i8** %member400, align 8, !dbg !2719
  %248 = load i32, i32* %withdist, align 4, !dbg !2720
  %tobool401 = icmp ne i32 %248, 0, !dbg !2720
  br i1 %tobool401, label %if.then402, label %if.end404, !dbg !2722

if.then402:                                       ; preds = %if.end398
  %249 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2723
  %250 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2724
  %dist403 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %250, i32 0, i32 2, !dbg !2725
  %251 = load double, double* %dist403, align 8, !dbg !2725
  call void @addReplyDoubleDistance(%struct.client* %249, double %251), !dbg !2726
  br label %if.end404, !dbg !2726

if.end404:                                        ; preds = %if.then402, %if.end398
  %252 = load i32, i32* %withhash, align 4, !dbg !2727
  %tobool405 = icmp ne i32 %252, 0, !dbg !2727
  br i1 %tobool405, label %if.then406, label %if.end408, !dbg !2729

if.then406:                                       ; preds = %if.end404
  %253 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2730
  %254 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2731
  %score = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %254, i32 0, i32 3, !dbg !2732
  %255 = load double, double* %score, align 8, !dbg !2732
  %conv407 = fptosi double %255 to i64, !dbg !2731
  call void @addReplyLongLong(%struct.client* %253, i64 %conv407), !dbg !2733
  br label %if.end408, !dbg !2733

if.end408:                                        ; preds = %if.then406, %if.end404
  %256 = load i32, i32* %withcoords, align 4, !dbg !2734
  %tobool409 = icmp ne i32 %256, 0, !dbg !2734
  br i1 %tobool409, label %if.then410, label %if.end413, !dbg !2736

if.then410:                                       ; preds = %if.end408
  %257 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2737
  call void @addReplyArrayLen(%struct.client* %257, i64 2), !dbg !2739
  %258 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2740
  %259 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2741
  %longitude = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %259, i32 0, i32 0, !dbg !2742
  %260 = load double, double* %longitude, align 8, !dbg !2742
  %conv411 = fpext double %260 to x86_fp80, !dbg !2741
  call void @addReplyHumanLongDouble(%struct.client* %258, x86_fp80 %conv411), !dbg !2743
  %261 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2744
  %262 = load %struct.geoPoint*, %struct.geoPoint** %gp, align 8, !dbg !2745
  %latitude = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %262, i32 0, i32 1, !dbg !2746
  %263 = load double, double* %latitude, align 8, !dbg !2746
  %conv412 = fpext double %263 to x86_fp80, !dbg !2745
  call void @addReplyHumanLongDouble(%struct.client* %261, x86_fp80 %conv412), !dbg !2747
  br label %if.end413, !dbg !2748

if.end413:                                        ; preds = %if.then410, %if.end408
  br label %for.inc414, !dbg !2749

for.inc414:                                       ; preds = %if.end413
  %264 = load i32, i32* %i386, align 4, !dbg !2750
  %inc415 = add nsw i32 %264, 1, !dbg !2750
  store i32 %inc415, i32* %i386, align 4, !dbg !2750
  br label %for.cond387, !dbg !2751, !llvm.loop !2752

for.end416:                                       ; preds = %for.cond387
  br label %if.end486, !dbg !2754

if.else417:                                       ; preds = %if.end371
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj418, metadata !2755, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata %struct.zset** %zs, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.declare(metadata i32* %i419, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.declare(metadata i64* %maxelelen, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i64 0, i64* %maxelelen, align 8, !dbg !2763
  call void @llvm.dbg.declare(metadata i64* %totelelen, metadata !2764, metadata !DIExpression()), !dbg !2765
  store i64 0, i64* %totelelen, align 8, !dbg !2765
  %265 = load i64, i64* %returned_items, align 8, !dbg !2766
  %tobool420 = icmp ne i64 %265, 0, !dbg !2766
  br i1 %tobool420, label %if.then421, label %if.end424, !dbg !2768

if.then421:                                       ; preds = %if.else417
  %call422 = call %struct.redisObject* @createZsetObject(), !dbg !2769
  store %struct.redisObject* %call422, %struct.redisObject** %zobj418, align 8, !dbg !2771
  %266 = load %struct.redisObject*, %struct.redisObject** %zobj418, align 8, !dbg !2772
  %ptr423 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %266, i32 0, i32 2, !dbg !2773
  %267 = load i8*, i8** %ptr423, align 8, !dbg !2773
  %268 = bitcast i8* %267 to %struct.zset*, !dbg !2772
  store %struct.zset* %268, %struct.zset** %zs, align 8, !dbg !2774
  br label %if.end424, !dbg !2775

if.end424:                                        ; preds = %if.then421, %if.else417
  store i32 0, i32* %i419, align 4, !dbg !2776
  br label %for.cond425, !dbg !2778

for.cond425:                                      ; preds = %for.inc463, %if.end424
  %269 = load i32, i32* %i419, align 4, !dbg !2779
  %conv426 = sext i32 %269 to i64, !dbg !2779
  %270 = load i64, i64* %returned_items, align 8, !dbg !2781
  %cmp427 = icmp slt i64 %conv426, %270, !dbg !2782
  br i1 %cmp427, label %for.body429, label %for.end465, !dbg !2783

for.body429:                                      ; preds = %for.cond425
  call void @llvm.dbg.declare(metadata %struct.zskiplistNode** %znode, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.geoPoint** %gp430, metadata !2787, metadata !DIExpression()), !dbg !2788
  %271 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2789
  %array431 = getelementptr inbounds %struct.geoArray, %struct.geoArray* %271, i32 0, i32 0, !dbg !2790
  %272 = load %struct.geoPoint*, %struct.geoPoint** %array431, align 8, !dbg !2790
  %273 = load i32, i32* %i419, align 4, !dbg !2791
  %idx.ext432 = sext i32 %273 to i64, !dbg !2792
  %add.ptr433 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %272, i64 %idx.ext432, !dbg !2792
  store %struct.geoPoint* %add.ptr433, %struct.geoPoint** %gp430, align 8, !dbg !2788
  %conversion434 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %shape, i32 0, i32 2, !dbg !2793
  %274 = load double, double* %conversion434, align 8, !dbg !2793
  %275 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2794
  %dist435 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %275, i32 0, i32 2, !dbg !2795
  %276 = load double, double* %dist435, align 8, !dbg !2796
  %div436 = fdiv double %276, %274, !dbg !2796
  store double %div436, double* %dist435, align 8, !dbg !2796
  call void @llvm.dbg.declare(metadata double* %score437, metadata !2797, metadata !DIExpression()), !dbg !2798
  %277 = load i32, i32* %storedist, align 4, !dbg !2799
  %tobool438 = icmp ne i32 %277, 0, !dbg !2799
  br i1 %tobool438, label %cond.true439, label %cond.false441, !dbg !2799

cond.true439:                                     ; preds = %for.body429
  %278 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2800
  %dist440 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %278, i32 0, i32 2, !dbg !2801
  %279 = load double, double* %dist440, align 8, !dbg !2801
  br label %cond.end443, !dbg !2799

cond.false441:                                    ; preds = %for.body429
  %280 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2802
  %score442 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %280, i32 0, i32 3, !dbg !2803
  %281 = load double, double* %score442, align 8, !dbg !2803
  br label %cond.end443, !dbg !2799

cond.end443:                                      ; preds = %cond.false441, %cond.true439
  %cond444 = phi double [ %279, %cond.true439 ], [ %281, %cond.false441 ], !dbg !2799
  store double %cond444, double* %score437, align 8, !dbg !2798
  call void @llvm.dbg.declare(metadata i64* %elelen, metadata !2804, metadata !DIExpression()), !dbg !2805
  %282 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2806
  %member445 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %282, i32 0, i32 4, !dbg !2807
  %283 = load i8*, i8** %member445, align 8, !dbg !2807
  %call446 = call i64 @sdslen(i8* %283), !dbg !2808
  store i64 %call446, i64* %elelen, align 8, !dbg !2805
  %284 = load i64, i64* %maxelelen, align 8, !dbg !2809
  %285 = load i64, i64* %elelen, align 8, !dbg !2811
  %cmp447 = icmp ult i64 %284, %285, !dbg !2812
  br i1 %cmp447, label %if.then449, label %if.end450, !dbg !2813

if.then449:                                       ; preds = %cond.end443
  %286 = load i64, i64* %elelen, align 8, !dbg !2814
  store i64 %286, i64* %maxelelen, align 8, !dbg !2815
  br label %if.end450, !dbg !2816

if.end450:                                        ; preds = %if.then449, %cond.end443
  %287 = load i64, i64* %elelen, align 8, !dbg !2817
  %288 = load i64, i64* %totelelen, align 8, !dbg !2818
  %add451 = add i64 %288, %287, !dbg !2818
  store i64 %add451, i64* %totelelen, align 8, !dbg !2818
  %289 = load %struct.zset*, %struct.zset** %zs, align 8, !dbg !2819
  %zsl = getelementptr inbounds %struct.zset, %struct.zset* %289, i32 0, i32 1, !dbg !2820
  %290 = load %struct.zskiplist*, %struct.zskiplist** %zsl, align 8, !dbg !2820
  %291 = load double, double* %score437, align 8, !dbg !2821
  %292 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2822
  %member452 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %292, i32 0, i32 4, !dbg !2823
  %293 = load i8*, i8** %member452, align 8, !dbg !2823
  %call453 = call %struct.zskiplistNode* @zslInsert(%struct.zskiplist* %290, double %291, i8* %293), !dbg !2824
  store %struct.zskiplistNode* %call453, %struct.zskiplistNode** %znode, align 8, !dbg !2825
  %294 = load %struct.zset*, %struct.zset** %zs, align 8, !dbg !2826
  %dict = getelementptr inbounds %struct.zset, %struct.zset* %294, i32 0, i32 0, !dbg !2826
  %295 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !2826
  %296 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2826
  %member454 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %296, i32 0, i32 4, !dbg !2826
  %297 = load i8*, i8** %member454, align 8, !dbg !2826
  %298 = load %struct.zskiplistNode*, %struct.zskiplistNode** %znode, align 8, !dbg !2826
  %score455 = getelementptr inbounds %struct.zskiplistNode, %struct.zskiplistNode* %298, i32 0, i32 1, !dbg !2826
  %299 = bitcast double* %score455 to i8*, !dbg !2826
  %call456 = call i32 @dictAdd(%struct.dict* %295, i8* %297, i8* %299), !dbg !2826
  %cmp457 = icmp eq i32 %call456, 0, !dbg !2826
  br i1 %cmp457, label %cond.true459, label %cond.false460, !dbg !2826

cond.true459:                                     ; preds = %if.end450
  br label %cond.end461, !dbg !2826

cond.false460:                                    ; preds = %if.end450
  call void @_serverAssert(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 825), !dbg !2826
  unreachable, !dbg !2826

unreachable.cont:                                 ; No predecessors!
  br label %cond.end461, !dbg !2826

cond.end461:                                      ; preds = %unreachable.cont, %cond.true459
  %300 = load %struct.geoPoint*, %struct.geoPoint** %gp430, align 8, !dbg !2827
  %member462 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %300, i32 0, i32 4, !dbg !2828
  store i8* null, i8** %member462, align 8, !dbg !2829
  br label %for.inc463, !dbg !2830

for.inc463:                                       ; preds = %cond.end461
  %301 = load i32, i32* %i419, align 4, !dbg !2831
  %inc464 = add nsw i32 %301, 1, !dbg !2831
  store i32 %inc464, i32* %i419, align 4, !dbg !2831
  br label %for.cond425, !dbg !2832, !llvm.loop !2833

for.end465:                                       ; preds = %for.cond425
  %302 = load i64, i64* %returned_items, align 8, !dbg !2835
  %tobool466 = icmp ne i64 %302, 0, !dbg !2835
  br i1 %tobool466, label %if.then467, label %if.else475, !dbg !2837

if.then467:                                       ; preds = %for.end465
  %303 = load %struct.redisObject*, %struct.redisObject** %zobj418, align 8, !dbg !2838
  %304 = load i64, i64* %maxelelen, align 8, !dbg !2840
  %305 = load i64, i64* %totelelen, align 8, !dbg !2841
  call void @zsetConvertToListpackIfNeeded(%struct.redisObject* %303, i64 %304, i64 %305), !dbg !2842
  %306 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2843
  %307 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2844
  %db468 = getelementptr inbounds %struct.client, %struct.client* %307, i32 0, i32 4, !dbg !2845
  %308 = load %struct.redisDb*, %struct.redisDb** %db468, align 8, !dbg !2845
  %309 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2846
  %310 = load %struct.redisObject*, %struct.redisObject** %zobj418, align 8, !dbg !2847
  call void @setKey(%struct.client* %306, %struct.redisDb* %308, %struct.redisObject* %309, %struct.redisObject* %310, i32 0), !dbg !2848
  %311 = load %struct.redisObject*, %struct.redisObject** %zobj418, align 8, !dbg !2849
  call void @decrRefCount(%struct.redisObject* %311), !dbg !2850
  %312 = load i32, i32* %flags.addr, align 4, !dbg !2851
  %and469 = and i32 %312, 8, !dbg !2852
  %tobool470 = icmp ne i32 %and469, 0, !dbg !2851
  %313 = zext i1 %tobool470 to i64, !dbg !2851
  %cond471 = select i1 %tobool470, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), !dbg !2851
  %314 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2853
  %315 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2854
  %db472 = getelementptr inbounds %struct.client, %struct.client* %315, i32 0, i32 4, !dbg !2855
  %316 = load %struct.redisDb*, %struct.redisDb** %db472, align 8, !dbg !2855
  %id473 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %316, i32 0, i32 5, !dbg !2856
  %317 = load i32, i32* %id473, align 8, !dbg !2856
  call void @notifyKeyspaceEvent(i32 128, i8* %cond471, %struct.redisObject* %314, i32 %317), !dbg !2857
  %318 = load i64, i64* %returned_items, align 8, !dbg !2858
  %319 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2859
  %add474 = add nsw i64 %319, %318, !dbg !2859
  store i64 %add474, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2859
  br label %if.end485, !dbg !2860

if.else475:                                       ; preds = %for.end465
  %320 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2861
  %db476 = getelementptr inbounds %struct.client, %struct.client* %320, i32 0, i32 4, !dbg !2863
  %321 = load %struct.redisDb*, %struct.redisDb** %db476, align 8, !dbg !2863
  %322 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2864
  %call477 = call i32 @dbDelete(%struct.redisDb* %321, %struct.redisObject* %322), !dbg !2865
  %tobool478 = icmp ne i32 %call477, 0, !dbg !2865
  br i1 %tobool478, label %if.then479, label %if.end484, !dbg !2866

if.then479:                                       ; preds = %if.else475
  %323 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2867
  %324 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2869
  %db480 = getelementptr inbounds %struct.client, %struct.client* %324, i32 0, i32 4, !dbg !2870
  %325 = load %struct.redisDb*, %struct.redisDb** %db480, align 8, !dbg !2870
  %326 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2871
  call void @signalModifiedKey(%struct.client* %323, %struct.redisDb* %325, %struct.redisObject* %326), !dbg !2872
  %327 = load %struct.redisObject*, %struct.redisObject** %storekey, align 8, !dbg !2873
  %328 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2874
  %db481 = getelementptr inbounds %struct.client, %struct.client* %328, i32 0, i32 4, !dbg !2875
  %329 = load %struct.redisDb*, %struct.redisDb** %db481, align 8, !dbg !2875
  %id482 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %329, i32 0, i32 5, !dbg !2876
  %330 = load i32, i32* %id482, align 8, !dbg !2876
  call void @notifyKeyspaceEvent(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), %struct.redisObject* %327, i32 %330), !dbg !2877
  %331 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2878
  %inc483 = add nsw i64 %331, 1, !dbg !2878
  store i64 %inc483, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i32 0, i32 216), align 8, !dbg !2878
  br label %if.end484, !dbg !2879

if.end484:                                        ; preds = %if.then479, %if.else475
  br label %if.end485

if.end485:                                        ; preds = %if.end484, %if.then467
  %332 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2880
  %333 = load i64, i64* %returned_items, align 8, !dbg !2881
  call void @addReplyLongLong(%struct.client* %332, i64 %333), !dbg !2882
  br label %if.end486

if.end486:                                        ; preds = %if.end485, %for.end416
  %334 = load %struct.geoArray*, %struct.geoArray** %ga, align 8, !dbg !2883
  call void @geoArrayFree(%struct.geoArray* %334), !dbg !2884
  br label %return, !dbg !2885

return:                                           ; preds = %if.end486, %if.then346, %if.end330, %if.then315, %if.then307, %if.then296, %if.then286, %if.else263, %if.then259, %if.then231, %if.then205, %if.then180, %if.then105, %if.then102, %if.else53, %if.then41, %if.then30, %if.then13, %if.then6, %if.then
  ret void, !dbg !2885
}

declare dso_local %struct.redisObject* @lookupKeyRead(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local i32 @checkType(%struct.client*, %struct.redisObject*, i32) #2

declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #2

declare dso_local i32 @dbDelete(%struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @signalModifiedKey(%struct.client*, %struct.redisDb*, %struct.redisObject*) #2

declare dso_local void @notifyKeyspaceEvent(i32, i8*, %struct.redisObject*, i32) #2

declare dso_local void @addReply(%struct.client*, %struct.redisObject*) #2

declare dso_local void @geohashCalculateAreasByShapeWGS84(%struct.GeoHashRadius* sret(%struct.GeoHashRadius) align 8, %struct.GeoShape*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort_gp_asc(i8* %a, i8* %b) #0 !dbg !2886 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %gpa = alloca %struct.geoPoint*, align 8
  %gpb = alloca %struct.geoPoint*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.geoPoint** %gpa, metadata !2891, metadata !DIExpression()), !dbg !2894
  %0 = load i8*, i8** %a.addr, align 8, !dbg !2895
  %1 = bitcast i8* %0 to %struct.geoPoint*, !dbg !2895
  store %struct.geoPoint* %1, %struct.geoPoint** %gpa, align 8, !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.geoPoint** %gpb, metadata !2896, metadata !DIExpression()), !dbg !2897
  %2 = load i8*, i8** %b.addr, align 8, !dbg !2898
  %3 = bitcast i8* %2 to %struct.geoPoint*, !dbg !2898
  store %struct.geoPoint* %3, %struct.geoPoint** %gpb, align 8, !dbg !2897
  %4 = load %struct.geoPoint*, %struct.geoPoint** %gpa, align 8, !dbg !2899
  %dist = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %4, i32 0, i32 2, !dbg !2901
  %5 = load double, double* %dist, align 8, !dbg !2901
  %6 = load %struct.geoPoint*, %struct.geoPoint** %gpb, align 8, !dbg !2902
  %dist1 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %6, i32 0, i32 2, !dbg !2903
  %7 = load double, double* %dist1, align 8, !dbg !2903
  %cmp = fcmp ogt double %5, %7, !dbg !2904
  br i1 %cmp, label %if.then, label %if.else, !dbg !2905

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2906
  br label %return, !dbg !2906

if.else:                                          ; preds = %entry
  %8 = load %struct.geoPoint*, %struct.geoPoint** %gpa, align 8, !dbg !2907
  %dist2 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %8, i32 0, i32 2, !dbg !2909
  %9 = load double, double* %dist2, align 8, !dbg !2909
  %10 = load %struct.geoPoint*, %struct.geoPoint** %gpb, align 8, !dbg !2910
  %dist3 = getelementptr inbounds %struct.geoPoint, %struct.geoPoint* %10, i32 0, i32 2, !dbg !2911
  %11 = load double, double* %dist3, align 8, !dbg !2911
  %cmp4 = fcmp oeq double %9, %11, !dbg !2912
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !2913

if.then5:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !2914
  br label %return, !dbg !2914

if.else6:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4, !dbg !2915
  br label %return, !dbg !2915

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !2916
  ret i32 %12, !dbg !2916
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort_gp_desc(i8* %a, i8* %b) #0 !dbg !2917 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  %0 = load i8*, i8** %a.addr, align 8, !dbg !2922
  %1 = load i8*, i8** %b.addr, align 8, !dbg !2923
  %call = call i32 @sort_gp_asc(i8* %0, i8* %1), !dbg !2924
  %sub = sub nsw i32 0, %call, !dbg !2925
  ret i32 %sub, !dbg !2926
}

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

declare dso_local void @pqsort(i8*, i64, i64, i32 (i8*, i8*)*, i64, i64) #2

declare dso_local void @addReplyArrayLen(%struct.client*, i64) #2

declare dso_local void @addReplyBulkSds(%struct.client*, i8*) #2

declare dso_local void @addReplyLongLong(%struct.client*, i64) #2

declare dso_local void @addReplyHumanLongDouble(%struct.client*, x86_fp80) #2

declare dso_local %struct.redisObject* @createZsetObject() #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !2927 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !2933, metadata !DIExpression()), !dbg !2934
  %0 = load i8*, i8** %s.addr, align 8, !dbg !2935
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !2935
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2935
  store i8 %1, i8* %flags, align 1, !dbg !2934
  %2 = load i8, i8* %flags, align 1, !dbg !2936
  %conv = zext i8 %2 to i32, !dbg !2936
  %and = and i32 %conv, 7, !dbg !2937
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !2938

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !2939
  %conv1 = zext i8 %3 to i32, !dbg !2939
  %shr = ashr i32 %conv1, 3, !dbg !2939
  %conv2 = sext i32 %shr to i64, !dbg !2939
  store i64 %conv2, i64* %retval, align 8, !dbg !2941
  br label %return, !dbg !2941

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !2942
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !2942
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !2943
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !2943
  %6 = load i8, i8* %len, align 1, !dbg !2943
  %conv4 = zext i8 %6 to i64, !dbg !2942
  store i64 %conv4, i64* %retval, align 8, !dbg !2944
  br label %return, !dbg !2944

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !2945
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !2945
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !2946
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !2946
  %9 = load i16, i16* %len7, align 1, !dbg !2946
  %conv8 = zext i16 %9 to i64, !dbg !2945
  store i64 %conv8, i64* %retval, align 8, !dbg !2947
  br label %return, !dbg !2947

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !2948
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2948
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !2949
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !2949
  %12 = load i32, i32* %len11, align 1, !dbg !2949
  %conv12 = zext i32 %12 to i64, !dbg !2948
  store i64 %conv12, i64* %retval, align 8, !dbg !2950
  br label %return, !dbg !2950

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !2951
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !2951
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !2952
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !2952
  %15 = load i64, i64* %len15, align 1, !dbg !2952
  store i64 %15, i64* %retval, align 8, !dbg !2953
  br label %return, !dbg !2953

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !2954
  br label %return, !dbg !2954

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !2955
  ret i64 %16, !dbg !2955
}

declare dso_local %struct.zskiplistNode* @zslInsert(%struct.zskiplist*, double, i8*) #2

declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local void @zsetConvertToListpackIfNeeded(%struct.redisObject*, i64, i64) #2

declare dso_local void @setKey(%struct.client*, %struct.redisDb*, %struct.redisObject*, %struct.redisObject*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @georadiusCommand(%struct.client* %c) #0 !dbg !2956 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2959
  call void @georadiusGeneric(%struct.client* %0, i32 1, i32 1), !dbg !2960
  ret void, !dbg !2961
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @georadiusbymemberCommand(%struct.client* %c) #0 !dbg !2962 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2965
  call void @georadiusGeneric(%struct.client* %0, i32 1, i32 2), !dbg !2966
  ret void, !dbg !2967
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @georadiusroCommand(%struct.client* %c) #0 !dbg !2968 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2969, metadata !DIExpression()), !dbg !2970
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2971
  call void @georadiusGeneric(%struct.client* %0, i32 1, i32 5), !dbg !2972
  ret void, !dbg !2973
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @georadiusbymemberroCommand(%struct.client* %c) #0 !dbg !2974 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2975, metadata !DIExpression()), !dbg !2976
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2977
  call void @georadiusGeneric(%struct.client* %0, i32 1, i32 6), !dbg !2978
  ret void, !dbg !2979
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @geosearchCommand(%struct.client* %c) #0 !dbg !2980 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2981, metadata !DIExpression()), !dbg !2982
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2983
  call void @georadiusGeneric(%struct.client* %0, i32 1, i32 8), !dbg !2984
  ret void, !dbg !2985
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @geosearchstoreCommand(%struct.client* %c) #0 !dbg !2986 {
entry:
  %c.addr = alloca %struct.client*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2987, metadata !DIExpression()), !dbg !2988
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !2989
  call void @georadiusGeneric(%struct.client* %0, i32 2, i32 24), !dbg !2990
  ret void, !dbg !2991
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @geohashCommand(%struct.client* %c) #0 !dbg !2992 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %geoalphabet = alloca i8*, align 8
  %j = alloca i32, align 4
  %zobj = alloca %struct.redisObject*, align 8
  %score = alloca double, align 8
  %xy = alloca [2 x double], align 16
  %r = alloca [2 x %struct.GeoHashRange], align 16
  %hash = alloca %struct.GeoHashBits, align 8
  %buf = alloca [12 x i8], align 1
  %i = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !2993, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.declare(metadata i8** %geoalphabet, metadata !2995, metadata !DIExpression()), !dbg !2996
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0), i8** %geoalphabet, align 8, !dbg !2996
  call void @llvm.dbg.declare(metadata i32* %j, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj, metadata !2999, metadata !DIExpression()), !dbg !3000
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3001
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !3002
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !3002
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3003
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !3004
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !3004
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3003
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3003
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %1, %struct.redisObject* %4), !dbg !3005
  store %struct.redisObject* %call, %struct.redisObject** %zobj, align 8, !dbg !3000
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3006
  %6 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3008
  %call1 = call i32 @checkType(%struct.client* %5, %struct.redisObject* %6, i32 3), !dbg !3009
  %tobool = icmp ne i32 %call1, 0, !dbg !3009
  br i1 %tobool, label %if.then, label %if.end, !dbg !3010

if.then:                                          ; preds = %entry
  br label %for.end46, !dbg !3011

if.end:                                           ; preds = %entry
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3012
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3013
  %argc = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 9, !dbg !3014
  %9 = load i32, i32* %argc, align 8, !dbg !3014
  %sub = sub nsw i32 %9, 2, !dbg !3015
  %conv = sext i32 %sub to i64, !dbg !3013
  call void @addReplyArrayLen(%struct.client* %7, i64 %conv), !dbg !3016
  store i32 2, i32* %j, align 4, !dbg !3017
  br label %for.cond, !dbg !3019

for.cond:                                         ; preds = %for.inc44, %if.end
  %10 = load i32, i32* %j, align 4, !dbg !3020
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3022
  %argc2 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 9, !dbg !3023
  %12 = load i32, i32* %argc2, align 8, !dbg !3023
  %cmp = icmp slt i32 %10, %12, !dbg !3024
  br i1 %cmp, label %for.body, label %for.end46, !dbg !3025

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata double* %score, metadata !3026, metadata !DIExpression()), !dbg !3028
  %13 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3029
  %tobool4 = icmp ne %struct.redisObject* %13, null, !dbg !3029
  br i1 %tobool4, label %lor.lhs.false, label %if.then10, !dbg !3031

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3032
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3033
  %argv5 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 10, !dbg !3034
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv5, align 8, !dbg !3034
  %17 = load i32, i32* %j, align 4, !dbg !3035
  %idxprom = sext i32 %17 to i64, !dbg !3033
  %arrayidx6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 %idxprom, !dbg !3033
  %18 = load %struct.redisObject*, %struct.redisObject** %arrayidx6, align 8, !dbg !3033
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i32 0, i32 2, !dbg !3036
  %19 = load i8*, i8** %ptr, align 8, !dbg !3036
  %call7 = call i32 @zsetScore(%struct.redisObject* %14, i8* %19, double* %score), !dbg !3037
  %cmp8 = icmp eq i32 %call7, -1, !dbg !3038
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !3039

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3040
  call void @addReplyNull(%struct.client* %20), !dbg !3042
  br label %if.end43, !dbg !3043

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata [2 x double]* %xy, metadata !3044, metadata !DIExpression()), !dbg !3046
  %21 = load double, double* %score, align 8, !dbg !3047
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !3049
  %call11 = call i32 @decodeGeohash(double %21, double* %arraydecay), !dbg !3050
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3050
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3051

if.then13:                                        ; preds = %if.else
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3052
  call void @addReplyNull(%struct.client* %22), !dbg !3054
  br label %for.inc44, !dbg !3055

if.end14:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata [2 x %struct.GeoHashRange]* %r, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !3059, metadata !DIExpression()), !dbg !3060
  %arrayidx15 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !3061
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %arrayidx15, i32 0, i32 0, !dbg !3062
  store double -1.800000e+02, double* %min, align 16, !dbg !3063
  %arrayidx16 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !3064
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %arrayidx16, i32 0, i32 1, !dbg !3065
  store double 1.800000e+02, double* %max, align 8, !dbg !3066
  %arrayidx17 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !3067
  %min18 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %arrayidx17, i32 0, i32 0, !dbg !3068
  store double -9.000000e+01, double* %min18, align 16, !dbg !3069
  %arrayidx19 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !3070
  %max20 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %arrayidx19, i32 0, i32 1, !dbg !3071
  store double 9.000000e+01, double* %max20, align 8, !dbg !3072
  %arrayidx21 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !3073
  %arrayidx22 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !3074
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !3075
  %23 = load double, double* %arrayidx23, align 16, !dbg !3075
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 1, !dbg !3076
  %24 = load double, double* %arrayidx24, align 8, !dbg !3076
  %call25 = call i32 @geohashEncode(%struct.GeoHashRange* %arrayidx21, %struct.GeoHashRange* %arrayidx22, double %23, double %24, i8 zeroext 26, %struct.GeoHashBits* %hash), !dbg !3077
  call void @llvm.dbg.declare(metadata [12 x i8]* %buf, metadata !3078, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i32 0, i32* %i, align 4, !dbg !3085
  br label %for.cond26, !dbg !3087

for.cond26:                                       ; preds = %for.inc, %if.end14
  %25 = load i32, i32* %i, align 4, !dbg !3088
  %cmp27 = icmp slt i32 %25, 11, !dbg !3090
  br i1 %cmp27, label %for.body29, label %for.end, !dbg !3091

for.body29:                                       ; preds = %for.cond26
  call void @llvm.dbg.declare(metadata i32* %idx, metadata !3092, metadata !DIExpression()), !dbg !3094
  %26 = load i32, i32* %i, align 4, !dbg !3095
  %cmp30 = icmp eq i32 %26, 10, !dbg !3097
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !3098

if.then32:                                        ; preds = %for.body29
  store i32 0, i32* %idx, align 4, !dbg !3099
  br label %if.end36, !dbg !3101

if.else33:                                        ; preds = %for.body29
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !3102
  %27 = load i64, i64* %bits, align 8, !dbg !3102
  %28 = load i32, i32* %i, align 4, !dbg !3104
  %add = add nsw i32 %28, 1, !dbg !3105
  %mul = mul nsw i32 %add, 5, !dbg !3106
  %sub34 = sub nsw i32 52, %mul, !dbg !3107
  %sh_prom = zext i32 %sub34 to i64, !dbg !3108
  %shr = lshr i64 %27, %sh_prom, !dbg !3108
  %and = and i64 %shr, 31, !dbg !3109
  %conv35 = trunc i64 %and to i32, !dbg !3110
  store i32 %conv35, i32* %idx, align 4, !dbg !3111
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  %29 = load i8*, i8** %geoalphabet, align 8, !dbg !3112
  %30 = load i32, i32* %idx, align 4, !dbg !3113
  %idxprom37 = sext i32 %30 to i64, !dbg !3112
  %arrayidx38 = getelementptr inbounds i8, i8* %29, i64 %idxprom37, !dbg !3112
  %31 = load i8, i8* %arrayidx38, align 1, !dbg !3112
  %32 = load i32, i32* %i, align 4, !dbg !3114
  %idxprom39 = sext i32 %32 to i64, !dbg !3115
  %arrayidx40 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 %idxprom39, !dbg !3115
  store i8 %31, i8* %arrayidx40, align 1, !dbg !3116
  br label %for.inc, !dbg !3117

for.inc:                                          ; preds = %if.end36
  %33 = load i32, i32* %i, align 4, !dbg !3118
  %inc = add nsw i32 %33, 1, !dbg !3118
  store i32 %inc, i32* %i, align 4, !dbg !3118
  br label %for.cond26, !dbg !3119, !llvm.loop !3120

for.end:                                          ; preds = %for.cond26
  %arrayidx41 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 11, !dbg !3122
  store i8 0, i8* %arrayidx41, align 1, !dbg !3123
  %34 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3124
  %arraydecay42 = getelementptr inbounds [12 x i8], [12 x i8]* %buf, i64 0, i64 0, !dbg !3125
  call void @addReplyBulkCBuffer(%struct.client* %34, i8* %arraydecay42, i64 11), !dbg !3126
  br label %if.end43

if.end43:                                         ; preds = %for.end, %if.then10
  br label %for.inc44, !dbg !3127

for.inc44:                                        ; preds = %if.end43, %if.then13
  %35 = load i32, i32* %j, align 4, !dbg !3128
  %inc45 = add nsw i32 %35, 1, !dbg !3128
  store i32 %inc45, i32* %j, align 4, !dbg !3128
  br label %for.cond, !dbg !3129, !llvm.loop !3130

for.end46:                                        ; preds = %if.then, %for.cond
  ret void, !dbg !3132
}

declare dso_local void @addReplyNull(%struct.client*) #2

declare dso_local i32 @geohashEncode(%struct.GeoHashRange*, %struct.GeoHashRange*, double, double, i8 zeroext, %struct.GeoHashBits*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @geoposCommand(%struct.client* %c) #0 !dbg !3133 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %j = alloca i32, align 4
  %zobj = alloca %struct.redisObject*, align 8
  %score = alloca double, align 8
  %xy = alloca [2 x double], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj, metadata !3138, metadata !DIExpression()), !dbg !3139
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3140
  %db = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 4, !dbg !3141
  %1 = load %struct.redisDb*, %struct.redisDb** %db, align 8, !dbg !3141
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3142
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !3143
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !3143
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3142
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3142
  %call = call %struct.redisObject* @lookupKeyRead(%struct.redisDb* %1, %struct.redisObject* %4), !dbg !3144
  store %struct.redisObject* %call, %struct.redisObject** %zobj, align 8, !dbg !3139
  %5 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3145
  %6 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3147
  %call1 = call i32 @checkType(%struct.client* %5, %struct.redisObject* %6, i32 3), !dbg !3148
  %tobool = icmp ne i32 %call1, 0, !dbg !3148
  br i1 %tobool, label %if.then, label %if.end, !dbg !3149

if.then:                                          ; preds = %entry
  br label %for.end, !dbg !3150

if.end:                                           ; preds = %entry
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3151
  %8 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3152
  %argc = getelementptr inbounds %struct.client, %struct.client* %8, i32 0, i32 9, !dbg !3153
  %9 = load i32, i32* %argc, align 8, !dbg !3153
  %sub = sub nsw i32 %9, 2, !dbg !3154
  %conv = sext i32 %sub to i64, !dbg !3152
  call void @addReplyArrayLen(%struct.client* %7, i64 %conv), !dbg !3155
  store i32 2, i32* %j, align 4, !dbg !3156
  br label %for.cond, !dbg !3158

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %j, align 4, !dbg !3159
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3161
  %argc2 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 9, !dbg !3162
  %12 = load i32, i32* %argc2, align 8, !dbg !3162
  %cmp = icmp slt i32 %10, %12, !dbg !3163
  br i1 %cmp, label %for.body, label %for.end, !dbg !3164

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata double* %score, metadata !3165, metadata !DIExpression()), !dbg !3167
  %13 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3168
  %tobool4 = icmp ne %struct.redisObject* %13, null, !dbg !3168
  br i1 %tobool4, label %lor.lhs.false, label %if.then10, !dbg !3170

lor.lhs.false:                                    ; preds = %for.body
  %14 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3171
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3172
  %argv5 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 10, !dbg !3173
  %16 = load %struct.redisObject**, %struct.redisObject*** %argv5, align 8, !dbg !3173
  %17 = load i32, i32* %j, align 4, !dbg !3174
  %idxprom = sext i32 %17 to i64, !dbg !3172
  %arrayidx6 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %16, i64 %idxprom, !dbg !3172
  %18 = load %struct.redisObject*, %struct.redisObject** %arrayidx6, align 8, !dbg !3172
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %18, i32 0, i32 2, !dbg !3175
  %19 = load i8*, i8** %ptr, align 8, !dbg !3175
  %call7 = call i32 @zsetScore(%struct.redisObject* %14, i8* %19, double* %score), !dbg !3176
  %cmp8 = icmp eq i32 %call7, -1, !dbg !3177
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !3178

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  %20 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3179
  call void @addReplyNullArray(%struct.client* %20), !dbg !3181
  br label %if.end19, !dbg !3182

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata [2 x double]* %xy, metadata !3183, metadata !DIExpression()), !dbg !3185
  %21 = load double, double* %score, align 8, !dbg !3186
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !3188
  %call11 = call i32 @decodeGeohash(double %21, double* %arraydecay), !dbg !3189
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3189
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3190

if.then13:                                        ; preds = %if.else
  %22 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3191
  call void @addReplyNullArray(%struct.client* %22), !dbg !3193
  br label %for.inc, !dbg !3194

if.end14:                                         ; preds = %if.else
  %23 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3195
  call void @addReplyArrayLen(%struct.client* %23, i64 2), !dbg !3196
  %24 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3197
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !3198
  %25 = load double, double* %arrayidx15, align 16, !dbg !3198
  %conv16 = fpext double %25 to x86_fp80, !dbg !3198
  call void @addReplyHumanLongDouble(%struct.client* %24, x86_fp80 %conv16), !dbg !3199
  %26 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3200
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 1, !dbg !3201
  %27 = load double, double* %arrayidx17, align 8, !dbg !3201
  %conv18 = fpext double %27 to x86_fp80, !dbg !3201
  call void @addReplyHumanLongDouble(%struct.client* %26, x86_fp80 %conv18), !dbg !3202
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then10
  br label %for.inc, !dbg !3203

for.inc:                                          ; preds = %if.end19, %if.then13
  %28 = load i32, i32* %j, align 4, !dbg !3204
  %inc = add nsw i32 %28, 1, !dbg !3204
  store i32 %inc, i32* %j, align 4, !dbg !3204
  br label %for.cond, !dbg !3205, !llvm.loop !3206

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !3208
}

declare dso_local void @addReplyNullArray(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @geodistCommand(%struct.client* %c) #0 !dbg !3209 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %to_meter = alloca double, align 8
  %zobj = alloca %struct.redisObject*, align 8
  %score1 = alloca double, align 8
  %score2 = alloca double, align 8
  %xyxy = alloca [4 x double], align 16
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.declare(metadata double* %to_meter, metadata !3212, metadata !DIExpression()), !dbg !3213
  store double 1.000000e+00, double* %to_meter, align 8, !dbg !3213
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3214
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !3216
  %1 = load i32, i32* %argc, align 8, !dbg !3216
  %cmp = icmp eq i32 %1, 5, !dbg !3217
  br i1 %cmp, label %if.then, label %if.else, !dbg !3218

if.then:                                          ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3219
  %3 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3221
  %argv = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 10, !dbg !3222
  %4 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !3222
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %4, i64 4, !dbg !3221
  %5 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !3221
  %call = call double @extractUnitOrReply(%struct.client* %2, %struct.redisObject* %5), !dbg !3223
  store double %call, double* %to_meter, align 8, !dbg !3224
  %6 = load double, double* %to_meter, align 8, !dbg !3225
  %cmp1 = fcmp olt double %6, 0.000000e+00, !dbg !3227
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3228

if.then2:                                         ; preds = %if.then
  br label %if.end41, !dbg !3229

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !3230

if.else:                                          ; preds = %entry
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3231
  %argc3 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 9, !dbg !3233
  %8 = load i32, i32* %argc3, align 8, !dbg !3233
  %cmp4 = icmp sgt i32 %8, 5, !dbg !3234
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3235

if.then5:                                         ; preds = %if.else
  %9 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3236
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 16), align 8, !dbg !3238
  call void @addReplyErrorObject(%struct.client* %9, %struct.redisObject* %10), !dbg !3239
  br label %if.end41, !dbg !3240

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  call void @llvm.dbg.declare(metadata %struct.redisObject** %zobj, metadata !3241, metadata !DIExpression()), !dbg !3242
  store %struct.redisObject* null, %struct.redisObject** %zobj, align 8, !dbg !3242
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3243
  %12 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3245
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 10, !dbg !3246
  %13 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !3246
  %arrayidx9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %13, i64 1, !dbg !3245
  %14 = load %struct.redisObject*, %struct.redisObject** %arrayidx9, align 8, !dbg !3245
  %15 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3247
  %resp = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 3, !dbg !3248
  %16 = load i32, i32* %resp, align 8, !dbg !3248
  %idxprom = sext i32 %16 to i64, !dbg !3249
  %arrayidx10 = getelementptr inbounds [4 x %struct.redisObject*], [4 x %struct.redisObject*]* getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i32 0, i32 9), i64 0, i64 %idxprom, !dbg !3249
  %17 = load %struct.redisObject*, %struct.redisObject** %arrayidx10, align 8, !dbg !3249
  %call11 = call %struct.redisObject* @lookupKeyReadOrReply(%struct.client* %11, %struct.redisObject* %14, %struct.redisObject* %17), !dbg !3250
  store %struct.redisObject* %call11, %struct.redisObject** %zobj, align 8, !dbg !3251
  %cmp12 = icmp eq %struct.redisObject* %call11, null, !dbg !3252
  br i1 %cmp12, label %if.then14, label %lor.lhs.false, !dbg !3253

lor.lhs.false:                                    ; preds = %if.end7
  %18 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3254
  %19 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3255
  %call13 = call i32 @checkType(%struct.client* %18, %struct.redisObject* %19, i32 3), !dbg !3256
  %tobool = icmp ne i32 %call13, 0, !dbg !3256
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !3257

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  br label %if.end41, !dbg !3258

if.end15:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata double* %score1, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.declare(metadata double* %score2, metadata !3261, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.declare(metadata [4 x double]* %xyxy, metadata !3263, metadata !DIExpression()), !dbg !3264
  %20 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3265
  %21 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3267
  %argv16 = getelementptr inbounds %struct.client, %struct.client* %21, i32 0, i32 10, !dbg !3268
  %22 = load %struct.redisObject**, %struct.redisObject*** %argv16, align 8, !dbg !3268
  %arrayidx17 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 2, !dbg !3267
  %23 = load %struct.redisObject*, %struct.redisObject** %arrayidx17, align 8, !dbg !3267
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %23, i32 0, i32 2, !dbg !3269
  %24 = load i8*, i8** %ptr, align 8, !dbg !3269
  %call18 = call i32 @zsetScore(%struct.redisObject* %20, i8* %24, double* %score1), !dbg !3270
  %cmp19 = icmp eq i32 %call18, -1, !dbg !3271
  br i1 %cmp19, label %if.then26, label %lor.lhs.false20, !dbg !3272

lor.lhs.false20:                                  ; preds = %if.end15
  %25 = load %struct.redisObject*, %struct.redisObject** %zobj, align 8, !dbg !3273
  %26 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3274
  %argv21 = getelementptr inbounds %struct.client, %struct.client* %26, i32 0, i32 10, !dbg !3275
  %27 = load %struct.redisObject**, %struct.redisObject*** %argv21, align 8, !dbg !3275
  %arrayidx22 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %27, i64 3, !dbg !3274
  %28 = load %struct.redisObject*, %struct.redisObject** %arrayidx22, align 8, !dbg !3274
  %ptr23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %28, i32 0, i32 2, !dbg !3276
  %29 = load i8*, i8** %ptr23, align 8, !dbg !3276
  %call24 = call i32 @zsetScore(%struct.redisObject* %25, i8* %29, double* %score2), !dbg !3277
  %cmp25 = icmp eq i32 %call24, -1, !dbg !3278
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !3279

if.then26:                                        ; preds = %lor.lhs.false20, %if.end15
  %30 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3280
  call void @addReplyNull(%struct.client* %30), !dbg !3282
  br label %if.end41, !dbg !3283

if.end27:                                         ; preds = %lor.lhs.false20
  %31 = load double, double* %score1, align 8, !dbg !3284
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 0, !dbg !3286
  %call28 = call i32 @decodeGeohash(double %31, double* %arraydecay), !dbg !3287
  %tobool29 = icmp ne i32 %call28, 0, !dbg !3287
  br i1 %tobool29, label %lor.lhs.false30, label %if.then34, !dbg !3288

lor.lhs.false30:                                  ; preds = %if.end27
  %32 = load double, double* %score2, align 8, !dbg !3289
  %arraydecay31 = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 0, !dbg !3290
  %add.ptr = getelementptr inbounds double, double* %arraydecay31, i64 2, !dbg !3291
  %call32 = call i32 @decodeGeohash(double %32, double* %add.ptr), !dbg !3292
  %tobool33 = icmp ne i32 %call32, 0, !dbg !3292
  br i1 %tobool33, label %if.else35, label %if.then34, !dbg !3293

if.then34:                                        ; preds = %lor.lhs.false30, %if.end27
  %33 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3294
  call void @addReplyNull(%struct.client* %33), !dbg !3295
  br label %if.end41, !dbg !3295

if.else35:                                        ; preds = %lor.lhs.false30
  %34 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !3296
  %arrayidx36 = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 0, !dbg !3297
  %35 = load double, double* %arrayidx36, align 16, !dbg !3297
  %arrayidx37 = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 1, !dbg !3298
  %36 = load double, double* %arrayidx37, align 8, !dbg !3298
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 2, !dbg !3299
  %37 = load double, double* %arrayidx38, align 16, !dbg !3299
  %arrayidx39 = getelementptr inbounds [4 x double], [4 x double]* %xyxy, i64 0, i64 3, !dbg !3300
  %38 = load double, double* %arrayidx39, align 8, !dbg !3300
  %call40 = call double @geohashGetDistance(double %35, double %36, double %37, double %38), !dbg !3301
  %39 = load double, double* %to_meter, align 8, !dbg !3302
  %div = fdiv double %call40, %39, !dbg !3303
  call void @addReplyDoubleDistance(%struct.client* %34, double %div), !dbg !3304
  br label %if.end41

if.end41:                                         ; preds = %if.then2, %if.then5, %if.then14, %if.then26, %if.else35, %if.then34
  ret void, !dbg !3305
}

declare dso_local %struct.redisObject* @lookupKeyReadOrReply(%struct.client*, %struct.redisObject*, %struct.redisObject*) #2

declare dso_local double @geohashGetDistance(double, double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "geo.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!58, !63, !64, !66, !80, !90, !99}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !59, line: 27, baseType: !60)
!59 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !61, line: 45, baseType: !62)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!62 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !68, line: 51, size: 24, elements: !69)
!68 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!69 = !{!70, !74, !75, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !67, file: !68, line: 52, baseType: !71, size: 8)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !59, line: 24, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !61, line: 38, baseType: !73)
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !67, file: !68, line: 53, baseType: !71, size: 8, offset: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !68, line: 54, baseType: !73, size: 8, offset: 16)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !67, file: !68, line: 55, baseType: !77, offset: 24)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: -1)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !68, line: 57, size: 40, elements: !82)
!82 = !{!83, !87, !88, !89}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !81, file: !68, line: 58, baseType: !84, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 25, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 40, baseType: !86)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !81, file: !68, line: 59, baseType: !84, size: 16, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !68, line: 60, baseType: !73, size: 8, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !81, file: !68, line: 61, baseType: !77, offset: 40)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !68, line: 63, size: 72, elements: !92)
!92 = !{!93, !96, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !91, file: !68, line: 64, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 26, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !5)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !91, file: !68, line: 65, baseType: !94, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !68, line: 66, baseType: !73, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !91, file: !68, line: 67, baseType: !77, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !68, line: 69, size: 136, elements: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !68, line: 70, baseType: !58, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !100, file: !68, line: 71, baseType: !58, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !68, line: 72, baseType: !73, size: 8, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !100, file: !68, line: 73, baseType: !77, offset: 136)
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!112 = distinct !DISubprogram(name: "geoArrayCreate", scope: !1, file: !1, line: 54, type: !113, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!113 = !DISubroutineType(types: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "geoArray", file: !117, line: 20, baseType: !118)
!117 = !DIFile(filename: "./geo.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "geoArray", file: !117, line: 16, size: 192, elements: !119)
!119 = !{!120, !130, !133}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !118, file: !117, line: 17, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "geoPoint", file: !117, line: 8, size: 320, elements: !123)
!123 = !{!124, !126, !127, !128, !129}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !122, file: !117, line: 9, baseType: !125, size: 64)
!125 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !122, file: !117, line: 10, baseType: !125, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !122, file: !117, line: 11, baseType: !125, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !122, file: !117, line: 12, baseType: !125, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "member", scope: !122, file: !117, line: 13, baseType: !64, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !118, file: !117, line: 18, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !62)
!132 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !118, file: !117, line: 19, baseType: !131, size: 64, offset: 128)
!134 = !{}
!135 = !DILocalVariable(name: "ga", scope: !112, file: !1, line: 55, type: !115)
!136 = !DILocation(line: 55, column: 15, scope: !112)
!137 = !DILocation(line: 55, column: 20, scope: !112)
!138 = !DILocation(line: 57, column: 5, scope: !112)
!139 = !DILocation(line: 57, column: 9, scope: !112)
!140 = !DILocation(line: 57, column: 15, scope: !112)
!141 = !DILocation(line: 58, column: 5, scope: !112)
!142 = !DILocation(line: 58, column: 9, scope: !112)
!143 = !DILocation(line: 58, column: 17, scope: !112)
!144 = !DILocation(line: 59, column: 5, scope: !112)
!145 = !DILocation(line: 59, column: 9, scope: !112)
!146 = !DILocation(line: 59, column: 14, scope: !112)
!147 = !DILocation(line: 60, column: 12, scope: !112)
!148 = !DILocation(line: 60, column: 5, scope: !112)
!149 = distinct !DISubprogram(name: "geoArrayAppend", scope: !1, file: !1, line: 64, type: !150, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !115, !154, !125, !125, !64}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "geoPoint", file: !117, line: 14, baseType: !122)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!155 = !DILocalVariable(name: "ga", arg: 1, scope: !149, file: !1, line: 64, type: !115)
!156 = !DILocation(line: 64, column: 36, scope: !149)
!157 = !DILocalVariable(name: "xy", arg: 2, scope: !149, file: !1, line: 64, type: !154)
!158 = !DILocation(line: 64, column: 48, scope: !149)
!159 = !DILocalVariable(name: "dist", arg: 3, scope: !149, file: !1, line: 64, type: !125)
!160 = !DILocation(line: 64, column: 59, scope: !149)
!161 = !DILocalVariable(name: "score", arg: 4, scope: !149, file: !1, line: 65, type: !125)
!162 = !DILocation(line: 65, column: 33, scope: !149)
!163 = !DILocalVariable(name: "member", arg: 5, scope: !149, file: !1, line: 65, type: !64)
!164 = !DILocation(line: 65, column: 46, scope: !149)
!165 = !DILocation(line: 67, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !149, file: !1, line: 67, column: 9)
!167 = !DILocation(line: 67, column: 13, scope: !166)
!168 = !DILocation(line: 67, column: 21, scope: !166)
!169 = !DILocation(line: 67, column: 25, scope: !166)
!170 = !DILocation(line: 67, column: 18, scope: !166)
!171 = !DILocation(line: 67, column: 9, scope: !149)
!172 = !DILocation(line: 68, column: 24, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !1, line: 67, column: 34)
!174 = !DILocation(line: 68, column: 28, scope: !173)
!175 = !DILocation(line: 68, column: 36, scope: !173)
!176 = !DILocation(line: 68, column: 23, scope: !173)
!177 = !DILocation(line: 68, column: 48, scope: !173)
!178 = !DILocation(line: 68, column: 52, scope: !173)
!179 = !DILocation(line: 68, column: 59, scope: !173)
!180 = !DILocation(line: 68, column: 9, scope: !173)
!181 = !DILocation(line: 68, column: 13, scope: !173)
!182 = !DILocation(line: 68, column: 21, scope: !173)
!183 = !DILocation(line: 69, column: 30, scope: !173)
!184 = !DILocation(line: 69, column: 34, scope: !173)
!185 = !DILocation(line: 69, column: 57, scope: !173)
!186 = !DILocation(line: 69, column: 61, scope: !173)
!187 = !DILocation(line: 69, column: 56, scope: !173)
!188 = !DILocation(line: 69, column: 21, scope: !173)
!189 = !DILocation(line: 69, column: 9, scope: !173)
!190 = !DILocation(line: 69, column: 13, scope: !173)
!191 = !DILocation(line: 69, column: 19, scope: !173)
!192 = !DILocation(line: 70, column: 5, scope: !173)
!193 = !DILocalVariable(name: "gp", scope: !149, file: !1, line: 71, type: !152)
!194 = !DILocation(line: 71, column: 15, scope: !149)
!195 = !DILocation(line: 71, column: 20, scope: !149)
!196 = !DILocation(line: 71, column: 24, scope: !149)
!197 = !DILocation(line: 71, column: 30, scope: !149)
!198 = !DILocation(line: 71, column: 34, scope: !149)
!199 = !DILocation(line: 71, column: 29, scope: !149)
!200 = !DILocation(line: 72, column: 21, scope: !149)
!201 = !DILocation(line: 72, column: 5, scope: !149)
!202 = !DILocation(line: 72, column: 9, scope: !149)
!203 = !DILocation(line: 72, column: 19, scope: !149)
!204 = !DILocation(line: 73, column: 20, scope: !149)
!205 = !DILocation(line: 73, column: 5, scope: !149)
!206 = !DILocation(line: 73, column: 9, scope: !149)
!207 = !DILocation(line: 73, column: 18, scope: !149)
!208 = !DILocation(line: 74, column: 16, scope: !149)
!209 = !DILocation(line: 74, column: 5, scope: !149)
!210 = !DILocation(line: 74, column: 9, scope: !149)
!211 = !DILocation(line: 74, column: 14, scope: !149)
!212 = !DILocation(line: 75, column: 18, scope: !149)
!213 = !DILocation(line: 75, column: 5, scope: !149)
!214 = !DILocation(line: 75, column: 9, scope: !149)
!215 = !DILocation(line: 75, column: 16, scope: !149)
!216 = !DILocation(line: 76, column: 17, scope: !149)
!217 = !DILocation(line: 76, column: 5, scope: !149)
!218 = !DILocation(line: 76, column: 9, scope: !149)
!219 = !DILocation(line: 76, column: 15, scope: !149)
!220 = !DILocation(line: 77, column: 5, scope: !149)
!221 = !DILocation(line: 77, column: 9, scope: !149)
!222 = !DILocation(line: 77, column: 13, scope: !149)
!223 = !DILocation(line: 78, column: 12, scope: !149)
!224 = !DILocation(line: 78, column: 5, scope: !149)
!225 = distinct !DISubprogram(name: "geoArrayFree", scope: !1, file: !1, line: 82, type: !226, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !115}
!228 = !DILocalVariable(name: "ga", arg: 1, scope: !225, file: !1, line: 82, type: !115)
!229 = !DILocation(line: 82, column: 29, scope: !225)
!230 = !DILocalVariable(name: "i", scope: !225, file: !1, line: 83, type: !131)
!231 = !DILocation(line: 83, column: 12, scope: !225)
!232 = !DILocation(line: 84, column: 12, scope: !233)
!233 = distinct !DILexicalBlock(scope: !225, file: !1, line: 84, column: 5)
!234 = !DILocation(line: 84, column: 10, scope: !233)
!235 = !DILocation(line: 84, column: 17, scope: !236)
!236 = distinct !DILexicalBlock(scope: !233, file: !1, line: 84, column: 5)
!237 = !DILocation(line: 84, column: 21, scope: !236)
!238 = !DILocation(line: 84, column: 25, scope: !236)
!239 = !DILocation(line: 84, column: 19, scope: !236)
!240 = !DILocation(line: 84, column: 5, scope: !233)
!241 = !DILocation(line: 84, column: 44, scope: !236)
!242 = !DILocation(line: 84, column: 48, scope: !236)
!243 = !DILocation(line: 84, column: 54, scope: !236)
!244 = !DILocation(line: 84, column: 57, scope: !236)
!245 = !DILocation(line: 84, column: 36, scope: !236)
!246 = !DILocation(line: 84, column: 32, scope: !236)
!247 = !DILocation(line: 84, column: 5, scope: !236)
!248 = distinct !{!248, !240, !249, !250}
!249 = !DILocation(line: 84, column: 63, scope: !233)
!250 = !{!"llvm.loop.mustprogress"}
!251 = !DILocation(line: 85, column: 11, scope: !225)
!252 = !DILocation(line: 85, column: 15, scope: !225)
!253 = !DILocation(line: 85, column: 5, scope: !225)
!254 = !DILocation(line: 86, column: 11, scope: !225)
!255 = !DILocation(line: 86, column: 5, scope: !225)
!256 = !DILocation(line: 87, column: 1, scope: !225)
!257 = distinct !DISubprogram(name: "decodeGeohash", scope: !1, file: !1, line: 92, type: !258, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !125, !154}
!260 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!261 = !DILocalVariable(name: "bits", arg: 1, scope: !257, file: !1, line: 92, type: !125)
!262 = !DILocation(line: 92, column: 26, scope: !257)
!263 = !DILocalVariable(name: "xy", arg: 2, scope: !257, file: !1, line: 92, type: !154)
!264 = !DILocation(line: 92, column: 40, scope: !257)
!265 = !DILocalVariable(name: "hash", scope: !257, file: !1, line: 93, type: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !267, line: 68, baseType: !268)
!267 = !DIFile(filename: "./geohash.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 65, size: 128, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !268, file: !267, line: 66, baseType: !58, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !268, file: !267, line: 67, baseType: !71, size: 8, offset: 64)
!272 = !DILocation(line: 93, column: 17, scope: !257)
!273 = !DILocation(line: 93, column: 24, scope: !257)
!274 = !DILocation(line: 93, column: 44, scope: !257)
!275 = !DILocation(line: 93, column: 34, scope: !257)
!276 = !DILocation(line: 94, column: 46, scope: !257)
!277 = !DILocation(line: 94, column: 12, scope: !257)
!278 = !DILocation(line: 94, column: 5, scope: !257)
!279 = distinct !DISubprogram(name: "extractLongLatOrReply", scope: !1, file: !1, line: 100, type: !280, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!280 = !DISubroutineType(types: !281)
!281 = !{!260, !282, !568, !154}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !285)
!285 = !{!286, !287, !288, !436, !437, !552, !562, !564, !565, !566, !567, !569, !570, !571, !572, !573, !724, !725, !726, !736, !737, !738, !739, !740, !742, !743, !744, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !774, !775, !776, !777, !778, !796, !797, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !833, !834, !835, !836, !855, !856, !857, !858, !865, !866, !867, !868, !869, !870, !871}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !284, file: !14, line: 1090, baseType: !58, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !14, line: 1091, baseType: !58, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !284, file: !14, line: 1092, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !292)
!292 = !{!293, !425, !427, !429, !430, !431, !432, !433, !434, !435}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !4, line: 78, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !297)
!297 = !{!298, !361, !372, !378, !389, !393, !394, !398, !402, !403, !407, !411, !419, !420, !421}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !296, file: !4, line: 60, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302, !260, !63, !260}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !304, line: 99, size: 640, elements: !305)
!304 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!305 = !{!306, !307, !308, !310, !321, !328, !352, !353, !354, !359, !360}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !303, file: !304, line: 100, baseType: !260, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !303, file: !304, line: 101, baseType: !260, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !303, file: !304, line: 102, baseType: !309, size: 64, offset: 64)
!309 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !303, file: !304, line: 103, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !304, line: 77, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !304, line: 72, size: 256, elements: !314)
!314 = !{!315, !316, !319, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !313, file: !304, line: 73, baseType: !260, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !313, file: !304, line: 74, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !304, line: 66, baseType: !300)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !313, file: !304, line: 75, baseType: !317, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !313, file: !304, line: 76, baseType: !63, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !303, file: !304, line: 104, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !304, line: 96, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !304, line: 93, size: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !324, file: !304, line: 94, baseType: !260, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !324, file: !304, line: 95, baseType: !260, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !303, file: !304, line: 105, baseType: !329, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !304, line: 90, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !304, line: 80, size: 512, elements: !332)
!332 = !{!333, !334, !337, !342, !347, !348, !350, !351}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !331, file: !304, line: 81, baseType: !309, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !331, file: !304, line: 82, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !336, line: 22, baseType: !58)
!336 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !331, file: !304, line: 83, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !304, line: 67, baseType: !340)
!340 = !DISubroutineType(types: !341)
!341 = !{!260, !302, !309, !63}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !331, file: !304, line: 84, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !304, line: 68, baseType: !345)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !302, !63}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !331, file: !304, line: 85, baseType: !63, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !331, file: !304, line: 86, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !304, line: 87, baseType: !349, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !331, file: !304, line: 88, baseType: !260, size: 32, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !303, file: !304, line: 106, baseType: !260, size: 32, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !303, file: !304, line: 107, baseType: !63, size: 64, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !303, file: !304, line: 108, baseType: !355, size: 64, offset: 448)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !304, line: 69, baseType: !357)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !302}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !303, file: !304, line: 109, baseType: !355, size: 64, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 110, baseType: !260, size: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !296, file: !4, line: 61, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!260, !365, !366, !260, !366, !368}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !365}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !296, file: !4, line: 62, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!260, !365, !376, !131}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !296, file: !4, line: 63, baseType: !379, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!260, !365, !382, !260}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !385, line: 26, size: 128, elements: !386)
!385 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!386 = !{!387, !388}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !384, file: !385, line: 28, baseType: !63, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !384, file: !385, line: 29, baseType: !131, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !296, file: !4, line: 64, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!260, !365, !63, !131}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !296, file: !4, line: 65, baseType: !369, size: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !296, file: !4, line: 66, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!260, !365, !368}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !296, file: !4, line: 67, baseType: !399, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!260, !365, !368, !260}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !296, file: !4, line: 68, baseType: !395, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !296, file: !4, line: 69, baseType: !404, size: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!366, !365}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !296, file: !4, line: 70, baseType: !408, size: 64, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{!260, !365, !366, !260, !309}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !296, file: !4, line: 71, baseType: !412, size: 64, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !365, !64, !415, !309}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !416, line: 108, baseType: !417)
!416 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !61, line: 194, baseType: !418)
!418 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !296, file: !4, line: 72, baseType: !412, size: 64, offset: 768)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !296, file: !4, line: 73, baseType: !412, size: 64, offset: 832)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !296, file: !4, line: 74, baseType: !422, size: 64, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!260, !365}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !4, line: 79, baseType: !426, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !4, line: 80, baseType: !428, size: 16, offset: 96)
!428 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !291, file: !4, line: 81, baseType: !428, size: 16, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !291, file: !4, line: 82, baseType: !260, size: 32, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !291, file: !4, line: 83, baseType: !63, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !291, file: !4, line: 84, baseType: !368, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !291, file: !4, line: 85, baseType: !368, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !291, file: !4, line: 86, baseType: !368, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !291, file: !4, line: 87, baseType: !260, size: 32, offset: 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !284, file: !14, line: 1093, baseType: !260, size: 32, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !284, file: !14, line: 1094, baseType: !438, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !441)
!441 = !{!442, !512, !513, !514, !515, !516, !517, !518, !519, !548}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !440, file: !14, line: 923, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !445, line: 61, baseType: !446)
!445 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !445, line: 79, size: 448, elements: !447)
!447 = !{!448, !479, !503, !505, !506, !509}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !445, line: 80, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !445, line: 74, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !445, line: 63, size: 512, elements: !452)
!452 = !{!453, !457, !461, !462, !466, !470, !471, !475}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !451, file: !445, line: 64, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!58, !376}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !451, file: !445, line: 65, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!63, !443, !376}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !451, file: !445, line: 66, baseType: !458, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !451, file: !445, line: 67, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!260, !443, !376, !376}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !451, file: !445, line: 68, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !443, !63}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !451, file: !445, line: 69, baseType: !467, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !451, file: !445, line: 70, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!260, !131, !125}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !451, file: !445, line: 73, baseType: !476, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!131, !443}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !446, file: !445, line: 82, baseType: !480, size: 128, offset: 64)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 128, elements: !501)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !445, line: 59, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !445, line: 47, size: 192, elements: !485)
!485 = !{!486, !487, !497, !499}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !484, file: !445, line: 48, baseType: !63, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !484, file: !445, line: 54, baseType: !488, size: 64, offset: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !445, line: 49, size: 64, elements: !489)
!489 = !{!490, !491, !492, !496}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !488, file: !445, line: 50, baseType: !63, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !488, file: !445, line: 51, baseType: !58, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !488, file: !445, line: 52, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !494, line: 27, baseType: !495)
!494 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !61, line: 44, baseType: !418)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !488, file: !445, line: 53, baseType: !125, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !484, file: !445, line: 55, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !484, file: !445, line: 56, baseType: !500, offset: 192)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, elements: !78)
!501 = !{!502}
!502 = !DISubrange(count: 2)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !446, file: !445, line: 83, baseType: !504, size: 128, offset: 192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !501)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !446, file: !445, line: 85, baseType: !418, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !446, file: !445, line: 88, baseType: !507, size: 16, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !494, line: 25, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !61, line: 39, baseType: !428)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !446, file: !445, line: 89, baseType: !510, size: 16, offset: 400)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 16, elements: !501)
!511 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !440, file: !14, line: 924, baseType: !443, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !440, file: !14, line: 925, baseType: !443, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !440, file: !14, line: 926, baseType: !443, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !440, file: !14, line: 927, baseType: !443, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !440, file: !14, line: 928, baseType: !260, size: 32, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !440, file: !14, line: 929, baseType: !309, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !440, file: !14, line: 930, baseType: !62, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !440, file: !14, line: 931, baseType: !520, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !522, line: 54, baseType: !523)
!522 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !522, line: 47, size: 384, elements: !524)
!524 = !{!525, !534, !535, !539, !543, !547}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !523, file: !522, line: 48, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !522, line: 40, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !522, line: 36, size: 192, elements: !529)
!529 = !{!530, !532, !533}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !528, file: !522, line: 37, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !522, line: 38, baseType: !531, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !528, file: !522, line: 39, baseType: !63, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !523, file: !522, line: 49, baseType: !526, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !523, file: !522, line: 50, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!63, !63}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !523, file: !522, line: 51, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !63}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !523, file: !522, line: 52, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!260, !63, !63}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !523, file: !522, line: 53, baseType: !62, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !440, file: !14, line: 932, baseType: !549, size: 64, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !14, line: 1095, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !556)
!556 = !{!557, !558, !559, !560, !561}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !555, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !555, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !555, file: !14, line: 860, baseType: !260, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !555, file: !14, line: 861, baseType: !63, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !284, file: !14, line: 1096, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !68, line: 43, baseType: !64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !284, file: !14, line: 1097, baseType: !131, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !284, file: !14, line: 1098, baseType: !131, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !284, file: !14, line: 1099, baseType: !260, size: 32, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !284, file: !14, line: 1100, baseType: !568, size: 64, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !284, file: !14, line: 1101, baseType: !260, size: 32, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !284, file: !14, line: 1102, baseType: !260, size: 32, offset: 736)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !284, file: !14, line: 1103, baseType: !568, size: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !284, file: !14, line: 1104, baseType: !131, size: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !284, file: !14, line: 1105, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !586, !593, !595, !600, !601, !602, !603, !643, !665, !666, !681, !682, !683, !684, !685, !686, !687, !711, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !575, file: !14, line: 2235, baseType: !366, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !575, file: !14, line: 2237, baseType: !366, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !575, file: !14, line: 2238, baseType: !366, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !575, file: !14, line: 2239, baseType: !366, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !575, file: !14, line: 2240, baseType: !260, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !575, file: !14, line: 2241, baseType: !366, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !575, file: !14, line: 2242, baseType: !366, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !575, file: !14, line: 2243, baseType: !585, size: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !575, file: !14, line: 2244, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !589)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !589, file: !14, line: 2111, baseType: !366, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !589, file: !14, line: 2112, baseType: !366, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !575, file: !14, line: 2245, baseType: !594, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !575, file: !14, line: 2246, baseType: !596, size: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !598)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !282}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !575, file: !14, line: 2247, baseType: !260, size: 32, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !14, line: 2248, baseType: !58, size: 64, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !575, file: !14, line: 2249, baseType: !58, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !575, file: !14, line: 2250, baseType: !604, size: 1792, offset: 896)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 1792, elements: !641)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !607)
!607 = !{!608, !609, !610, !612, !624, !626}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !606, file: !14, line: 2006, baseType: !366, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !14, line: 2007, baseType: !58, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !606, file: !14, line: 2008, baseType: !611, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !606, file: !14, line: 2022, baseType: !613, size: 128, offset: 192)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !14, line: 2009, size: 128, elements: !614)
!614 = !{!615, !619}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !613, file: !14, line: 2013, baseType: !616, size: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !613, file: !14, line: 2010, size: 32, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !616, file: !14, line: 2012, baseType: !260, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !613, file: !14, line: 2021, baseType: !620, size: 128)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !613, file: !14, line: 2014, size: 128, elements: !621)
!621 = !{!622, !623}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !620, file: !14, line: 2016, baseType: !366, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !620, file: !14, line: 2020, baseType: !260, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !606, file: !14, line: 2023, baseType: !625, size: 32, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !606, file: !14, line: 2047, baseType: !627, size: 96, offset: 352)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !14, line: 2024, size: 96, elements: !628)
!628 = !{!629, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !627, file: !14, line: 2037, baseType: !630, size: 96)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !14, line: 2027, size: 96, elements: !631)
!631 = !{!632, !633, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !630, file: !14, line: 2031, baseType: !260, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !630, file: !14, line: 2033, baseType: !260, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !630, file: !14, line: 2036, baseType: !260, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !627, file: !14, line: 2046, baseType: !636, size: 96)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !14, line: 2038, size: 96, elements: !637)
!637 = !{!638, !639, !640}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !636, file: !14, line: 2040, baseType: !260, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !636, file: !14, line: 2043, baseType: !260, size: 32, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !636, file: !14, line: 2045, baseType: !260, size: 32, offset: 64)
!641 = !{!642}
!642 = !DISubrange(count: 4)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !575, file: !14, line: 2253, baseType: !644, size: 64, offset: 2688)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !646)
!646 = !DISubroutineType(types: !647)
!647 = !{!260, !574, !568, !260, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !651)
!651 = !{!652, !661, !663, !664}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !650, file: !14, line: 1962, baseType: !653, size: 16384)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 16384, elements: !659)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !655, file: !14, line: 1952, baseType: !260, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !14, line: 1953, baseType: !260, size: 32, offset: 32)
!659 = !{!660}
!660 = !DISubrange(count: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !650, file: !14, line: 1963, baseType: !662, size: 64, offset: 16384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !650, file: !14, line: 1964, baseType: !260, size: 32, offset: 16448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !650, file: !14, line: 1965, baseType: !260, size: 32, offset: 16480)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !575, file: !14, line: 2255, baseType: !574, size: 64, offset: 2752)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !575, file: !14, line: 2257, baseType: !667, size: 64, offset: 2816)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !669)
!669 = !{!670, !671, !673, !674, !675, !676, !677, !678, !679, !680}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !668, file: !14, line: 2072, baseType: !366, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !14, line: 2073, baseType: !672, size: 32, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !668, file: !14, line: 2074, baseType: !260, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !668, file: !14, line: 2075, baseType: !366, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !668, file: !14, line: 2076, baseType: !366, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !668, file: !14, line: 2077, baseType: !366, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !14, line: 2078, baseType: !260, size: 32, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !668, file: !14, line: 2079, baseType: !366, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !668, file: !14, line: 2080, baseType: !667, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !668, file: !14, line: 2082, baseType: !260, size: 32, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !575, file: !14, line: 2260, baseType: !309, size: 64, offset: 2880)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !575, file: !14, line: 2260, baseType: !309, size: 64, offset: 2944)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !575, file: !14, line: 2260, baseType: !309, size: 64, offset: 3008)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !575, file: !14, line: 2260, baseType: !309, size: 64, offset: 3072)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !575, file: !14, line: 2261, baseType: !260, size: 32, offset: 3136)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !575, file: !14, line: 2266, baseType: !563, size: 64, offset: 3200)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !575, file: !14, line: 2267, baseType: !688, size: 64, offset: 3264)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !690, line: 17, size: 832, elements: !691)
!690 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!691 = !{!692, !693, !694, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !689, file: !690, line: 19, baseType: !493, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !689, file: !690, line: 20, baseType: !493, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !689, file: !690, line: 21, baseType: !695, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !494, line: 26, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !61, line: 41, baseType: !260)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !689, file: !690, line: 22, baseType: !695, size: 32, offset: 160)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !689, file: !690, line: 23, baseType: !695, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !689, file: !690, line: 24, baseType: !695, size: 32, offset: 224)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !689, file: !690, line: 25, baseType: !493, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !689, file: !690, line: 26, baseType: !695, size: 32, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !689, file: !690, line: 27, baseType: !695, size: 32, offset: 352)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !689, file: !690, line: 28, baseType: !493, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !689, file: !690, line: 29, baseType: !493, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !689, file: !690, line: 30, baseType: !695, size: 32, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !689, file: !690, line: 31, baseType: !125, size: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !689, file: !690, line: 32, baseType: !695, size: 32, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !689, file: !690, line: 33, baseType: !493, size: 64, offset: 704)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !689, file: !690, line: 34, baseType: !710, size: 64, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !575, file: !14, line: 2268, baseType: !712, size: 64, offset: 3328)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !575, file: !14, line: 2269, baseType: !605, size: 448, offset: 3392)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !575, file: !14, line: 2273, baseType: !260, size: 32, offset: 3840)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !575, file: !14, line: 2274, baseType: !260, size: 32, offset: 3872)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !575, file: !14, line: 2275, baseType: !260, size: 32, offset: 3904)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !575, file: !14, line: 2276, baseType: !260, size: 32, offset: 3936)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !575, file: !14, line: 2277, baseType: !260, size: 32, offset: 3968)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !575, file: !14, line: 2278, baseType: !443, size: 64, offset: 4032)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !575, file: !14, line: 2280, baseType: !574, size: 64, offset: 4096)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !575, file: !14, line: 2281, baseType: !722, size: 64, offset: 4160)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !284, file: !14, line: 1105, baseType: !574, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !284, file: !14, line: 1106, baseType: !574, size: 64, offset: 1024)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !284, file: !14, line: 1109, baseType: !727, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !730)
!730 = !{!731, !732, !733, !734, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !729, file: !14, line: 1050, baseType: !563, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !14, line: 1051, baseType: !94, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !729, file: !14, line: 1052, baseType: !520, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !729, file: !14, line: 1053, baseType: !520, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !729, file: !14, line: 1056, baseType: !553, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !284, file: !14, line: 1112, baseType: !260, size: 32, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !284, file: !14, line: 1113, baseType: !260, size: 32, offset: 1184)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !284, file: !14, line: 1114, baseType: !418, size: 64, offset: 1216)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !284, file: !14, line: 1115, baseType: !520, size: 64, offset: 1280)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !284, file: !14, line: 1116, baseType: !741, size: 64, offset: 1344)
!741 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !284, file: !14, line: 1117, baseType: !520, size: 64, offset: 1408)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !284, file: !14, line: 1118, baseType: !131, size: 64, offset: 1472)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !284, file: !14, line: 1120, baseType: !745, size: 64, offset: 1536)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !746, line: 10, baseType: !747)
!746 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !61, line: 160, baseType: !418)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !284, file: !14, line: 1121, baseType: !418, size: 64, offset: 1600)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !284, file: !14, line: 1122, baseType: !260, size: 32, offset: 1664)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !284, file: !14, line: 1123, baseType: !482, size: 64, offset: 1728)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !284, file: !14, line: 1124, baseType: !745, size: 64, offset: 1792)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !284, file: !14, line: 1125, baseType: !745, size: 64, offset: 1856)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !284, file: !14, line: 1126, baseType: !260, size: 32, offset: 1920)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !284, file: !14, line: 1127, baseType: !260, size: 32, offset: 1952)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !284, file: !14, line: 1128, baseType: !260, size: 32, offset: 1984)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !284, file: !14, line: 1129, baseType: !260, size: 32, offset: 2016)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !284, file: !14, line: 1130, baseType: !758, size: 64, offset: 2048)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !759, line: 58, baseType: !760)
!759 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !61, line: 153, baseType: !418)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !284, file: !14, line: 1131, baseType: !758, size: 64, offset: 2112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !284, file: !14, line: 1132, baseType: !563, size: 64, offset: 2176)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !284, file: !14, line: 1133, baseType: !309, size: 64, offset: 2240)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !284, file: !14, line: 1134, baseType: !309, size: 64, offset: 2304)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !284, file: !14, line: 1135, baseType: !309, size: 64, offset: 2368)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !284, file: !14, line: 1136, baseType: !309, size: 64, offset: 2432)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !284, file: !14, line: 1137, baseType: !309, size: 64, offset: 2496)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !284, file: !14, line: 1138, baseType: !309, size: 64, offset: 2560)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !284, file: !14, line: 1139, baseType: !309, size: 64, offset: 2624)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !284, file: !14, line: 1142, baseType: !771, size: 328, offset: 2688)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 328, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 41)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !284, file: !14, line: 1143, baseType: !260, size: 32, offset: 3040)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !284, file: !14, line: 1144, baseType: !64, size: 64, offset: 3072)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !284, file: !14, line: 1145, baseType: !260, size: 32, offset: 3136)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !284, file: !14, line: 1146, baseType: !260, size: 32, offset: 3168)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !284, file: !14, line: 1147, baseType: !779, size: 320, offset: 3200)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !781)
!781 = !{!782, !791, !792, !793, !794, !795}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !780, file: !14, line: 957, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !786)
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !785, file: !14, line: 950, baseType: !568, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !785, file: !14, line: 951, baseType: !260, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !785, file: !14, line: 952, baseType: !260, size: 32, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !785, file: !14, line: 953, baseType: !574, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !780, file: !14, line: 958, baseType: !260, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !780, file: !14, line: 959, baseType: !260, size: 32, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !780, file: !14, line: 962, baseType: !260, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !780, file: !14, line: 965, baseType: !131, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !780, file: !14, line: 966, baseType: !260, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !284, file: !14, line: 1148, baseType: !260, size: 32, offset: 3520)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !284, file: !14, line: 1149, baseType: !798, size: 704, offset: 3584)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !800)
!800 = !{!801, !802, !804, !805, !806, !811, !812, !813, !814, !815, !816, !817}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !14, line: 973, baseType: !418, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !799, file: !14, line: 974, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !309)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !799, file: !14, line: 978, baseType: !443, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !799, file: !14, line: 980, baseType: !553, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !799, file: !14, line: 985, baseType: !807, size: 64, offset: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !807, file: !14, line: 983, baseType: !260, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !807, file: !14, line: 984, baseType: !260, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !799, file: !14, line: 990, baseType: !131, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !799, file: !14, line: 991, baseType: !553, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !799, file: !14, line: 992, baseType: !553, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !799, file: !14, line: 993, baseType: !260, size: 32, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !799, file: !14, line: 996, baseType: !260, size: 32, offset: 544)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !799, file: !14, line: 997, baseType: !309, size: 64, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !799, file: !14, line: 1000, baseType: !63, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !284, file: !14, line: 1150, baseType: !309, size: 64, offset: 4288)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !284, file: !14, line: 1151, baseType: !520, size: 64, offset: 4352)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !284, file: !14, line: 1152, baseType: !443, size: 64, offset: 4416)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !284, file: !14, line: 1153, baseType: !520, size: 64, offset: 4480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !284, file: !14, line: 1154, baseType: !443, size: 64, offset: 4544)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !284, file: !14, line: 1155, baseType: !563, size: 64, offset: 4608)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !284, file: !14, line: 1156, baseType: !563, size: 64, offset: 4672)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !284, file: !14, line: 1157, baseType: !526, size: 64, offset: 4736)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !284, file: !14, line: 1158, baseType: !526, size: 64, offset: 4800)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !284, file: !14, line: 1159, baseType: !526, size: 64, offset: 4864)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !284, file: !14, line: 1160, baseType: !829, size: 64, offset: 4928)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !58, !63}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !284, file: !14, line: 1163, baseType: !63, size: 64, offset: 4992)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !284, file: !14, line: 1166, baseType: !63, size: 64, offset: 5056)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !284, file: !14, line: 1173, baseType: !58, size: 64, offset: 5120)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !284, file: !14, line: 1174, baseType: !837, size: 64, offset: 5184)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !839, line: 137, baseType: !840)
!839 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !839, line: 133, size: 192, elements: !841)
!841 = !{!842, !853, !854}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !840, file: !839, line: 134, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !839, line: 131, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !839, line: 98, size: 32, elements: !846)
!846 = !{!847, !848, !849, !850, !851}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !845, file: !839, line: 99, baseType: !94, size: 1, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !845, file: !839, line: 100, baseType: !94, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !845, file: !839, line: 101, baseType: !94, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !845, file: !839, line: 102, baseType: !94, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !845, file: !839, line: 130, baseType: !852, offset: 32)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !78)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !840, file: !839, line: 135, baseType: !58, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !840, file: !839, line: 136, baseType: !58, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !284, file: !14, line: 1182, baseType: !131, size: 64, offset: 5248)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !284, file: !14, line: 1183, baseType: !260, size: 32, offset: 5312)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !284, file: !14, line: 1185, baseType: !526, size: 64, offset: 5376)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !284, file: !14, line: 1186, baseType: !859, size: 64, offset: 5440)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !861, file: !14, line: 1085, baseType: !520, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !861, file: !14, line: 1086, baseType: !131, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !284, file: !14, line: 1188, baseType: !526, size: 64, offset: 5504)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !284, file: !14, line: 1190, baseType: !131, size: 64, offset: 5568)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !284, file: !14, line: 1194, baseType: !131, size: 64, offset: 5632)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !284, file: !14, line: 1195, baseType: !803, size: 64, offset: 5696)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !284, file: !14, line: 1196, baseType: !260, size: 32, offset: 5760)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !284, file: !14, line: 1197, baseType: !131, size: 64, offset: 5824)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !284, file: !14, line: 1198, baseType: !64, size: 64, offset: 5888)
!872 = !DILocalVariable(name: "c", arg: 1, scope: !279, file: !1, line: 100, type: !282)
!873 = !DILocation(line: 100, column: 35, scope: !279)
!874 = !DILocalVariable(name: "argv", arg: 2, scope: !279, file: !1, line: 100, type: !568)
!875 = !DILocation(line: 100, column: 45, scope: !279)
!876 = !DILocalVariable(name: "xy", arg: 3, scope: !279, file: !1, line: 100, type: !154)
!877 = !DILocation(line: 100, column: 59, scope: !279)
!878 = !DILocalVariable(name: "i", scope: !279, file: !1, line: 101, type: !260)
!879 = !DILocation(line: 101, column: 9, scope: !279)
!880 = !DILocation(line: 102, column: 12, scope: !881)
!881 = distinct !DILexicalBlock(scope: !279, file: !1, line: 102, column: 5)
!882 = !DILocation(line: 102, column: 10, scope: !881)
!883 = !DILocation(line: 102, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !881, file: !1, line: 102, column: 5)
!885 = !DILocation(line: 102, column: 19, scope: !884)
!886 = !DILocation(line: 102, column: 5, scope: !881)
!887 = !DILocation(line: 103, column: 40, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 103, column: 13)
!889 = distinct !DILexicalBlock(scope: !884, file: !1, line: 102, column: 29)
!890 = !DILocation(line: 103, column: 43, scope: !888)
!891 = !DILocation(line: 103, column: 48, scope: !888)
!892 = !DILocation(line: 103, column: 52, scope: !888)
!893 = !DILocation(line: 103, column: 57, scope: !888)
!894 = !DILocation(line: 103, column: 55, scope: !888)
!895 = !DILocation(line: 103, column: 13, scope: !888)
!896 = !DILocation(line: 103, column: 66, scope: !888)
!897 = !DILocation(line: 103, column: 13, scope: !889)
!898 = !DILocation(line: 105, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !888, file: !1, line: 104, column: 19)
!900 = !DILocation(line: 107, column: 5, scope: !889)
!901 = !DILocation(line: 102, column: 25, scope: !884)
!902 = !DILocation(line: 102, column: 5, scope: !884)
!903 = distinct !{!903, !886, !904, !250}
!904 = !DILocation(line: 107, column: 5, scope: !881)
!905 = !DILocation(line: 108, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !279, file: !1, line: 108, column: 9)
!907 = !DILocation(line: 108, column: 15, scope: !906)
!908 = !DILocation(line: 108, column: 30, scope: !906)
!909 = !DILocation(line: 108, column: 33, scope: !906)
!910 = !DILocation(line: 108, column: 39, scope: !906)
!911 = !DILocation(line: 108, column: 54, scope: !906)
!912 = !DILocation(line: 109, column: 9, scope: !906)
!913 = !DILocation(line: 109, column: 15, scope: !906)
!914 = !DILocation(line: 109, column: 30, scope: !906)
!915 = !DILocation(line: 109, column: 33, scope: !906)
!916 = !DILocation(line: 109, column: 39, scope: !906)
!917 = !DILocation(line: 108, column: 9, scope: !279)
!918 = !DILocation(line: 110, column: 29, scope: !919)
!919 = distinct !DILexicalBlock(scope: !906, file: !1, line: 109, column: 54)
!920 = !DILocation(line: 111, column: 62, scope: !919)
!921 = !DILocation(line: 111, column: 68, scope: !919)
!922 = !DILocation(line: 110, column: 9, scope: !919)
!923 = !DILocation(line: 112, column: 9, scope: !919)
!924 = !DILocation(line: 114, column: 5, scope: !279)
!925 = !DILocation(line: 115, column: 1, scope: !279)
!926 = distinct !DISubprogram(name: "longLatFromMember", scope: !1, file: !1, line: 120, type: !927, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!927 = !DISubroutineType(types: !928)
!928 = !{!260, !553, !553, !154}
!929 = !DILocalVariable(name: "zobj", arg: 1, scope: !926, file: !1, line: 120, type: !553)
!930 = !DILocation(line: 120, column: 29, scope: !926)
!931 = !DILocalVariable(name: "member", arg: 2, scope: !926, file: !1, line: 120, type: !553)
!932 = !DILocation(line: 120, column: 41, scope: !926)
!933 = !DILocalVariable(name: "xy", arg: 3, scope: !926, file: !1, line: 120, type: !154)
!934 = !DILocation(line: 120, column: 57, scope: !926)
!935 = !DILocalVariable(name: "score", scope: !926, file: !1, line: 121, type: !125)
!936 = !DILocation(line: 121, column: 12, scope: !926)
!937 = !DILocation(line: 123, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !926, file: !1, line: 123, column: 9)
!939 = !DILocation(line: 123, column: 25, scope: !938)
!940 = !DILocation(line: 123, column: 33, scope: !938)
!941 = !DILocation(line: 123, column: 9, scope: !938)
!942 = !DILocation(line: 123, column: 46, scope: !938)
!943 = !DILocation(line: 123, column: 9, scope: !926)
!944 = !DILocation(line: 123, column: 56, scope: !938)
!945 = !DILocation(line: 124, column: 24, scope: !946)
!946 = distinct !DILexicalBlock(scope: !926, file: !1, line: 124, column: 9)
!947 = !DILocation(line: 124, column: 31, scope: !946)
!948 = !DILocation(line: 124, column: 10, scope: !946)
!949 = !DILocation(line: 124, column: 9, scope: !926)
!950 = !DILocation(line: 124, column: 36, scope: !946)
!951 = !DILocation(line: 125, column: 5, scope: !926)
!952 = !DILocation(line: 126, column: 1, scope: !926)
!953 = distinct !DISubprogram(name: "extractUnitOrReply", scope: !1, file: !1, line: 134, type: !954, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!954 = !DISubroutineType(types: !955)
!955 = !{!125, !282, !553}
!956 = !DILocalVariable(name: "c", arg: 1, scope: !953, file: !1, line: 134, type: !282)
!957 = !DILocation(line: 134, column: 35, scope: !953)
!958 = !DILocalVariable(name: "unit", arg: 2, scope: !953, file: !1, line: 134, type: !553)
!959 = !DILocation(line: 134, column: 44, scope: !953)
!960 = !DILocalVariable(name: "u", scope: !953, file: !1, line: 135, type: !64)
!961 = !DILocation(line: 135, column: 11, scope: !953)
!962 = !DILocation(line: 135, column: 15, scope: !953)
!963 = !DILocation(line: 135, column: 21, scope: !953)
!964 = !DILocation(line: 137, column: 21, scope: !965)
!965 = distinct !DILexicalBlock(scope: !953, file: !1, line: 137, column: 9)
!966 = !DILocation(line: 137, column: 10, scope: !965)
!967 = !DILocation(line: 137, column: 9, scope: !953)
!968 = !DILocation(line: 138, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !1, line: 137, column: 30)
!970 = !DILocation(line: 139, column: 28, scope: !971)
!971 = distinct !DILexicalBlock(scope: !965, file: !1, line: 139, column: 16)
!972 = !DILocation(line: 139, column: 17, scope: !971)
!973 = !DILocation(line: 139, column: 16, scope: !965)
!974 = !DILocation(line: 140, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !1, line: 139, column: 38)
!976 = !DILocation(line: 141, column: 28, scope: !977)
!977 = distinct !DILexicalBlock(scope: !971, file: !1, line: 141, column: 16)
!978 = !DILocation(line: 141, column: 17, scope: !977)
!979 = !DILocation(line: 141, column: 16, scope: !971)
!980 = !DILocation(line: 142, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !1, line: 141, column: 38)
!982 = !DILocation(line: 143, column: 28, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !1, line: 143, column: 16)
!984 = !DILocation(line: 143, column: 17, scope: !983)
!985 = !DILocation(line: 143, column: 16, scope: !977)
!986 = !DILocation(line: 144, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !1, line: 143, column: 38)
!988 = !DILocation(line: 146, column: 23, scope: !989)
!989 = distinct !DILexicalBlock(scope: !983, file: !1, line: 145, column: 12)
!990 = !DILocation(line: 146, column: 9, scope: !989)
!991 = !DILocation(line: 148, column: 9, scope: !989)
!992 = !DILocation(line: 150, column: 1, scope: !953)
!993 = distinct !DISubprogram(name: "extractDistanceOrReply", scope: !1, file: !1, line: 156, type: !994, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!994 = !DISubroutineType(types: !995)
!995 = !{!260, !282, !568, !154, !154}
!996 = !DILocalVariable(name: "c", arg: 1, scope: !993, file: !1, line: 156, type: !282)
!997 = !DILocation(line: 156, column: 36, scope: !993)
!998 = !DILocalVariable(name: "argv", arg: 2, scope: !993, file: !1, line: 156, type: !568)
!999 = !DILocation(line: 156, column: 46, scope: !993)
!1000 = !DILocalVariable(name: "conversion", arg: 3, scope: !993, file: !1, line: 157, type: !154)
!1001 = !DILocation(line: 157, column: 39, scope: !993)
!1002 = !DILocalVariable(name: "radius", arg: 4, scope: !993, file: !1, line: 157, type: !154)
!1003 = !DILocation(line: 157, column: 59, scope: !993)
!1004 = !DILocalVariable(name: "distance", scope: !993, file: !1, line: 158, type: !125)
!1005 = !DILocation(line: 158, column: 12, scope: !993)
!1006 = !DILocation(line: 159, column: 36, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !993, file: !1, line: 159, column: 9)
!1008 = !DILocation(line: 159, column: 39, scope: !1007)
!1009 = !DILocation(line: 159, column: 9, scope: !1007)
!1010 = !DILocation(line: 160, column: 59, scope: !1007)
!1011 = !DILocation(line: 159, column: 9, scope: !993)
!1012 = !DILocation(line: 161, column: 9, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 160, column: 68)
!1014 = !DILocation(line: 164, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !993, file: !1, line: 164, column: 9)
!1016 = !DILocation(line: 164, column: 18, scope: !1015)
!1017 = !DILocation(line: 164, column: 9, scope: !993)
!1018 = !DILocation(line: 165, column: 23, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 164, column: 23)
!1020 = !DILocation(line: 165, column: 9, scope: !1019)
!1021 = !DILocation(line: 166, column: 9, scope: !1019)
!1022 = !DILocation(line: 168, column: 9, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !993, file: !1, line: 168, column: 9)
!1024 = !DILocation(line: 168, column: 9, scope: !993)
!1025 = !DILocation(line: 168, column: 27, scope: !1023)
!1026 = !DILocation(line: 168, column: 18, scope: !1023)
!1027 = !DILocation(line: 168, column: 25, scope: !1023)
!1028 = !DILocation(line: 168, column: 17, scope: !1023)
!1029 = !DILocalVariable(name: "to_meters", scope: !993, file: !1, line: 170, type: !125)
!1030 = !DILocation(line: 170, column: 12, scope: !993)
!1031 = !DILocation(line: 170, column: 43, scope: !993)
!1032 = !DILocation(line: 170, column: 45, scope: !993)
!1033 = !DILocation(line: 170, column: 24, scope: !993)
!1034 = !DILocation(line: 171, column: 9, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !993, file: !1, line: 171, column: 9)
!1036 = !DILocation(line: 171, column: 19, scope: !1035)
!1037 = !DILocation(line: 171, column: 9, scope: !993)
!1038 = !DILocation(line: 172, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 171, column: 24)
!1040 = !DILocation(line: 175, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !993, file: !1, line: 175, column: 9)
!1042 = !DILocation(line: 175, column: 9, scope: !993)
!1043 = !DILocation(line: 175, column: 35, scope: !1041)
!1044 = !DILocation(line: 175, column: 22, scope: !1041)
!1045 = !DILocation(line: 175, column: 33, scope: !1041)
!1046 = !DILocation(line: 175, column: 21, scope: !1041)
!1047 = !DILocation(line: 176, column: 5, scope: !993)
!1048 = !DILocation(line: 177, column: 1, scope: !993)
!1049 = distinct !DISubprogram(name: "extractBoxOrReply", scope: !1, file: !1, line: 183, type: !1050, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!260, !282, !568, !154, !154, !154}
!1052 = !DILocalVariable(name: "c", arg: 1, scope: !1049, file: !1, line: 183, type: !282)
!1053 = !DILocation(line: 183, column: 31, scope: !1049)
!1054 = !DILocalVariable(name: "argv", arg: 2, scope: !1049, file: !1, line: 183, type: !568)
!1055 = !DILocation(line: 183, column: 41, scope: !1049)
!1056 = !DILocalVariable(name: "conversion", arg: 3, scope: !1049, file: !1, line: 183, type: !154)
!1057 = !DILocation(line: 183, column: 55, scope: !1049)
!1058 = !DILocalVariable(name: "width", arg: 4, scope: !1049, file: !1, line: 184, type: !154)
!1059 = !DILocation(line: 184, column: 34, scope: !1049)
!1060 = !DILocalVariable(name: "height", arg: 5, scope: !1049, file: !1, line: 184, type: !154)
!1061 = !DILocation(line: 184, column: 49, scope: !1049)
!1062 = !DILocalVariable(name: "h", scope: !1049, file: !1, line: 185, type: !125)
!1063 = !DILocation(line: 185, column: 12, scope: !1049)
!1064 = !DILocalVariable(name: "w", scope: !1049, file: !1, line: 185, type: !125)
!1065 = !DILocation(line: 185, column: 15, scope: !1049)
!1066 = !DILocation(line: 186, column: 37, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 186, column: 9)
!1068 = !DILocation(line: 186, column: 40, scope: !1067)
!1069 = !DILocation(line: 186, column: 10, scope: !1067)
!1070 = !DILocation(line: 186, column: 75, scope: !1067)
!1071 = !DILocation(line: 186, column: 84, scope: !1067)
!1072 = !DILocation(line: 187, column: 37, scope: !1067)
!1073 = !DILocation(line: 187, column: 40, scope: !1067)
!1074 = !DILocation(line: 187, column: 10, scope: !1067)
!1075 = !DILocation(line: 187, column: 76, scope: !1067)
!1076 = !DILocation(line: 186, column: 9, scope: !1049)
!1077 = !DILocation(line: 188, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 187, column: 86)
!1079 = !DILocation(line: 191, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 191, column: 9)
!1081 = !DILocation(line: 191, column: 11, scope: !1080)
!1082 = !DILocation(line: 191, column: 15, scope: !1080)
!1083 = !DILocation(line: 191, column: 18, scope: !1080)
!1084 = !DILocation(line: 191, column: 20, scope: !1080)
!1085 = !DILocation(line: 191, column: 9, scope: !1049)
!1086 = !DILocation(line: 192, column: 23, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1080, file: !1, line: 191, column: 25)
!1088 = !DILocation(line: 192, column: 9, scope: !1087)
!1089 = !DILocation(line: 193, column: 9, scope: !1087)
!1090 = !DILocation(line: 195, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 195, column: 9)
!1092 = !DILocation(line: 195, column: 9, scope: !1049)
!1093 = !DILocation(line: 195, column: 27, scope: !1091)
!1094 = !DILocation(line: 195, column: 18, scope: !1091)
!1095 = !DILocation(line: 195, column: 25, scope: !1091)
!1096 = !DILocation(line: 195, column: 17, scope: !1091)
!1097 = !DILocation(line: 196, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 196, column: 9)
!1099 = !DILocation(line: 196, column: 9, scope: !1049)
!1100 = !DILocation(line: 196, column: 25, scope: !1098)
!1101 = !DILocation(line: 196, column: 17, scope: !1098)
!1102 = !DILocation(line: 196, column: 23, scope: !1098)
!1103 = !DILocation(line: 196, column: 16, scope: !1098)
!1104 = !DILocalVariable(name: "to_meters", scope: !1049, file: !1, line: 198, type: !125)
!1105 = !DILocation(line: 198, column: 12, scope: !1049)
!1106 = !DILocation(line: 198, column: 43, scope: !1049)
!1107 = !DILocation(line: 198, column: 45, scope: !1049)
!1108 = !DILocation(line: 198, column: 24, scope: !1049)
!1109 = !DILocation(line: 199, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 199, column: 9)
!1111 = !DILocation(line: 199, column: 19, scope: !1110)
!1112 = !DILocation(line: 199, column: 9, scope: !1049)
!1113 = !DILocation(line: 200, column: 9, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !1, line: 199, column: 24)
!1115 = !DILocation(line: 203, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 203, column: 9)
!1117 = !DILocation(line: 203, column: 9, scope: !1049)
!1118 = !DILocation(line: 203, column: 35, scope: !1116)
!1119 = !DILocation(line: 203, column: 22, scope: !1116)
!1120 = !DILocation(line: 203, column: 33, scope: !1116)
!1121 = !DILocation(line: 203, column: 21, scope: !1116)
!1122 = !DILocation(line: 204, column: 5, scope: !1049)
!1123 = !DILocation(line: 205, column: 1, scope: !1049)
!1124 = distinct !DISubprogram(name: "addReplyDoubleDistance", scope: !1, file: !1, line: 212, type: !1125, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !282, !125}
!1127 = !DILocalVariable(name: "c", arg: 1, scope: !1124, file: !1, line: 212, type: !282)
!1128 = !DILocation(line: 212, column: 37, scope: !1124)
!1129 = !DILocalVariable(name: "d", arg: 2, scope: !1124, file: !1, line: 212, type: !125)
!1130 = !DILocation(line: 212, column: 47, scope: !1124)
!1131 = !DILocalVariable(name: "dbuf", scope: !1124, file: !1, line: 213, type: !1132)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1024, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 128)
!1135 = !DILocation(line: 213, column: 10, scope: !1124)
!1136 = !DILocalVariable(name: "dlen", scope: !1124, file: !1, line: 214, type: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1138 = !DILocation(line: 214, column: 15, scope: !1124)
!1139 = !DILocation(line: 214, column: 42, scope: !1124)
!1140 = !DILocation(line: 214, column: 62, scope: !1124)
!1141 = !DILocation(line: 214, column: 22, scope: !1124)
!1142 = !DILocation(line: 215, column: 25, scope: !1124)
!1143 = !DILocation(line: 215, column: 28, scope: !1124)
!1144 = !DILocation(line: 215, column: 34, scope: !1124)
!1145 = !DILocation(line: 215, column: 5, scope: !1124)
!1146 = !DILocation(line: 216, column: 1, scope: !1124)
!1147 = distinct !DISubprogram(name: "geoWithinShape", scope: !1, file: !1, line: 232, type: !1148, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!260, !1150, !125, !154, !154}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoShape", file: !267, line: 109, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 94, size: 640, elements: !1153)
!1153 = !{!1154, !1155, !1157, !1158, !1160}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1152, file: !267, line: 95, baseType: !260, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "xy", scope: !1152, file: !267, line: 96, baseType: !1156, size: 128, offset: 64)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, elements: !501)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "conversion", scope: !1152, file: !267, line: 97, baseType: !125, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1152, file: !267, line: 98, baseType: !1159, size: 256, offset: 256)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !641)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !1152, file: !267, line: 108, baseType: !1161, size: 128, offset: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !267, line: 100, size: 128, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !1161, file: !267, line: 102, baseType: !125, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !1161, file: !267, line: 107, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !267, line: 104, size: 128, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1165, file: !267, line: 105, baseType: !125, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1165, file: !267, line: 106, baseType: !125, size: 64, offset: 64)
!1169 = !DILocalVariable(name: "shape", arg: 1, scope: !1147, file: !1, line: 232, type: !1150)
!1170 = !DILocation(line: 232, column: 30, scope: !1147)
!1171 = !DILocalVariable(name: "score", arg: 2, scope: !1147, file: !1, line: 232, type: !125)
!1172 = !DILocation(line: 232, column: 44, scope: !1147)
!1173 = !DILocalVariable(name: "xy", arg: 3, scope: !1147, file: !1, line: 232, type: !154)
!1174 = !DILocation(line: 232, column: 59, scope: !1147)
!1175 = !DILocalVariable(name: "distance", arg: 4, scope: !1147, file: !1, line: 232, type: !154)
!1176 = !DILocation(line: 232, column: 71, scope: !1147)
!1177 = !DILocation(line: 233, column: 24, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 233, column: 9)
!1179 = !DILocation(line: 233, column: 30, scope: !1178)
!1180 = !DILocation(line: 233, column: 10, scope: !1178)
!1181 = !DILocation(line: 233, column: 9, scope: !1147)
!1182 = !DILocation(line: 233, column: 35, scope: !1178)
!1183 = !DILocation(line: 236, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 236, column: 9)
!1185 = !DILocation(line: 236, column: 16, scope: !1184)
!1186 = !DILocation(line: 236, column: 21, scope: !1184)
!1187 = !DILocation(line: 236, column: 9, scope: !1147)
!1188 = !DILocation(line: 237, column: 48, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 237, column: 13)
!1190 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 236, column: 39)
!1191 = !DILocation(line: 237, column: 55, scope: !1189)
!1192 = !DILocation(line: 237, column: 62, scope: !1189)
!1193 = !DILocation(line: 237, column: 69, scope: !1189)
!1194 = !DILocation(line: 237, column: 76, scope: !1189)
!1195 = !DILocation(line: 237, column: 83, scope: !1189)
!1196 = !DILocation(line: 238, column: 48, scope: !1189)
!1197 = !DILocation(line: 238, column: 55, scope: !1189)
!1198 = !DILocation(line: 238, column: 57, scope: !1189)
!1199 = !DILocation(line: 238, column: 64, scope: !1189)
!1200 = !DILocation(line: 238, column: 71, scope: !1189)
!1201 = !DILocation(line: 238, column: 63, scope: !1189)
!1202 = !DILocation(line: 238, column: 83, scope: !1189)
!1203 = !DILocation(line: 237, column: 14, scope: !1189)
!1204 = !DILocation(line: 237, column: 13, scope: !1190)
!1205 = !DILocation(line: 239, column: 13, scope: !1189)
!1206 = !DILocation(line: 240, column: 5, scope: !1190)
!1207 = !DILocation(line: 240, column: 16, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 240, column: 16)
!1209 = !DILocation(line: 240, column: 23, scope: !1208)
!1210 = !DILocation(line: 240, column: 28, scope: !1208)
!1211 = !DILocation(line: 240, column: 16, scope: !1184)
!1212 = !DILocation(line: 241, column: 46, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 241, column: 13)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 240, column: 47)
!1215 = !DILocation(line: 241, column: 53, scope: !1213)
!1216 = !DILocation(line: 241, column: 55, scope: !1213)
!1217 = !DILocation(line: 241, column: 57, scope: !1213)
!1218 = !DILocation(line: 241, column: 65, scope: !1213)
!1219 = !DILocation(line: 241, column: 72, scope: !1213)
!1220 = !DILocation(line: 241, column: 63, scope: !1213)
!1221 = !DILocation(line: 242, column: 46, scope: !1213)
!1222 = !DILocation(line: 242, column: 53, scope: !1213)
!1223 = !DILocation(line: 242, column: 55, scope: !1213)
!1224 = !DILocation(line: 242, column: 57, scope: !1213)
!1225 = !DILocation(line: 242, column: 66, scope: !1213)
!1226 = !DILocation(line: 242, column: 73, scope: !1213)
!1227 = !DILocation(line: 242, column: 64, scope: !1213)
!1228 = !DILocation(line: 243, column: 46, scope: !1213)
!1229 = !DILocation(line: 243, column: 53, scope: !1213)
!1230 = !DILocation(line: 243, column: 60, scope: !1213)
!1231 = !DILocation(line: 243, column: 67, scope: !1213)
!1232 = !DILocation(line: 243, column: 74, scope: !1213)
!1233 = !DILocation(line: 243, column: 81, scope: !1213)
!1234 = !DILocation(line: 243, column: 88, scope: !1213)
!1235 = !DILocation(line: 241, column: 14, scope: !1213)
!1236 = !DILocation(line: 241, column: 13, scope: !1214)
!1237 = !DILocation(line: 244, column: 13, scope: !1213)
!1238 = !DILocation(line: 245, column: 5, scope: !1214)
!1239 = !DILocation(line: 246, column: 5, scope: !1147)
!1240 = !DILocation(line: 247, column: 1, scope: !1147)
!1241 = distinct !DISubprogram(name: "geoGetPointsInRange", scope: !1, file: !1, line: 261, type: !1242, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!260, !553, !125, !125, !1150, !115, !62}
!1244 = !DILocalVariable(name: "zobj", arg: 1, scope: !1241, file: !1, line: 261, type: !553)
!1245 = !DILocation(line: 261, column: 31, scope: !1241)
!1246 = !DILocalVariable(name: "min", arg: 2, scope: !1241, file: !1, line: 261, type: !125)
!1247 = !DILocation(line: 261, column: 44, scope: !1241)
!1248 = !DILocalVariable(name: "max", arg: 3, scope: !1241, file: !1, line: 261, type: !125)
!1249 = !DILocation(line: 261, column: 56, scope: !1241)
!1250 = !DILocalVariable(name: "shape", arg: 4, scope: !1241, file: !1, line: 261, type: !1150)
!1251 = !DILocation(line: 261, column: 71, scope: !1241)
!1252 = !DILocalVariable(name: "ga", arg: 5, scope: !1241, file: !1, line: 261, type: !115)
!1253 = !DILocation(line: 261, column: 88, scope: !1241)
!1254 = !DILocalVariable(name: "limit", arg: 6, scope: !1241, file: !1, line: 261, type: !62)
!1255 = !DILocation(line: 261, column: 106, scope: !1241)
!1256 = !DILocalVariable(name: "range", scope: !1241, file: !1, line: 264, type: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "zrangespec", file: !14, line: 2843, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2840, size: 192, elements: !1259)
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1258, file: !14, line: 2841, baseType: !125, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1258, file: !14, line: 2841, baseType: !125, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "minex", scope: !1258, file: !14, line: 2842, baseType: !260, size: 32, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "maxex", scope: !1258, file: !14, line: 2842, baseType: !260, size: 32, offset: 160)
!1264 = !DILocation(line: 264, column: 16, scope: !1241)
!1265 = !DILocation(line: 264, column: 24, scope: !1241)
!1266 = !DILocation(line: 264, column: 33, scope: !1241)
!1267 = !DILocation(line: 264, column: 45, scope: !1241)
!1268 = !DILocalVariable(name: "origincount", scope: !1241, file: !1, line: 265, type: !131)
!1269 = !DILocation(line: 265, column: 12, scope: !1241)
!1270 = !DILocation(line: 265, column: 26, scope: !1241)
!1271 = !DILocation(line: 265, column: 30, scope: !1241)
!1272 = !DILocation(line: 266, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 266, column: 9)
!1274 = !DILocation(line: 266, column: 15, scope: !1273)
!1275 = !DILocation(line: 266, column: 24, scope: !1273)
!1276 = !DILocation(line: 266, column: 9, scope: !1241)
!1277 = !DILocalVariable(name: "zl", scope: !1278, file: !1, line: 267, type: !1279)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 266, column: 50)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1280 = !DILocation(line: 267, column: 24, scope: !1278)
!1281 = !DILocation(line: 267, column: 29, scope: !1278)
!1282 = !DILocation(line: 267, column: 35, scope: !1278)
!1283 = !DILocalVariable(name: "eptr", scope: !1278, file: !1, line: 268, type: !1279)
!1284 = !DILocation(line: 268, column: 24, scope: !1278)
!1285 = !DILocalVariable(name: "sptr", scope: !1278, file: !1, line: 268, type: !1279)
!1286 = !DILocation(line: 268, column: 31, scope: !1278)
!1287 = !DILocalVariable(name: "vstr", scope: !1278, file: !1, line: 269, type: !1279)
!1288 = !DILocation(line: 269, column: 24, scope: !1278)
!1289 = !DILocalVariable(name: "vlen", scope: !1278, file: !1, line: 270, type: !5)
!1290 = !DILocation(line: 270, column: 22, scope: !1278)
!1291 = !DILocalVariable(name: "vlong", scope: !1278, file: !1, line: 271, type: !309)
!1292 = !DILocation(line: 271, column: 19, scope: !1278)
!1293 = !DILocalVariable(name: "score", scope: !1278, file: !1, line: 272, type: !125)
!1294 = !DILocation(line: 272, column: 16, scope: !1278)
!1295 = !DILocation(line: 274, column: 37, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 274, column: 13)
!1297 = !DILocation(line: 274, column: 21, scope: !1296)
!1298 = !DILocation(line: 274, column: 19, scope: !1296)
!1299 = !DILocation(line: 274, column: 50, scope: !1296)
!1300 = !DILocation(line: 274, column: 13, scope: !1278)
!1301 = !DILocation(line: 276, column: 13, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 274, column: 59)
!1303 = !DILocation(line: 279, column: 23, scope: !1278)
!1304 = !DILocation(line: 279, column: 27, scope: !1278)
!1305 = !DILocation(line: 279, column: 16, scope: !1278)
!1306 = !DILocation(line: 279, column: 14, scope: !1278)
!1307 = !DILocation(line: 280, column: 9, scope: !1278)
!1308 = !DILocation(line: 280, column: 16, scope: !1278)
!1309 = !DILocalVariable(name: "xy", scope: !1310, file: !1, line: 281, type: !1156)
!1310 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 280, column: 22)
!1311 = !DILocation(line: 281, column: 20, scope: !1310)
!1312 = !DILocalVariable(name: "distance", scope: !1310, file: !1, line: 282, type: !125)
!1313 = !DILocation(line: 282, column: 20, scope: !1310)
!1314 = !DILocation(line: 283, column: 33, scope: !1310)
!1315 = !DILocation(line: 283, column: 21, scope: !1310)
!1316 = !DILocation(line: 283, column: 19, scope: !1310)
!1317 = !DILocation(line: 286, column: 33, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 286, column: 17)
!1319 = !DILocation(line: 286, column: 18, scope: !1318)
!1320 = !DILocation(line: 286, column: 17, scope: !1310)
!1321 = !DILocation(line: 287, column: 17, scope: !1318)
!1322 = !DILocation(line: 289, column: 31, scope: !1310)
!1323 = !DILocation(line: 289, column: 20, scope: !1310)
!1324 = !DILocation(line: 289, column: 18, scope: !1310)
!1325 = !DILocation(line: 290, column: 32, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 290, column: 17)
!1327 = !DILocation(line: 290, column: 39, scope: !1326)
!1328 = !DILocation(line: 290, column: 46, scope: !1326)
!1329 = !DILocation(line: 290, column: 17, scope: !1326)
!1330 = !DILocation(line: 290, column: 61, scope: !1326)
!1331 = !DILocation(line: 290, column: 17, scope: !1310)
!1332 = !DILocalVariable(name: "member", scope: !1333, file: !1, line: 292, type: !64)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 290, column: 70)
!1334 = !DILocation(line: 292, column: 23, scope: !1333)
!1335 = !DILocation(line: 292, column: 33, scope: !1333)
!1336 = !DILocation(line: 292, column: 38, scope: !1333)
!1337 = !DILocation(line: 292, column: 32, scope: !1333)
!1338 = !DILocation(line: 292, column: 65, scope: !1333)
!1339 = !DILocation(line: 292, column: 49, scope: !1333)
!1340 = !DILocation(line: 292, column: 84, scope: !1333)
!1341 = !DILocation(line: 292, column: 90, scope: !1333)
!1342 = !DILocation(line: 292, column: 74, scope: !1333)
!1343 = !DILocation(line: 293, column: 32, scope: !1333)
!1344 = !DILocation(line: 293, column: 36, scope: !1333)
!1345 = !DILocation(line: 293, column: 40, scope: !1333)
!1346 = !DILocation(line: 293, column: 50, scope: !1333)
!1347 = !DILocation(line: 293, column: 57, scope: !1333)
!1348 = !DILocation(line: 293, column: 17, scope: !1333)
!1349 = !DILocation(line: 294, column: 13, scope: !1333)
!1350 = !DILocation(line: 295, column: 17, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 295, column: 17)
!1352 = !DILocation(line: 295, column: 21, scope: !1351)
!1353 = !DILocation(line: 295, column: 26, scope: !1351)
!1354 = !DILocation(line: 295, column: 29, scope: !1351)
!1355 = !DILocation(line: 295, column: 35, scope: !1351)
!1356 = !DILocation(line: 295, column: 38, scope: !1351)
!1357 = !DILocation(line: 295, column: 42, scope: !1351)
!1358 = !DILocation(line: 295, column: 50, scope: !1351)
!1359 = !DILocation(line: 295, column: 47, scope: !1351)
!1360 = !DILocation(line: 295, column: 17, scope: !1310)
!1361 = !DILocation(line: 295, column: 57, scope: !1351)
!1362 = !DILocation(line: 296, column: 21, scope: !1310)
!1363 = !DILocation(line: 296, column: 13, scope: !1310)
!1364 = distinct !{!1364, !1307, !1365, !250}
!1365 = !DILocation(line: 297, column: 9, scope: !1278)
!1366 = !DILocation(line: 298, column: 5, scope: !1278)
!1367 = !DILocation(line: 298, column: 16, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 298, column: 16)
!1369 = !DILocation(line: 298, column: 22, scope: !1368)
!1370 = !DILocation(line: 298, column: 31, scope: !1368)
!1371 = !DILocation(line: 298, column: 16, scope: !1273)
!1372 = !DILocalVariable(name: "zs", scope: !1373, file: !1, line: 299, type: !1374)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 298, column: 57)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !14, line: 1270, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !14, line: 1267, size: 128, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !1376, file: !14, line: 1268, baseType: !443, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !1376, file: !14, line: 1269, baseType: !1380, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !14, line: 1265, baseType: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !14, line: 1261, size: 256, elements: !1383)
!1383 = !{!1384, !1397, !1398, !1399}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1382, file: !14, line: 1262, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !14, line: 1251, size: 192, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !1386, file: !14, line: 1252, baseType: !563, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !1386, file: !14, line: 1253, baseType: !125, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !1386, file: !14, line: 1254, baseType: !1385, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1386, file: !14, line: 1258, baseType: !1392, offset: 192)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, elements: !78)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !14, line: 1255, size: 128, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1393, file: !14, line: 1256, baseType: !1385, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !1393, file: !14, line: 1257, baseType: !62, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1382, file: !14, line: 1262, baseType: !1385, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1382, file: !14, line: 1263, baseType: !62, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1382, file: !14, line: 1264, baseType: !260, size: 32, offset: 192)
!1400 = !DILocation(line: 299, column: 15, scope: !1373)
!1401 = !DILocation(line: 299, column: 20, scope: !1373)
!1402 = !DILocation(line: 299, column: 26, scope: !1373)
!1403 = !DILocalVariable(name: "zsl", scope: !1373, file: !1, line: 300, type: !1380)
!1404 = !DILocation(line: 300, column: 20, scope: !1373)
!1405 = !DILocation(line: 300, column: 26, scope: !1373)
!1406 = !DILocation(line: 300, column: 30, scope: !1373)
!1407 = !DILocalVariable(name: "ln", scope: !1373, file: !1, line: 301, type: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplistNode", file: !14, line: 1259, baseType: !1386)
!1410 = !DILocation(line: 301, column: 24, scope: !1373)
!1411 = !DILocation(line: 303, column: 35, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 303, column: 13)
!1413 = !DILocation(line: 303, column: 19, scope: !1412)
!1414 = !DILocation(line: 303, column: 17, scope: !1412)
!1415 = !DILocation(line: 303, column: 49, scope: !1412)
!1416 = !DILocation(line: 303, column: 13, scope: !1373)
!1417 = !DILocation(line: 305, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 303, column: 58)
!1419 = !DILocation(line: 308, column: 9, scope: !1373)
!1420 = !DILocation(line: 308, column: 16, scope: !1373)
!1421 = !DILocalVariable(name: "xy", scope: !1422, file: !1, line: 309, type: !1156)
!1422 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 308, column: 20)
!1423 = !DILocation(line: 309, column: 20, scope: !1422)
!1424 = !DILocalVariable(name: "distance", scope: !1422, file: !1, line: 310, type: !125)
!1425 = !DILocation(line: 310, column: 20, scope: !1422)
!1426 = !DILocation(line: 312, column: 33, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 312, column: 17)
!1428 = !DILocation(line: 312, column: 37, scope: !1427)
!1429 = !DILocation(line: 312, column: 18, scope: !1427)
!1430 = !DILocation(line: 312, column: 17, scope: !1422)
!1431 = !DILocation(line: 313, column: 17, scope: !1427)
!1432 = !DILocation(line: 314, column: 32, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 314, column: 17)
!1434 = !DILocation(line: 314, column: 39, scope: !1433)
!1435 = !DILocation(line: 314, column: 43, scope: !1433)
!1436 = !DILocation(line: 314, column: 50, scope: !1433)
!1437 = !DILocation(line: 314, column: 17, scope: !1433)
!1438 = !DILocation(line: 314, column: 65, scope: !1433)
!1439 = !DILocation(line: 314, column: 17, scope: !1422)
!1440 = !DILocation(line: 316, column: 32, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1433, file: !1, line: 314, column: 74)
!1442 = !DILocation(line: 316, column: 36, scope: !1441)
!1443 = !DILocation(line: 316, column: 40, scope: !1441)
!1444 = !DILocation(line: 316, column: 50, scope: !1441)
!1445 = !DILocation(line: 316, column: 54, scope: !1441)
!1446 = !DILocation(line: 316, column: 68, scope: !1441)
!1447 = !DILocation(line: 316, column: 72, scope: !1441)
!1448 = !DILocation(line: 316, column: 61, scope: !1441)
!1449 = !DILocation(line: 316, column: 17, scope: !1441)
!1450 = !DILocation(line: 317, column: 13, scope: !1441)
!1451 = !DILocation(line: 318, column: 17, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1422, file: !1, line: 318, column: 17)
!1453 = !DILocation(line: 318, column: 21, scope: !1452)
!1454 = !DILocation(line: 318, column: 26, scope: !1452)
!1455 = !DILocation(line: 318, column: 29, scope: !1452)
!1456 = !DILocation(line: 318, column: 35, scope: !1452)
!1457 = !DILocation(line: 318, column: 38, scope: !1452)
!1458 = !DILocation(line: 318, column: 42, scope: !1452)
!1459 = !DILocation(line: 318, column: 50, scope: !1452)
!1460 = !DILocation(line: 318, column: 47, scope: !1452)
!1461 = !DILocation(line: 318, column: 17, scope: !1422)
!1462 = !DILocation(line: 318, column: 57, scope: !1452)
!1463 = !DILocation(line: 319, column: 18, scope: !1422)
!1464 = !DILocation(line: 319, column: 22, scope: !1422)
!1465 = !DILocation(line: 319, column: 31, scope: !1422)
!1466 = !DILocation(line: 319, column: 16, scope: !1422)
!1467 = distinct !{!1467, !1419, !1468, !250}
!1468 = !DILocation(line: 320, column: 9, scope: !1373)
!1469 = !DILocation(line: 321, column: 5, scope: !1373)
!1470 = !DILocation(line: 322, column: 12, scope: !1241)
!1471 = !DILocation(line: 322, column: 16, scope: !1241)
!1472 = !DILocation(line: 322, column: 23, scope: !1241)
!1473 = !DILocation(line: 322, column: 21, scope: !1241)
!1474 = !DILocation(line: 322, column: 5, scope: !1241)
!1475 = !DILocation(line: 323, column: 1, scope: !1241)
!1476 = distinct !DISubprogram(name: "scoresOfGeoHashBox", scope: !1, file: !1, line: 328, type: !1477, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !266, !1479, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !1481, line: 41, baseType: !58)
!1481 = !DIFile(filename: "./geohash_helper.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!1482 = !DILocalVariable(name: "hash", arg: 1, scope: !1476, file: !1, line: 328, type: !266)
!1483 = !DILocation(line: 328, column: 37, scope: !1476)
!1484 = !DILocalVariable(name: "min", arg: 2, scope: !1476, file: !1, line: 328, type: !1479)
!1485 = !DILocation(line: 328, column: 61, scope: !1476)
!1486 = !DILocalVariable(name: "max", arg: 3, scope: !1476, file: !1, line: 328, type: !1479)
!1487 = !DILocation(line: 328, column: 84, scope: !1476)
!1488 = !DILocation(line: 349, column: 12, scope: !1476)
!1489 = !DILocation(line: 349, column: 6, scope: !1476)
!1490 = !DILocation(line: 349, column: 10, scope: !1476)
!1491 = !DILocation(line: 350, column: 10, scope: !1476)
!1492 = !DILocation(line: 350, column: 14, scope: !1476)
!1493 = !DILocation(line: 351, column: 12, scope: !1476)
!1494 = !DILocation(line: 351, column: 6, scope: !1476)
!1495 = !DILocation(line: 351, column: 10, scope: !1476)
!1496 = !DILocation(line: 352, column: 1, scope: !1476)
!1497 = distinct !DISubprogram(name: "membersOfGeoHashBox", scope: !1, file: !1, line: 357, type: !1498, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!260, !553, !266, !115, !1150, !62}
!1500 = !DILocalVariable(name: "zobj", arg: 1, scope: !1497, file: !1, line: 357, type: !553)
!1501 = !DILocation(line: 357, column: 31, scope: !1497)
!1502 = !DILocalVariable(name: "hash", arg: 2, scope: !1497, file: !1, line: 357, type: !266)
!1503 = !DILocation(line: 357, column: 49, scope: !1497)
!1504 = !DILocalVariable(name: "ga", arg: 3, scope: !1497, file: !1, line: 357, type: !115)
!1505 = !DILocation(line: 357, column: 65, scope: !1497)
!1506 = !DILocalVariable(name: "shape", arg: 4, scope: !1497, file: !1, line: 357, type: !1150)
!1507 = !DILocation(line: 357, column: 79, scope: !1497)
!1508 = !DILocalVariable(name: "limit", arg: 5, scope: !1497, file: !1, line: 357, type: !62)
!1509 = !DILocation(line: 357, column: 100, scope: !1497)
!1510 = !DILocalVariable(name: "min", scope: !1497, file: !1, line: 358, type: !1480)
!1511 = !DILocation(line: 358, column: 22, scope: !1497)
!1512 = !DILocalVariable(name: "max", scope: !1497, file: !1, line: 358, type: !1480)
!1513 = !DILocation(line: 358, column: 27, scope: !1497)
!1514 = !DILocation(line: 360, column: 5, scope: !1497)
!1515 = !DILocation(line: 361, column: 32, scope: !1497)
!1516 = !DILocation(line: 361, column: 38, scope: !1497)
!1517 = !DILocation(line: 361, column: 43, scope: !1497)
!1518 = !DILocation(line: 361, column: 48, scope: !1497)
!1519 = !DILocation(line: 361, column: 55, scope: !1497)
!1520 = !DILocation(line: 361, column: 59, scope: !1497)
!1521 = !DILocation(line: 361, column: 12, scope: !1497)
!1522 = !DILocation(line: 361, column: 5, scope: !1497)
!1523 = distinct !DISubprogram(name: "membersOfAllNeighbors", scope: !1, file: !1, line: 365, type: !1524, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!260, !553, !1526, !1150, !115, !62}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !1481, line: 48, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1481, line: 44, size: 1536, elements: !1530)
!1530 = !{!1531, !1532, !1544}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1529, file: !1481, line: 45, baseType: !266, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !1529, file: !1481, line: 46, baseType: !1533, size: 384, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !267, line: 79, baseType: !1534)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 75, size: 384, elements: !1535)
!1535 = !{!1536, !1537, !1543}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1534, file: !267, line: 76, baseType: !266, size: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !1534, file: !267, line: 77, baseType: !1538, size: 128, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !267, line: 73, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 70, size: 128, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !1539, file: !267, line: 71, baseType: !125, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1539, file: !267, line: 72, baseType: !125, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !1534, file: !267, line: 78, baseType: !1538, size: 128, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !1529, file: !1481, line: 47, baseType: !1545, size: 1024, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !267, line: 90, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 81, size: 1024, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !1546, file: !267, line: 82, baseType: !266, size: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !1546, file: !267, line: 83, baseType: !266, size: 128, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !1546, file: !267, line: 84, baseType: !266, size: 128, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !1546, file: !267, line: 85, baseType: !266, size: 128, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !1546, file: !267, line: 86, baseType: !266, size: 128, offset: 512)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !1546, file: !267, line: 87, baseType: !266, size: 128, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !1546, file: !267, line: 88, baseType: !266, size: 128, offset: 768)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !1546, file: !267, line: 89, baseType: !266, size: 128, offset: 896)
!1556 = !DILocalVariable(name: "zobj", arg: 1, scope: !1523, file: !1, line: 365, type: !553)
!1557 = !DILocation(line: 365, column: 33, scope: !1523)
!1558 = !DILocalVariable(name: "n", arg: 2, scope: !1523, file: !1, line: 365, type: !1526)
!1559 = !DILocation(line: 365, column: 60, scope: !1523)
!1560 = !DILocalVariable(name: "shape", arg: 3, scope: !1523, file: !1, line: 365, type: !1150)
!1561 = !DILocation(line: 365, column: 73, scope: !1523)
!1562 = !DILocalVariable(name: "ga", arg: 4, scope: !1523, file: !1, line: 365, type: !115)
!1563 = !DILocation(line: 365, column: 90, scope: !1523)
!1564 = !DILocalVariable(name: "limit", arg: 5, scope: !1523, file: !1, line: 365, type: !62)
!1565 = !DILocation(line: 365, column: 108, scope: !1523)
!1566 = !DILocalVariable(name: "neighbors", scope: !1523, file: !1, line: 366, type: !1567)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 1152, elements: !1568)
!1568 = !{!1569}
!1569 = !DISubrange(count: 9)
!1570 = !DILocation(line: 366, column: 17, scope: !1523)
!1571 = !DILocalVariable(name: "i", scope: !1523, file: !1, line: 367, type: !5)
!1572 = !DILocation(line: 367, column: 18, scope: !1523)
!1573 = !DILocalVariable(name: "count", scope: !1523, file: !1, line: 367, type: !5)
!1574 = !DILocation(line: 367, column: 21, scope: !1523)
!1575 = !DILocalVariable(name: "last_processed", scope: !1523, file: !1, line: 367, type: !5)
!1576 = !DILocation(line: 367, column: 32, scope: !1523)
!1577 = !DILocalVariable(name: "debugmsg", scope: !1523, file: !1, line: 368, type: !260)
!1578 = !DILocation(line: 368, column: 9, scope: !1523)
!1579 = !DILocation(line: 370, column: 5, scope: !1523)
!1580 = !DILocation(line: 370, column: 20, scope: !1523)
!1581 = !DILocation(line: 370, column: 23, scope: !1523)
!1582 = !DILocation(line: 371, column: 5, scope: !1523)
!1583 = !DILocation(line: 371, column: 20, scope: !1523)
!1584 = !DILocation(line: 371, column: 23, scope: !1523)
!1585 = !DILocation(line: 371, column: 33, scope: !1523)
!1586 = !DILocation(line: 372, column: 5, scope: !1523)
!1587 = !DILocation(line: 372, column: 20, scope: !1523)
!1588 = !DILocation(line: 372, column: 23, scope: !1523)
!1589 = !DILocation(line: 372, column: 33, scope: !1523)
!1590 = !DILocation(line: 373, column: 5, scope: !1523)
!1591 = !DILocation(line: 373, column: 20, scope: !1523)
!1592 = !DILocation(line: 373, column: 23, scope: !1523)
!1593 = !DILocation(line: 373, column: 33, scope: !1523)
!1594 = !DILocation(line: 374, column: 5, scope: !1523)
!1595 = !DILocation(line: 374, column: 20, scope: !1523)
!1596 = !DILocation(line: 374, column: 23, scope: !1523)
!1597 = !DILocation(line: 374, column: 33, scope: !1523)
!1598 = !DILocation(line: 375, column: 5, scope: !1523)
!1599 = !DILocation(line: 375, column: 20, scope: !1523)
!1600 = !DILocation(line: 375, column: 23, scope: !1523)
!1601 = !DILocation(line: 375, column: 33, scope: !1523)
!1602 = !DILocation(line: 376, column: 5, scope: !1523)
!1603 = !DILocation(line: 376, column: 20, scope: !1523)
!1604 = !DILocation(line: 376, column: 23, scope: !1523)
!1605 = !DILocation(line: 376, column: 33, scope: !1523)
!1606 = !DILocation(line: 377, column: 5, scope: !1523)
!1607 = !DILocation(line: 377, column: 20, scope: !1523)
!1608 = !DILocation(line: 377, column: 23, scope: !1523)
!1609 = !DILocation(line: 377, column: 33, scope: !1523)
!1610 = !DILocation(line: 378, column: 5, scope: !1523)
!1611 = !DILocation(line: 378, column: 20, scope: !1523)
!1612 = !DILocation(line: 378, column: 23, scope: !1523)
!1613 = !DILocation(line: 378, column: 33, scope: !1523)
!1614 = !DILocation(line: 382, column: 12, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1523, file: !1, line: 382, column: 5)
!1616 = !DILocation(line: 382, column: 10, scope: !1615)
!1617 = !DILocation(line: 382, column: 17, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 382, column: 5)
!1619 = !DILocation(line: 382, column: 19, scope: !1618)
!1620 = !DILocation(line: 382, column: 5, scope: !1615)
!1621 = !DILocation(line: 383, column: 13, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 383, column: 13)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 382, column: 66)
!1624 = !DILocation(line: 383, column: 13, scope: !1623)
!1625 = !DILocation(line: 384, column: 17, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 384, column: 17)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 383, column: 39)
!1628 = !DILocation(line: 384, column: 17, scope: !1627)
!1629 = !DILocation(line: 384, column: 27, scope: !1626)
!1630 = !DILocalVariable(name: "fp", scope: !1631, file: !1, line: 384, type: !1632)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 384, column: 27)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1634, line: 7, baseType: !1635)
!1634 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1636, line: 49, size: 1728, elements: !1637)
!1636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1653, !1655, !1656, !1657, !1659, !1660, !1661, !1665, !1668, !1669, !1672, !1675, !1676, !1677, !1678, !1679}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1635, file: !1636, line: 51, baseType: !260, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1635, file: !1636, line: 54, baseType: !64, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1635, file: !1636, line: 55, baseType: !64, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1635, file: !1636, line: 56, baseType: !64, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1635, file: !1636, line: 57, baseType: !64, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1635, file: !1636, line: 58, baseType: !64, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1635, file: !1636, line: 59, baseType: !64, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1635, file: !1636, line: 60, baseType: !64, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1635, file: !1636, line: 61, baseType: !64, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1635, file: !1636, line: 64, baseType: !64, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1635, file: !1636, line: 65, baseType: !64, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1635, file: !1636, line: 66, baseType: !64, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1635, file: !1636, line: 68, baseType: !1651, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1636, line: 36, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1635, file: !1636, line: 70, baseType: !1654, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1635, file: !1636, line: 72, baseType: !260, size: 32, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1635, file: !1636, line: 73, baseType: !260, size: 32, offset: 928)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1635, file: !1636, line: 74, baseType: !1658, size: 64, offset: 960)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !61, line: 152, baseType: !418)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1635, file: !1636, line: 77, baseType: !86, size: 16, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1635, file: !1636, line: 78, baseType: !511, size: 8, offset: 1040)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1635, file: !1636, line: 79, baseType: !1662, size: 8, offset: 1048)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 8, elements: !1663)
!1663 = !{!1664}
!1664 = !DISubrange(count: 1)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1635, file: !1636, line: 81, baseType: !1666, size: 64, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1636, line: 43, baseType: null)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1635, file: !1636, line: 89, baseType: !760, size: 64, offset: 1152)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1635, file: !1636, line: 91, baseType: !1670, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1636, line: 37, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1635, file: !1636, line: 92, baseType: !1673, size: 64, offset: 1280)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1636, line: 38, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1635, file: !1636, line: 93, baseType: !1654, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1635, file: !1636, line: 94, baseType: !63, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1635, file: !1636, line: 95, baseType: !131, size: 64, offset: 1472)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1635, file: !1636, line: 96, baseType: !260, size: 32, offset: 1536)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1635, file: !1636, line: 98, baseType: !1680, size: 160, offset: 1568)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 160, elements: !1681)
!1681 = !{!1682}
!1682 = !DISubrange(count: 20)
!1683 = !DILocation(line: 384, column: 27, scope: !1631)
!1684 = !DILocation(line: 385, column: 13, scope: !1627)
!1685 = !DILocation(line: 389, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 389, column: 13)
!1687 = !DILocation(line: 389, column: 13, scope: !1623)
!1688 = !DILocalVariable(name: "long_range", scope: !1689, file: !1, line: 390, type: !1538)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !1, line: 389, column: 23)
!1690 = !DILocation(line: 390, column: 26, scope: !1689)
!1691 = !DILocalVariable(name: "lat_range", scope: !1689, file: !1, line: 390, type: !1538)
!1692 = !DILocation(line: 390, column: 38, scope: !1689)
!1693 = !DILocation(line: 391, column: 13, scope: !1689)
!1694 = !DILocalVariable(name: "myarea", scope: !1689, file: !1, line: 392, type: !1533)
!1695 = !DILocation(line: 392, column: 25, scope: !1689)
!1696 = !DILocation(line: 393, column: 60, scope: !1689)
!1697 = !DILocation(line: 393, column: 50, scope: !1689)
!1698 = !DILocation(line: 393, column: 13, scope: !1689)
!1699 = !DILocation(line: 396, column: 13, scope: !1689)
!1700 = !DILocalVariable(name: "fp", scope: !1701, file: !1, line: 396, type: !1632)
!1701 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 396, column: 13)
!1702 = !DILocation(line: 396, column: 13, scope: !1701)
!1703 = !DILocation(line: 397, column: 13, scope: !1689)
!1704 = !DILocalVariable(name: "fp", scope: !1705, file: !1, line: 397, type: !1632)
!1705 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 397, column: 13)
!1706 = !DILocation(line: 397, column: 13, scope: !1705)
!1707 = !DILocation(line: 398, column: 13, scope: !1689)
!1708 = !DILocalVariable(name: "fp", scope: !1709, file: !1, line: 398, type: !1632)
!1709 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 398, column: 13)
!1710 = !DILocation(line: 398, column: 13, scope: !1709)
!1711 = !DILocation(line: 399, column: 13, scope: !1689)
!1712 = !DILocalVariable(name: "fp", scope: !1713, file: !1, line: 399, type: !1632)
!1713 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 399, column: 13)
!1714 = !DILocation(line: 399, column: 13, scope: !1713)
!1715 = !DILocation(line: 400, column: 13, scope: !1689)
!1716 = !DILocalVariable(name: "fp", scope: !1717, file: !1, line: 400, type: !1632)
!1717 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 400, column: 13)
!1718 = !DILocation(line: 400, column: 13, scope: !1717)
!1719 = !DILocation(line: 401, column: 13, scope: !1689)
!1720 = !DILocalVariable(name: "fp", scope: !1721, file: !1, line: 401, type: !1632)
!1721 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 401, column: 13)
!1722 = !DILocation(line: 401, column: 13, scope: !1721)
!1723 = !DILocation(line: 402, column: 9, scope: !1689)
!1724 = !DILocation(line: 408, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 408, column: 13)
!1726 = !DILocation(line: 408, column: 28, scope: !1725)
!1727 = !DILocation(line: 409, column: 23, scope: !1725)
!1728 = !DILocation(line: 409, column: 13, scope: !1725)
!1729 = !DILocation(line: 409, column: 26, scope: !1725)
!1730 = !DILocation(line: 409, column: 44, scope: !1725)
!1731 = !DILocation(line: 409, column: 34, scope: !1725)
!1732 = !DILocation(line: 409, column: 60, scope: !1725)
!1733 = !DILocation(line: 409, column: 31, scope: !1725)
!1734 = !DILocation(line: 409, column: 65, scope: !1725)
!1735 = !DILocation(line: 410, column: 23, scope: !1725)
!1736 = !DILocation(line: 410, column: 13, scope: !1725)
!1737 = !DILocation(line: 410, column: 26, scope: !1725)
!1738 = !DILocation(line: 410, column: 44, scope: !1725)
!1739 = !DILocation(line: 410, column: 34, scope: !1725)
!1740 = !DILocation(line: 410, column: 60, scope: !1725)
!1741 = !DILocation(line: 410, column: 31, scope: !1725)
!1742 = !DILocation(line: 408, column: 13, scope: !1623)
!1743 = !DILocation(line: 412, column: 17, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 412, column: 17)
!1745 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 411, column: 9)
!1746 = !DILocation(line: 412, column: 17, scope: !1745)
!1747 = !DILocation(line: 413, column: 17, scope: !1744)
!1748 = !DILocalVariable(name: "fp", scope: !1749, file: !1, line: 413, type: !1632)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !1, line: 413, column: 17)
!1750 = !DILocation(line: 413, column: 17, scope: !1749)
!1751 = !DILocation(line: 414, column: 13, scope: !1745)
!1752 = !DILocation(line: 416, column: 13, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 416, column: 13)
!1754 = !DILocation(line: 416, column: 17, scope: !1753)
!1755 = !DILocation(line: 416, column: 22, scope: !1753)
!1756 = !DILocation(line: 416, column: 25, scope: !1753)
!1757 = !DILocation(line: 416, column: 31, scope: !1753)
!1758 = !DILocation(line: 416, column: 34, scope: !1753)
!1759 = !DILocation(line: 416, column: 38, scope: !1753)
!1760 = !DILocation(line: 416, column: 46, scope: !1753)
!1761 = !DILocation(line: 416, column: 43, scope: !1753)
!1762 = !DILocation(line: 416, column: 13, scope: !1623)
!1763 = !DILocation(line: 416, column: 53, scope: !1753)
!1764 = !DILocation(line: 417, column: 38, scope: !1623)
!1765 = !DILocation(line: 417, column: 54, scope: !1623)
!1766 = !DILocation(line: 417, column: 44, scope: !1623)
!1767 = !DILocation(line: 417, column: 58, scope: !1623)
!1768 = !DILocation(line: 417, column: 62, scope: !1623)
!1769 = !DILocation(line: 417, column: 69, scope: !1623)
!1770 = !DILocation(line: 417, column: 18, scope: !1623)
!1771 = !DILocation(line: 417, column: 15, scope: !1623)
!1772 = !DILocation(line: 418, column: 26, scope: !1623)
!1773 = !DILocation(line: 418, column: 24, scope: !1623)
!1774 = !DILocation(line: 419, column: 5, scope: !1623)
!1775 = !DILocation(line: 382, column: 62, scope: !1618)
!1776 = !DILocation(line: 382, column: 5, scope: !1618)
!1777 = distinct !{!1777, !1620, !1778, !250}
!1778 = !DILocation(line: 419, column: 5, scope: !1615)
!1779 = !DILocation(line: 420, column: 12, scope: !1523)
!1780 = !DILocation(line: 420, column: 5, scope: !1523)
!1781 = distinct !DISubprogram(name: "geoaddCommand", scope: !1, file: !1, line: 445, type: !598, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1782 = !DILocalVariable(name: "c", arg: 1, scope: !1781, file: !1, line: 445, type: !282)
!1783 = !DILocation(line: 445, column: 28, scope: !1781)
!1784 = !DILocalVariable(name: "xx", scope: !1781, file: !1, line: 446, type: !260)
!1785 = !DILocation(line: 446, column: 9, scope: !1781)
!1786 = !DILocalVariable(name: "nx", scope: !1781, file: !1, line: 446, type: !260)
!1787 = !DILocation(line: 446, column: 17, scope: !1781)
!1788 = !DILocalVariable(name: "longidx", scope: !1781, file: !1, line: 446, type: !260)
!1789 = !DILocation(line: 446, column: 25, scope: !1781)
!1790 = !DILocalVariable(name: "i", scope: !1781, file: !1, line: 447, type: !260)
!1791 = !DILocation(line: 447, column: 9, scope: !1781)
!1792 = !DILocation(line: 451, column: 5, scope: !1781)
!1793 = !DILocation(line: 451, column: 12, scope: !1781)
!1794 = !DILocation(line: 451, column: 22, scope: !1781)
!1795 = !DILocation(line: 451, column: 25, scope: !1781)
!1796 = !DILocation(line: 451, column: 20, scope: !1781)
!1797 = !DILocalVariable(name: "opt", scope: !1798, file: !1, line: 452, type: !64)
!1798 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 451, column: 31)
!1799 = !DILocation(line: 452, column: 15, scope: !1798)
!1800 = !DILocation(line: 452, column: 21, scope: !1798)
!1801 = !DILocation(line: 452, column: 24, scope: !1798)
!1802 = !DILocation(line: 452, column: 29, scope: !1798)
!1803 = !DILocation(line: 452, column: 39, scope: !1798)
!1804 = !DILocation(line: 453, column: 25, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !1, line: 453, column: 13)
!1806 = !DILocation(line: 453, column: 14, scope: !1805)
!1807 = !DILocation(line: 453, column: 13, scope: !1798)
!1808 = !DILocation(line: 453, column: 39, scope: !1805)
!1809 = !DILocation(line: 453, column: 36, scope: !1805)
!1810 = !DILocation(line: 454, column: 30, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !1, line: 454, column: 18)
!1812 = !DILocation(line: 454, column: 19, scope: !1811)
!1813 = !DILocation(line: 454, column: 18, scope: !1805)
!1814 = !DILocation(line: 454, column: 44, scope: !1811)
!1815 = !DILocation(line: 454, column: 41, scope: !1811)
!1816 = !DILocation(line: 455, column: 30, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !1, line: 455, column: 18)
!1818 = !DILocation(line: 455, column: 19, scope: !1817)
!1819 = !DILocation(line: 455, column: 18, scope: !1811)
!1820 = !DILocation(line: 455, column: 72, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 455, column: 41)
!1822 = !DILocation(line: 456, column: 14, scope: !1817)
!1823 = !DILocation(line: 457, column: 16, scope: !1798)
!1824 = distinct !{!1824, !1792, !1825, !250}
!1825 = !DILocation(line: 458, column: 5, scope: !1781)
!1826 = !DILocation(line: 460, column: 10, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 460, column: 9)
!1828 = !DILocation(line: 460, column: 13, scope: !1827)
!1829 = !DILocation(line: 460, column: 20, scope: !1827)
!1830 = !DILocation(line: 460, column: 18, scope: !1827)
!1831 = !DILocation(line: 460, column: 29, scope: !1827)
!1832 = !DILocation(line: 460, column: 33, scope: !1827)
!1833 = !DILocation(line: 460, column: 37, scope: !1827)
!1834 = !DILocation(line: 460, column: 40, scope: !1827)
!1835 = !DILocation(line: 460, column: 43, scope: !1827)
!1836 = !DILocation(line: 460, column: 9, scope: !1781)
!1837 = !DILocation(line: 462, column: 33, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !1, line: 460, column: 48)
!1839 = !DILocation(line: 462, column: 42, scope: !1838)
!1840 = !DILocation(line: 462, column: 13, scope: !1838)
!1841 = !DILocation(line: 463, column: 9, scope: !1838)
!1842 = !DILocalVariable(name: "elements", scope: !1781, file: !1, line: 467, type: !260)
!1843 = !DILocation(line: 467, column: 9, scope: !1781)
!1844 = !DILocation(line: 467, column: 21, scope: !1781)
!1845 = !DILocation(line: 467, column: 24, scope: !1781)
!1846 = !DILocation(line: 467, column: 31, scope: !1781)
!1847 = !DILocation(line: 467, column: 29, scope: !1781)
!1848 = !DILocation(line: 467, column: 40, scope: !1781)
!1849 = !DILocalVariable(name: "argc", scope: !1781, file: !1, line: 468, type: !260)
!1850 = !DILocation(line: 468, column: 9, scope: !1781)
!1851 = !DILocation(line: 468, column: 16, scope: !1781)
!1852 = !DILocation(line: 468, column: 24, scope: !1781)
!1853 = !DILocation(line: 468, column: 32, scope: !1781)
!1854 = !DILocation(line: 468, column: 23, scope: !1781)
!1855 = !DILocalVariable(name: "argv", scope: !1781, file: !1, line: 469, type: !568)
!1856 = !DILocation(line: 469, column: 12, scope: !1781)
!1857 = !DILocation(line: 469, column: 27, scope: !1781)
!1858 = !DILocation(line: 469, column: 31, scope: !1781)
!1859 = !DILocation(line: 469, column: 19, scope: !1781)
!1860 = !DILocation(line: 470, column: 15, scope: !1781)
!1861 = !DILocation(line: 470, column: 5, scope: !1781)
!1862 = !DILocation(line: 470, column: 13, scope: !1781)
!1863 = !DILocation(line: 471, column: 12, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 471, column: 5)
!1865 = !DILocation(line: 471, column: 10, scope: !1864)
!1866 = !DILocation(line: 471, column: 17, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !1, line: 471, column: 5)
!1868 = !DILocation(line: 471, column: 21, scope: !1867)
!1869 = !DILocation(line: 471, column: 19, scope: !1867)
!1870 = !DILocation(line: 471, column: 5, scope: !1864)
!1871 = !DILocation(line: 472, column: 19, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !1, line: 471, column: 35)
!1873 = !DILocation(line: 472, column: 22, scope: !1872)
!1874 = !DILocation(line: 472, column: 27, scope: !1872)
!1875 = !DILocation(line: 472, column: 9, scope: !1872)
!1876 = !DILocation(line: 472, column: 14, scope: !1872)
!1877 = !DILocation(line: 472, column: 17, scope: !1872)
!1878 = !DILocation(line: 473, column: 22, scope: !1872)
!1879 = !DILocation(line: 473, column: 27, scope: !1872)
!1880 = !DILocation(line: 473, column: 9, scope: !1872)
!1881 = !DILocation(line: 474, column: 5, scope: !1872)
!1882 = !DILocation(line: 471, column: 31, scope: !1867)
!1883 = !DILocation(line: 471, column: 5, scope: !1867)
!1884 = distinct !{!1884, !1870, !1885, !250}
!1885 = !DILocation(line: 474, column: 5, scope: !1864)
!1886 = !DILocation(line: 479, column: 12, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1781, file: !1, line: 479, column: 5)
!1888 = !DILocation(line: 479, column: 10, scope: !1887)
!1889 = !DILocation(line: 479, column: 17, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 479, column: 5)
!1891 = !DILocation(line: 479, column: 21, scope: !1890)
!1892 = !DILocation(line: 479, column: 19, scope: !1890)
!1893 = !DILocation(line: 479, column: 5, scope: !1887)
!1894 = !DILocalVariable(name: "xy", scope: !1895, file: !1, line: 480, type: !1156)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !1, line: 479, column: 36)
!1896 = !DILocation(line: 480, column: 16, scope: !1895)
!1897 = !DILocation(line: 482, column: 35, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !1, line: 482, column: 13)
!1899 = !DILocation(line: 482, column: 39, scope: !1898)
!1900 = !DILocation(line: 482, column: 42, scope: !1898)
!1901 = !DILocation(line: 482, column: 47, scope: !1898)
!1902 = !DILocation(line: 482, column: 46, scope: !1898)
!1903 = !DILocation(line: 482, column: 57, scope: !1898)
!1904 = !DILocation(line: 482, column: 58, scope: !1898)
!1905 = !DILocation(line: 482, column: 55, scope: !1898)
!1906 = !DILocation(line: 482, column: 62, scope: !1898)
!1907 = !DILocation(line: 482, column: 13, scope: !1898)
!1908 = !DILocation(line: 482, column: 66, scope: !1898)
!1909 = !DILocation(line: 482, column: 13, scope: !1895)
!1910 = !DILocation(line: 483, column: 20, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1, line: 483, column: 13)
!1912 = distinct !DILexicalBlock(scope: !1898, file: !1, line: 482, column: 76)
!1913 = !DILocation(line: 483, column: 18, scope: !1911)
!1914 = !DILocation(line: 483, column: 25, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 483, column: 13)
!1916 = !DILocation(line: 483, column: 29, scope: !1915)
!1917 = !DILocation(line: 483, column: 27, scope: !1915)
!1918 = !DILocation(line: 483, column: 13, scope: !1911)
!1919 = !DILocation(line: 484, column: 21, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1915, file: !1, line: 484, column: 21)
!1921 = !DILocation(line: 484, column: 26, scope: !1920)
!1922 = !DILocation(line: 484, column: 21, scope: !1915)
!1923 = !DILocation(line: 484, column: 43, scope: !1920)
!1924 = !DILocation(line: 484, column: 48, scope: !1920)
!1925 = !DILocation(line: 484, column: 30, scope: !1920)
!1926 = !DILocation(line: 484, column: 27, scope: !1920)
!1927 = !DILocation(line: 483, column: 36, scope: !1915)
!1928 = !DILocation(line: 483, column: 13, scope: !1915)
!1929 = distinct !{!1929, !1918, !1930, !250}
!1930 = !DILocation(line: 484, column: 50, scope: !1911)
!1931 = !DILocation(line: 485, column: 19, scope: !1912)
!1932 = !DILocation(line: 485, column: 13, scope: !1912)
!1933 = !DILocation(line: 486, column: 13, scope: !1912)
!1934 = !DILocalVariable(name: "hash", scope: !1895, file: !1, line: 490, type: !266)
!1935 = !DILocation(line: 490, column: 21, scope: !1895)
!1936 = !DILocation(line: 491, column: 28, scope: !1895)
!1937 = !DILocation(line: 491, column: 35, scope: !1895)
!1938 = !DILocation(line: 491, column: 9, scope: !1895)
!1939 = !DILocalVariable(name: "bits", scope: !1895, file: !1, line: 492, type: !1480)
!1940 = !DILocation(line: 492, column: 26, scope: !1895)
!1941 = !DILocation(line: 492, column: 33, scope: !1895)
!1942 = !DILocalVariable(name: "score", scope: !1895, file: !1, line: 493, type: !553)
!1943 = !DILocation(line: 493, column: 15, scope: !1895)
!1944 = !DILocation(line: 493, column: 64, scope: !1895)
!1945 = !DILocation(line: 493, column: 48, scope: !1895)
!1946 = !DILocation(line: 493, column: 23, scope: !1895)
!1947 = !DILocalVariable(name: "val", scope: !1895, file: !1, line: 494, type: !553)
!1948 = !DILocation(line: 494, column: 15, scope: !1895)
!1949 = !DILocation(line: 494, column: 21, scope: !1895)
!1950 = !DILocation(line: 494, column: 24, scope: !1895)
!1951 = !DILocation(line: 494, column: 29, scope: !1895)
!1952 = !DILocation(line: 494, column: 39, scope: !1895)
!1953 = !DILocation(line: 494, column: 41, scope: !1895)
!1954 = !DILocation(line: 494, column: 37, scope: !1895)
!1955 = !DILocation(line: 494, column: 45, scope: !1895)
!1956 = !DILocation(line: 495, column: 29, scope: !1895)
!1957 = !DILocation(line: 495, column: 9, scope: !1895)
!1958 = !DILocation(line: 495, column: 14, scope: !1895)
!1959 = !DILocation(line: 495, column: 22, scope: !1895)
!1960 = !DILocation(line: 495, column: 23, scope: !1895)
!1961 = !DILocation(line: 495, column: 21, scope: !1895)
!1962 = !DILocation(line: 495, column: 27, scope: !1895)
!1963 = !DILocation(line: 496, column: 31, scope: !1895)
!1964 = !DILocation(line: 496, column: 9, scope: !1895)
!1965 = !DILocation(line: 496, column: 14, scope: !1895)
!1966 = !DILocation(line: 496, column: 21, scope: !1895)
!1967 = !DILocation(line: 496, column: 24, scope: !1895)
!1968 = !DILocation(line: 496, column: 25, scope: !1895)
!1969 = !DILocation(line: 496, column: 23, scope: !1895)
!1970 = !DILocation(line: 496, column: 29, scope: !1895)
!1971 = !DILocation(line: 497, column: 22, scope: !1895)
!1972 = !DILocation(line: 497, column: 9, scope: !1895)
!1973 = !DILocation(line: 498, column: 5, scope: !1895)
!1974 = !DILocation(line: 479, column: 32, scope: !1890)
!1975 = !DILocation(line: 479, column: 5, scope: !1890)
!1976 = distinct !{!1976, !1893, !1977, !250}
!1977 = !DILocation(line: 498, column: 5, scope: !1887)
!1978 = !DILocation(line: 501, column: 32, scope: !1781)
!1979 = !DILocation(line: 501, column: 34, scope: !1781)
!1980 = !DILocation(line: 501, column: 39, scope: !1781)
!1981 = !DILocation(line: 501, column: 5, scope: !1781)
!1982 = !DILocation(line: 502, column: 17, scope: !1781)
!1983 = !DILocation(line: 502, column: 5, scope: !1781)
!1984 = !DILocation(line: 503, column: 1, scope: !1781)
!1985 = distinct !DISubprogram(name: "georadiusGeneric", scope: !1, file: !1, line: 523, type: !1986, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !282, !260, !260}
!1988 = !DILocalVariable(name: "c", arg: 1, scope: !1985, file: !1, line: 523, type: !282)
!1989 = !DILocation(line: 523, column: 31, scope: !1985)
!1990 = !DILocalVariable(name: "srcKeyIndex", arg: 2, scope: !1985, file: !1, line: 523, type: !260)
!1991 = !DILocation(line: 523, column: 38, scope: !1985)
!1992 = !DILocalVariable(name: "flags", arg: 3, scope: !1985, file: !1, line: 523, type: !260)
!1993 = !DILocation(line: 523, column: 55, scope: !1985)
!1994 = !DILocalVariable(name: "storekey", scope: !1985, file: !1, line: 524, type: !553)
!1995 = !DILocation(line: 524, column: 11, scope: !1985)
!1996 = !DILocalVariable(name: "storedist", scope: !1985, file: !1, line: 525, type: !260)
!1997 = !DILocation(line: 525, column: 9, scope: !1985)
!1998 = !DILocalVariable(name: "zobj", scope: !1985, file: !1, line: 528, type: !553)
!1999 = !DILocation(line: 528, column: 11, scope: !1985)
!2000 = !DILocation(line: 528, column: 32, scope: !1985)
!2001 = !DILocation(line: 528, column: 35, scope: !1985)
!2002 = !DILocation(line: 528, column: 39, scope: !1985)
!2003 = !DILocation(line: 528, column: 42, scope: !1985)
!2004 = !DILocation(line: 528, column: 47, scope: !1985)
!2005 = !DILocation(line: 528, column: 18, scope: !1985)
!2006 = !DILocation(line: 529, column: 19, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 529, column: 9)
!2008 = !DILocation(line: 529, column: 22, scope: !2007)
!2009 = !DILocation(line: 529, column: 9, scope: !2007)
!2010 = !DILocation(line: 529, column: 9, scope: !1985)
!2011 = !DILocation(line: 529, column: 39, scope: !2007)
!2012 = !DILocalVariable(name: "base_args", scope: !1985, file: !1, line: 532, type: !260)
!2013 = !DILocation(line: 532, column: 9, scope: !1985)
!2014 = !DILocalVariable(name: "shape", scope: !1985, file: !1, line: 533, type: !1151)
!2015 = !DILocation(line: 533, column: 14, scope: !1985)
!2016 = !DILocation(line: 534, column: 9, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 534, column: 9)
!2018 = !DILocation(line: 534, column: 15, scope: !2017)
!2019 = !DILocation(line: 534, column: 9, scope: !1985)
!2020 = !DILocation(line: 536, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 534, column: 32)
!2022 = !DILocation(line: 537, column: 15, scope: !2021)
!2023 = !DILocation(line: 537, column: 20, scope: !2021)
!2024 = !DILocation(line: 538, column: 35, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 538, column: 13)
!2026 = !DILocation(line: 538, column: 38, scope: !2025)
!2027 = !DILocation(line: 538, column: 41, scope: !2025)
!2028 = !DILocation(line: 538, column: 46, scope: !2025)
!2029 = !DILocation(line: 538, column: 57, scope: !2025)
!2030 = !DILocation(line: 538, column: 51, scope: !2025)
!2031 = !DILocation(line: 538, column: 13, scope: !2025)
!2032 = !DILocation(line: 538, column: 61, scope: !2025)
!2033 = !DILocation(line: 538, column: 13, scope: !2021)
!2034 = !DILocation(line: 538, column: 71, scope: !2025)
!2035 = !DILocation(line: 539, column: 36, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 539, column: 13)
!2037 = !DILocation(line: 539, column: 39, scope: !2036)
!2038 = !DILocation(line: 539, column: 42, scope: !2036)
!2039 = !DILocation(line: 539, column: 47, scope: !2036)
!2040 = !DILocation(line: 539, column: 46, scope: !2036)
!2041 = !DILocation(line: 539, column: 56, scope: !2036)
!2042 = !DILocation(line: 539, column: 67, scope: !2036)
!2043 = !DILocation(line: 539, column: 86, scope: !2036)
!2044 = !DILocation(line: 539, column: 88, scope: !2036)
!2045 = !DILocation(line: 539, column: 13, scope: !2036)
!2046 = !DILocation(line: 539, column: 96, scope: !2036)
!2047 = !DILocation(line: 539, column: 13, scope: !2021)
!2048 = !DILocation(line: 539, column: 105, scope: !2036)
!2049 = !DILocation(line: 540, column: 5, scope: !2021)
!2050 = !DILocation(line: 540, column: 17, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 540, column: 16)
!2052 = !DILocation(line: 540, column: 23, scope: !2051)
!2053 = !DILocation(line: 540, column: 40, scope: !2051)
!2054 = !DILocation(line: 540, column: 44, scope: !2051)
!2055 = !DILocation(line: 540, column: 16, scope: !2017)
!2056 = !DILocation(line: 543, column: 19, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 540, column: 50)
!2058 = !DILocation(line: 544, column: 5, scope: !2057)
!2059 = !DILocation(line: 544, column: 16, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2051, file: !1, line: 544, column: 16)
!2061 = !DILocation(line: 544, column: 22, scope: !2060)
!2062 = !DILocation(line: 544, column: 16, scope: !2051)
!2063 = !DILocation(line: 546, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 544, column: 39)
!2065 = !DILocation(line: 547, column: 15, scope: !2064)
!2066 = !DILocation(line: 547, column: 20, scope: !2064)
!2067 = !DILocalVariable(name: "member", scope: !2064, file: !1, line: 548, type: !553)
!2068 = !DILocation(line: 548, column: 15, scope: !2064)
!2069 = !DILocation(line: 548, column: 24, scope: !2064)
!2070 = !DILocation(line: 548, column: 27, scope: !2064)
!2071 = !DILocation(line: 549, column: 31, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 549, column: 13)
!2073 = !DILocation(line: 549, column: 37, scope: !2072)
!2074 = !DILocation(line: 549, column: 51, scope: !2072)
!2075 = !DILocation(line: 549, column: 45, scope: !2072)
!2076 = !DILocation(line: 549, column: 13, scope: !2072)
!2077 = !DILocation(line: 549, column: 55, scope: !2072)
!2078 = !DILocation(line: 549, column: 13, scope: !2064)
!2079 = !DILocation(line: 550, column: 27, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2072, file: !1, line: 549, column: 65)
!2081 = !DILocation(line: 550, column: 13, scope: !2080)
!2082 = !DILocation(line: 551, column: 13, scope: !2080)
!2083 = !DILocation(line: 553, column: 36, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2064, file: !1, line: 553, column: 13)
!2085 = !DILocation(line: 553, column: 39, scope: !2084)
!2086 = !DILocation(line: 553, column: 42, scope: !2084)
!2087 = !DILocation(line: 553, column: 47, scope: !2084)
!2088 = !DILocation(line: 553, column: 46, scope: !2084)
!2089 = !DILocation(line: 553, column: 56, scope: !2084)
!2090 = !DILocation(line: 553, column: 67, scope: !2084)
!2091 = !DILocation(line: 553, column: 86, scope: !2084)
!2092 = !DILocation(line: 553, column: 88, scope: !2084)
!2093 = !DILocation(line: 553, column: 13, scope: !2084)
!2094 = !DILocation(line: 553, column: 96, scope: !2084)
!2095 = !DILocation(line: 553, column: 13, scope: !2064)
!2096 = !DILocation(line: 553, column: 105, scope: !2084)
!2097 = !DILocation(line: 554, column: 5, scope: !2064)
!2098 = !DILocation(line: 554, column: 16, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2060, file: !1, line: 554, column: 16)
!2100 = !DILocation(line: 554, column: 22, scope: !2099)
!2101 = !DILocation(line: 554, column: 16, scope: !2060)
!2102 = !DILocation(line: 556, column: 19, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 554, column: 35)
!2104 = !DILocation(line: 557, column: 13, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !1, line: 557, column: 13)
!2106 = !DILocation(line: 557, column: 19, scope: !2105)
!2107 = !DILocation(line: 557, column: 13, scope: !2103)
!2108 = !DILocation(line: 558, column: 23, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 557, column: 37)
!2110 = !DILocation(line: 559, column: 24, scope: !2109)
!2111 = !DILocation(line: 559, column: 27, scope: !2109)
!2112 = !DILocation(line: 559, column: 22, scope: !2109)
!2113 = !DILocation(line: 560, column: 9, scope: !2109)
!2114 = !DILocation(line: 561, column: 5, scope: !2103)
!2115 = !DILocation(line: 562, column: 23, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2099, file: !1, line: 561, column: 12)
!2117 = !DILocation(line: 562, column: 9, scope: !2116)
!2118 = !DILocation(line: 563, column: 9, scope: !2116)
!2119 = !DILocalVariable(name: "withdist", scope: !1985, file: !1, line: 567, type: !260)
!2120 = !DILocation(line: 567, column: 9, scope: !1985)
!2121 = !DILocalVariable(name: "withhash", scope: !1985, file: !1, line: 567, type: !260)
!2122 = !DILocation(line: 567, column: 23, scope: !1985)
!2123 = !DILocalVariable(name: "withcoords", scope: !1985, file: !1, line: 567, type: !260)
!2124 = !DILocation(line: 567, column: 37, scope: !1985)
!2125 = !DILocalVariable(name: "frommember", scope: !1985, file: !1, line: 568, type: !260)
!2126 = !DILocation(line: 568, column: 9, scope: !1985)
!2127 = !DILocalVariable(name: "fromloc", scope: !1985, file: !1, line: 568, type: !260)
!2128 = !DILocation(line: 568, column: 25, scope: !1985)
!2129 = !DILocalVariable(name: "byradius", scope: !1985, file: !1, line: 568, type: !260)
!2130 = !DILocation(line: 568, column: 38, scope: !1985)
!2131 = !DILocalVariable(name: "bybox", scope: !1985, file: !1, line: 568, type: !260)
!2132 = !DILocation(line: 568, column: 52, scope: !1985)
!2133 = !DILocalVariable(name: "sort", scope: !1985, file: !1, line: 569, type: !260)
!2134 = !DILocation(line: 569, column: 9, scope: !1985)
!2135 = !DILocalVariable(name: "any", scope: !1985, file: !1, line: 570, type: !260)
!2136 = !DILocation(line: 570, column: 9, scope: !1985)
!2137 = !DILocalVariable(name: "count", scope: !1985, file: !1, line: 571, type: !309)
!2138 = !DILocation(line: 571, column: 15, scope: !1985)
!2139 = !DILocation(line: 572, column: 9, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 572, column: 9)
!2141 = !DILocation(line: 572, column: 12, scope: !2140)
!2142 = !DILocation(line: 572, column: 19, scope: !2140)
!2143 = !DILocation(line: 572, column: 17, scope: !2140)
!2144 = !DILocation(line: 572, column: 9, scope: !1985)
!2145 = !DILocalVariable(name: "remaining", scope: !2146, file: !1, line: 573, type: !260)
!2146 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 572, column: 30)
!2147 = !DILocation(line: 573, column: 13, scope: !2146)
!2148 = !DILocation(line: 573, column: 25, scope: !2146)
!2149 = !DILocation(line: 573, column: 28, scope: !2146)
!2150 = !DILocation(line: 573, column: 35, scope: !2146)
!2151 = !DILocation(line: 573, column: 33, scope: !2146)
!2152 = !DILocalVariable(name: "i", scope: !2153, file: !1, line: 574, type: !260)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 574, column: 9)
!2154 = !DILocation(line: 574, column: 18, scope: !2153)
!2155 = !DILocation(line: 574, column: 14, scope: !2153)
!2156 = !DILocation(line: 574, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 574, column: 9)
!2158 = !DILocation(line: 574, column: 29, scope: !2157)
!2159 = !DILocation(line: 574, column: 27, scope: !2157)
!2160 = !DILocation(line: 574, column: 9, scope: !2153)
!2161 = !DILocalVariable(name: "arg", scope: !2162, file: !1, line: 575, type: !64)
!2162 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 574, column: 45)
!2163 = !DILocation(line: 575, column: 19, scope: !2162)
!2164 = !DILocation(line: 575, column: 25, scope: !2162)
!2165 = !DILocation(line: 575, column: 28, scope: !2162)
!2166 = !DILocation(line: 575, column: 33, scope: !2162)
!2167 = !DILocation(line: 575, column: 45, scope: !2162)
!2168 = !DILocation(line: 575, column: 43, scope: !2162)
!2169 = !DILocation(line: 575, column: 49, scope: !2162)
!2170 = !DILocation(line: 576, column: 29, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 576, column: 17)
!2172 = !DILocation(line: 576, column: 18, scope: !2171)
!2173 = !DILocation(line: 576, column: 17, scope: !2162)
!2174 = !DILocation(line: 577, column: 26, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 576, column: 47)
!2176 = !DILocation(line: 578, column: 13, scope: !2175)
!2177 = !DILocation(line: 578, column: 36, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !1, line: 578, column: 24)
!2179 = !DILocation(line: 578, column: 25, scope: !2178)
!2180 = !DILocation(line: 578, column: 24, scope: !2171)
!2181 = !DILocation(line: 579, column: 26, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 578, column: 54)
!2183 = !DILocation(line: 580, column: 13, scope: !2182)
!2184 = !DILocation(line: 580, column: 36, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 580, column: 24)
!2186 = !DILocation(line: 580, column: 25, scope: !2185)
!2187 = !DILocation(line: 580, column: 24, scope: !2178)
!2188 = !DILocation(line: 581, column: 28, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 580, column: 55)
!2190 = !DILocation(line: 582, column: 13, scope: !2189)
!2191 = !DILocation(line: 582, column: 36, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2185, file: !1, line: 582, column: 24)
!2193 = !DILocation(line: 582, column: 25, scope: !2192)
!2194 = !DILocation(line: 582, column: 24, scope: !2185)
!2195 = !DILocation(line: 583, column: 21, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 582, column: 49)
!2197 = !DILocation(line: 584, column: 13, scope: !2196)
!2198 = !DILocation(line: 584, column: 36, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2192, file: !1, line: 584, column: 24)
!2200 = !DILocation(line: 584, column: 25, scope: !2199)
!2201 = !DILocation(line: 584, column: 24, scope: !2192)
!2202 = !DILocation(line: 585, column: 22, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 584, column: 49)
!2204 = !DILocation(line: 586, column: 13, scope: !2203)
!2205 = !DILocation(line: 586, column: 36, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 586, column: 24)
!2207 = !DILocation(line: 586, column: 25, scope: !2206)
!2208 = !DILocation(line: 586, column: 24, scope: !2199)
!2209 = !DILocation(line: 587, column: 22, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 586, column: 50)
!2211 = !DILocation(line: 588, column: 13, scope: !2210)
!2212 = !DILocation(line: 588, column: 36, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 588, column: 24)
!2214 = !DILocation(line: 588, column: 25, scope: !2213)
!2215 = !DILocation(line: 588, column: 50, scope: !2213)
!2216 = !DILocation(line: 588, column: 54, scope: !2213)
!2217 = !DILocation(line: 588, column: 55, scope: !2213)
!2218 = !DILocation(line: 588, column: 61, scope: !2213)
!2219 = !DILocation(line: 588, column: 59, scope: !2213)
!2220 = !DILocation(line: 588, column: 24, scope: !2206)
!2221 = !DILocation(line: 589, column: 50, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 589, column: 21)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 588, column: 72)
!2224 = !DILocation(line: 589, column: 53, scope: !2222)
!2225 = !DILocation(line: 589, column: 56, scope: !2222)
!2226 = !DILocation(line: 589, column: 61, scope: !2222)
!2227 = !DILocation(line: 589, column: 71, scope: !2222)
!2228 = !DILocation(line: 589, column: 70, scope: !2222)
!2229 = !DILocation(line: 589, column: 72, scope: !2222)
!2230 = !DILocation(line: 589, column: 21, scope: !2222)
!2231 = !DILocation(line: 590, column: 64, scope: !2222)
!2232 = !DILocation(line: 589, column: 21, scope: !2223)
!2233 = !DILocation(line: 590, column: 73, scope: !2222)
!2234 = !DILocation(line: 591, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2223, file: !1, line: 591, column: 21)
!2236 = !DILocation(line: 591, column: 27, scope: !2235)
!2237 = !DILocation(line: 591, column: 21, scope: !2223)
!2238 = !DILocation(line: 592, column: 35, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !1, line: 591, column: 33)
!2240 = !DILocation(line: 592, column: 21, scope: !2239)
!2241 = !DILocation(line: 593, column: 21, scope: !2239)
!2242 = !DILocation(line: 595, column: 18, scope: !2223)
!2243 = !DILocation(line: 596, column: 13, scope: !2223)
!2244 = !DILocation(line: 596, column: 36, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2213, file: !1, line: 596, column: 24)
!2246 = !DILocation(line: 596, column: 25, scope: !2245)
!2247 = !DILocation(line: 596, column: 50, scope: !2245)
!2248 = !DILocation(line: 597, column: 25, scope: !2245)
!2249 = !DILocation(line: 597, column: 26, scope: !2245)
!2250 = !DILocation(line: 597, column: 32, scope: !2245)
!2251 = !DILocation(line: 597, column: 30, scope: !2245)
!2252 = !DILocation(line: 597, column: 42, scope: !2245)
!2253 = !DILocation(line: 598, column: 26, scope: !2245)
!2254 = !DILocation(line: 598, column: 32, scope: !2245)
!2255 = !DILocation(line: 598, column: 50, scope: !2245)
!2256 = !DILocation(line: 599, column: 26, scope: !2245)
!2257 = !DILocation(line: 599, column: 32, scope: !2245)
!2258 = !DILocation(line: 596, column: 24, scope: !2213)
!2259 = !DILocation(line: 601, column: 28, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 600, column: 13)
!2261 = !DILocation(line: 601, column: 31, scope: !2260)
!2262 = !DILocation(line: 601, column: 36, scope: !2260)
!2263 = !DILocation(line: 601, column: 46, scope: !2260)
!2264 = !DILocation(line: 601, column: 45, scope: !2260)
!2265 = !DILocation(line: 601, column: 47, scope: !2260)
!2266 = !DILocation(line: 601, column: 26, scope: !2260)
!2267 = !DILocation(line: 602, column: 27, scope: !2260)
!2268 = !DILocation(line: 603, column: 18, scope: !2260)
!2269 = !DILocation(line: 604, column: 13, scope: !2260)
!2270 = !DILocation(line: 604, column: 36, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 604, column: 24)
!2272 = !DILocation(line: 604, column: 25, scope: !2271)
!2273 = !DILocation(line: 604, column: 54, scope: !2271)
!2274 = !DILocation(line: 605, column: 25, scope: !2271)
!2275 = !DILocation(line: 605, column: 26, scope: !2271)
!2276 = !DILocation(line: 605, column: 32, scope: !2271)
!2277 = !DILocation(line: 605, column: 30, scope: !2271)
!2278 = !DILocation(line: 605, column: 42, scope: !2271)
!2279 = !DILocation(line: 606, column: 26, scope: !2271)
!2280 = !DILocation(line: 606, column: 32, scope: !2271)
!2281 = !DILocation(line: 606, column: 50, scope: !2271)
!2282 = !DILocation(line: 607, column: 26, scope: !2271)
!2283 = !DILocation(line: 607, column: 32, scope: !2271)
!2284 = !DILocation(line: 604, column: 24, scope: !2245)
!2285 = !DILocation(line: 609, column: 28, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 608, column: 13)
!2287 = !DILocation(line: 609, column: 31, scope: !2286)
!2288 = !DILocation(line: 609, column: 36, scope: !2286)
!2289 = !DILocation(line: 609, column: 46, scope: !2286)
!2290 = !DILocation(line: 609, column: 45, scope: !2286)
!2291 = !DILocation(line: 609, column: 47, scope: !2286)
!2292 = !DILocation(line: 609, column: 26, scope: !2286)
!2293 = !DILocation(line: 610, column: 27, scope: !2286)
!2294 = !DILocation(line: 611, column: 18, scope: !2286)
!2295 = !DILocation(line: 612, column: 13, scope: !2286)
!2296 = !DILocation(line: 612, column: 36, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2271, file: !1, line: 612, column: 24)
!2298 = !DILocation(line: 612, column: 25, scope: !2297)
!2299 = !DILocation(line: 612, column: 54, scope: !2297)
!2300 = !DILocation(line: 613, column: 25, scope: !2297)
!2301 = !DILocation(line: 613, column: 31, scope: !2297)
!2302 = !DILocation(line: 613, column: 44, scope: !2297)
!2303 = !DILocation(line: 614, column: 25, scope: !2297)
!2304 = !DILocation(line: 614, column: 31, scope: !2297)
!2305 = !DILocation(line: 612, column: 24, scope: !2271)
!2306 = !DILocation(line: 616, column: 27, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 615, column: 13)
!2308 = !DILocation(line: 617, column: 13, scope: !2307)
!2309 = !DILocation(line: 617, column: 36, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2297, file: !1, line: 617, column: 24)
!2311 = !DILocation(line: 617, column: 25, scope: !2310)
!2312 = !DILocation(line: 617, column: 55, scope: !2310)
!2313 = !DILocation(line: 618, column: 24, scope: !2310)
!2314 = !DILocation(line: 618, column: 25, scope: !2310)
!2315 = !DILocation(line: 618, column: 31, scope: !2310)
!2316 = !DILocation(line: 618, column: 29, scope: !2310)
!2317 = !DILocation(line: 618, column: 41, scope: !2310)
!2318 = !DILocation(line: 619, column: 23, scope: !2310)
!2319 = !DILocation(line: 619, column: 29, scope: !2310)
!2320 = !DILocation(line: 619, column: 41, scope: !2310)
!2321 = !DILocation(line: 620, column: 24, scope: !2310)
!2322 = !DILocation(line: 617, column: 24, scope: !2297)
!2323 = !DILocation(line: 623, column: 21, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 623, column: 21)
!2325 = distinct !DILexicalBlock(scope: !2310, file: !1, line: 621, column: 13)
!2326 = !DILocation(line: 623, column: 26, scope: !2324)
!2327 = !DILocation(line: 623, column: 21, scope: !2325)
!2328 = !DILocation(line: 624, column: 32, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !1, line: 623, column: 35)
!2330 = !DILocation(line: 625, column: 22, scope: !2329)
!2331 = !DILocation(line: 626, column: 21, scope: !2329)
!2332 = !DILocation(line: 629, column: 39, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 629, column: 21)
!2334 = !DILocation(line: 629, column: 45, scope: !2333)
!2335 = !DILocation(line: 629, column: 48, scope: !2333)
!2336 = !DILocation(line: 629, column: 53, scope: !2333)
!2337 = !DILocation(line: 629, column: 63, scope: !2333)
!2338 = !DILocation(line: 629, column: 62, scope: !2333)
!2339 = !DILocation(line: 629, column: 64, scope: !2333)
!2340 = !DILocation(line: 629, column: 75, scope: !2333)
!2341 = !DILocation(line: 629, column: 69, scope: !2333)
!2342 = !DILocation(line: 629, column: 21, scope: !2333)
!2343 = !DILocation(line: 629, column: 79, scope: !2333)
!2344 = !DILocation(line: 629, column: 21, scope: !2325)
!2345 = !DILocation(line: 630, column: 35, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2333, file: !1, line: 629, column: 89)
!2347 = !DILocation(line: 630, column: 21, scope: !2346)
!2348 = !DILocation(line: 631, column: 21, scope: !2346)
!2349 = !DILocation(line: 633, column: 28, scope: !2325)
!2350 = !DILocation(line: 634, column: 18, scope: !2325)
!2351 = !DILocation(line: 635, column: 13, scope: !2325)
!2352 = !DILocation(line: 635, column: 36, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2310, file: !1, line: 635, column: 24)
!2354 = !DILocation(line: 635, column: 25, scope: !2353)
!2355 = !DILocation(line: 635, column: 55, scope: !2353)
!2356 = !DILocation(line: 636, column: 25, scope: !2353)
!2357 = !DILocation(line: 636, column: 26, scope: !2353)
!2358 = !DILocation(line: 636, column: 32, scope: !2353)
!2359 = !DILocation(line: 636, column: 30, scope: !2353)
!2360 = !DILocation(line: 636, column: 42, scope: !2353)
!2361 = !DILocation(line: 637, column: 24, scope: !2353)
!2362 = !DILocation(line: 637, column: 30, scope: !2353)
!2363 = !DILocation(line: 637, column: 42, scope: !2353)
!2364 = !DILocation(line: 638, column: 25, scope: !2353)
!2365 = !DILocation(line: 635, column: 24, scope: !2310)
!2366 = !DILocation(line: 640, column: 43, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !1, line: 640, column: 21)
!2368 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 639, column: 13)
!2369 = !DILocation(line: 640, column: 46, scope: !2367)
!2370 = !DILocation(line: 640, column: 49, scope: !2367)
!2371 = !DILocation(line: 640, column: 54, scope: !2367)
!2372 = !DILocation(line: 640, column: 53, scope: !2367)
!2373 = !DILocation(line: 640, column: 64, scope: !2367)
!2374 = !DILocation(line: 640, column: 63, scope: !2367)
!2375 = !DILocation(line: 640, column: 65, scope: !2367)
!2376 = !DILocation(line: 640, column: 75, scope: !2367)
!2377 = !DILocation(line: 640, column: 69, scope: !2367)
!2378 = !DILocation(line: 640, column: 21, scope: !2367)
!2379 = !DILocation(line: 640, column: 79, scope: !2367)
!2380 = !DILocation(line: 640, column: 21, scope: !2368)
!2381 = !DILocation(line: 640, column: 89, scope: !2367)
!2382 = !DILocation(line: 641, column: 25, scope: !2368)
!2383 = !DILocation(line: 642, column: 19, scope: !2368)
!2384 = !DILocation(line: 643, column: 13, scope: !2368)
!2385 = !DILocation(line: 643, column: 36, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2353, file: !1, line: 643, column: 24)
!2387 = !DILocation(line: 643, column: 25, scope: !2386)
!2388 = !DILocation(line: 643, column: 53, scope: !2386)
!2389 = !DILocation(line: 644, column: 25, scope: !2386)
!2390 = !DILocation(line: 644, column: 26, scope: !2386)
!2391 = !DILocation(line: 644, column: 32, scope: !2386)
!2392 = !DILocation(line: 644, column: 30, scope: !2386)
!2393 = !DILocation(line: 644, column: 42, scope: !2386)
!2394 = !DILocation(line: 645, column: 24, scope: !2386)
!2395 = !DILocation(line: 645, column: 30, scope: !2386)
!2396 = !DILocation(line: 645, column: 42, scope: !2386)
!2397 = !DILocation(line: 646, column: 25, scope: !2386)
!2398 = !DILocation(line: 643, column: 24, scope: !2353)
!2399 = !DILocation(line: 648, column: 44, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !1, line: 648, column: 21)
!2401 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 647, column: 13)
!2402 = !DILocation(line: 648, column: 47, scope: !2400)
!2403 = !DILocation(line: 648, column: 50, scope: !2400)
!2404 = !DILocation(line: 648, column: 55, scope: !2400)
!2405 = !DILocation(line: 648, column: 54, scope: !2400)
!2406 = !DILocation(line: 648, column: 65, scope: !2400)
!2407 = !DILocation(line: 648, column: 64, scope: !2400)
!2408 = !DILocation(line: 648, column: 66, scope: !2400)
!2409 = !DILocation(line: 648, column: 77, scope: !2400)
!2410 = !DILocation(line: 648, column: 96, scope: !2400)
!2411 = !DILocation(line: 648, column: 98, scope: !2400)
!2412 = !DILocation(line: 648, column: 21, scope: !2400)
!2413 = !DILocation(line: 648, column: 106, scope: !2400)
!2414 = !DILocation(line: 648, column: 21, scope: !2401)
!2415 = !DILocation(line: 649, column: 21, scope: !2400)
!2416 = !DILocation(line: 650, column: 23, scope: !2401)
!2417 = !DILocation(line: 650, column: 28, scope: !2401)
!2418 = !DILocation(line: 651, column: 26, scope: !2401)
!2419 = !DILocation(line: 652, column: 19, scope: !2401)
!2420 = !DILocation(line: 653, column: 13, scope: !2401)
!2421 = !DILocation(line: 653, column: 36, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2386, file: !1, line: 653, column: 24)
!2423 = !DILocation(line: 653, column: 25, scope: !2422)
!2424 = !DILocation(line: 653, column: 50, scope: !2422)
!2425 = !DILocation(line: 654, column: 25, scope: !2422)
!2426 = !DILocation(line: 654, column: 26, scope: !2422)
!2427 = !DILocation(line: 654, column: 32, scope: !2422)
!2428 = !DILocation(line: 654, column: 30, scope: !2422)
!2429 = !DILocation(line: 654, column: 42, scope: !2422)
!2430 = !DILocation(line: 655, column: 24, scope: !2422)
!2431 = !DILocation(line: 655, column: 30, scope: !2422)
!2432 = !DILocation(line: 655, column: 42, scope: !2422)
!2433 = !DILocation(line: 656, column: 25, scope: !2422)
!2434 = !DILocation(line: 653, column: 24, scope: !2386)
!2435 = !DILocation(line: 658, column: 39, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !1, line: 658, column: 21)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !1, line: 657, column: 13)
!2438 = !DILocation(line: 658, column: 42, scope: !2436)
!2439 = !DILocation(line: 658, column: 45, scope: !2436)
!2440 = !DILocation(line: 658, column: 50, scope: !2436)
!2441 = !DILocation(line: 658, column: 49, scope: !2436)
!2442 = !DILocation(line: 658, column: 60, scope: !2436)
!2443 = !DILocation(line: 658, column: 59, scope: !2436)
!2444 = !DILocation(line: 658, column: 61, scope: !2436)
!2445 = !DILocation(line: 658, column: 72, scope: !2436)
!2446 = !DILocation(line: 658, column: 91, scope: !2436)
!2447 = !DILocation(line: 658, column: 93, scope: !2436)
!2448 = !DILocation(line: 658, column: 95, scope: !2436)
!2449 = !DILocation(line: 659, column: 32, scope: !2436)
!2450 = !DILocation(line: 659, column: 34, scope: !2436)
!2451 = !DILocation(line: 659, column: 36, scope: !2436)
!2452 = !DILocation(line: 658, column: 21, scope: !2436)
!2453 = !DILocation(line: 659, column: 44, scope: !2436)
!2454 = !DILocation(line: 658, column: 21, scope: !2437)
!2455 = !DILocation(line: 659, column: 53, scope: !2436)
!2456 = !DILocation(line: 660, column: 23, scope: !2437)
!2457 = !DILocation(line: 660, column: 28, scope: !2437)
!2458 = !DILocation(line: 661, column: 23, scope: !2437)
!2459 = !DILocation(line: 662, column: 19, scope: !2437)
!2460 = !DILocation(line: 663, column: 13, scope: !2437)
!2461 = !DILocation(line: 664, column: 37, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2422, file: !1, line: 663, column: 20)
!2463 = !DILocation(line: 664, column: 46, scope: !2462)
!2464 = !DILocation(line: 664, column: 17, scope: !2462)
!2465 = !DILocation(line: 665, column: 17, scope: !2462)
!2466 = !DILocation(line: 667, column: 9, scope: !2162)
!2467 = !DILocation(line: 574, column: 41, scope: !2157)
!2468 = !DILocation(line: 574, column: 9, scope: !2157)
!2469 = distinct !{!2469, !2160, !2470, !250}
!2470 = !DILocation(line: 667, column: 9, scope: !2153)
!2471 = !DILocation(line: 668, column: 5, scope: !2146)
!2472 = !DILocation(line: 671, column: 9, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 671, column: 9)
!2474 = !DILocation(line: 671, column: 18, scope: !2473)
!2475 = !DILocation(line: 671, column: 22, scope: !2473)
!2476 = !DILocation(line: 671, column: 31, scope: !2473)
!2477 = !DILocation(line: 671, column: 34, scope: !2473)
!2478 = !DILocation(line: 671, column: 43, scope: !2473)
!2479 = !DILocation(line: 671, column: 46, scope: !2473)
!2480 = !DILocation(line: 671, column: 9, scope: !1985)
!2481 = !DILocation(line: 672, column: 29, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 671, column: 59)
!2483 = !DILocation(line: 674, column: 13, scope: !2482)
!2484 = !DILocation(line: 674, column: 19, scope: !2482)
!2485 = !DILocation(line: 672, column: 9, scope: !2482)
!2486 = !DILocation(line: 675, column: 9, scope: !2482)
!2487 = !DILocation(line: 678, column: 10, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 678, column: 9)
!2489 = !DILocation(line: 678, column: 16, scope: !2488)
!2490 = !DILocation(line: 678, column: 29, scope: !2488)
!2491 = !DILocation(line: 678, column: 34, scope: !2488)
!2492 = !DILocation(line: 678, column: 45, scope: !2488)
!2493 = !DILocation(line: 678, column: 48, scope: !2488)
!2494 = !DILocation(line: 678, column: 9, scope: !1985)
!2495 = !DILocation(line: 679, column: 29, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2488, file: !1, line: 678, column: 58)
!2497 = !DILocation(line: 681, column: 21, scope: !2496)
!2498 = !DILocation(line: 681, column: 24, scope: !2496)
!2499 = !DILocation(line: 681, column: 33, scope: !2496)
!2500 = !DILocation(line: 679, column: 9, scope: !2496)
!2501 = !DILocation(line: 682, column: 9, scope: !2496)
!2502 = !DILocation(line: 685, column: 10, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 685, column: 9)
!2504 = !DILocation(line: 685, column: 16, scope: !2503)
!2505 = !DILocation(line: 685, column: 29, scope: !2503)
!2506 = !DILocation(line: 685, column: 34, scope: !2503)
!2507 = !DILocation(line: 685, column: 43, scope: !2503)
!2508 = !DILocation(line: 685, column: 46, scope: !2503)
!2509 = !DILocation(line: 685, column: 9, scope: !1985)
!2510 = !DILocation(line: 686, column: 29, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !1, line: 685, column: 54)
!2512 = !DILocation(line: 688, column: 21, scope: !2511)
!2513 = !DILocation(line: 688, column: 24, scope: !2511)
!2514 = !DILocation(line: 688, column: 33, scope: !2511)
!2515 = !DILocation(line: 686, column: 9, scope: !2511)
!2516 = !DILocation(line: 689, column: 9, scope: !2511)
!2517 = !DILocation(line: 692, column: 9, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 692, column: 9)
!2519 = !DILocation(line: 692, column: 13, scope: !2518)
!2520 = !DILocation(line: 692, column: 17, scope: !2518)
!2521 = !DILocation(line: 692, column: 9, scope: !1985)
!2522 = !DILocation(line: 693, column: 29, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 692, column: 24)
!2524 = !DILocation(line: 693, column: 9, scope: !2523)
!2525 = !DILocation(line: 694, column: 9, scope: !2523)
!2526 = !DILocation(line: 698, column: 9, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 698, column: 9)
!2528 = !DILocation(line: 698, column: 14, scope: !2527)
!2529 = !DILocation(line: 698, column: 9, scope: !1985)
!2530 = !DILocation(line: 699, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 699, column: 13)
!2532 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 698, column: 23)
!2533 = !DILocation(line: 699, column: 13, scope: !2532)
!2534 = !DILocation(line: 701, column: 26, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 701, column: 17)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 699, column: 23)
!2537 = !DILocation(line: 701, column: 29, scope: !2535)
!2538 = !DILocation(line: 701, column: 33, scope: !2535)
!2539 = !DILocation(line: 701, column: 17, scope: !2535)
!2540 = !DILocation(line: 701, column: 17, scope: !2536)
!2541 = !DILocation(line: 702, column: 35, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !1, line: 701, column: 44)
!2543 = !DILocation(line: 702, column: 38, scope: !2542)
!2544 = !DILocation(line: 702, column: 41, scope: !2542)
!2545 = !DILocation(line: 702, column: 45, scope: !2542)
!2546 = !DILocation(line: 702, column: 17, scope: !2542)
!2547 = !DILocation(line: 703, column: 60, scope: !2542)
!2548 = !DILocation(line: 703, column: 70, scope: !2542)
!2549 = !DILocation(line: 703, column: 73, scope: !2542)
!2550 = !DILocation(line: 703, column: 77, scope: !2542)
!2551 = !DILocation(line: 703, column: 17, scope: !2542)
!2552 = !DILocation(line: 704, column: 29, scope: !2542)
!2553 = !DILocation(line: 705, column: 13, scope: !2542)
!2554 = !DILocation(line: 706, column: 22, scope: !2536)
!2555 = !DILocation(line: 706, column: 32, scope: !2536)
!2556 = !DILocation(line: 706, column: 13, scope: !2536)
!2557 = !DILocation(line: 707, column: 9, scope: !2536)
!2558 = !DILocation(line: 709, column: 22, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 707, column: 16)
!2560 = !DILocation(line: 709, column: 32, scope: !2559)
!2561 = !DILocation(line: 709, column: 13, scope: !2559)
!2562 = !DILocation(line: 711, column: 9, scope: !2532)
!2563 = !DILocation(line: 718, column: 9, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 718, column: 9)
!2565 = !DILocation(line: 718, column: 15, scope: !2564)
!2566 = !DILocation(line: 718, column: 20, scope: !2564)
!2567 = !DILocation(line: 718, column: 23, scope: !2564)
!2568 = !DILocation(line: 718, column: 28, scope: !2564)
!2569 = !DILocation(line: 718, column: 41, scope: !2564)
!2570 = !DILocation(line: 718, column: 45, scope: !2564)
!2571 = !DILocation(line: 718, column: 9, scope: !1985)
!2572 = !DILocation(line: 718, column: 55, scope: !2564)
!2573 = !DILocation(line: 718, column: 50, scope: !2564)
!2574 = !DILocalVariable(name: "georadius", scope: !1985, file: !1, line: 721, type: !1528)
!2575 = !DILocation(line: 721, column: 19, scope: !1985)
!2576 = !DILocation(line: 721, column: 31, scope: !1985)
!2577 = !DILocalVariable(name: "ga", scope: !1985, file: !1, line: 724, type: !115)
!2578 = !DILocation(line: 724, column: 15, scope: !1985)
!2579 = !DILocation(line: 724, column: 20, scope: !1985)
!2580 = !DILocation(line: 725, column: 27, scope: !1985)
!2581 = !DILocation(line: 725, column: 53, scope: !1985)
!2582 = !DILocation(line: 725, column: 57, scope: !1985)
!2583 = !DILocation(line: 725, column: 63, scope: !1985)
!2584 = !DILocation(line: 725, column: 5, scope: !1985)
!2585 = !DILocation(line: 728, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 728, column: 9)
!2587 = !DILocation(line: 728, column: 13, scope: !2586)
!2588 = !DILocation(line: 728, column: 18, scope: !2586)
!2589 = !DILocation(line: 728, column: 23, scope: !2586)
!2590 = !DILocation(line: 728, column: 26, scope: !2586)
!2591 = !DILocation(line: 728, column: 35, scope: !2586)
!2592 = !DILocation(line: 728, column: 9, scope: !1985)
!2593 = !DILocation(line: 729, column: 18, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 728, column: 44)
!2595 = !DILocation(line: 729, column: 27, scope: !2594)
!2596 = !DILocation(line: 729, column: 9, scope: !2594)
!2597 = !DILocation(line: 730, column: 22, scope: !2594)
!2598 = !DILocation(line: 730, column: 9, scope: !2594)
!2599 = !DILocation(line: 731, column: 9, scope: !2594)
!2600 = !DILocalVariable(name: "result_length", scope: !1985, file: !1, line: 734, type: !418)
!2601 = !DILocation(line: 734, column: 10, scope: !1985)
!2602 = !DILocation(line: 734, column: 26, scope: !1985)
!2603 = !DILocation(line: 734, column: 30, scope: !1985)
!2604 = !DILocalVariable(name: "returned_items", scope: !1985, file: !1, line: 735, type: !418)
!2605 = !DILocation(line: 735, column: 10, scope: !1985)
!2606 = !DILocation(line: 735, column: 28, scope: !1985)
!2607 = !DILocation(line: 735, column: 34, scope: !1985)
!2608 = !DILocation(line: 735, column: 39, scope: !1985)
!2609 = !DILocation(line: 735, column: 42, scope: !1985)
!2610 = !DILocation(line: 735, column: 58, scope: !1985)
!2611 = !DILocation(line: 735, column: 56, scope: !1985)
!2612 = !DILocation(line: 735, column: 27, scope: !1985)
!2613 = !DILocation(line: 736, column: 27, scope: !1985)
!2614 = !DILocation(line: 736, column: 43, scope: !1985)
!2615 = !DILocalVariable(name: "option_length", scope: !1985, file: !1, line: 737, type: !418)
!2616 = !DILocation(line: 737, column: 10, scope: !1985)
!2617 = !DILocation(line: 740, column: 9, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 740, column: 9)
!2619 = !DILocation(line: 740, column: 14, scope: !2618)
!2620 = !DILocation(line: 740, column: 9, scope: !1985)
!2621 = !DILocalVariable(name: "sort_gp_callback", scope: !2622, file: !1, line: 741, type: !2623)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 740, column: 28)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!260, !376, !376}
!2626 = !DILocation(line: 741, column: 15, scope: !2622)
!2627 = !DILocation(line: 742, column: 13, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 742, column: 13)
!2629 = !DILocation(line: 742, column: 18, scope: !2628)
!2630 = !DILocation(line: 742, column: 13, scope: !2622)
!2631 = !DILocation(line: 743, column: 30, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 742, column: 31)
!2633 = !DILocation(line: 744, column: 9, scope: !2632)
!2634 = !DILocation(line: 744, column: 20, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 744, column: 20)
!2636 = !DILocation(line: 744, column: 25, scope: !2635)
!2637 = !DILocation(line: 744, column: 20, scope: !2628)
!2638 = !DILocation(line: 745, column: 30, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 744, column: 39)
!2640 = !DILocation(line: 746, column: 9, scope: !2639)
!2641 = !DILocation(line: 748, column: 13, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2622, file: !1, line: 748, column: 13)
!2643 = !DILocation(line: 748, column: 31, scope: !2642)
!2644 = !DILocation(line: 748, column: 28, scope: !2642)
!2645 = !DILocation(line: 748, column: 13, scope: !2622)
!2646 = !DILocation(line: 749, column: 19, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 748, column: 46)
!2648 = !DILocation(line: 749, column: 23, scope: !2647)
!2649 = !DILocation(line: 749, column: 30, scope: !2647)
!2650 = !DILocation(line: 749, column: 63, scope: !2647)
!2651 = !DILocation(line: 749, column: 13, scope: !2647)
!2652 = !DILocation(line: 750, column: 9, scope: !2647)
!2653 = !DILocation(line: 751, column: 20, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 750, column: 16)
!2655 = !DILocation(line: 751, column: 24, scope: !2654)
!2656 = !DILocation(line: 751, column: 31, scope: !2654)
!2657 = !DILocation(line: 751, column: 64, scope: !2654)
!2658 = !DILocation(line: 752, column: 21, scope: !2654)
!2659 = !DILocation(line: 752, column: 36, scope: !2654)
!2660 = !DILocation(line: 751, column: 13, scope: !2654)
!2661 = !DILocation(line: 754, column: 5, scope: !2622)
!2662 = !DILocation(line: 756, column: 9, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 756, column: 9)
!2664 = !DILocation(line: 756, column: 18, scope: !2663)
!2665 = !DILocation(line: 756, column: 9, scope: !1985)
!2666 = !DILocation(line: 761, column: 13, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 761, column: 13)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 756, column: 27)
!2669 = !DILocation(line: 761, column: 13, scope: !2668)
!2670 = !DILocation(line: 762, column: 26, scope: !2667)
!2671 = !DILocation(line: 762, column: 13, scope: !2667)
!2672 = !DILocation(line: 764, column: 13, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 764, column: 13)
!2674 = !DILocation(line: 764, column: 13, scope: !2668)
!2675 = !DILocation(line: 765, column: 26, scope: !2673)
!2676 = !DILocation(line: 765, column: 13, scope: !2673)
!2677 = !DILocation(line: 767, column: 13, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 767, column: 13)
!2679 = !DILocation(line: 767, column: 13, scope: !2668)
!2680 = !DILocation(line: 768, column: 26, scope: !2678)
!2681 = !DILocation(line: 768, column: 13, scope: !2678)
!2682 = !DILocation(line: 774, column: 26, scope: !2668)
!2683 = !DILocation(line: 774, column: 29, scope: !2668)
!2684 = !DILocation(line: 774, column: 9, scope: !2668)
!2685 = !DILocalVariable(name: "i", scope: !2668, file: !1, line: 777, type: !260)
!2686 = !DILocation(line: 777, column: 13, scope: !2668)
!2687 = !DILocation(line: 778, column: 16, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2668, file: !1, line: 778, column: 9)
!2689 = !DILocation(line: 778, column: 14, scope: !2688)
!2690 = !DILocation(line: 778, column: 21, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 778, column: 9)
!2692 = !DILocation(line: 778, column: 25, scope: !2691)
!2693 = !DILocation(line: 778, column: 23, scope: !2691)
!2694 = !DILocation(line: 778, column: 9, scope: !2688)
!2695 = !DILocalVariable(name: "gp", scope: !2696, file: !1, line: 779, type: !152)
!2696 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 778, column: 46)
!2697 = !DILocation(line: 779, column: 23, scope: !2696)
!2698 = !DILocation(line: 779, column: 28, scope: !2696)
!2699 = !DILocation(line: 779, column: 32, scope: !2696)
!2700 = !DILocation(line: 779, column: 38, scope: !2696)
!2701 = !DILocation(line: 779, column: 37, scope: !2696)
!2702 = !DILocation(line: 780, column: 31, scope: !2696)
!2703 = !DILocation(line: 780, column: 13, scope: !2696)
!2704 = !DILocation(line: 780, column: 17, scope: !2696)
!2705 = !DILocation(line: 780, column: 22, scope: !2696)
!2706 = !DILocation(line: 785, column: 17, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 785, column: 17)
!2708 = !DILocation(line: 785, column: 17, scope: !2696)
!2709 = !DILocation(line: 786, column: 34, scope: !2707)
!2710 = !DILocation(line: 786, column: 37, scope: !2707)
!2711 = !DILocation(line: 786, column: 51, scope: !2707)
!2712 = !DILocation(line: 786, column: 17, scope: !2707)
!2713 = !DILocation(line: 788, column: 29, scope: !2696)
!2714 = !DILocation(line: 788, column: 31, scope: !2696)
!2715 = !DILocation(line: 788, column: 35, scope: !2696)
!2716 = !DILocation(line: 788, column: 13, scope: !2696)
!2717 = !DILocation(line: 789, column: 13, scope: !2696)
!2718 = !DILocation(line: 789, column: 17, scope: !2696)
!2719 = !DILocation(line: 789, column: 24, scope: !2696)
!2720 = !DILocation(line: 791, column: 17, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 791, column: 17)
!2722 = !DILocation(line: 791, column: 17, scope: !2696)
!2723 = !DILocation(line: 792, column: 40, scope: !2721)
!2724 = !DILocation(line: 792, column: 43, scope: !2721)
!2725 = !DILocation(line: 792, column: 47, scope: !2721)
!2726 = !DILocation(line: 792, column: 17, scope: !2721)
!2727 = !DILocation(line: 794, column: 17, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 794, column: 17)
!2729 = !DILocation(line: 794, column: 17, scope: !2696)
!2730 = !DILocation(line: 795, column: 34, scope: !2728)
!2731 = !DILocation(line: 795, column: 37, scope: !2728)
!2732 = !DILocation(line: 795, column: 41, scope: !2728)
!2733 = !DILocation(line: 795, column: 17, scope: !2728)
!2734 = !DILocation(line: 797, column: 17, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 797, column: 17)
!2736 = !DILocation(line: 797, column: 17, scope: !2696)
!2737 = !DILocation(line: 798, column: 34, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2735, file: !1, line: 797, column: 29)
!2739 = !DILocation(line: 798, column: 17, scope: !2738)
!2740 = !DILocation(line: 799, column: 41, scope: !2738)
!2741 = !DILocation(line: 799, column: 44, scope: !2738)
!2742 = !DILocation(line: 799, column: 48, scope: !2738)
!2743 = !DILocation(line: 799, column: 17, scope: !2738)
!2744 = !DILocation(line: 800, column: 41, scope: !2738)
!2745 = !DILocation(line: 800, column: 44, scope: !2738)
!2746 = !DILocation(line: 800, column: 48, scope: !2738)
!2747 = !DILocation(line: 800, column: 17, scope: !2738)
!2748 = !DILocation(line: 801, column: 13, scope: !2738)
!2749 = !DILocation(line: 802, column: 9, scope: !2696)
!2750 = !DILocation(line: 778, column: 42, scope: !2691)
!2751 = !DILocation(line: 778, column: 9, scope: !2691)
!2752 = distinct !{!2752, !2694, !2753, !250}
!2753 = !DILocation(line: 802, column: 9, scope: !2688)
!2754 = !DILocation(line: 803, column: 5, scope: !2668)
!2755 = !DILocalVariable(name: "zobj", scope: !2756, file: !1, line: 805, type: !553)
!2756 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 803, column: 12)
!2757 = !DILocation(line: 805, column: 15, scope: !2756)
!2758 = !DILocalVariable(name: "zs", scope: !2756, file: !1, line: 806, type: !1374)
!2759 = !DILocation(line: 806, column: 15, scope: !2756)
!2760 = !DILocalVariable(name: "i", scope: !2756, file: !1, line: 807, type: !260)
!2761 = !DILocation(line: 807, column: 13, scope: !2756)
!2762 = !DILocalVariable(name: "maxelelen", scope: !2756, file: !1, line: 808, type: !131)
!2763 = !DILocation(line: 808, column: 16, scope: !2756)
!2764 = !DILocalVariable(name: "totelelen", scope: !2756, file: !1, line: 808, type: !131)
!2765 = !DILocation(line: 808, column: 31, scope: !2756)
!2766 = !DILocation(line: 810, column: 13, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 810, column: 13)
!2768 = !DILocation(line: 810, column: 13, scope: !2756)
!2769 = !DILocation(line: 811, column: 20, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 810, column: 29)
!2771 = !DILocation(line: 811, column: 18, scope: !2770)
!2772 = !DILocation(line: 812, column: 18, scope: !2770)
!2773 = !DILocation(line: 812, column: 24, scope: !2770)
!2774 = !DILocation(line: 812, column: 16, scope: !2770)
!2775 = !DILocation(line: 813, column: 9, scope: !2770)
!2776 = !DILocation(line: 815, column: 16, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 815, column: 9)
!2778 = !DILocation(line: 815, column: 14, scope: !2777)
!2779 = !DILocation(line: 815, column: 21, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2777, file: !1, line: 815, column: 9)
!2781 = !DILocation(line: 815, column: 25, scope: !2780)
!2782 = !DILocation(line: 815, column: 23, scope: !2780)
!2783 = !DILocation(line: 815, column: 9, scope: !2777)
!2784 = !DILocalVariable(name: "znode", scope: !2785, file: !1, line: 816, type: !1408)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !1, line: 815, column: 46)
!2786 = !DILocation(line: 816, column: 28, scope: !2785)
!2787 = !DILocalVariable(name: "gp", scope: !2785, file: !1, line: 817, type: !152)
!2788 = !DILocation(line: 817, column: 23, scope: !2785)
!2789 = !DILocation(line: 817, column: 28, scope: !2785)
!2790 = !DILocation(line: 817, column: 32, scope: !2785)
!2791 = !DILocation(line: 817, column: 38, scope: !2785)
!2792 = !DILocation(line: 817, column: 37, scope: !2785)
!2793 = !DILocation(line: 818, column: 31, scope: !2785)
!2794 = !DILocation(line: 818, column: 13, scope: !2785)
!2795 = !DILocation(line: 818, column: 17, scope: !2785)
!2796 = !DILocation(line: 818, column: 22, scope: !2785)
!2797 = !DILocalVariable(name: "score", scope: !2785, file: !1, line: 819, type: !125)
!2798 = !DILocation(line: 819, column: 20, scope: !2785)
!2799 = !DILocation(line: 819, column: 28, scope: !2785)
!2800 = !DILocation(line: 819, column: 40, scope: !2785)
!2801 = !DILocation(line: 819, column: 44, scope: !2785)
!2802 = !DILocation(line: 819, column: 51, scope: !2785)
!2803 = !DILocation(line: 819, column: 55, scope: !2785)
!2804 = !DILocalVariable(name: "elelen", scope: !2785, file: !1, line: 820, type: !131)
!2805 = !DILocation(line: 820, column: 20, scope: !2785)
!2806 = !DILocation(line: 820, column: 36, scope: !2785)
!2807 = !DILocation(line: 820, column: 40, scope: !2785)
!2808 = !DILocation(line: 820, column: 29, scope: !2785)
!2809 = !DILocation(line: 822, column: 17, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2785, file: !1, line: 822, column: 17)
!2811 = !DILocation(line: 822, column: 29, scope: !2810)
!2812 = !DILocation(line: 822, column: 27, scope: !2810)
!2813 = !DILocation(line: 822, column: 17, scope: !2785)
!2814 = !DILocation(line: 822, column: 49, scope: !2810)
!2815 = !DILocation(line: 822, column: 47, scope: !2810)
!2816 = !DILocation(line: 822, column: 37, scope: !2810)
!2817 = !DILocation(line: 823, column: 26, scope: !2785)
!2818 = !DILocation(line: 823, column: 23, scope: !2785)
!2819 = !DILocation(line: 824, column: 31, scope: !2785)
!2820 = !DILocation(line: 824, column: 35, scope: !2785)
!2821 = !DILocation(line: 824, column: 39, scope: !2785)
!2822 = !DILocation(line: 824, column: 45, scope: !2785)
!2823 = !DILocation(line: 824, column: 49, scope: !2785)
!2824 = !DILocation(line: 824, column: 21, scope: !2785)
!2825 = !DILocation(line: 824, column: 19, scope: !2785)
!2826 = !DILocation(line: 825, column: 13, scope: !2785)
!2827 = !DILocation(line: 826, column: 13, scope: !2785)
!2828 = !DILocation(line: 826, column: 17, scope: !2785)
!2829 = !DILocation(line: 826, column: 24, scope: !2785)
!2830 = !DILocation(line: 827, column: 9, scope: !2785)
!2831 = !DILocation(line: 815, column: 42, scope: !2780)
!2832 = !DILocation(line: 815, column: 9, scope: !2780)
!2833 = distinct !{!2833, !2783, !2834, !250}
!2834 = !DILocation(line: 827, column: 9, scope: !2777)
!2835 = !DILocation(line: 829, column: 13, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2756, file: !1, line: 829, column: 13)
!2837 = !DILocation(line: 829, column: 13, scope: !2756)
!2838 = !DILocation(line: 830, column: 43, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !1, line: 829, column: 29)
!2840 = !DILocation(line: 830, column: 48, scope: !2839)
!2841 = !DILocation(line: 830, column: 58, scope: !2839)
!2842 = !DILocation(line: 830, column: 13, scope: !2839)
!2843 = !DILocation(line: 831, column: 20, scope: !2839)
!2844 = !DILocation(line: 831, column: 22, scope: !2839)
!2845 = !DILocation(line: 831, column: 25, scope: !2839)
!2846 = !DILocation(line: 831, column: 28, scope: !2839)
!2847 = !DILocation(line: 831, column: 37, scope: !2839)
!2848 = !DILocation(line: 831, column: 13, scope: !2839)
!2849 = !DILocation(line: 832, column: 26, scope: !2839)
!2850 = !DILocation(line: 832, column: 13, scope: !2839)
!2851 = !DILocation(line: 833, column: 45, scope: !2839)
!2852 = !DILocation(line: 833, column: 51, scope: !2839)
!2853 = !DILocation(line: 833, column: 101, scope: !2839)
!2854 = !DILocation(line: 834, column: 33, scope: !2839)
!2855 = !DILocation(line: 834, column: 36, scope: !2839)
!2856 = !DILocation(line: 834, column: 40, scope: !2839)
!2857 = !DILocation(line: 833, column: 13, scope: !2839)
!2858 = !DILocation(line: 835, column: 29, scope: !2839)
!2859 = !DILocation(line: 835, column: 26, scope: !2839)
!2860 = !DILocation(line: 836, column: 9, scope: !2839)
!2861 = !DILocation(line: 836, column: 29, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2836, file: !1, line: 836, column: 20)
!2863 = !DILocation(line: 836, column: 32, scope: !2862)
!2864 = !DILocation(line: 836, column: 35, scope: !2862)
!2865 = !DILocation(line: 836, column: 20, scope: !2862)
!2866 = !DILocation(line: 836, column: 20, scope: !2836)
!2867 = !DILocation(line: 837, column: 31, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2862, file: !1, line: 836, column: 46)
!2869 = !DILocation(line: 837, column: 33, scope: !2868)
!2870 = !DILocation(line: 837, column: 36, scope: !2868)
!2871 = !DILocation(line: 837, column: 39, scope: !2868)
!2872 = !DILocation(line: 837, column: 13, scope: !2868)
!2873 = !DILocation(line: 838, column: 54, scope: !2868)
!2874 = !DILocation(line: 838, column: 63, scope: !2868)
!2875 = !DILocation(line: 838, column: 66, scope: !2868)
!2876 = !DILocation(line: 838, column: 70, scope: !2868)
!2877 = !DILocation(line: 838, column: 13, scope: !2868)
!2878 = !DILocation(line: 839, column: 25, scope: !2868)
!2879 = !DILocation(line: 840, column: 9, scope: !2868)
!2880 = !DILocation(line: 841, column: 26, scope: !2756)
!2881 = !DILocation(line: 841, column: 29, scope: !2756)
!2882 = !DILocation(line: 841, column: 9, scope: !2756)
!2883 = !DILocation(line: 843, column: 18, scope: !1985)
!2884 = !DILocation(line: 843, column: 5, scope: !1985)
!2885 = !DILocation(line: 844, column: 1, scope: !1985)
!2886 = distinct !DISubprogram(name: "sort_gp_asc", scope: !1, file: !1, line: 424, type: !2624, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2887 = !DILocalVariable(name: "a", arg: 1, scope: !2886, file: !1, line: 424, type: !376)
!2888 = !DILocation(line: 424, column: 36, scope: !2886)
!2889 = !DILocalVariable(name: "b", arg: 2, scope: !2886, file: !1, line: 424, type: !376)
!2890 = !DILocation(line: 424, column: 51, scope: !2886)
!2891 = !DILocalVariable(name: "gpa", scope: !2886, file: !1, line: 425, type: !2892)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!2894 = !DILocation(line: 425, column: 28, scope: !2886)
!2895 = !DILocation(line: 425, column: 34, scope: !2886)
!2896 = !DILocalVariable(name: "gpb", scope: !2886, file: !1, line: 425, type: !2892)
!2897 = !DILocation(line: 425, column: 38, scope: !2886)
!2898 = !DILocation(line: 425, column: 44, scope: !2886)
!2899 = !DILocation(line: 428, column: 9, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 428, column: 9)
!2901 = !DILocation(line: 428, column: 14, scope: !2900)
!2902 = !DILocation(line: 428, column: 21, scope: !2900)
!2903 = !DILocation(line: 428, column: 26, scope: !2900)
!2904 = !DILocation(line: 428, column: 19, scope: !2900)
!2905 = !DILocation(line: 428, column: 9, scope: !2886)
!2906 = !DILocation(line: 429, column: 9, scope: !2900)
!2907 = !DILocation(line: 430, column: 14, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2900, file: !1, line: 430, column: 14)
!2909 = !DILocation(line: 430, column: 19, scope: !2908)
!2910 = !DILocation(line: 430, column: 27, scope: !2908)
!2911 = !DILocation(line: 430, column: 32, scope: !2908)
!2912 = !DILocation(line: 430, column: 24, scope: !2908)
!2913 = !DILocation(line: 430, column: 14, scope: !2900)
!2914 = !DILocation(line: 431, column: 9, scope: !2908)
!2915 = !DILocation(line: 433, column: 9, scope: !2908)
!2916 = !DILocation(line: 434, column: 1, scope: !2886)
!2917 = distinct !DISubprogram(name: "sort_gp_desc", scope: !1, file: !1, line: 436, type: !2624, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2918 = !DILocalVariable(name: "a", arg: 1, scope: !2917, file: !1, line: 436, type: !376)
!2919 = !DILocation(line: 436, column: 37, scope: !2917)
!2920 = !DILocalVariable(name: "b", arg: 2, scope: !2917, file: !1, line: 436, type: !376)
!2921 = !DILocation(line: 436, column: 52, scope: !2917)
!2922 = !DILocation(line: 437, column: 25, scope: !2917)
!2923 = !DILocation(line: 437, column: 28, scope: !2917)
!2924 = !DILocation(line: 437, column: 13, scope: !2917)
!2925 = !DILocation(line: 437, column: 12, scope: !2917)
!2926 = !DILocation(line: 437, column: 5, scope: !2917)
!2927 = distinct !DISubprogram(name: "sdslen", scope: !68, file: !68, line: 87, type: !2928, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!131, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!2931 = !DILocalVariable(name: "s", arg: 1, scope: !2927, file: !68, line: 87, type: !2930)
!2932 = !DILocation(line: 87, column: 39, scope: !2927)
!2933 = !DILocalVariable(name: "flags", scope: !2927, file: !68, line: 88, type: !73)
!2934 = !DILocation(line: 88, column: 19, scope: !2927)
!2935 = !DILocation(line: 88, column: 27, scope: !2927)
!2936 = !DILocation(line: 89, column: 12, scope: !2927)
!2937 = !DILocation(line: 89, column: 17, scope: !2927)
!2938 = !DILocation(line: 89, column: 5, scope: !2927)
!2939 = !DILocation(line: 91, column: 20, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2927, file: !68, line: 89, column: 33)
!2941 = !DILocation(line: 91, column: 13, scope: !2940)
!2942 = !DILocation(line: 93, column: 20, scope: !2940)
!2943 = !DILocation(line: 93, column: 34, scope: !2940)
!2944 = !DILocation(line: 93, column: 13, scope: !2940)
!2945 = !DILocation(line: 95, column: 20, scope: !2940)
!2946 = !DILocation(line: 95, column: 35, scope: !2940)
!2947 = !DILocation(line: 95, column: 13, scope: !2940)
!2948 = !DILocation(line: 97, column: 20, scope: !2940)
!2949 = !DILocation(line: 97, column: 35, scope: !2940)
!2950 = !DILocation(line: 97, column: 13, scope: !2940)
!2951 = !DILocation(line: 99, column: 20, scope: !2940)
!2952 = !DILocation(line: 99, column: 35, scope: !2940)
!2953 = !DILocation(line: 99, column: 13, scope: !2940)
!2954 = !DILocation(line: 101, column: 5, scope: !2927)
!2955 = !DILocation(line: 102, column: 1, scope: !2927)
!2956 = distinct !DISubprogram(name: "georadiusCommand", scope: !1, file: !1, line: 847, type: !598, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2957 = !DILocalVariable(name: "c", arg: 1, scope: !2956, file: !1, line: 847, type: !282)
!2958 = !DILocation(line: 847, column: 31, scope: !2956)
!2959 = !DILocation(line: 848, column: 22, scope: !2956)
!2960 = !DILocation(line: 848, column: 5, scope: !2956)
!2961 = !DILocation(line: 849, column: 1, scope: !2956)
!2962 = distinct !DISubprogram(name: "georadiusbymemberCommand", scope: !1, file: !1, line: 852, type: !598, scopeLine: 852, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2963 = !DILocalVariable(name: "c", arg: 1, scope: !2962, file: !1, line: 852, type: !282)
!2964 = !DILocation(line: 852, column: 39, scope: !2962)
!2965 = !DILocation(line: 853, column: 22, scope: !2962)
!2966 = !DILocation(line: 853, column: 5, scope: !2962)
!2967 = !DILocation(line: 854, column: 1, scope: !2962)
!2968 = distinct !DISubprogram(name: "georadiusroCommand", scope: !1, file: !1, line: 857, type: !598, scopeLine: 857, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2969 = !DILocalVariable(name: "c", arg: 1, scope: !2968, file: !1, line: 857, type: !282)
!2970 = !DILocation(line: 857, column: 33, scope: !2968)
!2971 = !DILocation(line: 858, column: 22, scope: !2968)
!2972 = !DILocation(line: 858, column: 5, scope: !2968)
!2973 = !DILocation(line: 859, column: 1, scope: !2968)
!2974 = distinct !DISubprogram(name: "georadiusbymemberroCommand", scope: !1, file: !1, line: 862, type: !598, scopeLine: 862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2975 = !DILocalVariable(name: "c", arg: 1, scope: !2974, file: !1, line: 862, type: !282)
!2976 = !DILocation(line: 862, column: 41, scope: !2974)
!2977 = !DILocation(line: 863, column: 22, scope: !2974)
!2978 = !DILocation(line: 863, column: 5, scope: !2974)
!2979 = !DILocation(line: 864, column: 1, scope: !2974)
!2980 = distinct !DISubprogram(name: "geosearchCommand", scope: !1, file: !1, line: 866, type: !598, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2981 = !DILocalVariable(name: "c", arg: 1, scope: !2980, file: !1, line: 866, type: !282)
!2982 = !DILocation(line: 866, column: 31, scope: !2980)
!2983 = !DILocation(line: 867, column: 22, scope: !2980)
!2984 = !DILocation(line: 867, column: 5, scope: !2980)
!2985 = !DILocation(line: 868, column: 1, scope: !2980)
!2986 = distinct !DISubprogram(name: "geosearchstoreCommand", scope: !1, file: !1, line: 870, type: !598, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2987 = !DILocalVariable(name: "c", arg: 1, scope: !2986, file: !1, line: 870, type: !282)
!2988 = !DILocation(line: 870, column: 36, scope: !2986)
!2989 = !DILocation(line: 871, column: 22, scope: !2986)
!2990 = !DILocation(line: 871, column: 5, scope: !2986)
!2991 = !DILocation(line: 872, column: 1, scope: !2986)
!2992 = distinct !DISubprogram(name: "geohashCommand", scope: !1, file: !1, line: 878, type: !598, scopeLine: 878, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!2993 = !DILocalVariable(name: "c", arg: 1, scope: !2992, file: !1, line: 878, type: !282)
!2994 = !DILocation(line: 878, column: 29, scope: !2992)
!2995 = !DILocalVariable(name: "geoalphabet", scope: !2992, file: !1, line: 879, type: !64)
!2996 = !DILocation(line: 879, column: 11, scope: !2992)
!2997 = !DILocalVariable(name: "j", scope: !2992, file: !1, line: 880, type: !260)
!2998 = !DILocation(line: 880, column: 9, scope: !2992)
!2999 = !DILocalVariable(name: "zobj", scope: !2992, file: !1, line: 883, type: !553)
!3000 = !DILocation(line: 883, column: 11, scope: !2992)
!3001 = !DILocation(line: 883, column: 32, scope: !2992)
!3002 = !DILocation(line: 883, column: 35, scope: !2992)
!3003 = !DILocation(line: 883, column: 39, scope: !2992)
!3004 = !DILocation(line: 883, column: 42, scope: !2992)
!3005 = !DILocation(line: 883, column: 18, scope: !2992)
!3006 = !DILocation(line: 884, column: 19, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2992, file: !1, line: 884, column: 9)
!3008 = !DILocation(line: 884, column: 22, scope: !3007)
!3009 = !DILocation(line: 884, column: 9, scope: !3007)
!3010 = !DILocation(line: 884, column: 9, scope: !2992)
!3011 = !DILocation(line: 884, column: 39, scope: !3007)
!3012 = !DILocation(line: 888, column: 22, scope: !2992)
!3013 = !DILocation(line: 888, column: 24, scope: !2992)
!3014 = !DILocation(line: 888, column: 27, scope: !2992)
!3015 = !DILocation(line: 888, column: 31, scope: !2992)
!3016 = !DILocation(line: 888, column: 5, scope: !2992)
!3017 = !DILocation(line: 889, column: 12, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2992, file: !1, line: 889, column: 5)
!3019 = !DILocation(line: 889, column: 10, scope: !3018)
!3020 = !DILocation(line: 889, column: 17, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !1, line: 889, column: 5)
!3022 = !DILocation(line: 889, column: 21, scope: !3021)
!3023 = !DILocation(line: 889, column: 24, scope: !3021)
!3024 = !DILocation(line: 889, column: 19, scope: !3021)
!3025 = !DILocation(line: 889, column: 5, scope: !3018)
!3026 = !DILocalVariable(name: "score", scope: !3027, file: !1, line: 890, type: !125)
!3027 = distinct !DILexicalBlock(scope: !3021, file: !1, line: 889, column: 35)
!3028 = !DILocation(line: 890, column: 16, scope: !3027)
!3029 = !DILocation(line: 891, column: 14, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3027, file: !1, line: 891, column: 13)
!3031 = !DILocation(line: 891, column: 19, scope: !3030)
!3032 = !DILocation(line: 891, column: 32, scope: !3030)
!3033 = !DILocation(line: 891, column: 38, scope: !3030)
!3034 = !DILocation(line: 891, column: 41, scope: !3030)
!3035 = !DILocation(line: 891, column: 46, scope: !3030)
!3036 = !DILocation(line: 891, column: 50, scope: !3030)
!3037 = !DILocation(line: 891, column: 22, scope: !3030)
!3038 = !DILocation(line: 891, column: 63, scope: !3030)
!3039 = !DILocation(line: 891, column: 13, scope: !3027)
!3040 = !DILocation(line: 892, column: 26, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 891, column: 73)
!3042 = !DILocation(line: 892, column: 13, scope: !3041)
!3043 = !DILocation(line: 893, column: 9, scope: !3041)
!3044 = !DILocalVariable(name: "xy", scope: !3045, file: !1, line: 901, type: !1156)
!3045 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 893, column: 16)
!3046 = !DILocation(line: 901, column: 20, scope: !3045)
!3047 = !DILocation(line: 902, column: 32, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !1, line: 902, column: 17)
!3049 = !DILocation(line: 902, column: 38, scope: !3048)
!3050 = !DILocation(line: 902, column: 18, scope: !3048)
!3051 = !DILocation(line: 902, column: 17, scope: !3045)
!3052 = !DILocation(line: 903, column: 30, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 902, column: 43)
!3054 = !DILocation(line: 903, column: 17, scope: !3053)
!3055 = !DILocation(line: 904, column: 17, scope: !3053)
!3056 = !DILocalVariable(name: "r", scope: !3045, file: !1, line: 908, type: !3057)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 256, elements: !501)
!3058 = !DILocation(line: 908, column: 26, scope: !3045)
!3059 = !DILocalVariable(name: "hash", scope: !3045, file: !1, line: 909, type: !266)
!3060 = !DILocation(line: 909, column: 25, scope: !3045)
!3061 = !DILocation(line: 910, column: 13, scope: !3045)
!3062 = !DILocation(line: 910, column: 18, scope: !3045)
!3063 = !DILocation(line: 910, column: 22, scope: !3045)
!3064 = !DILocation(line: 911, column: 13, scope: !3045)
!3065 = !DILocation(line: 911, column: 18, scope: !3045)
!3066 = !DILocation(line: 911, column: 22, scope: !3045)
!3067 = !DILocation(line: 912, column: 13, scope: !3045)
!3068 = !DILocation(line: 912, column: 18, scope: !3045)
!3069 = !DILocation(line: 912, column: 22, scope: !3045)
!3070 = !DILocation(line: 913, column: 13, scope: !3045)
!3071 = !DILocation(line: 913, column: 18, scope: !3045)
!3072 = !DILocation(line: 913, column: 22, scope: !3045)
!3073 = !DILocation(line: 914, column: 28, scope: !3045)
!3074 = !DILocation(line: 914, column: 34, scope: !3045)
!3075 = !DILocation(line: 914, column: 39, scope: !3045)
!3076 = !DILocation(line: 914, column: 45, scope: !3045)
!3077 = !DILocation(line: 914, column: 13, scope: !3045)
!3078 = !DILocalVariable(name: "buf", scope: !3045, file: !1, line: 916, type: !3079)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 96, elements: !3080)
!3080 = !{!3081}
!3081 = !DISubrange(count: 12)
!3082 = !DILocation(line: 916, column: 18, scope: !3045)
!3083 = !DILocalVariable(name: "i", scope: !3045, file: !1, line: 917, type: !260)
!3084 = !DILocation(line: 917, column: 17, scope: !3045)
!3085 = !DILocation(line: 918, column: 20, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3045, file: !1, line: 918, column: 13)
!3087 = !DILocation(line: 918, column: 18, scope: !3086)
!3088 = !DILocation(line: 918, column: 25, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !1, line: 918, column: 13)
!3090 = !DILocation(line: 918, column: 27, scope: !3089)
!3091 = !DILocation(line: 918, column: 13, scope: !3086)
!3092 = !DILocalVariable(name: "idx", scope: !3093, file: !1, line: 919, type: !260)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !1, line: 918, column: 38)
!3094 = !DILocation(line: 919, column: 21, scope: !3093)
!3095 = !DILocation(line: 920, column: 21, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !1, line: 920, column: 21)
!3097 = !DILocation(line: 920, column: 23, scope: !3096)
!3098 = !DILocation(line: 920, column: 21, scope: !3093)
!3099 = !DILocation(line: 924, column: 25, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 920, column: 30)
!3101 = !DILocation(line: 925, column: 17, scope: !3100)
!3102 = !DILocation(line: 926, column: 33, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 925, column: 24)
!3104 = !DILocation(line: 926, column: 47, scope: !3103)
!3105 = !DILocation(line: 926, column: 48, scope: !3103)
!3106 = !DILocation(line: 926, column: 51, scope: !3103)
!3107 = !DILocation(line: 926, column: 44, scope: !3103)
!3108 = !DILocation(line: 926, column: 38, scope: !3103)
!3109 = !DILocation(line: 926, column: 57, scope: !3103)
!3110 = !DILocation(line: 926, column: 27, scope: !3103)
!3111 = !DILocation(line: 926, column: 25, scope: !3103)
!3112 = !DILocation(line: 928, column: 26, scope: !3093)
!3113 = !DILocation(line: 928, column: 38, scope: !3093)
!3114 = !DILocation(line: 928, column: 21, scope: !3093)
!3115 = !DILocation(line: 928, column: 17, scope: !3093)
!3116 = !DILocation(line: 928, column: 24, scope: !3093)
!3117 = !DILocation(line: 929, column: 13, scope: !3093)
!3118 = !DILocation(line: 918, column: 34, scope: !3089)
!3119 = !DILocation(line: 918, column: 13, scope: !3089)
!3120 = distinct !{!3120, !3091, !3121, !250}
!3121 = !DILocation(line: 929, column: 13, scope: !3086)
!3122 = !DILocation(line: 930, column: 13, scope: !3045)
!3123 = !DILocation(line: 930, column: 21, scope: !3045)
!3124 = !DILocation(line: 931, column: 33, scope: !3045)
!3125 = !DILocation(line: 931, column: 35, scope: !3045)
!3126 = !DILocation(line: 931, column: 13, scope: !3045)
!3127 = !DILocation(line: 933, column: 5, scope: !3027)
!3128 = !DILocation(line: 889, column: 31, scope: !3021)
!3129 = !DILocation(line: 889, column: 5, scope: !3021)
!3130 = distinct !{!3130, !3025, !3131, !250}
!3131 = !DILocation(line: 933, column: 5, scope: !3018)
!3132 = !DILocation(line: 934, column: 1, scope: !2992)
!3133 = distinct !DISubprogram(name: "geoposCommand", scope: !1, file: !1, line: 940, type: !598, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!3134 = !DILocalVariable(name: "c", arg: 1, scope: !3133, file: !1, line: 940, type: !282)
!3135 = !DILocation(line: 940, column: 28, scope: !3133)
!3136 = !DILocalVariable(name: "j", scope: !3133, file: !1, line: 941, type: !260)
!3137 = !DILocation(line: 941, column: 9, scope: !3133)
!3138 = !DILocalVariable(name: "zobj", scope: !3133, file: !1, line: 944, type: !553)
!3139 = !DILocation(line: 944, column: 11, scope: !3133)
!3140 = !DILocation(line: 944, column: 32, scope: !3133)
!3141 = !DILocation(line: 944, column: 35, scope: !3133)
!3142 = !DILocation(line: 944, column: 39, scope: !3133)
!3143 = !DILocation(line: 944, column: 42, scope: !3133)
!3144 = !DILocation(line: 944, column: 18, scope: !3133)
!3145 = !DILocation(line: 945, column: 19, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3133, file: !1, line: 945, column: 9)
!3147 = !DILocation(line: 945, column: 22, scope: !3146)
!3148 = !DILocation(line: 945, column: 9, scope: !3146)
!3149 = !DILocation(line: 945, column: 9, scope: !3133)
!3150 = !DILocation(line: 945, column: 39, scope: !3146)
!3151 = !DILocation(line: 949, column: 22, scope: !3133)
!3152 = !DILocation(line: 949, column: 24, scope: !3133)
!3153 = !DILocation(line: 949, column: 27, scope: !3133)
!3154 = !DILocation(line: 949, column: 31, scope: !3133)
!3155 = !DILocation(line: 949, column: 5, scope: !3133)
!3156 = !DILocation(line: 950, column: 12, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3133, file: !1, line: 950, column: 5)
!3158 = !DILocation(line: 950, column: 10, scope: !3157)
!3159 = !DILocation(line: 950, column: 17, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !1, line: 950, column: 5)
!3161 = !DILocation(line: 950, column: 21, scope: !3160)
!3162 = !DILocation(line: 950, column: 24, scope: !3160)
!3163 = !DILocation(line: 950, column: 19, scope: !3160)
!3164 = !DILocation(line: 950, column: 5, scope: !3157)
!3165 = !DILocalVariable(name: "score", scope: !3166, file: !1, line: 951, type: !125)
!3166 = distinct !DILexicalBlock(scope: !3160, file: !1, line: 950, column: 35)
!3167 = !DILocation(line: 951, column: 16, scope: !3166)
!3168 = !DILocation(line: 952, column: 14, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 952, column: 13)
!3170 = !DILocation(line: 952, column: 19, scope: !3169)
!3171 = !DILocation(line: 952, column: 32, scope: !3169)
!3172 = !DILocation(line: 952, column: 38, scope: !3169)
!3173 = !DILocation(line: 952, column: 41, scope: !3169)
!3174 = !DILocation(line: 952, column: 46, scope: !3169)
!3175 = !DILocation(line: 952, column: 50, scope: !3169)
!3176 = !DILocation(line: 952, column: 22, scope: !3169)
!3177 = !DILocation(line: 952, column: 63, scope: !3169)
!3178 = !DILocation(line: 952, column: 13, scope: !3166)
!3179 = !DILocation(line: 953, column: 31, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 952, column: 73)
!3181 = !DILocation(line: 953, column: 13, scope: !3180)
!3182 = !DILocation(line: 954, column: 9, scope: !3180)
!3183 = !DILocalVariable(name: "xy", scope: !3184, file: !1, line: 956, type: !1156)
!3184 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 954, column: 16)
!3185 = !DILocation(line: 956, column: 20, scope: !3184)
!3186 = !DILocation(line: 957, column: 32, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 957, column: 17)
!3188 = !DILocation(line: 957, column: 38, scope: !3187)
!3189 = !DILocation(line: 957, column: 18, scope: !3187)
!3190 = !DILocation(line: 957, column: 17, scope: !3184)
!3191 = !DILocation(line: 958, column: 35, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !1, line: 957, column: 43)
!3193 = !DILocation(line: 958, column: 17, scope: !3192)
!3194 = !DILocation(line: 959, column: 17, scope: !3192)
!3195 = !DILocation(line: 961, column: 30, scope: !3184)
!3196 = !DILocation(line: 961, column: 13, scope: !3184)
!3197 = !DILocation(line: 962, column: 37, scope: !3184)
!3198 = !DILocation(line: 962, column: 39, scope: !3184)
!3199 = !DILocation(line: 962, column: 13, scope: !3184)
!3200 = !DILocation(line: 963, column: 37, scope: !3184)
!3201 = !DILocation(line: 963, column: 39, scope: !3184)
!3202 = !DILocation(line: 963, column: 13, scope: !3184)
!3203 = !DILocation(line: 965, column: 5, scope: !3166)
!3204 = !DILocation(line: 950, column: 31, scope: !3160)
!3205 = !DILocation(line: 950, column: 5, scope: !3160)
!3206 = distinct !{!3206, !3164, !3207, !250}
!3207 = !DILocation(line: 965, column: 5, scope: !3157)
!3208 = !DILocation(line: 966, column: 1, scope: !3133)
!3209 = distinct !DISubprogram(name: "geodistCommand", scope: !1, file: !1, line: 973, type: !598, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !134)
!3210 = !DILocalVariable(name: "c", arg: 1, scope: !3209, file: !1, line: 973, type: !282)
!3211 = !DILocation(line: 973, column: 29, scope: !3209)
!3212 = !DILocalVariable(name: "to_meter", scope: !3209, file: !1, line: 974, type: !125)
!3213 = !DILocation(line: 974, column: 12, scope: !3209)
!3214 = !DILocation(line: 977, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 977, column: 9)
!3216 = !DILocation(line: 977, column: 12, scope: !3215)
!3217 = !DILocation(line: 977, column: 17, scope: !3215)
!3218 = !DILocation(line: 977, column: 9, scope: !3209)
!3219 = !DILocation(line: 978, column: 39, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !1, line: 977, column: 23)
!3221 = !DILocation(line: 978, column: 41, scope: !3220)
!3222 = !DILocation(line: 978, column: 44, scope: !3220)
!3223 = !DILocation(line: 978, column: 20, scope: !3220)
!3224 = !DILocation(line: 978, column: 18, scope: !3220)
!3225 = !DILocation(line: 979, column: 13, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3220, file: !1, line: 979, column: 13)
!3227 = !DILocation(line: 979, column: 22, scope: !3226)
!3228 = !DILocation(line: 979, column: 13, scope: !3220)
!3229 = !DILocation(line: 979, column: 27, scope: !3226)
!3230 = !DILocation(line: 980, column: 5, scope: !3220)
!3231 = !DILocation(line: 980, column: 16, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3215, file: !1, line: 980, column: 16)
!3233 = !DILocation(line: 980, column: 19, scope: !3232)
!3234 = !DILocation(line: 980, column: 24, scope: !3232)
!3235 = !DILocation(line: 980, column: 16, scope: !3215)
!3236 = !DILocation(line: 981, column: 29, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 980, column: 29)
!3238 = !DILocation(line: 981, column: 38, scope: !3237)
!3239 = !DILocation(line: 981, column: 9, scope: !3237)
!3240 = !DILocation(line: 982, column: 9, scope: !3237)
!3241 = !DILocalVariable(name: "zobj", scope: !3209, file: !1, line: 986, type: !553)
!3242 = !DILocation(line: 986, column: 11, scope: !3209)
!3243 = !DILocation(line: 987, column: 38, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 987, column: 9)
!3245 = !DILocation(line: 987, column: 41, scope: !3244)
!3246 = !DILocation(line: 987, column: 44, scope: !3244)
!3247 = !DILocation(line: 987, column: 65, scope: !3244)
!3248 = !DILocation(line: 987, column: 68, scope: !3244)
!3249 = !DILocation(line: 987, column: 53, scope: !3244)
!3250 = !DILocation(line: 987, column: 17, scope: !3244)
!3251 = !DILocation(line: 987, column: 15, scope: !3244)
!3252 = !DILocation(line: 988, column: 9, scope: !3244)
!3253 = !DILocation(line: 988, column: 17, scope: !3244)
!3254 = !DILocation(line: 988, column: 30, scope: !3244)
!3255 = !DILocation(line: 988, column: 33, scope: !3244)
!3256 = !DILocation(line: 988, column: 20, scope: !3244)
!3257 = !DILocation(line: 987, column: 9, scope: !3209)
!3258 = !DILocation(line: 988, column: 50, scope: !3244)
!3259 = !DILocalVariable(name: "score1", scope: !3209, file: !1, line: 991, type: !125)
!3260 = !DILocation(line: 991, column: 12, scope: !3209)
!3261 = !DILocalVariable(name: "score2", scope: !3209, file: !1, line: 991, type: !125)
!3262 = !DILocation(line: 991, column: 20, scope: !3209)
!3263 = !DILocalVariable(name: "xyxy", scope: !3209, file: !1, line: 991, type: !1159)
!3264 = !DILocation(line: 991, column: 28, scope: !3209)
!3265 = !DILocation(line: 992, column: 19, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 992, column: 9)
!3267 = !DILocation(line: 992, column: 25, scope: !3266)
!3268 = !DILocation(line: 992, column: 28, scope: !3266)
!3269 = !DILocation(line: 992, column: 37, scope: !3266)
!3270 = !DILocation(line: 992, column: 9, scope: !3266)
!3271 = !DILocation(line: 992, column: 51, scope: !3266)
!3272 = !DILocation(line: 992, column: 60, scope: !3266)
!3273 = !DILocation(line: 993, column: 19, scope: !3266)
!3274 = !DILocation(line: 993, column: 25, scope: !3266)
!3275 = !DILocation(line: 993, column: 28, scope: !3266)
!3276 = !DILocation(line: 993, column: 37, scope: !3266)
!3277 = !DILocation(line: 993, column: 9, scope: !3266)
!3278 = !DILocation(line: 993, column: 51, scope: !3266)
!3279 = !DILocation(line: 992, column: 9, scope: !3209)
!3280 = !DILocation(line: 995, column: 22, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 994, column: 5)
!3282 = !DILocation(line: 995, column: 9, scope: !3281)
!3283 = !DILocation(line: 996, column: 9, scope: !3281)
!3284 = !DILocation(line: 1000, column: 24, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 1000, column: 9)
!3286 = !DILocation(line: 1000, column: 31, scope: !3285)
!3287 = !DILocation(line: 1000, column: 10, scope: !3285)
!3288 = !DILocation(line: 1000, column: 37, scope: !3285)
!3289 = !DILocation(line: 1000, column: 55, scope: !3285)
!3290 = !DILocation(line: 1000, column: 62, scope: !3285)
!3291 = !DILocation(line: 1000, column: 66, scope: !3285)
!3292 = !DILocation(line: 1000, column: 41, scope: !3285)
!3293 = !DILocation(line: 1000, column: 9, scope: !3209)
!3294 = !DILocation(line: 1001, column: 22, scope: !3285)
!3295 = !DILocation(line: 1001, column: 9, scope: !3285)
!3296 = !DILocation(line: 1003, column: 32, scope: !3285)
!3297 = !DILocation(line: 1004, column: 32, scope: !3285)
!3298 = !DILocation(line: 1004, column: 40, scope: !3285)
!3299 = !DILocation(line: 1004, column: 48, scope: !3285)
!3300 = !DILocation(line: 1004, column: 56, scope: !3285)
!3301 = !DILocation(line: 1004, column: 13, scope: !3285)
!3302 = !DILocation(line: 1004, column: 67, scope: !3285)
!3303 = !DILocation(line: 1004, column: 65, scope: !3285)
!3304 = !DILocation(line: 1003, column: 9, scope: !3285)
!3305 = !DILocation(line: 1005, column: 1, scope: !3209)
