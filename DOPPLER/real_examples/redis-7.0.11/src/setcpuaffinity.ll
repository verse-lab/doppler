; ModuleID = 'setcpuaffinity.c'
source_filename = "setcpuaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cpu_set_t = type { [16 x i64] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @setcpuaffinity(i8* %cpulist) #0 !dbg !33 {
entry:
  %cpulist.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cpuset = alloca %struct.cpu_set_t, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %s = alloca i32, align 4
  %c1 = alloca i8*, align 8
  %c2 = alloca i8*, align 8
  %__cpu = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i8* %cpulist, i8** %cpulist.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpulist.addr, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i8** %p, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i8** %q, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %end, metadata !46, metadata !DIExpression()), !dbg !48
  store i8* null, i8** %end, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata %struct.cpu_set_t* %cpuset, metadata !49, metadata !DIExpression()), !dbg !57
  %0 = load i8*, i8** %cpulist.addr, align 8, !dbg !58
  %tobool = icmp ne i8* %0, null, !dbg !58
  br i1 %tobool, label %if.end, label %if.then, !dbg !60

if.then:                                          ; preds = %entry
  br label %return, !dbg !61

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !62

do.body:                                          ; preds = %if.end
  %1 = bitcast %struct.cpu_set_t* %cpuset to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 128, i1 false), !dbg !62
  br label %do.end, !dbg !62

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %cpulist.addr, align 8, !dbg !63
  store i8* %2, i8** %q, align 8, !dbg !64
  br label %while.cond, !dbg !65

while.cond:                                       ; preds = %while.end, %do.end
  %3 = load i8*, i8** %q, align 8, !dbg !66
  store i8* %3, i8** %p, align 8, !dbg !67
  %4 = load i8*, i8** %q, align 8, !dbg !68
  %call = call i8* @next_token(i8* %4, i32 44), !dbg !69
  store i8* %call, i8** %q, align 8, !dbg !70
  %5 = load i8*, i8** %p, align 8, !dbg !71
  %tobool1 = icmp ne i8* %5, null, !dbg !65
  br i1 %tobool1, label %while.body, label %while.end55, !dbg !65

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %a, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %b, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %s, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i8** %c1, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata i8** %c2, metadata !81, metadata !DIExpression()), !dbg !82
  %6 = load i8*, i8** %p, align 8, !dbg !83
  %call2 = call i32 @next_num(i8* %6, i8** %end, i32* %a), !dbg !85
  %cmp = icmp ne i32 %call2, 0, !dbg !86
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !87

if.then3:                                         ; preds = %while.body
  br label %return, !dbg !88

if.end4:                                          ; preds = %while.body
  %7 = load i32, i32* %a, align 4, !dbg !89
  store i32 %7, i32* %b, align 4, !dbg !90
  store i32 1, i32* %s, align 4, !dbg !91
  %8 = load i8*, i8** %end, align 8, !dbg !92
  store i8* %8, i8** %p, align 8, !dbg !93
  %9 = load i8*, i8** %p, align 8, !dbg !94
  %call5 = call i8* @next_token(i8* %9, i32 45), !dbg !95
  store i8* %call5, i8** %c1, align 8, !dbg !96
  %10 = load i8*, i8** %p, align 8, !dbg !97
  %call6 = call i8* @next_token(i8* %10, i32 44), !dbg !98
  store i8* %call6, i8** %c2, align 8, !dbg !99
  %11 = load i8*, i8** %c1, align 8, !dbg !100
  %cmp7 = icmp ne i8* %11, null, !dbg !102
  br i1 %cmp7, label %land.lhs.true, label %if.end38, !dbg !103

land.lhs.true:                                    ; preds = %if.end4
  %12 = load i8*, i8** %c2, align 8, !dbg !104
  %cmp8 = icmp eq i8* %12, null, !dbg !105
  br i1 %cmp8, label %if.then10, label %lor.lhs.false, !dbg !106

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i8*, i8** %c1, align 8, !dbg !107
  %14 = load i8*, i8** %c2, align 8, !dbg !108
  %cmp9 = icmp ult i8* %13, %14, !dbg !109
  br i1 %cmp9, label %if.then10, label %if.end38, !dbg !110

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load i8*, i8** %c1, align 8, !dbg !111
  %call11 = call i32 @next_num(i8* %15, i8** %end, i32* %b), !dbg !114
  %cmp12 = icmp ne i32 %call11, 0, !dbg !115
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !116

if.then13:                                        ; preds = %if.then10
  br label %return, !dbg !117

if.end14:                                         ; preds = %if.then10
  %16 = load i8*, i8** %end, align 8, !dbg !118
  %tobool15 = icmp ne i8* %16, null, !dbg !118
  br i1 %tobool15, label %land.lhs.true16, label %cond.false, !dbg !119

land.lhs.true16:                                  ; preds = %if.end14
  %17 = load i8*, i8** %end, align 8, !dbg !120
  %18 = load i8, i8* %17, align 1, !dbg !121
  %conv = sext i8 %18 to i32, !dbg !121
  %tobool17 = icmp ne i32 %conv, 0, !dbg !121
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !118

cond.true:                                        ; preds = %land.lhs.true16
  %19 = load i8*, i8** %end, align 8, !dbg !122
  %call18 = call i8* @next_token(i8* %19, i32 58), !dbg !123
  br label %cond.end, !dbg !118

cond.false:                                       ; preds = %land.lhs.true16, %if.end14
  br label %cond.end, !dbg !118

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call18, %cond.true ], [ null, %cond.false ], !dbg !118
  store i8* %cond, i8** %c1, align 8, !dbg !124
  %20 = load i8*, i8** %c1, align 8, !dbg !125
  %cmp19 = icmp ne i8* %20, null, !dbg !127
  br i1 %cmp19, label %land.lhs.true21, label %if.end37, !dbg !128

land.lhs.true21:                                  ; preds = %cond.end
  %21 = load i8*, i8** %c2, align 8, !dbg !129
  %cmp22 = icmp eq i8* %21, null, !dbg !130
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24, !dbg !131

lor.lhs.false24:                                  ; preds = %land.lhs.true21
  %22 = load i8*, i8** %c1, align 8, !dbg !132
  %23 = load i8*, i8** %c2, align 8, !dbg !133
  %cmp25 = icmp ult i8* %22, %23, !dbg !134
  br i1 %cmp25, label %if.then27, label %if.end37, !dbg !135

if.then27:                                        ; preds = %lor.lhs.false24, %land.lhs.true21
  %24 = load i8*, i8** %c1, align 8, !dbg !136
  %call28 = call i32 @next_num(i8* %24, i8** %end, i32* %s), !dbg !139
  %cmp29 = icmp ne i32 %call28, 0, !dbg !140
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !141

if.then31:                                        ; preds = %if.then27
  br label %return, !dbg !142

if.end32:                                         ; preds = %if.then27
  %25 = load i32, i32* %s, align 4, !dbg !143
  %cmp33 = icmp eq i32 %25, 0, !dbg !145
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !146

if.then35:                                        ; preds = %if.end32
  br label %return, !dbg !147

if.end36:                                         ; preds = %if.end32
  br label %if.end37, !dbg !148

if.end37:                                         ; preds = %if.end36, %lor.lhs.false24, %cond.end
  br label %if.end38, !dbg !149

if.end38:                                         ; preds = %if.end37, %lor.lhs.false, %if.end4
  %26 = load i32, i32* %a, align 4, !dbg !150
  %27 = load i32, i32* %b, align 4, !dbg !152
  %cmp39 = icmp sgt i32 %26, %27, !dbg !153
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !154

if.then41:                                        ; preds = %if.end38
  br label %return, !dbg !155

if.end42:                                         ; preds = %if.end38
  br label %while.cond43, !dbg !156

while.cond43:                                     ; preds = %cond.end53, %if.end42
  %28 = load i32, i32* %a, align 4, !dbg !157
  %29 = load i32, i32* %b, align 4, !dbg !158
  %cmp44 = icmp sle i32 %28, %29, !dbg !159
  br i1 %cmp44, label %while.body46, label %while.end, !dbg !156

while.body46:                                     ; preds = %while.cond43
  call void @llvm.dbg.declare(metadata i64* %__cpu, metadata !160, metadata !DIExpression()), !dbg !165
  %30 = load i32, i32* %a, align 4, !dbg !165
  %conv47 = sext i32 %30 to i64, !dbg !165
  store i64 %conv47, i64* %__cpu, align 8, !dbg !165
  %31 = load i64, i64* %__cpu, align 8, !dbg !165
  %div = udiv i64 %31, 8, !dbg !165
  %cmp48 = icmp ult i64 %div, 128, !dbg !165
  br i1 %cmp48, label %cond.true50, label %cond.false52, !dbg !165

cond.true50:                                      ; preds = %while.body46
  %32 = load i64, i64* %__cpu, align 8, !dbg !165
  %rem = urem i64 %32, 64, !dbg !165
  %shl = shl i64 1, %rem, !dbg !165
  %__bits = getelementptr inbounds %struct.cpu_set_t, %struct.cpu_set_t* %cpuset, i32 0, i32 0, !dbg !165
  %arraydecay = getelementptr inbounds [16 x i64], [16 x i64]* %__bits, i64 0, i64 0, !dbg !165
  %33 = load i64, i64* %__cpu, align 8, !dbg !165
  %div51 = udiv i64 %33, 64, !dbg !165
  %arrayidx = getelementptr inbounds i64, i64* %arraydecay, i64 %div51, !dbg !165
  %34 = load i64, i64* %arrayidx, align 8, !dbg !165
  %or = or i64 %34, %shl, !dbg !165
  store i64 %or, i64* %arrayidx, align 8, !dbg !165
  br label %cond.end53, !dbg !165

cond.false52:                                     ; preds = %while.body46
  br label %cond.end53, !dbg !165

cond.end53:                                       ; preds = %cond.false52, %cond.true50
  %cond54 = phi i64 [ %or, %cond.true50 ], [ 0, %cond.false52 ], !dbg !165
  store i64 %cond54, i64* %tmp, align 8, !dbg !165
  %35 = load i64, i64* %tmp, align 8, !dbg !165
  %36 = load i32, i32* %s, align 4, !dbg !166
  %37 = load i32, i32* %a, align 4, !dbg !167
  %add = add nsw i32 %37, %36, !dbg !167
  store i32 %add, i32* %a, align 4, !dbg !167
  br label %while.cond43, !dbg !156, !llvm.loop !168

while.end:                                        ; preds = %while.cond43
  br label %while.cond, !dbg !65, !llvm.loop !171

while.end55:                                      ; preds = %while.cond
  %38 = load i8*, i8** %end, align 8, !dbg !173
  %tobool56 = icmp ne i8* %38, null, !dbg !173
  br i1 %tobool56, label %land.lhs.true57, label %if.end61, !dbg !175

land.lhs.true57:                                  ; preds = %while.end55
  %39 = load i8*, i8** %end, align 8, !dbg !176
  %40 = load i8, i8* %39, align 1, !dbg !177
  %conv58 = sext i8 %40 to i32, !dbg !177
  %tobool59 = icmp ne i32 %conv58, 0, !dbg !177
  br i1 %tobool59, label %if.then60, label %if.end61, !dbg !178

if.then60:                                        ; preds = %land.lhs.true57
  br label %return, !dbg !179

if.end61:                                         ; preds = %land.lhs.true57, %while.end55
  %call62 = call i32 @sched_setaffinity(i32 0, i64 128, %struct.cpu_set_t* %cpuset) #6, !dbg !180
  br label %return, !dbg !181

return:                                           ; preds = %if.end61, %if.then60, %if.then41, %if.then35, %if.then31, %if.then13, %if.then3, %if.then
  ret void, !dbg !181
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @next_token(i8* %q, i32 %sep) #0 !dbg !182 {
entry:
  %q.addr = alloca i8*, align 8
  %sep.addr = alloca i32, align 4
  store i8* %q, i8** %q.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %q.addr, metadata !185, metadata !DIExpression()), !dbg !186
  store i32 %sep, i32* %sep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sep.addr, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load i8*, i8** %q.addr, align 8, !dbg !189
  %tobool = icmp ne i8* %0, null, !dbg !189
  br i1 %tobool, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %q.addr, align 8, !dbg !192
  %2 = load i32, i32* %sep.addr, align 4, !dbg !193
  %call = call i8* @strchr(i8* %1, i32 %2) #7, !dbg !194
  store i8* %call, i8** %q.addr, align 8, !dbg !195
  br label %if.end, !dbg !196

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %q.addr, align 8, !dbg !197
  %tobool1 = icmp ne i8* %3, null, !dbg !197
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !199

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %q.addr, align 8, !dbg !200
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, !dbg !200
  store i8* %incdec.ptr, i8** %q.addr, align 8, !dbg !200
  br label %if.end3, !dbg !201

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i8*, i8** %q.addr, align 8, !dbg !202
  ret i8* %5, !dbg !203
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_num(i8* %str, i8** %end, i32* %result) #0 !dbg !204 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %end.addr = alloca i8**, align 8
  %result.addr = alloca i32*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !209, metadata !DIExpression()), !dbg !210
  store i8** %end, i8*** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %end.addr, metadata !211, metadata !DIExpression()), !dbg !212
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i8*, i8** %str.addr, align 8, !dbg !215
  %tobool = icmp ne i8* %0, null, !dbg !215
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !217

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8, !dbg !218
  %2 = load i8, i8* %1, align 1, !dbg !219
  %conv = sext i8 %2 to i32, !dbg !219
  %cmp = icmp eq i32 %conv, 0, !dbg !220
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !221

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %call = call i16** @__ctype_b_loc() #8, !dbg !222
  %3 = load i16*, i16** %call, align 8, !dbg !222
  %4 = load i8*, i8** %str.addr, align 8, !dbg !222
  %5 = load i8, i8* %4, align 1, !dbg !222
  %conv3 = sext i8 %5 to i32, !dbg !222
  %idxprom = sext i32 %conv3 to i64, !dbg !222
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom, !dbg !222
  %6 = load i16, i16* %arrayidx, align 2, !dbg !222
  %conv4 = zext i16 %6 to i32, !dbg !222
  %and = and i32 %conv4, 2048, !dbg !222
  %tobool5 = icmp ne i32 %and, 0, !dbg !222
  br i1 %tobool5, label %if.end, label %if.then, !dbg !223

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !224
  br label %return, !dbg !224

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load i8*, i8** %str.addr, align 8, !dbg !225
  %8 = load i8**, i8*** %end.addr, align 8, !dbg !226
  %call6 = call i64 @strtoul(i8* %7, i8** %8, i32 10) #6, !dbg !227
  %conv7 = trunc i64 %call6 to i32, !dbg !227
  %9 = load i32*, i32** %result.addr, align 8, !dbg !228
  store i32 %conv7, i32* %9, align 4, !dbg !229
  %10 = load i8*, i8** %str.addr, align 8, !dbg !230
  %11 = load i8**, i8*** %end.addr, align 8, !dbg !232
  %12 = load i8*, i8** %11, align 8, !dbg !233
  %cmp8 = icmp eq i8* %10, %12, !dbg !234
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !235

if.then10:                                        ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !236
  br label %return, !dbg !236

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !237
  br label %return, !dbg !237

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !238
  ret i32 %13, !dbg !238
}

; Function Attrs: nounwind
declare dso_local i32 @sched_setaffinity(i32, i64, %struct.cpu_set_t*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8*, i8**, i32) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "setcpuaffinity.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "_ISupper", value: 256)
!8 = !DIEnumerator(name: "_ISlower", value: 512)
!9 = !DIEnumerator(name: "_ISalpha", value: 1024)
!10 = !DIEnumerator(name: "_ISdigit", value: 2048)
!11 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!12 = !DIEnumerator(name: "_ISspace", value: 8192)
!13 = !DIEnumerator(name: "_ISprint", value: 16384)
!14 = !DIEnumerator(name: "_ISgraph", value: 32768)
!15 = !DIEnumerator(name: "_ISblank", value: 1)
!16 = !DIEnumerator(name: "_IScntrl", value: 2)
!17 = !DIEnumerator(name: "_ISpunct", value: 4)
!18 = !DIEnumerator(name: "_ISalnum", value: 8)
!19 = !{!20, !21, !24, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !22, line: 32, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/cpu-set.h", directory: "")
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{i32 7, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!33 = distinct !DISubprogram(name: "setcpuaffinity", scope: !1, file: !1, line: 73, type: !34, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !{}
!40 = !DILocalVariable(name: "cpulist", arg: 1, scope: !33, file: !1, line: 73, type: !36)
!41 = !DILocation(line: 73, column: 33, scope: !33)
!42 = !DILocalVariable(name: "p", scope: !33, file: !1, line: 74, type: !36)
!43 = !DILocation(line: 74, column: 17, scope: !33)
!44 = !DILocalVariable(name: "q", scope: !33, file: !1, line: 74, type: !36)
!45 = !DILocation(line: 74, column: 21, scope: !33)
!46 = !DILocalVariable(name: "end", scope: !33, file: !1, line: 75, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!48 = !DILocation(line: 75, column: 11, scope: !33)
!49 = !DILocalVariable(name: "cpuset", scope: !33, file: !1, line: 77, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !22, line: 42, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 39, size: 1024, elements: !52)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !51, file: !22, line: 41, baseType: !54, size: 1024)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DILocation(line: 77, column: 15, scope: !33)
!58 = !DILocation(line: 86, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !33, file: !1, line: 86, column: 9)
!60 = !DILocation(line: 86, column: 9, scope: !33)
!61 = !DILocation(line: 87, column: 9, scope: !59)
!62 = !DILocation(line: 90, column: 5, scope: !33)
!63 = !DILocation(line: 95, column: 9, scope: !33)
!64 = !DILocation(line: 95, column: 7, scope: !33)
!65 = !DILocation(line: 96, column: 5, scope: !33)
!66 = !DILocation(line: 96, column: 16, scope: !33)
!67 = !DILocation(line: 96, column: 14, scope: !33)
!68 = !DILocation(line: 96, column: 34, scope: !33)
!69 = !DILocation(line: 96, column: 23, scope: !33)
!70 = !DILocation(line: 96, column: 21, scope: !33)
!71 = !DILocation(line: 96, column: 43, scope: !33)
!72 = !DILocalVariable(name: "a", scope: !73, file: !1, line: 97, type: !25)
!73 = distinct !DILexicalBlock(scope: !33, file: !1, line: 96, column: 46)
!74 = !DILocation(line: 97, column: 13, scope: !73)
!75 = !DILocalVariable(name: "b", scope: !73, file: !1, line: 97, type: !25)
!76 = !DILocation(line: 97, column: 16, scope: !73)
!77 = !DILocalVariable(name: "s", scope: !73, file: !1, line: 97, type: !25)
!78 = !DILocation(line: 97, column: 19, scope: !73)
!79 = !DILocalVariable(name: "c1", scope: !73, file: !1, line: 98, type: !36)
!80 = !DILocation(line: 98, column: 21, scope: !73)
!81 = !DILocalVariable(name: "c2", scope: !73, file: !1, line: 98, type: !36)
!82 = !DILocation(line: 98, column: 26, scope: !73)
!83 = !DILocation(line: 100, column: 22, scope: !84)
!84 = distinct !DILexicalBlock(scope: !73, file: !1, line: 100, column: 13)
!85 = !DILocation(line: 100, column: 13, scope: !84)
!86 = !DILocation(line: 100, column: 35, scope: !84)
!87 = !DILocation(line: 100, column: 13, scope: !73)
!88 = !DILocation(line: 101, column: 13, scope: !84)
!89 = !DILocation(line: 103, column: 13, scope: !73)
!90 = !DILocation(line: 103, column: 11, scope: !73)
!91 = !DILocation(line: 104, column: 11, scope: !73)
!92 = !DILocation(line: 105, column: 13, scope: !73)
!93 = !DILocation(line: 105, column: 11, scope: !73)
!94 = !DILocation(line: 107, column: 25, scope: !73)
!95 = !DILocation(line: 107, column: 14, scope: !73)
!96 = !DILocation(line: 107, column: 12, scope: !73)
!97 = !DILocation(line: 108, column: 25, scope: !73)
!98 = !DILocation(line: 108, column: 14, scope: !73)
!99 = !DILocation(line: 108, column: 12, scope: !73)
!100 = !DILocation(line: 110, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !73, file: !1, line: 110, column: 13)
!102 = !DILocation(line: 110, column: 16, scope: !101)
!103 = !DILocation(line: 110, column: 24, scope: !101)
!104 = !DILocation(line: 110, column: 28, scope: !101)
!105 = !DILocation(line: 110, column: 31, scope: !101)
!106 = !DILocation(line: 110, column: 39, scope: !101)
!107 = !DILocation(line: 110, column: 42, scope: !101)
!108 = !DILocation(line: 110, column: 47, scope: !101)
!109 = !DILocation(line: 110, column: 45, scope: !101)
!110 = !DILocation(line: 110, column: 13, scope: !73)
!111 = !DILocation(line: 111, column: 26, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 111, column: 17)
!113 = distinct !DILexicalBlock(scope: !101, file: !1, line: 110, column: 52)
!114 = !DILocation(line: 111, column: 17, scope: !112)
!115 = !DILocation(line: 111, column: 40, scope: !112)
!116 = !DILocation(line: 111, column: 17, scope: !113)
!117 = !DILocation(line: 112, column: 17, scope: !112)
!118 = !DILocation(line: 114, column: 18, scope: !113)
!119 = !DILocation(line: 114, column: 22, scope: !113)
!120 = !DILocation(line: 114, column: 26, scope: !113)
!121 = !DILocation(line: 114, column: 25, scope: !113)
!122 = !DILocation(line: 114, column: 43, scope: !113)
!123 = !DILocation(line: 114, column: 32, scope: !113)
!124 = !DILocation(line: 114, column: 16, scope: !113)
!125 = !DILocation(line: 115, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !1, line: 115, column: 17)
!127 = !DILocation(line: 115, column: 20, scope: !126)
!128 = !DILocation(line: 115, column: 28, scope: !126)
!129 = !DILocation(line: 115, column: 32, scope: !126)
!130 = !DILocation(line: 115, column: 35, scope: !126)
!131 = !DILocation(line: 115, column: 43, scope: !126)
!132 = !DILocation(line: 115, column: 46, scope: !126)
!133 = !DILocation(line: 115, column: 51, scope: !126)
!134 = !DILocation(line: 115, column: 49, scope: !126)
!135 = !DILocation(line: 115, column: 17, scope: !113)
!136 = !DILocation(line: 116, column: 30, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 116, column: 21)
!138 = distinct !DILexicalBlock(scope: !126, file: !1, line: 115, column: 56)
!139 = !DILocation(line: 116, column: 21, scope: !137)
!140 = !DILocation(line: 116, column: 44, scope: !137)
!141 = !DILocation(line: 116, column: 21, scope: !138)
!142 = !DILocation(line: 117, column: 21, scope: !137)
!143 = !DILocation(line: 119, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !1, line: 119, column: 21)
!145 = !DILocation(line: 119, column: 23, scope: !144)
!146 = !DILocation(line: 119, column: 21, scope: !138)
!147 = !DILocation(line: 120, column: 21, scope: !144)
!148 = !DILocation(line: 121, column: 13, scope: !138)
!149 = !DILocation(line: 122, column: 9, scope: !113)
!150 = !DILocation(line: 124, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !73, file: !1, line: 124, column: 13)
!152 = !DILocation(line: 124, column: 18, scope: !151)
!153 = !DILocation(line: 124, column: 16, scope: !151)
!154 = !DILocation(line: 124, column: 13, scope: !73)
!155 = !DILocation(line: 125, column: 13, scope: !151)
!156 = !DILocation(line: 127, column: 9, scope: !73)
!157 = !DILocation(line: 127, column: 16, scope: !73)
!158 = !DILocation(line: 127, column: 21, scope: !73)
!159 = !DILocation(line: 127, column: 18, scope: !73)
!160 = !DILocalVariable(name: "__cpu", scope: !161, file: !1, line: 129, type: !163)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 129, column: 13)
!162 = distinct !DILexicalBlock(scope: !73, file: !1, line: 127, column: 24)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !23)
!164 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!165 = !DILocation(line: 129, column: 13, scope: !161)
!166 = !DILocation(line: 133, column: 18, scope: !162)
!167 = !DILocation(line: 133, column: 15, scope: !162)
!168 = distinct !{!168, !156, !169, !170}
!169 = !DILocation(line: 134, column: 9, scope: !73)
!170 = !{!"llvm.loop.mustprogress"}
!171 = distinct !{!171, !65, !172, !170}
!172 = !DILocation(line: 135, column: 5, scope: !33)
!173 = !DILocation(line: 137, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !33, file: !1, line: 137, column: 9)
!175 = !DILocation(line: 137, column: 13, scope: !174)
!176 = !DILocation(line: 137, column: 17, scope: !174)
!177 = !DILocation(line: 137, column: 16, scope: !174)
!178 = !DILocation(line: 137, column: 9, scope: !33)
!179 = !DILocation(line: 138, column: 9, scope: !174)
!180 = !DILocation(line: 141, column: 5, scope: !33)
!181 = !DILocation(line: 153, column: 1, scope: !33)
!182 = distinct !DISubprogram(name: "next_token", scope: !1, file: !1, line: 50, type: !183, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!183 = !DISubroutineType(types: !184)
!184 = !{!36, !36, !25}
!185 = !DILocalVariable(name: "q", arg: 1, scope: !182, file: !1, line: 50, type: !36)
!186 = !DILocation(line: 50, column: 43, scope: !182)
!187 = !DILocalVariable(name: "sep", arg: 2, scope: !182, file: !1, line: 50, type: !25)
!188 = !DILocation(line: 50, column: 51, scope: !182)
!189 = !DILocation(line: 51, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !1, line: 51, column: 9)
!191 = !DILocation(line: 51, column: 9, scope: !182)
!192 = !DILocation(line: 52, column: 20, scope: !190)
!193 = !DILocation(line: 52, column: 23, scope: !190)
!194 = !DILocation(line: 52, column: 13, scope: !190)
!195 = !DILocation(line: 52, column: 11, scope: !190)
!196 = !DILocation(line: 52, column: 9, scope: !190)
!197 = !DILocation(line: 53, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !182, file: !1, line: 53, column: 9)
!199 = !DILocation(line: 53, column: 9, scope: !182)
!200 = !DILocation(line: 54, column: 10, scope: !198)
!201 = !DILocation(line: 54, column: 9, scope: !198)
!202 = !DILocation(line: 56, column: 12, scope: !182)
!203 = !DILocation(line: 56, column: 5, scope: !182)
!204 = distinct !DISubprogram(name: "next_num", scope: !1, file: !1, line: 59, type: !205, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!205 = !DISubroutineType(types: !206)
!206 = !{!25, !36, !207, !208}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!209 = !DILocalVariable(name: "str", arg: 1, scope: !204, file: !1, line: 59, type: !36)
!210 = !DILocation(line: 59, column: 33, scope: !204)
!211 = !DILocalVariable(name: "end", arg: 2, scope: !204, file: !1, line: 59, type: !207)
!212 = !DILocation(line: 59, column: 45, scope: !204)
!213 = !DILocalVariable(name: "result", arg: 3, scope: !204, file: !1, line: 59, type: !208)
!214 = !DILocation(line: 59, column: 55, scope: !204)
!215 = !DILocation(line: 60, column: 10, scope: !216)
!216 = distinct !DILexicalBlock(scope: !204, file: !1, line: 60, column: 9)
!217 = !DILocation(line: 60, column: 14, scope: !216)
!218 = !DILocation(line: 60, column: 18, scope: !216)
!219 = !DILocation(line: 60, column: 17, scope: !216)
!220 = !DILocation(line: 60, column: 22, scope: !216)
!221 = !DILocation(line: 60, column: 30, scope: !216)
!222 = !DILocation(line: 60, column: 34, scope: !216)
!223 = !DILocation(line: 60, column: 9, scope: !204)
!224 = !DILocation(line: 61, column: 9, scope: !216)
!225 = !DILocation(line: 63, column: 23, scope: !204)
!226 = !DILocation(line: 63, column: 28, scope: !204)
!227 = !DILocation(line: 63, column: 15, scope: !204)
!228 = !DILocation(line: 63, column: 6, scope: !204)
!229 = !DILocation(line: 63, column: 13, scope: !204)
!230 = !DILocation(line: 64, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !204, file: !1, line: 64, column: 9)
!232 = !DILocation(line: 64, column: 17, scope: !231)
!233 = !DILocation(line: 64, column: 16, scope: !231)
!234 = !DILocation(line: 64, column: 13, scope: !231)
!235 = !DILocation(line: 64, column: 9, scope: !204)
!236 = !DILocation(line: 65, column: 9, scope: !231)
!237 = !DILocation(line: 67, column: 5, scope: !204)
!238 = !DILocation(line: 68, column: 1, scope: !204)
