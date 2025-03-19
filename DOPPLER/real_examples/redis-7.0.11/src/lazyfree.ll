; ModuleID = 'lazyfree.c'
source_filename = "lazyfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry*, [0 x i8*] }
%union.anon = type { i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.functionsLibCtx = type opaque
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i40, [0 x %struct.quicklistBookmark] }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.quicklistBookmark = type { %struct.quicklistNode*, i8* }
%struct.zset = type { %struct.dict*, %struct.zskiplist* }
%struct.zskiplist = type { %struct.zskiplistNode*, %struct.zskiplistNode*, i64, i32 }
%struct.zskiplistNode = type { i8*, double, %struct.zskiplistNode*, [0 x %struct.zskiplistLevel] }
%struct.zskiplistLevel = type { %struct.zskiplistNode*, i64 }
%struct.stream = type { %struct.rax*, i64, %struct.streamID, %struct.streamID, %struct.streamID, i64, %struct.rax* }
%struct.streamID = type { i64, i64 }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.streamCG = type { %struct.streamID, i64, %struct.rax*, %struct.rax* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, i64, %struct.list*, %struct.clusterSlotToKeyMapping* }
%struct.clusterSlotToKeyMapping = type opaque

@lazyfree_objects = internal global i64 0, align 8, !dbg !0
@lazyfreed_objects = internal global i64 0, align 8, !dbg !112
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"raxNext(&ri)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lazyfree.c\00", align 1
@dbDictType = external dso_local global %struct.dictType, align 8
@dbExpiresDictType = external dso_local global %struct.dictType, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyfreeFreeObject(i8** %args) #0 !dbg !121 {
entry:
  %args.addr = alloca i8**, align 8
  %o = alloca %struct.redisObject*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp1 = alloca i64, align 8
  %atomic-temp2 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata %struct.redisObject** %o, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !130
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !130
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !130
  %2 = bitcast i8* %1 to %struct.redisObject*, !dbg !131
  store %struct.redisObject* %2, %struct.redisObject** %o, align 8, !dbg !129
  %3 = load %struct.redisObject*, %struct.redisObject** %o, align 8, !dbg !132
  call void @decrRefCount(%struct.redisObject* %3), !dbg !133
  store i64 1, i64* %.atomictmp, align 8, !dbg !134
  %4 = load i64, i64* %.atomictmp, align 8, !dbg !134
  %5 = atomicrmw sub i64* @lazyfree_objects, i64 %4 monotonic, align 8, !dbg !134
  store i64 %5, i64* %atomic-temp, align 8, !dbg !134
  %6 = load i64, i64* %atomic-temp, align 8, !dbg !134
  store i64 1, i64* %.atomictmp1, align 8, !dbg !135
  %7 = load i64, i64* %.atomictmp1, align 8, !dbg !135
  %8 = atomicrmw add i64* @lazyfreed_objects, i64 %7 monotonic, align 8, !dbg !135
  store i64 %8, i64* %atomic-temp2, align 8, !dbg !135
  %9 = load i64, i64* %atomic-temp2, align 8, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @decrRefCount(%struct.redisObject*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyfreeFreeDatabase(i8** %args) #0 !dbg !137 {
entry:
  %args.addr = alloca i8**, align 8
  %ht1 = alloca %struct.dict*, align 8
  %ht2 = alloca %struct.dict*, align 8
  %numkeys = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp5 = alloca i64, align 8
  %atomic-temp6 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata %struct.dict** %ht1, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !142
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !142
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !142
  %2 = bitcast i8* %1 to %struct.dict*, !dbg !143
  store %struct.dict* %2, %struct.dict** %ht1, align 8, !dbg !141
  call void @llvm.dbg.declare(metadata %struct.dict** %ht2, metadata !144, metadata !DIExpression()), !dbg !145
  %3 = load i8**, i8*** %args.addr, align 8, !dbg !146
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !146
  %4 = load i8*, i8** %arrayidx1, align 8, !dbg !146
  %5 = bitcast i8* %4 to %struct.dict*, !dbg !147
  store %struct.dict* %5, %struct.dict** %ht2, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata i64* %numkeys, metadata !148, metadata !DIExpression()), !dbg !149
  %6 = load %struct.dict*, %struct.dict** %ht1, align 8, !dbg !150
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %6, i32 0, i32 2, !dbg !150
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !150
  %7 = load i64, i64* %arrayidx2, align 8, !dbg !150
  %8 = load %struct.dict*, %struct.dict** %ht1, align 8, !dbg !150
  %ht_used3 = getelementptr inbounds %struct.dict, %struct.dict* %8, i32 0, i32 2, !dbg !150
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used3, i64 0, i64 1, !dbg !150
  %9 = load i64, i64* %arrayidx4, align 8, !dbg !150
  %add = add i64 %7, %9, !dbg !150
  store i64 %add, i64* %numkeys, align 8, !dbg !149
  %10 = load %struct.dict*, %struct.dict** %ht1, align 8, !dbg !151
  call void @dictRelease(%struct.dict* %10), !dbg !152
  %11 = load %struct.dict*, %struct.dict** %ht2, align 8, !dbg !153
  call void @dictRelease(%struct.dict* %11), !dbg !154
  %12 = load i64, i64* %numkeys, align 8, !dbg !155
  store i64 %12, i64* %.atomictmp, align 8, !dbg !155
  %13 = load i64, i64* %.atomictmp, align 8, !dbg !155
  %14 = atomicrmw sub i64* @lazyfree_objects, i64 %13 monotonic, align 8, !dbg !155
  store i64 %14, i64* %atomic-temp, align 8, !dbg !155
  %15 = load i64, i64* %atomic-temp, align 8, !dbg !155
  %16 = load i64, i64* %numkeys, align 8, !dbg !156
  store i64 %16, i64* %.atomictmp5, align 8, !dbg !156
  %17 = load i64, i64* %.atomictmp5, align 8, !dbg !156
  %18 = atomicrmw add i64* @lazyfreed_objects, i64 %17 monotonic, align 8, !dbg !156
  store i64 %18, i64* %atomic-temp6, align 8, !dbg !156
  %19 = load i64, i64* %atomic-temp6, align 8, !dbg !156
  ret void, !dbg !157
}

declare dso_local void @dictRelease(%struct.dict*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyFreeTrackingTable(i8** %args) #0 !dbg !158 {
entry:
  %args.addr = alloca i8**, align 8
  %rt = alloca %struct.rax*, align 8
  %len = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp1 = alloca i64, align 8
  %atomic-temp2 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata %struct.rax** %rt, metadata !161, metadata !DIExpression()), !dbg !183
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !184
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !184
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !184
  %2 = bitcast i8* %1 to %struct.rax*, !dbg !184
  store %struct.rax* %2, %struct.rax** %rt, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i64* %len, metadata !185, metadata !DIExpression()), !dbg !186
  %3 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !187
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %3, i32 0, i32 1, !dbg !188
  %4 = load i64, i64* %numele, align 8, !dbg !188
  store i64 %4, i64* %len, align 8, !dbg !186
  %5 = load %struct.rax*, %struct.rax** %rt, align 8, !dbg !189
  call void @freeTrackingRadixTree(%struct.rax* %5), !dbg !190
  %6 = load i64, i64* %len, align 8, !dbg !191
  store i64 %6, i64* %.atomictmp, align 8, !dbg !191
  %7 = load i64, i64* %.atomictmp, align 8, !dbg !191
  %8 = atomicrmw sub i64* @lazyfree_objects, i64 %7 monotonic, align 8, !dbg !191
  store i64 %8, i64* %atomic-temp, align 8, !dbg !191
  %9 = load i64, i64* %atomic-temp, align 8, !dbg !191
  %10 = load i64, i64* %len, align 8, !dbg !192
  store i64 %10, i64* %.atomictmp1, align 8, !dbg !192
  %11 = load i64, i64* %.atomictmp1, align 8, !dbg !192
  %12 = atomicrmw add i64* @lazyfreed_objects, i64 %11 monotonic, align 8, !dbg !192
  store i64 %12, i64* %atomic-temp2, align 8, !dbg !192
  %13 = load i64, i64* %atomic-temp2, align 8, !dbg !192
  ret void, !dbg !193
}

declare dso_local void @freeTrackingRadixTree(%struct.rax*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyFreeLuaScripts(i8** %args) #0 !dbg !194 {
entry:
  %args.addr = alloca i8**, align 8
  %lua_scripts = alloca %struct.dict*, align 8
  %len = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp4 = alloca i64, align 8
  %atomic-temp5 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata %struct.dict** %lua_scripts, metadata !197, metadata !DIExpression()), !dbg !198
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !199
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !199
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !199
  %2 = bitcast i8* %1 to %struct.dict*, !dbg !199
  store %struct.dict* %2, %struct.dict** %lua_scripts, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata i64* %len, metadata !200, metadata !DIExpression()), !dbg !202
  %3 = load %struct.dict*, %struct.dict** %lua_scripts, align 8, !dbg !203
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %3, i32 0, i32 2, !dbg !203
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !203
  %4 = load i64, i64* %arrayidx1, align 8, !dbg !203
  %5 = load %struct.dict*, %struct.dict** %lua_scripts, align 8, !dbg !203
  %ht_used2 = getelementptr inbounds %struct.dict, %struct.dict* %5, i32 0, i32 2, !dbg !203
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used2, i64 0, i64 1, !dbg !203
  %6 = load i64, i64* %arrayidx3, align 8, !dbg !203
  %add = add i64 %4, %6, !dbg !203
  store i64 %add, i64* %len, align 8, !dbg !202
  %7 = load %struct.dict*, %struct.dict** %lua_scripts, align 8, !dbg !204
  call void @dictRelease(%struct.dict* %7), !dbg !205
  %8 = load i64, i64* %len, align 8, !dbg !206
  store i64 %8, i64* %.atomictmp, align 8, !dbg !206
  %9 = load i64, i64* %.atomictmp, align 8, !dbg !206
  %10 = atomicrmw sub i64* @lazyfree_objects, i64 %9 monotonic, align 8, !dbg !206
  store i64 %10, i64* %atomic-temp, align 8, !dbg !206
  %11 = load i64, i64* %atomic-temp, align 8, !dbg !206
  %12 = load i64, i64* %len, align 8, !dbg !207
  store i64 %12, i64* %.atomictmp4, align 8, !dbg !207
  %13 = load i64, i64* %.atomictmp4, align 8, !dbg !207
  %14 = atomicrmw add i64* @lazyfreed_objects, i64 %13 monotonic, align 8, !dbg !207
  store i64 %14, i64* %atomic-temp5, align 8, !dbg !207
  %15 = load i64, i64* %atomic-temp5, align 8, !dbg !207
  ret void, !dbg !208
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyFreeFunctionsCtx(i8** %args) #0 !dbg !209 {
entry:
  %args.addr = alloca i8**, align 8
  %functions_lib_ctx = alloca %struct.functionsLibCtx*, align 8
  %len = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp1 = alloca i64, align 8
  %atomic-temp2 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx, metadata !212, metadata !DIExpression()), !dbg !216
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !217
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !217
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !217
  %2 = bitcast i8* %1 to %struct.functionsLibCtx*, !dbg !217
  store %struct.functionsLibCtx* %2, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i64* %len, metadata !218, metadata !DIExpression()), !dbg !219
  %3 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !220
  %call = call i64 @functionsLibCtxfunctionsLen(%struct.functionsLibCtx* %3), !dbg !221
  store i64 %call, i64* %len, align 8, !dbg !219
  %4 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx, align 8, !dbg !222
  call void @functionsLibCtxFree(%struct.functionsLibCtx* %4), !dbg !223
  %5 = load i64, i64* %len, align 8, !dbg !224
  store i64 %5, i64* %.atomictmp, align 8, !dbg !224
  %6 = load i64, i64* %.atomictmp, align 8, !dbg !224
  %7 = atomicrmw sub i64* @lazyfree_objects, i64 %6 monotonic, align 8, !dbg !224
  store i64 %7, i64* %atomic-temp, align 8, !dbg !224
  %8 = load i64, i64* %atomic-temp, align 8, !dbg !224
  %9 = load i64, i64* %len, align 8, !dbg !225
  store i64 %9, i64* %.atomictmp1, align 8, !dbg !225
  %10 = load i64, i64* %.atomictmp1, align 8, !dbg !225
  %11 = atomicrmw add i64* @lazyfreed_objects, i64 %10 monotonic, align 8, !dbg !225
  store i64 %11, i64* %atomic-temp2, align 8, !dbg !225
  %12 = load i64, i64* %atomic-temp2, align 8, !dbg !225
  ret void, !dbg !226
}

declare dso_local i64 @functionsLibCtxfunctionsLen(%struct.functionsLibCtx*) #2

declare dso_local void @functionsLibCtxFree(%struct.functionsLibCtx*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyFreeReplicationBacklogRefMem(i8** %args) #0 !dbg !227 {
entry:
  %args.addr = alloca i8**, align 8
  %blocks = alloca %struct.list*, align 8
  %index = alloca %struct.rax*, align 8
  %len = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  %.atomictmp3 = alloca i64, align 8
  %atomic-temp4 = alloca i64, align 8
  store i8** %args, i8*** %args.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %args.addr, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.list** %blocks, metadata !230, metadata !DIExpression()), !dbg !259
  %0 = load i8**, i8*** %args.addr, align 8, !dbg !260
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !260
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !260
  %2 = bitcast i8* %1 to %struct.list*, !dbg !260
  store %struct.list* %2, %struct.list** %blocks, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata %struct.rax** %index, metadata !261, metadata !DIExpression()), !dbg !262
  %3 = load i8**, i8*** %args.addr, align 8, !dbg !263
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !263
  %4 = load i8*, i8** %arrayidx1, align 8, !dbg !263
  %5 = bitcast i8* %4 to %struct.rax*, !dbg !263
  store %struct.rax* %5, %struct.rax** %index, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i64* %len, metadata !264, metadata !DIExpression()), !dbg !265
  %6 = load %struct.list*, %struct.list** %blocks, align 8, !dbg !266
  %len2 = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 5, !dbg !266
  %7 = load i64, i64* %len2, align 8, !dbg !266
  store i64 %7, i64* %len, align 8, !dbg !265
  %8 = load %struct.rax*, %struct.rax** %index, align 8, !dbg !267
  %call = call i64 @raxSize(%struct.rax* %8), !dbg !268
  %9 = load i64, i64* %len, align 8, !dbg !269
  %add = add i64 %9, %call, !dbg !269
  store i64 %add, i64* %len, align 8, !dbg !269
  %10 = load %struct.list*, %struct.list** %blocks, align 8, !dbg !270
  call void @listRelease(%struct.list* %10), !dbg !271
  %11 = load %struct.rax*, %struct.rax** %index, align 8, !dbg !272
  call void @raxFree(%struct.rax* %11), !dbg !273
  %12 = load i64, i64* %len, align 8, !dbg !274
  store i64 %12, i64* %.atomictmp, align 8, !dbg !274
  %13 = load i64, i64* %.atomictmp, align 8, !dbg !274
  %14 = atomicrmw sub i64* @lazyfree_objects, i64 %13 monotonic, align 8, !dbg !274
  store i64 %14, i64* %atomic-temp, align 8, !dbg !274
  %15 = load i64, i64* %atomic-temp, align 8, !dbg !274
  %16 = load i64, i64* %len, align 8, !dbg !275
  store i64 %16, i64* %.atomictmp3, align 8, !dbg !275
  %17 = load i64, i64* %.atomictmp3, align 8, !dbg !275
  %18 = atomicrmw add i64* @lazyfreed_objects, i64 %17 monotonic, align 8, !dbg !275
  store i64 %18, i64* %atomic-temp4, align 8, !dbg !275
  %19 = load i64, i64* %atomic-temp4, align 8, !dbg !275
  ret void, !dbg !276
}

declare dso_local i64 @raxSize(%struct.rax*) #2

declare dso_local void @listRelease(%struct.list*) #2

declare dso_local void @raxFree(%struct.rax*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lazyfreeGetPendingObjectsCount() #0 !dbg !277 {
entry:
  %aux = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %aux, metadata !280, metadata !DIExpression()), !dbg !281
  br label %do.body, !dbg !282

do.body:                                          ; preds = %entry
  %0 = load atomic i64, i64* @lazyfree_objects monotonic, align 8, !dbg !283
  store i64 %0, i64* %atomic-temp, align 8, !dbg !283
  %1 = load i64, i64* %atomic-temp, align 8, !dbg !283
  store i64 %1, i64* %aux, align 8, !dbg !283
  br label %do.end, !dbg !283

do.end:                                           ; preds = %do.body
  %2 = load i64, i64* %aux, align 8, !dbg !285
  ret i64 %2, !dbg !286
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lazyfreeGetFreedObjectsCount() #0 !dbg !287 {
entry:
  %aux = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %aux, metadata !288, metadata !DIExpression()), !dbg !289
  br label %do.body, !dbg !290

do.body:                                          ; preds = %entry
  %0 = load atomic i64, i64* @lazyfreed_objects monotonic, align 8, !dbg !291
  store i64 %0, i64* %atomic-temp, align 8, !dbg !291
  %1 = load i64, i64* %atomic-temp, align 8, !dbg !291
  store i64 %1, i64* %aux, align 8, !dbg !291
  br label %do.end, !dbg !291

do.end:                                           ; preds = %do.body
  %2 = load i64, i64* %aux, align 8, !dbg !293
  ret i64 %2, !dbg !294
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lazyfreeResetStats() #0 !dbg !295 {
entry:
  %.atomictmp = alloca i64, align 8
  store i64 0, i64* %.atomictmp, align 8, !dbg !298
  %0 = load i64, i64* %.atomictmp, align 8, !dbg !298
  store atomic i64 %0, i64* @lazyfreed_objects monotonic, align 8, !dbg !298
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lazyfreeGetFreeEffort(%struct.redisObject* %key, %struct.redisObject* %obj, i32 %dbid) #0 !dbg !300 {
entry:
  %retval = alloca i64, align 8
  %key.addr = alloca %struct.redisObject*, align 8
  %obj.addr = alloca %struct.redisObject*, align 8
  %dbid.addr = alloca i32, align 4
  %ql = alloca %struct.quicklist*, align 8
  %ht = alloca %struct.dict*, align 8
  %zs = alloca %struct.zset*, align 8
  %ht32 = alloca %struct.dict*, align 8
  %effort = alloca i64, align 8
  %s = alloca %struct.stream*, align 8
  %ri = alloca %struct.raxIterator, align 8
  %cg = alloca %struct.streamCG*, align 8
  %effort64 = alloca i64, align 8
  store %struct.redisObject* %key, %struct.redisObject** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key.addr, metadata !303, metadata !DIExpression()), !dbg !304
  store %struct.redisObject* %obj, %struct.redisObject** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %obj.addr, metadata !305, metadata !DIExpression()), !dbg !306
  store i32 %dbid, i32* %dbid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dbid.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !309
  %1 = bitcast %struct.redisObject* %0 to i32*, !dbg !311
  %bf.load = load i32, i32* %1, align 8, !dbg !311
  %bf.clear = and i32 %bf.load, 15, !dbg !311
  %cmp = icmp eq i32 %bf.clear, 1, !dbg !312
  br i1 %cmp, label %if.then, label %if.else, !dbg !313

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.quicklist** %ql, metadata !314, metadata !DIExpression()), !dbg !354
  %2 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !355
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i32 0, i32 2, !dbg !356
  %3 = load i8*, i8** %ptr, align 8, !dbg !356
  %4 = bitcast i8* %3 to %struct.quicklist*, !dbg !355
  store %struct.quicklist* %4, %struct.quicklist** %ql, align 8, !dbg !354
  %5 = load %struct.quicklist*, %struct.quicklist** %ql, align 8, !dbg !357
  %len = getelementptr inbounds %struct.quicklist, %struct.quicklist* %5, i32 0, i32 3, !dbg !358
  %6 = load i64, i64* %len, align 8, !dbg !358
  store i64 %6, i64* %retval, align 8, !dbg !359
  br label %return, !dbg !359

if.else:                                          ; preds = %entry
  %7 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !360
  %8 = bitcast %struct.redisObject* %7 to i32*, !dbg !362
  %bf.load1 = load i32, i32* %8, align 8, !dbg !362
  %bf.clear2 = and i32 %bf.load1, 15, !dbg !362
  %cmp3 = icmp eq i32 %bf.clear2, 2, !dbg !363
  br i1 %cmp3, label %land.lhs.true, label %if.else11, !dbg !364

land.lhs.true:                                    ; preds = %if.else
  %9 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !365
  %10 = bitcast %struct.redisObject* %9 to i32*, !dbg !366
  %bf.load4 = load i32, i32* %10, align 8, !dbg !366
  %bf.lshr = lshr i32 %bf.load4, 4, !dbg !366
  %bf.clear5 = and i32 %bf.lshr, 15, !dbg !366
  %cmp6 = icmp eq i32 %bf.clear5, 2, !dbg !367
  br i1 %cmp6, label %if.then7, label %if.else11, !dbg !368

if.then7:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.dict** %ht, metadata !369, metadata !DIExpression()), !dbg !371
  %11 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !372
  %ptr8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i32 0, i32 2, !dbg !373
  %12 = load i8*, i8** %ptr8, align 8, !dbg !373
  %13 = bitcast i8* %12 to %struct.dict*, !dbg !372
  store %struct.dict* %13, %struct.dict** %ht, align 8, !dbg !371
  %14 = load %struct.dict*, %struct.dict** %ht, align 8, !dbg !374
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %14, i32 0, i32 2, !dbg !374
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !374
  %15 = load i64, i64* %arrayidx, align 8, !dbg !374
  %16 = load %struct.dict*, %struct.dict** %ht, align 8, !dbg !374
  %ht_used9 = getelementptr inbounds %struct.dict, %struct.dict* %16, i32 0, i32 2, !dbg !374
  %arrayidx10 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used9, i64 0, i64 1, !dbg !374
  %17 = load i64, i64* %arrayidx10, align 8, !dbg !374
  %add = add i64 %15, %17, !dbg !374
  store i64 %add, i64* %retval, align 8, !dbg !375
  br label %return, !dbg !375

if.else11:                                        ; preds = %land.lhs.true, %if.else
  %18 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !376
  %19 = bitcast %struct.redisObject* %18 to i32*, !dbg !378
  %bf.load12 = load i32, i32* %19, align 8, !dbg !378
  %bf.clear13 = and i32 %bf.load12, 15, !dbg !378
  %cmp14 = icmp eq i32 %bf.clear13, 3, !dbg !379
  br i1 %cmp14, label %land.lhs.true15, label %if.else22, !dbg !380

land.lhs.true15:                                  ; preds = %if.else11
  %20 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !381
  %21 = bitcast %struct.redisObject* %20 to i32*, !dbg !382
  %bf.load16 = load i32, i32* %21, align 8, !dbg !382
  %bf.lshr17 = lshr i32 %bf.load16, 4, !dbg !382
  %bf.clear18 = and i32 %bf.lshr17, 15, !dbg !382
  %cmp19 = icmp eq i32 %bf.clear18, 7, !dbg !383
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !384

if.then20:                                        ; preds = %land.lhs.true15
  call void @llvm.dbg.declare(metadata %struct.zset** %zs, metadata !385, metadata !DIExpression()), !dbg !415
  %22 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !416
  %ptr21 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i32 0, i32 2, !dbg !417
  %23 = load i8*, i8** %ptr21, align 8, !dbg !417
  %24 = bitcast i8* %23 to %struct.zset*, !dbg !416
  store %struct.zset* %24, %struct.zset** %zs, align 8, !dbg !415
  %25 = load %struct.zset*, %struct.zset** %zs, align 8, !dbg !418
  %zsl = getelementptr inbounds %struct.zset, %struct.zset* %25, i32 0, i32 1, !dbg !419
  %26 = load %struct.zskiplist*, %struct.zskiplist** %zsl, align 8, !dbg !419
  %length = getelementptr inbounds %struct.zskiplist, %struct.zskiplist* %26, i32 0, i32 2, !dbg !420
  %27 = load i64, i64* %length, align 8, !dbg !420
  store i64 %27, i64* %retval, align 8, !dbg !421
  br label %return, !dbg !421

if.else22:                                        ; preds = %land.lhs.true15, %if.else11
  %28 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !422
  %29 = bitcast %struct.redisObject* %28 to i32*, !dbg !424
  %bf.load23 = load i32, i32* %29, align 8, !dbg !424
  %bf.clear24 = and i32 %bf.load23, 15, !dbg !424
  %cmp25 = icmp eq i32 %bf.clear24, 4, !dbg !425
  br i1 %cmp25, label %land.lhs.true26, label %if.else39, !dbg !426

land.lhs.true26:                                  ; preds = %if.else22
  %30 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !427
  %31 = bitcast %struct.redisObject* %30 to i32*, !dbg !428
  %bf.load27 = load i32, i32* %31, align 8, !dbg !428
  %bf.lshr28 = lshr i32 %bf.load27, 4, !dbg !428
  %bf.clear29 = and i32 %bf.lshr28, 15, !dbg !428
  %cmp30 = icmp eq i32 %bf.clear29, 2, !dbg !429
  br i1 %cmp30, label %if.then31, label %if.else39, !dbg !430

if.then31:                                        ; preds = %land.lhs.true26
  call void @llvm.dbg.declare(metadata %struct.dict** %ht32, metadata !431, metadata !DIExpression()), !dbg !433
  %32 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !434
  %ptr33 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %32, i32 0, i32 2, !dbg !435
  %33 = load i8*, i8** %ptr33, align 8, !dbg !435
  %34 = bitcast i8* %33 to %struct.dict*, !dbg !434
  store %struct.dict* %34, %struct.dict** %ht32, align 8, !dbg !433
  %35 = load %struct.dict*, %struct.dict** %ht32, align 8, !dbg !436
  %ht_used34 = getelementptr inbounds %struct.dict, %struct.dict* %35, i32 0, i32 2, !dbg !436
  %arrayidx35 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used34, i64 0, i64 0, !dbg !436
  %36 = load i64, i64* %arrayidx35, align 8, !dbg !436
  %37 = load %struct.dict*, %struct.dict** %ht32, align 8, !dbg !436
  %ht_used36 = getelementptr inbounds %struct.dict, %struct.dict* %37, i32 0, i32 2, !dbg !436
  %arrayidx37 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used36, i64 0, i64 1, !dbg !436
  %38 = load i64, i64* %arrayidx37, align 8, !dbg !436
  %add38 = add i64 %36, %38, !dbg !436
  store i64 %add38, i64* %retval, align 8, !dbg !437
  br label %return, !dbg !437

if.else39:                                        ; preds = %land.lhs.true26, %if.else22
  %39 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !438
  %40 = bitcast %struct.redisObject* %39 to i32*, !dbg !440
  %bf.load40 = load i32, i32* %40, align 8, !dbg !440
  %bf.clear41 = and i32 %bf.load40, 15, !dbg !440
  %cmp42 = icmp eq i32 %bf.clear41, 6, !dbg !441
  br i1 %cmp42, label %if.then43, label %if.else59, !dbg !442

if.then43:                                        ; preds = %if.else39
  call void @llvm.dbg.declare(metadata i64* %effort, metadata !443, metadata !DIExpression()), !dbg !445
  store i64 0, i64* %effort, align 8, !dbg !445
  call void @llvm.dbg.declare(metadata %struct.stream** %s, metadata !446, metadata !DIExpression()), !dbg !464
  %41 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !465
  %ptr44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %41, i32 0, i32 2, !dbg !466
  %42 = load i8*, i8** %ptr44, align 8, !dbg !466
  %43 = bitcast i8* %42 to %struct.stream*, !dbg !465
  store %struct.stream* %43, %struct.stream** %s, align 8, !dbg !464
  %44 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !467
  %rax = getelementptr inbounds %struct.stream, %struct.stream* %44, i32 0, i32 0, !dbg !468
  %45 = load %struct.rax*, %struct.rax** %rax, align 8, !dbg !468
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %45, i32 0, i32 2, !dbg !469
  %46 = load i64, i64* %numnodes, align 8, !dbg !469
  %47 = load i64, i64* %effort, align 8, !dbg !470
  %add45 = add i64 %47, %46, !dbg !470
  store i64 %add45, i64* %effort, align 8, !dbg !470
  %48 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !471
  %cgroups = getelementptr inbounds %struct.stream, %struct.stream* %48, i32 0, i32 6, !dbg !473
  %49 = load %struct.rax*, %struct.rax** %cgroups, align 8, !dbg !473
  %tobool = icmp ne %struct.rax* %49, null, !dbg !471
  br i1 %tobool, label %land.lhs.true46, label %if.end, !dbg !474

land.lhs.true46:                                  ; preds = %if.then43
  %50 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !475
  %cgroups47 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 6, !dbg !476
  %51 = load %struct.rax*, %struct.rax** %cgroups47, align 8, !dbg !476
  %call = call i64 @raxSize(%struct.rax* %51), !dbg !477
  %tobool48 = icmp ne i64 %call, 0, !dbg !477
  br i1 %tobool48, label %if.then49, label %if.end, !dbg !478

if.then49:                                        ; preds = %land.lhs.true46
  call void @llvm.dbg.declare(metadata %struct.raxIterator* %ri, metadata !479, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata %struct.streamCG** %cg, metadata !514, metadata !DIExpression()), !dbg !523
  %52 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !524
  %cgroups50 = getelementptr inbounds %struct.stream, %struct.stream* %52, i32 0, i32 6, !dbg !525
  %53 = load %struct.rax*, %struct.rax** %cgroups50, align 8, !dbg !525
  call void @raxStart(%struct.raxIterator* %ri, %struct.rax* %53), !dbg !526
  %call51 = call i32 @raxSeek(%struct.raxIterator* %ri, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* null, i64 0), !dbg !527
  %call52 = call i32 @raxNext(%struct.raxIterator* %ri), !dbg !528
  %tobool53 = icmp ne i32 %call52, 0, !dbg !528
  br i1 %tobool53, label %cond.true, label %cond.false, !dbg !528

cond.true:                                        ; preds = %if.then49
  br label %cond.end, !dbg !528

cond.false:                                       ; preds = %if.then49
  call void @_serverAssert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 135), !dbg !528
  unreachable, !dbg !528

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !528

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %data = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %ri, i32 0, i32 3, !dbg !529
  %54 = load i8*, i8** %data, align 8, !dbg !529
  %55 = bitcast i8* %54 to %struct.streamCG*, !dbg !530
  store %struct.streamCG* %55, %struct.streamCG** %cg, align 8, !dbg !531
  %56 = load %struct.stream*, %struct.stream** %s, align 8, !dbg !532
  %cgroups54 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 6, !dbg !533
  %57 = load %struct.rax*, %struct.rax** %cgroups54, align 8, !dbg !533
  %call55 = call i64 @raxSize(%struct.rax* %57), !dbg !534
  %58 = load %struct.streamCG*, %struct.streamCG** %cg, align 8, !dbg !535
  %pel = getelementptr inbounds %struct.streamCG, %struct.streamCG* %58, i32 0, i32 2, !dbg !536
  %59 = load %struct.rax*, %struct.rax** %pel, align 8, !dbg !536
  %call56 = call i64 @raxSize(%struct.rax* %59), !dbg !537
  %add57 = add i64 1, %call56, !dbg !538
  %mul = mul i64 %call55, %add57, !dbg !539
  %60 = load i64, i64* %effort, align 8, !dbg !540
  %add58 = add i64 %60, %mul, !dbg !540
  store i64 %add58, i64* %effort, align 8, !dbg !540
  call void @raxStop(%struct.raxIterator* %ri), !dbg !541
  br label %if.end, !dbg !542

if.end:                                           ; preds = %cond.end, %land.lhs.true46, %if.then43
  %61 = load i64, i64* %effort, align 8, !dbg !543
  store i64 %61, i64* %retval, align 8, !dbg !544
  br label %return, !dbg !544

if.else59:                                        ; preds = %if.else39
  %62 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !545
  %63 = bitcast %struct.redisObject* %62 to i32*, !dbg !547
  %bf.load60 = load i32, i32* %63, align 8, !dbg !547
  %bf.clear61 = and i32 %bf.load60, 15, !dbg !547
  %cmp62 = icmp eq i32 %bf.clear61, 5, !dbg !548
  br i1 %cmp62, label %if.then63, label %if.else70, !dbg !549

if.then63:                                        ; preds = %if.else59
  call void @llvm.dbg.declare(metadata i64* %effort64, metadata !550, metadata !DIExpression()), !dbg !552
  %64 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !553
  %65 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !554
  %66 = load i32, i32* %dbid.addr, align 4, !dbg !555
  %call65 = call i64 @moduleGetFreeEffort(%struct.redisObject* %64, %struct.redisObject* %65, i32 %66), !dbg !556
  store i64 %call65, i64* %effort64, align 8, !dbg !552
  %67 = load i64, i64* %effort64, align 8, !dbg !557
  %cmp66 = icmp eq i64 %67, 0, !dbg !558
  br i1 %cmp66, label %cond.true67, label %cond.false68, !dbg !557

cond.true67:                                      ; preds = %if.then63
  br label %cond.end69, !dbg !557

cond.false68:                                     ; preds = %if.then63
  %68 = load i64, i64* %effort64, align 8, !dbg !559
  br label %cond.end69, !dbg !557

cond.end69:                                       ; preds = %cond.false68, %cond.true67
  %cond = phi i64 [ -1, %cond.true67 ], [ %68, %cond.false68 ], !dbg !557
  store i64 %cond, i64* %retval, align 8, !dbg !560
  br label %return, !dbg !560

if.else70:                                        ; preds = %if.else59
  store i64 1, i64* %retval, align 8, !dbg !561
  br label %return, !dbg !561

return:                                           ; preds = %if.else70, %cond.end69, %if.end, %if.then31, %if.then20, %if.then7, %if.then
  %69 = load i64, i64* %retval, align 8, !dbg !563
  ret i64 %69, !dbg !563
}

declare dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) #2

declare dso_local i32 @raxSeek(%struct.raxIterator*, i8*, i8*, i64) #2

declare dso_local i32 @raxNext(%struct.raxIterator*) #2

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

declare dso_local void @raxStop(%struct.raxIterator*) #2

declare dso_local i64 @moduleGetFreeEffort(%struct.redisObject*, %struct.redisObject*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeObjAsync(%struct.redisObject* %key, %struct.redisObject* %obj, i32 %dbid) #0 !dbg !564 {
entry:
  %key.addr = alloca %struct.redisObject*, align 8
  %obj.addr = alloca %struct.redisObject*, align 8
  %dbid.addr = alloca i32, align 4
  %free_effort = alloca i64, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.redisObject* %key, %struct.redisObject** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %key.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store %struct.redisObject* %obj, %struct.redisObject** %obj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisObject** %obj.addr, metadata !569, metadata !DIExpression()), !dbg !570
  store i32 %dbid, i32* %dbid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dbid.addr, metadata !571, metadata !DIExpression()), !dbg !572
  call void @llvm.dbg.declare(metadata i64* %free_effort, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load %struct.redisObject*, %struct.redisObject** %key.addr, align 8, !dbg !575
  %1 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !576
  %2 = load i32, i32* %dbid.addr, align 4, !dbg !577
  %call = call i64 @lazyfreeGetFreeEffort(%struct.redisObject* %0, %struct.redisObject* %1, i32 %2), !dbg !578
  store i64 %call, i64* %free_effort, align 8, !dbg !574
  %3 = load i64, i64* %free_effort, align 8, !dbg !579
  %cmp = icmp ugt i64 %3, 64, !dbg !581
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !582

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !583
  %refcount = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i32 0, i32 1, !dbg !584
  %5 = load i32, i32* %refcount, align 4, !dbg !584
  %cmp1 = icmp eq i32 %5, 1, !dbg !585
  br i1 %cmp1, label %if.then, label %if.else, !dbg !586

if.then:                                          ; preds = %land.lhs.true
  store i64 1, i64* %.atomictmp, align 8, !dbg !587
  %6 = load i64, i64* %.atomictmp, align 8, !dbg !587
  %7 = atomicrmw add i64* @lazyfree_objects, i64 %6 monotonic, align 8, !dbg !587
  store i64 %7, i64* %atomic-temp, align 8, !dbg !587
  %8 = load i64, i64* %atomic-temp, align 8, !dbg !587
  %9 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !589
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyfreeFreeObject, i32 1, %struct.redisObject* %9), !dbg !590
  br label %if.end, !dbg !591

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.redisObject*, %struct.redisObject** %obj.addr, align 8, !dbg !592
  call void @decrRefCount(%struct.redisObject* %10), !dbg !594
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !595
}

declare dso_local void @bioCreateLazyFreeJob(void (i8**)*, i32, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @emptyDbAsync(%struct.redisDb* %db) #0 !dbg !596 {
entry:
  %db.addr = alloca %struct.redisDb*, align 8
  %oldht1 = alloca %struct.dict*, align 8
  %oldht2 = alloca %struct.dict*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.redisDb* %db, %struct.redisDb** %db.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.redisDb** %db.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata %struct.dict** %oldht1, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !620
  %dict = getelementptr inbounds %struct.redisDb, %struct.redisDb* %0, i32 0, i32 0, !dbg !621
  %1 = load %struct.dict*, %struct.dict** %dict, align 8, !dbg !621
  store %struct.dict* %1, %struct.dict** %oldht1, align 8, !dbg !619
  call void @llvm.dbg.declare(metadata %struct.dict** %oldht2, metadata !622, metadata !DIExpression()), !dbg !623
  %2 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !624
  %expires = getelementptr inbounds %struct.redisDb, %struct.redisDb* %2, i32 0, i32 1, !dbg !625
  %3 = load %struct.dict*, %struct.dict** %expires, align 8, !dbg !625
  store %struct.dict* %3, %struct.dict** %oldht2, align 8, !dbg !623
  %call = call %struct.dict* @dictCreate(%struct.dictType* @dbDictType), !dbg !626
  %4 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !627
  %dict1 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %4, i32 0, i32 0, !dbg !628
  store %struct.dict* %call, %struct.dict** %dict1, align 8, !dbg !629
  %call2 = call %struct.dict* @dictCreate(%struct.dictType* @dbExpiresDictType), !dbg !630
  %5 = load %struct.redisDb*, %struct.redisDb** %db.addr, align 8, !dbg !631
  %expires3 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %5, i32 0, i32 1, !dbg !632
  store %struct.dict* %call2, %struct.dict** %expires3, align 8, !dbg !633
  %6 = load %struct.dict*, %struct.dict** %oldht1, align 8, !dbg !634
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %6, i32 0, i32 2, !dbg !634
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !634
  %7 = load i64, i64* %arrayidx, align 8, !dbg !634
  %8 = load %struct.dict*, %struct.dict** %oldht1, align 8, !dbg !634
  %ht_used4 = getelementptr inbounds %struct.dict, %struct.dict* %8, i32 0, i32 2, !dbg !634
  %arrayidx5 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used4, i64 0, i64 1, !dbg !634
  %9 = load i64, i64* %arrayidx5, align 8, !dbg !634
  %add = add i64 %7, %9, !dbg !634
  store i64 %add, i64* %.atomictmp, align 8, !dbg !634
  %10 = load i64, i64* %.atomictmp, align 8, !dbg !634
  %11 = atomicrmw add i64* @lazyfree_objects, i64 %10 monotonic, align 8, !dbg !634
  store i64 %11, i64* %atomic-temp, align 8, !dbg !634
  %12 = load i64, i64* %atomic-temp, align 8, !dbg !634
  %13 = load %struct.dict*, %struct.dict** %oldht1, align 8, !dbg !635
  %14 = load %struct.dict*, %struct.dict** %oldht2, align 8, !dbg !636
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyfreeFreeDatabase, i32 2, %struct.dict* %13, %struct.dict* %14), !dbg !637
  ret void, !dbg !638
}

declare dso_local %struct.dict* @dictCreate(%struct.dictType*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeTrackingRadixTreeAsync(%struct.rax* %tracking) #0 !dbg !639 {
entry:
  %tracking.addr = alloca %struct.rax*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.rax* %tracking, %struct.rax** %tracking.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %tracking.addr, metadata !642, metadata !DIExpression()), !dbg !643
  %0 = load %struct.rax*, %struct.rax** %tracking.addr, align 8, !dbg !644
  %numnodes = getelementptr inbounds %struct.rax, %struct.rax* %0, i32 0, i32 2, !dbg !646
  %1 = load i64, i64* %numnodes, align 8, !dbg !646
  %cmp = icmp ugt i64 %1, 64, !dbg !647
  br i1 %cmp, label %if.then, label %if.else, !dbg !648

if.then:                                          ; preds = %entry
  %2 = load %struct.rax*, %struct.rax** %tracking.addr, align 8, !dbg !649
  %numele = getelementptr inbounds %struct.rax, %struct.rax* %2, i32 0, i32 1, !dbg !649
  %3 = load i64, i64* %numele, align 8, !dbg !649
  store i64 %3, i64* %.atomictmp, align 8, !dbg !649
  %4 = load i64, i64* %.atomictmp, align 8, !dbg !649
  %5 = atomicrmw add i64* @lazyfree_objects, i64 %4 monotonic, align 8, !dbg !649
  store i64 %5, i64* %atomic-temp, align 8, !dbg !649
  %6 = load i64, i64* %atomic-temp, align 8, !dbg !649
  %7 = load %struct.rax*, %struct.rax** %tracking.addr, align 8, !dbg !651
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyFreeTrackingTable, i32 1, %struct.rax* %7), !dbg !652
  br label %if.end, !dbg !653

if.else:                                          ; preds = %entry
  %8 = load %struct.rax*, %struct.rax** %tracking.addr, align 8, !dbg !654
  call void @freeTrackingRadixTree(%struct.rax* %8), !dbg !656
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeLuaScriptsAsync(%struct.dict* %lua_scripts) #0 !dbg !658 {
entry:
  %lua_scripts.addr = alloca %struct.dict*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.dict* %lua_scripts, %struct.dict** %lua_scripts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dict** %lua_scripts.addr, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !663
  %ht_used = getelementptr inbounds %struct.dict, %struct.dict* %0, i32 0, i32 2, !dbg !663
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used, i64 0, i64 0, !dbg !663
  %1 = load i64, i64* %arrayidx, align 8, !dbg !663
  %2 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !663
  %ht_used1 = getelementptr inbounds %struct.dict, %struct.dict* %2, i32 0, i32 2, !dbg !663
  %arrayidx2 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used1, i64 0, i64 1, !dbg !663
  %3 = load i64, i64* %arrayidx2, align 8, !dbg !663
  %add = add i64 %1, %3, !dbg !663
  %cmp = icmp ugt i64 %add, 64, !dbg !665
  br i1 %cmp, label %if.then, label %if.else, !dbg !666

if.then:                                          ; preds = %entry
  %4 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !667
  %ht_used3 = getelementptr inbounds %struct.dict, %struct.dict* %4, i32 0, i32 2, !dbg !667
  %arrayidx4 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used3, i64 0, i64 0, !dbg !667
  %5 = load i64, i64* %arrayidx4, align 8, !dbg !667
  %6 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !667
  %ht_used5 = getelementptr inbounds %struct.dict, %struct.dict* %6, i32 0, i32 2, !dbg !667
  %arrayidx6 = getelementptr inbounds [2 x i64], [2 x i64]* %ht_used5, i64 0, i64 1, !dbg !667
  %7 = load i64, i64* %arrayidx6, align 8, !dbg !667
  %add7 = add i64 %5, %7, !dbg !667
  store i64 %add7, i64* %.atomictmp, align 8, !dbg !667
  %8 = load i64, i64* %.atomictmp, align 8, !dbg !667
  %9 = atomicrmw add i64* @lazyfree_objects, i64 %8 monotonic, align 8, !dbg !667
  store i64 %9, i64* %atomic-temp, align 8, !dbg !667
  %10 = load i64, i64* %atomic-temp, align 8, !dbg !667
  %11 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !669
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyFreeLuaScripts, i32 1, %struct.dict* %11), !dbg !670
  br label %if.end, !dbg !671

if.else:                                          ; preds = %entry
  %12 = load %struct.dict*, %struct.dict** %lua_scripts.addr, align 8, !dbg !672
  call void @dictRelease(%struct.dict* %12), !dbg !674
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeFunctionsAsync(%struct.functionsLibCtx* %functions_lib_ctx) #0 !dbg !676 {
entry:
  %functions_lib_ctx.addr = alloca %struct.functionsLibCtx*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.functionsLibCtx* %functions_lib_ctx, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.functionsLibCtx** %functions_lib_ctx.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !681
  %call = call i64 @functionsLibCtxfunctionsLen(%struct.functionsLibCtx* %0), !dbg !683
  %cmp = icmp ugt i64 %call, 64, !dbg !684
  br i1 %cmp, label %if.then, label %if.else, !dbg !685

if.then:                                          ; preds = %entry
  %1 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !686
  %call1 = call i64 @functionsLibCtxfunctionsLen(%struct.functionsLibCtx* %1), !dbg !686
  store i64 %call1, i64* %.atomictmp, align 8, !dbg !686
  %2 = load i64, i64* %.atomictmp, align 8, !dbg !686
  %3 = atomicrmw add i64* @lazyfree_objects, i64 %2 monotonic, align 8, !dbg !686
  store i64 %3, i64* %atomic-temp, align 8, !dbg !686
  %4 = load i64, i64* %atomic-temp, align 8, !dbg !686
  %5 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !688
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyFreeFunctionsCtx, i32 1, %struct.functionsLibCtx* %5), !dbg !689
  br label %if.end, !dbg !690

if.else:                                          ; preds = %entry
  %6 = load %struct.functionsLibCtx*, %struct.functionsLibCtx** %functions_lib_ctx.addr, align 8, !dbg !691
  call void @functionsLibCtxFree(%struct.functionsLibCtx* %6), !dbg !693
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeReplicationBacklogRefMemAsync(%struct.list* %blocks, %struct.rax* %index) #0 !dbg !695 {
entry:
  %blocks.addr = alloca %struct.list*, align 8
  %index.addr = alloca %struct.rax*, align 8
  %.atomictmp = alloca i64, align 8
  %atomic-temp = alloca i64, align 8
  store %struct.list* %blocks, %struct.list** %blocks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %blocks.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store %struct.rax* %index, %struct.rax** %index.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rax** %index.addr, metadata !700, metadata !DIExpression()), !dbg !701
  %0 = load %struct.list*, %struct.list** %blocks.addr, align 8, !dbg !702
  %len = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 5, !dbg !702
  %1 = load i64, i64* %len, align 8, !dbg !702
  %cmp = icmp ugt i64 %1, 64, !dbg !704
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !705

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rax*, %struct.rax** %index.addr, align 8, !dbg !706
  %call = call i64 @raxSize(%struct.rax* %2), !dbg !707
  %cmp1 = icmp ugt i64 %call, 64, !dbg !708
  br i1 %cmp1, label %if.then, label %if.else, !dbg !709

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.list*, %struct.list** %blocks.addr, align 8, !dbg !710
  %len2 = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 5, !dbg !710
  %4 = load i64, i64* %len2, align 8, !dbg !710
  %5 = load %struct.rax*, %struct.rax** %index.addr, align 8, !dbg !710
  %call3 = call i64 @raxSize(%struct.rax* %5), !dbg !710
  %add = add i64 %4, %call3, !dbg !710
  store i64 %add, i64* %.atomictmp, align 8, !dbg !710
  %6 = load i64, i64* %.atomictmp, align 8, !dbg !710
  %7 = atomicrmw add i64* @lazyfree_objects, i64 %6 monotonic, align 8, !dbg !710
  store i64 %7, i64* %atomic-temp, align 8, !dbg !710
  %8 = load i64, i64* %atomic-temp, align 8, !dbg !710
  %9 = load %struct.list*, %struct.list** %blocks.addr, align 8, !dbg !712
  %10 = load %struct.rax*, %struct.rax** %index.addr, align 8, !dbg !713
  call void (void (i8**)*, i32, ...) @bioCreateLazyFreeJob(void (i8**)* @lazyFreeReplicationBacklogRefMem, i32 2, %struct.list* %9, %struct.rax* %10), !dbg !714
  br label %if.end, !dbg !715

if.else:                                          ; preds = %lor.lhs.false
  %11 = load %struct.list*, %struct.list** %blocks.addr, align 8, !dbg !716
  call void @listRelease(%struct.list* %11), !dbg !718
  %12 = load %struct.rax*, %struct.rax** %index.addr, align 8, !dbg !719
  call void @raxFree(%struct.rax* %12), !dbg !720
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !721
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lazyfree_objects", scope: !2, file: !3, line: 6, type: !114, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lazyfree.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!15 = !{!16, !28}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !18, line: 862, baseType: !19)
!18 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !18, line: 854, size: 128, elements: !20)
!20 = !{!21, !22, !23, !24, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !18, line: 855, baseType: !7, size: 4, flags: DIFlagBitField, extraData: i64 0)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !19, file: !18, line: 856, baseType: !7, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !19, file: !18, line: 857, baseType: !7, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !19, file: !18, line: 860, baseType: !25, size: 32, offset: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !19, file: !18, line: 861, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !30, line: 61, baseType: !31)
!30 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !30, line: 79, size: 448, elements: !32)
!32 = !{!33, !74, !101, !103, !104, !108}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !30, line: 80, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !30, line: 74, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !30, line: 63, size: 512, elements: !37)
!37 = !{!38, !49, !53, !54, !58, !62, !63, !70}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !36, file: !30, line: 64, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !43, line: 27, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !45, line: 45, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !36, file: !30, line: 65, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!27, !28, !47}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !36, file: !30, line: 66, baseType: !50, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !36, file: !30, line: 67, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!25, !28, !47, !47}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !36, file: !30, line: 68, baseType: !59, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !28, !27}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !36, file: !30, line: 69, baseType: !59, size: 64, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !36, file: !30, line: 70, baseType: !64, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!25, !67, !69}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 46, baseType: !46)
!68 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!69 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !36, file: !30, line: 73, baseType: !71, size: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!67, !28}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !31, file: !30, line: 82, baseType: !75, size: 128, offset: 64)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !99)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !30, line: 59, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !30, line: 47, size: 192, elements: !80)
!80 = !{!81, !82, !93, !95}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !79, file: !30, line: 48, baseType: !27, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !79, file: !30, line: 54, baseType: !83, size: 64, offset: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !30, line: 49, size: 64, elements: !84)
!84 = !{!85, !86, !87, !92}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !83, file: !30, line: 50, baseType: !27, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !83, file: !30, line: 51, baseType: !42, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !83, file: !30, line: 52, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !89, line: 27, baseType: !90)
!89 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !45, line: 44, baseType: !91)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !83, file: !30, line: 53, baseType: !69, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !30, line: 55, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !79, file: !30, line: 56, baseType: !96, offset: 192)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: -1)
!99 = !{!100}
!100 = !DISubrange(count: 2)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !31, file: !30, line: 83, baseType: !102, size: 128, offset: 192)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !99)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !31, file: !30, line: 85, baseType: !91, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !31, file: !30, line: 88, baseType: !105, size: 16, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !89, line: 25, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !45, line: 39, baseType: !107)
!107 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !31, file: !30, line: 89, baseType: !109, size: 16, offset: 400)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 16, elements: !99)
!110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!111 = !{!0, !112}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "lazyfreed_objects", scope: !2, file: !3, line: 7, type: !114, isLocal: true, isDefinition: true)
!114 = !DIDerivedType(tag: DW_TAG_atomic_type, baseType: !67)
!115 = !{i32 7, !"Dwarf Version", i32 4}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!121 = distinct !DISubprogram(name: "lazyfreeFreeObject", scope: !3, file: !3, line: 11, type: !122, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!125 = !{}
!126 = !DILocalVariable(name: "args", arg: 1, scope: !121, file: !3, line: 11, type: !124)
!127 = !DILocation(line: 11, column: 31, scope: !121)
!128 = !DILocalVariable(name: "o", scope: !121, file: !3, line: 12, type: !16)
!129 = !DILocation(line: 12, column: 11, scope: !121)
!130 = !DILocation(line: 12, column: 24, scope: !121)
!131 = !DILocation(line: 12, column: 15, scope: !121)
!132 = !DILocation(line: 13, column: 18, scope: !121)
!133 = !DILocation(line: 13, column: 5, scope: !121)
!134 = !DILocation(line: 14, column: 5, scope: !121)
!135 = !DILocation(line: 15, column: 5, scope: !121)
!136 = !DILocation(line: 16, column: 1, scope: !121)
!137 = distinct !DISubprogram(name: "lazyfreeFreeDatabase", scope: !3, file: !3, line: 21, type: !122, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!138 = !DILocalVariable(name: "args", arg: 1, scope: !137, file: !3, line: 21, type: !124)
!139 = !DILocation(line: 21, column: 33, scope: !137)
!140 = !DILocalVariable(name: "ht1", scope: !137, file: !3, line: 22, type: !28)
!141 = !DILocation(line: 22, column: 11, scope: !137)
!142 = !DILocation(line: 22, column: 26, scope: !137)
!143 = !DILocation(line: 22, column: 17, scope: !137)
!144 = !DILocalVariable(name: "ht2", scope: !137, file: !3, line: 23, type: !28)
!145 = !DILocation(line: 23, column: 11, scope: !137)
!146 = !DILocation(line: 23, column: 26, scope: !137)
!147 = !DILocation(line: 23, column: 17, scope: !137)
!148 = !DILocalVariable(name: "numkeys", scope: !137, file: !3, line: 25, type: !67)
!149 = !DILocation(line: 25, column: 12, scope: !137)
!150 = !DILocation(line: 25, column: 22, scope: !137)
!151 = !DILocation(line: 26, column: 17, scope: !137)
!152 = !DILocation(line: 26, column: 5, scope: !137)
!153 = !DILocation(line: 27, column: 17, scope: !137)
!154 = !DILocation(line: 27, column: 5, scope: !137)
!155 = !DILocation(line: 28, column: 5, scope: !137)
!156 = !DILocation(line: 29, column: 5, scope: !137)
!157 = !DILocation(line: 30, column: 1, scope: !137)
!158 = distinct !DISubprogram(name: "lazyFreeTrackingTable", scope: !3, file: !3, line: 33, type: !122, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!159 = !DILocalVariable(name: "args", arg: 1, scope: !158, file: !3, line: 33, type: !124)
!160 = !DILocation(line: 33, column: 34, scope: !158)
!161 = !DILocalVariable(name: "rt", scope: !158, file: !3, line: 34, type: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !164, line: 137, baseType: !165)
!164 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !164, line: 133, size: 192, elements: !166)
!166 = !{!167, !181, !182}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !165, file: !164, line: 134, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !164, line: 131, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !164, line: 98, size: 32, elements: !171)
!171 = !{!172, !175, !176, !177, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !170, file: !164, line: 99, baseType: !173, size: 1, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !43, line: 26, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !45, line: 42, baseType: !7)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !170, file: !164, line: 100, baseType: !173, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !170, file: !164, line: 101, baseType: !173, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !164, line: 102, baseType: !173, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !170, file: !164, line: 130, baseType: !179, offset: 32)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !97)
!180 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !165, file: !164, line: 135, baseType: !42, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !165, file: !164, line: 136, baseType: !42, size: 64, offset: 128)
!183 = !DILocation(line: 34, column: 10, scope: !158)
!184 = !DILocation(line: 34, column: 15, scope: !158)
!185 = !DILocalVariable(name: "len", scope: !158, file: !3, line: 35, type: !67)
!186 = !DILocation(line: 35, column: 12, scope: !158)
!187 = !DILocation(line: 35, column: 18, scope: !158)
!188 = !DILocation(line: 35, column: 22, scope: !158)
!189 = !DILocation(line: 36, column: 27, scope: !158)
!190 = !DILocation(line: 36, column: 5, scope: !158)
!191 = !DILocation(line: 37, column: 5, scope: !158)
!192 = !DILocation(line: 38, column: 5, scope: !158)
!193 = !DILocation(line: 39, column: 1, scope: !158)
!194 = distinct !DISubprogram(name: "lazyFreeLuaScripts", scope: !3, file: !3, line: 42, type: !122, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!195 = !DILocalVariable(name: "args", arg: 1, scope: !194, file: !3, line: 42, type: !124)
!196 = !DILocation(line: 42, column: 31, scope: !194)
!197 = !DILocalVariable(name: "lua_scripts", scope: !194, file: !3, line: 43, type: !28)
!198 = !DILocation(line: 43, column: 11, scope: !194)
!199 = !DILocation(line: 43, column: 25, scope: !194)
!200 = !DILocalVariable(name: "len", scope: !194, file: !3, line: 44, type: !201)
!201 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!202 = !DILocation(line: 44, column: 15, scope: !194)
!203 = !DILocation(line: 44, column: 21, scope: !194)
!204 = !DILocation(line: 45, column: 17, scope: !194)
!205 = !DILocation(line: 45, column: 5, scope: !194)
!206 = !DILocation(line: 46, column: 5, scope: !194)
!207 = !DILocation(line: 47, column: 5, scope: !194)
!208 = !DILocation(line: 48, column: 1, scope: !194)
!209 = distinct !DISubprogram(name: "lazyFreeFunctionsCtx", scope: !3, file: !3, line: 51, type: !122, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!210 = !DILocalVariable(name: "args", arg: 1, scope: !209, file: !3, line: 51, type: !124)
!211 = !DILocation(line: 51, column: 33, scope: !209)
!212 = !DILocalVariable(name: "functions_lib_ctx", scope: !209, file: !3, line: 52, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "functionsLibCtx", file: !18, line: 936, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "functionsLibCtx", file: !18, line: 936, flags: DIFlagFwdDecl)
!216 = !DILocation(line: 52, column: 22, scope: !209)
!217 = !DILocation(line: 52, column: 42, scope: !209)
!218 = !DILocalVariable(name: "len", scope: !209, file: !3, line: 53, type: !67)
!219 = !DILocation(line: 53, column: 12, scope: !209)
!220 = !DILocation(line: 53, column: 46, scope: !209)
!221 = !DILocation(line: 53, column: 18, scope: !209)
!222 = !DILocation(line: 54, column: 25, scope: !209)
!223 = !DILocation(line: 54, column: 5, scope: !209)
!224 = !DILocation(line: 55, column: 5, scope: !209)
!225 = !DILocation(line: 56, column: 5, scope: !209)
!226 = !DILocation(line: 57, column: 1, scope: !209)
!227 = distinct !DISubprogram(name: "lazyFreeReplicationBacklogRefMem", scope: !3, file: !3, line: 60, type: !122, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!228 = !DILocalVariable(name: "args", arg: 1, scope: !227, file: !3, line: 60, type: !124)
!229 = !DILocation(line: 60, column: 45, scope: !227)
!230 = !DILocalVariable(name: "blocks", scope: !227, file: !3, line: 61, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !233, line: 54, baseType: !234)
!233 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !233, line: 47, size: 384, elements: !235)
!235 = !{!236, !245, !246, !250, !254, !258}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !234, file: !233, line: 48, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !233, line: 40, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !233, line: 36, size: 192, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !239, file: !233, line: 37, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !233, line: 38, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !239, file: !233, line: 39, baseType: !27, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !233, line: 49, baseType: !237, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !234, file: !233, line: 50, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!27, !27}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !234, file: !233, line: 51, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !27}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !234, file: !233, line: 52, baseType: !255, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!25, !27, !27}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !234, file: !233, line: 53, baseType: !46, size: 64, offset: 320)
!259 = !DILocation(line: 61, column: 11, scope: !227)
!260 = !DILocation(line: 61, column: 20, scope: !227)
!261 = !DILocalVariable(name: "index", scope: !227, file: !3, line: 62, type: !162)
!262 = !DILocation(line: 62, column: 10, scope: !227)
!263 = !DILocation(line: 62, column: 18, scope: !227)
!264 = !DILocalVariable(name: "len", scope: !227, file: !3, line: 63, type: !201)
!265 = !DILocation(line: 63, column: 15, scope: !227)
!266 = !DILocation(line: 63, column: 21, scope: !227)
!267 = !DILocation(line: 64, column: 20, scope: !227)
!268 = !DILocation(line: 64, column: 12, scope: !227)
!269 = !DILocation(line: 64, column: 9, scope: !227)
!270 = !DILocation(line: 65, column: 17, scope: !227)
!271 = !DILocation(line: 65, column: 5, scope: !227)
!272 = !DILocation(line: 66, column: 13, scope: !227)
!273 = !DILocation(line: 66, column: 5, scope: !227)
!274 = !DILocation(line: 67, column: 5, scope: !227)
!275 = !DILocation(line: 68, column: 5, scope: !227)
!276 = !DILocation(line: 69, column: 1, scope: !227)
!277 = distinct !DISubprogram(name: "lazyfreeGetPendingObjectsCount", scope: !3, file: !3, line: 72, type: !278, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!278 = !DISubroutineType(types: !279)
!279 = !{!67}
!280 = !DILocalVariable(name: "aux", scope: !277, file: !3, line: 73, type: !67)
!281 = !DILocation(line: 73, column: 12, scope: !277)
!282 = !DILocation(line: 74, column: 5, scope: !277)
!283 = !DILocation(line: 74, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !277, file: !3, line: 74, column: 5)
!285 = !DILocation(line: 75, column: 12, scope: !277)
!286 = !DILocation(line: 75, column: 5, scope: !277)
!287 = distinct !DISubprogram(name: "lazyfreeGetFreedObjectsCount", scope: !3, file: !3, line: 79, type: !278, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!288 = !DILocalVariable(name: "aux", scope: !287, file: !3, line: 80, type: !67)
!289 = !DILocation(line: 80, column: 12, scope: !287)
!290 = !DILocation(line: 81, column: 5, scope: !287)
!291 = !DILocation(line: 81, column: 5, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !3, line: 81, column: 5)
!293 = !DILocation(line: 82, column: 12, scope: !287)
!294 = !DILocation(line: 82, column: 5, scope: !287)
!295 = distinct !DISubprogram(name: "lazyfreeResetStats", scope: !3, file: !3, line: 85, type: !296, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!296 = !DISubroutineType(types: !297)
!297 = !{null}
!298 = !DILocation(line: 86, column: 5, scope: !295)
!299 = !DILocation(line: 87, column: 1, scope: !295)
!300 = distinct !DISubprogram(name: "lazyfreeGetFreeEffort", scope: !3, file: !3, line: 104, type: !301, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!301 = !DISubroutineType(types: !302)
!302 = !{!67, !16, !16, !25}
!303 = !DILocalVariable(name: "key", arg: 1, scope: !300, file: !3, line: 104, type: !16)
!304 = !DILocation(line: 104, column: 36, scope: !300)
!305 = !DILocalVariable(name: "obj", arg: 2, scope: !300, file: !3, line: 104, type: !16)
!306 = !DILocation(line: 104, column: 47, scope: !300)
!307 = !DILocalVariable(name: "dbid", arg: 3, scope: !300, file: !3, line: 104, type: !25)
!308 = !DILocation(line: 104, column: 56, scope: !300)
!309 = !DILocation(line: 105, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !300, file: !3, line: 105, column: 9)
!311 = !DILocation(line: 105, column: 14, scope: !310)
!312 = !DILocation(line: 105, column: 19, scope: !310)
!313 = !DILocation(line: 105, column: 9, scope: !300)
!314 = !DILocalVariable(name: "ql", scope: !315, file: !3, line: 106, type: !316)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 105, column: 32)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !318, line: 115, baseType: !319)
!318 = !DIFile(filename: "./quicklist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !318, line: 106, size: 320, elements: !320)
!320 = !{!321, !339, !340, !341, !342, !343, !344, !345}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !319, file: !318, line: 107, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !318, line: 58, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !318, line: 46, size: 320, elements: !325)
!325 = !{!326, !328, !329, !331, !332, !333, !334, !335, !336, !337, !338}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !324, file: !318, line: 47, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !318, line: 48, baseType: !327, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !324, file: !318, line: 49, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !324, file: !318, line: 50, baseType: !67, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !318, line: 51, baseType: !7, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !324, file: !318, line: 52, baseType: !7, size: 2, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !324, file: !318, line: 53, baseType: !7, size: 2, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !324, file: !318, line: 54, baseType: !7, size: 1, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !324, file: !318, line: 55, baseType: !7, size: 1, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dont_compress", scope: !324, file: !318, line: 56, baseType: !7, size: 1, offset: 278, flags: DIFlagBitField, extraData: i64 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !324, file: !318, line: 57, baseType: !7, size: 9, offset: 279, flags: DIFlagBitField, extraData: i64 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !319, file: !318, line: 108, baseType: !322, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !319, file: !318, line: 109, baseType: !46, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !319, file: !318, line: 110, baseType: !46, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !319, file: !318, line: 111, baseType: !25, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !319, file: !318, line: 112, baseType: !7, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "bookmark_count", scope: !319, file: !318, line: 113, baseType: !7, size: 4, offset: 288, flags: DIFlagBitField, extraData: i64 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bookmarks", scope: !319, file: !318, line: 114, baseType: !346, offset: 320)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !97)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistBookmark", file: !318, line: 81, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistBookmark", file: !318, line: 78, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !348, file: !318, line: 79, baseType: !322, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !318, line: 80, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!354 = !DILocation(line: 106, column: 20, scope: !315)
!355 = !DILocation(line: 106, column: 25, scope: !315)
!356 = !DILocation(line: 106, column: 30, scope: !315)
!357 = !DILocation(line: 107, column: 16, scope: !315)
!358 = !DILocation(line: 107, column: 20, scope: !315)
!359 = !DILocation(line: 107, column: 9, scope: !315)
!360 = !DILocation(line: 108, column: 16, scope: !361)
!361 = distinct !DILexicalBlock(scope: !310, file: !3, line: 108, column: 16)
!362 = !DILocation(line: 108, column: 21, scope: !361)
!363 = !DILocation(line: 108, column: 26, scope: !361)
!364 = !DILocation(line: 108, column: 37, scope: !361)
!365 = !DILocation(line: 108, column: 40, scope: !361)
!366 = !DILocation(line: 108, column: 45, scope: !361)
!367 = !DILocation(line: 108, column: 54, scope: !361)
!368 = !DILocation(line: 108, column: 16, scope: !310)
!369 = !DILocalVariable(name: "ht", scope: !370, file: !3, line: 109, type: !28)
!370 = distinct !DILexicalBlock(scope: !361, file: !3, line: 108, column: 74)
!371 = !DILocation(line: 109, column: 15, scope: !370)
!372 = !DILocation(line: 109, column: 20, scope: !370)
!373 = !DILocation(line: 109, column: 25, scope: !370)
!374 = !DILocation(line: 110, column: 16, scope: !370)
!375 = !DILocation(line: 110, column: 9, scope: !370)
!376 = !DILocation(line: 111, column: 16, scope: !377)
!377 = distinct !DILexicalBlock(scope: !361, file: !3, line: 111, column: 16)
!378 = !DILocation(line: 111, column: 21, scope: !377)
!379 = !DILocation(line: 111, column: 26, scope: !377)
!380 = !DILocation(line: 111, column: 38, scope: !377)
!381 = !DILocation(line: 111, column: 41, scope: !377)
!382 = !DILocation(line: 111, column: 46, scope: !377)
!383 = !DILocation(line: 111, column: 55, scope: !377)
!384 = !DILocation(line: 111, column: 16, scope: !361)
!385 = !DILocalVariable(name: "zs", scope: !386, file: !3, line: 112, type: !387)
!386 = distinct !DILexicalBlock(scope: !377, file: !3, line: 111, column: 80)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "zset", file: !18, line: 1270, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zset", file: !18, line: 1267, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !389, file: !18, line: 1268, baseType: !28, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "zsl", scope: !389, file: !18, line: 1269, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "zskiplist", file: !18, line: 1265, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplist", file: !18, line: 1261, size: 256, elements: !396)
!396 = !{!397, !412, !413, !414}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !395, file: !18, line: 1262, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistNode", file: !18, line: 1251, size: 192, elements: !400)
!400 = !{!401, !404, !405, !406}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ele", scope: !399, file: !18, line: 1252, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !403, line: 43, baseType: !352)
!403 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "score", scope: !399, file: !18, line: 1253, baseType: !69, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "backward", scope: !399, file: !18, line: 1254, baseType: !398, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !399, file: !18, line: 1258, baseType: !407, offset: 192)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, elements: !97)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zskiplistLevel", file: !18, line: 1255, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !408, file: !18, line: 1256, baseType: !398, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "span", scope: !408, file: !18, line: 1257, baseType: !46, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !395, file: !18, line: 1262, baseType: !398, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !395, file: !18, line: 1263, baseType: !46, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !395, file: !18, line: 1264, baseType: !25, size: 32, offset: 192)
!415 = !DILocation(line: 112, column: 15, scope: !386)
!416 = !DILocation(line: 112, column: 20, scope: !386)
!417 = !DILocation(line: 112, column: 25, scope: !386)
!418 = !DILocation(line: 113, column: 16, scope: !386)
!419 = !DILocation(line: 113, column: 20, scope: !386)
!420 = !DILocation(line: 113, column: 25, scope: !386)
!421 = !DILocation(line: 113, column: 9, scope: !386)
!422 = !DILocation(line: 114, column: 16, scope: !423)
!423 = distinct !DILexicalBlock(scope: !377, file: !3, line: 114, column: 16)
!424 = !DILocation(line: 114, column: 21, scope: !423)
!425 = !DILocation(line: 114, column: 26, scope: !423)
!426 = !DILocation(line: 114, column: 38, scope: !423)
!427 = !DILocation(line: 114, column: 41, scope: !423)
!428 = !DILocation(line: 114, column: 46, scope: !423)
!429 = !DILocation(line: 114, column: 55, scope: !423)
!430 = !DILocation(line: 114, column: 16, scope: !377)
!431 = !DILocalVariable(name: "ht", scope: !432, file: !3, line: 115, type: !28)
!432 = distinct !DILexicalBlock(scope: !423, file: !3, line: 114, column: 75)
!433 = !DILocation(line: 115, column: 15, scope: !432)
!434 = !DILocation(line: 115, column: 20, scope: !432)
!435 = !DILocation(line: 115, column: 25, scope: !432)
!436 = !DILocation(line: 116, column: 16, scope: !432)
!437 = !DILocation(line: 116, column: 9, scope: !432)
!438 = !DILocation(line: 117, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !423, file: !3, line: 117, column: 16)
!440 = !DILocation(line: 117, column: 21, scope: !439)
!441 = !DILocation(line: 117, column: 26, scope: !439)
!442 = !DILocation(line: 117, column: 16, scope: !423)
!443 = !DILocalVariable(name: "effort", scope: !444, file: !3, line: 118, type: !67)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 117, column: 41)
!445 = !DILocation(line: 118, column: 16, scope: !444)
!446 = !DILocalVariable(name: "s", scope: !444, file: !3, line: 119, type: !447)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "stream", file: !449, line: 24, baseType: !450)
!449 = !DIFile(filename: "./stream.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream", file: !449, line: 16, size: 640, elements: !451)
!451 = !{!452, !453, !454, !460, !461, !462, !463}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !450, file: !449, line: 17, baseType: !162, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !450, file: !449, line: 18, baseType: !42, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !450, file: !449, line: 19, baseType: !455, size: 128, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamID", file: !449, line: 14, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamID", file: !449, line: 11, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ms", scope: !456, file: !449, line: 12, baseType: !42, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !456, file: !449, line: 13, baseType: !42, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "first_id", scope: !450, file: !449, line: 20, baseType: !455, size: 128, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_deleted_entry_id", scope: !450, file: !449, line: 21, baseType: !455, size: 128, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "entries_added", scope: !450, file: !449, line: 22, baseType: !42, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !450, file: !449, line: 23, baseType: !162, size: 64, offset: 576)
!464 = !DILocation(line: 119, column: 17, scope: !444)
!465 = !DILocation(line: 119, column: 21, scope: !444)
!466 = !DILocation(line: 119, column: 26, scope: !444)
!467 = !DILocation(line: 123, column: 19, scope: !444)
!468 = !DILocation(line: 123, column: 22, scope: !444)
!469 = !DILocation(line: 123, column: 27, scope: !444)
!470 = !DILocation(line: 123, column: 16, scope: !444)
!471 = !DILocation(line: 128, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !444, file: !3, line: 128, column: 13)
!473 = !DILocation(line: 128, column: 16, scope: !472)
!474 = !DILocation(line: 128, column: 24, scope: !472)
!475 = !DILocation(line: 128, column: 35, scope: !472)
!476 = !DILocation(line: 128, column: 38, scope: !472)
!477 = !DILocation(line: 128, column: 27, scope: !472)
!478 = !DILocation(line: 128, column: 13, scope: !444)
!479 = !DILocalVariable(name: "ri", scope: !480, file: !3, line: 129, type: !481)
!480 = distinct !DILexicalBlock(scope: !472, file: !3, line: 128, column: 48)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !164, line: 186, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !164, line: 175, size: 3840, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !494, !495, !507}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !164, line: 176, baseType: !25, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !482, file: !164, line: 177, baseType: !162, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !482, file: !164, line: 178, baseType: !330, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !482, file: !164, line: 179, baseType: !27, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !482, file: !164, line: 180, baseType: !67, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !482, file: !164, line: 181, baseType: !67, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !482, file: !164, line: 182, baseType: !491, size: 1024, offset: 384)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !492)
!492 = !{!493}
!493 = !DISubrange(count: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !164, line: 183, baseType: !168, size: 64, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !482, file: !164, line: 184, baseType: !496, size: 2304, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !164, line: 150, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !164, line: 143, size: 2304, elements: !498)
!498 = !{!499, !500, !501, !502, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !497, file: !164, line: 144, baseType: !124, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !497, file: !164, line: 145, baseType: !67, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !497, file: !164, line: 145, baseType: !67, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !497, file: !164, line: 148, baseType: !503, size: 2048, offset: 192)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !497, file: !164, line: 149, baseType: !25, size: 32, offset: 2240)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !482, file: !164, line: 185, baseType: !508, size: 64, offset: 3776)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !164, line: 165, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!25, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!513 = !DILocation(line: 129, column: 25, scope: !480)
!514 = !DILocalVariable(name: "cg", scope: !480, file: !3, line: 130, type: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "streamCG", file: !449, line: 73, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "streamCG", file: !449, line: 55, size: 320, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "last_id", scope: !517, file: !449, line: 56, baseType: !455, size: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "entries_read", scope: !517, file: !449, line: 59, baseType: !201, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !517, file: !449, line: 64, baseType: !162, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !517, file: !449, line: 70, baseType: !162, size: 64, offset: 256)
!523 = !DILocation(line: 130, column: 23, scope: !480)
!524 = !DILocation(line: 131, column: 26, scope: !480)
!525 = !DILocation(line: 131, column: 29, scope: !480)
!526 = !DILocation(line: 131, column: 13, scope: !480)
!527 = !DILocation(line: 132, column: 13, scope: !480)
!528 = !DILocation(line: 135, column: 13, scope: !480)
!529 = !DILocation(line: 136, column: 21, scope: !480)
!530 = !DILocation(line: 136, column: 18, scope: !480)
!531 = !DILocation(line: 136, column: 16, scope: !480)
!532 = !DILocation(line: 137, column: 31, scope: !480)
!533 = !DILocation(line: 137, column: 34, scope: !480)
!534 = !DILocation(line: 137, column: 23, scope: !480)
!535 = !DILocation(line: 137, column: 54, scope: !480)
!536 = !DILocation(line: 137, column: 58, scope: !480)
!537 = !DILocation(line: 137, column: 46, scope: !480)
!538 = !DILocation(line: 137, column: 45, scope: !480)
!539 = !DILocation(line: 137, column: 42, scope: !480)
!540 = !DILocation(line: 137, column: 20, scope: !480)
!541 = !DILocation(line: 138, column: 13, scope: !480)
!542 = !DILocation(line: 139, column: 9, scope: !480)
!543 = !DILocation(line: 140, column: 16, scope: !444)
!544 = !DILocation(line: 140, column: 9, scope: !444)
!545 = !DILocation(line: 141, column: 16, scope: !546)
!546 = distinct !DILexicalBlock(scope: !439, file: !3, line: 141, column: 16)
!547 = !DILocation(line: 141, column: 21, scope: !546)
!548 = !DILocation(line: 141, column: 26, scope: !546)
!549 = !DILocation(line: 141, column: 16, scope: !439)
!550 = !DILocalVariable(name: "effort", scope: !551, file: !3, line: 142, type: !67)
!551 = distinct !DILexicalBlock(scope: !546, file: !3, line: 141, column: 41)
!552 = !DILocation(line: 142, column: 16, scope: !551)
!553 = !DILocation(line: 142, column: 45, scope: !551)
!554 = !DILocation(line: 142, column: 50, scope: !551)
!555 = !DILocation(line: 142, column: 55, scope: !551)
!556 = !DILocation(line: 142, column: 25, scope: !551)
!557 = !DILocation(line: 145, column: 16, scope: !551)
!558 = !DILocation(line: 145, column: 23, scope: !551)
!559 = !DILocation(line: 145, column: 42, scope: !551)
!560 = !DILocation(line: 145, column: 9, scope: !551)
!561 = !DILocation(line: 147, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !546, file: !3, line: 146, column: 12)
!563 = !DILocation(line: 149, column: 1, scope: !300)
!564 = distinct !DISubprogram(name: "freeObjAsync", scope: !3, file: !3, line: 159, type: !565, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !16, !16, !25}
!567 = !DILocalVariable(name: "key", arg: 1, scope: !564, file: !3, line: 159, type: !16)
!568 = !DILocation(line: 159, column: 25, scope: !564)
!569 = !DILocalVariable(name: "obj", arg: 2, scope: !564, file: !3, line: 159, type: !16)
!570 = !DILocation(line: 159, column: 36, scope: !564)
!571 = !DILocalVariable(name: "dbid", arg: 3, scope: !564, file: !3, line: 159, type: !25)
!572 = !DILocation(line: 159, column: 45, scope: !564)
!573 = !DILocalVariable(name: "free_effort", scope: !564, file: !3, line: 160, type: !67)
!574 = !DILocation(line: 160, column: 12, scope: !564)
!575 = !DILocation(line: 160, column: 48, scope: !564)
!576 = !DILocation(line: 160, column: 52, scope: !564)
!577 = !DILocation(line: 160, column: 56, scope: !564)
!578 = !DILocation(line: 160, column: 26, scope: !564)
!579 = !DILocation(line: 165, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !564, file: !3, line: 165, column: 9)
!581 = !DILocation(line: 165, column: 21, scope: !580)
!582 = !DILocation(line: 165, column: 42, scope: !580)
!583 = !DILocation(line: 165, column: 45, scope: !580)
!584 = !DILocation(line: 165, column: 50, scope: !580)
!585 = !DILocation(line: 165, column: 59, scope: !580)
!586 = !DILocation(line: 165, column: 9, scope: !564)
!587 = !DILocation(line: 166, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !580, file: !3, line: 165, column: 65)
!589 = !DILocation(line: 167, column: 51, scope: !588)
!590 = !DILocation(line: 167, column: 9, scope: !588)
!591 = !DILocation(line: 168, column: 5, scope: !588)
!592 = !DILocation(line: 169, column: 22, scope: !593)
!593 = distinct !DILexicalBlock(scope: !580, file: !3, line: 168, column: 12)
!594 = !DILocation(line: 169, column: 9, scope: !593)
!595 = !DILocation(line: 171, column: 1, scope: !564)
!596 = distinct !DISubprogram(name: "emptyDbAsync", scope: !3, file: !3, line: 176, type: !597, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !18, line: 933, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !18, line: 922, size: 640, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !601, file: !18, line: 923, baseType: !28, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !601, file: !18, line: 924, baseType: !28, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !601, file: !18, line: 925, baseType: !28, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !601, file: !18, line: 926, baseType: !28, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !601, file: !18, line: 927, baseType: !28, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !601, file: !18, line: 928, baseType: !25, size: 32, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !601, file: !18, line: 929, baseType: !201, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !601, file: !18, line: 930, baseType: !46, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !601, file: !18, line: 931, baseType: !231, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !601, file: !18, line: 932, baseType: !613, size: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !18, line: 917, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !18, line: 917, flags: DIFlagFwdDecl)
!616 = !DILocalVariable(name: "db", arg: 1, scope: !596, file: !3, line: 176, type: !599)
!617 = !DILocation(line: 176, column: 28, scope: !596)
!618 = !DILocalVariable(name: "oldht1", scope: !596, file: !3, line: 177, type: !28)
!619 = !DILocation(line: 177, column: 11, scope: !596)
!620 = !DILocation(line: 177, column: 20, scope: !596)
!621 = !DILocation(line: 177, column: 24, scope: !596)
!622 = !DILocalVariable(name: "oldht2", scope: !596, file: !3, line: 177, type: !28)
!623 = !DILocation(line: 177, column: 31, scope: !596)
!624 = !DILocation(line: 177, column: 40, scope: !596)
!625 = !DILocation(line: 177, column: 44, scope: !596)
!626 = !DILocation(line: 178, column: 16, scope: !596)
!627 = !DILocation(line: 178, column: 5, scope: !596)
!628 = !DILocation(line: 178, column: 9, scope: !596)
!629 = !DILocation(line: 178, column: 14, scope: !596)
!630 = !DILocation(line: 179, column: 19, scope: !596)
!631 = !DILocation(line: 179, column: 5, scope: !596)
!632 = !DILocation(line: 179, column: 9, scope: !596)
!633 = !DILocation(line: 179, column: 17, scope: !596)
!634 = !DILocation(line: 180, column: 5, scope: !596)
!635 = !DILocation(line: 181, column: 49, scope: !596)
!636 = !DILocation(line: 181, column: 56, scope: !596)
!637 = !DILocation(line: 181, column: 5, scope: !596)
!638 = !DILocation(line: 182, column: 1, scope: !596)
!639 = distinct !DISubprogram(name: "freeTrackingRadixTreeAsync", scope: !3, file: !3, line: 186, type: !640, scopeLine: 186, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !162}
!642 = !DILocalVariable(name: "tracking", arg: 1, scope: !639, file: !3, line: 186, type: !162)
!643 = !DILocation(line: 186, column: 38, scope: !639)
!644 = !DILocation(line: 188, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !3, line: 188, column: 9)
!646 = !DILocation(line: 188, column: 19, scope: !645)
!647 = !DILocation(line: 188, column: 28, scope: !645)
!648 = !DILocation(line: 188, column: 9, scope: !639)
!649 = !DILocation(line: 189, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 188, column: 50)
!651 = !DILocation(line: 190, column: 54, scope: !650)
!652 = !DILocation(line: 190, column: 9, scope: !650)
!653 = !DILocation(line: 191, column: 5, scope: !650)
!654 = !DILocation(line: 192, column: 31, scope: !655)
!655 = distinct !DILexicalBlock(scope: !645, file: !3, line: 191, column: 12)
!656 = !DILocation(line: 192, column: 9, scope: !655)
!657 = !DILocation(line: 194, column: 1, scope: !639)
!658 = distinct !DISubprogram(name: "freeLuaScriptsAsync", scope: !3, file: !3, line: 197, type: !659, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !28}
!661 = !DILocalVariable(name: "lua_scripts", arg: 1, scope: !658, file: !3, line: 197, type: !28)
!662 = !DILocation(line: 197, column: 32, scope: !658)
!663 = !DILocation(line: 198, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !3, line: 198, column: 9)
!665 = !DILocation(line: 198, column: 31, scope: !664)
!666 = !DILocation(line: 198, column: 9, scope: !658)
!667 = !DILocation(line: 199, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !3, line: 198, column: 53)
!669 = !DILocation(line: 200, column: 51, scope: !668)
!670 = !DILocation(line: 200, column: 9, scope: !668)
!671 = !DILocation(line: 201, column: 5, scope: !668)
!672 = !DILocation(line: 202, column: 21, scope: !673)
!673 = distinct !DILexicalBlock(scope: !664, file: !3, line: 201, column: 12)
!674 = !DILocation(line: 202, column: 9, scope: !673)
!675 = !DILocation(line: 204, column: 1, scope: !658)
!676 = distinct !DISubprogram(name: "freeFunctionsAsync", scope: !3, file: !3, line: 207, type: !677, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !213}
!679 = !DILocalVariable(name: "functions_lib_ctx", arg: 1, scope: !676, file: !3, line: 207, type: !213)
!680 = !DILocation(line: 207, column: 42, scope: !676)
!681 = !DILocation(line: 208, column: 37, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !3, line: 208, column: 9)
!683 = !DILocation(line: 208, column: 9, scope: !682)
!684 = !DILocation(line: 208, column: 56, scope: !682)
!685 = !DILocation(line: 208, column: 9, scope: !676)
!686 = !DILocation(line: 209, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !682, file: !3, line: 208, column: 78)
!688 = !DILocation(line: 210, column: 53, scope: !687)
!689 = !DILocation(line: 210, column: 9, scope: !687)
!690 = !DILocation(line: 211, column: 5, scope: !687)
!691 = !DILocation(line: 212, column: 29, scope: !692)
!692 = distinct !DILexicalBlock(scope: !682, file: !3, line: 211, column: 12)
!693 = !DILocation(line: 212, column: 9, scope: !692)
!694 = !DILocation(line: 214, column: 1, scope: !676)
!695 = distinct !DISubprogram(name: "freeReplicationBacklogRefMemAsync", scope: !3, file: !3, line: 217, type: !696, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !125)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !231, !162}
!698 = !DILocalVariable(name: "blocks", arg: 1, scope: !695, file: !3, line: 217, type: !231)
!699 = !DILocation(line: 217, column: 46, scope: !695)
!700 = !DILocalVariable(name: "index", arg: 2, scope: !695, file: !3, line: 217, type: !162)
!701 = !DILocation(line: 217, column: 59, scope: !695)
!702 = !DILocation(line: 218, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !695, file: !3, line: 218, column: 9)
!704 = !DILocation(line: 218, column: 28, scope: !703)
!705 = !DILocation(line: 218, column: 49, scope: !703)
!706 = !DILocation(line: 219, column: 17, scope: !703)
!707 = !DILocation(line: 219, column: 9, scope: !703)
!708 = !DILocation(line: 219, column: 24, scope: !703)
!709 = !DILocation(line: 218, column: 9, scope: !695)
!710 = !DILocation(line: 221, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !703, file: !3, line: 220, column: 5)
!712 = !DILocation(line: 222, column: 65, scope: !711)
!713 = !DILocation(line: 222, column: 72, scope: !711)
!714 = !DILocation(line: 222, column: 9, scope: !711)
!715 = !DILocation(line: 223, column: 5, scope: !711)
!716 = !DILocation(line: 224, column: 21, scope: !717)
!717 = distinct !DILexicalBlock(scope: !703, file: !3, line: 223, column: 12)
!718 = !DILocation(line: 224, column: 9, scope: !717)
!719 = !DILocation(line: 225, column: 17, scope: !717)
!720 = !DILocation(line: 225, column: 9, scope: !717)
!721 = !DILocation(line: 227, column: 1, scope: !695)
