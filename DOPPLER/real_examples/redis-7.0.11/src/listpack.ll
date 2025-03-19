; ModuleID = 'listpack.c'
source_filename = "listpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.listpackEntry = type { i8*, i32, i64 }
%struct.rand_pick = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"listpack.c\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"p >= lp + LP_HDR_SIZE && p + entry_size < lp + lp_bytes\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"p >= lp + LP_HDR_SIZE && p < lp + lp_bytes\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"(p) >= (lp)+LP_HDR_SIZE && (p) < (lp)+lpGetTotalBytes((lp))\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"(p) >= (lp)+LP_HDR_SIZE && (p)+(replaced_len) < (lp)+lpGetTotalBytes((lp))\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"lpbytes < UINT32_MAX\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"total_count\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"(p = lpSeek(lp, r))\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"(p = lpNext(lp, p))\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"total_size\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"{total bytes %zu} {num entries %lu}\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"{\0A\09addr: 0x%08lx,\0A\09index: %2d,\0A\09offset: %1lu,\0A\09hdr+entrylen+backlen: %2lu,\0A\09hdrlen: %3u,\0A\09backlen: %2lu,\0A\09payload: %1u\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\09bytes: \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%02x|\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\09[str]\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"{end}\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"lpValidateNext(lp, &p, lpbytes)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpSafeToAdd(i8* %lp, i64 %add) #0 !dbg !31 {
entry:
  %retval = alloca i32, align 4
  %lp.addr = alloca i8*, align 8
  %add.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i64 %add, i64* %add.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %add.addr, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i64* %len, metadata !43, metadata !DIExpression()), !dbg !44
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !45
  %tobool = icmp ne i8* %0, null, !dbg !45
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !45

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !46
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !46
  %2 = load i8, i8* %arrayidx, align 1, !dbg !46
  %conv = zext i8 %2 to i32, !dbg !46
  %shl = shl i32 %conv, 0, !dbg !46
  %3 = load i8*, i8** %lp.addr, align 8, !dbg !46
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !46
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !46
  %conv2 = zext i8 %4 to i32, !dbg !46
  %shl3 = shl i32 %conv2, 8, !dbg !46
  %or = or i32 %shl, %shl3, !dbg !46
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !46
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !46
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !46
  %conv5 = zext i8 %6 to i32, !dbg !46
  %shl6 = shl i32 %conv5, 16, !dbg !46
  %or7 = or i32 %or, %shl6, !dbg !46
  %7 = load i8*, i8** %lp.addr, align 8, !dbg !46
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3, !dbg !46
  %8 = load i8, i8* %arrayidx8, align 1, !dbg !46
  %conv9 = zext i8 %8 to i32, !dbg !46
  %shl10 = shl i32 %conv9, 24, !dbg !46
  %or11 = or i32 %or7, %shl10, !dbg !46
  br label %cond.end, !dbg !45

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !45

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or11, %cond.true ], [ 0, %cond.false ], !dbg !45
  %conv12 = zext i32 %cond to i64, !dbg !45
  store i64 %conv12, i64* %len, align 8, !dbg !44
  %9 = load i64, i64* %len, align 8, !dbg !47
  %10 = load i64, i64* %add.addr, align 8, !dbg !49
  %add13 = add i64 %9, %10, !dbg !50
  %cmp = icmp ugt i64 %add13, 1073741824, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !53
  br label %return, !dbg !53

if.end:                                           ; preds = %cond.end
  store i32 1, i32* %retval, align 4, !dbg !54
  br label %return, !dbg !54

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !55
  ret i32 %11, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpStringToInt64(i8* %s, i64 %slen, i64* %value) #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i64, align 8
  %value.addr = alloca i64*, align 8
  %p = alloca i8*, align 8
  %plen = alloca i64, align 8
  %negative = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i64 %slen, i64* %slen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %slen.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i64* %value, i64** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %value.addr, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %p, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i8*, i8** %s.addr, align 8, !dbg !68
  store i8* %0, i8** %p, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %plen, metadata !69, metadata !DIExpression()), !dbg !70
  store i64 0, i64* %plen, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %negative, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %negative, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %v, metadata !73, metadata !DIExpression()), !dbg !74
  %1 = load i64, i64* %slen.addr, align 8, !dbg !75
  %cmp = icmp eq i64 %1, 0, !dbg !77
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !78

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %slen.addr, align 8, !dbg !79
  %cmp1 = icmp uge i64 %2, 21, !dbg !80
  br i1 %cmp1, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !82
  br label %return, !dbg !82

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i64, i64* %slen.addr, align 8, !dbg !83
  %cmp2 = icmp eq i64 %3, 1, !dbg !85
  br i1 %cmp2, label %land.lhs.true, label %if.end10, !dbg !86

land.lhs.true:                                    ; preds = %if.end
  %4 = load i8*, i8** %p, align 8, !dbg !87
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0, !dbg !87
  %5 = load i8, i8* %arrayidx, align 1, !dbg !87
  %conv = sext i8 %5 to i32, !dbg !87
  %cmp3 = icmp eq i32 %conv, 48, !dbg !88
  br i1 %cmp3, label %if.then5, label %if.end10, !dbg !89

if.then5:                                         ; preds = %land.lhs.true
  %6 = load i64*, i64** %value.addr, align 8, !dbg !90
  %cmp6 = icmp ne i64* %6, null, !dbg !93
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !94

if.then8:                                         ; preds = %if.then5
  %7 = load i64*, i64** %value.addr, align 8, !dbg !95
  store i64 0, i64* %7, align 8, !dbg !96
  br label %if.end9, !dbg !97

if.end9:                                          ; preds = %if.then8, %if.then5
  store i32 1, i32* %retval, align 4, !dbg !98
  br label %return, !dbg !98

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %8 = load i8*, i8** %p, align 8, !dbg !99
  %arrayidx11 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !99
  %9 = load i8, i8* %arrayidx11, align 1, !dbg !99
  %conv12 = sext i8 %9 to i32, !dbg !99
  %cmp13 = icmp eq i32 %conv12, 45, !dbg !101
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !102

if.then15:                                        ; preds = %if.end10
  store i32 1, i32* %negative, align 4, !dbg !103
  %10 = load i8*, i8** %p, align 8, !dbg !105
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1, !dbg !105
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !105
  %11 = load i64, i64* %plen, align 8, !dbg !106
  %inc = add i64 %11, 1, !dbg !106
  store i64 %inc, i64* %plen, align 8, !dbg !106
  %12 = load i64, i64* %plen, align 8, !dbg !107
  %13 = load i64, i64* %slen.addr, align 8, !dbg !109
  %cmp16 = icmp eq i64 %12, %13, !dbg !110
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !111

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %retval, align 4, !dbg !112
  br label %return, !dbg !112

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !113

if.end20:                                         ; preds = %if.end19, %if.end10
  %14 = load i8*, i8** %p, align 8, !dbg !114
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !114
  %15 = load i8, i8* %arrayidx21, align 1, !dbg !114
  %conv22 = sext i8 %15 to i32, !dbg !114
  %cmp23 = icmp sge i32 %conv22, 49, !dbg !116
  br i1 %cmp23, label %land.lhs.true25, label %if.else, !dbg !117

land.lhs.true25:                                  ; preds = %if.end20
  %16 = load i8*, i8** %p, align 8, !dbg !118
  %arrayidx26 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !118
  %17 = load i8, i8* %arrayidx26, align 1, !dbg !118
  %conv27 = sext i8 %17 to i32, !dbg !118
  %cmp28 = icmp sle i32 %conv27, 57, !dbg !119
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !120

if.then30:                                        ; preds = %land.lhs.true25
  %18 = load i8*, i8** %p, align 8, !dbg !121
  %arrayidx31 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !121
  %19 = load i8, i8* %arrayidx31, align 1, !dbg !121
  %conv32 = sext i8 %19 to i32, !dbg !121
  %sub = sub nsw i32 %conv32, 48, !dbg !123
  %conv33 = sext i32 %sub to i64, !dbg !121
  store i64 %conv33, i64* %v, align 8, !dbg !124
  %20 = load i8*, i8** %p, align 8, !dbg !125
  %incdec.ptr34 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !125
  store i8* %incdec.ptr34, i8** %p, align 8, !dbg !125
  %21 = load i64, i64* %plen, align 8, !dbg !126
  %inc35 = add i64 %21, 1, !dbg !126
  store i64 %inc35, i64* %plen, align 8, !dbg !126
  br label %if.end36, !dbg !127

if.else:                                          ; preds = %land.lhs.true25, %if.end20
  store i32 0, i32* %retval, align 4, !dbg !128
  br label %return, !dbg !128

if.end36:                                         ; preds = %if.then30
  br label %while.cond, !dbg !130

while.cond:                                       ; preds = %if.end60, %if.end36
  %22 = load i64, i64* %plen, align 8, !dbg !131
  %23 = load i64, i64* %slen.addr, align 8, !dbg !132
  %cmp37 = icmp ult i64 %22, %23, !dbg !133
  br i1 %cmp37, label %land.lhs.true39, label %land.end, !dbg !134

land.lhs.true39:                                  ; preds = %while.cond
  %24 = load i8*, i8** %p, align 8, !dbg !135
  %arrayidx40 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !135
  %25 = load i8, i8* %arrayidx40, align 1, !dbg !135
  %conv41 = sext i8 %25 to i32, !dbg !135
  %cmp42 = icmp sge i32 %conv41, 48, !dbg !136
  br i1 %cmp42, label %land.rhs, label %land.end, !dbg !137

land.rhs:                                         ; preds = %land.lhs.true39
  %26 = load i8*, i8** %p, align 8, !dbg !138
  %arrayidx44 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !138
  %27 = load i8, i8* %arrayidx44, align 1, !dbg !138
  %conv45 = sext i8 %27 to i32, !dbg !138
  %cmp46 = icmp sle i32 %conv45, 57, !dbg !139
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true39, %while.cond
  %28 = phi i1 [ false, %land.lhs.true39 ], [ false, %while.cond ], [ %cmp46, %land.rhs ], !dbg !140
  br i1 %28, label %while.body, label %while.end, !dbg !130

while.body:                                       ; preds = %land.end
  %29 = load i64, i64* %v, align 8, !dbg !141
  %cmp48 = icmp ugt i64 %29, 1844674407370955161, !dbg !144
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !145

if.then50:                                        ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !146
  br label %return, !dbg !146

if.end51:                                         ; preds = %while.body
  %30 = load i64, i64* %v, align 8, !dbg !147
  %mul = mul i64 %30, 10, !dbg !147
  store i64 %mul, i64* %v, align 8, !dbg !147
  %31 = load i64, i64* %v, align 8, !dbg !148
  %32 = load i8*, i8** %p, align 8, !dbg !150
  %arrayidx52 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !150
  %33 = load i8, i8* %arrayidx52, align 1, !dbg !150
  %conv53 = sext i8 %33 to i32, !dbg !150
  %sub54 = sub nsw i32 %conv53, 48, !dbg !151
  %conv55 = sext i32 %sub54 to i64, !dbg !152
  %sub56 = sub i64 -1, %conv55, !dbg !153
  %cmp57 = icmp ugt i64 %31, %sub56, !dbg !154
  br i1 %cmp57, label %if.then59, label %if.end60, !dbg !155

if.then59:                                        ; preds = %if.end51
  store i32 0, i32* %retval, align 4, !dbg !156
  br label %return, !dbg !156

if.end60:                                         ; preds = %if.end51
  %34 = load i8*, i8** %p, align 8, !dbg !157
  %arrayidx61 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !157
  %35 = load i8, i8* %arrayidx61, align 1, !dbg !157
  %conv62 = sext i8 %35 to i32, !dbg !157
  %sub63 = sub nsw i32 %conv62, 48, !dbg !158
  %conv64 = sext i32 %sub63 to i64, !dbg !157
  %36 = load i64, i64* %v, align 8, !dbg !159
  %add = add i64 %36, %conv64, !dbg !159
  store i64 %add, i64* %v, align 8, !dbg !159
  %37 = load i8*, i8** %p, align 8, !dbg !160
  %incdec.ptr65 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !160
  store i8* %incdec.ptr65, i8** %p, align 8, !dbg !160
  %38 = load i64, i64* %plen, align 8, !dbg !161
  %inc66 = add i64 %38, 1, !dbg !161
  store i64 %inc66, i64* %plen, align 8, !dbg !161
  br label %while.cond, !dbg !130, !llvm.loop !162

while.end:                                        ; preds = %land.end
  %39 = load i64, i64* %plen, align 8, !dbg !165
  %40 = load i64, i64* %slen.addr, align 8, !dbg !167
  %cmp67 = icmp ult i64 %39, %40, !dbg !168
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !169

if.then69:                                        ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !170
  br label %return, !dbg !170

if.end70:                                         ; preds = %while.end
  %41 = load i32, i32* %negative, align 4, !dbg !171
  %tobool = icmp ne i32 %41, 0, !dbg !171
  br i1 %tobool, label %if.then71, label %if.else81, !dbg !173

if.then71:                                        ; preds = %if.end70
  %42 = load i64, i64* %v, align 8, !dbg !174
  %cmp72 = icmp ugt i64 %42, -9223372036854775808, !dbg !177
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !178

if.then74:                                        ; preds = %if.then71
  store i32 0, i32* %retval, align 4, !dbg !179
  br label %return, !dbg !179

if.end75:                                         ; preds = %if.then71
  %43 = load i64*, i64** %value.addr, align 8, !dbg !180
  %cmp76 = icmp ne i64* %43, null, !dbg !182
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !183

if.then78:                                        ; preds = %if.end75
  %44 = load i64, i64* %v, align 8, !dbg !184
  %sub79 = sub i64 0, %44, !dbg !185
  %45 = load i64*, i64** %value.addr, align 8, !dbg !186
  store i64 %sub79, i64* %45, align 8, !dbg !187
  br label %if.end80, !dbg !188

if.end80:                                         ; preds = %if.then78, %if.end75
  br label %if.end90, !dbg !189

if.else81:                                        ; preds = %if.end70
  %46 = load i64, i64* %v, align 8, !dbg !190
  %cmp82 = icmp ugt i64 %46, 9223372036854775807, !dbg !193
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !194

if.then84:                                        ; preds = %if.else81
  store i32 0, i32* %retval, align 4, !dbg !195
  br label %return, !dbg !195

if.end85:                                         ; preds = %if.else81
  %47 = load i64*, i64** %value.addr, align 8, !dbg !196
  %cmp86 = icmp ne i64* %47, null, !dbg !198
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !199

if.then88:                                        ; preds = %if.end85
  %48 = load i64, i64* %v, align 8, !dbg !200
  %49 = load i64*, i64** %value.addr, align 8, !dbg !201
  store i64 %48, i64* %49, align 8, !dbg !202
  br label %if.end89, !dbg !203

if.end89:                                         ; preds = %if.then88, %if.end85
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end80
  store i32 1, i32* %retval, align 4, !dbg !204
  br label %return, !dbg !204

return:                                           ; preds = %if.end90, %if.then84, %if.then74, %if.then69, %if.then59, %if.then50, %if.else, %if.then18, %if.end9, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !205
  ret i32 %50, !dbg !205
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpNew(i64 %capacity) #0 !dbg !206 {
entry:
  %retval = alloca i8*, align 8
  %capacity.addr = alloca i64, align 8
  %lp = alloca i8*, align 8
  store i64 %capacity, i64* %capacity.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %capacity.addr, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i8** %lp, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i64, i64* %capacity.addr, align 8, !dbg !213
  %cmp = icmp ugt i64 %0, 7, !dbg !213
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !213

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %capacity.addr, align 8, !dbg !213
  br label %cond.end, !dbg !213

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 7, %cond.false ], !dbg !213
  %call = call i8* @zmalloc_usable(i64 %cond, i64* null), !dbg !213
  store i8* %call, i8** %lp, align 8, !dbg !212
  %2 = load i8*, i8** %lp, align 8, !dbg !214
  %cmp1 = icmp eq i8* %2, null, !dbg !216
  br i1 %cmp1, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval, align 8, !dbg !218
  br label %return, !dbg !218

if.end:                                           ; preds = %cond.end
  br label %do.body, !dbg !219

do.body:                                          ; preds = %if.end
  %3 = load i8*, i8** %lp, align 8, !dbg !220
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !220
  store i8 7, i8* %arrayidx, align 1, !dbg !220
  %4 = load i8*, i8** %lp, align 8, !dbg !220
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !220
  store i8 0, i8* %arrayidx2, align 1, !dbg !220
  %5 = load i8*, i8** %lp, align 8, !dbg !220
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !220
  store i8 0, i8* %arrayidx3, align 1, !dbg !220
  %6 = load i8*, i8** %lp, align 8, !dbg !220
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !220
  store i8 0, i8* %arrayidx4, align 1, !dbg !220
  br label %do.end, !dbg !220

do.end:                                           ; preds = %do.body
  br label %do.body5, !dbg !222

do.body5:                                         ; preds = %do.end
  %7 = load i8*, i8** %lp, align 8, !dbg !223
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !223
  store i8 0, i8* %arrayidx6, align 1, !dbg !223
  %8 = load i8*, i8** %lp, align 8, !dbg !223
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 5, !dbg !223
  store i8 0, i8* %arrayidx7, align 1, !dbg !223
  br label %do.end8, !dbg !223

do.end8:                                          ; preds = %do.body5
  %9 = load i8*, i8** %lp, align 8, !dbg !225
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 6, !dbg !225
  store i8 -1, i8* %arrayidx9, align 1, !dbg !226
  %10 = load i8*, i8** %lp, align 8, !dbg !227
  store i8* %10, i8** %retval, align 8, !dbg !228
  br label %return, !dbg !228

return:                                           ; preds = %do.end8, %if.then
  %11 = load i8*, i8** %retval, align 8, !dbg !229
  ret i8* %11, !dbg !229
}

declare dso_local i8* @zmalloc_usable(i64, i64*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @lpFree(i8* %lp) #0 !dbg !230 {
entry:
  %lp.addr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !235
  call void @zfree(i8* %0), !dbg !236
  ret void, !dbg !237
}

declare dso_local void @zfree(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpShrinkToFit(i8* %lp) #0 !dbg !238 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i64* %size, metadata !243, metadata !DIExpression()), !dbg !244
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !245
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !245
  %1 = load i8, i8* %arrayidx, align 1, !dbg !245
  %conv = zext i8 %1 to i32, !dbg !245
  %shl = shl i32 %conv, 0, !dbg !245
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !245
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !245
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !245
  %conv2 = zext i8 %3 to i32, !dbg !245
  %shl3 = shl i32 %conv2, 8, !dbg !245
  %or = or i32 %shl, %shl3, !dbg !245
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !245
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !245
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !245
  %conv5 = zext i8 %5 to i32, !dbg !245
  %shl6 = shl i32 %conv5, 16, !dbg !245
  %or7 = or i32 %or, %shl6, !dbg !245
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !245
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !245
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !245
  %conv9 = zext i8 %7 to i32, !dbg !245
  %shl10 = shl i32 %conv9, 24, !dbg !245
  %or11 = or i32 %or7, %shl10, !dbg !245
  %conv12 = zext i32 %or11 to i64, !dbg !245
  store i64 %conv12, i64* %size, align 8, !dbg !244
  %8 = load i64, i64* %size, align 8, !dbg !246
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !248
  %call = call i64 @malloc_usable_size(i8* %9) #6, !dbg !248
  %cmp = icmp ult i64 %8, %call, !dbg !249
  br i1 %cmp, label %if.then, label %if.else, !dbg !250

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !251
  %11 = load i64, i64* %size, align 8, !dbg !251
  %call14 = call i8* @zrealloc_usable(i8* %10, i64 %11, i64* null), !dbg !251
  store i8* %call14, i8** %retval, align 8, !dbg !253
  br label %return, !dbg !253

if.else:                                          ; preds = %entry
  %12 = load i8*, i8** %lp.addr, align 8, !dbg !254
  store i8* %12, i8** %retval, align 8, !dbg !256
  br label %return, !dbg !256

return:                                           ; preds = %if.else, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !257
  ret i8* %13, !dbg !257
}

; Function Attrs: nounwind
declare dso_local i64 @malloc_usable_size(i8*) #3

declare dso_local i8* @zrealloc_usable(i8*, i64, i64*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpSkip(i8* %p) #0 !dbg !258 {
entry:
  %p.addr = alloca i8*, align 8
  %entrylen = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i64* %entrylen, metadata !261, metadata !DIExpression()), !dbg !262
  %0 = load i8*, i8** %p.addr, align 8, !dbg !263
  %call = call i32 @lpCurrentEncodedSizeUnsafe(i8* %0), !dbg !264
  %conv = zext i32 %call to i64, !dbg !264
  store i64 %conv, i64* %entrylen, align 8, !dbg !262
  %1 = load i64, i64* %entrylen, align 8, !dbg !265
  %call1 = call i64 @lpEncodeBacklen(i8* null, i64 %1), !dbg !266
  %2 = load i64, i64* %entrylen, align 8, !dbg !267
  %add = add i64 %2, %call1, !dbg !267
  store i64 %add, i64* %entrylen, align 8, !dbg !267
  %3 = load i64, i64* %entrylen, align 8, !dbg !268
  %4 = load i8*, i8** %p.addr, align 8, !dbg !269
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %3, !dbg !269
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !269
  %5 = load i8*, i8** %p.addr, align 8, !dbg !270
  ret i8* %5, !dbg !271
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lpCurrentEncodedSizeUnsafe(i8* %p) #0 !dbg !272 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load i8*, i8** %p.addr, align 8, !dbg !277
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !277
  %1 = load i8, i8* %arrayidx, align 1, !dbg !277
  %conv = zext i8 %1 to i32, !dbg !277
  %and = and i32 %conv, 128, !dbg !277
  %cmp = icmp eq i32 %and, 0, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !280
  br label %return, !dbg !280

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !281
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !281
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !281
  %conv3 = zext i8 %3 to i32, !dbg !281
  %and4 = and i32 %conv3, 192, !dbg !281
  %cmp5 = icmp eq i32 %and4, 128, !dbg !281
  br i1 %cmp5, label %if.then7, label %if.end11, !dbg !283

if.then7:                                         ; preds = %if.end
  %4 = load i8*, i8** %p.addr, align 8, !dbg !284
  %arrayidx8 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !284
  %5 = load i8, i8* %arrayidx8, align 1, !dbg !284
  %conv9 = zext i8 %5 to i32, !dbg !284
  %and10 = and i32 %conv9, 63, !dbg !284
  %add = add nsw i32 1, %and10, !dbg !285
  store i32 %add, i32* %retval, align 4, !dbg !286
  br label %return, !dbg !286

if.end11:                                         ; preds = %if.end
  %6 = load i8*, i8** %p.addr, align 8, !dbg !287
  %arrayidx12 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !287
  %7 = load i8, i8* %arrayidx12, align 1, !dbg !287
  %conv13 = zext i8 %7 to i32, !dbg !287
  %and14 = and i32 %conv13, 224, !dbg !287
  %cmp15 = icmp eq i32 %and14, 192, !dbg !287
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !289

if.then17:                                        ; preds = %if.end11
  store i32 2, i32* %retval, align 4, !dbg !290
  br label %return, !dbg !290

if.end18:                                         ; preds = %if.end11
  %8 = load i8*, i8** %p.addr, align 8, !dbg !291
  %arrayidx19 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !291
  %9 = load i8, i8* %arrayidx19, align 1, !dbg !291
  %conv20 = zext i8 %9 to i32, !dbg !291
  %and21 = and i32 %conv20, 255, !dbg !291
  %cmp22 = icmp eq i32 %and21, 241, !dbg !291
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !293

if.then24:                                        ; preds = %if.end18
  store i32 3, i32* %retval, align 4, !dbg !294
  br label %return, !dbg !294

if.end25:                                         ; preds = %if.end18
  %10 = load i8*, i8** %p.addr, align 8, !dbg !295
  %arrayidx26 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !295
  %11 = load i8, i8* %arrayidx26, align 1, !dbg !295
  %conv27 = zext i8 %11 to i32, !dbg !295
  %and28 = and i32 %conv27, 255, !dbg !295
  %cmp29 = icmp eq i32 %and28, 242, !dbg !295
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !297

if.then31:                                        ; preds = %if.end25
  store i32 4, i32* %retval, align 4, !dbg !298
  br label %return, !dbg !298

if.end32:                                         ; preds = %if.end25
  %12 = load i8*, i8** %p.addr, align 8, !dbg !299
  %arrayidx33 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !299
  %13 = load i8, i8* %arrayidx33, align 1, !dbg !299
  %conv34 = zext i8 %13 to i32, !dbg !299
  %and35 = and i32 %conv34, 255, !dbg !299
  %cmp36 = icmp eq i32 %and35, 243, !dbg !299
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !301

if.then38:                                        ; preds = %if.end32
  store i32 5, i32* %retval, align 4, !dbg !302
  br label %return, !dbg !302

if.end39:                                         ; preds = %if.end32
  %14 = load i8*, i8** %p.addr, align 8, !dbg !303
  %arrayidx40 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !303
  %15 = load i8, i8* %arrayidx40, align 1, !dbg !303
  %conv41 = zext i8 %15 to i32, !dbg !303
  %and42 = and i32 %conv41, 255, !dbg !303
  %cmp43 = icmp eq i32 %and42, 244, !dbg !303
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !305

if.then45:                                        ; preds = %if.end39
  store i32 9, i32* %retval, align 4, !dbg !306
  br label %return, !dbg !306

if.end46:                                         ; preds = %if.end39
  %16 = load i8*, i8** %p.addr, align 8, !dbg !307
  %arrayidx47 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !307
  %17 = load i8, i8* %arrayidx47, align 1, !dbg !307
  %conv48 = zext i8 %17 to i32, !dbg !307
  %and49 = and i32 %conv48, 240, !dbg !307
  %cmp50 = icmp eq i32 %and49, 224, !dbg !307
  br i1 %cmp50, label %if.then52, label %if.end59, !dbg !309

if.then52:                                        ; preds = %if.end46
  %18 = load i8*, i8** %p.addr, align 8, !dbg !310
  %arrayidx53 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !310
  %19 = load i8, i8* %arrayidx53, align 1, !dbg !310
  %conv54 = zext i8 %19 to i32, !dbg !310
  %and55 = and i32 %conv54, 15, !dbg !310
  %shl = shl i32 %and55, 8, !dbg !310
  %20 = load i8*, i8** %p.addr, align 8, !dbg !310
  %arrayidx56 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !310
  %21 = load i8, i8* %arrayidx56, align 1, !dbg !310
  %conv57 = zext i8 %21 to i32, !dbg !310
  %or = or i32 %shl, %conv57, !dbg !310
  %add58 = add nsw i32 2, %or, !dbg !311
  store i32 %add58, i32* %retval, align 4, !dbg !312
  br label %return, !dbg !312

if.end59:                                         ; preds = %if.end46
  %22 = load i8*, i8** %p.addr, align 8, !dbg !313
  %arrayidx60 = getelementptr inbounds i8, i8* %22, i64 0, !dbg !313
  %23 = load i8, i8* %arrayidx60, align 1, !dbg !313
  %conv61 = zext i8 %23 to i32, !dbg !313
  %and62 = and i32 %conv61, 255, !dbg !313
  %cmp63 = icmp eq i32 %and62, 240, !dbg !313
  br i1 %cmp63, label %if.then65, label %if.end82, !dbg !315

if.then65:                                        ; preds = %if.end59
  %24 = load i8*, i8** %p.addr, align 8, !dbg !316
  %arrayidx66 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !316
  %25 = load i8, i8* %arrayidx66, align 1, !dbg !316
  %conv67 = zext i8 %25 to i32, !dbg !316
  %shl68 = shl i32 %conv67, 0, !dbg !316
  %26 = load i8*, i8** %p.addr, align 8, !dbg !316
  %arrayidx69 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !316
  %27 = load i8, i8* %arrayidx69, align 1, !dbg !316
  %conv70 = zext i8 %27 to i32, !dbg !316
  %shl71 = shl i32 %conv70, 8, !dbg !316
  %or72 = or i32 %shl68, %shl71, !dbg !316
  %28 = load i8*, i8** %p.addr, align 8, !dbg !316
  %arrayidx73 = getelementptr inbounds i8, i8* %28, i64 3, !dbg !316
  %29 = load i8, i8* %arrayidx73, align 1, !dbg !316
  %conv74 = zext i8 %29 to i32, !dbg !316
  %shl75 = shl i32 %conv74, 16, !dbg !316
  %or76 = or i32 %or72, %shl75, !dbg !316
  %30 = load i8*, i8** %p.addr, align 8, !dbg !316
  %arrayidx77 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !316
  %31 = load i8, i8* %arrayidx77, align 1, !dbg !316
  %conv78 = zext i8 %31 to i32, !dbg !316
  %shl79 = shl i32 %conv78, 24, !dbg !316
  %or80 = or i32 %or76, %shl79, !dbg !316
  %add81 = add i32 5, %or80, !dbg !317
  store i32 %add81, i32* %retval, align 4, !dbg !318
  br label %return, !dbg !318

if.end82:                                         ; preds = %if.end59
  %32 = load i8*, i8** %p.addr, align 8, !dbg !319
  %arrayidx83 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !319
  %33 = load i8, i8* %arrayidx83, align 1, !dbg !319
  %conv84 = zext i8 %33 to i32, !dbg !319
  %cmp85 = icmp eq i32 %conv84, 255, !dbg !321
  br i1 %cmp85, label %if.then87, label %if.end88, !dbg !322

if.then87:                                        ; preds = %if.end82
  store i32 1, i32* %retval, align 4, !dbg !323
  br label %return, !dbg !323

if.end88:                                         ; preds = %if.end82
  store i32 0, i32* %retval, align 4, !dbg !324
  br label %return, !dbg !324

return:                                           ; preds = %if.end88, %if.then87, %if.then65, %if.then52, %if.then45, %if.then38, %if.then31, %if.then24, %if.then17, %if.then7, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !325
  ret i32 %34, !dbg !325
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @lpEncodeBacklen(i8* %buf, i64 %l) #0 !dbg !326 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %l.addr = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !329, metadata !DIExpression()), !dbg !330
  store i64 %l, i64* %l.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %l.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i64, i64* %l.addr, align 8, !dbg !333
  %cmp = icmp ule i64 %0, 127, !dbg !335
  br i1 %cmp, label %if.then, label %if.else, !dbg !336

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !337
  %tobool = icmp ne i8* %1, null, !dbg !337
  br i1 %tobool, label %if.then1, label %if.end, !dbg !340

if.then1:                                         ; preds = %if.then
  %2 = load i64, i64* %l.addr, align 8, !dbg !341
  %conv = trunc i64 %2 to i8, !dbg !341
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !342
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !342
  store i8 %conv, i8* %arrayidx, align 1, !dbg !343
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then1, %if.then
  store i64 1, i64* %retval, align 8, !dbg !344
  br label %return, !dbg !344

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %l.addr, align 8, !dbg !345
  %cmp2 = icmp ult i64 %4, 16383, !dbg !347
  br i1 %cmp2, label %if.then4, label %if.else12, !dbg !348

if.then4:                                         ; preds = %if.else
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !349
  %tobool5 = icmp ne i8* %5, null, !dbg !349
  br i1 %tobool5, label %if.then6, label %if.end11, !dbg !352

if.then6:                                         ; preds = %if.then4
  %6 = load i64, i64* %l.addr, align 8, !dbg !353
  %shr = lshr i64 %6, 7, !dbg !355
  %conv7 = trunc i64 %shr to i8, !dbg !353
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !356
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !356
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !357
  %8 = load i64, i64* %l.addr, align 8, !dbg !358
  %and = and i64 %8, 127, !dbg !359
  %or = or i64 %and, 128, !dbg !360
  %conv9 = trunc i64 %or to i8, !dbg !361
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !362
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !362
  store i8 %conv9, i8* %arrayidx10, align 1, !dbg !363
  br label %if.end11, !dbg !364

if.end11:                                         ; preds = %if.then6, %if.then4
  store i64 2, i64* %retval, align 8, !dbg !365
  br label %return, !dbg !365

if.else12:                                        ; preds = %if.else
  %10 = load i64, i64* %l.addr, align 8, !dbg !366
  %cmp13 = icmp ult i64 %10, 2097151, !dbg !368
  br i1 %cmp13, label %if.then15, label %if.else31, !dbg !369

if.then15:                                        ; preds = %if.else12
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !370
  %tobool16 = icmp ne i8* %11, null, !dbg !370
  br i1 %tobool16, label %if.then17, label %if.end30, !dbg !373

if.then17:                                        ; preds = %if.then15
  %12 = load i64, i64* %l.addr, align 8, !dbg !374
  %shr18 = lshr i64 %12, 14, !dbg !376
  %conv19 = trunc i64 %shr18 to i8, !dbg !374
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !377
  %arrayidx20 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !377
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !378
  %14 = load i64, i64* %l.addr, align 8, !dbg !379
  %shr21 = lshr i64 %14, 7, !dbg !380
  %and22 = and i64 %shr21, 127, !dbg !381
  %or23 = or i64 %and22, 128, !dbg !382
  %conv24 = trunc i64 %or23 to i8, !dbg !383
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !384
  %arrayidx25 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !384
  store i8 %conv24, i8* %arrayidx25, align 1, !dbg !385
  %16 = load i64, i64* %l.addr, align 8, !dbg !386
  %and26 = and i64 %16, 127, !dbg !387
  %or27 = or i64 %and26, 128, !dbg !388
  %conv28 = trunc i64 %or27 to i8, !dbg !389
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !390
  %arrayidx29 = getelementptr inbounds i8, i8* %17, i64 2, !dbg !390
  store i8 %conv28, i8* %arrayidx29, align 1, !dbg !391
  br label %if.end30, !dbg !392

if.end30:                                         ; preds = %if.then17, %if.then15
  store i64 3, i64* %retval, align 8, !dbg !393
  br label %return, !dbg !393

if.else31:                                        ; preds = %if.else12
  %18 = load i64, i64* %l.addr, align 8, !dbg !394
  %cmp32 = icmp ult i64 %18, 268435455, !dbg !396
  br i1 %cmp32, label %if.then34, label %if.else55, !dbg !397

if.then34:                                        ; preds = %if.else31
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !398
  %tobool35 = icmp ne i8* %19, null, !dbg !398
  br i1 %tobool35, label %if.then36, label %if.end54, !dbg !401

if.then36:                                        ; preds = %if.then34
  %20 = load i64, i64* %l.addr, align 8, !dbg !402
  %shr37 = lshr i64 %20, 21, !dbg !404
  %conv38 = trunc i64 %shr37 to i8, !dbg !402
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !405
  %arrayidx39 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !405
  store i8 %conv38, i8* %arrayidx39, align 1, !dbg !406
  %22 = load i64, i64* %l.addr, align 8, !dbg !407
  %shr40 = lshr i64 %22, 14, !dbg !408
  %and41 = and i64 %shr40, 127, !dbg !409
  %or42 = or i64 %and41, 128, !dbg !410
  %conv43 = trunc i64 %or42 to i8, !dbg !411
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !412
  %arrayidx44 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !412
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !413
  %24 = load i64, i64* %l.addr, align 8, !dbg !414
  %shr45 = lshr i64 %24, 7, !dbg !415
  %and46 = and i64 %shr45, 127, !dbg !416
  %or47 = or i64 %and46, 128, !dbg !417
  %conv48 = trunc i64 %or47 to i8, !dbg !418
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !419
  %arrayidx49 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !419
  store i8 %conv48, i8* %arrayidx49, align 1, !dbg !420
  %26 = load i64, i64* %l.addr, align 8, !dbg !421
  %and50 = and i64 %26, 127, !dbg !422
  %or51 = or i64 %and50, 128, !dbg !423
  %conv52 = trunc i64 %or51 to i8, !dbg !424
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !425
  %arrayidx53 = getelementptr inbounds i8, i8* %27, i64 3, !dbg !425
  store i8 %conv52, i8* %arrayidx53, align 1, !dbg !426
  br label %if.end54, !dbg !427

if.end54:                                         ; preds = %if.then36, %if.then34
  store i64 4, i64* %retval, align 8, !dbg !428
  br label %return, !dbg !428

if.else55:                                        ; preds = %if.else31
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !429
  %tobool56 = icmp ne i8* %28, null, !dbg !429
  br i1 %tobool56, label %if.then57, label %if.end80, !dbg !432

if.then57:                                        ; preds = %if.else55
  %29 = load i64, i64* %l.addr, align 8, !dbg !433
  %shr58 = lshr i64 %29, 28, !dbg !435
  %conv59 = trunc i64 %shr58 to i8, !dbg !433
  %30 = load i8*, i8** %buf.addr, align 8, !dbg !436
  %arrayidx60 = getelementptr inbounds i8, i8* %30, i64 0, !dbg !436
  store i8 %conv59, i8* %arrayidx60, align 1, !dbg !437
  %31 = load i64, i64* %l.addr, align 8, !dbg !438
  %shr61 = lshr i64 %31, 21, !dbg !439
  %and62 = and i64 %shr61, 127, !dbg !440
  %or63 = or i64 %and62, 128, !dbg !441
  %conv64 = trunc i64 %or63 to i8, !dbg !442
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !443
  %arrayidx65 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !443
  store i8 %conv64, i8* %arrayidx65, align 1, !dbg !444
  %33 = load i64, i64* %l.addr, align 8, !dbg !445
  %shr66 = lshr i64 %33, 14, !dbg !446
  %and67 = and i64 %shr66, 127, !dbg !447
  %or68 = or i64 %and67, 128, !dbg !448
  %conv69 = trunc i64 %or68 to i8, !dbg !449
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !450
  %arrayidx70 = getelementptr inbounds i8, i8* %34, i64 2, !dbg !450
  store i8 %conv69, i8* %arrayidx70, align 1, !dbg !451
  %35 = load i64, i64* %l.addr, align 8, !dbg !452
  %shr71 = lshr i64 %35, 7, !dbg !453
  %and72 = and i64 %shr71, 127, !dbg !454
  %or73 = or i64 %and72, 128, !dbg !455
  %conv74 = trunc i64 %or73 to i8, !dbg !456
  %36 = load i8*, i8** %buf.addr, align 8, !dbg !457
  %arrayidx75 = getelementptr inbounds i8, i8* %36, i64 3, !dbg !457
  store i8 %conv74, i8* %arrayidx75, align 1, !dbg !458
  %37 = load i64, i64* %l.addr, align 8, !dbg !459
  %and76 = and i64 %37, 127, !dbg !460
  %or77 = or i64 %and76, 128, !dbg !461
  %conv78 = trunc i64 %or77 to i8, !dbg !462
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !463
  %arrayidx79 = getelementptr inbounds i8, i8* %38, i64 4, !dbg !463
  store i8 %conv78, i8* %arrayidx79, align 1, !dbg !464
  br label %if.end80, !dbg !465

if.end80:                                         ; preds = %if.then57, %if.else55
  store i64 5, i64* %retval, align 8, !dbg !466
  br label %return, !dbg !466

return:                                           ; preds = %if.end80, %if.end54, %if.end30, %if.end11, %if.end
  %39 = load i64, i64* %retval, align 8, !dbg !467
  ret i64 %39, !dbg !467
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpNext(i8* %lp, i8* %p) #0 !dbg !468 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !471, metadata !DIExpression()), !dbg !472
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load i8*, i8** %p.addr, align 8, !dbg !475
  %tobool = icmp ne i8* %0, null, !dbg !475
  %lnot = xor i1 %tobool, true, !dbg !475
  %lnot1 = xor i1 %lnot, true, !dbg !475
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !475
  %conv = sext i32 %lnot.ext to i64, !dbg !475
  %tobool2 = icmp ne i64 %conv, 0, !dbg !475
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !475

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !475

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 475), !dbg !475
  unreachable, !dbg !475

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !475

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load i8*, i8** %p.addr, align 8, !dbg !476
  %call = call i8* @lpSkip(i8* %1), !dbg !477
  store i8* %call, i8** %p.addr, align 8, !dbg !478
  %2 = load i8*, i8** %p.addr, align 8, !dbg !479
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !479
  %3 = load i8, i8* %arrayidx, align 1, !dbg !479
  %conv3 = zext i8 %3 to i32, !dbg !479
  %cmp = icmp eq i32 %conv3, 255, !dbg !481
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval, align 8, !dbg !483
  br label %return, !dbg !483

if.end:                                           ; preds = %cond.end
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !484
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !485
  %call5 = call i64 @lpBytes(i8* %5), !dbg !486
  %6 = load i8*, i8** %p.addr, align 8, !dbg !487
  call void @lpAssertValidEntry(i8* %4, i64 %call5, i8* %6), !dbg !488
  %7 = load i8*, i8** %p.addr, align 8, !dbg !489
  store i8* %7, i8** %retval, align 8, !dbg !490
  br label %return, !dbg !490

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval, align 8, !dbg !491
  ret i8* %8, !dbg !491
}

declare dso_local void @_serverAssert(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @lpAssertValidEntry(i8* %lp, i64 %lpbytes, i8* %p) #0 !dbg !492 {
entry:
  %lp.addr = alloca i8*, align 8
  %lpbytes.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 %lpbytes, i64* %lpbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lpbytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !501
  %1 = load i64, i64* %lpbytes.addr, align 8, !dbg !501
  %call = call i32 @lpValidateNext(i8* %0, i8** %p.addr, i64 %1), !dbg !501
  %tobool = icmp ne i32 %call, 0, !dbg !501
  %lnot = xor i1 %tobool, true, !dbg !501
  %lnot1 = xor i1 %lnot, true, !dbg !501
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !501
  %conv = sext i32 %lnot.ext to i64, !dbg !501
  %tobool2 = icmp ne i64 %conv, 0, !dbg !501
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !501

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !501

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1276), !dbg !501
  unreachable, !dbg !501

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !501

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  ret void, !dbg !502
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lpBytes(i8* %lp) #0 !dbg !503 {
entry:
  %lp.addr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !508
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !508
  %1 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = zext i8 %1 to i32, !dbg !508
  %shl = shl i32 %conv, 0, !dbg !508
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !508
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !508
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !508
  %conv2 = zext i8 %3 to i32, !dbg !508
  %shl3 = shl i32 %conv2, 8, !dbg !508
  %or = or i32 %shl, %shl3, !dbg !508
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !508
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !508
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !508
  %conv5 = zext i8 %5 to i32, !dbg !508
  %shl6 = shl i32 %conv5, 16, !dbg !508
  %or7 = or i32 %or, %shl6, !dbg !508
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !508
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !508
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !508
  %conv9 = zext i8 %7 to i32, !dbg !508
  %shl10 = shl i32 %conv9, 24, !dbg !508
  %or11 = or i32 %or7, %shl10, !dbg !508
  %conv12 = zext i32 %or11 to i64, !dbg !508
  ret i64 %conv12, !dbg !509
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpPrev(i8* %lp, i8* %p) #0 !dbg !510 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %prevlen = alloca i64, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i8*, i8** %p.addr, align 8, !dbg !515
  %tobool = icmp ne i8* %0, null, !dbg !515
  %lnot = xor i1 %tobool, true, !dbg !515
  %lnot1 = xor i1 %lnot, true, !dbg !515
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !515
  %conv = sext i32 %lnot.ext to i64, !dbg !515
  %tobool2 = icmp ne i64 %conv, 0, !dbg !515
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !515

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !515

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 486), !dbg !515
  unreachable, !dbg !515

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !515

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load i8*, i8** %p.addr, align 8, !dbg !516
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !518
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64, !dbg !519
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64, !dbg !519
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !519
  %cmp = icmp eq i64 %sub.ptr.sub, 6, !dbg !520
  br i1 %cmp, label %if.then, label %if.end, !dbg !521

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval, align 8, !dbg !522
  br label %return, !dbg !522

if.end:                                           ; preds = %cond.end
  %3 = load i8*, i8** %p.addr, align 8, !dbg !523
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 -1, !dbg !523
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata i64* %prevlen, metadata !524, metadata !DIExpression()), !dbg !525
  %4 = load i8*, i8** %p.addr, align 8, !dbg !526
  %call = call i64 @lpDecodeBacklen(i8* %4), !dbg !527
  store i64 %call, i64* %prevlen, align 8, !dbg !525
  %5 = load i64, i64* %prevlen, align 8, !dbg !528
  %call4 = call i64 @lpEncodeBacklen(i8* null, i64 %5), !dbg !529
  %6 = load i64, i64* %prevlen, align 8, !dbg !530
  %add = add i64 %6, %call4, !dbg !530
  store i64 %add, i64* %prevlen, align 8, !dbg !530
  %7 = load i64, i64* %prevlen, align 8, !dbg !531
  %sub = sub i64 %7, 1, !dbg !532
  %8 = load i8*, i8** %p.addr, align 8, !dbg !533
  %idx.neg = sub i64 0, %sub, !dbg !533
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.neg, !dbg !533
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !533
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !534
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !535
  %call5 = call i64 @lpBytes(i8* %10), !dbg !536
  %11 = load i8*, i8** %p.addr, align 8, !dbg !537
  call void @lpAssertValidEntry(i8* %9, i64 %call5, i8* %11), !dbg !538
  %12 = load i8*, i8** %p.addr, align 8, !dbg !539
  store i8* %12, i8** %retval, align 8, !dbg !540
  br label %return, !dbg !540

return:                                           ; preds = %if.end, %if.then
  %13 = load i8*, i8** %retval, align 8, !dbg !541
  ret i8* %13, !dbg !541
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @lpDecodeBacklen(i8* %p) #0 !dbg !542 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %shift = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata i64* %val, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 0, i64* %val, align 8, !dbg !548
  call void @llvm.dbg.declare(metadata i64* %shift, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 0, i64* %shift, align 8, !dbg !550
  br label %do.body, !dbg !551

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %p.addr, align 8, !dbg !552
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !552
  %1 = load i8, i8* %arrayidx, align 1, !dbg !552
  %conv = zext i8 %1 to i32, !dbg !552
  %and = and i32 %conv, 127, !dbg !554
  %conv1 = sext i32 %and to i64, !dbg !555
  %2 = load i64, i64* %shift, align 8, !dbg !556
  %shl = shl i64 %conv1, %2, !dbg !557
  %3 = load i64, i64* %val, align 8, !dbg !558
  %or = or i64 %3, %shl, !dbg !558
  store i64 %or, i64* %val, align 8, !dbg !558
  %4 = load i8*, i8** %p.addr, align 8, !dbg !559
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !559
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !559
  %conv3 = zext i8 %5 to i32, !dbg !559
  %and4 = and i32 %conv3, 128, !dbg !561
  %tobool = icmp ne i32 %and4, 0, !dbg !561
  br i1 %tobool, label %if.end, label %if.then, !dbg !562

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !563

if.end:                                           ; preds = %do.body
  %6 = load i64, i64* %shift, align 8, !dbg !564
  %add = add i64 %6, 7, !dbg !564
  store i64 %add, i64* %shift, align 8, !dbg !564
  %7 = load i8*, i8** %p.addr, align 8, !dbg !565
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 -1, !dbg !565
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !565
  %8 = load i64, i64* %shift, align 8, !dbg !566
  %cmp = icmp ugt i64 %8, 28, !dbg !568
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !569

if.then6:                                         ; preds = %if.end
  store i64 -1, i64* %retval, align 8, !dbg !570
  br label %return, !dbg !570

if.end7:                                          ; preds = %if.end
  br label %do.cond, !dbg !571

do.cond:                                          ; preds = %if.end7
  br i1 true, label %do.body, label %do.end, !dbg !571, !llvm.loop !572

do.end:                                           ; preds = %do.cond, %if.then
  %9 = load i64, i64* %val, align 8, !dbg !574
  store i64 %9, i64* %retval, align 8, !dbg !575
  br label %return, !dbg !575

return:                                           ; preds = %do.end, %if.then6
  %10 = load i64, i64* %retval, align 8, !dbg !576
  ret i64 %10, !dbg !576
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpFirst(i8* %lp) #0 !dbg !577 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !578, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.declare(metadata i8** %p, metadata !580, metadata !DIExpression()), !dbg !581
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !582
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 6, !dbg !583
  store i8* %add.ptr, i8** %p, align 8, !dbg !581
  %1 = load i8*, i8** %p, align 8, !dbg !584
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !584
  %2 = load i8, i8* %arrayidx, align 1, !dbg !584
  %conv = zext i8 %2 to i32, !dbg !584
  %cmp = icmp eq i32 %conv, 255, !dbg !586
  br i1 %cmp, label %if.then, label %if.end, !dbg !587

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !588
  br label %return, !dbg !588

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %lp.addr, align 8, !dbg !589
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !590
  %call = call i64 @lpBytes(i8* %4), !dbg !591
  %5 = load i8*, i8** %p, align 8, !dbg !592
  call void @lpAssertValidEntry(i8* %3, i64 %call, i8* %5), !dbg !593
  %6 = load i8*, i8** %p, align 8, !dbg !594
  store i8* %6, i8** %retval, align 8, !dbg !595
  br label %return, !dbg !595

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !596
  ret i8* %7, !dbg !596
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpLast(i8* %lp) #0 !dbg !597 {
entry:
  %lp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !598, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.declare(metadata i8** %p, metadata !600, metadata !DIExpression()), !dbg !601
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !602
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !603
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !603
  %2 = load i8, i8* %arrayidx, align 1, !dbg !603
  %conv = zext i8 %2 to i32, !dbg !603
  %shl = shl i32 %conv, 0, !dbg !603
  %3 = load i8*, i8** %lp.addr, align 8, !dbg !603
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !603
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !603
  %conv2 = zext i8 %4 to i32, !dbg !603
  %shl3 = shl i32 %conv2, 8, !dbg !603
  %or = or i32 %shl, %shl3, !dbg !603
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !603
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !603
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !603
  %conv5 = zext i8 %6 to i32, !dbg !603
  %shl6 = shl i32 %conv5, 16, !dbg !603
  %or7 = or i32 %or, %shl6, !dbg !603
  %7 = load i8*, i8** %lp.addr, align 8, !dbg !603
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3, !dbg !603
  %8 = load i8, i8* %arrayidx8, align 1, !dbg !603
  %conv9 = zext i8 %8 to i32, !dbg !603
  %shl10 = shl i32 %conv9, 24, !dbg !603
  %or11 = or i32 %or7, %shl10, !dbg !603
  %idx.ext = zext i32 %or11 to i64, !dbg !604
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext, !dbg !604
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !605
  store i8* %add.ptr12, i8** %p, align 8, !dbg !601
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !606
  %10 = load i8*, i8** %p, align 8, !dbg !607
  %call = call i8* @lpPrev(i8* %9, i8* %10), !dbg !608
  ret i8* %call, !dbg !609
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lpLength(i8* %lp) #0 !dbg !610 {
entry:
  %retval = alloca i64, align 8
  %lp.addr = alloca i8*, align 8
  %numele = alloca i32, align 4
  %count = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !613, metadata !DIExpression()), !dbg !614
  call void @llvm.dbg.declare(metadata i32* %numele, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !617
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 4, !dbg !617
  %1 = load i8, i8* %arrayidx, align 1, !dbg !617
  %conv = zext i8 %1 to i32, !dbg !617
  %shl = shl i32 %conv, 0, !dbg !617
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !617
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !617
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !617
  %conv2 = zext i8 %3 to i32, !dbg !617
  %shl3 = shl i32 %conv2, 8, !dbg !617
  %or = or i32 %shl, %shl3, !dbg !617
  store i32 %or, i32* %numele, align 4, !dbg !616
  %4 = load i32, i32* %numele, align 4, !dbg !618
  %cmp = icmp ne i32 %4, 65535, !dbg !620
  br i1 %cmp, label %if.then, label %if.end, !dbg !621

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %numele, align 4, !dbg !622
  %conv5 = zext i32 %5 to i64, !dbg !622
  store i64 %conv5, i64* %retval, align 8, !dbg !623
  br label %return, !dbg !623

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %count, metadata !624, metadata !DIExpression()), !dbg !625
  store i32 0, i32* %count, align 4, !dbg !625
  call void @llvm.dbg.declare(metadata i8** %p, metadata !626, metadata !DIExpression()), !dbg !627
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !628
  %call = call i8* @lpFirst(i8* %6), !dbg !629
  store i8* %call, i8** %p, align 8, !dbg !627
  br label %while.cond, !dbg !630

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i8*, i8** %p, align 8, !dbg !631
  %tobool = icmp ne i8* %7, null, !dbg !630
  br i1 %tobool, label %while.body, label %while.end, !dbg !630

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %count, align 4, !dbg !632
  %inc = add i32 %8, 1, !dbg !632
  store i32 %inc, i32* %count, align 4, !dbg !632
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !634
  %10 = load i8*, i8** %p, align 8, !dbg !635
  %call6 = call i8* @lpNext(i8* %9, i8* %10), !dbg !636
  store i8* %call6, i8** %p, align 8, !dbg !637
  br label %while.cond, !dbg !630, !llvm.loop !638

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %count, align 4, !dbg !640
  %cmp7 = icmp ult i32 %11, 65535, !dbg !642
  br i1 %cmp7, label %if.then9, label %if.end15, !dbg !643

if.then9:                                         ; preds = %while.end
  br label %do.body, !dbg !644

do.body:                                          ; preds = %if.then9
  %12 = load i32, i32* %count, align 4, !dbg !645
  %and = and i32 %12, 255, !dbg !645
  %conv10 = trunc i32 %and to i8, !dbg !645
  %13 = load i8*, i8** %lp.addr, align 8, !dbg !645
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !645
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !645
  %14 = load i32, i32* %count, align 4, !dbg !645
  %shr = lshr i32 %14, 8, !dbg !645
  %and12 = and i32 %shr, 255, !dbg !645
  %conv13 = trunc i32 %and12 to i8, !dbg !645
  %15 = load i8*, i8** %lp.addr, align 8, !dbg !645
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 5, !dbg !645
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !645
  br label %do.end, !dbg !645

do.end:                                           ; preds = %do.body
  br label %if.end15, !dbg !645

if.end15:                                         ; preds = %do.end, %while.end
  %16 = load i32, i32* %count, align 4, !dbg !647
  %conv16 = zext i32 %16 to i64, !dbg !647
  store i64 %conv16, i64* %retval, align 8, !dbg !648
  br label %return, !dbg !648

return:                                           ; preds = %if.end15, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !649
  ret i64 %17, !dbg !649
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpGet(i8* %p, i64* %count, i8* %intbuf) #0 !dbg !650 {
entry:
  %p.addr = alloca i8*, align 8
  %count.addr = alloca i64*, align 8
  %intbuf.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !653, metadata !DIExpression()), !dbg !654
  store i64* %count, i64** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %count.addr, metadata !655, metadata !DIExpression()), !dbg !656
  store i8* %intbuf, i8** %intbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %intbuf.addr, metadata !657, metadata !DIExpression()), !dbg !658
  %0 = load i8*, i8** %p.addr, align 8, !dbg !659
  %1 = load i64*, i64** %count.addr, align 8, !dbg !660
  %2 = load i8*, i8** %intbuf.addr, align 8, !dbg !661
  %call = call i8* @lpGetWithSize(i8* %0, i64* %1, i8* %2, i64* null), !dbg !662
  ret i8* %call, !dbg !663
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @lpGetWithSize(i8* %p, i64* %count, i8* %intbuf, i64* %entry_size) #0 !dbg !664 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %count.addr = alloca i64*, align 8
  %intbuf.addr = alloca i8*, align 8
  %entry_size.addr = alloca i64*, align 8
  %val = alloca i64, align 8
  %uval = alloca i64, align 8
  %negstart = alloca i64, align 8
  %negmax = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !668, metadata !DIExpression()), !dbg !669
  store i64* %count, i64** %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %count.addr, metadata !670, metadata !DIExpression()), !dbg !671
  store i8* %intbuf, i8** %intbuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %intbuf.addr, metadata !672, metadata !DIExpression()), !dbg !673
  store i64* %entry_size, i64** %entry_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %entry_size.addr, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata i64* %val, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata i64* %uval, metadata !678, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.declare(metadata i64* %negstart, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.declare(metadata i64* %negmax, metadata !682, metadata !DIExpression()), !dbg !683
  %0 = load i8*, i8** %p.addr, align 8, !dbg !684
  %tobool = icmp ne i8* %0, null, !dbg !684
  %lnot = xor i1 %tobool, true, !dbg !684
  %lnot1 = xor i1 %lnot, true, !dbg !684
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !684
  %conv = sext i32 %lnot.ext to i64, !dbg !684
  %tobool2 = icmp ne i64 %conv, 0, !dbg !684
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !684

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !684

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 576), !dbg !684
  unreachable, !dbg !684

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !684

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %1 = load i8*, i8** %p.addr, align 8, !dbg !685
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !685
  %2 = load i8, i8* %arrayidx, align 1, !dbg !685
  %conv3 = zext i8 %2 to i32, !dbg !685
  %and = and i32 %conv3, 128, !dbg !685
  %cmp = icmp eq i32 %and, 0, !dbg !685
  br i1 %cmp, label %if.then, label %if.else, !dbg !687

if.then:                                          ; preds = %cond.end
  store i64 -1, i64* %negstart, align 8, !dbg !688
  store i64 0, i64* %negmax, align 8, !dbg !690
  %3 = load i8*, i8** %p.addr, align 8, !dbg !691
  %arrayidx5 = getelementptr inbounds i8, i8* %3, i64 0, !dbg !691
  %4 = load i8, i8* %arrayidx5, align 1, !dbg !691
  %conv6 = zext i8 %4 to i32, !dbg !691
  %and7 = and i32 %conv6, 127, !dbg !692
  %conv8 = sext i32 %and7 to i64, !dbg !691
  store i64 %conv8, i64* %uval, align 8, !dbg !693
  %5 = load i64*, i64** %entry_size.addr, align 8, !dbg !694
  %tobool9 = icmp ne i64* %5, null, !dbg !694
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !696

if.then10:                                        ; preds = %if.then
  %6 = load i64*, i64** %entry_size.addr, align 8, !dbg !697
  store i64 2, i64* %6, align 8, !dbg !698
  br label %if.end, !dbg !699

if.end:                                           ; preds = %if.then10, %if.then
  br label %if.end208, !dbg !700

if.else:                                          ; preds = %cond.end
  %7 = load i8*, i8** %p.addr, align 8, !dbg !701
  %arrayidx11 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !701
  %8 = load i8, i8* %arrayidx11, align 1, !dbg !701
  %conv12 = zext i8 %8 to i32, !dbg !701
  %and13 = and i32 %conv12, 192, !dbg !701
  %cmp14 = icmp eq i32 %and13, 128, !dbg !701
  br i1 %cmp14, label %if.then16, label %if.else26, !dbg !703

if.then16:                                        ; preds = %if.else
  %9 = load i8*, i8** %p.addr, align 8, !dbg !704
  %arrayidx17 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !704
  %10 = load i8, i8* %arrayidx17, align 1, !dbg !704
  %conv18 = zext i8 %10 to i32, !dbg !704
  %and19 = and i32 %conv18, 63, !dbg !704
  %conv20 = sext i32 %and19 to i64, !dbg !704
  %11 = load i64*, i64** %count.addr, align 8, !dbg !706
  store i64 %conv20, i64* %11, align 8, !dbg !707
  %12 = load i64*, i64** %entry_size.addr, align 8, !dbg !708
  %tobool21 = icmp ne i64* %12, null, !dbg !708
  br i1 %tobool21, label %if.then22, label %if.end25, !dbg !710

if.then22:                                        ; preds = %if.then16
  %13 = load i64*, i64** %count.addr, align 8, !dbg !711
  %14 = load i64, i64* %13, align 8, !dbg !712
  %add = add nsw i64 1, %14, !dbg !713
  %15 = load i64*, i64** %count.addr, align 8, !dbg !714
  %16 = load i64, i64* %15, align 8, !dbg !715
  %add23 = add nsw i64 %16, 1, !dbg !716
  %call = call i64 @lpEncodeBacklen(i8* null, i64 %add23), !dbg !717
  %add24 = add i64 %add, %call, !dbg !718
  %17 = load i64*, i64** %entry_size.addr, align 8, !dbg !719
  store i64 %add24, i64* %17, align 8, !dbg !720
  br label %if.end25, !dbg !721

if.end25:                                         ; preds = %if.then22, %if.then16
  %18 = load i8*, i8** %p.addr, align 8, !dbg !722
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 1, !dbg !723
  store i8* %add.ptr, i8** %retval, align 8, !dbg !724
  br label %return, !dbg !724

if.else26:                                        ; preds = %if.else
  %19 = load i8*, i8** %p.addr, align 8, !dbg !725
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !725
  %20 = load i8, i8* %arrayidx27, align 1, !dbg !725
  %conv28 = zext i8 %20 to i32, !dbg !725
  %and29 = and i32 %conv28, 224, !dbg !725
  %cmp30 = icmp eq i32 %and29, 192, !dbg !725
  br i1 %cmp30, label %if.then32, label %if.else42, !dbg !727

if.then32:                                        ; preds = %if.else26
  %21 = load i8*, i8** %p.addr, align 8, !dbg !728
  %arrayidx33 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !728
  %22 = load i8, i8* %arrayidx33, align 1, !dbg !728
  %conv34 = zext i8 %22 to i32, !dbg !728
  %and35 = and i32 %conv34, 31, !dbg !730
  %shl = shl i32 %and35, 8, !dbg !731
  %23 = load i8*, i8** %p.addr, align 8, !dbg !732
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !732
  %24 = load i8, i8* %arrayidx36, align 1, !dbg !732
  %conv37 = zext i8 %24 to i32, !dbg !732
  %or = or i32 %shl, %conv37, !dbg !733
  %conv38 = sext i32 %or to i64, !dbg !734
  store i64 %conv38, i64* %uval, align 8, !dbg !735
  store i64 4096, i64* %negstart, align 8, !dbg !736
  store i64 8191, i64* %negmax, align 8, !dbg !737
  %25 = load i64*, i64** %entry_size.addr, align 8, !dbg !738
  %tobool39 = icmp ne i64* %25, null, !dbg !738
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !740

if.then40:                                        ; preds = %if.then32
  %26 = load i64*, i64** %entry_size.addr, align 8, !dbg !741
  store i64 3, i64* %26, align 8, !dbg !742
  br label %if.end41, !dbg !743

if.end41:                                         ; preds = %if.then40, %if.then32
  br label %if.end206, !dbg !744

if.else42:                                        ; preds = %if.else26
  %27 = load i8*, i8** %p.addr, align 8, !dbg !745
  %arrayidx43 = getelementptr inbounds i8, i8* %27, i64 0, !dbg !745
  %28 = load i8, i8* %arrayidx43, align 1, !dbg !745
  %conv44 = zext i8 %28 to i32, !dbg !745
  %and45 = and i32 %conv44, 255, !dbg !745
  %cmp46 = icmp eq i32 %and45, 241, !dbg !745
  br i1 %cmp46, label %if.then48, label %if.else58, !dbg !747

if.then48:                                        ; preds = %if.else42
  %29 = load i8*, i8** %p.addr, align 8, !dbg !748
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !748
  %30 = load i8, i8* %arrayidx49, align 1, !dbg !748
  %conv50 = zext i8 %30 to i64, !dbg !750
  %31 = load i8*, i8** %p.addr, align 8, !dbg !751
  %arrayidx51 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !751
  %32 = load i8, i8* %arrayidx51, align 1, !dbg !751
  %conv52 = zext i8 %32 to i64, !dbg !752
  %shl53 = shl i64 %conv52, 8, !dbg !753
  %or54 = or i64 %conv50, %shl53, !dbg !754
  store i64 %or54, i64* %uval, align 8, !dbg !755
  store i64 32768, i64* %negstart, align 8, !dbg !756
  store i64 65535, i64* %negmax, align 8, !dbg !757
  %33 = load i64*, i64** %entry_size.addr, align 8, !dbg !758
  %tobool55 = icmp ne i64* %33, null, !dbg !758
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !760

if.then56:                                        ; preds = %if.then48
  %34 = load i64*, i64** %entry_size.addr, align 8, !dbg !761
  store i64 4, i64* %34, align 8, !dbg !762
  br label %if.end57, !dbg !763

if.end57:                                         ; preds = %if.then56, %if.then48
  br label %if.end205, !dbg !764

if.else58:                                        ; preds = %if.else42
  %35 = load i8*, i8** %p.addr, align 8, !dbg !765
  %arrayidx59 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !765
  %36 = load i8, i8* %arrayidx59, align 1, !dbg !765
  %conv60 = zext i8 %36 to i32, !dbg !765
  %and61 = and i32 %conv60, 255, !dbg !765
  %cmp62 = icmp eq i32 %and61, 242, !dbg !765
  br i1 %cmp62, label %if.then64, label %if.else78, !dbg !767

if.then64:                                        ; preds = %if.else58
  %37 = load i8*, i8** %p.addr, align 8, !dbg !768
  %arrayidx65 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !768
  %38 = load i8, i8* %arrayidx65, align 1, !dbg !768
  %conv66 = zext i8 %38 to i64, !dbg !770
  %39 = load i8*, i8** %p.addr, align 8, !dbg !771
  %arrayidx67 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !771
  %40 = load i8, i8* %arrayidx67, align 1, !dbg !771
  %conv68 = zext i8 %40 to i64, !dbg !772
  %shl69 = shl i64 %conv68, 8, !dbg !773
  %or70 = or i64 %conv66, %shl69, !dbg !774
  %41 = load i8*, i8** %p.addr, align 8, !dbg !775
  %arrayidx71 = getelementptr inbounds i8, i8* %41, i64 3, !dbg !775
  %42 = load i8, i8* %arrayidx71, align 1, !dbg !775
  %conv72 = zext i8 %42 to i64, !dbg !776
  %shl73 = shl i64 %conv72, 16, !dbg !777
  %or74 = or i64 %or70, %shl73, !dbg !778
  store i64 %or74, i64* %uval, align 8, !dbg !779
  store i64 8388608, i64* %negstart, align 8, !dbg !780
  store i64 16777215, i64* %negmax, align 8, !dbg !781
  %43 = load i64*, i64** %entry_size.addr, align 8, !dbg !782
  %tobool75 = icmp ne i64* %43, null, !dbg !782
  br i1 %tobool75, label %if.then76, label %if.end77, !dbg !784

if.then76:                                        ; preds = %if.then64
  %44 = load i64*, i64** %entry_size.addr, align 8, !dbg !785
  store i64 5, i64* %44, align 8, !dbg !786
  br label %if.end77, !dbg !787

if.end77:                                         ; preds = %if.then76, %if.then64
  br label %if.end204, !dbg !788

if.else78:                                        ; preds = %if.else58
  %45 = load i8*, i8** %p.addr, align 8, !dbg !789
  %arrayidx79 = getelementptr inbounds i8, i8* %45, i64 0, !dbg !789
  %46 = load i8, i8* %arrayidx79, align 1, !dbg !789
  %conv80 = zext i8 %46 to i32, !dbg !789
  %and81 = and i32 %conv80, 255, !dbg !789
  %cmp82 = icmp eq i32 %and81, 243, !dbg !789
  br i1 %cmp82, label %if.then84, label %if.else102, !dbg !791

if.then84:                                        ; preds = %if.else78
  %47 = load i8*, i8** %p.addr, align 8, !dbg !792
  %arrayidx85 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !792
  %48 = load i8, i8* %arrayidx85, align 1, !dbg !792
  %conv86 = zext i8 %48 to i64, !dbg !794
  %49 = load i8*, i8** %p.addr, align 8, !dbg !795
  %arrayidx87 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !795
  %50 = load i8, i8* %arrayidx87, align 1, !dbg !795
  %conv88 = zext i8 %50 to i64, !dbg !796
  %shl89 = shl i64 %conv88, 8, !dbg !797
  %or90 = or i64 %conv86, %shl89, !dbg !798
  %51 = load i8*, i8** %p.addr, align 8, !dbg !799
  %arrayidx91 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !799
  %52 = load i8, i8* %arrayidx91, align 1, !dbg !799
  %conv92 = zext i8 %52 to i64, !dbg !800
  %shl93 = shl i64 %conv92, 16, !dbg !801
  %or94 = or i64 %or90, %shl93, !dbg !802
  %53 = load i8*, i8** %p.addr, align 8, !dbg !803
  %arrayidx95 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !803
  %54 = load i8, i8* %arrayidx95, align 1, !dbg !803
  %conv96 = zext i8 %54 to i64, !dbg !804
  %shl97 = shl i64 %conv96, 24, !dbg !805
  %or98 = or i64 %or94, %shl97, !dbg !806
  store i64 %or98, i64* %uval, align 8, !dbg !807
  store i64 2147483648, i64* %negstart, align 8, !dbg !808
  store i64 4294967295, i64* %negmax, align 8, !dbg !809
  %55 = load i64*, i64** %entry_size.addr, align 8, !dbg !810
  %tobool99 = icmp ne i64* %55, null, !dbg !810
  br i1 %tobool99, label %if.then100, label %if.end101, !dbg !812

if.then100:                                       ; preds = %if.then84
  %56 = load i64*, i64** %entry_size.addr, align 8, !dbg !813
  store i64 6, i64* %56, align 8, !dbg !814
  br label %if.end101, !dbg !815

if.end101:                                        ; preds = %if.then100, %if.then84
  br label %if.end203, !dbg !816

if.else102:                                       ; preds = %if.else78
  %57 = load i8*, i8** %p.addr, align 8, !dbg !817
  %arrayidx103 = getelementptr inbounds i8, i8* %57, i64 0, !dbg !817
  %58 = load i8, i8* %arrayidx103, align 1, !dbg !817
  %conv104 = zext i8 %58 to i32, !dbg !817
  %and105 = and i32 %conv104, 255, !dbg !817
  %cmp106 = icmp eq i32 %and105, 244, !dbg !817
  br i1 %cmp106, label %if.then108, label %if.else142, !dbg !819

if.then108:                                       ; preds = %if.else102
  %59 = load i8*, i8** %p.addr, align 8, !dbg !820
  %arrayidx109 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !820
  %60 = load i8, i8* %arrayidx109, align 1, !dbg !820
  %conv110 = zext i8 %60 to i64, !dbg !822
  %61 = load i8*, i8** %p.addr, align 8, !dbg !823
  %arrayidx111 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !823
  %62 = load i8, i8* %arrayidx111, align 1, !dbg !823
  %conv112 = zext i8 %62 to i64, !dbg !824
  %shl113 = shl i64 %conv112, 8, !dbg !825
  %or114 = or i64 %conv110, %shl113, !dbg !826
  %63 = load i8*, i8** %p.addr, align 8, !dbg !827
  %arrayidx115 = getelementptr inbounds i8, i8* %63, i64 3, !dbg !827
  %64 = load i8, i8* %arrayidx115, align 1, !dbg !827
  %conv116 = zext i8 %64 to i64, !dbg !828
  %shl117 = shl i64 %conv116, 16, !dbg !829
  %or118 = or i64 %or114, %shl117, !dbg !830
  %65 = load i8*, i8** %p.addr, align 8, !dbg !831
  %arrayidx119 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !831
  %66 = load i8, i8* %arrayidx119, align 1, !dbg !831
  %conv120 = zext i8 %66 to i64, !dbg !832
  %shl121 = shl i64 %conv120, 24, !dbg !833
  %or122 = or i64 %or118, %shl121, !dbg !834
  %67 = load i8*, i8** %p.addr, align 8, !dbg !835
  %arrayidx123 = getelementptr inbounds i8, i8* %67, i64 5, !dbg !835
  %68 = load i8, i8* %arrayidx123, align 1, !dbg !835
  %conv124 = zext i8 %68 to i64, !dbg !836
  %shl125 = shl i64 %conv124, 32, !dbg !837
  %or126 = or i64 %or122, %shl125, !dbg !838
  %69 = load i8*, i8** %p.addr, align 8, !dbg !839
  %arrayidx127 = getelementptr inbounds i8, i8* %69, i64 6, !dbg !839
  %70 = load i8, i8* %arrayidx127, align 1, !dbg !839
  %conv128 = zext i8 %70 to i64, !dbg !840
  %shl129 = shl i64 %conv128, 40, !dbg !841
  %or130 = or i64 %or126, %shl129, !dbg !842
  %71 = load i8*, i8** %p.addr, align 8, !dbg !843
  %arrayidx131 = getelementptr inbounds i8, i8* %71, i64 7, !dbg !843
  %72 = load i8, i8* %arrayidx131, align 1, !dbg !843
  %conv132 = zext i8 %72 to i64, !dbg !844
  %shl133 = shl i64 %conv132, 48, !dbg !845
  %or134 = or i64 %or130, %shl133, !dbg !846
  %73 = load i8*, i8** %p.addr, align 8, !dbg !847
  %arrayidx135 = getelementptr inbounds i8, i8* %73, i64 8, !dbg !847
  %74 = load i8, i8* %arrayidx135, align 1, !dbg !847
  %conv136 = zext i8 %74 to i64, !dbg !848
  %shl137 = shl i64 %conv136, 56, !dbg !849
  %or138 = or i64 %or134, %shl137, !dbg !850
  store i64 %or138, i64* %uval, align 8, !dbg !851
  store i64 -9223372036854775808, i64* %negstart, align 8, !dbg !852
  store i64 -1, i64* %negmax, align 8, !dbg !853
  %75 = load i64*, i64** %entry_size.addr, align 8, !dbg !854
  %tobool139 = icmp ne i64* %75, null, !dbg !854
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !856

if.then140:                                       ; preds = %if.then108
  %76 = load i64*, i64** %entry_size.addr, align 8, !dbg !857
  store i64 10, i64* %76, align 8, !dbg !858
  br label %if.end141, !dbg !859

if.end141:                                        ; preds = %if.then140, %if.then108
  br label %if.end202, !dbg !860

if.else142:                                       ; preds = %if.else102
  %77 = load i8*, i8** %p.addr, align 8, !dbg !861
  %arrayidx143 = getelementptr inbounds i8, i8* %77, i64 0, !dbg !861
  %78 = load i8, i8* %arrayidx143, align 1, !dbg !861
  %conv144 = zext i8 %78 to i32, !dbg !861
  %and145 = and i32 %conv144, 240, !dbg !861
  %cmp146 = icmp eq i32 %and145, 224, !dbg !861
  br i1 %cmp146, label %if.then148, label %if.else165, !dbg !863

if.then148:                                       ; preds = %if.else142
  %79 = load i8*, i8** %p.addr, align 8, !dbg !864
  %arrayidx149 = getelementptr inbounds i8, i8* %79, i64 0, !dbg !864
  %80 = load i8, i8* %arrayidx149, align 1, !dbg !864
  %conv150 = zext i8 %80 to i32, !dbg !864
  %and151 = and i32 %conv150, 15, !dbg !864
  %shl152 = shl i32 %and151, 8, !dbg !864
  %81 = load i8*, i8** %p.addr, align 8, !dbg !864
  %arrayidx153 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !864
  %82 = load i8, i8* %arrayidx153, align 1, !dbg !864
  %conv154 = zext i8 %82 to i32, !dbg !864
  %or155 = or i32 %shl152, %conv154, !dbg !864
  %conv156 = sext i32 %or155 to i64, !dbg !864
  %83 = load i64*, i64** %count.addr, align 8, !dbg !866
  store i64 %conv156, i64* %83, align 8, !dbg !867
  %84 = load i64*, i64** %entry_size.addr, align 8, !dbg !868
  %tobool157 = icmp ne i64* %84, null, !dbg !868
  br i1 %tobool157, label %if.then158, label %if.end163, !dbg !870

if.then158:                                       ; preds = %if.then148
  %85 = load i64*, i64** %count.addr, align 8, !dbg !871
  %86 = load i64, i64* %85, align 8, !dbg !872
  %add159 = add nsw i64 2, %86, !dbg !873
  %87 = load i64*, i64** %count.addr, align 8, !dbg !874
  %88 = load i64, i64* %87, align 8, !dbg !875
  %add160 = add nsw i64 %88, 2, !dbg !876
  %call161 = call i64 @lpEncodeBacklen(i8* null, i64 %add160), !dbg !877
  %add162 = add i64 %add159, %call161, !dbg !878
  %89 = load i64*, i64** %entry_size.addr, align 8, !dbg !879
  store i64 %add162, i64* %89, align 8, !dbg !880
  br label %if.end163, !dbg !881

if.end163:                                        ; preds = %if.then158, %if.then148
  %90 = load i8*, i8** %p.addr, align 8, !dbg !882
  %add.ptr164 = getelementptr inbounds i8, i8* %90, i64 2, !dbg !883
  store i8* %add.ptr164, i8** %retval, align 8, !dbg !884
  br label %return, !dbg !884

if.else165:                                       ; preds = %if.else142
  %91 = load i8*, i8** %p.addr, align 8, !dbg !885
  %arrayidx166 = getelementptr inbounds i8, i8* %91, i64 0, !dbg !885
  %92 = load i8, i8* %arrayidx166, align 1, !dbg !885
  %conv167 = zext i8 %92 to i32, !dbg !885
  %and168 = and i32 %conv167, 255, !dbg !885
  %cmp169 = icmp eq i32 %and168, 240, !dbg !885
  br i1 %cmp169, label %if.then171, label %if.else196, !dbg !887

if.then171:                                       ; preds = %if.else165
  %93 = load i8*, i8** %p.addr, align 8, !dbg !888
  %arrayidx172 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !888
  %94 = load i8, i8* %arrayidx172, align 1, !dbg !888
  %conv173 = zext i8 %94 to i32, !dbg !888
  %shl174 = shl i32 %conv173, 0, !dbg !888
  %95 = load i8*, i8** %p.addr, align 8, !dbg !888
  %arrayidx175 = getelementptr inbounds i8, i8* %95, i64 2, !dbg !888
  %96 = load i8, i8* %arrayidx175, align 1, !dbg !888
  %conv176 = zext i8 %96 to i32, !dbg !888
  %shl177 = shl i32 %conv176, 8, !dbg !888
  %or178 = or i32 %shl174, %shl177, !dbg !888
  %97 = load i8*, i8** %p.addr, align 8, !dbg !888
  %arrayidx179 = getelementptr inbounds i8, i8* %97, i64 3, !dbg !888
  %98 = load i8, i8* %arrayidx179, align 1, !dbg !888
  %conv180 = zext i8 %98 to i32, !dbg !888
  %shl181 = shl i32 %conv180, 16, !dbg !888
  %or182 = or i32 %or178, %shl181, !dbg !888
  %99 = load i8*, i8** %p.addr, align 8, !dbg !888
  %arrayidx183 = getelementptr inbounds i8, i8* %99, i64 4, !dbg !888
  %100 = load i8, i8* %arrayidx183, align 1, !dbg !888
  %conv184 = zext i8 %100 to i32, !dbg !888
  %shl185 = shl i32 %conv184, 24, !dbg !888
  %or186 = or i32 %or182, %shl185, !dbg !888
  %conv187 = zext i32 %or186 to i64, !dbg !888
  %101 = load i64*, i64** %count.addr, align 8, !dbg !890
  store i64 %conv187, i64* %101, align 8, !dbg !891
  %102 = load i64*, i64** %entry_size.addr, align 8, !dbg !892
  %tobool188 = icmp ne i64* %102, null, !dbg !892
  br i1 %tobool188, label %if.then189, label %if.end194, !dbg !894

if.then189:                                       ; preds = %if.then171
  %103 = load i64*, i64** %count.addr, align 8, !dbg !895
  %104 = load i64, i64* %103, align 8, !dbg !896
  %add190 = add nsw i64 5, %104, !dbg !897
  %105 = load i64*, i64** %count.addr, align 8, !dbg !898
  %106 = load i64, i64* %105, align 8, !dbg !899
  %add191 = add nsw i64 %106, 5, !dbg !900
  %call192 = call i64 @lpEncodeBacklen(i8* null, i64 %add191), !dbg !901
  %add193 = add i64 %add190, %call192, !dbg !902
  %107 = load i64*, i64** %entry_size.addr, align 8, !dbg !903
  store i64 %add193, i64* %107, align 8, !dbg !904
  br label %if.end194, !dbg !905

if.end194:                                        ; preds = %if.then189, %if.then171
  %108 = load i8*, i8** %p.addr, align 8, !dbg !906
  %add.ptr195 = getelementptr inbounds i8, i8* %108, i64 5, !dbg !907
  store i8* %add.ptr195, i8** %retval, align 8, !dbg !908
  br label %return, !dbg !908

if.else196:                                       ; preds = %if.else165
  %109 = load i8*, i8** %p.addr, align 8, !dbg !909
  %arrayidx197 = getelementptr inbounds i8, i8* %109, i64 0, !dbg !909
  %110 = load i8, i8* %arrayidx197, align 1, !dbg !909
  %conv198 = zext i8 %110 to i64, !dbg !909
  %add199 = add i64 12345678900000000, %conv198, !dbg !911
  store i64 %add199, i64* %uval, align 8, !dbg !912
  store i64 -1, i64* %negstart, align 8, !dbg !913
  store i64 0, i64* %negmax, align 8, !dbg !914
  br label %if.end200

if.end200:                                        ; preds = %if.else196
  br label %if.end201

if.end201:                                        ; preds = %if.end200
  br label %if.end202

if.end202:                                        ; preds = %if.end201, %if.end141
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end101
  br label %if.end204

if.end204:                                        ; preds = %if.end203, %if.end77
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end57
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.end41
  br label %if.end207

if.end207:                                        ; preds = %if.end206
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end
  %111 = load i64, i64* %uval, align 8, !dbg !915
  %112 = load i64, i64* %negstart, align 8, !dbg !917
  %cmp209 = icmp uge i64 %111, %112, !dbg !918
  br i1 %cmp209, label %if.then211, label %if.else214, !dbg !919

if.then211:                                       ; preds = %if.end208
  %113 = load i64, i64* %negmax, align 8, !dbg !920
  %114 = load i64, i64* %uval, align 8, !dbg !922
  %sub = sub i64 %113, %114, !dbg !923
  store i64 %sub, i64* %uval, align 8, !dbg !924
  %115 = load i64, i64* %uval, align 8, !dbg !925
  store i64 %115, i64* %val, align 8, !dbg !926
  %116 = load i64, i64* %val, align 8, !dbg !927
  %sub212 = sub nsw i64 0, %116, !dbg !928
  %sub213 = sub nsw i64 %sub212, 1, !dbg !929
  store i64 %sub213, i64* %val, align 8, !dbg !930
  br label %if.end215, !dbg !931

if.else214:                                       ; preds = %if.end208
  %117 = load i64, i64* %uval, align 8, !dbg !932
  store i64 %117, i64* %val, align 8, !dbg !934
  br label %if.end215

if.end215:                                        ; preds = %if.else214, %if.then211
  %118 = load i8*, i8** %intbuf.addr, align 8, !dbg !935
  %tobool216 = icmp ne i8* %118, null, !dbg !935
  br i1 %tobool216, label %if.then217, label %if.else220, !dbg !937

if.then217:                                       ; preds = %if.end215
  %119 = load i8*, i8** %intbuf.addr, align 8, !dbg !938
  %120 = load i64, i64* %val, align 8, !dbg !940
  %call218 = call i32 @ll2string(i8* %119, i64 21, i64 %120), !dbg !941
  %conv219 = sext i32 %call218 to i64, !dbg !941
  %121 = load i64*, i64** %count.addr, align 8, !dbg !942
  store i64 %conv219, i64* %121, align 8, !dbg !943
  %122 = load i8*, i8** %intbuf.addr, align 8, !dbg !944
  store i8* %122, i8** %retval, align 8, !dbg !945
  br label %return, !dbg !945

if.else220:                                       ; preds = %if.end215
  %123 = load i64, i64* %val, align 8, !dbg !946
  %124 = load i64*, i64** %count.addr, align 8, !dbg !948
  store i64 %123, i64* %124, align 8, !dbg !949
  store i8* null, i8** %retval, align 8, !dbg !950
  br label %return, !dbg !950

return:                                           ; preds = %if.else220, %if.then217, %if.end194, %if.end163, %if.end25
  %125 = load i8*, i8** %retval, align 8, !dbg !951
  ret i8* %125, !dbg !951
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpGetValue(i8* %p, i32* %slen, i64* %lval) #0 !dbg !952 {
entry:
  %p.addr = alloca i8*, align 8
  %slen.addr = alloca i32*, align 8
  %lval.addr = alloca i64*, align 8
  %vstr = alloca i8*, align 8
  %ele_len = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !956, metadata !DIExpression()), !dbg !957
  store i32* %slen, i32** %slen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %slen.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store i64* %lval, i64** %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %lval.addr, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata i8** %vstr, metadata !962, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata i64* %ele_len, metadata !964, metadata !DIExpression()), !dbg !965
  %0 = load i8*, i8** %p.addr, align 8, !dbg !966
  %call = call i8* @lpGet(i8* %0, i64* %ele_len, i8* null), !dbg !967
  store i8* %call, i8** %vstr, align 8, !dbg !968
  %1 = load i8*, i8** %vstr, align 8, !dbg !969
  %tobool = icmp ne i8* %1, null, !dbg !969
  br i1 %tobool, label %if.then, label %if.else, !dbg !971

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %ele_len, align 8, !dbg !972
  %conv = trunc i64 %2 to i32, !dbg !972
  %3 = load i32*, i32** %slen.addr, align 8, !dbg !974
  store i32 %conv, i32* %3, align 4, !dbg !975
  br label %if.end, !dbg !976

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %ele_len, align 8, !dbg !977
  %5 = load i64*, i64** %lval.addr, align 8, !dbg !979
  store i64 %4, i64* %5, align 8, !dbg !980
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %vstr, align 8, !dbg !981
  ret i8* %6, !dbg !982
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpFind(i8* %lp, i8* %p, i8* %s, i32 %slen, i32 %skip) #0 !dbg !983 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  %skip.addr = alloca i32, align 4
  %skipcnt = alloca i32, align 4
  %vencoding = alloca i8, align 1
  %value = alloca i8*, align 8
  %ll = alloca i64, align 8
  %vll = alloca i64, align 8
  %entry_size = alloca i64, align 8
  %lp_bytes = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !986, metadata !DIExpression()), !dbg !987
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !988, metadata !DIExpression()), !dbg !989
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !990, metadata !DIExpression()), !dbg !991
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !992, metadata !DIExpression()), !dbg !993
  store i32 %skip, i32* %skip.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %skip.addr, metadata !994, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata i32* %skipcnt, metadata !996, metadata !DIExpression()), !dbg !997
  store i32 0, i32* %skipcnt, align 4, !dbg !997
  call void @llvm.dbg.declare(metadata i8* %vencoding, metadata !998, metadata !DIExpression()), !dbg !999
  store i8 0, i8* %vencoding, align 1, !dbg !999
  call void @llvm.dbg.declare(metadata i8** %value, metadata !1000, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata i64* %ll, metadata !1002, metadata !DIExpression()), !dbg !1003
  call void @llvm.dbg.declare(metadata i64* %vll, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i64* %entry_size, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i64 123456789, i64* %entry_size, align 8, !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %lp_bytes, metadata !1008, metadata !DIExpression()), !dbg !1009
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1010
  %call = call i64 @lpBytes(i8* %0), !dbg !1011
  %conv = trunc i64 %call to i32, !dbg !1011
  store i32 %conv, i32* %lp_bytes, align 4, !dbg !1009
  %1 = load i8*, i8** %p.addr, align 8, !dbg !1012
  %tobool = icmp ne i8* %1, null, !dbg !1012
  %lnot = xor i1 %tobool, true, !dbg !1012
  %lnot1 = xor i1 %lnot, true, !dbg !1012
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1012
  %conv2 = sext i32 %lnot.ext to i64, !dbg !1012
  %tobool3 = icmp ne i64 %conv2, 0, !dbg !1012
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !1012

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1012

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 695), !dbg !1012
  unreachable, !dbg !1012

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1012

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  br label %while.cond, !dbg !1013

while.cond:                                       ; preds = %if.end94, %cond.end
  %2 = load i8*, i8** %p.addr, align 8, !dbg !1014
  %tobool4 = icmp ne i8* %2, null, !dbg !1013
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1013

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %skipcnt, align 4, !dbg !1015
  %cmp = icmp eq i32 %3, 0, !dbg !1018
  br i1 %cmp, label %if.then, label %if.else59, !dbg !1019

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %p.addr, align 8, !dbg !1020
  %call6 = call i8* @lpGetWithSize(i8* %4, i64* %ll, i8* null, i64* %entry_size), !dbg !1022
  store i8* %call6, i8** %value, align 8, !dbg !1023
  %5 = load i8*, i8** %value, align 8, !dbg !1024
  %tobool7 = icmp ne i8* %5, null, !dbg !1024
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1026

if.then8:                                         ; preds = %if.then
  %6 = load i8*, i8** %p.addr, align 8, !dbg !1027
  %7 = load i8*, i8** %lp.addr, align 8, !dbg !1027
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 6, !dbg !1027
  %cmp9 = icmp uge i8* %6, %add.ptr, !dbg !1027
  br i1 %cmp9, label %land.rhs, label %land.end, !dbg !1027

land.rhs:                                         ; preds = %if.then8
  %8 = load i8*, i8** %p.addr, align 8, !dbg !1027
  %9 = load i64, i64* %entry_size, align 8, !dbg !1027
  %add.ptr11 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !1027
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !1027
  %11 = load i32, i32* %lp_bytes, align 4, !dbg !1027
  %idx.ext = zext i32 %11 to i64, !dbg !1027
  %add.ptr12 = getelementptr inbounds i8, i8* %10, i64 %idx.ext, !dbg !1027
  %cmp13 = icmp ult i8* %add.ptr11, %add.ptr12, !dbg !1027
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then8
  %12 = phi i1 [ false, %if.then8 ], [ %cmp13, %land.rhs ], !dbg !1029
  %lnot15 = xor i1 %12, true, !dbg !1027
  %lnot17 = xor i1 %lnot15, true, !dbg !1027
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !1027
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !1027
  %tobool20 = icmp ne i64 %conv19, 0, !dbg !1027
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1027

cond.true21:                                      ; preds = %land.end
  br label %cond.end24, !dbg !1027

cond.false22:                                     ; preds = %land.end
  call void @_serverAssert(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 701), !dbg !1027
  unreachable, !dbg !1027

unreachable.cont23:                               ; No predecessors!
  br label %cond.end24, !dbg !1027

cond.end24:                                       ; preds = %unreachable.cont23, %cond.true21
  %13 = load i32, i32* %slen.addr, align 4, !dbg !1030
  %conv25 = zext i32 %13 to i64, !dbg !1030
  %14 = load i64, i64* %ll, align 8, !dbg !1032
  %cmp26 = icmp eq i64 %conv25, %14, !dbg !1033
  br i1 %cmp26, label %land.lhs.true, label %if.end, !dbg !1034

land.lhs.true:                                    ; preds = %cond.end24
  %15 = load i8*, i8** %value, align 8, !dbg !1035
  %16 = load i8*, i8** %s.addr, align 8, !dbg !1036
  %17 = load i32, i32* %slen.addr, align 4, !dbg !1037
  %conv28 = zext i32 %17 to i64, !dbg !1037
  %call29 = call i32 @memcmp(i8* %15, i8* %16, i64 %conv28) #7, !dbg !1038
  %cmp30 = icmp eq i32 %call29, 0, !dbg !1039
  br i1 %cmp30, label %if.then32, label %if.end, !dbg !1040

if.then32:                                        ; preds = %land.lhs.true
  %18 = load i8*, i8** %p.addr, align 8, !dbg !1041
  store i8* %18, i8** %retval, align 8, !dbg !1043
  br label %return, !dbg !1043

if.end:                                           ; preds = %land.lhs.true, %cond.end24
  br label %if.end57, !dbg !1044

if.else:                                          ; preds = %if.then
  %19 = load i8, i8* %vencoding, align 1, !dbg !1045
  %conv33 = zext i8 %19 to i32, !dbg !1045
  %cmp34 = icmp eq i32 %conv33, 0, !dbg !1048
  br i1 %cmp34, label %if.then36, label %if.end48, !dbg !1049

if.then36:                                        ; preds = %if.else
  %20 = load i32, i32* %slen.addr, align 4, !dbg !1050
  %cmp37 = icmp uge i32 %20, 32, !dbg !1053
  br i1 %cmp37, label %if.then45, label %lor.lhs.false, !dbg !1054

lor.lhs.false:                                    ; preds = %if.then36
  %21 = load i32, i32* %slen.addr, align 4, !dbg !1055
  %cmp39 = icmp eq i32 %21, 0, !dbg !1056
  br i1 %cmp39, label %if.then45, label %lor.lhs.false41, !dbg !1057

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %22 = load i8*, i8** %s.addr, align 8, !dbg !1058
  %23 = load i32, i32* %slen.addr, align 4, !dbg !1059
  %conv42 = zext i32 %23 to i64, !dbg !1059
  %call43 = call i32 @lpStringToInt64(i8* %22, i64 %conv42, i64* %vll), !dbg !1060
  %tobool44 = icmp ne i32 %call43, 0, !dbg !1060
  br i1 %tobool44, label %if.else46, label %if.then45, !dbg !1061

if.then45:                                        ; preds = %lor.lhs.false41, %lor.lhs.false, %if.then36
  store i8 -1, i8* %vencoding, align 1, !dbg !1062
  br label %if.end47, !dbg !1064

if.else46:                                        ; preds = %lor.lhs.false41
  store i8 1, i8* %vencoding, align 1, !dbg !1065
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  br label %if.end48, !dbg !1067

if.end48:                                         ; preds = %if.end47, %if.else
  %24 = load i8, i8* %vencoding, align 1, !dbg !1068
  %conv49 = zext i8 %24 to i32, !dbg !1068
  %cmp50 = icmp ne i32 %conv49, 255, !dbg !1070
  br i1 %cmp50, label %land.lhs.true52, label %if.end56, !dbg !1071

land.lhs.true52:                                  ; preds = %if.end48
  %25 = load i64, i64* %ll, align 8, !dbg !1072
  %26 = load i64, i64* %vll, align 8, !dbg !1073
  %cmp53 = icmp eq i64 %25, %26, !dbg !1074
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !1075

if.then55:                                        ; preds = %land.lhs.true52
  %27 = load i8*, i8** %p.addr, align 8, !dbg !1076
  store i8* %27, i8** %retval, align 8, !dbg !1078
  br label %return, !dbg !1078

if.end56:                                         ; preds = %land.lhs.true52, %if.end48
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end
  %28 = load i32, i32* %skip.addr, align 4, !dbg !1079
  store i32 %28, i32* %skipcnt, align 4, !dbg !1080
  %29 = load i64, i64* %entry_size, align 8, !dbg !1081
  %30 = load i8*, i8** %p.addr, align 8, !dbg !1082
  %add.ptr58 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !1082
  store i8* %add.ptr58, i8** %p.addr, align 8, !dbg !1082
  br label %if.end61, !dbg !1083

if.else59:                                        ; preds = %while.body
  %31 = load i32, i32* %skipcnt, align 4, !dbg !1084
  %dec = add nsw i32 %31, -1, !dbg !1084
  store i32 %dec, i32* %skipcnt, align 4, !dbg !1084
  %32 = load i8*, i8** %p.addr, align 8, !dbg !1086
  %call60 = call i8* @lpSkip(i8* %32), !dbg !1087
  store i8* %call60, i8** %p.addr, align 8, !dbg !1088
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.end57
  %33 = load i8*, i8** %p.addr, align 8, !dbg !1089
  %add.ptr62 = getelementptr inbounds i8, i8* %33, i64 8, !dbg !1091
  %34 = load i8*, i8** %lp.addr, align 8, !dbg !1092
  %35 = load i32, i32* %lp_bytes, align 4, !dbg !1093
  %idx.ext63 = zext i32 %35 to i64, !dbg !1094
  %add.ptr64 = getelementptr inbounds i8, i8* %34, i64 %idx.ext63, !dbg !1094
  %cmp65 = icmp uge i8* %add.ptr62, %add.ptr64, !dbg !1095
  br i1 %cmp65, label %if.then67, label %if.else69, !dbg !1096

if.then67:                                        ; preds = %if.end61
  %36 = load i8*, i8** %lp.addr, align 8, !dbg !1097
  %37 = load i32, i32* %lp_bytes, align 4, !dbg !1098
  %conv68 = zext i32 %37 to i64, !dbg !1098
  %38 = load i8*, i8** %p.addr, align 8, !dbg !1099
  call void @lpAssertValidEntry(i8* %36, i64 %conv68, i8* %38), !dbg !1100
  br label %if.end89, !dbg !1100

if.else69:                                        ; preds = %if.end61
  %39 = load i8*, i8** %p.addr, align 8, !dbg !1101
  %40 = load i8*, i8** %lp.addr, align 8, !dbg !1101
  %add.ptr70 = getelementptr inbounds i8, i8* %40, i64 6, !dbg !1101
  %cmp71 = icmp uge i8* %39, %add.ptr70, !dbg !1101
  br i1 %cmp71, label %land.rhs73, label %land.end78, !dbg !1101

land.rhs73:                                       ; preds = %if.else69
  %41 = load i8*, i8** %p.addr, align 8, !dbg !1101
  %42 = load i8*, i8** %lp.addr, align 8, !dbg !1101
  %43 = load i32, i32* %lp_bytes, align 4, !dbg !1101
  %idx.ext74 = zext i32 %43 to i64, !dbg !1101
  %add.ptr75 = getelementptr inbounds i8, i8* %42, i64 %idx.ext74, !dbg !1101
  %cmp76 = icmp ult i8* %41, %add.ptr75, !dbg !1101
  br label %land.end78

land.end78:                                       ; preds = %land.rhs73, %if.else69
  %44 = phi i1 [ false, %if.else69 ], [ %cmp76, %land.rhs73 ], !dbg !1102
  %lnot79 = xor i1 %44, true, !dbg !1101
  %lnot81 = xor i1 %lnot79, true, !dbg !1101
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !1101
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !1101
  %tobool84 = icmp ne i64 %conv83, 0, !dbg !1101
  br i1 %tobool84, label %cond.true85, label %cond.false86, !dbg !1101

cond.true85:                                      ; preds = %land.end78
  br label %cond.end88, !dbg !1101

cond.false86:                                     ; preds = %land.end78
  call void @_serverAssert(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 745), !dbg !1101
  unreachable, !dbg !1101

unreachable.cont87:                               ; No predecessors!
  br label %cond.end88, !dbg !1101

cond.end88:                                       ; preds = %unreachable.cont87, %cond.true85
  br label %if.end89

if.end89:                                         ; preds = %cond.end88, %if.then67
  %45 = load i8*, i8** %p.addr, align 8, !dbg !1103
  %arrayidx = getelementptr inbounds i8, i8* %45, i64 0, !dbg !1103
  %46 = load i8, i8* %arrayidx, align 1, !dbg !1103
  %conv90 = zext i8 %46 to i32, !dbg !1103
  %cmp91 = icmp eq i32 %conv90, 255, !dbg !1105
  br i1 %cmp91, label %if.then93, label %if.end94, !dbg !1106

if.then93:                                        ; preds = %if.end89
  br label %while.end, !dbg !1107

if.end94:                                         ; preds = %if.end89
  br label %while.cond, !dbg !1013, !llvm.loop !1108

while.end:                                        ; preds = %if.then93, %while.cond
  store i8* null, i8** %retval, align 8, !dbg !1110
  br label %return, !dbg !1110

return:                                           ; preds = %while.end, %if.then55, %if.then32
  %47 = load i8*, i8** %retval, align 8, !dbg !1111
  ret i8* %47, !dbg !1111
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpInsert(i8* %lp, i8* %elestr, i8* %eleint, i32 %size, i8* %p, i32 %where, i8** %newp) #0 !dbg !1112 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %elestr.addr = alloca i8*, align 8
  %eleint.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %where.addr = alloca i32, align 4
  %newp.addr = alloca i8**, align 8
  %intenc = alloca [9 x i8], align 1
  %backlen = alloca [5 x i8], align 1
  %enclen = alloca i64, align 8
  %delete = alloca i32, align 4
  %poff = alloca i64, align 8
  %enctype = alloca i32, align 4
  %backlen_size = alloca i64, align 8
  %old_listpack_bytes = alloca i64, align 8
  %replaced_len = alloca i32, align 4
  %new_listpack_bytes = alloca i64, align 8
  %dst = alloca i8*, align 8
  %lendiff = alloca i64, align 8
  %num_elements = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1116, metadata !DIExpression()), !dbg !1117
  store i8* %elestr, i8** %elestr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %elestr.addr, metadata !1118, metadata !DIExpression()), !dbg !1119
  store i8* %eleint, i8** %eleint.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %eleint.addr, metadata !1120, metadata !DIExpression()), !dbg !1121
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1124, metadata !DIExpression()), !dbg !1125
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !1126, metadata !DIExpression()), !dbg !1127
  store i8** %newp, i8*** %newp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %newp.addr, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata [9 x i8]* %intenc, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata [5 x i8]* %backlen, metadata !1135, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata i64* %enclen, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata i32* %delete, metadata !1142, metadata !DIExpression()), !dbg !1143
  %0 = load i8*, i8** %elestr.addr, align 8, !dbg !1144
  %cmp = icmp eq i8* %0, null, !dbg !1145
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1146

land.rhs:                                         ; preds = %entry
  %1 = load i8*, i8** %eleint.addr, align 8, !dbg !1147
  %cmp1 = icmp eq i8* %1, null, !dbg !1148
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1149
  %land.ext = zext i1 %2 to i32, !dbg !1146
  store i32 %land.ext, i32* %delete, align 4, !dbg !1143
  %3 = load i32, i32* %delete, align 4, !dbg !1150
  %tobool = icmp ne i32 %3, 0, !dbg !1150
  br i1 %tobool, label %if.then, label %if.end, !dbg !1152

if.then:                                          ; preds = %land.end
  store i32 2, i32* %where.addr, align 4, !dbg !1153
  br label %if.end, !dbg !1154

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i32, i32* %where.addr, align 4, !dbg !1155
  %cmp2 = icmp eq i32 %4, 1, !dbg !1157
  br i1 %cmp2, label %if.then3, label %if.end25, !dbg !1158

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %p.addr, align 8, !dbg !1159
  %call = call i8* @lpSkip(i8* %5), !dbg !1161
  store i8* %call, i8** %p.addr, align 8, !dbg !1162
  store i32 0, i32* %where.addr, align 4, !dbg !1163
  br label %do.body, !dbg !1164

do.body:                                          ; preds = %if.then3
  %6 = load i8*, i8** %p.addr, align 8, !dbg !1165
  %7 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 6, !dbg !1165
  %cmp4 = icmp uge i8* %6, %add.ptr, !dbg !1165
  br i1 %cmp4, label %land.rhs5, label %land.end20, !dbg !1165

land.rhs5:                                        ; preds = %do.body
  %8 = load i8*, i8** %p.addr, align 8, !dbg !1165
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1165
  %11 = load i8, i8* %arrayidx, align 1, !dbg !1165
  %conv = zext i8 %11 to i32, !dbg !1165
  %shl = shl i32 %conv, 0, !dbg !1165
  %12 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %arrayidx6 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1165
  %13 = load i8, i8* %arrayidx6, align 1, !dbg !1165
  %conv7 = zext i8 %13 to i32, !dbg !1165
  %shl8 = shl i32 %conv7, 8, !dbg !1165
  %or = or i32 %shl, %shl8, !dbg !1165
  %14 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %arrayidx9 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1165
  %15 = load i8, i8* %arrayidx9, align 1, !dbg !1165
  %conv10 = zext i8 %15 to i32, !dbg !1165
  %shl11 = shl i32 %conv10, 16, !dbg !1165
  %or12 = or i32 %or, %shl11, !dbg !1165
  %16 = load i8*, i8** %lp.addr, align 8, !dbg !1165
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1165
  %17 = load i8, i8* %arrayidx13, align 1, !dbg !1165
  %conv14 = zext i8 %17 to i32, !dbg !1165
  %shl15 = shl i32 %conv14, 24, !dbg !1165
  %or16 = or i32 %or12, %shl15, !dbg !1165
  %idx.ext = zext i32 %or16 to i64, !dbg !1165
  %add.ptr17 = getelementptr inbounds i8, i8* %9, i64 %idx.ext, !dbg !1165
  %cmp18 = icmp ult i8* %8, %add.ptr17, !dbg !1165
  br label %land.end20

land.end20:                                       ; preds = %land.rhs5, %do.body
  %18 = phi i1 [ false, %do.body ], [ %cmp18, %land.rhs5 ], !dbg !1167
  %lnot = xor i1 %18, true, !dbg !1165
  %lnot22 = xor i1 %lnot, true, !dbg !1165
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !1165
  %conv23 = sext i32 %lnot.ext to i64, !dbg !1165
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !1165
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !1165

cond.true:                                        ; preds = %land.end20
  br label %cond.end, !dbg !1165

cond.false:                                       ; preds = %land.end20
  call void @_serverAssert(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 801), !dbg !1165
  unreachable, !dbg !1165

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !1165

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  br label %do.end, !dbg !1165

do.end:                                           ; preds = %cond.end
  br label %if.end25, !dbg !1168

if.end25:                                         ; preds = %do.end, %if.end
  call void @llvm.dbg.declare(metadata i64* %poff, metadata !1169, metadata !DIExpression()), !dbg !1170
  %19 = load i8*, i8** %p.addr, align 8, !dbg !1171
  %20 = load i8*, i8** %lp.addr, align 8, !dbg !1172
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64, !dbg !1173
  %sub.ptr.rhs.cast = ptrtoint i8* %20 to i64, !dbg !1173
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1173
  store i64 %sub.ptr.sub, i64* %poff, align 8, !dbg !1170
  call void @llvm.dbg.declare(metadata i32* %enctype, metadata !1174, metadata !DIExpression()), !dbg !1175
  %21 = load i8*, i8** %elestr.addr, align 8, !dbg !1176
  %tobool26 = icmp ne i8* %21, null, !dbg !1176
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !1178

if.then27:                                        ; preds = %if.end25
  %22 = load i8*, i8** %elestr.addr, align 8, !dbg !1179
  %23 = load i32, i32* %size.addr, align 4, !dbg !1181
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %intenc, i64 0, i64 0, !dbg !1182
  %call28 = call i32 @lpEncodeGetType(i8* %22, i32 %23, i8* %arraydecay, i64* %enclen), !dbg !1183
  store i32 %call28, i32* %enctype, align 4, !dbg !1184
  %24 = load i32, i32* %enctype, align 4, !dbg !1185
  %cmp29 = icmp eq i32 %24, 0, !dbg !1187
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !1188

if.then31:                                        ; preds = %if.then27
  %arraydecay32 = getelementptr inbounds [9 x i8], [9 x i8]* %intenc, i64 0, i64 0, !dbg !1189
  store i8* %arraydecay32, i8** %eleint.addr, align 8, !dbg !1190
  br label %if.end33, !dbg !1191

if.end33:                                         ; preds = %if.then31, %if.then27
  br label %if.end39, !dbg !1192

if.else:                                          ; preds = %if.end25
  %25 = load i8*, i8** %eleint.addr, align 8, !dbg !1193
  %tobool34 = icmp ne i8* %25, null, !dbg !1193
  br i1 %tobool34, label %if.then35, label %if.else37, !dbg !1195

if.then35:                                        ; preds = %if.else
  store i32 0, i32* %enctype, align 4, !dbg !1196
  %26 = load i32, i32* %size.addr, align 4, !dbg !1198
  %conv36 = zext i32 %26 to i64, !dbg !1198
  store i64 %conv36, i64* %enclen, align 8, !dbg !1199
  br label %if.end38, !dbg !1200

if.else37:                                        ; preds = %if.else
  store i32 -1, i32* %enctype, align 4, !dbg !1201
  store i64 0, i64* %enclen, align 8, !dbg !1203
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then35
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end33
  call void @llvm.dbg.declare(metadata i64* %backlen_size, metadata !1204, metadata !DIExpression()), !dbg !1205
  %27 = load i32, i32* %delete, align 4, !dbg !1206
  %tobool40 = icmp ne i32 %27, 0, !dbg !1206
  br i1 %tobool40, label %cond.false44, label %cond.true41, !dbg !1207

cond.true41:                                      ; preds = %if.end39
  %arraydecay42 = getelementptr inbounds [5 x i8], [5 x i8]* %backlen, i64 0, i64 0, !dbg !1208
  %28 = load i64, i64* %enclen, align 8, !dbg !1209
  %call43 = call i64 @lpEncodeBacklen(i8* %arraydecay42, i64 %28), !dbg !1210
  br label %cond.end45, !dbg !1207

cond.false44:                                     ; preds = %if.end39
  br label %cond.end45, !dbg !1207

cond.end45:                                       ; preds = %cond.false44, %cond.true41
  %cond = phi i64 [ %call43, %cond.true41 ], [ 0, %cond.false44 ], !dbg !1207
  store i64 %cond, i64* %backlen_size, align 8, !dbg !1205
  call void @llvm.dbg.declare(metadata i64* %old_listpack_bytes, metadata !1211, metadata !DIExpression()), !dbg !1212
  %29 = load i8*, i8** %lp.addr, align 8, !dbg !1213
  %arrayidx46 = getelementptr inbounds i8, i8* %29, i64 0, !dbg !1213
  %30 = load i8, i8* %arrayidx46, align 1, !dbg !1213
  %conv47 = zext i8 %30 to i32, !dbg !1213
  %shl48 = shl i32 %conv47, 0, !dbg !1213
  %31 = load i8*, i8** %lp.addr, align 8, !dbg !1213
  %arrayidx49 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1213
  %32 = load i8, i8* %arrayidx49, align 1, !dbg !1213
  %conv50 = zext i8 %32 to i32, !dbg !1213
  %shl51 = shl i32 %conv50, 8, !dbg !1213
  %or52 = or i32 %shl48, %shl51, !dbg !1213
  %33 = load i8*, i8** %lp.addr, align 8, !dbg !1213
  %arrayidx53 = getelementptr inbounds i8, i8* %33, i64 2, !dbg !1213
  %34 = load i8, i8* %arrayidx53, align 1, !dbg !1213
  %conv54 = zext i8 %34 to i32, !dbg !1213
  %shl55 = shl i32 %conv54, 16, !dbg !1213
  %or56 = or i32 %or52, %shl55, !dbg !1213
  %35 = load i8*, i8** %lp.addr, align 8, !dbg !1213
  %arrayidx57 = getelementptr inbounds i8, i8* %35, i64 3, !dbg !1213
  %36 = load i8, i8* %arrayidx57, align 1, !dbg !1213
  %conv58 = zext i8 %36 to i32, !dbg !1213
  %shl59 = shl i32 %conv58, 24, !dbg !1213
  %or60 = or i32 %or56, %shl59, !dbg !1213
  %conv61 = zext i32 %or60 to i64, !dbg !1213
  store i64 %conv61, i64* %old_listpack_bytes, align 8, !dbg !1212
  call void @llvm.dbg.declare(metadata i32* %replaced_len, metadata !1214, metadata !DIExpression()), !dbg !1215
  store i32 0, i32* %replaced_len, align 4, !dbg !1215
  %37 = load i32, i32* %where.addr, align 4, !dbg !1216
  %cmp62 = icmp eq i32 %37, 2, !dbg !1218
  br i1 %cmp62, label %if.then64, label %if.end109, !dbg !1219

if.then64:                                        ; preds = %cond.end45
  %38 = load i8*, i8** %p.addr, align 8, !dbg !1220
  %call65 = call i32 @lpCurrentEncodedSizeUnsafe(i8* %38), !dbg !1222
  store i32 %call65, i32* %replaced_len, align 4, !dbg !1223
  %39 = load i32, i32* %replaced_len, align 4, !dbg !1224
  %conv66 = zext i32 %39 to i64, !dbg !1224
  %call67 = call i64 @lpEncodeBacklen(i8* null, i64 %conv66), !dbg !1225
  %40 = load i32, i32* %replaced_len, align 4, !dbg !1226
  %conv68 = zext i32 %40 to i64, !dbg !1226
  %add = add i64 %conv68, %call67, !dbg !1226
  %conv69 = trunc i64 %add to i32, !dbg !1226
  store i32 %conv69, i32* %replaced_len, align 4, !dbg !1226
  br label %do.body70, !dbg !1227

do.body70:                                        ; preds = %if.then64
  %41 = load i8*, i8** %p.addr, align 8, !dbg !1228
  %42 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %add.ptr71 = getelementptr inbounds i8, i8* %42, i64 6, !dbg !1228
  %cmp72 = icmp uge i8* %41, %add.ptr71, !dbg !1228
  br i1 %cmp72, label %land.rhs74, label %land.end96, !dbg !1228

land.rhs74:                                       ; preds = %do.body70
  %43 = load i8*, i8** %p.addr, align 8, !dbg !1228
  %44 = load i32, i32* %replaced_len, align 4, !dbg !1228
  %idx.ext75 = zext i32 %44 to i64, !dbg !1228
  %add.ptr76 = getelementptr inbounds i8, i8* %43, i64 %idx.ext75, !dbg !1228
  %45 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %46 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %arrayidx77 = getelementptr inbounds i8, i8* %46, i64 0, !dbg !1228
  %47 = load i8, i8* %arrayidx77, align 1, !dbg !1228
  %conv78 = zext i8 %47 to i32, !dbg !1228
  %shl79 = shl i32 %conv78, 0, !dbg !1228
  %48 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %arrayidx80 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1228
  %49 = load i8, i8* %arrayidx80, align 1, !dbg !1228
  %conv81 = zext i8 %49 to i32, !dbg !1228
  %shl82 = shl i32 %conv81, 8, !dbg !1228
  %or83 = or i32 %shl79, %shl82, !dbg !1228
  %50 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %arrayidx84 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !1228
  %51 = load i8, i8* %arrayidx84, align 1, !dbg !1228
  %conv85 = zext i8 %51 to i32, !dbg !1228
  %shl86 = shl i32 %conv85, 16, !dbg !1228
  %or87 = or i32 %or83, %shl86, !dbg !1228
  %52 = load i8*, i8** %lp.addr, align 8, !dbg !1228
  %arrayidx88 = getelementptr inbounds i8, i8* %52, i64 3, !dbg !1228
  %53 = load i8, i8* %arrayidx88, align 1, !dbg !1228
  %conv89 = zext i8 %53 to i32, !dbg !1228
  %shl90 = shl i32 %conv89, 24, !dbg !1228
  %or91 = or i32 %or87, %shl90, !dbg !1228
  %idx.ext92 = zext i32 %or91 to i64, !dbg !1228
  %add.ptr93 = getelementptr inbounds i8, i8* %45, i64 %idx.ext92, !dbg !1228
  %cmp94 = icmp ult i8* %add.ptr76, %add.ptr93, !dbg !1228
  br label %land.end96

land.end96:                                       ; preds = %land.rhs74, %do.body70
  %54 = phi i1 [ false, %do.body70 ], [ %cmp94, %land.rhs74 ], !dbg !1230
  %lnot98 = xor i1 %54, true, !dbg !1228
  %lnot100 = xor i1 %lnot98, true, !dbg !1228
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !1228
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !1228
  %tobool103 = icmp ne i64 %conv102, 0, !dbg !1228
  br i1 %tobool103, label %cond.true104, label %cond.false105, !dbg !1228

cond.true104:                                     ; preds = %land.end96
  br label %cond.end107, !dbg !1228

cond.false105:                                    ; preds = %land.end96
  call void @_serverAssert(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 837), !dbg !1228
  unreachable, !dbg !1228

unreachable.cont106:                              ; No predecessors!
  br label %cond.end107, !dbg !1228

cond.end107:                                      ; preds = %unreachable.cont106, %cond.true104
  br label %do.end108, !dbg !1228

do.end108:                                        ; preds = %cond.end107
  br label %if.end109, !dbg !1231

if.end109:                                        ; preds = %do.end108, %cond.end45
  call void @llvm.dbg.declare(metadata i64* %new_listpack_bytes, metadata !1232, metadata !DIExpression()), !dbg !1233
  %55 = load i64, i64* %old_listpack_bytes, align 8, !dbg !1234
  %56 = load i64, i64* %enclen, align 8, !dbg !1235
  %add110 = add i64 %55, %56, !dbg !1236
  %57 = load i64, i64* %backlen_size, align 8, !dbg !1237
  %add111 = add i64 %add110, %57, !dbg !1238
  %58 = load i32, i32* %replaced_len, align 4, !dbg !1239
  %conv112 = zext i32 %58 to i64, !dbg !1239
  %sub = sub i64 %add111, %conv112, !dbg !1240
  store i64 %sub, i64* %new_listpack_bytes, align 8, !dbg !1233
  %59 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1241
  %cmp113 = icmp ugt i64 %59, 4294967295, !dbg !1243
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !1244

if.then115:                                       ; preds = %if.end109
  store i8* null, i8** %retval, align 8, !dbg !1245
  br label %return, !dbg !1245

if.end116:                                        ; preds = %if.end109
  call void @llvm.dbg.declare(metadata i8** %dst, metadata !1246, metadata !DIExpression()), !dbg !1247
  %60 = load i8*, i8** %lp.addr, align 8, !dbg !1248
  %61 = load i64, i64* %poff, align 8, !dbg !1249
  %add.ptr117 = getelementptr inbounds i8, i8* %60, i64 %61, !dbg !1250
  store i8* %add.ptr117, i8** %dst, align 8, !dbg !1247
  %62 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1251
  %63 = load i64, i64* %old_listpack_bytes, align 8, !dbg !1253
  %cmp118 = icmp ugt i64 %62, %63, !dbg !1254
  br i1 %cmp118, label %land.lhs.true, label %if.end130, !dbg !1255

land.lhs.true:                                    ; preds = %if.end116
  %64 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1256
  %65 = load i8*, i8** %lp.addr, align 8, !dbg !1257
  %call120 = call i64 @malloc_usable_size(i8* %65) #6, !dbg !1257
  %cmp121 = icmp ugt i64 %64, %call120, !dbg !1258
  br i1 %cmp121, label %if.then123, label %if.end130, !dbg !1259

if.then123:                                       ; preds = %land.lhs.true
  %66 = load i8*, i8** %lp.addr, align 8, !dbg !1260
  %67 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1260
  %call124 = call i8* @zrealloc_usable(i8* %66, i64 %67, i64* null), !dbg !1260
  store i8* %call124, i8** %lp.addr, align 8, !dbg !1263
  %cmp125 = icmp eq i8* %call124, null, !dbg !1264
  br i1 %cmp125, label %if.then127, label %if.end128, !dbg !1265

if.then127:                                       ; preds = %if.then123
  store i8* null, i8** %retval, align 8, !dbg !1266
  br label %return, !dbg !1266

if.end128:                                        ; preds = %if.then123
  %68 = load i8*, i8** %lp.addr, align 8, !dbg !1267
  %69 = load i64, i64* %poff, align 8, !dbg !1268
  %add.ptr129 = getelementptr inbounds i8, i8* %68, i64 %69, !dbg !1269
  store i8* %add.ptr129, i8** %dst, align 8, !dbg !1270
  br label %if.end130, !dbg !1271

if.end130:                                        ; preds = %if.end128, %land.lhs.true, %if.end116
  %70 = load i32, i32* %where.addr, align 4, !dbg !1272
  %cmp131 = icmp eq i32 %70, 0, !dbg !1274
  br i1 %cmp131, label %if.then133, label %if.else137, !dbg !1275

if.then133:                                       ; preds = %if.end130
  %71 = load i8*, i8** %dst, align 8, !dbg !1276
  %72 = load i64, i64* %enclen, align 8, !dbg !1278
  %add.ptr134 = getelementptr inbounds i8, i8* %71, i64 %72, !dbg !1279
  %73 = load i64, i64* %backlen_size, align 8, !dbg !1280
  %add.ptr135 = getelementptr inbounds i8, i8* %add.ptr134, i64 %73, !dbg !1281
  %74 = load i8*, i8** %dst, align 8, !dbg !1282
  %75 = load i64, i64* %old_listpack_bytes, align 8, !dbg !1283
  %76 = load i64, i64* %poff, align 8, !dbg !1284
  %sub136 = sub i64 %75, %76, !dbg !1285
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr135, i8* align 1 %74, i64 %sub136, i1 false), !dbg !1286
  br label %if.end149, !dbg !1287

if.else137:                                       ; preds = %if.end130
  call void @llvm.dbg.declare(metadata i64* %lendiff, metadata !1288, metadata !DIExpression()), !dbg !1290
  %77 = load i64, i64* %enclen, align 8, !dbg !1291
  %78 = load i64, i64* %backlen_size, align 8, !dbg !1292
  %add138 = add i64 %77, %78, !dbg !1293
  %79 = load i32, i32* %replaced_len, align 4, !dbg !1294
  %conv139 = zext i32 %79 to i64, !dbg !1294
  %sub140 = sub i64 %add138, %conv139, !dbg !1295
  store i64 %sub140, i64* %lendiff, align 8, !dbg !1290
  %80 = load i8*, i8** %dst, align 8, !dbg !1296
  %81 = load i32, i32* %replaced_len, align 4, !dbg !1297
  %idx.ext141 = zext i32 %81 to i64, !dbg !1298
  %add.ptr142 = getelementptr inbounds i8, i8* %80, i64 %idx.ext141, !dbg !1298
  %82 = load i64, i64* %lendiff, align 8, !dbg !1299
  %add.ptr143 = getelementptr inbounds i8, i8* %add.ptr142, i64 %82, !dbg !1300
  %83 = load i8*, i8** %dst, align 8, !dbg !1301
  %84 = load i32, i32* %replaced_len, align 4, !dbg !1302
  %idx.ext144 = zext i32 %84 to i64, !dbg !1303
  %add.ptr145 = getelementptr inbounds i8, i8* %83, i64 %idx.ext144, !dbg !1303
  %85 = load i64, i64* %old_listpack_bytes, align 8, !dbg !1304
  %86 = load i64, i64* %poff, align 8, !dbg !1305
  %sub146 = sub i64 %85, %86, !dbg !1306
  %87 = load i32, i32* %replaced_len, align 4, !dbg !1307
  %conv147 = zext i32 %87 to i64, !dbg !1307
  %sub148 = sub i64 %sub146, %conv147, !dbg !1308
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr143, i8* align 1 %add.ptr145, i64 %sub148, i1 false), !dbg !1309
  br label %if.end149

if.end149:                                        ; preds = %if.else137, %if.then133
  %88 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1310
  %89 = load i64, i64* %old_listpack_bytes, align 8, !dbg !1312
  %cmp150 = icmp ult i64 %88, %89, !dbg !1313
  br i1 %cmp150, label %if.then152, label %if.end159, !dbg !1314

if.then152:                                       ; preds = %if.end149
  %90 = load i8*, i8** %lp.addr, align 8, !dbg !1315
  %91 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1315
  %call153 = call i8* @zrealloc_usable(i8* %90, i64 %91, i64* null), !dbg !1315
  store i8* %call153, i8** %lp.addr, align 8, !dbg !1318
  %cmp154 = icmp eq i8* %call153, null, !dbg !1319
  br i1 %cmp154, label %if.then156, label %if.end157, !dbg !1320

if.then156:                                       ; preds = %if.then152
  store i8* null, i8** %retval, align 8, !dbg !1321
  br label %return, !dbg !1321

if.end157:                                        ; preds = %if.then152
  %92 = load i8*, i8** %lp.addr, align 8, !dbg !1322
  %93 = load i64, i64* %poff, align 8, !dbg !1323
  %add.ptr158 = getelementptr inbounds i8, i8* %92, i64 %93, !dbg !1324
  store i8* %add.ptr158, i8** %dst, align 8, !dbg !1325
  br label %if.end159, !dbg !1326

if.end159:                                        ; preds = %if.end157, %if.end149
  %94 = load i8**, i8*** %newp.addr, align 8, !dbg !1327
  %tobool160 = icmp ne i8** %94, null, !dbg !1327
  br i1 %tobool160, label %if.then161, label %if.end170, !dbg !1329

if.then161:                                       ; preds = %if.end159
  %95 = load i8*, i8** %dst, align 8, !dbg !1330
  %96 = load i8**, i8*** %newp.addr, align 8, !dbg !1332
  store i8* %95, i8** %96, align 8, !dbg !1333
  %97 = load i32, i32* %delete, align 4, !dbg !1334
  %tobool162 = icmp ne i32 %97, 0, !dbg !1334
  br i1 %tobool162, label %land.lhs.true163, label %if.end169, !dbg !1336

land.lhs.true163:                                 ; preds = %if.then161
  %98 = load i8*, i8** %dst, align 8, !dbg !1337
  %arrayidx164 = getelementptr inbounds i8, i8* %98, i64 0, !dbg !1337
  %99 = load i8, i8* %arrayidx164, align 1, !dbg !1337
  %conv165 = zext i8 %99 to i32, !dbg !1337
  %cmp166 = icmp eq i32 %conv165, 255, !dbg !1338
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1339

if.then168:                                       ; preds = %land.lhs.true163
  %100 = load i8**, i8*** %newp.addr, align 8, !dbg !1340
  store i8* null, i8** %100, align 8, !dbg !1341
  br label %if.end169, !dbg !1342

if.end169:                                        ; preds = %if.then168, %land.lhs.true163, %if.then161
  br label %if.end170, !dbg !1343

if.end170:                                        ; preds = %if.end169, %if.end159
  %101 = load i32, i32* %delete, align 4, !dbg !1344
  %tobool171 = icmp ne i32 %101, 0, !dbg !1344
  br i1 %tobool171, label %if.end181, label %if.then172, !dbg !1346

if.then172:                                       ; preds = %if.end170
  %102 = load i32, i32* %enctype, align 4, !dbg !1347
  %cmp173 = icmp eq i32 %102, 0, !dbg !1350
  br i1 %cmp173, label %if.then175, label %if.else176, !dbg !1351

if.then175:                                       ; preds = %if.then172
  %103 = load i8*, i8** %dst, align 8, !dbg !1352
  %104 = load i8*, i8** %eleint.addr, align 8, !dbg !1354
  %105 = load i64, i64* %enclen, align 8, !dbg !1355
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %104, i64 %105, i1 false), !dbg !1356
  br label %if.end177, !dbg !1357

if.else176:                                       ; preds = %if.then172
  %106 = load i8*, i8** %dst, align 8, !dbg !1358
  %107 = load i8*, i8** %elestr.addr, align 8, !dbg !1360
  %108 = load i32, i32* %size.addr, align 4, !dbg !1361
  call void @lpEncodeString(i8* %106, i8* %107, i32 %108), !dbg !1362
  br label %if.end177

if.end177:                                        ; preds = %if.else176, %if.then175
  %109 = load i64, i64* %enclen, align 8, !dbg !1363
  %110 = load i8*, i8** %dst, align 8, !dbg !1364
  %add.ptr178 = getelementptr inbounds i8, i8* %110, i64 %109, !dbg !1364
  store i8* %add.ptr178, i8** %dst, align 8, !dbg !1364
  %111 = load i8*, i8** %dst, align 8, !dbg !1365
  %arraydecay179 = getelementptr inbounds [5 x i8], [5 x i8]* %backlen, i64 0, i64 0, !dbg !1366
  %112 = load i64, i64* %backlen_size, align 8, !dbg !1367
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* align 1 %arraydecay179, i64 %112, i1 false), !dbg !1366
  %113 = load i64, i64* %backlen_size, align 8, !dbg !1368
  %114 = load i8*, i8** %dst, align 8, !dbg !1369
  %add.ptr180 = getelementptr inbounds i8, i8* %114, i64 %113, !dbg !1369
  store i8* %add.ptr180, i8** %dst, align 8, !dbg !1369
  br label %if.end181, !dbg !1370

if.end181:                                        ; preds = %if.end177, %if.end170
  %115 = load i32, i32* %where.addr, align 4, !dbg !1371
  %cmp182 = icmp ne i32 %115, 2, !dbg !1373
  br i1 %cmp182, label %if.then185, label %lor.lhs.false, !dbg !1374

lor.lhs.false:                                    ; preds = %if.end181
  %116 = load i32, i32* %delete, align 4, !dbg !1375
  %tobool184 = icmp ne i32 %116, 0, !dbg !1375
  br i1 %tobool184, label %if.then185, label %if.end221, !dbg !1376

if.then185:                                       ; preds = %lor.lhs.false, %if.end181
  call void @llvm.dbg.declare(metadata i32* %num_elements, metadata !1377, metadata !DIExpression()), !dbg !1379
  %117 = load i8*, i8** %lp.addr, align 8, !dbg !1380
  %arrayidx186 = getelementptr inbounds i8, i8* %117, i64 4, !dbg !1380
  %118 = load i8, i8* %arrayidx186, align 1, !dbg !1380
  %conv187 = zext i8 %118 to i32, !dbg !1380
  %shl188 = shl i32 %conv187, 0, !dbg !1380
  %119 = load i8*, i8** %lp.addr, align 8, !dbg !1380
  %arrayidx189 = getelementptr inbounds i8, i8* %119, i64 5, !dbg !1380
  %120 = load i8, i8* %arrayidx189, align 1, !dbg !1380
  %conv190 = zext i8 %120 to i32, !dbg !1380
  %shl191 = shl i32 %conv190, 8, !dbg !1380
  %or192 = or i32 %shl188, %shl191, !dbg !1380
  store i32 %or192, i32* %num_elements, align 4, !dbg !1379
  %121 = load i32, i32* %num_elements, align 4, !dbg !1381
  %cmp193 = icmp ne i32 %121, 65535, !dbg !1383
  br i1 %cmp193, label %if.then195, label %if.end220, !dbg !1384

if.then195:                                       ; preds = %if.then185
  %122 = load i32, i32* %delete, align 4, !dbg !1385
  %tobool196 = icmp ne i32 %122, 0, !dbg !1385
  br i1 %tobool196, label %if.else207, label %if.then197, !dbg !1388

if.then197:                                       ; preds = %if.then195
  br label %do.body198, !dbg !1389

do.body198:                                       ; preds = %if.then197
  %123 = load i32, i32* %num_elements, align 4, !dbg !1390
  %add199 = add i32 %123, 1, !dbg !1390
  %and = and i32 %add199, 255, !dbg !1390
  %conv200 = trunc i32 %and to i8, !dbg !1390
  %124 = load i8*, i8** %lp.addr, align 8, !dbg !1390
  %arrayidx201 = getelementptr inbounds i8, i8* %124, i64 4, !dbg !1390
  store i8 %conv200, i8* %arrayidx201, align 1, !dbg !1390
  %125 = load i32, i32* %num_elements, align 4, !dbg !1390
  %add202 = add i32 %125, 1, !dbg !1390
  %shr = lshr i32 %add202, 8, !dbg !1390
  %and203 = and i32 %shr, 255, !dbg !1390
  %conv204 = trunc i32 %and203 to i8, !dbg !1390
  %126 = load i8*, i8** %lp.addr, align 8, !dbg !1390
  %arrayidx205 = getelementptr inbounds i8, i8* %126, i64 5, !dbg !1390
  store i8 %conv204, i8* %arrayidx205, align 1, !dbg !1390
  br label %do.end206, !dbg !1390

do.end206:                                        ; preds = %do.body198
  br label %if.end219, !dbg !1390

if.else207:                                       ; preds = %if.then195
  br label %do.body208, !dbg !1392

do.body208:                                       ; preds = %if.else207
  %127 = load i32, i32* %num_elements, align 4, !dbg !1393
  %sub209 = sub i32 %127, 1, !dbg !1393
  %and210 = and i32 %sub209, 255, !dbg !1393
  %conv211 = trunc i32 %and210 to i8, !dbg !1393
  %128 = load i8*, i8** %lp.addr, align 8, !dbg !1393
  %arrayidx212 = getelementptr inbounds i8, i8* %128, i64 4, !dbg !1393
  store i8 %conv211, i8* %arrayidx212, align 1, !dbg !1393
  %129 = load i32, i32* %num_elements, align 4, !dbg !1393
  %sub213 = sub i32 %129, 1, !dbg !1393
  %shr214 = lshr i32 %sub213, 8, !dbg !1393
  %and215 = and i32 %shr214, 255, !dbg !1393
  %conv216 = trunc i32 %and215 to i8, !dbg !1393
  %130 = load i8*, i8** %lp.addr, align 8, !dbg !1393
  %arrayidx217 = getelementptr inbounds i8, i8* %130, i64 5, !dbg !1393
  store i8 %conv216, i8* %arrayidx217, align 1, !dbg !1393
  br label %do.end218, !dbg !1393

do.end218:                                        ; preds = %do.body208
  br label %if.end219

if.end219:                                        ; preds = %do.end218, %do.end206
  br label %if.end220, !dbg !1395

if.end220:                                        ; preds = %if.end219, %if.then185
  br label %if.end221, !dbg !1396

if.end221:                                        ; preds = %if.end220, %lor.lhs.false
  br label %do.body222, !dbg !1397

do.body222:                                       ; preds = %if.end221
  %131 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1398
  %and223 = and i64 %131, 255, !dbg !1398
  %conv224 = trunc i64 %and223 to i8, !dbg !1398
  %132 = load i8*, i8** %lp.addr, align 8, !dbg !1398
  %arrayidx225 = getelementptr inbounds i8, i8* %132, i64 0, !dbg !1398
  store i8 %conv224, i8* %arrayidx225, align 1, !dbg !1398
  %133 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1398
  %shr226 = lshr i64 %133, 8, !dbg !1398
  %and227 = and i64 %shr226, 255, !dbg !1398
  %conv228 = trunc i64 %and227 to i8, !dbg !1398
  %134 = load i8*, i8** %lp.addr, align 8, !dbg !1398
  %arrayidx229 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !1398
  store i8 %conv228, i8* %arrayidx229, align 1, !dbg !1398
  %135 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1398
  %shr230 = lshr i64 %135, 16, !dbg !1398
  %and231 = and i64 %shr230, 255, !dbg !1398
  %conv232 = trunc i64 %and231 to i8, !dbg !1398
  %136 = load i8*, i8** %lp.addr, align 8, !dbg !1398
  %arrayidx233 = getelementptr inbounds i8, i8* %136, i64 2, !dbg !1398
  store i8 %conv232, i8* %arrayidx233, align 1, !dbg !1398
  %137 = load i64, i64* %new_listpack_bytes, align 8, !dbg !1398
  %shr234 = lshr i64 %137, 24, !dbg !1398
  %and235 = and i64 %shr234, 255, !dbg !1398
  %conv236 = trunc i64 %and235 to i8, !dbg !1398
  %138 = load i8*, i8** %lp.addr, align 8, !dbg !1398
  %arrayidx237 = getelementptr inbounds i8, i8* %138, i64 3, !dbg !1398
  store i8 %conv236, i8* %arrayidx237, align 1, !dbg !1398
  br label %do.end238, !dbg !1398

do.end238:                                        ; preds = %do.body222
  %139 = load i8*, i8** %lp.addr, align 8, !dbg !1400
  store i8* %139, i8** %retval, align 8, !dbg !1401
  br label %return, !dbg !1401

return:                                           ; preds = %do.end238, %if.then156, %if.then127, %if.then115
  %140 = load i8*, i8** %retval, align 8, !dbg !1402
  ret i8* %140, !dbg !1402
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lpEncodeGetType(i8* %ele, i32 %size, i8* %intenc, i64* %enclen) #0 !dbg !1403 {
entry:
  %retval = alloca i32, align 4
  %ele.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %intenc.addr = alloca i8*, align 8
  %enclen.addr = alloca i64*, align 8
  %v = alloca i64, align 8
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !1406, metadata !DIExpression()), !dbg !1407
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1408, metadata !DIExpression()), !dbg !1409
  store i8* %intenc, i8** %intenc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %intenc.addr, metadata !1410, metadata !DIExpression()), !dbg !1411
  store i64* %enclen, i64** %enclen.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %enclen.addr, metadata !1412, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.declare(metadata i64* %v, metadata !1414, metadata !DIExpression()), !dbg !1415
  %0 = load i8*, i8** %ele.addr, align 8, !dbg !1416
  %1 = load i32, i32* %size.addr, align 4, !dbg !1418
  %conv = zext i32 %1 to i64, !dbg !1418
  %call = call i32 @lpStringToInt64(i8* %0, i64 %conv, i64* %v), !dbg !1419
  %tobool = icmp ne i32 %call, 0, !dbg !1419
  br i1 %tobool, label %if.then, label %if.else, !dbg !1420

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %v, align 8, !dbg !1421
  %3 = load i8*, i8** %intenc.addr, align 8, !dbg !1423
  %4 = load i64*, i64** %enclen.addr, align 8, !dbg !1424
  call void @lpEncodeIntegerGetType(i64 %2, i8* %3, i64* %4), !dbg !1425
  store i32 0, i32* %retval, align 4, !dbg !1426
  br label %return, !dbg !1426

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %size.addr, align 4, !dbg !1427
  %cmp = icmp ult i32 %5, 64, !dbg !1430
  br i1 %cmp, label %if.then2, label %if.else4, !dbg !1431

if.then2:                                         ; preds = %if.else
  %6 = load i32, i32* %size.addr, align 4, !dbg !1432
  %add = add i32 1, %6, !dbg !1433
  %conv3 = zext i32 %add to i64, !dbg !1434
  %7 = load i64*, i64** %enclen.addr, align 8, !dbg !1435
  store i64 %conv3, i64* %7, align 8, !dbg !1436
  br label %if.end13, !dbg !1437

if.else4:                                         ; preds = %if.else
  %8 = load i32, i32* %size.addr, align 4, !dbg !1438
  %cmp5 = icmp ult i32 %8, 4096, !dbg !1440
  br i1 %cmp5, label %if.then7, label %if.else10, !dbg !1441

if.then7:                                         ; preds = %if.else4
  %9 = load i32, i32* %size.addr, align 4, !dbg !1442
  %add8 = add i32 2, %9, !dbg !1443
  %conv9 = zext i32 %add8 to i64, !dbg !1444
  %10 = load i64*, i64** %enclen.addr, align 8, !dbg !1445
  store i64 %conv9, i64* %10, align 8, !dbg !1446
  br label %if.end, !dbg !1447

if.else10:                                        ; preds = %if.else4
  %11 = load i32, i32* %size.addr, align 4, !dbg !1448
  %conv11 = zext i32 %11 to i64, !dbg !1449
  %add12 = add i64 5, %conv11, !dbg !1450
  %12 = load i64*, i64** %enclen.addr, align 8, !dbg !1451
  store i64 %add12, i64* %12, align 8, !dbg !1452
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then2
  store i32 1, i32* %retval, align 4, !dbg !1453
  br label %return, !dbg !1453

return:                                           ; preds = %if.end13, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1454
  ret i32 %13, !dbg !1454
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define internal void @lpEncodeString(i8* %buf, i8* %s, i32 %len) #0 !dbg !1455 {
entry:
  %buf.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1458, metadata !DIExpression()), !dbg !1459
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1460, metadata !DIExpression()), !dbg !1461
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1462, metadata !DIExpression()), !dbg !1463
  %0 = load i32, i32* %len.addr, align 4, !dbg !1464
  %cmp = icmp ult i32 %0, 64, !dbg !1466
  br i1 %cmp, label %if.then, label %if.else, !dbg !1467

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4, !dbg !1468
  %or = or i32 %1, 128, !dbg !1470
  %conv = trunc i32 %or to i8, !dbg !1468
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !1471
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1471
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1472
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !1473
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1474
  %4 = load i8*, i8** %s.addr, align 8, !dbg !1475
  %5 = load i32, i32* %len.addr, align 4, !dbg !1476
  %conv1 = zext i32 %5 to i64, !dbg !1476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %4, i64 %conv1, i1 false), !dbg !1477
  br label %if.end31, !dbg !1478

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %len.addr, align 4, !dbg !1479
  %cmp2 = icmp ult i32 %6, 4096, !dbg !1481
  br i1 %cmp2, label %if.then4, label %if.else12, !dbg !1482

if.then4:                                         ; preds = %if.else
  %7 = load i32, i32* %len.addr, align 4, !dbg !1483
  %shr = lshr i32 %7, 8, !dbg !1485
  %or5 = or i32 %shr, 224, !dbg !1486
  %conv6 = trunc i32 %or5 to i8, !dbg !1487
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !1488
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !1488
  store i8 %conv6, i8* %arrayidx7, align 1, !dbg !1489
  %9 = load i32, i32* %len.addr, align 4, !dbg !1490
  %and = and i32 %9, 255, !dbg !1491
  %conv8 = trunc i32 %and to i8, !dbg !1490
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !1492
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1492
  store i8 %conv8, i8* %arrayidx9, align 1, !dbg !1493
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !1494
  %add.ptr10 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1495
  %12 = load i8*, i8** %s.addr, align 8, !dbg !1496
  %13 = load i32, i32* %len.addr, align 4, !dbg !1497
  %conv11 = zext i32 %13 to i64, !dbg !1497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr10, i8* align 1 %12, i64 %conv11, i1 false), !dbg !1498
  br label %if.end, !dbg !1499

if.else12:                                        ; preds = %if.else
  %14 = load i8*, i8** %buf.addr, align 8, !dbg !1500
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !1500
  store i8 -16, i8* %arrayidx13, align 1, !dbg !1502
  %15 = load i32, i32* %len.addr, align 4, !dbg !1503
  %and14 = and i32 %15, 255, !dbg !1504
  %conv15 = trunc i32 %and14 to i8, !dbg !1503
  %16 = load i8*, i8** %buf.addr, align 8, !dbg !1505
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1505
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !1506
  %17 = load i32, i32* %len.addr, align 4, !dbg !1507
  %shr17 = lshr i32 %17, 8, !dbg !1508
  %and18 = and i32 %shr17, 255, !dbg !1509
  %conv19 = trunc i32 %and18 to i8, !dbg !1510
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !1511
  %arrayidx20 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !1511
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !1512
  %19 = load i32, i32* %len.addr, align 4, !dbg !1513
  %shr21 = lshr i32 %19, 16, !dbg !1514
  %and22 = and i32 %shr21, 255, !dbg !1515
  %conv23 = trunc i32 %and22 to i8, !dbg !1516
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !1517
  %arrayidx24 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !1517
  store i8 %conv23, i8* %arrayidx24, align 1, !dbg !1518
  %21 = load i32, i32* %len.addr, align 4, !dbg !1519
  %shr25 = lshr i32 %21, 24, !dbg !1520
  %and26 = and i32 %shr25, 255, !dbg !1521
  %conv27 = trunc i32 %and26 to i8, !dbg !1522
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !1523
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 4, !dbg !1523
  store i8 %conv27, i8* %arrayidx28, align 1, !dbg !1524
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !1525
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 5, !dbg !1526
  %24 = load i8*, i8** %s.addr, align 8, !dbg !1527
  %25 = load i32, i32* %len.addr, align 4, !dbg !1528
  %conv30 = zext i32 %25 to i64, !dbg !1528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr29, i8* align 1 %24, i64 %conv30, i1 false), !dbg !1529
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then4
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then
  ret void, !dbg !1530
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpInsertString(i8* %lp, i8* %s, i32 %slen, i8* %p, i32 %where, i8** %newp) #0 !dbg !1531 {
entry:
  %lp.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %where.addr = alloca i32, align 4
  %newp.addr = alloca i8**, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1534, metadata !DIExpression()), !dbg !1535
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1536, metadata !DIExpression()), !dbg !1537
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1540, metadata !DIExpression()), !dbg !1541
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !1542, metadata !DIExpression()), !dbg !1543
  store i8** %newp, i8*** %newp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %newp.addr, metadata !1544, metadata !DIExpression()), !dbg !1545
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1546
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1547
  %2 = load i32, i32* %slen.addr, align 4, !dbg !1548
  %3 = load i8*, i8** %p.addr, align 8, !dbg !1549
  %4 = load i32, i32* %where.addr, align 4, !dbg !1550
  %5 = load i8**, i8*** %newp.addr, align 8, !dbg !1551
  %call = call i8* @lpInsert(i8* %0, i8* %1, i8* null, i32 %2, i8* %3, i32 %4, i8** %5), !dbg !1552
  ret i8* %call, !dbg !1553
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpInsertInteger(i8* %lp, i64 %lval, i8* %p, i32 %where, i8** %newp) #0 !dbg !1554 {
entry:
  %lp.addr = alloca i8*, align 8
  %lval.addr = alloca i64, align 8
  %p.addr = alloca i8*, align 8
  %where.addr = alloca i32, align 4
  %newp.addr = alloca i8**, align 8
  %enclen = alloca i64, align 8
  %intenc = alloca [9 x i8], align 1
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1557, metadata !DIExpression()), !dbg !1558
  store i64 %lval, i64* %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lval.addr, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i32 %where, i32* %where.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %where.addr, metadata !1563, metadata !DIExpression()), !dbg !1564
  store i8** %newp, i8*** %newp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %newp.addr, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata i64* %enclen, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.declare(metadata [9 x i8]* %intenc, metadata !1569, metadata !DIExpression()), !dbg !1570
  %0 = load i64, i64* %lval.addr, align 8, !dbg !1571
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %intenc, i64 0, i64 0, !dbg !1572
  call void @lpEncodeIntegerGetType(i64 %0, i8* %arraydecay, i64* %enclen), !dbg !1573
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !1574
  %arraydecay1 = getelementptr inbounds [9 x i8], [9 x i8]* %intenc, i64 0, i64 0, !dbg !1575
  %2 = load i64, i64* %enclen, align 8, !dbg !1576
  %conv = trunc i64 %2 to i32, !dbg !1576
  %3 = load i8*, i8** %p.addr, align 8, !dbg !1577
  %4 = load i32, i32* %where.addr, align 4, !dbg !1578
  %5 = load i8**, i8*** %newp.addr, align 8, !dbg !1579
  %call = call i8* @lpInsert(i8* %1, i8* null, i8* %arraydecay1, i32 %conv, i8* %3, i32 %4, i8** %5), !dbg !1580
  ret i8* %call, !dbg !1581
}

; Function Attrs: noinline nounwind uwtable
define internal void @lpEncodeIntegerGetType(i64 %v, i8* %intenc, i64* %enclen) #0 !dbg !1582 {
entry:
  %v.addr = alloca i64, align 8
  %intenc.addr = alloca i8*, align 8
  %enclen.addr = alloca i64*, align 8
  %uv = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %v.addr, metadata !1585, metadata !DIExpression()), !dbg !1586
  store i8* %intenc, i8** %intenc.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %intenc.addr, metadata !1587, metadata !DIExpression()), !dbg !1588
  store i64* %enclen, i64** %enclen.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %enclen.addr, metadata !1589, metadata !DIExpression()), !dbg !1590
  %0 = load i64, i64* %v.addr, align 8, !dbg !1591
  %cmp = icmp sge i64 %0, 0, !dbg !1593
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1594

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %v.addr, align 8, !dbg !1595
  %cmp1 = icmp sle i64 %1, 127, !dbg !1596
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1597

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %v.addr, align 8, !dbg !1598
  %conv = trunc i64 %2 to i8, !dbg !1598
  %3 = load i8*, i8** %intenc.addr, align 8, !dbg !1600
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0, !dbg !1600
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1601
  %4 = load i64*, i64** %enclen.addr, align 8, !dbg !1602
  store i64 1, i64* %4, align 8, !dbg !1603
  br label %if.end120, !dbg !1604

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %v.addr, align 8, !dbg !1605
  %cmp2 = icmp sge i64 %5, -4096, !dbg !1607
  br i1 %cmp2, label %land.lhs.true4, label %if.else15, !dbg !1608

land.lhs.true4:                                   ; preds = %if.else
  %6 = load i64, i64* %v.addr, align 8, !dbg !1609
  %cmp5 = icmp sle i64 %6, 4095, !dbg !1610
  br i1 %cmp5, label %if.then7, label %if.else15, !dbg !1611

if.then7:                                         ; preds = %land.lhs.true4
  %7 = load i64, i64* %v.addr, align 8, !dbg !1612
  %cmp8 = icmp slt i64 %7, 0, !dbg !1615
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !1616

if.then10:                                        ; preds = %if.then7
  %8 = load i64, i64* %v.addr, align 8, !dbg !1617
  %add = add nsw i64 8192, %8, !dbg !1618
  store i64 %add, i64* %v.addr, align 8, !dbg !1619
  br label %if.end, !dbg !1620

if.end:                                           ; preds = %if.then10, %if.then7
  %9 = load i64, i64* %v.addr, align 8, !dbg !1621
  %shr = ashr i64 %9, 8, !dbg !1622
  %or = or i64 %shr, 192, !dbg !1623
  %conv11 = trunc i64 %or to i8, !dbg !1624
  %10 = load i8*, i8** %intenc.addr, align 8, !dbg !1625
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1625
  store i8 %conv11, i8* %arrayidx12, align 1, !dbg !1626
  %11 = load i64, i64* %v.addr, align 8, !dbg !1627
  %and = and i64 %11, 255, !dbg !1628
  %conv13 = trunc i64 %and to i8, !dbg !1627
  %12 = load i8*, i8** %intenc.addr, align 8, !dbg !1629
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1629
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !1630
  %13 = load i64*, i64** %enclen.addr, align 8, !dbg !1631
  store i64 2, i64* %13, align 8, !dbg !1632
  br label %if.end119, !dbg !1633

if.else15:                                        ; preds = %land.lhs.true4, %if.else
  %14 = load i64, i64* %v.addr, align 8, !dbg !1634
  %cmp16 = icmp sge i64 %14, -32768, !dbg !1636
  br i1 %cmp16, label %land.lhs.true18, label %if.else34, !dbg !1637

land.lhs.true18:                                  ; preds = %if.else15
  %15 = load i64, i64* %v.addr, align 8, !dbg !1638
  %cmp19 = icmp sle i64 %15, 32767, !dbg !1639
  br i1 %cmp19, label %if.then21, label %if.else34, !dbg !1640

if.then21:                                        ; preds = %land.lhs.true18
  %16 = load i64, i64* %v.addr, align 8, !dbg !1641
  %cmp22 = icmp slt i64 %16, 0, !dbg !1644
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !1645

if.then24:                                        ; preds = %if.then21
  %17 = load i64, i64* %v.addr, align 8, !dbg !1646
  %add25 = add nsw i64 65536, %17, !dbg !1647
  store i64 %add25, i64* %v.addr, align 8, !dbg !1648
  br label %if.end26, !dbg !1649

if.end26:                                         ; preds = %if.then24, %if.then21
  %18 = load i8*, i8** %intenc.addr, align 8, !dbg !1650
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !1650
  store i8 -15, i8* %arrayidx27, align 1, !dbg !1651
  %19 = load i64, i64* %v.addr, align 8, !dbg !1652
  %and28 = and i64 %19, 255, !dbg !1653
  %conv29 = trunc i64 %and28 to i8, !dbg !1652
  %20 = load i8*, i8** %intenc.addr, align 8, !dbg !1654
  %arrayidx30 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1654
  store i8 %conv29, i8* %arrayidx30, align 1, !dbg !1655
  %21 = load i64, i64* %v.addr, align 8, !dbg !1656
  %shr31 = ashr i64 %21, 8, !dbg !1657
  %conv32 = trunc i64 %shr31 to i8, !dbg !1656
  %22 = load i8*, i8** %intenc.addr, align 8, !dbg !1658
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 2, !dbg !1658
  store i8 %conv32, i8* %arrayidx33, align 1, !dbg !1659
  %23 = load i64*, i64** %enclen.addr, align 8, !dbg !1660
  store i64 3, i64* %23, align 8, !dbg !1661
  br label %if.end118, !dbg !1662

if.else34:                                        ; preds = %land.lhs.true18, %if.else15
  %24 = load i64, i64* %v.addr, align 8, !dbg !1663
  %cmp35 = icmp sge i64 %24, -8388608, !dbg !1665
  br i1 %cmp35, label %land.lhs.true37, label %if.else57, !dbg !1666

land.lhs.true37:                                  ; preds = %if.else34
  %25 = load i64, i64* %v.addr, align 8, !dbg !1667
  %cmp38 = icmp sle i64 %25, 8388607, !dbg !1668
  br i1 %cmp38, label %if.then40, label %if.else57, !dbg !1669

if.then40:                                        ; preds = %land.lhs.true37
  %26 = load i64, i64* %v.addr, align 8, !dbg !1670
  %cmp41 = icmp slt i64 %26, 0, !dbg !1673
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !1674

if.then43:                                        ; preds = %if.then40
  %27 = load i64, i64* %v.addr, align 8, !dbg !1675
  %add44 = add nsw i64 16777216, %27, !dbg !1676
  store i64 %add44, i64* %v.addr, align 8, !dbg !1677
  br label %if.end45, !dbg !1678

if.end45:                                         ; preds = %if.then43, %if.then40
  %28 = load i8*, i8** %intenc.addr, align 8, !dbg !1679
  %arrayidx46 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !1679
  store i8 -14, i8* %arrayidx46, align 1, !dbg !1680
  %29 = load i64, i64* %v.addr, align 8, !dbg !1681
  %and47 = and i64 %29, 255, !dbg !1682
  %conv48 = trunc i64 %and47 to i8, !dbg !1681
  %30 = load i8*, i8** %intenc.addr, align 8, !dbg !1683
  %arrayidx49 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1683
  store i8 %conv48, i8* %arrayidx49, align 1, !dbg !1684
  %31 = load i64, i64* %v.addr, align 8, !dbg !1685
  %shr50 = ashr i64 %31, 8, !dbg !1686
  %and51 = and i64 %shr50, 255, !dbg !1687
  %conv52 = trunc i64 %and51 to i8, !dbg !1688
  %32 = load i8*, i8** %intenc.addr, align 8, !dbg !1689
  %arrayidx53 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !1689
  store i8 %conv52, i8* %arrayidx53, align 1, !dbg !1690
  %33 = load i64, i64* %v.addr, align 8, !dbg !1691
  %shr54 = ashr i64 %33, 16, !dbg !1692
  %conv55 = trunc i64 %shr54 to i8, !dbg !1691
  %34 = load i8*, i8** %intenc.addr, align 8, !dbg !1693
  %arrayidx56 = getelementptr inbounds i8, i8* %34, i64 3, !dbg !1693
  store i8 %conv55, i8* %arrayidx56, align 1, !dbg !1694
  %35 = load i64*, i64** %enclen.addr, align 8, !dbg !1695
  store i64 4, i64* %35, align 8, !dbg !1696
  br label %if.end117, !dbg !1697

if.else57:                                        ; preds = %land.lhs.true37, %if.else34
  %36 = load i64, i64* %v.addr, align 8, !dbg !1698
  %cmp58 = icmp sge i64 %36, -2147483648, !dbg !1700
  br i1 %cmp58, label %land.lhs.true60, label %if.else84, !dbg !1701

land.lhs.true60:                                  ; preds = %if.else57
  %37 = load i64, i64* %v.addr, align 8, !dbg !1702
  %cmp61 = icmp sle i64 %37, 2147483647, !dbg !1703
  br i1 %cmp61, label %if.then63, label %if.else84, !dbg !1704

if.then63:                                        ; preds = %land.lhs.true60
  %38 = load i64, i64* %v.addr, align 8, !dbg !1705
  %cmp64 = icmp slt i64 %38, 0, !dbg !1708
  br i1 %cmp64, label %if.then66, label %if.end68, !dbg !1709

if.then66:                                        ; preds = %if.then63
  %39 = load i64, i64* %v.addr, align 8, !dbg !1710
  %add67 = add nsw i64 4294967296, %39, !dbg !1711
  store i64 %add67, i64* %v.addr, align 8, !dbg !1712
  br label %if.end68, !dbg !1713

if.end68:                                         ; preds = %if.then66, %if.then63
  %40 = load i8*, i8** %intenc.addr, align 8, !dbg !1714
  %arrayidx69 = getelementptr inbounds i8, i8* %40, i64 0, !dbg !1714
  store i8 -13, i8* %arrayidx69, align 1, !dbg !1715
  %41 = load i64, i64* %v.addr, align 8, !dbg !1716
  %and70 = and i64 %41, 255, !dbg !1717
  %conv71 = trunc i64 %and70 to i8, !dbg !1716
  %42 = load i8*, i8** %intenc.addr, align 8, !dbg !1718
  %arrayidx72 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1718
  store i8 %conv71, i8* %arrayidx72, align 1, !dbg !1719
  %43 = load i64, i64* %v.addr, align 8, !dbg !1720
  %shr73 = ashr i64 %43, 8, !dbg !1721
  %and74 = and i64 %shr73, 255, !dbg !1722
  %conv75 = trunc i64 %and74 to i8, !dbg !1723
  %44 = load i8*, i8** %intenc.addr, align 8, !dbg !1724
  %arrayidx76 = getelementptr inbounds i8, i8* %44, i64 2, !dbg !1724
  store i8 %conv75, i8* %arrayidx76, align 1, !dbg !1725
  %45 = load i64, i64* %v.addr, align 8, !dbg !1726
  %shr77 = ashr i64 %45, 16, !dbg !1727
  %and78 = and i64 %shr77, 255, !dbg !1728
  %conv79 = trunc i64 %and78 to i8, !dbg !1729
  %46 = load i8*, i8** %intenc.addr, align 8, !dbg !1730
  %arrayidx80 = getelementptr inbounds i8, i8* %46, i64 3, !dbg !1730
  store i8 %conv79, i8* %arrayidx80, align 1, !dbg !1731
  %47 = load i64, i64* %v.addr, align 8, !dbg !1732
  %shr81 = ashr i64 %47, 24, !dbg !1733
  %conv82 = trunc i64 %shr81 to i8, !dbg !1732
  %48 = load i8*, i8** %intenc.addr, align 8, !dbg !1734
  %arrayidx83 = getelementptr inbounds i8, i8* %48, i64 4, !dbg !1734
  store i8 %conv82, i8* %arrayidx83, align 1, !dbg !1735
  %49 = load i64*, i64** %enclen.addr, align 8, !dbg !1736
  store i64 5, i64* %49, align 8, !dbg !1737
  br label %if.end116, !dbg !1738

if.else84:                                        ; preds = %land.lhs.true60, %if.else57
  call void @llvm.dbg.declare(metadata i64* %uv, metadata !1739, metadata !DIExpression()), !dbg !1741
  %50 = load i64, i64* %v.addr, align 8, !dbg !1742
  store i64 %50, i64* %uv, align 8, !dbg !1741
  %51 = load i8*, i8** %intenc.addr, align 8, !dbg !1743
  %arrayidx85 = getelementptr inbounds i8, i8* %51, i64 0, !dbg !1743
  store i8 -12, i8* %arrayidx85, align 1, !dbg !1744
  %52 = load i64, i64* %uv, align 8, !dbg !1745
  %and86 = and i64 %52, 255, !dbg !1746
  %conv87 = trunc i64 %and86 to i8, !dbg !1745
  %53 = load i8*, i8** %intenc.addr, align 8, !dbg !1747
  %arrayidx88 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1747
  store i8 %conv87, i8* %arrayidx88, align 1, !dbg !1748
  %54 = load i64, i64* %uv, align 8, !dbg !1749
  %shr89 = lshr i64 %54, 8, !dbg !1750
  %and90 = and i64 %shr89, 255, !dbg !1751
  %conv91 = trunc i64 %and90 to i8, !dbg !1752
  %55 = load i8*, i8** %intenc.addr, align 8, !dbg !1753
  %arrayidx92 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1753
  store i8 %conv91, i8* %arrayidx92, align 1, !dbg !1754
  %56 = load i64, i64* %uv, align 8, !dbg !1755
  %shr93 = lshr i64 %56, 16, !dbg !1756
  %and94 = and i64 %shr93, 255, !dbg !1757
  %conv95 = trunc i64 %and94 to i8, !dbg !1758
  %57 = load i8*, i8** %intenc.addr, align 8, !dbg !1759
  %arrayidx96 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !1759
  store i8 %conv95, i8* %arrayidx96, align 1, !dbg !1760
  %58 = load i64, i64* %uv, align 8, !dbg !1761
  %shr97 = lshr i64 %58, 24, !dbg !1762
  %and98 = and i64 %shr97, 255, !dbg !1763
  %conv99 = trunc i64 %and98 to i8, !dbg !1764
  %59 = load i8*, i8** %intenc.addr, align 8, !dbg !1765
  %arrayidx100 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1765
  store i8 %conv99, i8* %arrayidx100, align 1, !dbg !1766
  %60 = load i64, i64* %uv, align 8, !dbg !1767
  %shr101 = lshr i64 %60, 32, !dbg !1768
  %and102 = and i64 %shr101, 255, !dbg !1769
  %conv103 = trunc i64 %and102 to i8, !dbg !1770
  %61 = load i8*, i8** %intenc.addr, align 8, !dbg !1771
  %arrayidx104 = getelementptr inbounds i8, i8* %61, i64 5, !dbg !1771
  store i8 %conv103, i8* %arrayidx104, align 1, !dbg !1772
  %62 = load i64, i64* %uv, align 8, !dbg !1773
  %shr105 = lshr i64 %62, 40, !dbg !1774
  %and106 = and i64 %shr105, 255, !dbg !1775
  %conv107 = trunc i64 %and106 to i8, !dbg !1776
  %63 = load i8*, i8** %intenc.addr, align 8, !dbg !1777
  %arrayidx108 = getelementptr inbounds i8, i8* %63, i64 6, !dbg !1777
  store i8 %conv107, i8* %arrayidx108, align 1, !dbg !1778
  %64 = load i64, i64* %uv, align 8, !dbg !1779
  %shr109 = lshr i64 %64, 48, !dbg !1780
  %and110 = and i64 %shr109, 255, !dbg !1781
  %conv111 = trunc i64 %and110 to i8, !dbg !1782
  %65 = load i8*, i8** %intenc.addr, align 8, !dbg !1783
  %arrayidx112 = getelementptr inbounds i8, i8* %65, i64 7, !dbg !1783
  store i8 %conv111, i8* %arrayidx112, align 1, !dbg !1784
  %66 = load i64, i64* %uv, align 8, !dbg !1785
  %shr113 = lshr i64 %66, 56, !dbg !1786
  %conv114 = trunc i64 %shr113 to i8, !dbg !1785
  %67 = load i8*, i8** %intenc.addr, align 8, !dbg !1787
  %arrayidx115 = getelementptr inbounds i8, i8* %67, i64 8, !dbg !1787
  store i8 %conv114, i8* %arrayidx115, align 1, !dbg !1788
  %68 = load i64*, i64** %enclen.addr, align 8, !dbg !1789
  store i64 9, i64* %68, align 8, !dbg !1790
  br label %if.end116

if.end116:                                        ; preds = %if.else84, %if.end68
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end45
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end26
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.end
  br label %if.end120

if.end120:                                        ; preds = %if.end119, %if.then
  ret void, !dbg !1791
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpPrepend(i8* %lp, i8* %s, i32 %slen) #0 !dbg !1792 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1795, metadata !DIExpression()), !dbg !1796
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1797, metadata !DIExpression()), !dbg !1798
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1801, metadata !DIExpression()), !dbg !1802
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1803
  %call = call i8* @lpFirst(i8* %0), !dbg !1804
  store i8* %call, i8** %p, align 8, !dbg !1802
  %1 = load i8*, i8** %p, align 8, !dbg !1805
  %tobool = icmp ne i8* %1, null, !dbg !1805
  br i1 %tobool, label %if.end, label %if.then, !dbg !1807

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !1808
  %3 = load i8*, i8** %s.addr, align 8, !dbg !1809
  %4 = load i32, i32* %slen.addr, align 4, !dbg !1810
  %call1 = call i8* @lpAppend(i8* %2, i8* %3, i32 %4), !dbg !1811
  store i8* %call1, i8** %retval, align 8, !dbg !1812
  br label %return, !dbg !1812

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !1813
  %6 = load i8*, i8** %s.addr, align 8, !dbg !1814
  %7 = load i32, i32* %slen.addr, align 4, !dbg !1815
  %8 = load i8*, i8** %p, align 8, !dbg !1816
  %call2 = call i8* @lpInsert(i8* %5, i8* %6, i8* null, i32 %7, i8* %8, i32 0, i8** null), !dbg !1817
  store i8* %call2, i8** %retval, align 8, !dbg !1818
  br label %return, !dbg !1818

return:                                           ; preds = %if.end, %if.then
  %9 = load i8*, i8** %retval, align 8, !dbg !1819
  ret i8* %9, !dbg !1819
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpAppend(i8* %lp, i8* %ele, i32 %size) #0 !dbg !1820 {
entry:
  %lp.addr = alloca i8*, align 8
  %ele.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %listpack_bytes = alloca i64, align 8
  %eofptr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1821, metadata !DIExpression()), !dbg !1822
  store i8* %ele, i8** %ele.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ele.addr, metadata !1823, metadata !DIExpression()), !dbg !1824
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1825, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.declare(metadata i64* %listpack_bytes, metadata !1827, metadata !DIExpression()), !dbg !1828
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1829
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1829
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1829
  %conv = zext i8 %1 to i32, !dbg !1829
  %shl = shl i32 %conv, 0, !dbg !1829
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !1829
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1829
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !1829
  %conv2 = zext i8 %3 to i32, !dbg !1829
  %shl3 = shl i32 %conv2, 8, !dbg !1829
  %or = or i32 %shl, %shl3, !dbg !1829
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !1829
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1829
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !1829
  %conv5 = zext i8 %5 to i32, !dbg !1829
  %shl6 = shl i32 %conv5, 16, !dbg !1829
  %or7 = or i32 %or, %shl6, !dbg !1829
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !1829
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1829
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !1829
  %conv9 = zext i8 %7 to i32, !dbg !1829
  %shl10 = shl i32 %conv9, 24, !dbg !1829
  %or11 = or i32 %or7, %shl10, !dbg !1829
  %conv12 = zext i32 %or11 to i64, !dbg !1829
  store i64 %conv12, i64* %listpack_bytes, align 8, !dbg !1828
  call void @llvm.dbg.declare(metadata i8** %eofptr, metadata !1830, metadata !DIExpression()), !dbg !1831
  %8 = load i8*, i8** %lp.addr, align 8, !dbg !1832
  %9 = load i64, i64* %listpack_bytes, align 8, !dbg !1833
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !1834
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !1835
  store i8* %add.ptr13, i8** %eofptr, align 8, !dbg !1831
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !1836
  %11 = load i8*, i8** %ele.addr, align 8, !dbg !1837
  %12 = load i32, i32* %size.addr, align 4, !dbg !1838
  %13 = load i8*, i8** %eofptr, align 8, !dbg !1839
  %call = call i8* @lpInsert(i8* %10, i8* %11, i8* null, i32 %12, i8* %13, i32 0, i8** null), !dbg !1840
  ret i8* %call, !dbg !1841
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpPrependInteger(i8* %lp, i64 %lval) #0 !dbg !1842 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %lval.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1845, metadata !DIExpression()), !dbg !1846
  store i64 %lval, i64* %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lval.addr, metadata !1847, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1849, metadata !DIExpression()), !dbg !1850
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1851
  %call = call i8* @lpFirst(i8* %0), !dbg !1852
  store i8* %call, i8** %p, align 8, !dbg !1850
  %1 = load i8*, i8** %p, align 8, !dbg !1853
  %tobool = icmp ne i8* %1, null, !dbg !1853
  br i1 %tobool, label %if.end, label %if.then, !dbg !1855

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !1856
  %3 = load i64, i64* %lval.addr, align 8, !dbg !1857
  %call1 = call i8* @lpAppendInteger(i8* %2, i64 %3), !dbg !1858
  store i8* %call1, i8** %retval, align 8, !dbg !1859
  br label %return, !dbg !1859

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !1860
  %5 = load i64, i64* %lval.addr, align 8, !dbg !1861
  %6 = load i8*, i8** %p, align 8, !dbg !1862
  %call2 = call i8* @lpInsertInteger(i8* %4, i64 %5, i8* %6, i32 0, i8** null), !dbg !1863
  store i8* %call2, i8** %retval, align 8, !dbg !1864
  br label %return, !dbg !1864

return:                                           ; preds = %if.end, %if.then
  %7 = load i8*, i8** %retval, align 8, !dbg !1865
  ret i8* %7, !dbg !1865
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpAppendInteger(i8* %lp, i64 %lval) #0 !dbg !1866 {
entry:
  %lp.addr = alloca i8*, align 8
  %lval.addr = alloca i64, align 8
  %listpack_bytes = alloca i64, align 8
  %eofptr = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1867, metadata !DIExpression()), !dbg !1868
  store i64 %lval, i64* %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lval.addr, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.declare(metadata i64* %listpack_bytes, metadata !1871, metadata !DIExpression()), !dbg !1872
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1873
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1873
  %1 = load i8, i8* %arrayidx, align 1, !dbg !1873
  %conv = zext i8 %1 to i32, !dbg !1873
  %shl = shl i32 %conv, 0, !dbg !1873
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !1873
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1873
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !1873
  %conv2 = zext i8 %3 to i32, !dbg !1873
  %shl3 = shl i32 %conv2, 8, !dbg !1873
  %or = or i32 %shl, %shl3, !dbg !1873
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !1873
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !1873
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !1873
  %conv5 = zext i8 %5 to i32, !dbg !1873
  %shl6 = shl i32 %conv5, 16, !dbg !1873
  %or7 = or i32 %or, %shl6, !dbg !1873
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !1873
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1873
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !1873
  %conv9 = zext i8 %7 to i32, !dbg !1873
  %shl10 = shl i32 %conv9, 24, !dbg !1873
  %or11 = or i32 %or7, %shl10, !dbg !1873
  %conv12 = zext i32 %or11 to i64, !dbg !1873
  store i64 %conv12, i64* %listpack_bytes, align 8, !dbg !1872
  call void @llvm.dbg.declare(metadata i8** %eofptr, metadata !1874, metadata !DIExpression()), !dbg !1875
  %8 = load i8*, i8** %lp.addr, align 8, !dbg !1876
  %9 = load i64, i64* %listpack_bytes, align 8, !dbg !1877
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !1878
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !1879
  store i8* %add.ptr13, i8** %eofptr, align 8, !dbg !1875
  %10 = load i8*, i8** %lp.addr, align 8, !dbg !1880
  %11 = load i64, i64* %lval.addr, align 8, !dbg !1881
  %12 = load i8*, i8** %eofptr, align 8, !dbg !1882
  %call = call i8* @lpInsertInteger(i8* %10, i64 %11, i8* %12, i32 0, i8** null), !dbg !1883
  ret i8* %call, !dbg !1884
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpReplace(i8* %lp, i8** %p, i8* %s, i32 %slen) #0 !dbg !1885 {
entry:
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1888, metadata !DIExpression()), !dbg !1889
  store i8** %p, i8*** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %p.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1892, metadata !DIExpression()), !dbg !1893
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !1894, metadata !DIExpression()), !dbg !1895
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1896
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1897
  %2 = load i32, i32* %slen.addr, align 4, !dbg !1898
  %3 = load i8**, i8*** %p.addr, align 8, !dbg !1899
  %4 = load i8*, i8** %3, align 8, !dbg !1900
  %5 = load i8**, i8*** %p.addr, align 8, !dbg !1901
  %call = call i8* @lpInsert(i8* %0, i8* %1, i8* null, i32 %2, i8* %4, i32 2, i8** %5), !dbg !1902
  ret i8* %call, !dbg !1903
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpReplaceInteger(i8* %lp, i8** %p, i64 %lval) #0 !dbg !1904 {
entry:
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %lval.addr = alloca i64, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1907, metadata !DIExpression()), !dbg !1908
  store i8** %p, i8*** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %p.addr, metadata !1909, metadata !DIExpression()), !dbg !1910
  store i64 %lval, i64* %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lval.addr, metadata !1911, metadata !DIExpression()), !dbg !1912
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1913
  %1 = load i64, i64* %lval.addr, align 8, !dbg !1914
  %2 = load i8**, i8*** %p.addr, align 8, !dbg !1915
  %3 = load i8*, i8** %2, align 8, !dbg !1916
  %4 = load i8**, i8*** %p.addr, align 8, !dbg !1917
  %call = call i8* @lpInsertInteger(i8* %0, i64 %1, i8* %3, i32 2, i8** %4), !dbg !1918
  ret i8* %call, !dbg !1919
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpDelete(i8* %lp, i8* %p, i8** %newp) #0 !dbg !1920 {
entry:
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %newp.addr = alloca i8**, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1923, metadata !DIExpression()), !dbg !1924
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1925, metadata !DIExpression()), !dbg !1926
  store i8** %newp, i8*** %newp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %newp.addr, metadata !1927, metadata !DIExpression()), !dbg !1928
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1929
  %1 = load i8*, i8** %p.addr, align 8, !dbg !1930
  %2 = load i8**, i8*** %newp.addr, align 8, !dbg !1931
  %call = call i8* @lpInsert(i8* %0, i8* null, i8* null, i32 0, i8* %1, i32 2, i8** %2), !dbg !1932
  ret i8* %call, !dbg !1933
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpDeleteRangeWithEntry(i8* %lp, i8** %p, i64 %num) #0 !dbg !1934 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p.addr = alloca i8**, align 8
  %num.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %deleted = alloca i64, align 8
  %eofptr = alloca i8*, align 8
  %first = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %poff = alloca i64, align 8
  %numele = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  store i8** %p, i8*** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %p.addr, metadata !1939, metadata !DIExpression()), !dbg !1940
  store i64 %num, i64* %num.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num.addr, metadata !1941, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !1943, metadata !DIExpression()), !dbg !1944
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !1945
  %call = call i64 @lpBytes(i8* %0), !dbg !1946
  store i64 %call, i64* %bytes, align 8, !dbg !1944
  call void @llvm.dbg.declare(metadata i64* %deleted, metadata !1947, metadata !DIExpression()), !dbg !1948
  store i64 0, i64* %deleted, align 8, !dbg !1948
  call void @llvm.dbg.declare(metadata i8** %eofptr, metadata !1949, metadata !DIExpression()), !dbg !1950
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !1951
  %2 = load i64, i64* %bytes, align 8, !dbg !1952
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2, !dbg !1953
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !1954
  store i8* %add.ptr1, i8** %eofptr, align 8, !dbg !1950
  call void @llvm.dbg.declare(metadata i8** %first, metadata !1955, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.declare(metadata i8** %tail, metadata !1957, metadata !DIExpression()), !dbg !1958
  %3 = load i8**, i8*** %p.addr, align 8, !dbg !1959
  %4 = load i8*, i8** %3, align 8, !dbg !1960
  store i8* %4, i8** %tail, align 8, !dbg !1961
  store i8* %4, i8** %first, align 8, !dbg !1962
  %5 = load i64, i64* %num.addr, align 8, !dbg !1963
  %cmp = icmp eq i64 %5, 0, !dbg !1965
  br i1 %cmp, label %if.then, label %if.end, !dbg !1966

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !1967
  store i8* %6, i8** %retval, align 8, !dbg !1968
  br label %return, !dbg !1968

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1969

while.cond:                                       ; preds = %if.end6, %if.end
  %7 = load i64, i64* %num.addr, align 8, !dbg !1970
  %dec = add i64 %7, -1, !dbg !1970
  store i64 %dec, i64* %num.addr, align 8, !dbg !1970
  %tobool = icmp ne i64 %7, 0, !dbg !1969
  br i1 %tobool, label %while.body, label %while.end, !dbg !1969

while.body:                                       ; preds = %while.cond
  %8 = load i64, i64* %deleted, align 8, !dbg !1971
  %inc = add i64 %8, 1, !dbg !1971
  store i64 %inc, i64* %deleted, align 8, !dbg !1971
  %9 = load i8*, i8** %tail, align 8, !dbg !1973
  %call2 = call i8* @lpSkip(i8* %9), !dbg !1974
  store i8* %call2, i8** %tail, align 8, !dbg !1975
  %10 = load i8*, i8** %tail, align 8, !dbg !1976
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0, !dbg !1976
  %11 = load i8, i8* %arrayidx, align 1, !dbg !1976
  %conv = zext i8 %11 to i32, !dbg !1976
  %cmp3 = icmp eq i32 %conv, 255, !dbg !1978
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1979

if.then5:                                         ; preds = %while.body
  br label %while.end, !dbg !1980

if.end6:                                          ; preds = %while.body
  %12 = load i8*, i8** %lp.addr, align 8, !dbg !1981
  %13 = load i64, i64* %bytes, align 8, !dbg !1982
  %14 = load i8*, i8** %tail, align 8, !dbg !1983
  call void @lpAssertValidEntry(i8* %12, i64 %13, i8* %14), !dbg !1984
  br label %while.cond, !dbg !1969, !llvm.loop !1985

while.end:                                        ; preds = %if.then5, %while.cond
  call void @llvm.dbg.declare(metadata i64* %poff, metadata !1987, metadata !DIExpression()), !dbg !1988
  %15 = load i8*, i8** %first, align 8, !dbg !1989
  %16 = load i8*, i8** %lp.addr, align 8, !dbg !1990
  %sub.ptr.lhs.cast = ptrtoint i8* %15 to i64, !dbg !1991
  %sub.ptr.rhs.cast = ptrtoint i8* %16 to i64, !dbg !1991
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1991
  store i64 %sub.ptr.sub, i64* %poff, align 8, !dbg !1988
  %17 = load i8*, i8** %first, align 8, !dbg !1992
  %18 = load i8*, i8** %tail, align 8, !dbg !1993
  %19 = load i8*, i8** %eofptr, align 8, !dbg !1994
  %20 = load i8*, i8** %tail, align 8, !dbg !1995
  %sub.ptr.lhs.cast7 = ptrtoint i8* %19 to i64, !dbg !1996
  %sub.ptr.rhs.cast8 = ptrtoint i8* %20 to i64, !dbg !1996
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8, !dbg !1996
  %add = add nsw i64 %sub.ptr.sub9, 1, !dbg !1997
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 %add, i1 false), !dbg !1998
  br label %do.body, !dbg !1999

do.body:                                          ; preds = %while.end
  %21 = load i64, i64* %bytes, align 8, !dbg !2000
  %22 = load i8*, i8** %tail, align 8, !dbg !2000
  %23 = load i8*, i8** %first, align 8, !dbg !2000
  %sub.ptr.lhs.cast10 = ptrtoint i8* %22 to i64, !dbg !2000
  %sub.ptr.rhs.cast11 = ptrtoint i8* %23 to i64, !dbg !2000
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11, !dbg !2000
  %sub = sub i64 %21, %sub.ptr.sub12, !dbg !2000
  %and = and i64 %sub, 255, !dbg !2000
  %conv13 = trunc i64 %and to i8, !dbg !2000
  %24 = load i8*, i8** %lp.addr, align 8, !dbg !2000
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !2000
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !2000
  %25 = load i64, i64* %bytes, align 8, !dbg !2000
  %26 = load i8*, i8** %tail, align 8, !dbg !2000
  %27 = load i8*, i8** %first, align 8, !dbg !2000
  %sub.ptr.lhs.cast15 = ptrtoint i8* %26 to i64, !dbg !2000
  %sub.ptr.rhs.cast16 = ptrtoint i8* %27 to i64, !dbg !2000
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16, !dbg !2000
  %sub18 = sub i64 %25, %sub.ptr.sub17, !dbg !2000
  %shr = lshr i64 %sub18, 8, !dbg !2000
  %and19 = and i64 %shr, 255, !dbg !2000
  %conv20 = trunc i64 %and19 to i8, !dbg !2000
  %28 = load i8*, i8** %lp.addr, align 8, !dbg !2000
  %arrayidx21 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !2000
  store i8 %conv20, i8* %arrayidx21, align 1, !dbg !2000
  %29 = load i64, i64* %bytes, align 8, !dbg !2000
  %30 = load i8*, i8** %tail, align 8, !dbg !2000
  %31 = load i8*, i8** %first, align 8, !dbg !2000
  %sub.ptr.lhs.cast22 = ptrtoint i8* %30 to i64, !dbg !2000
  %sub.ptr.rhs.cast23 = ptrtoint i8* %31 to i64, !dbg !2000
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23, !dbg !2000
  %sub25 = sub i64 %29, %sub.ptr.sub24, !dbg !2000
  %shr26 = lshr i64 %sub25, 16, !dbg !2000
  %and27 = and i64 %shr26, 255, !dbg !2000
  %conv28 = trunc i64 %and27 to i8, !dbg !2000
  %32 = load i8*, i8** %lp.addr, align 8, !dbg !2000
  %arrayidx29 = getelementptr inbounds i8, i8* %32, i64 2, !dbg !2000
  store i8 %conv28, i8* %arrayidx29, align 1, !dbg !2000
  %33 = load i64, i64* %bytes, align 8, !dbg !2000
  %34 = load i8*, i8** %tail, align 8, !dbg !2000
  %35 = load i8*, i8** %first, align 8, !dbg !2000
  %sub.ptr.lhs.cast30 = ptrtoint i8* %34 to i64, !dbg !2000
  %sub.ptr.rhs.cast31 = ptrtoint i8* %35 to i64, !dbg !2000
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31, !dbg !2000
  %sub33 = sub i64 %33, %sub.ptr.sub32, !dbg !2000
  %shr34 = lshr i64 %sub33, 24, !dbg !2000
  %and35 = and i64 %shr34, 255, !dbg !2000
  %conv36 = trunc i64 %and35 to i8, !dbg !2000
  %36 = load i8*, i8** %lp.addr, align 8, !dbg !2000
  %arrayidx37 = getelementptr inbounds i8, i8* %36, i64 3, !dbg !2000
  store i8 %conv36, i8* %arrayidx37, align 1, !dbg !2000
  br label %do.end, !dbg !2000

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i32* %numele, metadata !2002, metadata !DIExpression()), !dbg !2003
  %37 = load i8*, i8** %lp.addr, align 8, !dbg !2004
  %arrayidx38 = getelementptr inbounds i8, i8* %37, i64 4, !dbg !2004
  %38 = load i8, i8* %arrayidx38, align 1, !dbg !2004
  %conv39 = zext i8 %38 to i32, !dbg !2004
  %shl = shl i32 %conv39, 0, !dbg !2004
  %39 = load i8*, i8** %lp.addr, align 8, !dbg !2004
  %arrayidx40 = getelementptr inbounds i8, i8* %39, i64 5, !dbg !2004
  %40 = load i8, i8* %arrayidx40, align 1, !dbg !2004
  %conv41 = zext i8 %40 to i32, !dbg !2004
  %shl42 = shl i32 %conv41, 8, !dbg !2004
  %or = or i32 %shl, %shl42, !dbg !2004
  store i32 %or, i32* %numele, align 4, !dbg !2003
  %41 = load i32, i32* %numele, align 4, !dbg !2005
  %cmp43 = icmp ne i32 %41, 65535, !dbg !2007
  br i1 %cmp43, label %if.then45, label %if.end59, !dbg !2008

if.then45:                                        ; preds = %do.end
  br label %do.body46, !dbg !2009

do.body46:                                        ; preds = %if.then45
  %42 = load i32, i32* %numele, align 4, !dbg !2010
  %conv47 = zext i32 %42 to i64, !dbg !2010
  %43 = load i64, i64* %deleted, align 8, !dbg !2010
  %sub48 = sub i64 %conv47, %43, !dbg !2010
  %and49 = and i64 %sub48, 255, !dbg !2010
  %conv50 = trunc i64 %and49 to i8, !dbg !2010
  %44 = load i8*, i8** %lp.addr, align 8, !dbg !2010
  %arrayidx51 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !2010
  store i8 %conv50, i8* %arrayidx51, align 1, !dbg !2010
  %45 = load i32, i32* %numele, align 4, !dbg !2010
  %conv52 = zext i32 %45 to i64, !dbg !2010
  %46 = load i64, i64* %deleted, align 8, !dbg !2010
  %sub53 = sub i64 %conv52, %46, !dbg !2010
  %shr54 = lshr i64 %sub53, 8, !dbg !2010
  %and55 = and i64 %shr54, 255, !dbg !2010
  %conv56 = trunc i64 %and55 to i8, !dbg !2010
  %47 = load i8*, i8** %lp.addr, align 8, !dbg !2010
  %arrayidx57 = getelementptr inbounds i8, i8* %47, i64 5, !dbg !2010
  store i8 %conv56, i8* %arrayidx57, align 1, !dbg !2010
  br label %do.end58, !dbg !2010

do.end58:                                         ; preds = %do.body46
  br label %if.end59, !dbg !2010

if.end59:                                         ; preds = %do.end58, %do.end
  %48 = load i8*, i8** %lp.addr, align 8, !dbg !2012
  %call60 = call i8* @lpShrinkToFit(i8* %48), !dbg !2013
  store i8* %call60, i8** %lp.addr, align 8, !dbg !2014
  %49 = load i8*, i8** %lp.addr, align 8, !dbg !2015
  %50 = load i64, i64* %poff, align 8, !dbg !2016
  %add.ptr61 = getelementptr inbounds i8, i8* %49, i64 %50, !dbg !2017
  %51 = load i8**, i8*** %p.addr, align 8, !dbg !2018
  store i8* %add.ptr61, i8** %51, align 8, !dbg !2019
  %52 = load i8**, i8*** %p.addr, align 8, !dbg !2020
  %53 = load i8*, i8** %52, align 8, !dbg !2022
  %arrayidx62 = getelementptr inbounds i8, i8* %53, i64 0, !dbg !2023
  %54 = load i8, i8* %arrayidx62, align 1, !dbg !2023
  %conv63 = zext i8 %54 to i32, !dbg !2023
  %cmp64 = icmp eq i32 %conv63, 255, !dbg !2024
  br i1 %cmp64, label %if.then66, label %if.end67, !dbg !2025

if.then66:                                        ; preds = %if.end59
  %55 = load i8**, i8*** %p.addr, align 8, !dbg !2026
  store i8* null, i8** %55, align 8, !dbg !2027
  br label %if.end67, !dbg !2028

if.end67:                                         ; preds = %if.then66, %if.end59
  %56 = load i8*, i8** %lp.addr, align 8, !dbg !2029
  store i8* %56, i8** %retval, align 8, !dbg !2030
  br label %return, !dbg !2030

return:                                           ; preds = %if.end67, %if.then
  %57 = load i8*, i8** %retval, align 8, !dbg !2031
  ret i8* %57, !dbg !2031
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpDeleteRange(i8* %lp, i64 %index, i64 %num) #0 !dbg !2032 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %index.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %numele = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2035, metadata !DIExpression()), !dbg !2036
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i64 %num, i64* %num.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num.addr, metadata !2039, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2041, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.declare(metadata i32* %numele, metadata !2043, metadata !DIExpression()), !dbg !2044
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !2045
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2045
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2045
  %conv = zext i8 %1 to i32, !dbg !2045
  %shl = shl i32 %conv, 0, !dbg !2045
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !2045
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !2045
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !2045
  %conv2 = zext i8 %3 to i32, !dbg !2045
  %shl3 = shl i32 %conv2, 8, !dbg !2045
  %or = or i32 %shl, %shl3, !dbg !2045
  store i32 %or, i32* %numele, align 4, !dbg !2044
  %4 = load i64, i64* %num.addr, align 8, !dbg !2046
  %cmp = icmp eq i64 %4, 0, !dbg !2048
  br i1 %cmp, label %if.then, label %if.end, !dbg !2049

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !2050
  store i8* %5, i8** %retval, align 8, !dbg !2051
  br label %return, !dbg !2051

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !2052
  %7 = load i64, i64* %index.addr, align 8, !dbg !2054
  %call = call i8* @lpSeek(i8* %6, i64 %7), !dbg !2055
  store i8* %call, i8** %p, align 8, !dbg !2056
  %cmp5 = icmp eq i8* %call, null, !dbg !2057
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2058

if.then7:                                         ; preds = %if.end
  %8 = load i8*, i8** %lp.addr, align 8, !dbg !2059
  store i8* %8, i8** %retval, align 8, !dbg !2060
  br label %return, !dbg !2060

if.end8:                                          ; preds = %if.end
  %9 = load i32, i32* %numele, align 4, !dbg !2061
  %cmp9 = icmp ne i32 %9, 65535, !dbg !2063
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !2064

land.lhs.true:                                    ; preds = %if.end8
  %10 = load i64, i64* %index.addr, align 8, !dbg !2065
  %cmp11 = icmp slt i64 %10, 0, !dbg !2066
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !2067

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %numele, align 4, !dbg !2068
  %conv14 = zext i32 %11 to i64, !dbg !2069
  %12 = load i64, i64* %index.addr, align 8, !dbg !2070
  %add = add nsw i64 %conv14, %12, !dbg !2071
  store i64 %add, i64* %index.addr, align 8, !dbg !2072
  br label %if.end15, !dbg !2073

if.end15:                                         ; preds = %if.then13, %land.lhs.true, %if.end8
  %13 = load i32, i32* %numele, align 4, !dbg !2074
  %cmp16 = icmp ne i32 %13, 65535, !dbg !2076
  br i1 %cmp16, label %land.lhs.true18, label %if.else, !dbg !2077

land.lhs.true18:                                  ; preds = %if.end15
  %14 = load i32, i32* %numele, align 4, !dbg !2078
  %conv19 = zext i32 %14 to i64, !dbg !2078
  %15 = load i64, i64* %index.addr, align 8, !dbg !2079
  %sub = sub i64 %conv19, %15, !dbg !2080
  %16 = load i64, i64* %num.addr, align 8, !dbg !2081
  %cmp20 = icmp ule i64 %sub, %16, !dbg !2082
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !2083

if.then22:                                        ; preds = %land.lhs.true18
  %17 = load i8*, i8** %p, align 8, !dbg !2084
  %arrayidx23 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !2084
  store i8 -1, i8* %arrayidx23, align 1, !dbg !2086
  br label %do.body, !dbg !2087

do.body:                                          ; preds = %if.then22
  %18 = load i8*, i8** %p, align 8, !dbg !2088
  %19 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64, !dbg !2088
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !2088
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2088
  %add24 = add nsw i64 %sub.ptr.sub, 1, !dbg !2088
  %and = and i64 %add24, 255, !dbg !2088
  %conv25 = trunc i64 %and to i8, !dbg !2088
  %20 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %arrayidx26 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !2088
  store i8 %conv25, i8* %arrayidx26, align 1, !dbg !2088
  %21 = load i8*, i8** %p, align 8, !dbg !2088
  %22 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %sub.ptr.lhs.cast27 = ptrtoint i8* %21 to i64, !dbg !2088
  %sub.ptr.rhs.cast28 = ptrtoint i8* %22 to i64, !dbg !2088
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28, !dbg !2088
  %add30 = add nsw i64 %sub.ptr.sub29, 1, !dbg !2088
  %shr = ashr i64 %add30, 8, !dbg !2088
  %and31 = and i64 %shr, 255, !dbg !2088
  %conv32 = trunc i64 %and31 to i8, !dbg !2088
  %23 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %arrayidx33 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !2088
  store i8 %conv32, i8* %arrayidx33, align 1, !dbg !2088
  %24 = load i8*, i8** %p, align 8, !dbg !2088
  %25 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %sub.ptr.lhs.cast34 = ptrtoint i8* %24 to i64, !dbg !2088
  %sub.ptr.rhs.cast35 = ptrtoint i8* %25 to i64, !dbg !2088
  %sub.ptr.sub36 = sub i64 %sub.ptr.lhs.cast34, %sub.ptr.rhs.cast35, !dbg !2088
  %add37 = add nsw i64 %sub.ptr.sub36, 1, !dbg !2088
  %shr38 = ashr i64 %add37, 16, !dbg !2088
  %and39 = and i64 %shr38, 255, !dbg !2088
  %conv40 = trunc i64 %and39 to i8, !dbg !2088
  %26 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %arrayidx41 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !2088
  store i8 %conv40, i8* %arrayidx41, align 1, !dbg !2088
  %27 = load i8*, i8** %p, align 8, !dbg !2088
  %28 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %sub.ptr.lhs.cast42 = ptrtoint i8* %27 to i64, !dbg !2088
  %sub.ptr.rhs.cast43 = ptrtoint i8* %28 to i64, !dbg !2088
  %sub.ptr.sub44 = sub i64 %sub.ptr.lhs.cast42, %sub.ptr.rhs.cast43, !dbg !2088
  %add45 = add nsw i64 %sub.ptr.sub44, 1, !dbg !2088
  %shr46 = ashr i64 %add45, 24, !dbg !2088
  %and47 = and i64 %shr46, 255, !dbg !2088
  %conv48 = trunc i64 %and47 to i8, !dbg !2088
  %29 = load i8*, i8** %lp.addr, align 8, !dbg !2088
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !2088
  store i8 %conv48, i8* %arrayidx49, align 1, !dbg !2088
  br label %do.end, !dbg !2088

do.end:                                           ; preds = %do.body
  br label %do.body50, !dbg !2090

do.body50:                                        ; preds = %do.end
  %30 = load i64, i64* %index.addr, align 8, !dbg !2091
  %and51 = and i64 %30, 255, !dbg !2091
  %conv52 = trunc i64 %and51 to i8, !dbg !2091
  %31 = load i8*, i8** %lp.addr, align 8, !dbg !2091
  %arrayidx53 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !2091
  store i8 %conv52, i8* %arrayidx53, align 1, !dbg !2091
  %32 = load i64, i64* %index.addr, align 8, !dbg !2091
  %shr54 = ashr i64 %32, 8, !dbg !2091
  %and55 = and i64 %shr54, 255, !dbg !2091
  %conv56 = trunc i64 %and55 to i8, !dbg !2091
  %33 = load i8*, i8** %lp.addr, align 8, !dbg !2091
  %arrayidx57 = getelementptr inbounds i8, i8* %33, i64 5, !dbg !2091
  store i8 %conv56, i8* %arrayidx57, align 1, !dbg !2091
  br label %do.end58, !dbg !2091

do.end58:                                         ; preds = %do.body50
  %34 = load i8*, i8** %lp.addr, align 8, !dbg !2093
  %call59 = call i8* @lpShrinkToFit(i8* %34), !dbg !2094
  store i8* %call59, i8** %lp.addr, align 8, !dbg !2095
  br label %if.end61, !dbg !2096

if.else:                                          ; preds = %land.lhs.true18, %if.end15
  %35 = load i8*, i8** %lp.addr, align 8, !dbg !2097
  %36 = load i64, i64* %num.addr, align 8, !dbg !2099
  %call60 = call i8* @lpDeleteRangeWithEntry(i8* %35, i8** %p, i64 %36), !dbg !2100
  store i8* %call60, i8** %lp.addr, align 8, !dbg !2101
  br label %if.end61

if.end61:                                         ; preds = %if.else, %do.end58
  %37 = load i8*, i8** %lp.addr, align 8, !dbg !2102
  store i8* %37, i8** %retval, align 8, !dbg !2103
  br label %return, !dbg !2103

return:                                           ; preds = %if.end61, %if.then7, %if.then
  %38 = load i8*, i8** %retval, align 8, !dbg !2104
  ret i8* %38, !dbg !2104
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpSeek(i8* %lp, i64 %index) #0 !dbg !2105 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %index.addr = alloca i64, align 8
  %forward = alloca i32, align 4
  %numele = alloca i32, align 4
  %ele = alloca i8*, align 8
  %ele35 = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2108, metadata !DIExpression()), !dbg !2109
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !2110, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.declare(metadata i32* %forward, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i32 1, i32* %forward, align 4, !dbg !2113
  call void @llvm.dbg.declare(metadata i32* %numele, metadata !2114, metadata !DIExpression()), !dbg !2115
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !2116
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 4, !dbg !2116
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2116
  %conv = zext i8 %1 to i32, !dbg !2116
  %shl = shl i32 %conv, 0, !dbg !2116
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !2116
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !2116
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !2116
  %conv2 = zext i8 %3 to i32, !dbg !2116
  %shl3 = shl i32 %conv2, 8, !dbg !2116
  %or = or i32 %shl, %shl3, !dbg !2116
  store i32 %or, i32* %numele, align 4, !dbg !2115
  %4 = load i32, i32* %numele, align 4, !dbg !2117
  %cmp = icmp ne i32 %4, 65535, !dbg !2119
  br i1 %cmp, label %if.then, label %if.else, !dbg !2120

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %index.addr, align 8, !dbg !2121
  %cmp5 = icmp slt i64 %5, 0, !dbg !2124
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !2125

if.then7:                                         ; preds = %if.then
  %6 = load i32, i32* %numele, align 4, !dbg !2126
  %conv8 = zext i32 %6 to i64, !dbg !2127
  %7 = load i64, i64* %index.addr, align 8, !dbg !2128
  %add = add nsw i64 %conv8, %7, !dbg !2129
  store i64 %add, i64* %index.addr, align 8, !dbg !2130
  br label %if.end, !dbg !2131

if.end:                                           ; preds = %if.then7, %if.then
  %8 = load i64, i64* %index.addr, align 8, !dbg !2132
  %cmp9 = icmp slt i64 %8, 0, !dbg !2134
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2135

if.then11:                                        ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !2136
  br label %return, !dbg !2136

if.end12:                                         ; preds = %if.end
  %9 = load i64, i64* %index.addr, align 8, !dbg !2137
  %10 = load i32, i32* %numele, align 4, !dbg !2139
  %conv13 = zext i32 %10 to i64, !dbg !2140
  %cmp14 = icmp sge i64 %9, %conv13, !dbg !2141
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2142

if.then16:                                        ; preds = %if.end12
  store i8* null, i8** %retval, align 8, !dbg !2143
  br label %return, !dbg !2143

if.end17:                                         ; preds = %if.end12
  %11 = load i64, i64* %index.addr, align 8, !dbg !2144
  %12 = load i32, i32* %numele, align 4, !dbg !2146
  %conv18 = zext i32 %12 to i64, !dbg !2147
  %div = sdiv i64 %conv18, 2, !dbg !2148
  %cmp19 = icmp sgt i64 %11, %div, !dbg !2149
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !2150

if.then21:                                        ; preds = %if.end17
  store i32 0, i32* %forward, align 4, !dbg !2151
  %13 = load i32, i32* %numele, align 4, !dbg !2153
  %conv22 = zext i32 %13 to i64, !dbg !2153
  %14 = load i64, i64* %index.addr, align 8, !dbg !2154
  %sub = sub nsw i64 %14, %conv22, !dbg !2154
  store i64 %sub, i64* %index.addr, align 8, !dbg !2154
  br label %if.end23, !dbg !2155

if.end23:                                         ; preds = %if.then21, %if.end17
  br label %if.end28, !dbg !2156

if.else:                                          ; preds = %entry
  %15 = load i64, i64* %index.addr, align 8, !dbg !2157
  %cmp24 = icmp slt i64 %15, 0, !dbg !2160
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !2161

if.then26:                                        ; preds = %if.else
  store i32 0, i32* %forward, align 4, !dbg !2162
  br label %if.end27, !dbg !2163

if.end27:                                         ; preds = %if.then26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end23
  %16 = load i32, i32* %forward, align 4, !dbg !2164
  %tobool = icmp ne i32 %16, 0, !dbg !2164
  br i1 %tobool, label %if.then29, label %if.else34, !dbg !2166

if.then29:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i8** %ele, metadata !2167, metadata !DIExpression()), !dbg !2169
  %17 = load i8*, i8** %lp.addr, align 8, !dbg !2170
  %call = call i8* @lpFirst(i8* %17), !dbg !2171
  store i8* %call, i8** %ele, align 8, !dbg !2169
  br label %while.cond, !dbg !2172

while.cond:                                       ; preds = %while.body, %if.then29
  %18 = load i64, i64* %index.addr, align 8, !dbg !2173
  %cmp30 = icmp sgt i64 %18, 0, !dbg !2174
  br i1 %cmp30, label %land.rhs, label %land.end, !dbg !2175

land.rhs:                                         ; preds = %while.cond
  %19 = load i8*, i8** %ele, align 8, !dbg !2176
  %tobool32 = icmp ne i8* %19, null, !dbg !2175
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %tobool32, %land.rhs ], !dbg !2177
  br i1 %20, label %while.body, label %while.end, !dbg !2172

while.body:                                       ; preds = %land.end
  %21 = load i8*, i8** %lp.addr, align 8, !dbg !2178
  %22 = load i8*, i8** %ele, align 8, !dbg !2180
  %call33 = call i8* @lpNext(i8* %21, i8* %22), !dbg !2181
  store i8* %call33, i8** %ele, align 8, !dbg !2182
  %23 = load i64, i64* %index.addr, align 8, !dbg !2183
  %dec = add nsw i64 %23, -1, !dbg !2183
  store i64 %dec, i64* %index.addr, align 8, !dbg !2183
  br label %while.cond, !dbg !2172, !llvm.loop !2184

while.end:                                        ; preds = %land.end
  %24 = load i8*, i8** %ele, align 8, !dbg !2186
  store i8* %24, i8** %retval, align 8, !dbg !2187
  br label %return, !dbg !2187

if.else34:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i8** %ele35, metadata !2188, metadata !DIExpression()), !dbg !2190
  %25 = load i8*, i8** %lp.addr, align 8, !dbg !2191
  %call36 = call i8* @lpLast(i8* %25), !dbg !2192
  store i8* %call36, i8** %ele35, align 8, !dbg !2190
  br label %while.cond37, !dbg !2193

while.cond37:                                     ; preds = %while.body43, %if.else34
  %26 = load i64, i64* %index.addr, align 8, !dbg !2194
  %cmp38 = icmp slt i64 %26, -1, !dbg !2195
  br i1 %cmp38, label %land.rhs40, label %land.end42, !dbg !2196

land.rhs40:                                       ; preds = %while.cond37
  %27 = load i8*, i8** %ele35, align 8, !dbg !2197
  %tobool41 = icmp ne i8* %27, null, !dbg !2196
  br label %land.end42

land.end42:                                       ; preds = %land.rhs40, %while.cond37
  %28 = phi i1 [ false, %while.cond37 ], [ %tobool41, %land.rhs40 ], !dbg !2198
  br i1 %28, label %while.body43, label %while.end45, !dbg !2193

while.body43:                                     ; preds = %land.end42
  %29 = load i8*, i8** %lp.addr, align 8, !dbg !2199
  %30 = load i8*, i8** %ele35, align 8, !dbg !2201
  %call44 = call i8* @lpPrev(i8* %29, i8* %30), !dbg !2202
  store i8* %call44, i8** %ele35, align 8, !dbg !2203
  %31 = load i64, i64* %index.addr, align 8, !dbg !2204
  %inc = add nsw i64 %31, 1, !dbg !2204
  store i64 %inc, i64* %index.addr, align 8, !dbg !2204
  br label %while.cond37, !dbg !2193, !llvm.loop !2205

while.end45:                                      ; preds = %land.end42
  %32 = load i8*, i8** %ele35, align 8, !dbg !2207
  store i8* %32, i8** %retval, align 8, !dbg !2208
  br label %return, !dbg !2208

return:                                           ; preds = %while.end45, %while.end, %if.then16, %if.then11
  %33 = load i8*, i8** %retval, align 8, !dbg !2209
  ret i8* %33, !dbg !2209
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpMerge(i8** %first, i8** %second) #0 !dbg !2210 {
entry:
  %retval = alloca i8*, align 8
  %first.addr = alloca i8**, align 8
  %second.addr = alloca i8**, align 8
  %first_bytes = alloca i64, align 8
  %first_len = alloca i64, align 8
  %second_bytes = alloca i64, align 8
  %second_len = alloca i64, align 8
  %append = alloca i32, align 4
  %source = alloca i8*, align 8
  %target = alloca i8*, align 8
  %target_bytes = alloca i64, align 8
  %source_bytes = alloca i64, align 8
  %lpbytes = alloca i64, align 8
  %lplength = alloca i64, align 8
  store i8** %first, i8*** %first.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %first.addr, metadata !2213, metadata !DIExpression()), !dbg !2214
  store i8** %second, i8*** %second.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %second.addr, metadata !2215, metadata !DIExpression()), !dbg !2216
  %0 = load i8**, i8*** %first.addr, align 8, !dbg !2217
  %cmp = icmp eq i8** %0, null, !dbg !2219
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2220

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8**, i8*** %first.addr, align 8, !dbg !2221
  %2 = load i8*, i8** %1, align 8, !dbg !2222
  %cmp1 = icmp eq i8* %2, null, !dbg !2223
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2224

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i8**, i8*** %second.addr, align 8, !dbg !2225
  %cmp3 = icmp eq i8** %3, null, !dbg !2226
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !2227

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i8**, i8*** %second.addr, align 8, !dbg !2228
  %5 = load i8*, i8** %4, align 8, !dbg !2229
  %cmp5 = icmp eq i8* %5, null, !dbg !2230
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2231

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8, !dbg !2232
  br label %return, !dbg !2232

if.end:                                           ; preds = %lor.lhs.false4
  %6 = load i8**, i8*** %first.addr, align 8, !dbg !2233
  %7 = load i8*, i8** %6, align 8, !dbg !2235
  %8 = load i8**, i8*** %second.addr, align 8, !dbg !2236
  %9 = load i8*, i8** %8, align 8, !dbg !2237
  %cmp6 = icmp eq i8* %7, %9, !dbg !2238
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !2239

if.then7:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !2240
  br label %return, !dbg !2240

if.end8:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %first_bytes, metadata !2241, metadata !DIExpression()), !dbg !2242
  %10 = load i8**, i8*** %first.addr, align 8, !dbg !2243
  %11 = load i8*, i8** %10, align 8, !dbg !2244
  %call = call i64 @lpBytes(i8* %11), !dbg !2245
  store i64 %call, i64* %first_bytes, align 8, !dbg !2242
  call void @llvm.dbg.declare(metadata i64* %first_len, metadata !2246, metadata !DIExpression()), !dbg !2247
  %12 = load i8**, i8*** %first.addr, align 8, !dbg !2248
  %13 = load i8*, i8** %12, align 8, !dbg !2249
  %call9 = call i64 @lpLength(i8* %13), !dbg !2250
  store i64 %call9, i64* %first_len, align 8, !dbg !2247
  call void @llvm.dbg.declare(metadata i64* %second_bytes, metadata !2251, metadata !DIExpression()), !dbg !2252
  %14 = load i8**, i8*** %second.addr, align 8, !dbg !2253
  %15 = load i8*, i8** %14, align 8, !dbg !2254
  %call10 = call i64 @lpBytes(i8* %15), !dbg !2255
  store i64 %call10, i64* %second_bytes, align 8, !dbg !2252
  call void @llvm.dbg.declare(metadata i64* %second_len, metadata !2256, metadata !DIExpression()), !dbg !2257
  %16 = load i8**, i8*** %second.addr, align 8, !dbg !2258
  %17 = load i8*, i8** %16, align 8, !dbg !2259
  %call11 = call i64 @lpLength(i8* %17), !dbg !2260
  store i64 %call11, i64* %second_len, align 8, !dbg !2257
  call void @llvm.dbg.declare(metadata i32* %append, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.declare(metadata i8** %source, metadata !2263, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.declare(metadata i8** %target, metadata !2265, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.declare(metadata i64* %target_bytes, metadata !2267, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.declare(metadata i64* %source_bytes, metadata !2269, metadata !DIExpression()), !dbg !2270
  %18 = load i64, i64* %first_bytes, align 8, !dbg !2271
  %19 = load i64, i64* %second_bytes, align 8, !dbg !2273
  %cmp12 = icmp uge i64 %18, %19, !dbg !2274
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !2275

if.then13:                                        ; preds = %if.end8
  %20 = load i8**, i8*** %first.addr, align 8, !dbg !2276
  %21 = load i8*, i8** %20, align 8, !dbg !2278
  store i8* %21, i8** %target, align 8, !dbg !2279
  %22 = load i64, i64* %first_bytes, align 8, !dbg !2280
  store i64 %22, i64* %target_bytes, align 8, !dbg !2281
  %23 = load i8**, i8*** %second.addr, align 8, !dbg !2282
  %24 = load i8*, i8** %23, align 8, !dbg !2283
  store i8* %24, i8** %source, align 8, !dbg !2284
  %25 = load i64, i64* %second_bytes, align 8, !dbg !2285
  store i64 %25, i64* %source_bytes, align 8, !dbg !2286
  store i32 1, i32* %append, align 4, !dbg !2287
  br label %if.end14, !dbg !2288

if.else:                                          ; preds = %if.end8
  %26 = load i8**, i8*** %second.addr, align 8, !dbg !2289
  %27 = load i8*, i8** %26, align 8, !dbg !2291
  store i8* %27, i8** %target, align 8, !dbg !2292
  %28 = load i64, i64* %second_bytes, align 8, !dbg !2293
  store i64 %28, i64* %target_bytes, align 8, !dbg !2294
  %29 = load i8**, i8*** %first.addr, align 8, !dbg !2295
  %30 = load i8*, i8** %29, align 8, !dbg !2296
  store i8* %30, i8** %source, align 8, !dbg !2297
  %31 = load i64, i64* %first_bytes, align 8, !dbg !2298
  store i64 %31, i64* %source_bytes, align 8, !dbg !2299
  store i32 0, i32* %append, align 4, !dbg !2300
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  call void @llvm.dbg.declare(metadata i64* %lpbytes, metadata !2301, metadata !DIExpression()), !dbg !2302
  %32 = load i64, i64* %first_bytes, align 8, !dbg !2303
  %33 = load i64, i64* %second_bytes, align 8, !dbg !2304
  %add = add i64 %32, %33, !dbg !2305
  %sub = sub i64 %add, 6, !dbg !2306
  %sub15 = sub i64 %sub, 1, !dbg !2307
  store i64 %sub15, i64* %lpbytes, align 8, !dbg !2302
  %34 = load i64, i64* %lpbytes, align 8, !dbg !2308
  %cmp16 = icmp ult i64 %34, 4294967295, !dbg !2308
  %lnot = xor i1 %cmp16, true, !dbg !2308
  %lnot17 = xor i1 %lnot, true, !dbg !2308
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !2308
  %conv = sext i32 %lnot.ext to i64, !dbg !2308
  %tobool = icmp ne i64 %conv, 0, !dbg !2308
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2308

cond.true:                                        ; preds = %if.end14
  br label %cond.end, !dbg !2308

cond.false:                                       ; preds = %if.end14
  call void @_serverAssert(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1119), !dbg !2308
  unreachable, !dbg !2308

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2308

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata i64* %lplength, metadata !2309, metadata !DIExpression()), !dbg !2310
  %35 = load i64, i64* %first_len, align 8, !dbg !2311
  %36 = load i64, i64* %second_len, align 8, !dbg !2312
  %add18 = add i64 %35, %36, !dbg !2313
  store i64 %add18, i64* %lplength, align 8, !dbg !2310
  %37 = load i64, i64* %lplength, align 8, !dbg !2314
  %cmp19 = icmp ult i64 %37, 65535, !dbg !2315
  br i1 %cmp19, label %cond.true21, label %cond.false22, !dbg !2314

cond.true21:                                      ; preds = %cond.end
  %38 = load i64, i64* %lplength, align 8, !dbg !2316
  br label %cond.end23, !dbg !2314

cond.false22:                                     ; preds = %cond.end
  br label %cond.end23, !dbg !2314

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond = phi i64 [ %38, %cond.true21 ], [ 65535, %cond.false22 ], !dbg !2314
  store i64 %cond, i64* %lplength, align 8, !dbg !2317
  %39 = load i8*, i8** %target, align 8, !dbg !2318
  %40 = load i64, i64* %lpbytes, align 8, !dbg !2319
  %call24 = call i8* @zrealloc(i8* %39, i64 %40), !dbg !2320
  store i8* %call24, i8** %target, align 8, !dbg !2321
  %41 = load i32, i32* %append, align 4, !dbg !2322
  %tobool25 = icmp ne i32 %41, 0, !dbg !2322
  br i1 %tobool25, label %if.then26, label %if.else30, !dbg !2324

if.then26:                                        ; preds = %cond.end23
  %42 = load i8*, i8** %target, align 8, !dbg !2325
  %43 = load i64, i64* %target_bytes, align 8, !dbg !2327
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !2328
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr, i64 -1, !dbg !2329
  %44 = load i8*, i8** %source, align 8, !dbg !2330
  %add.ptr28 = getelementptr inbounds i8, i8* %44, i64 6, !dbg !2331
  %45 = load i64, i64* %source_bytes, align 8, !dbg !2332
  %sub29 = sub i64 %45, 6, !dbg !2333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr27, i8* align 1 %add.ptr28, i64 %sub29, i1 false), !dbg !2334
  br label %if.end36, !dbg !2335

if.else30:                                        ; preds = %cond.end23
  %46 = load i8*, i8** %target, align 8, !dbg !2336
  %47 = load i64, i64* %source_bytes, align 8, !dbg !2338
  %add.ptr31 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !2339
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 -1, !dbg !2340
  %48 = load i8*, i8** %target, align 8, !dbg !2341
  %add.ptr33 = getelementptr inbounds i8, i8* %48, i64 6, !dbg !2342
  %49 = load i64, i64* %target_bytes, align 8, !dbg !2343
  %sub34 = sub i64 %49, 6, !dbg !2344
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %add.ptr32, i8* align 1 %add.ptr33, i64 %sub34, i1 false), !dbg !2345
  %50 = load i8*, i8** %target, align 8, !dbg !2346
  %51 = load i8*, i8** %source, align 8, !dbg !2347
  %52 = load i64, i64* %source_bytes, align 8, !dbg !2348
  %sub35 = sub i64 %52, 1, !dbg !2349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %51, i64 %sub35, i1 false), !dbg !2350
  br label %if.end36

if.end36:                                         ; preds = %if.else30, %if.then26
  br label %do.body, !dbg !2351

do.body:                                          ; preds = %if.end36
  %53 = load i64, i64* %lplength, align 8, !dbg !2352
  %and = and i64 %53, 255, !dbg !2352
  %conv37 = trunc i64 %and to i8, !dbg !2352
  %54 = load i8*, i8** %target, align 8, !dbg !2352
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 4, !dbg !2352
  store i8 %conv37, i8* %arrayidx, align 1, !dbg !2352
  %55 = load i64, i64* %lplength, align 8, !dbg !2352
  %shr = lshr i64 %55, 8, !dbg !2352
  %and38 = and i64 %shr, 255, !dbg !2352
  %conv39 = trunc i64 %and38 to i8, !dbg !2352
  %56 = load i8*, i8** %target, align 8, !dbg !2352
  %arrayidx40 = getelementptr inbounds i8, i8* %56, i64 5, !dbg !2352
  store i8 %conv39, i8* %arrayidx40, align 1, !dbg !2352
  br label %do.end, !dbg !2352

do.end:                                           ; preds = %do.body
  br label %do.body41, !dbg !2354

do.body41:                                        ; preds = %do.end
  %57 = load i64, i64* %lpbytes, align 8, !dbg !2355
  %and42 = and i64 %57, 255, !dbg !2355
  %conv43 = trunc i64 %and42 to i8, !dbg !2355
  %58 = load i8*, i8** %target, align 8, !dbg !2355
  %arrayidx44 = getelementptr inbounds i8, i8* %58, i64 0, !dbg !2355
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !2355
  %59 = load i64, i64* %lpbytes, align 8, !dbg !2355
  %shr45 = lshr i64 %59, 8, !dbg !2355
  %and46 = and i64 %shr45, 255, !dbg !2355
  %conv47 = trunc i64 %and46 to i8, !dbg !2355
  %60 = load i8*, i8** %target, align 8, !dbg !2355
  %arrayidx48 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2355
  store i8 %conv47, i8* %arrayidx48, align 1, !dbg !2355
  %61 = load i64, i64* %lpbytes, align 8, !dbg !2355
  %shr49 = lshr i64 %61, 16, !dbg !2355
  %and50 = and i64 %shr49, 255, !dbg !2355
  %conv51 = trunc i64 %and50 to i8, !dbg !2355
  %62 = load i8*, i8** %target, align 8, !dbg !2355
  %arrayidx52 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !2355
  store i8 %conv51, i8* %arrayidx52, align 1, !dbg !2355
  %63 = load i64, i64* %lpbytes, align 8, !dbg !2355
  %shr53 = lshr i64 %63, 24, !dbg !2355
  %and54 = and i64 %shr53, 255, !dbg !2355
  %conv55 = trunc i64 %and54 to i8, !dbg !2355
  %64 = load i8*, i8** %target, align 8, !dbg !2355
  %arrayidx56 = getelementptr inbounds i8, i8* %64, i64 3, !dbg !2355
  store i8 %conv55, i8* %arrayidx56, align 1, !dbg !2355
  br label %do.end57, !dbg !2355

do.end57:                                         ; preds = %do.body41
  %65 = load i32, i32* %append, align 4, !dbg !2357
  %tobool58 = icmp ne i32 %65, 0, !dbg !2357
  br i1 %tobool58, label %if.then59, label %if.else60, !dbg !2359

if.then59:                                        ; preds = %do.end57
  %66 = load i8**, i8*** %second.addr, align 8, !dbg !2360
  %67 = load i8*, i8** %66, align 8, !dbg !2362
  call void @zfree(i8* %67), !dbg !2363
  %68 = load i8**, i8*** %second.addr, align 8, !dbg !2364
  store i8* null, i8** %68, align 8, !dbg !2365
  %69 = load i8*, i8** %target, align 8, !dbg !2366
  %70 = load i8**, i8*** %first.addr, align 8, !dbg !2367
  store i8* %69, i8** %70, align 8, !dbg !2368
  br label %if.end61, !dbg !2369

if.else60:                                        ; preds = %do.end57
  %71 = load i8**, i8*** %first.addr, align 8, !dbg !2370
  %72 = load i8*, i8** %71, align 8, !dbg !2372
  call void @zfree(i8* %72), !dbg !2373
  %73 = load i8**, i8*** %first.addr, align 8, !dbg !2374
  store i8* null, i8** %73, align 8, !dbg !2375
  %74 = load i8*, i8** %target, align 8, !dbg !2376
  %75 = load i8**, i8*** %second.addr, align 8, !dbg !2377
  store i8* %74, i8** %75, align 8, !dbg !2378
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %76 = load i8*, i8** %target, align 8, !dbg !2379
  store i8* %76, i8** %retval, align 8, !dbg !2380
  br label %return, !dbg !2380

return:                                           ; preds = %if.end61, %if.then7, %if.then
  %77 = load i8*, i8** %retval, align 8, !dbg !2381
  ret i8* %77, !dbg !2381
}

declare dso_local i8* @zrealloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @lpValidateFirst(i8* %lp) #0 !dbg !2382 {
entry:
  %retval = alloca i8*, align 8
  %lp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2385, metadata !DIExpression()), !dbg !2386
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !2387
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 6, !dbg !2388
  store i8* %add.ptr, i8** %p, align 8, !dbg !2386
  %1 = load i8*, i8** %p, align 8, !dbg !2389
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2389
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2389
  %conv = zext i8 %2 to i32, !dbg !2389
  %cmp = icmp eq i32 %conv, 255, !dbg !2391
  br i1 %cmp, label %if.then, label %if.end, !dbg !2392

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2393
  br label %return, !dbg !2393

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8, !dbg !2394
  store i8* %3, i8** %retval, align 8, !dbg !2395
  br label %return, !dbg !2395

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, align 8, !dbg !2396
  ret i8* %4, !dbg !2396
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpValidateNext(i8* %lp, i8** %pp, i64 %lpbytes) #0 !dbg !2397 {
entry:
  %retval = alloca i32, align 4
  %lp.addr = alloca i8*, align 8
  %pp.addr = alloca i8**, align 8
  %lpbytes.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %lenbytes = alloca i32, align 4
  %entrylen = alloca i64, align 8
  %encodedBacklen = alloca i64, align 8
  %prevlen = alloca i64, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2400, metadata !DIExpression()), !dbg !2401
  store i8** %pp, i8*** %pp.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %pp.addr, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i64 %lpbytes, i64* %lpbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lpbytes.addr, metadata !2404, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2406, metadata !DIExpression()), !dbg !2407
  %0 = load i8**, i8*** %pp.addr, align 8, !dbg !2408
  %1 = load i8*, i8** %0, align 8, !dbg !2409
  store i8* %1, i8** %p, align 8, !dbg !2407
  %2 = load i8*, i8** %p, align 8, !dbg !2410
  %tobool = icmp ne i8* %2, null, !dbg !2410
  br i1 %tobool, label %if.end, label %if.then, !dbg !2412

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2413
  br label %return, !dbg !2413

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8, !dbg !2414
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !2414
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 6, !dbg !2414
  %cmp = icmp ult i8* %3, %add.ptr, !dbg !2414
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !2414

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i8*, i8** %p, align 8, !dbg !2414
  %6 = load i8*, i8** %lp.addr, align 8, !dbg !2414
  %7 = load i64, i64* %lpbytes.addr, align 8, !dbg !2414
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !2414
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 -1, !dbg !2414
  %cmp3 = icmp ugt i8* %5, %add.ptr2, !dbg !2414
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !2416

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval, align 4, !dbg !2417
  br label %return, !dbg !2417

if.end5:                                          ; preds = %lor.lhs.false
  %8 = load i8*, i8** %p, align 8, !dbg !2418
  %9 = load i8, i8* %8, align 1, !dbg !2420
  %conv = zext i8 %9 to i32, !dbg !2420
  %cmp6 = icmp eq i32 %conv, 255, !dbg !2421
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2422

if.then8:                                         ; preds = %if.end5
  %10 = load i8**, i8*** %pp.addr, align 8, !dbg !2423
  store i8* null, i8** %10, align 8, !dbg !2425
  store i32 1, i32* %retval, align 4, !dbg !2426
  br label %return, !dbg !2426

if.end9:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %lenbytes, metadata !2427, metadata !DIExpression()), !dbg !2428
  %11 = load i8*, i8** %p, align 8, !dbg !2429
  %call = call i32 @lpCurrentEncodedSizeBytes(i8* %11), !dbg !2430
  store i32 %call, i32* %lenbytes, align 4, !dbg !2428
  %12 = load i32, i32* %lenbytes, align 4, !dbg !2431
  %tobool10 = icmp ne i32 %12, 0, !dbg !2431
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2433

if.then11:                                        ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !2434
  br label %return, !dbg !2434

if.end12:                                         ; preds = %if.end9
  %13 = load i8*, i8** %p, align 8, !dbg !2435
  %14 = load i32, i32* %lenbytes, align 4, !dbg !2435
  %idx.ext = zext i32 %14 to i64, !dbg !2435
  %add.ptr13 = getelementptr inbounds i8, i8* %13, i64 %idx.ext, !dbg !2435
  %15 = load i8*, i8** %lp.addr, align 8, !dbg !2435
  %add.ptr14 = getelementptr inbounds i8, i8* %15, i64 6, !dbg !2435
  %cmp15 = icmp ult i8* %add.ptr13, %add.ptr14, !dbg !2435
  br i1 %cmp15, label %if.then24, label %lor.lhs.false17, !dbg !2435

lor.lhs.false17:                                  ; preds = %if.end12
  %16 = load i8*, i8** %p, align 8, !dbg !2435
  %17 = load i32, i32* %lenbytes, align 4, !dbg !2435
  %idx.ext18 = zext i32 %17 to i64, !dbg !2435
  %add.ptr19 = getelementptr inbounds i8, i8* %16, i64 %idx.ext18, !dbg !2435
  %18 = load i8*, i8** %lp.addr, align 8, !dbg !2435
  %19 = load i64, i64* %lpbytes.addr, align 8, !dbg !2435
  %add.ptr20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !2435
  %add.ptr21 = getelementptr inbounds i8, i8* %add.ptr20, i64 -1, !dbg !2435
  %cmp22 = icmp ugt i8* %add.ptr19, %add.ptr21, !dbg !2435
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !2437

if.then24:                                        ; preds = %lor.lhs.false17, %if.end12
  store i32 0, i32* %retval, align 4, !dbg !2438
  br label %return, !dbg !2438

if.end25:                                         ; preds = %lor.lhs.false17
  call void @llvm.dbg.declare(metadata i64* %entrylen, metadata !2439, metadata !DIExpression()), !dbg !2440
  %20 = load i8*, i8** %p, align 8, !dbg !2441
  %call26 = call i32 @lpCurrentEncodedSizeUnsafe(i8* %20), !dbg !2442
  %conv27 = zext i32 %call26 to i64, !dbg !2442
  store i64 %conv27, i64* %entrylen, align 8, !dbg !2440
  call void @llvm.dbg.declare(metadata i64* %encodedBacklen, metadata !2443, metadata !DIExpression()), !dbg !2444
  %21 = load i64, i64* %entrylen, align 8, !dbg !2445
  %call28 = call i64 @lpEncodeBacklen(i8* null, i64 %21), !dbg !2446
  store i64 %call28, i64* %encodedBacklen, align 8, !dbg !2444
  %22 = load i64, i64* %encodedBacklen, align 8, !dbg !2447
  %23 = load i64, i64* %entrylen, align 8, !dbg !2448
  %add = add i64 %23, %22, !dbg !2448
  store i64 %add, i64* %entrylen, align 8, !dbg !2448
  %24 = load i8*, i8** %p, align 8, !dbg !2449
  %25 = load i64, i64* %entrylen, align 8, !dbg !2449
  %add.ptr29 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !2449
  %26 = load i8*, i8** %lp.addr, align 8, !dbg !2449
  %add.ptr30 = getelementptr inbounds i8, i8* %26, i64 6, !dbg !2449
  %cmp31 = icmp ult i8* %add.ptr29, %add.ptr30, !dbg !2449
  br i1 %cmp31, label %if.then39, label %lor.lhs.false33, !dbg !2449

lor.lhs.false33:                                  ; preds = %if.end25
  %27 = load i8*, i8** %p, align 8, !dbg !2449
  %28 = load i64, i64* %entrylen, align 8, !dbg !2449
  %add.ptr34 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !2449
  %29 = load i8*, i8** %lp.addr, align 8, !dbg !2449
  %30 = load i64, i64* %lpbytes.addr, align 8, !dbg !2449
  %add.ptr35 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !2449
  %add.ptr36 = getelementptr inbounds i8, i8* %add.ptr35, i64 -1, !dbg !2449
  %cmp37 = icmp ugt i8* %add.ptr34, %add.ptr36, !dbg !2449
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !2451

if.then39:                                        ; preds = %lor.lhs.false33, %if.end25
  store i32 0, i32* %retval, align 4, !dbg !2452
  br label %return, !dbg !2452

if.end40:                                         ; preds = %lor.lhs.false33
  %31 = load i64, i64* %entrylen, align 8, !dbg !2453
  %32 = load i8*, i8** %p, align 8, !dbg !2454
  %add.ptr41 = getelementptr inbounds i8, i8* %32, i64 %31, !dbg !2454
  store i8* %add.ptr41, i8** %p, align 8, !dbg !2454
  call void @llvm.dbg.declare(metadata i64* %prevlen, metadata !2455, metadata !DIExpression()), !dbg !2456
  %33 = load i8*, i8** %p, align 8, !dbg !2457
  %add.ptr42 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !2458
  %call43 = call i64 @lpDecodeBacklen(i8* %add.ptr42), !dbg !2459
  store i64 %call43, i64* %prevlen, align 8, !dbg !2456
  %34 = load i64, i64* %prevlen, align 8, !dbg !2460
  %35 = load i64, i64* %encodedBacklen, align 8, !dbg !2462
  %add44 = add i64 %34, %35, !dbg !2463
  %36 = load i64, i64* %entrylen, align 8, !dbg !2464
  %cmp45 = icmp ne i64 %add44, %36, !dbg !2465
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !2466

if.then47:                                        ; preds = %if.end40
  store i32 0, i32* %retval, align 4, !dbg !2467
  br label %return, !dbg !2467

if.end48:                                         ; preds = %if.end40
  %37 = load i8*, i8** %p, align 8, !dbg !2468
  %38 = load i8**, i8*** %pp.addr, align 8, !dbg !2469
  store i8* %37, i8** %38, align 8, !dbg !2470
  store i32 1, i32* %retval, align 4, !dbg !2471
  br label %return, !dbg !2471

return:                                           ; preds = %if.end48, %if.then47, %if.then39, %if.then24, %if.then11, %if.then8, %if.then4, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !2472
  ret i32 %39, !dbg !2472
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lpCurrentEncodedSizeBytes(i8* %p) #0 !dbg !2473 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2474, metadata !DIExpression()), !dbg !2475
  %0 = load i8*, i8** %p.addr, align 8, !dbg !2476
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2476
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2476
  %conv = zext i8 %1 to i32, !dbg !2476
  %and = and i32 %conv, 128, !dbg !2476
  %cmp = icmp eq i32 %and, 0, !dbg !2476
  br i1 %cmp, label %if.then, label %if.end, !dbg !2478

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2479
  br label %return, !dbg !2479

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2480
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0, !dbg !2480
  %3 = load i8, i8* %arrayidx2, align 1, !dbg !2480
  %conv3 = zext i8 %3 to i32, !dbg !2480
  %and4 = and i32 %conv3, 192, !dbg !2480
  %cmp5 = icmp eq i32 %and4, 128, !dbg !2480
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !2482

if.then7:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2483
  br label %return, !dbg !2483

if.end8:                                          ; preds = %if.end
  %4 = load i8*, i8** %p.addr, align 8, !dbg !2484
  %arrayidx9 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !2484
  %5 = load i8, i8* %arrayidx9, align 1, !dbg !2484
  %conv10 = zext i8 %5 to i32, !dbg !2484
  %and11 = and i32 %conv10, 224, !dbg !2484
  %cmp12 = icmp eq i32 %and11, 192, !dbg !2484
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2486

if.then14:                                        ; preds = %if.end8
  store i32 1, i32* %retval, align 4, !dbg !2487
  br label %return, !dbg !2487

if.end15:                                         ; preds = %if.end8
  %6 = load i8*, i8** %p.addr, align 8, !dbg !2488
  %arrayidx16 = getelementptr inbounds i8, i8* %6, i64 0, !dbg !2488
  %7 = load i8, i8* %arrayidx16, align 1, !dbg !2488
  %conv17 = zext i8 %7 to i32, !dbg !2488
  %and18 = and i32 %conv17, 255, !dbg !2488
  %cmp19 = icmp eq i32 %and18, 241, !dbg !2488
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2490

if.then21:                                        ; preds = %if.end15
  store i32 1, i32* %retval, align 4, !dbg !2491
  br label %return, !dbg !2491

if.end22:                                         ; preds = %if.end15
  %8 = load i8*, i8** %p.addr, align 8, !dbg !2492
  %arrayidx23 = getelementptr inbounds i8, i8* %8, i64 0, !dbg !2492
  %9 = load i8, i8* %arrayidx23, align 1, !dbg !2492
  %conv24 = zext i8 %9 to i32, !dbg !2492
  %and25 = and i32 %conv24, 255, !dbg !2492
  %cmp26 = icmp eq i32 %and25, 242, !dbg !2492
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2494

if.then28:                                        ; preds = %if.end22
  store i32 1, i32* %retval, align 4, !dbg !2495
  br label %return, !dbg !2495

if.end29:                                         ; preds = %if.end22
  %10 = load i8*, i8** %p.addr, align 8, !dbg !2496
  %arrayidx30 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !2496
  %11 = load i8, i8* %arrayidx30, align 1, !dbg !2496
  %conv31 = zext i8 %11 to i32, !dbg !2496
  %and32 = and i32 %conv31, 255, !dbg !2496
  %cmp33 = icmp eq i32 %and32, 243, !dbg !2496
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !2498

if.then35:                                        ; preds = %if.end29
  store i32 1, i32* %retval, align 4, !dbg !2499
  br label %return, !dbg !2499

if.end36:                                         ; preds = %if.end29
  %12 = load i8*, i8** %p.addr, align 8, !dbg !2500
  %arrayidx37 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !2500
  %13 = load i8, i8* %arrayidx37, align 1, !dbg !2500
  %conv38 = zext i8 %13 to i32, !dbg !2500
  %and39 = and i32 %conv38, 255, !dbg !2500
  %cmp40 = icmp eq i32 %and39, 244, !dbg !2500
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !2502

if.then42:                                        ; preds = %if.end36
  store i32 1, i32* %retval, align 4, !dbg !2503
  br label %return, !dbg !2503

if.end43:                                         ; preds = %if.end36
  %14 = load i8*, i8** %p.addr, align 8, !dbg !2504
  %arrayidx44 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !2504
  %15 = load i8, i8* %arrayidx44, align 1, !dbg !2504
  %conv45 = zext i8 %15 to i32, !dbg !2504
  %and46 = and i32 %conv45, 240, !dbg !2504
  %cmp47 = icmp eq i32 %and46, 224, !dbg !2504
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !2506

if.then49:                                        ; preds = %if.end43
  store i32 2, i32* %retval, align 4, !dbg !2507
  br label %return, !dbg !2507

if.end50:                                         ; preds = %if.end43
  %16 = load i8*, i8** %p.addr, align 8, !dbg !2508
  %arrayidx51 = getelementptr inbounds i8, i8* %16, i64 0, !dbg !2508
  %17 = load i8, i8* %arrayidx51, align 1, !dbg !2508
  %conv52 = zext i8 %17 to i32, !dbg !2508
  %and53 = and i32 %conv52, 255, !dbg !2508
  %cmp54 = icmp eq i32 %and53, 240, !dbg !2508
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2510

if.then56:                                        ; preds = %if.end50
  store i32 5, i32* %retval, align 4, !dbg !2511
  br label %return, !dbg !2511

if.end57:                                         ; preds = %if.end50
  %18 = load i8*, i8** %p.addr, align 8, !dbg !2512
  %arrayidx58 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !2512
  %19 = load i8, i8* %arrayidx58, align 1, !dbg !2512
  %conv59 = zext i8 %19 to i32, !dbg !2512
  %cmp60 = icmp eq i32 %conv59, 255, !dbg !2514
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !2515

if.then62:                                        ; preds = %if.end57
  store i32 1, i32* %retval, align 4, !dbg !2516
  br label %return, !dbg !2516

if.end63:                                         ; preds = %if.end57
  store i32 0, i32* %retval, align 4, !dbg !2517
  br label %return, !dbg !2517

return:                                           ; preds = %if.end63, %if.then62, %if.then56, %if.then49, %if.then42, %if.then35, %if.then28, %if.then21, %if.then14, %if.then7, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !2518
  ret i32 %20, !dbg !2518
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpValidateIntegrity(i8* %lp, i64 %size, i32 %deep, i32 (i8*, i32, i8*)* %entry_cb, i8* %cb_userdata) #0 !dbg !2519 {
entry:
  %retval = alloca i32, align 4
  %lp.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %deep.addr = alloca i32, align 4
  %entry_cb.addr = alloca i32 (i8*, i32, i8*)*, align 8
  %cb_userdata.addr = alloca i8*, align 8
  %bytes = alloca i64, align 8
  %count = alloca i32, align 4
  %numele = alloca i32, align 4
  %p = alloca i8*, align 8
  %prev = alloca i8*, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2527, metadata !DIExpression()), !dbg !2528
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  store i32 %deep, i32* %deep.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %deep.addr, metadata !2531, metadata !DIExpression()), !dbg !2532
  store i32 (i8*, i32, i8*)* %entry_cb, i32 (i8*, i32, i8*)** %entry_cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i8*, i32, i8*)** %entry_cb.addr, metadata !2533, metadata !DIExpression()), !dbg !2534
  store i8* %cb_userdata, i8** %cb_userdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cb_userdata.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  %0 = load i64, i64* %size.addr, align 8, !dbg !2537
  %cmp = icmp ult i64 %0, 7, !dbg !2539
  br i1 %cmp, label %if.then, label %if.end, !dbg !2540

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2541
  br label %return, !dbg !2541

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2542, metadata !DIExpression()), !dbg !2543
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !2544
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !2544
  %2 = load i8, i8* %arrayidx, align 1, !dbg !2544
  %conv = zext i8 %2 to i32, !dbg !2544
  %shl = shl i32 %conv, 0, !dbg !2544
  %3 = load i8*, i8** %lp.addr, align 8, !dbg !2544
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !2544
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !2544
  %conv2 = zext i8 %4 to i32, !dbg !2544
  %shl3 = shl i32 %conv2, 8, !dbg !2544
  %or = or i32 %shl, %shl3, !dbg !2544
  %5 = load i8*, i8** %lp.addr, align 8, !dbg !2544
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !2544
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !2544
  %conv5 = zext i8 %6 to i32, !dbg !2544
  %shl6 = shl i32 %conv5, 16, !dbg !2544
  %or7 = or i32 %or, %shl6, !dbg !2544
  %7 = load i8*, i8** %lp.addr, align 8, !dbg !2544
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 3, !dbg !2544
  %8 = load i8, i8* %arrayidx8, align 1, !dbg !2544
  %conv9 = zext i8 %8 to i32, !dbg !2544
  %shl10 = shl i32 %conv9, 24, !dbg !2544
  %or11 = or i32 %or7, %shl10, !dbg !2544
  %conv12 = zext i32 %or11 to i64, !dbg !2544
  store i64 %conv12, i64* %bytes, align 8, !dbg !2543
  %9 = load i64, i64* %bytes, align 8, !dbg !2545
  %10 = load i64, i64* %size.addr, align 8, !dbg !2547
  %cmp13 = icmp ne i64 %9, %10, !dbg !2548
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !2549

if.then15:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2550
  br label %return, !dbg !2550

if.end16:                                         ; preds = %if.end
  %11 = load i8*, i8** %lp.addr, align 8, !dbg !2551
  %12 = load i64, i64* %size.addr, align 8, !dbg !2553
  %sub = sub i64 %12, 1, !dbg !2554
  %arrayidx17 = getelementptr inbounds i8, i8* %11, i64 %sub, !dbg !2551
  %13 = load i8, i8* %arrayidx17, align 1, !dbg !2551
  %conv18 = zext i8 %13 to i32, !dbg !2551
  %cmp19 = icmp ne i32 %conv18, 255, !dbg !2555
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !2556

if.then21:                                        ; preds = %if.end16
  store i32 0, i32* %retval, align 4, !dbg !2557
  br label %return, !dbg !2557

if.end22:                                         ; preds = %if.end16
  %14 = load i32, i32* %deep.addr, align 4, !dbg !2558
  %tobool = icmp ne i32 %14, 0, !dbg !2558
  br i1 %tobool, label %if.end24, label %if.then23, !dbg !2560

if.then23:                                        ; preds = %if.end22
  store i32 1, i32* %retval, align 4, !dbg !2561
  br label %return, !dbg !2561

if.end24:                                         ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2562, metadata !DIExpression()), !dbg !2563
  store i32 0, i32* %count, align 4, !dbg !2563
  call void @llvm.dbg.declare(metadata i32* %numele, metadata !2564, metadata !DIExpression()), !dbg !2565
  %15 = load i8*, i8** %lp.addr, align 8, !dbg !2566
  %arrayidx25 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !2566
  %16 = load i8, i8* %arrayidx25, align 1, !dbg !2566
  %conv26 = zext i8 %16 to i32, !dbg !2566
  %shl27 = shl i32 %conv26, 0, !dbg !2566
  %17 = load i8*, i8** %lp.addr, align 8, !dbg !2566
  %arrayidx28 = getelementptr inbounds i8, i8* %17, i64 5, !dbg !2566
  %18 = load i8, i8* %arrayidx28, align 1, !dbg !2566
  %conv29 = zext i8 %18 to i32, !dbg !2566
  %shl30 = shl i32 %conv29, 8, !dbg !2566
  %or31 = or i32 %shl27, %shl30, !dbg !2566
  store i32 %or31, i32* %numele, align 4, !dbg !2565
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2567, metadata !DIExpression()), !dbg !2568
  %19 = load i8*, i8** %lp.addr, align 8, !dbg !2569
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 6, !dbg !2570
  store i8* %add.ptr, i8** %p, align 8, !dbg !2568
  br label %while.cond, !dbg !2571

while.cond:                                       ; preds = %if.end44, %if.end24
  %20 = load i8*, i8** %p, align 8, !dbg !2572
  %tobool32 = icmp ne i8* %20, null, !dbg !2572
  br i1 %tobool32, label %land.rhs, label %land.end, !dbg !2573

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %p, align 8, !dbg !2574
  %arrayidx33 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !2574
  %22 = load i8, i8* %arrayidx33, align 1, !dbg !2574
  %conv34 = zext i8 %22 to i32, !dbg !2574
  %cmp35 = icmp ne i32 %conv34, 255, !dbg !2575
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp35, %land.rhs ], !dbg !2576
  br i1 %23, label %while.body, label %while.end, !dbg !2571

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i8** %prev, metadata !2577, metadata !DIExpression()), !dbg !2579
  %24 = load i8*, i8** %p, align 8, !dbg !2580
  store i8* %24, i8** %prev, align 8, !dbg !2579
  %25 = load i8*, i8** %lp.addr, align 8, !dbg !2581
  %26 = load i64, i64* %bytes, align 8, !dbg !2583
  %call = call i32 @lpValidateNext(i8* %25, i8** %p, i64 %26), !dbg !2584
  %tobool37 = icmp ne i32 %call, 0, !dbg !2584
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !2585

if.then38:                                        ; preds = %while.body
  store i32 0, i32* %retval, align 4, !dbg !2586
  br label %return, !dbg !2586

if.end39:                                         ; preds = %while.body
  %27 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %entry_cb.addr, align 8, !dbg !2587
  %tobool40 = icmp ne i32 (i8*, i32, i8*)* %27, null, !dbg !2587
  br i1 %tobool40, label %land.lhs.true, label %if.end44, !dbg !2589

land.lhs.true:                                    ; preds = %if.end39
  %28 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %entry_cb.addr, align 8, !dbg !2590
  %29 = load i8*, i8** %prev, align 8, !dbg !2591
  %30 = load i32, i32* %numele, align 4, !dbg !2592
  %31 = load i8*, i8** %cb_userdata.addr, align 8, !dbg !2593
  %call41 = call i32 %28(i8* %29, i32 %30, i8* %31), !dbg !2590
  %tobool42 = icmp ne i32 %call41, 0, !dbg !2590
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !2594

if.then43:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !2595
  br label %return, !dbg !2595

if.end44:                                         ; preds = %land.lhs.true, %if.end39
  %32 = load i32, i32* %count, align 4, !dbg !2596
  %inc = add i32 %32, 1, !dbg !2596
  store i32 %inc, i32* %count, align 4, !dbg !2596
  br label %while.cond, !dbg !2571, !llvm.loop !2597

while.end:                                        ; preds = %land.end
  %33 = load i8*, i8** %p, align 8, !dbg !2599
  %34 = load i8*, i8** %lp.addr, align 8, !dbg !2601
  %35 = load i64, i64* %size.addr, align 8, !dbg !2602
  %add.ptr45 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !2603
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 -1, !dbg !2604
  %cmp47 = icmp ne i8* %33, %add.ptr46, !dbg !2605
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !2606

if.then49:                                        ; preds = %while.end
  store i32 0, i32* %retval, align 4, !dbg !2607
  br label %return, !dbg !2607

if.end50:                                         ; preds = %while.end
  %36 = load i32, i32* %numele, align 4, !dbg !2608
  %cmp51 = icmp ne i32 %36, 65535, !dbg !2610
  br i1 %cmp51, label %land.lhs.true53, label %if.end57, !dbg !2611

land.lhs.true53:                                  ; preds = %if.end50
  %37 = load i32, i32* %numele, align 4, !dbg !2612
  %38 = load i32, i32* %count, align 4, !dbg !2613
  %cmp54 = icmp ne i32 %37, %38, !dbg !2614
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !2615

if.then56:                                        ; preds = %land.lhs.true53
  store i32 0, i32* %retval, align 4, !dbg !2616
  br label %return, !dbg !2616

if.end57:                                         ; preds = %land.lhs.true53, %if.end50
  store i32 1, i32* %retval, align 4, !dbg !2617
  br label %return, !dbg !2617

return:                                           ; preds = %if.end57, %if.then56, %if.then49, %if.then43, %if.then38, %if.then23, %if.then21, %if.then15, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !2618
  ret i32 %39, !dbg !2618
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpCompare(i8* %p, i8* %s, i32 %slen) #0 !dbg !2619 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %slen.addr = alloca i32, align 4
  %value = alloca i8*, align 8
  %sz = alloca i64, align 8
  %sval = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !2622, metadata !DIExpression()), !dbg !2623
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i32 %slen, i32* %slen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slen.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.declare(metadata i8** %value, metadata !2628, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.declare(metadata i64* %sz, metadata !2630, metadata !DIExpression()), !dbg !2631
  %0 = load i8*, i8** %p.addr, align 8, !dbg !2632
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0, !dbg !2632
  %1 = load i8, i8* %arrayidx, align 1, !dbg !2632
  %conv = zext i8 %1 to i32, !dbg !2632
  %cmp = icmp eq i32 %conv, 255, !dbg !2634
  br i1 %cmp, label %if.then, label %if.end, !dbg !2635

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2636
  br label %return, !dbg !2636

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8, !dbg !2637
  %call = call i8* @lpGet(i8* %2, i64* %sz, i8* null), !dbg !2638
  store i8* %call, i8** %value, align 8, !dbg !2639
  %3 = load i8*, i8** %value, align 8, !dbg !2640
  %tobool = icmp ne i8* %3, null, !dbg !2640
  br i1 %tobool, label %if.then2, label %if.else, !dbg !2642

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %slen.addr, align 4, !dbg !2643
  %conv3 = zext i32 %4 to i64, !dbg !2643
  %5 = load i64, i64* %sz, align 8, !dbg !2645
  %cmp4 = icmp eq i64 %conv3, %5, !dbg !2646
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !2647

land.rhs:                                         ; preds = %if.then2
  %6 = load i8*, i8** %value, align 8, !dbg !2648
  %7 = load i8*, i8** %s.addr, align 8, !dbg !2649
  %8 = load i32, i32* %slen.addr, align 4, !dbg !2650
  %conv6 = zext i32 %8 to i64, !dbg !2650
  %call7 = call i32 @memcmp(i8* %6, i8* %7, i64 %conv6) #7, !dbg !2651
  %cmp8 = icmp eq i32 %call7, 0, !dbg !2652
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then2
  %9 = phi i1 [ false, %if.then2 ], [ %cmp8, %land.rhs ], !dbg !2653
  %land.ext = zext i1 %9 to i32, !dbg !2647
  store i32 %land.ext, i32* %retval, align 4, !dbg !2654
  br label %return, !dbg !2654

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %sval, metadata !2655, metadata !DIExpression()), !dbg !2657
  %10 = load i8*, i8** %s.addr, align 8, !dbg !2658
  %11 = load i32, i32* %slen.addr, align 4, !dbg !2660
  %conv10 = zext i32 %11 to i64, !dbg !2660
  %call11 = call i32 @lpStringToInt64(i8* %10, i64 %conv10, i64* %sval), !dbg !2661
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2661
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !2662

if.then13:                                        ; preds = %if.else
  %12 = load i64, i64* %sz, align 8, !dbg !2663
  %13 = load i64, i64* %sval, align 8, !dbg !2664
  %cmp14 = icmp eq i64 %12, %13, !dbg !2665
  %conv15 = zext i1 %cmp14 to i32, !dbg !2665
  store i32 %conv15, i32* %retval, align 4, !dbg !2666
  br label %return, !dbg !2666

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  store i32 0, i32* %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

return:                                           ; preds = %if.end17, %if.then13, %land.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2668
  ret i32 %14, !dbg !2668
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lpRandomPair(i8* %lp, i64 %total_count, %struct.listpackEntry* %key, %struct.listpackEntry* %val) #0 !dbg !2669 {
entry:
  %lp.addr = alloca i8*, align 8
  %total_count.addr = alloca i64, align 8
  %key.addr = alloca %struct.listpackEntry*, align 8
  %val.addr = alloca %struct.listpackEntry*, align 8
  %p = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  store i64 %total_count, i64* %total_count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %total_count.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  store %struct.listpackEntry* %key, %struct.listpackEntry** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %key.addr, metadata !2683, metadata !DIExpression()), !dbg !2684
  store %struct.listpackEntry* %val, %struct.listpackEntry** %val.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %val.addr, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2687, metadata !DIExpression()), !dbg !2688
  %0 = load i64, i64* %total_count.addr, align 8, !dbg !2689
  %tobool = icmp ne i64 %0, 0, !dbg !2689
  %lnot = xor i1 %tobool, true, !dbg !2689
  %lnot1 = xor i1 %lnot, true, !dbg !2689
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2689
  %conv = sext i32 %lnot.ext to i64, !dbg !2689
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2689
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2689

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2689

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1372), !dbg !2689
  unreachable, !dbg !2689

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2689

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata i32* %r, metadata !2690, metadata !DIExpression()), !dbg !2691
  %call = call i32 @rand() #6, !dbg !2692
  %conv3 = sext i32 %call to i64, !dbg !2692
  %1 = load i64, i64* %total_count.addr, align 8, !dbg !2693
  %rem = urem i64 %conv3, %1, !dbg !2694
  %mul = mul i64 %rem, 2, !dbg !2695
  %conv4 = trunc i64 %mul to i32, !dbg !2696
  store i32 %conv4, i32* %r, align 4, !dbg !2691
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !2697
  %3 = load i32, i32* %r, align 4, !dbg !2697
  %conv5 = sext i32 %3 to i64, !dbg !2697
  %call6 = call i8* @lpSeek(i8* %2, i64 %conv5), !dbg !2697
  store i8* %call6, i8** %p, align 8, !dbg !2697
  %tobool7 = icmp ne i8* %call6, null, !dbg !2697
  %lnot8 = xor i1 %tobool7, true, !dbg !2697
  %lnot10 = xor i1 %lnot8, true, !dbg !2697
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !2697
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !2697
  %tobool13 = icmp ne i64 %conv12, 0, !dbg !2697
  br i1 %tobool13, label %cond.true14, label %cond.false15, !dbg !2697

cond.true14:                                      ; preds = %cond.end
  br label %cond.end17, !dbg !2697

cond.false15:                                     ; preds = %cond.end
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1376), !dbg !2697
  unreachable, !dbg !2697

unreachable.cont16:                               ; No predecessors!
  br label %cond.end17, !dbg !2697

cond.end17:                                       ; preds = %unreachable.cont16, %cond.true14
  %4 = load i8*, i8** %p, align 8, !dbg !2698
  %5 = load %struct.listpackEntry*, %struct.listpackEntry** %key.addr, align 8, !dbg !2699
  %slen = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %5, i32 0, i32 1, !dbg !2700
  %6 = load %struct.listpackEntry*, %struct.listpackEntry** %key.addr, align 8, !dbg !2701
  %lval = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %6, i32 0, i32 2, !dbg !2702
  %call18 = call i8* @lpGetValue(i8* %4, i32* %slen, i64* %lval), !dbg !2703
  %7 = load %struct.listpackEntry*, %struct.listpackEntry** %key.addr, align 8, !dbg !2704
  %sval = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %7, i32 0, i32 0, !dbg !2705
  store i8* %call18, i8** %sval, align 8, !dbg !2706
  %8 = load %struct.listpackEntry*, %struct.listpackEntry** %val.addr, align 8, !dbg !2707
  %tobool19 = icmp ne %struct.listpackEntry* %8, null, !dbg !2707
  br i1 %tobool19, label %if.end, label %if.then, !dbg !2709

if.then:                                          ; preds = %cond.end17
  br label %return, !dbg !2710

if.end:                                           ; preds = %cond.end17
  %9 = load i8*, i8** %lp.addr, align 8, !dbg !2711
  %10 = load i8*, i8** %p, align 8, !dbg !2711
  %call20 = call i8* @lpNext(i8* %9, i8* %10), !dbg !2711
  store i8* %call20, i8** %p, align 8, !dbg !2711
  %tobool21 = icmp ne i8* %call20, null, !dbg !2711
  %lnot22 = xor i1 %tobool21, true, !dbg !2711
  %lnot24 = xor i1 %lnot22, true, !dbg !2711
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2711
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2711
  %tobool27 = icmp ne i64 %conv26, 0, !dbg !2711
  br i1 %tobool27, label %cond.true28, label %cond.false29, !dbg !2711

cond.true28:                                      ; preds = %if.end
  br label %cond.end31, !dbg !2711

cond.false29:                                     ; preds = %if.end
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1381), !dbg !2711
  unreachable, !dbg !2711

unreachable.cont30:                               ; No predecessors!
  br label %cond.end31, !dbg !2711

cond.end31:                                       ; preds = %unreachable.cont30, %cond.true28
  %11 = load i8*, i8** %p, align 8, !dbg !2712
  %12 = load %struct.listpackEntry*, %struct.listpackEntry** %val.addr, align 8, !dbg !2713
  %slen32 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %12, i32 0, i32 1, !dbg !2714
  %13 = load %struct.listpackEntry*, %struct.listpackEntry** %val.addr, align 8, !dbg !2715
  %lval33 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %13, i32 0, i32 2, !dbg !2716
  %call34 = call i8* @lpGetValue(i8* %11, i32* %slen32, i64* %lval33), !dbg !2717
  %14 = load %struct.listpackEntry*, %struct.listpackEntry** %val.addr, align 8, !dbg !2718
  %sval35 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %14, i32 0, i32 0, !dbg !2719
  store i8* %call34, i8** %sval35, align 8, !dbg !2720
  br label %return, !dbg !2721

return:                                           ; preds = %cond.end31, %if.then
  ret void, !dbg !2721
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @lpRandomPairs(i8* %lp, i32 %count, %struct.listpackEntry* %keys, %struct.listpackEntry* %vals) #0 !dbg !2722 {
entry:
  %lp.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %keys.addr = alloca %struct.listpackEntry*, align 8
  %vals.addr = alloca %struct.listpackEntry*, align 8
  %p = alloca i8*, align 8
  %key = alloca i8*, align 8
  %value = alloca i8*, align 8
  %klen = alloca i32, align 4
  %vlen = alloca i32, align 4
  %klval = alloca i64, align 8
  %vlval = alloca i64, align 8
  %picks = alloca %struct.rand_pick*, align 8
  %total_size = alloca i32, align 4
  %i = alloca i32, align 4
  %lpindex = alloca i32, align 4
  %pickindex = alloca i32, align 4
  %storeorder = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !2727, metadata !DIExpression()), !dbg !2728
  store %struct.listpackEntry* %keys, %struct.listpackEntry** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %keys.addr, metadata !2729, metadata !DIExpression()), !dbg !2730
  store %struct.listpackEntry* %vals, %struct.listpackEntry** %vals.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %vals.addr, metadata !2731, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.declare(metadata i8** %key, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.declare(metadata i8** %value, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.declare(metadata i32* %klen, metadata !2739, metadata !DIExpression()), !dbg !2740
  store i32 0, i32* %klen, align 4, !dbg !2740
  call void @llvm.dbg.declare(metadata i32* %vlen, metadata !2741, metadata !DIExpression()), !dbg !2742
  store i32 0, i32* %vlen, align 4, !dbg !2742
  call void @llvm.dbg.declare(metadata i64* %klval, metadata !2743, metadata !DIExpression()), !dbg !2744
  store i64 0, i64* %klval, align 8, !dbg !2744
  call void @llvm.dbg.declare(metadata i64* %vlval, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 0, i64* %vlval, align 8, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct.rand_pick** %picks, metadata !2747, metadata !DIExpression()), !dbg !2754
  %0 = load i32, i32* %count.addr, align 4, !dbg !2755
  %conv = zext i32 %0 to i64, !dbg !2755
  %mul = mul i64 8, %conv, !dbg !2756
  %call = call i8* @zmalloc(i64 %mul), !dbg !2757
  %1 = bitcast i8* %call to %struct.rand_pick*, !dbg !2757
  store %struct.rand_pick* %1, %struct.rand_pick** %picks, align 8, !dbg !2754
  call void @llvm.dbg.declare(metadata i32* %total_size, metadata !2758, metadata !DIExpression()), !dbg !2759
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !2760
  %call1 = call i64 @lpLength(i8* %2), !dbg !2761
  %div = udiv i64 %call1, 2, !dbg !2762
  %conv2 = trunc i64 %div to i32, !dbg !2761
  store i32 %conv2, i32* %total_size, align 4, !dbg !2759
  %3 = load i32, i32* %total_size, align 4, !dbg !2763
  %tobool = icmp ne i32 %3, 0, !dbg !2763
  %lnot = xor i1 %tobool, true, !dbg !2763
  %lnot3 = xor i1 %lnot, true, !dbg !2763
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2763
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2763
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2763
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !2763

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2763

cond.false:                                       ; preds = %entry
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1403), !dbg !2763
  unreachable, !dbg !2763

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2763

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2764, metadata !DIExpression()), !dbg !2766
  store i32 0, i32* %i, align 4, !dbg !2766
  br label %for.cond, !dbg !2767

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, i32* %i, align 4, !dbg !2768
  %5 = load i32, i32* %count.addr, align 4, !dbg !2770
  %cmp = icmp ult i32 %4, %5, !dbg !2771
  br i1 %cmp, label %for.body, label %for.end, !dbg !2772

for.body:                                         ; preds = %for.cond
  %call7 = call i32 @rand() #6, !dbg !2773
  %6 = load i32, i32* %total_size, align 4, !dbg !2775
  %rem = urem i32 %call7, %6, !dbg !2776
  %mul8 = mul i32 %rem, 2, !dbg !2777
  %7 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2778
  %8 = load i32, i32* %i, align 4, !dbg !2779
  %idxprom = zext i32 %8 to i64, !dbg !2778
  %arrayidx = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %7, i64 %idxprom, !dbg !2778
  %index = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %arrayidx, i32 0, i32 0, !dbg !2780
  store i32 %mul8, i32* %index, align 4, !dbg !2781
  %9 = load i32, i32* %i, align 4, !dbg !2782
  %10 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2783
  %11 = load i32, i32* %i, align 4, !dbg !2784
  %idxprom9 = zext i32 %11 to i64, !dbg !2783
  %arrayidx10 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %10, i64 %idxprom9, !dbg !2783
  %order = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %arrayidx10, i32 0, i32 1, !dbg !2785
  store i32 %9, i32* %order, align 4, !dbg !2786
  br label %for.inc, !dbg !2787

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !2788
  %inc = add i32 %12, 1, !dbg !2788
  store i32 %inc, i32* %i, align 4, !dbg !2788
  br label %for.cond, !dbg !2789, !llvm.loop !2790

for.end:                                          ; preds = %for.cond
  %13 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2792
  %14 = bitcast %struct.rand_pick* %13 to i8*, !dbg !2792
  %15 = load i32, i32* %count.addr, align 4, !dbg !2793
  %conv11 = zext i32 %15 to i64, !dbg !2793
  call void @qsort(i8* %14, i64 %conv11, i64 8, i32 (i8*, i8*)* @uintCompare), !dbg !2794
  call void @llvm.dbg.declare(metadata i32* %lpindex, metadata !2795, metadata !DIExpression()), !dbg !2796
  %16 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2797
  %arrayidx12 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %16, i64 0, !dbg !2797
  %index13 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %arrayidx12, i32 0, i32 0, !dbg !2798
  %17 = load i32, i32* %index13, align 4, !dbg !2798
  store i32 %17, i32* %lpindex, align 4, !dbg !2796
  call void @llvm.dbg.declare(metadata i32* %pickindex, metadata !2799, metadata !DIExpression()), !dbg !2800
  store i32 0, i32* %pickindex, align 4, !dbg !2800
  %18 = load i8*, i8** %lp.addr, align 8, !dbg !2801
  %19 = load i32, i32* %lpindex, align 4, !dbg !2802
  %conv14 = zext i32 %19 to i64, !dbg !2802
  %call15 = call i8* @lpSeek(i8* %18, i64 %conv14), !dbg !2803
  store i8* %call15, i8** %p, align 8, !dbg !2804
  br label %while.cond, !dbg !2805

while.cond:                                       ; preds = %while.end, %for.end
  %20 = load i8*, i8** %p, align 8, !dbg !2806
  %tobool16 = icmp ne i8* %20, null, !dbg !2806
  br i1 %tobool16, label %land.rhs, label %land.end, !dbg !2807

land.rhs:                                         ; preds = %while.cond
  %21 = load i32, i32* %pickindex, align 4, !dbg !2808
  %22 = load i32, i32* %count.addr, align 4, !dbg !2809
  %cmp17 = icmp ult i32 %21, %22, !dbg !2810
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ], !dbg !2811
  br i1 %23, label %while.body, label %while.end54, !dbg !2805

while.body:                                       ; preds = %land.end
  %24 = load i8*, i8** %p, align 8, !dbg !2812
  %call19 = call i8* @lpGetValue(i8* %24, i32* %klen, i64* %klval), !dbg !2814
  store i8* %call19, i8** %key, align 8, !dbg !2815
  %25 = load i8*, i8** %lp.addr, align 8, !dbg !2816
  %26 = load i8*, i8** %p, align 8, !dbg !2816
  %call20 = call i8* @lpNext(i8* %25, i8* %26), !dbg !2816
  store i8* %call20, i8** %p, align 8, !dbg !2816
  %tobool21 = icmp ne i8* %call20, null, !dbg !2816
  %lnot22 = xor i1 %tobool21, true, !dbg !2816
  %lnot24 = xor i1 %lnot22, true, !dbg !2816
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !2816
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !2816
  %tobool27 = icmp ne i64 %conv26, 0, !dbg !2816
  br i1 %tobool27, label %cond.true28, label %cond.false29, !dbg !2816

cond.true28:                                      ; preds = %while.body
  br label %cond.end31, !dbg !2816

cond.false29:                                     ; preds = %while.body
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1420), !dbg !2816
  unreachable, !dbg !2816

unreachable.cont30:                               ; No predecessors!
  br label %cond.end31, !dbg !2816

cond.end31:                                       ; preds = %unreachable.cont30, %cond.true28
  %27 = load i8*, i8** %p, align 8, !dbg !2817
  %call32 = call i8* @lpGetValue(i8* %27, i32* %vlen, i64* %vlval), !dbg !2818
  store i8* %call32, i8** %value, align 8, !dbg !2819
  br label %while.cond33, !dbg !2820

while.cond33:                                     ; preds = %if.end, %cond.end31
  %28 = load i32, i32* %pickindex, align 4, !dbg !2821
  %29 = load i32, i32* %count.addr, align 4, !dbg !2822
  %cmp34 = icmp ult i32 %28, %29, !dbg !2823
  br i1 %cmp34, label %land.rhs36, label %land.end42, !dbg !2824

land.rhs36:                                       ; preds = %while.cond33
  %30 = load i32, i32* %lpindex, align 4, !dbg !2825
  %31 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2826
  %32 = load i32, i32* %pickindex, align 4, !dbg !2827
  %idxprom37 = zext i32 %32 to i64, !dbg !2826
  %arrayidx38 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %31, i64 %idxprom37, !dbg !2826
  %index39 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %arrayidx38, i32 0, i32 0, !dbg !2828
  %33 = load i32, i32* %index39, align 4, !dbg !2828
  %cmp40 = icmp eq i32 %30, %33, !dbg !2829
  br label %land.end42

land.end42:                                       ; preds = %land.rhs36, %while.cond33
  %34 = phi i1 [ false, %while.cond33 ], [ %cmp40, %land.rhs36 ], !dbg !2830
  br i1 %34, label %while.body43, label %while.end, !dbg !2820

while.body43:                                     ; preds = %land.end42
  call void @llvm.dbg.declare(metadata i32* %storeorder, metadata !2831, metadata !DIExpression()), !dbg !2833
  %35 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2834
  %36 = load i32, i32* %pickindex, align 4, !dbg !2835
  %idxprom44 = zext i32 %36 to i64, !dbg !2834
  %arrayidx45 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %35, i64 %idxprom44, !dbg !2834
  %order46 = getelementptr inbounds %struct.rand_pick, %struct.rand_pick* %arrayidx45, i32 0, i32 1, !dbg !2836
  %37 = load i32, i32* %order46, align 4, !dbg !2836
  store i32 %37, i32* %storeorder, align 4, !dbg !2833
  %38 = load i8*, i8** %key, align 8, !dbg !2837
  %39 = load i32, i32* %klen, align 4, !dbg !2838
  %40 = load i64, i64* %klval, align 8, !dbg !2839
  %41 = load %struct.listpackEntry*, %struct.listpackEntry** %keys.addr, align 8, !dbg !2840
  %42 = load i32, i32* %storeorder, align 4, !dbg !2841
  %idxprom47 = sext i32 %42 to i64, !dbg !2840
  %arrayidx48 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %41, i64 %idxprom47, !dbg !2840
  call void @lpSaveValue(i8* %38, i32 %39, i64 %40, %struct.listpackEntry* %arrayidx48), !dbg !2842
  %43 = load %struct.listpackEntry*, %struct.listpackEntry** %vals.addr, align 8, !dbg !2843
  %tobool49 = icmp ne %struct.listpackEntry* %43, null, !dbg !2843
  br i1 %tobool49, label %if.then, label %if.end, !dbg !2845

if.then:                                          ; preds = %while.body43
  %44 = load i8*, i8** %value, align 8, !dbg !2846
  %45 = load i32, i32* %vlen, align 4, !dbg !2847
  %46 = load i64, i64* %vlval, align 8, !dbg !2848
  %47 = load %struct.listpackEntry*, %struct.listpackEntry** %vals.addr, align 8, !dbg !2849
  %48 = load i32, i32* %storeorder, align 4, !dbg !2850
  %idxprom50 = sext i32 %48 to i64, !dbg !2849
  %arrayidx51 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %47, i64 %idxprom50, !dbg !2849
  call void @lpSaveValue(i8* %44, i32 %45, i64 %46, %struct.listpackEntry* %arrayidx51), !dbg !2851
  br label %if.end, !dbg !2851

if.end:                                           ; preds = %if.then, %while.body43
  %49 = load i32, i32* %pickindex, align 4, !dbg !2852
  %inc52 = add i32 %49, 1, !dbg !2852
  store i32 %inc52, i32* %pickindex, align 4, !dbg !2852
  br label %while.cond33, !dbg !2820, !llvm.loop !2853

while.end:                                        ; preds = %land.end42
  %50 = load i32, i32* %lpindex, align 4, !dbg !2855
  %add = add i32 %50, 2, !dbg !2855
  store i32 %add, i32* %lpindex, align 4, !dbg !2855
  %51 = load i8*, i8** %lp.addr, align 8, !dbg !2856
  %52 = load i8*, i8** %p, align 8, !dbg !2857
  %call53 = call i8* @lpNext(i8* %51, i8* %52), !dbg !2858
  store i8* %call53, i8** %p, align 8, !dbg !2859
  br label %while.cond, !dbg !2805, !llvm.loop !2860

while.end54:                                      ; preds = %land.end
  %53 = load %struct.rand_pick*, %struct.rand_pick** %picks, align 8, !dbg !2862
  %54 = bitcast %struct.rand_pick* %53 to i8*, !dbg !2862
  call void @zfree(i8* %54), !dbg !2863
  ret void, !dbg !2864
}

declare dso_local i8* @zmalloc(i64) #2

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @uintCompare(i8* %a, i8* %b) #0 !dbg !2865 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %a.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i8* %b, i8** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %b.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load i8*, i8** %a.addr, align 8, !dbg !2874
  %1 = bitcast i8* %0 to i32*, !dbg !2875
  %2 = load i32, i32* %1, align 4, !dbg !2876
  %3 = load i8*, i8** %b.addr, align 8, !dbg !2877
  %4 = bitcast i8* %3 to i32*, !dbg !2878
  %5 = load i32, i32* %4, align 4, !dbg !2879
  %sub = sub i32 %2, %5, !dbg !2880
  ret i32 %sub, !dbg !2881
}

; Function Attrs: noinline nounwind uwtable
define internal void @lpSaveValue(i8* %val, i32 %len, i64 %lval, %struct.listpackEntry* %dest) #0 !dbg !2882 {
entry:
  %val.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %lval.addr = alloca i64, align 8
  %dest.addr = alloca %struct.listpackEntry*, align 8
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  store i64 %lval, i64* %lval.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %lval.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  store %struct.listpackEntry* %dest, %struct.listpackEntry** %dest.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %dest.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  %0 = load i8*, i8** %val.addr, align 8, !dbg !2893
  %1 = load %struct.listpackEntry*, %struct.listpackEntry** %dest.addr, align 8, !dbg !2894
  %sval = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %1, i32 0, i32 0, !dbg !2895
  store i8* %0, i8** %sval, align 8, !dbg !2896
  %2 = load i32, i32* %len.addr, align 4, !dbg !2897
  %3 = load %struct.listpackEntry*, %struct.listpackEntry** %dest.addr, align 8, !dbg !2898
  %slen = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %3, i32 0, i32 1, !dbg !2899
  store i32 %2, i32* %slen, align 8, !dbg !2900
  %4 = load i64, i64* %lval.addr, align 8, !dbg !2901
  %5 = load %struct.listpackEntry*, %struct.listpackEntry** %dest.addr, align 8, !dbg !2902
  %lval1 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %5, i32 0, i32 2, !dbg !2903
  store i64 %4, i64* %lval1, align 8, !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lpRandomPairsUnique(i8* %lp, i32 %count, %struct.listpackEntry* %keys, %struct.listpackEntry* %vals) #0 !dbg !2906 {
entry:
  %lp.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %keys.addr = alloca %struct.listpackEntry*, align 8
  %vals.addr = alloca %struct.listpackEntry*, align 8
  %p = alloca i8*, align 8
  %key = alloca i8*, align 8
  %klen = alloca i32, align 4
  %klval = alloca i64, align 8
  %total_size = alloca i32, align 4
  %index = alloca i32, align 4
  %picked = alloca i32, align 4
  %remaining = alloca i32, align 4
  %randomDouble = alloca double, align 8
  %threshold = alloca double, align 8
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !2911, metadata !DIExpression()), !dbg !2912
  store %struct.listpackEntry* %keys, %struct.listpackEntry** %keys.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %keys.addr, metadata !2913, metadata !DIExpression()), !dbg !2914
  store %struct.listpackEntry* %vals, %struct.listpackEntry** %vals.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.listpackEntry** %vals.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i8** %p, metadata !2917, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.declare(metadata i8** %key, metadata !2919, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.declare(metadata i32* %klen, metadata !2921, metadata !DIExpression()), !dbg !2922
  store i32 0, i32* %klen, align 4, !dbg !2922
  call void @llvm.dbg.declare(metadata i64* %klval, metadata !2923, metadata !DIExpression()), !dbg !2924
  store i64 0, i64* %klval, align 8, !dbg !2924
  call void @llvm.dbg.declare(metadata i32* %total_size, metadata !2925, metadata !DIExpression()), !dbg !2926
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !2927
  %call = call i64 @lpLength(i8* %0), !dbg !2928
  %div = udiv i64 %call, 2, !dbg !2929
  %conv = trunc i64 %div to i32, !dbg !2928
  store i32 %conv, i32* %total_size, align 4, !dbg !2926
  call void @llvm.dbg.declare(metadata i32* %index, metadata !2930, metadata !DIExpression()), !dbg !2931
  store i32 0, i32* %index, align 4, !dbg !2931
  %1 = load i32, i32* %count.addr, align 4, !dbg !2932
  %2 = load i32, i32* %total_size, align 4, !dbg !2934
  %cmp = icmp ugt i32 %1, %2, !dbg !2935
  br i1 %cmp, label %if.then, label %if.end, !dbg !2936

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %total_size, align 4, !dbg !2937
  store i32 %3, i32* %count.addr, align 4, !dbg !2938
  br label %if.end, !dbg !2939

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %lp.addr, align 8, !dbg !2940
  %call2 = call i8* @lpFirst(i8* %4), !dbg !2941
  store i8* %call2, i8** %p, align 8, !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %picked, metadata !2943, metadata !DIExpression()), !dbg !2944
  store i32 0, i32* %picked, align 4, !dbg !2944
  call void @llvm.dbg.declare(metadata i32* %remaining, metadata !2945, metadata !DIExpression()), !dbg !2946
  %5 = load i32, i32* %count.addr, align 4, !dbg !2947
  store i32 %5, i32* %remaining, align 4, !dbg !2946
  br label %while.cond, !dbg !2948

while.cond:                                       ; preds = %if.end38, %if.end
  %6 = load i32, i32* %picked, align 4, !dbg !2949
  %7 = load i32, i32* %count.addr, align 4, !dbg !2950
  %cmp3 = icmp ult i32 %6, %7, !dbg !2951
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2952

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8, !dbg !2953
  %tobool = icmp ne i8* %8, null, !dbg !2952
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !2954
  br i1 %9, label %while.body, label %while.end, !dbg !2948

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata double* %randomDouble, metadata !2955, metadata !DIExpression()), !dbg !2957
  %call5 = call i32 @rand() #6, !dbg !2958
  %conv6 = sitofp i32 %call5 to double, !dbg !2959
  %div7 = fdiv double %conv6, 0x41DFFFFFFFC00000, !dbg !2960
  store double %div7, double* %randomDouble, align 8, !dbg !2957
  call void @llvm.dbg.declare(metadata double* %threshold, metadata !2961, metadata !DIExpression()), !dbg !2962
  %10 = load i32, i32* %remaining, align 4, !dbg !2963
  %conv8 = uitofp i32 %10 to double, !dbg !2964
  %11 = load i32, i32* %total_size, align 4, !dbg !2965
  %12 = load i32, i32* %index, align 4, !dbg !2966
  %sub = sub i32 %11, %12, !dbg !2967
  %conv9 = uitofp i32 %sub to double, !dbg !2968
  %div10 = fdiv double %conv8, %conv9, !dbg !2969
  store double %div10, double* %threshold, align 8, !dbg !2962
  %13 = load double, double* %randomDouble, align 8, !dbg !2970
  %14 = load double, double* %threshold, align 8, !dbg !2972
  %cmp11 = fcmp ole double %13, %14, !dbg !2973
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !2974

if.then13:                                        ; preds = %while.body
  %15 = load i8*, i8** %p, align 8, !dbg !2975
  %call14 = call i8* @lpGetValue(i8* %15, i32* %klen, i64* %klval), !dbg !2977
  store i8* %call14, i8** %key, align 8, !dbg !2978
  %16 = load i8*, i8** %key, align 8, !dbg !2979
  %17 = load i32, i32* %klen, align 4, !dbg !2980
  %18 = load i64, i64* %klval, align 8, !dbg !2981
  %19 = load %struct.listpackEntry*, %struct.listpackEntry** %keys.addr, align 8, !dbg !2982
  %20 = load i32, i32* %picked, align 4, !dbg !2983
  %idxprom = zext i32 %20 to i64, !dbg !2982
  %arrayidx = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %19, i64 %idxprom, !dbg !2982
  call void @lpSaveValue(i8* %16, i32 %17, i64 %18, %struct.listpackEntry* %arrayidx), !dbg !2984
  %21 = load i8*, i8** %lp.addr, align 8, !dbg !2985
  %22 = load i8*, i8** %p, align 8, !dbg !2985
  %call15 = call i8* @lpNext(i8* %21, i8* %22), !dbg !2985
  store i8* %call15, i8** %p, align 8, !dbg !2985
  %tobool16 = icmp ne i8* %call15, null, !dbg !2985
  %lnot = xor i1 %tobool16, true, !dbg !2985
  %lnot17 = xor i1 %lnot, true, !dbg !2985
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !2985
  %conv18 = sext i32 %lnot.ext to i64, !dbg !2985
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !2985
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !2985

cond.true:                                        ; preds = %if.then13
  br label %cond.end, !dbg !2985

cond.false:                                       ; preds = %if.then13
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1463), !dbg !2985
  unreachable, !dbg !2985

unreachable.cont:                                 ; No predecessors!
  br label %cond.end, !dbg !2985

cond.end:                                         ; preds = %unreachable.cont, %cond.true
  %23 = load %struct.listpackEntry*, %struct.listpackEntry** %vals.addr, align 8, !dbg !2986
  %tobool20 = icmp ne %struct.listpackEntry* %23, null, !dbg !2986
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !2988

if.then21:                                        ; preds = %cond.end
  %24 = load i8*, i8** %p, align 8, !dbg !2989
  %call22 = call i8* @lpGetValue(i8* %24, i32* %klen, i64* %klval), !dbg !2991
  store i8* %call22, i8** %key, align 8, !dbg !2992
  %25 = load i8*, i8** %key, align 8, !dbg !2993
  %26 = load i32, i32* %klen, align 4, !dbg !2994
  %27 = load i64, i64* %klval, align 8, !dbg !2995
  %28 = load %struct.listpackEntry*, %struct.listpackEntry** %vals.addr, align 8, !dbg !2996
  %29 = load i32, i32* %picked, align 4, !dbg !2997
  %idxprom23 = zext i32 %29 to i64, !dbg !2996
  %arrayidx24 = getelementptr inbounds %struct.listpackEntry, %struct.listpackEntry* %28, i64 %idxprom23, !dbg !2996
  call void @lpSaveValue(i8* %25, i32 %26, i64 %27, %struct.listpackEntry* %arrayidx24), !dbg !2998
  br label %if.end25, !dbg !2999

if.end25:                                         ; preds = %if.then21, %cond.end
  %30 = load i32, i32* %remaining, align 4, !dbg !3000
  %dec = add i32 %30, -1, !dbg !3000
  store i32 %dec, i32* %remaining, align 4, !dbg !3000
  %31 = load i32, i32* %picked, align 4, !dbg !3001
  %inc = add i32 %31, 1, !dbg !3001
  store i32 %inc, i32* %picked, align 4, !dbg !3001
  br label %if.end38, !dbg !3002

if.else:                                          ; preds = %while.body
  %32 = load i8*, i8** %lp.addr, align 8, !dbg !3003
  %33 = load i8*, i8** %p, align 8, !dbg !3003
  %call26 = call i8* @lpNext(i8* %32, i8* %33), !dbg !3003
  store i8* %call26, i8** %p, align 8, !dbg !3003
  %tobool27 = icmp ne i8* %call26, null, !dbg !3003
  %lnot28 = xor i1 %tobool27, true, !dbg !3003
  %lnot30 = xor i1 %lnot28, true, !dbg !3003
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !3003
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !3003
  %tobool33 = icmp ne i64 %conv32, 0, !dbg !3003
  br i1 %tobool33, label %cond.true34, label %cond.false35, !dbg !3003

cond.true34:                                      ; preds = %if.else
  br label %cond.end37, !dbg !3003

cond.false35:                                     ; preds = %if.else
  call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 1471), !dbg !3003
  unreachable, !dbg !3003

unreachable.cont36:                               ; No predecessors!
  br label %cond.end37, !dbg !3003

cond.end37:                                       ; preds = %unreachable.cont36, %cond.true34
  br label %if.end38

if.end38:                                         ; preds = %cond.end37, %if.end25
  %34 = load i8*, i8** %lp.addr, align 8, !dbg !3005
  %35 = load i8*, i8** %p, align 8, !dbg !3006
  %call39 = call i8* @lpNext(i8* %34, i8* %35), !dbg !3007
  store i8* %call39, i8** %p, align 8, !dbg !3008
  %36 = load i32, i32* %index, align 4, !dbg !3009
  %inc40 = add i32 %36, 1, !dbg !3009
  store i32 %inc40, i32* %index, align 4, !dbg !3009
  br label %while.cond, !dbg !2948, !llvm.loop !3010

while.end:                                        ; preds = %land.end
  %37 = load i32, i32* %picked, align 4, !dbg !3012
  ret i32 %37, !dbg !3013
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lpRepr(i8* %lp) #0 !dbg !3014 {
entry:
  %lp.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %vstr = alloca i8*, align 8
  %vlen = alloca i64, align 8
  %intbuf = alloca [21 x i8], align 16
  %index = alloca i32, align 4
  %encoded_size_bytes = alloca i32, align 4
  %encoded_size = alloca i32, align 4
  %back_len = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %lp, i8** %lp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %lp.addr, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.declare(metadata i8** %p, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.declare(metadata i8** %vstr, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.declare(metadata i64* %vlen, metadata !3021, metadata !DIExpression()), !dbg !3022
  call void @llvm.dbg.declare(metadata [21 x i8]* %intbuf, metadata !3023, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %index, metadata !3028, metadata !DIExpression()), !dbg !3029
  store i32 0, i32* %index, align 4, !dbg !3029
  %0 = load i8*, i8** %lp.addr, align 8, !dbg !3030
  %call = call i64 @lpBytes(i8* %0), !dbg !3031
  %1 = load i8*, i8** %lp.addr, align 8, !dbg !3032
  %call1 = call i64 @lpLength(i8* %1), !dbg !3033
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i64 %call, i64 %call1), !dbg !3034
  %2 = load i8*, i8** %lp.addr, align 8, !dbg !3035
  %call3 = call i8* @lpFirst(i8* %2), !dbg !3036
  store i8* %call3, i8** %p, align 8, !dbg !3037
  br label %while.cond, !dbg !3038

while.cond:                                       ; preds = %if.end31, %entry
  %3 = load i8*, i8** %p, align 8, !dbg !3039
  %tobool = icmp ne i8* %3, null, !dbg !3038
  br i1 %tobool, label %while.body, label %while.end, !dbg !3038

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %encoded_size_bytes, metadata !3040, metadata !DIExpression()), !dbg !3042
  %4 = load i8*, i8** %p, align 8, !dbg !3043
  %call4 = call i32 @lpCurrentEncodedSizeBytes(i8* %4), !dbg !3044
  store i32 %call4, i32* %encoded_size_bytes, align 4, !dbg !3042
  call void @llvm.dbg.declare(metadata i32* %encoded_size, metadata !3045, metadata !DIExpression()), !dbg !3046
  %5 = load i8*, i8** %p, align 8, !dbg !3047
  %call5 = call i32 @lpCurrentEncodedSizeUnsafe(i8* %5), !dbg !3048
  store i32 %call5, i32* %encoded_size, align 4, !dbg !3046
  call void @llvm.dbg.declare(metadata i64* %back_len, metadata !3049, metadata !DIExpression()), !dbg !3050
  %6 = load i32, i32* %encoded_size, align 4, !dbg !3051
  %conv = zext i32 %6 to i64, !dbg !3051
  %call6 = call i64 @lpEncodeBacklen(i8* null, i64 %conv), !dbg !3052
  store i64 %call6, i64* %back_len, align 8, !dbg !3050
  %7 = load i8*, i8** %p, align 8, !dbg !3053
  %8 = ptrtoint i8* %7 to i64, !dbg !3054
  %9 = load i32, i32* %index, align 4, !dbg !3055
  %10 = load i8*, i8** %p, align 8, !dbg !3056
  %11 = load i8*, i8** %lp.addr, align 8, !dbg !3057
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64, !dbg !3058
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64, !dbg !3058
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3058
  %12 = load i32, i32* %encoded_size, align 4, !dbg !3059
  %conv7 = zext i32 %12 to i64, !dbg !3059
  %13 = load i64, i64* %back_len, align 8, !dbg !3060
  %add = add i64 %conv7, %13, !dbg !3061
  %14 = load i32, i32* %encoded_size_bytes, align 4, !dbg !3062
  %15 = load i64, i64* %back_len, align 8, !dbg !3063
  %16 = load i32, i32* %encoded_size, align 4, !dbg !3064
  %17 = load i32, i32* %encoded_size_bytes, align 4, !dbg !3065
  %sub = sub i32 %16, %17, !dbg !3066
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i64 %8, i32 %9, i64 %sub.ptr.sub, i64 %add, i32 %14, i64 %15, i32 %sub), !dbg !3067
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !3068
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3069, metadata !DIExpression()), !dbg !3071
  store i32 0, i32* %i, align 4, !dbg !3071
  br label %for.cond, !dbg !3072

for.cond:                                         ; preds = %for.inc, %while.body
  %18 = load i32, i32* %i, align 4, !dbg !3073
  %conv10 = zext i32 %18 to i64, !dbg !3073
  %19 = load i32, i32* %encoded_size, align 4, !dbg !3075
  %conv11 = zext i32 %19 to i64, !dbg !3075
  %20 = load i64, i64* %back_len, align 8, !dbg !3076
  %add12 = add i64 %conv11, %20, !dbg !3077
  %cmp = icmp ult i64 %conv10, %add12, !dbg !3078
  br i1 %cmp, label %for.body, label %for.end, !dbg !3079

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %p, align 8, !dbg !3080
  %22 = load i32, i32* %i, align 4, !dbg !3082
  %idxprom = zext i32 %22 to i64, !dbg !3080
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom, !dbg !3080
  %23 = load i8, i8* %arrayidx, align 1, !dbg !3080
  %conv14 = zext i8 %23 to i32, !dbg !3080
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %conv14), !dbg !3083
  br label %for.inc, !dbg !3084

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !3085
  %inc = add i32 %24, 1, !dbg !3085
  store i32 %inc, i32* %i, align 4, !dbg !3085
  br label %for.cond, !dbg !3086, !llvm.loop !3087

for.end:                                          ; preds = %for.cond
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)), !dbg !3089
  %25 = load i8*, i8** %p, align 8, !dbg !3090
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %intbuf, i64 0, i64 0, !dbg !3091
  %call17 = call i8* @lpGet(i8* %25, i64* %vlen, i8* %arraydecay), !dbg !3092
  store i8* %call17, i8** %vstr, align 8, !dbg !3093
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)), !dbg !3094
  %26 = load i64, i64* %vlen, align 8, !dbg !3095
  %cmp19 = icmp sgt i64 %26, 40, !dbg !3097
  br i1 %cmp19, label %if.then, label %if.else, !dbg !3098

if.then:                                          ; preds = %for.end
  %27 = load i8*, i8** %vstr, align 8, !dbg !3099
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3102
  %call21 = call i64 @fwrite(i8* %27, i64 40, i64 1, %struct._IO_FILE* %28), !dbg !3103
  %cmp22 = icmp eq i64 %call21, 0, !dbg !3104
  br i1 %cmp22, label %if.then24, label %if.end, !dbg !3105

if.then24:                                        ; preds = %if.then
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)), !dbg !3106
  br label %if.end, !dbg !3106

if.end:                                           ; preds = %if.then24, %if.then
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0)), !dbg !3107
  br label %if.end31, !dbg !3108

if.else:                                          ; preds = %for.end
  %29 = load i8*, i8** %vstr, align 8, !dbg !3109
  %30 = load i64, i64* %vlen, align 8, !dbg !3112
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3113
  %call26 = call i64 @fwrite(i8* %29, i64 %30, i64 1, %struct._IO_FILE* %31), !dbg !3114
  %cmp27 = icmp eq i64 %call26, 0, !dbg !3115
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !3116

if.then29:                                        ; preds = %if.else
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)), !dbg !3117
  br label %if.end30, !dbg !3117

if.end30:                                         ; preds = %if.then29, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)), !dbg !3118
  %32 = load i32, i32* %index, align 4, !dbg !3119
  %inc33 = add nsw i32 %32, 1, !dbg !3119
  store i32 %inc33, i32* %index, align 4, !dbg !3119
  %33 = load i8*, i8** %lp.addr, align 8, !dbg !3120
  %34 = load i8*, i8** %p, align 8, !dbg !3121
  %call34 = call i8* @lpNext(i8* %33, i8* %34), !dbg !3122
  store i8* %call34, i8** %p, align 8, !dbg !3123
  br label %while.cond, !dbg !3038, !llvm.loop !3124

while.end:                                        ; preds = %while.cond
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)), !dbg !3126
  ret void, !dbg !3127
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local void @perror(i8*) #2

declare dso_local i32 @ll2string(i8*, i64, i64) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "listpack.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{!4, !9, !10, !13, !16, !12, !17, !18, !19, !20, !21, !24}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !5, line: 26, baseType: !6)
!5 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 42, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !5, line: 27, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !7, line: 45, baseType: !12)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!20 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !22, line: 27, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !7, line: 44, baseType: !16)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!31 = distinct !DISubprogram(name: "lpSafeToAdd", scope: !1, file: !1, line: 145, type: !32, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35, !37}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !12)
!38 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!39 = !DILocalVariable(name: "lp", arg: 1, scope: !31, file: !1, line: 145, type: !35)
!40 = !DILocation(line: 145, column: 32, scope: !31)
!41 = !DILocalVariable(name: "add", arg: 2, scope: !31, file: !1, line: 145, type: !37)
!42 = !DILocation(line: 145, column: 43, scope: !31)
!43 = !DILocalVariable(name: "len", scope: !31, file: !1, line: 146, type: !37)
!44 = !DILocation(line: 146, column: 12, scope: !31)
!45 = !DILocation(line: 146, column: 18, scope: !31)
!46 = !DILocation(line: 146, column: 22, scope: !31)
!47 = !DILocation(line: 147, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !31, file: !1, line: 147, column: 9)
!49 = !DILocation(line: 147, column: 15, scope: !48)
!50 = !DILocation(line: 147, column: 13, scope: !48)
!51 = !DILocation(line: 147, column: 19, scope: !48)
!52 = !DILocation(line: 147, column: 9, scope: !31)
!53 = !DILocation(line: 148, column: 9, scope: !48)
!54 = !DILocation(line: 149, column: 5, scope: !31)
!55 = !DILocation(line: 150, column: 1, scope: !31)
!56 = distinct !DISubprogram(name: "lpStringToInt64", scope: !1, file: !1, line: 176, type: !57, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{!34, !13, !12, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!60 = !DILocalVariable(name: "s", arg: 1, scope: !56, file: !1, line: 176, type: !13)
!61 = !DILocation(line: 176, column: 33, scope: !56)
!62 = !DILocalVariable(name: "slen", arg: 2, scope: !56, file: !1, line: 176, type: !12)
!63 = !DILocation(line: 176, column: 50, scope: !56)
!64 = !DILocalVariable(name: "value", arg: 3, scope: !56, file: !1, line: 176, type: !59)
!65 = !DILocation(line: 176, column: 65, scope: !56)
!66 = !DILocalVariable(name: "p", scope: !56, file: !1, line: 177, type: !13)
!67 = !DILocation(line: 177, column: 17, scope: !56)
!68 = !DILocation(line: 177, column: 21, scope: !56)
!69 = !DILocalVariable(name: "plen", scope: !56, file: !1, line: 178, type: !12)
!70 = !DILocation(line: 178, column: 19, scope: !56)
!71 = !DILocalVariable(name: "negative", scope: !56, file: !1, line: 179, type: !34)
!72 = !DILocation(line: 179, column: 9, scope: !56)
!73 = !DILocalVariable(name: "v", scope: !56, file: !1, line: 180, type: !10)
!74 = !DILocation(line: 180, column: 14, scope: !56)
!75 = !DILocation(line: 183, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !56, file: !1, line: 183, column: 9)
!77 = !DILocation(line: 183, column: 14, scope: !76)
!78 = !DILocation(line: 183, column: 19, scope: !76)
!79 = !DILocation(line: 183, column: 22, scope: !76)
!80 = !DILocation(line: 183, column: 27, scope: !76)
!81 = !DILocation(line: 183, column: 9, scope: !56)
!82 = !DILocation(line: 184, column: 9, scope: !76)
!83 = !DILocation(line: 187, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !56, file: !1, line: 187, column: 9)
!85 = !DILocation(line: 187, column: 14, scope: !84)
!86 = !DILocation(line: 187, column: 19, scope: !84)
!87 = !DILocation(line: 187, column: 22, scope: !84)
!88 = !DILocation(line: 187, column: 27, scope: !84)
!89 = !DILocation(line: 187, column: 9, scope: !56)
!90 = !DILocation(line: 188, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 188, column: 13)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 187, column: 35)
!93 = !DILocation(line: 188, column: 19, scope: !91)
!94 = !DILocation(line: 188, column: 13, scope: !92)
!95 = !DILocation(line: 188, column: 29, scope: !91)
!96 = !DILocation(line: 188, column: 35, scope: !91)
!97 = !DILocation(line: 188, column: 28, scope: !91)
!98 = !DILocation(line: 189, column: 9, scope: !92)
!99 = !DILocation(line: 192, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !56, file: !1, line: 192, column: 9)
!101 = !DILocation(line: 192, column: 14, scope: !100)
!102 = !DILocation(line: 192, column: 9, scope: !56)
!103 = !DILocation(line: 193, column: 18, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 192, column: 22)
!105 = !DILocation(line: 194, column: 10, scope: !104)
!106 = !DILocation(line: 194, column: 18, scope: !104)
!107 = !DILocation(line: 197, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 197, column: 13)
!109 = !DILocation(line: 197, column: 21, scope: !108)
!110 = !DILocation(line: 197, column: 18, scope: !108)
!111 = !DILocation(line: 197, column: 13, scope: !104)
!112 = !DILocation(line: 198, column: 13, scope: !108)
!113 = !DILocation(line: 199, column: 5, scope: !104)
!114 = !DILocation(line: 202, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !56, file: !1, line: 202, column: 9)
!116 = !DILocation(line: 202, column: 14, scope: !115)
!117 = !DILocation(line: 202, column: 21, scope: !115)
!118 = !DILocation(line: 202, column: 24, scope: !115)
!119 = !DILocation(line: 202, column: 29, scope: !115)
!120 = !DILocation(line: 202, column: 9, scope: !56)
!121 = !DILocation(line: 203, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !115, file: !1, line: 202, column: 37)
!123 = !DILocation(line: 203, column: 17, scope: !122)
!124 = !DILocation(line: 203, column: 11, scope: !122)
!125 = !DILocation(line: 204, column: 10, scope: !122)
!126 = !DILocation(line: 204, column: 18, scope: !122)
!127 = !DILocation(line: 205, column: 5, scope: !122)
!128 = !DILocation(line: 206, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !115, file: !1, line: 205, column: 12)
!130 = !DILocation(line: 209, column: 5, scope: !56)
!131 = !DILocation(line: 209, column: 12, scope: !56)
!132 = !DILocation(line: 209, column: 19, scope: !56)
!133 = !DILocation(line: 209, column: 17, scope: !56)
!134 = !DILocation(line: 209, column: 24, scope: !56)
!135 = !DILocation(line: 209, column: 27, scope: !56)
!136 = !DILocation(line: 209, column: 32, scope: !56)
!137 = !DILocation(line: 209, column: 39, scope: !56)
!138 = !DILocation(line: 209, column: 42, scope: !56)
!139 = !DILocation(line: 209, column: 47, scope: !56)
!140 = !DILocation(line: 0, scope: !56)
!141 = !DILocation(line: 210, column: 13, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 210, column: 13)
!143 = distinct !DILexicalBlock(scope: !56, file: !1, line: 209, column: 55)
!144 = !DILocation(line: 210, column: 15, scope: !142)
!145 = !DILocation(line: 210, column: 13, scope: !143)
!146 = !DILocation(line: 211, column: 13, scope: !142)
!147 = !DILocation(line: 212, column: 11, scope: !143)
!148 = !DILocation(line: 214, column: 13, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 214, column: 13)
!150 = !DILocation(line: 214, column: 32, scope: !149)
!151 = !DILocation(line: 214, column: 36, scope: !149)
!152 = !DILocation(line: 214, column: 31, scope: !149)
!153 = !DILocation(line: 214, column: 29, scope: !149)
!154 = !DILocation(line: 214, column: 15, scope: !149)
!155 = !DILocation(line: 214, column: 13, scope: !143)
!156 = !DILocation(line: 215, column: 13, scope: !149)
!157 = !DILocation(line: 216, column: 14, scope: !143)
!158 = !DILocation(line: 216, column: 18, scope: !143)
!159 = !DILocation(line: 216, column: 11, scope: !143)
!160 = !DILocation(line: 218, column: 10, scope: !143)
!161 = !DILocation(line: 218, column: 18, scope: !143)
!162 = distinct !{!162, !130, !163, !164}
!163 = !DILocation(line: 219, column: 5, scope: !56)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !DILocation(line: 222, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !56, file: !1, line: 222, column: 9)
!167 = !DILocation(line: 222, column: 16, scope: !166)
!168 = !DILocation(line: 222, column: 14, scope: !166)
!169 = !DILocation(line: 222, column: 9, scope: !56)
!170 = !DILocation(line: 223, column: 9, scope: !166)
!171 = !DILocation(line: 225, column: 9, scope: !172)
!172 = distinct !DILexicalBlock(scope: !56, file: !1, line: 225, column: 9)
!173 = !DILocation(line: 225, column: 9, scope: !56)
!174 = !DILocation(line: 226, column: 13, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 226, column: 13)
!176 = distinct !DILexicalBlock(scope: !172, file: !1, line: 225, column: 19)
!177 = !DILocation(line: 226, column: 15, scope: !175)
!178 = !DILocation(line: 226, column: 13, scope: !176)
!179 = !DILocation(line: 227, column: 13, scope: !175)
!180 = !DILocation(line: 228, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !1, line: 228, column: 13)
!182 = !DILocation(line: 228, column: 19, scope: !181)
!183 = !DILocation(line: 228, column: 13, scope: !176)
!184 = !DILocation(line: 228, column: 38, scope: !181)
!185 = !DILocation(line: 228, column: 37, scope: !181)
!186 = !DILocation(line: 228, column: 29, scope: !181)
!187 = !DILocation(line: 228, column: 35, scope: !181)
!188 = !DILocation(line: 228, column: 28, scope: !181)
!189 = !DILocation(line: 229, column: 5, scope: !176)
!190 = !DILocation(line: 230, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 230, column: 13)
!192 = distinct !DILexicalBlock(scope: !172, file: !1, line: 229, column: 12)
!193 = !DILocation(line: 230, column: 15, scope: !191)
!194 = !DILocation(line: 230, column: 13, scope: !192)
!195 = !DILocation(line: 231, column: 13, scope: !191)
!196 = !DILocation(line: 232, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !1, line: 232, column: 13)
!198 = !DILocation(line: 232, column: 19, scope: !197)
!199 = !DILocation(line: 232, column: 13, scope: !192)
!200 = !DILocation(line: 232, column: 37, scope: !197)
!201 = !DILocation(line: 232, column: 29, scope: !197)
!202 = !DILocation(line: 232, column: 35, scope: !197)
!203 = !DILocation(line: 232, column: 28, scope: !197)
!204 = !DILocation(line: 234, column: 5, scope: !56)
!205 = !DILocation(line: 235, column: 1, scope: !56)
!206 = distinct !DISubprogram(name: "lpNew", scope: !1, file: !1, line: 242, type: !207, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DISubroutineType(types: !208)
!208 = !{!35, !37}
!209 = !DILocalVariable(name: "capacity", arg: 1, scope: !206, file: !1, line: 242, type: !37)
!210 = !DILocation(line: 242, column: 29, scope: !206)
!211 = !DILocalVariable(name: "lp", scope: !206, file: !1, line: 243, type: !35)
!212 = !DILocation(line: 243, column: 20, scope: !206)
!213 = !DILocation(line: 243, column: 25, scope: !206)
!214 = !DILocation(line: 244, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !206, file: !1, line: 244, column: 9)
!216 = !DILocation(line: 244, column: 12, scope: !215)
!217 = !DILocation(line: 244, column: 9, scope: !206)
!218 = !DILocation(line: 244, column: 21, scope: !215)
!219 = !DILocation(line: 245, column: 5, scope: !206)
!220 = !DILocation(line: 245, column: 5, scope: !221)
!221 = distinct !DILexicalBlock(scope: !206, file: !1, line: 245, column: 5)
!222 = !DILocation(line: 246, column: 5, scope: !206)
!223 = !DILocation(line: 246, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !206, file: !1, line: 246, column: 5)
!225 = !DILocation(line: 247, column: 5, scope: !206)
!226 = !DILocation(line: 247, column: 21, scope: !206)
!227 = !DILocation(line: 248, column: 12, scope: !206)
!228 = !DILocation(line: 248, column: 5, scope: !206)
!229 = !DILocation(line: 249, column: 1, scope: !206)
!230 = distinct !DISubprogram(name: "lpFree", scope: !1, file: !1, line: 252, type: !231, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !35}
!233 = !DILocalVariable(name: "lp", arg: 1, scope: !230, file: !1, line: 252, type: !35)
!234 = !DILocation(line: 252, column: 28, scope: !230)
!235 = !DILocation(line: 253, column: 13, scope: !230)
!236 = !DILocation(line: 253, column: 5, scope: !230)
!237 = !DILocation(line: 254, column: 1, scope: !230)
!238 = distinct !DISubprogram(name: "lpShrinkToFit", scope: !1, file: !1, line: 257, type: !239, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!239 = !DISubroutineType(types: !240)
!240 = !{!35, !35}
!241 = !DILocalVariable(name: "lp", arg: 1, scope: !238, file: !1, line: 257, type: !35)
!242 = !DILocation(line: 257, column: 45, scope: !238)
!243 = !DILocalVariable(name: "size", scope: !238, file: !1, line: 258, type: !37)
!244 = !DILocation(line: 258, column: 12, scope: !238)
!245 = !DILocation(line: 258, column: 19, scope: !238)
!246 = !DILocation(line: 259, column: 9, scope: !247)
!247 = distinct !DILexicalBlock(scope: !238, file: !1, line: 259, column: 9)
!248 = !DILocation(line: 259, column: 16, scope: !247)
!249 = !DILocation(line: 259, column: 14, scope: !247)
!250 = !DILocation(line: 259, column: 9, scope: !238)
!251 = !DILocation(line: 260, column: 16, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !1, line: 259, column: 36)
!253 = !DILocation(line: 260, column: 9, scope: !252)
!254 = !DILocation(line: 262, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !247, file: !1, line: 261, column: 12)
!256 = !DILocation(line: 262, column: 9, scope: !255)
!257 = !DILocation(line: 264, column: 1, scope: !238)
!258 = distinct !DISubprogram(name: "lpSkip", scope: !1, file: !1, line: 464, type: !239, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!259 = !DILocalVariable(name: "p", arg: 1, scope: !258, file: !1, line: 464, type: !35)
!260 = !DILocation(line: 464, column: 38, scope: !258)
!261 = !DILocalVariable(name: "entrylen", scope: !258, file: !1, line: 465, type: !12)
!262 = !DILocation(line: 465, column: 19, scope: !258)
!263 = !DILocation(line: 465, column: 57, scope: !258)
!264 = !DILocation(line: 465, column: 30, scope: !258)
!265 = !DILocation(line: 466, column: 38, scope: !258)
!266 = !DILocation(line: 466, column: 17, scope: !258)
!267 = !DILocation(line: 466, column: 14, scope: !258)
!268 = !DILocation(line: 467, column: 10, scope: !258)
!269 = !DILocation(line: 467, column: 7, scope: !258)
!270 = !DILocation(line: 468, column: 12, scope: !258)
!271 = !DILocation(line: 468, column: 5, scope: !258)
!272 = distinct !DISubprogram(name: "lpCurrentEncodedSizeUnsafe", scope: !1, file: !1, line: 428, type: !273, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!273 = !DISubroutineType(types: !274)
!274 = !{!4, !35}
!275 = !DILocalVariable(name: "p", arg: 1, scope: !272, file: !1, line: 428, type: !35)
!276 = !DILocation(line: 428, column: 66, scope: !272)
!277 = !DILocation(line: 429, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !272, file: !1, line: 429, column: 9)
!279 = !DILocation(line: 429, column: 9, scope: !272)
!280 = !DILocation(line: 429, column: 41, scope: !278)
!281 = !DILocation(line: 430, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !272, file: !1, line: 430, column: 9)
!283 = !DILocation(line: 430, column: 9, scope: !272)
!284 = !DILocation(line: 430, column: 49, scope: !282)
!285 = !DILocation(line: 430, column: 48, scope: !282)
!286 = !DILocation(line: 430, column: 40, scope: !282)
!287 = !DILocation(line: 431, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !272, file: !1, line: 431, column: 9)
!289 = !DILocation(line: 431, column: 9, scope: !272)
!290 = !DILocation(line: 431, column: 41, scope: !288)
!291 = !DILocation(line: 432, column: 9, scope: !292)
!292 = distinct !DILexicalBlock(scope: !272, file: !1, line: 432, column: 9)
!293 = !DILocation(line: 432, column: 9, scope: !272)
!294 = !DILocation(line: 432, column: 41, scope: !292)
!295 = !DILocation(line: 433, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !272, file: !1, line: 433, column: 9)
!297 = !DILocation(line: 433, column: 9, scope: !272)
!298 = !DILocation(line: 433, column: 41, scope: !296)
!299 = !DILocation(line: 434, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !272, file: !1, line: 434, column: 9)
!301 = !DILocation(line: 434, column: 9, scope: !272)
!302 = !DILocation(line: 434, column: 41, scope: !300)
!303 = !DILocation(line: 435, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !272, file: !1, line: 435, column: 9)
!305 = !DILocation(line: 435, column: 9, scope: !272)
!306 = !DILocation(line: 435, column: 41, scope: !304)
!307 = !DILocation(line: 436, column: 9, scope: !308)
!308 = distinct !DILexicalBlock(scope: !272, file: !1, line: 436, column: 9)
!309 = !DILocation(line: 436, column: 9, scope: !272)
!310 = !DILocation(line: 436, column: 50, scope: !308)
!311 = !DILocation(line: 436, column: 49, scope: !308)
!312 = !DILocation(line: 436, column: 41, scope: !308)
!313 = !DILocation(line: 437, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !272, file: !1, line: 437, column: 9)
!315 = !DILocation(line: 437, column: 9, scope: !272)
!316 = !DILocation(line: 437, column: 50, scope: !314)
!317 = !DILocation(line: 437, column: 49, scope: !314)
!318 = !DILocation(line: 437, column: 41, scope: !314)
!319 = !DILocation(line: 438, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !272, file: !1, line: 438, column: 9)
!321 = !DILocation(line: 438, column: 14, scope: !320)
!322 = !DILocation(line: 438, column: 9, scope: !272)
!323 = !DILocation(line: 438, column: 25, scope: !320)
!324 = !DILocation(line: 439, column: 5, scope: !272)
!325 = !DILocation(line: 440, column: 1, scope: !272)
!326 = distinct !DISubprogram(name: "lpEncodeBacklen", scope: !1, file: !1, line: 347, type: !327, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!327 = !DISubroutineType(types: !328)
!328 = !{!12, !35, !10}
!329 = !DILocalVariable(name: "buf", arg: 1, scope: !326, file: !1, line: 347, type: !35)
!330 = !DILocation(line: 347, column: 60, scope: !326)
!331 = !DILocalVariable(name: "l", arg: 2, scope: !326, file: !1, line: 347, type: !10)
!332 = !DILocation(line: 347, column: 74, scope: !326)
!333 = !DILocation(line: 348, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !326, file: !1, line: 348, column: 9)
!335 = !DILocation(line: 348, column: 11, scope: !334)
!336 = !DILocation(line: 348, column: 9, scope: !326)
!337 = !DILocation(line: 349, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 349, column: 13)
!339 = distinct !DILexicalBlock(scope: !334, file: !1, line: 348, column: 19)
!340 = !DILocation(line: 349, column: 13, scope: !339)
!341 = !DILocation(line: 349, column: 27, scope: !338)
!342 = !DILocation(line: 349, column: 18, scope: !338)
!343 = !DILocation(line: 349, column: 25, scope: !338)
!344 = !DILocation(line: 350, column: 9, scope: !339)
!345 = !DILocation(line: 351, column: 16, scope: !346)
!346 = distinct !DILexicalBlock(scope: !334, file: !1, line: 351, column: 16)
!347 = !DILocation(line: 351, column: 18, scope: !346)
!348 = !DILocation(line: 351, column: 16, scope: !334)
!349 = !DILocation(line: 352, column: 13, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 352, column: 13)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 351, column: 27)
!352 = !DILocation(line: 352, column: 13, scope: !351)
!353 = !DILocation(line: 353, column: 22, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !1, line: 352, column: 18)
!355 = !DILocation(line: 353, column: 23, scope: !354)
!356 = !DILocation(line: 353, column: 13, scope: !354)
!357 = !DILocation(line: 353, column: 20, scope: !354)
!358 = !DILocation(line: 354, column: 23, scope: !354)
!359 = !DILocation(line: 354, column: 24, scope: !354)
!360 = !DILocation(line: 354, column: 29, scope: !354)
!361 = !DILocation(line: 354, column: 22, scope: !354)
!362 = !DILocation(line: 354, column: 13, scope: !354)
!363 = !DILocation(line: 354, column: 20, scope: !354)
!364 = !DILocation(line: 355, column: 9, scope: !354)
!365 = !DILocation(line: 356, column: 9, scope: !351)
!366 = !DILocation(line: 357, column: 16, scope: !367)
!367 = distinct !DILexicalBlock(scope: !346, file: !1, line: 357, column: 16)
!368 = !DILocation(line: 357, column: 18, scope: !367)
!369 = !DILocation(line: 357, column: 16, scope: !346)
!370 = !DILocation(line: 358, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 358, column: 13)
!372 = distinct !DILexicalBlock(scope: !367, file: !1, line: 357, column: 29)
!373 = !DILocation(line: 358, column: 13, scope: !372)
!374 = !DILocation(line: 359, column: 22, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 358, column: 18)
!376 = !DILocation(line: 359, column: 23, scope: !375)
!377 = !DILocation(line: 359, column: 13, scope: !375)
!378 = !DILocation(line: 359, column: 20, scope: !375)
!379 = !DILocation(line: 360, column: 24, scope: !375)
!380 = !DILocation(line: 360, column: 25, scope: !375)
!381 = !DILocation(line: 360, column: 29, scope: !375)
!382 = !DILocation(line: 360, column: 34, scope: !375)
!383 = !DILocation(line: 360, column: 22, scope: !375)
!384 = !DILocation(line: 360, column: 13, scope: !375)
!385 = !DILocation(line: 360, column: 20, scope: !375)
!386 = !DILocation(line: 361, column: 23, scope: !375)
!387 = !DILocation(line: 361, column: 24, scope: !375)
!388 = !DILocation(line: 361, column: 29, scope: !375)
!389 = !DILocation(line: 361, column: 22, scope: !375)
!390 = !DILocation(line: 361, column: 13, scope: !375)
!391 = !DILocation(line: 361, column: 20, scope: !375)
!392 = !DILocation(line: 362, column: 9, scope: !375)
!393 = !DILocation(line: 363, column: 9, scope: !372)
!394 = !DILocation(line: 364, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !367, file: !1, line: 364, column: 16)
!396 = !DILocation(line: 364, column: 18, scope: !395)
!397 = !DILocation(line: 364, column: 16, scope: !367)
!398 = !DILocation(line: 365, column: 13, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 365, column: 13)
!400 = distinct !DILexicalBlock(scope: !395, file: !1, line: 364, column: 31)
!401 = !DILocation(line: 365, column: 13, scope: !400)
!402 = !DILocation(line: 366, column: 22, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !1, line: 365, column: 18)
!404 = !DILocation(line: 366, column: 23, scope: !403)
!405 = !DILocation(line: 366, column: 13, scope: !403)
!406 = !DILocation(line: 366, column: 20, scope: !403)
!407 = !DILocation(line: 367, column: 24, scope: !403)
!408 = !DILocation(line: 367, column: 25, scope: !403)
!409 = !DILocation(line: 367, column: 30, scope: !403)
!410 = !DILocation(line: 367, column: 35, scope: !403)
!411 = !DILocation(line: 367, column: 22, scope: !403)
!412 = !DILocation(line: 367, column: 13, scope: !403)
!413 = !DILocation(line: 367, column: 20, scope: !403)
!414 = !DILocation(line: 368, column: 24, scope: !403)
!415 = !DILocation(line: 368, column: 25, scope: !403)
!416 = !DILocation(line: 368, column: 29, scope: !403)
!417 = !DILocation(line: 368, column: 34, scope: !403)
!418 = !DILocation(line: 368, column: 22, scope: !403)
!419 = !DILocation(line: 368, column: 13, scope: !403)
!420 = !DILocation(line: 368, column: 20, scope: !403)
!421 = !DILocation(line: 369, column: 23, scope: !403)
!422 = !DILocation(line: 369, column: 24, scope: !403)
!423 = !DILocation(line: 369, column: 29, scope: !403)
!424 = !DILocation(line: 369, column: 22, scope: !403)
!425 = !DILocation(line: 369, column: 13, scope: !403)
!426 = !DILocation(line: 369, column: 20, scope: !403)
!427 = !DILocation(line: 370, column: 9, scope: !403)
!428 = !DILocation(line: 371, column: 9, scope: !400)
!429 = !DILocation(line: 373, column: 13, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !1, line: 373, column: 13)
!431 = distinct !DILexicalBlock(scope: !395, file: !1, line: 372, column: 12)
!432 = !DILocation(line: 373, column: 13, scope: !431)
!433 = !DILocation(line: 374, column: 22, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !1, line: 373, column: 18)
!435 = !DILocation(line: 374, column: 23, scope: !434)
!436 = !DILocation(line: 374, column: 13, scope: !434)
!437 = !DILocation(line: 374, column: 20, scope: !434)
!438 = !DILocation(line: 375, column: 24, scope: !434)
!439 = !DILocation(line: 375, column: 25, scope: !434)
!440 = !DILocation(line: 375, column: 30, scope: !434)
!441 = !DILocation(line: 375, column: 35, scope: !434)
!442 = !DILocation(line: 375, column: 22, scope: !434)
!443 = !DILocation(line: 375, column: 13, scope: !434)
!444 = !DILocation(line: 375, column: 20, scope: !434)
!445 = !DILocation(line: 376, column: 24, scope: !434)
!446 = !DILocation(line: 376, column: 25, scope: !434)
!447 = !DILocation(line: 376, column: 30, scope: !434)
!448 = !DILocation(line: 376, column: 35, scope: !434)
!449 = !DILocation(line: 376, column: 22, scope: !434)
!450 = !DILocation(line: 376, column: 13, scope: !434)
!451 = !DILocation(line: 376, column: 20, scope: !434)
!452 = !DILocation(line: 377, column: 24, scope: !434)
!453 = !DILocation(line: 377, column: 25, scope: !434)
!454 = !DILocation(line: 377, column: 29, scope: !434)
!455 = !DILocation(line: 377, column: 34, scope: !434)
!456 = !DILocation(line: 377, column: 22, scope: !434)
!457 = !DILocation(line: 377, column: 13, scope: !434)
!458 = !DILocation(line: 377, column: 20, scope: !434)
!459 = !DILocation(line: 378, column: 23, scope: !434)
!460 = !DILocation(line: 378, column: 24, scope: !434)
!461 = !DILocation(line: 378, column: 29, scope: !434)
!462 = !DILocation(line: 378, column: 22, scope: !434)
!463 = !DILocation(line: 378, column: 13, scope: !434)
!464 = !DILocation(line: 378, column: 20, scope: !434)
!465 = !DILocation(line: 379, column: 9, scope: !434)
!466 = !DILocation(line: 380, column: 9, scope: !431)
!467 = !DILocation(line: 382, column: 1, scope: !326)
!468 = distinct !DISubprogram(name: "lpNext", scope: !1, file: !1, line: 474, type: !469, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!469 = !DISubroutineType(types: !470)
!470 = !{!35, !35, !35}
!471 = !DILocalVariable(name: "lp", arg: 1, scope: !468, file: !1, line: 474, type: !35)
!472 = !DILocation(line: 474, column: 38, scope: !468)
!473 = !DILocalVariable(name: "p", arg: 2, scope: !468, file: !1, line: 474, type: !35)
!474 = !DILocation(line: 474, column: 57, scope: !468)
!475 = !DILocation(line: 475, column: 5, scope: !468)
!476 = !DILocation(line: 476, column: 16, scope: !468)
!477 = !DILocation(line: 476, column: 9, scope: !468)
!478 = !DILocation(line: 476, column: 7, scope: !468)
!479 = !DILocation(line: 477, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !468, file: !1, line: 477, column: 9)
!481 = !DILocation(line: 477, column: 14, scope: !480)
!482 = !DILocation(line: 477, column: 9, scope: !468)
!483 = !DILocation(line: 477, column: 25, scope: !480)
!484 = !DILocation(line: 478, column: 24, scope: !468)
!485 = !DILocation(line: 478, column: 36, scope: !468)
!486 = !DILocation(line: 478, column: 28, scope: !468)
!487 = !DILocation(line: 478, column: 41, scope: !468)
!488 = !DILocation(line: 478, column: 5, scope: !468)
!489 = !DILocation(line: 479, column: 12, scope: !468)
!490 = !DILocation(line: 479, column: 5, scope: !468)
!491 = !DILocation(line: 480, column: 1, scope: !468)
!492 = distinct !DISubprogram(name: "lpAssertValidEntry", scope: !1, file: !1, line: 1275, type: !493, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !35, !37, !35}
!495 = !DILocalVariable(name: "lp", arg: 1, scope: !492, file: !1, line: 1275, type: !35)
!496 = !DILocation(line: 1275, column: 54, scope: !492)
!497 = !DILocalVariable(name: "lpbytes", arg: 2, scope: !492, file: !1, line: 1275, type: !37)
!498 = !DILocation(line: 1275, column: 65, scope: !492)
!499 = !DILocalVariable(name: "p", arg: 3, scope: !492, file: !1, line: 1275, type: !35)
!500 = !DILocation(line: 1275, column: 89, scope: !492)
!501 = !DILocation(line: 1276, column: 5, scope: !492)
!502 = !DILocation(line: 1277, column: 1, scope: !492)
!503 = distinct !DISubprogram(name: "lpBytes", scope: !1, file: !1, line: 1163, type: !504, scopeLine: 1163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!504 = !DISubroutineType(types: !505)
!505 = !{!37, !35}
!506 = !DILocalVariable(name: "lp", arg: 1, scope: !503, file: !1, line: 1163, type: !35)
!507 = !DILocation(line: 1163, column: 31, scope: !503)
!508 = !DILocation(line: 1164, column: 12, scope: !503)
!509 = !DILocation(line: 1164, column: 5, scope: !503)
!510 = distinct !DISubprogram(name: "lpPrev", scope: !1, file: !1, line: 485, type: !469, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!511 = !DILocalVariable(name: "lp", arg: 1, scope: !510, file: !1, line: 485, type: !35)
!512 = !DILocation(line: 485, column: 38, scope: !510)
!513 = !DILocalVariable(name: "p", arg: 2, scope: !510, file: !1, line: 485, type: !35)
!514 = !DILocation(line: 485, column: 57, scope: !510)
!515 = !DILocation(line: 486, column: 5, scope: !510)
!516 = !DILocation(line: 487, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !510, file: !1, line: 487, column: 9)
!518 = !DILocation(line: 487, column: 11, scope: !517)
!519 = !DILocation(line: 487, column: 10, scope: !517)
!520 = !DILocation(line: 487, column: 14, scope: !517)
!521 = !DILocation(line: 487, column: 9, scope: !510)
!522 = !DILocation(line: 487, column: 30, scope: !517)
!523 = !DILocation(line: 488, column: 6, scope: !510)
!524 = !DILocalVariable(name: "prevlen", scope: !510, file: !1, line: 489, type: !10)
!525 = !DILocation(line: 489, column: 14, scope: !510)
!526 = !DILocation(line: 489, column: 40, scope: !510)
!527 = !DILocation(line: 489, column: 24, scope: !510)
!528 = !DILocation(line: 490, column: 37, scope: !510)
!529 = !DILocation(line: 490, column: 16, scope: !510)
!530 = !DILocation(line: 490, column: 13, scope: !510)
!531 = !DILocation(line: 491, column: 10, scope: !510)
!532 = !DILocation(line: 491, column: 17, scope: !510)
!533 = !DILocation(line: 491, column: 7, scope: !510)
!534 = !DILocation(line: 492, column: 24, scope: !510)
!535 = !DILocation(line: 492, column: 36, scope: !510)
!536 = !DILocation(line: 492, column: 28, scope: !510)
!537 = !DILocation(line: 492, column: 41, scope: !510)
!538 = !DILocation(line: 492, column: 5, scope: !510)
!539 = !DILocation(line: 493, column: 12, scope: !510)
!540 = !DILocation(line: 493, column: 5, scope: !510)
!541 = !DILocation(line: 494, column: 1, scope: !510)
!542 = distinct !DISubprogram(name: "lpDecodeBacklen", scope: !1, file: !1, line: 386, type: !543, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!543 = !DISubroutineType(types: !544)
!544 = !{!10, !35}
!545 = !DILocalVariable(name: "p", arg: 1, scope: !542, file: !1, line: 386, type: !35)
!546 = !DILocation(line: 386, column: 55, scope: !542)
!547 = !DILocalVariable(name: "val", scope: !542, file: !1, line: 387, type: !10)
!548 = !DILocation(line: 387, column: 14, scope: !542)
!549 = !DILocalVariable(name: "shift", scope: !542, file: !1, line: 388, type: !10)
!550 = !DILocation(line: 388, column: 14, scope: !542)
!551 = !DILocation(line: 389, column: 5, scope: !542)
!552 = !DILocation(line: 390, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !1, line: 389, column: 8)
!554 = !DILocation(line: 390, column: 32, scope: !553)
!555 = !DILocation(line: 390, column: 16, scope: !553)
!556 = !DILocation(line: 390, column: 42, scope: !553)
!557 = !DILocation(line: 390, column: 39, scope: !553)
!558 = !DILocation(line: 390, column: 13, scope: !553)
!559 = !DILocation(line: 391, column: 15, scope: !560)
!560 = distinct !DILexicalBlock(scope: !553, file: !1, line: 391, column: 13)
!561 = !DILocation(line: 391, column: 20, scope: !560)
!562 = !DILocation(line: 391, column: 13, scope: !553)
!563 = !DILocation(line: 391, column: 28, scope: !560)
!564 = !DILocation(line: 392, column: 15, scope: !553)
!565 = !DILocation(line: 393, column: 10, scope: !553)
!566 = !DILocation(line: 394, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !553, file: !1, line: 394, column: 13)
!568 = !DILocation(line: 394, column: 19, scope: !567)
!569 = !DILocation(line: 394, column: 13, scope: !553)
!570 = !DILocation(line: 394, column: 25, scope: !567)
!571 = !DILocation(line: 395, column: 5, scope: !553)
!572 = distinct !{!572, !551, !573}
!573 = !DILocation(line: 395, column: 14, scope: !542)
!574 = !DILocation(line: 396, column: 12, scope: !542)
!575 = !DILocation(line: 396, column: 5, scope: !542)
!576 = !DILocation(line: 397, column: 1, scope: !542)
!577 = distinct !DISubprogram(name: "lpFirst", scope: !1, file: !1, line: 498, type: !239, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!578 = !DILocalVariable(name: "lp", arg: 1, scope: !577, file: !1, line: 498, type: !35)
!579 = !DILocation(line: 498, column: 39, scope: !577)
!580 = !DILocalVariable(name: "p", scope: !577, file: !1, line: 499, type: !35)
!581 = !DILocation(line: 499, column: 20, scope: !577)
!582 = !DILocation(line: 499, column: 24, scope: !577)
!583 = !DILocation(line: 499, column: 27, scope: !577)
!584 = !DILocation(line: 500, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !1, line: 500, column: 9)
!586 = !DILocation(line: 500, column: 14, scope: !585)
!587 = !DILocation(line: 500, column: 9, scope: !577)
!588 = !DILocation(line: 500, column: 25, scope: !585)
!589 = !DILocation(line: 501, column: 24, scope: !577)
!590 = !DILocation(line: 501, column: 36, scope: !577)
!591 = !DILocation(line: 501, column: 28, scope: !577)
!592 = !DILocation(line: 501, column: 41, scope: !577)
!593 = !DILocation(line: 501, column: 5, scope: !577)
!594 = !DILocation(line: 502, column: 12, scope: !577)
!595 = !DILocation(line: 502, column: 5, scope: !577)
!596 = !DILocation(line: 503, column: 1, scope: !577)
!597 = distinct !DISubprogram(name: "lpLast", scope: !1, file: !1, line: 507, type: !239, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!598 = !DILocalVariable(name: "lp", arg: 1, scope: !597, file: !1, line: 507, type: !35)
!599 = !DILocation(line: 507, column: 38, scope: !597)
!600 = !DILocalVariable(name: "p", scope: !597, file: !1, line: 508, type: !35)
!601 = !DILocation(line: 508, column: 20, scope: !597)
!602 = !DILocation(line: 508, column: 24, scope: !597)
!603 = !DILocation(line: 508, column: 27, scope: !597)
!604 = !DILocation(line: 508, column: 26, scope: !597)
!605 = !DILocation(line: 508, column: 46, scope: !597)
!606 = !DILocation(line: 509, column: 19, scope: !597)
!607 = !DILocation(line: 509, column: 22, scope: !597)
!608 = !DILocation(line: 509, column: 12, scope: !597)
!609 = !DILocation(line: 509, column: 5, scope: !597)
!610 = distinct !DISubprogram(name: "lpLength", scope: !1, file: !1, line: 517, type: !611, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!611 = !DISubroutineType(types: !612)
!612 = !{!12, !35}
!613 = !DILocalVariable(name: "lp", arg: 1, scope: !610, file: !1, line: 517, type: !35)
!614 = !DILocation(line: 517, column: 39, scope: !610)
!615 = !DILocalVariable(name: "numele", scope: !610, file: !1, line: 518, type: !4)
!616 = !DILocation(line: 518, column: 14, scope: !610)
!617 = !DILocation(line: 518, column: 23, scope: !610)
!618 = !DILocation(line: 519, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !1, line: 519, column: 9)
!620 = !DILocation(line: 519, column: 16, scope: !619)
!621 = !DILocation(line: 519, column: 9, scope: !610)
!622 = !DILocation(line: 519, column: 49, scope: !619)
!623 = !DILocation(line: 519, column: 42, scope: !619)
!624 = !DILocalVariable(name: "count", scope: !610, file: !1, line: 523, type: !4)
!625 = !DILocation(line: 523, column: 14, scope: !610)
!626 = !DILocalVariable(name: "p", scope: !610, file: !1, line: 524, type: !35)
!627 = !DILocation(line: 524, column: 20, scope: !610)
!628 = !DILocation(line: 524, column: 32, scope: !610)
!629 = !DILocation(line: 524, column: 24, scope: !610)
!630 = !DILocation(line: 525, column: 5, scope: !610)
!631 = !DILocation(line: 525, column: 11, scope: !610)
!632 = !DILocation(line: 526, column: 14, scope: !633)
!633 = distinct !DILexicalBlock(scope: !610, file: !1, line: 525, column: 14)
!634 = !DILocation(line: 527, column: 20, scope: !633)
!635 = !DILocation(line: 527, column: 23, scope: !633)
!636 = !DILocation(line: 527, column: 13, scope: !633)
!637 = !DILocation(line: 527, column: 11, scope: !633)
!638 = distinct !{!638, !630, !639, !164}
!639 = !DILocation(line: 528, column: 5, scope: !610)
!640 = !DILocation(line: 532, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !610, file: !1, line: 532, column: 9)
!642 = !DILocation(line: 532, column: 15, scope: !641)
!643 = !DILocation(line: 532, column: 9, scope: !610)
!644 = !DILocation(line: 532, column: 40, scope: !641)
!645 = !DILocation(line: 532, column: 40, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !1, line: 532, column: 40)
!647 = !DILocation(line: 533, column: 12, scope: !610)
!648 = !DILocation(line: 533, column: 5, scope: !610)
!649 = !DILocation(line: 534, column: 1, scope: !610)
!650 = distinct !DISubprogram(name: "lpGet", scope: !1, file: !1, line: 662, type: !651, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!651 = !DISubroutineType(types: !652)
!652 = !{!35, !35, !59, !35}
!653 = !DILocalVariable(name: "p", arg: 1, scope: !650, file: !1, line: 662, type: !35)
!654 = !DILocation(line: 662, column: 37, scope: !650)
!655 = !DILocalVariable(name: "count", arg: 2, scope: !650, file: !1, line: 662, type: !59)
!656 = !DILocation(line: 662, column: 49, scope: !650)
!657 = !DILocalVariable(name: "intbuf", arg: 3, scope: !650, file: !1, line: 662, type: !35)
!658 = !DILocation(line: 662, column: 71, scope: !650)
!659 = !DILocation(line: 663, column: 26, scope: !650)
!660 = !DILocation(line: 663, column: 29, scope: !650)
!661 = !DILocation(line: 663, column: 36, scope: !650)
!662 = !DILocation(line: 663, column: 12, scope: !650)
!663 = !DILocation(line: 663, column: 5, scope: !650)
!664 = distinct !DISubprogram(name: "lpGetWithSize", scope: !1, file: !1, line: 572, type: !665, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!665 = !DISubroutineType(types: !666)
!666 = !{!35, !35, !59, !35, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!668 = !DILocalVariable(name: "p", arg: 1, scope: !664, file: !1, line: 572, type: !35)
!669 = !DILocation(line: 572, column: 59, scope: !664)
!670 = !DILocalVariable(name: "count", arg: 2, scope: !664, file: !1, line: 572, type: !59)
!671 = !DILocation(line: 572, column: 71, scope: !664)
!672 = !DILocalVariable(name: "intbuf", arg: 3, scope: !664, file: !1, line: 572, type: !35)
!673 = !DILocation(line: 572, column: 93, scope: !664)
!674 = !DILocalVariable(name: "entry_size", arg: 4, scope: !664, file: !1, line: 572, type: !667)
!675 = !DILocation(line: 572, column: 111, scope: !664)
!676 = !DILocalVariable(name: "val", scope: !664, file: !1, line: 573, type: !21)
!677 = !DILocation(line: 573, column: 13, scope: !664)
!678 = !DILocalVariable(name: "uval", scope: !664, file: !1, line: 574, type: !10)
!679 = !DILocation(line: 574, column: 14, scope: !664)
!680 = !DILocalVariable(name: "negstart", scope: !664, file: !1, line: 574, type: !10)
!681 = !DILocation(line: 574, column: 20, scope: !664)
!682 = !DILocalVariable(name: "negmax", scope: !664, file: !1, line: 574, type: !10)
!683 = !DILocation(line: 574, column: 30, scope: !664)
!684 = !DILocation(line: 576, column: 5, scope: !664)
!685 = !DILocation(line: 577, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !664, file: !1, line: 577, column: 9)
!687 = !DILocation(line: 577, column: 9, scope: !664)
!688 = !DILocation(line: 578, column: 18, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !1, line: 577, column: 41)
!690 = !DILocation(line: 579, column: 16, scope: !689)
!691 = !DILocation(line: 580, column: 16, scope: !689)
!692 = !DILocation(line: 580, column: 21, scope: !689)
!693 = !DILocation(line: 580, column: 14, scope: !689)
!694 = !DILocation(line: 581, column: 13, scope: !695)
!695 = distinct !DILexicalBlock(scope: !689, file: !1, line: 581, column: 13)
!696 = !DILocation(line: 581, column: 13, scope: !689)
!697 = !DILocation(line: 581, column: 26, scope: !695)
!698 = !DILocation(line: 581, column: 37, scope: !695)
!699 = !DILocation(line: 581, column: 25, scope: !695)
!700 = !DILocation(line: 582, column: 5, scope: !689)
!701 = !DILocation(line: 582, column: 16, scope: !702)
!702 = distinct !DILexicalBlock(scope: !686, file: !1, line: 582, column: 16)
!703 = !DILocation(line: 582, column: 16, scope: !686)
!704 = !DILocation(line: 583, column: 18, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !1, line: 582, column: 47)
!706 = !DILocation(line: 583, column: 10, scope: !705)
!707 = !DILocation(line: 583, column: 16, scope: !705)
!708 = !DILocation(line: 584, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !1, line: 584, column: 13)
!710 = !DILocation(line: 584, column: 13, scope: !705)
!711 = !DILocation(line: 584, column: 44, scope: !709)
!712 = !DILocation(line: 584, column: 43, scope: !709)
!713 = !DILocation(line: 584, column: 41, scope: !709)
!714 = !DILocation(line: 584, column: 75, scope: !709)
!715 = !DILocation(line: 584, column: 74, scope: !709)
!716 = !DILocation(line: 584, column: 81, scope: !709)
!717 = !DILocation(line: 584, column: 52, scope: !709)
!718 = !DILocation(line: 584, column: 50, scope: !709)
!719 = !DILocation(line: 584, column: 26, scope: !709)
!720 = !DILocation(line: 584, column: 37, scope: !709)
!721 = !DILocation(line: 584, column: 25, scope: !709)
!722 = !DILocation(line: 585, column: 16, scope: !705)
!723 = !DILocation(line: 585, column: 17, scope: !705)
!724 = !DILocation(line: 585, column: 9, scope: !705)
!725 = !DILocation(line: 586, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !702, file: !1, line: 586, column: 16)
!727 = !DILocation(line: 586, column: 16, scope: !702)
!728 = !DILocation(line: 587, column: 18, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !1, line: 586, column: 48)
!730 = !DILocation(line: 587, column: 22, scope: !729)
!731 = !DILocation(line: 587, column: 28, scope: !729)
!732 = !DILocation(line: 587, column: 35, scope: !729)
!733 = !DILocation(line: 587, column: 33, scope: !729)
!734 = !DILocation(line: 587, column: 16, scope: !729)
!735 = !DILocation(line: 587, column: 14, scope: !729)
!736 = !DILocation(line: 588, column: 18, scope: !729)
!737 = !DILocation(line: 589, column: 16, scope: !729)
!738 = !DILocation(line: 590, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !729, file: !1, line: 590, column: 13)
!740 = !DILocation(line: 590, column: 13, scope: !729)
!741 = !DILocation(line: 590, column: 26, scope: !739)
!742 = !DILocation(line: 590, column: 37, scope: !739)
!743 = !DILocation(line: 590, column: 25, scope: !739)
!744 = !DILocation(line: 591, column: 5, scope: !729)
!745 = !DILocation(line: 591, column: 16, scope: !746)
!746 = distinct !DILexicalBlock(scope: !726, file: !1, line: 591, column: 16)
!747 = !DILocation(line: 591, column: 16, scope: !726)
!748 = !DILocation(line: 592, column: 26, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !1, line: 591, column: 48)
!750 = !DILocation(line: 592, column: 16, scope: !749)
!751 = !DILocation(line: 593, column: 26, scope: !749)
!752 = !DILocation(line: 593, column: 16, scope: !749)
!753 = !DILocation(line: 593, column: 30, scope: !749)
!754 = !DILocation(line: 592, column: 31, scope: !749)
!755 = !DILocation(line: 592, column: 14, scope: !749)
!756 = !DILocation(line: 594, column: 18, scope: !749)
!757 = !DILocation(line: 595, column: 16, scope: !749)
!758 = !DILocation(line: 596, column: 13, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !1, line: 596, column: 13)
!760 = !DILocation(line: 596, column: 13, scope: !749)
!761 = !DILocation(line: 596, column: 26, scope: !759)
!762 = !DILocation(line: 596, column: 37, scope: !759)
!763 = !DILocation(line: 596, column: 25, scope: !759)
!764 = !DILocation(line: 597, column: 5, scope: !749)
!765 = !DILocation(line: 597, column: 16, scope: !766)
!766 = distinct !DILexicalBlock(scope: !746, file: !1, line: 597, column: 16)
!767 = !DILocation(line: 597, column: 16, scope: !746)
!768 = !DILocation(line: 598, column: 26, scope: !769)
!769 = distinct !DILexicalBlock(scope: !766, file: !1, line: 597, column: 48)
!770 = !DILocation(line: 598, column: 16, scope: !769)
!771 = !DILocation(line: 599, column: 26, scope: !769)
!772 = !DILocation(line: 599, column: 16, scope: !769)
!773 = !DILocation(line: 599, column: 30, scope: !769)
!774 = !DILocation(line: 598, column: 31, scope: !769)
!775 = !DILocation(line: 600, column: 26, scope: !769)
!776 = !DILocation(line: 600, column: 16, scope: !769)
!777 = !DILocation(line: 600, column: 30, scope: !769)
!778 = !DILocation(line: 599, column: 34, scope: !769)
!779 = !DILocation(line: 598, column: 14, scope: !769)
!780 = !DILocation(line: 601, column: 18, scope: !769)
!781 = !DILocation(line: 602, column: 16, scope: !769)
!782 = !DILocation(line: 603, column: 13, scope: !783)
!783 = distinct !DILexicalBlock(scope: !769, file: !1, line: 603, column: 13)
!784 = !DILocation(line: 603, column: 13, scope: !769)
!785 = !DILocation(line: 603, column: 26, scope: !783)
!786 = !DILocation(line: 603, column: 37, scope: !783)
!787 = !DILocation(line: 603, column: 25, scope: !783)
!788 = !DILocation(line: 604, column: 5, scope: !769)
!789 = !DILocation(line: 604, column: 16, scope: !790)
!790 = distinct !DILexicalBlock(scope: !766, file: !1, line: 604, column: 16)
!791 = !DILocation(line: 604, column: 16, scope: !766)
!792 = !DILocation(line: 605, column: 26, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !1, line: 604, column: 48)
!794 = !DILocation(line: 605, column: 16, scope: !793)
!795 = !DILocation(line: 606, column: 26, scope: !793)
!796 = !DILocation(line: 606, column: 16, scope: !793)
!797 = !DILocation(line: 606, column: 30, scope: !793)
!798 = !DILocation(line: 605, column: 31, scope: !793)
!799 = !DILocation(line: 607, column: 26, scope: !793)
!800 = !DILocation(line: 607, column: 16, scope: !793)
!801 = !DILocation(line: 607, column: 30, scope: !793)
!802 = !DILocation(line: 606, column: 34, scope: !793)
!803 = !DILocation(line: 608, column: 26, scope: !793)
!804 = !DILocation(line: 608, column: 16, scope: !793)
!805 = !DILocation(line: 608, column: 30, scope: !793)
!806 = !DILocation(line: 607, column: 35, scope: !793)
!807 = !DILocation(line: 605, column: 14, scope: !793)
!808 = !DILocation(line: 609, column: 18, scope: !793)
!809 = !DILocation(line: 610, column: 16, scope: !793)
!810 = !DILocation(line: 611, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !793, file: !1, line: 611, column: 13)
!812 = !DILocation(line: 611, column: 13, scope: !793)
!813 = !DILocation(line: 611, column: 26, scope: !811)
!814 = !DILocation(line: 611, column: 37, scope: !811)
!815 = !DILocation(line: 611, column: 25, scope: !811)
!816 = !DILocation(line: 612, column: 5, scope: !793)
!817 = !DILocation(line: 612, column: 16, scope: !818)
!818 = distinct !DILexicalBlock(scope: !790, file: !1, line: 612, column: 16)
!819 = !DILocation(line: 612, column: 16, scope: !790)
!820 = !DILocation(line: 613, column: 26, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 612, column: 48)
!822 = !DILocation(line: 613, column: 16, scope: !821)
!823 = !DILocation(line: 614, column: 26, scope: !821)
!824 = !DILocation(line: 614, column: 16, scope: !821)
!825 = !DILocation(line: 614, column: 30, scope: !821)
!826 = !DILocation(line: 613, column: 31, scope: !821)
!827 = !DILocation(line: 615, column: 26, scope: !821)
!828 = !DILocation(line: 615, column: 16, scope: !821)
!829 = !DILocation(line: 615, column: 30, scope: !821)
!830 = !DILocation(line: 614, column: 34, scope: !821)
!831 = !DILocation(line: 616, column: 26, scope: !821)
!832 = !DILocation(line: 616, column: 16, scope: !821)
!833 = !DILocation(line: 616, column: 30, scope: !821)
!834 = !DILocation(line: 615, column: 35, scope: !821)
!835 = !DILocation(line: 617, column: 26, scope: !821)
!836 = !DILocation(line: 617, column: 16, scope: !821)
!837 = !DILocation(line: 617, column: 30, scope: !821)
!838 = !DILocation(line: 616, column: 35, scope: !821)
!839 = !DILocation(line: 618, column: 26, scope: !821)
!840 = !DILocation(line: 618, column: 16, scope: !821)
!841 = !DILocation(line: 618, column: 30, scope: !821)
!842 = !DILocation(line: 617, column: 35, scope: !821)
!843 = !DILocation(line: 619, column: 26, scope: !821)
!844 = !DILocation(line: 619, column: 16, scope: !821)
!845 = !DILocation(line: 619, column: 30, scope: !821)
!846 = !DILocation(line: 618, column: 35, scope: !821)
!847 = !DILocation(line: 620, column: 26, scope: !821)
!848 = !DILocation(line: 620, column: 16, scope: !821)
!849 = !DILocation(line: 620, column: 30, scope: !821)
!850 = !DILocation(line: 619, column: 35, scope: !821)
!851 = !DILocation(line: 613, column: 14, scope: !821)
!852 = !DILocation(line: 621, column: 18, scope: !821)
!853 = !DILocation(line: 622, column: 16, scope: !821)
!854 = !DILocation(line: 623, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !821, file: !1, line: 623, column: 13)
!856 = !DILocation(line: 623, column: 13, scope: !821)
!857 = !DILocation(line: 623, column: 26, scope: !855)
!858 = !DILocation(line: 623, column: 37, scope: !855)
!859 = !DILocation(line: 623, column: 25, scope: !855)
!860 = !DILocation(line: 624, column: 5, scope: !821)
!861 = !DILocation(line: 624, column: 16, scope: !862)
!862 = distinct !DILexicalBlock(scope: !818, file: !1, line: 624, column: 16)
!863 = !DILocation(line: 624, column: 16, scope: !818)
!864 = !DILocation(line: 625, column: 18, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !1, line: 624, column: 48)
!866 = !DILocation(line: 625, column: 10, scope: !865)
!867 = !DILocation(line: 625, column: 16, scope: !865)
!868 = !DILocation(line: 626, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !865, file: !1, line: 626, column: 13)
!870 = !DILocation(line: 626, column: 13, scope: !865)
!871 = !DILocation(line: 626, column: 44, scope: !869)
!872 = !DILocation(line: 626, column: 43, scope: !869)
!873 = !DILocation(line: 626, column: 41, scope: !869)
!874 = !DILocation(line: 626, column: 75, scope: !869)
!875 = !DILocation(line: 626, column: 74, scope: !869)
!876 = !DILocation(line: 626, column: 81, scope: !869)
!877 = !DILocation(line: 626, column: 52, scope: !869)
!878 = !DILocation(line: 626, column: 50, scope: !869)
!879 = !DILocation(line: 626, column: 26, scope: !869)
!880 = !DILocation(line: 626, column: 37, scope: !869)
!881 = !DILocation(line: 626, column: 25, scope: !869)
!882 = !DILocation(line: 627, column: 16, scope: !865)
!883 = !DILocation(line: 627, column: 17, scope: !865)
!884 = !DILocation(line: 627, column: 9, scope: !865)
!885 = !DILocation(line: 628, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !862, file: !1, line: 628, column: 16)
!887 = !DILocation(line: 628, column: 16, scope: !862)
!888 = !DILocation(line: 629, column: 18, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !1, line: 628, column: 48)
!890 = !DILocation(line: 629, column: 10, scope: !889)
!891 = !DILocation(line: 629, column: 16, scope: !889)
!892 = !DILocation(line: 630, column: 13, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !1, line: 630, column: 13)
!894 = !DILocation(line: 630, column: 13, scope: !889)
!895 = !DILocation(line: 630, column: 44, scope: !893)
!896 = !DILocation(line: 630, column: 43, scope: !893)
!897 = !DILocation(line: 630, column: 41, scope: !893)
!898 = !DILocation(line: 630, column: 75, scope: !893)
!899 = !DILocation(line: 630, column: 74, scope: !893)
!900 = !DILocation(line: 630, column: 81, scope: !893)
!901 = !DILocation(line: 630, column: 52, scope: !893)
!902 = !DILocation(line: 630, column: 50, scope: !893)
!903 = !DILocation(line: 630, column: 26, scope: !893)
!904 = !DILocation(line: 630, column: 37, scope: !893)
!905 = !DILocation(line: 630, column: 25, scope: !893)
!906 = !DILocation(line: 631, column: 16, scope: !889)
!907 = !DILocation(line: 631, column: 17, scope: !889)
!908 = !DILocation(line: 631, column: 9, scope: !889)
!909 = !DILocation(line: 633, column: 39, scope: !910)
!910 = distinct !DILexicalBlock(scope: !886, file: !1, line: 632, column: 12)
!911 = !DILocation(line: 633, column: 37, scope: !910)
!912 = !DILocation(line: 633, column: 14, scope: !910)
!913 = !DILocation(line: 634, column: 18, scope: !910)
!914 = !DILocation(line: 635, column: 16, scope: !910)
!915 = !DILocation(line: 641, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !664, file: !1, line: 641, column: 9)
!917 = !DILocation(line: 641, column: 17, scope: !916)
!918 = !DILocation(line: 641, column: 14, scope: !916)
!919 = !DILocation(line: 641, column: 9, scope: !664)
!920 = !DILocation(line: 644, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !1, line: 641, column: 27)
!922 = !DILocation(line: 644, column: 23, scope: !921)
!923 = !DILocation(line: 644, column: 22, scope: !921)
!924 = !DILocation(line: 644, column: 14, scope: !921)
!925 = !DILocation(line: 645, column: 15, scope: !921)
!926 = !DILocation(line: 645, column: 13, scope: !921)
!927 = !DILocation(line: 646, column: 16, scope: !921)
!928 = !DILocation(line: 646, column: 15, scope: !921)
!929 = !DILocation(line: 646, column: 19, scope: !921)
!930 = !DILocation(line: 646, column: 13, scope: !921)
!931 = !DILocation(line: 647, column: 5, scope: !921)
!932 = !DILocation(line: 648, column: 15, scope: !933)
!933 = distinct !DILexicalBlock(scope: !916, file: !1, line: 647, column: 12)
!934 = !DILocation(line: 648, column: 13, scope: !933)
!935 = !DILocation(line: 653, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !664, file: !1, line: 653, column: 9)
!937 = !DILocation(line: 653, column: 9, scope: !664)
!938 = !DILocation(line: 654, column: 35, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !1, line: 653, column: 17)
!940 = !DILocation(line: 654, column: 68, scope: !939)
!941 = !DILocation(line: 654, column: 18, scope: !939)
!942 = !DILocation(line: 654, column: 10, scope: !939)
!943 = !DILocation(line: 654, column: 16, scope: !939)
!944 = !DILocation(line: 655, column: 16, scope: !939)
!945 = !DILocation(line: 655, column: 9, scope: !939)
!946 = !DILocation(line: 657, column: 18, scope: !947)
!947 = distinct !DILexicalBlock(scope: !936, file: !1, line: 656, column: 12)
!948 = !DILocation(line: 657, column: 10, scope: !947)
!949 = !DILocation(line: 657, column: 16, scope: !947)
!950 = !DILocation(line: 658, column: 9, scope: !947)
!951 = !DILocation(line: 660, column: 1, scope: !664)
!952 = distinct !DISubprogram(name: "lpGetValue", scope: !1, file: !1, line: 671, type: !953, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!953 = !DISubroutineType(types: !954)
!954 = !{!35, !35, !24, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!956 = !DILocalVariable(name: "p", arg: 1, scope: !952, file: !1, line: 671, type: !35)
!957 = !DILocation(line: 671, column: 42, scope: !952)
!958 = !DILocalVariable(name: "slen", arg: 2, scope: !952, file: !1, line: 671, type: !24)
!959 = !DILocation(line: 671, column: 59, scope: !952)
!960 = !DILocalVariable(name: "lval", arg: 3, scope: !952, file: !1, line: 671, type: !955)
!961 = !DILocation(line: 671, column: 76, scope: !952)
!962 = !DILocalVariable(name: "vstr", scope: !952, file: !1, line: 672, type: !35)
!963 = !DILocation(line: 672, column: 20, scope: !952)
!964 = !DILocalVariable(name: "ele_len", scope: !952, file: !1, line: 673, type: !21)
!965 = !DILocation(line: 673, column: 13, scope: !952)
!966 = !DILocation(line: 675, column: 18, scope: !952)
!967 = !DILocation(line: 675, column: 12, scope: !952)
!968 = !DILocation(line: 675, column: 10, scope: !952)
!969 = !DILocation(line: 676, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !952, file: !1, line: 676, column: 9)
!971 = !DILocation(line: 676, column: 9, scope: !952)
!972 = !DILocation(line: 677, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !1, line: 676, column: 15)
!974 = !DILocation(line: 677, column: 10, scope: !973)
!975 = !DILocation(line: 677, column: 15, scope: !973)
!976 = !DILocation(line: 678, column: 5, scope: !973)
!977 = !DILocation(line: 679, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !1, line: 678, column: 12)
!979 = !DILocation(line: 679, column: 10, scope: !978)
!980 = !DILocation(line: 679, column: 15, scope: !978)
!981 = !DILocation(line: 681, column: 12, scope: !952)
!982 = !DILocation(line: 681, column: 5, scope: !952)
!983 = distinct !DISubprogram(name: "lpFind", scope: !1, file: !1, line: 686, type: !984, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!984 = !DISubroutineType(types: !985)
!985 = !{!35, !35, !35, !35, !4, !8}
!986 = !DILocalVariable(name: "lp", arg: 1, scope: !983, file: !1, line: 686, type: !35)
!987 = !DILocation(line: 686, column: 38, scope: !983)
!988 = !DILocalVariable(name: "p", arg: 2, scope: !983, file: !1, line: 686, type: !35)
!989 = !DILocation(line: 686, column: 57, scope: !983)
!990 = !DILocalVariable(name: "s", arg: 3, scope: !983, file: !1, line: 686, type: !35)
!991 = !DILocation(line: 686, column: 75, scope: !983)
!992 = !DILocalVariable(name: "slen", arg: 4, scope: !983, file: !1, line: 687, type: !4)
!993 = !DILocation(line: 687, column: 32, scope: !983)
!994 = !DILocalVariable(name: "skip", arg: 5, scope: !983, file: !1, line: 687, type: !8)
!995 = !DILocation(line: 687, column: 51, scope: !983)
!996 = !DILocalVariable(name: "skipcnt", scope: !983, file: !1, line: 688, type: !34)
!997 = !DILocation(line: 688, column: 9, scope: !983)
!998 = !DILocalVariable(name: "vencoding", scope: !983, file: !1, line: 689, type: !36)
!999 = !DILocation(line: 689, column: 19, scope: !983)
!1000 = !DILocalVariable(name: "value", scope: !983, file: !1, line: 690, type: !35)
!1001 = !DILocation(line: 690, column: 20, scope: !983)
!1002 = !DILocalVariable(name: "ll", scope: !983, file: !1, line: 691, type: !21)
!1003 = !DILocation(line: 691, column: 13, scope: !983)
!1004 = !DILocalVariable(name: "vll", scope: !983, file: !1, line: 691, type: !21)
!1005 = !DILocation(line: 691, column: 17, scope: !983)
!1006 = !DILocalVariable(name: "entry_size", scope: !983, file: !1, line: 692, type: !10)
!1007 = !DILocation(line: 692, column: 14, scope: !983)
!1008 = !DILocalVariable(name: "lp_bytes", scope: !983, file: !1, line: 693, type: !4)
!1009 = !DILocation(line: 693, column: 14, scope: !983)
!1010 = !DILocation(line: 693, column: 33, scope: !983)
!1011 = !DILocation(line: 693, column: 25, scope: !983)
!1012 = !DILocation(line: 695, column: 5, scope: !983)
!1013 = !DILocation(line: 696, column: 5, scope: !983)
!1014 = !DILocation(line: 696, column: 12, scope: !983)
!1015 = !DILocation(line: 697, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 697, column: 13)
!1017 = distinct !DILexicalBlock(scope: !983, file: !1, line: 696, column: 15)
!1018 = !DILocation(line: 697, column: 21, scope: !1016)
!1019 = !DILocation(line: 697, column: 13, scope: !1017)
!1020 = !DILocation(line: 698, column: 35, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 697, column: 27)
!1022 = !DILocation(line: 698, column: 21, scope: !1021)
!1023 = !DILocation(line: 698, column: 19, scope: !1021)
!1024 = !DILocation(line: 699, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 699, column: 17)
!1026 = !DILocation(line: 699, column: 17, scope: !1021)
!1027 = !DILocation(line: 701, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 699, column: 24)
!1029 = !DILocation(line: 0, scope: !1028)
!1030 = !DILocation(line: 702, column: 21, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 702, column: 21)
!1032 = !DILocation(line: 702, column: 29, scope: !1031)
!1033 = !DILocation(line: 702, column: 26, scope: !1031)
!1034 = !DILocation(line: 702, column: 32, scope: !1031)
!1035 = !DILocation(line: 702, column: 42, scope: !1031)
!1036 = !DILocation(line: 702, column: 49, scope: !1031)
!1037 = !DILocation(line: 702, column: 52, scope: !1031)
!1038 = !DILocation(line: 702, column: 35, scope: !1031)
!1039 = !DILocation(line: 702, column: 58, scope: !1031)
!1040 = !DILocation(line: 702, column: 21, scope: !1028)
!1041 = !DILocation(line: 703, column: 28, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 702, column: 64)
!1043 = !DILocation(line: 703, column: 21, scope: !1042)
!1044 = !DILocation(line: 705, column: 13, scope: !1028)
!1045 = !DILocation(line: 709, column: 21, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 709, column: 21)
!1047 = distinct !DILexicalBlock(scope: !1025, file: !1, line: 705, column: 20)
!1048 = !DILocation(line: 709, column: 31, scope: !1046)
!1049 = !DILocation(line: 709, column: 21, scope: !1047)
!1050 = !DILocation(line: 713, column: 25, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 713, column: 25)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !1, line: 709, column: 37)
!1053 = !DILocation(line: 713, column: 30, scope: !1051)
!1054 = !DILocation(line: 713, column: 36, scope: !1051)
!1055 = !DILocation(line: 713, column: 39, scope: !1051)
!1056 = !DILocation(line: 713, column: 44, scope: !1051)
!1057 = !DILocation(line: 713, column: 49, scope: !1051)
!1058 = !DILocation(line: 713, column: 82, scope: !1051)
!1059 = !DILocation(line: 713, column: 85, scope: !1051)
!1060 = !DILocation(line: 713, column: 53, scope: !1051)
!1061 = !DILocation(line: 713, column: 25, scope: !1052)
!1062 = !DILocation(line: 714, column: 35, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 713, column: 98)
!1064 = !DILocation(line: 715, column: 21, scope: !1063)
!1065 = !DILocation(line: 716, column: 35, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 715, column: 28)
!1067 = !DILocation(line: 718, column: 17, scope: !1052)
!1068 = !DILocation(line: 723, column: 21, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 723, column: 21)
!1070 = !DILocation(line: 723, column: 31, scope: !1069)
!1071 = !DILocation(line: 723, column: 44, scope: !1069)
!1072 = !DILocation(line: 723, column: 47, scope: !1069)
!1073 = !DILocation(line: 723, column: 53, scope: !1069)
!1074 = !DILocation(line: 723, column: 50, scope: !1069)
!1075 = !DILocation(line: 723, column: 21, scope: !1047)
!1076 = !DILocation(line: 724, column: 28, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 723, column: 58)
!1078 = !DILocation(line: 724, column: 21, scope: !1077)
!1079 = !DILocation(line: 729, column: 23, scope: !1021)
!1080 = !DILocation(line: 729, column: 21, scope: !1021)
!1081 = !DILocation(line: 730, column: 18, scope: !1021)
!1082 = !DILocation(line: 730, column: 15, scope: !1021)
!1083 = !DILocation(line: 731, column: 9, scope: !1021)
!1084 = !DILocation(line: 733, column: 20, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 731, column: 16)
!1086 = !DILocation(line: 737, column: 24, scope: !1085)
!1087 = !DILocation(line: 737, column: 17, scope: !1085)
!1088 = !DILocation(line: 737, column: 15, scope: !1085)
!1089 = !DILocation(line: 742, column: 13, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 742, column: 13)
!1091 = !DILocation(line: 742, column: 15, scope: !1090)
!1092 = !DILocation(line: 742, column: 22, scope: !1090)
!1093 = !DILocation(line: 742, column: 27, scope: !1090)
!1094 = !DILocation(line: 742, column: 25, scope: !1090)
!1095 = !DILocation(line: 742, column: 19, scope: !1090)
!1096 = !DILocation(line: 742, column: 13, scope: !1017)
!1097 = !DILocation(line: 743, column: 32, scope: !1090)
!1098 = !DILocation(line: 743, column: 36, scope: !1090)
!1099 = !DILocation(line: 743, column: 46, scope: !1090)
!1100 = !DILocation(line: 743, column: 13, scope: !1090)
!1101 = !DILocation(line: 745, column: 13, scope: !1090)
!1102 = !DILocation(line: 0, scope: !1090)
!1103 = !DILocation(line: 746, column: 13, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 746, column: 13)
!1105 = !DILocation(line: 746, column: 18, scope: !1104)
!1106 = !DILocation(line: 746, column: 13, scope: !1017)
!1107 = !DILocation(line: 746, column: 29, scope: !1104)
!1108 = distinct !{!1108, !1013, !1109, !164}
!1109 = !DILocation(line: 747, column: 5, scope: !983)
!1110 = !DILocation(line: 749, column: 5, scope: !983)
!1111 = !DILocation(line: 750, column: 1, scope: !983)
!1112 = distinct !DISubprogram(name: "lpInsert", scope: !1, file: !1, line: 780, type: !1113, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!35, !35, !35, !35, !4, !35, !34, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!1116 = !DILocalVariable(name: "lp", arg: 1, scope: !1112, file: !1, line: 780, type: !35)
!1117 = !DILocation(line: 780, column: 40, scope: !1112)
!1118 = !DILocalVariable(name: "elestr", arg: 2, scope: !1112, file: !1, line: 780, type: !35)
!1119 = !DILocation(line: 780, column: 59, scope: !1112)
!1120 = !DILocalVariable(name: "eleint", arg: 3, scope: !1112, file: !1, line: 780, type: !35)
!1121 = !DILocation(line: 780, column: 82, scope: !1112)
!1122 = !DILocalVariable(name: "size", arg: 4, scope: !1112, file: !1, line: 781, type: !4)
!1123 = !DILocation(line: 781, column: 34, scope: !1112)
!1124 = !DILocalVariable(name: "p", arg: 5, scope: !1112, file: !1, line: 781, type: !35)
!1125 = !DILocation(line: 781, column: 55, scope: !1112)
!1126 = !DILocalVariable(name: "where", arg: 6, scope: !1112, file: !1, line: 781, type: !34)
!1127 = !DILocation(line: 781, column: 62, scope: !1112)
!1128 = !DILocalVariable(name: "newp", arg: 7, scope: !1112, file: !1, line: 781, type: !1115)
!1129 = !DILocation(line: 781, column: 85, scope: !1112)
!1130 = !DILocalVariable(name: "intenc", scope: !1112, file: !1, line: 783, type: !1131)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 72, elements: !1132)
!1132 = !{!1133}
!1133 = !DISubrange(count: 9)
!1134 = !DILocation(line: 783, column: 19, scope: !1112)
!1135 = !DILocalVariable(name: "backlen", scope: !1112, file: !1, line: 784, type: !1136)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 40, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 5)
!1139 = !DILocation(line: 784, column: 19, scope: !1112)
!1140 = !DILocalVariable(name: "enclen", scope: !1112, file: !1, line: 786, type: !10)
!1141 = !DILocation(line: 786, column: 14, scope: !1112)
!1142 = !DILocalVariable(name: "delete", scope: !1112, file: !1, line: 787, type: !34)
!1143 = !DILocation(line: 787, column: 9, scope: !1112)
!1144 = !DILocation(line: 787, column: 19, scope: !1112)
!1145 = !DILocation(line: 787, column: 26, scope: !1112)
!1146 = !DILocation(line: 787, column: 34, scope: !1112)
!1147 = !DILocation(line: 787, column: 37, scope: !1112)
!1148 = !DILocation(line: 787, column: 44, scope: !1112)
!1149 = !DILocation(line: 0, scope: !1112)
!1150 = !DILocation(line: 792, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 792, column: 9)
!1152 = !DILocation(line: 792, column: 9, scope: !1112)
!1153 = !DILocation(line: 792, column: 23, scope: !1151)
!1154 = !DILocation(line: 792, column: 17, scope: !1151)
!1155 = !DILocation(line: 798, column: 9, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 798, column: 9)
!1157 = !DILocation(line: 798, column: 15, scope: !1156)
!1158 = !DILocation(line: 798, column: 9, scope: !1112)
!1159 = !DILocation(line: 799, column: 20, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 798, column: 28)
!1161 = !DILocation(line: 799, column: 13, scope: !1160)
!1162 = !DILocation(line: 799, column: 11, scope: !1160)
!1163 = !DILocation(line: 800, column: 15, scope: !1160)
!1164 = !DILocation(line: 801, column: 9, scope: !1160)
!1165 = !DILocation(line: 801, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1160, file: !1, line: 801, column: 9)
!1167 = !DILocation(line: 0, scope: !1166)
!1168 = !DILocation(line: 802, column: 5, scope: !1160)
!1169 = !DILocalVariable(name: "poff", scope: !1112, file: !1, line: 806, type: !12)
!1170 = !DILocation(line: 806, column: 19, scope: !1112)
!1171 = !DILocation(line: 806, column: 26, scope: !1112)
!1172 = !DILocation(line: 806, column: 28, scope: !1112)
!1173 = !DILocation(line: 806, column: 27, scope: !1112)
!1174 = !DILocalVariable(name: "enctype", scope: !1112, file: !1, line: 808, type: !34)
!1175 = !DILocation(line: 808, column: 9, scope: !1112)
!1176 = !DILocation(line: 809, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 809, column: 9)
!1178 = !DILocation(line: 809, column: 9, scope: !1112)
!1179 = !DILocation(line: 818, column: 35, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 809, column: 17)
!1181 = !DILocation(line: 818, column: 42, scope: !1180)
!1182 = !DILocation(line: 818, column: 47, scope: !1180)
!1183 = !DILocation(line: 818, column: 19, scope: !1180)
!1184 = !DILocation(line: 818, column: 17, scope: !1180)
!1185 = !DILocation(line: 819, column: 13, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 819, column: 13)
!1187 = !DILocation(line: 819, column: 21, scope: !1186)
!1188 = !DILocation(line: 819, column: 13, scope: !1180)
!1189 = !DILocation(line: 819, column: 50, scope: !1186)
!1190 = !DILocation(line: 819, column: 48, scope: !1186)
!1191 = !DILocation(line: 819, column: 41, scope: !1186)
!1192 = !DILocation(line: 820, column: 5, scope: !1180)
!1193 = !DILocation(line: 820, column: 16, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 820, column: 16)
!1195 = !DILocation(line: 820, column: 16, scope: !1177)
!1196 = !DILocation(line: 821, column: 17, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 820, column: 24)
!1198 = !DILocation(line: 822, column: 18, scope: !1197)
!1199 = !DILocation(line: 822, column: 16, scope: !1197)
!1200 = !DILocation(line: 823, column: 5, scope: !1197)
!1201 = !DILocation(line: 824, column: 17, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 823, column: 12)
!1203 = !DILocation(line: 825, column: 16, scope: !1202)
!1204 = !DILocalVariable(name: "backlen_size", scope: !1112, file: !1, line: 831, type: !12)
!1205 = !DILocation(line: 831, column: 19, scope: !1112)
!1206 = !DILocation(line: 831, column: 36, scope: !1112)
!1207 = !DILocation(line: 831, column: 34, scope: !1112)
!1208 = !DILocation(line: 831, column: 62, scope: !1112)
!1209 = !DILocation(line: 831, column: 70, scope: !1112)
!1210 = !DILocation(line: 831, column: 46, scope: !1112)
!1211 = !DILocalVariable(name: "old_listpack_bytes", scope: !1112, file: !1, line: 832, type: !10)
!1212 = !DILocation(line: 832, column: 14, scope: !1112)
!1213 = !DILocation(line: 832, column: 35, scope: !1112)
!1214 = !DILocalVariable(name: "replaced_len", scope: !1112, file: !1, line: 833, type: !4)
!1215 = !DILocation(line: 833, column: 14, scope: !1112)
!1216 = !DILocation(line: 834, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 834, column: 9)
!1218 = !DILocation(line: 834, column: 15, scope: !1217)
!1219 = !DILocation(line: 834, column: 9, scope: !1112)
!1220 = !DILocation(line: 835, column: 51, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 834, column: 30)
!1222 = !DILocation(line: 835, column: 24, scope: !1221)
!1223 = !DILocation(line: 835, column: 22, scope: !1221)
!1224 = !DILocation(line: 836, column: 46, scope: !1221)
!1225 = !DILocation(line: 836, column: 25, scope: !1221)
!1226 = !DILocation(line: 836, column: 22, scope: !1221)
!1227 = !DILocation(line: 837, column: 9, scope: !1221)
!1228 = !DILocation(line: 837, column: 9, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 837, column: 9)
!1230 = !DILocation(line: 0, scope: !1229)
!1231 = !DILocation(line: 838, column: 5, scope: !1221)
!1232 = !DILocalVariable(name: "new_listpack_bytes", scope: !1112, file: !1, line: 840, type: !10)
!1233 = !DILocation(line: 840, column: 14, scope: !1112)
!1234 = !DILocation(line: 840, column: 35, scope: !1112)
!1235 = !DILocation(line: 840, column: 56, scope: !1112)
!1236 = !DILocation(line: 840, column: 54, scope: !1112)
!1237 = !DILocation(line: 840, column: 65, scope: !1112)
!1238 = !DILocation(line: 840, column: 63, scope: !1112)
!1239 = !DILocation(line: 841, column: 37, scope: !1112)
!1240 = !DILocation(line: 841, column: 35, scope: !1112)
!1241 = !DILocation(line: 842, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 842, column: 9)
!1243 = !DILocation(line: 842, column: 28, scope: !1242)
!1244 = !DILocation(line: 842, column: 9, scope: !1112)
!1245 = !DILocation(line: 842, column: 42, scope: !1242)
!1246 = !DILocalVariable(name: "dst", scope: !1112, file: !1, line: 850, type: !35)
!1247 = !DILocation(line: 850, column: 20, scope: !1112)
!1248 = !DILocation(line: 850, column: 26, scope: !1112)
!1249 = !DILocation(line: 850, column: 31, scope: !1112)
!1250 = !DILocation(line: 850, column: 29, scope: !1112)
!1251 = !DILocation(line: 853, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 853, column: 9)
!1253 = !DILocation(line: 853, column: 30, scope: !1252)
!1254 = !DILocation(line: 853, column: 28, scope: !1252)
!1255 = !DILocation(line: 853, column: 49, scope: !1252)
!1256 = !DILocation(line: 854, column: 9, scope: !1252)
!1257 = !DILocation(line: 854, column: 30, scope: !1252)
!1258 = !DILocation(line: 854, column: 28, scope: !1252)
!1259 = !DILocation(line: 853, column: 9, scope: !1112)
!1260 = !DILocation(line: 855, column: 19, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 855, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !1, line: 854, column: 50)
!1263 = !DILocation(line: 855, column: 17, scope: !1261)
!1264 = !DILocation(line: 855, column: 54, scope: !1261)
!1265 = !DILocation(line: 855, column: 13, scope: !1262)
!1266 = !DILocation(line: 855, column: 63, scope: !1261)
!1267 = !DILocation(line: 856, column: 15, scope: !1262)
!1268 = !DILocation(line: 856, column: 20, scope: !1262)
!1269 = !DILocation(line: 856, column: 18, scope: !1262)
!1270 = !DILocation(line: 856, column: 13, scope: !1262)
!1271 = !DILocation(line: 857, column: 5, scope: !1262)
!1272 = !DILocation(line: 861, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 861, column: 9)
!1274 = !DILocation(line: 861, column: 15, scope: !1273)
!1275 = !DILocation(line: 861, column: 9, scope: !1112)
!1276 = !DILocation(line: 862, column: 17, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 861, column: 29)
!1278 = !DILocation(line: 862, column: 21, scope: !1277)
!1279 = !DILocation(line: 862, column: 20, scope: !1277)
!1280 = !DILocation(line: 862, column: 28, scope: !1277)
!1281 = !DILocation(line: 862, column: 27, scope: !1277)
!1282 = !DILocation(line: 862, column: 41, scope: !1277)
!1283 = !DILocation(line: 862, column: 45, scope: !1277)
!1284 = !DILocation(line: 862, column: 64, scope: !1277)
!1285 = !DILocation(line: 862, column: 63, scope: !1277)
!1286 = !DILocation(line: 862, column: 9, scope: !1277)
!1287 = !DILocation(line: 863, column: 5, scope: !1277)
!1288 = !DILocalVariable(name: "lendiff", scope: !1289, file: !1, line: 864, type: !16)
!1289 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 863, column: 12)
!1290 = !DILocation(line: 864, column: 14, scope: !1289)
!1291 = !DILocation(line: 864, column: 25, scope: !1289)
!1292 = !DILocation(line: 864, column: 32, scope: !1289)
!1293 = !DILocation(line: 864, column: 31, scope: !1289)
!1294 = !DILocation(line: 864, column: 46, scope: !1289)
!1295 = !DILocation(line: 864, column: 45, scope: !1289)
!1296 = !DILocation(line: 865, column: 17, scope: !1289)
!1297 = !DILocation(line: 865, column: 21, scope: !1289)
!1298 = !DILocation(line: 865, column: 20, scope: !1289)
!1299 = !DILocation(line: 865, column: 34, scope: !1289)
!1300 = !DILocation(line: 865, column: 33, scope: !1289)
!1301 = !DILocation(line: 866, column: 17, scope: !1289)
!1302 = !DILocation(line: 866, column: 21, scope: !1289)
!1303 = !DILocation(line: 866, column: 20, scope: !1289)
!1304 = !DILocation(line: 867, column: 17, scope: !1289)
!1305 = !DILocation(line: 867, column: 36, scope: !1289)
!1306 = !DILocation(line: 867, column: 35, scope: !1289)
!1307 = !DILocation(line: 867, column: 41, scope: !1289)
!1308 = !DILocation(line: 867, column: 40, scope: !1289)
!1309 = !DILocation(line: 865, column: 9, scope: !1289)
!1310 = !DILocation(line: 871, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 871, column: 9)
!1312 = !DILocation(line: 871, column: 30, scope: !1311)
!1313 = !DILocation(line: 871, column: 28, scope: !1311)
!1314 = !DILocation(line: 871, column: 9, scope: !1112)
!1315 = !DILocation(line: 872, column: 19, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !1, line: 872, column: 13)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 871, column: 50)
!1318 = !DILocation(line: 872, column: 17, scope: !1316)
!1319 = !DILocation(line: 872, column: 54, scope: !1316)
!1320 = !DILocation(line: 872, column: 13, scope: !1317)
!1321 = !DILocation(line: 872, column: 63, scope: !1316)
!1322 = !DILocation(line: 873, column: 15, scope: !1317)
!1323 = !DILocation(line: 873, column: 20, scope: !1317)
!1324 = !DILocation(line: 873, column: 18, scope: !1317)
!1325 = !DILocation(line: 873, column: 13, scope: !1317)
!1326 = !DILocation(line: 874, column: 5, scope: !1317)
!1327 = !DILocation(line: 877, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 877, column: 9)
!1329 = !DILocation(line: 877, column: 9, scope: !1112)
!1330 = !DILocation(line: 878, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 877, column: 15)
!1332 = !DILocation(line: 878, column: 10, scope: !1331)
!1333 = !DILocation(line: 878, column: 15, scope: !1331)
!1334 = !DILocation(line: 881, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !1, line: 881, column: 13)
!1336 = !DILocation(line: 881, column: 20, scope: !1335)
!1337 = !DILocation(line: 881, column: 23, scope: !1335)
!1338 = !DILocation(line: 881, column: 30, scope: !1335)
!1339 = !DILocation(line: 881, column: 13, scope: !1331)
!1340 = !DILocation(line: 881, column: 42, scope: !1335)
!1341 = !DILocation(line: 881, column: 47, scope: !1335)
!1342 = !DILocation(line: 881, column: 41, scope: !1335)
!1343 = !DILocation(line: 882, column: 5, scope: !1331)
!1344 = !DILocation(line: 883, column: 10, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 883, column: 9)
!1346 = !DILocation(line: 883, column: 9, scope: !1112)
!1347 = !DILocation(line: 884, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 884, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 883, column: 18)
!1350 = !DILocation(line: 884, column: 21, scope: !1348)
!1351 = !DILocation(line: 884, column: 13, scope: !1349)
!1352 = !DILocation(line: 885, column: 20, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 884, column: 41)
!1354 = !DILocation(line: 885, column: 24, scope: !1353)
!1355 = !DILocation(line: 885, column: 31, scope: !1353)
!1356 = !DILocation(line: 885, column: 13, scope: !1353)
!1357 = !DILocation(line: 886, column: 9, scope: !1353)
!1358 = !DILocation(line: 887, column: 28, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 886, column: 16)
!1360 = !DILocation(line: 887, column: 32, scope: !1359)
!1361 = !DILocation(line: 887, column: 39, scope: !1359)
!1362 = !DILocation(line: 887, column: 13, scope: !1359)
!1363 = !DILocation(line: 889, column: 16, scope: !1349)
!1364 = !DILocation(line: 889, column: 13, scope: !1349)
!1365 = !DILocation(line: 890, column: 16, scope: !1349)
!1366 = !DILocation(line: 890, column: 9, scope: !1349)
!1367 = !DILocation(line: 890, column: 28, scope: !1349)
!1368 = !DILocation(line: 891, column: 16, scope: !1349)
!1369 = !DILocation(line: 891, column: 13, scope: !1349)
!1370 = !DILocation(line: 892, column: 5, scope: !1349)
!1371 = !DILocation(line: 895, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 895, column: 9)
!1373 = !DILocation(line: 895, column: 15, scope: !1372)
!1374 = !DILocation(line: 895, column: 29, scope: !1372)
!1375 = !DILocation(line: 895, column: 32, scope: !1372)
!1376 = !DILocation(line: 895, column: 9, scope: !1112)
!1377 = !DILocalVariable(name: "num_elements", scope: !1378, file: !1, line: 896, type: !4)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !1, line: 895, column: 40)
!1379 = !DILocation(line: 896, column: 18, scope: !1378)
!1380 = !DILocation(line: 896, column: 33, scope: !1378)
!1381 = !DILocation(line: 897, column: 13, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 897, column: 13)
!1383 = !DILocation(line: 897, column: 26, scope: !1382)
!1384 = !DILocation(line: 897, column: 13, scope: !1378)
!1385 = !DILocation(line: 898, column: 18, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 898, column: 17)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !1, line: 897, column: 52)
!1388 = !DILocation(line: 898, column: 17, scope: !1387)
!1389 = !DILocation(line: 899, column: 17, scope: !1386)
!1390 = !DILocation(line: 899, column: 17, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !1, line: 899, column: 17)
!1392 = !DILocation(line: 901, column: 17, scope: !1386)
!1393 = !DILocation(line: 901, column: 17, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1386, file: !1, line: 901, column: 17)
!1395 = !DILocation(line: 902, column: 9, scope: !1387)
!1396 = !DILocation(line: 903, column: 5, scope: !1378)
!1397 = !DILocation(line: 904, column: 5, scope: !1112)
!1398 = !DILocation(line: 904, column: 5, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 904, column: 5)
!1400 = !DILocation(line: 925, column: 12, scope: !1112)
!1401 = !DILocation(line: 925, column: 5, scope: !1112)
!1402 = !DILocation(line: 926, column: 1, scope: !1112)
!1403 = distinct !DISubprogram(name: "lpEncodeGetType", scope: !1, file: !1, line: 329, type: !1404, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!34, !35, !4, !35, !667}
!1406 = !DILocalVariable(name: "ele", arg: 1, scope: !1403, file: !1, line: 329, type: !35)
!1407 = !DILocation(line: 329, column: 50, scope: !1403)
!1408 = !DILocalVariable(name: "size", arg: 2, scope: !1403, file: !1, line: 329, type: !4)
!1409 = !DILocation(line: 329, column: 64, scope: !1403)
!1410 = !DILocalVariable(name: "intenc", arg: 3, scope: !1403, file: !1, line: 329, type: !35)
!1411 = !DILocation(line: 329, column: 85, scope: !1403)
!1412 = !DILocalVariable(name: "enclen", arg: 4, scope: !1403, file: !1, line: 329, type: !667)
!1413 = !DILocation(line: 329, column: 103, scope: !1403)
!1414 = !DILocalVariable(name: "v", scope: !1403, file: !1, line: 330, type: !21)
!1415 = !DILocation(line: 330, column: 13, scope: !1403)
!1416 = !DILocation(line: 331, column: 38, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1403, file: !1, line: 331, column: 9)
!1418 = !DILocation(line: 331, column: 43, scope: !1417)
!1419 = !DILocation(line: 331, column: 9, scope: !1417)
!1420 = !DILocation(line: 331, column: 9, scope: !1403)
!1421 = !DILocation(line: 332, column: 32, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 331, column: 54)
!1423 = !DILocation(line: 332, column: 35, scope: !1422)
!1424 = !DILocation(line: 332, column: 43, scope: !1422)
!1425 = !DILocation(line: 332, column: 9, scope: !1422)
!1426 = !DILocation(line: 333, column: 9, scope: !1422)
!1427 = !DILocation(line: 335, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !1, line: 335, column: 13)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !1, line: 334, column: 12)
!1430 = !DILocation(line: 335, column: 18, scope: !1428)
!1431 = !DILocation(line: 335, column: 13, scope: !1429)
!1432 = !DILocation(line: 335, column: 36, scope: !1428)
!1433 = !DILocation(line: 335, column: 35, scope: !1428)
!1434 = !DILocation(line: 335, column: 34, scope: !1428)
!1435 = !DILocation(line: 335, column: 25, scope: !1428)
!1436 = !DILocation(line: 335, column: 32, scope: !1428)
!1437 = !DILocation(line: 335, column: 24, scope: !1428)
!1438 = !DILocation(line: 336, column: 18, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !1, line: 336, column: 18)
!1440 = !DILocation(line: 336, column: 23, scope: !1439)
!1441 = !DILocation(line: 336, column: 18, scope: !1428)
!1442 = !DILocation(line: 336, column: 43, scope: !1439)
!1443 = !DILocation(line: 336, column: 42, scope: !1439)
!1444 = !DILocation(line: 336, column: 41, scope: !1439)
!1445 = !DILocation(line: 336, column: 32, scope: !1439)
!1446 = !DILocation(line: 336, column: 39, scope: !1439)
!1447 = !DILocation(line: 336, column: 31, scope: !1439)
!1448 = !DILocation(line: 337, column: 36, scope: !1439)
!1449 = !DILocation(line: 337, column: 26, scope: !1439)
!1450 = !DILocation(line: 337, column: 25, scope: !1439)
!1451 = !DILocation(line: 337, column: 15, scope: !1439)
!1452 = !DILocation(line: 337, column: 22, scope: !1439)
!1453 = !DILocation(line: 338, column: 9, scope: !1429)
!1454 = !DILocation(line: 340, column: 1, scope: !1403)
!1455 = distinct !DISubprogram(name: "lpEncodeString", scope: !1, file: !1, line: 403, type: !1456, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !35, !35, !4}
!1458 = !DILocalVariable(name: "buf", arg: 1, scope: !1455, file: !1, line: 403, type: !35)
!1459 = !DILocation(line: 403, column: 50, scope: !1455)
!1460 = !DILocalVariable(name: "s", arg: 2, scope: !1455, file: !1, line: 403, type: !35)
!1461 = !DILocation(line: 403, column: 70, scope: !1455)
!1462 = !DILocalVariable(name: "len", arg: 3, scope: !1455, file: !1, line: 403, type: !4)
!1463 = !DILocation(line: 403, column: 82, scope: !1455)
!1464 = !DILocation(line: 404, column: 9, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1455, file: !1, line: 404, column: 9)
!1466 = !DILocation(line: 404, column: 13, scope: !1465)
!1467 = !DILocation(line: 404, column: 9, scope: !1455)
!1468 = !DILocation(line: 405, column: 18, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 404, column: 19)
!1470 = !DILocation(line: 405, column: 22, scope: !1469)
!1471 = !DILocation(line: 405, column: 9, scope: !1469)
!1472 = !DILocation(line: 405, column: 16, scope: !1469)
!1473 = !DILocation(line: 406, column: 16, scope: !1469)
!1474 = !DILocation(line: 406, column: 19, scope: !1469)
!1475 = !DILocation(line: 406, column: 22, scope: !1469)
!1476 = !DILocation(line: 406, column: 24, scope: !1469)
!1477 = !DILocation(line: 406, column: 9, scope: !1469)
!1478 = !DILocation(line: 407, column: 5, scope: !1469)
!1479 = !DILocation(line: 407, column: 16, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 407, column: 16)
!1481 = !DILocation(line: 407, column: 20, scope: !1480)
!1482 = !DILocation(line: 407, column: 16, scope: !1465)
!1483 = !DILocation(line: 408, column: 19, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 407, column: 28)
!1485 = !DILocation(line: 408, column: 23, scope: !1484)
!1486 = !DILocation(line: 408, column: 29, scope: !1484)
!1487 = !DILocation(line: 408, column: 18, scope: !1484)
!1488 = !DILocation(line: 408, column: 9, scope: !1484)
!1489 = !DILocation(line: 408, column: 16, scope: !1484)
!1490 = !DILocation(line: 409, column: 18, scope: !1484)
!1491 = !DILocation(line: 409, column: 22, scope: !1484)
!1492 = !DILocation(line: 409, column: 9, scope: !1484)
!1493 = !DILocation(line: 409, column: 16, scope: !1484)
!1494 = !DILocation(line: 410, column: 16, scope: !1484)
!1495 = !DILocation(line: 410, column: 19, scope: !1484)
!1496 = !DILocation(line: 410, column: 22, scope: !1484)
!1497 = !DILocation(line: 410, column: 24, scope: !1484)
!1498 = !DILocation(line: 410, column: 9, scope: !1484)
!1499 = !DILocation(line: 411, column: 5, scope: !1484)
!1500 = !DILocation(line: 412, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 411, column: 12)
!1502 = !DILocation(line: 412, column: 16, scope: !1501)
!1503 = !DILocation(line: 413, column: 18, scope: !1501)
!1504 = !DILocation(line: 413, column: 22, scope: !1501)
!1505 = !DILocation(line: 413, column: 9, scope: !1501)
!1506 = !DILocation(line: 413, column: 16, scope: !1501)
!1507 = !DILocation(line: 414, column: 19, scope: !1501)
!1508 = !DILocation(line: 414, column: 23, scope: !1501)
!1509 = !DILocation(line: 414, column: 29, scope: !1501)
!1510 = !DILocation(line: 414, column: 18, scope: !1501)
!1511 = !DILocation(line: 414, column: 9, scope: !1501)
!1512 = !DILocation(line: 414, column: 16, scope: !1501)
!1513 = !DILocation(line: 415, column: 19, scope: !1501)
!1514 = !DILocation(line: 415, column: 23, scope: !1501)
!1515 = !DILocation(line: 415, column: 30, scope: !1501)
!1516 = !DILocation(line: 415, column: 18, scope: !1501)
!1517 = !DILocation(line: 415, column: 9, scope: !1501)
!1518 = !DILocation(line: 415, column: 16, scope: !1501)
!1519 = !DILocation(line: 416, column: 19, scope: !1501)
!1520 = !DILocation(line: 416, column: 23, scope: !1501)
!1521 = !DILocation(line: 416, column: 30, scope: !1501)
!1522 = !DILocation(line: 416, column: 18, scope: !1501)
!1523 = !DILocation(line: 416, column: 9, scope: !1501)
!1524 = !DILocation(line: 416, column: 16, scope: !1501)
!1525 = !DILocation(line: 417, column: 16, scope: !1501)
!1526 = !DILocation(line: 417, column: 19, scope: !1501)
!1527 = !DILocation(line: 417, column: 22, scope: !1501)
!1528 = !DILocation(line: 417, column: 24, scope: !1501)
!1529 = !DILocation(line: 417, column: 9, scope: !1501)
!1530 = !DILocation(line: 419, column: 1, scope: !1455)
!1531 = distinct !DISubprogram(name: "lpInsertString", scope: !1, file: !1, line: 929, type: !1532, scopeLine: 931, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!35, !35, !35, !4, !35, !34, !1115}
!1534 = !DILocalVariable(name: "lp", arg: 1, scope: !1531, file: !1, line: 929, type: !35)
!1535 = !DILocation(line: 929, column: 46, scope: !1531)
!1536 = !DILocalVariable(name: "s", arg: 2, scope: !1531, file: !1, line: 929, type: !35)
!1537 = !DILocation(line: 929, column: 65, scope: !1531)
!1538 = !DILocalVariable(name: "slen", arg: 3, scope: !1531, file: !1, line: 929, type: !4)
!1539 = !DILocation(line: 929, column: 77, scope: !1531)
!1540 = !DILocalVariable(name: "p", arg: 4, scope: !1531, file: !1, line: 930, type: !35)
!1541 = !DILocation(line: 930, column: 46, scope: !1531)
!1542 = !DILocalVariable(name: "where", arg: 5, scope: !1531, file: !1, line: 930, type: !34)
!1543 = !DILocation(line: 930, column: 53, scope: !1531)
!1544 = !DILocalVariable(name: "newp", arg: 6, scope: !1531, file: !1, line: 930, type: !1115)
!1545 = !DILocation(line: 930, column: 76, scope: !1531)
!1546 = !DILocation(line: 932, column: 21, scope: !1531)
!1547 = !DILocation(line: 932, column: 25, scope: !1531)
!1548 = !DILocation(line: 932, column: 34, scope: !1531)
!1549 = !DILocation(line: 932, column: 40, scope: !1531)
!1550 = !DILocation(line: 932, column: 43, scope: !1531)
!1551 = !DILocation(line: 932, column: 50, scope: !1531)
!1552 = !DILocation(line: 932, column: 12, scope: !1531)
!1553 = !DILocation(line: 932, column: 5, scope: !1531)
!1554 = distinct !DISubprogram(name: "lpInsertInteger", scope: !1, file: !1, line: 937, type: !1555, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!35, !35, !20, !35, !34, !1115}
!1557 = !DILocalVariable(name: "lp", arg: 1, scope: !1554, file: !1, line: 937, type: !35)
!1558 = !DILocation(line: 937, column: 47, scope: !1554)
!1559 = !DILocalVariable(name: "lval", arg: 2, scope: !1554, file: !1, line: 937, type: !20)
!1560 = !DILocation(line: 937, column: 61, scope: !1554)
!1561 = !DILocalVariable(name: "p", arg: 3, scope: !1554, file: !1, line: 937, type: !35)
!1562 = !DILocation(line: 937, column: 82, scope: !1554)
!1563 = !DILocalVariable(name: "where", arg: 4, scope: !1554, file: !1, line: 937, type: !34)
!1564 = !DILocation(line: 937, column: 89, scope: !1554)
!1565 = !DILocalVariable(name: "newp", arg: 5, scope: !1554, file: !1, line: 937, type: !1115)
!1566 = !DILocation(line: 937, column: 112, scope: !1554)
!1567 = !DILocalVariable(name: "enclen", scope: !1554, file: !1, line: 938, type: !10)
!1568 = !DILocation(line: 938, column: 14, scope: !1554)
!1569 = !DILocalVariable(name: "intenc", scope: !1554, file: !1, line: 939, type: !1131)
!1570 = !DILocation(line: 939, column: 19, scope: !1554)
!1571 = !DILocation(line: 941, column: 28, scope: !1554)
!1572 = !DILocation(line: 941, column: 34, scope: !1554)
!1573 = !DILocation(line: 941, column: 5, scope: !1554)
!1574 = !DILocation(line: 942, column: 21, scope: !1554)
!1575 = !DILocation(line: 942, column: 31, scope: !1554)
!1576 = !DILocation(line: 942, column: 39, scope: !1554)
!1577 = !DILocation(line: 942, column: 47, scope: !1554)
!1578 = !DILocation(line: 942, column: 50, scope: !1554)
!1579 = !DILocation(line: 942, column: 57, scope: !1554)
!1580 = !DILocation(line: 942, column: 12, scope: !1554)
!1581 = !DILocation(line: 942, column: 5, scope: !1554)
!1582 = distinct !DISubprogram(name: "lpEncodeIntegerGetType", scope: !1, file: !1, line: 267, type: !1583, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !21, !35, !667}
!1585 = !DILocalVariable(name: "v", arg: 1, scope: !1582, file: !1, line: 267, type: !21)
!1586 = !DILocation(line: 267, column: 51, scope: !1582)
!1587 = !DILocalVariable(name: "intenc", arg: 2, scope: !1582, file: !1, line: 267, type: !35)
!1588 = !DILocation(line: 267, column: 69, scope: !1582)
!1589 = !DILocalVariable(name: "enclen", arg: 3, scope: !1582, file: !1, line: 267, type: !667)
!1590 = !DILocation(line: 267, column: 87, scope: !1582)
!1591 = !DILocation(line: 268, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !1, line: 268, column: 9)
!1593 = !DILocation(line: 268, column: 11, scope: !1592)
!1594 = !DILocation(line: 268, column: 16, scope: !1592)
!1595 = !DILocation(line: 268, column: 19, scope: !1592)
!1596 = !DILocation(line: 268, column: 21, scope: !1592)
!1597 = !DILocation(line: 268, column: 9, scope: !1582)
!1598 = !DILocation(line: 270, column: 21, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 268, column: 29)
!1600 = !DILocation(line: 270, column: 9, scope: !1599)
!1601 = !DILocation(line: 270, column: 19, scope: !1599)
!1602 = !DILocation(line: 271, column: 10, scope: !1599)
!1603 = !DILocation(line: 271, column: 17, scope: !1599)
!1604 = !DILocation(line: 272, column: 5, scope: !1599)
!1605 = !DILocation(line: 272, column: 16, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 272, column: 16)
!1607 = !DILocation(line: 272, column: 18, scope: !1606)
!1608 = !DILocation(line: 272, column: 27, scope: !1606)
!1609 = !DILocation(line: 272, column: 30, scope: !1606)
!1610 = !DILocation(line: 272, column: 32, scope: !1606)
!1611 = !DILocation(line: 272, column: 16, scope: !1592)
!1612 = !DILocation(line: 274, column: 13, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 274, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 272, column: 41)
!1615 = !DILocation(line: 274, column: 15, scope: !1613)
!1616 = !DILocation(line: 274, column: 13, scope: !1614)
!1617 = !DILocation(line: 274, column: 41, scope: !1613)
!1618 = !DILocation(line: 274, column: 40, scope: !1613)
!1619 = !DILocation(line: 274, column: 22, scope: !1613)
!1620 = !DILocation(line: 274, column: 20, scope: !1613)
!1621 = !DILocation(line: 275, column: 22, scope: !1614)
!1622 = !DILocation(line: 275, column: 23, scope: !1614)
!1623 = !DILocation(line: 275, column: 27, scope: !1614)
!1624 = !DILocation(line: 275, column: 21, scope: !1614)
!1625 = !DILocation(line: 275, column: 9, scope: !1614)
!1626 = !DILocation(line: 275, column: 19, scope: !1614)
!1627 = !DILocation(line: 276, column: 21, scope: !1614)
!1628 = !DILocation(line: 276, column: 22, scope: !1614)
!1629 = !DILocation(line: 276, column: 9, scope: !1614)
!1630 = !DILocation(line: 276, column: 19, scope: !1614)
!1631 = !DILocation(line: 277, column: 10, scope: !1614)
!1632 = !DILocation(line: 277, column: 17, scope: !1614)
!1633 = !DILocation(line: 278, column: 5, scope: !1614)
!1634 = !DILocation(line: 278, column: 16, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 278, column: 16)
!1636 = !DILocation(line: 278, column: 18, scope: !1635)
!1637 = !DILocation(line: 278, column: 28, scope: !1635)
!1638 = !DILocation(line: 278, column: 31, scope: !1635)
!1639 = !DILocation(line: 278, column: 33, scope: !1635)
!1640 = !DILocation(line: 278, column: 16, scope: !1606)
!1641 = !DILocation(line: 280, column: 13, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1, line: 280, column: 13)
!1643 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 278, column: 43)
!1644 = !DILocation(line: 280, column: 15, scope: !1642)
!1645 = !DILocation(line: 280, column: 13, scope: !1643)
!1646 = !DILocation(line: 280, column: 41, scope: !1642)
!1647 = !DILocation(line: 280, column: 40, scope: !1642)
!1648 = !DILocation(line: 280, column: 22, scope: !1642)
!1649 = !DILocation(line: 280, column: 20, scope: !1642)
!1650 = !DILocation(line: 281, column: 9, scope: !1643)
!1651 = !DILocation(line: 281, column: 19, scope: !1643)
!1652 = !DILocation(line: 282, column: 21, scope: !1643)
!1653 = !DILocation(line: 282, column: 22, scope: !1643)
!1654 = !DILocation(line: 282, column: 9, scope: !1643)
!1655 = !DILocation(line: 282, column: 19, scope: !1643)
!1656 = !DILocation(line: 283, column: 21, scope: !1643)
!1657 = !DILocation(line: 283, column: 22, scope: !1643)
!1658 = !DILocation(line: 283, column: 9, scope: !1643)
!1659 = !DILocation(line: 283, column: 19, scope: !1643)
!1660 = !DILocation(line: 284, column: 10, scope: !1643)
!1661 = !DILocation(line: 284, column: 17, scope: !1643)
!1662 = !DILocation(line: 285, column: 5, scope: !1643)
!1663 = !DILocation(line: 285, column: 16, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1635, file: !1, line: 285, column: 16)
!1665 = !DILocation(line: 285, column: 18, scope: !1664)
!1666 = !DILocation(line: 285, column: 30, scope: !1664)
!1667 = !DILocation(line: 285, column: 33, scope: !1664)
!1668 = !DILocation(line: 285, column: 35, scope: !1664)
!1669 = !DILocation(line: 285, column: 16, scope: !1635)
!1670 = !DILocation(line: 287, column: 13, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 287, column: 13)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 285, column: 47)
!1673 = !DILocation(line: 287, column: 15, scope: !1671)
!1674 = !DILocation(line: 287, column: 13, scope: !1672)
!1675 = !DILocation(line: 287, column: 41, scope: !1671)
!1676 = !DILocation(line: 287, column: 40, scope: !1671)
!1677 = !DILocation(line: 287, column: 22, scope: !1671)
!1678 = !DILocation(line: 287, column: 20, scope: !1671)
!1679 = !DILocation(line: 288, column: 9, scope: !1672)
!1680 = !DILocation(line: 288, column: 19, scope: !1672)
!1681 = !DILocation(line: 289, column: 21, scope: !1672)
!1682 = !DILocation(line: 289, column: 22, scope: !1672)
!1683 = !DILocation(line: 289, column: 9, scope: !1672)
!1684 = !DILocation(line: 289, column: 19, scope: !1672)
!1685 = !DILocation(line: 290, column: 22, scope: !1672)
!1686 = !DILocation(line: 290, column: 23, scope: !1672)
!1687 = !DILocation(line: 290, column: 27, scope: !1672)
!1688 = !DILocation(line: 290, column: 21, scope: !1672)
!1689 = !DILocation(line: 290, column: 9, scope: !1672)
!1690 = !DILocation(line: 290, column: 19, scope: !1672)
!1691 = !DILocation(line: 291, column: 21, scope: !1672)
!1692 = !DILocation(line: 291, column: 22, scope: !1672)
!1693 = !DILocation(line: 291, column: 9, scope: !1672)
!1694 = !DILocation(line: 291, column: 19, scope: !1672)
!1695 = !DILocation(line: 292, column: 10, scope: !1672)
!1696 = !DILocation(line: 292, column: 17, scope: !1672)
!1697 = !DILocation(line: 293, column: 5, scope: !1672)
!1698 = !DILocation(line: 293, column: 16, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 293, column: 16)
!1700 = !DILocation(line: 293, column: 18, scope: !1699)
!1701 = !DILocation(line: 293, column: 33, scope: !1699)
!1702 = !DILocation(line: 293, column: 36, scope: !1699)
!1703 = !DILocation(line: 293, column: 38, scope: !1699)
!1704 = !DILocation(line: 293, column: 16, scope: !1664)
!1705 = !DILocation(line: 295, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 295, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1699, file: !1, line: 293, column: 53)
!1708 = !DILocation(line: 295, column: 15, scope: !1706)
!1709 = !DILocation(line: 295, column: 13, scope: !1707)
!1710 = !DILocation(line: 295, column: 41, scope: !1706)
!1711 = !DILocation(line: 295, column: 40, scope: !1706)
!1712 = !DILocation(line: 295, column: 22, scope: !1706)
!1713 = !DILocation(line: 295, column: 20, scope: !1706)
!1714 = !DILocation(line: 296, column: 9, scope: !1707)
!1715 = !DILocation(line: 296, column: 19, scope: !1707)
!1716 = !DILocation(line: 297, column: 21, scope: !1707)
!1717 = !DILocation(line: 297, column: 22, scope: !1707)
!1718 = !DILocation(line: 297, column: 9, scope: !1707)
!1719 = !DILocation(line: 297, column: 19, scope: !1707)
!1720 = !DILocation(line: 298, column: 22, scope: !1707)
!1721 = !DILocation(line: 298, column: 23, scope: !1707)
!1722 = !DILocation(line: 298, column: 27, scope: !1707)
!1723 = !DILocation(line: 298, column: 21, scope: !1707)
!1724 = !DILocation(line: 298, column: 9, scope: !1707)
!1725 = !DILocation(line: 298, column: 19, scope: !1707)
!1726 = !DILocation(line: 299, column: 22, scope: !1707)
!1727 = !DILocation(line: 299, column: 23, scope: !1707)
!1728 = !DILocation(line: 299, column: 28, scope: !1707)
!1729 = !DILocation(line: 299, column: 21, scope: !1707)
!1730 = !DILocation(line: 299, column: 9, scope: !1707)
!1731 = !DILocation(line: 299, column: 19, scope: !1707)
!1732 = !DILocation(line: 300, column: 21, scope: !1707)
!1733 = !DILocation(line: 300, column: 22, scope: !1707)
!1734 = !DILocation(line: 300, column: 9, scope: !1707)
!1735 = !DILocation(line: 300, column: 19, scope: !1707)
!1736 = !DILocation(line: 301, column: 10, scope: !1707)
!1737 = !DILocation(line: 301, column: 17, scope: !1707)
!1738 = !DILocation(line: 302, column: 5, scope: !1707)
!1739 = !DILocalVariable(name: "uv", scope: !1740, file: !1, line: 304, type: !10)
!1740 = distinct !DILexicalBlock(scope: !1699, file: !1, line: 302, column: 12)
!1741 = !DILocation(line: 304, column: 18, scope: !1740)
!1742 = !DILocation(line: 304, column: 23, scope: !1740)
!1743 = !DILocation(line: 305, column: 9, scope: !1740)
!1744 = !DILocation(line: 305, column: 19, scope: !1740)
!1745 = !DILocation(line: 306, column: 21, scope: !1740)
!1746 = !DILocation(line: 306, column: 23, scope: !1740)
!1747 = !DILocation(line: 306, column: 9, scope: !1740)
!1748 = !DILocation(line: 306, column: 19, scope: !1740)
!1749 = !DILocation(line: 307, column: 22, scope: !1740)
!1750 = !DILocation(line: 307, column: 24, scope: !1740)
!1751 = !DILocation(line: 307, column: 28, scope: !1740)
!1752 = !DILocation(line: 307, column: 21, scope: !1740)
!1753 = !DILocation(line: 307, column: 9, scope: !1740)
!1754 = !DILocation(line: 307, column: 19, scope: !1740)
!1755 = !DILocation(line: 308, column: 22, scope: !1740)
!1756 = !DILocation(line: 308, column: 24, scope: !1740)
!1757 = !DILocation(line: 308, column: 29, scope: !1740)
!1758 = !DILocation(line: 308, column: 21, scope: !1740)
!1759 = !DILocation(line: 308, column: 9, scope: !1740)
!1760 = !DILocation(line: 308, column: 19, scope: !1740)
!1761 = !DILocation(line: 309, column: 22, scope: !1740)
!1762 = !DILocation(line: 309, column: 24, scope: !1740)
!1763 = !DILocation(line: 309, column: 29, scope: !1740)
!1764 = !DILocation(line: 309, column: 21, scope: !1740)
!1765 = !DILocation(line: 309, column: 9, scope: !1740)
!1766 = !DILocation(line: 309, column: 19, scope: !1740)
!1767 = !DILocation(line: 310, column: 22, scope: !1740)
!1768 = !DILocation(line: 310, column: 24, scope: !1740)
!1769 = !DILocation(line: 310, column: 29, scope: !1740)
!1770 = !DILocation(line: 310, column: 21, scope: !1740)
!1771 = !DILocation(line: 310, column: 9, scope: !1740)
!1772 = !DILocation(line: 310, column: 19, scope: !1740)
!1773 = !DILocation(line: 311, column: 22, scope: !1740)
!1774 = !DILocation(line: 311, column: 24, scope: !1740)
!1775 = !DILocation(line: 311, column: 29, scope: !1740)
!1776 = !DILocation(line: 311, column: 21, scope: !1740)
!1777 = !DILocation(line: 311, column: 9, scope: !1740)
!1778 = !DILocation(line: 311, column: 19, scope: !1740)
!1779 = !DILocation(line: 312, column: 22, scope: !1740)
!1780 = !DILocation(line: 312, column: 24, scope: !1740)
!1781 = !DILocation(line: 312, column: 29, scope: !1740)
!1782 = !DILocation(line: 312, column: 21, scope: !1740)
!1783 = !DILocation(line: 312, column: 9, scope: !1740)
!1784 = !DILocation(line: 312, column: 19, scope: !1740)
!1785 = !DILocation(line: 313, column: 21, scope: !1740)
!1786 = !DILocation(line: 313, column: 23, scope: !1740)
!1787 = !DILocation(line: 313, column: 9, scope: !1740)
!1788 = !DILocation(line: 313, column: 19, scope: !1740)
!1789 = !DILocation(line: 314, column: 10, scope: !1740)
!1790 = !DILocation(line: 314, column: 17, scope: !1740)
!1791 = !DILocation(line: 316, column: 1, scope: !1582)
!1792 = distinct !DISubprogram(name: "lpPrepend", scope: !1, file: !1, line: 946, type: !1793, scopeLine: 946, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!35, !35, !35, !4}
!1795 = !DILocalVariable(name: "lp", arg: 1, scope: !1792, file: !1, line: 946, type: !35)
!1796 = !DILocation(line: 946, column: 41, scope: !1792)
!1797 = !DILocalVariable(name: "s", arg: 2, scope: !1792, file: !1, line: 946, type: !35)
!1798 = !DILocation(line: 946, column: 60, scope: !1792)
!1799 = !DILocalVariable(name: "slen", arg: 3, scope: !1792, file: !1, line: 946, type: !4)
!1800 = !DILocation(line: 946, column: 72, scope: !1792)
!1801 = !DILocalVariable(name: "p", scope: !1792, file: !1, line: 947, type: !35)
!1802 = !DILocation(line: 947, column: 20, scope: !1792)
!1803 = !DILocation(line: 947, column: 32, scope: !1792)
!1804 = !DILocation(line: 947, column: 24, scope: !1792)
!1805 = !DILocation(line: 948, column: 10, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 948, column: 9)
!1807 = !DILocation(line: 948, column: 9, scope: !1792)
!1808 = !DILocation(line: 948, column: 29, scope: !1806)
!1809 = !DILocation(line: 948, column: 33, scope: !1806)
!1810 = !DILocation(line: 948, column: 36, scope: !1806)
!1811 = !DILocation(line: 948, column: 20, scope: !1806)
!1812 = !DILocation(line: 948, column: 13, scope: !1806)
!1813 = !DILocation(line: 949, column: 21, scope: !1792)
!1814 = !DILocation(line: 949, column: 25, scope: !1792)
!1815 = !DILocation(line: 949, column: 34, scope: !1792)
!1816 = !DILocation(line: 949, column: 40, scope: !1792)
!1817 = !DILocation(line: 949, column: 12, scope: !1792)
!1818 = !DILocation(line: 949, column: 5, scope: !1792)
!1819 = !DILocation(line: 950, column: 1, scope: !1792)
!1820 = distinct !DISubprogram(name: "lpAppend", scope: !1, file: !1, line: 962, type: !1793, scopeLine: 962, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1821 = !DILocalVariable(name: "lp", arg: 1, scope: !1820, file: !1, line: 962, type: !35)
!1822 = !DILocation(line: 962, column: 40, scope: !1820)
!1823 = !DILocalVariable(name: "ele", arg: 2, scope: !1820, file: !1, line: 962, type: !35)
!1824 = !DILocation(line: 962, column: 59, scope: !1820)
!1825 = !DILocalVariable(name: "size", arg: 3, scope: !1820, file: !1, line: 962, type: !4)
!1826 = !DILocation(line: 962, column: 73, scope: !1820)
!1827 = !DILocalVariable(name: "listpack_bytes", scope: !1820, file: !1, line: 963, type: !10)
!1828 = !DILocation(line: 963, column: 14, scope: !1820)
!1829 = !DILocation(line: 963, column: 31, scope: !1820)
!1830 = !DILocalVariable(name: "eofptr", scope: !1820, file: !1, line: 964, type: !35)
!1831 = !DILocation(line: 964, column: 20, scope: !1820)
!1832 = !DILocation(line: 964, column: 29, scope: !1820)
!1833 = !DILocation(line: 964, column: 34, scope: !1820)
!1834 = !DILocation(line: 964, column: 32, scope: !1820)
!1835 = !DILocation(line: 964, column: 49, scope: !1820)
!1836 = !DILocation(line: 965, column: 21, scope: !1820)
!1837 = !DILocation(line: 965, column: 24, scope: !1820)
!1838 = !DILocation(line: 965, column: 33, scope: !1820)
!1839 = !DILocation(line: 965, column: 38, scope: !1820)
!1840 = !DILocation(line: 965, column: 12, scope: !1820)
!1841 = !DILocation(line: 965, column: 5, scope: !1820)
!1842 = distinct !DISubprogram(name: "lpPrependInteger", scope: !1, file: !1, line: 953, type: !1843, scopeLine: 953, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!35, !35, !20}
!1845 = !DILocalVariable(name: "lp", arg: 1, scope: !1842, file: !1, line: 953, type: !35)
!1846 = !DILocation(line: 953, column: 48, scope: !1842)
!1847 = !DILocalVariable(name: "lval", arg: 2, scope: !1842, file: !1, line: 953, type: !20)
!1848 = !DILocation(line: 953, column: 62, scope: !1842)
!1849 = !DILocalVariable(name: "p", scope: !1842, file: !1, line: 954, type: !35)
!1850 = !DILocation(line: 954, column: 20, scope: !1842)
!1851 = !DILocation(line: 954, column: 32, scope: !1842)
!1852 = !DILocation(line: 954, column: 24, scope: !1842)
!1853 = !DILocation(line: 955, column: 10, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 955, column: 9)
!1855 = !DILocation(line: 955, column: 9, scope: !1842)
!1856 = !DILocation(line: 955, column: 36, scope: !1854)
!1857 = !DILocation(line: 955, column: 40, scope: !1854)
!1858 = !DILocation(line: 955, column: 20, scope: !1854)
!1859 = !DILocation(line: 955, column: 13, scope: !1854)
!1860 = !DILocation(line: 956, column: 28, scope: !1842)
!1861 = !DILocation(line: 956, column: 32, scope: !1842)
!1862 = !DILocation(line: 956, column: 38, scope: !1842)
!1863 = !DILocation(line: 956, column: 12, scope: !1842)
!1864 = !DILocation(line: 956, column: 5, scope: !1842)
!1865 = !DILocation(line: 957, column: 1, scope: !1842)
!1866 = distinct !DISubprogram(name: "lpAppendInteger", scope: !1, file: !1, line: 969, type: !1843, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1867 = !DILocalVariable(name: "lp", arg: 1, scope: !1866, file: !1, line: 969, type: !35)
!1868 = !DILocation(line: 969, column: 47, scope: !1866)
!1869 = !DILocalVariable(name: "lval", arg: 2, scope: !1866, file: !1, line: 969, type: !20)
!1870 = !DILocation(line: 969, column: 61, scope: !1866)
!1871 = !DILocalVariable(name: "listpack_bytes", scope: !1866, file: !1, line: 970, type: !10)
!1872 = !DILocation(line: 970, column: 14, scope: !1866)
!1873 = !DILocation(line: 970, column: 31, scope: !1866)
!1874 = !DILocalVariable(name: "eofptr", scope: !1866, file: !1, line: 971, type: !35)
!1875 = !DILocation(line: 971, column: 20, scope: !1866)
!1876 = !DILocation(line: 971, column: 29, scope: !1866)
!1877 = !DILocation(line: 971, column: 34, scope: !1866)
!1878 = !DILocation(line: 971, column: 32, scope: !1866)
!1879 = !DILocation(line: 971, column: 49, scope: !1866)
!1880 = !DILocation(line: 972, column: 28, scope: !1866)
!1881 = !DILocation(line: 972, column: 32, scope: !1866)
!1882 = !DILocation(line: 972, column: 38, scope: !1866)
!1883 = !DILocation(line: 972, column: 12, scope: !1866)
!1884 = !DILocation(line: 972, column: 5, scope: !1866)
!1885 = distinct !DISubprogram(name: "lpReplace", scope: !1, file: !1, line: 978, type: !1886, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!35, !35, !1115, !35, !4}
!1888 = !DILocalVariable(name: "lp", arg: 1, scope: !1885, file: !1, line: 978, type: !35)
!1889 = !DILocation(line: 978, column: 41, scope: !1885)
!1890 = !DILocalVariable(name: "p", arg: 2, scope: !1885, file: !1, line: 978, type: !1115)
!1891 = !DILocation(line: 978, column: 61, scope: !1885)
!1892 = !DILocalVariable(name: "s", arg: 3, scope: !1885, file: !1, line: 978, type: !35)
!1893 = !DILocation(line: 978, column: 79, scope: !1885)
!1894 = !DILocalVariable(name: "slen", arg: 4, scope: !1885, file: !1, line: 978, type: !4)
!1895 = !DILocation(line: 978, column: 91, scope: !1885)
!1896 = !DILocation(line: 979, column: 21, scope: !1885)
!1897 = !DILocation(line: 979, column: 25, scope: !1885)
!1898 = !DILocation(line: 979, column: 34, scope: !1885)
!1899 = !DILocation(line: 979, column: 41, scope: !1885)
!1900 = !DILocation(line: 979, column: 40, scope: !1885)
!1901 = !DILocation(line: 979, column: 56, scope: !1885)
!1902 = !DILocation(line: 979, column: 12, scope: !1885)
!1903 = !DILocation(line: 979, column: 5, scope: !1885)
!1904 = distinct !DISubprogram(name: "lpReplaceInteger", scope: !1, file: !1, line: 986, type: !1905, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!35, !35, !1115, !20}
!1907 = !DILocalVariable(name: "lp", arg: 1, scope: !1904, file: !1, line: 986, type: !35)
!1908 = !DILocation(line: 986, column: 48, scope: !1904)
!1909 = !DILocalVariable(name: "p", arg: 2, scope: !1904, file: !1, line: 986, type: !1115)
!1910 = !DILocation(line: 986, column: 68, scope: !1904)
!1911 = !DILocalVariable(name: "lval", arg: 3, scope: !1904, file: !1, line: 986, type: !20)
!1912 = !DILocation(line: 986, column: 81, scope: !1904)
!1913 = !DILocation(line: 987, column: 28, scope: !1904)
!1914 = !DILocation(line: 987, column: 32, scope: !1904)
!1915 = !DILocation(line: 987, column: 39, scope: !1904)
!1916 = !DILocation(line: 987, column: 38, scope: !1904)
!1917 = !DILocation(line: 987, column: 54, scope: !1904)
!1918 = !DILocation(line: 987, column: 12, scope: !1904)
!1919 = !DILocation(line: 987, column: 5, scope: !1904)
!1920 = distinct !DISubprogram(name: "lpDelete", scope: !1, file: !1, line: 994, type: !1921, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!35, !35, !35, !1115}
!1923 = !DILocalVariable(name: "lp", arg: 1, scope: !1920, file: !1, line: 994, type: !35)
!1924 = !DILocation(line: 994, column: 40, scope: !1920)
!1925 = !DILocalVariable(name: "p", arg: 2, scope: !1920, file: !1, line: 994, type: !35)
!1926 = !DILocation(line: 994, column: 59, scope: !1920)
!1927 = !DILocalVariable(name: "newp", arg: 3, scope: !1920, file: !1, line: 994, type: !1115)
!1928 = !DILocation(line: 994, column: 78, scope: !1920)
!1929 = !DILocation(line: 995, column: 21, scope: !1920)
!1930 = !DILocation(line: 995, column: 36, scope: !1920)
!1931 = !DILocation(line: 995, column: 49, scope: !1920)
!1932 = !DILocation(line: 995, column: 12, scope: !1920)
!1933 = !DILocation(line: 995, column: 5, scope: !1920)
!1934 = distinct !DISubprogram(name: "lpDeleteRangeWithEntry", scope: !1, file: !1, line: 999, type: !1935, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!35, !35, !1115, !12}
!1937 = !DILocalVariable(name: "lp", arg: 1, scope: !1934, file: !1, line: 999, type: !35)
!1938 = !DILocation(line: 999, column: 54, scope: !1934)
!1939 = !DILocalVariable(name: "p", arg: 2, scope: !1934, file: !1, line: 999, type: !1115)
!1940 = !DILocation(line: 999, column: 74, scope: !1934)
!1941 = !DILocalVariable(name: "num", arg: 3, scope: !1934, file: !1, line: 999, type: !12)
!1942 = !DILocation(line: 999, column: 91, scope: !1934)
!1943 = !DILocalVariable(name: "bytes", scope: !1934, file: !1, line: 1000, type: !37)
!1944 = !DILocation(line: 1000, column: 12, scope: !1934)
!1945 = !DILocation(line: 1000, column: 28, scope: !1934)
!1946 = !DILocation(line: 1000, column: 20, scope: !1934)
!1947 = !DILocalVariable(name: "deleted", scope: !1934, file: !1, line: 1001, type: !12)
!1948 = !DILocation(line: 1001, column: 19, scope: !1934)
!1949 = !DILocalVariable(name: "eofptr", scope: !1934, file: !1, line: 1002, type: !35)
!1950 = !DILocation(line: 1002, column: 20, scope: !1934)
!1951 = !DILocation(line: 1002, column: 29, scope: !1934)
!1952 = !DILocation(line: 1002, column: 34, scope: !1934)
!1953 = !DILocation(line: 1002, column: 32, scope: !1934)
!1954 = !DILocation(line: 1002, column: 40, scope: !1934)
!1955 = !DILocalVariable(name: "first", scope: !1934, file: !1, line: 1003, type: !35)
!1956 = !DILocation(line: 1003, column: 20, scope: !1934)
!1957 = !DILocalVariable(name: "tail", scope: !1934, file: !1, line: 1003, type: !35)
!1958 = !DILocation(line: 1003, column: 28, scope: !1934)
!1959 = !DILocation(line: 1004, column: 21, scope: !1934)
!1960 = !DILocation(line: 1004, column: 20, scope: !1934)
!1961 = !DILocation(line: 1004, column: 18, scope: !1934)
!1962 = !DILocation(line: 1004, column: 11, scope: !1934)
!1963 = !DILocation(line: 1006, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1006, column: 9)
!1965 = !DILocation(line: 1006, column: 13, scope: !1964)
!1966 = !DILocation(line: 1006, column: 9, scope: !1934)
!1967 = !DILocation(line: 1006, column: 26, scope: !1964)
!1968 = !DILocation(line: 1006, column: 19, scope: !1964)
!1969 = !DILocation(line: 1011, column: 5, scope: !1934)
!1970 = !DILocation(line: 1011, column: 15, scope: !1934)
!1971 = !DILocation(line: 1012, column: 16, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1011, column: 19)
!1973 = !DILocation(line: 1013, column: 23, scope: !1972)
!1974 = !DILocation(line: 1013, column: 16, scope: !1972)
!1975 = !DILocation(line: 1013, column: 14, scope: !1972)
!1976 = !DILocation(line: 1014, column: 13, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1972, file: !1, line: 1014, column: 13)
!1978 = !DILocation(line: 1014, column: 21, scope: !1977)
!1979 = !DILocation(line: 1014, column: 13, scope: !1972)
!1980 = !DILocation(line: 1014, column: 32, scope: !1977)
!1981 = !DILocation(line: 1015, column: 28, scope: !1972)
!1982 = !DILocation(line: 1015, column: 32, scope: !1972)
!1983 = !DILocation(line: 1015, column: 39, scope: !1972)
!1984 = !DILocation(line: 1015, column: 9, scope: !1972)
!1985 = distinct !{!1985, !1969, !1986, !164}
!1986 = !DILocation(line: 1016, column: 5, scope: !1934)
!1987 = !DILocalVariable(name: "poff", scope: !1934, file: !1, line: 1020, type: !12)
!1988 = !DILocation(line: 1020, column: 19, scope: !1934)
!1989 = !DILocation(line: 1020, column: 26, scope: !1934)
!1990 = !DILocation(line: 1020, column: 32, scope: !1934)
!1991 = !DILocation(line: 1020, column: 31, scope: !1934)
!1992 = !DILocation(line: 1023, column: 13, scope: !1934)
!1993 = !DILocation(line: 1023, column: 20, scope: !1934)
!1994 = !DILocation(line: 1023, column: 26, scope: !1934)
!1995 = !DILocation(line: 1023, column: 35, scope: !1934)
!1996 = !DILocation(line: 1023, column: 33, scope: !1934)
!1997 = !DILocation(line: 1023, column: 40, scope: !1934)
!1998 = !DILocation(line: 1023, column: 5, scope: !1934)
!1999 = !DILocation(line: 1024, column: 5, scope: !1934)
!2000 = !DILocation(line: 1024, column: 5, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1024, column: 5)
!2002 = !DILocalVariable(name: "numele", scope: !1934, file: !1, line: 1025, type: !4)
!2003 = !DILocation(line: 1025, column: 14, scope: !1934)
!2004 = !DILocation(line: 1025, column: 23, scope: !1934)
!2005 = !DILocation(line: 1026, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1026, column: 9)
!2007 = !DILocation(line: 1026, column: 16, scope: !2006)
!2008 = !DILocation(line: 1026, column: 9, scope: !1934)
!2009 = !DILocation(line: 1027, column: 9, scope: !2006)
!2010 = !DILocation(line: 1027, column: 9, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 1027, column: 9)
!2012 = !DILocation(line: 1028, column: 24, scope: !1934)
!2013 = !DILocation(line: 1028, column: 10, scope: !1934)
!2014 = !DILocation(line: 1028, column: 8, scope: !1934)
!2015 = !DILocation(line: 1031, column: 10, scope: !1934)
!2016 = !DILocation(line: 1031, column: 13, scope: !1934)
!2017 = !DILocation(line: 1031, column: 12, scope: !1934)
!2018 = !DILocation(line: 1031, column: 6, scope: !1934)
!2019 = !DILocation(line: 1031, column: 8, scope: !1934)
!2020 = !DILocation(line: 1032, column: 11, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 1032, column: 9)
!2022 = !DILocation(line: 1032, column: 10, scope: !2021)
!2023 = !DILocation(line: 1032, column: 9, scope: !2021)
!2024 = !DILocation(line: 1032, column: 17, scope: !2021)
!2025 = !DILocation(line: 1032, column: 9, scope: !1934)
!2026 = !DILocation(line: 1032, column: 29, scope: !2021)
!2027 = !DILocation(line: 1032, column: 31, scope: !2021)
!2028 = !DILocation(line: 1032, column: 28, scope: !2021)
!2029 = !DILocation(line: 1034, column: 12, scope: !1934)
!2030 = !DILocation(line: 1034, column: 5, scope: !1934)
!2031 = !DILocation(line: 1035, column: 1, scope: !1934)
!2032 = distinct !DISubprogram(name: "lpDeleteRange", scope: !1, file: !1, line: 1038, type: !2033, scopeLine: 1038, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!35, !35, !16, !12}
!2035 = !DILocalVariable(name: "lp", arg: 1, scope: !2032, file: !1, line: 1038, type: !35)
!2036 = !DILocation(line: 1038, column: 45, scope: !2032)
!2037 = !DILocalVariable(name: "index", arg: 2, scope: !2032, file: !1, line: 1038, type: !16)
!2038 = !DILocation(line: 1038, column: 54, scope: !2032)
!2039 = !DILocalVariable(name: "num", arg: 3, scope: !2032, file: !1, line: 1038, type: !12)
!2040 = !DILocation(line: 1038, column: 75, scope: !2032)
!2041 = !DILocalVariable(name: "p", scope: !2032, file: !1, line: 1039, type: !35)
!2042 = !DILocation(line: 1039, column: 20, scope: !2032)
!2043 = !DILocalVariable(name: "numele", scope: !2032, file: !1, line: 1040, type: !4)
!2044 = !DILocation(line: 1040, column: 14, scope: !2032)
!2045 = !DILocation(line: 1040, column: 23, scope: !2032)
!2046 = !DILocation(line: 1042, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1042, column: 9)
!2048 = !DILocation(line: 1042, column: 13, scope: !2047)
!2049 = !DILocation(line: 1042, column: 9, scope: !2032)
!2050 = !DILocation(line: 1042, column: 26, scope: !2047)
!2051 = !DILocation(line: 1042, column: 19, scope: !2047)
!2052 = !DILocation(line: 1043, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1043, column: 9)
!2054 = !DILocation(line: 1043, column: 25, scope: !2053)
!2055 = !DILocation(line: 1043, column: 14, scope: !2053)
!2056 = !DILocation(line: 1043, column: 12, scope: !2053)
!2057 = !DILocation(line: 1043, column: 33, scope: !2053)
!2058 = !DILocation(line: 1043, column: 9, scope: !2032)
!2059 = !DILocation(line: 1043, column: 49, scope: !2053)
!2060 = !DILocation(line: 1043, column: 42, scope: !2053)
!2061 = !DILocation(line: 1052, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1052, column: 9)
!2063 = !DILocation(line: 1052, column: 16, scope: !2062)
!2064 = !DILocation(line: 1052, column: 41, scope: !2062)
!2065 = !DILocation(line: 1052, column: 44, scope: !2062)
!2066 = !DILocation(line: 1052, column: 50, scope: !2062)
!2067 = !DILocation(line: 1052, column: 9, scope: !2032)
!2068 = !DILocation(line: 1052, column: 69, scope: !2062)
!2069 = !DILocation(line: 1052, column: 63, scope: !2062)
!2070 = !DILocation(line: 1052, column: 78, scope: !2062)
!2071 = !DILocation(line: 1052, column: 76, scope: !2062)
!2072 = !DILocation(line: 1052, column: 61, scope: !2062)
!2073 = !DILocation(line: 1052, column: 55, scope: !2062)
!2074 = !DILocation(line: 1053, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2032, file: !1, line: 1053, column: 9)
!2076 = !DILocation(line: 1053, column: 16, scope: !2075)
!2077 = !DILocation(line: 1053, column: 41, scope: !2075)
!2078 = !DILocation(line: 1053, column: 45, scope: !2075)
!2079 = !DILocation(line: 1053, column: 69, scope: !2075)
!2080 = !DILocation(line: 1053, column: 52, scope: !2075)
!2081 = !DILocation(line: 1053, column: 79, scope: !2075)
!2082 = !DILocation(line: 1053, column: 76, scope: !2075)
!2083 = !DILocation(line: 1053, column: 9, scope: !2032)
!2084 = !DILocation(line: 1054, column: 9, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 1053, column: 84)
!2086 = !DILocation(line: 1054, column: 14, scope: !2085)
!2087 = !DILocation(line: 1055, column: 9, scope: !2085)
!2088 = !DILocation(line: 1055, column: 9, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1055, column: 9)
!2090 = !DILocation(line: 1056, column: 9, scope: !2085)
!2091 = !DILocation(line: 1056, column: 9, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 1056, column: 9)
!2093 = !DILocation(line: 1057, column: 28, scope: !2085)
!2094 = !DILocation(line: 1057, column: 14, scope: !2085)
!2095 = !DILocation(line: 1057, column: 12, scope: !2085)
!2096 = !DILocation(line: 1058, column: 5, scope: !2085)
!2097 = !DILocation(line: 1059, column: 37, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2075, file: !1, line: 1058, column: 12)
!2099 = !DILocation(line: 1059, column: 45, scope: !2098)
!2100 = !DILocation(line: 1059, column: 14, scope: !2098)
!2101 = !DILocation(line: 1059, column: 12, scope: !2098)
!2102 = !DILocation(line: 1062, column: 12, scope: !2032)
!2103 = !DILocation(line: 1062, column: 5, scope: !2032)
!2104 = !DILocation(line: 1063, column: 1, scope: !2032)
!2105 = distinct !DISubprogram(name: "lpSeek", scope: !1, file: !1, line: 1172, type: !2106, scopeLine: 1172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!35, !35, !16}
!2108 = !DILocalVariable(name: "lp", arg: 1, scope: !2105, file: !1, line: 1172, type: !35)
!2109 = !DILocation(line: 1172, column: 38, scope: !2105)
!2110 = !DILocalVariable(name: "index", arg: 2, scope: !2105, file: !1, line: 1172, type: !16)
!2111 = !DILocation(line: 1172, column: 47, scope: !2105)
!2112 = !DILocalVariable(name: "forward", scope: !2105, file: !1, line: 1173, type: !34)
!2113 = !DILocation(line: 1173, column: 9, scope: !2105)
!2114 = !DILocalVariable(name: "numele", scope: !2105, file: !1, line: 1179, type: !4)
!2115 = !DILocation(line: 1179, column: 14, scope: !2105)
!2116 = !DILocation(line: 1179, column: 23, scope: !2105)
!2117 = !DILocation(line: 1180, column: 9, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1180, column: 9)
!2119 = !DILocation(line: 1180, column: 16, scope: !2118)
!2120 = !DILocation(line: 1180, column: 9, scope: !2105)
!2121 = !DILocation(line: 1181, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1181, column: 13)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 1180, column: 42)
!2124 = !DILocation(line: 1181, column: 19, scope: !2122)
!2125 = !DILocation(line: 1181, column: 13, scope: !2123)
!2126 = !DILocation(line: 1181, column: 38, scope: !2122)
!2127 = !DILocation(line: 1181, column: 32, scope: !2122)
!2128 = !DILocation(line: 1181, column: 45, scope: !2122)
!2129 = !DILocation(line: 1181, column: 44, scope: !2122)
!2130 = !DILocation(line: 1181, column: 30, scope: !2122)
!2131 = !DILocation(line: 1181, column: 24, scope: !2122)
!2132 = !DILocation(line: 1182, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1182, column: 13)
!2134 = !DILocation(line: 1182, column: 19, scope: !2133)
!2135 = !DILocation(line: 1182, column: 13, scope: !2123)
!2136 = !DILocation(line: 1182, column: 24, scope: !2133)
!2137 = !DILocation(line: 1183, column: 13, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1183, column: 13)
!2139 = !DILocation(line: 1183, column: 28, scope: !2138)
!2140 = !DILocation(line: 1183, column: 22, scope: !2138)
!2141 = !DILocation(line: 1183, column: 19, scope: !2138)
!2142 = !DILocation(line: 1183, column: 13, scope: !2123)
!2143 = !DILocation(line: 1183, column: 36, scope: !2138)
!2144 = !DILocation(line: 1186, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2123, file: !1, line: 1186, column: 13)
!2146 = !DILocation(line: 1186, column: 27, scope: !2145)
!2147 = !DILocation(line: 1186, column: 21, scope: !2145)
!2148 = !DILocation(line: 1186, column: 33, scope: !2145)
!2149 = !DILocation(line: 1186, column: 19, scope: !2145)
!2150 = !DILocation(line: 1186, column: 13, scope: !2123)
!2151 = !DILocation(line: 1187, column: 21, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !1, line: 1186, column: 37)
!2153 = !DILocation(line: 1190, column: 22, scope: !2152)
!2154 = !DILocation(line: 1190, column: 19, scope: !2152)
!2155 = !DILocation(line: 1191, column: 9, scope: !2152)
!2156 = !DILocation(line: 1192, column: 5, scope: !2123)
!2157 = !DILocation(line: 1195, column: 13, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 1195, column: 13)
!2159 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 1192, column: 12)
!2160 = !DILocation(line: 1195, column: 19, scope: !2158)
!2161 = !DILocation(line: 1195, column: 13, scope: !2159)
!2162 = !DILocation(line: 1195, column: 32, scope: !2158)
!2163 = !DILocation(line: 1195, column: 24, scope: !2158)
!2164 = !DILocation(line: 1199, column: 9, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1199, column: 9)
!2166 = !DILocation(line: 1199, column: 9, scope: !2105)
!2167 = !DILocalVariable(name: "ele", scope: !2168, file: !1, line: 1200, type: !35)
!2168 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 1199, column: 18)
!2169 = !DILocation(line: 1200, column: 24, scope: !2168)
!2170 = !DILocation(line: 1200, column: 38, scope: !2168)
!2171 = !DILocation(line: 1200, column: 30, scope: !2168)
!2172 = !DILocation(line: 1201, column: 9, scope: !2168)
!2173 = !DILocation(line: 1201, column: 16, scope: !2168)
!2174 = !DILocation(line: 1201, column: 22, scope: !2168)
!2175 = !DILocation(line: 1201, column: 26, scope: !2168)
!2176 = !DILocation(line: 1201, column: 29, scope: !2168)
!2177 = !DILocation(line: 0, scope: !2168)
!2178 = !DILocation(line: 1202, column: 26, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2168, file: !1, line: 1201, column: 34)
!2180 = !DILocation(line: 1202, column: 29, scope: !2179)
!2181 = !DILocation(line: 1202, column: 19, scope: !2179)
!2182 = !DILocation(line: 1202, column: 17, scope: !2179)
!2183 = !DILocation(line: 1203, column: 18, scope: !2179)
!2184 = distinct !{!2184, !2172, !2185, !164}
!2185 = !DILocation(line: 1204, column: 9, scope: !2168)
!2186 = !DILocation(line: 1205, column: 16, scope: !2168)
!2187 = !DILocation(line: 1205, column: 9, scope: !2168)
!2188 = !DILocalVariable(name: "ele", scope: !2189, file: !1, line: 1207, type: !35)
!2189 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 1206, column: 12)
!2190 = !DILocation(line: 1207, column: 24, scope: !2189)
!2191 = !DILocation(line: 1207, column: 37, scope: !2189)
!2192 = !DILocation(line: 1207, column: 30, scope: !2189)
!2193 = !DILocation(line: 1208, column: 9, scope: !2189)
!2194 = !DILocation(line: 1208, column: 16, scope: !2189)
!2195 = !DILocation(line: 1208, column: 22, scope: !2189)
!2196 = !DILocation(line: 1208, column: 27, scope: !2189)
!2197 = !DILocation(line: 1208, column: 30, scope: !2189)
!2198 = !DILocation(line: 0, scope: !2189)
!2199 = !DILocation(line: 1209, column: 26, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !1, line: 1208, column: 35)
!2201 = !DILocation(line: 1209, column: 29, scope: !2200)
!2202 = !DILocation(line: 1209, column: 19, scope: !2200)
!2203 = !DILocation(line: 1209, column: 17, scope: !2200)
!2204 = !DILocation(line: 1210, column: 18, scope: !2200)
!2205 = distinct !{!2205, !2193, !2206, !164}
!2206 = !DILocation(line: 1211, column: 9, scope: !2189)
!2207 = !DILocation(line: 1212, column: 16, scope: !2189)
!2208 = !DILocation(line: 1212, column: 9, scope: !2189)
!2209 = !DILocation(line: 1214, column: 1, scope: !2105)
!2210 = distinct !DISubprogram(name: "lpMerge", scope: !1, file: !1, line: 1080, type: !2211, scopeLine: 1080, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!35, !1115, !1115}
!2213 = !DILocalVariable(name: "first", arg: 1, scope: !2210, file: !1, line: 1080, type: !1115)
!2214 = !DILocation(line: 1080, column: 40, scope: !2210)
!2215 = !DILocalVariable(name: "second", arg: 2, scope: !2210, file: !1, line: 1080, type: !1115)
!2216 = !DILocation(line: 1080, column: 63, scope: !2210)
!2217 = !DILocation(line: 1082, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1082, column: 9)
!2219 = !DILocation(line: 1082, column: 15, scope: !2218)
!2220 = !DILocation(line: 1082, column: 23, scope: !2218)
!2221 = !DILocation(line: 1082, column: 27, scope: !2218)
!2222 = !DILocation(line: 1082, column: 26, scope: !2218)
!2223 = !DILocation(line: 1082, column: 33, scope: !2218)
!2224 = !DILocation(line: 1082, column: 41, scope: !2218)
!2225 = !DILocation(line: 1082, column: 44, scope: !2218)
!2226 = !DILocation(line: 1082, column: 51, scope: !2218)
!2227 = !DILocation(line: 1082, column: 59, scope: !2218)
!2228 = !DILocation(line: 1082, column: 63, scope: !2218)
!2229 = !DILocation(line: 1082, column: 62, scope: !2218)
!2230 = !DILocation(line: 1082, column: 70, scope: !2218)
!2231 = !DILocation(line: 1082, column: 9, scope: !2210)
!2232 = !DILocation(line: 1083, column: 9, scope: !2218)
!2233 = !DILocation(line: 1086, column: 10, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1086, column: 9)
!2235 = !DILocation(line: 1086, column: 9, scope: !2234)
!2236 = !DILocation(line: 1086, column: 20, scope: !2234)
!2237 = !DILocation(line: 1086, column: 19, scope: !2234)
!2238 = !DILocation(line: 1086, column: 16, scope: !2234)
!2239 = !DILocation(line: 1086, column: 9, scope: !2210)
!2240 = !DILocation(line: 1087, column: 9, scope: !2234)
!2241 = !DILocalVariable(name: "first_bytes", scope: !2210, file: !1, line: 1089, type: !37)
!2242 = !DILocation(line: 1089, column: 12, scope: !2210)
!2243 = !DILocation(line: 1089, column: 35, scope: !2210)
!2244 = !DILocation(line: 1089, column: 34, scope: !2210)
!2245 = !DILocation(line: 1089, column: 26, scope: !2210)
!2246 = !DILocalVariable(name: "first_len", scope: !2210, file: !1, line: 1090, type: !12)
!2247 = !DILocation(line: 1090, column: 19, scope: !2210)
!2248 = !DILocation(line: 1090, column: 41, scope: !2210)
!2249 = !DILocation(line: 1090, column: 40, scope: !2210)
!2250 = !DILocation(line: 1090, column: 31, scope: !2210)
!2251 = !DILocalVariable(name: "second_bytes", scope: !2210, file: !1, line: 1092, type: !37)
!2252 = !DILocation(line: 1092, column: 12, scope: !2210)
!2253 = !DILocation(line: 1092, column: 36, scope: !2210)
!2254 = !DILocation(line: 1092, column: 35, scope: !2210)
!2255 = !DILocation(line: 1092, column: 27, scope: !2210)
!2256 = !DILocalVariable(name: "second_len", scope: !2210, file: !1, line: 1093, type: !12)
!2257 = !DILocation(line: 1093, column: 19, scope: !2210)
!2258 = !DILocation(line: 1093, column: 42, scope: !2210)
!2259 = !DILocation(line: 1093, column: 41, scope: !2210)
!2260 = !DILocation(line: 1093, column: 32, scope: !2210)
!2261 = !DILocalVariable(name: "append", scope: !2210, file: !1, line: 1095, type: !34)
!2262 = !DILocation(line: 1095, column: 9, scope: !2210)
!2263 = !DILocalVariable(name: "source", scope: !2210, file: !1, line: 1096, type: !35)
!2264 = !DILocation(line: 1096, column: 20, scope: !2210)
!2265 = !DILocalVariable(name: "target", scope: !2210, file: !1, line: 1096, type: !35)
!2266 = !DILocation(line: 1096, column: 29, scope: !2210)
!2267 = !DILocalVariable(name: "target_bytes", scope: !2210, file: !1, line: 1097, type: !37)
!2268 = !DILocation(line: 1097, column: 12, scope: !2210)
!2269 = !DILocalVariable(name: "source_bytes", scope: !2210, file: !1, line: 1097, type: !37)
!2270 = !DILocation(line: 1097, column: 26, scope: !2210)
!2271 = !DILocation(line: 1101, column: 9, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1101, column: 9)
!2273 = !DILocation(line: 1101, column: 24, scope: !2272)
!2274 = !DILocation(line: 1101, column: 21, scope: !2272)
!2275 = !DILocation(line: 1101, column: 9, scope: !2210)
!2276 = !DILocation(line: 1103, column: 19, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 1101, column: 38)
!2278 = !DILocation(line: 1103, column: 18, scope: !2277)
!2279 = !DILocation(line: 1103, column: 16, scope: !2277)
!2280 = !DILocation(line: 1104, column: 24, scope: !2277)
!2281 = !DILocation(line: 1104, column: 22, scope: !2277)
!2282 = !DILocation(line: 1105, column: 19, scope: !2277)
!2283 = !DILocation(line: 1105, column: 18, scope: !2277)
!2284 = !DILocation(line: 1105, column: 16, scope: !2277)
!2285 = !DILocation(line: 1106, column: 24, scope: !2277)
!2286 = !DILocation(line: 1106, column: 22, scope: !2277)
!2287 = !DILocation(line: 1107, column: 16, scope: !2277)
!2288 = !DILocation(line: 1108, column: 5, scope: !2277)
!2289 = !DILocation(line: 1110, column: 19, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2272, file: !1, line: 1108, column: 12)
!2291 = !DILocation(line: 1110, column: 18, scope: !2290)
!2292 = !DILocation(line: 1110, column: 16, scope: !2290)
!2293 = !DILocation(line: 1111, column: 24, scope: !2290)
!2294 = !DILocation(line: 1111, column: 22, scope: !2290)
!2295 = !DILocation(line: 1112, column: 19, scope: !2290)
!2296 = !DILocation(line: 1112, column: 18, scope: !2290)
!2297 = !DILocation(line: 1112, column: 16, scope: !2290)
!2298 = !DILocation(line: 1113, column: 24, scope: !2290)
!2299 = !DILocation(line: 1113, column: 22, scope: !2290)
!2300 = !DILocation(line: 1114, column: 16, scope: !2290)
!2301 = !DILocalVariable(name: "lpbytes", scope: !2210, file: !1, line: 1118, type: !17)
!2302 = !DILocation(line: 1118, column: 24, scope: !2210)
!2303 = !DILocation(line: 1118, column: 54, scope: !2210)
!2304 = !DILocation(line: 1118, column: 68, scope: !2210)
!2305 = !DILocation(line: 1118, column: 66, scope: !2210)
!2306 = !DILocation(line: 1118, column: 81, scope: !2210)
!2307 = !DILocation(line: 1118, column: 95, scope: !2210)
!2308 = !DILocation(line: 1119, column: 5, scope: !2210)
!2309 = !DILocalVariable(name: "lplength", scope: !2210, file: !1, line: 1120, type: !12)
!2310 = !DILocation(line: 1120, column: 19, scope: !2210)
!2311 = !DILocation(line: 1120, column: 30, scope: !2210)
!2312 = !DILocation(line: 1120, column: 42, scope: !2210)
!2313 = !DILocation(line: 1120, column: 40, scope: !2210)
!2314 = !DILocation(line: 1123, column: 16, scope: !2210)
!2315 = !DILocation(line: 1123, column: 25, scope: !2210)
!2316 = !DILocation(line: 1123, column: 40, scope: !2210)
!2317 = !DILocation(line: 1123, column: 14, scope: !2210)
!2318 = !DILocation(line: 1126, column: 23, scope: !2210)
!2319 = !DILocation(line: 1126, column: 31, scope: !2210)
!2320 = !DILocation(line: 1126, column: 14, scope: !2210)
!2321 = !DILocation(line: 1126, column: 12, scope: !2210)
!2322 = !DILocation(line: 1127, column: 9, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1127, column: 9)
!2324 = !DILocation(line: 1127, column: 9, scope: !2210)
!2325 = !DILocation(line: 1131, column: 16, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 1127, column: 17)
!2327 = !DILocation(line: 1131, column: 25, scope: !2326)
!2328 = !DILocation(line: 1131, column: 23, scope: !2326)
!2329 = !DILocation(line: 1131, column: 38, scope: !2326)
!2330 = !DILocation(line: 1132, column: 16, scope: !2326)
!2331 = !DILocation(line: 1132, column: 23, scope: !2326)
!2332 = !DILocation(line: 1133, column: 16, scope: !2326)
!2333 = !DILocation(line: 1133, column: 29, scope: !2326)
!2334 = !DILocation(line: 1131, column: 9, scope: !2326)
!2335 = !DILocation(line: 1134, column: 5, scope: !2326)
!2336 = !DILocation(line: 1139, column: 17, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2323, file: !1, line: 1134, column: 12)
!2338 = !DILocation(line: 1139, column: 26, scope: !2337)
!2339 = !DILocation(line: 1139, column: 24, scope: !2337)
!2340 = !DILocation(line: 1139, column: 39, scope: !2337)
!2341 = !DILocation(line: 1140, column: 17, scope: !2337)
!2342 = !DILocation(line: 1140, column: 24, scope: !2337)
!2343 = !DILocation(line: 1141, column: 17, scope: !2337)
!2344 = !DILocation(line: 1141, column: 30, scope: !2337)
!2345 = !DILocation(line: 1139, column: 9, scope: !2337)
!2346 = !DILocation(line: 1142, column: 16, scope: !2337)
!2347 = !DILocation(line: 1142, column: 24, scope: !2337)
!2348 = !DILocation(line: 1142, column: 32, scope: !2337)
!2349 = !DILocation(line: 1142, column: 45, scope: !2337)
!2350 = !DILocation(line: 1142, column: 9, scope: !2337)
!2351 = !DILocation(line: 1145, column: 5, scope: !2210)
!2352 = !DILocation(line: 1145, column: 5, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1145, column: 5)
!2354 = !DILocation(line: 1146, column: 5, scope: !2210)
!2355 = !DILocation(line: 1146, column: 5, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1146, column: 5)
!2357 = !DILocation(line: 1149, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2210, file: !1, line: 1149, column: 9)
!2359 = !DILocation(line: 1149, column: 9, scope: !2210)
!2360 = !DILocation(line: 1150, column: 16, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 1149, column: 17)
!2362 = !DILocation(line: 1150, column: 15, scope: !2361)
!2363 = !DILocation(line: 1150, column: 9, scope: !2361)
!2364 = !DILocation(line: 1151, column: 10, scope: !2361)
!2365 = !DILocation(line: 1151, column: 17, scope: !2361)
!2366 = !DILocation(line: 1152, column: 18, scope: !2361)
!2367 = !DILocation(line: 1152, column: 10, scope: !2361)
!2368 = !DILocation(line: 1152, column: 16, scope: !2361)
!2369 = !DILocation(line: 1153, column: 5, scope: !2361)
!2370 = !DILocation(line: 1154, column: 16, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2358, file: !1, line: 1153, column: 12)
!2372 = !DILocation(line: 1154, column: 15, scope: !2371)
!2373 = !DILocation(line: 1154, column: 9, scope: !2371)
!2374 = !DILocation(line: 1155, column: 10, scope: !2371)
!2375 = !DILocation(line: 1155, column: 16, scope: !2371)
!2376 = !DILocation(line: 1156, column: 19, scope: !2371)
!2377 = !DILocation(line: 1156, column: 10, scope: !2371)
!2378 = !DILocation(line: 1156, column: 17, scope: !2371)
!2379 = !DILocation(line: 1159, column: 12, scope: !2210)
!2380 = !DILocation(line: 1159, column: 5, scope: !2210)
!2381 = !DILocation(line: 1160, column: 1, scope: !2210)
!2382 = distinct !DISubprogram(name: "lpValidateFirst", scope: !1, file: !1, line: 1217, type: !239, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2383 = !DILocalVariable(name: "lp", arg: 1, scope: !2382, file: !1, line: 1217, type: !35)
!2384 = !DILocation(line: 1217, column: 47, scope: !2382)
!2385 = !DILocalVariable(name: "p", scope: !2382, file: !1, line: 1218, type: !35)
!2386 = !DILocation(line: 1218, column: 20, scope: !2382)
!2387 = !DILocation(line: 1218, column: 24, scope: !2382)
!2388 = !DILocation(line: 1218, column: 27, scope: !2382)
!2389 = !DILocation(line: 1219, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2382, file: !1, line: 1219, column: 9)
!2391 = !DILocation(line: 1219, column: 14, scope: !2390)
!2392 = !DILocation(line: 1219, column: 9, scope: !2382)
!2393 = !DILocation(line: 1219, column: 25, scope: !2390)
!2394 = !DILocation(line: 1220, column: 12, scope: !2382)
!2395 = !DILocation(line: 1220, column: 5, scope: !2382)
!2396 = !DILocation(line: 1221, column: 1, scope: !2382)
!2397 = distinct !DISubprogram(name: "lpValidateNext", scope: !1, file: !1, line: 1226, type: !2398, scopeLine: 1226, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!34, !35, !1115, !37}
!2400 = !DILocalVariable(name: "lp", arg: 1, scope: !2397, file: !1, line: 1226, type: !35)
!2401 = !DILocation(line: 1226, column: 35, scope: !2397)
!2402 = !DILocalVariable(name: "pp", arg: 2, scope: !2397, file: !1, line: 1226, type: !1115)
!2403 = !DILocation(line: 1226, column: 55, scope: !2397)
!2404 = !DILocalVariable(name: "lpbytes", arg: 3, scope: !2397, file: !1, line: 1226, type: !37)
!2405 = !DILocation(line: 1226, column: 66, scope: !2397)
!2406 = !DILocalVariable(name: "p", scope: !2397, file: !1, line: 1230, type: !35)
!2407 = !DILocation(line: 1230, column: 20, scope: !2397)
!2408 = !DILocation(line: 1230, column: 25, scope: !2397)
!2409 = !DILocation(line: 1230, column: 24, scope: !2397)
!2410 = !DILocation(line: 1231, column: 10, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1231, column: 9)
!2412 = !DILocation(line: 1231, column: 9, scope: !2397)
!2413 = !DILocation(line: 1232, column: 9, scope: !2411)
!2414 = !DILocation(line: 1235, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1235, column: 9)
!2416 = !DILocation(line: 1235, column: 9, scope: !2397)
!2417 = !DILocation(line: 1236, column: 9, scope: !2415)
!2418 = !DILocation(line: 1238, column: 10, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1238, column: 9)
!2420 = !DILocation(line: 1238, column: 9, scope: !2419)
!2421 = !DILocation(line: 1238, column: 12, scope: !2419)
!2422 = !DILocation(line: 1238, column: 9, scope: !2397)
!2423 = !DILocation(line: 1239, column: 10, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !1, line: 1238, column: 23)
!2425 = !DILocation(line: 1239, column: 13, scope: !2424)
!2426 = !DILocation(line: 1240, column: 9, scope: !2424)
!2427 = !DILocalVariable(name: "lenbytes", scope: !2397, file: !1, line: 1244, type: !4)
!2428 = !DILocation(line: 1244, column: 14, scope: !2397)
!2429 = !DILocation(line: 1244, column: 51, scope: !2397)
!2430 = !DILocation(line: 1244, column: 25, scope: !2397)
!2431 = !DILocation(line: 1245, column: 10, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1245, column: 9)
!2433 = !DILocation(line: 1245, column: 9, scope: !2397)
!2434 = !DILocation(line: 1246, column: 9, scope: !2432)
!2435 = !DILocation(line: 1249, column: 9, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1249, column: 9)
!2437 = !DILocation(line: 1249, column: 9, scope: !2397)
!2438 = !DILocation(line: 1250, column: 9, scope: !2436)
!2439 = !DILocalVariable(name: "entrylen", scope: !2397, file: !1, line: 1253, type: !12)
!2440 = !DILocation(line: 1253, column: 19, scope: !2397)
!2441 = !DILocation(line: 1253, column: 57, scope: !2397)
!2442 = !DILocation(line: 1253, column: 30, scope: !2397)
!2443 = !DILocalVariable(name: "encodedBacklen", scope: !2397, file: !1, line: 1254, type: !12)
!2444 = !DILocation(line: 1254, column: 19, scope: !2397)
!2445 = !DILocation(line: 1254, column: 57, scope: !2397)
!2446 = !DILocation(line: 1254, column: 36, scope: !2397)
!2447 = !DILocation(line: 1255, column: 17, scope: !2397)
!2448 = !DILocation(line: 1255, column: 14, scope: !2397)
!2449 = !DILocation(line: 1258, column: 9, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1258, column: 9)
!2451 = !DILocation(line: 1258, column: 9, scope: !2397)
!2452 = !DILocation(line: 1259, column: 9, scope: !2450)
!2453 = !DILocation(line: 1262, column: 10, scope: !2397)
!2454 = !DILocation(line: 1262, column: 7, scope: !2397)
!2455 = !DILocalVariable(name: "prevlen", scope: !2397, file: !1, line: 1265, type: !10)
!2456 = !DILocation(line: 1265, column: 14, scope: !2397)
!2457 = !DILocation(line: 1265, column: 40, scope: !2397)
!2458 = !DILocation(line: 1265, column: 41, scope: !2397)
!2459 = !DILocation(line: 1265, column: 24, scope: !2397)
!2460 = !DILocation(line: 1266, column: 9, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2397, file: !1, line: 1266, column: 9)
!2462 = !DILocation(line: 1266, column: 19, scope: !2461)
!2463 = !DILocation(line: 1266, column: 17, scope: !2461)
!2464 = !DILocation(line: 1266, column: 37, scope: !2461)
!2465 = !DILocation(line: 1266, column: 34, scope: !2461)
!2466 = !DILocation(line: 1266, column: 9, scope: !2397)
!2467 = !DILocation(line: 1267, column: 9, scope: !2461)
!2468 = !DILocation(line: 1269, column: 11, scope: !2397)
!2469 = !DILocation(line: 1269, column: 6, scope: !2397)
!2470 = !DILocation(line: 1269, column: 9, scope: !2397)
!2471 = !DILocation(line: 1270, column: 5, scope: !2397)
!2472 = !DILocation(line: 1272, column: 1, scope: !2397)
!2473 = distinct !DISubprogram(name: "lpCurrentEncodedSizeBytes", scope: !1, file: !1, line: 446, type: !273, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2474 = !DILocalVariable(name: "p", arg: 1, scope: !2473, file: !1, line: 446, type: !35)
!2475 = !DILocation(line: 446, column: 65, scope: !2473)
!2476 = !DILocation(line: 447, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 447, column: 9)
!2478 = !DILocation(line: 447, column: 9, scope: !2473)
!2479 = !DILocation(line: 447, column: 41, scope: !2477)
!2480 = !DILocation(line: 448, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 448, column: 9)
!2482 = !DILocation(line: 448, column: 9, scope: !2473)
!2483 = !DILocation(line: 448, column: 40, scope: !2481)
!2484 = !DILocation(line: 449, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 449, column: 9)
!2486 = !DILocation(line: 449, column: 9, scope: !2473)
!2487 = !DILocation(line: 449, column: 41, scope: !2485)
!2488 = !DILocation(line: 450, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 450, column: 9)
!2490 = !DILocation(line: 450, column: 9, scope: !2473)
!2491 = !DILocation(line: 450, column: 41, scope: !2489)
!2492 = !DILocation(line: 451, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 451, column: 9)
!2494 = !DILocation(line: 451, column: 9, scope: !2473)
!2495 = !DILocation(line: 451, column: 41, scope: !2493)
!2496 = !DILocation(line: 452, column: 9, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 452, column: 9)
!2498 = !DILocation(line: 452, column: 9, scope: !2473)
!2499 = !DILocation(line: 452, column: 41, scope: !2497)
!2500 = !DILocation(line: 453, column: 9, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 453, column: 9)
!2502 = !DILocation(line: 453, column: 9, scope: !2473)
!2503 = !DILocation(line: 453, column: 41, scope: !2501)
!2504 = !DILocation(line: 454, column: 9, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 454, column: 9)
!2506 = !DILocation(line: 454, column: 9, scope: !2473)
!2507 = !DILocation(line: 454, column: 41, scope: !2505)
!2508 = !DILocation(line: 455, column: 9, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 455, column: 9)
!2510 = !DILocation(line: 455, column: 9, scope: !2473)
!2511 = !DILocation(line: 455, column: 41, scope: !2509)
!2512 = !DILocation(line: 456, column: 9, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2473, file: !1, line: 456, column: 9)
!2514 = !DILocation(line: 456, column: 14, scope: !2513)
!2515 = !DILocation(line: 456, column: 9, scope: !2473)
!2516 = !DILocation(line: 456, column: 25, scope: !2513)
!2517 = !DILocation(line: 457, column: 5, scope: !2473)
!2518 = !DILocation(line: 458, column: 1, scope: !2473)
!2519 = distinct !DISubprogram(name: "lpValidateIntegrity", scope: !1, file: !1, line: 1282, type: !2520, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!34, !35, !37, !34, !2522, !9}
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "listpackValidateEntryCB", file: !2523, line: 84, baseType: !2524)
!2523 = !DIFile(filename: "./listpack.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!34, !35, !8, !9}
!2527 = !DILocalVariable(name: "lp", arg: 1, scope: !2519, file: !1, line: 1282, type: !35)
!2528 = !DILocation(line: 1282, column: 40, scope: !2519)
!2529 = !DILocalVariable(name: "size", arg: 2, scope: !2519, file: !1, line: 1282, type: !37)
!2530 = !DILocation(line: 1282, column: 51, scope: !2519)
!2531 = !DILocalVariable(name: "deep", arg: 3, scope: !2519, file: !1, line: 1282, type: !34)
!2532 = !DILocation(line: 1282, column: 61, scope: !2519)
!2533 = !DILocalVariable(name: "entry_cb", arg: 4, scope: !2519, file: !1, line: 1283, type: !2522)
!2534 = !DILocation(line: 1283, column: 49, scope: !2519)
!2535 = !DILocalVariable(name: "cb_userdata", arg: 5, scope: !2519, file: !1, line: 1283, type: !9)
!2536 = !DILocation(line: 1283, column: 65, scope: !2519)
!2537 = !DILocation(line: 1285, column: 9, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1285, column: 9)
!2539 = !DILocation(line: 1285, column: 14, scope: !2538)
!2540 = !DILocation(line: 1285, column: 9, scope: !2519)
!2541 = !DILocation(line: 1286, column: 9, scope: !2538)
!2542 = !DILocalVariable(name: "bytes", scope: !2519, file: !1, line: 1289, type: !37)
!2543 = !DILocation(line: 1289, column: 12, scope: !2519)
!2544 = !DILocation(line: 1289, column: 20, scope: !2519)
!2545 = !DILocation(line: 1290, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1290, column: 9)
!2547 = !DILocation(line: 1290, column: 18, scope: !2546)
!2548 = !DILocation(line: 1290, column: 15, scope: !2546)
!2549 = !DILocation(line: 1290, column: 9, scope: !2519)
!2550 = !DILocation(line: 1291, column: 9, scope: !2546)
!2551 = !DILocation(line: 1294, column: 9, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1294, column: 9)
!2553 = !DILocation(line: 1294, column: 12, scope: !2552)
!2554 = !DILocation(line: 1294, column: 16, scope: !2552)
!2555 = !DILocation(line: 1294, column: 20, scope: !2552)
!2556 = !DILocation(line: 1294, column: 9, scope: !2519)
!2557 = !DILocation(line: 1295, column: 9, scope: !2552)
!2558 = !DILocation(line: 1297, column: 10, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1297, column: 9)
!2560 = !DILocation(line: 1297, column: 9, scope: !2519)
!2561 = !DILocation(line: 1298, column: 9, scope: !2559)
!2562 = !DILocalVariable(name: "count", scope: !2519, file: !1, line: 1301, type: !4)
!2563 = !DILocation(line: 1301, column: 14, scope: !2519)
!2564 = !DILocalVariable(name: "numele", scope: !2519, file: !1, line: 1302, type: !4)
!2565 = !DILocation(line: 1302, column: 14, scope: !2519)
!2566 = !DILocation(line: 1302, column: 23, scope: !2519)
!2567 = !DILocalVariable(name: "p", scope: !2519, file: !1, line: 1303, type: !35)
!2568 = !DILocation(line: 1303, column: 20, scope: !2519)
!2569 = !DILocation(line: 1303, column: 24, scope: !2519)
!2570 = !DILocation(line: 1303, column: 27, scope: !2519)
!2571 = !DILocation(line: 1304, column: 5, scope: !2519)
!2572 = !DILocation(line: 1304, column: 11, scope: !2519)
!2573 = !DILocation(line: 1304, column: 13, scope: !2519)
!2574 = !DILocation(line: 1304, column: 16, scope: !2519)
!2575 = !DILocation(line: 1304, column: 21, scope: !2519)
!2576 = !DILocation(line: 0, scope: !2519)
!2577 = !DILocalVariable(name: "prev", scope: !2578, file: !1, line: 1305, type: !35)
!2578 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1304, column: 32)
!2579 = !DILocation(line: 1305, column: 24, scope: !2578)
!2580 = !DILocation(line: 1305, column: 31, scope: !2578)
!2581 = !DILocation(line: 1309, column: 29, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2578, file: !1, line: 1309, column: 13)
!2583 = !DILocation(line: 1309, column: 37, scope: !2582)
!2584 = !DILocation(line: 1309, column: 14, scope: !2582)
!2585 = !DILocation(line: 1309, column: 13, scope: !2578)
!2586 = !DILocation(line: 1310, column: 13, scope: !2582)
!2587 = !DILocation(line: 1313, column: 13, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2578, file: !1, line: 1313, column: 13)
!2589 = !DILocation(line: 1313, column: 22, scope: !2588)
!2590 = !DILocation(line: 1313, column: 26, scope: !2588)
!2591 = !DILocation(line: 1313, column: 35, scope: !2588)
!2592 = !DILocation(line: 1313, column: 41, scope: !2588)
!2593 = !DILocation(line: 1313, column: 49, scope: !2588)
!2594 = !DILocation(line: 1313, column: 13, scope: !2578)
!2595 = !DILocation(line: 1314, column: 13, scope: !2588)
!2596 = !DILocation(line: 1316, column: 14, scope: !2578)
!2597 = distinct !{!2597, !2571, !2598, !164}
!2598 = !DILocation(line: 1317, column: 5, scope: !2519)
!2599 = !DILocation(line: 1320, column: 9, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1320, column: 9)
!2601 = !DILocation(line: 1320, column: 14, scope: !2600)
!2602 = !DILocation(line: 1320, column: 19, scope: !2600)
!2603 = !DILocation(line: 1320, column: 17, scope: !2600)
!2604 = !DILocation(line: 1320, column: 24, scope: !2600)
!2605 = !DILocation(line: 1320, column: 11, scope: !2600)
!2606 = !DILocation(line: 1320, column: 9, scope: !2519)
!2607 = !DILocation(line: 1321, column: 9, scope: !2600)
!2608 = !DILocation(line: 1324, column: 9, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 1324, column: 9)
!2610 = !DILocation(line: 1324, column: 16, scope: !2609)
!2611 = !DILocation(line: 1324, column: 41, scope: !2609)
!2612 = !DILocation(line: 1324, column: 44, scope: !2609)
!2613 = !DILocation(line: 1324, column: 54, scope: !2609)
!2614 = !DILocation(line: 1324, column: 51, scope: !2609)
!2615 = !DILocation(line: 1324, column: 9, scope: !2519)
!2616 = !DILocation(line: 1325, column: 9, scope: !2609)
!2617 = !DILocation(line: 1327, column: 5, scope: !2519)
!2618 = !DILocation(line: 1328, column: 1, scope: !2519)
!2619 = distinct !DISubprogram(name: "lpCompare", scope: !1, file: !1, line: 1332, type: !2620, scopeLine: 1332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!8, !35, !35, !4}
!2622 = !DILocalVariable(name: "p", arg: 1, scope: !2619, file: !1, line: 1332, type: !35)
!2623 = !DILocation(line: 1332, column: 39, scope: !2619)
!2624 = !DILocalVariable(name: "s", arg: 2, scope: !2619, file: !1, line: 1332, type: !35)
!2625 = !DILocation(line: 1332, column: 57, scope: !2619)
!2626 = !DILocalVariable(name: "slen", arg: 3, scope: !2619, file: !1, line: 1332, type: !4)
!2627 = !DILocation(line: 1332, column: 69, scope: !2619)
!2628 = !DILocalVariable(name: "value", scope: !2619, file: !1, line: 1333, type: !35)
!2629 = !DILocation(line: 1333, column: 20, scope: !2619)
!2630 = !DILocalVariable(name: "sz", scope: !2619, file: !1, line: 1334, type: !21)
!2631 = !DILocation(line: 1334, column: 13, scope: !2619)
!2632 = !DILocation(line: 1335, column: 9, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 1335, column: 9)
!2634 = !DILocation(line: 1335, column: 14, scope: !2633)
!2635 = !DILocation(line: 1335, column: 9, scope: !2619)
!2636 = !DILocation(line: 1335, column: 25, scope: !2633)
!2637 = !DILocation(line: 1337, column: 19, scope: !2619)
!2638 = !DILocation(line: 1337, column: 13, scope: !2619)
!2639 = !DILocation(line: 1337, column: 11, scope: !2619)
!2640 = !DILocation(line: 1338, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 1338, column: 9)
!2642 = !DILocation(line: 1338, column: 9, scope: !2619)
!2643 = !DILocation(line: 1339, column: 17, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 1338, column: 16)
!2645 = !DILocation(line: 1339, column: 25, scope: !2644)
!2646 = !DILocation(line: 1339, column: 22, scope: !2644)
!2647 = !DILocation(line: 1339, column: 29, scope: !2644)
!2648 = !DILocation(line: 1339, column: 39, scope: !2644)
!2649 = !DILocation(line: 1339, column: 45, scope: !2644)
!2650 = !DILocation(line: 1339, column: 47, scope: !2644)
!2651 = !DILocation(line: 1339, column: 32, scope: !2644)
!2652 = !DILocation(line: 1339, column: 53, scope: !2644)
!2653 = !DILocation(line: 0, scope: !2644)
!2654 = !DILocation(line: 1339, column: 9, scope: !2644)
!2655 = !DILocalVariable(name: "sval", scope: !2656, file: !1, line: 1344, type: !21)
!2656 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 1340, column: 12)
!2657 = !DILocation(line: 1344, column: 17, scope: !2656)
!2658 = !DILocation(line: 1345, column: 42, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !1, line: 1345, column: 13)
!2660 = !DILocation(line: 1345, column: 45, scope: !2659)
!2661 = !DILocation(line: 1345, column: 13, scope: !2659)
!2662 = !DILocation(line: 1345, column: 13, scope: !2656)
!2663 = !DILocation(line: 1346, column: 20, scope: !2659)
!2664 = !DILocation(line: 1346, column: 26, scope: !2659)
!2665 = !DILocation(line: 1346, column: 23, scope: !2659)
!2666 = !DILocation(line: 1346, column: 13, scope: !2659)
!2667 = !DILocation(line: 1349, column: 5, scope: !2619)
!2668 = !DILocation(line: 1350, column: 1, scope: !2619)
!2669 = distinct !DISubprogram(name: "lpRandomPair", scope: !1, file: !1, line: 1368, type: !2670, scopeLine: 1368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{null, !35, !12, !2672, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "listpackEntry", file: !2523, line: 55, baseType: !2674)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2523, line: 49, size: 192, elements: !2675)
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sval", scope: !2674, file: !2523, line: 51, baseType: !35, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !2674, file: !2523, line: 52, baseType: !4, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "lval", scope: !2674, file: !2523, line: 54, baseType: !20, size: 64, offset: 128)
!2679 = !DILocalVariable(name: "lp", arg: 1, scope: !2669, file: !1, line: 1368, type: !35)
!2680 = !DILocation(line: 1368, column: 34, scope: !2669)
!2681 = !DILocalVariable(name: "total_count", arg: 2, scope: !2669, file: !1, line: 1368, type: !12)
!2682 = !DILocation(line: 1368, column: 52, scope: !2669)
!2683 = !DILocalVariable(name: "key", arg: 3, scope: !2669, file: !1, line: 1368, type: !2672)
!2684 = !DILocation(line: 1368, column: 80, scope: !2669)
!2685 = !DILocalVariable(name: "val", arg: 4, scope: !2669, file: !1, line: 1368, type: !2672)
!2686 = !DILocation(line: 1368, column: 100, scope: !2669)
!2687 = !DILocalVariable(name: "p", scope: !2669, file: !1, line: 1369, type: !35)
!2688 = !DILocation(line: 1369, column: 20, scope: !2669)
!2689 = !DILocation(line: 1372, column: 5, scope: !2669)
!2690 = !DILocalVariable(name: "r", scope: !2669, file: !1, line: 1375, type: !34)
!2691 = !DILocation(line: 1375, column: 9, scope: !2669)
!2692 = !DILocation(line: 1375, column: 14, scope: !2669)
!2693 = !DILocation(line: 1375, column: 23, scope: !2669)
!2694 = !DILocation(line: 1375, column: 21, scope: !2669)
!2695 = !DILocation(line: 1375, column: 36, scope: !2669)
!2696 = !DILocation(line: 1375, column: 13, scope: !2669)
!2697 = !DILocation(line: 1376, column: 5, scope: !2669)
!2698 = !DILocation(line: 1377, column: 28, scope: !2669)
!2699 = !DILocation(line: 1377, column: 33, scope: !2669)
!2700 = !DILocation(line: 1377, column: 38, scope: !2669)
!2701 = !DILocation(line: 1377, column: 47, scope: !2669)
!2702 = !DILocation(line: 1377, column: 52, scope: !2669)
!2703 = !DILocation(line: 1377, column: 17, scope: !2669)
!2704 = !DILocation(line: 1377, column: 5, scope: !2669)
!2705 = !DILocation(line: 1377, column: 10, scope: !2669)
!2706 = !DILocation(line: 1377, column: 15, scope: !2669)
!2707 = !DILocation(line: 1379, column: 10, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 1379, column: 9)
!2709 = !DILocation(line: 1379, column: 9, scope: !2669)
!2710 = !DILocation(line: 1380, column: 9, scope: !2708)
!2711 = !DILocation(line: 1381, column: 5, scope: !2669)
!2712 = !DILocation(line: 1382, column: 28, scope: !2669)
!2713 = !DILocation(line: 1382, column: 33, scope: !2669)
!2714 = !DILocation(line: 1382, column: 38, scope: !2669)
!2715 = !DILocation(line: 1382, column: 47, scope: !2669)
!2716 = !DILocation(line: 1382, column: 52, scope: !2669)
!2717 = !DILocation(line: 1382, column: 17, scope: !2669)
!2718 = !DILocation(line: 1382, column: 5, scope: !2669)
!2719 = !DILocation(line: 1382, column: 10, scope: !2669)
!2720 = !DILocation(line: 1382, column: 15, scope: !2669)
!2721 = !DILocation(line: 1383, column: 1, scope: !2669)
!2722 = distinct !DISubprogram(name: "lpRandomPairs", scope: !1, file: !1, line: 1389, type: !2723, scopeLine: 1389, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !35, !8, !2672, !2672}
!2725 = !DILocalVariable(name: "lp", arg: 1, scope: !2722, file: !1, line: 1389, type: !35)
!2726 = !DILocation(line: 1389, column: 35, scope: !2722)
!2727 = !DILocalVariable(name: "count", arg: 2, scope: !2722, file: !1, line: 1389, type: !8)
!2728 = !DILocation(line: 1389, column: 52, scope: !2722)
!2729 = !DILocalVariable(name: "keys", arg: 3, scope: !2722, file: !1, line: 1389, type: !2672)
!2730 = !DILocation(line: 1389, column: 74, scope: !2722)
!2731 = !DILocalVariable(name: "vals", arg: 4, scope: !2722, file: !1, line: 1389, type: !2672)
!2732 = !DILocation(line: 1389, column: 95, scope: !2722)
!2733 = !DILocalVariable(name: "p", scope: !2722, file: !1, line: 1390, type: !35)
!2734 = !DILocation(line: 1390, column: 20, scope: !2722)
!2735 = !DILocalVariable(name: "key", scope: !2722, file: !1, line: 1390, type: !35)
!2736 = !DILocation(line: 1390, column: 24, scope: !2722)
!2737 = !DILocalVariable(name: "value", scope: !2722, file: !1, line: 1390, type: !35)
!2738 = !DILocation(line: 1390, column: 30, scope: !2722)
!2739 = !DILocalVariable(name: "klen", scope: !2722, file: !1, line: 1391, type: !8)
!2740 = !DILocation(line: 1391, column: 18, scope: !2722)
!2741 = !DILocalVariable(name: "vlen", scope: !2722, file: !1, line: 1391, type: !8)
!2742 = !DILocation(line: 1391, column: 28, scope: !2722)
!2743 = !DILocalVariable(name: "klval", scope: !2722, file: !1, line: 1392, type: !20)
!2744 = !DILocation(line: 1392, column: 15, scope: !2722)
!2745 = !DILocalVariable(name: "vlval", scope: !2722, file: !1, line: 1392, type: !20)
!2746 = !DILocation(line: 1392, column: 26, scope: !2722)
!2747 = !DILocalVariable(name: "picks", scope: !2722, file: !1, line: 1399, type: !2748)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "rand_pick", scope: !2722, file: !1, line: 1398, baseType: !2750)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2722, file: !1, line: 1395, size: 64, elements: !2751)
!2751 = !{!2752, !2753}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2750, file: !1, line: 1396, baseType: !8, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2750, file: !1, line: 1397, baseType: !8, size: 32, offset: 32)
!2754 = !DILocation(line: 1399, column: 16, scope: !2722)
!2755 = !DILocation(line: 1399, column: 50, scope: !2722)
!2756 = !DILocation(line: 1399, column: 49, scope: !2722)
!2757 = !DILocation(line: 1399, column: 24, scope: !2722)
!2758 = !DILocalVariable(name: "total_size", scope: !2722, file: !1, line: 1400, type: !8)
!2759 = !DILocation(line: 1400, column: 18, scope: !2722)
!2760 = !DILocation(line: 1400, column: 40, scope: !2722)
!2761 = !DILocation(line: 1400, column: 31, scope: !2722)
!2762 = !DILocation(line: 1400, column: 43, scope: !2722)
!2763 = !DILocation(line: 1403, column: 5, scope: !2722)
!2764 = !DILocalVariable(name: "i", scope: !2765, file: !1, line: 1406, type: !8)
!2765 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1406, column: 5)
!2766 = !DILocation(line: 1406, column: 23, scope: !2765)
!2767 = !DILocation(line: 1406, column: 10, scope: !2765)
!2768 = !DILocation(line: 1406, column: 30, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 1406, column: 5)
!2770 = !DILocation(line: 1406, column: 34, scope: !2769)
!2771 = !DILocation(line: 1406, column: 32, scope: !2769)
!2772 = !DILocation(line: 1406, column: 5, scope: !2765)
!2773 = !DILocation(line: 1407, column: 27, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2769, file: !1, line: 1406, column: 46)
!2775 = !DILocation(line: 1407, column: 36, scope: !2774)
!2776 = !DILocation(line: 1407, column: 34, scope: !2774)
!2777 = !DILocation(line: 1407, column: 48, scope: !2774)
!2778 = !DILocation(line: 1407, column: 9, scope: !2774)
!2779 = !DILocation(line: 1407, column: 15, scope: !2774)
!2780 = !DILocation(line: 1407, column: 18, scope: !2774)
!2781 = !DILocation(line: 1407, column: 24, scope: !2774)
!2782 = !DILocation(line: 1409, column: 26, scope: !2774)
!2783 = !DILocation(line: 1409, column: 9, scope: !2774)
!2784 = !DILocation(line: 1409, column: 15, scope: !2774)
!2785 = !DILocation(line: 1409, column: 18, scope: !2774)
!2786 = !DILocation(line: 1409, column: 24, scope: !2774)
!2787 = !DILocation(line: 1410, column: 5, scope: !2774)
!2788 = !DILocation(line: 1406, column: 42, scope: !2769)
!2789 = !DILocation(line: 1406, column: 5, scope: !2769)
!2790 = distinct !{!2790, !2772, !2791, !164}
!2791 = !DILocation(line: 1410, column: 5, scope: !2765)
!2792 = !DILocation(line: 1413, column: 11, scope: !2722)
!2793 = !DILocation(line: 1413, column: 18, scope: !2722)
!2794 = !DILocation(line: 1413, column: 5, scope: !2722)
!2795 = !DILocalVariable(name: "lpindex", scope: !2722, file: !1, line: 1416, type: !8)
!2796 = !DILocation(line: 1416, column: 18, scope: !2722)
!2797 = !DILocation(line: 1416, column: 28, scope: !2722)
!2798 = !DILocation(line: 1416, column: 37, scope: !2722)
!2799 = !DILocalVariable(name: "pickindex", scope: !2722, file: !1, line: 1416, type: !8)
!2800 = !DILocation(line: 1416, column: 44, scope: !2722)
!2801 = !DILocation(line: 1417, column: 16, scope: !2722)
!2802 = !DILocation(line: 1417, column: 20, scope: !2722)
!2803 = !DILocation(line: 1417, column: 9, scope: !2722)
!2804 = !DILocation(line: 1417, column: 7, scope: !2722)
!2805 = !DILocation(line: 1418, column: 5, scope: !2722)
!2806 = !DILocation(line: 1418, column: 12, scope: !2722)
!2807 = !DILocation(line: 1418, column: 14, scope: !2722)
!2808 = !DILocation(line: 1418, column: 17, scope: !2722)
!2809 = !DILocation(line: 1418, column: 29, scope: !2722)
!2810 = !DILocation(line: 1418, column: 27, scope: !2722)
!2811 = !DILocation(line: 0, scope: !2722)
!2812 = !DILocation(line: 1419, column: 26, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 1418, column: 36)
!2814 = !DILocation(line: 1419, column: 15, scope: !2813)
!2815 = !DILocation(line: 1419, column: 13, scope: !2813)
!2816 = !DILocation(line: 1420, column: 9, scope: !2813)
!2817 = !DILocation(line: 1421, column: 28, scope: !2813)
!2818 = !DILocation(line: 1421, column: 17, scope: !2813)
!2819 = !DILocation(line: 1421, column: 15, scope: !2813)
!2820 = !DILocation(line: 1422, column: 9, scope: !2813)
!2821 = !DILocation(line: 1422, column: 16, scope: !2813)
!2822 = !DILocation(line: 1422, column: 28, scope: !2813)
!2823 = !DILocation(line: 1422, column: 26, scope: !2813)
!2824 = !DILocation(line: 1422, column: 34, scope: !2813)
!2825 = !DILocation(line: 1422, column: 37, scope: !2813)
!2826 = !DILocation(line: 1422, column: 48, scope: !2813)
!2827 = !DILocation(line: 1422, column: 54, scope: !2813)
!2828 = !DILocation(line: 1422, column: 65, scope: !2813)
!2829 = !DILocation(line: 1422, column: 45, scope: !2813)
!2830 = !DILocation(line: 0, scope: !2813)
!2831 = !DILocalVariable(name: "storeorder", scope: !2832, file: !1, line: 1423, type: !34)
!2832 = distinct !DILexicalBlock(scope: !2813, file: !1, line: 1422, column: 72)
!2833 = !DILocation(line: 1423, column: 17, scope: !2832)
!2834 = !DILocation(line: 1423, column: 30, scope: !2832)
!2835 = !DILocation(line: 1423, column: 36, scope: !2832)
!2836 = !DILocation(line: 1423, column: 47, scope: !2832)
!2837 = !DILocation(line: 1424, column: 25, scope: !2832)
!2838 = !DILocation(line: 1424, column: 30, scope: !2832)
!2839 = !DILocation(line: 1424, column: 36, scope: !2832)
!2840 = !DILocation(line: 1424, column: 44, scope: !2832)
!2841 = !DILocation(line: 1424, column: 49, scope: !2832)
!2842 = !DILocation(line: 1424, column: 13, scope: !2832)
!2843 = !DILocation(line: 1425, column: 17, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 1425, column: 17)
!2845 = !DILocation(line: 1425, column: 17, scope: !2832)
!2846 = !DILocation(line: 1426, column: 29, scope: !2844)
!2847 = !DILocation(line: 1426, column: 36, scope: !2844)
!2848 = !DILocation(line: 1426, column: 42, scope: !2844)
!2849 = !DILocation(line: 1426, column: 50, scope: !2844)
!2850 = !DILocation(line: 1426, column: 55, scope: !2844)
!2851 = !DILocation(line: 1426, column: 17, scope: !2844)
!2852 = !DILocation(line: 1427, column: 23, scope: !2832)
!2853 = distinct !{!2853, !2820, !2854, !164}
!2854 = !DILocation(line: 1428, column: 9, scope: !2813)
!2855 = !DILocation(line: 1429, column: 17, scope: !2813)
!2856 = !DILocation(line: 1430, column: 20, scope: !2813)
!2857 = !DILocation(line: 1430, column: 24, scope: !2813)
!2858 = !DILocation(line: 1430, column: 13, scope: !2813)
!2859 = !DILocation(line: 1430, column: 11, scope: !2813)
!2860 = distinct !{!2860, !2805, !2861, !164}
!2861 = !DILocation(line: 1431, column: 5, scope: !2722)
!2862 = !DILocation(line: 1433, column: 11, scope: !2722)
!2863 = !DILocation(line: 1433, column: 5, scope: !2722)
!2864 = !DILocation(line: 1434, column: 1, scope: !2722)
!2865 = distinct !DISubprogram(name: "uintCompare", scope: !1, file: !1, line: 1353, type: !2866, scopeLine: 1353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!34, !2868, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2870 = !DILocalVariable(name: "a", arg: 1, scope: !2865, file: !1, line: 1353, type: !2868)
!2871 = !DILocation(line: 1353, column: 36, scope: !2865)
!2872 = !DILocalVariable(name: "b", arg: 2, scope: !2865, file: !1, line: 1353, type: !2868)
!2873 = !DILocation(line: 1353, column: 51, scope: !2865)
!2874 = !DILocation(line: 1354, column: 31, scope: !2865)
!2875 = !DILocation(line: 1354, column: 14, scope: !2865)
!2876 = !DILocation(line: 1354, column: 13, scope: !2865)
!2877 = !DILocation(line: 1354, column: 53, scope: !2865)
!2878 = !DILocation(line: 1354, column: 36, scope: !2865)
!2879 = !DILocation(line: 1354, column: 35, scope: !2865)
!2880 = !DILocation(line: 1354, column: 33, scope: !2865)
!2881 = !DILocation(line: 1354, column: 5, scope: !2865)
!2882 = distinct !DISubprogram(name: "lpSaveValue", scope: !1, file: !1, line: 1358, type: !2883, scopeLine: 1358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !35, !8, !21, !2672}
!2885 = !DILocalVariable(name: "val", arg: 1, scope: !2882, file: !1, line: 1358, type: !35)
!2886 = !DILocation(line: 1358, column: 47, scope: !2882)
!2887 = !DILocalVariable(name: "len", arg: 2, scope: !2882, file: !1, line: 1358, type: !8)
!2888 = !DILocation(line: 1358, column: 65, scope: !2882)
!2889 = !DILocalVariable(name: "lval", arg: 3, scope: !2882, file: !1, line: 1358, type: !21)
!2890 = !DILocation(line: 1358, column: 78, scope: !2882)
!2891 = !DILocalVariable(name: "dest", arg: 4, scope: !2882, file: !1, line: 1358, type: !2672)
!2892 = !DILocation(line: 1358, column: 99, scope: !2882)
!2893 = !DILocation(line: 1359, column: 18, scope: !2882)
!2894 = !DILocation(line: 1359, column: 5, scope: !2882)
!2895 = !DILocation(line: 1359, column: 11, scope: !2882)
!2896 = !DILocation(line: 1359, column: 16, scope: !2882)
!2897 = !DILocation(line: 1360, column: 18, scope: !2882)
!2898 = !DILocation(line: 1360, column: 5, scope: !2882)
!2899 = !DILocation(line: 1360, column: 11, scope: !2882)
!2900 = !DILocation(line: 1360, column: 16, scope: !2882)
!2901 = !DILocation(line: 1361, column: 18, scope: !2882)
!2902 = !DILocation(line: 1361, column: 5, scope: !2882)
!2903 = !DILocation(line: 1361, column: 11, scope: !2882)
!2904 = !DILocation(line: 1361, column: 16, scope: !2882)
!2905 = !DILocation(line: 1362, column: 1, scope: !2882)
!2906 = distinct !DISubprogram(name: "lpRandomPairsUnique", scope: !1, file: !1, line: 1442, type: !2907, scopeLine: 1442, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!8, !35, !8, !2672, !2672}
!2909 = !DILocalVariable(name: "lp", arg: 1, scope: !2906, file: !1, line: 1442, type: !35)
!2910 = !DILocation(line: 1442, column: 49, scope: !2906)
!2911 = !DILocalVariable(name: "count", arg: 2, scope: !2906, file: !1, line: 1442, type: !8)
!2912 = !DILocation(line: 1442, column: 66, scope: !2906)
!2913 = !DILocalVariable(name: "keys", arg: 3, scope: !2906, file: !1, line: 1442, type: !2672)
!2914 = !DILocation(line: 1442, column: 88, scope: !2906)
!2915 = !DILocalVariable(name: "vals", arg: 4, scope: !2906, file: !1, line: 1442, type: !2672)
!2916 = !DILocation(line: 1442, column: 109, scope: !2906)
!2917 = !DILocalVariable(name: "p", scope: !2906, file: !1, line: 1443, type: !35)
!2918 = !DILocation(line: 1443, column: 20, scope: !2906)
!2919 = !DILocalVariable(name: "key", scope: !2906, file: !1, line: 1443, type: !35)
!2920 = !DILocation(line: 1443, column: 24, scope: !2906)
!2921 = !DILocalVariable(name: "klen", scope: !2906, file: !1, line: 1444, type: !8)
!2922 = !DILocation(line: 1444, column: 18, scope: !2906)
!2923 = !DILocalVariable(name: "klval", scope: !2906, file: !1, line: 1445, type: !20)
!2924 = !DILocation(line: 1445, column: 15, scope: !2906)
!2925 = !DILocalVariable(name: "total_size", scope: !2906, file: !1, line: 1446, type: !8)
!2926 = !DILocation(line: 1446, column: 18, scope: !2906)
!2927 = !DILocation(line: 1446, column: 40, scope: !2906)
!2928 = !DILocation(line: 1446, column: 31, scope: !2906)
!2929 = !DILocation(line: 1446, column: 43, scope: !2906)
!2930 = !DILocalVariable(name: "index", scope: !2906, file: !1, line: 1447, type: !8)
!2931 = !DILocation(line: 1447, column: 18, scope: !2906)
!2932 = !DILocation(line: 1448, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2906, file: !1, line: 1448, column: 9)
!2934 = !DILocation(line: 1448, column: 17, scope: !2933)
!2935 = !DILocation(line: 1448, column: 15, scope: !2933)
!2936 = !DILocation(line: 1448, column: 9, scope: !2906)
!2937 = !DILocation(line: 1449, column: 17, scope: !2933)
!2938 = !DILocation(line: 1449, column: 15, scope: !2933)
!2939 = !DILocation(line: 1449, column: 9, scope: !2933)
!2940 = !DILocation(line: 1455, column: 17, scope: !2906)
!2941 = !DILocation(line: 1455, column: 9, scope: !2906)
!2942 = !DILocation(line: 1455, column: 7, scope: !2906)
!2943 = !DILocalVariable(name: "picked", scope: !2906, file: !1, line: 1456, type: !8)
!2944 = !DILocation(line: 1456, column: 18, scope: !2906)
!2945 = !DILocalVariable(name: "remaining", scope: !2906, file: !1, line: 1456, type: !8)
!2946 = !DILocation(line: 1456, column: 30, scope: !2906)
!2947 = !DILocation(line: 1456, column: 42, scope: !2906)
!2948 = !DILocation(line: 1457, column: 5, scope: !2906)
!2949 = !DILocation(line: 1457, column: 12, scope: !2906)
!2950 = !DILocation(line: 1457, column: 21, scope: !2906)
!2951 = !DILocation(line: 1457, column: 19, scope: !2906)
!2952 = !DILocation(line: 1457, column: 27, scope: !2906)
!2953 = !DILocation(line: 1457, column: 30, scope: !2906)
!2954 = !DILocation(line: 0, scope: !2906)
!2955 = !DILocalVariable(name: "randomDouble", scope: !2956, file: !1, line: 1458, type: !18)
!2956 = distinct !DILexicalBlock(scope: !2906, file: !1, line: 1457, column: 33)
!2957 = !DILocation(line: 1458, column: 16, scope: !2956)
!2958 = !DILocation(line: 1458, column: 40, scope: !2956)
!2959 = !DILocation(line: 1458, column: 32, scope: !2956)
!2960 = !DILocation(line: 1458, column: 48, scope: !2956)
!2961 = !DILocalVariable(name: "threshold", scope: !2956, file: !1, line: 1459, type: !18)
!2962 = !DILocation(line: 1459, column: 16, scope: !2956)
!2963 = !DILocation(line: 1459, column: 37, scope: !2956)
!2964 = !DILocation(line: 1459, column: 29, scope: !2956)
!2965 = !DILocation(line: 1459, column: 51, scope: !2956)
!2966 = !DILocation(line: 1459, column: 64, scope: !2956)
!2967 = !DILocation(line: 1459, column: 62, scope: !2956)
!2968 = !DILocation(line: 1459, column: 50, scope: !2956)
!2969 = !DILocation(line: 1459, column: 48, scope: !2956)
!2970 = !DILocation(line: 1460, column: 13, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2956, file: !1, line: 1460, column: 13)
!2972 = !DILocation(line: 1460, column: 29, scope: !2971)
!2973 = !DILocation(line: 1460, column: 26, scope: !2971)
!2974 = !DILocation(line: 1460, column: 13, scope: !2956)
!2975 = !DILocation(line: 1461, column: 30, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 1460, column: 40)
!2977 = !DILocation(line: 1461, column: 19, scope: !2976)
!2978 = !DILocation(line: 1461, column: 17, scope: !2976)
!2979 = !DILocation(line: 1462, column: 25, scope: !2976)
!2980 = !DILocation(line: 1462, column: 30, scope: !2976)
!2981 = !DILocation(line: 1462, column: 36, scope: !2976)
!2982 = !DILocation(line: 1462, column: 44, scope: !2976)
!2983 = !DILocation(line: 1462, column: 49, scope: !2976)
!2984 = !DILocation(line: 1462, column: 13, scope: !2976)
!2985 = !DILocation(line: 1463, column: 13, scope: !2976)
!2986 = !DILocation(line: 1464, column: 17, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2976, file: !1, line: 1464, column: 17)
!2988 = !DILocation(line: 1464, column: 17, scope: !2976)
!2989 = !DILocation(line: 1465, column: 34, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2987, file: !1, line: 1464, column: 23)
!2991 = !DILocation(line: 1465, column: 23, scope: !2990)
!2992 = !DILocation(line: 1465, column: 21, scope: !2990)
!2993 = !DILocation(line: 1466, column: 29, scope: !2990)
!2994 = !DILocation(line: 1466, column: 34, scope: !2990)
!2995 = !DILocation(line: 1466, column: 40, scope: !2990)
!2996 = !DILocation(line: 1466, column: 48, scope: !2990)
!2997 = !DILocation(line: 1466, column: 53, scope: !2990)
!2998 = !DILocation(line: 1466, column: 17, scope: !2990)
!2999 = !DILocation(line: 1467, column: 13, scope: !2990)
!3000 = !DILocation(line: 1468, column: 22, scope: !2976)
!3001 = !DILocation(line: 1469, column: 19, scope: !2976)
!3002 = !DILocation(line: 1470, column: 9, scope: !2976)
!3003 = !DILocation(line: 1471, column: 13, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2971, file: !1, line: 1470, column: 16)
!3005 = !DILocation(line: 1473, column: 20, scope: !2956)
!3006 = !DILocation(line: 1473, column: 24, scope: !2956)
!3007 = !DILocation(line: 1473, column: 13, scope: !2956)
!3008 = !DILocation(line: 1473, column: 11, scope: !2956)
!3009 = !DILocation(line: 1474, column: 14, scope: !2956)
!3010 = distinct !{!3010, !2948, !3011, !164}
!3011 = !DILocation(line: 1475, column: 5, scope: !2906)
!3012 = !DILocation(line: 1476, column: 12, scope: !2906)
!3013 = !DILocation(line: 1476, column: 5, scope: !2906)
!3014 = distinct !DISubprogram(name: "lpRepr", scope: !1, file: !1, line: 1480, type: !231, scopeLine: 1480, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!3015 = !DILocalVariable(name: "lp", arg: 1, scope: !3014, file: !1, line: 1480, type: !35)
!3016 = !DILocation(line: 1480, column: 28, scope: !3014)
!3017 = !DILocalVariable(name: "p", scope: !3014, file: !1, line: 1481, type: !35)
!3018 = !DILocation(line: 1481, column: 20, scope: !3014)
!3019 = !DILocalVariable(name: "vstr", scope: !3014, file: !1, line: 1481, type: !35)
!3020 = !DILocation(line: 1481, column: 24, scope: !3014)
!3021 = !DILocalVariable(name: "vlen", scope: !3014, file: !1, line: 1482, type: !21)
!3022 = !DILocation(line: 1482, column: 13, scope: !3014)
!3023 = !DILocalVariable(name: "intbuf", scope: !3014, file: !1, line: 1483, type: !3024)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 168, elements: !3025)
!3025 = !{!3026}
!3026 = !DISubrange(count: 21)
!3027 = !DILocation(line: 1483, column: 19, scope: !3014)
!3028 = !DILocalVariable(name: "index", scope: !3014, file: !1, line: 1484, type: !34)
!3029 = !DILocation(line: 1484, column: 9, scope: !3014)
!3030 = !DILocation(line: 1486, column: 61, scope: !3014)
!3031 = !DILocation(line: 1486, column: 53, scope: !3014)
!3032 = !DILocation(line: 1486, column: 75, scope: !3014)
!3033 = !DILocation(line: 1486, column: 66, scope: !3014)
!3034 = !DILocation(line: 1486, column: 5, scope: !3014)
!3035 = !DILocation(line: 1488, column: 17, scope: !3014)
!3036 = !DILocation(line: 1488, column: 9, scope: !3014)
!3037 = !DILocation(line: 1488, column: 7, scope: !3014)
!3038 = !DILocation(line: 1489, column: 5, scope: !3014)
!3039 = !DILocation(line: 1489, column: 11, scope: !3014)
!3040 = !DILocalVariable(name: "encoded_size_bytes", scope: !3041, file: !1, line: 1490, type: !4)
!3041 = distinct !DILexicalBlock(scope: !3014, file: !1, line: 1489, column: 14)
!3042 = !DILocation(line: 1490, column: 18, scope: !3041)
!3043 = !DILocation(line: 1490, column: 65, scope: !3041)
!3044 = !DILocation(line: 1490, column: 39, scope: !3041)
!3045 = !DILocalVariable(name: "encoded_size", scope: !3041, file: !1, line: 1491, type: !4)
!3046 = !DILocation(line: 1491, column: 18, scope: !3041)
!3047 = !DILocation(line: 1491, column: 60, scope: !3041)
!3048 = !DILocation(line: 1491, column: 33, scope: !3041)
!3049 = !DILocalVariable(name: "back_len", scope: !3041, file: !1, line: 1492, type: !12)
!3050 = !DILocation(line: 1492, column: 23, scope: !3041)
!3051 = !DILocation(line: 1492, column: 56, scope: !3041)
!3052 = !DILocation(line: 1492, column: 34, scope: !3041)
!3053 = !DILocation(line: 1502, column: 28, scope: !3041)
!3054 = !DILocation(line: 1502, column: 13, scope: !3041)
!3055 = !DILocation(line: 1503, column: 13, scope: !3041)
!3056 = !DILocation(line: 1504, column: 30, scope: !3041)
!3057 = !DILocation(line: 1504, column: 32, scope: !3041)
!3058 = !DILocation(line: 1504, column: 31, scope: !3041)
!3059 = !DILocation(line: 1505, column: 13, scope: !3041)
!3060 = !DILocation(line: 1505, column: 28, scope: !3041)
!3061 = !DILocation(line: 1505, column: 26, scope: !3041)
!3062 = !DILocation(line: 1506, column: 13, scope: !3041)
!3063 = !DILocation(line: 1507, column: 13, scope: !3041)
!3064 = !DILocation(line: 1508, column: 13, scope: !3041)
!3065 = !DILocation(line: 1508, column: 28, scope: !3041)
!3066 = !DILocation(line: 1508, column: 26, scope: !3041)
!3067 = !DILocation(line: 1493, column: 9, scope: !3041)
!3068 = !DILocation(line: 1509, column: 9, scope: !3041)
!3069 = !DILocalVariable(name: "i", scope: !3070, file: !1, line: 1510, type: !8)
!3070 = distinct !DILexicalBlock(scope: !3041, file: !1, line: 1510, column: 9)
!3071 = !DILocation(line: 1510, column: 27, scope: !3070)
!3072 = !DILocation(line: 1510, column: 14, scope: !3070)
!3073 = !DILocation(line: 1510, column: 34, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3070, file: !1, line: 1510, column: 9)
!3075 = !DILocation(line: 1510, column: 39, scope: !3074)
!3076 = !DILocation(line: 1510, column: 54, scope: !3074)
!3077 = !DILocation(line: 1510, column: 52, scope: !3074)
!3078 = !DILocation(line: 1510, column: 36, scope: !3074)
!3079 = !DILocation(line: 1510, column: 9, scope: !3070)
!3080 = !DILocation(line: 1511, column: 28, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3074, file: !1, line: 1510, column: 70)
!3082 = !DILocation(line: 1511, column: 30, scope: !3081)
!3083 = !DILocation(line: 1511, column: 13, scope: !3081)
!3084 = !DILocation(line: 1512, column: 9, scope: !3081)
!3085 = !DILocation(line: 1510, column: 66, scope: !3074)
!3086 = !DILocation(line: 1510, column: 9, scope: !3074)
!3087 = distinct !{!3087, !3079, !3088, !164}
!3088 = !DILocation(line: 1512, column: 9, scope: !3070)
!3089 = !DILocation(line: 1513, column: 9, scope: !3041)
!3090 = !DILocation(line: 1515, column: 22, scope: !3041)
!3091 = !DILocation(line: 1515, column: 32, scope: !3041)
!3092 = !DILocation(line: 1515, column: 16, scope: !3041)
!3093 = !DILocation(line: 1515, column: 14, scope: !3041)
!3094 = !DILocation(line: 1516, column: 9, scope: !3041)
!3095 = !DILocation(line: 1517, column: 13, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3041, file: !1, line: 1517, column: 13)
!3097 = !DILocation(line: 1517, column: 18, scope: !3096)
!3098 = !DILocation(line: 1517, column: 13, scope: !3041)
!3099 = !DILocation(line: 1518, column: 24, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !1, line: 1518, column: 17)
!3101 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 1517, column: 24)
!3102 = !DILocation(line: 1518, column: 37, scope: !3100)
!3103 = !DILocation(line: 1518, column: 17, scope: !3100)
!3104 = !DILocation(line: 1518, column: 45, scope: !3100)
!3105 = !DILocation(line: 1518, column: 17, scope: !3101)
!3106 = !DILocation(line: 1518, column: 51, scope: !3100)
!3107 = !DILocation(line: 1519, column: 13, scope: !3101)
!3108 = !DILocation(line: 1520, column: 9, scope: !3101)
!3109 = !DILocation(line: 1521, column: 24, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !1, line: 1521, column: 17)
!3111 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 1520, column: 16)
!3112 = !DILocation(line: 1521, column: 30, scope: !3110)
!3113 = !DILocation(line: 1521, column: 39, scope: !3110)
!3114 = !DILocation(line: 1521, column: 17, scope: !3110)
!3115 = !DILocation(line: 1521, column: 47, scope: !3110)
!3116 = !DILocation(line: 1521, column: 17, scope: !3111)
!3117 = !DILocation(line: 1521, column: 53, scope: !3110)
!3118 = !DILocation(line: 1523, column: 9, scope: !3041)
!3119 = !DILocation(line: 1524, column: 14, scope: !3041)
!3120 = !DILocation(line: 1525, column: 20, scope: !3041)
!3121 = !DILocation(line: 1525, column: 24, scope: !3041)
!3122 = !DILocation(line: 1525, column: 13, scope: !3041)
!3123 = !DILocation(line: 1525, column: 11, scope: !3041)
!3124 = distinct !{!3124, !3038, !3125, !164}
!3125 = !DILocation(line: 1526, column: 5, scope: !3014)
!3126 = !DILocation(line: 1527, column: 5, scope: !3014)
!3127 = !DILocation(line: 1528, column: 1, scope: !3014)
