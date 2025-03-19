; ModuleID = 'setproctitle.c'
source_filename = "setproctitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, i8*, i8, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@environ = external dso_local global i8**, align 8
@SPT = internal global %struct.anon zeroinitializer, align 8, !dbg !0
@program_invocation_name = external dso_local global i8*, align 8
@program_invocation_short_name = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @spt_clearenv() #0 !dbg !26 {
entry:
  %call = call i32 @clearenv() #8, !dbg !29
  ret i32 %call, !dbg !30
}

; Function Attrs: nounwind
declare dso_local i32 @clearenv() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @spt_init(i32 %argc, i8** %argv) #0 !dbg !31 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %envp = alloca i8**, align 8
  %base = alloca i8*, align 8
  %end = alloca i8*, align 8
  %nul = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %envc = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i8*** %envp, metadata !39, metadata !DIExpression()), !dbg !40
  %0 = load i8**, i8*** @environ, align 8, !dbg !41
  store i8** %0, i8*** %envp, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i8** %base, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i8** %end, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i8** %nul, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !48, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %error, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %envc, metadata !54, metadata !DIExpression()), !dbg !55
  %1 = load i8**, i8*** %argv.addr, align 8, !dbg !56
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !56
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !56
  store i8* %2, i8** %base, align 8, !dbg !58
  %tobool = icmp ne i8* %2, null, !dbg !58
  br i1 %tobool, label %if.end, label %if.then, !dbg !59

if.then:                                          ; preds = %entry
  br label %return, !dbg !60

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %base, align 8, !dbg !61
  %4 = load i8*, i8** %base, align 8, !dbg !62
  %call = call i64 @strlen(i8* %4) #9, !dbg !63
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 %call, !dbg !61
  store i8* %arrayidx1, i8** %nul, align 8, !dbg !64
  %5 = load i8*, i8** %nul, align 8, !dbg !65
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !66
  store i8* %add.ptr, i8** %end, align 8, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !71
  %7 = load i32, i32* %argc.addr, align 4, !dbg !73
  %cmp = icmp slt i32 %6, %7, !dbg !74
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !75

lor.rhs:                                          ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !76
  %9 = load i32, i32* %argc.addr, align 4, !dbg !77
  %cmp2 = icmp sge i32 %8, %9, !dbg !78
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !79

land.rhs:                                         ; preds = %lor.rhs
  %10 = load i8**, i8*** %argv.addr, align 8, !dbg !80
  %11 = load i32, i32* %i, align 4, !dbg !81
  %idxprom = sext i32 %11 to i64, !dbg !80
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 %idxprom, !dbg !80
  %12 = load i8*, i8** %arrayidx3, align 8, !dbg !80
  %tobool4 = icmp ne i8* %12, null, !dbg !79
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %13 = phi i1 [ false, %lor.rhs ], [ %tobool4, %land.rhs ], !dbg !82
  br label %lor.end, !dbg !75

lor.end:                                          ; preds = %land.end, %for.cond
  %14 = phi i1 [ true, %for.cond ], [ %13, %land.end ]
  br i1 %14, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %lor.end
  %15 = load i8**, i8*** %argv.addr, align 8, !dbg !84
  %16 = load i32, i32* %i, align 4, !dbg !87
  %idxprom5 = sext i32 %16 to i64, !dbg !84
  %arrayidx6 = getelementptr inbounds i8*, i8** %15, i64 %idxprom5, !dbg !84
  %17 = load i8*, i8** %arrayidx6, align 8, !dbg !84
  %tobool7 = icmp ne i8* %17, null, !dbg !84
  br i1 %tobool7, label %lor.lhs.false, label %if.then11, !dbg !88

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i8**, i8*** %argv.addr, align 8, !dbg !89
  %19 = load i32, i32* %i, align 4, !dbg !90
  %idxprom8 = sext i32 %19 to i64, !dbg !89
  %arrayidx9 = getelementptr inbounds i8*, i8** %18, i64 %idxprom8, !dbg !89
  %20 = load i8*, i8** %arrayidx9, align 8, !dbg !89
  %21 = load i8*, i8** %end, align 8, !dbg !91
  %cmp10 = icmp ult i8* %20, %21, !dbg !92
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !93

if.then11:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !94

if.end12:                                         ; preds = %lor.lhs.false
  %22 = load i8*, i8** %end, align 8, !dbg !95
  %23 = load i8**, i8*** %argv.addr, align 8, !dbg !97
  %24 = load i32, i32* %i, align 4, !dbg !98
  %idxprom13 = sext i32 %24 to i64, !dbg !97
  %arrayidx14 = getelementptr inbounds i8*, i8** %23, i64 %idxprom13, !dbg !97
  %25 = load i8*, i8** %arrayidx14, align 8, !dbg !97
  %cmp15 = icmp uge i8* %22, %25, !dbg !99
  br i1 %cmp15, label %land.lhs.true, label %if.end31, !dbg !100

land.lhs.true:                                    ; preds = %if.end12
  %26 = load i8*, i8** %end, align 8, !dbg !101
  %27 = load i8**, i8*** %argv.addr, align 8, !dbg !102
  %28 = load i32, i32* %i, align 4, !dbg !103
  %idxprom16 = sext i32 %28 to i64, !dbg !102
  %arrayidx17 = getelementptr inbounds i8*, i8** %27, i64 %idxprom16, !dbg !102
  %29 = load i8*, i8** %arrayidx17, align 8, !dbg !102
  %30 = load i8**, i8*** %argv.addr, align 8, !dbg !104
  %31 = load i32, i32* %i, align 4, !dbg !105
  %idxprom18 = sext i32 %31 to i64, !dbg !104
  %arrayidx19 = getelementptr inbounds i8*, i8** %30, i64 %idxprom18, !dbg !104
  %32 = load i8*, i8** %arrayidx19, align 8, !dbg !104
  %call20 = call i64 @strlen(i8* %32) #9, !dbg !106
  %add.ptr21 = getelementptr inbounds i8, i8* %29, i64 %call20, !dbg !107
  %cmp22 = icmp ule i8* %26, %add.ptr21, !dbg !108
  br i1 %cmp22, label %if.then23, label %if.end31, !dbg !109

if.then23:                                        ; preds = %land.lhs.true
  %33 = load i8**, i8*** %argv.addr, align 8, !dbg !110
  %34 = load i32, i32* %i, align 4, !dbg !111
  %idxprom24 = sext i32 %34 to i64, !dbg !110
  %arrayidx25 = getelementptr inbounds i8*, i8** %33, i64 %idxprom24, !dbg !110
  %35 = load i8*, i8** %arrayidx25, align 8, !dbg !110
  %36 = load i8**, i8*** %argv.addr, align 8, !dbg !112
  %37 = load i32, i32* %i, align 4, !dbg !113
  %idxprom26 = sext i32 %37 to i64, !dbg !112
  %arrayidx27 = getelementptr inbounds i8*, i8** %36, i64 %idxprom26, !dbg !112
  %38 = load i8*, i8** %arrayidx27, align 8, !dbg !112
  %call28 = call i64 @strlen(i8* %38) #9, !dbg !114
  %add.ptr29 = getelementptr inbounds i8, i8* %35, i64 %call28, !dbg !115
  %add.ptr30 = getelementptr inbounds i8, i8* %add.ptr29, i64 1, !dbg !116
  store i8* %add.ptr30, i8** %end, align 8, !dbg !117
  br label %if.end31, !dbg !118

if.end31:                                         ; preds = %if.then23, %land.lhs.true, %if.end12
  br label %for.inc, !dbg !119

for.inc:                                          ; preds = %if.end31, %if.then11
  %39 = load i32, i32* %i, align 4, !dbg !120
  %inc = add nsw i32 %39, 1, !dbg !120
  store i32 %inc, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !121, !llvm.loop !122

for.end:                                          ; preds = %lor.end
  store i32 0, i32* %i, align 4, !dbg !125
  br label %for.cond32, !dbg !127

for.cond32:                                       ; preds = %for.inc62, %for.end
  %40 = load i8**, i8*** %envp, align 8, !dbg !128
  %41 = load i32, i32* %i, align 4, !dbg !130
  %idxprom33 = sext i32 %41 to i64, !dbg !128
  %arrayidx34 = getelementptr inbounds i8*, i8** %40, i64 %idxprom33, !dbg !128
  %42 = load i8*, i8** %arrayidx34, align 8, !dbg !128
  %tobool35 = icmp ne i8* %42, null, !dbg !131
  br i1 %tobool35, label %for.body36, label %for.end64, !dbg !131

for.body36:                                       ; preds = %for.cond32
  %43 = load i8**, i8*** %envp, align 8, !dbg !132
  %44 = load i32, i32* %i, align 4, !dbg !135
  %idxprom37 = sext i32 %44 to i64, !dbg !132
  %arrayidx38 = getelementptr inbounds i8*, i8** %43, i64 %idxprom37, !dbg !132
  %45 = load i8*, i8** %arrayidx38, align 8, !dbg !132
  %46 = load i8*, i8** %end, align 8, !dbg !136
  %cmp39 = icmp ult i8* %45, %46, !dbg !137
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !138

if.then40:                                        ; preds = %for.body36
  br label %for.inc62, !dbg !139

if.end41:                                         ; preds = %for.body36
  %47 = load i8*, i8** %end, align 8, !dbg !140
  %48 = load i8**, i8*** %envp, align 8, !dbg !142
  %49 = load i32, i32* %i, align 4, !dbg !143
  %idxprom42 = sext i32 %49 to i64, !dbg !142
  %arrayidx43 = getelementptr inbounds i8*, i8** %48, i64 %idxprom42, !dbg !142
  %50 = load i8*, i8** %arrayidx43, align 8, !dbg !142
  %cmp44 = icmp uge i8* %47, %50, !dbg !144
  br i1 %cmp44, label %land.lhs.true45, label %if.end61, !dbg !145

land.lhs.true45:                                  ; preds = %if.end41
  %51 = load i8*, i8** %end, align 8, !dbg !146
  %52 = load i8**, i8*** %envp, align 8, !dbg !147
  %53 = load i32, i32* %i, align 4, !dbg !148
  %idxprom46 = sext i32 %53 to i64, !dbg !147
  %arrayidx47 = getelementptr inbounds i8*, i8** %52, i64 %idxprom46, !dbg !147
  %54 = load i8*, i8** %arrayidx47, align 8, !dbg !147
  %55 = load i8**, i8*** %envp, align 8, !dbg !149
  %56 = load i32, i32* %i, align 4, !dbg !150
  %idxprom48 = sext i32 %56 to i64, !dbg !149
  %arrayidx49 = getelementptr inbounds i8*, i8** %55, i64 %idxprom48, !dbg !149
  %57 = load i8*, i8** %arrayidx49, align 8, !dbg !149
  %call50 = call i64 @strlen(i8* %57) #9, !dbg !151
  %add.ptr51 = getelementptr inbounds i8, i8* %54, i64 %call50, !dbg !152
  %cmp52 = icmp ule i8* %51, %add.ptr51, !dbg !153
  br i1 %cmp52, label %if.then53, label %if.end61, !dbg !154

if.then53:                                        ; preds = %land.lhs.true45
  %58 = load i8**, i8*** %envp, align 8, !dbg !155
  %59 = load i32, i32* %i, align 4, !dbg !156
  %idxprom54 = sext i32 %59 to i64, !dbg !155
  %arrayidx55 = getelementptr inbounds i8*, i8** %58, i64 %idxprom54, !dbg !155
  %60 = load i8*, i8** %arrayidx55, align 8, !dbg !155
  %61 = load i8**, i8*** %envp, align 8, !dbg !157
  %62 = load i32, i32* %i, align 4, !dbg !158
  %idxprom56 = sext i32 %62 to i64, !dbg !157
  %arrayidx57 = getelementptr inbounds i8*, i8** %61, i64 %idxprom56, !dbg !157
  %63 = load i8*, i8** %arrayidx57, align 8, !dbg !157
  %call58 = call i64 @strlen(i8* %63) #9, !dbg !159
  %add.ptr59 = getelementptr inbounds i8, i8* %60, i64 %call58, !dbg !160
  %add.ptr60 = getelementptr inbounds i8, i8* %add.ptr59, i64 1, !dbg !161
  store i8* %add.ptr60, i8** %end, align 8, !dbg !162
  br label %if.end61, !dbg !163

if.end61:                                         ; preds = %if.then53, %land.lhs.true45, %if.end41
  br label %for.inc62, !dbg !164

for.inc62:                                        ; preds = %if.end61, %if.then40
  %64 = load i32, i32* %i, align 4, !dbg !165
  %inc63 = add nsw i32 %64, 1, !dbg !165
  store i32 %inc63, i32* %i, align 4, !dbg !165
  br label %for.cond32, !dbg !166, !llvm.loop !167

for.end64:                                        ; preds = %for.cond32
  %65 = load i32, i32* %i, align 4, !dbg !169
  store i32 %65, i32* %envc, align 4, !dbg !170
  %66 = load i8**, i8*** %argv.addr, align 8, !dbg !171
  %arrayidx65 = getelementptr inbounds i8*, i8** %66, i64 0, !dbg !171
  %67 = load i8*, i8** %arrayidx65, align 8, !dbg !171
  %call66 = call noalias i8* @strdup(i8* %67) #8, !dbg !173
  store i8* %call66, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 0), align 8, !dbg !174
  %tobool67 = icmp ne i8* %call66, null, !dbg !174
  br i1 %tobool67, label %if.end69, label %if.then68, !dbg !175

if.then68:                                        ; preds = %for.end64
  br label %syerr, !dbg !176

if.end69:                                         ; preds = %for.end64
  %68 = load i8*, i8** @program_invocation_name, align 8, !dbg !177
  %call70 = call noalias i8* @strdup(i8* %68) #8, !dbg !179
  store i8* %call70, i8** %tmp, align 8, !dbg !180
  %tobool71 = icmp ne i8* %call70, null, !dbg !180
  br i1 %tobool71, label %if.end73, label %if.then72, !dbg !181

if.then72:                                        ; preds = %if.end69
  br label %syerr, !dbg !182

if.end73:                                         ; preds = %if.end69
  %69 = load i8*, i8** %tmp, align 8, !dbg !183
  store i8* %69, i8** @program_invocation_name, align 8, !dbg !184
  %70 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !185
  %call74 = call noalias i8* @strdup(i8* %70) #8, !dbg !187
  store i8* %call74, i8** %tmp, align 8, !dbg !188
  %tobool75 = icmp ne i8* %call74, null, !dbg !188
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !189

if.then76:                                        ; preds = %if.end73
  br label %syerr, !dbg !190

if.end77:                                         ; preds = %if.end73
  %71 = load i8*, i8** %tmp, align 8, !dbg !191
  store i8* %71, i8** @program_invocation_short_name, align 8, !dbg !192
  %72 = load i32, i32* %envc, align 4, !dbg !193
  %73 = load i8**, i8*** %envp, align 8, !dbg !195
  %call78 = call i32 @spt_copyenv(i32 %72, i8** %73), !dbg !196
  store i32 %call78, i32* %error, align 4, !dbg !197
  %tobool79 = icmp ne i32 %call78, 0, !dbg !197
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !198

if.then80:                                        ; preds = %if.end77
  br label %error87, !dbg !199

if.end81:                                         ; preds = %if.end77
  %74 = load i32, i32* %argc.addr, align 4, !dbg !200
  %75 = load i8**, i8*** %argv.addr, align 8, !dbg !202
  %call82 = call i32 @spt_copyargs(i32 %74, i8** %75), !dbg !203
  store i32 %call82, i32* %error, align 4, !dbg !204
  %tobool83 = icmp ne i32 %call82, 0, !dbg !204
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !205

if.then84:                                        ; preds = %if.end81
  br label %error87, !dbg !206

if.end85:                                         ; preds = %if.end81
  %76 = load i8*, i8** %nul, align 8, !dbg !207
  store i8* %76, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 3), align 8, !dbg !208
  %77 = load i8*, i8** %base, align 8, !dbg !209
  store i8* %77, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !210
  %78 = load i8*, i8** %end, align 8, !dbg !211
  store i8* %78, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 2), align 8, !dbg !212
  br label %return, !dbg !213

syerr:                                            ; preds = %if.then76, %if.then72, %if.then68
  call void @llvm.dbg.label(metadata !214), !dbg !215
  %call86 = call i32* @__errno_location() #10, !dbg !216
  %79 = load i32, i32* %call86, align 4, !dbg !216
  store i32 %79, i32* %error, align 4, !dbg !217
  br label %error87, !dbg !218

error87:                                          ; preds = %syerr, %if.then84, %if.then80
  call void @llvm.dbg.label(metadata !219), !dbg !220
  %80 = load i32, i32* %error, align 4, !dbg !221
  store i32 %80, i32* getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 5), align 4, !dbg !222
  br label %return, !dbg !223

return:                                           ; preds = %error87, %if.end85, %if.then
  ret void, !dbg !223
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @spt_copyenv(i32 %envc, i8** %oldenv) #0 !dbg !224 {
entry:
  %retval = alloca i32, align 4
  %envc.addr = alloca i32, align 4
  %oldenv.addr = alloca i8**, align 8
  %envcopy = alloca i8**, align 8
  %eq = alloca i8*, align 8
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %envsize = alloca i32, align 4
  store i32 %envc, i32* %envc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %envc.addr, metadata !227, metadata !DIExpression()), !dbg !228
  store i8** %oldenv, i8*** %oldenv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %oldenv.addr, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i8*** %envcopy, metadata !231, metadata !DIExpression()), !dbg !232
  store i8** null, i8*** %envcopy, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata i8** %eq, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %i, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %error, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %envsize, metadata !239, metadata !DIExpression()), !dbg !240
  %0 = load i8**, i8*** @environ, align 8, !dbg !241
  %1 = load i8**, i8*** %oldenv.addr, align 8, !dbg !243
  %cmp = icmp ne i8** %0, %1, !dbg !244
  br i1 %cmp, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !246
  br label %return, !dbg !246

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %envc.addr, align 4, !dbg !247
  %add = add nsw i32 %2, 1, !dbg !248
  %conv = sext i32 %add to i64, !dbg !249
  %mul = mul i64 %conv, 8, !dbg !250
  %conv1 = trunc i64 %mul to i32, !dbg !249
  store i32 %conv1, i32* %envsize, align 4, !dbg !251
  %3 = load i32, i32* %envsize, align 4, !dbg !252
  %conv2 = sext i32 %3 to i64, !dbg !252
  %call = call noalias align 16 i8* @malloc(i64 %conv2) #8, !dbg !253
  %4 = bitcast i8* %call to i8**, !dbg !253
  store i8** %4, i8*** %envcopy, align 8, !dbg !254
  %5 = load i8**, i8*** %envcopy, align 8, !dbg !255
  %tobool = icmp ne i8** %5, null, !dbg !255
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !257

if.then3:                                         ; preds = %if.end
  store i32 12, i32* %retval, align 4, !dbg !258
  br label %return, !dbg !258

if.end4:                                          ; preds = %if.end
  %6 = load i8**, i8*** %envcopy, align 8, !dbg !259
  %7 = bitcast i8** %6 to i8*, !dbg !260
  %8 = load i8**, i8*** %oldenv.addr, align 8, !dbg !261
  %9 = bitcast i8** %8 to i8*, !dbg !260
  %10 = load i32, i32* %envsize, align 4, !dbg !262
  %conv5 = sext i32 %10 to i64, !dbg !262
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %9, i64 %conv5, i1 false), !dbg !260
  %call6 = call i32 @spt_clearenv(), !dbg !263
  store i32 %call6, i32* %error, align 4, !dbg !265
  %tobool7 = icmp ne i32 %call6, 0, !dbg !265
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !266

if.then8:                                         ; preds = %if.end4
  %11 = load i8**, i8*** %oldenv.addr, align 8, !dbg !267
  store i8** %11, i8*** @environ, align 8, !dbg !269
  %12 = load i8**, i8*** %envcopy, align 8, !dbg !270
  %13 = bitcast i8** %12 to i8*, !dbg !270
  call void @free(i8* %13) #8, !dbg !271
  %14 = load i32, i32* %error, align 4, !dbg !272
  store i32 %14, i32* %retval, align 4, !dbg !273
  br label %return, !dbg !273

if.end9:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %if.end9
  %15 = load i8**, i8*** %envcopy, align 8, !dbg !277
  %16 = load i32, i32* %i, align 4, !dbg !279
  %idxprom = sext i32 %16 to i64, !dbg !277
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom, !dbg !277
  %17 = load i8*, i8** %arrayidx, align 8, !dbg !277
  %tobool10 = icmp ne i8* %17, null, !dbg !280
  br i1 %tobool10, label %for.body, label %for.end, !dbg !280

for.body:                                         ; preds = %for.cond
  %18 = load i8**, i8*** %envcopy, align 8, !dbg !281
  %19 = load i32, i32* %i, align 4, !dbg !284
  %idxprom11 = sext i32 %19 to i64, !dbg !281
  %arrayidx12 = getelementptr inbounds i8*, i8** %18, i64 %idxprom11, !dbg !281
  %20 = load i8*, i8** %arrayidx12, align 8, !dbg !281
  %call13 = call i8* @strchr(i8* %20, i32 61) #9, !dbg !285
  store i8* %call13, i8** %eq, align 8, !dbg !286
  %tobool14 = icmp ne i8* %call13, null, !dbg !286
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !287

if.then15:                                        ; preds = %for.body
  br label %for.inc, !dbg !288

if.end16:                                         ; preds = %for.body
  %21 = load i8*, i8** %eq, align 8, !dbg !289
  store i8 0, i8* %21, align 1, !dbg !290
  %22 = load i8**, i8*** %envcopy, align 8, !dbg !291
  %23 = load i32, i32* %i, align 4, !dbg !292
  %idxprom17 = sext i32 %23 to i64, !dbg !291
  %arrayidx18 = getelementptr inbounds i8*, i8** %22, i64 %idxprom17, !dbg !291
  %24 = load i8*, i8** %arrayidx18, align 8, !dbg !291
  %25 = load i8*, i8** %eq, align 8, !dbg !293
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 1, !dbg !294
  %call19 = call i32 @setenv(i8* %24, i8* %add.ptr, i32 1) #8, !dbg !295
  %cmp20 = icmp ne i32 0, %call19, !dbg !296
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !297

cond.true:                                        ; preds = %if.end16
  %call22 = call i32* @__errno_location() #10, !dbg !298
  %26 = load i32, i32* %call22, align 4, !dbg !298
  br label %cond.end, !dbg !297

cond.false:                                       ; preds = %if.end16
  br label %cond.end, !dbg !297

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ 0, %cond.false ], !dbg !297
  store i32 %cond, i32* %error, align 4, !dbg !299
  %27 = load i8*, i8** %eq, align 8, !dbg !300
  store i8 61, i8* %27, align 1, !dbg !301
  %28 = load i32, i32* %error, align 4, !dbg !302
  %tobool23 = icmp ne i32 %28, 0, !dbg !302
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !304

if.then24:                                        ; preds = %cond.end
  %29 = load i8**, i8*** %envcopy, align 8, !dbg !305
  store i8** %29, i8*** @environ, align 8, !dbg !307
  %30 = load i32, i32* %error, align 4, !dbg !308
  store i32 %30, i32* %retval, align 4, !dbg !309
  br label %return, !dbg !309

if.end25:                                         ; preds = %cond.end
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %if.end25, %if.then15
  %31 = load i32, i32* %i, align 4, !dbg !311
  %inc = add nsw i32 %31, 1, !dbg !311
  store i32 %inc, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond
  %32 = load i8**, i8*** %envcopy, align 8, !dbg !315
  %33 = bitcast i8** %32 to i8*, !dbg !315
  call void @free(i8* %33) #8, !dbg !316
  store i32 0, i32* %retval, align 4, !dbg !317
  br label %return, !dbg !317

return:                                           ; preds = %for.end, %if.then24, %if.then8, %if.then3, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !318
  ret i32 %34, !dbg !318
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @spt_copyargs(i32 %argc, i8** %argv) #0 !dbg !319 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tmp = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !320, metadata !DIExpression()), !dbg !321
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata i32* %i, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 1, i32* %i, align 4, !dbg !328
  br label %for.cond, !dbg !330

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !331
  %1 = load i32, i32* %argc.addr, align 4, !dbg !333
  %cmp = icmp slt i32 %0, %1, !dbg !334
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !335

lor.rhs:                                          ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !336
  %3 = load i32, i32* %argc.addr, align 4, !dbg !337
  %cmp1 = icmp sge i32 %2, %3, !dbg !338
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !339

land.rhs:                                         ; preds = %lor.rhs
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !340
  %5 = load i32, i32* %i, align 4, !dbg !341
  %idxprom = sext i32 %5 to i64, !dbg !340
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom, !dbg !340
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !340
  %tobool = icmp ne i8* %6, null, !dbg !339
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ], !dbg !342
  br label %lor.end, !dbg !335

lor.end:                                          ; preds = %land.end, %for.cond
  %8 = phi i1 [ true, %for.cond ], [ %7, %land.end ]
  br i1 %8, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %lor.end
  %9 = load i8**, i8*** %argv.addr, align 8, !dbg !344
  %10 = load i32, i32* %i, align 4, !dbg !347
  %idxprom2 = sext i32 %10 to i64, !dbg !344
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2, !dbg !344
  %11 = load i8*, i8** %arrayidx3, align 8, !dbg !344
  %tobool4 = icmp ne i8* %11, null, !dbg !344
  br i1 %tobool4, label %if.end, label %if.then, !dbg !348

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !349

if.end:                                           ; preds = %for.body
  %12 = load i8**, i8*** %argv.addr, align 8, !dbg !350
  %13 = load i32, i32* %i, align 4, !dbg !352
  %idxprom5 = sext i32 %13 to i64, !dbg !350
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 %idxprom5, !dbg !350
  %14 = load i8*, i8** %arrayidx6, align 8, !dbg !350
  %call = call noalias i8* @strdup(i8* %14) #8, !dbg !353
  store i8* %call, i8** %tmp, align 8, !dbg !354
  %tobool7 = icmp ne i8* %call, null, !dbg !354
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !355

if.then8:                                         ; preds = %if.end
  %call9 = call i32* @__errno_location() #10, !dbg !356
  %15 = load i32, i32* %call9, align 4, !dbg !356
  store i32 %15, i32* %retval, align 4, !dbg !357
  br label %return, !dbg !357

if.end10:                                         ; preds = %if.end
  %16 = load i8*, i8** %tmp, align 8, !dbg !358
  %17 = load i8**, i8*** %argv.addr, align 8, !dbg !359
  %18 = load i32, i32* %i, align 4, !dbg !360
  %idxprom11 = sext i32 %18 to i64, !dbg !359
  %arrayidx12 = getelementptr inbounds i8*, i8** %17, i64 %idxprom11, !dbg !359
  store i8* %16, i8** %arrayidx12, align 8, !dbg !361
  br label %for.inc, !dbg !362

for.inc:                                          ; preds = %if.end10, %if.then
  %19 = load i32, i32* %i, align 4, !dbg !363
  %inc = add nsw i32 %19, 1, !dbg !363
  store i32 %inc, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %lor.end
  store i32 0, i32* %retval, align 4, !dbg !367
  br label %return, !dbg !367

return:                                           ; preds = %for.end, %if.then8
  %20 = load i32, i32* %retval, align 4, !dbg !368
  ret i32 %20, !dbg !368
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @setproctitle(i8* %fmt, ...) #0 !dbg !369 {
entry:
  %fmt.addr = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %nul = alloca i8*, align 8
  %len = alloca i32, align 4
  %error = alloca i32, align 4
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata [256 x i8]* %buf, metadata !374, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !379, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata i8** %nul, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %len, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %error, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !403
  %tobool = icmp ne i8* %0, null, !dbg !405
  br i1 %tobool, label %if.end, label %if.then, !dbg !406

if.then:                                          ; preds = %entry
  br label %return, !dbg !407

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %fmt.addr, align 8, !dbg !408
  %tobool1 = icmp ne i8* %1, null, !dbg !408
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !410

if.then2:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !411
  %arraydecay3 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !411
  call void @llvm.va_start(i8* %arraydecay3), !dbg !411
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !413
  %2 = load i8*, i8** %fmt.addr, align 8, !dbg !414
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !415
  %call = call i32 @vsnprintf(i8* %arraydecay4, i64 256, i8* %2, %struct.__va_list_tag* %arraydecay5) #8, !dbg !416
  store i32 %call, i32* %len, align 4, !dbg !417
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !418
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*, !dbg !418
  call void @llvm.va_end(i8* %arraydecay67), !dbg !418
  br label %if.end10, !dbg !419

if.else:                                          ; preds = %if.end
  %arraydecay8 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !420
  %3 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 0), align 8, !dbg !422
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay8, i64 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %3) #8, !dbg !423
  store i32 %call9, i32* %len, align 4, !dbg !424
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %4 = load i32, i32* %len, align 4, !dbg !425
  %cmp = icmp sle i32 %4, 0, !dbg !427
  br i1 %cmp, label %if.then11, label %if.end13, !dbg !428

if.then11:                                        ; preds = %if.end10
  %call12 = call i32* @__errno_location() #10, !dbg !429
  %5 = load i32, i32* %call12, align 4, !dbg !429
  store i32 %5, i32* %error, align 4, !dbg !431
  br label %error42, !dbg !432

if.end13:                                         ; preds = %if.end10
  %6 = load i8, i8* getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 4), align 8, !dbg !433
  %tobool14 = trunc i8 %6 to i1, !dbg !433
  br i1 %tobool14, label %if.else16, label %if.then15, !dbg !435

if.then15:                                        ; preds = %if.end13
  %7 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !436
  %8 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 2), align 8, !dbg !438
  %9 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !439
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64, !dbg !440
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64, !dbg !440
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !440
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 %sub.ptr.sub, i1 false), !dbg !441
  store i8 1, i8* getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 4), align 8, !dbg !442
  br label %if.end21, !dbg !443

if.else16:                                        ; preds = %if.end13
  %10 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !444
  %11 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 2), align 8, !dbg !446
  %12 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !447
  %sub.ptr.lhs.cast17 = ptrtoint i8* %11 to i64, !dbg !448
  %sub.ptr.rhs.cast18 = ptrtoint i8* %12 to i64, !dbg !448
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18, !dbg !448
  %call20 = call i64 @spt_min(i64 256, i64 %sub.ptr.sub19), !dbg !449
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 %call20, i1 false), !dbg !450
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then15
  %13 = load i32, i32* %len, align 4, !dbg !451
  %conv = sext i32 %13 to i64, !dbg !451
  %14 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 2), align 8, !dbg !452
  %15 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !453
  %sub.ptr.lhs.cast22 = ptrtoint i8* %14 to i64, !dbg !454
  %sub.ptr.rhs.cast23 = ptrtoint i8* %15 to i64, !dbg !454
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23, !dbg !454
  %call25 = call i64 @spt_min(i64 256, i64 %sub.ptr.sub24), !dbg !455
  %sub = sub i64 %call25, 1, !dbg !456
  %call26 = call i64 @spt_min(i64 %conv, i64 %sub), !dbg !457
  %conv27 = trunc i64 %call26 to i32, !dbg !457
  store i32 %conv27, i32* %len, align 4, !dbg !458
  %16 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !459
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i64 0, i64 0, !dbg !460
  %17 = load i32, i32* %len, align 4, !dbg !461
  %conv29 = sext i32 %17 to i64, !dbg !461
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 16 %arraydecay28, i64 %conv29, i1 false), !dbg !460
  %18 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 1), align 8, !dbg !462
  %19 = load i32, i32* %len, align 4, !dbg !463
  %idxprom = sext i32 %19 to i64, !dbg !464
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom, !dbg !464
  store i8* %arrayidx, i8** %nul, align 8, !dbg !465
  %20 = load i8*, i8** %nul, align 8, !dbg !466
  %21 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 3), align 8, !dbg !468
  %cmp30 = icmp ult i8* %20, %21, !dbg !469
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !470

if.then32:                                        ; preds = %if.end21
  %22 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 3), align 8, !dbg !471
  store i8 46, i8* %22, align 1, !dbg !473
  br label %if.end41, !dbg !474

if.else33:                                        ; preds = %if.end21
  %23 = load i8*, i8** %nul, align 8, !dbg !475
  %24 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 3), align 8, !dbg !477
  %cmp34 = icmp eq i8* %23, %24, !dbg !478
  br i1 %cmp34, label %land.lhs.true, label %if.end40, !dbg !479

land.lhs.true:                                    ; preds = %if.else33
  %25 = load i8*, i8** %nul, align 8, !dbg !480
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !480
  %26 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 2), align 8, !dbg !481
  %cmp37 = icmp ult i8* %arrayidx36, %26, !dbg !482
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !483

if.then39:                                        ; preds = %land.lhs.true
  %27 = load i8*, i8** getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 3), align 8, !dbg !484
  store i8 32, i8* %27, align 1, !dbg !486
  %28 = load i8*, i8** %nul, align 8, !dbg !487
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1, !dbg !487
  store i8* %incdec.ptr, i8** %nul, align 8, !dbg !487
  store i8 0, i8* %incdec.ptr, align 1, !dbg !488
  br label %if.end40, !dbg !489

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %if.else33
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then32
  br label %return, !dbg !490

error42:                                          ; preds = %if.then11
  call void @llvm.dbg.label(metadata !491), !dbg !492
  %29 = load i32, i32* %error, align 4, !dbg !493
  store i32 %29, i32* getelementptr inbounds (%struct.anon, %struct.anon* @SPT, i32 0, i32 5), align 4, !dbg !494
  br label %return, !dbg !495

return:                                           ; preds = %error42, %if.end41, %if.then
  ret void, !dbg !495
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define internal i64 @spt_min(i64 %a, i64 %b) #0 !dbg !496 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i64, i64* %a.addr, align 8, !dbg !506
  %1 = load i64, i64* %b.addr, align 8, !dbg !506
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !506

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8, !dbg !506
  br label %cond.end, !dbg !506

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %b.addr, align 8, !dbg !506
  br label %cond.end, !dbg !506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !506
  ret i64 %cond, !dbg !507
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "SPT", scope: !2, file: !3, line: 71, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "setproctitle.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!0}
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 59, size: 320, elements: !7)
!7 = !{!8, !12, !14, !15, !16, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "arg0", scope: !6, file: !3, line: 61, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6, file: !3, line: 64, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6, file: !3, line: 64, baseType: !13, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "nul", scope: !6, file: !3, line: 67, baseType: !13, size: 64, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !6, file: !3, line: 69, baseType: !17, size: 8, offset: 256)
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !6, file: !3, line: 70, baseType: !19, size: 32, offset: 288)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{i32 7, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!26 = distinct !DISubprogram(name: "spt_clearenv", scope: !3, file: !3, line: 87, type: !27, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{!19}
!29 = !DILocation(line: 89, column: 9, scope: !26)
!30 = !DILocation(line: 89, column: 2, scope: !26)
!31 = distinct !DISubprogram(name: "spt_init", scope: !3, file: !3, line: 191, type: !32, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !19, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!35 = !DILocalVariable(name: "argc", arg: 1, scope: !31, file: !3, line: 191, type: !19)
!36 = !DILocation(line: 191, column: 19, scope: !31)
!37 = !DILocalVariable(name: "argv", arg: 2, scope: !31, file: !3, line: 191, type: !34)
!38 = !DILocation(line: 191, column: 31, scope: !31)
!39 = !DILocalVariable(name: "envp", scope: !31, file: !3, line: 192, type: !34)
!40 = !DILocation(line: 192, column: 16, scope: !31)
!41 = !DILocation(line: 192, column: 23, scope: !31)
!42 = !DILocalVariable(name: "base", scope: !31, file: !3, line: 193, type: !13)
!43 = !DILocation(line: 193, column: 8, scope: !31)
!44 = !DILocalVariable(name: "end", scope: !31, file: !3, line: 193, type: !13)
!45 = !DILocation(line: 193, column: 15, scope: !31)
!46 = !DILocalVariable(name: "nul", scope: !31, file: !3, line: 193, type: !13)
!47 = !DILocation(line: 193, column: 21, scope: !31)
!48 = !DILocalVariable(name: "tmp", scope: !31, file: !3, line: 193, type: !13)
!49 = !DILocation(line: 193, column: 27, scope: !31)
!50 = !DILocalVariable(name: "i", scope: !31, file: !3, line: 194, type: !19)
!51 = !DILocation(line: 194, column: 6, scope: !31)
!52 = !DILocalVariable(name: "error", scope: !31, file: !3, line: 194, type: !19)
!53 = !DILocation(line: 194, column: 9, scope: !31)
!54 = !DILocalVariable(name: "envc", scope: !31, file: !3, line: 194, type: !19)
!55 = !DILocation(line: 194, column: 16, scope: !31)
!56 = !DILocation(line: 196, column: 15, scope: !57)
!57 = distinct !DILexicalBlock(scope: !31, file: !3, line: 196, column: 6)
!58 = !DILocation(line: 196, column: 13, scope: !57)
!59 = !DILocation(line: 196, column: 6, scope: !31)
!60 = !DILocation(line: 197, column: 3, scope: !57)
!61 = !DILocation(line: 200, column: 9, scope: !31)
!62 = !DILocation(line: 200, column: 21, scope: !31)
!63 = !DILocation(line: 200, column: 14, scope: !31)
!64 = !DILocation(line: 200, column: 6, scope: !31)
!65 = !DILocation(line: 201, column: 8, scope: !31)
!66 = !DILocation(line: 201, column: 12, scope: !31)
!67 = !DILocation(line: 201, column: 6, scope: !31)
!68 = !DILocation(line: 208, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !31, file: !3, line: 208, column: 2)
!70 = !DILocation(line: 208, column: 7, scope: !69)
!71 = !DILocation(line: 208, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 208, column: 2)
!73 = !DILocation(line: 208, column: 18, scope: !72)
!74 = !DILocation(line: 208, column: 16, scope: !72)
!75 = !DILocation(line: 208, column: 23, scope: !72)
!76 = !DILocation(line: 208, column: 27, scope: !72)
!77 = !DILocation(line: 208, column: 32, scope: !72)
!78 = !DILocation(line: 208, column: 29, scope: !72)
!79 = !DILocation(line: 208, column: 37, scope: !72)
!80 = !DILocation(line: 208, column: 40, scope: !72)
!81 = !DILocation(line: 208, column: 45, scope: !72)
!82 = !DILocation(line: 0, scope: !72)
!83 = !DILocation(line: 208, column: 2, scope: !69)
!84 = !DILocation(line: 209, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 209, column: 7)
!86 = distinct !DILexicalBlock(scope: !72, file: !3, line: 208, column: 55)
!87 = !DILocation(line: 209, column: 13, scope: !85)
!88 = !DILocation(line: 209, column: 16, scope: !85)
!89 = !DILocation(line: 209, column: 19, scope: !85)
!90 = !DILocation(line: 209, column: 24, scope: !85)
!91 = !DILocation(line: 209, column: 29, scope: !85)
!92 = !DILocation(line: 209, column: 27, scope: !85)
!93 = !DILocation(line: 209, column: 7, scope: !86)
!94 = !DILocation(line: 210, column: 4, scope: !85)
!95 = !DILocation(line: 212, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !86, file: !3, line: 212, column: 7)
!97 = !DILocation(line: 212, column: 14, scope: !96)
!98 = !DILocation(line: 212, column: 19, scope: !96)
!99 = !DILocation(line: 212, column: 11, scope: !96)
!100 = !DILocation(line: 212, column: 22, scope: !96)
!101 = !DILocation(line: 212, column: 25, scope: !96)
!102 = !DILocation(line: 212, column: 32, scope: !96)
!103 = !DILocation(line: 212, column: 37, scope: !96)
!104 = !DILocation(line: 212, column: 49, scope: !96)
!105 = !DILocation(line: 212, column: 54, scope: !96)
!106 = !DILocation(line: 212, column: 42, scope: !96)
!107 = !DILocation(line: 212, column: 40, scope: !96)
!108 = !DILocation(line: 212, column: 29, scope: !96)
!109 = !DILocation(line: 212, column: 7, scope: !86)
!110 = !DILocation(line: 213, column: 10, scope: !96)
!111 = !DILocation(line: 213, column: 15, scope: !96)
!112 = !DILocation(line: 213, column: 27, scope: !96)
!113 = !DILocation(line: 213, column: 32, scope: !96)
!114 = !DILocation(line: 213, column: 20, scope: !96)
!115 = !DILocation(line: 213, column: 18, scope: !96)
!116 = !DILocation(line: 213, column: 36, scope: !96)
!117 = !DILocation(line: 213, column: 8, scope: !96)
!118 = !DILocation(line: 213, column: 4, scope: !96)
!119 = !DILocation(line: 214, column: 2, scope: !86)
!120 = !DILocation(line: 208, column: 51, scope: !72)
!121 = !DILocation(line: 208, column: 2, scope: !72)
!122 = distinct !{!122, !83, !123, !124}
!123 = !DILocation(line: 214, column: 2, scope: !69)
!124 = !{!"llvm.loop.mustprogress"}
!125 = !DILocation(line: 219, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !31, file: !3, line: 219, column: 2)
!127 = !DILocation(line: 219, column: 7, scope: !126)
!128 = !DILocation(line: 219, column: 14, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 219, column: 2)
!130 = !DILocation(line: 219, column: 19, scope: !129)
!131 = !DILocation(line: 219, column: 2, scope: !126)
!132 = !DILocation(line: 220, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 220, column: 7)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 219, column: 28)
!135 = !DILocation(line: 220, column: 12, scope: !133)
!136 = !DILocation(line: 220, column: 17, scope: !133)
!137 = !DILocation(line: 220, column: 15, scope: !133)
!138 = !DILocation(line: 220, column: 7, scope: !134)
!139 = !DILocation(line: 221, column: 4, scope: !133)
!140 = !DILocation(line: 223, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !134, file: !3, line: 223, column: 7)
!142 = !DILocation(line: 223, column: 14, scope: !141)
!143 = !DILocation(line: 223, column: 19, scope: !141)
!144 = !DILocation(line: 223, column: 11, scope: !141)
!145 = !DILocation(line: 223, column: 22, scope: !141)
!146 = !DILocation(line: 223, column: 25, scope: !141)
!147 = !DILocation(line: 223, column: 32, scope: !141)
!148 = !DILocation(line: 223, column: 37, scope: !141)
!149 = !DILocation(line: 223, column: 49, scope: !141)
!150 = !DILocation(line: 223, column: 54, scope: !141)
!151 = !DILocation(line: 223, column: 42, scope: !141)
!152 = !DILocation(line: 223, column: 40, scope: !141)
!153 = !DILocation(line: 223, column: 29, scope: !141)
!154 = !DILocation(line: 223, column: 7, scope: !134)
!155 = !DILocation(line: 224, column: 10, scope: !141)
!156 = !DILocation(line: 224, column: 15, scope: !141)
!157 = !DILocation(line: 224, column: 27, scope: !141)
!158 = !DILocation(line: 224, column: 32, scope: !141)
!159 = !DILocation(line: 224, column: 20, scope: !141)
!160 = !DILocation(line: 224, column: 18, scope: !141)
!161 = !DILocation(line: 224, column: 36, scope: !141)
!162 = !DILocation(line: 224, column: 8, scope: !141)
!163 = !DILocation(line: 224, column: 4, scope: !141)
!164 = !DILocation(line: 225, column: 2, scope: !134)
!165 = !DILocation(line: 219, column: 24, scope: !129)
!166 = !DILocation(line: 219, column: 2, scope: !129)
!167 = distinct !{!167, !131, !168, !124}
!168 = !DILocation(line: 225, column: 2, scope: !126)
!169 = !DILocation(line: 226, column: 9, scope: !31)
!170 = !DILocation(line: 226, column: 7, scope: !31)
!171 = !DILocation(line: 232, column: 26, scope: !172)
!172 = distinct !DILexicalBlock(scope: !31, file: !3, line: 232, column: 6)
!173 = !DILocation(line: 232, column: 19, scope: !172)
!174 = !DILocation(line: 232, column: 17, scope: !172)
!175 = !DILocation(line: 232, column: 6, scope: !31)
!176 = !DILocation(line: 233, column: 3, scope: !172)
!177 = !DILocation(line: 236, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !31, file: !3, line: 236, column: 6)
!179 = !DILocation(line: 236, column: 14, scope: !178)
!180 = !DILocation(line: 236, column: 12, scope: !178)
!181 = !DILocation(line: 236, column: 6, scope: !31)
!182 = !DILocation(line: 237, column: 3, scope: !178)
!183 = !DILocation(line: 239, column: 28, scope: !31)
!184 = !DILocation(line: 239, column: 26, scope: !31)
!185 = !DILocation(line: 241, column: 21, scope: !186)
!186 = distinct !DILexicalBlock(scope: !31, file: !3, line: 241, column: 6)
!187 = !DILocation(line: 241, column: 14, scope: !186)
!188 = !DILocation(line: 241, column: 12, scope: !186)
!189 = !DILocation(line: 241, column: 6, scope: !31)
!190 = !DILocation(line: 242, column: 3, scope: !186)
!191 = !DILocation(line: 244, column: 34, scope: !31)
!192 = !DILocation(line: 244, column: 32, scope: !31)
!193 = !DILocation(line: 253, column: 27, scope: !194)
!194 = distinct !DILexicalBlock(scope: !31, file: !3, line: 253, column: 6)
!195 = !DILocation(line: 253, column: 33, scope: !194)
!196 = !DILocation(line: 253, column: 15, scope: !194)
!197 = !DILocation(line: 253, column: 13, scope: !194)
!198 = !DILocation(line: 253, column: 6, scope: !31)
!199 = !DILocation(line: 254, column: 3, scope: !194)
!200 = !DILocation(line: 256, column: 28, scope: !201)
!201 = distinct !DILexicalBlock(scope: !31, file: !3, line: 256, column: 6)
!202 = !DILocation(line: 256, column: 34, scope: !201)
!203 = !DILocation(line: 256, column: 15, scope: !201)
!204 = !DILocation(line: 256, column: 13, scope: !201)
!205 = !DILocation(line: 256, column: 6, scope: !31)
!206 = !DILocation(line: 257, column: 3, scope: !201)
!207 = !DILocation(line: 259, column: 13, scope: !31)
!208 = !DILocation(line: 259, column: 11, scope: !31)
!209 = !DILocation(line: 260, column: 13, scope: !31)
!210 = !DILocation(line: 260, column: 11, scope: !31)
!211 = !DILocation(line: 261, column: 13, scope: !31)
!212 = !DILocation(line: 261, column: 11, scope: !31)
!213 = !DILocation(line: 263, column: 2, scope: !31)
!214 = !DILabel(scope: !31, name: "syerr", file: !3, line: 264)
!215 = !DILocation(line: 264, column: 1, scope: !31)
!216 = !DILocation(line: 265, column: 10, scope: !31)
!217 = !DILocation(line: 265, column: 8, scope: !31)
!218 = !DILocation(line: 265, column: 2, scope: !31)
!219 = !DILabel(scope: !31, name: "error", file: !3, line: 266)
!220 = !DILocation(line: 266, column: 1, scope: !31)
!221 = !DILocation(line: 267, column: 14, scope: !31)
!222 = !DILocation(line: 267, column: 12, scope: !31)
!223 = !DILocation(line: 268, column: 1, scope: !31)
!224 = distinct !DISubprogram(name: "spt_copyenv", scope: !3, file: !3, line: 105, type: !225, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!225 = !DISubroutineType(types: !226)
!226 = !{!19, !19, !34}
!227 = !DILocalVariable(name: "envc", arg: 1, scope: !224, file: !3, line: 105, type: !19)
!228 = !DILocation(line: 105, column: 28, scope: !224)
!229 = !DILocalVariable(name: "oldenv", arg: 2, scope: !224, file: !3, line: 105, type: !34)
!230 = !DILocation(line: 105, column: 40, scope: !224)
!231 = !DILocalVariable(name: "envcopy", scope: !224, file: !3, line: 107, type: !34)
!232 = !DILocation(line: 107, column: 9, scope: !224)
!233 = !DILocalVariable(name: "eq", scope: !224, file: !3, line: 108, type: !13)
!234 = !DILocation(line: 108, column: 8, scope: !224)
!235 = !DILocalVariable(name: "i", scope: !224, file: !3, line: 109, type: !19)
!236 = !DILocation(line: 109, column: 6, scope: !224)
!237 = !DILocalVariable(name: "error", scope: !224, file: !3, line: 109, type: !19)
!238 = !DILocation(line: 109, column: 9, scope: !224)
!239 = !DILocalVariable(name: "envsize", scope: !224, file: !3, line: 110, type: !19)
!240 = !DILocation(line: 110, column: 6, scope: !224)
!241 = !DILocation(line: 112, column: 6, scope: !242)
!242 = distinct !DILexicalBlock(scope: !224, file: !3, line: 112, column: 6)
!243 = !DILocation(line: 112, column: 17, scope: !242)
!244 = !DILocation(line: 112, column: 14, scope: !242)
!245 = !DILocation(line: 112, column: 6, scope: !224)
!246 = !DILocation(line: 113, column: 3, scope: !242)
!247 = !DILocation(line: 118, column: 13, scope: !224)
!248 = !DILocation(line: 118, column: 18, scope: !224)
!249 = !DILocation(line: 118, column: 12, scope: !224)
!250 = !DILocation(line: 118, column: 23, scope: !224)
!251 = !DILocation(line: 118, column: 10, scope: !224)
!252 = !DILocation(line: 119, column: 19, scope: !224)
!253 = !DILocation(line: 119, column: 12, scope: !224)
!254 = !DILocation(line: 119, column: 10, scope: !224)
!255 = !DILocation(line: 120, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !224, file: !3, line: 120, column: 6)
!257 = !DILocation(line: 120, column: 6, scope: !224)
!258 = !DILocation(line: 121, column: 3, scope: !256)
!259 = !DILocation(line: 122, column: 9, scope: !224)
!260 = !DILocation(line: 122, column: 2, scope: !224)
!261 = !DILocation(line: 122, column: 18, scope: !224)
!262 = !DILocation(line: 122, column: 26, scope: !224)
!263 = !DILocation(line: 127, column: 15, scope: !264)
!264 = distinct !DILexicalBlock(scope: !224, file: !3, line: 127, column: 6)
!265 = !DILocation(line: 127, column: 13, scope: !264)
!266 = !DILocation(line: 127, column: 6, scope: !224)
!267 = !DILocation(line: 128, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !3, line: 127, column: 32)
!269 = !DILocation(line: 128, column: 11, scope: !268)
!270 = !DILocation(line: 129, column: 8, scope: !268)
!271 = !DILocation(line: 129, column: 3, scope: !268)
!272 = !DILocation(line: 130, column: 10, scope: !268)
!273 = !DILocation(line: 130, column: 3, scope: !268)
!274 = !DILocation(line: 134, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !224, file: !3, line: 134, column: 2)
!276 = !DILocation(line: 134, column: 7, scope: !275)
!277 = !DILocation(line: 134, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !3, line: 134, column: 2)
!279 = !DILocation(line: 134, column: 22, scope: !278)
!280 = !DILocation(line: 134, column: 2, scope: !275)
!281 = !DILocation(line: 135, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 135, column: 7)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 134, column: 31)
!284 = !DILocation(line: 135, column: 29, scope: !282)
!285 = !DILocation(line: 135, column: 14, scope: !282)
!286 = !DILocation(line: 135, column: 12, scope: !282)
!287 = !DILocation(line: 135, column: 7, scope: !283)
!288 = !DILocation(line: 136, column: 4, scope: !282)
!289 = !DILocation(line: 138, column: 4, scope: !283)
!290 = !DILocation(line: 138, column: 7, scope: !283)
!291 = !DILocation(line: 139, column: 24, scope: !283)
!292 = !DILocation(line: 139, column: 32, scope: !283)
!293 = !DILocation(line: 139, column: 36, scope: !283)
!294 = !DILocation(line: 139, column: 39, scope: !283)
!295 = !DILocation(line: 139, column: 17, scope: !283)
!296 = !DILocation(line: 139, column: 14, scope: !283)
!297 = !DILocation(line: 139, column: 11, scope: !283)
!298 = !DILocation(line: 139, column: 49, scope: !283)
!299 = !DILocation(line: 139, column: 9, scope: !283)
!300 = !DILocation(line: 140, column: 4, scope: !283)
!301 = !DILocation(line: 140, column: 7, scope: !283)
!302 = !DILocation(line: 143, column: 7, scope: !303)
!303 = distinct !DILexicalBlock(scope: !283, file: !3, line: 143, column: 7)
!304 = !DILocation(line: 143, column: 7, scope: !283)
!305 = !DILocation(line: 149, column: 14, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !3, line: 143, column: 14)
!307 = !DILocation(line: 149, column: 12, scope: !306)
!308 = !DILocation(line: 155, column: 11, scope: !306)
!309 = !DILocation(line: 155, column: 4, scope: !306)
!310 = !DILocation(line: 157, column: 2, scope: !283)
!311 = !DILocation(line: 134, column: 27, scope: !278)
!312 = !DILocation(line: 134, column: 2, scope: !278)
!313 = distinct !{!313, !280, !314, !124}
!314 = !DILocation(line: 157, column: 2, scope: !275)
!315 = !DILocation(line: 159, column: 7, scope: !224)
!316 = !DILocation(line: 159, column: 2, scope: !224)
!317 = !DILocation(line: 160, column: 2, scope: !224)
!318 = !DILocation(line: 161, column: 1, scope: !224)
!319 = distinct !DISubprogram(name: "spt_copyargs", scope: !3, file: !3, line: 164, type: !225, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!320 = !DILocalVariable(name: "argc", arg: 1, scope: !319, file: !3, line: 164, type: !19)
!321 = !DILocation(line: 164, column: 29, scope: !319)
!322 = !DILocalVariable(name: "argv", arg: 2, scope: !319, file: !3, line: 164, type: !34)
!323 = !DILocation(line: 164, column: 41, scope: !319)
!324 = !DILocalVariable(name: "tmp", scope: !319, file: !3, line: 165, type: !13)
!325 = !DILocation(line: 165, column: 8, scope: !319)
!326 = !DILocalVariable(name: "i", scope: !319, file: !3, line: 166, type: !19)
!327 = !DILocation(line: 166, column: 6, scope: !319)
!328 = !DILocation(line: 168, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !319, file: !3, line: 168, column: 2)
!330 = !DILocation(line: 168, column: 7, scope: !329)
!331 = !DILocation(line: 168, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !3, line: 168, column: 2)
!333 = !DILocation(line: 168, column: 18, scope: !332)
!334 = !DILocation(line: 168, column: 16, scope: !332)
!335 = !DILocation(line: 168, column: 23, scope: !332)
!336 = !DILocation(line: 168, column: 27, scope: !332)
!337 = !DILocation(line: 168, column: 32, scope: !332)
!338 = !DILocation(line: 168, column: 29, scope: !332)
!339 = !DILocation(line: 168, column: 37, scope: !332)
!340 = !DILocation(line: 168, column: 40, scope: !332)
!341 = !DILocation(line: 168, column: 45, scope: !332)
!342 = !DILocation(line: 0, scope: !332)
!343 = !DILocation(line: 168, column: 2, scope: !329)
!344 = !DILocation(line: 169, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 169, column: 7)
!346 = distinct !DILexicalBlock(scope: !332, file: !3, line: 168, column: 55)
!347 = !DILocation(line: 169, column: 13, scope: !345)
!348 = !DILocation(line: 169, column: 7, scope: !346)
!349 = !DILocation(line: 170, column: 4, scope: !345)
!350 = !DILocation(line: 172, column: 22, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 172, column: 7)
!352 = !DILocation(line: 172, column: 27, scope: !351)
!353 = !DILocation(line: 172, column: 15, scope: !351)
!354 = !DILocation(line: 172, column: 13, scope: !351)
!355 = !DILocation(line: 172, column: 7, scope: !346)
!356 = !DILocation(line: 173, column: 11, scope: !351)
!357 = !DILocation(line: 173, column: 4, scope: !351)
!358 = !DILocation(line: 175, column: 13, scope: !346)
!359 = !DILocation(line: 175, column: 3, scope: !346)
!360 = !DILocation(line: 175, column: 8, scope: !346)
!361 = !DILocation(line: 175, column: 11, scope: !346)
!362 = !DILocation(line: 176, column: 2, scope: !346)
!363 = !DILocation(line: 168, column: 51, scope: !332)
!364 = !DILocation(line: 168, column: 2, scope: !332)
!365 = distinct !{!365, !343, !366, !124}
!366 = !DILocation(line: 176, column: 2, scope: !329)
!367 = !DILocation(line: 178, column: 2, scope: !319)
!368 = !DILocation(line: 179, column: 1, scope: !319)
!369 = distinct !DISubprogram(name: "setproctitle", scope: !3, file: !3, line: 275, type: !370, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !9, null}
!372 = !DILocalVariable(name: "fmt", arg: 1, scope: !369, file: !3, line: 275, type: !9)
!373 = !DILocation(line: 275, column: 31, scope: !369)
!374 = !DILocalVariable(name: "buf", scope: !369, file: !3, line: 276, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DILocation(line: 276, column: 7, scope: !369)
!379 = !DILocalVariable(name: "ap", scope: !369, file: !3, line: 277, type: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !381, line: 52, baseType: !382)
!381 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !383, line: 32, baseType: !384)
!383 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stdarg.h", directory: "")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !385)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !394)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !387)
!387 = !{!388, !390, !391, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !386, file: !3, line: 277, baseType: !389, size: 32)
!389 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !386, file: !3, line: 277, baseType: !389, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !386, file: !3, line: 277, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !386, file: !3, line: 277, baseType: !392, size: 64, offset: 128)
!394 = !{!395}
!395 = !DISubrange(count: 1)
!396 = !DILocation(line: 277, column: 10, scope: !369)
!397 = !DILocalVariable(name: "nul", scope: !369, file: !3, line: 278, type: !13)
!398 = !DILocation(line: 278, column: 8, scope: !369)
!399 = !DILocalVariable(name: "len", scope: !369, file: !3, line: 279, type: !19)
!400 = !DILocation(line: 279, column: 6, scope: !369)
!401 = !DILocalVariable(name: "error", scope: !369, file: !3, line: 279, type: !19)
!402 = !DILocation(line: 279, column: 11, scope: !369)
!403 = !DILocation(line: 281, column: 11, scope: !404)
!404 = distinct !DILexicalBlock(scope: !369, file: !3, line: 281, column: 6)
!405 = !DILocation(line: 281, column: 7, scope: !404)
!406 = !DILocation(line: 281, column: 6, scope: !369)
!407 = !DILocation(line: 282, column: 3, scope: !404)
!408 = !DILocation(line: 284, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !369, file: !3, line: 284, column: 6)
!410 = !DILocation(line: 284, column: 6, scope: !369)
!411 = !DILocation(line: 285, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !3, line: 284, column: 11)
!413 = !DILocation(line: 286, column: 19, scope: !412)
!414 = !DILocation(line: 286, column: 36, scope: !412)
!415 = !DILocation(line: 286, column: 41, scope: !412)
!416 = !DILocation(line: 286, column: 9, scope: !412)
!417 = !DILocation(line: 286, column: 7, scope: !412)
!418 = !DILocation(line: 287, column: 3, scope: !412)
!419 = !DILocation(line: 288, column: 2, scope: !412)
!420 = !DILocation(line: 289, column: 18, scope: !421)
!421 = distinct !DILexicalBlock(scope: !409, file: !3, line: 288, column: 9)
!422 = !DILocation(line: 289, column: 45, scope: !421)
!423 = !DILocation(line: 289, column: 9, scope: !421)
!424 = !DILocation(line: 289, column: 7, scope: !421)
!425 = !DILocation(line: 292, column: 6, scope: !426)
!426 = distinct !DILexicalBlock(scope: !369, file: !3, line: 292, column: 6)
!427 = !DILocation(line: 292, column: 10, scope: !426)
!428 = !DILocation(line: 292, column: 6, scope: !369)
!429 = !DILocation(line: 293, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 293, column: 3)
!431 = !DILocation(line: 293, column: 11, scope: !430)
!432 = !DILocation(line: 293, column: 20, scope: !430)
!433 = !DILocation(line: 295, column: 11, scope: !434)
!434 = distinct !DILexicalBlock(scope: !369, file: !3, line: 295, column: 6)
!435 = !DILocation(line: 295, column: 6, scope: !369)
!436 = !DILocation(line: 296, column: 14, scope: !437)
!437 = distinct !DILexicalBlock(scope: !434, file: !3, line: 295, column: 18)
!438 = !DILocation(line: 296, column: 27, scope: !437)
!439 = !DILocation(line: 296, column: 37, scope: !437)
!440 = !DILocation(line: 296, column: 31, scope: !437)
!441 = !DILocation(line: 296, column: 3, scope: !437)
!442 = !DILocation(line: 297, column: 13, scope: !437)
!443 = !DILocation(line: 298, column: 2, scope: !437)
!444 = !DILocation(line: 299, column: 14, scope: !445)
!445 = distinct !DILexicalBlock(scope: !434, file: !3, line: 298, column: 9)
!446 = !DILocation(line: 299, column: 47, scope: !445)
!447 = !DILocation(line: 299, column: 57, scope: !445)
!448 = !DILocation(line: 299, column: 51, scope: !445)
!449 = !DILocation(line: 299, column: 23, scope: !445)
!450 = !DILocation(line: 299, column: 3, scope: !445)
!451 = !DILocation(line: 302, column: 16, scope: !369)
!452 = !DILocation(line: 302, column: 45, scope: !369)
!453 = !DILocation(line: 302, column: 55, scope: !369)
!454 = !DILocation(line: 302, column: 49, scope: !369)
!455 = !DILocation(line: 302, column: 21, scope: !369)
!456 = !DILocation(line: 302, column: 61, scope: !369)
!457 = !DILocation(line: 302, column: 8, scope: !369)
!458 = !DILocation(line: 302, column: 6, scope: !369)
!459 = !DILocation(line: 303, column: 13, scope: !369)
!460 = !DILocation(line: 303, column: 2, scope: !369)
!461 = !DILocation(line: 303, column: 24, scope: !369)
!462 = !DILocation(line: 304, column: 13, scope: !369)
!463 = !DILocation(line: 304, column: 18, scope: !369)
!464 = !DILocation(line: 304, column: 9, scope: !369)
!465 = !DILocation(line: 304, column: 6, scope: !369)
!466 = !DILocation(line: 306, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !369, file: !3, line: 306, column: 6)
!468 = !DILocation(line: 306, column: 16, scope: !467)
!469 = !DILocation(line: 306, column: 10, scope: !467)
!470 = !DILocation(line: 306, column: 6, scope: !369)
!471 = !DILocation(line: 307, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 306, column: 21)
!473 = !DILocation(line: 307, column: 12, scope: !472)
!474 = !DILocation(line: 308, column: 2, scope: !472)
!475 = !DILocation(line: 308, column: 13, scope: !476)
!476 = distinct !DILexicalBlock(scope: !467, file: !3, line: 308, column: 13)
!477 = !DILocation(line: 308, column: 24, scope: !476)
!478 = !DILocation(line: 308, column: 17, scope: !476)
!479 = !DILocation(line: 308, column: 28, scope: !476)
!480 = !DILocation(line: 308, column: 32, scope: !476)
!481 = !DILocation(line: 308, column: 45, scope: !476)
!482 = !DILocation(line: 308, column: 39, scope: !476)
!483 = !DILocation(line: 308, column: 13, scope: !467)
!484 = !DILocation(line: 309, column: 8, scope: !485)
!485 = distinct !DILexicalBlock(scope: !476, file: !3, line: 308, column: 50)
!486 = !DILocation(line: 309, column: 12, scope: !485)
!487 = !DILocation(line: 310, column: 4, scope: !485)
!488 = !DILocation(line: 310, column: 10, scope: !485)
!489 = !DILocation(line: 311, column: 2, scope: !485)
!490 = !DILocation(line: 313, column: 2, scope: !369)
!491 = !DILabel(scope: !369, name: "error", file: !3, line: 314)
!492 = !DILocation(line: 314, column: 1, scope: !369)
!493 = !DILocation(line: 315, column: 14, scope: !369)
!494 = !DILocation(line: 315, column: 12, scope: !369)
!495 = !DILocation(line: 316, column: 1, scope: !369)
!496 = distinct !DISubprogram(name: "spt_min", scope: !3, file: !3, line: 78, type: !497, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !499, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !500, line: 46, baseType: !501)
!500 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!501 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!502 = !DILocalVariable(name: "a", arg: 1, scope: !496, file: !3, line: 78, type: !499)
!503 = !DILocation(line: 78, column: 37, scope: !496)
!504 = !DILocalVariable(name: "b", arg: 2, scope: !496, file: !3, line: 78, type: !499)
!505 = !DILocation(line: 78, column: 47, scope: !496)
!506 = !DILocation(line: 79, column: 9, scope: !496)
!507 = !DILocation(line: 79, column: 2, scope: !496)
