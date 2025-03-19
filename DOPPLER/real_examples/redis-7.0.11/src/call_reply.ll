; ModuleID = 'call_reply.c'
source_filename = "call_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ReplyParserCallbacks = type { void (i8*, i8*, i64)*, void (i8*, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i32, i8*, i64)*, void (i8*, double, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i8*, i64)*, void (i8*)* }
%struct.ReplyParser = type { i8*, %struct.ReplyParserCallbacks }
%struct.CallReply = type { i8*, i8*, i8*, i64, i32, i32, i64, %union.anon, %struct.list*, %struct.CallReply* }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i8* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.sdshdr8 = type { i8, i8, i8, [0 x i8] }
%struct.sdshdr16 = type <{ i16, i16, i8, [0 x i8] }>
%struct.sdshdr32 = type <{ i32, i32, i8, [0 x i8] }>
%struct.sdshdr64 = type <{ i64, i64, i8, [0 x i8] }>

@.str = private unnamed_addr constant [10 x i8] c"-ERR %S\0D\0A\00", align 1
@DefaultParserCallbacks = internal constant %struct.ReplyParserCallbacks { void (i8*, i8*, i64)* @callReplyNullArray, void (i8*, i8*, i64)* @callReplyNullBulkString, void (i8*, i8*, i64, i8*, i64)* @callReplyBulkString, void (i8*, i8*, i64, i8*, i64)* @callReplyError, void (i8*, i8*, i64, i8*, i64)* @callReplySimpleStr, void (i8*, i64, i8*, i64)* @callReplyLong, void (%struct.ReplyParser*, i8*, i64, i8*)* @callReplyArray, void (%struct.ReplyParser*, i8*, i64, i8*)* @callReplySet, void (%struct.ReplyParser*, i8*, i64, i8*)* @callReplyMap, void (i8*, i32, i8*, i64)* @callReplyBool, void (i8*, double, i8*, i64)* @callReplyDouble, void (i8*, i8*, i64, i8*, i64)* @callReplyBigNumber, void (i8*, i8*, i8*, i64, i8*, i64)* @callReplyVerbatimString, void (%struct.ReplyParser*, i8*, i64, i8*)* @callReplyAttribute, void (i8*, i8*, i64)* @callReplyNull, void (i8*)* @callReplyParseError }, align 8, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeCallReply(%struct.CallReply* %rep) #0 !dbg !118 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !177
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 5, !dbg !179
  %1 = load i32, i32* %flags, align 4, !dbg !179
  %and = and i32 %1, 1, !dbg !180
  %tobool = icmp ne i32 %and, 0, !dbg !180
  br i1 %tobool, label %if.end, label %if.then, !dbg !181

if.then:                                          ; preds = %entry
  br label %return, !dbg !182

if.end:                                           ; preds = %entry
  %2 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !184
  %flags1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 5, !dbg !186
  %3 = load i32, i32* %flags1, align 4, !dbg !186
  %and2 = and i32 %3, 2, !dbg !187
  %tobool3 = icmp ne i32 %and2, 0, !dbg !187
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !188

if.then4:                                         ; preds = %if.end
  %4 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !189
  call void @freeCallReplyInternal(%struct.CallReply* %4), !dbg !191
  br label %if.end5, !dbg !192

if.end5:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !193
  %original_proto = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 1, !dbg !194
  %6 = load i8*, i8** %original_proto, align 8, !dbg !194
  call void @sdsfree(i8* %6), !dbg !195
  %7 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !196
  %deferred_error_list = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 8, !dbg !198
  %8 = load %struct.list*, %struct.list** %deferred_error_list, align 8, !dbg !198
  %tobool6 = icmp ne %struct.list* %8, null, !dbg !196
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !199

if.then7:                                         ; preds = %if.end5
  %9 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !200
  %deferred_error_list8 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %9, i32 0, i32 8, !dbg !201
  %10 = load %struct.list*, %struct.list** %deferred_error_list8, align 8, !dbg !201
  call void @listRelease(%struct.list* %10), !dbg !202
  br label %if.end9, !dbg !202

if.end9:                                          ; preds = %if.then7, %if.end5
  %11 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !203
  %12 = bitcast %struct.CallReply* %11 to i8*, !dbg !203
  call void @zfree(i8* %12), !dbg !204
  br label %return, !dbg !205

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !205
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @freeCallReplyInternal(%struct.CallReply* %rep) #0 !dbg !206 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %i = alloca i64, align 8
  %i12 = alloca i64, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !209
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 4, !dbg !211
  %1 = load i32, i32* %type, align 8, !dbg !211
  %cmp = icmp eq i32 %1, 3, !dbg !212
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !213

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !214
  %type1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !215
  %3 = load i32, i32* %type1, align 8, !dbg !215
  %cmp2 = icmp eq i32 %3, 6, !dbg !216
  br i1 %cmp2, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.declare(metadata i64* %i, metadata !218, metadata !DIExpression()), !dbg !221
  store i64 0, i64* %i, align 8, !dbg !221
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i64, i64* %i, align 8, !dbg !223
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !225
  %len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 6, !dbg !226
  %6 = load i64, i64* %len, align 8, !dbg !226
  %cmp3 = icmp ult i64 %4, %6, !dbg !227
  br i1 %cmp3, label %for.body, label %for.end, !dbg !228

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !229
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 7, !dbg !231
  %array = bitcast %union.anon* %val to %struct.CallReply**, !dbg !232
  %8 = load %struct.CallReply*, %struct.CallReply** %array, align 8, !dbg !232
  %9 = load i64, i64* %i, align 8, !dbg !233
  %add.ptr = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i64 %9, !dbg !234
  call void @freeCallReplyInternal(%struct.CallReply* %add.ptr), !dbg !235
  br label %for.inc, !dbg !236

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %i, align 8, !dbg !237
  %inc = add i64 %10, 1, !dbg !237
  store i64 %inc, i64* %i, align 8, !dbg !237
  br label %for.cond, !dbg !238, !llvm.loop !239

for.end:                                          ; preds = %for.cond
  %11 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !242
  %val4 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %11, i32 0, i32 7, !dbg !243
  %array5 = bitcast %union.anon* %val4 to %struct.CallReply**, !dbg !244
  %12 = load %struct.CallReply*, %struct.CallReply** %array5, align 8, !dbg !244
  %13 = bitcast %struct.CallReply* %12 to i8*, !dbg !242
  call void @zfree(i8* %13), !dbg !245
  br label %if.end, !dbg !246

if.end:                                           ; preds = %for.end, %lor.lhs.false
  %14 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !247
  %type6 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %14, i32 0, i32 4, !dbg !249
  %15 = load i32, i32* %type6, align 8, !dbg !249
  %cmp7 = icmp eq i32 %15, 5, !dbg !250
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8, !dbg !251

lor.lhs.false8:                                   ; preds = %if.end
  %16 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !252
  %type9 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %16, i32 0, i32 4, !dbg !253
  %17 = load i32, i32* %type9, align 8, !dbg !253
  %cmp10 = icmp eq i32 %17, 11, !dbg !254
  br i1 %cmp10, label %if.then11, label %if.end30, !dbg !255

if.then11:                                        ; preds = %lor.lhs.false8, %if.end
  call void @llvm.dbg.declare(metadata i64* %i12, metadata !256, metadata !DIExpression()), !dbg !259
  store i64 0, i64* %i12, align 8, !dbg !259
  br label %for.cond13, !dbg !260

for.cond13:                                       ; preds = %for.inc25, %if.then11
  %18 = load i64, i64* %i12, align 8, !dbg !261
  %19 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !263
  %len14 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %19, i32 0, i32 6, !dbg !264
  %20 = load i64, i64* %len14, align 8, !dbg !264
  %cmp15 = icmp ult i64 %18, %20, !dbg !265
  br i1 %cmp15, label %for.body16, label %for.end27, !dbg !266

for.body16:                                       ; preds = %for.cond13
  %21 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !267
  %val17 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %21, i32 0, i32 7, !dbg !269
  %array18 = bitcast %union.anon* %val17 to %struct.CallReply**, !dbg !270
  %22 = load %struct.CallReply*, %struct.CallReply** %array18, align 8, !dbg !270
  %23 = load i64, i64* %i12, align 8, !dbg !271
  %mul = mul i64 %23, 2, !dbg !272
  %add.ptr19 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %22, i64 %mul, !dbg !273
  call void @freeCallReplyInternal(%struct.CallReply* %add.ptr19), !dbg !274
  %24 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !275
  %val20 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %24, i32 0, i32 7, !dbg !276
  %array21 = bitcast %union.anon* %val20 to %struct.CallReply**, !dbg !277
  %25 = load %struct.CallReply*, %struct.CallReply** %array21, align 8, !dbg !277
  %26 = load i64, i64* %i12, align 8, !dbg !278
  %mul22 = mul i64 %26, 2, !dbg !279
  %add.ptr23 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %25, i64 %mul22, !dbg !280
  %add.ptr24 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %add.ptr23, i64 1, !dbg !281
  call void @freeCallReplyInternal(%struct.CallReply* %add.ptr24), !dbg !282
  br label %for.inc25, !dbg !283

for.inc25:                                        ; preds = %for.body16
  %27 = load i64, i64* %i12, align 8, !dbg !284
  %inc26 = add i64 %27, 1, !dbg !284
  store i64 %inc26, i64* %i12, align 8, !dbg !284
  br label %for.cond13, !dbg !285, !llvm.loop !286

for.end27:                                        ; preds = %for.cond13
  %28 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !288
  %val28 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %28, i32 0, i32 7, !dbg !289
  %array29 = bitcast %union.anon* %val28 to %struct.CallReply**, !dbg !290
  %29 = load %struct.CallReply*, %struct.CallReply** %array29, align 8, !dbg !290
  %30 = bitcast %struct.CallReply* %29 to i8*, !dbg !288
  call void @zfree(i8* %30), !dbg !291
  br label %if.end30, !dbg !292

if.end30:                                         ; preds = %for.end27, %lor.lhs.false8
  %31 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !293
  %attribute = getelementptr inbounds %struct.CallReply, %struct.CallReply* %31, i32 0, i32 9, !dbg !295
  %32 = load %struct.CallReply*, %struct.CallReply** %attribute, align 8, !dbg !295
  %tobool = icmp ne %struct.CallReply* %32, null, !dbg !293
  br i1 %tobool, label %if.then31, label %if.end34, !dbg !296

if.then31:                                        ; preds = %if.end30
  %33 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !297
  %attribute32 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %33, i32 0, i32 9, !dbg !299
  %34 = load %struct.CallReply*, %struct.CallReply** %attribute32, align 8, !dbg !299
  call void @freeCallReplyInternal(%struct.CallReply* %34), !dbg !300
  %35 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !301
  %attribute33 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %35, i32 0, i32 9, !dbg !302
  %36 = load %struct.CallReply*, %struct.CallReply** %attribute33, align 8, !dbg !302
  %37 = bitcast %struct.CallReply* %36 to i8*, !dbg !301
  call void @zfree(i8* %37), !dbg !303
  br label %if.end34, !dbg !304

if.end34:                                         ; preds = %if.then31, %if.end30
  ret void, !dbg !305
}

declare dso_local void @sdsfree(i8*) #2

declare dso_local void @listRelease(%struct.list*) #2

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @callReplyType(%struct.CallReply* %rep) #0 !dbg !306 {
entry:
  %retval = alloca i32, align 4
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !311
  %tobool = icmp ne %struct.CallReply* %0, null, !dbg !311
  br i1 %tobool, label %if.end, label %if.then, !dbg !313

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end:                                           ; preds = %entry
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !315
  call void @callReplyParse(%struct.CallReply* %1), !dbg !316
  %2 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !317
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !318
  %3 = load i32, i32* %type, align 8, !dbg !318
  store i32 %3, i32* %retval, align 4, !dbg !319
  br label %return, !dbg !319

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !320
  ret i32 %4, !dbg !320
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyParse(%struct.CallReply* %rep) #0 !dbg !321 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %parser = alloca %struct.ReplyParser, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !324
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 5, !dbg !326
  %1 = load i32, i32* %flags, align 4, !dbg !326
  %and = and i32 %1, 2, !dbg !327
  %tobool = icmp ne i32 %and, 0, !dbg !327
  br i1 %tobool, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  br label %return, !dbg !329

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.ReplyParser* %parser, metadata !331, metadata !DIExpression()), !dbg !333
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %parser, i32 0, i32 0, !dbg !334
  %2 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !335
  %proto = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 2, !dbg !336
  %3 = load i8*, i8** %proto, align 8, !dbg !336
  store i8* %3, i8** %curr_location, align 8, !dbg !334
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %parser, i32 0, i32 1, !dbg !334
  %4 = bitcast %struct.ReplyParserCallbacks* %callbacks to i8*, !dbg !337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.ReplyParserCallbacks* @DefaultParserCallbacks to i8*), i64 128, i1 false), !dbg !337
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !338
  %6 = bitcast %struct.CallReply* %5 to i8*, !dbg !338
  %call = call i32 @parseReply(%struct.ReplyParser* %parser, i8* %6), !dbg !339
  %7 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !340
  %flags1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 5, !dbg !341
  %8 = load i32, i32* %flags1, align 4, !dbg !342
  %or = or i32 %8, 2, !dbg !342
  store i32 %or, i32* %flags1, align 4, !dbg !342
  br label %return, !dbg !343

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @callReplyGetString(%struct.CallReply* %rep, i64* %len) #0 !dbg !344 {
entry:
  %retval = alloca i8*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %len.addr = alloca i64*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !348, metadata !DIExpression()), !dbg !349
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !352
  call void @callReplyParse(%struct.CallReply* %0), !dbg !353
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !354
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !356
  %2 = load i32, i32* %type, align 8, !dbg !356
  %cmp = icmp ne i32 %2, 0, !dbg !357
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !358

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !359
  %type1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 4, !dbg !360
  %4 = load i32, i32* %type1, align 8, !dbg !360
  %cmp2 = icmp ne i32 %4, 1, !dbg !361
  br i1 %cmp2, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %land.lhs.true
  store i8* null, i8** %retval, align 8, !dbg !363
  br label %return, !dbg !363

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64*, i64** %len.addr, align 8, !dbg !364
  %tobool = icmp ne i64* %5, null, !dbg !364
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !366

if.then3:                                         ; preds = %if.end
  %6 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !367
  %len4 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !368
  %7 = load i64, i64* %len4, align 8, !dbg !368
  %8 = load i64*, i64** %len.addr, align 8, !dbg !369
  store i64 %7, i64* %8, align 8, !dbg !370
  br label %if.end5, !dbg !371

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !372
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %9, i32 0, i32 7, !dbg !373
  %str = bitcast %union.anon* %val to i8**, !dbg !374
  %10 = load i8*, i8** %str, align 8, !dbg !374
  store i8* %10, i8** %retval, align 8, !dbg !375
  br label %return, !dbg !375

return:                                           ; preds = %if.end5, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !376
  ret i8* %11, !dbg !376
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @callReplyGetLongLong(%struct.CallReply* %rep) #0 !dbg !377 {
entry:
  %retval = alloca i64, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !382
  call void @callReplyParse(%struct.CallReply* %0), !dbg !383
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !384
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !386
  %2 = load i32, i32* %type, align 8, !dbg !386
  %cmp = icmp ne i32 %2, 2, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  store i64 -9223372036854775808, i64* %retval, align 8, !dbg !389
  br label %return, !dbg !389

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !390
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 7, !dbg !391
  %ll = bitcast %union.anon* %val to i64*, !dbg !392
  %4 = load i64, i64* %ll, align 8, !dbg !392
  store i64 %4, i64* %retval, align 8, !dbg !393
  br label %return, !dbg !393

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !394
  ret i64 %5, !dbg !394
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @callReplyGetDouble(%struct.CallReply* %rep) #0 !dbg !395 {
entry:
  %retval = alloca double, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !400
  call void @callReplyParse(%struct.CallReply* %0), !dbg !401
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !402
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !404
  %2 = load i32, i32* %type, align 8, !dbg !404
  %cmp = icmp ne i32 %2, 8, !dbg !405
  br i1 %cmp, label %if.then, label %if.end, !dbg !406

if.then:                                          ; preds = %entry
  store double 0xC3E0000000000000, double* %retval, align 8, !dbg !407
  br label %return, !dbg !407

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !408
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 7, !dbg !409
  %d = bitcast %union.anon* %val to double*, !dbg !410
  %4 = load double, double* %d, align 8, !dbg !410
  store double %4, double* %retval, align 8, !dbg !411
  br label %return, !dbg !411

return:                                           ; preds = %if.end, %if.then
  %5 = load double, double* %retval, align 8, !dbg !412
  ret double %5, !dbg !412
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @callReplyGetBool(%struct.CallReply* %rep) #0 !dbg !413 {
entry:
  %retval = alloca i32, align 4
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !416
  call void @callReplyParse(%struct.CallReply* %0), !dbg !417
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !418
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !420
  %2 = load i32, i32* %type, align 8, !dbg !420
  %cmp = icmp ne i32 %2, 7, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  store i32 -2147483648, i32* %retval, align 4, !dbg !423
  br label %return, !dbg !423

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !424
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 7, !dbg !425
  %ll = bitcast %union.anon* %val to i64*, !dbg !426
  %4 = load i64, i64* %ll, align 8, !dbg !426
  %conv = trunc i64 %4 to i32, !dbg !424
  store i32 %conv, i32* %retval, align 4, !dbg !427
  br label %return, !dbg !427

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !428
  ret i32 %5, !dbg !428
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @callReplyGetLen(%struct.CallReply* %rep) #0 !dbg !429 {
entry:
  %retval = alloca i64, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !434
  call void @callReplyParse(%struct.CallReply* %0), !dbg !435
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !436
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !437
  %2 = load i32, i32* %type, align 8, !dbg !437
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 5, label %sw.bb
    i32 11, label %sw.bb
  ], !dbg !438

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !439
  %len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 6, !dbg !441
  %4 = load i64, i64* %len, align 8, !dbg !441
  store i64 %4, i64* %retval, align 8, !dbg !442
  br label %return, !dbg !442

sw.default:                                       ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !443
  br label %return, !dbg !443

return:                                           ; preds = %sw.default, %sw.bb
  %5 = load i64, i64* %retval, align 8, !dbg !444
  ret i64 %5, !dbg !444
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CallReply* @callReplyGetArrayElement(%struct.CallReply* %rep, i64 %idx) #0 !dbg !445 {
entry:
  %retval = alloca %struct.CallReply*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !448, metadata !DIExpression()), !dbg !449
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !452
  call void @callReplyParse(%struct.CallReply* %0), !dbg !453
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !454
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !456
  %2 = load i32, i32* %type, align 8, !dbg !456
  %cmp = icmp ne i32 %2, 3, !dbg !457
  br i1 %cmp, label %if.then, label %if.end, !dbg !458

if.then:                                          ; preds = %entry
  store %struct.CallReply* null, %struct.CallReply** %retval, align 8, !dbg !459
  br label %return, !dbg !459

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !460
  %4 = load i64, i64* %idx.addr, align 8, !dbg !461
  %call = call %struct.CallReply* @callReplyGetCollectionElement(%struct.CallReply* %3, i64 %4, i32 1), !dbg !462
  store %struct.CallReply* %call, %struct.CallReply** %retval, align 8, !dbg !463
  br label %return, !dbg !463

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.CallReply*, %struct.CallReply** %retval, align 8, !dbg !464
  ret %struct.CallReply* %5, !dbg !464
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.CallReply* @callReplyGetCollectionElement(%struct.CallReply* %rep, i64 %idx, i32 %elements_per_entry) #0 !dbg !465 {
entry:
  %retval = alloca %struct.CallReply*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  %elements_per_entry.addr = alloca i32, align 4
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i32 %elements_per_entry, i32* %elements_per_entry.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %elements_per_entry.addr, metadata !472, metadata !DIExpression()), !dbg !473
  %0 = load i64, i64* %idx.addr, align 8, !dbg !474
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !476
  %len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 6, !dbg !477
  %2 = load i64, i64* %len, align 8, !dbg !477
  %3 = load i32, i32* %elements_per_entry.addr, align 4, !dbg !478
  %conv = sext i32 %3 to i64, !dbg !478
  %mul = mul i64 %2, %conv, !dbg !479
  %cmp = icmp uge i64 %0, %mul, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  store %struct.CallReply* null, %struct.CallReply** %retval, align 8, !dbg !482
  br label %return, !dbg !482

if.end:                                           ; preds = %entry
  %4 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !483
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %4, i32 0, i32 7, !dbg !484
  %array = bitcast %union.anon* %val to %struct.CallReply**, !dbg !485
  %5 = load %struct.CallReply*, %struct.CallReply** %array, align 8, !dbg !485
  %6 = load i64, i64* %idx.addr, align 8, !dbg !486
  %add.ptr = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i64 %6, !dbg !487
  store %struct.CallReply* %add.ptr, %struct.CallReply** %retval, align 8, !dbg !488
  br label %return, !dbg !488

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.CallReply*, %struct.CallReply** %retval, align 8, !dbg !489
  ret %struct.CallReply* %7, !dbg !489
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CallReply* @callReplyGetSetElement(%struct.CallReply* %rep, i64 %idx) #0 !dbg !490 {
entry:
  %retval = alloca %struct.CallReply*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !491, metadata !DIExpression()), !dbg !492
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !495
  call void @callReplyParse(%struct.CallReply* %0), !dbg !496
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !497
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !499
  %2 = load i32, i32* %type, align 8, !dbg !499
  %cmp = icmp ne i32 %2, 6, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  store %struct.CallReply* null, %struct.CallReply** %retval, align 8, !dbg !502
  br label %return, !dbg !502

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !503
  %4 = load i64, i64* %idx.addr, align 8, !dbg !504
  %call = call %struct.CallReply* @callReplyGetCollectionElement(%struct.CallReply* %3, i64 %4, i32 1), !dbg !505
  store %struct.CallReply* %call, %struct.CallReply** %retval, align 8, !dbg !506
  br label %return, !dbg !506

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.CallReply*, %struct.CallReply** %retval, align 8, !dbg !507
  ret %struct.CallReply* %5, !dbg !507
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @callReplyGetMapElement(%struct.CallReply* %rep, i64 %idx, %struct.CallReply** %key, %struct.CallReply** %val) #0 !dbg !508 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  %key.addr = alloca %struct.CallReply**, align 8
  %val.addr = alloca %struct.CallReply**, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store %struct.CallReply** %key, %struct.CallReply*** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %key.addr, metadata !516, metadata !DIExpression()), !dbg !517
  store %struct.CallReply** %val, %struct.CallReply*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %val.addr, metadata !518, metadata !DIExpression()), !dbg !519
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !520
  %1 = load i64, i64* %idx.addr, align 8, !dbg !521
  %2 = load %struct.CallReply**, %struct.CallReply*** %key.addr, align 8, !dbg !522
  %3 = load %struct.CallReply**, %struct.CallReply*** %val.addr, align 8, !dbg !523
  %call = call i32 @callReplyGetMapElementInternal(%struct.CallReply* %0, i64 %1, %struct.CallReply** %2, %struct.CallReply** %3, i32 5), !dbg !524
  ret i32 %call, !dbg !525
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @callReplyGetMapElementInternal(%struct.CallReply* %rep, i64 %idx, %struct.CallReply** %key, %struct.CallReply** %val, i32 %type) #0 !dbg !526 {
entry:
  %retval = alloca i32, align 4
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  %key.addr = alloca %struct.CallReply**, align 8
  %val.addr = alloca %struct.CallReply**, align 8
  %type.addr = alloca i32, align 4
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store %struct.CallReply** %key, %struct.CallReply*** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %key.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store %struct.CallReply** %val, %struct.CallReply*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %val.addr, metadata !535, metadata !DIExpression()), !dbg !536
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !539
  call void @callReplyParse(%struct.CallReply* %0), !dbg !540
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !541
  %type1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !543
  %2 = load i32, i32* %type1, align 8, !dbg !543
  %3 = load i32, i32* %type.addr, align 4, !dbg !544
  %cmp = icmp ne i32 %2, %3, !dbg !545
  br i1 %cmp, label %if.then, label %if.end, !dbg !546

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !547
  br label %return, !dbg !547

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %idx.addr, align 8, !dbg !548
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !550
  %len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 6, !dbg !551
  %6 = load i64, i64* %len, align 8, !dbg !551
  %cmp2 = icmp uge i64 %4, %6, !dbg !552
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !553

if.then3:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !554
  br label %return, !dbg !554

if.end4:                                          ; preds = %if.end
  %7 = load %struct.CallReply**, %struct.CallReply*** %key.addr, align 8, !dbg !555
  %tobool = icmp ne %struct.CallReply** %7, null, !dbg !555
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !557

if.then5:                                         ; preds = %if.end4
  %8 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !558
  %9 = load i64, i64* %idx.addr, align 8, !dbg !559
  %mul = mul i64 %9, 2, !dbg !560
  %call = call %struct.CallReply* @callReplyGetCollectionElement(%struct.CallReply* %8, i64 %mul, i32 2), !dbg !561
  %10 = load %struct.CallReply**, %struct.CallReply*** %key.addr, align 8, !dbg !562
  store %struct.CallReply* %call, %struct.CallReply** %10, align 8, !dbg !563
  br label %if.end6, !dbg !564

if.end6:                                          ; preds = %if.then5, %if.end4
  %11 = load %struct.CallReply**, %struct.CallReply*** %val.addr, align 8, !dbg !565
  %tobool7 = icmp ne %struct.CallReply** %11, null, !dbg !565
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !567

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !568
  %13 = load i64, i64* %idx.addr, align 8, !dbg !569
  %mul9 = mul i64 %13, 2, !dbg !570
  %add = add i64 %mul9, 1, !dbg !571
  %call10 = call %struct.CallReply* @callReplyGetCollectionElement(%struct.CallReply* %12, i64 %add, i32 2), !dbg !572
  %14 = load %struct.CallReply**, %struct.CallReply*** %val.addr, align 8, !dbg !573
  store %struct.CallReply* %call10, %struct.CallReply** %14, align 8, !dbg !574
  br label %if.end11, !dbg !575

if.end11:                                         ; preds = %if.then8, %if.end6
  store i32 0, i32* %retval, align 4, !dbg !576
  br label %return, !dbg !576

return:                                           ; preds = %if.end11, %if.then3, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !577
  ret i32 %15, !dbg !577
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CallReply* @callReplyGetAttribute(%struct.CallReply* %rep) #0 !dbg !578 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !583
  %attribute = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 9, !dbg !584
  %1 = load %struct.CallReply*, %struct.CallReply** %attribute, align 8, !dbg !584
  ret %struct.CallReply* %1, !dbg !585
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @callReplyGetAttributeElement(%struct.CallReply* %rep, i64 %idx, %struct.CallReply** %key, %struct.CallReply** %val) #0 !dbg !586 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %idx.addr = alloca i64, align 8
  %key.addr = alloca %struct.CallReply**, align 8
  %val.addr = alloca %struct.CallReply**, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !587, metadata !DIExpression()), !dbg !588
  store i64 %idx, i64* %idx.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %idx.addr, metadata !589, metadata !DIExpression()), !dbg !590
  store %struct.CallReply** %key, %struct.CallReply*** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %key.addr, metadata !591, metadata !DIExpression()), !dbg !592
  store %struct.CallReply** %val, %struct.CallReply*** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply*** %val.addr, metadata !593, metadata !DIExpression()), !dbg !594
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !595
  %1 = load i64, i64* %idx.addr, align 8, !dbg !596
  %2 = load %struct.CallReply**, %struct.CallReply*** %key.addr, align 8, !dbg !597
  %3 = load %struct.CallReply**, %struct.CallReply*** %val.addr, align 8, !dbg !598
  %call = call i32 @callReplyGetMapElementInternal(%struct.CallReply* %0, i64 %1, %struct.CallReply** %2, %struct.CallReply** %3, i32 5), !dbg !599
  ret i32 %call, !dbg !600
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @callReplyGetBigNumber(%struct.CallReply* %rep, i64* %len) #0 !dbg !601 {
entry:
  %retval = alloca i8*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %len.addr = alloca i64*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !602, metadata !DIExpression()), !dbg !603
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !606
  call void @callReplyParse(%struct.CallReply* %0), !dbg !607
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !608
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !610
  %2 = load i32, i32* %type, align 8, !dbg !610
  %cmp = icmp ne i32 %2, 9, !dbg !611
  br i1 %cmp, label %if.then, label %if.end, !dbg !612

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !613
  br label %return, !dbg !613

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !614
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 6, !dbg !615
  %4 = load i64, i64* %len1, align 8, !dbg !615
  %5 = load i64*, i64** %len.addr, align 8, !dbg !616
  store i64 %4, i64* %5, align 8, !dbg !617
  %6 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !618
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 7, !dbg !619
  %str = bitcast %union.anon* %val to i8**, !dbg !620
  %7 = load i8*, i8** %str, align 8, !dbg !620
  store i8* %7, i8** %retval, align 8, !dbg !621
  br label %return, !dbg !621

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval, align 8, !dbg !622
  ret i8* %8, !dbg !622
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @callReplyGetVerbatim(%struct.CallReply* %rep, i64* %len, i8** %format) #0 !dbg !623 {
entry:
  %retval = alloca i8*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %len.addr = alloca i64*, align 8
  %format.addr = alloca i8**, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i64* %len, i64** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %len.addr, metadata !629, metadata !DIExpression()), !dbg !630
  store i8** %format, i8*** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %format.addr, metadata !631, metadata !DIExpression()), !dbg !632
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !633
  call void @callReplyParse(%struct.CallReply* %0), !dbg !634
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !635
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !637
  %2 = load i32, i32* %type, align 8, !dbg !637
  %cmp = icmp ne i32 %2, 10, !dbg !638
  br i1 %cmp, label %if.then, label %if.end, !dbg !639

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !640
  br label %return, !dbg !640

if.end:                                           ; preds = %entry
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !641
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 6, !dbg !642
  %4 = load i64, i64* %len1, align 8, !dbg !642
  %5 = load i64*, i64** %len.addr, align 8, !dbg !643
  store i64 %4, i64* %5, align 8, !dbg !644
  %6 = load i8**, i8*** %format.addr, align 8, !dbg !645
  %tobool = icmp ne i8** %6, null, !dbg !645
  br i1 %tobool, label %if.then2, label %if.end4, !dbg !647

if.then2:                                         ; preds = %if.end
  %7 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !648
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 7, !dbg !649
  %verbatim_str = bitcast %union.anon* %val to %struct.anon*, !dbg !650
  %format3 = getelementptr inbounds %struct.anon, %struct.anon* %verbatim_str, i32 0, i32 1, !dbg !651
  %8 = load i8*, i8** %format3, align 8, !dbg !651
  %9 = load i8**, i8*** %format.addr, align 8, !dbg !652
  store i8* %8, i8** %9, align 8, !dbg !653
  br label %if.end4, !dbg !654

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !655
  %val5 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %10, i32 0, i32 7, !dbg !656
  %verbatim_str6 = bitcast %union.anon* %val5 to %struct.anon*, !dbg !657
  %str = getelementptr inbounds %struct.anon, %struct.anon* %verbatim_str6, i32 0, i32 0, !dbg !658
  %11 = load i8*, i8** %str, align 8, !dbg !658
  store i8* %11, i8** %retval, align 8, !dbg !659
  br label %return, !dbg !659

return:                                           ; preds = %if.end4, %if.then
  %12 = load i8*, i8** %retval, align 8, !dbg !660
  ret i8* %12, !dbg !660
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @callReplyGetProto(%struct.CallReply* %rep, i64* %proto_len) #0 !dbg !661 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %proto_len.addr = alloca i64*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !662, metadata !DIExpression()), !dbg !663
  store i64* %proto_len, i64** %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %proto_len.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !666
  %proto_len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 3, !dbg !667
  %1 = load i64, i64* %proto_len1, align 8, !dbg !667
  %2 = load i64*, i64** %proto_len.addr, align 8, !dbg !668
  store i64 %1, i64* %2, align 8, !dbg !669
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !670
  %proto = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 2, !dbg !671
  %4 = load i8*, i8** %proto, align 8, !dbg !671
  ret i8* %4, !dbg !672
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @callReplyGetPrivateData(%struct.CallReply* %rep) #0 !dbg !673 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !676, metadata !DIExpression()), !dbg !677
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !678
  %private_data = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 0, !dbg !679
  %1 = load i8*, i8** %private_data, align 8, !dbg !679
  ret i8* %1, !dbg !680
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @callReplyIsResp3(%struct.CallReply* %rep) #0 !dbg !681 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !684
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 5, !dbg !685
  %1 = load i32, i32* %flags, align 4, !dbg !685
  %and = and i32 %1, 4, !dbg !686
  ret i32 %and, !dbg !687
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list* @callReplyDeferredErrorList(%struct.CallReply* %rep) #0 !dbg !688 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !691, metadata !DIExpression()), !dbg !692
  %0 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !693
  %deferred_error_list = getelementptr inbounds %struct.CallReply, %struct.CallReply* %0, i32 0, i32 8, !dbg !694
  %1 = load %struct.list*, %struct.list** %deferred_error_list, align 8, !dbg !694
  ret %struct.list* %1, !dbg !695
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CallReply* @callReplyCreate(i8* %reply, %struct.list* %deferred_error_list, i8* %private_data) #0 !dbg !696 {
entry:
  %reply.addr = alloca i8*, align 8
  %deferred_error_list.addr = alloca %struct.list*, align 8
  %private_data.addr = alloca i8*, align 8
  %res = alloca %struct.CallReply*, align 8
  store i8* %reply, i8** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reply.addr, metadata !699, metadata !DIExpression()), !dbg !700
  store %struct.list* %deferred_error_list, %struct.list** %deferred_error_list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list** %deferred_error_list.addr, metadata !701, metadata !DIExpression()), !dbg !702
  store i8* %private_data, i8** %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %private_data.addr, metadata !703, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.declare(metadata %struct.CallReply** %res, metadata !705, metadata !DIExpression()), !dbg !706
  %call = call i8* @zmalloc(i64 80), !dbg !707
  %0 = bitcast i8* %call to %struct.CallReply*, !dbg !707
  store %struct.CallReply* %0, %struct.CallReply** %res, align 8, !dbg !706
  %1 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !708
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 5, !dbg !709
  store i32 1, i32* %flags, align 4, !dbg !710
  %2 = load i8*, i8** %reply.addr, align 8, !dbg !711
  %3 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !712
  %original_proto = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 1, !dbg !713
  store i8* %2, i8** %original_proto, align 8, !dbg !714
  %4 = load i8*, i8** %reply.addr, align 8, !dbg !715
  %5 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !716
  %proto = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 2, !dbg !717
  store i8* %4, i8** %proto, align 8, !dbg !718
  %6 = load i8*, i8** %reply.addr, align 8, !dbg !719
  %call1 = call i64 @sdslen(i8* %6), !dbg !720
  %7 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !721
  %proto_len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 3, !dbg !722
  store i64 %call1, i64* %proto_len, align 8, !dbg !723
  %8 = load i8*, i8** %private_data.addr, align 8, !dbg !724
  %9 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !725
  %private_data2 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %9, i32 0, i32 0, !dbg !726
  store i8* %8, i8** %private_data2, align 8, !dbg !727
  %10 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !728
  %attribute = getelementptr inbounds %struct.CallReply, %struct.CallReply* %10, i32 0, i32 9, !dbg !729
  store %struct.CallReply* null, %struct.CallReply** %attribute, align 8, !dbg !730
  %11 = load %struct.list*, %struct.list** %deferred_error_list.addr, align 8, !dbg !731
  %12 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !732
  %deferred_error_list3 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %12, i32 0, i32 8, !dbg !733
  store %struct.list* %11, %struct.list** %deferred_error_list3, align 8, !dbg !734
  %13 = load %struct.CallReply*, %struct.CallReply** %res, align 8, !dbg !735
  ret %struct.CallReply* %13, !dbg !736
}

declare dso_local i8* @zmalloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @sdslen(i8* %s) #0 !dbg !737 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  %flags = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata i8* %flags, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = load i8*, i8** %s.addr, align 8, !dbg !745
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !745
  %1 = load i8, i8* %arrayidx, align 1, !dbg !745
  store i8 %1, i8* %flags, align 1, !dbg !744
  %2 = load i8, i8* %flags, align 1, !dbg !746
  %conv = zext i8 %2 to i32, !dbg !746
  %and = and i32 %conv, 7, !dbg !747
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
    i32 4, label %sw.bb13
  ], !dbg !748

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %flags, align 1, !dbg !749
  %conv1 = zext i8 %3 to i32, !dbg !749
  %shr = ashr i32 %conv1, 3, !dbg !749
  %conv2 = sext i32 %shr to i64, !dbg !749
  store i64 %conv2, i64* %retval, align 8, !dbg !751
  br label %return, !dbg !751

sw.bb3:                                           ; preds = %entry
  %4 = load i8*, i8** %s.addr, align 8, !dbg !752
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -3, !dbg !752
  %5 = bitcast i8* %add.ptr to %struct.sdshdr8*, !dbg !753
  %len = getelementptr inbounds %struct.sdshdr8, %struct.sdshdr8* %5, i32 0, i32 0, !dbg !753
  %6 = load i8, i8* %len, align 1, !dbg !753
  %conv4 = zext i8 %6 to i64, !dbg !752
  store i64 %conv4, i64* %retval, align 8, !dbg !754
  br label %return, !dbg !754

sw.bb5:                                           ; preds = %entry
  %7 = load i8*, i8** %s.addr, align 8, !dbg !755
  %add.ptr6 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !755
  %8 = bitcast i8* %add.ptr6 to %struct.sdshdr16*, !dbg !756
  %len7 = getelementptr inbounds %struct.sdshdr16, %struct.sdshdr16* %8, i32 0, i32 0, !dbg !756
  %9 = load i16, i16* %len7, align 1, !dbg !756
  %conv8 = zext i16 %9 to i64, !dbg !755
  store i64 %conv8, i64* %retval, align 8, !dbg !757
  br label %return, !dbg !757

sw.bb9:                                           ; preds = %entry
  %10 = load i8*, i8** %s.addr, align 8, !dbg !758
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !758
  %11 = bitcast i8* %add.ptr10 to %struct.sdshdr32*, !dbg !759
  %len11 = getelementptr inbounds %struct.sdshdr32, %struct.sdshdr32* %11, i32 0, i32 0, !dbg !759
  %12 = load i32, i32* %len11, align 1, !dbg !759
  %conv12 = zext i32 %12 to i64, !dbg !758
  store i64 %conv12, i64* %retval, align 8, !dbg !760
  br label %return, !dbg !760

sw.bb13:                                          ; preds = %entry
  %13 = load i8*, i8** %s.addr, align 8, !dbg !761
  %add.ptr14 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !761
  %14 = bitcast i8* %add.ptr14 to %struct.sdshdr64*, !dbg !762
  %len15 = getelementptr inbounds %struct.sdshdr64, %struct.sdshdr64* %14, i32 0, i32 0, !dbg !762
  %15 = load i64, i64* %len15, align 1, !dbg !762
  store i64 %15, i64* %retval, align 8, !dbg !763
  br label %return, !dbg !763

sw.epilog:                                        ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !764
  br label %return, !dbg !764

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb3, %sw.bb
  %16 = load i64, i64* %retval, align 8, !dbg !765
  ret i64 %16, !dbg !765
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CallReply* @callReplyCreateError(i8* %reply, i8* %private_data) #0 !dbg !766 {
entry:
  %reply.addr = alloca i8*, align 8
  %private_data.addr = alloca i8*, align 8
  %err_buff = alloca i8*, align 8
  %deferred_error_list = alloca %struct.list*, align 8
  store i8* %reply, i8** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reply.addr, metadata !769, metadata !DIExpression()), !dbg !770
  store i8* %private_data, i8** %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %private_data.addr, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata i8** %err_buff, metadata !773, metadata !DIExpression()), !dbg !774
  %0 = load i8*, i8** %reply.addr, align 8, !dbg !775
  store i8* %0, i8** %err_buff, align 8, !dbg !774
  %1 = load i8*, i8** %err_buff, align 8, !dbg !776
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !776
  %2 = load i8, i8* %arrayidx, align 1, !dbg !776
  %conv = sext i8 %2 to i32, !dbg !776
  %cmp = icmp ne i32 %conv, 45, !dbg !778
  br i1 %cmp, label %if.then, label %if.end, !dbg !779

if.then:                                          ; preds = %entry
  %call = call i8* @sdsempty(), !dbg !780
  %3 = load i8*, i8** %reply.addr, align 8, !dbg !782
  %call2 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %call, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !783
  store i8* %call2, i8** %err_buff, align 8, !dbg !784
  %4 = load i8*, i8** %reply.addr, align 8, !dbg !785
  call void @sdsfree(i8* %4), !dbg !786
  br label %if.end, !dbg !787

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata %struct.list** %deferred_error_list, metadata !788, metadata !DIExpression()), !dbg !789
  %call3 = call %struct.list* @listCreate(), !dbg !790
  store %struct.list* %call3, %struct.list** %deferred_error_list, align 8, !dbg !789
  %5 = load %struct.list*, %struct.list** %deferred_error_list, align 8, !dbg !791
  %free = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 3, !dbg !791
  store void (i8*)* @sdsfree, void (i8*)** %free, align 8, !dbg !791
  %6 = load %struct.list*, %struct.list** %deferred_error_list, align 8, !dbg !792
  %7 = load i8*, i8** %err_buff, align 8, !dbg !793
  %call4 = call i8* @sdsnew(i8* %7), !dbg !794
  %call5 = call %struct.list* @listAddNodeTail(%struct.list* %6, i8* %call4), !dbg !795
  %8 = load i8*, i8** %err_buff, align 8, !dbg !796
  %9 = load %struct.list*, %struct.list** %deferred_error_list, align 8, !dbg !797
  %10 = load i8*, i8** %private_data.addr, align 8, !dbg !798
  %call6 = call %struct.CallReply* @callReplyCreate(i8* %8, %struct.list* %9, i8* %10), !dbg !799
  ret %struct.CallReply* %call6, !dbg !800
}

declare dso_local i8* @sdscatfmt(i8*, i8*, ...) #2

declare dso_local i8* @sdsempty() #2

declare dso_local %struct.list* @listCreate() #2

declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) #2

declare dso_local i8* @sdsnew(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @parseReply(%struct.ReplyParser*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyNullArray(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !801 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !802, metadata !DIExpression()), !dbg !803
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !804, metadata !DIExpression()), !dbg !805
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !810
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !810
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !809
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !811
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !812
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !813
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 4, i8* %3, i64 %4, i32 0), !dbg !814
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyNullBulkString(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !816 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !817, metadata !DIExpression()), !dbg !818
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !819, metadata !DIExpression()), !dbg !820
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !823, metadata !DIExpression()), !dbg !824
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !825
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !825
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !824
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !826
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !827
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !828
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 4, i8* %3, i64 %4, i32 0), !dbg !829
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyBulkString(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !831 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !832, metadata !DIExpression()), !dbg !833
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !834, metadata !DIExpression()), !dbg !835
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !836, metadata !DIExpression()), !dbg !837
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !838, metadata !DIExpression()), !dbg !839
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !840, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !844
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !844
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !843
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !845
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !846
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !847
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 0, i8* %3, i64 %4, i32 0), !dbg !848
  %5 = load i64, i64* %len.addr, align 8, !dbg !849
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !850
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !851
  store i64 %5, i64* %len1, align 8, !dbg !852
  %7 = load i8*, i8** %str.addr, align 8, !dbg !853
  %8 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !854
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 7, !dbg !855
  %str2 = bitcast %union.anon* %val to i8**, !dbg !856
  store i8* %7, i8** %str2, align 8, !dbg !857
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyError(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !859 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !862, metadata !DIExpression()), !dbg !863
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !864, metadata !DIExpression()), !dbg !865
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !866, metadata !DIExpression()), !dbg !867
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !870, metadata !DIExpression()), !dbg !871
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !872
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !872
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !871
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !873
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !874
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !875
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 1, i8* %3, i64 %4, i32 0), !dbg !876
  %5 = load i64, i64* %len.addr, align 8, !dbg !877
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !878
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !879
  store i64 %5, i64* %len1, align 8, !dbg !880
  %7 = load i8*, i8** %str.addr, align 8, !dbg !881
  %8 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !882
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 7, !dbg !883
  %str2 = bitcast %union.anon* %val to i8**, !dbg !884
  store i8* %7, i8** %str2, align 8, !dbg !885
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplySimpleStr(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !887 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !888, metadata !DIExpression()), !dbg !889
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !890, metadata !DIExpression()), !dbg !891
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !892, metadata !DIExpression()), !dbg !893
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !894, metadata !DIExpression()), !dbg !895
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !898, metadata !DIExpression()), !dbg !899
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !900
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !900
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !899
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !901
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !902
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !903
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 0, i8* %3, i64 %4, i32 0), !dbg !904
  %5 = load i64, i64* %len.addr, align 8, !dbg !905
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !906
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !907
  store i64 %5, i64* %len1, align 8, !dbg !908
  %7 = load i8*, i8** %str.addr, align 8, !dbg !909
  %8 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !910
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 7, !dbg !911
  %str2 = bitcast %union.anon* %val to i8**, !dbg !912
  store i8* %7, i8** %str2, align 8, !dbg !913
  ret void, !dbg !914
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyLong(i8* %ctx, i64 %val, i8* %proto, i64 %proto_len) #0 !dbg !915 {
entry:
  %ctx.addr = alloca i8*, align 8
  %val.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !916, metadata !DIExpression()), !dbg !917
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !918, metadata !DIExpression()), !dbg !919
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !920, metadata !DIExpression()), !dbg !921
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !926
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !926
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !925
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !927
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !928
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !929
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 2, i8* %3, i64 %4, i32 0), !dbg !930
  %5 = load i64, i64* %val.addr, align 8, !dbg !931
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !932
  %val1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 7, !dbg !933
  %ll = bitcast %union.anon* %val1 to i64*, !dbg !934
  store i64 %5, i64* %ll, align 8, !dbg !935
  ret void, !dbg !936
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyArray(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !937 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %rep = alloca %struct.CallReply*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !941, metadata !DIExpression()), !dbg !942
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !943, metadata !DIExpression()), !dbg !944
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !945, metadata !DIExpression()), !dbg !946
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !947, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !949, metadata !DIExpression()), !dbg !950
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !951
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !951
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !950
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !952
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !953
  store i32 3, i32* %type, align 8, !dbg !954
  %3 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !955
  %4 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !956
  %5 = load i64, i64* %len.addr, align 8, !dbg !957
  %6 = load i8*, i8** %proto.addr, align 8, !dbg !958
  call void @callReplyParseCollection(%struct.ReplyParser* %3, %struct.CallReply* %4, i64 %5, i8* %6, i64 1), !dbg !959
  ret void, !dbg !960
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplySet(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !961 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %rep = alloca %struct.CallReply*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !962, metadata !DIExpression()), !dbg !963
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !964, metadata !DIExpression()), !dbg !965
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !966, metadata !DIExpression()), !dbg !967
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !968, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !970, metadata !DIExpression()), !dbg !971
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !972
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !972
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !971
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !973
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !974
  store i32 6, i32* %type, align 8, !dbg !975
  %3 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !976
  %4 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !977
  %5 = load i64, i64* %len.addr, align 8, !dbg !978
  %6 = load i8*, i8** %proto.addr, align 8, !dbg !979
  call void @callReplyParseCollection(%struct.ReplyParser* %3, %struct.CallReply* %4, i64 %5, i8* %6, i64 1), !dbg !980
  %7 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !981
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 5, !dbg !982
  %8 = load i32, i32* %flags, align 4, !dbg !983
  %or = or i32 %8, 4, !dbg !983
  store i32 %or, i32* %flags, align 4, !dbg !983
  ret void, !dbg !984
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyMap(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !985 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %rep = alloca %struct.CallReply*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !986, metadata !DIExpression()), !dbg !987
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !988, metadata !DIExpression()), !dbg !989
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !990, metadata !DIExpression()), !dbg !991
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !996
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !996
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !995
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !997
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !998
  store i32 5, i32* %type, align 8, !dbg !999
  %3 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1000
  %4 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1001
  %5 = load i64, i64* %len.addr, align 8, !dbg !1002
  %6 = load i8*, i8** %proto.addr, align 8, !dbg !1003
  call void @callReplyParseCollection(%struct.ReplyParser* %3, %struct.CallReply* %4, i64 %5, i8* %6, i64 2), !dbg !1004
  %7 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1005
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 5, !dbg !1006
  %8 = load i32, i32* %flags, align 4, !dbg !1007
  %or = or i32 %8, 4, !dbg !1007
  store i32 %or, i32* %flags, align 4, !dbg !1007
  ret void, !dbg !1008
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyBool(i8* %ctx, i32 %val, i8* %proto, i64 %proto_len) #0 !dbg !1009 {
entry:
  %ctx.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1010, metadata !DIExpression()), !dbg !1011
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1018, metadata !DIExpression()), !dbg !1019
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1020
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1020
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1019
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1021
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !1022
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1023
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 7, i8* %3, i64 %4, i32 4), !dbg !1024
  %5 = load i32, i32* %val.addr, align 4, !dbg !1025
  %conv = sext i32 %5 to i64, !dbg !1025
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1026
  %val1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 7, !dbg !1027
  %ll = bitcast %union.anon* %val1 to i64*, !dbg !1028
  store i64 %conv, i64* %ll, align 8, !dbg !1029
  ret void, !dbg !1030
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyDouble(i8* %ctx, double %val, i8* %proto, i64 %proto_len) #0 !dbg !1031 {
entry:
  %ctx.addr = alloca i8*, align 8
  %val.addr = alloca double, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  store double %val, double* %val.addr, align 8
  call void @llvm.dbg.declare(metadata double* %val.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1040, metadata !DIExpression()), !dbg !1041
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1042
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1042
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1041
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1043
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !1044
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1045
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 8, i8* %3, i64 %4, i32 4), !dbg !1046
  %5 = load double, double* %val.addr, align 8, !dbg !1047
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1048
  %val1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 7, !dbg !1049
  %d = bitcast %union.anon* %val1 to double*, !dbg !1050
  store double %5, double* %d, align 8, !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyBigNumber(i8* %ctx, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !1053 {
entry:
  %ctx.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1058, metadata !DIExpression()), !dbg !1059
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1060, metadata !DIExpression()), !dbg !1061
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1062, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1064, metadata !DIExpression()), !dbg !1065
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1066
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1066
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1065
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1067
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !1068
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1069
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 9, i8* %3, i64 %4, i32 4), !dbg !1070
  %5 = load i64, i64* %len.addr, align 8, !dbg !1071
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1072
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !1073
  store i64 %5, i64* %len1, align 8, !dbg !1074
  %7 = load i8*, i8** %str.addr, align 8, !dbg !1075
  %8 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1076
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 7, !dbg !1077
  %str2 = bitcast %union.anon* %val to i8**, !dbg !1078
  store i8* %7, i8** %str2, align 8, !dbg !1079
  ret void, !dbg !1080
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyVerbatimString(i8* %ctx, i8* %format, i8* %str, i64 %len, i8* %proto, i64 %proto_len) #0 !dbg !1081 {
entry:
  %ctx.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1082, metadata !DIExpression()), !dbg !1083
  store i8* %format, i8** %format.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !1084, metadata !DIExpression()), !dbg !1085
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !1086, metadata !DIExpression()), !dbg !1087
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1090, metadata !DIExpression()), !dbg !1091
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1092, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1094, metadata !DIExpression()), !dbg !1095
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1096
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1096
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1095
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1097
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !1098
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1099
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 10, i8* %3, i64 %4, i32 4), !dbg !1100
  %5 = load i64, i64* %len.addr, align 8, !dbg !1101
  %6 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1102
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !1103
  store i64 %5, i64* %len1, align 8, !dbg !1104
  %7 = load i8*, i8** %str.addr, align 8, !dbg !1105
  %8 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1106
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 7, !dbg !1107
  %verbatim_str = bitcast %union.anon* %val to %struct.anon*, !dbg !1108
  %str2 = getelementptr inbounds %struct.anon, %struct.anon* %verbatim_str, i32 0, i32 0, !dbg !1109
  store i8* %7, i8** %str2, align 8, !dbg !1110
  %9 = load i8*, i8** %format.addr, align 8, !dbg !1111
  %10 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1112
  %val3 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %10, i32 0, i32 7, !dbg !1113
  %verbatim_str4 = bitcast %union.anon* %val3 to %struct.anon*, !dbg !1114
  %format5 = getelementptr inbounds %struct.anon, %struct.anon* %verbatim_str4, i32 0, i32 1, !dbg !1115
  store i8* %9, i8** %format5, align 8, !dbg !1116
  ret void, !dbg !1117
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyAttribute(%struct.ReplyParser* %parser, i8* %ctx, i64 %len, i8* %proto) #0 !dbg !1118 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %ctx.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %rep = alloca %struct.CallReply*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !1119, metadata !DIExpression()), !dbg !1120
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1127, metadata !DIExpression()), !dbg !1128
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1129
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1129
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1128
  %call = call i8* @zcalloc(i64 80), !dbg !1130
  %2 = bitcast i8* %call to %struct.CallReply*, !dbg !1130
  %3 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1131
  %attribute = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 9, !dbg !1132
  store %struct.CallReply* %2, %struct.CallReply** %attribute, align 8, !dbg !1133
  %4 = load i64, i64* %len.addr, align 8, !dbg !1134
  %5 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1135
  %attribute1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 9, !dbg !1136
  %6 = load %struct.CallReply*, %struct.CallReply** %attribute1, align 8, !dbg !1136
  %len2 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %6, i32 0, i32 6, !dbg !1137
  store i64 %4, i64* %len2, align 8, !dbg !1138
  %7 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1139
  %attribute3 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 9, !dbg !1140
  %8 = load %struct.CallReply*, %struct.CallReply** %attribute3, align 8, !dbg !1140
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %8, i32 0, i32 4, !dbg !1141
  store i32 11, i32* %type, align 8, !dbg !1142
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1143
  %10 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1144
  %attribute4 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %10, i32 0, i32 9, !dbg !1145
  %11 = load %struct.CallReply*, %struct.CallReply** %attribute4, align 8, !dbg !1145
  %12 = load i64, i64* %len.addr, align 8, !dbg !1146
  %13 = load i8*, i8** %proto.addr, align 8, !dbg !1147
  call void @callReplyParseCollection(%struct.ReplyParser* %9, %struct.CallReply* %11, i64 %12, i8* %13, i64 2), !dbg !1148
  %14 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1149
  %attribute5 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %14, i32 0, i32 9, !dbg !1150
  %15 = load %struct.CallReply*, %struct.CallReply** %attribute5, align 8, !dbg !1150
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %15, i32 0, i32 5, !dbg !1151
  %16 = load i32, i32* %flags, align 4, !dbg !1152
  %or = or i32 %16, 6, !dbg !1152
  store i32 %or, i32* %flags, align 4, !dbg !1152
  %17 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1153
  %private_data = getelementptr inbounds %struct.CallReply, %struct.CallReply* %17, i32 0, i32 0, !dbg !1154
  %18 = load i8*, i8** %private_data, align 8, !dbg !1154
  %19 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1155
  %attribute6 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %19, i32 0, i32 9, !dbg !1156
  %20 = load %struct.CallReply*, %struct.CallReply** %attribute6, align 8, !dbg !1156
  %private_data7 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %20, i32 0, i32 0, !dbg !1157
  store i8* %18, i8** %private_data7, align 8, !dbg !1158
  %21 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1159
  %22 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1160
  %23 = bitcast %struct.CallReply* %22 to i8*, !dbg !1160
  %call8 = call i32 @parseReply(%struct.ReplyParser* %21, i8* %23), !dbg !1161
  %24 = load i8*, i8** %proto.addr, align 8, !dbg !1162
  %25 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1163
  %proto9 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %25, i32 0, i32 2, !dbg !1164
  store i8* %24, i8** %proto9, align 8, !dbg !1165
  %26 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1166
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %26, i32 0, i32 0, !dbg !1167
  %27 = load i8*, i8** %curr_location, align 8, !dbg !1167
  %28 = load i8*, i8** %proto.addr, align 8, !dbg !1168
  %sub.ptr.lhs.cast = ptrtoint i8* %27 to i64, !dbg !1169
  %sub.ptr.rhs.cast = ptrtoint i8* %28 to i64, !dbg !1169
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1169
  %29 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1170
  %proto_len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %29, i32 0, i32 3, !dbg !1171
  store i64 %sub.ptr.sub, i64* %proto_len, align 8, !dbg !1172
  %30 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1173
  %flags10 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %30, i32 0, i32 5, !dbg !1174
  %31 = load i32, i32* %flags10, align 4, !dbg !1175
  %or11 = or i32 %31, 4, !dbg !1175
  store i32 %or11, i32* %flags10, align 4, !dbg !1175
  ret void, !dbg !1176
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyNull(i8* %ctx, i8* %proto, i64 %proto_len) #0 !dbg !1177 {
entry:
  %ctx.addr = alloca i8*, align 8
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1184, metadata !DIExpression()), !dbg !1185
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1186
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1186
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1185
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1187
  %3 = load i8*, i8** %proto.addr, align 8, !dbg !1188
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1189
  call void @callReplySetSharedData(%struct.CallReply* %2, i32 4, i8* %3, i64 %4, i32 4), !dbg !1190
  ret void, !dbg !1191
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyParseError(i8* %ctx) #0 !dbg !1192 {
entry:
  %ctx.addr = alloca i8*, align 8
  %rep = alloca %struct.CallReply*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep, metadata !1195, metadata !DIExpression()), !dbg !1196
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !1197
  %1 = bitcast i8* %0 to %struct.CallReply*, !dbg !1197
  store %struct.CallReply* %1, %struct.CallReply** %rep, align 8, !dbg !1196
  %2 = load %struct.CallReply*, %struct.CallReply** %rep, align 8, !dbg !1198
  %type = getelementptr inbounds %struct.CallReply, %struct.CallReply* %2, i32 0, i32 4, !dbg !1199
  store i32 -1, i32* %type, align 8, !dbg !1200
  ret void, !dbg !1201
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplySetSharedData(%struct.CallReply* %rep, i32 %type, i8* %proto, i64 %proto_len, i32 %extra_flags) #0 !dbg !1202 {
entry:
  %rep.addr = alloca %struct.CallReply*, align 8
  %type.addr = alloca i32, align 4
  %proto.addr = alloca i8*, align 8
  %proto_len.addr = alloca i64, align 8
  %extra_flags.addr = alloca i32, align 4
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !1205, metadata !DIExpression()), !dbg !1206
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !1207, metadata !DIExpression()), !dbg !1208
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1209, metadata !DIExpression()), !dbg !1210
  store i64 %proto_len, i64* %proto_len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %proto_len.addr, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 %extra_flags, i32* %extra_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %extra_flags.addr, metadata !1213, metadata !DIExpression()), !dbg !1214
  %0 = load i32, i32* %type.addr, align 4, !dbg !1215
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1216
  %type1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 4, !dbg !1217
  store i32 %0, i32* %type1, align 8, !dbg !1218
  %2 = load i8*, i8** %proto.addr, align 8, !dbg !1219
  %3 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1220
  %proto2 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %3, i32 0, i32 2, !dbg !1221
  store i8* %2, i8** %proto2, align 8, !dbg !1222
  %4 = load i64, i64* %proto_len.addr, align 8, !dbg !1223
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1224
  %proto_len3 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 3, !dbg !1225
  store i64 %4, i64* %proto_len3, align 8, !dbg !1226
  %6 = load i32, i32* %extra_flags.addr, align 4, !dbg !1227
  %7 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1228
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %7, i32 0, i32 5, !dbg !1229
  %8 = load i32, i32* %flags, align 4, !dbg !1230
  %or = or i32 %8, %6, !dbg !1230
  store i32 %or, i32* %flags, align 4, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: noinline nounwind uwtable
define internal void @callReplyParseCollection(%struct.ReplyParser* %parser, %struct.CallReply* %rep, i64 %len, i8* %proto, i64 %elements_per_entry) #0 !dbg !1232 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %rep.addr = alloca %struct.CallReply*, align 8
  %len.addr = alloca i64, align 8
  %proto.addr = alloca i8*, align 8
  %elements_per_entry.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !1235, metadata !DIExpression()), !dbg !1236
  store %struct.CallReply* %rep, %struct.CallReply** %rep.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.CallReply** %rep.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !1239, metadata !DIExpression()), !dbg !1240
  store i8* %proto, i8** %proto.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %proto.addr, metadata !1241, metadata !DIExpression()), !dbg !1242
  store i64 %elements_per_entry, i64* %elements_per_entry.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %elements_per_entry.addr, metadata !1243, metadata !DIExpression()), !dbg !1244
  %0 = load i64, i64* %len.addr, align 8, !dbg !1245
  %1 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1246
  %len1 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %1, i32 0, i32 6, !dbg !1247
  store i64 %0, i64* %len1, align 8, !dbg !1248
  %2 = load i64, i64* %elements_per_entry.addr, align 8, !dbg !1249
  %3 = load i64, i64* %len.addr, align 8, !dbg !1250
  %mul = mul i64 %2, %3, !dbg !1251
  %mul2 = mul i64 %mul, 80, !dbg !1252
  %call = call i8* @zcalloc(i64 %mul2), !dbg !1253
  %4 = bitcast i8* %call to %struct.CallReply*, !dbg !1253
  %5 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1254
  %val = getelementptr inbounds %struct.CallReply, %struct.CallReply* %5, i32 0, i32 7, !dbg !1255
  %array = bitcast %union.anon* %val to %struct.CallReply**, !dbg !1256
  store %struct.CallReply* %4, %struct.CallReply** %array, align 8, !dbg !1257
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1258, metadata !DIExpression()), !dbg !1260
  store i64 0, i64* %i, align 8, !dbg !1260
  br label %for.cond, !dbg !1261

for.cond:                                         ; preds = %for.inc25, %entry
  %6 = load i64, i64* %i, align 8, !dbg !1262
  %7 = load i64, i64* %len.addr, align 8, !dbg !1264
  %8 = load i64, i64* %elements_per_entry.addr, align 8, !dbg !1265
  %mul3 = mul i64 %7, %8, !dbg !1266
  %cmp = icmp ult i64 %6, %mul3, !dbg !1267
  br i1 %cmp, label %for.body, label %for.end27, !dbg !1268

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %j, metadata !1269, metadata !DIExpression()), !dbg !1272
  store i64 0, i64* %j, align 8, !dbg !1272
  br label %for.cond4, !dbg !1273

for.cond4:                                        ; preds = %for.inc, %for.body
  %9 = load i64, i64* %j, align 8, !dbg !1274
  %10 = load i64, i64* %elements_per_entry.addr, align 8, !dbg !1276
  %cmp5 = icmp ult i64 %9, %10, !dbg !1277
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !1278

for.body6:                                        ; preds = %for.cond4
  %11 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1279
  %private_data = getelementptr inbounds %struct.CallReply, %struct.CallReply* %11, i32 0, i32 0, !dbg !1281
  %12 = load i8*, i8** %private_data, align 8, !dbg !1281
  %13 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1282
  %val7 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %13, i32 0, i32 7, !dbg !1283
  %array8 = bitcast %union.anon* %val7 to %struct.CallReply**, !dbg !1284
  %14 = load %struct.CallReply*, %struct.CallReply** %array8, align 8, !dbg !1284
  %15 = load i64, i64* %i, align 8, !dbg !1285
  %16 = load i64, i64* %j, align 8, !dbg !1286
  %add = add i64 %15, %16, !dbg !1287
  %arrayidx = getelementptr inbounds %struct.CallReply, %struct.CallReply* %14, i64 %add, !dbg !1282
  %private_data9 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %arrayidx, i32 0, i32 0, !dbg !1288
  store i8* %12, i8** %private_data9, align 8, !dbg !1289
  %17 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1290
  %18 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1291
  %val10 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %18, i32 0, i32 7, !dbg !1292
  %array11 = bitcast %union.anon* %val10 to %struct.CallReply**, !dbg !1293
  %19 = load %struct.CallReply*, %struct.CallReply** %array11, align 8, !dbg !1293
  %20 = load i64, i64* %i, align 8, !dbg !1294
  %add.ptr = getelementptr inbounds %struct.CallReply, %struct.CallReply* %19, i64 %20, !dbg !1295
  %21 = load i64, i64* %j, align 8, !dbg !1296
  %add.ptr12 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %add.ptr, i64 %21, !dbg !1297
  %22 = bitcast %struct.CallReply* %add.ptr12 to i8*, !dbg !1291
  %call13 = call i32 @parseReply(%struct.ReplyParser* %17, i8* %22), !dbg !1298
  %23 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1299
  %val14 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %23, i32 0, i32 7, !dbg !1300
  %array15 = bitcast %union.anon* %val14 to %struct.CallReply**, !dbg !1301
  %24 = load %struct.CallReply*, %struct.CallReply** %array15, align 8, !dbg !1301
  %25 = load i64, i64* %i, align 8, !dbg !1302
  %26 = load i64, i64* %j, align 8, !dbg !1303
  %add16 = add i64 %25, %26, !dbg !1304
  %arrayidx17 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %24, i64 %add16, !dbg !1299
  %flags = getelementptr inbounds %struct.CallReply, %struct.CallReply* %arrayidx17, i32 0, i32 5, !dbg !1305
  %27 = load i32, i32* %flags, align 4, !dbg !1306
  %or = or i32 %27, 2, !dbg !1306
  store i32 %or, i32* %flags, align 4, !dbg !1306
  %28 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1307
  %val18 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %28, i32 0, i32 7, !dbg !1309
  %array19 = bitcast %union.anon* %val18 to %struct.CallReply**, !dbg !1310
  %29 = load %struct.CallReply*, %struct.CallReply** %array19, align 8, !dbg !1310
  %30 = load i64, i64* %i, align 8, !dbg !1311
  %31 = load i64, i64* %j, align 8, !dbg !1312
  %add20 = add i64 %30, %31, !dbg !1313
  %arrayidx21 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %29, i64 %add20, !dbg !1307
  %flags22 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %arrayidx21, i32 0, i32 5, !dbg !1314
  %32 = load i32, i32* %flags22, align 4, !dbg !1314
  %and = and i32 %32, 4, !dbg !1315
  %tobool = icmp ne i32 %and, 0, !dbg !1315
  br i1 %tobool, label %if.then, label %if.end, !dbg !1316

if.then:                                          ; preds = %for.body6
  %33 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1317
  %flags23 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %33, i32 0, i32 5, !dbg !1319
  %34 = load i32, i32* %flags23, align 4, !dbg !1320
  %or24 = or i32 %34, 4, !dbg !1320
  store i32 %or24, i32* %flags23, align 4, !dbg !1320
  br label %if.end, !dbg !1321

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc, !dbg !1322

for.inc:                                          ; preds = %if.end
  %35 = load i64, i64* %j, align 8, !dbg !1323
  %inc = add i64 %35, 1, !dbg !1323
  store i64 %inc, i64* %j, align 8, !dbg !1323
  br label %for.cond4, !dbg !1324, !llvm.loop !1325

for.end:                                          ; preds = %for.cond4
  br label %for.inc25, !dbg !1327

for.inc25:                                        ; preds = %for.end
  %36 = load i64, i64* %elements_per_entry.addr, align 8, !dbg !1328
  %37 = load i64, i64* %i, align 8, !dbg !1329
  %add26 = add i64 %37, %36, !dbg !1329
  store i64 %add26, i64* %i, align 8, !dbg !1329
  br label %for.cond, !dbg !1330, !llvm.loop !1331

for.end27:                                        ; preds = %for.cond
  %38 = load i8*, i8** %proto.addr, align 8, !dbg !1333
  %39 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1334
  %proto28 = getelementptr inbounds %struct.CallReply, %struct.CallReply* %39, i32 0, i32 2, !dbg !1335
  store i8* %38, i8** %proto28, align 8, !dbg !1336
  %40 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !1337
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %40, i32 0, i32 0, !dbg !1338
  %41 = load i8*, i8** %curr_location, align 8, !dbg !1338
  %42 = load i8*, i8** %proto.addr, align 8, !dbg !1339
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64, !dbg !1340
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64, !dbg !1340
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1340
  %43 = load %struct.CallReply*, %struct.CallReply** %rep.addr, align 8, !dbg !1341
  %proto_len = getelementptr inbounds %struct.CallReply, %struct.CallReply* %43, i32 0, i32 3, !dbg !1342
  store i64 %sub.ptr.sub, i64* %proto_len, align 8, !dbg !1343
  ret void, !dbg !1344
}

declare dso_local i8* @zcalloc(i64) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DefaultParserCallbacks", scope: !2, file: !3, line: 245, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !57, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "call_reply.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!6, !10, !27, !37, !47}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !12, line: 51, size: 24, elements: !13)
!12 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!13 = !{!14, !20, !21, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !11, file: !12, line: 52, baseType: !15, size: 8)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !18, line: 38, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !11, file: !12, line: 53, baseType: !15, size: 8, offset: 8)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !11, file: !12, line: 54, baseType: !19, size: 8, offset: 16)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !11, file: !12, line: 55, baseType: !23, offset: 24)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, elements: !25)
!24 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!25 = !{!26}
!26 = !DISubrange(count: -1)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !12, line: 57, size: 40, elements: !29)
!29 = !{!30, !34, !35, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !28, file: !12, line: 58, baseType: !31, size: 16)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 25, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !18, line: 40, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !28, file: !12, line: 59, baseType: !31, size: 16, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !12, line: 60, baseType: !19, size: 8, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !28, file: !12, line: 61, baseType: !23, offset: 40)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !12, line: 63, size: 72, elements: !39)
!39 = !{!40, !44, !45, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !38, file: !12, line: 64, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !16, line: 26, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 42, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !38, file: !12, line: 65, baseType: !41, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !12, line: 66, baseType: !19, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !38, file: !12, line: 67, baseType: !23, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !12, line: 69, size: 136, elements: !49)
!49 = !{!50, !54, !55, !56}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !48, file: !12, line: 70, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !16, line: 27, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !18, line: 45, baseType: !53)
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !48, file: !12, line: 71, baseType: !51, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !12, line: 72, baseType: !19, size: 8, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !48, file: !12, line: 73, baseType: !23, offset: 136)
!57 = !{!0}
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParserCallbacks", file: !60, line: 84, baseType: !61)
!60 = !DIFile(filename: "./resp_parser.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParserCallbacks", file: !60, line: 37, size: 1024, elements: !62)
!62 = !{!63, !71, !72, !76, !77, !78, !83, !92, !93, !94, !99, !104, !105, !109, !110, !111}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "null_array_callback", scope: !61, file: !60, line: 39, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !9, !67, !69}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !53)
!70 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "null_bulk_string_callback", scope: !61, file: !60, line: 42, baseType: !64, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_string_callback", scope: !61, file: !60, line: 45, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !9, !67, !69, !67, !69}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "error_callback", scope: !61, file: !60, line: 48, baseType: !73, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "simple_str_callback", scope: !61, file: !60, line: 51, baseType: !73, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "long_callback", scope: !61, file: !60, line: 54, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !9, !82, !67, !69}
!82 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "array_callback", scope: !61, file: !60, line: 57, baseType: !84, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !9, !69, !67}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParser", file: !60, line: 86, size: 1088, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "curr_location", scope: !88, file: !60, line: 88, baseType: !67, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !88, file: !60, line: 89, baseType: !59, size: 1024, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "set_callback", scope: !61, file: !60, line: 60, baseType: !84, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "map_callback", scope: !61, file: !60, line: 63, baseType: !84, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "bool_callback", scope: !61, file: !60, line: 66, baseType: !95, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !9, !98, !67, !69}
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "double_callback", scope: !61, file: !60, line: 69, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !9, !103, !67, !69}
!103 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "big_number_callback", scope: !61, file: !60, line: 72, baseType: !73, size: 64, offset: 704)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "verbatim_string_callback", scope: !61, file: !60, line: 75, baseType: !106, size: 64, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !9, !67, !67, !69, !67, !69}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_callback", scope: !61, file: !60, line: 78, baseType: !84, size: 64, offset: 832)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "null_callback", scope: !61, file: !60, line: 81, baseType: !64, size: 64, offset: 896)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !61, file: !60, line: 83, baseType: !6, size: 64, offset: 960)
!112 = !{i32 7, !"Dwarf Version", i32 4}
!113 = !{i32 2, !"Debug Info Version", i32 3}
!114 = !{i32 1, !"wchar_size", i32 4}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!118 = distinct !DISubprogram(name: "freeCallReply", scope: !3, file: !3, line: 232, type: !119, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallReply", file: !123, line: 35, baseType: !124)
!123 = !DIFile(filename: "./call_reply.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallReply", file: !3, line: 42, size: 640, elements: !125)
!125 = !{!126, !127, !130, !131, !132, !133, !134, !135, !148, !174}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !124, file: !3, line: 43, baseType: !9, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "original_proto", scope: !124, file: !3, line: 44, baseType: !128, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !12, line: 43, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !124, file: !3, line: 45, baseType: !67, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "proto_len", scope: !124, file: !3, line: 46, baseType: !69, size: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !3, line: 47, baseType: !98, size: 32, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !3, line: 48, baseType: !98, size: 32, offset: 288)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !124, file: !3, line: 49, baseType: !69, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !124, file: !3, line: 62, baseType: !136, size: 128, offset: 384)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !3, line: 50, size: 128, elements: !137)
!137 = !{!138, !139, !144, !145, !146}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !136, file: !3, line: 51, baseType: !67, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "verbatim_str", scope: !136, file: !3, line: 58, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !3, line: 55, size: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !140, file: !3, line: 56, baseType: !67, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !140, file: !3, line: 57, baseType: !67, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ll", scope: !136, file: !3, line: 59, baseType: !82, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !136, file: !3, line: 60, baseType: !103, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !136, file: !3, line: 61, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_error_list", scope: !124, file: !3, line: 63, baseType: !149, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !151, line: 54, baseType: !152)
!151 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !151, line: 47, size: 384, elements: !153)
!153 = !{!154, !163, !164, !168, !169, !173}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !152, file: !151, line: 48, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !151, line: 40, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !151, line: 36, size: 192, elements: !158)
!158 = !{!159, !161, !162}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !151, line: 37, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !151, line: 38, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !157, file: !151, line: 39, baseType: !9, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !152, file: !151, line: 49, baseType: !155, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !152, file: !151, line: 50, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!9, !9}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !152, file: !151, line: 51, baseType: !6, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !152, file: !151, line: 52, baseType: !170, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!98, !9, !9}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !152, file: !151, line: 53, baseType: !53, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !124, file: !3, line: 64, baseType: !147, size: 64, offset: 576)
!175 = !DILocalVariable(name: "rep", arg: 1, scope: !118, file: !3, line: 232, type: !121)
!176 = !DILocation(line: 232, column: 31, scope: !118)
!177 = !DILocation(line: 233, column: 11, scope: !178)
!178 = distinct !DILexicalBlock(scope: !118, file: !3, line: 233, column: 9)
!179 = !DILocation(line: 233, column: 16, scope: !178)
!180 = !DILocation(line: 233, column: 22, scope: !178)
!181 = !DILocation(line: 233, column: 9, scope: !118)
!182 = !DILocation(line: 234, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 233, column: 42)
!184 = !DILocation(line: 236, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !118, file: !3, line: 236, column: 9)
!186 = !DILocation(line: 236, column: 14, scope: !185)
!187 = !DILocation(line: 236, column: 20, scope: !185)
!188 = !DILocation(line: 236, column: 9, scope: !118)
!189 = !DILocation(line: 237, column: 31, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 236, column: 41)
!191 = !DILocation(line: 237, column: 9, scope: !190)
!192 = !DILocation(line: 238, column: 5, scope: !190)
!193 = !DILocation(line: 239, column: 13, scope: !118)
!194 = !DILocation(line: 239, column: 18, scope: !118)
!195 = !DILocation(line: 239, column: 5, scope: !118)
!196 = !DILocation(line: 240, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !118, file: !3, line: 240, column: 9)
!198 = !DILocation(line: 240, column: 14, scope: !197)
!199 = !DILocation(line: 240, column: 9, scope: !118)
!200 = !DILocation(line: 241, column: 21, scope: !197)
!201 = !DILocation(line: 241, column: 26, scope: !197)
!202 = !DILocation(line: 241, column: 9, scope: !197)
!203 = !DILocation(line: 242, column: 11, scope: !118)
!204 = !DILocation(line: 242, column: 5, scope: !118)
!205 = !DILocation(line: 243, column: 1, scope: !118)
!206 = distinct !DISubprogram(name: "freeCallReplyInternal", scope: !3, file: !3, line: 207, type: !119, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!207 = !DILocalVariable(name: "rep", arg: 1, scope: !206, file: !3, line: 207, type: !121)
!208 = !DILocation(line: 207, column: 46, scope: !206)
!209 = !DILocation(line: 208, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 208, column: 9)
!211 = !DILocation(line: 208, column: 14, scope: !210)
!212 = !DILocation(line: 208, column: 19, scope: !210)
!213 = !DILocation(line: 208, column: 46, scope: !210)
!214 = !DILocation(line: 208, column: 49, scope: !210)
!215 = !DILocation(line: 208, column: 54, scope: !210)
!216 = !DILocation(line: 208, column: 59, scope: !210)
!217 = !DILocation(line: 208, column: 9, scope: !206)
!218 = !DILocalVariable(name: "i", scope: !219, file: !3, line: 209, type: !69)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 209, column: 9)
!220 = distinct !DILexicalBlock(scope: !210, file: !3, line: 208, column: 85)
!221 = !DILocation(line: 209, column: 21, scope: !219)
!222 = !DILocation(line: 209, column: 14, scope: !219)
!223 = !DILocation(line: 209, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 209, column: 9)
!225 = !DILocation(line: 209, column: 33, scope: !224)
!226 = !DILocation(line: 209, column: 38, scope: !224)
!227 = !DILocation(line: 209, column: 31, scope: !224)
!228 = !DILocation(line: 209, column: 9, scope: !219)
!229 = !DILocation(line: 210, column: 35, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 209, column: 49)
!231 = !DILocation(line: 210, column: 40, scope: !230)
!232 = !DILocation(line: 210, column: 44, scope: !230)
!233 = !DILocation(line: 210, column: 52, scope: !230)
!234 = !DILocation(line: 210, column: 50, scope: !230)
!235 = !DILocation(line: 210, column: 13, scope: !230)
!236 = !DILocation(line: 211, column: 9, scope: !230)
!237 = !DILocation(line: 209, column: 44, scope: !224)
!238 = !DILocation(line: 209, column: 9, scope: !224)
!239 = distinct !{!239, !228, !240, !241}
!240 = !DILocation(line: 211, column: 9, scope: !219)
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 212, column: 15, scope: !220)
!243 = !DILocation(line: 212, column: 20, scope: !220)
!244 = !DILocation(line: 212, column: 24, scope: !220)
!245 = !DILocation(line: 212, column: 9, scope: !220)
!246 = !DILocation(line: 213, column: 5, scope: !220)
!247 = !DILocation(line: 215, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !206, file: !3, line: 215, column: 9)
!249 = !DILocation(line: 215, column: 14, scope: !248)
!250 = !DILocation(line: 215, column: 19, scope: !248)
!251 = !DILocation(line: 215, column: 44, scope: !248)
!252 = !DILocation(line: 215, column: 47, scope: !248)
!253 = !DILocation(line: 215, column: 52, scope: !248)
!254 = !DILocation(line: 215, column: 57, scope: !248)
!255 = !DILocation(line: 215, column: 9, scope: !206)
!256 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 216, type: !69)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 216, column: 9)
!258 = distinct !DILexicalBlock(scope: !248, file: !3, line: 215, column: 89)
!259 = !DILocation(line: 216, column: 21, scope: !257)
!260 = !DILocation(line: 216, column: 14, scope: !257)
!261 = !DILocation(line: 216, column: 29, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !3, line: 216, column: 9)
!263 = !DILocation(line: 216, column: 33, scope: !262)
!264 = !DILocation(line: 216, column: 38, scope: !262)
!265 = !DILocation(line: 216, column: 31, scope: !262)
!266 = !DILocation(line: 216, column: 9, scope: !257)
!267 = !DILocation(line: 217, column: 35, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !3, line: 216, column: 49)
!269 = !DILocation(line: 217, column: 40, scope: !268)
!270 = !DILocation(line: 217, column: 44, scope: !268)
!271 = !DILocation(line: 217, column: 52, scope: !268)
!272 = !DILocation(line: 217, column: 54, scope: !268)
!273 = !DILocation(line: 217, column: 50, scope: !268)
!274 = !DILocation(line: 217, column: 13, scope: !268)
!275 = !DILocation(line: 218, column: 35, scope: !268)
!276 = !DILocation(line: 218, column: 40, scope: !268)
!277 = !DILocation(line: 218, column: 44, scope: !268)
!278 = !DILocation(line: 218, column: 52, scope: !268)
!279 = !DILocation(line: 218, column: 54, scope: !268)
!280 = !DILocation(line: 218, column: 50, scope: !268)
!281 = !DILocation(line: 218, column: 58, scope: !268)
!282 = !DILocation(line: 218, column: 13, scope: !268)
!283 = !DILocation(line: 219, column: 9, scope: !268)
!284 = !DILocation(line: 216, column: 44, scope: !262)
!285 = !DILocation(line: 216, column: 9, scope: !262)
!286 = distinct !{!286, !266, !287, !241}
!287 = !DILocation(line: 219, column: 9, scope: !257)
!288 = !DILocation(line: 220, column: 15, scope: !258)
!289 = !DILocation(line: 220, column: 20, scope: !258)
!290 = !DILocation(line: 220, column: 24, scope: !258)
!291 = !DILocation(line: 220, column: 9, scope: !258)
!292 = !DILocation(line: 221, column: 5, scope: !258)
!293 = !DILocation(line: 223, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !206, file: !3, line: 223, column: 9)
!295 = !DILocation(line: 223, column: 14, scope: !294)
!296 = !DILocation(line: 223, column: 9, scope: !206)
!297 = !DILocation(line: 224, column: 31, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 223, column: 25)
!299 = !DILocation(line: 224, column: 36, scope: !298)
!300 = !DILocation(line: 224, column: 9, scope: !298)
!301 = !DILocation(line: 225, column: 15, scope: !298)
!302 = !DILocation(line: 225, column: 20, scope: !298)
!303 = !DILocation(line: 225, column: 9, scope: !298)
!304 = !DILocation(line: 226, column: 5, scope: !298)
!305 = !DILocation(line: 227, column: 1, scope: !206)
!306 = distinct !DISubprogram(name: "callReplyType", scope: !3, file: !3, line: 278, type: !307, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!307 = !DISubroutineType(types: !308)
!308 = !{!98, !121}
!309 = !DILocalVariable(name: "rep", arg: 1, scope: !306, file: !3, line: 278, type: !121)
!310 = !DILocation(line: 278, column: 30, scope: !306)
!311 = !DILocation(line: 279, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !306, file: !3, line: 279, column: 9)
!313 = !DILocation(line: 279, column: 9, scope: !306)
!314 = !DILocation(line: 279, column: 15, scope: !312)
!315 = !DILocation(line: 280, column: 20, scope: !306)
!316 = !DILocation(line: 280, column: 5, scope: !306)
!317 = !DILocation(line: 281, column: 12, scope: !306)
!318 = !DILocation(line: 281, column: 17, scope: !306)
!319 = !DILocation(line: 281, column: 5, scope: !306)
!320 = !DILocation(line: 282, column: 1, scope: !306)
!321 = distinct !DISubprogram(name: "callReplyParse", scope: !3, file: !3, line: 266, type: !119, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!322 = !DILocalVariable(name: "rep", arg: 1, scope: !321, file: !3, line: 266, type: !121)
!323 = !DILocation(line: 266, column: 39, scope: !321)
!324 = !DILocation(line: 267, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 267, column: 9)
!326 = !DILocation(line: 267, column: 14, scope: !325)
!327 = !DILocation(line: 267, column: 20, scope: !325)
!328 = !DILocation(line: 267, column: 9, scope: !321)
!329 = !DILocation(line: 268, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 267, column: 41)
!331 = !DILocalVariable(name: "parser", scope: !321, file: !3, line: 271, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParser", file: !60, line: 35, baseType: !88)
!333 = !DILocation(line: 271, column: 17, scope: !321)
!334 = !DILocation(line: 271, column: 26, scope: !321)
!335 = !DILocation(line: 271, column: 44, scope: !321)
!336 = !DILocation(line: 271, column: 49, scope: !321)
!337 = !DILocation(line: 271, column: 69, scope: !321)
!338 = !DILocation(line: 273, column: 25, scope: !321)
!339 = !DILocation(line: 273, column: 5, scope: !321)
!340 = !DILocation(line: 274, column: 5, scope: !321)
!341 = !DILocation(line: 274, column: 10, scope: !321)
!342 = !DILocation(line: 274, column: 16, scope: !321)
!343 = !DILocation(line: 275, column: 1, scope: !321)
!344 = distinct !DISubprogram(name: "callReplyGetString", scope: !3, file: !3, line: 294, type: !345, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{!67, !121, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!348 = !DILocalVariable(name: "rep", arg: 1, scope: !344, file: !3, line: 294, type: !121)
!349 = !DILocation(line: 294, column: 43, scope: !344)
!350 = !DILocalVariable(name: "len", arg: 2, scope: !344, file: !3, line: 294, type: !347)
!351 = !DILocation(line: 294, column: 56, scope: !344)
!352 = !DILocation(line: 295, column: 20, scope: !344)
!353 = !DILocation(line: 295, column: 5, scope: !344)
!354 = !DILocation(line: 296, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !344, file: !3, line: 296, column: 9)
!356 = !DILocation(line: 296, column: 14, scope: !355)
!357 = !DILocation(line: 296, column: 19, scope: !355)
!358 = !DILocation(line: 296, column: 47, scope: !355)
!359 = !DILocation(line: 297, column: 9, scope: !355)
!360 = !DILocation(line: 297, column: 14, scope: !355)
!361 = !DILocation(line: 297, column: 19, scope: !355)
!362 = !DILocation(line: 296, column: 9, scope: !344)
!363 = !DILocation(line: 297, column: 47, scope: !355)
!364 = !DILocation(line: 298, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !344, file: !3, line: 298, column: 9)
!366 = !DILocation(line: 298, column: 9, scope: !344)
!367 = !DILocation(line: 298, column: 21, scope: !365)
!368 = !DILocation(line: 298, column: 26, scope: !365)
!369 = !DILocation(line: 298, column: 15, scope: !365)
!370 = !DILocation(line: 298, column: 19, scope: !365)
!371 = !DILocation(line: 298, column: 14, scope: !365)
!372 = !DILocation(line: 299, column: 12, scope: !344)
!373 = !DILocation(line: 299, column: 17, scope: !344)
!374 = !DILocation(line: 299, column: 21, scope: !344)
!375 = !DILocation(line: 299, column: 5, scope: !344)
!376 = !DILocation(line: 300, column: 1, scope: !344)
!377 = distinct !DISubprogram(name: "callReplyGetLongLong", scope: !3, file: !3, line: 305, type: !378, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!378 = !DISubroutineType(types: !379)
!379 = !{!82, !121}
!380 = !DILocalVariable(name: "rep", arg: 1, scope: !377, file: !3, line: 305, type: !121)
!381 = !DILocation(line: 305, column: 43, scope: !377)
!382 = !DILocation(line: 306, column: 20, scope: !377)
!383 = !DILocation(line: 306, column: 5, scope: !377)
!384 = !DILocation(line: 307, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !377, file: !3, line: 307, column: 9)
!386 = !DILocation(line: 307, column: 14, scope: !385)
!387 = !DILocation(line: 307, column: 19, scope: !385)
!388 = !DILocation(line: 307, column: 9, scope: !377)
!389 = !DILocation(line: 307, column: 49, scope: !385)
!390 = !DILocation(line: 308, column: 12, scope: !377)
!391 = !DILocation(line: 308, column: 17, scope: !377)
!392 = !DILocation(line: 308, column: 21, scope: !377)
!393 = !DILocation(line: 308, column: 5, scope: !377)
!394 = !DILocation(line: 309, column: 1, scope: !377)
!395 = distinct !DISubprogram(name: "callReplyGetDouble", scope: !3, file: !3, line: 314, type: !396, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!396 = !DISubroutineType(types: !397)
!397 = !{!103, !121}
!398 = !DILocalVariable(name: "rep", arg: 1, scope: !395, file: !3, line: 314, type: !121)
!399 = !DILocation(line: 314, column: 38, scope: !395)
!400 = !DILocation(line: 315, column: 20, scope: !395)
!401 = !DILocation(line: 315, column: 5, scope: !395)
!402 = !DILocation(line: 316, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !3, line: 316, column: 9)
!404 = !DILocation(line: 316, column: 14, scope: !403)
!405 = !DILocation(line: 316, column: 19, scope: !403)
!406 = !DILocation(line: 316, column: 9, scope: !395)
!407 = !DILocation(line: 316, column: 48, scope: !403)
!408 = !DILocation(line: 317, column: 12, scope: !395)
!409 = !DILocation(line: 317, column: 17, scope: !395)
!410 = !DILocation(line: 317, column: 21, scope: !395)
!411 = !DILocation(line: 317, column: 5, scope: !395)
!412 = !DILocation(line: 318, column: 1, scope: !395)
!413 = distinct !DISubprogram(name: "callReplyGetBool", scope: !3, file: !3, line: 323, type: !307, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!414 = !DILocalVariable(name: "rep", arg: 1, scope: !413, file: !3, line: 323, type: !121)
!415 = !DILocation(line: 323, column: 33, scope: !413)
!416 = !DILocation(line: 324, column: 20, scope: !413)
!417 = !DILocation(line: 324, column: 5, scope: !413)
!418 = !DILocation(line: 325, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !413, file: !3, line: 325, column: 9)
!420 = !DILocation(line: 325, column: 14, scope: !419)
!421 = !DILocation(line: 325, column: 19, scope: !419)
!422 = !DILocation(line: 325, column: 9, scope: !413)
!423 = !DILocation(line: 325, column: 46, scope: !419)
!424 = !DILocation(line: 326, column: 12, scope: !413)
!425 = !DILocation(line: 326, column: 17, scope: !413)
!426 = !DILocation(line: 326, column: 21, scope: !413)
!427 = !DILocation(line: 326, column: 5, scope: !413)
!428 = !DILocation(line: 327, column: 1, scope: !413)
!429 = distinct !DISubprogram(name: "callReplyGetLen", scope: !3, file: !3, line: 337, type: !430, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!430 = !DISubroutineType(types: !431)
!431 = !{!69, !121}
!432 = !DILocalVariable(name: "rep", arg: 1, scope: !429, file: !3, line: 337, type: !121)
!433 = !DILocation(line: 337, column: 35, scope: !429)
!434 = !DILocation(line: 338, column: 20, scope: !429)
!435 = !DILocation(line: 338, column: 5, scope: !429)
!436 = !DILocation(line: 339, column: 12, scope: !429)
!437 = !DILocation(line: 339, column: 17, scope: !429)
!438 = !DILocation(line: 339, column: 5, scope: !429)
!439 = !DILocation(line: 346, column: 20, scope: !440)
!440 = distinct !DILexicalBlock(scope: !429, file: !3, line: 339, column: 23)
!441 = !DILocation(line: 346, column: 25, scope: !440)
!442 = !DILocation(line: 346, column: 13, scope: !440)
!443 = !DILocation(line: 348, column: 13, scope: !440)
!444 = !DILocation(line: 350, column: 1, scope: !429)
!445 = distinct !DISubprogram(name: "callReplyGetArrayElement", scope: !3, file: !3, line: 363, type: !446, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!446 = !DISubroutineType(types: !447)
!447 = !{!121, !121, !69}
!448 = !DILocalVariable(name: "rep", arg: 1, scope: !445, file: !3, line: 363, type: !121)
!449 = !DILocation(line: 363, column: 48, scope: !445)
!450 = !DILocalVariable(name: "idx", arg: 2, scope: !445, file: !3, line: 363, type: !69)
!451 = !DILocation(line: 363, column: 60, scope: !445)
!452 = !DILocation(line: 364, column: 20, scope: !445)
!453 = !DILocation(line: 364, column: 5, scope: !445)
!454 = !DILocation(line: 365, column: 9, scope: !455)
!455 = distinct !DILexicalBlock(scope: !445, file: !3, line: 365, column: 9)
!456 = !DILocation(line: 365, column: 14, scope: !455)
!457 = !DILocation(line: 365, column: 19, scope: !455)
!458 = !DILocation(line: 365, column: 9, scope: !445)
!459 = !DILocation(line: 365, column: 47, scope: !455)
!460 = !DILocation(line: 366, column: 42, scope: !445)
!461 = !DILocation(line: 366, column: 47, scope: !445)
!462 = !DILocation(line: 366, column: 12, scope: !445)
!463 = !DILocation(line: 366, column: 5, scope: !445)
!464 = !DILocation(line: 367, column: 1, scope: !445)
!465 = distinct !DISubprogram(name: "callReplyGetCollectionElement", scope: !3, file: !3, line: 352, type: !466, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!466 = !DISubroutineType(types: !467)
!467 = !{!121, !121, !69, !98}
!468 = !DILocalVariable(name: "rep", arg: 1, scope: !465, file: !3, line: 352, type: !121)
!469 = !DILocation(line: 352, column: 60, scope: !465)
!470 = !DILocalVariable(name: "idx", arg: 2, scope: !465, file: !3, line: 352, type: !69)
!471 = !DILocation(line: 352, column: 72, scope: !465)
!472 = !DILocalVariable(name: "elements_per_entry", arg: 3, scope: !465, file: !3, line: 352, type: !98)
!473 = !DILocation(line: 352, column: 81, scope: !465)
!474 = !DILocation(line: 353, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !465, file: !3, line: 353, column: 9)
!476 = !DILocation(line: 353, column: 16, scope: !475)
!477 = !DILocation(line: 353, column: 21, scope: !475)
!478 = !DILocation(line: 353, column: 27, scope: !475)
!479 = !DILocation(line: 353, column: 25, scope: !475)
!480 = !DILocation(line: 353, column: 13, scope: !475)
!481 = !DILocation(line: 353, column: 9, scope: !465)
!482 = !DILocation(line: 353, column: 47, scope: !475)
!483 = !DILocation(line: 354, column: 12, scope: !465)
!484 = !DILocation(line: 354, column: 17, scope: !465)
!485 = !DILocation(line: 354, column: 21, scope: !465)
!486 = !DILocation(line: 354, column: 27, scope: !465)
!487 = !DILocation(line: 354, column: 26, scope: !465)
!488 = !DILocation(line: 354, column: 5, scope: !465)
!489 = !DILocation(line: 355, column: 1, scope: !465)
!490 = distinct !DISubprogram(name: "callReplyGetSetElement", scope: !3, file: !3, line: 375, type: !446, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!491 = !DILocalVariable(name: "rep", arg: 1, scope: !490, file: !3, line: 375, type: !121)
!492 = !DILocation(line: 375, column: 46, scope: !490)
!493 = !DILocalVariable(name: "idx", arg: 2, scope: !490, file: !3, line: 375, type: !69)
!494 = !DILocation(line: 375, column: 58, scope: !490)
!495 = !DILocation(line: 376, column: 20, scope: !490)
!496 = !DILocation(line: 376, column: 5, scope: !490)
!497 = !DILocation(line: 377, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !490, file: !3, line: 377, column: 9)
!499 = !DILocation(line: 377, column: 14, scope: !498)
!500 = !DILocation(line: 377, column: 19, scope: !498)
!501 = !DILocation(line: 377, column: 9, scope: !490)
!502 = !DILocation(line: 377, column: 45, scope: !498)
!503 = !DILocation(line: 378, column: 42, scope: !490)
!504 = !DILocation(line: 378, column: 47, scope: !490)
!505 = !DILocation(line: 378, column: 12, scope: !490)
!506 = !DILocation(line: 378, column: 5, scope: !490)
!507 = !DILocation(line: 379, column: 1, scope: !490)
!508 = distinct !DISubprogram(name: "callReplyGetMapElement", scope: !3, file: !3, line: 402, type: !509, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!509 = !DISubroutineType(types: !510)
!510 = !{!98, !121, !69, !511, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!512 = !DILocalVariable(name: "rep", arg: 1, scope: !508, file: !3, line: 402, type: !121)
!513 = !DILocation(line: 402, column: 39, scope: !508)
!514 = !DILocalVariable(name: "idx", arg: 2, scope: !508, file: !3, line: 402, type: !69)
!515 = !DILocation(line: 402, column: 51, scope: !508)
!516 = !DILocalVariable(name: "key", arg: 3, scope: !508, file: !3, line: 402, type: !511)
!517 = !DILocation(line: 402, column: 68, scope: !508)
!518 = !DILocalVariable(name: "val", arg: 4, scope: !508, file: !3, line: 402, type: !511)
!519 = !DILocation(line: 402, column: 85, scope: !508)
!520 = !DILocation(line: 403, column: 43, scope: !508)
!521 = !DILocation(line: 403, column: 48, scope: !508)
!522 = !DILocation(line: 403, column: 53, scope: !508)
!523 = !DILocation(line: 403, column: 58, scope: !508)
!524 = !DILocation(line: 403, column: 12, scope: !508)
!525 = !DILocation(line: 403, column: 5, scope: !508)
!526 = distinct !DISubprogram(name: "callReplyGetMapElementInternal", scope: !3, file: !3, line: 381, type: !527, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!527 = !DISubroutineType(types: !528)
!528 = !{!98, !121, !69, !511, !511, !98}
!529 = !DILocalVariable(name: "rep", arg: 1, scope: !526, file: !3, line: 381, type: !121)
!530 = !DILocation(line: 381, column: 54, scope: !526)
!531 = !DILocalVariable(name: "idx", arg: 2, scope: !526, file: !3, line: 381, type: !69)
!532 = !DILocation(line: 381, column: 66, scope: !526)
!533 = !DILocalVariable(name: "key", arg: 3, scope: !526, file: !3, line: 381, type: !511)
!534 = !DILocation(line: 381, column: 83, scope: !526)
!535 = !DILocalVariable(name: "val", arg: 4, scope: !526, file: !3, line: 381, type: !511)
!536 = !DILocation(line: 381, column: 100, scope: !526)
!537 = !DILocalVariable(name: "type", arg: 5, scope: !526, file: !3, line: 381, type: !98)
!538 = !DILocation(line: 381, column: 109, scope: !526)
!539 = !DILocation(line: 382, column: 20, scope: !526)
!540 = !DILocation(line: 382, column: 5, scope: !526)
!541 = !DILocation(line: 383, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !526, file: !3, line: 383, column: 9)
!543 = !DILocation(line: 383, column: 14, scope: !542)
!544 = !DILocation(line: 383, column: 22, scope: !542)
!545 = !DILocation(line: 383, column: 19, scope: !542)
!546 = !DILocation(line: 383, column: 9, scope: !526)
!547 = !DILocation(line: 383, column: 28, scope: !542)
!548 = !DILocation(line: 384, column: 9, scope: !549)
!549 = distinct !DILexicalBlock(scope: !526, file: !3, line: 384, column: 9)
!550 = !DILocation(line: 384, column: 16, scope: !549)
!551 = !DILocation(line: 384, column: 21, scope: !549)
!552 = !DILocation(line: 384, column: 13, scope: !549)
!553 = !DILocation(line: 384, column: 9, scope: !526)
!554 = !DILocation(line: 384, column: 26, scope: !549)
!555 = !DILocation(line: 385, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !526, file: !3, line: 385, column: 9)
!557 = !DILocation(line: 385, column: 9, scope: !526)
!558 = !DILocation(line: 385, column: 51, scope: !556)
!559 = !DILocation(line: 385, column: 56, scope: !556)
!560 = !DILocation(line: 385, column: 60, scope: !556)
!561 = !DILocation(line: 385, column: 21, scope: !556)
!562 = !DILocation(line: 385, column: 15, scope: !556)
!563 = !DILocation(line: 385, column: 19, scope: !556)
!564 = !DILocation(line: 385, column: 14, scope: !556)
!565 = !DILocation(line: 386, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !526, file: !3, line: 386, column: 9)
!567 = !DILocation(line: 386, column: 9, scope: !526)
!568 = !DILocation(line: 386, column: 51, scope: !566)
!569 = !DILocation(line: 386, column: 56, scope: !566)
!570 = !DILocation(line: 386, column: 60, scope: !566)
!571 = !DILocation(line: 386, column: 64, scope: !566)
!572 = !DILocation(line: 386, column: 21, scope: !566)
!573 = !DILocation(line: 386, column: 15, scope: !566)
!574 = !DILocation(line: 386, column: 19, scope: !566)
!575 = !DILocation(line: 386, column: 14, scope: !566)
!576 = !DILocation(line: 387, column: 5, scope: !526)
!577 = !DILocation(line: 388, column: 1, scope: !526)
!578 = distinct !DISubprogram(name: "callReplyGetAttribute", scope: !3, file: !3, line: 411, type: !579, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!579 = !DISubroutineType(types: !580)
!580 = !{!121, !121}
!581 = !DILocalVariable(name: "rep", arg: 1, scope: !578, file: !3, line: 411, type: !121)
!582 = !DILocation(line: 411, column: 45, scope: !578)
!583 = !DILocation(line: 412, column: 12, scope: !578)
!584 = !DILocation(line: 412, column: 17, scope: !578)
!585 = !DILocation(line: 412, column: 5, scope: !578)
!586 = distinct !DISubprogram(name: "callReplyGetAttributeElement", scope: !3, file: !3, line: 427, type: !509, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!587 = !DILocalVariable(name: "rep", arg: 1, scope: !586, file: !3, line: 427, type: !121)
!588 = !DILocation(line: 427, column: 45, scope: !586)
!589 = !DILocalVariable(name: "idx", arg: 2, scope: !586, file: !3, line: 427, type: !69)
!590 = !DILocation(line: 427, column: 57, scope: !586)
!591 = !DILocalVariable(name: "key", arg: 3, scope: !586, file: !3, line: 427, type: !511)
!592 = !DILocation(line: 427, column: 74, scope: !586)
!593 = !DILocalVariable(name: "val", arg: 4, scope: !586, file: !3, line: 427, type: !511)
!594 = !DILocation(line: 427, column: 91, scope: !586)
!595 = !DILocation(line: 428, column: 43, scope: !586)
!596 = !DILocation(line: 428, column: 48, scope: !586)
!597 = !DILocation(line: 428, column: 53, scope: !586)
!598 = !DILocation(line: 428, column: 58, scope: !586)
!599 = !DILocation(line: 428, column: 12, scope: !586)
!600 = !DILocation(line: 428, column: 5, scope: !586)
!601 = distinct !DISubprogram(name: "callReplyGetBigNumber", scope: !3, file: !3, line: 443, type: !345, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!602 = !DILocalVariable(name: "rep", arg: 1, scope: !601, file: !3, line: 443, type: !121)
!603 = !DILocation(line: 443, column: 46, scope: !601)
!604 = !DILocalVariable(name: "len", arg: 2, scope: !601, file: !3, line: 443, type: !347)
!605 = !DILocation(line: 443, column: 59, scope: !601)
!606 = !DILocation(line: 444, column: 20, scope: !601)
!607 = !DILocation(line: 444, column: 5, scope: !601)
!608 = !DILocation(line: 445, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !601, file: !3, line: 445, column: 9)
!610 = !DILocation(line: 445, column: 14, scope: !609)
!611 = !DILocation(line: 445, column: 19, scope: !609)
!612 = !DILocation(line: 445, column: 9, scope: !601)
!613 = !DILocation(line: 445, column: 52, scope: !609)
!614 = !DILocation(line: 446, column: 12, scope: !601)
!615 = !DILocation(line: 446, column: 17, scope: !601)
!616 = !DILocation(line: 446, column: 6, scope: !601)
!617 = !DILocation(line: 446, column: 10, scope: !601)
!618 = !DILocation(line: 447, column: 12, scope: !601)
!619 = !DILocation(line: 447, column: 17, scope: !601)
!620 = !DILocation(line: 447, column: 21, scope: !601)
!621 = !DILocation(line: 447, column: 5, scope: !601)
!622 = !DILocation(line: 448, column: 1, scope: !601)
!623 = distinct !DISubprogram(name: "callReplyGetVerbatim", scope: !3, file: !3, line: 464, type: !624, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!624 = !DISubroutineType(types: !625)
!625 = !{!67, !121, !347, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!627 = !DILocalVariable(name: "rep", arg: 1, scope: !623, file: !3, line: 464, type: !121)
!628 = !DILocation(line: 464, column: 45, scope: !623)
!629 = !DILocalVariable(name: "len", arg: 2, scope: !623, file: !3, line: 464, type: !347)
!630 = !DILocation(line: 464, column: 58, scope: !623)
!631 = !DILocalVariable(name: "format", arg: 3, scope: !623, file: !3, line: 464, type: !626)
!632 = !DILocation(line: 464, column: 76, scope: !623)
!633 = !DILocation(line: 465, column: 20, scope: !623)
!634 = !DILocation(line: 465, column: 5, scope: !623)
!635 = !DILocation(line: 466, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !623, file: !3, line: 466, column: 9)
!637 = !DILocation(line: 466, column: 14, scope: !636)
!638 = !DILocation(line: 466, column: 19, scope: !636)
!639 = !DILocation(line: 466, column: 9, scope: !623)
!640 = !DILocation(line: 466, column: 57, scope: !636)
!641 = !DILocation(line: 467, column: 12, scope: !623)
!642 = !DILocation(line: 467, column: 17, scope: !623)
!643 = !DILocation(line: 467, column: 6, scope: !623)
!644 = !DILocation(line: 467, column: 10, scope: !623)
!645 = !DILocation(line: 468, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !623, file: !3, line: 468, column: 9)
!647 = !DILocation(line: 468, column: 9, scope: !623)
!648 = !DILocation(line: 468, column: 27, scope: !646)
!649 = !DILocation(line: 468, column: 32, scope: !646)
!650 = !DILocation(line: 468, column: 36, scope: !646)
!651 = !DILocation(line: 468, column: 49, scope: !646)
!652 = !DILocation(line: 468, column: 18, scope: !646)
!653 = !DILocation(line: 468, column: 25, scope: !646)
!654 = !DILocation(line: 468, column: 17, scope: !646)
!655 = !DILocation(line: 469, column: 12, scope: !623)
!656 = !DILocation(line: 469, column: 17, scope: !623)
!657 = !DILocation(line: 469, column: 21, scope: !623)
!658 = !DILocation(line: 469, column: 34, scope: !623)
!659 = !DILocation(line: 469, column: 5, scope: !623)
!660 = !DILocation(line: 470, column: 1, scope: !623)
!661 = distinct !DISubprogram(name: "callReplyGetProto", scope: !3, file: !3, line: 477, type: !345, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!662 = !DILocalVariable(name: "rep", arg: 1, scope: !661, file: !3, line: 477, type: !121)
!663 = !DILocation(line: 477, column: 42, scope: !661)
!664 = !DILocalVariable(name: "proto_len", arg: 2, scope: !661, file: !3, line: 477, type: !347)
!665 = !DILocation(line: 477, column: 55, scope: !661)
!666 = !DILocation(line: 478, column: 18, scope: !661)
!667 = !DILocation(line: 478, column: 23, scope: !661)
!668 = !DILocation(line: 478, column: 6, scope: !661)
!669 = !DILocation(line: 478, column: 16, scope: !661)
!670 = !DILocation(line: 479, column: 12, scope: !661)
!671 = !DILocation(line: 479, column: 17, scope: !661)
!672 = !DILocation(line: 479, column: 5, scope: !661)
!673 = distinct !DISubprogram(name: "callReplyGetPrivateData", scope: !3, file: !3, line: 484, type: !674, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!674 = !DISubroutineType(types: !675)
!675 = !{!9, !121}
!676 = !DILocalVariable(name: "rep", arg: 1, scope: !673, file: !3, line: 484, type: !121)
!677 = !DILocation(line: 484, column: 42, scope: !673)
!678 = !DILocation(line: 485, column: 12, scope: !673)
!679 = !DILocation(line: 485, column: 17, scope: !673)
!680 = !DILocation(line: 485, column: 5, scope: !673)
!681 = distinct !DISubprogram(name: "callReplyIsResp3", scope: !3, file: !3, line: 489, type: !307, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!682 = !DILocalVariable(name: "rep", arg: 1, scope: !681, file: !3, line: 489, type: !121)
!683 = !DILocation(line: 489, column: 33, scope: !681)
!684 = !DILocation(line: 490, column: 12, scope: !681)
!685 = !DILocation(line: 490, column: 17, scope: !681)
!686 = !DILocation(line: 490, column: 23, scope: !681)
!687 = !DILocation(line: 490, column: 5, scope: !681)
!688 = distinct !DISubprogram(name: "callReplyDeferredErrorList", scope: !3, file: !3, line: 494, type: !689, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!689 = !DISubroutineType(types: !690)
!690 = !{!149, !121}
!691 = !DILocalVariable(name: "rep", arg: 1, scope: !688, file: !3, line: 494, type: !121)
!692 = !DILocation(line: 494, column: 45, scope: !688)
!693 = !DILocation(line: 495, column: 12, scope: !688)
!694 = !DILocation(line: 495, column: 17, scope: !688)
!695 = !DILocation(line: 495, column: 5, scope: !688)
!696 = distinct !DISubprogram(name: "callReplyCreate", scope: !3, file: !3, line: 517, type: !697, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!697 = !DISubroutineType(types: !698)
!698 = !{!121, !128, !149, !9}
!699 = !DILocalVariable(name: "reply", arg: 1, scope: !696, file: !3, line: 517, type: !128)
!700 = !DILocation(line: 517, column: 32, scope: !696)
!701 = !DILocalVariable(name: "deferred_error_list", arg: 2, scope: !696, file: !3, line: 517, type: !149)
!702 = !DILocation(line: 517, column: 45, scope: !696)
!703 = !DILocalVariable(name: "private_data", arg: 3, scope: !696, file: !3, line: 517, type: !9)
!704 = !DILocation(line: 517, column: 72, scope: !696)
!705 = !DILocalVariable(name: "res", scope: !696, file: !3, line: 518, type: !121)
!706 = !DILocation(line: 518, column: 16, scope: !696)
!707 = !DILocation(line: 518, column: 22, scope: !696)
!708 = !DILocation(line: 519, column: 5, scope: !696)
!709 = !DILocation(line: 519, column: 10, scope: !696)
!710 = !DILocation(line: 519, column: 16, scope: !696)
!711 = !DILocation(line: 520, column: 27, scope: !696)
!712 = !DILocation(line: 520, column: 5, scope: !696)
!713 = !DILocation(line: 520, column: 10, scope: !696)
!714 = !DILocation(line: 520, column: 25, scope: !696)
!715 = !DILocation(line: 521, column: 18, scope: !696)
!716 = !DILocation(line: 521, column: 5, scope: !696)
!717 = !DILocation(line: 521, column: 10, scope: !696)
!718 = !DILocation(line: 521, column: 16, scope: !696)
!719 = !DILocation(line: 522, column: 29, scope: !696)
!720 = !DILocation(line: 522, column: 22, scope: !696)
!721 = !DILocation(line: 522, column: 5, scope: !696)
!722 = !DILocation(line: 522, column: 10, scope: !696)
!723 = !DILocation(line: 522, column: 20, scope: !696)
!724 = !DILocation(line: 523, column: 25, scope: !696)
!725 = !DILocation(line: 523, column: 5, scope: !696)
!726 = !DILocation(line: 523, column: 10, scope: !696)
!727 = !DILocation(line: 523, column: 23, scope: !696)
!728 = !DILocation(line: 524, column: 5, scope: !696)
!729 = !DILocation(line: 524, column: 10, scope: !696)
!730 = !DILocation(line: 524, column: 20, scope: !696)
!731 = !DILocation(line: 525, column: 32, scope: !696)
!732 = !DILocation(line: 525, column: 5, scope: !696)
!733 = !DILocation(line: 525, column: 10, scope: !696)
!734 = !DILocation(line: 525, column: 30, scope: !696)
!735 = !DILocation(line: 526, column: 12, scope: !696)
!736 = !DILocation(line: 526, column: 5, scope: !696)
!737 = distinct !DISubprogram(name: "sdslen", scope: !12, file: !12, line: 87, type: !738, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!738 = !DISubroutineType(types: !739)
!739 = !{!69, !740}
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!741 = !DILocalVariable(name: "s", arg: 1, scope: !737, file: !12, line: 87, type: !740)
!742 = !DILocation(line: 87, column: 39, scope: !737)
!743 = !DILocalVariable(name: "flags", scope: !737, file: !12, line: 88, type: !19)
!744 = !DILocation(line: 88, column: 19, scope: !737)
!745 = !DILocation(line: 88, column: 27, scope: !737)
!746 = !DILocation(line: 89, column: 12, scope: !737)
!747 = !DILocation(line: 89, column: 17, scope: !737)
!748 = !DILocation(line: 89, column: 5, scope: !737)
!749 = !DILocation(line: 91, column: 20, scope: !750)
!750 = distinct !DILexicalBlock(scope: !737, file: !12, line: 89, column: 33)
!751 = !DILocation(line: 91, column: 13, scope: !750)
!752 = !DILocation(line: 93, column: 20, scope: !750)
!753 = !DILocation(line: 93, column: 34, scope: !750)
!754 = !DILocation(line: 93, column: 13, scope: !750)
!755 = !DILocation(line: 95, column: 20, scope: !750)
!756 = !DILocation(line: 95, column: 35, scope: !750)
!757 = !DILocation(line: 95, column: 13, scope: !750)
!758 = !DILocation(line: 97, column: 20, scope: !750)
!759 = !DILocation(line: 97, column: 35, scope: !750)
!760 = !DILocation(line: 97, column: 13, scope: !750)
!761 = !DILocation(line: 99, column: 20, scope: !750)
!762 = !DILocation(line: 99, column: 35, scope: !750)
!763 = !DILocation(line: 99, column: 13, scope: !750)
!764 = !DILocation(line: 101, column: 5, scope: !737)
!765 = !DILocation(line: 102, column: 1, scope: !737)
!766 = distinct !DISubprogram(name: "callReplyCreateError", scope: !3, file: !3, line: 535, type: !767, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!767 = !DISubroutineType(types: !768)
!768 = !{!121, !128, !9}
!769 = !DILocalVariable(name: "reply", arg: 1, scope: !766, file: !3, line: 535, type: !128)
!770 = !DILocation(line: 535, column: 37, scope: !766)
!771 = !DILocalVariable(name: "private_data", arg: 2, scope: !766, file: !3, line: 535, type: !9)
!772 = !DILocation(line: 535, column: 50, scope: !766)
!773 = !DILocalVariable(name: "err_buff", scope: !766, file: !3, line: 536, type: !128)
!774 = !DILocation(line: 536, column: 9, scope: !766)
!775 = !DILocation(line: 536, column: 20, scope: !766)
!776 = !DILocation(line: 537, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !766, file: !3, line: 537, column: 9)
!778 = !DILocation(line: 537, column: 21, scope: !777)
!779 = !DILocation(line: 537, column: 9, scope: !766)
!780 = !DILocation(line: 538, column: 30, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 537, column: 29)
!782 = !DILocation(line: 538, column: 57, scope: !781)
!783 = !DILocation(line: 538, column: 20, scope: !781)
!784 = !DILocation(line: 538, column: 18, scope: !781)
!785 = !DILocation(line: 539, column: 17, scope: !781)
!786 = !DILocation(line: 539, column: 9, scope: !781)
!787 = !DILocation(line: 540, column: 5, scope: !781)
!788 = !DILocalVariable(name: "deferred_error_list", scope: !766, file: !3, line: 541, type: !149)
!789 = !DILocation(line: 541, column: 11, scope: !766)
!790 = !DILocation(line: 541, column: 33, scope: !766)
!791 = !DILocation(line: 542, column: 5, scope: !766)
!792 = !DILocation(line: 543, column: 21, scope: !766)
!793 = !DILocation(line: 543, column: 49, scope: !766)
!794 = !DILocation(line: 543, column: 42, scope: !766)
!795 = !DILocation(line: 543, column: 5, scope: !766)
!796 = !DILocation(line: 544, column: 28, scope: !766)
!797 = !DILocation(line: 544, column: 38, scope: !766)
!798 = !DILocation(line: 544, column: 59, scope: !766)
!799 = !DILocation(line: 544, column: 12, scope: !766)
!800 = !DILocation(line: 544, column: 5, scope: !766)
!801 = distinct !DISubprogram(name: "callReplyNullArray", scope: !3, file: !3, line: 84, type: !65, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!802 = !DILocalVariable(name: "ctx", arg: 1, scope: !801, file: !3, line: 84, type: !9)
!803 = !DILocation(line: 84, column: 38, scope: !801)
!804 = !DILocalVariable(name: "proto", arg: 2, scope: !801, file: !3, line: 84, type: !67)
!805 = !DILocation(line: 84, column: 55, scope: !801)
!806 = !DILocalVariable(name: "proto_len", arg: 3, scope: !801, file: !3, line: 84, type: !69)
!807 = !DILocation(line: 84, column: 69, scope: !801)
!808 = !DILocalVariable(name: "rep", scope: !801, file: !3, line: 85, type: !121)
!809 = !DILocation(line: 85, column: 16, scope: !801)
!810 = !DILocation(line: 85, column: 22, scope: !801)
!811 = !DILocation(line: 86, column: 28, scope: !801)
!812 = !DILocation(line: 86, column: 57, scope: !801)
!813 = !DILocation(line: 86, column: 64, scope: !801)
!814 = !DILocation(line: 86, column: 5, scope: !801)
!815 = !DILocation(line: 87, column: 1, scope: !801)
!816 = distinct !DISubprogram(name: "callReplyNullBulkString", scope: !3, file: !3, line: 79, type: !65, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!817 = !DILocalVariable(name: "ctx", arg: 1, scope: !816, file: !3, line: 79, type: !9)
!818 = !DILocation(line: 79, column: 43, scope: !816)
!819 = !DILocalVariable(name: "proto", arg: 2, scope: !816, file: !3, line: 79, type: !67)
!820 = !DILocation(line: 79, column: 60, scope: !816)
!821 = !DILocalVariable(name: "proto_len", arg: 3, scope: !816, file: !3, line: 79, type: !69)
!822 = !DILocation(line: 79, column: 74, scope: !816)
!823 = !DILocalVariable(name: "rep", scope: !816, file: !3, line: 80, type: !121)
!824 = !DILocation(line: 80, column: 16, scope: !816)
!825 = !DILocation(line: 80, column: 22, scope: !816)
!826 = !DILocation(line: 81, column: 28, scope: !816)
!827 = !DILocation(line: 81, column: 57, scope: !816)
!828 = !DILocation(line: 81, column: 64, scope: !816)
!829 = !DILocation(line: 81, column: 5, scope: !816)
!830 = !DILocation(line: 82, column: 1, scope: !816)
!831 = distinct !DISubprogram(name: "callReplyBulkString", scope: !3, file: !3, line: 89, type: !74, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!832 = !DILocalVariable(name: "ctx", arg: 1, scope: !831, file: !3, line: 89, type: !9)
!833 = !DILocation(line: 89, column: 39, scope: !831)
!834 = !DILocalVariable(name: "str", arg: 2, scope: !831, file: !3, line: 89, type: !67)
!835 = !DILocation(line: 89, column: 56, scope: !831)
!836 = !DILocalVariable(name: "len", arg: 3, scope: !831, file: !3, line: 89, type: !69)
!837 = !DILocation(line: 89, column: 68, scope: !831)
!838 = !DILocalVariable(name: "proto", arg: 4, scope: !831, file: !3, line: 89, type: !67)
!839 = !DILocation(line: 89, column: 85, scope: !831)
!840 = !DILocalVariable(name: "proto_len", arg: 5, scope: !831, file: !3, line: 89, type: !69)
!841 = !DILocation(line: 89, column: 99, scope: !831)
!842 = !DILocalVariable(name: "rep", scope: !831, file: !3, line: 90, type: !121)
!843 = !DILocation(line: 90, column: 16, scope: !831)
!844 = !DILocation(line: 90, column: 22, scope: !831)
!845 = !DILocation(line: 91, column: 28, scope: !831)
!846 = !DILocation(line: 91, column: 59, scope: !831)
!847 = !DILocation(line: 91, column: 66, scope: !831)
!848 = !DILocation(line: 91, column: 5, scope: !831)
!849 = !DILocation(line: 92, column: 16, scope: !831)
!850 = !DILocation(line: 92, column: 5, scope: !831)
!851 = !DILocation(line: 92, column: 10, scope: !831)
!852 = !DILocation(line: 92, column: 14, scope: !831)
!853 = !DILocation(line: 93, column: 20, scope: !831)
!854 = !DILocation(line: 93, column: 5, scope: !831)
!855 = !DILocation(line: 93, column: 10, scope: !831)
!856 = !DILocation(line: 93, column: 14, scope: !831)
!857 = !DILocation(line: 93, column: 18, scope: !831)
!858 = !DILocation(line: 94, column: 1, scope: !831)
!859 = distinct !DISubprogram(name: "callReplyError", scope: !3, file: !3, line: 96, type: !74, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!860 = !DILocalVariable(name: "ctx", arg: 1, scope: !859, file: !3, line: 96, type: !9)
!861 = !DILocation(line: 96, column: 34, scope: !859)
!862 = !DILocalVariable(name: "str", arg: 2, scope: !859, file: !3, line: 96, type: !67)
!863 = !DILocation(line: 96, column: 51, scope: !859)
!864 = !DILocalVariable(name: "len", arg: 3, scope: !859, file: !3, line: 96, type: !69)
!865 = !DILocation(line: 96, column: 63, scope: !859)
!866 = !DILocalVariable(name: "proto", arg: 4, scope: !859, file: !3, line: 96, type: !67)
!867 = !DILocation(line: 96, column: 80, scope: !859)
!868 = !DILocalVariable(name: "proto_len", arg: 5, scope: !859, file: !3, line: 96, type: !69)
!869 = !DILocation(line: 96, column: 94, scope: !859)
!870 = !DILocalVariable(name: "rep", scope: !859, file: !3, line: 97, type: !121)
!871 = !DILocation(line: 97, column: 16, scope: !859)
!872 = !DILocation(line: 97, column: 22, scope: !859)
!873 = !DILocation(line: 98, column: 28, scope: !859)
!874 = !DILocation(line: 98, column: 58, scope: !859)
!875 = !DILocation(line: 98, column: 65, scope: !859)
!876 = !DILocation(line: 98, column: 5, scope: !859)
!877 = !DILocation(line: 99, column: 16, scope: !859)
!878 = !DILocation(line: 99, column: 5, scope: !859)
!879 = !DILocation(line: 99, column: 10, scope: !859)
!880 = !DILocation(line: 99, column: 14, scope: !859)
!881 = !DILocation(line: 100, column: 20, scope: !859)
!882 = !DILocation(line: 100, column: 5, scope: !859)
!883 = !DILocation(line: 100, column: 10, scope: !859)
!884 = !DILocation(line: 100, column: 14, scope: !859)
!885 = !DILocation(line: 100, column: 18, scope: !859)
!886 = !DILocation(line: 101, column: 1, scope: !859)
!887 = distinct !DISubprogram(name: "callReplySimpleStr", scope: !3, file: !3, line: 103, type: !74, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!888 = !DILocalVariable(name: "ctx", arg: 1, scope: !887, file: !3, line: 103, type: !9)
!889 = !DILocation(line: 103, column: 38, scope: !887)
!890 = !DILocalVariable(name: "str", arg: 2, scope: !887, file: !3, line: 103, type: !67)
!891 = !DILocation(line: 103, column: 55, scope: !887)
!892 = !DILocalVariable(name: "len", arg: 3, scope: !887, file: !3, line: 103, type: !69)
!893 = !DILocation(line: 103, column: 67, scope: !887)
!894 = !DILocalVariable(name: "proto", arg: 4, scope: !887, file: !3, line: 103, type: !67)
!895 = !DILocation(line: 103, column: 84, scope: !887)
!896 = !DILocalVariable(name: "proto_len", arg: 5, scope: !887, file: !3, line: 103, type: !69)
!897 = !DILocation(line: 103, column: 98, scope: !887)
!898 = !DILocalVariable(name: "rep", scope: !887, file: !3, line: 104, type: !121)
!899 = !DILocation(line: 104, column: 16, scope: !887)
!900 = !DILocation(line: 104, column: 22, scope: !887)
!901 = !DILocation(line: 105, column: 28, scope: !887)
!902 = !DILocation(line: 105, column: 59, scope: !887)
!903 = !DILocation(line: 105, column: 66, scope: !887)
!904 = !DILocation(line: 105, column: 5, scope: !887)
!905 = !DILocation(line: 106, column: 16, scope: !887)
!906 = !DILocation(line: 106, column: 5, scope: !887)
!907 = !DILocation(line: 106, column: 10, scope: !887)
!908 = !DILocation(line: 106, column: 14, scope: !887)
!909 = !DILocation(line: 107, column: 20, scope: !887)
!910 = !DILocation(line: 107, column: 5, scope: !887)
!911 = !DILocation(line: 107, column: 10, scope: !887)
!912 = !DILocation(line: 107, column: 14, scope: !887)
!913 = !DILocation(line: 107, column: 18, scope: !887)
!914 = !DILocation(line: 108, column: 1, scope: !887)
!915 = distinct !DISubprogram(name: "callReplyLong", scope: !3, file: !3, line: 110, type: !80, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!916 = !DILocalVariable(name: "ctx", arg: 1, scope: !915, file: !3, line: 110, type: !9)
!917 = !DILocation(line: 110, column: 33, scope: !915)
!918 = !DILocalVariable(name: "val", arg: 2, scope: !915, file: !3, line: 110, type: !82)
!919 = !DILocation(line: 110, column: 48, scope: !915)
!920 = !DILocalVariable(name: "proto", arg: 3, scope: !915, file: !3, line: 110, type: !67)
!921 = !DILocation(line: 110, column: 65, scope: !915)
!922 = !DILocalVariable(name: "proto_len", arg: 4, scope: !915, file: !3, line: 110, type: !69)
!923 = !DILocation(line: 110, column: 79, scope: !915)
!924 = !DILocalVariable(name: "rep", scope: !915, file: !3, line: 111, type: !121)
!925 = !DILocation(line: 111, column: 16, scope: !915)
!926 = !DILocation(line: 111, column: 22, scope: !915)
!927 = !DILocation(line: 112, column: 28, scope: !915)
!928 = !DILocation(line: 112, column: 60, scope: !915)
!929 = !DILocation(line: 112, column: 67, scope: !915)
!930 = !DILocation(line: 112, column: 5, scope: !915)
!931 = !DILocation(line: 113, column: 19, scope: !915)
!932 = !DILocation(line: 113, column: 5, scope: !915)
!933 = !DILocation(line: 113, column: 10, scope: !915)
!934 = !DILocation(line: 113, column: 14, scope: !915)
!935 = !DILocation(line: 113, column: 17, scope: !915)
!936 = !DILocation(line: 114, column: 1, scope: !915)
!937 = distinct !DISubprogram(name: "callReplyArray", scope: !3, file: !3, line: 181, type: !938, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !940, !9, !69, !67}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!941 = !DILocalVariable(name: "parser", arg: 1, scope: !937, file: !3, line: 181, type: !940)
!942 = !DILocation(line: 181, column: 41, scope: !937)
!943 = !DILocalVariable(name: "ctx", arg: 2, scope: !937, file: !3, line: 181, type: !9)
!944 = !DILocation(line: 181, column: 55, scope: !937)
!945 = !DILocalVariable(name: "len", arg: 3, scope: !937, file: !3, line: 181, type: !69)
!946 = !DILocation(line: 181, column: 67, scope: !937)
!947 = !DILocalVariable(name: "proto", arg: 4, scope: !937, file: !3, line: 181, type: !67)
!948 = !DILocation(line: 181, column: 84, scope: !937)
!949 = !DILocalVariable(name: "rep", scope: !937, file: !3, line: 182, type: !121)
!950 = !DILocation(line: 182, column: 16, scope: !937)
!951 = !DILocation(line: 182, column: 22, scope: !937)
!952 = !DILocation(line: 183, column: 5, scope: !937)
!953 = !DILocation(line: 183, column: 10, scope: !937)
!954 = !DILocation(line: 183, column: 15, scope: !937)
!955 = !DILocation(line: 184, column: 30, scope: !937)
!956 = !DILocation(line: 184, column: 38, scope: !937)
!957 = !DILocation(line: 184, column: 43, scope: !937)
!958 = !DILocation(line: 184, column: 48, scope: !937)
!959 = !DILocation(line: 184, column: 5, scope: !937)
!960 = !DILocation(line: 185, column: 1, scope: !937)
!961 = distinct !DISubprogram(name: "callReplySet", scope: !3, file: !3, line: 187, type: !938, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!962 = !DILocalVariable(name: "parser", arg: 1, scope: !961, file: !3, line: 187, type: !940)
!963 = !DILocation(line: 187, column: 39, scope: !961)
!964 = !DILocalVariable(name: "ctx", arg: 2, scope: !961, file: !3, line: 187, type: !9)
!965 = !DILocation(line: 187, column: 53, scope: !961)
!966 = !DILocalVariable(name: "len", arg: 3, scope: !961, file: !3, line: 187, type: !69)
!967 = !DILocation(line: 187, column: 65, scope: !961)
!968 = !DILocalVariable(name: "proto", arg: 4, scope: !961, file: !3, line: 187, type: !67)
!969 = !DILocation(line: 187, column: 82, scope: !961)
!970 = !DILocalVariable(name: "rep", scope: !961, file: !3, line: 188, type: !121)
!971 = !DILocation(line: 188, column: 16, scope: !961)
!972 = !DILocation(line: 188, column: 22, scope: !961)
!973 = !DILocation(line: 189, column: 5, scope: !961)
!974 = !DILocation(line: 189, column: 10, scope: !961)
!975 = !DILocation(line: 189, column: 15, scope: !961)
!976 = !DILocation(line: 190, column: 30, scope: !961)
!977 = !DILocation(line: 190, column: 38, scope: !961)
!978 = !DILocation(line: 190, column: 43, scope: !961)
!979 = !DILocation(line: 190, column: 48, scope: !961)
!980 = !DILocation(line: 190, column: 5, scope: !961)
!981 = !DILocation(line: 191, column: 5, scope: !961)
!982 = !DILocation(line: 191, column: 10, scope: !961)
!983 = !DILocation(line: 191, column: 16, scope: !961)
!984 = !DILocation(line: 192, column: 1, scope: !961)
!985 = distinct !DISubprogram(name: "callReplyMap", scope: !3, file: !3, line: 194, type: !938, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!986 = !DILocalVariable(name: "parser", arg: 1, scope: !985, file: !3, line: 194, type: !940)
!987 = !DILocation(line: 194, column: 39, scope: !985)
!988 = !DILocalVariable(name: "ctx", arg: 2, scope: !985, file: !3, line: 194, type: !9)
!989 = !DILocation(line: 194, column: 53, scope: !985)
!990 = !DILocalVariable(name: "len", arg: 3, scope: !985, file: !3, line: 194, type: !69)
!991 = !DILocation(line: 194, column: 65, scope: !985)
!992 = !DILocalVariable(name: "proto", arg: 4, scope: !985, file: !3, line: 194, type: !67)
!993 = !DILocation(line: 194, column: 82, scope: !985)
!994 = !DILocalVariable(name: "rep", scope: !985, file: !3, line: 195, type: !121)
!995 = !DILocation(line: 195, column: 16, scope: !985)
!996 = !DILocation(line: 195, column: 22, scope: !985)
!997 = !DILocation(line: 196, column: 5, scope: !985)
!998 = !DILocation(line: 196, column: 10, scope: !985)
!999 = !DILocation(line: 196, column: 15, scope: !985)
!1000 = !DILocation(line: 197, column: 30, scope: !985)
!1001 = !DILocation(line: 197, column: 38, scope: !985)
!1002 = !DILocation(line: 197, column: 43, scope: !985)
!1003 = !DILocation(line: 197, column: 48, scope: !985)
!1004 = !DILocation(line: 197, column: 5, scope: !985)
!1005 = !DILocation(line: 198, column: 5, scope: !985)
!1006 = !DILocation(line: 198, column: 10, scope: !985)
!1007 = !DILocation(line: 198, column: 16, scope: !985)
!1008 = !DILocation(line: 199, column: 1, scope: !985)
!1009 = distinct !DISubprogram(name: "callReplyBool", scope: !3, file: !3, line: 137, type: !96, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1010 = !DILocalVariable(name: "ctx", arg: 1, scope: !1009, file: !3, line: 137, type: !9)
!1011 = !DILocation(line: 137, column: 33, scope: !1009)
!1012 = !DILocalVariable(name: "val", arg: 2, scope: !1009, file: !3, line: 137, type: !98)
!1013 = !DILocation(line: 137, column: 42, scope: !1009)
!1014 = !DILocalVariable(name: "proto", arg: 3, scope: !1009, file: !3, line: 137, type: !67)
!1015 = !DILocation(line: 137, column: 59, scope: !1009)
!1016 = !DILocalVariable(name: "proto_len", arg: 4, scope: !1009, file: !3, line: 137, type: !69)
!1017 = !DILocation(line: 137, column: 73, scope: !1009)
!1018 = !DILocalVariable(name: "rep", scope: !1009, file: !3, line: 138, type: !121)
!1019 = !DILocation(line: 138, column: 16, scope: !1009)
!1020 = !DILocation(line: 138, column: 22, scope: !1009)
!1021 = !DILocation(line: 139, column: 28, scope: !1009)
!1022 = !DILocation(line: 139, column: 57, scope: !1009)
!1023 = !DILocation(line: 139, column: 64, scope: !1009)
!1024 = !DILocation(line: 139, column: 5, scope: !1009)
!1025 = !DILocation(line: 140, column: 19, scope: !1009)
!1026 = !DILocation(line: 140, column: 5, scope: !1009)
!1027 = !DILocation(line: 140, column: 10, scope: !1009)
!1028 = !DILocation(line: 140, column: 14, scope: !1009)
!1029 = !DILocation(line: 140, column: 17, scope: !1009)
!1030 = !DILocation(line: 141, column: 1, scope: !1009)
!1031 = distinct !DISubprogram(name: "callReplyDouble", scope: !3, file: !3, line: 116, type: !101, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1032 = !DILocalVariable(name: "ctx", arg: 1, scope: !1031, file: !3, line: 116, type: !9)
!1033 = !DILocation(line: 116, column: 35, scope: !1031)
!1034 = !DILocalVariable(name: "val", arg: 2, scope: !1031, file: !3, line: 116, type: !103)
!1035 = !DILocation(line: 116, column: 47, scope: !1031)
!1036 = !DILocalVariable(name: "proto", arg: 3, scope: !1031, file: !3, line: 116, type: !67)
!1037 = !DILocation(line: 116, column: 64, scope: !1031)
!1038 = !DILocalVariable(name: "proto_len", arg: 4, scope: !1031, file: !3, line: 116, type: !69)
!1039 = !DILocation(line: 116, column: 78, scope: !1031)
!1040 = !DILocalVariable(name: "rep", scope: !1031, file: !3, line: 117, type: !121)
!1041 = !DILocation(line: 117, column: 16, scope: !1031)
!1042 = !DILocation(line: 117, column: 22, scope: !1031)
!1043 = !DILocation(line: 118, column: 28, scope: !1031)
!1044 = !DILocation(line: 118, column: 59, scope: !1031)
!1045 = !DILocation(line: 118, column: 66, scope: !1031)
!1046 = !DILocation(line: 118, column: 5, scope: !1031)
!1047 = !DILocation(line: 119, column: 18, scope: !1031)
!1048 = !DILocation(line: 119, column: 5, scope: !1031)
!1049 = !DILocation(line: 119, column: 10, scope: !1031)
!1050 = !DILocation(line: 119, column: 14, scope: !1031)
!1051 = !DILocation(line: 119, column: 16, scope: !1031)
!1052 = !DILocation(line: 120, column: 1, scope: !1031)
!1053 = distinct !DISubprogram(name: "callReplyBigNumber", scope: !3, file: !3, line: 130, type: !74, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1054 = !DILocalVariable(name: "ctx", arg: 1, scope: !1053, file: !3, line: 130, type: !9)
!1055 = !DILocation(line: 130, column: 38, scope: !1053)
!1056 = !DILocalVariable(name: "str", arg: 2, scope: !1053, file: !3, line: 130, type: !67)
!1057 = !DILocation(line: 130, column: 55, scope: !1053)
!1058 = !DILocalVariable(name: "len", arg: 3, scope: !1053, file: !3, line: 130, type: !69)
!1059 = !DILocation(line: 130, column: 67, scope: !1053)
!1060 = !DILocalVariable(name: "proto", arg: 4, scope: !1053, file: !3, line: 130, type: !67)
!1061 = !DILocation(line: 130, column: 84, scope: !1053)
!1062 = !DILocalVariable(name: "proto_len", arg: 5, scope: !1053, file: !3, line: 130, type: !69)
!1063 = !DILocation(line: 130, column: 98, scope: !1053)
!1064 = !DILocalVariable(name: "rep", scope: !1053, file: !3, line: 131, type: !121)
!1065 = !DILocation(line: 131, column: 16, scope: !1053)
!1066 = !DILocation(line: 131, column: 22, scope: !1053)
!1067 = !DILocation(line: 132, column: 28, scope: !1053)
!1068 = !DILocation(line: 132, column: 63, scope: !1053)
!1069 = !DILocation(line: 132, column: 70, scope: !1053)
!1070 = !DILocation(line: 132, column: 5, scope: !1053)
!1071 = !DILocation(line: 133, column: 16, scope: !1053)
!1072 = !DILocation(line: 133, column: 5, scope: !1053)
!1073 = !DILocation(line: 133, column: 10, scope: !1053)
!1074 = !DILocation(line: 133, column: 14, scope: !1053)
!1075 = !DILocation(line: 134, column: 20, scope: !1053)
!1076 = !DILocation(line: 134, column: 5, scope: !1053)
!1077 = !DILocation(line: 134, column: 10, scope: !1053)
!1078 = !DILocation(line: 134, column: 14, scope: !1053)
!1079 = !DILocation(line: 134, column: 18, scope: !1053)
!1080 = !DILocation(line: 135, column: 1, scope: !1053)
!1081 = distinct !DISubprogram(name: "callReplyVerbatimString", scope: !3, file: !3, line: 122, type: !107, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1082 = !DILocalVariable(name: "ctx", arg: 1, scope: !1081, file: !3, line: 122, type: !9)
!1083 = !DILocation(line: 122, column: 43, scope: !1081)
!1084 = !DILocalVariable(name: "format", arg: 2, scope: !1081, file: !3, line: 122, type: !67)
!1085 = !DILocation(line: 122, column: 60, scope: !1081)
!1086 = !DILocalVariable(name: "str", arg: 3, scope: !1081, file: !3, line: 122, type: !67)
!1087 = !DILocation(line: 122, column: 80, scope: !1081)
!1088 = !DILocalVariable(name: "len", arg: 4, scope: !1081, file: !3, line: 122, type: !69)
!1089 = !DILocation(line: 122, column: 92, scope: !1081)
!1090 = !DILocalVariable(name: "proto", arg: 5, scope: !1081, file: !3, line: 122, type: !67)
!1091 = !DILocation(line: 122, column: 109, scope: !1081)
!1092 = !DILocalVariable(name: "proto_len", arg: 6, scope: !1081, file: !3, line: 122, type: !69)
!1093 = !DILocation(line: 122, column: 123, scope: !1081)
!1094 = !DILocalVariable(name: "rep", scope: !1081, file: !3, line: 123, type: !121)
!1095 = !DILocation(line: 123, column: 16, scope: !1081)
!1096 = !DILocation(line: 123, column: 22, scope: !1081)
!1097 = !DILocation(line: 124, column: 28, scope: !1081)
!1098 = !DILocation(line: 124, column: 68, scope: !1081)
!1099 = !DILocation(line: 124, column: 75, scope: !1081)
!1100 = !DILocation(line: 124, column: 5, scope: !1081)
!1101 = !DILocation(line: 125, column: 16, scope: !1081)
!1102 = !DILocation(line: 125, column: 5, scope: !1081)
!1103 = !DILocation(line: 125, column: 10, scope: !1081)
!1104 = !DILocation(line: 125, column: 14, scope: !1081)
!1105 = !DILocation(line: 126, column: 33, scope: !1081)
!1106 = !DILocation(line: 126, column: 5, scope: !1081)
!1107 = !DILocation(line: 126, column: 10, scope: !1081)
!1108 = !DILocation(line: 126, column: 14, scope: !1081)
!1109 = !DILocation(line: 126, column: 27, scope: !1081)
!1110 = !DILocation(line: 126, column: 31, scope: !1081)
!1111 = !DILocation(line: 127, column: 36, scope: !1081)
!1112 = !DILocation(line: 127, column: 5, scope: !1081)
!1113 = !DILocation(line: 127, column: 10, scope: !1081)
!1114 = !DILocation(line: 127, column: 14, scope: !1081)
!1115 = !DILocation(line: 127, column: 27, scope: !1081)
!1116 = !DILocation(line: 127, column: 34, scope: !1081)
!1117 = !DILocation(line: 128, column: 1, scope: !1081)
!1118 = distinct !DISubprogram(name: "callReplyAttribute", scope: !3, file: !3, line: 161, type: !938, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1119 = !DILocalVariable(name: "parser", arg: 1, scope: !1118, file: !3, line: 161, type: !940)
!1120 = !DILocation(line: 161, column: 45, scope: !1118)
!1121 = !DILocalVariable(name: "ctx", arg: 2, scope: !1118, file: !3, line: 161, type: !9)
!1122 = !DILocation(line: 161, column: 59, scope: !1118)
!1123 = !DILocalVariable(name: "len", arg: 3, scope: !1118, file: !3, line: 161, type: !69)
!1124 = !DILocation(line: 161, column: 71, scope: !1118)
!1125 = !DILocalVariable(name: "proto", arg: 4, scope: !1118, file: !3, line: 161, type: !67)
!1126 = !DILocation(line: 161, column: 88, scope: !1118)
!1127 = !DILocalVariable(name: "rep", scope: !1118, file: !3, line: 162, type: !121)
!1128 = !DILocation(line: 162, column: 16, scope: !1118)
!1129 = !DILocation(line: 162, column: 22, scope: !1118)
!1130 = !DILocation(line: 163, column: 22, scope: !1118)
!1131 = !DILocation(line: 163, column: 5, scope: !1118)
!1132 = !DILocation(line: 163, column: 10, scope: !1118)
!1133 = !DILocation(line: 163, column: 20, scope: !1118)
!1134 = !DILocation(line: 166, column: 27, scope: !1118)
!1135 = !DILocation(line: 166, column: 5, scope: !1118)
!1136 = !DILocation(line: 166, column: 10, scope: !1118)
!1137 = !DILocation(line: 166, column: 21, scope: !1118)
!1138 = !DILocation(line: 166, column: 25, scope: !1118)
!1139 = !DILocation(line: 167, column: 5, scope: !1118)
!1140 = !DILocation(line: 167, column: 10, scope: !1118)
!1141 = !DILocation(line: 167, column: 21, scope: !1118)
!1142 = !DILocation(line: 167, column: 26, scope: !1118)
!1143 = !DILocation(line: 168, column: 30, scope: !1118)
!1144 = !DILocation(line: 168, column: 38, scope: !1118)
!1145 = !DILocation(line: 168, column: 43, scope: !1118)
!1146 = !DILocation(line: 168, column: 54, scope: !1118)
!1147 = !DILocation(line: 168, column: 59, scope: !1118)
!1148 = !DILocation(line: 168, column: 5, scope: !1118)
!1149 = !DILocation(line: 169, column: 5, scope: !1118)
!1150 = !DILocation(line: 169, column: 10, scope: !1118)
!1151 = !DILocation(line: 169, column: 21, scope: !1118)
!1152 = !DILocation(line: 169, column: 27, scope: !1118)
!1153 = !DILocation(line: 170, column: 36, scope: !1118)
!1154 = !DILocation(line: 170, column: 41, scope: !1118)
!1155 = !DILocation(line: 170, column: 5, scope: !1118)
!1156 = !DILocation(line: 170, column: 10, scope: !1118)
!1157 = !DILocation(line: 170, column: 21, scope: !1118)
!1158 = !DILocation(line: 170, column: 34, scope: !1118)
!1159 = !DILocation(line: 173, column: 16, scope: !1118)
!1160 = !DILocation(line: 173, column: 24, scope: !1118)
!1161 = !DILocation(line: 173, column: 5, scope: !1118)
!1162 = !DILocation(line: 176, column: 18, scope: !1118)
!1163 = !DILocation(line: 176, column: 5, scope: !1118)
!1164 = !DILocation(line: 176, column: 10, scope: !1118)
!1165 = !DILocation(line: 176, column: 16, scope: !1118)
!1166 = !DILocation(line: 177, column: 22, scope: !1118)
!1167 = !DILocation(line: 177, column: 30, scope: !1118)
!1168 = !DILocation(line: 177, column: 46, scope: !1118)
!1169 = !DILocation(line: 177, column: 44, scope: !1118)
!1170 = !DILocation(line: 177, column: 5, scope: !1118)
!1171 = !DILocation(line: 177, column: 10, scope: !1118)
!1172 = !DILocation(line: 177, column: 20, scope: !1118)
!1173 = !DILocation(line: 178, column: 5, scope: !1118)
!1174 = !DILocation(line: 178, column: 10, scope: !1118)
!1175 = !DILocation(line: 178, column: 16, scope: !1118)
!1176 = !DILocation(line: 179, column: 1, scope: !1118)
!1177 = distinct !DISubprogram(name: "callReplyNull", scope: !3, file: !3, line: 74, type: !65, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1178 = !DILocalVariable(name: "ctx", arg: 1, scope: !1177, file: !3, line: 74, type: !9)
!1179 = !DILocation(line: 74, column: 33, scope: !1177)
!1180 = !DILocalVariable(name: "proto", arg: 2, scope: !1177, file: !3, line: 74, type: !67)
!1181 = !DILocation(line: 74, column: 50, scope: !1177)
!1182 = !DILocalVariable(name: "proto_len", arg: 3, scope: !1177, file: !3, line: 74, type: !69)
!1183 = !DILocation(line: 74, column: 64, scope: !1177)
!1184 = !DILocalVariable(name: "rep", scope: !1177, file: !3, line: 75, type: !121)
!1185 = !DILocation(line: 75, column: 16, scope: !1177)
!1186 = !DILocation(line: 75, column: 22, scope: !1177)
!1187 = !DILocation(line: 76, column: 28, scope: !1177)
!1188 = !DILocation(line: 76, column: 57, scope: !1177)
!1189 = !DILocation(line: 76, column: 64, scope: !1177)
!1190 = !DILocation(line: 76, column: 5, scope: !1177)
!1191 = !DILocation(line: 77, column: 1, scope: !1177)
!1192 = distinct !DISubprogram(name: "callReplyParseError", scope: !3, file: !3, line: 201, type: !7, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1193 = !DILocalVariable(name: "ctx", arg: 1, scope: !1192, file: !3, line: 201, type: !9)
!1194 = !DILocation(line: 201, column: 39, scope: !1192)
!1195 = !DILocalVariable(name: "rep", scope: !1192, file: !3, line: 202, type: !121)
!1196 = !DILocation(line: 202, column: 16, scope: !1192)
!1197 = !DILocation(line: 202, column: 22, scope: !1192)
!1198 = !DILocation(line: 203, column: 5, scope: !1192)
!1199 = !DILocation(line: 203, column: 10, scope: !1192)
!1200 = !DILocation(line: 203, column: 15, scope: !1192)
!1201 = !DILocation(line: 204, column: 1, scope: !1192)
!1202 = distinct !DISubprogram(name: "callReplySetSharedData", scope: !3, file: !3, line: 67, type: !1203, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !121, !98, !67, !69, !98}
!1205 = !DILocalVariable(name: "rep", arg: 1, scope: !1202, file: !3, line: 67, type: !121)
!1206 = !DILocation(line: 67, column: 47, scope: !1202)
!1207 = !DILocalVariable(name: "type", arg: 2, scope: !1202, file: !3, line: 67, type: !98)
!1208 = !DILocation(line: 67, column: 56, scope: !1202)
!1209 = !DILocalVariable(name: "proto", arg: 3, scope: !1202, file: !3, line: 67, type: !67)
!1210 = !DILocation(line: 67, column: 74, scope: !1202)
!1211 = !DILocalVariable(name: "proto_len", arg: 4, scope: !1202, file: !3, line: 67, type: !69)
!1212 = !DILocation(line: 67, column: 88, scope: !1202)
!1213 = !DILocalVariable(name: "extra_flags", arg: 5, scope: !1202, file: !3, line: 67, type: !98)
!1214 = !DILocation(line: 67, column: 103, scope: !1202)
!1215 = !DILocation(line: 68, column: 17, scope: !1202)
!1216 = !DILocation(line: 68, column: 5, scope: !1202)
!1217 = !DILocation(line: 68, column: 10, scope: !1202)
!1218 = !DILocation(line: 68, column: 15, scope: !1202)
!1219 = !DILocation(line: 69, column: 18, scope: !1202)
!1220 = !DILocation(line: 69, column: 5, scope: !1202)
!1221 = !DILocation(line: 69, column: 10, scope: !1202)
!1222 = !DILocation(line: 69, column: 16, scope: !1202)
!1223 = !DILocation(line: 70, column: 22, scope: !1202)
!1224 = !DILocation(line: 70, column: 5, scope: !1202)
!1225 = !DILocation(line: 70, column: 10, scope: !1202)
!1226 = !DILocation(line: 70, column: 20, scope: !1202)
!1227 = !DILocation(line: 71, column: 19, scope: !1202)
!1228 = !DILocation(line: 71, column: 5, scope: !1202)
!1229 = !DILocation(line: 71, column: 10, scope: !1202)
!1230 = !DILocation(line: 71, column: 16, scope: !1202)
!1231 = !DILocation(line: 72, column: 1, scope: !1202)
!1232 = distinct !DISubprogram(name: "callReplyParseCollection", scope: !3, file: !3, line: 143, type: !1233, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !940, !121, !69, !67, !69}
!1235 = !DILocalVariable(name: "parser", arg: 1, scope: !1232, file: !3, line: 143, type: !940)
!1236 = !DILocation(line: 143, column: 51, scope: !1232)
!1237 = !DILocalVariable(name: "rep", arg: 2, scope: !1232, file: !3, line: 143, type: !121)
!1238 = !DILocation(line: 143, column: 70, scope: !1232)
!1239 = !DILocalVariable(name: "len", arg: 3, scope: !1232, file: !3, line: 143, type: !69)
!1240 = !DILocation(line: 143, column: 82, scope: !1232)
!1241 = !DILocalVariable(name: "proto", arg: 4, scope: !1232, file: !3, line: 143, type: !67)
!1242 = !DILocation(line: 143, column: 99, scope: !1232)
!1243 = !DILocalVariable(name: "elements_per_entry", arg: 5, scope: !1232, file: !3, line: 143, type: !69)
!1244 = !DILocation(line: 143, column: 113, scope: !1232)
!1245 = !DILocation(line: 144, column: 16, scope: !1232)
!1246 = !DILocation(line: 144, column: 5, scope: !1232)
!1247 = !DILocation(line: 144, column: 10, scope: !1232)
!1248 = !DILocation(line: 144, column: 14, scope: !1232)
!1249 = !DILocation(line: 145, column: 30, scope: !1232)
!1250 = !DILocation(line: 145, column: 51, scope: !1232)
!1251 = !DILocation(line: 145, column: 49, scope: !1232)
!1252 = !DILocation(line: 145, column: 55, scope: !1232)
!1253 = !DILocation(line: 145, column: 22, scope: !1232)
!1254 = !DILocation(line: 145, column: 5, scope: !1232)
!1255 = !DILocation(line: 145, column: 10, scope: !1232)
!1256 = !DILocation(line: 145, column: 14, scope: !1232)
!1257 = !DILocation(line: 145, column: 20, scope: !1232)
!1258 = !DILocalVariable(name: "i", scope: !1259, file: !3, line: 146, type: !69)
!1259 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 146, column: 5)
!1260 = !DILocation(line: 146, column: 17, scope: !1259)
!1261 = !DILocation(line: 146, column: 10, scope: !1259)
!1262 = !DILocation(line: 146, column: 24, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 146, column: 5)
!1264 = !DILocation(line: 146, column: 28, scope: !1263)
!1265 = !DILocation(line: 146, column: 34, scope: !1263)
!1266 = !DILocation(line: 146, column: 32, scope: !1263)
!1267 = !DILocation(line: 146, column: 26, scope: !1263)
!1268 = !DILocation(line: 146, column: 5, scope: !1259)
!1269 = !DILocalVariable(name: "j", scope: !1270, file: !3, line: 147, type: !69)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 147, column: 9)
!1271 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 146, column: 79)
!1272 = !DILocation(line: 147, column: 21, scope: !1270)
!1273 = !DILocation(line: 147, column: 14, scope: !1270)
!1274 = !DILocation(line: 147, column: 29, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 147, column: 9)
!1276 = !DILocation(line: 147, column: 33, scope: !1275)
!1277 = !DILocation(line: 147, column: 31, scope: !1275)
!1278 = !DILocation(line: 147, column: 9, scope: !1270)
!1279 = !DILocation(line: 148, column: 50, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 147, column: 59)
!1281 = !DILocation(line: 148, column: 55, scope: !1280)
!1282 = !DILocation(line: 148, column: 13, scope: !1280)
!1283 = !DILocation(line: 148, column: 18, scope: !1280)
!1284 = !DILocation(line: 148, column: 22, scope: !1280)
!1285 = !DILocation(line: 148, column: 28, scope: !1280)
!1286 = !DILocation(line: 148, column: 32, scope: !1280)
!1287 = !DILocation(line: 148, column: 30, scope: !1280)
!1288 = !DILocation(line: 148, column: 35, scope: !1280)
!1289 = !DILocation(line: 148, column: 48, scope: !1280)
!1290 = !DILocation(line: 149, column: 24, scope: !1280)
!1291 = !DILocation(line: 149, column: 32, scope: !1280)
!1292 = !DILocation(line: 149, column: 37, scope: !1280)
!1293 = !DILocation(line: 149, column: 41, scope: !1280)
!1294 = !DILocation(line: 149, column: 49, scope: !1280)
!1295 = !DILocation(line: 149, column: 47, scope: !1280)
!1296 = !DILocation(line: 149, column: 53, scope: !1280)
!1297 = !DILocation(line: 149, column: 51, scope: !1280)
!1298 = !DILocation(line: 149, column: 13, scope: !1280)
!1299 = !DILocation(line: 150, column: 13, scope: !1280)
!1300 = !DILocation(line: 150, column: 18, scope: !1280)
!1301 = !DILocation(line: 150, column: 22, scope: !1280)
!1302 = !DILocation(line: 150, column: 28, scope: !1280)
!1303 = !DILocation(line: 150, column: 32, scope: !1280)
!1304 = !DILocation(line: 150, column: 30, scope: !1280)
!1305 = !DILocation(line: 150, column: 35, scope: !1280)
!1306 = !DILocation(line: 150, column: 41, scope: !1280)
!1307 = !DILocation(line: 151, column: 17, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 151, column: 17)
!1309 = !DILocation(line: 151, column: 22, scope: !1308)
!1310 = !DILocation(line: 151, column: 26, scope: !1308)
!1311 = !DILocation(line: 151, column: 32, scope: !1308)
!1312 = !DILocation(line: 151, column: 36, scope: !1308)
!1313 = !DILocation(line: 151, column: 34, scope: !1308)
!1314 = !DILocation(line: 151, column: 39, scope: !1308)
!1315 = !DILocation(line: 151, column: 45, scope: !1308)
!1316 = !DILocation(line: 151, column: 17, scope: !1280)
!1317 = !DILocation(line: 153, column: 17, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 151, column: 65)
!1319 = !DILocation(line: 153, column: 22, scope: !1318)
!1320 = !DILocation(line: 153, column: 28, scope: !1318)
!1321 = !DILocation(line: 154, column: 13, scope: !1318)
!1322 = !DILocation(line: 155, column: 9, scope: !1280)
!1323 = !DILocation(line: 147, column: 54, scope: !1275)
!1324 = !DILocation(line: 147, column: 9, scope: !1275)
!1325 = distinct !{!1325, !1278, !1326, !241}
!1326 = !DILocation(line: 155, column: 9, scope: !1270)
!1327 = !DILocation(line: 156, column: 5, scope: !1271)
!1328 = !DILocation(line: 146, column: 59, scope: !1263)
!1329 = !DILocation(line: 146, column: 56, scope: !1263)
!1330 = !DILocation(line: 146, column: 5, scope: !1263)
!1331 = distinct !{!1331, !1268, !1332, !241}
!1332 = !DILocation(line: 156, column: 5, scope: !1259)
!1333 = !DILocation(line: 157, column: 18, scope: !1232)
!1334 = !DILocation(line: 157, column: 5, scope: !1232)
!1335 = !DILocation(line: 157, column: 10, scope: !1232)
!1336 = !DILocation(line: 157, column: 16, scope: !1232)
!1337 = !DILocation(line: 158, column: 22, scope: !1232)
!1338 = !DILocation(line: 158, column: 30, scope: !1232)
!1339 = !DILocation(line: 158, column: 46, scope: !1232)
!1340 = !DILocation(line: 158, column: 44, scope: !1232)
!1341 = !DILocation(line: 158, column: 5, scope: !1232)
!1342 = !DILocation(line: 158, column: 10, scope: !1232)
!1343 = !DILocation(line: 158, column: 20, scope: !1232)
!1344 = !DILocation(line: 159, column: 1, scope: !1232)
