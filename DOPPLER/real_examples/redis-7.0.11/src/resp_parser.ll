; ModuleID = 'resp_parser.c'
source_filename = "resp_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ReplyParser = type { i8*, %struct.ReplyParserCallbacks }
%struct.ReplyParserCallbacks = type { void (i8*, i8*, i64)*, void (i8*, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i32, i8*, i64)*, void (i8*, double, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i8*, i64, i8*, i64)*, void (%struct.ReplyParser*, i8*, i64, i8*)*, void (i8*, i8*, i64)*, void (i8*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parseReply(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !77
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !78
  %1 = load i8*, i8** %curr_location, align 8, !dbg !78
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !77
  %2 = load i8, i8* %arrayidx, align 1, !dbg !77
  %conv = sext i8 %2 to i32, !dbg !77
  switch i32 %conv, label %sw.default [
    i32 36, label %sw.bb
    i32 43, label %sw.bb1
    i32 45, label %sw.bb3
    i32 58, label %sw.bb5
    i32 42, label %sw.bb7
    i32 126, label %sw.bb9
    i32 37, label %sw.bb11
    i32 35, label %sw.bb13
    i32 44, label %sw.bb15
    i32 95, label %sw.bb17
    i32 40, label %sw.bb19
    i32 61, label %sw.bb21
    i32 124, label %sw.bb23
  ], !dbg !79

sw.bb:                                            ; preds = %entry
  %3 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !80
  %4 = load i8*, i8** %p_ctx.addr, align 8, !dbg !82
  %call = call i32 @parseBulk(%struct.ReplyParser* %3, i8* %4), !dbg !83
  store i32 %call, i32* %retval, align 4, !dbg !84
  br label %return, !dbg !84

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !85
  %6 = load i8*, i8** %p_ctx.addr, align 8, !dbg !86
  %call2 = call i32 @parseSimpleString(%struct.ReplyParser* %5, i8* %6), !dbg !87
  store i32 %call2, i32* %retval, align 4, !dbg !88
  br label %return, !dbg !88

sw.bb3:                                           ; preds = %entry
  %7 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !89
  %8 = load i8*, i8** %p_ctx.addr, align 8, !dbg !90
  %call4 = call i32 @parseError(%struct.ReplyParser* %7, i8* %8), !dbg !91
  store i32 %call4, i32* %retval, align 4, !dbg !92
  br label %return, !dbg !92

sw.bb5:                                           ; preds = %entry
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !93
  %10 = load i8*, i8** %p_ctx.addr, align 8, !dbg !94
  %call6 = call i32 @parseLong(%struct.ReplyParser* %9, i8* %10), !dbg !95
  store i32 %call6, i32* %retval, align 4, !dbg !96
  br label %return, !dbg !96

sw.bb7:                                           ; preds = %entry
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !97
  %12 = load i8*, i8** %p_ctx.addr, align 8, !dbg !98
  %call8 = call i32 @parseArray(%struct.ReplyParser* %11, i8* %12), !dbg !99
  store i32 %call8, i32* %retval, align 4, !dbg !100
  br label %return, !dbg !100

sw.bb9:                                           ; preds = %entry
  %13 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !101
  %14 = load i8*, i8** %p_ctx.addr, align 8, !dbg !102
  %call10 = call i32 @parseSet(%struct.ReplyParser* %13, i8* %14), !dbg !103
  store i32 %call10, i32* %retval, align 4, !dbg !104
  br label %return, !dbg !104

sw.bb11:                                          ; preds = %entry
  %15 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !105
  %16 = load i8*, i8** %p_ctx.addr, align 8, !dbg !106
  %call12 = call i32 @parseMap(%struct.ReplyParser* %15, i8* %16), !dbg !107
  store i32 %call12, i32* %retval, align 4, !dbg !108
  br label %return, !dbg !108

sw.bb13:                                          ; preds = %entry
  %17 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !109
  %18 = load i8*, i8** %p_ctx.addr, align 8, !dbg !110
  %call14 = call i32 @parseBool(%struct.ReplyParser* %17, i8* %18), !dbg !111
  store i32 %call14, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

sw.bb15:                                          ; preds = %entry
  %19 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !113
  %20 = load i8*, i8** %p_ctx.addr, align 8, !dbg !114
  %call16 = call i32 @parseDouble(%struct.ReplyParser* %19, i8* %20), !dbg !115
  store i32 %call16, i32* %retval, align 4, !dbg !116
  br label %return, !dbg !116

sw.bb17:                                          ; preds = %entry
  %21 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !117
  %22 = load i8*, i8** %p_ctx.addr, align 8, !dbg !118
  %call18 = call i32 @parseNull(%struct.ReplyParser* %21, i8* %22), !dbg !119
  store i32 %call18, i32* %retval, align 4, !dbg !120
  br label %return, !dbg !120

sw.bb19:                                          ; preds = %entry
  %23 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !121
  %24 = load i8*, i8** %p_ctx.addr, align 8, !dbg !122
  %call20 = call i32 @parseBigNumber(%struct.ReplyParser* %23, i8* %24), !dbg !123
  store i32 %call20, i32* %retval, align 4, !dbg !124
  br label %return, !dbg !124

sw.bb21:                                          ; preds = %entry
  %25 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !125
  %26 = load i8*, i8** %p_ctx.addr, align 8, !dbg !126
  %call22 = call i32 @parseVerbatimString(%struct.ReplyParser* %25, i8* %26), !dbg !127
  store i32 %call22, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

sw.bb23:                                          ; preds = %entry
  %27 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !129
  %28 = load i8*, i8** %p_ctx.addr, align 8, !dbg !130
  %call24 = call i32 @parseAttributes(%struct.ReplyParser* %27, i8* %28), !dbg !131
  store i32 %call24, i32* %retval, align 4, !dbg !132
  br label %return, !dbg !132

sw.default:                                       ; preds = %entry
  %29 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !133
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %29, i32 0, i32 1, !dbg !135
  %error = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 15, !dbg !136
  %30 = load void (i8*)*, void (i8*)** %error, align 8, !dbg !136
  %tobool = icmp ne void (i8*)* %30, null, !dbg !133
  br i1 %tobool, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %sw.default
  %31 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !138
  %callbacks25 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %31, i32 0, i32 1, !dbg !139
  %error26 = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks25, i32 0, i32 15, !dbg !140
  %32 = load void (i8*)*, void (i8*)** %error26, align 8, !dbg !140
  %33 = load i8*, i8** %p_ctx.addr, align 8, !dbg !141
  call void %32(i8* %33), !dbg !138
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog, !dbg !142

sw.epilog:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !143
  br label %return, !dbg !143

return:                                           ; preds = %sw.epilog, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %34 = load i32, i32* %retval, align 4, !dbg !144
  ret i32 %34, !dbg !144
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseBulk(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !145 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %bulklen = alloca i64, align 8
  %str = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !152
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !153
  %1 = load i8*, i8** %curr_location, align 8, !dbg !153
  store i8* %1, i8** %proto, align 8, !dbg !151
  call void @llvm.dbg.declare(metadata i8** %p, metadata !154, metadata !DIExpression()), !dbg !156
  %2 = load i8*, i8** %proto, align 8, !dbg !157
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !158
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !159
  store i8* %call, i8** %p, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i64* %bulklen, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = load i8*, i8** %p, align 8, !dbg !162
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !163
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !164
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !165
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !166
  %5 = load i8*, i8** %proto, align 8, !dbg !167
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !168
  %6 = load i8*, i8** %p, align 8, !dbg !169
  %7 = load i8*, i8** %proto, align 8, !dbg !170
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !171
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !171
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !171
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !172
  %call4 = call i32 @string2ll(i8* %add.ptr3, i64 %sub, i64* %bulklen), !dbg !173
  %8 = load i64, i64* %bulklen, align 8, !dbg !174
  %cmp = icmp eq i64 %8, -1, !dbg !176
  br i1 %cmp, label %if.then, label %if.else, !dbg !177

if.then:                                          ; preds = %entry
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !178
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %9, i32 0, i32 1, !dbg !180
  %null_bulk_string_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 1, !dbg !181
  %10 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %null_bulk_string_callback, align 8, !dbg !181
  %11 = load i8*, i8** %p_ctx.addr, align 8, !dbg !182
  %12 = load i8*, i8** %proto, align 8, !dbg !183
  %13 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !184
  %curr_location5 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %13, i32 0, i32 0, !dbg !185
  %14 = load i8*, i8** %curr_location5, align 8, !dbg !185
  %15 = load i8*, i8** %proto, align 8, !dbg !186
  %sub.ptr.lhs.cast6 = ptrtoint i8* %14 to i64, !dbg !187
  %sub.ptr.rhs.cast7 = ptrtoint i8* %15 to i64, !dbg !187
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !187
  call void %10(i8* %11, i8* %12, i64 %sub.ptr.sub8), !dbg !178
  br label %if.end, !dbg !188

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %str, metadata !189, metadata !DIExpression()), !dbg !191
  %16 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !192
  %curr_location9 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %16, i32 0, i32 0, !dbg !193
  %17 = load i8*, i8** %curr_location9, align 8, !dbg !193
  store i8* %17, i8** %str, align 8, !dbg !191
  %18 = load i64, i64* %bulklen, align 8, !dbg !194
  %19 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !195
  %curr_location10 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %19, i32 0, i32 0, !dbg !196
  %20 = load i8*, i8** %curr_location10, align 8, !dbg !197
  %add.ptr11 = getelementptr inbounds i8, i8* %20, i64 %18, !dbg !197
  store i8* %add.ptr11, i8** %curr_location10, align 8, !dbg !197
  %21 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !198
  %curr_location12 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %21, i32 0, i32 0, !dbg !199
  %22 = load i8*, i8** %curr_location12, align 8, !dbg !200
  %add.ptr13 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !200
  store i8* %add.ptr13, i8** %curr_location12, align 8, !dbg !200
  %23 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !201
  %callbacks14 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %23, i32 0, i32 1, !dbg !202
  %bulk_string_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks14, i32 0, i32 2, !dbg !203
  %24 = load void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)** %bulk_string_callback, align 8, !dbg !203
  %25 = load i8*, i8** %p_ctx.addr, align 8, !dbg !204
  %26 = load i8*, i8** %str, align 8, !dbg !205
  %27 = load i64, i64* %bulklen, align 8, !dbg !206
  %28 = load i8*, i8** %proto, align 8, !dbg !207
  %29 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !208
  %curr_location15 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %29, i32 0, i32 0, !dbg !209
  %30 = load i8*, i8** %curr_location15, align 8, !dbg !209
  %31 = load i8*, i8** %proto, align 8, !dbg !210
  %sub.ptr.lhs.cast16 = ptrtoint i8* %30 to i64, !dbg !211
  %sub.ptr.rhs.cast17 = ptrtoint i8* %31 to i64, !dbg !211
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17, !dbg !211
  call void %24(i8* %25, i8* %26, i64 %27, i8* %28, i64 %sub.ptr.sub18), !dbg !201
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !212
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseSimpleString(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !213 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !220
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !221
  %1 = load i8*, i8** %curr_location, align 8, !dbg !221
  store i8* %1, i8** %proto, align 8, !dbg !219
  call void @llvm.dbg.declare(metadata i8** %p, metadata !222, metadata !DIExpression()), !dbg !223
  %2 = load i8*, i8** %proto, align 8, !dbg !224
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !225
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !226
  store i8* %call, i8** %p, align 8, !dbg !223
  %3 = load i8*, i8** %p, align 8, !dbg !227
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !228
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !229
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !230
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !231
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !232
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %5, i32 0, i32 1, !dbg !233
  %simple_str_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 4, !dbg !234
  %6 = load void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)** %simple_str_callback, align 8, !dbg !234
  %7 = load i8*, i8** %p_ctx.addr, align 8, !dbg !235
  %8 = load i8*, i8** %proto, align 8, !dbg !236
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !237
  %9 = load i8*, i8** %p, align 8, !dbg !238
  %10 = load i8*, i8** %proto, align 8, !dbg !239
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !240
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !240
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !240
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !241
  %11 = load i8*, i8** %proto, align 8, !dbg !242
  %12 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !243
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %12, i32 0, i32 0, !dbg !244
  %13 = load i8*, i8** %curr_location4, align 8, !dbg !244
  %14 = load i8*, i8** %proto, align 8, !dbg !245
  %sub.ptr.lhs.cast5 = ptrtoint i8* %13 to i64, !dbg !246
  %sub.ptr.rhs.cast6 = ptrtoint i8* %14 to i64, !dbg !246
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6, !dbg !246
  call void %6(i8* %7, i8* %add.ptr3, i64 %sub, i8* %11, i64 %sub.ptr.sub7), !dbg !232
  ret i32 0, !dbg !247
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseError(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !248 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !249, metadata !DIExpression()), !dbg !250
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !251, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !253, metadata !DIExpression()), !dbg !254
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !255
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !256
  %1 = load i8*, i8** %curr_location, align 8, !dbg !256
  store i8* %1, i8** %proto, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata i8** %p, metadata !257, metadata !DIExpression()), !dbg !258
  %2 = load i8*, i8** %proto, align 8, !dbg !259
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !260
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !261
  store i8* %call, i8** %p, align 8, !dbg !258
  %3 = load i8*, i8** %p, align 8, !dbg !262
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !263
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !264
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !265
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !266
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !267
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %5, i32 0, i32 1, !dbg !268
  %error_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 3, !dbg !269
  %6 = load void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)** %error_callback, align 8, !dbg !269
  %7 = load i8*, i8** %p_ctx.addr, align 8, !dbg !270
  %8 = load i8*, i8** %proto, align 8, !dbg !271
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !272
  %9 = load i8*, i8** %p, align 8, !dbg !273
  %10 = load i8*, i8** %proto, align 8, !dbg !274
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !275
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !275
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !275
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !276
  %11 = load i8*, i8** %proto, align 8, !dbg !277
  %12 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !278
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %12, i32 0, i32 0, !dbg !279
  %13 = load i8*, i8** %curr_location4, align 8, !dbg !279
  %14 = load i8*, i8** %proto, align 8, !dbg !280
  %sub.ptr.lhs.cast5 = ptrtoint i8* %13 to i64, !dbg !281
  %sub.ptr.rhs.cast6 = ptrtoint i8* %14 to i64, !dbg !281
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6, !dbg !281
  call void %6(i8* %7, i8* %add.ptr3, i64 %sub, i8* %11, i64 %sub.ptr.sub7), !dbg !267
  ret i32 0, !dbg !282
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseLong(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !283 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %val = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !284, metadata !DIExpression()), !dbg !285
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !290
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !291
  %1 = load i8*, i8** %curr_location, align 8, !dbg !291
  store i8* %1, i8** %proto, align 8, !dbg !289
  call void @llvm.dbg.declare(metadata i8** %p, metadata !292, metadata !DIExpression()), !dbg !293
  %2 = load i8*, i8** %proto, align 8, !dbg !294
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !295
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !296
  store i8* %call, i8** %p, align 8, !dbg !293
  %3 = load i8*, i8** %p, align 8, !dbg !297
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !298
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !299
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !300
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata i64* %val, metadata !302, metadata !DIExpression()), !dbg !303
  %5 = load i8*, i8** %proto, align 8, !dbg !304
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !305
  %6 = load i8*, i8** %p, align 8, !dbg !306
  %7 = load i8*, i8** %proto, align 8, !dbg !307
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !308
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !308
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !308
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !309
  %call4 = call i32 @string2ll(i8* %add.ptr3, i64 %sub, i64* %val), !dbg !310
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !311
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 1, !dbg !312
  %long_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 5, !dbg !313
  %9 = load void (i8*, i64, i8*, i64)*, void (i8*, i64, i8*, i64)** %long_callback, align 8, !dbg !313
  %10 = load i8*, i8** %p_ctx.addr, align 8, !dbg !314
  %11 = load i64, i64* %val, align 8, !dbg !315
  %12 = load i8*, i8** %proto, align 8, !dbg !316
  %13 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !317
  %curr_location5 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %13, i32 0, i32 0, !dbg !318
  %14 = load i8*, i8** %curr_location5, align 8, !dbg !318
  %15 = load i8*, i8** %proto, align 8, !dbg !319
  %sub.ptr.lhs.cast6 = ptrtoint i8* %14 to i64, !dbg !320
  %sub.ptr.rhs.cast7 = ptrtoint i8* %15 to i64, !dbg !320
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !320
  call void %9(i8* %10, i64 %11, i8* %12, i64 %sub.ptr.sub8), !dbg !311
  ret i32 0, !dbg !321
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseArray(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !322 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !323, metadata !DIExpression()), !dbg !324
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !329
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !330
  %1 = load i8*, i8** %curr_location, align 8, !dbg !330
  store i8* %1, i8** %proto, align 8, !dbg !328
  call void @llvm.dbg.declare(metadata i8** %p, metadata !331, metadata !DIExpression()), !dbg !332
  %2 = load i8*, i8** %proto, align 8, !dbg !333
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !334
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !335
  store i8* %call, i8** %p, align 8, !dbg !332
  call void @llvm.dbg.declare(metadata i64* %len, metadata !336, metadata !DIExpression()), !dbg !337
  %3 = load i8*, i8** %proto, align 8, !dbg !338
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !339
  %4 = load i8*, i8** %p, align 8, !dbg !340
  %5 = load i8*, i8** %proto, align 8, !dbg !341
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !342
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !342
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !342
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !343
  %call2 = call i32 @string2ll(i8* %add.ptr1, i64 %sub, i64* %len), !dbg !344
  %6 = load i8*, i8** %p, align 8, !dbg !345
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !345
  store i8* %add.ptr3, i8** %p, align 8, !dbg !345
  %7 = load i8*, i8** %p, align 8, !dbg !346
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !347
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 0, !dbg !348
  store i8* %7, i8** %curr_location4, align 8, !dbg !349
  %9 = load i64, i64* %len, align 8, !dbg !350
  %cmp = icmp eq i64 %9, -1, !dbg !352
  br i1 %cmp, label %if.then, label %if.else, !dbg !353

if.then:                                          ; preds = %entry
  %10 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !354
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %10, i32 0, i32 1, !dbg !356
  %null_array_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 0, !dbg !357
  %11 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %null_array_callback, align 8, !dbg !357
  %12 = load i8*, i8** %p_ctx.addr, align 8, !dbg !358
  %13 = load i8*, i8** %proto, align 8, !dbg !359
  %14 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !360
  %curr_location5 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %14, i32 0, i32 0, !dbg !361
  %15 = load i8*, i8** %curr_location5, align 8, !dbg !361
  %16 = load i8*, i8** %proto, align 8, !dbg !362
  %sub.ptr.lhs.cast6 = ptrtoint i8* %15 to i64, !dbg !363
  %sub.ptr.rhs.cast7 = ptrtoint i8* %16 to i64, !dbg !363
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !363
  call void %11(i8* %12, i8* %13, i64 %sub.ptr.sub8), !dbg !354
  br label %if.end, !dbg !364

if.else:                                          ; preds = %entry
  %17 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !365
  %callbacks9 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %17, i32 0, i32 1, !dbg !367
  %array_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks9, i32 0, i32 6, !dbg !368
  %18 = load void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)** %array_callback, align 8, !dbg !368
  %19 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !369
  %20 = load i8*, i8** %p_ctx.addr, align 8, !dbg !370
  %21 = load i64, i64* %len, align 8, !dbg !371
  %22 = load i8*, i8** %proto, align 8, !dbg !372
  call void %18(%struct.ReplyParser* %19, i8* %20, i64 %21, i8* %22), !dbg !365
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !373
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseSet(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !374 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !375, metadata !DIExpression()), !dbg !376
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !381
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !382
  %1 = load i8*, i8** %curr_location, align 8, !dbg !382
  store i8* %1, i8** %proto, align 8, !dbg !380
  call void @llvm.dbg.declare(metadata i8** %p, metadata !383, metadata !DIExpression()), !dbg !384
  %2 = load i8*, i8** %proto, align 8, !dbg !385
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !386
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !387
  store i8* %call, i8** %p, align 8, !dbg !384
  call void @llvm.dbg.declare(metadata i64* %len, metadata !388, metadata !DIExpression()), !dbg !389
  %3 = load i8*, i8** %proto, align 8, !dbg !390
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !391
  %4 = load i8*, i8** %p, align 8, !dbg !392
  %5 = load i8*, i8** %proto, align 8, !dbg !393
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !394
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !394
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !394
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !395
  %call2 = call i32 @string2ll(i8* %add.ptr1, i64 %sub, i64* %len), !dbg !396
  %6 = load i8*, i8** %p, align 8, !dbg !397
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !397
  store i8* %add.ptr3, i8** %p, align 8, !dbg !397
  %7 = load i8*, i8** %p, align 8, !dbg !398
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !399
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 0, !dbg !400
  store i8* %7, i8** %curr_location4, align 8, !dbg !401
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !402
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %9, i32 0, i32 1, !dbg !403
  %set_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 7, !dbg !404
  %10 = load void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)** %set_callback, align 8, !dbg !404
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !405
  %12 = load i8*, i8** %p_ctx.addr, align 8, !dbg !406
  %13 = load i64, i64* %len, align 8, !dbg !407
  %14 = load i8*, i8** %proto, align 8, !dbg !408
  call void %10(%struct.ReplyParser* %11, i8* %12, i64 %13, i8* %14), !dbg !402
  ret i32 0, !dbg !409
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseMap(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !410 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !411, metadata !DIExpression()), !dbg !412
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !413, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !417
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !418
  %1 = load i8*, i8** %curr_location, align 8, !dbg !418
  store i8* %1, i8** %proto, align 8, !dbg !416
  call void @llvm.dbg.declare(metadata i8** %p, metadata !419, metadata !DIExpression()), !dbg !420
  %2 = load i8*, i8** %proto, align 8, !dbg !421
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !422
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !423
  store i8* %call, i8** %p, align 8, !dbg !420
  call void @llvm.dbg.declare(metadata i64* %len, metadata !424, metadata !DIExpression()), !dbg !425
  %3 = load i8*, i8** %proto, align 8, !dbg !426
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !427
  %4 = load i8*, i8** %p, align 8, !dbg !428
  %5 = load i8*, i8** %proto, align 8, !dbg !429
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !430
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !430
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !430
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !431
  %call2 = call i32 @string2ll(i8* %add.ptr1, i64 %sub, i64* %len), !dbg !432
  %6 = load i8*, i8** %p, align 8, !dbg !433
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !433
  store i8* %add.ptr3, i8** %p, align 8, !dbg !433
  %7 = load i8*, i8** %p, align 8, !dbg !434
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !435
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 0, !dbg !436
  store i8* %7, i8** %curr_location4, align 8, !dbg !437
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !438
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %9, i32 0, i32 1, !dbg !439
  %map_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 8, !dbg !440
  %10 = load void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)** %map_callback, align 8, !dbg !440
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !441
  %12 = load i8*, i8** %p_ctx.addr, align 8, !dbg !442
  %13 = load i64, i64* %len, align 8, !dbg !443
  %14 = load i8*, i8** %proto, align 8, !dbg !444
  call void %10(%struct.ReplyParser* %11, i8* %12, i64 %13, i8* %14), !dbg !438
  ret i32 0, !dbg !445
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseBool(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !446 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !453
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !454
  %1 = load i8*, i8** %curr_location, align 8, !dbg !454
  store i8* %1, i8** %proto, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata i8** %p, metadata !455, metadata !DIExpression()), !dbg !456
  %2 = load i8*, i8** %proto, align 8, !dbg !457
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !458
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !459
  store i8* %call, i8** %p, align 8, !dbg !456
  %3 = load i8*, i8** %p, align 8, !dbg !460
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !461
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !462
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !463
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !464
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !465
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %5, i32 0, i32 1, !dbg !466
  %bool_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 9, !dbg !467
  %6 = load void (i8*, i32, i8*, i64)*, void (i8*, i32, i8*, i64)** %bool_callback, align 8, !dbg !467
  %7 = load i8*, i8** %p_ctx.addr, align 8, !dbg !468
  %8 = load i8*, i8** %proto, align 8, !dbg !469
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 1, !dbg !469
  %9 = load i8, i8* %arrayidx, align 1, !dbg !469
  %conv = sext i8 %9 to i32, !dbg !469
  %cmp = icmp eq i32 %conv, 116, !dbg !470
  %conv3 = zext i1 %cmp to i32, !dbg !470
  %10 = load i8*, i8** %proto, align 8, !dbg !471
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !472
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %11, i32 0, i32 0, !dbg !473
  %12 = load i8*, i8** %curr_location4, align 8, !dbg !473
  %13 = load i8*, i8** %proto, align 8, !dbg !474
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64, !dbg !475
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64, !dbg !475
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !475
  call void %6(i8* %7, i32 %conv3, i8* %10, i64 %sub.ptr.sub), !dbg !465
  ret i32 0, !dbg !476
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseDouble(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !477 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %buf = alloca [5121 x i8], align 16
  %len = alloca i64, align 8
  %d = alloca double, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !484
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !485
  %1 = load i8*, i8** %curr_location, align 8, !dbg !485
  store i8* %1, i8** %proto, align 8, !dbg !483
  call void @llvm.dbg.declare(metadata i8** %p, metadata !486, metadata !DIExpression()), !dbg !487
  %2 = load i8*, i8** %proto, align 8, !dbg !488
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !489
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !490
  store i8* %call, i8** %p, align 8, !dbg !487
  %3 = load i8*, i8** %p, align 8, !dbg !491
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !492
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !493
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !494
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !495
  call void @llvm.dbg.declare(metadata [5121 x i8]* %buf, metadata !496, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i64* %len, metadata !501, metadata !DIExpression()), !dbg !502
  %5 = load i8*, i8** %p, align 8, !dbg !503
  %6 = load i8*, i8** %proto, align 8, !dbg !504
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64, !dbg !505
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64, !dbg !505
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !505
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !506
  store i64 %sub, i64* %len, align 8, !dbg !502
  call void @llvm.dbg.declare(metadata double* %d, metadata !507, metadata !DIExpression()), !dbg !508
  %7 = load i64, i64* %len, align 8, !dbg !509
  %cmp = icmp ule i64 %7, 5120, !dbg !511
  br i1 %cmp, label %if.then, label %if.else, !dbg !512

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [5121 x i8], [5121 x i8]* %buf, i64 0, i64 0, !dbg !513
  %8 = load i8*, i8** %proto, align 8, !dbg !515
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !516
  %9 = load i64, i64* %len, align 8, !dbg !517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 1 %add.ptr3, i64 %9, i1 false), !dbg !513
  %10 = load i64, i64* %len, align 8, !dbg !518
  %arrayidx = getelementptr inbounds [5121 x i8], [5121 x i8]* %buf, i64 0, i64 %10, !dbg !519
  store i8 0, i8* %arrayidx, align 1, !dbg !520
  %arraydecay4 = getelementptr inbounds [5121 x i8], [5121 x i8]* %buf, i64 0, i64 0, !dbg !521
  %call5 = call double @strtod(i8* %arraydecay4, i8** null) #7, !dbg !522
  store double %call5, double* %d, align 8, !dbg !523
  br label %if.end, !dbg !524

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %d, align 8, !dbg !525
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !527
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %11, i32 0, i32 1, !dbg !528
  %double_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 10, !dbg !529
  %12 = load void (i8*, double, i8*, i64)*, void (i8*, double, i8*, i64)** %double_callback, align 8, !dbg !529
  %13 = load i8*, i8** %p_ctx.addr, align 8, !dbg !530
  %14 = load double, double* %d, align 8, !dbg !531
  %15 = load i8*, i8** %proto, align 8, !dbg !532
  %16 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !533
  %curr_location6 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %16, i32 0, i32 0, !dbg !534
  %17 = load i8*, i8** %curr_location6, align 8, !dbg !534
  %18 = load i8*, i8** %proto, align 8, !dbg !535
  %sub.ptr.lhs.cast7 = ptrtoint i8* %17 to i64, !dbg !536
  %sub.ptr.rhs.cast8 = ptrtoint i8* %18 to i64, !dbg !536
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8, !dbg !536
  call void %12(i8* %13, double %14, i8* %15, i64 %sub.ptr.sub9), !dbg !527
  ret i32 0, !dbg !537
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseNull(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !538 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !539, metadata !DIExpression()), !dbg !540
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !545
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !546
  %1 = load i8*, i8** %curr_location, align 8, !dbg !546
  store i8* %1, i8** %proto, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata i8** %p, metadata !547, metadata !DIExpression()), !dbg !548
  %2 = load i8*, i8** %proto, align 8, !dbg !549
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !550
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !551
  store i8* %call, i8** %p, align 8, !dbg !548
  %3 = load i8*, i8** %p, align 8, !dbg !552
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !553
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !554
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !555
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !556
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !557
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %5, i32 0, i32 1, !dbg !558
  %null_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 14, !dbg !559
  %6 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %null_callback, align 8, !dbg !559
  %7 = load i8*, i8** %p_ctx.addr, align 8, !dbg !560
  %8 = load i8*, i8** %proto, align 8, !dbg !561
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !562
  %curr_location3 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %9, i32 0, i32 0, !dbg !563
  %10 = load i8*, i8** %curr_location3, align 8, !dbg !563
  %11 = load i8*, i8** %proto, align 8, !dbg !564
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64, !dbg !565
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64, !dbg !565
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !565
  call void %6(i8* %7, i8* %8, i64 %sub.ptr.sub), !dbg !557
  ret i32 0, !dbg !566
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseBigNumber(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !567 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !568, metadata !DIExpression()), !dbg !569
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !574
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !575
  %1 = load i8*, i8** %curr_location, align 8, !dbg !575
  store i8* %1, i8** %proto, align 8, !dbg !573
  call void @llvm.dbg.declare(metadata i8** %p, metadata !576, metadata !DIExpression()), !dbg !577
  %2 = load i8*, i8** %proto, align 8, !dbg !578
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !579
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !580
  store i8* %call, i8** %p, align 8, !dbg !577
  %3 = load i8*, i8** %p, align 8, !dbg !581
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !582
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !583
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !584
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !585
  %5 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !586
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %5, i32 0, i32 1, !dbg !587
  %big_number_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 11, !dbg !588
  %6 = load void (i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i64, i8*, i64)** %big_number_callback, align 8, !dbg !588
  %7 = load i8*, i8** %p_ctx.addr, align 8, !dbg !589
  %8 = load i8*, i8** %proto, align 8, !dbg !590
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !591
  %9 = load i8*, i8** %p, align 8, !dbg !592
  %10 = load i8*, i8** %proto, align 8, !dbg !593
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64, !dbg !594
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64, !dbg !594
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !594
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !595
  %11 = load i8*, i8** %proto, align 8, !dbg !596
  %12 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !597
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %12, i32 0, i32 0, !dbg !598
  %13 = load i8*, i8** %curr_location4, align 8, !dbg !598
  %14 = load i8*, i8** %proto, align 8, !dbg !599
  %sub.ptr.lhs.cast5 = ptrtoint i8* %13 to i64, !dbg !600
  %sub.ptr.rhs.cast6 = ptrtoint i8* %14 to i64, !dbg !600
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6, !dbg !600
  call void %6(i8* %7, i8* %add.ptr3, i64 %sub, i8* %11, i64 %sub.ptr.sub7), !dbg !586
  ret i32 0, !dbg !601
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseVerbatimString(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !602 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %bulklen = alloca i64, align 8
  %format = alloca i8*, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !609
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !610
  %1 = load i8*, i8** %curr_location, align 8, !dbg !610
  store i8* %1, i8** %proto, align 8, !dbg !608
  call void @llvm.dbg.declare(metadata i8** %p, metadata !611, metadata !DIExpression()), !dbg !612
  %2 = load i8*, i8** %proto, align 8, !dbg !613
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !614
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !615
  store i8* %call, i8** %p, align 8, !dbg !612
  call void @llvm.dbg.declare(metadata i64* %bulklen, metadata !616, metadata !DIExpression()), !dbg !617
  %3 = load i8*, i8** %p, align 8, !dbg !618
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 2, !dbg !619
  %4 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !620
  %curr_location2 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %4, i32 0, i32 0, !dbg !621
  store i8* %add.ptr1, i8** %curr_location2, align 8, !dbg !622
  %5 = load i8*, i8** %proto, align 8, !dbg !623
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !624
  %6 = load i8*, i8** %p, align 8, !dbg !625
  %7 = load i8*, i8** %proto, align 8, !dbg !626
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !627
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !627
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !627
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !628
  %call4 = call i32 @string2ll(i8* %add.ptr3, i64 %sub, i64* %bulklen), !dbg !629
  call void @llvm.dbg.declare(metadata i8** %format, metadata !630, metadata !DIExpression()), !dbg !631
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !632
  %curr_location5 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 0, !dbg !633
  %9 = load i8*, i8** %curr_location5, align 8, !dbg !633
  store i8* %9, i8** %format, align 8, !dbg !631
  %10 = load i64, i64* %bulklen, align 8, !dbg !634
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !635
  %curr_location6 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %11, i32 0, i32 0, !dbg !636
  %12 = load i8*, i8** %curr_location6, align 8, !dbg !637
  %add.ptr7 = getelementptr inbounds i8, i8* %12, i64 %10, !dbg !637
  store i8* %add.ptr7, i8** %curr_location6, align 8, !dbg !637
  %13 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !638
  %curr_location8 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %13, i32 0, i32 0, !dbg !639
  %14 = load i8*, i8** %curr_location8, align 8, !dbg !640
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !640
  store i8* %add.ptr9, i8** %curr_location8, align 8, !dbg !640
  %15 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !641
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %15, i32 0, i32 1, !dbg !642
  %verbatim_string_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 12, !dbg !643
  %16 = load void (i8*, i8*, i8*, i64, i8*, i64)*, void (i8*, i8*, i8*, i64, i8*, i64)** %verbatim_string_callback, align 8, !dbg !643
  %17 = load i8*, i8** %p_ctx.addr, align 8, !dbg !644
  %18 = load i8*, i8** %format, align 8, !dbg !645
  %19 = load i8*, i8** %format, align 8, !dbg !646
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 4, !dbg !647
  %20 = load i64, i64* %bulklen, align 8, !dbg !648
  %sub11 = sub nsw i64 %20, 4, !dbg !649
  %21 = load i8*, i8** %proto, align 8, !dbg !650
  %22 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !651
  %curr_location12 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %22, i32 0, i32 0, !dbg !652
  %23 = load i8*, i8** %curr_location12, align 8, !dbg !652
  %24 = load i8*, i8** %proto, align 8, !dbg !653
  %sub.ptr.lhs.cast13 = ptrtoint i8* %23 to i64, !dbg !654
  %sub.ptr.rhs.cast14 = ptrtoint i8* %24 to i64, !dbg !654
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !654
  call void %16(i8* %17, i8* %18, i8* %add.ptr10, i64 %sub11, i8* %21, i64 %sub.ptr.sub15), !dbg !641
  ret i32 0, !dbg !655
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parseAttributes(%struct.ReplyParser* %parser, i8* %p_ctx) #0 !dbg !656 {
entry:
  %parser.addr = alloca %struct.ReplyParser*, align 8
  %p_ctx.addr = alloca i8*, align 8
  %proto = alloca i8*, align 8
  %p = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.ReplyParser* %parser, %struct.ReplyParser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ReplyParser** %parser.addr, metadata !657, metadata !DIExpression()), !dbg !658
  store i8* %p_ctx, i8** %p_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_ctx.addr, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.declare(metadata i8** %proto, metadata !661, metadata !DIExpression()), !dbg !662
  %0 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !663
  %curr_location = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %0, i32 0, i32 0, !dbg !664
  %1 = load i8*, i8** %curr_location, align 8, !dbg !664
  store i8* %1, i8** %proto, align 8, !dbg !662
  call void @llvm.dbg.declare(metadata i8** %p, metadata !665, metadata !DIExpression()), !dbg !666
  %2 = load i8*, i8** %proto, align 8, !dbg !667
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !668
  %call = call i8* @strchr(i8* %add.ptr, i32 13) #6, !dbg !669
  store i8* %call, i8** %p, align 8, !dbg !666
  call void @llvm.dbg.declare(metadata i64* %len, metadata !670, metadata !DIExpression()), !dbg !671
  %3 = load i8*, i8** %proto, align 8, !dbg !672
  %add.ptr1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !673
  %4 = load i8*, i8** %p, align 8, !dbg !674
  %5 = load i8*, i8** %proto, align 8, !dbg !675
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !676
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64, !dbg !676
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !676
  %sub = sub nsw i64 %sub.ptr.sub, 1, !dbg !677
  %call2 = call i32 @string2ll(i8* %add.ptr1, i64 %sub, i64* %len), !dbg !678
  %6 = load i8*, i8** %p, align 8, !dbg !679
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !679
  store i8* %add.ptr3, i8** %p, align 8, !dbg !679
  %7 = load i8*, i8** %p, align 8, !dbg !680
  %8 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !681
  %curr_location4 = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %8, i32 0, i32 0, !dbg !682
  store i8* %7, i8** %curr_location4, align 8, !dbg !683
  %9 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !684
  %callbacks = getelementptr inbounds %struct.ReplyParser, %struct.ReplyParser* %9, i32 0, i32 1, !dbg !685
  %attribute_callback = getelementptr inbounds %struct.ReplyParserCallbacks, %struct.ReplyParserCallbacks* %callbacks, i32 0, i32 13, !dbg !686
  %10 = load void (%struct.ReplyParser*, i8*, i64, i8*)*, void (%struct.ReplyParser*, i8*, i64, i8*)** %attribute_callback, align 8, !dbg !686
  %11 = load %struct.ReplyParser*, %struct.ReplyParser** %parser.addr, align 8, !dbg !687
  %12 = load i8*, i8** %p_ctx.addr, align 8, !dbg !688
  %13 = load i64, i64* %len, align 8, !dbg !689
  %14 = load i8*, i8** %proto, align 8, !dbg !690
  call void %10(%struct.ReplyParser* %11, i8* %12, i64 %13, i8* %14), !dbg !684
  ret i32 0, !dbg !691
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @string2ll(i8*, i64, i64*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "resp_parser.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!9 = distinct !DISubprogram(name: "parseReply", scope: !1, file: !1, line: 210, type: !10, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !30}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParser", file: !15, line: 35, baseType: !16)
!15 = !DIFile(filename: "./resp_parser.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParser", file: !15, line: 86, size: 1088, elements: !17)
!17 = !{!18, !22}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "curr_location", scope: !16, file: !15, line: 88, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "callbacks", scope: !16, file: !15, line: 89, baseType: !23, size: 1024, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ReplyParserCallbacks", file: !15, line: 84, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ReplyParserCallbacks", file: !15, line: 37, size: 1024, elements: !25)
!25 = !{!26, !34, !35, !39, !40, !41, !46, !51, !52, !53, !57, !62, !63, !67, !68, !69}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "null_array_callback", scope: !24, file: !15, line: 39, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !19, !31}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "null_bulk_string_callback", scope: !24, file: !15, line: 42, baseType: !27, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_string_callback", scope: !24, file: !15, line: 45, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !30, !19, !31, !19, !31}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "error_callback", scope: !24, file: !15, line: 48, baseType: !36, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "simple_str_callback", scope: !24, file: !15, line: 51, baseType: !36, size: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "long_callback", scope: !24, file: !15, line: 54, baseType: !42, size: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !30, !45, !19, !31}
!45 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "array_callback", scope: !24, file: !15, line: 57, baseType: !47, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !30, !31, !19}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "set_callback", scope: !24, file: !15, line: 60, baseType: !47, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "map_callback", scope: !24, file: !15, line: 63, baseType: !47, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "bool_callback", scope: !24, file: !15, line: 66, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !30, !12, !19, !31}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "double_callback", scope: !24, file: !15, line: 69, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !30, !61, !19, !31}
!61 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "big_number_callback", scope: !24, file: !15, line: 72, baseType: !36, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "verbatim_string_callback", scope: !24, file: !15, line: 75, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !30, !19, !19, !31, !19, !31}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "attribute_callback", scope: !24, file: !15, line: 78, baseType: !47, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "null_callback", scope: !24, file: !15, line: 81, baseType: !27, size: 64, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !24, file: !15, line: 83, baseType: !70, size: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !30}
!73 = !DILocalVariable(name: "parser", arg: 1, scope: !9, file: !1, line: 210, type: !13)
!74 = !DILocation(line: 210, column: 29, scope: !9)
!75 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !9, file: !1, line: 210, type: !30)
!76 = !DILocation(line: 210, column: 43, scope: !9)
!77 = !DILocation(line: 211, column: 13, scope: !9)
!78 = !DILocation(line: 211, column: 21, scope: !9)
!79 = !DILocation(line: 211, column: 5, scope: !9)
!80 = !DILocation(line: 212, column: 36, scope: !81)
!81 = distinct !DILexicalBlock(scope: !9, file: !1, line: 211, column: 39)
!82 = !DILocation(line: 212, column: 44, scope: !81)
!83 = !DILocation(line: 212, column: 26, scope: !81)
!84 = !DILocation(line: 212, column: 19, scope: !81)
!85 = !DILocation(line: 213, column: 44, scope: !81)
!86 = !DILocation(line: 213, column: 52, scope: !81)
!87 = !DILocation(line: 213, column: 26, scope: !81)
!88 = !DILocation(line: 213, column: 19, scope: !81)
!89 = !DILocation(line: 214, column: 37, scope: !81)
!90 = !DILocation(line: 214, column: 45, scope: !81)
!91 = !DILocation(line: 214, column: 26, scope: !81)
!92 = !DILocation(line: 214, column: 19, scope: !81)
!93 = !DILocation(line: 215, column: 36, scope: !81)
!94 = !DILocation(line: 215, column: 44, scope: !81)
!95 = !DILocation(line: 215, column: 26, scope: !81)
!96 = !DILocation(line: 215, column: 19, scope: !81)
!97 = !DILocation(line: 216, column: 37, scope: !81)
!98 = !DILocation(line: 216, column: 45, scope: !81)
!99 = !DILocation(line: 216, column: 26, scope: !81)
!100 = !DILocation(line: 216, column: 19, scope: !81)
!101 = !DILocation(line: 217, column: 35, scope: !81)
!102 = !DILocation(line: 217, column: 43, scope: !81)
!103 = !DILocation(line: 217, column: 26, scope: !81)
!104 = !DILocation(line: 217, column: 19, scope: !81)
!105 = !DILocation(line: 218, column: 35, scope: !81)
!106 = !DILocation(line: 218, column: 43, scope: !81)
!107 = !DILocation(line: 218, column: 26, scope: !81)
!108 = !DILocation(line: 218, column: 19, scope: !81)
!109 = !DILocation(line: 219, column: 36, scope: !81)
!110 = !DILocation(line: 219, column: 44, scope: !81)
!111 = !DILocation(line: 219, column: 26, scope: !81)
!112 = !DILocation(line: 219, column: 19, scope: !81)
!113 = !DILocation(line: 220, column: 38, scope: !81)
!114 = !DILocation(line: 220, column: 46, scope: !81)
!115 = !DILocation(line: 220, column: 26, scope: !81)
!116 = !DILocation(line: 220, column: 19, scope: !81)
!117 = !DILocation(line: 221, column: 36, scope: !81)
!118 = !DILocation(line: 221, column: 44, scope: !81)
!119 = !DILocation(line: 221, column: 26, scope: !81)
!120 = !DILocation(line: 221, column: 19, scope: !81)
!121 = !DILocation(line: 222, column: 41, scope: !81)
!122 = !DILocation(line: 222, column: 49, scope: !81)
!123 = !DILocation(line: 222, column: 26, scope: !81)
!124 = !DILocation(line: 222, column: 19, scope: !81)
!125 = !DILocation(line: 223, column: 46, scope: !81)
!126 = !DILocation(line: 223, column: 54, scope: !81)
!127 = !DILocation(line: 223, column: 26, scope: !81)
!128 = !DILocation(line: 223, column: 19, scope: !81)
!129 = !DILocation(line: 224, column: 42, scope: !81)
!130 = !DILocation(line: 224, column: 50, scope: !81)
!131 = !DILocation(line: 224, column: 26, scope: !81)
!132 = !DILocation(line: 224, column: 19, scope: !81)
!133 = !DILocation(line: 225, column: 22, scope: !134)
!134 = distinct !DILexicalBlock(scope: !81, file: !1, line: 225, column: 22)
!135 = !DILocation(line: 225, column: 30, scope: !134)
!136 = !DILocation(line: 225, column: 40, scope: !134)
!137 = !DILocation(line: 225, column: 22, scope: !81)
!138 = !DILocation(line: 225, column: 47, scope: !134)
!139 = !DILocation(line: 225, column: 55, scope: !134)
!140 = !DILocation(line: 225, column: 65, scope: !134)
!141 = !DILocation(line: 225, column: 71, scope: !134)
!142 = !DILocation(line: 226, column: 5, scope: !81)
!143 = !DILocation(line: 227, column: 5, scope: !9)
!144 = !DILocation(line: 228, column: 1, scope: !9)
!145 = distinct !DISubprogram(name: "parseBulk", scope: !1, file: !1, line: 61, type: !10, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!146 = !DILocalVariable(name: "parser", arg: 1, scope: !145, file: !1, line: 61, type: !13)
!147 = !DILocation(line: 61, column: 35, scope: !145)
!148 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !145, file: !1, line: 61, type: !30)
!149 = !DILocation(line: 61, column: 49, scope: !145)
!150 = !DILocalVariable(name: "proto", scope: !145, file: !1, line: 62, type: !19)
!151 = !DILocation(line: 62, column: 17, scope: !145)
!152 = !DILocation(line: 62, column: 25, scope: !145)
!153 = !DILocation(line: 62, column: 33, scope: !145)
!154 = !DILocalVariable(name: "p", scope: !145, file: !1, line: 63, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!156 = !DILocation(line: 63, column: 11, scope: !145)
!157 = !DILocation(line: 63, column: 22, scope: !145)
!158 = !DILocation(line: 63, column: 27, scope: !145)
!159 = !DILocation(line: 63, column: 15, scope: !145)
!160 = !DILocalVariable(name: "bulklen", scope: !145, file: !1, line: 64, type: !45)
!161 = !DILocation(line: 64, column: 15, scope: !145)
!162 = !DILocation(line: 65, column: 29, scope: !145)
!163 = !DILocation(line: 65, column: 31, scope: !145)
!164 = !DILocation(line: 65, column: 5, scope: !145)
!165 = !DILocation(line: 65, column: 13, scope: !145)
!166 = !DILocation(line: 65, column: 27, scope: !145)
!167 = !DILocation(line: 67, column: 15, scope: !145)
!168 = !DILocation(line: 67, column: 20, scope: !145)
!169 = !DILocation(line: 67, column: 23, scope: !145)
!170 = !DILocation(line: 67, column: 25, scope: !145)
!171 = !DILocation(line: 67, column: 24, scope: !145)
!172 = !DILocation(line: 67, column: 30, scope: !145)
!173 = !DILocation(line: 67, column: 5, scope: !145)
!174 = !DILocation(line: 68, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !145, file: !1, line: 68, column: 9)
!176 = !DILocation(line: 68, column: 17, scope: !175)
!177 = !DILocation(line: 68, column: 9, scope: !145)
!178 = !DILocation(line: 69, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 68, column: 24)
!180 = !DILocation(line: 69, column: 17, scope: !179)
!181 = !DILocation(line: 69, column: 27, scope: !179)
!182 = !DILocation(line: 69, column: 53, scope: !179)
!183 = !DILocation(line: 69, column: 60, scope: !179)
!184 = !DILocation(line: 69, column: 67, scope: !179)
!185 = !DILocation(line: 69, column: 75, scope: !179)
!186 = !DILocation(line: 69, column: 91, scope: !179)
!187 = !DILocation(line: 69, column: 89, scope: !179)
!188 = !DILocation(line: 70, column: 5, scope: !179)
!189 = !DILocalVariable(name: "str", scope: !190, file: !1, line: 71, type: !19)
!190 = distinct !DILexicalBlock(scope: !175, file: !1, line: 70, column: 12)
!191 = !DILocation(line: 71, column: 21, scope: !190)
!192 = !DILocation(line: 71, column: 27, scope: !190)
!193 = !DILocation(line: 71, column: 35, scope: !190)
!194 = !DILocation(line: 72, column: 34, scope: !190)
!195 = !DILocation(line: 72, column: 9, scope: !190)
!196 = !DILocation(line: 72, column: 17, scope: !190)
!197 = !DILocation(line: 72, column: 31, scope: !190)
!198 = !DILocation(line: 73, column: 9, scope: !190)
!199 = !DILocation(line: 73, column: 17, scope: !190)
!200 = !DILocation(line: 73, column: 31, scope: !190)
!201 = !DILocation(line: 74, column: 9, scope: !190)
!202 = !DILocation(line: 74, column: 17, scope: !190)
!203 = !DILocation(line: 74, column: 27, scope: !190)
!204 = !DILocation(line: 74, column: 48, scope: !190)
!205 = !DILocation(line: 74, column: 55, scope: !190)
!206 = !DILocation(line: 74, column: 60, scope: !190)
!207 = !DILocation(line: 74, column: 69, scope: !190)
!208 = !DILocation(line: 74, column: 76, scope: !190)
!209 = !DILocation(line: 74, column: 84, scope: !190)
!210 = !DILocation(line: 74, column: 100, scope: !190)
!211 = !DILocation(line: 74, column: 98, scope: !190)
!212 = !DILocation(line: 77, column: 5, scope: !145)
!213 = distinct !DISubprogram(name: "parseSimpleString", scope: !1, file: !1, line: 80, type: !10, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!214 = !DILocalVariable(name: "parser", arg: 1, scope: !213, file: !1, line: 80, type: !13)
!215 = !DILocation(line: 80, column: 43, scope: !213)
!216 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !213, file: !1, line: 80, type: !30)
!217 = !DILocation(line: 80, column: 57, scope: !213)
!218 = !DILocalVariable(name: "proto", scope: !213, file: !1, line: 81, type: !19)
!219 = !DILocation(line: 81, column: 17, scope: !213)
!220 = !DILocation(line: 81, column: 25, scope: !213)
!221 = !DILocation(line: 81, column: 33, scope: !213)
!222 = !DILocalVariable(name: "p", scope: !213, file: !1, line: 82, type: !155)
!223 = !DILocation(line: 82, column: 11, scope: !213)
!224 = !DILocation(line: 82, column: 22, scope: !213)
!225 = !DILocation(line: 82, column: 27, scope: !213)
!226 = !DILocation(line: 82, column: 15, scope: !213)
!227 = !DILocation(line: 83, column: 29, scope: !213)
!228 = !DILocation(line: 83, column: 31, scope: !213)
!229 = !DILocation(line: 83, column: 5, scope: !213)
!230 = !DILocation(line: 83, column: 13, scope: !213)
!231 = !DILocation(line: 83, column: 27, scope: !213)
!232 = !DILocation(line: 84, column: 5, scope: !213)
!233 = !DILocation(line: 84, column: 13, scope: !213)
!234 = !DILocation(line: 84, column: 23, scope: !213)
!235 = !DILocation(line: 84, column: 43, scope: !213)
!236 = !DILocation(line: 84, column: 50, scope: !213)
!237 = !DILocation(line: 84, column: 55, scope: !213)
!238 = !DILocation(line: 84, column: 59, scope: !213)
!239 = !DILocation(line: 84, column: 61, scope: !213)
!240 = !DILocation(line: 84, column: 60, scope: !213)
!241 = !DILocation(line: 84, column: 66, scope: !213)
!242 = !DILocation(line: 84, column: 70, scope: !213)
!243 = !DILocation(line: 84, column: 77, scope: !213)
!244 = !DILocation(line: 84, column: 85, scope: !213)
!245 = !DILocation(line: 84, column: 101, scope: !213)
!246 = !DILocation(line: 84, column: 99, scope: !213)
!247 = !DILocation(line: 85, column: 5, scope: !213)
!248 = distinct !DISubprogram(name: "parseError", scope: !1, file: !1, line: 88, type: !10, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!249 = !DILocalVariable(name: "parser", arg: 1, scope: !248, file: !1, line: 88, type: !13)
!250 = !DILocation(line: 88, column: 36, scope: !248)
!251 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !248, file: !1, line: 88, type: !30)
!252 = !DILocation(line: 88, column: 50, scope: !248)
!253 = !DILocalVariable(name: "proto", scope: !248, file: !1, line: 89, type: !19)
!254 = !DILocation(line: 89, column: 17, scope: !248)
!255 = !DILocation(line: 89, column: 25, scope: !248)
!256 = !DILocation(line: 89, column: 33, scope: !248)
!257 = !DILocalVariable(name: "p", scope: !248, file: !1, line: 90, type: !155)
!258 = !DILocation(line: 90, column: 11, scope: !248)
!259 = !DILocation(line: 90, column: 22, scope: !248)
!260 = !DILocation(line: 90, column: 27, scope: !248)
!261 = !DILocation(line: 90, column: 15, scope: !248)
!262 = !DILocation(line: 91, column: 29, scope: !248)
!263 = !DILocation(line: 91, column: 31, scope: !248)
!264 = !DILocation(line: 91, column: 5, scope: !248)
!265 = !DILocation(line: 91, column: 13, scope: !248)
!266 = !DILocation(line: 91, column: 27, scope: !248)
!267 = !DILocation(line: 92, column: 5, scope: !248)
!268 = !DILocation(line: 92, column: 13, scope: !248)
!269 = !DILocation(line: 92, column: 23, scope: !248)
!270 = !DILocation(line: 92, column: 38, scope: !248)
!271 = !DILocation(line: 92, column: 45, scope: !248)
!272 = !DILocation(line: 92, column: 50, scope: !248)
!273 = !DILocation(line: 92, column: 54, scope: !248)
!274 = !DILocation(line: 92, column: 56, scope: !248)
!275 = !DILocation(line: 92, column: 55, scope: !248)
!276 = !DILocation(line: 92, column: 61, scope: !248)
!277 = !DILocation(line: 92, column: 65, scope: !248)
!278 = !DILocation(line: 92, column: 72, scope: !248)
!279 = !DILocation(line: 92, column: 80, scope: !248)
!280 = !DILocation(line: 92, column: 96, scope: !248)
!281 = !DILocation(line: 92, column: 94, scope: !248)
!282 = !DILocation(line: 93, column: 5, scope: !248)
!283 = distinct !DISubprogram(name: "parseLong", scope: !1, file: !1, line: 96, type: !10, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!284 = !DILocalVariable(name: "parser", arg: 1, scope: !283, file: !1, line: 96, type: !13)
!285 = !DILocation(line: 96, column: 35, scope: !283)
!286 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !283, file: !1, line: 96, type: !30)
!287 = !DILocation(line: 96, column: 49, scope: !283)
!288 = !DILocalVariable(name: "proto", scope: !283, file: !1, line: 97, type: !19)
!289 = !DILocation(line: 97, column: 17, scope: !283)
!290 = !DILocation(line: 97, column: 25, scope: !283)
!291 = !DILocation(line: 97, column: 33, scope: !283)
!292 = !DILocalVariable(name: "p", scope: !283, file: !1, line: 98, type: !155)
!293 = !DILocation(line: 98, column: 11, scope: !283)
!294 = !DILocation(line: 98, column: 22, scope: !283)
!295 = !DILocation(line: 98, column: 27, scope: !283)
!296 = !DILocation(line: 98, column: 15, scope: !283)
!297 = !DILocation(line: 99, column: 29, scope: !283)
!298 = !DILocation(line: 99, column: 31, scope: !283)
!299 = !DILocation(line: 99, column: 5, scope: !283)
!300 = !DILocation(line: 99, column: 13, scope: !283)
!301 = !DILocation(line: 99, column: 27, scope: !283)
!302 = !DILocalVariable(name: "val", scope: !283, file: !1, line: 100, type: !45)
!303 = !DILocation(line: 100, column: 15, scope: !283)
!304 = !DILocation(line: 101, column: 15, scope: !283)
!305 = !DILocation(line: 101, column: 20, scope: !283)
!306 = !DILocation(line: 101, column: 23, scope: !283)
!307 = !DILocation(line: 101, column: 25, scope: !283)
!308 = !DILocation(line: 101, column: 24, scope: !283)
!309 = !DILocation(line: 101, column: 30, scope: !283)
!310 = !DILocation(line: 101, column: 5, scope: !283)
!311 = !DILocation(line: 102, column: 5, scope: !283)
!312 = !DILocation(line: 102, column: 13, scope: !283)
!313 = !DILocation(line: 102, column: 23, scope: !283)
!314 = !DILocation(line: 102, column: 37, scope: !283)
!315 = !DILocation(line: 102, column: 44, scope: !283)
!316 = !DILocation(line: 102, column: 49, scope: !283)
!317 = !DILocation(line: 102, column: 56, scope: !283)
!318 = !DILocation(line: 102, column: 64, scope: !283)
!319 = !DILocation(line: 102, column: 80, scope: !283)
!320 = !DILocation(line: 102, column: 78, scope: !283)
!321 = !DILocation(line: 103, column: 5, scope: !283)
!322 = distinct !DISubprogram(name: "parseArray", scope: !1, file: !1, line: 172, type: !10, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!323 = !DILocalVariable(name: "parser", arg: 1, scope: !322, file: !1, line: 172, type: !13)
!324 = !DILocation(line: 172, column: 36, scope: !322)
!325 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !322, file: !1, line: 172, type: !30)
!326 = !DILocation(line: 172, column: 50, scope: !322)
!327 = !DILocalVariable(name: "proto", scope: !322, file: !1, line: 173, type: !19)
!328 = !DILocation(line: 173, column: 17, scope: !322)
!329 = !DILocation(line: 173, column: 25, scope: !322)
!330 = !DILocation(line: 173, column: 33, scope: !322)
!331 = !DILocalVariable(name: "p", scope: !322, file: !1, line: 174, type: !155)
!332 = !DILocation(line: 174, column: 11, scope: !322)
!333 = !DILocation(line: 174, column: 22, scope: !322)
!334 = !DILocation(line: 174, column: 27, scope: !322)
!335 = !DILocation(line: 174, column: 15, scope: !322)
!336 = !DILocalVariable(name: "len", scope: !322, file: !1, line: 175, type: !45)
!337 = !DILocation(line: 175, column: 15, scope: !322)
!338 = !DILocation(line: 176, column: 15, scope: !322)
!339 = !DILocation(line: 176, column: 20, scope: !322)
!340 = !DILocation(line: 176, column: 23, scope: !322)
!341 = !DILocation(line: 176, column: 25, scope: !322)
!342 = !DILocation(line: 176, column: 24, scope: !322)
!343 = !DILocation(line: 176, column: 30, scope: !322)
!344 = !DILocation(line: 176, column: 5, scope: !322)
!345 = !DILocation(line: 177, column: 7, scope: !322)
!346 = !DILocation(line: 178, column: 29, scope: !322)
!347 = !DILocation(line: 178, column: 5, scope: !322)
!348 = !DILocation(line: 178, column: 13, scope: !322)
!349 = !DILocation(line: 178, column: 27, scope: !322)
!350 = !DILocation(line: 179, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !322, file: !1, line: 179, column: 9)
!352 = !DILocation(line: 179, column: 13, scope: !351)
!353 = !DILocation(line: 179, column: 9, scope: !322)
!354 = !DILocation(line: 180, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 179, column: 20)
!356 = !DILocation(line: 180, column: 17, scope: !355)
!357 = !DILocation(line: 180, column: 27, scope: !355)
!358 = !DILocation(line: 180, column: 47, scope: !355)
!359 = !DILocation(line: 180, column: 54, scope: !355)
!360 = !DILocation(line: 180, column: 61, scope: !355)
!361 = !DILocation(line: 180, column: 69, scope: !355)
!362 = !DILocation(line: 180, column: 85, scope: !355)
!363 = !DILocation(line: 180, column: 83, scope: !355)
!364 = !DILocation(line: 181, column: 5, scope: !355)
!365 = !DILocation(line: 182, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !351, file: !1, line: 181, column: 12)
!367 = !DILocation(line: 182, column: 17, scope: !366)
!368 = !DILocation(line: 182, column: 27, scope: !366)
!369 = !DILocation(line: 182, column: 42, scope: !366)
!370 = !DILocation(line: 182, column: 50, scope: !366)
!371 = !DILocation(line: 182, column: 57, scope: !366)
!372 = !DILocation(line: 182, column: 62, scope: !366)
!373 = !DILocation(line: 184, column: 5, scope: !322)
!374 = distinct !DISubprogram(name: "parseSet", scope: !1, file: !1, line: 187, type: !10, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!375 = !DILocalVariable(name: "parser", arg: 1, scope: !374, file: !1, line: 187, type: !13)
!376 = !DILocation(line: 187, column: 34, scope: !374)
!377 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !374, file: !1, line: 187, type: !30)
!378 = !DILocation(line: 187, column: 48, scope: !374)
!379 = !DILocalVariable(name: "proto", scope: !374, file: !1, line: 188, type: !19)
!380 = !DILocation(line: 188, column: 17, scope: !374)
!381 = !DILocation(line: 188, column: 25, scope: !374)
!382 = !DILocation(line: 188, column: 33, scope: !374)
!383 = !DILocalVariable(name: "p", scope: !374, file: !1, line: 189, type: !155)
!384 = !DILocation(line: 189, column: 11, scope: !374)
!385 = !DILocation(line: 189, column: 22, scope: !374)
!386 = !DILocation(line: 189, column: 27, scope: !374)
!387 = !DILocation(line: 189, column: 15, scope: !374)
!388 = !DILocalVariable(name: "len", scope: !374, file: !1, line: 190, type: !45)
!389 = !DILocation(line: 190, column: 15, scope: !374)
!390 = !DILocation(line: 191, column: 15, scope: !374)
!391 = !DILocation(line: 191, column: 20, scope: !374)
!392 = !DILocation(line: 191, column: 23, scope: !374)
!393 = !DILocation(line: 191, column: 25, scope: !374)
!394 = !DILocation(line: 191, column: 24, scope: !374)
!395 = !DILocation(line: 191, column: 30, scope: !374)
!396 = !DILocation(line: 191, column: 5, scope: !374)
!397 = !DILocation(line: 192, column: 7, scope: !374)
!398 = !DILocation(line: 193, column: 29, scope: !374)
!399 = !DILocation(line: 193, column: 5, scope: !374)
!400 = !DILocation(line: 193, column: 13, scope: !374)
!401 = !DILocation(line: 193, column: 27, scope: !374)
!402 = !DILocation(line: 194, column: 5, scope: !374)
!403 = !DILocation(line: 194, column: 13, scope: !374)
!404 = !DILocation(line: 194, column: 23, scope: !374)
!405 = !DILocation(line: 194, column: 36, scope: !374)
!406 = !DILocation(line: 194, column: 44, scope: !374)
!407 = !DILocation(line: 194, column: 51, scope: !374)
!408 = !DILocation(line: 194, column: 56, scope: !374)
!409 = !DILocation(line: 195, column: 5, scope: !374)
!410 = distinct !DISubprogram(name: "parseMap", scope: !1, file: !1, line: 198, type: !10, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!411 = !DILocalVariable(name: "parser", arg: 1, scope: !410, file: !1, line: 198, type: !13)
!412 = !DILocation(line: 198, column: 34, scope: !410)
!413 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !410, file: !1, line: 198, type: !30)
!414 = !DILocation(line: 198, column: 48, scope: !410)
!415 = !DILocalVariable(name: "proto", scope: !410, file: !1, line: 199, type: !19)
!416 = !DILocation(line: 199, column: 17, scope: !410)
!417 = !DILocation(line: 199, column: 25, scope: !410)
!418 = !DILocation(line: 199, column: 33, scope: !410)
!419 = !DILocalVariable(name: "p", scope: !410, file: !1, line: 200, type: !155)
!420 = !DILocation(line: 200, column: 11, scope: !410)
!421 = !DILocation(line: 200, column: 22, scope: !410)
!422 = !DILocation(line: 200, column: 27, scope: !410)
!423 = !DILocation(line: 200, column: 15, scope: !410)
!424 = !DILocalVariable(name: "len", scope: !410, file: !1, line: 201, type: !45)
!425 = !DILocation(line: 201, column: 15, scope: !410)
!426 = !DILocation(line: 202, column: 15, scope: !410)
!427 = !DILocation(line: 202, column: 20, scope: !410)
!428 = !DILocation(line: 202, column: 23, scope: !410)
!429 = !DILocation(line: 202, column: 25, scope: !410)
!430 = !DILocation(line: 202, column: 24, scope: !410)
!431 = !DILocation(line: 202, column: 30, scope: !410)
!432 = !DILocation(line: 202, column: 5, scope: !410)
!433 = !DILocation(line: 203, column: 7, scope: !410)
!434 = !DILocation(line: 204, column: 29, scope: !410)
!435 = !DILocation(line: 204, column: 5, scope: !410)
!436 = !DILocation(line: 204, column: 13, scope: !410)
!437 = !DILocation(line: 204, column: 27, scope: !410)
!438 = !DILocation(line: 205, column: 5, scope: !410)
!439 = !DILocation(line: 205, column: 13, scope: !410)
!440 = !DILocation(line: 205, column: 23, scope: !410)
!441 = !DILocation(line: 205, column: 36, scope: !410)
!442 = !DILocation(line: 205, column: 44, scope: !410)
!443 = !DILocation(line: 205, column: 51, scope: !410)
!444 = !DILocation(line: 205, column: 56, scope: !410)
!445 = !DILocation(line: 206, column: 5, scope: !410)
!446 = distinct !DISubprogram(name: "parseBool", scope: !1, file: !1, line: 164, type: !10, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!447 = !DILocalVariable(name: "parser", arg: 1, scope: !446, file: !1, line: 164, type: !13)
!448 = !DILocation(line: 164, column: 35, scope: !446)
!449 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !446, file: !1, line: 164, type: !30)
!450 = !DILocation(line: 164, column: 49, scope: !446)
!451 = !DILocalVariable(name: "proto", scope: !446, file: !1, line: 165, type: !19)
!452 = !DILocation(line: 165, column: 17, scope: !446)
!453 = !DILocation(line: 165, column: 25, scope: !446)
!454 = !DILocation(line: 165, column: 33, scope: !446)
!455 = !DILocalVariable(name: "p", scope: !446, file: !1, line: 166, type: !155)
!456 = !DILocation(line: 166, column: 11, scope: !446)
!457 = !DILocation(line: 166, column: 22, scope: !446)
!458 = !DILocation(line: 166, column: 27, scope: !446)
!459 = !DILocation(line: 166, column: 15, scope: !446)
!460 = !DILocation(line: 167, column: 29, scope: !446)
!461 = !DILocation(line: 167, column: 31, scope: !446)
!462 = !DILocation(line: 167, column: 5, scope: !446)
!463 = !DILocation(line: 167, column: 13, scope: !446)
!464 = !DILocation(line: 167, column: 27, scope: !446)
!465 = !DILocation(line: 168, column: 5, scope: !446)
!466 = !DILocation(line: 168, column: 13, scope: !446)
!467 = !DILocation(line: 168, column: 23, scope: !446)
!468 = !DILocation(line: 168, column: 37, scope: !446)
!469 = !DILocation(line: 168, column: 44, scope: !446)
!470 = !DILocation(line: 168, column: 53, scope: !446)
!471 = !DILocation(line: 168, column: 61, scope: !446)
!472 = !DILocation(line: 168, column: 68, scope: !446)
!473 = !DILocation(line: 168, column: 76, scope: !446)
!474 = !DILocation(line: 168, column: 92, scope: !446)
!475 = !DILocation(line: 168, column: 90, scope: !446)
!476 = !DILocation(line: 169, column: 5, scope: !446)
!477 = distinct !DISubprogram(name: "parseDouble", scope: !1, file: !1, line: 146, type: !10, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!478 = !DILocalVariable(name: "parser", arg: 1, scope: !477, file: !1, line: 146, type: !13)
!479 = !DILocation(line: 146, column: 37, scope: !477)
!480 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !477, file: !1, line: 146, type: !30)
!481 = !DILocation(line: 146, column: 51, scope: !477)
!482 = !DILocalVariable(name: "proto", scope: !477, file: !1, line: 147, type: !19)
!483 = !DILocation(line: 147, column: 17, scope: !477)
!484 = !DILocation(line: 147, column: 25, scope: !477)
!485 = !DILocation(line: 147, column: 33, scope: !477)
!486 = !DILocalVariable(name: "p", scope: !477, file: !1, line: 148, type: !155)
!487 = !DILocation(line: 148, column: 11, scope: !477)
!488 = !DILocation(line: 148, column: 22, scope: !477)
!489 = !DILocation(line: 148, column: 27, scope: !477)
!490 = !DILocation(line: 148, column: 15, scope: !477)
!491 = !DILocation(line: 149, column: 29, scope: !477)
!492 = !DILocation(line: 149, column: 31, scope: !477)
!493 = !DILocation(line: 149, column: 5, scope: !477)
!494 = !DILocation(line: 149, column: 13, scope: !477)
!495 = !DILocation(line: 149, column: 27, scope: !477)
!496 = !DILocalVariable(name: "buf", scope: !477, file: !1, line: 150, type: !497)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40968, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 5121)
!500 = !DILocation(line: 150, column: 10, scope: !477)
!501 = !DILocalVariable(name: "len", scope: !477, file: !1, line: 151, type: !31)
!502 = !DILocation(line: 151, column: 12, scope: !477)
!503 = !DILocation(line: 151, column: 18, scope: !477)
!504 = !DILocation(line: 151, column: 20, scope: !477)
!505 = !DILocation(line: 151, column: 19, scope: !477)
!506 = !DILocation(line: 151, column: 25, scope: !477)
!507 = !DILocalVariable(name: "d", scope: !477, file: !1, line: 152, type: !61)
!508 = !DILocation(line: 152, column: 12, scope: !477)
!509 = !DILocation(line: 153, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !477, file: !1, line: 153, column: 9)
!511 = !DILocation(line: 153, column: 13, scope: !510)
!512 = !DILocation(line: 153, column: 9, scope: !477)
!513 = !DILocation(line: 154, column: 9, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 153, column: 39)
!515 = !DILocation(line: 154, column: 20, scope: !514)
!516 = !DILocation(line: 154, column: 25, scope: !514)
!517 = !DILocation(line: 154, column: 28, scope: !514)
!518 = !DILocation(line: 155, column: 13, scope: !514)
!519 = !DILocation(line: 155, column: 9, scope: !514)
!520 = !DILocation(line: 155, column: 18, scope: !514)
!521 = !DILocation(line: 156, column: 20, scope: !514)
!522 = !DILocation(line: 156, column: 13, scope: !514)
!523 = !DILocation(line: 156, column: 11, scope: !514)
!524 = !DILocation(line: 157, column: 5, scope: !514)
!525 = !DILocation(line: 158, column: 11, scope: !526)
!526 = distinct !DILexicalBlock(scope: !510, file: !1, line: 157, column: 12)
!527 = !DILocation(line: 160, column: 5, scope: !477)
!528 = !DILocation(line: 160, column: 13, scope: !477)
!529 = !DILocation(line: 160, column: 23, scope: !477)
!530 = !DILocation(line: 160, column: 39, scope: !477)
!531 = !DILocation(line: 160, column: 46, scope: !477)
!532 = !DILocation(line: 160, column: 49, scope: !477)
!533 = !DILocation(line: 160, column: 56, scope: !477)
!534 = !DILocation(line: 160, column: 64, scope: !477)
!535 = !DILocation(line: 160, column: 80, scope: !477)
!536 = !DILocation(line: 160, column: 78, scope: !477)
!537 = !DILocation(line: 161, column: 5, scope: !477)
!538 = distinct !DISubprogram(name: "parseNull", scope: !1, file: !1, line: 138, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!539 = !DILocalVariable(name: "parser", arg: 1, scope: !538, file: !1, line: 138, type: !13)
!540 = !DILocation(line: 138, column: 35, scope: !538)
!541 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !538, file: !1, line: 138, type: !30)
!542 = !DILocation(line: 138, column: 49, scope: !538)
!543 = !DILocalVariable(name: "proto", scope: !538, file: !1, line: 139, type: !19)
!544 = !DILocation(line: 139, column: 17, scope: !538)
!545 = !DILocation(line: 139, column: 25, scope: !538)
!546 = !DILocation(line: 139, column: 33, scope: !538)
!547 = !DILocalVariable(name: "p", scope: !538, file: !1, line: 140, type: !155)
!548 = !DILocation(line: 140, column: 11, scope: !538)
!549 = !DILocation(line: 140, column: 22, scope: !538)
!550 = !DILocation(line: 140, column: 27, scope: !538)
!551 = !DILocation(line: 140, column: 15, scope: !538)
!552 = !DILocation(line: 141, column: 29, scope: !538)
!553 = !DILocation(line: 141, column: 31, scope: !538)
!554 = !DILocation(line: 141, column: 5, scope: !538)
!555 = !DILocation(line: 141, column: 13, scope: !538)
!556 = !DILocation(line: 141, column: 27, scope: !538)
!557 = !DILocation(line: 142, column: 5, scope: !538)
!558 = !DILocation(line: 142, column: 13, scope: !538)
!559 = !DILocation(line: 142, column: 23, scope: !538)
!560 = !DILocation(line: 142, column: 37, scope: !538)
!561 = !DILocation(line: 142, column: 44, scope: !538)
!562 = !DILocation(line: 142, column: 51, scope: !538)
!563 = !DILocation(line: 142, column: 59, scope: !538)
!564 = !DILocation(line: 142, column: 75, scope: !538)
!565 = !DILocation(line: 142, column: 73, scope: !538)
!566 = !DILocation(line: 143, column: 5, scope: !538)
!567 = distinct !DISubprogram(name: "parseBigNumber", scope: !1, file: !1, line: 130, type: !10, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!568 = !DILocalVariable(name: "parser", arg: 1, scope: !567, file: !1, line: 130, type: !13)
!569 = !DILocation(line: 130, column: 40, scope: !567)
!570 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !567, file: !1, line: 130, type: !30)
!571 = !DILocation(line: 130, column: 54, scope: !567)
!572 = !DILocalVariable(name: "proto", scope: !567, file: !1, line: 131, type: !19)
!573 = !DILocation(line: 131, column: 17, scope: !567)
!574 = !DILocation(line: 131, column: 25, scope: !567)
!575 = !DILocation(line: 131, column: 33, scope: !567)
!576 = !DILocalVariable(name: "p", scope: !567, file: !1, line: 132, type: !155)
!577 = !DILocation(line: 132, column: 11, scope: !567)
!578 = !DILocation(line: 132, column: 22, scope: !567)
!579 = !DILocation(line: 132, column: 27, scope: !567)
!580 = !DILocation(line: 132, column: 15, scope: !567)
!581 = !DILocation(line: 133, column: 29, scope: !567)
!582 = !DILocation(line: 133, column: 31, scope: !567)
!583 = !DILocation(line: 133, column: 5, scope: !567)
!584 = !DILocation(line: 133, column: 13, scope: !567)
!585 = !DILocation(line: 133, column: 27, scope: !567)
!586 = !DILocation(line: 134, column: 5, scope: !567)
!587 = !DILocation(line: 134, column: 13, scope: !567)
!588 = !DILocation(line: 134, column: 23, scope: !567)
!589 = !DILocation(line: 134, column: 43, scope: !567)
!590 = !DILocation(line: 134, column: 50, scope: !567)
!591 = !DILocation(line: 134, column: 55, scope: !567)
!592 = !DILocation(line: 134, column: 59, scope: !567)
!593 = !DILocation(line: 134, column: 61, scope: !567)
!594 = !DILocation(line: 134, column: 60, scope: !567)
!595 = !DILocation(line: 134, column: 66, scope: !567)
!596 = !DILocation(line: 134, column: 70, scope: !567)
!597 = !DILocation(line: 134, column: 77, scope: !567)
!598 = !DILocation(line: 134, column: 85, scope: !567)
!599 = !DILocation(line: 134, column: 101, scope: !567)
!600 = !DILocation(line: 134, column: 99, scope: !567)
!601 = !DILocation(line: 135, column: 5, scope: !567)
!602 = distinct !DISubprogram(name: "parseVerbatimString", scope: !1, file: !1, line: 117, type: !10, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!603 = !DILocalVariable(name: "parser", arg: 1, scope: !602, file: !1, line: 117, type: !13)
!604 = !DILocation(line: 117, column: 45, scope: !602)
!605 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !602, file: !1, line: 117, type: !30)
!606 = !DILocation(line: 117, column: 59, scope: !602)
!607 = !DILocalVariable(name: "proto", scope: !602, file: !1, line: 118, type: !19)
!608 = !DILocation(line: 118, column: 17, scope: !602)
!609 = !DILocation(line: 118, column: 25, scope: !602)
!610 = !DILocation(line: 118, column: 33, scope: !602)
!611 = !DILocalVariable(name: "p", scope: !602, file: !1, line: 119, type: !155)
!612 = !DILocation(line: 119, column: 11, scope: !602)
!613 = !DILocation(line: 119, column: 22, scope: !602)
!614 = !DILocation(line: 119, column: 27, scope: !602)
!615 = !DILocation(line: 119, column: 15, scope: !602)
!616 = !DILocalVariable(name: "bulklen", scope: !602, file: !1, line: 120, type: !45)
!617 = !DILocation(line: 120, column: 15, scope: !602)
!618 = !DILocation(line: 121, column: 29, scope: !602)
!619 = !DILocation(line: 121, column: 31, scope: !602)
!620 = !DILocation(line: 121, column: 5, scope: !602)
!621 = !DILocation(line: 121, column: 13, scope: !602)
!622 = !DILocation(line: 121, column: 27, scope: !602)
!623 = !DILocation(line: 122, column: 15, scope: !602)
!624 = !DILocation(line: 122, column: 20, scope: !602)
!625 = !DILocation(line: 122, column: 23, scope: !602)
!626 = !DILocation(line: 122, column: 25, scope: !602)
!627 = !DILocation(line: 122, column: 24, scope: !602)
!628 = !DILocation(line: 122, column: 30, scope: !602)
!629 = !DILocation(line: 122, column: 5, scope: !602)
!630 = !DILocalVariable(name: "format", scope: !602, file: !1, line: 123, type: !19)
!631 = !DILocation(line: 123, column: 17, scope: !602)
!632 = !DILocation(line: 123, column: 26, scope: !602)
!633 = !DILocation(line: 123, column: 34, scope: !602)
!634 = !DILocation(line: 124, column: 30, scope: !602)
!635 = !DILocation(line: 124, column: 5, scope: !602)
!636 = !DILocation(line: 124, column: 13, scope: !602)
!637 = !DILocation(line: 124, column: 27, scope: !602)
!638 = !DILocation(line: 125, column: 5, scope: !602)
!639 = !DILocation(line: 125, column: 13, scope: !602)
!640 = !DILocation(line: 125, column: 27, scope: !602)
!641 = !DILocation(line: 126, column: 5, scope: !602)
!642 = !DILocation(line: 126, column: 13, scope: !602)
!643 = !DILocation(line: 126, column: 23, scope: !602)
!644 = !DILocation(line: 126, column: 48, scope: !602)
!645 = !DILocation(line: 126, column: 55, scope: !602)
!646 = !DILocation(line: 126, column: 63, scope: !602)
!647 = !DILocation(line: 126, column: 70, scope: !602)
!648 = !DILocation(line: 126, column: 75, scope: !602)
!649 = !DILocation(line: 126, column: 83, scope: !602)
!650 = !DILocation(line: 126, column: 88, scope: !602)
!651 = !DILocation(line: 126, column: 95, scope: !602)
!652 = !DILocation(line: 126, column: 103, scope: !602)
!653 = !DILocation(line: 126, column: 119, scope: !602)
!654 = !DILocation(line: 126, column: 117, scope: !602)
!655 = !DILocation(line: 127, column: 5, scope: !602)
!656 = distinct !DISubprogram(name: "parseAttributes", scope: !1, file: !1, line: 106, type: !10, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!657 = !DILocalVariable(name: "parser", arg: 1, scope: !656, file: !1, line: 106, type: !13)
!658 = !DILocation(line: 106, column: 41, scope: !656)
!659 = !DILocalVariable(name: "p_ctx", arg: 2, scope: !656, file: !1, line: 106, type: !30)
!660 = !DILocation(line: 106, column: 55, scope: !656)
!661 = !DILocalVariable(name: "proto", scope: !656, file: !1, line: 107, type: !19)
!662 = !DILocation(line: 107, column: 17, scope: !656)
!663 = !DILocation(line: 107, column: 25, scope: !656)
!664 = !DILocation(line: 107, column: 33, scope: !656)
!665 = !DILocalVariable(name: "p", scope: !656, file: !1, line: 108, type: !155)
!666 = !DILocation(line: 108, column: 11, scope: !656)
!667 = !DILocation(line: 108, column: 22, scope: !656)
!668 = !DILocation(line: 108, column: 27, scope: !656)
!669 = !DILocation(line: 108, column: 15, scope: !656)
!670 = !DILocalVariable(name: "len", scope: !656, file: !1, line: 109, type: !45)
!671 = !DILocation(line: 109, column: 15, scope: !656)
!672 = !DILocation(line: 110, column: 15, scope: !656)
!673 = !DILocation(line: 110, column: 20, scope: !656)
!674 = !DILocation(line: 110, column: 23, scope: !656)
!675 = !DILocation(line: 110, column: 25, scope: !656)
!676 = !DILocation(line: 110, column: 24, scope: !656)
!677 = !DILocation(line: 110, column: 30, scope: !656)
!678 = !DILocation(line: 110, column: 5, scope: !656)
!679 = !DILocation(line: 111, column: 7, scope: !656)
!680 = !DILocation(line: 112, column: 29, scope: !656)
!681 = !DILocation(line: 112, column: 5, scope: !656)
!682 = !DILocation(line: 112, column: 13, scope: !656)
!683 = !DILocation(line: 112, column: 27, scope: !656)
!684 = !DILocation(line: 113, column: 5, scope: !656)
!685 = !DILocation(line: 113, column: 13, scope: !656)
!686 = !DILocation(line: 113, column: 23, scope: !656)
!687 = !DILocation(line: 113, column: 42, scope: !656)
!688 = !DILocation(line: 113, column: 50, scope: !656)
!689 = !DILocation(line: 113, column: 57, scope: !656)
!690 = !DILocation(line: 113, column: 62, scope: !656)
!691 = !DILocation(line: 114, column: 5, scope: !656)
