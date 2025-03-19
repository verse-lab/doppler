; ModuleID = 'lolwut.c'
source_filename = "lolwut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.redisCommand = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, %struct.commandHistory*, i8**, {}*, i32, i64, i64, [4 x %struct.keySpec], i32 (%struct.redisCommand*, %struct.redisObject**, i32, %struct.getKeysResult*)*, %struct.redisCommand*, %struct.redisCommandArg*, i64, i64, i64, i64, i32, i8*, %struct.hdr_histogram*, %struct.keySpec*, %struct.keySpec, i32, i32, i32, i32, i32, %struct.dict*, %struct.redisCommand*, %struct.RedisModuleCommand* }
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
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.dict = type { %struct.dictType*, [2 x %struct.dictEntry**], [2 x i64], i64, i16, [2 x i8] }
%struct.dictType = type { i64 (i8*)*, i8* (%struct.dict*, i8*)*, i8* (%struct.dict*, i8*)*, i32 (%struct.dict*, i8*, i8*)*, void (%struct.dict*, i8*)*, void (%struct.dict*, i8*)*, i32 (i64, double)*, i64 (%struct.dict*)* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.clientMemUsageBucket = type { %struct.list*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>
%struct.lwCanvas = type { i32, i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"7.0.11\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%u.0.0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @lolwutUnstableCommand(%struct.client* %c) #0 !dbg !112 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %rendered = alloca i8*, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata i8** %rendered, metadata !710, metadata !DIExpression()), !dbg !711
  %call = call i8* @sdsnew(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !712
  store i8* %call, i8** %rendered, align 8, !dbg !711
  %0 = load i8*, i8** %rendered, align 8, !dbg !713
  %call1 = call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !714
  store i8* %call1, i8** %rendered, align 8, !dbg !715
  %1 = load i8*, i8** %rendered, align 8, !dbg !716
  %call2 = call i8* @sdscatlen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64 1), !dbg !717
  store i8* %call2, i8** %rendered, align 8, !dbg !718
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !719
  %3 = load i8*, i8** %rendered, align 8, !dbg !720
  %4 = load i8*, i8** %rendered, align 8, !dbg !721
  %call3 = call i64 @sdslen(i8* %4), !dbg !722
  call void @addReplyVerbatim(%struct.client* %2, i8* %3, i64 %call3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !723
  %5 = load i8*, i8** %rendered, align 8, !dbg !724
  call void @sdsfree(i8* %5), !dbg !725
  ret void, !dbg !726
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @sdsnew(i8*) #2

declare dso_local i8* @sdscat(i8*, i8*) #2

declare dso_local i8* @sdscatlen(i8*, i8*, i64) #2

declare dso_local void @addReplyVerbatim(%struct.client*, i8*, i64, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !727 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !731, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !733, metadata !DIExpression()), !dbg !734
  %0 = load i8*, i8** %s.addr, align 8, !dbg !735
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !735
  %1 = load i8, i8* %arrayidx, align 1, !dbg !735
  store i8 %1, i8* %flags, align 1, !dbg !734
  %2 = load i8, i8* %flags, align 1, !dbg !736
  %conv = zext i8 %2 to i32, !dbg !736
  %and = and i32 %conv, 7, !dbg !737
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !738

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !739
  %conv1 = zext i8 %3 to i32, !dbg !739
  %shr = ashr i32 %conv1, 3, !dbg !739
  %conv2 = sext i32 %shr to i64, !dbg !739
  store i64 %conv2, i64* %retval, align 8, !dbg !741
  br label %return, !dbg !741

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !742
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !742
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !743
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !743
  %6 = load i8, i8* %len, align 1, !dbg !743
  %conv4 = zext i8 %6 to i64, !dbg !742
  store i64 %conv4, i64* %retval, align 8, !dbg !744
  br label %return, !dbg !744

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !745
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !745
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !746
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !746
  %9 = load i16, i16* %len7, align 1, !dbg !746
  %conv8 = zext i16 %9 to i64, !dbg !745
  store i64 %conv8, i64* %retval, align 8, !dbg !747
  br label %return, !dbg !747

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !748
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !748
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !749
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !749
  %12 = load i32, i32* %len11, align 1, !dbg !749
  %conv12 = zext i32 %12 to i64, !dbg !748
  store i64 %conv12, i64* %retval, align 8, !dbg !750
  br label %return, !dbg !750

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !751
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !751
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !752
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !752
  %15 = load i64, i64* %len15, align 1, !dbg !752
  store i64 %15, i64* %retval, align 8, !dbg !753
  br label %return, !dbg !753

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !754
  br label %return, !dbg !754

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !755
  ret i64 %16, !dbg !755
}

declare dso_local void @sdsfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lolwutCommand(%struct.client* %c) #0 !dbg !756 {
entry:
  %c.addr = alloca %struct.client*, align 8
  %v = alloca i8*, align 8
  %verstr = alloca [64 x i8], align 16
  %ver = alloca i64, align 8
  store %struct.client* %c, %struct.client** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.client** %c.addr, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.declare(metadata i8** %v, metadata !759, metadata !DIExpression()), !dbg !760
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %v, align 8, !dbg !760
  call void @llvm.dbg.declare(metadata [64 x i8]* %verstr, metadata !761, metadata !DIExpression()), !dbg !765
  %0 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !766
  %argc = getelementptr inbounds %struct.client, %struct.client* %0, i32 0, i32 9, !dbg !768
  %1 = load i32, i32* %argc, align 8, !dbg !768
  %cmp = icmp sge i32 %1, 3, !dbg !769
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !770

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !771
  %argv = getelementptr inbounds %struct.client, %struct.client* %2, i32 0, i32 10, !dbg !772
  %3 = load %struct.redisObject**, %struct.redisObject*** %argv, align 8, !dbg !772
  %arrayidx = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !771
  %4 = load %struct.redisObject*, %struct.redisObject** %arrayidx, align 8, !dbg !771
  %ptr = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i32 0, i32 2, !dbg !773
  %5 = load i8*, i8** %ptr, align 8, !dbg !773
  %call = call i32 @strcasecmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !774
  %tobool = icmp ne i32 %call, 0, !dbg !774
  br i1 %tobool, label %if.end10, label %if.then, !dbg !775

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i64* %ver, metadata !776, metadata !DIExpression()), !dbg !778
  %6 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !779
  %7 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !781
  %argv1 = getelementptr inbounds %struct.client, %struct.client* %7, i32 0, i32 10, !dbg !782
  %8 = load %struct.redisObject**, %struct.redisObject*** %argv1, align 8, !dbg !782
  %arrayidx2 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !781
  %9 = load %struct.redisObject*, %struct.redisObject** %arrayidx2, align 8, !dbg !781
  %call3 = call i32 @getLongFromObjectOrReply(%struct.client* %6, %struct.redisObject* %9, i64* %ver, i8* null), !dbg !783
  %cmp4 = icmp ne i32 %call3, 0, !dbg !784
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !785

if.then5:                                         ; preds = %if.then
  br label %if.end80, !dbg !786

if.end:                                           ; preds = %if.then
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %verstr, i64 0, i64 0, !dbg !787
  %10 = load i64, i64* %ver, align 8, !dbg !788
  %conv = trunc i64 %10 to i32, !dbg !789
  %call6 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %conv) #8, !dbg !790
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %verstr, i64 0, i64 0, !dbg !791
  store i8* %arraydecay7, i8** %v, align 8, !dbg !792
  %11 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !793
  %argv8 = getelementptr inbounds %struct.client, %struct.client* %11, i32 0, i32 10, !dbg !794
  %12 = load %struct.redisObject**, %struct.redisObject*** %argv8, align 8, !dbg !795
  %add.ptr = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %12, i64 2, !dbg !795
  store %struct.redisObject** %add.ptr, %struct.redisObject*** %argv8, align 8, !dbg !795
  %13 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !796
  %argc9 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 9, !dbg !797
  %14 = load i32, i32* %argc9, align 8, !dbg !798
  %sub = sub nsw i32 %14, 2, !dbg !798
  store i32 %sub, i32* %argc9, align 8, !dbg !798
  br label %if.end10, !dbg !799

if.end10:                                         ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i8*, i8** %v, align 8, !dbg !800
  %arrayidx11 = getelementptr inbounds i8, i8* %15, i64 0, !dbg !800
  %16 = load i8, i8* %arrayidx11, align 1, !dbg !800
  %conv12 = sext i8 %16 to i32, !dbg !800
  %cmp13 = icmp eq i32 %conv12, 53, !dbg !802
  br i1 %cmp13, label %land.lhs.true15, label %lor.lhs.false, !dbg !803

land.lhs.true15:                                  ; preds = %if.end10
  %17 = load i8*, i8** %v, align 8, !dbg !804
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !804
  %18 = load i8, i8* %arrayidx16, align 1, !dbg !804
  %conv17 = sext i8 %18 to i32, !dbg !804
  %cmp18 = icmp eq i32 %conv17, 46, !dbg !805
  br i1 %cmp18, label %land.lhs.true20, label %lor.lhs.false, !dbg !806

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %19 = load i8*, i8** %v, align 8, !dbg !807
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !807
  %20 = load i8, i8* %arrayidx21, align 1, !dbg !807
  %conv22 = sext i8 %20 to i32, !dbg !807
  %cmp23 = icmp ne i32 %conv22, 57, !dbg !808
  br i1 %cmp23, label %if.then39, label %lor.lhs.false, !dbg !809

lor.lhs.false:                                    ; preds = %land.lhs.true20, %land.lhs.true15, %if.end10
  %21 = load i8*, i8** %v, align 8, !dbg !810
  %arrayidx25 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !810
  %22 = load i8, i8* %arrayidx25, align 1, !dbg !810
  %conv26 = sext i8 %22 to i32, !dbg !810
  %cmp27 = icmp eq i32 %conv26, 52, !dbg !811
  br i1 %cmp27, label %land.lhs.true29, label %if.else, !dbg !812

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %23 = load i8*, i8** %v, align 8, !dbg !813
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !813
  %24 = load i8, i8* %arrayidx30, align 1, !dbg !813
  %conv31 = sext i8 %24 to i32, !dbg !813
  %cmp32 = icmp eq i32 %conv31, 46, !dbg !814
  br i1 %cmp32, label %land.lhs.true34, label %if.else, !dbg !815

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %25 = load i8*, i8** %v, align 8, !dbg !816
  %arrayidx35 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !816
  %26 = load i8, i8* %arrayidx35, align 1, !dbg !816
  %conv36 = sext i8 %26 to i32, !dbg !816
  %cmp37 = icmp eq i32 %conv36, 57, !dbg !817
  br i1 %cmp37, label %if.then39, label %if.else, !dbg !818

if.then39:                                        ; preds = %land.lhs.true34, %land.lhs.true20
  %27 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !819
  call void @lolwut5Command(%struct.client* %27), !dbg !820
  br label %if.end72, !dbg !820

if.else:                                          ; preds = %land.lhs.true34, %land.lhs.true29, %lor.lhs.false
  %28 = load i8*, i8** %v, align 8, !dbg !821
  %arrayidx40 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !821
  %29 = load i8, i8* %arrayidx40, align 1, !dbg !821
  %conv41 = sext i8 %29 to i32, !dbg !821
  %cmp42 = icmp eq i32 %conv41, 54, !dbg !823
  br i1 %cmp42, label %land.lhs.true44, label %lor.lhs.false54, !dbg !824

land.lhs.true44:                                  ; preds = %if.else
  %30 = load i8*, i8** %v, align 8, !dbg !825
  %arrayidx45 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !825
  %31 = load i8, i8* %arrayidx45, align 1, !dbg !825
  %conv46 = sext i8 %31 to i32, !dbg !825
  %cmp47 = icmp eq i32 %conv46, 46, !dbg !826
  br i1 %cmp47, label %land.lhs.true49, label %lor.lhs.false54, !dbg !827

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %32 = load i8*, i8** %v, align 8, !dbg !828
  %arrayidx50 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !828
  %33 = load i8, i8* %arrayidx50, align 1, !dbg !828
  %conv51 = sext i8 %33 to i32, !dbg !828
  %cmp52 = icmp ne i32 %conv51, 57, !dbg !829
  br i1 %cmp52, label %if.then69, label %lor.lhs.false54, !dbg !830

lor.lhs.false54:                                  ; preds = %land.lhs.true49, %land.lhs.true44, %if.else
  %34 = load i8*, i8** %v, align 8, !dbg !831
  %arrayidx55 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !831
  %35 = load i8, i8* %arrayidx55, align 1, !dbg !831
  %conv56 = sext i8 %35 to i32, !dbg !831
  %cmp57 = icmp eq i32 %conv56, 53, !dbg !832
  br i1 %cmp57, label %land.lhs.true59, label %if.else70, !dbg !833

land.lhs.true59:                                  ; preds = %lor.lhs.false54
  %36 = load i8*, i8** %v, align 8, !dbg !834
  %arrayidx60 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !834
  %37 = load i8, i8* %arrayidx60, align 1, !dbg !834
  %conv61 = sext i8 %37 to i32, !dbg !834
  %cmp62 = icmp eq i32 %conv61, 46, !dbg !835
  br i1 %cmp62, label %land.lhs.true64, label %if.else70, !dbg !836

land.lhs.true64:                                  ; preds = %land.lhs.true59
  %38 = load i8*, i8** %v, align 8, !dbg !837
  %arrayidx65 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !837
  %39 = load i8, i8* %arrayidx65, align 1, !dbg !837
  %conv66 = sext i8 %39 to i32, !dbg !837
  %cmp67 = icmp eq i32 %conv66, 57, !dbg !838
  br i1 %cmp67, label %if.then69, label %if.else70, !dbg !839

if.then69:                                        ; preds = %land.lhs.true64, %land.lhs.true49
  %40 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !840
  call void @lolwut6Command(%struct.client* %40), !dbg !841
  br label %if.end71, !dbg !841

if.else70:                                        ; preds = %land.lhs.true64, %land.lhs.true59, %lor.lhs.false54
  %41 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !842
  call void @lolwutUnstableCommand(%struct.client* %41), !dbg !843
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then69
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then39
  %42 = load i8*, i8** %v, align 8, !dbg !844
  %arraydecay73 = getelementptr inbounds [64 x i8], [64 x i8]* %verstr, i64 0, i64 0, !dbg !846
  %cmp74 = icmp eq i8* %42, %arraydecay73, !dbg !847
  br i1 %cmp74, label %if.then76, label %if.end80, !dbg !848

if.then76:                                        ; preds = %if.end72
  %43 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !849
  %argv77 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 10, !dbg !851
  %44 = load %struct.redisObject**, %struct.redisObject*** %argv77, align 8, !dbg !852
  %add.ptr78 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %44, i64 -2, !dbg !852
  store %struct.redisObject** %add.ptr78, %struct.redisObject*** %argv77, align 8, !dbg !852
  %45 = load %struct.client*, %struct.client** %c.addr, align 8, !dbg !853
  %argc79 = getelementptr inbounds %struct.client, %struct.client* %45, i32 0, i32 9, !dbg !854
  %46 = load i32, i32* %argc79, align 8, !dbg !855
  %add = add nsw i32 %46, 2, !dbg !855
  store i32 %add, i32* %argc79, align 8, !dbg !855
  br label %if.end80, !dbg !856

if.end80:                                         ; preds = %if.then5, %if.then76, %if.end72
  ret void, !dbg !857
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #4

declare dso_local void @lolwut5Command(%struct.client*) #2

declare dso_local void @lolwut6Command(%struct.client*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lwCanvas* @lwCreateCanvas(i32 %width, i32 %height, i32 %bgcolor) #0 !dbg !858 {
entry:
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bgcolor.addr = alloca i32, align 4
  %canvas = alloca %struct.lwCanvas*, align 8
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !869, metadata !DIExpression()), !dbg !870
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !871, metadata !DIExpression()), !dbg !872
  store i32 %bgcolor, i32* %bgcolor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bgcolor.addr, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas, metadata !875, metadata !DIExpression()), !dbg !876
  %call = call i8* @zmalloc(i64 16), !dbg !877
  %0 = bitcast i8* %call to %struct.lwCanvas*, !dbg !877
  store %struct.lwCanvas* %0, %struct.lwCanvas** %canvas, align 8, !dbg !876
  %1 = load i32, i32* %width.addr, align 4, !dbg !878
  %2 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !879
  %width1 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %2, i32 0, i32 0, !dbg !880
  store i32 %1, i32* %width1, align 8, !dbg !881
  %3 = load i32, i32* %height.addr, align 4, !dbg !882
  %4 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !883
  %height2 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %4, i32 0, i32 1, !dbg !884
  store i32 %3, i32* %height2, align 4, !dbg !885
  %5 = load i32, i32* %width.addr, align 4, !dbg !886
  %conv = sext i32 %5 to i64, !dbg !887
  %6 = load i32, i32* %height.addr, align 4, !dbg !888
  %conv3 = sext i32 %6 to i64, !dbg !888
  %mul = mul i64 %conv, %conv3, !dbg !889
  %call4 = call i8* @zmalloc(i64 %mul), !dbg !890
  %7 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !891
  %pixels = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %7, i32 0, i32 2, !dbg !892
  store i8* %call4, i8** %pixels, align 8, !dbg !893
  %8 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !894
  %pixels5 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %8, i32 0, i32 2, !dbg !895
  %9 = load i8*, i8** %pixels5, align 8, !dbg !895
  %10 = load i32, i32* %bgcolor.addr, align 4, !dbg !896
  %11 = trunc i32 %10 to i8, !dbg !897
  %12 = load i32, i32* %width.addr, align 4, !dbg !898
  %conv6 = sext i32 %12 to i64, !dbg !899
  %13 = load i32, i32* %height.addr, align 4, !dbg !900
  %conv7 = sext i32 %13 to i64, !dbg !900
  %mul8 = mul i64 %conv6, %conv7, !dbg !901
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 %11, i64 %mul8, i1 false), !dbg !897
  %14 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas, align 8, !dbg !902
  ret %struct.lwCanvas* %14, !dbg !903
}

declare dso_local i8* @zmalloc(i64) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @lwFreeCanvas(%struct.lwCanvas* %canvas) #0 !dbg !904 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !907, metadata !DIExpression()), !dbg !908
  %0 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !909
  %pixels = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %0, i32 0, i32 2, !dbg !910
  %1 = load i8*, i8** %pixels, align 8, !dbg !910
  call void @zfree(i8* %1), !dbg !911
  %2 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !912
  %3 = bitcast %struct.lwCanvas* %2 to i8*, !dbg !912
  call void @zfree(i8* %3), !dbg !913
  ret void, !dbg !914
}

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lwDrawPixel(%struct.lwCanvas* %canvas, i32 %x, i32 %y, i32 %color) #0 !dbg !915 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !918, metadata !DIExpression()), !dbg !919
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !920, metadata !DIExpression()), !dbg !921
  store i32 %y, i32* %y.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y.addr, metadata !922, metadata !DIExpression()), !dbg !923
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load i32, i32* %x.addr, align 4, !dbg !926
  %cmp = icmp slt i32 %0, 0, !dbg !928
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !929

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !dbg !930
  %2 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !931
  %width = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %2, i32 0, i32 0, !dbg !932
  %3 = load i32, i32* %width, align 8, !dbg !932
  %cmp1 = icmp sge i32 %1, %3, !dbg !933
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !934

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %y.addr, align 4, !dbg !935
  %cmp3 = icmp slt i32 %4, 0, !dbg !936
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !937

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %y.addr, align 4, !dbg !938
  %6 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !939
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %6, i32 0, i32 1, !dbg !940
  %7 = load i32, i32* %height, align 4, !dbg !940
  %cmp5 = icmp sge i32 %5, %7, !dbg !941
  br i1 %cmp5, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  br label %return, !dbg !943

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load i32, i32* %color.addr, align 4, !dbg !944
  %conv = trunc i32 %8 to i8, !dbg !944
  %9 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !945
  %pixels = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %9, i32 0, i32 2, !dbg !946
  %10 = load i8*, i8** %pixels, align 8, !dbg !946
  %11 = load i32, i32* %x.addr, align 4, !dbg !947
  %12 = load i32, i32* %y.addr, align 4, !dbg !948
  %13 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !949
  %width6 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %13, i32 0, i32 0, !dbg !950
  %14 = load i32, i32* %width6, align 8, !dbg !950
  %mul = mul nsw i32 %12, %14, !dbg !951
  %add = add nsw i32 %11, %mul, !dbg !952
  %idxprom = sext i32 %add to i64, !dbg !945
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom, !dbg !945
  store i8 %conv, i8* %arrayidx, align 1, !dbg !953
  br label %return, !dbg !954

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !954
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lwGetPixel(%struct.lwCanvas* %canvas, i32 %x, i32 %y) #0 !dbg !955 {
entry:
  %retval = alloca i32, align 4
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !960, metadata !DIExpression()), !dbg !961
  store i32 %y, i32* %y.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y.addr, metadata !962, metadata !DIExpression()), !dbg !963
  %0 = load i32, i32* %x.addr, align 4, !dbg !964
  %cmp = icmp slt i32 %0, 0, !dbg !966
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !967

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !dbg !968
  %2 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !969
  %width = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %2, i32 0, i32 0, !dbg !970
  %3 = load i32, i32* %width, align 8, !dbg !970
  %cmp1 = icmp sge i32 %1, %3, !dbg !971
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !972

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %y.addr, align 4, !dbg !973
  %cmp3 = icmp slt i32 %4, 0, !dbg !974
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !975

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i32, i32* %y.addr, align 4, !dbg !976
  %6 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !977
  %height = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %6, i32 0, i32 1, !dbg !978
  %7 = load i32, i32* %height, align 4, !dbg !978
  %cmp5 = icmp sge i32 %5, %7, !dbg !979
  br i1 %cmp5, label %if.then, label %if.end, !dbg !980

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !981
  br label %return, !dbg !981

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !982
  %pixels = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %8, i32 0, i32 2, !dbg !983
  %9 = load i8*, i8** %pixels, align 8, !dbg !983
  %10 = load i32, i32* %x.addr, align 4, !dbg !984
  %11 = load i32, i32* %y.addr, align 4, !dbg !985
  %12 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !986
  %width6 = getelementptr inbounds %struct.lwCanvas, %struct.lwCanvas* %12, i32 0, i32 0, !dbg !987
  %13 = load i32, i32* %width6, align 8, !dbg !987
  %mul = mul nsw i32 %11, %13, !dbg !988
  %add = add nsw i32 %10, %mul, !dbg !989
  %idxprom = sext i32 %add to i64, !dbg !982
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom, !dbg !982
  %14 = load i8, i8* %arrayidx, align 1, !dbg !982
  %conv = sext i8 %14 to i32, !dbg !982
  store i32 %conv, i32* %retval, align 4, !dbg !990
  br label %return, !dbg !990

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !991
  ret i32 %15, !dbg !991
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lwDrawLine(%struct.lwCanvas* %canvas, i32 %x1, i32 %y1, i32 %x2, i32 %y2, i32 %color) #0 !dbg !992 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %sx = alloca i32, align 4
  %sy = alloca i32, align 4
  %err = alloca i32, align 4
  %e2 = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !995, metadata !DIExpression()), !dbg !996
  store i32 %x1, i32* %x1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x1.addr, metadata !997, metadata !DIExpression()), !dbg !998
  store i32 %y1, i32* %y1.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y1.addr, metadata !999, metadata !DIExpression()), !dbg !1000
  store i32 %x2, i32* %x2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x2.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  store i32 %y2, i32* %y2.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y2.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata i32* %dx, metadata !1007, metadata !DIExpression()), !dbg !1008
  %0 = load i32, i32* %x2.addr, align 4, !dbg !1009
  %1 = load i32, i32* %x1.addr, align 4, !dbg !1010
  %sub = sub nsw i32 %0, %1, !dbg !1011
  %call = call i32 @abs(i32 %sub) #9, !dbg !1012
  store i32 %call, i32* %dx, align 4, !dbg !1008
  call void @llvm.dbg.declare(metadata i32* %dy, metadata !1013, metadata !DIExpression()), !dbg !1014
  %2 = load i32, i32* %y2.addr, align 4, !dbg !1015
  %3 = load i32, i32* %y1.addr, align 4, !dbg !1016
  %sub1 = sub nsw i32 %2, %3, !dbg !1017
  %call2 = call i32 @abs(i32 %sub1) #9, !dbg !1018
  store i32 %call2, i32* %dy, align 4, !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %sx, metadata !1019, metadata !DIExpression()), !dbg !1020
  %4 = load i32, i32* %x1.addr, align 4, !dbg !1021
  %5 = load i32, i32* %x2.addr, align 4, !dbg !1022
  %cmp = icmp slt i32 %4, %5, !dbg !1023
  %6 = zext i1 %cmp to i64, !dbg !1024
  %cond = select i1 %cmp, i32 1, i32 -1, !dbg !1024
  store i32 %cond, i32* %sx, align 4, !dbg !1020
  call void @llvm.dbg.declare(metadata i32* %sy, metadata !1025, metadata !DIExpression()), !dbg !1026
  %7 = load i32, i32* %y1.addr, align 4, !dbg !1027
  %8 = load i32, i32* %y2.addr, align 4, !dbg !1028
  %cmp3 = icmp slt i32 %7, %8, !dbg !1029
  %9 = zext i1 %cmp3 to i64, !dbg !1030
  %cond4 = select i1 %cmp3, i32 1, i32 -1, !dbg !1030
  store i32 %cond4, i32* %sy, align 4, !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1031, metadata !DIExpression()), !dbg !1032
  %10 = load i32, i32* %dx, align 4, !dbg !1033
  %11 = load i32, i32* %dy, align 4, !dbg !1034
  %sub5 = sub nsw i32 %10, %11, !dbg !1035
  store i32 %sub5, i32* %err, align 4, !dbg !1032
  call void @llvm.dbg.declare(metadata i32* %e2, metadata !1036, metadata !DIExpression()), !dbg !1037
  br label %while.body, !dbg !1038

while.body:                                       ; preds = %entry, %if.end17
  %12 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1039
  %13 = load i32, i32* %x1.addr, align 4, !dbg !1041
  %14 = load i32, i32* %y1.addr, align 4, !dbg !1042
  %15 = load i32, i32* %color.addr, align 4, !dbg !1043
  call void @lwDrawPixel(%struct.lwCanvas* %12, i32 %13, i32 %14, i32 %15), !dbg !1044
  %16 = load i32, i32* %x1.addr, align 4, !dbg !1045
  %17 = load i32, i32* %x2.addr, align 4, !dbg !1047
  %cmp6 = icmp eq i32 %16, %17, !dbg !1048
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !1049

land.lhs.true:                                    ; preds = %while.body
  %18 = load i32, i32* %y1.addr, align 4, !dbg !1050
  %19 = load i32, i32* %y2.addr, align 4, !dbg !1051
  %cmp7 = icmp eq i32 %18, %19, !dbg !1052
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %land.lhs.true
  br label %while.end, !dbg !1054

if.end:                                           ; preds = %land.lhs.true, %while.body
  %20 = load i32, i32* %err, align 4, !dbg !1055
  %mul = mul nsw i32 %20, 2, !dbg !1056
  store i32 %mul, i32* %e2, align 4, !dbg !1057
  %21 = load i32, i32* %e2, align 4, !dbg !1058
  %22 = load i32, i32* %dy, align 4, !dbg !1060
  %sub8 = sub nsw i32 0, %22, !dbg !1061
  %cmp9 = icmp sgt i32 %21, %sub8, !dbg !1062
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1063

if.then10:                                        ; preds = %if.end
  %23 = load i32, i32* %dy, align 4, !dbg !1064
  %24 = load i32, i32* %err, align 4, !dbg !1066
  %sub11 = sub nsw i32 %24, %23, !dbg !1066
  store i32 %sub11, i32* %err, align 4, !dbg !1066
  %25 = load i32, i32* %sx, align 4, !dbg !1067
  %26 = load i32, i32* %x1.addr, align 4, !dbg !1068
  %add = add nsw i32 %26, %25, !dbg !1068
  store i32 %add, i32* %x1.addr, align 4, !dbg !1068
  br label %if.end12, !dbg !1069

if.end12:                                         ; preds = %if.then10, %if.end
  %27 = load i32, i32* %e2, align 4, !dbg !1070
  %28 = load i32, i32* %dx, align 4, !dbg !1072
  %cmp13 = icmp slt i32 %27, %28, !dbg !1073
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !1074

if.then14:                                        ; preds = %if.end12
  %29 = load i32, i32* %dx, align 4, !dbg !1075
  %30 = load i32, i32* %err, align 4, !dbg !1077
  %add15 = add nsw i32 %30, %29, !dbg !1077
  store i32 %add15, i32* %err, align 4, !dbg !1077
  %31 = load i32, i32* %sy, align 4, !dbg !1078
  %32 = load i32, i32* %y1.addr, align 4, !dbg !1079
  %add16 = add nsw i32 %32, %31, !dbg !1079
  store i32 %add16, i32* %y1.addr, align 4, !dbg !1079
  br label %if.end17, !dbg !1080

if.end17:                                         ; preds = %if.then14, %if.end12
  br label %while.body, !dbg !1038, !llvm.loop !1081

while.end:                                        ; preds = %if.then
  ret void, !dbg !1083
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @lwDrawSquare(%struct.lwCanvas* %canvas, i32 %x, i32 %y, float %size, float %angle, i32 %color) #0 !dbg !1084 {
entry:
  %canvas.addr = alloca %struct.lwCanvas*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %size.addr = alloca float, align 4
  %angle.addr = alloca float, align 4
  %color.addr = alloca i32, align 4
  %px = alloca [4 x i32], align 16
  %py = alloca [4 x i32], align 16
  %k = alloca float, align 4
  %j = alloca i32, align 4
  %j24 = alloca i32, align 4
  store %struct.lwCanvas* %canvas, %struct.lwCanvas** %canvas.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lwCanvas** %canvas.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !1090, metadata !DIExpression()), !dbg !1091
  store i32 %y, i32* %y.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %y.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  store float %size, float* %size.addr, align 4
  call void @llvm.dbg.declare(metadata float* %size.addr, metadata !1094, metadata !DIExpression()), !dbg !1095
  store float %angle, float* %angle.addr, align 4
  call void @llvm.dbg.declare(metadata float* %angle.addr, metadata !1096, metadata !DIExpression()), !dbg !1097
  store i32 %color, i32* %color.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %color.addr, metadata !1098, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.declare(metadata [4 x i32]* %px, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata [4 x i32]* %py, metadata !1103, metadata !DIExpression()), !dbg !1104
  %0 = load float, float* %size.addr, align 4, !dbg !1105
  %conv = fpext float %0 to double, !dbg !1105
  %div = fdiv double %conv, 0x3FF6A09E667A35E6, !dbg !1105
  %conv1 = fptrunc double %div to float, !dbg !1105
  store float %conv1, float* %size.addr, align 4, !dbg !1105
  %1 = load float, float* %size.addr, align 4, !dbg !1106
  %conv2 = fpext float %1 to double, !dbg !1106
  %2 = call double @llvm.round.f64(double %conv2), !dbg !1107
  %conv3 = fptrunc double %2 to float, !dbg !1107
  store float %conv3, float* %size.addr, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata float* %k, metadata !1109, metadata !DIExpression()), !dbg !1110
  %3 = load float, float* %angle.addr, align 4, !dbg !1111
  %conv4 = fpext float %3 to double, !dbg !1111
  %add = fadd double 0x3FE921FB54442D18, %conv4, !dbg !1112
  %conv5 = fptrunc double %add to float, !dbg !1113
  store float %conv5, float* %k, align 4, !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %j, metadata !1114, metadata !DIExpression()), !dbg !1116
  store i32 0, i32* %j, align 4, !dbg !1116
  br label %for.cond, !dbg !1117

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !dbg !1118
  %cmp = icmp slt i32 %4, 4, !dbg !1120
  br i1 %cmp, label %for.body, label %for.end, !dbg !1121

for.body:                                         ; preds = %for.cond
  %5 = load float, float* %k, align 4, !dbg !1122
  %conv7 = fpext float %5 to double, !dbg !1122
  %call = call double @sin(double %conv7) #8, !dbg !1124
  %6 = load float, float* %size.addr, align 4, !dbg !1125
  %conv8 = fpext float %6 to double, !dbg !1125
  %mul = fmul double %call, %conv8, !dbg !1126
  %7 = load i32, i32* %x.addr, align 4, !dbg !1127
  %conv9 = sitofp i32 %7 to double, !dbg !1127
  %add10 = fadd double %mul, %conv9, !dbg !1128
  %8 = call double @llvm.round.f64(double %add10), !dbg !1129
  %conv11 = fptosi double %8 to i32, !dbg !1129
  %9 = load i32, i32* %j, align 4, !dbg !1130
  %idxprom = sext i32 %9 to i64, !dbg !1131
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %px, i64 0, i64 %idxprom, !dbg !1131
  store i32 %conv11, i32* %arrayidx, align 4, !dbg !1132
  %10 = load float, float* %k, align 4, !dbg !1133
  %conv12 = fpext float %10 to double, !dbg !1133
  %call13 = call double @cos(double %conv12) #8, !dbg !1134
  %11 = load float, float* %size.addr, align 4, !dbg !1135
  %conv14 = fpext float %11 to double, !dbg !1135
  %mul15 = fmul double %call13, %conv14, !dbg !1136
  %12 = load i32, i32* %y.addr, align 4, !dbg !1137
  %conv16 = sitofp i32 %12 to double, !dbg !1137
  %add17 = fadd double %mul15, %conv16, !dbg !1138
  %13 = call double @llvm.round.f64(double %add17), !dbg !1139
  %conv18 = fptosi double %13 to i32, !dbg !1139
  %14 = load i32, i32* %j, align 4, !dbg !1140
  %idxprom19 = sext i32 %14 to i64, !dbg !1141
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i64 0, i64 %idxprom19, !dbg !1141
  store i32 %conv18, i32* %arrayidx20, align 4, !dbg !1142
  %15 = load float, float* %k, align 4, !dbg !1143
  %conv21 = fpext float %15 to double, !dbg !1143
  %add22 = fadd double %conv21, 0x3FF921FB54442D18, !dbg !1143
  %conv23 = fptrunc double %add22 to float, !dbg !1143
  store float %conv23, float* %k, align 4, !dbg !1143
  br label %for.inc, !dbg !1144

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %j, align 4, !dbg !1145
  %inc = add nsw i32 %16, 1, !dbg !1145
  store i32 %inc, i32* %j, align 4, !dbg !1145
  br label %for.cond, !dbg !1146, !llvm.loop !1147

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %j24, metadata !1150, metadata !DIExpression()), !dbg !1152
  store i32 0, i32* %j24, align 4, !dbg !1152
  br label %for.cond25, !dbg !1153

for.cond25:                                       ; preds = %for.inc40, %for.end
  %17 = load i32, i32* %j24, align 4, !dbg !1154
  %cmp26 = icmp slt i32 %17, 4, !dbg !1156
  br i1 %cmp26, label %for.body28, label %for.end42, !dbg !1157

for.body28:                                       ; preds = %for.cond25
  %18 = load %struct.lwCanvas*, %struct.lwCanvas** %canvas.addr, align 8, !dbg !1158
  %19 = load i32, i32* %j24, align 4, !dbg !1159
  %idxprom29 = sext i32 %19 to i64, !dbg !1160
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i64 0, i64 %idxprom29, !dbg !1160
  %20 = load i32, i32* %arrayidx30, align 4, !dbg !1160
  %21 = load i32, i32* %j24, align 4, !dbg !1161
  %idxprom31 = sext i32 %21 to i64, !dbg !1162
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i64 0, i64 %idxprom31, !dbg !1162
  %22 = load i32, i32* %arrayidx32, align 4, !dbg !1162
  %23 = load i32, i32* %j24, align 4, !dbg !1163
  %add33 = add nsw i32 %23, 1, !dbg !1164
  %rem = srem i32 %add33, 4, !dbg !1165
  %idxprom34 = sext i32 %rem to i64, !dbg !1166
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %px, i64 0, i64 %idxprom34, !dbg !1166
  %24 = load i32, i32* %arrayidx35, align 4, !dbg !1166
  %25 = load i32, i32* %j24, align 4, !dbg !1167
  %add36 = add nsw i32 %25, 1, !dbg !1168
  %rem37 = srem i32 %add36, 4, !dbg !1169
  %idxprom38 = sext i32 %rem37 to i64, !dbg !1170
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %py, i64 0, i64 %idxprom38, !dbg !1170
  %26 = load i32, i32* %arrayidx39, align 4, !dbg !1170
  %27 = load i32, i32* %color.addr, align 4, !dbg !1171
  call void @lwDrawLine(%struct.lwCanvas* %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %27), !dbg !1172
  br label %for.inc40, !dbg !1172

for.inc40:                                        ; preds = %for.body28
  %28 = load i32, i32* %j24, align 4, !dbg !1173
  %inc41 = add nsw i32 %28, 1, !dbg !1173
  store i32 %inc41, i32* %j24, align 4, !dbg !1173
  br label %for.cond25, !dbg !1174, !llvm.loop !1175

for.end42:                                        ; preds = %for.cond25
  ret void, !dbg !1177
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.round.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #4

; Function Attrs: nounwind
declare dso_local double @cos(double) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !57, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lolwut.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
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
!57 = !{!5, !58, !61, !78, !88, !97}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 46, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
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
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !69, line: 42, baseType: !5)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !89, file: !63, line: 65, baseType: !92, size: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !63, line: 66, baseType: !70, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !89, file: !63, line: 67, baseType: !74, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !63, line: 69, size: 136, elements: !99)
!99 = !{!100, !103, !104, !105}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !98, file: !63, line: 70, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !67, line: 27, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !69, line: 45, baseType: !60)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !98, file: !63, line: 71, baseType: !101, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !63, line: 72, baseType: !70, size: 8, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !98, file: !63, line: 73, baseType: !74, offset: 136)
!106 = !{i32 7, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!112 = distinct !DISubprogram(name: "lolwutUnstableCommand", scope: !1, file: !1, line: 45, type: !113, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !14, line: 1199, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !14, line: 1089, size: 5952, elements: !118)
!118 = !{!119, !120, !121, !272, !273, !389, !399, !401, !402, !403, !404, !406, !407, !408, !409, !410, !559, !560, !561, !571, !572, !573, !574, !575, !577, !578, !579, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !609, !610, !611, !612, !613, !631, !632, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !668, !669, !670, !671, !690, !691, !692, !693, !700, !701, !702, !703, !704, !705, !706}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !117, file: !14, line: 1090, baseType: !101, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !14, line: 1091, baseType: !101, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !117, file: !14, line: 1092, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "connection", file: !4, line: 40, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "connection", file: !4, line: 77, size: 512, elements: !125)
!125 = !{!126, !261, !263, !265, !266, !267, !268, !269, !270, !271}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !4, line: 78, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionType", file: !4, line: 75, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConnectionType", file: !4, line: 59, size: 960, elements: !130)
!130 = !{!131, !196, !207, !213, !224, !228, !229, !233, !237, !238, !242, !246, !255, !256, !257}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ae_handler", scope: !129, file: !4, line: 60, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !140, !155, !140}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !137, line: 99, size: 640, elements: !138)
!137 = !DIFile(filename: "./ae.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!138 = !{!139, !141, !142, !144, !156, !163, !187, !188, !189, !194, !195}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !136, file: !137, line: 100, baseType: !140, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !136, file: !137, line: 101, baseType: !140, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !136, file: !137, line: 102, baseType: !143, size: 64, offset: 64)
!143 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !136, file: !137, line: 103, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !137, line: 77, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !137, line: 72, size: 256, elements: !148)
!148 = !{!149, !150, !153, !154}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !147, file: !137, line: 73, baseType: !140, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !147, file: !137, line: 74, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !137, line: 66, baseType: !133)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !147, file: !137, line: 75, baseType: !151, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !147, file: !137, line: 76, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !136, file: !137, line: 104, baseType: !157, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !137, line: 96, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !137, line: 93, size: 64, elements: !160)
!160 = !{!161, !162}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !159, file: !137, line: 94, baseType: !140, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !159, file: !137, line: 95, baseType: !140, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !136, file: !137, line: 105, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !137, line: 90, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !137, line: 80, size: 512, elements: !167)
!167 = !{!168, !169, !172, !177, !182, !183, !185, !186}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !166, file: !137, line: 81, baseType: !143, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "when", scope: !166, file: !137, line: 82, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "monotime", file: !171, line: 22, baseType: !101)
!171 = !DIFile(filename: "./monotonic.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !166, file: !137, line: 83, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !137, line: 67, baseType: !175)
!175 = !DISubroutineType(types: !176)
!176 = !{!140, !135, !143, !155}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !166, file: !137, line: 84, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !137, line: 68, baseType: !180)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !135, !155}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !166, file: !137, line: 85, baseType: !155, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !137, line: 86, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !137, line: 87, baseType: !184, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !166, file: !137, line: 88, baseType: !140, size: 32, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !136, file: !137, line: 106, baseType: !140, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !136, file: !137, line: 107, baseType: !155, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !136, file: !137, line: 108, baseType: !190, size: 64, offset: 448)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !137, line: 69, baseType: !192)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !135}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !136, file: !137, line: 109, baseType: !190, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 110, baseType: !140, size: 32, offset: 576)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !129, file: !4, line: 61, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!140, !200, !201, !140, !201, !203}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionCallbackFunc", file: !4, line: 57, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !200}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !129, file: !4, line: 62, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!140, !200, !211, !58}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "writev", scope: !129, file: !4, line: 63, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!140, !200, !217, !140}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !220, line: 26, size: 128, elements: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "")
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !219, file: !220, line: 28, baseType: !155, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !219, file: !220, line: 29, baseType: !58, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !129, file: !4, line: 64, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!140, !200, !155, !58}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !129, file: !4, line: 65, baseType: !204, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !129, file: !4, line: 66, baseType: !230, size: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!140, !200, !203}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "set_write_handler", scope: !129, file: !4, line: 67, baseType: !234, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!140, !200, !203, !140}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_handler", scope: !129, file: !4, line: 68, baseType: !230, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "get_last_error", scope: !129, file: !4, line: 69, baseType: !239, size: 64, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!201, !200}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_connect", scope: !129, file: !4, line: 70, baseType: !243, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!140, !200, !201, !140, !143}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !129, file: !4, line: 71, baseType: !247, size: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !200, !254, !250, !143}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !251, line: 108, baseType: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "")
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !69, line: 194, baseType: !253)
!253 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !129, file: !4, line: 72, baseType: !247, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sync_readline", scope: !129, file: !4, line: 73, baseType: !247, size: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !129, file: !4, line: 74, baseType: !258, size: 64, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!140, !200}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !124, file: !4, line: 79, baseType: !262, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnectionState", file: !4, line: 49, baseType: !3)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !4, line: 80, baseType: !264, size: 16, offset: 96)
!264 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !124, file: !4, line: 81, baseType: !264, size: 16, offset: 112)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !124, file: !4, line: 82, baseType: !140, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !124, file: !4, line: 83, baseType: !155, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "conn_handler", scope: !124, file: !4, line: 84, baseType: !203, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "write_handler", scope: !124, file: !4, line: 85, baseType: !203, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "read_handler", scope: !124, file: !4, line: 86, baseType: !203, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !124, file: !4, line: 87, baseType: !140, size: 32, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "resp", scope: !117, file: !14, line: 1093, baseType: !140, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !117, file: !14, line: 1094, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !14, line: 933, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !14, line: 922, size: 640, elements: !277)
!277 = !{!278, !349, !350, !351, !352, !353, !354, !355, !356, !385}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !276, file: !14, line: 923, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !281, line: 61, baseType: !282)
!281 = !DIFile(filename: "./dict.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !281, line: 79, size: 448, elements: !283)
!283 = !{!284, !316, !340, !342, !343, !346}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !282, file: !281, line: 80, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !281, line: 74, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !281, line: 63, size: 512, elements: !288)
!288 = !{!289, !293, !297, !298, !302, !306, !307, !312}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !287, file: !281, line: 64, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!101, !211}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !287, file: !281, line: 65, baseType: !294, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!155, !279, !211}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !287, file: !281, line: 66, baseType: !294, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !287, file: !281, line: 67, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!140, !279, !211, !211}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !287, file: !281, line: 68, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !279, !155}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !287, file: !281, line: 69, baseType: !303, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "expandAllowed", scope: !287, file: !281, line: 70, baseType: !308, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!140, !58, !311}
!311 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dictEntryMetadataBytes", scope: !287, file: !281, line: 73, baseType: !313, size: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!58, !279}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ht_table", scope: !282, file: !281, line: 82, baseType: !317, size: 128, offset: 64)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !338)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !281, line: 59, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !281, line: 47, size: 192, elements: !322)
!322 = !{!323, !324, !334, !336}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !321, file: !281, line: 48, baseType: !155, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !321, file: !281, line: 54, baseType: !325, size: 64, offset: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !321, file: !281, line: 49, size: 64, elements: !326)
!326 = !{!327, !328, !329, !333}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !325, file: !281, line: 50, baseType: !155, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !325, file: !281, line: 51, baseType: !101, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !325, file: !281, line: 52, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !331, line: 27, baseType: !332)
!331 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !69, line: 44, baseType: !253)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !325, file: !281, line: 53, baseType: !311, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !281, line: 55, baseType: !335, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !321, file: !281, line: 56, baseType: !337, offset: 192)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, elements: !76)
!338 = !{!339}
!339 = !DISubrange(count: 2)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ht_used", scope: !282, file: !281, line: 83, baseType: !341, size: 128, offset: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !338)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !282, file: !281, line: 85, baseType: !253, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "pauserehash", scope: !282, file: !281, line: 88, baseType: !344, size: 16, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !331, line: 25, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !69, line: 39, baseType: !264)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ht_size_exp", scope: !282, file: !281, line: 89, baseType: !347, size: 16, offset: 400)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 16, elements: !338)
!348 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !276, file: !14, line: 924, baseType: !279, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !276, file: !14, line: 925, baseType: !279, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !276, file: !14, line: 926, baseType: !279, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !276, file: !14, line: 927, baseType: !279, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !276, file: !14, line: 928, baseType: !140, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !276, file: !14, line: 929, baseType: !143, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "expires_cursor", scope: !276, file: !14, line: 930, baseType: !60, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !276, file: !14, line: 931, baseType: !357, size: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !359, line: 54, baseType: !360)
!359 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !359, line: 47, size: 384, elements: !361)
!361 = !{!362, !371, !372, !376, !380, !384}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !360, file: !359, line: 48, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !359, line: 40, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !359, line: 36, size: 192, elements: !366)
!366 = !{!367, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !365, file: !359, line: 37, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !359, line: 38, baseType: !368, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !359, line: 39, baseType: !155, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !360, file: !359, line: 49, baseType: !363, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !360, file: !359, line: 50, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!155, !155}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !360, file: !359, line: 51, baseType: !377, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !155}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !360, file: !359, line: 52, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!140, !155, !155}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !360, file: !359, line: 53, baseType: !60, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "slots_to_keys", scope: !276, file: !14, line: 932, baseType: !386, size: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "clusterSlotToKeyMapping", file: !14, line: 917, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "clusterSlotToKeyMapping", file: !14, line: 917, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !14, line: 1095, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !14, line: 862, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !14, line: 854, size: 128, elements: !393)
!393 = !{!394, !395, !396, !397, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !392, file: !14, line: 855, baseType: !5, size: 4, flags: DIFlagBitField, extraData: i64 0)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !392, file: !14, line: 856, baseType: !5, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !392, file: !14, line: 857, baseType: !5, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !392, file: !14, line: 860, baseType: !140, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !392, file: !14, line: 861, baseType: !155, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !117, file: !14, line: 1096, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !63, line: 43, baseType: !254)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !117, file: !14, line: 1097, baseType: !58, size: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !117, file: !14, line: 1098, baseType: !58, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !117, file: !14, line: 1099, baseType: !140, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !117, file: !14, line: 1100, baseType: !405, size: 64, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !117, file: !14, line: 1101, baseType: !140, size: 32, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "original_argc", scope: !117, file: !14, line: 1102, baseType: !140, size: 32, offset: 736)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "original_argv", scope: !117, file: !14, line: 1103, baseType: !405, size: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sum", scope: !117, file: !14, line: 1104, baseType: !58, size: 64, offset: 832)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !117, file: !14, line: 1105, baseType: !411, size: 64, offset: 896)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !14, line: 2233, size: 4224, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !423, !430, !432, !435, !436, !437, !438, !478, !500, !501, !516, !517, !518, !519, !520, !521, !522, !546, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "declared_name", scope: !412, file: !14, line: 2235, baseType: !201, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !412, file: !14, line: 2237, baseType: !201, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "complexity", scope: !412, file: !14, line: 2238, baseType: !201, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !412, file: !14, line: 2239, baseType: !201, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "doc_flags", scope: !412, file: !14, line: 2240, baseType: !140, size: 32, offset: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "replaced_by", scope: !412, file: !14, line: 2241, baseType: !201, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !412, file: !14, line: 2242, baseType: !201, size: 64, offset: 384)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !412, file: !14, line: 2243, baseType: !422, size: 32, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandGroup", file: !14, line: 2135, baseType: !13)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !412, file: !14, line: 2244, baseType: !424, size: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "commandHistory", file: !14, line: 2113, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2110, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !426, file: !14, line: 2111, baseType: !201, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "changes", scope: !426, file: !14, line: 2112, baseType: !201, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tips", scope: !412, file: !14, line: 2245, baseType: !431, size: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !412, file: !14, line: 2246, baseType: !433, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !14, line: 2137, baseType: !113)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !412, file: !14, line: 2247, baseType: !140, size: 32, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !14, line: 2248, baseType: !101, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "acl_categories", scope: !412, file: !14, line: 2249, baseType: !101, size: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_static", scope: !412, file: !14, line: 2250, baseType: !439, size: 1792, offset: 896)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 1792, elements: !476)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "keySpec", file: !14, line: 2048, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 2004, size: 448, elements: !442)
!442 = !{!443, !444, !445, !447, !459, !461}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "notes", scope: !441, file: !14, line: 2006, baseType: !201, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !14, line: 2007, baseType: !101, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "begin_search_type", scope: !441, file: !14, line: 2008, baseType: !446, size: 32, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_bs_type", file: !14, line: 1994, baseType: !34)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !441, file: !14, line: 2022, baseType: !448, size: 128, offset: 192)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 2009, size: 128, elements: !449)
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !448, file: !14, line: 2013, baseType: !451, size: 32)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !14, line: 2010, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !451, file: !14, line: 2012, baseType: !140, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !448, file: !14, line: 2021, baseType: !455, size: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !14, line: 2014, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !455, file: !14, line: 2016, baseType: !201, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "startfrom", scope: !455, file: !14, line: 2020, baseType: !140, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "find_keys_type", scope: !441, file: !14, line: 2023, baseType: !460, size: 32, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "kspec_fk_type", file: !14, line: 2002, baseType: !40)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fk", scope: !441, file: !14, line: 2047, baseType: !462, size: 96, offset: 352)
!462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 2024, size: 96, elements: !463)
!463 = !{!464, !470}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !462, file: !14, line: 2037, baseType: !465, size: 96)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !14, line: 2027, size: 96, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !465, file: !14, line: 2031, baseType: !140, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !465, file: !14, line: 2033, baseType: !140, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !465, file: !14, line: 2036, baseType: !140, size: 32, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "keynum", scope: !462, file: !14, line: 2046, baseType: !471, size: 96)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !14, line: 2038, size: 96, elements: !472)
!472 = !{!473, !474, !475}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "keynumidx", scope: !471, file: !14, line: 2040, baseType: !140, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !471, file: !14, line: 2043, baseType: !140, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !471, file: !14, line: 2045, baseType: !140, size: 32, offset: 64)
!476 = !{!477}
!477 = !DISubrange(count: 4)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !412, file: !14, line: 2253, baseType: !479, size: 64, offset: 2688)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !14, line: 2138, baseType: !481)
!481 = !DISubroutineType(types: !482)
!482 = !{!140, !411, !405, !140, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "getKeysResult", file: !14, line: 1966, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1961, size: 16512, elements: !486)
!486 = !{!487, !496, !498, !499}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "keysbuf", scope: !485, file: !14, line: 1962, baseType: !488, size: 16384)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 16384, elements: !494)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "keyReference", file: !14, line: 1955, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1951, size: 64, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !490, file: !14, line: 1952, baseType: !140, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !14, line: 1953, baseType: !140, size: 32, offset: 32)
!494 = !{!495}
!495 = !DISubrange(count: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !485, file: !14, line: 1963, baseType: !497, size: 64, offset: 16384)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "numkeys", scope: !485, file: !14, line: 1964, baseType: !140, size: 32, offset: 16448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !485, file: !14, line: 1965, baseType: !140, size: 32, offset: 16480)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands", scope: !412, file: !14, line: 2255, baseType: !411, size: 64, offset: 2752)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !412, file: !14, line: 2257, baseType: !502, size: 64, offset: 2816)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommandArg", file: !14, line: 2071, size: 576, elements: !504)
!504 = !{!505, !506, !508, !509, !510, !511, !512, !513, !514, !515}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !14, line: 2072, baseType: !201, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !14, line: 2073, baseType: !507, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandArgType", file: !14, line: 2064, baseType: !46)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "key_spec_index", scope: !503, file: !14, line: 2074, baseType: !140, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !503, file: !14, line: 2075, baseType: !201, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !503, file: !14, line: 2076, baseType: !201, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "since", scope: !503, file: !14, line: 2077, baseType: !201, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !14, line: 2078, baseType: !140, size: 32, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_since", scope: !503, file: !14, line: 2079, baseType: !201, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "subargs", scope: !503, file: !14, line: 2080, baseType: !502, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !503, file: !14, line: 2082, baseType: !140, size: 32, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !412, file: !14, line: 2260, baseType: !143, size: 64, offset: 2880)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !412, file: !14, line: 2260, baseType: !143, size: 64, offset: 2944)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rejected_calls", scope: !412, file: !14, line: 2260, baseType: !143, size: 64, offset: 3008)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "failed_calls", scope: !412, file: !14, line: 2260, baseType: !143, size: 64, offset: 3072)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !412, file: !14, line: 2261, baseType: !140, size: 32, offset: 3136)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !412, file: !14, line: 2266, baseType: !400, size: 64, offset: 3200)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "latency_histogram", scope: !412, file: !14, line: 2267, baseType: !523, size: 64, offset: 3264)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_histogram", file: !525, line: 17, size: 832, elements: !526)
!525 = !DIFile(filename: "../deps/hdr_histogram/hdr_histogram.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!526 = !{!527, !528, !529, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_discernible_value", scope: !524, file: !525, line: 19, baseType: !330, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "highest_trackable_value", scope: !524, file: !525, line: 20, baseType: !330, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "unit_magnitude", scope: !524, file: !525, line: 21, baseType: !530, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !331, line: 26, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !69, line: 41, baseType: !140)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "significant_figures", scope: !524, file: !525, line: 22, baseType: !530, size: 32, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count_magnitude", scope: !524, file: !525, line: 23, baseType: !530, size: 32, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_half_count", scope: !524, file: !525, line: 24, baseType: !530, size: 32, offset: 224)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_mask", scope: !524, file: !525, line: 25, baseType: !330, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sub_bucket_count", scope: !524, file: !525, line: 26, baseType: !530, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bucket_count", scope: !524, file: !525, line: 27, baseType: !530, size: 32, offset: 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "min_value", scope: !524, file: !525, line: 28, baseType: !330, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "max_value", scope: !524, file: !525, line: 29, baseType: !330, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "normalizing_index_offset", scope: !524, file: !525, line: 30, baseType: !530, size: 32, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "conversion_ratio", scope: !524, file: !525, line: 31, baseType: !311, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "counts_len", scope: !524, file: !525, line: 32, baseType: !530, size: 32, offset: 640)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "total_count", scope: !524, file: !525, line: 33, baseType: !330, size: 64, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !524, file: !525, line: 34, baseType: !545, size: 64, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs", scope: !412, file: !14, line: 2268, baseType: !547, size: 64, offset: 3328)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_range_key_spec", scope: !412, file: !14, line: 2269, baseType: !440, size: 448, offset: 3392)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !412, file: !14, line: 2273, baseType: !140, size: 32, offset: 3840)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "num_history", scope: !412, file: !14, line: 2274, baseType: !140, size: 32, offset: 3872)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "num_tips", scope: !412, file: !14, line: 2275, baseType: !140, size: 32, offset: 3904)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_num", scope: !412, file: !14, line: 2276, baseType: !140, size: 32, offset: 3936)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "key_specs_max", scope: !412, file: !14, line: 2277, baseType: !140, size: 32, offset: 3968)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "subcommands_dict", scope: !412, file: !14, line: 2278, baseType: !279, size: 64, offset: 4032)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !412, file: !14, line: 2280, baseType: !411, size: 64, offset: 4096)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "module_cmd", scope: !412, file: !14, line: 2281, baseType: !557, size: 64, offset: 4160)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "RedisModuleCommand", file: !14, line: 685, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !117, file: !14, line: 1105, baseType: !411, size: 64, offset: 960)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "realcmd", scope: !117, file: !14, line: 1106, baseType: !411, size: 64, offset: 1024)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !117, file: !14, line: 1109, baseType: !562, size: 64, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "user", file: !14, line: 1057, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1049, size: 320, elements: !565)
!565 = !{!566, !567, !568, !569, !570}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !14, line: 1050, baseType: !400, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !14, line: 1051, baseType: !92, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "passwords", scope: !564, file: !14, line: 1052, baseType: !357, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "selectors", scope: !564, file: !14, line: 1053, baseType: !357, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "acl_string", scope: !564, file: !14, line: 1056, baseType: !390, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !117, file: !14, line: 1112, baseType: !140, size: 32, offset: 1152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !117, file: !14, line: 1113, baseType: !140, size: 32, offset: 1184)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !117, file: !14, line: 1114, baseType: !253, size: 64, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !117, file: !14, line: 1115, baseType: !357, size: 64, offset: 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !117, file: !14, line: 1116, baseType: !576, size: 64, offset: 1344)
!576 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_reply_errors", scope: !117, file: !14, line: 1117, baseType: !357, size: 64, offset: 1408)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !117, file: !14, line: 1118, baseType: !58, size: 64, offset: 1472)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !117, file: !14, line: 1120, baseType: !580, size: 64, offset: 1536)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !581, line: 10, baseType: !582)
!581 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !69, line: 160, baseType: !253)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !117, file: !14, line: 1121, baseType: !253, size: 64, offset: 1600)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !117, file: !14, line: 1122, baseType: !140, size: 32, offset: 1664)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cur_script", scope: !117, file: !14, line: 1123, baseType: !319, size: 64, offset: 1728)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !117, file: !14, line: 1124, baseType: !580, size: 64, offset: 1792)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !117, file: !14, line: 1125, baseType: !580, size: 64, offset: 1856)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !117, file: !14, line: 1126, baseType: !140, size: 32, offset: 1920)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !117, file: !14, line: 1127, baseType: !140, size: 32, offset: 1952)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "repl_start_cmd_stream_on_ack", scope: !117, file: !14, line: 1128, baseType: !140, size: 32, offset: 1984)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !117, file: !14, line: 1129, baseType: !140, size: 32, offset: 2016)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !117, file: !14, line: 1130, baseType: !593, size: 64, offset: 2048)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !594, line: 58, baseType: !595)
!594 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !253)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !117, file: !14, line: 1131, baseType: !593, size: 64, offset: 2112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !117, file: !14, line: 1132, baseType: !400, size: 64, offset: 2176)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !117, file: !14, line: 1133, baseType: !143, size: 64, offset: 2240)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !117, file: !14, line: 1134, baseType: !143, size: 64, offset: 2304)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "repl_applied", scope: !117, file: !14, line: 1135, baseType: !143, size: 64, offset: 2368)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !117, file: !14, line: 1136, baseType: !143, size: 64, offset: 2432)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !117, file: !14, line: 1137, baseType: !143, size: 64, offset: 2496)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "repl_last_partial_write", scope: !117, file: !14, line: 1138, baseType: !143, size: 64, offset: 2560)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !117, file: !14, line: 1139, baseType: !143, size: 64, offset: 2624)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !117, file: !14, line: 1142, baseType: !606, size: 328, offset: 2688)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 328, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 41)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !117, file: !14, line: 1143, baseType: !140, size: 32, offset: 3040)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "slave_addr", scope: !117, file: !14, line: 1144, baseType: !254, size: 64, offset: 3072)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !117, file: !14, line: 1145, baseType: !140, size: 32, offset: 3136)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "slave_req", scope: !117, file: !14, line: 1146, baseType: !140, size: 32, offset: 3168)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !117, file: !14, line: 1147, baseType: !614, size: 320, offset: 3200)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !14, line: 967, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !14, line: 956, size: 320, elements: !616)
!616 = !{!617, !626, !627, !628, !629, !630}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !615, file: !14, line: 957, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !14, line: 954, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !14, line: 949, size: 192, elements: !621)
!621 = !{!622, !623, !624, !625}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !620, file: !14, line: 950, baseType: !405, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len", scope: !620, file: !14, line: 951, baseType: !140, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !620, file: !14, line: 952, baseType: !140, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !620, file: !14, line: 953, baseType: !411, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !615, file: !14, line: 958, baseType: !140, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !615, file: !14, line: 959, baseType: !140, size: 32, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_inv_flags", scope: !615, file: !14, line: 962, baseType: !140, size: 32, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "argv_len_sums", scope: !615, file: !14, line: 965, baseType: !58, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_count", scope: !615, file: !14, line: 966, baseType: !140, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !117, file: !14, line: 1148, baseType: !140, size: 32, offset: 3520)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !117, file: !14, line: 1149, baseType: !633, size: 704, offset: 3584)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !14, line: 1003, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !14, line: 971, size: 704, elements: !635)
!635 = !{!636, !637, !639, !640, !641, !646, !647, !648, !649, !650, !651, !652}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !634, file: !14, line: 973, baseType: !253, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !634, file: !14, line: 974, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !14, line: 64, baseType: !143)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !634, file: !14, line: 978, baseType: !279, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !634, file: !14, line: 980, baseType: !390, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "blockpos", scope: !634, file: !14, line: 985, baseType: !642, size: 64, offset: 256)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockPos", file: !14, line: 982, size: 64, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wherefrom", scope: !642, file: !14, line: 983, baseType: !140, size: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "whereto", scope: !642, file: !14, line: 984, baseType: !140, size: 32, offset: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !634, file: !14, line: 990, baseType: !58, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !634, file: !14, line: 991, baseType: !390, size: 64, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !634, file: !14, line: 992, baseType: !390, size: 64, offset: 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !634, file: !14, line: 993, baseType: !140, size: 32, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !634, file: !14, line: 996, baseType: !140, size: 32, offset: 544)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !634, file: !14, line: 997, baseType: !143, size: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !634, file: !14, line: 1000, baseType: !155, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !117, file: !14, line: 1150, baseType: !143, size: 64, offset: 4288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !117, file: !14, line: 1151, baseType: !357, size: 64, offset: 4352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !117, file: !14, line: 1152, baseType: !279, size: 64, offset: 4416)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !117, file: !14, line: 1153, baseType: !357, size: 64, offset: 4480)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pubsubshard_channels", scope: !117, file: !14, line: 1154, baseType: !279, size: 64, offset: 4544)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !117, file: !14, line: 1155, baseType: !400, size: 64, offset: 4608)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sockname", scope: !117, file: !14, line: 1156, baseType: !400, size: 64, offset: 4672)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !117, file: !14, line: 1157, baseType: !363, size: 64, offset: 4736)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "postponed_list_node", scope: !117, file: !14, line: 1158, baseType: !363, size: 64, offset: 4800)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_node", scope: !117, file: !14, line: 1159, baseType: !363, size: 64, offset: 4864)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback", scope: !117, file: !14, line: 1160, baseType: !664, size: 64, offset: 4928)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "RedisModuleUserChangedFunc", file: !14, line: 715, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !101, !155}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "auth_callback_privdata", scope: !117, file: !14, line: 1163, baseType: !155, size: 64, offset: 4992)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "auth_module", scope: !117, file: !14, line: 1166, baseType: !155, size: 64, offset: 5056)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_redirection", scope: !117, file: !14, line: 1173, baseType: !101, size: 64, offset: 5120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "client_tracking_prefixes", scope: !117, file: !14, line: 1174, baseType: !672, size: 64, offset: 5184)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !674, line: 137, baseType: !675)
!674 = !DIFile(filename: "./rax.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !674, line: 133, size: 192, elements: !676)
!676 = !{!677, !688, !689}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !675, file: !674, line: 134, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !674, line: 131, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !674, line: 98, size: 32, elements: !681)
!681 = !{!682, !683, !684, !685, !686}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !680, file: !674, line: 99, baseType: !92, size: 1, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !680, file: !674, line: 100, baseType: !92, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !680, file: !674, line: 101, baseType: !92, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !680, file: !674, line: 102, baseType: !92, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !680, file: !674, line: 130, baseType: !687, offset: 32)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !76)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !675, file: !674, line: 135, baseType: !101, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !675, file: !674, line: 136, baseType: !101, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_usage", scope: !117, file: !14, line: 1182, baseType: !58, size: 64, offset: 5248)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_memory_type", scope: !117, file: !14, line: 1183, baseType: !140, size: 32, offset: 5312)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket_node", scope: !117, file: !14, line: 1185, baseType: !363, size: 64, offset: 5376)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_bucket", scope: !117, file: !14, line: 1186, baseType: !694, size: 64, offset: 5440)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientMemUsageBucket", file: !14, line: 1087, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 1084, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "clients", scope: !696, file: !14, line: 1085, baseType: !357, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mem_usage_sum", scope: !696, file: !14, line: 1086, baseType: !58, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ref_repl_buf_node", scope: !117, file: !14, line: 1188, baseType: !363, size: 64, offset: 5504)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ref_block_pos", scope: !117, file: !14, line: 1190, baseType: !58, size: 64, offset: 5568)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak", scope: !117, file: !14, line: 1194, baseType: !58, size: 64, offset: 5632)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "buf_peak_last_reset_time", scope: !117, file: !14, line: 1195, baseType: !638, size: 64, offset: 5696)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !117, file: !14, line: 1196, baseType: !140, size: 32, offset: 5760)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "buf_usable_size", scope: !117, file: !14, line: 1197, baseType: !58, size: 64, offset: 5824)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !117, file: !14, line: 1198, baseType: !254, size: 64, offset: 5888)
!707 = !{}
!708 = !DILocalVariable(name: "c", arg: 1, scope: !112, file: !1, line: 45, type: !115)
!709 = !DILocation(line: 45, column: 36, scope: !112)
!710 = !DILocalVariable(name: "rendered", scope: !112, file: !1, line: 46, type: !400)
!711 = !DILocation(line: 46, column: 9, scope: !112)
!712 = !DILocation(line: 46, column: 20, scope: !112)
!713 = !DILocation(line: 47, column: 23, scope: !112)
!714 = !DILocation(line: 47, column: 16, scope: !112)
!715 = !DILocation(line: 47, column: 14, scope: !112)
!716 = !DILocation(line: 48, column: 26, scope: !112)
!717 = !DILocation(line: 48, column: 16, scope: !112)
!718 = !DILocation(line: 48, column: 14, scope: !112)
!719 = !DILocation(line: 49, column: 22, scope: !112)
!720 = !DILocation(line: 49, column: 24, scope: !112)
!721 = !DILocation(line: 49, column: 40, scope: !112)
!722 = !DILocation(line: 49, column: 33, scope: !112)
!723 = !DILocation(line: 49, column: 5, scope: !112)
!724 = !DILocation(line: 50, column: 13, scope: !112)
!725 = !DILocation(line: 50, column: 5, scope: !112)
!726 = !DILocation(line: 51, column: 1, scope: !112)
!727 = distinct !DISubprogram(name: "sdslen", scope: !63, file: !63, line: 87, type: !728, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !707)
!728 = !DISubroutineType(types: !729)
!729 = !{!58, !730}
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!731 = !DILocalVariable(name: "s", arg: 1, scope: !727, file: !63, line: 87, type: !730)
!732 = !DILocation(line: 87, column: 39, scope: !727)
!733 = !DILocalVariable(name: "flags", scope: !727, file: !63, line: 88, type: !70)
!734 = !DILocation(line: 88, column: 19, scope: !727)
!735 = !DILocation(line: 88, column: 27, scope: !727)
!736 = !DILocation(line: 89, column: 12, scope: !727)
!737 = !DILocation(line: 89, column: 17, scope: !727)
!738 = !DILocation(line: 89, column: 5, scope: !727)
!739 = !DILocation(line: 91, column: 20, scope: !740)
!740 = distinct !DILexicalBlock(scope: !727, file: !63, line: 89, column: 33)
!741 = !DILocation(line: 91, column: 13, scope: !740)
!742 = !DILocation(line: 93, column: 20, scope: !740)
!743 = !DILocation(line: 93, column: 34, scope: !740)
!744 = !DILocation(line: 93, column: 13, scope: !740)
!745 = !DILocation(line: 95, column: 20, scope: !740)
!746 = !DILocation(line: 95, column: 35, scope: !740)
!747 = !DILocation(line: 95, column: 13, scope: !740)
!748 = !DILocation(line: 97, column: 20, scope: !740)
!749 = !DILocation(line: 97, column: 35, scope: !740)
!750 = !DILocation(line: 97, column: 13, scope: !740)
!751 = !DILocation(line: 99, column: 20, scope: !740)
!752 = !DILocation(line: 99, column: 35, scope: !740)
!753 = !DILocation(line: 99, column: 13, scope: !740)
!754 = !DILocation(line: 101, column: 5, scope: !727)
!755 = !DILocation(line: 102, column: 1, scope: !727)
!756 = distinct !DISubprogram(name: "lolwutCommand", scope: !1, file: !1, line: 54, type: !113, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!757 = !DILocalVariable(name: "c", arg: 1, scope: !756, file: !1, line: 54, type: !115)
!758 = !DILocation(line: 54, column: 28, scope: !756)
!759 = !DILocalVariable(name: "v", scope: !756, file: !1, line: 55, type: !254)
!760 = !DILocation(line: 55, column: 11, scope: !756)
!761 = !DILocalVariable(name: "verstr", scope: !756, file: !1, line: 56, type: !762)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 64)
!765 = !DILocation(line: 56, column: 10, scope: !756)
!766 = !DILocation(line: 58, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !756, file: !1, line: 58, column: 9)
!768 = !DILocation(line: 58, column: 12, scope: !767)
!769 = !DILocation(line: 58, column: 17, scope: !767)
!770 = !DILocation(line: 58, column: 22, scope: !767)
!771 = !DILocation(line: 58, column: 37, scope: !767)
!772 = !DILocation(line: 58, column: 40, scope: !767)
!773 = !DILocation(line: 58, column: 49, scope: !767)
!774 = !DILocation(line: 58, column: 26, scope: !767)
!775 = !DILocation(line: 58, column: 9, scope: !756)
!776 = !DILocalVariable(name: "ver", scope: !777, file: !1, line: 59, type: !253)
!777 = distinct !DILexicalBlock(scope: !767, file: !1, line: 58, column: 65)
!778 = !DILocation(line: 59, column: 14, scope: !777)
!779 = !DILocation(line: 60, column: 38, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !1, line: 60, column: 13)
!781 = !DILocation(line: 60, column: 40, scope: !780)
!782 = !DILocation(line: 60, column: 43, scope: !780)
!783 = !DILocation(line: 60, column: 13, scope: !780)
!784 = !DILocation(line: 60, column: 62, scope: !780)
!785 = !DILocation(line: 60, column: 13, scope: !777)
!786 = !DILocation(line: 60, column: 71, scope: !780)
!787 = !DILocation(line: 61, column: 18, scope: !777)
!788 = !DILocation(line: 61, column: 63, scope: !777)
!789 = !DILocation(line: 61, column: 49, scope: !777)
!790 = !DILocation(line: 61, column: 9, scope: !777)
!791 = !DILocation(line: 62, column: 13, scope: !777)
!792 = !DILocation(line: 62, column: 11, scope: !777)
!793 = !DILocation(line: 67, column: 9, scope: !777)
!794 = !DILocation(line: 67, column: 12, scope: !777)
!795 = !DILocation(line: 67, column: 17, scope: !777)
!796 = !DILocation(line: 68, column: 9, scope: !777)
!797 = !DILocation(line: 68, column: 12, scope: !777)
!798 = !DILocation(line: 68, column: 17, scope: !777)
!799 = !DILocation(line: 69, column: 5, scope: !777)
!800 = !DILocation(line: 71, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !756, file: !1, line: 71, column: 9)
!802 = !DILocation(line: 71, column: 15, scope: !801)
!803 = !DILocation(line: 71, column: 22, scope: !801)
!804 = !DILocation(line: 71, column: 25, scope: !801)
!805 = !DILocation(line: 71, column: 30, scope: !801)
!806 = !DILocation(line: 71, column: 37, scope: !801)
!807 = !DILocation(line: 71, column: 40, scope: !801)
!808 = !DILocation(line: 71, column: 45, scope: !801)
!809 = !DILocation(line: 71, column: 53, scope: !801)
!810 = !DILocation(line: 72, column: 10, scope: !801)
!811 = !DILocation(line: 72, column: 15, scope: !801)
!812 = !DILocation(line: 72, column: 22, scope: !801)
!813 = !DILocation(line: 72, column: 25, scope: !801)
!814 = !DILocation(line: 72, column: 30, scope: !801)
!815 = !DILocation(line: 72, column: 37, scope: !801)
!816 = !DILocation(line: 72, column: 40, scope: !801)
!817 = !DILocation(line: 72, column: 45, scope: !801)
!818 = !DILocation(line: 71, column: 9, scope: !756)
!819 = !DILocation(line: 73, column: 24, scope: !801)
!820 = !DILocation(line: 73, column: 9, scope: !801)
!821 = !DILocation(line: 74, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !801, file: !1, line: 74, column: 14)
!823 = !DILocation(line: 74, column: 20, scope: !822)
!824 = !DILocation(line: 74, column: 27, scope: !822)
!825 = !DILocation(line: 74, column: 30, scope: !822)
!826 = !DILocation(line: 74, column: 35, scope: !822)
!827 = !DILocation(line: 74, column: 42, scope: !822)
!828 = !DILocation(line: 74, column: 45, scope: !822)
!829 = !DILocation(line: 74, column: 50, scope: !822)
!830 = !DILocation(line: 74, column: 58, scope: !822)
!831 = !DILocation(line: 75, column: 15, scope: !822)
!832 = !DILocation(line: 75, column: 20, scope: !822)
!833 = !DILocation(line: 75, column: 27, scope: !822)
!834 = !DILocation(line: 75, column: 30, scope: !822)
!835 = !DILocation(line: 75, column: 35, scope: !822)
!836 = !DILocation(line: 75, column: 42, scope: !822)
!837 = !DILocation(line: 75, column: 45, scope: !822)
!838 = !DILocation(line: 75, column: 50, scope: !822)
!839 = !DILocation(line: 74, column: 14, scope: !801)
!840 = !DILocation(line: 76, column: 24, scope: !822)
!841 = !DILocation(line: 76, column: 9, scope: !822)
!842 = !DILocation(line: 78, column: 31, scope: !822)
!843 = !DILocation(line: 78, column: 9, scope: !822)
!844 = !DILocation(line: 81, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !756, file: !1, line: 81, column: 9)
!846 = !DILocation(line: 81, column: 14, scope: !845)
!847 = !DILocation(line: 81, column: 11, scope: !845)
!848 = !DILocation(line: 81, column: 9, scope: !756)
!849 = !DILocation(line: 82, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !1, line: 81, column: 22)
!851 = !DILocation(line: 82, column: 12, scope: !850)
!852 = !DILocation(line: 82, column: 17, scope: !850)
!853 = !DILocation(line: 83, column: 9, scope: !850)
!854 = !DILocation(line: 83, column: 12, scope: !850)
!855 = !DILocation(line: 83, column: 17, scope: !850)
!856 = !DILocation(line: 84, column: 5, scope: !850)
!857 = !DILocation(line: 85, column: 1, scope: !756)
!858 = distinct !DISubprogram(name: "lwCreateCanvas", scope: !1, file: !1, line: 93, type: !859, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!859 = !DISubroutineType(types: !860)
!860 = !{!861, !140, !140, !140}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwCanvas", file: !863, line: 45, baseType: !864)
!863 = !DIFile(filename: "./lolwut.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwCanvas", file: !863, line: 41, size: 128, elements: !865)
!865 = !{!866, !867, !868}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !864, file: !863, line: 42, baseType: !140, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !864, file: !863, line: 43, baseType: !140, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pixels", scope: !864, file: !863, line: 44, baseType: !254, size: 64, offset: 64)
!869 = !DILocalVariable(name: "width", arg: 1, scope: !858, file: !1, line: 93, type: !140)
!870 = !DILocation(line: 93, column: 30, scope: !858)
!871 = !DILocalVariable(name: "height", arg: 2, scope: !858, file: !1, line: 93, type: !140)
!872 = !DILocation(line: 93, column: 41, scope: !858)
!873 = !DILocalVariable(name: "bgcolor", arg: 3, scope: !858, file: !1, line: 93, type: !140)
!874 = !DILocation(line: 93, column: 53, scope: !858)
!875 = !DILocalVariable(name: "canvas", scope: !858, file: !1, line: 94, type: !861)
!876 = !DILocation(line: 94, column: 15, scope: !858)
!877 = !DILocation(line: 94, column: 24, scope: !858)
!878 = !DILocation(line: 95, column: 21, scope: !858)
!879 = !DILocation(line: 95, column: 5, scope: !858)
!880 = !DILocation(line: 95, column: 13, scope: !858)
!881 = !DILocation(line: 95, column: 19, scope: !858)
!882 = !DILocation(line: 96, column: 22, scope: !858)
!883 = !DILocation(line: 96, column: 5, scope: !858)
!884 = !DILocation(line: 96, column: 13, scope: !858)
!885 = !DILocation(line: 96, column: 20, scope: !858)
!886 = !DILocation(line: 97, column: 38, scope: !858)
!887 = !DILocation(line: 97, column: 30, scope: !858)
!888 = !DILocation(line: 97, column: 44, scope: !858)
!889 = !DILocation(line: 97, column: 43, scope: !858)
!890 = !DILocation(line: 97, column: 22, scope: !858)
!891 = !DILocation(line: 97, column: 5, scope: !858)
!892 = !DILocation(line: 97, column: 13, scope: !858)
!893 = !DILocation(line: 97, column: 20, scope: !858)
!894 = !DILocation(line: 98, column: 12, scope: !858)
!895 = !DILocation(line: 98, column: 20, scope: !858)
!896 = !DILocation(line: 98, column: 27, scope: !858)
!897 = !DILocation(line: 98, column: 5, scope: !858)
!898 = !DILocation(line: 98, column: 43, scope: !858)
!899 = !DILocation(line: 98, column: 35, scope: !858)
!900 = !DILocation(line: 98, column: 49, scope: !858)
!901 = !DILocation(line: 98, column: 48, scope: !858)
!902 = !DILocation(line: 99, column: 12, scope: !858)
!903 = !DILocation(line: 99, column: 5, scope: !858)
!904 = distinct !DISubprogram(name: "lwFreeCanvas", scope: !1, file: !1, line: 103, type: !905, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !861}
!907 = !DILocalVariable(name: "canvas", arg: 1, scope: !904, file: !1, line: 103, type: !861)
!908 = !DILocation(line: 103, column: 29, scope: !904)
!909 = !DILocation(line: 104, column: 11, scope: !904)
!910 = !DILocation(line: 104, column: 19, scope: !904)
!911 = !DILocation(line: 104, column: 5, scope: !904)
!912 = !DILocation(line: 105, column: 11, scope: !904)
!913 = !DILocation(line: 105, column: 5, scope: !904)
!914 = !DILocation(line: 106, column: 1, scope: !904)
!915 = distinct !DISubprogram(name: "lwDrawPixel", scope: !1, file: !1, line: 112, type: !916, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !861, !140, !140, !140}
!918 = !DILocalVariable(name: "canvas", arg: 1, scope: !915, file: !1, line: 112, type: !861)
!919 = !DILocation(line: 112, column: 28, scope: !915)
!920 = !DILocalVariable(name: "x", arg: 2, scope: !915, file: !1, line: 112, type: !140)
!921 = !DILocation(line: 112, column: 40, scope: !915)
!922 = !DILocalVariable(name: "y", arg: 3, scope: !915, file: !1, line: 112, type: !140)
!923 = !DILocation(line: 112, column: 47, scope: !915)
!924 = !DILocalVariable(name: "color", arg: 4, scope: !915, file: !1, line: 112, type: !140)
!925 = !DILocation(line: 112, column: 54, scope: !915)
!926 = !DILocation(line: 113, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !915, file: !1, line: 113, column: 9)
!928 = !DILocation(line: 113, column: 11, scope: !927)
!929 = !DILocation(line: 113, column: 15, scope: !927)
!930 = !DILocation(line: 113, column: 18, scope: !927)
!931 = !DILocation(line: 113, column: 23, scope: !927)
!932 = !DILocation(line: 113, column: 31, scope: !927)
!933 = !DILocation(line: 113, column: 20, scope: !927)
!934 = !DILocation(line: 113, column: 37, scope: !927)
!935 = !DILocation(line: 114, column: 9, scope: !927)
!936 = !DILocation(line: 114, column: 11, scope: !927)
!937 = !DILocation(line: 114, column: 15, scope: !927)
!938 = !DILocation(line: 114, column: 18, scope: !927)
!939 = !DILocation(line: 114, column: 23, scope: !927)
!940 = !DILocation(line: 114, column: 31, scope: !927)
!941 = !DILocation(line: 114, column: 20, scope: !927)
!942 = !DILocation(line: 113, column: 9, scope: !915)
!943 = !DILocation(line: 114, column: 39, scope: !927)
!944 = !DILocation(line: 115, column: 41, scope: !915)
!945 = !DILocation(line: 115, column: 5, scope: !915)
!946 = !DILocation(line: 115, column: 13, scope: !915)
!947 = !DILocation(line: 115, column: 20, scope: !915)
!948 = !DILocation(line: 115, column: 22, scope: !915)
!949 = !DILocation(line: 115, column: 24, scope: !915)
!950 = !DILocation(line: 115, column: 32, scope: !915)
!951 = !DILocation(line: 115, column: 23, scope: !915)
!952 = !DILocation(line: 115, column: 21, scope: !915)
!953 = !DILocation(line: 115, column: 39, scope: !915)
!954 = !DILocation(line: 116, column: 1, scope: !915)
!955 = distinct !DISubprogram(name: "lwGetPixel", scope: !1, file: !1, line: 119, type: !956, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!956 = !DISubroutineType(types: !957)
!957 = !{!140, !861, !140, !140}
!958 = !DILocalVariable(name: "canvas", arg: 1, scope: !955, file: !1, line: 119, type: !861)
!959 = !DILocation(line: 119, column: 26, scope: !955)
!960 = !DILocalVariable(name: "x", arg: 2, scope: !955, file: !1, line: 119, type: !140)
!961 = !DILocation(line: 119, column: 38, scope: !955)
!962 = !DILocalVariable(name: "y", arg: 3, scope: !955, file: !1, line: 119, type: !140)
!963 = !DILocation(line: 119, column: 45, scope: !955)
!964 = !DILocation(line: 120, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !955, file: !1, line: 120, column: 9)
!966 = !DILocation(line: 120, column: 11, scope: !965)
!967 = !DILocation(line: 120, column: 15, scope: !965)
!968 = !DILocation(line: 120, column: 18, scope: !965)
!969 = !DILocation(line: 120, column: 23, scope: !965)
!970 = !DILocation(line: 120, column: 31, scope: !965)
!971 = !DILocation(line: 120, column: 20, scope: !965)
!972 = !DILocation(line: 120, column: 37, scope: !965)
!973 = !DILocation(line: 121, column: 9, scope: !965)
!974 = !DILocation(line: 121, column: 11, scope: !965)
!975 = !DILocation(line: 121, column: 15, scope: !965)
!976 = !DILocation(line: 121, column: 18, scope: !965)
!977 = !DILocation(line: 121, column: 23, scope: !965)
!978 = !DILocation(line: 121, column: 31, scope: !965)
!979 = !DILocation(line: 121, column: 20, scope: !965)
!980 = !DILocation(line: 120, column: 9, scope: !955)
!981 = !DILocation(line: 121, column: 39, scope: !965)
!982 = !DILocation(line: 122, column: 12, scope: !955)
!983 = !DILocation(line: 122, column: 20, scope: !955)
!984 = !DILocation(line: 122, column: 27, scope: !955)
!985 = !DILocation(line: 122, column: 29, scope: !955)
!986 = !DILocation(line: 122, column: 31, scope: !955)
!987 = !DILocation(line: 122, column: 39, scope: !955)
!988 = !DILocation(line: 122, column: 30, scope: !955)
!989 = !DILocation(line: 122, column: 28, scope: !955)
!990 = !DILocation(line: 122, column: 5, scope: !955)
!991 = !DILocation(line: 123, column: 1, scope: !955)
!992 = distinct !DISubprogram(name: "lwDrawLine", scope: !1, file: !1, line: 126, type: !993, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !861, !140, !140, !140, !140, !140}
!995 = !DILocalVariable(name: "canvas", arg: 1, scope: !992, file: !1, line: 126, type: !861)
!996 = !DILocation(line: 126, column: 27, scope: !992)
!997 = !DILocalVariable(name: "x1", arg: 2, scope: !992, file: !1, line: 126, type: !140)
!998 = !DILocation(line: 126, column: 39, scope: !992)
!999 = !DILocalVariable(name: "y1", arg: 3, scope: !992, file: !1, line: 126, type: !140)
!1000 = !DILocation(line: 126, column: 47, scope: !992)
!1001 = !DILocalVariable(name: "x2", arg: 4, scope: !992, file: !1, line: 126, type: !140)
!1002 = !DILocation(line: 126, column: 55, scope: !992)
!1003 = !DILocalVariable(name: "y2", arg: 5, scope: !992, file: !1, line: 126, type: !140)
!1004 = !DILocation(line: 126, column: 63, scope: !992)
!1005 = !DILocalVariable(name: "color", arg: 6, scope: !992, file: !1, line: 126, type: !140)
!1006 = !DILocation(line: 126, column: 71, scope: !992)
!1007 = !DILocalVariable(name: "dx", scope: !992, file: !1, line: 127, type: !140)
!1008 = !DILocation(line: 127, column: 9, scope: !992)
!1009 = !DILocation(line: 127, column: 18, scope: !992)
!1010 = !DILocation(line: 127, column: 21, scope: !992)
!1011 = !DILocation(line: 127, column: 20, scope: !992)
!1012 = !DILocation(line: 127, column: 14, scope: !992)
!1013 = !DILocalVariable(name: "dy", scope: !992, file: !1, line: 128, type: !140)
!1014 = !DILocation(line: 128, column: 9, scope: !992)
!1015 = !DILocation(line: 128, column: 18, scope: !992)
!1016 = !DILocation(line: 128, column: 21, scope: !992)
!1017 = !DILocation(line: 128, column: 20, scope: !992)
!1018 = !DILocation(line: 128, column: 14, scope: !992)
!1019 = !DILocalVariable(name: "sx", scope: !992, file: !1, line: 129, type: !140)
!1020 = !DILocation(line: 129, column: 9, scope: !992)
!1021 = !DILocation(line: 129, column: 15, scope: !992)
!1022 = !DILocation(line: 129, column: 20, scope: !992)
!1023 = !DILocation(line: 129, column: 18, scope: !992)
!1024 = !DILocation(line: 129, column: 14, scope: !992)
!1025 = !DILocalVariable(name: "sy", scope: !992, file: !1, line: 130, type: !140)
!1026 = !DILocation(line: 130, column: 9, scope: !992)
!1027 = !DILocation(line: 130, column: 15, scope: !992)
!1028 = !DILocation(line: 130, column: 20, scope: !992)
!1029 = !DILocation(line: 130, column: 18, scope: !992)
!1030 = !DILocation(line: 130, column: 14, scope: !992)
!1031 = !DILocalVariable(name: "err", scope: !992, file: !1, line: 131, type: !140)
!1032 = !DILocation(line: 131, column: 9, scope: !992)
!1033 = !DILocation(line: 131, column: 15, scope: !992)
!1034 = !DILocation(line: 131, column: 18, scope: !992)
!1035 = !DILocation(line: 131, column: 17, scope: !992)
!1036 = !DILocalVariable(name: "e2", scope: !992, file: !1, line: 131, type: !140)
!1037 = !DILocation(line: 131, column: 22, scope: !992)
!1038 = !DILocation(line: 133, column: 5, scope: !992)
!1039 = !DILocation(line: 134, column: 21, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !992, file: !1, line: 133, column: 14)
!1041 = !DILocation(line: 134, column: 28, scope: !1040)
!1042 = !DILocation(line: 134, column: 31, scope: !1040)
!1043 = !DILocation(line: 134, column: 34, scope: !1040)
!1044 = !DILocation(line: 134, column: 9, scope: !1040)
!1045 = !DILocation(line: 135, column: 13, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 135, column: 13)
!1047 = !DILocation(line: 135, column: 19, scope: !1046)
!1048 = !DILocation(line: 135, column: 16, scope: !1046)
!1049 = !DILocation(line: 135, column: 22, scope: !1046)
!1050 = !DILocation(line: 135, column: 25, scope: !1046)
!1051 = !DILocation(line: 135, column: 31, scope: !1046)
!1052 = !DILocation(line: 135, column: 28, scope: !1046)
!1053 = !DILocation(line: 135, column: 13, scope: !1040)
!1054 = !DILocation(line: 135, column: 35, scope: !1046)
!1055 = !DILocation(line: 136, column: 14, scope: !1040)
!1056 = !DILocation(line: 136, column: 17, scope: !1040)
!1057 = !DILocation(line: 136, column: 12, scope: !1040)
!1058 = !DILocation(line: 137, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 137, column: 13)
!1060 = !DILocation(line: 137, column: 19, scope: !1059)
!1061 = !DILocation(line: 137, column: 18, scope: !1059)
!1062 = !DILocation(line: 137, column: 16, scope: !1059)
!1063 = !DILocation(line: 137, column: 13, scope: !1040)
!1064 = !DILocation(line: 138, column: 20, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 137, column: 23)
!1066 = !DILocation(line: 138, column: 17, scope: !1065)
!1067 = !DILocation(line: 139, column: 19, scope: !1065)
!1068 = !DILocation(line: 139, column: 16, scope: !1065)
!1069 = !DILocation(line: 140, column: 9, scope: !1065)
!1070 = !DILocation(line: 141, column: 13, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1040, file: !1, line: 141, column: 13)
!1072 = !DILocation(line: 141, column: 18, scope: !1071)
!1073 = !DILocation(line: 141, column: 16, scope: !1071)
!1074 = !DILocation(line: 141, column: 13, scope: !1040)
!1075 = !DILocation(line: 142, column: 20, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 141, column: 22)
!1077 = !DILocation(line: 142, column: 17, scope: !1076)
!1078 = !DILocation(line: 143, column: 19, scope: !1076)
!1079 = !DILocation(line: 143, column: 16, scope: !1076)
!1080 = !DILocation(line: 144, column: 9, scope: !1076)
!1081 = distinct !{!1081, !1038, !1082}
!1082 = !DILocation(line: 145, column: 5, scope: !992)
!1083 = !DILocation(line: 146, column: 1, scope: !992)
!1084 = distinct !DISubprogram(name: "lwDrawSquare", scope: !1, file: !1, line: 167, type: !1085, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !707)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !861, !140, !140, !1087, !1087, !140}
!1087 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1088 = !DILocalVariable(name: "canvas", arg: 1, scope: !1084, file: !1, line: 167, type: !861)
!1089 = !DILocation(line: 167, column: 29, scope: !1084)
!1090 = !DILocalVariable(name: "x", arg: 2, scope: !1084, file: !1, line: 167, type: !140)
!1091 = !DILocation(line: 167, column: 41, scope: !1084)
!1092 = !DILocalVariable(name: "y", arg: 3, scope: !1084, file: !1, line: 167, type: !140)
!1093 = !DILocation(line: 167, column: 48, scope: !1084)
!1094 = !DILocalVariable(name: "size", arg: 4, scope: !1084, file: !1, line: 167, type: !1087)
!1095 = !DILocation(line: 167, column: 57, scope: !1084)
!1096 = !DILocalVariable(name: "angle", arg: 5, scope: !1084, file: !1, line: 167, type: !1087)
!1097 = !DILocation(line: 167, column: 69, scope: !1084)
!1098 = !DILocalVariable(name: "color", arg: 6, scope: !1084, file: !1, line: 167, type: !140)
!1099 = !DILocation(line: 167, column: 80, scope: !1084)
!1100 = !DILocalVariable(name: "px", scope: !1084, file: !1, line: 168, type: !1101)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !476)
!1102 = !DILocation(line: 168, column: 9, scope: !1084)
!1103 = !DILocalVariable(name: "py", scope: !1084, file: !1, line: 168, type: !1101)
!1104 = !DILocation(line: 168, column: 16, scope: !1084)
!1105 = !DILocation(line: 174, column: 10, scope: !1084)
!1106 = !DILocation(line: 175, column: 18, scope: !1084)
!1107 = !DILocation(line: 175, column: 12, scope: !1084)
!1108 = !DILocation(line: 175, column: 10, scope: !1084)
!1109 = !DILocalVariable(name: "k", scope: !1084, file: !1, line: 178, type: !1087)
!1110 = !DILocation(line: 178, column: 11, scope: !1084)
!1111 = !DILocation(line: 178, column: 24, scope: !1084)
!1112 = !DILocation(line: 178, column: 22, scope: !1084)
!1113 = !DILocation(line: 178, column: 15, scope: !1084)
!1114 = !DILocalVariable(name: "j", scope: !1115, file: !1, line: 179, type: !140)
!1115 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 179, column: 5)
!1116 = !DILocation(line: 179, column: 14, scope: !1115)
!1117 = !DILocation(line: 179, column: 10, scope: !1115)
!1118 = !DILocation(line: 179, column: 21, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !1, line: 179, column: 5)
!1120 = !DILocation(line: 179, column: 23, scope: !1119)
!1121 = !DILocation(line: 179, column: 5, scope: !1115)
!1122 = !DILocation(line: 180, column: 27, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 179, column: 33)
!1124 = !DILocation(line: 180, column: 23, scope: !1123)
!1125 = !DILocation(line: 180, column: 32, scope: !1123)
!1126 = !DILocation(line: 180, column: 30, scope: !1123)
!1127 = !DILocation(line: 180, column: 39, scope: !1123)
!1128 = !DILocation(line: 180, column: 37, scope: !1123)
!1129 = !DILocation(line: 180, column: 17, scope: !1123)
!1130 = !DILocation(line: 180, column: 12, scope: !1123)
!1131 = !DILocation(line: 180, column: 9, scope: !1123)
!1132 = !DILocation(line: 180, column: 15, scope: !1123)
!1133 = !DILocation(line: 181, column: 27, scope: !1123)
!1134 = !DILocation(line: 181, column: 23, scope: !1123)
!1135 = !DILocation(line: 181, column: 32, scope: !1123)
!1136 = !DILocation(line: 181, column: 30, scope: !1123)
!1137 = !DILocation(line: 181, column: 39, scope: !1123)
!1138 = !DILocation(line: 181, column: 37, scope: !1123)
!1139 = !DILocation(line: 181, column: 17, scope: !1123)
!1140 = !DILocation(line: 181, column: 12, scope: !1123)
!1141 = !DILocation(line: 181, column: 9, scope: !1123)
!1142 = !DILocation(line: 181, column: 15, scope: !1123)
!1143 = !DILocation(line: 182, column: 11, scope: !1123)
!1144 = !DILocation(line: 183, column: 5, scope: !1123)
!1145 = !DILocation(line: 179, column: 29, scope: !1119)
!1146 = !DILocation(line: 179, column: 5, scope: !1119)
!1147 = distinct !{!1147, !1121, !1148, !1149}
!1148 = !DILocation(line: 183, column: 5, scope: !1115)
!1149 = !{!"llvm.loop.mustprogress"}
!1150 = !DILocalVariable(name: "j", scope: !1151, file: !1, line: 186, type: !140)
!1151 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 186, column: 5)
!1152 = !DILocation(line: 186, column: 14, scope: !1151)
!1153 = !DILocation(line: 186, column: 10, scope: !1151)
!1154 = !DILocation(line: 186, column: 21, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 186, column: 5)
!1156 = !DILocation(line: 186, column: 23, scope: !1155)
!1157 = !DILocation(line: 186, column: 5, scope: !1151)
!1158 = !DILocation(line: 187, column: 20, scope: !1155)
!1159 = !DILocation(line: 187, column: 30, scope: !1155)
!1160 = !DILocation(line: 187, column: 27, scope: !1155)
!1161 = !DILocation(line: 187, column: 36, scope: !1155)
!1162 = !DILocation(line: 187, column: 33, scope: !1155)
!1163 = !DILocation(line: 187, column: 43, scope: !1155)
!1164 = !DILocation(line: 187, column: 44, scope: !1155)
!1165 = !DILocation(line: 187, column: 47, scope: !1155)
!1166 = !DILocation(line: 187, column: 39, scope: !1155)
!1167 = !DILocation(line: 187, column: 55, scope: !1155)
!1168 = !DILocation(line: 187, column: 56, scope: !1155)
!1169 = !DILocation(line: 187, column: 59, scope: !1155)
!1170 = !DILocation(line: 187, column: 51, scope: !1155)
!1171 = !DILocation(line: 187, column: 63, scope: !1155)
!1172 = !DILocation(line: 187, column: 9, scope: !1155)
!1173 = !DILocation(line: 186, column: 29, scope: !1155)
!1174 = !DILocation(line: 186, column: 5, scope: !1155)
!1175 = distinct !{!1175, !1157, !1176, !1149}
!1176 = !DILocation(line: 187, column: 68, scope: !1151)
!1177 = !DILocation(line: 188, column: 1, scope: !1084)
