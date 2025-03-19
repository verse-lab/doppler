; ModuleID = 'redis-check-aof.c'
source_filename = "redis-check-aof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.aofManifest = type { %struct.aofInfo*, %struct.list*, %struct.list*, i64, i64, i32 }
%struct.aofInfo = type { i8*, i64, i32 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected \\r\\n, got: %02x%02x\00", align 1
@error = internal global [1044 x i8] zeroinitializer, align 16, !dbg !0
@.str.2 = private unnamed_addr constant [13 x i8] c"0x%16llx: %s\00", align 1
@epos = internal global i64 0, align 8, !dbg !34
@line = internal global i64 1, align 8, !dbg !40
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected prefix '%c', got: '%c'\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected to read %ld bytes, got %ld bytes\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Expected to read string of %ld bytes, which is not in the suitable range\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unexpected MULTI in AOF %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Unexpected EXEC in AOF %s\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Failed to read annotations from AOF %s, aborting...\0A\00", align 1
@to_timestamp = internal global i64 0, align 8, !dbg !42
@.str.11 = private unnamed_addr constant [5 x i8] c"#TS:\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid timestamp annotation\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"AOF %s has nothing before timestamp %ld, aborting...\0A\00", align 1
@.str.14 = private unnamed_addr constant [91 x i8] c"Failed to truncate AOF %s to timestamp %ld to offset %ld because it is not the last file.\0A\00", align 1
@.str.15 = private unnamed_addr constant [180 x i8] c"If you insist, please delete all files after this file according to the manifest file and delete the corresponding records in manifest file manually. Then re-run redis-check-aof.\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Failed to truncate AOF %s to timestamp %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Cannot open file %s: %s, aborting...\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Cannot stat file: %s, aborting...\0A\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"RDB preamble of AOF file is not sane, aborting.\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"RDB preamble is OK, proceeding with AOF tail...\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"Failed to read from AOF %s, aborting...\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Failed to fseek in AOF %s: %s\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"AOF %s format error\0A\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"Reached EOF before reading EXEC for MULTI\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"Truncate nothing in AOF %s to timestamp %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [84 x i8] c"AOF analyzed: filename=%s, size=%lld, ok_up_to=%lld, ok_up_to_line=%lld, diff=%lld\0A\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"Failed to truncate AOF %s because it is not the last file\0A\00", align 1
@.str.30 = private unnamed_addr constant [77 x i8] c"This will shrink the AOF %s from %lld bytes, with %lld bytes, to %lld bytes\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Continue? [y/N]: \00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Aborting...\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Failed to truncate AOF %s\0A\00", align 1
@.str.35 = private unnamed_addr constant [61 x i8] c"AOF %s is not valid. Use the --fix option to try fixing it.\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Cannot open file %s: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Cannot stat file: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"REDIS\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"Cannot read file: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Start checking Multi Part AOF\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"Start to check BASE AOF (%s format).\0A\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"RDB\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"RESP\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"BASE AOF %s is valid\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"BASE AOF %s is empty\0A\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"Successfully truncated AOF %s to timestamp %ld\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"Successfully truncated AOF %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"Start to check INCR files.\0A\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"INCR AOF %s is valid\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"INCR AOF %s is empty\0A\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"All AOF files and manifest are valid\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Start checking Old-Style AOF\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"AOF %s is valid\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"AOF %s is empty\0A\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"--fix\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"--truncate-to-timestamp\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Invalid timestamp, aborting...\0A\00", align 1
@.str.60 = private unnamed_addr constant [79 x i8] c"Usage: %s [--fix|--truncate-to-timestamp $timestamp] <file.manifest|file.aof>\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @consumeNewline(i8* %buf) #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %__buf = alloca [1024 x i8], align 16
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !63
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2) #8, !dbg !65
  %cmp = icmp ne i32 %call, 0, !dbg !66
  br i1 %cmp, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !68, metadata !DIExpression()), !dbg !74
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !74
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !74
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !74
  %2 = load i8, i8* %arrayidx, align 1, !dbg !74
  %conv = sext i8 %2 to i32, !dbg !74
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !74
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !74
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !74
  %conv2 = sext i8 %4 to i32, !dbg !74
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %conv, i32 %conv2) #9, !dbg !74
  %5 = load i64, i64* @epos, align 8, !dbg !74
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !74
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %5, i8* %arraydecay4) #9, !dbg !74
  store i32 0, i32* %retval, align 4, !dbg !75
  br label %return, !dbg !75

if.end:                                           ; preds = %entry
  %6 = load i64, i64* @line, align 8, !dbg !76
  %add = add nsw i64 %6, 1, !dbg !76
  store i64 %add, i64* @line, align 8, !dbg !76
  store i32 1, i32* %retval, align 4, !dbg !77
  br label %return, !dbg !77

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !78
  ret i32 %7, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readLong(%struct._IO_FILE* %fp, i8 signext %prefix, i64* %target) #0 !dbg !79 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %prefix.addr = alloca i8, align 1
  %target.addr = alloca i64*, align 8
  %buf = alloca [128 x i8], align 16
  %eptr = alloca i8*, align 8
  %__buf = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !139, metadata !DIExpression()), !dbg !140
  store i8 %prefix, i8* %prefix.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %prefix.addr, metadata !141, metadata !DIExpression()), !dbg !142
  store i64* %target, i64** %target.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %target.addr, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !145, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %eptr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !152
  %call = call i64 @ftello64(%struct._IO_FILE* %0), !dbg !153
  store i64 %call, i64* @epos, align 8, !dbg !154
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !155
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !157
  %call1 = call i8* @fgets(i8* %arraydecay, i32 128, %struct._IO_FILE* %1), !dbg !158
  %cmp = icmp eq i8* %call1, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !161
  br label %return, !dbg !161

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !163
  %2 = load i8, i8* %arrayidx, align 16, !dbg !163
  %conv = sext i8 %2 to i32, !dbg !163
  %3 = load i8, i8* %prefix.addr, align 1, !dbg !165
  %conv2 = sext i8 %3 to i32, !dbg !165
  %cmp3 = icmp ne i32 %conv, %conv2, !dbg !166
  br i1 %cmp3, label %if.then5, label %if.end13, !dbg !167

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !168, metadata !DIExpression()), !dbg !171
  %arraydecay6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !171
  %4 = load i8, i8* %prefix.addr, align 1, !dbg !171
  %conv7 = sext i8 %4 to i32, !dbg !171
  %arrayidx8 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !171
  %5 = load i8, i8* %arrayidx8, align 16, !dbg !171
  %conv9 = sext i8 %5 to i32, !dbg !171
  %call10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay6, i64 1024, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %conv7, i32 %conv9) #9, !dbg !171
  %6 = load i64, i64* @epos, align 8, !dbg !171
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !171
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %6, i8* %arraydecay11) #9, !dbg !171
  store i32 0, i32* %retval, align 4, !dbg !172
  br label %return, !dbg !172

if.end13:                                         ; preds = %if.end
  %arraydecay14 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i64 0, i64 0, !dbg !173
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay14, i64 1, !dbg !174
  %call15 = call i64 @strtol(i8* %add.ptr, i8** %eptr, i32 10) #9, !dbg !175
  %7 = load i64*, i64** %target.addr, align 8, !dbg !176
  store i64 %call15, i64* %7, align 8, !dbg !177
  %8 = load i8*, i8** %eptr, align 8, !dbg !178
  %call16 = call i32 @consumeNewline(i8* %8), !dbg !179
  store i32 %call16, i32* %retval, align 4, !dbg !180
  br label %return, !dbg !180

return:                                           ; preds = %if.end13, %if.then5, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !181
  ret i32 %9, !dbg !181
}

declare dso_local i64 @ftello64(%struct._IO_FILE*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readBytes(%struct._IO_FILE* %fp, i8* %target, i64 %length) #0 !dbg !182 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %target.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %real = alloca i64, align 8
  %__buf = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !185, metadata !DIExpression()), !dbg !186
  store i8* %target, i8** %target.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %target.addr, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i64* %real, metadata !191, metadata !DIExpression()), !dbg !192
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !193
  %call = call i64 @ftello64(%struct._IO_FILE* %0), !dbg !194
  store i64 %call, i64* @epos, align 8, !dbg !195
  %1 = load i8*, i8** %target.addr, align 8, !dbg !196
  %2 = load i64, i64* %length.addr, align 8, !dbg !197
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !198
  %call1 = call i64 @fread(i8* %1, i64 1, i64 %2, %struct._IO_FILE* %3), !dbg !199
  store i64 %call1, i64* %real, align 8, !dbg !200
  %4 = load i64, i64* %real, align 8, !dbg !201
  %5 = load i64, i64* %length.addr, align 8, !dbg !203
  %cmp = icmp ne i64 %4, %5, !dbg !204
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !206, metadata !DIExpression()), !dbg !209
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !209
  %6 = load i64, i64* %length.addr, align 8, !dbg !209
  %7 = load i64, i64* %real, align 8, !dbg !209
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %6, i64 %7) #9, !dbg !209
  %8 = load i64, i64* @epos, align 8, !dbg !209
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !209
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %8, i8* %arraydecay3) #9, !dbg !209
  store i32 0, i32* %retval, align 4, !dbg !210
  br label %return, !dbg !210

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !211
  br label %return, !dbg !211

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !212
  ret i32 %9, !dbg !212
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readString(%struct._IO_FILE* %fp, i8** %target) #0 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %target.addr = alloca i8**, align 8
  %len = alloca i64, align 8
  %__buf = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !217, metadata !DIExpression()), !dbg !218
  store i8** %target, i8*** %target.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %target.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i64* %len, metadata !221, metadata !DIExpression()), !dbg !222
  %0 = load i8**, i8*** %target.addr, align 8, !dbg !223
  store i8* null, i8** %0, align 8, !dbg !224
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !225
  %call = call i32 @readLong(%struct._IO_FILE* %1, i8 signext 36, i64* %len), !dbg !227
  %tobool = icmp ne i32 %call, 0, !dbg !227
  br i1 %tobool, label %if.end, label %if.then, !dbg !228

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !229
  br label %return, !dbg !229

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %len, align 8, !dbg !231
  %cmp = icmp slt i64 %2, 0, !dbg !233
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !234

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i64, i64* %len, align 8, !dbg !235
  %cmp1 = icmp sgt i64 %3, 9223372036854775805, !dbg !236
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !237

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !238, metadata !DIExpression()), !dbg !241
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !241
  %4 = load i64, i64* %len, align 8, !dbg !241
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %4) #9, !dbg !241
  %5 = load i64, i64* @epos, align 8, !dbg !241
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !241
  %call5 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %5, i8* %arraydecay4) #9, !dbg !241
  store i32 0, i32* %retval, align 4, !dbg !242
  br label %return, !dbg !242

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load i64, i64* %len, align 8, !dbg !243
  %add = add nsw i64 %6, 2, !dbg !243
  store i64 %add, i64* %len, align 8, !dbg !243
  %7 = load i64, i64* %len, align 8, !dbg !244
  %call7 = call i8* @zmalloc(i64 %7), !dbg !245
  %8 = load i8**, i8*** %target.addr, align 8, !dbg !246
  store i8* %call7, i8** %8, align 8, !dbg !247
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !248
  %10 = load i8**, i8*** %target.addr, align 8, !dbg !250
  %11 = load i8*, i8** %10, align 8, !dbg !251
  %12 = load i64, i64* %len, align 8, !dbg !252
  %call8 = call i32 @readBytes(%struct._IO_FILE* %9, i8* %11, i64 %12), !dbg !253
  %tobool9 = icmp ne i32 %call8, 0, !dbg !253
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !254

if.then10:                                        ; preds = %if.end6
  %13 = load i8**, i8*** %target.addr, align 8, !dbg !255
  %14 = load i8*, i8** %13, align 8, !dbg !257
  call void @zfree(i8* %14), !dbg !258
  %15 = load i8**, i8*** %target.addr, align 8, !dbg !259
  store i8* null, i8** %15, align 8, !dbg !260
  store i32 0, i32* %retval, align 4, !dbg !261
  br label %return, !dbg !261

if.end11:                                         ; preds = %if.end6
  %16 = load i8**, i8*** %target.addr, align 8, !dbg !262
  %17 = load i8*, i8** %16, align 8, !dbg !264
  %18 = load i64, i64* %len, align 8, !dbg !265
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !266
  %add.ptr12 = getelementptr inbounds i8, i8* %add.ptr, i64 -2, !dbg !267
  %call13 = call i32 @consumeNewline(i8* %add.ptr12), !dbg !268
  %tobool14 = icmp ne i32 %call13, 0, !dbg !268
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !269

if.then15:                                        ; preds = %if.end11
  %19 = load i8**, i8*** %target.addr, align 8, !dbg !270
  %20 = load i8*, i8** %19, align 8, !dbg !272
  call void @zfree(i8* %20), !dbg !273
  %21 = load i8**, i8*** %target.addr, align 8, !dbg !274
  store i8* null, i8** %21, align 8, !dbg !275
  store i32 0, i32* %retval, align 4, !dbg !276
  br label %return, !dbg !276

if.end16:                                         ; preds = %if.end11
  %22 = load i8**, i8*** %target.addr, align 8, !dbg !277
  %23 = load i8*, i8** %22, align 8, !dbg !278
  %24 = load i64, i64* %len, align 8, !dbg !279
  %sub = sub nsw i64 %24, 2, !dbg !280
  %arrayidx = getelementptr inbounds i8, i8* %23, i64 %sub, !dbg !281
  store i8 0, i8* %arrayidx, align 1, !dbg !282
  store i32 1, i32* %retval, align 4, !dbg !283
  br label %return, !dbg !283

return:                                           ; preds = %if.end16, %if.then15, %if.then10, %if.then2, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !284
  ret i32 %25, !dbg !284
}

declare dso_local i8* @zmalloc(i64) #4

declare dso_local void @zfree(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @readArgc(%struct._IO_FILE* %fp, i64* %target) #0 !dbg !285 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %target.addr = alloca i64*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !288, metadata !DIExpression()), !dbg !289
  store i64* %target, i64** %target.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %target.addr, metadata !290, metadata !DIExpression()), !dbg !291
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !292
  %1 = load i64*, i64** %target.addr, align 8, !dbg !293
  %call = call i32 @readLong(%struct._IO_FILE* %0, i8 signext 42, i64* %1), !dbg !294
  ret i32 %call, !dbg !295
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processRESP(%struct._IO_FILE* %fp, i8* %filename, i32* %out_multi) #0 !dbg !296 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %out_multi.addr = alloca i32*, align 8
  %argc = alloca i64, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %__buf = alloca [1024 x i8], align 16
  %__buf25 = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !300, metadata !DIExpression()), !dbg !301
  store i8* %filename, i8** %filename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !302, metadata !DIExpression()), !dbg !303
  store i32* %out_multi, i32** %out_multi.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_multi.addr, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i8** %str, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !310
  %call = call i32 @readArgc(%struct._IO_FILE* %0, i64* %argc), !dbg !312
  %tobool = icmp ne i32 %call, 0, !dbg !312
  br i1 %tobool, label %if.end, label %if.then, !dbg !313

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !315, metadata !DIExpression()), !dbg !317
  store i32 0, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !319
  %conv = sext i32 %1 to i64, !dbg !319
  %2 = load i64, i64* %argc, align 8, !dbg !321
  %cmp = icmp slt i64 %conv, %2, !dbg !322
  br i1 %cmp, label %for.body, label %for.end, !dbg !323

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !324
  %call2 = call i32 @readString(%struct._IO_FILE* %3, i8** %str), !dbg !327
  %tobool3 = icmp ne i32 %call2, 0, !dbg !327
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !328

if.then4:                                         ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.end5:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !330
  %cmp6 = icmp eq i32 %4, 0, !dbg !332
  br i1 %cmp6, label %if.then8, label %if.end33, !dbg !333

if.then8:                                         ; preds = %if.end5
  %5 = load i8*, i8** %str, align 8, !dbg !334
  %call9 = call i32 @strcasecmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !337
  %cmp10 = icmp eq i32 %call9, 0, !dbg !338
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !339

if.then12:                                        ; preds = %if.then8
  %6 = load i32*, i32** %out_multi.addr, align 8, !dbg !340
  %7 = load i32, i32* %6, align 4, !dbg !343
  %inc = add nsw i32 %7, 1, !dbg !343
  store i32 %inc, i32* %6, align 4, !dbg !343
  %tobool13 = icmp ne i32 %7, 0, !dbg !343
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !344

if.then14:                                        ; preds = %if.then12
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !345, metadata !DIExpression()), !dbg !348
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !348
  %8 = load i8*, i8** %filename.addr, align 8, !dbg !348
  %call15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %8) #9, !dbg !348
  %9 = load i64, i64* @epos, align 8, !dbg !348
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !348
  %call17 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %9, i8* %arraydecay16) #9, !dbg !348
  %10 = load i8*, i8** %str, align 8, !dbg !349
  call void @zfree(i8* %10), !dbg !350
  store i32 0, i32* %retval, align 4, !dbg !351
  br label %return, !dbg !351

if.end18:                                         ; preds = %if.then12
  br label %if.end32, !dbg !352

if.else:                                          ; preds = %if.then8
  %11 = load i8*, i8** %str, align 8, !dbg !353
  %call19 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !355
  %cmp20 = icmp eq i32 %call19, 0, !dbg !356
  br i1 %cmp20, label %if.then22, label %if.end31, !dbg !357

if.then22:                                        ; preds = %if.else
  %12 = load i32*, i32** %out_multi.addr, align 8, !dbg !358
  %13 = load i32, i32* %12, align 4, !dbg !361
  %dec = add nsw i32 %13, -1, !dbg !361
  store i32 %dec, i32* %12, align 4, !dbg !361
  %tobool23 = icmp ne i32 %dec, 0, !dbg !361
  br i1 %tobool23, label %if.then24, label %if.end30, !dbg !362

if.then24:                                        ; preds = %if.then22
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf25, metadata !363, metadata !DIExpression()), !dbg !366
  %arraydecay26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf25, i64 0, i64 0, !dbg !366
  %14 = load i8*, i8** %filename.addr, align 8, !dbg !366
  %call27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay26, i64 1024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %14) #9, !dbg !366
  %15 = load i64, i64* @epos, align 8, !dbg !366
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf25, i64 0, i64 0, !dbg !366
  %call29 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %15, i8* %arraydecay28) #9, !dbg !366
  %16 = load i8*, i8** %str, align 8, !dbg !367
  call void @zfree(i8* %16), !dbg !368
  store i32 0, i32* %retval, align 4, !dbg !369
  br label %return, !dbg !369

if.end30:                                         ; preds = %if.then22
  br label %if.end31, !dbg !370

if.end31:                                         ; preds = %if.end30, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end18
  br label %if.end33, !dbg !371

if.end33:                                         ; preds = %if.end32, %if.end5
  %17 = load i8*, i8** %str, align 8, !dbg !372
  call void @zfree(i8* %17), !dbg !373
  br label %for.inc, !dbg !374

for.inc:                                          ; preds = %if.end33
  %18 = load i32, i32* %i, align 4, !dbg !375
  %inc34 = add nsw i32 %18, 1, !dbg !375
  store i32 %inc34, i32* %i, align 4, !dbg !375
  br label %for.cond, !dbg !376, !llvm.loop !377

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !380
  br label %return, !dbg !380

return:                                           ; preds = %for.end, %if.then24, %if.then14, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !381
  ret i32 %19, !dbg !381
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processAnnotations(%struct._IO_FILE* %fp, i8* %filename, i32 %last_file) #0 !dbg !382 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %last_file.addr = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %endptr = alloca i8*, align 8
  %ts = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !385, metadata !DIExpression()), !dbg !386
  store i8* %filename, i8** %filename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filename.addr, metadata !387, metadata !DIExpression()), !dbg !388
  store i32 %last_file, i32* %last_file.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %last_file.addr, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !393
  %call = call i64 @ftello64(%struct._IO_FILE* %0), !dbg !394
  store i64 %call, i64* @epos, align 8, !dbg !395
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !396
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !398
  %call1 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %1), !dbg !399
  %cmp = icmp eq i8* %call1, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8, !dbg !402
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %2), !dbg !404
  call void @exit(i32 1) #10, !dbg !405
  unreachable, !dbg !405

if.end:                                           ; preds = %entry
  %3 = load i64, i64* @to_timestamp, align 8, !dbg !406
  %tobool = icmp ne i64 %3, 0, !dbg !406
  br i1 %tobool, label %land.lhs.true, label %if.end37, !dbg !408

land.lhs.true:                                    ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !409
  %call4 = call i32 @strncmp(i8* %arraydecay3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #8, !dbg !410
  %cmp5 = icmp eq i32 %call4, 0, !dbg !411
  br i1 %cmp5, label %if.then6, label %if.end37, !dbg !412

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8** %endptr, metadata !413, metadata !DIExpression()), !dbg !415
  %call7 = call i32* @__errno_location() #11, !dbg !416
  store i32 0, i32* %call7, align 4, !dbg !417
  call void @llvm.dbg.declare(metadata i64* %ts, metadata !418, metadata !DIExpression()), !dbg !419
  %arraydecay8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i64 0, i64 0, !dbg !420
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay8, i64 4, !dbg !421
  %call9 = call i64 @strtol(i8* %add.ptr, i8** %endptr, i32 10) #9, !dbg !422
  store i64 %call9, i64* %ts, align 8, !dbg !419
  %call10 = call i32* @__errno_location() #11, !dbg !423
  %4 = load i32, i32* %call10, align 4, !dbg !423
  %cmp11 = icmp ne i32 %4, 0, !dbg !425
  br i1 %cmp11, label %if.then14, label %lor.lhs.false, !dbg !426

lor.lhs.false:                                    ; preds = %if.then6
  %5 = load i8*, i8** %endptr, align 8, !dbg !427
  %6 = load i8, i8* %5, align 1, !dbg !428
  %conv = sext i8 %6 to i32, !dbg !428
  %cmp12 = icmp ne i32 %conv, 13, !dbg !429
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !430

if.then14:                                        ; preds = %lor.lhs.false, %if.then6
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0)), !dbg !431
  call void @exit(i32 1) #10, !dbg !433
  unreachable, !dbg !433

if.end16:                                         ; preds = %lor.lhs.false
  %7 = load i64, i64* %ts, align 8, !dbg !434
  %8 = load i64, i64* @to_timestamp, align 8, !dbg !436
  %cmp17 = icmp sle i64 %7, %8, !dbg !437
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !438

if.then19:                                        ; preds = %if.end16
  store i32 1, i32* %retval, align 4, !dbg !439
  br label %return, !dbg !439

if.end20:                                         ; preds = %if.end16
  %9 = load i64, i64* @epos, align 8, !dbg !440
  %cmp21 = icmp eq i64 %9, 0, !dbg !442
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !443

if.then23:                                        ; preds = %if.end20
  %10 = load i8*, i8** %filename.addr, align 8, !dbg !444
  %11 = load i64, i64* @to_timestamp, align 8, !dbg !446
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0), i8* %10, i64 %11), !dbg !447
  call void @exit(i32 1) #10, !dbg !448
  unreachable, !dbg !448

if.end25:                                         ; preds = %if.end20
  %12 = load i32, i32* %last_file.addr, align 4, !dbg !449
  %tobool26 = icmp ne i32 %12, 0, !dbg !449
  br i1 %tobool26, label %if.end30, label %if.then27, !dbg !451

if.then27:                                        ; preds = %if.end25
  %13 = load i8*, i8** %filename.addr, align 8, !dbg !452
  %14 = load i64, i64* @to_timestamp, align 8, !dbg !454
  %15 = load i64, i64* @epos, align 8, !dbg !455
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.14, i64 0, i64 0), i8* %13, i64 %14, i64 %15), !dbg !456
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str.15, i64 0, i64 0)), !dbg !457
  call void @exit(i32 1) #10, !dbg !458
  unreachable, !dbg !458

if.end30:                                         ; preds = %if.end25
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !459
  %call31 = call i32 @fileno(%struct._IO_FILE* %16) #9, !dbg !461
  %17 = load i64, i64* @epos, align 8, !dbg !462
  %call32 = call i32 @ftruncate64(i32 %call31, i64 %17) #9, !dbg !463
  %cmp33 = icmp eq i32 %call32, -1, !dbg !464
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !465

if.then35:                                        ; preds = %if.end30
  %18 = load i8*, i8** %filename.addr, align 8, !dbg !466
  %19 = load i64, i64* @to_timestamp, align 8, !dbg !468
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* %18, i64 %19), !dbg !469
  call void @exit(i32 1) #10, !dbg !470
  unreachable, !dbg !470

if.else:                                          ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !471
  br label %return, !dbg !471

if.end37:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval, align 4, !dbg !473
  br label %return, !dbg !473

return:                                           ; preds = %if.end37, %if.else, %if.then19
  %20 = load i32, i32* %retval, align 4, !dbg !474
  ret i32 %20, !dbg !474
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local i32 @ftruncate64(i32, i64) #3

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @checkSingleAof(i8* %aof_filename, i8* %aof_filepath, i32 %last_file, i32 %fix, i32 %preamble) #0 !dbg !475 {
entry:
  %retval = alloca i32, align 4
  %aof_filename.addr = alloca i8*, align 8
  %aof_filepath.addr = alloca i8*, align 8
  %last_file.addr = alloca i32, align 4
  %fix.addr = alloca i32, align 4
  %preamble.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %diff = alloca i64, align 8
  %multi = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %argv = alloca [2 x i8*], align 16
  %__buf = alloca [1024 x i8], align 16
  %buf101 = alloca [2 x i8], align 1
  store i8* %aof_filename, i8** %aof_filename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aof_filename.addr, metadata !478, metadata !DIExpression()), !dbg !479
  store i8* %aof_filepath, i8** %aof_filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %aof_filepath.addr, metadata !480, metadata !DIExpression()), !dbg !481
  store i32 %last_file, i32* %last_file.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %last_file.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i32 %fix, i32* %fix.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fix.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i32 %preamble, i32* %preamble.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preamble.addr, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata i64* %pos, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 0, i64* %pos, align 8, !dbg !489
  call void @llvm.dbg.declare(metadata i64* %diff, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %multi, metadata !492, metadata !DIExpression()), !dbg !493
  store i32 0, i32* %multi, align 4, !dbg !493
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !494, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load i8*, i8** %aof_filepath.addr, align 8, !dbg !501
  %call = call noalias %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !dbg !502
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !500
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !503
  %cmp = icmp eq %struct._IO_FILE* %1, null, !dbg !505
  br i1 %cmp, label %if.then, label %if.end, !dbg !506

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %aof_filepath.addr, align 8, !dbg !507
  %call1 = call i32* @__errno_location() #11, !dbg !509
  %3 = load i32, i32* %call1, align 4, !dbg !509
  %call2 = call i8* @strerror(i32 %3) #9, !dbg !510
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* %2, i8* %call2), !dbg !511
  call void @exit(i32 1) #10, !dbg !512
  unreachable, !dbg !512

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !513, metadata !DIExpression()), !dbg !549
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !550
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #9, !dbg !552
  %call5 = call i32 @fstat64(i32 %call4, %struct.stat* %sb) #9, !dbg !553
  %cmp6 = icmp eq i32 %call5, -1, !dbg !554
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !555

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %aof_filename.addr, align 8, !dbg !556
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %5), !dbg !558
  call void @exit(i32 1) #10, !dbg !559
  unreachable, !dbg !559

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %size, metadata !560, metadata !DIExpression()), !dbg !561
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8, !dbg !562
  %6 = load i64, i64* %st_size, align 8, !dbg !562
  store i64 %6, i64* %size, align 8, !dbg !561
  %7 = load i64, i64* %size, align 8, !dbg !563
  %cmp10 = icmp eq i64 %7, 0, !dbg !565
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !566

if.then11:                                        ; preds = %if.end9
  store i32 1, i32* %retval, align 4, !dbg !567
  br label %return, !dbg !567

if.end12:                                         ; preds = %if.end9
  %8 = load i32, i32* %preamble.addr, align 4, !dbg !569
  %tobool = icmp ne i32 %8, 0, !dbg !569
  br i1 %tobool, label %if.then13, label %if.end20, !dbg !571

if.then13:                                        ; preds = %if.end12
  call void @llvm.dbg.declare(metadata [2 x i8*]* %argv, metadata !572, metadata !DIExpression()), !dbg !575
  %arrayinit.begin = getelementptr inbounds [2 x i8*], [2 x i8*]* %argv, i64 0, i64 0, !dbg !576
  store i8* null, i8** %arrayinit.begin, align 8, !dbg !576
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1, !dbg !576
  %9 = load i8*, i8** %aof_filename.addr, align 8, !dbg !577
  store i8* %9, i8** %arrayinit.element, align 8, !dbg !576
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %argv, i64 0, i64 0, !dbg !578
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !580
  %call14 = call i32 @redis_check_rdb_main(i32 2, i8** %arraydecay, %struct._IO_FILE* %10), !dbg !581
  %cmp15 = icmp eq i32 %call14, -1, !dbg !582
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !583

if.then16:                                        ; preds = %if.then13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i64 0, i64 0)), !dbg !584
  call void @exit(i32 1) #10, !dbg !586
  unreachable, !dbg !586

if.else:                                          ; preds = %if.then13
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0)), !dbg !587
  br label %if.end19

if.end19:                                         ; preds = %if.else
  br label %if.end20, !dbg !589

if.end20:                                         ; preds = %if.end19, %if.end12
  br label %while.body, !dbg !590

while.body:                                       ; preds = %if.end20, %if.end63
  %11 = load i32, i32* %multi, align 4, !dbg !591
  %tobool21 = icmp ne i32 %11, 0, !dbg !591
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !594

if.then22:                                        ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !595
  %call23 = call i64 @ftello64(%struct._IO_FILE* %12), !dbg !596
  store i64 %call23, i64* %pos, align 8, !dbg !597
  br label %if.end24, !dbg !598

if.end24:                                         ; preds = %if.then22, %while.body
  %arraydecay25 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !599
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !601
  %call26 = call i8* @fgets(i8* %arraydecay25, i32 2, %struct._IO_FILE* %13), !dbg !602
  %cmp27 = icmp eq i8* %call26, null, !dbg !603
  br i1 %cmp27, label %if.then28, label %if.end34, !dbg !604

if.then28:                                        ; preds = %if.end24
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !605
  %call29 = call i32 @feof(%struct._IO_FILE* %14) #9, !dbg !608
  %tobool30 = icmp ne i32 %call29, 0, !dbg !608
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !609

if.then31:                                        ; preds = %if.then28
  br label %while.end, !dbg !610

if.end32:                                         ; preds = %if.then28
  %15 = load i8*, i8** %aof_filename.addr, align 8, !dbg !612
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i8* %15), !dbg !613
  call void @exit(i32 1) #10, !dbg !614
  unreachable, !dbg !614

if.end34:                                         ; preds = %if.end24
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !615
  %call35 = call i32 @fseek(%struct._IO_FILE* %16, i64 -1, i32 1), !dbg !617
  %cmp36 = icmp eq i32 %call35, -1, !dbg !618
  br i1 %cmp36, label %if.then37, label %if.end41, !dbg !619

if.then37:                                        ; preds = %if.end34
  %17 = load i8*, i8** %aof_filename.addr, align 8, !dbg !620
  %call38 = call i32* @__errno_location() #11, !dbg !622
  %18 = load i32, i32* %call38, align 4, !dbg !622
  %call39 = call i8* @strerror(i32 %18) #9, !dbg !623
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* %17, i8* %call39), !dbg !624
  call void @exit(i32 1) #10, !dbg !625
  unreachable, !dbg !625

if.end41:                                         ; preds = %if.end34
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !626
  %19 = load i8, i8* %arrayidx, align 1, !dbg !626
  %conv = sext i8 %19 to i32, !dbg !626
  %cmp42 = icmp eq i32 %conv, 35, !dbg !628
  br i1 %cmp42, label %if.then44, label %if.else50, !dbg !629

if.then44:                                        ; preds = %if.end41
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !630
  %21 = load i8*, i8** %aof_filepath.addr, align 8, !dbg !633
  %22 = load i32, i32* %last_file.addr, align 4, !dbg !634
  %call45 = call i32 @processAnnotations(%struct._IO_FILE* %20, i8* %21, i32 %22), !dbg !635
  %tobool46 = icmp ne i32 %call45, 0, !dbg !635
  br i1 %tobool46, label %if.end49, label %if.then47, !dbg !636

if.then47:                                        ; preds = %if.then44
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !637
  %call48 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !639
  store i32 3, i32* %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end49:                                         ; preds = %if.then44
  br label %if.end63, !dbg !641

if.else50:                                        ; preds = %if.end41
  %arrayidx51 = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !642
  %24 = load i8, i8* %arrayidx51, align 1, !dbg !642
  %conv52 = sext i8 %24 to i32, !dbg !642
  %cmp53 = icmp eq i32 %conv52, 42, !dbg !644
  br i1 %cmp53, label %if.then55, label %if.else60, !dbg !645

if.then55:                                        ; preds = %if.else50
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !646
  %26 = load i8*, i8** %aof_filepath.addr, align 8, !dbg !649
  %call56 = call i32 @processRESP(%struct._IO_FILE* %25, i8* %26, i32* %multi), !dbg !650
  %tobool57 = icmp ne i32 %call56, 0, !dbg !650
  br i1 %tobool57, label %if.end59, label %if.then58, !dbg !651

if.then58:                                        ; preds = %if.then55
  br label %while.end, !dbg !652

if.end59:                                         ; preds = %if.then55
  br label %if.end62, !dbg !653

if.else60:                                        ; preds = %if.else50
  %27 = load i8*, i8** %aof_filename.addr, align 8, !dbg !654
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %27), !dbg !656
  br label %while.end, !dbg !657

if.end62:                                         ; preds = %if.end59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end49
  br label %while.body, !dbg !590, !llvm.loop !658

while.end:                                        ; preds = %if.else60, %if.then58, %if.then31
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !660
  %call64 = call i32 @feof(%struct._IO_FILE* %28) #9, !dbg !662
  %tobool65 = icmp ne i32 %call64, 0, !dbg !662
  br i1 %tobool65, label %land.lhs.true, label %if.end76, !dbg !663

land.lhs.true:                                    ; preds = %while.end
  %29 = load i32, i32* %multi, align 4, !dbg !664
  %tobool66 = icmp ne i32 %29, 0, !dbg !664
  br i1 %tobool66, label %land.lhs.true67, label %if.end76, !dbg !665

land.lhs.true67:                                  ; preds = %land.lhs.true
  %call68 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #8, !dbg !666
  %cmp69 = icmp eq i64 %call68, 0, !dbg !667
  br i1 %cmp69, label %if.then71, label %if.end76, !dbg !668

if.then71:                                        ; preds = %land.lhs.true67
  call void @llvm.dbg.declare(metadata [1024 x i8]* %__buf, metadata !669, metadata !DIExpression()), !dbg !672
  %arraydecay72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !672
  %call73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay72, i64 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !672
  %30 = load i64, i64* @epos, align 8, !dbg !672
  %arraydecay74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %__buf, i64 0, i64 0, !dbg !672
  %call75 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0), i64 1044, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %30, i8* %arraydecay74) #9, !dbg !672
  br label %if.end76, !dbg !673

if.end76:                                         ; preds = %if.then71, %land.lhs.true67, %land.lhs.true, %while.end
  %call77 = call i64 @strlen(i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)) #8, !dbg !674
  %cmp78 = icmp ugt i64 %call77, 0, !dbg !676
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !677

if.then80:                                        ; preds = %if.end76
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1044 x i8], [1044 x i8]* @error, i64 0, i64 0)), !dbg !678
  br label %if.end82, !dbg !680

if.end82:                                         ; preds = %if.then80, %if.end76
  %31 = load i64, i64* %size, align 8, !dbg !681
  %32 = load i64, i64* %pos, align 8, !dbg !682
  %sub = sub nsw i64 %31, %32, !dbg !683
  store i64 %sub, i64* %diff, align 8, !dbg !684
  %33 = load i64, i64* %diff, align 8, !dbg !685
  %cmp83 = icmp eq i64 %33, 0, !dbg !687
  br i1 %cmp83, label %land.lhs.true85, label %if.end90, !dbg !688

land.lhs.true85:                                  ; preds = %if.end82
  %34 = load i64, i64* @to_timestamp, align 8, !dbg !689
  %tobool86 = icmp ne i64 %34, 0, !dbg !689
  br i1 %tobool86, label %if.then87, label %if.end90, !dbg !690

if.then87:                                        ; preds = %land.lhs.true85
  %35 = load i8*, i8** %aof_filename.addr, align 8, !dbg !691
  %36 = load i64, i64* @to_timestamp, align 8, !dbg !693
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i64 0, i64 0), i8* %35, i64 %36), !dbg !694
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !695
  %call89 = call i32 @fclose(%struct._IO_FILE* %37), !dbg !696
  store i32 0, i32* %retval, align 4, !dbg !697
  br label %return, !dbg !697

if.end90:                                         ; preds = %land.lhs.true85, %if.end82
  %38 = load i8*, i8** %aof_filename.addr, align 8, !dbg !698
  %39 = load i64, i64* %size, align 8, !dbg !699
  %40 = load i64, i64* %pos, align 8, !dbg !700
  %41 = load i64, i64* @line, align 8, !dbg !701
  %42 = load i64, i64* %diff, align 8, !dbg !702
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.28, i64 0, i64 0), i8* %38, i64 %39, i64 %40, i64 %41, i64 %42), !dbg !703
  %43 = load i64, i64* %diff, align 8, !dbg !704
  %cmp92 = icmp sgt i64 %43, 0, !dbg !706
  br i1 %cmp92, label %if.then94, label %if.end125, !dbg !707

if.then94:                                        ; preds = %if.end90
  %44 = load i32, i32* %fix.addr, align 4, !dbg !708
  %tobool95 = icmp ne i32 %44, 0, !dbg !708
  br i1 %tobool95, label %if.then96, label %if.else123, !dbg !711

if.then96:                                        ; preds = %if.then94
  %45 = load i32, i32* %last_file.addr, align 4, !dbg !712
  %tobool97 = icmp ne i32 %45, 0, !dbg !712
  br i1 %tobool97, label %if.end100, label %if.then98, !dbg !715

if.then98:                                        ; preds = %if.then96
  %46 = load i8*, i8** %aof_filename.addr, align 8, !dbg !716
  %call99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.29, i64 0, i64 0), i8* %46), !dbg !718
  call void @exit(i32 1) #10, !dbg !719
  unreachable, !dbg !719

if.end100:                                        ; preds = %if.then96
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf101, metadata !720, metadata !DIExpression()), !dbg !721
  %47 = load i8*, i8** %aof_filename.addr, align 8, !dbg !722
  %48 = load i64, i64* %size, align 8, !dbg !723
  %49 = load i64, i64* %diff, align 8, !dbg !724
  %50 = load i64, i64* %pos, align 8, !dbg !725
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.30, i64 0, i64 0), i8* %47, i64 %48, i64 %49, i64 %50), !dbg !726
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0)), !dbg !727
  %arraydecay104 = getelementptr inbounds [2 x i8], [2 x i8]* %buf101, i64 0, i64 0, !dbg !728
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !730
  %call105 = call i8* @fgets(i8* %arraydecay104, i32 2, %struct._IO_FILE* %51), !dbg !731
  %cmp106 = icmp eq i8* %call105, null, !dbg !732
  br i1 %cmp106, label %if.then112, label %lor.lhs.false, !dbg !733

lor.lhs.false:                                    ; preds = %if.end100
  %arraydecay108 = getelementptr inbounds [2 x i8], [2 x i8]* %buf101, i64 0, i64 0, !dbg !734
  %call109 = call i32 @strncasecmp(i8* %arraydecay108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i64 1) #8, !dbg !735
  %cmp110 = icmp ne i32 %call109, 0, !dbg !736
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !737

if.then112:                                       ; preds = %lor.lhs.false, %if.end100
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0)), !dbg !738
  call void @exit(i32 1) #10, !dbg !740
  unreachable, !dbg !740

if.end114:                                        ; preds = %lor.lhs.false
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !741
  %call115 = call i32 @fileno(%struct._IO_FILE* %52) #9, !dbg !743
  %53 = load i64, i64* %pos, align 8, !dbg !744
  %call116 = call i32 @ftruncate64(i32 %call115, i64 %53) #9, !dbg !745
  %cmp117 = icmp eq i32 %call116, -1, !dbg !746
  br i1 %cmp117, label %if.then119, label %if.else121, !dbg !747

if.then119:                                       ; preds = %if.end114
  %54 = load i8*, i8** %aof_filename.addr, align 8, !dbg !748
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %54), !dbg !750
  call void @exit(i32 1) #10, !dbg !751
  unreachable, !dbg !751

if.else121:                                       ; preds = %if.end114
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !752
  %call122 = call i32 @fclose(%struct._IO_FILE* %55), !dbg !754
  store i32 2, i32* %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.else123:                                       ; preds = %if.then94
  %56 = load i8*, i8** %aof_filename.addr, align 8, !dbg !756
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.35, i64 0, i64 0), i8* %56), !dbg !758
  call void @exit(i32 1) #10, !dbg !759
  unreachable, !dbg !759

if.end125:                                        ; preds = %if.end90
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !760
  %call126 = call i32 @fclose(%struct._IO_FILE* %57), !dbg !761
  store i32 0, i32* %retval, align 4, !dbg !762
  br label %return, !dbg !762

return:                                           ; preds = %if.end125, %if.else121, %if.then87, %if.then47, %if.then11
  %58 = load i32, i32* %retval, align 4, !dbg !763
  ret i32 %58, !dbg !763
}

declare dso_local noalias %struct._IO_FILE* @fopen64(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @fstat64(i32, %struct.stat*) #3

declare dso_local i32 @redis_check_rdb_main(i32, i8**, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #3

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fileIsRDB(i8* %filepath) #0 !dbg !764 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %sig = alloca [5 x i8], align 1
  %rdb_file = alloca i32, align 4
  store i8* %filepath, i8** %filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filepath.addr, metadata !765, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !767, metadata !DIExpression()), !dbg !768
  %0 = load i8*, i8** %filepath.addr, align 8, !dbg !769
  %call = call noalias %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !770
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !768
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !771
  %cmp = icmp eq %struct._IO_FILE* %1, null, !dbg !773
  br i1 %cmp, label %if.then, label %if.end, !dbg !774

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filepath.addr, align 8, !dbg !775
  %call1 = call i32* @__errno_location() #11, !dbg !777
  %3 = load i32, i32* %call1, align 4, !dbg !777
  %call2 = call i8* @strerror(i32 %3) #9, !dbg !778
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* %2, i8* %call2), !dbg !779
  call void @exit(i32 1) #10, !dbg !780
  unreachable, !dbg !780

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !781, metadata !DIExpression()), !dbg !782
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !783
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #9, !dbg !785
  %call5 = call i32 @fstat64(i32 %call4, %struct.stat* %sb) #9, !dbg !786
  %cmp6 = icmp eq i32 %call5, -1, !dbg !787
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !788

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %filepath.addr, align 8, !dbg !789
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i8* %5), !dbg !791
  call void @exit(i32 1) #10, !dbg !792
  unreachable, !dbg !792

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %size, metadata !793, metadata !DIExpression()), !dbg !794
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8, !dbg !795
  %6 = load i64, i64* %st_size, align 8, !dbg !795
  store i64 %6, i64* %size, align 8, !dbg !794
  %7 = load i64, i64* %size, align 8, !dbg !796
  %cmp10 = icmp eq i64 %7, 0, !dbg !798
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !799

if.then11:                                        ; preds = %if.end9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !800
  %call12 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !802
  store i32 0, i32* %retval, align 4, !dbg !803
  br label %return, !dbg !803

if.end13:                                         ; preds = %if.end9
  %9 = load i64, i64* %size, align 8, !dbg !804
  %cmp14 = icmp sge i64 %9, 8, !dbg !806
  br i1 %cmp14, label %if.then15, label %if.end24, !dbg !807

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata [5 x i8]* %sig, metadata !808, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata i32* %rdb_file, metadata !814, metadata !DIExpression()), !dbg !815
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %sig, i64 0, i64 0, !dbg !816
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !817
  %call16 = call i64 @fread(i8* %arraydecay, i64 5, i64 1, %struct._IO_FILE* %10), !dbg !818
  %cmp17 = icmp eq i64 %call16, 1, !dbg !819
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !820

land.rhs:                                         ; preds = %if.then15
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %sig, i64 0, i64 0, !dbg !821
  %call19 = call i32 @memcmp(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0), i64 5) #8, !dbg !822
  %cmp20 = icmp eq i32 %call19, 0, !dbg !823
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then15
  %11 = phi i1 [ false, %if.then15 ], [ %cmp20, %land.rhs ], !dbg !824
  %land.ext = zext i1 %11 to i32, !dbg !820
  store i32 %land.ext, i32* %rdb_file, align 4, !dbg !815
  %12 = load i32, i32* %rdb_file, align 4, !dbg !825
  %tobool = icmp ne i32 %12, 0, !dbg !825
  br i1 %tobool, label %if.then21, label %if.end23, !dbg !827

if.then21:                                        ; preds = %land.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !828
  %call22 = call i32 @fclose(%struct._IO_FILE* %13), !dbg !830
  store i32 1, i32* %retval, align 4, !dbg !831
  br label %return, !dbg !831

if.end23:                                         ; preds = %land.end
  br label %if.end24, !dbg !832

if.end24:                                         ; preds = %if.end23, %if.end13
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !833
  %call25 = call i32 @fclose(%struct._IO_FILE* %14), !dbg !834
  store i32 0, i32* %retval, align 4, !dbg !835
  br label %return, !dbg !835

return:                                           ; preds = %if.end24, %if.then21, %if.then11
  %15 = load i32, i32* %retval, align 4, !dbg !836
  ret i32 %15, !dbg !836
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fileIsManifest(i8* %filepath) #0 !dbg !837 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca i8*, align 8
  %is_manifest = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %sb = alloca %struct.stat, align 8
  %size = alloca i64, align 8
  %buf = alloca [1025 x i8], align 16
  store i8* %filepath, i8** %filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filepath.addr, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata i32* %is_manifest, metadata !840, metadata !DIExpression()), !dbg !841
  store i32 0, i32* %is_manifest, align 4, !dbg !841
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !842, metadata !DIExpression()), !dbg !843
  %0 = load i8*, i8** %filepath.addr, align 8, !dbg !844
  %call = call noalias %struct._IO_FILE* @fopen64(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)), !dbg !845
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !843
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !846
  %cmp = icmp eq %struct._IO_FILE* %1, null, !dbg !848
  br i1 %cmp, label %if.then, label %if.end, !dbg !849

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filepath.addr, align 8, !dbg !850
  %call1 = call i32* @__errno_location() #11, !dbg !852
  %3 = load i32, i32* %call1, align 4, !dbg !852
  %call2 = call i8* @strerror(i32 %3) #9, !dbg !853
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* %2, i8* %call2), !dbg !854
  call void @exit(i32 1) #10, !dbg !855
  unreachable, !dbg !855

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.stat* %sb, metadata !856, metadata !DIExpression()), !dbg !857
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !858
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #9, !dbg !860
  %call5 = call i32 @fstat64(i32 %call4, %struct.stat* %sb) #9, !dbg !861
  %cmp6 = icmp eq i32 %call5, -1, !dbg !862
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !863

if.then7:                                         ; preds = %if.end
  %5 = load i8*, i8** %filepath.addr, align 8, !dbg !864
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i8* %5), !dbg !866
  call void @exit(i32 1) #10, !dbg !867
  unreachable, !dbg !867

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %size, metadata !868, metadata !DIExpression()), !dbg !869
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 8, !dbg !870
  %6 = load i64, i64* %st_size, align 8, !dbg !870
  store i64 %6, i64* %size, align 8, !dbg !869
  %7 = load i64, i64* %size, align 8, !dbg !871
  %cmp10 = icmp eq i64 %7, 0, !dbg !873
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !874

if.then11:                                        ; preds = %if.end9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !875
  %call12 = call i32 @fclose(%struct._IO_FILE* %8), !dbg !877
  store i32 0, i32* %retval, align 4, !dbg !878
  br label %return, !dbg !878

if.end13:                                         ; preds = %if.end9
  call void @llvm.dbg.declare(metadata [1025 x i8]* %buf, metadata !879, metadata !DIExpression()), !dbg !883
  br label %while.body, !dbg !884

while.body:                                       ; preds = %if.end13, %if.then23, %if.end30
  %arraydecay = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i64 0, i64 0, !dbg !885
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !888
  %call14 = call i8* @fgets(i8* %arraydecay, i32 1025, %struct._IO_FILE* %9), !dbg !889
  %cmp15 = icmp eq i8* %call14, null, !dbg !890
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !891

if.then16:                                        ; preds = %while.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !892
  %call17 = call i32 @feof(%struct._IO_FILE* %10) #9, !dbg !895
  %tobool = icmp ne i32 %call17, 0, !dbg !895
  br i1 %tobool, label %if.then18, label %if.else, !dbg !896

if.then18:                                        ; preds = %if.then16
  br label %while.end, !dbg !897

if.else:                                          ; preds = %if.then16
  %11 = load i8*, i8** %filepath.addr, align 8, !dbg !899
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i8* %11), !dbg !901
  call void @exit(i32 1) #10, !dbg !902
  unreachable, !dbg !902

if.end20:                                         ; preds = %while.body
  %arrayidx = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i64 0, i64 0, !dbg !903
  %12 = load i8, i8* %arrayidx, align 16, !dbg !903
  %conv = sext i8 %12 to i32, !dbg !903
  %cmp21 = icmp eq i32 %conv, 35, !dbg !905
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !906

if.then23:                                        ; preds = %if.end20
  br label %while.body, !dbg !907, !llvm.loop !909

if.else24:                                        ; preds = %if.end20
  %arraydecay25 = getelementptr inbounds [1025 x i8], [1025 x i8]* %buf, i64 0, i64 0, !dbg !911
  %call26 = call i32 @memcmp(i8* %arraydecay25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i64 4) #8, !dbg !913
  %tobool27 = icmp ne i32 %call26, 0, !dbg !913
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !914

if.then28:                                        ; preds = %if.else24
  store i32 1, i32* %is_manifest, align 4, !dbg !915
  br label %if.end29, !dbg !917

if.end29:                                         ; preds = %if.then28, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29
  br label %while.body, !dbg !884, !llvm.loop !909

while.end:                                        ; preds = %if.then18
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !918
  %call31 = call i32 @fclose(%struct._IO_FILE* %13), !dbg !919
  %14 = load i32, i32* %is_manifest, align 4, !dbg !920
  store i32 %14, i32* %retval, align 4, !dbg !921
  br label %return, !dbg !921

return:                                           ; preds = %while.end, %if.then11
  %15 = load i32, i32* %retval, align 4, !dbg !922
  ret i32 %15, !dbg !922
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getInputFileType(i8* %filepath) #0 !dbg !923 {
entry:
  %retval = alloca i32, align 4
  %filepath.addr = alloca i8*, align 8
  store i8* %filepath, i8** %filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filepath.addr, metadata !927, metadata !DIExpression()), !dbg !928
  %0 = load i8*, i8** %filepath.addr, align 8, !dbg !929
  %call = call i32 @fileIsManifest(i8* %0), !dbg !931
  %tobool = icmp ne i32 %call, 0, !dbg !931
  br i1 %tobool, label %if.then, label %if.else, !dbg !932

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !933
  br label %return, !dbg !933

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %filepath.addr, align 8, !dbg !935
  %call1 = call i32 @fileIsRDB(i8* %1), !dbg !937
  %tobool2 = icmp ne i32 %call1, 0, !dbg !937
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !938

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !939
  br label %return, !dbg !939

if.else4:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !941
  br label %return, !dbg !941

return:                                           ; preds = %if.else4, %if.then3, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !943
  ret i32 %2, !dbg !943
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @checkMultiPartAof(i8* %dirpath, i8* %manifest_filepath, i32 %fix) #0 !dbg !944 {
entry:
  %dirpath.addr = alloca i8*, align 8
  %manifest_filepath.addr = alloca i8*, align 8
  %fix.addr = alloca i32, align 4
  %total_num = alloca i32, align 4
  %aof_num = alloca i32, align 4
  %last_file = alloca i32, align 4
  %ret = alloca i32, align 4
  %am = alloca %struct.aofManifest*, align 8
  %aof_filename = alloca i8*, align 8
  %aof_filepath = alloca i8*, align 8
  %aof_preable = alloca i32, align 4
  %ln = alloca %struct.listNode*, align 8
  %li = alloca %struct.listIter, align 8
  %ai = alloca %struct.aofInfo*, align 8
  %aof_filename50 = alloca i8*, align 8
  %aof_filepath52 = alloca i8*, align 8
  store i8* %dirpath, i8** %dirpath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dirpath.addr, metadata !947, metadata !DIExpression()), !dbg !948
  store i8* %manifest_filepath, i8** %manifest_filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %manifest_filepath.addr, metadata !949, metadata !DIExpression()), !dbg !950
  store i32 %fix, i32* %fix.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fix.addr, metadata !951, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.declare(metadata i32* %total_num, metadata !953, metadata !DIExpression()), !dbg !954
  store i32 0, i32* %total_num, align 4, !dbg !954
  call void @llvm.dbg.declare(metadata i32* %aof_num, metadata !955, metadata !DIExpression()), !dbg !956
  store i32 0, i32* %aof_num, align 4, !dbg !956
  call void @llvm.dbg.declare(metadata i32* %last_file, metadata !957, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !959, metadata !DIExpression()), !dbg !960
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0)), !dbg !961
  call void @llvm.dbg.declare(metadata %struct.aofManifest** %am, metadata !962, metadata !DIExpression()), !dbg !1001
  %0 = load i8*, i8** %manifest_filepath.addr, align 8, !dbg !1002
  %call1 = call %struct.aofManifest* @aofLoadManifestFromFile(i8* %0), !dbg !1003
  store %struct.aofManifest* %call1, %struct.aofManifest** %am, align 8, !dbg !1001
  %1 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1004
  %base_aof_info = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %1, i32 0, i32 0, !dbg !1006
  %2 = load %struct.aofInfo*, %struct.aofInfo** %base_aof_info, align 8, !dbg !1006
  %tobool = icmp ne %struct.aofInfo* %2, null, !dbg !1004
  br i1 %tobool, label %if.then, label %if.end, !dbg !1007

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %total_num, align 4, !dbg !1008
  %inc = add nsw i32 %3, 1, !dbg !1008
  store i32 %inc, i32* %total_num, align 4, !dbg !1008
  br label %if.end, !dbg !1009

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1010
  %incr_aof_list = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %4, i32 0, i32 1, !dbg !1012
  %5 = load %struct.list*, %struct.list** %incr_aof_list, align 8, !dbg !1012
  %tobool2 = icmp ne %struct.list* %5, null, !dbg !1010
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !1013

if.then3:                                         ; preds = %if.end
  %6 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1014
  %incr_aof_list4 = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %6, i32 0, i32 1, !dbg !1014
  %7 = load %struct.list*, %struct.list** %incr_aof_list4, align 8, !dbg !1014
  %len = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 5, !dbg !1014
  %8 = load i64, i64* %len, align 8, !dbg !1014
  %9 = load i32, i32* %total_num, align 4, !dbg !1015
  %conv = sext i32 %9 to i64, !dbg !1015
  %add = add i64 %conv, %8, !dbg !1015
  %conv5 = trunc i64 %add to i32, !dbg !1015
  store i32 %conv5, i32* %total_num, align 4, !dbg !1015
  br label %if.end6, !dbg !1016

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1017
  %base_aof_info7 = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %10, i32 0, i32 0, !dbg !1019
  %11 = load %struct.aofInfo*, %struct.aofInfo** %base_aof_info7, align 8, !dbg !1019
  %tobool8 = icmp ne %struct.aofInfo* %11, null, !dbg !1017
  br i1 %tobool8, label %if.then9, label %if.end40, !dbg !1020

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i8** %aof_filename, metadata !1021, metadata !DIExpression()), !dbg !1023
  %12 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1024
  %base_aof_info10 = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %12, i32 0, i32 0, !dbg !1025
  %13 = load %struct.aofInfo*, %struct.aofInfo** %base_aof_info10, align 8, !dbg !1025
  %file_name = getelementptr inbounds %struct.aofInfo, %struct.aofInfo* %13, i32 0, i32 0, !dbg !1026
  %14 = load i8*, i8** %file_name, align 8, !dbg !1026
  store i8* %14, i8** %aof_filename, align 8, !dbg !1023
  call void @llvm.dbg.declare(metadata i8** %aof_filepath, metadata !1027, metadata !DIExpression()), !dbg !1028
  %15 = load i8*, i8** %dirpath.addr, align 8, !dbg !1029
  %16 = load i8*, i8** %aof_filename, align 8, !dbg !1030
  %call11 = call i8* @makePath(i8* %15, i8* %16), !dbg !1031
  store i8* %call11, i8** %aof_filepath, align 8, !dbg !1028
  %17 = load i32, i32* %aof_num, align 4, !dbg !1032
  %inc12 = add nsw i32 %17, 1, !dbg !1032
  store i32 %inc12, i32* %aof_num, align 4, !dbg !1032
  %18 = load i32, i32* %total_num, align 4, !dbg !1033
  %cmp = icmp eq i32 %inc12, %18, !dbg !1034
  %conv13 = zext i1 %cmp to i32, !dbg !1034
  store i32 %conv13, i32* %last_file, align 4, !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %aof_preable, metadata !1036, metadata !DIExpression()), !dbg !1037
  %19 = load i8*, i8** %aof_filepath, align 8, !dbg !1038
  %call14 = call i32 @fileIsRDB(i8* %19), !dbg !1039
  store i32 %call14, i32* %aof_preable, align 4, !dbg !1037
  %20 = load i32, i32* %aof_preable, align 4, !dbg !1040
  %tobool15 = icmp ne i32 %20, 0, !dbg !1040
  %21 = zext i1 %tobool15 to i64, !dbg !1040
  %cond = select i1 %tobool15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), !dbg !1040
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i8* %cond), !dbg !1041
  %22 = load i8*, i8** %aof_filename, align 8, !dbg !1042
  %23 = load i8*, i8** %aof_filepath, align 8, !dbg !1043
  %24 = load i32, i32* %last_file, align 4, !dbg !1044
  %25 = load i32, i32* %fix.addr, align 4, !dbg !1045
  %26 = load i32, i32* %aof_preable, align 4, !dbg !1046
  %call17 = call i32 @checkSingleAof(i8* %22, i8* %23, i32 %24, i32 %25, i32 %26), !dbg !1047
  store i32 %call17, i32* %ret, align 4, !dbg !1048
  %27 = load i32, i32* %ret, align 4, !dbg !1049
  %cmp18 = icmp eq i32 %27, 0, !dbg !1051
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1052

if.then20:                                        ; preds = %if.then9
  %28 = load i8*, i8** %aof_filename, align 8, !dbg !1053
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0), i8* %28), !dbg !1055
  br label %if.end39, !dbg !1056

if.else:                                          ; preds = %if.then9
  %29 = load i32, i32* %ret, align 4, !dbg !1057
  %cmp22 = icmp eq i32 %29, 1, !dbg !1059
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !1060

if.then24:                                        ; preds = %if.else
  %30 = load i8*, i8** %aof_filename, align 8, !dbg !1061
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i8* %30), !dbg !1063
  br label %if.end38, !dbg !1064

if.else26:                                        ; preds = %if.else
  %31 = load i32, i32* %ret, align 4, !dbg !1065
  %cmp27 = icmp eq i32 %31, 3, !dbg !1067
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !1068

if.then29:                                        ; preds = %if.else26
  %32 = load i8*, i8** %aof_filename, align 8, !dbg !1069
  %33 = load i64, i64* @to_timestamp, align 8, !dbg !1071
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i64 0, i64 0), i8* %32, i64 %33), !dbg !1072
  br label %if.end37, !dbg !1073

if.else31:                                        ; preds = %if.else26
  %34 = load i32, i32* %ret, align 4, !dbg !1074
  %cmp32 = icmp eq i32 %34, 2, !dbg !1076
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !1077

if.then34:                                        ; preds = %if.else31
  %35 = load i8*, i8** %aof_filename, align 8, !dbg !1078
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i8* %35), !dbg !1080
  br label %if.end36, !dbg !1081

if.end36:                                         ; preds = %if.then34, %if.else31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then29
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then20
  %36 = load i8*, i8** %aof_filepath, align 8, !dbg !1082
  call void @sdsfree(i8* %36), !dbg !1083
  br label %if.end40, !dbg !1084

if.end40:                                         ; preds = %if.end39, %if.end6
  %37 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1085
  %incr_aof_list41 = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %37, i32 0, i32 1, !dbg !1085
  %38 = load %struct.list*, %struct.list** %incr_aof_list41, align 8, !dbg !1085
  %len42 = getelementptr inbounds %struct.list, %struct.list* %38, i32 0, i32 5, !dbg !1085
  %39 = load i64, i64* %len42, align 8, !dbg !1085
  %tobool43 = icmp ne i64 %39, 0, !dbg !1085
  br i1 %tobool43, label %if.then44, label %if.end81, !dbg !1087

if.then44:                                        ; preds = %if.end40
  call void @llvm.dbg.declare(metadata %struct.listNode** %ln, metadata !1088, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct.listIter* %li, metadata !1091, metadata !DIExpression()), !dbg !1097
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0)), !dbg !1098
  %40 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1099
  %incr_aof_list46 = getelementptr inbounds %struct.aofManifest, %struct.aofManifest* %40, i32 0, i32 1, !dbg !1100
  %41 = load %struct.list*, %struct.list** %incr_aof_list46, align 8, !dbg !1100
  call void @listRewind(%struct.list* %41, %struct.listIter* %li), !dbg !1101
  br label %while.cond, !dbg !1102

while.cond:                                       ; preds = %if.end80, %if.then44
  %call47 = call %struct.listNode* @listNext(%struct.listIter* %li), !dbg !1103
  store %struct.listNode* %call47, %struct.listNode** %ln, align 8, !dbg !1104
  %cmp48 = icmp ne %struct.listNode* %call47, null, !dbg !1105
  br i1 %cmp48, label %while.body, label %while.end, !dbg !1102

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.aofInfo** %ai, metadata !1106, metadata !DIExpression()), !dbg !1108
  %42 = load %struct.listNode*, %struct.listNode** %ln, align 8, !dbg !1109
  %value = getelementptr inbounds %struct.listNode, %struct.listNode* %42, i32 0, i32 2, !dbg !1110
  %43 = load i8*, i8** %value, align 8, !dbg !1110
  %44 = bitcast i8* %43 to %struct.aofInfo*, !dbg !1111
  store %struct.aofInfo* %44, %struct.aofInfo** %ai, align 8, !dbg !1108
  call void @llvm.dbg.declare(metadata i8** %aof_filename50, metadata !1112, metadata !DIExpression()), !dbg !1113
  %45 = load %struct.aofInfo*, %struct.aofInfo** %ai, align 8, !dbg !1114
  %file_name51 = getelementptr inbounds %struct.aofInfo, %struct.aofInfo* %45, i32 0, i32 0, !dbg !1115
  %46 = load i8*, i8** %file_name51, align 8, !dbg !1115
  store i8* %46, i8** %aof_filename50, align 8, !dbg !1113
  call void @llvm.dbg.declare(metadata i8** %aof_filepath52, metadata !1116, metadata !DIExpression()), !dbg !1117
  %47 = load i8*, i8** %dirpath.addr, align 8, !dbg !1118
  %48 = load i8*, i8** %aof_filename50, align 8, !dbg !1119
  %call53 = call i8* @makePath(i8* %47, i8* %48), !dbg !1120
  store i8* %call53, i8** %aof_filepath52, align 8, !dbg !1117
  %49 = load i32, i32* %aof_num, align 4, !dbg !1121
  %inc54 = add nsw i32 %49, 1, !dbg !1121
  store i32 %inc54, i32* %aof_num, align 4, !dbg !1121
  %50 = load i32, i32* %total_num, align 4, !dbg !1122
  %cmp55 = icmp eq i32 %inc54, %50, !dbg !1123
  %conv56 = zext i1 %cmp55 to i32, !dbg !1123
  store i32 %conv56, i32* %last_file, align 4, !dbg !1124
  %51 = load i8*, i8** %aof_filename50, align 8, !dbg !1125
  %52 = load i8*, i8** %aof_filepath52, align 8, !dbg !1126
  %53 = load i32, i32* %last_file, align 4, !dbg !1127
  %54 = load i32, i32* %fix.addr, align 4, !dbg !1128
  %call57 = call i32 @checkSingleAof(i8* %51, i8* %52, i32 %53, i32 %54, i32 0), !dbg !1129
  store i32 %call57, i32* %ret, align 4, !dbg !1130
  %55 = load i32, i32* %ret, align 4, !dbg !1131
  %cmp58 = icmp eq i32 %55, 0, !dbg !1133
  br i1 %cmp58, label %if.then60, label %if.else62, !dbg !1134

if.then60:                                        ; preds = %while.body
  %56 = load i8*, i8** %aof_filename50, align 8, !dbg !1135
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i64 0, i64 0), i8* %56), !dbg !1137
  br label %if.end80, !dbg !1138

if.else62:                                        ; preds = %while.body
  %57 = load i32, i32* %ret, align 4, !dbg !1139
  %cmp63 = icmp eq i32 %57, 1, !dbg !1141
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !1142

if.then65:                                        ; preds = %if.else62
  %58 = load i8*, i8** %aof_filename50, align 8, !dbg !1143
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8* %58), !dbg !1145
  br label %if.end79, !dbg !1146

if.else67:                                        ; preds = %if.else62
  %59 = load i32, i32* %ret, align 4, !dbg !1147
  %cmp68 = icmp eq i32 %59, 3, !dbg !1149
  br i1 %cmp68, label %if.then70, label %if.else72, !dbg !1150

if.then70:                                        ; preds = %if.else67
  %60 = load i8*, i8** %aof_filename50, align 8, !dbg !1151
  %61 = load i64, i64* @to_timestamp, align 8, !dbg !1153
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i64 0, i64 0), i8* %60, i64 %61), !dbg !1154
  br label %if.end78, !dbg !1155

if.else72:                                        ; preds = %if.else67
  %62 = load i32, i32* %ret, align 4, !dbg !1156
  %cmp73 = icmp eq i32 %62, 2, !dbg !1158
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !1159

if.then75:                                        ; preds = %if.else72
  %63 = load i8*, i8** %aof_filename50, align 8, !dbg !1160
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i8* %63), !dbg !1162
  br label %if.end77, !dbg !1163

if.end77:                                         ; preds = %if.then75, %if.else72
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then70
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then65
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then60
  %64 = load i8*, i8** %aof_filepath52, align 8, !dbg !1164
  call void @sdsfree(i8* %64), !dbg !1165
  br label %while.cond, !dbg !1102, !llvm.loop !1166

while.end:                                        ; preds = %while.cond
  br label %if.end81, !dbg !1168

if.end81:                                         ; preds = %while.end, %if.end40
  %65 = load %struct.aofManifest*, %struct.aofManifest** %am, align 8, !dbg !1169
  call void @aofManifestFree(%struct.aofManifest* %65), !dbg !1170
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0)), !dbg !1171
  ret void, !dbg !1172
}

declare dso_local %struct.aofManifest* @aofLoadManifestFromFile(i8*) #4

declare dso_local i8* @makePath(i8*, i8*) #4

declare dso_local void @sdsfree(i8*) #4

declare dso_local void @listRewind(%struct.list*, %struct.listIter*) #4

declare dso_local %struct.listNode* @listNext(%struct.listIter*) #4

declare dso_local void @aofManifestFree(%struct.aofManifest*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @checkOldStyleAof(i8* %filepath, i32 %fix, i32 %preamble) #0 !dbg !1173 {
entry:
  %filepath.addr = alloca i8*, align 8
  %fix.addr = alloca i32, align 4
  %preamble.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %filepath, i8** %filepath.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %filepath.addr, metadata !1176, metadata !DIExpression()), !dbg !1177
  store i32 %fix, i32* %fix.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fix.addr, metadata !1178, metadata !DIExpression()), !dbg !1179
  store i32 %preamble, i32* %preamble.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preamble.addr, metadata !1180, metadata !DIExpression()), !dbg !1181
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0)), !dbg !1182
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1183, metadata !DIExpression()), !dbg !1184
  %0 = load i8*, i8** %filepath.addr, align 8, !dbg !1185
  %1 = load i8*, i8** %filepath.addr, align 8, !dbg !1186
  %2 = load i32, i32* %fix.addr, align 4, !dbg !1187
  %3 = load i32, i32* %preamble.addr, align 4, !dbg !1188
  %call1 = call i32 @checkSingleAof(i8* %0, i8* %1, i32 1, i32 %2, i32 %3), !dbg !1189
  store i32 %call1, i32* %ret, align 4, !dbg !1184
  %4 = load i32, i32* %ret, align 4, !dbg !1190
  %cmp = icmp eq i32 %4, 0, !dbg !1192
  br i1 %cmp, label %if.then, label %if.else, !dbg !1193

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filepath.addr, align 8, !dbg !1194
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i8* %5), !dbg !1196
  br label %if.end16, !dbg !1197

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !1198
  %cmp3 = icmp eq i32 %6, 1, !dbg !1200
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !1201

if.then4:                                         ; preds = %if.else
  %7 = load i8*, i8** %filepath.addr, align 8, !dbg !1202
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0), i8* %7), !dbg !1204
  br label %if.end15, !dbg !1205

if.else6:                                         ; preds = %if.else
  %8 = load i32, i32* %ret, align 4, !dbg !1206
  %cmp7 = icmp eq i32 %8, 3, !dbg !1208
  br i1 %cmp7, label %if.then8, label %if.else10, !dbg !1209

if.then8:                                         ; preds = %if.else6
  %9 = load i8*, i8** %filepath.addr, align 8, !dbg !1210
  %10 = load i64, i64* @to_timestamp, align 8, !dbg !1212
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i64 0, i64 0), i8* %9, i64 %10), !dbg !1213
  br label %if.end14, !dbg !1214

if.else10:                                        ; preds = %if.else6
  %11 = load i32, i32* %ret, align 4, !dbg !1215
  %cmp11 = icmp eq i32 %11, 2, !dbg !1217
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !1218

if.then12:                                        ; preds = %if.else10
  %12 = load i8*, i8** %filepath.addr, align 8, !dbg !1219
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0), i8* %12), !dbg !1221
  br label %if.end, !dbg !1222

if.end:                                           ; preds = %if.then12, %if.else10
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  ret void, !dbg !1223
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @redis_check_aof_main(i32 %argc, i8** %argv) #0 !dbg !1224 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filepath = alloca i8*, align 8
  %temp_filepath = alloca [4097 x i8], align 16
  %dirpath = alloca i8*, align 8
  %fix = alloca i32, align 4
  %endptr = alloca i8*, align 8
  %type = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata i8** %filepath, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.declare(metadata [4097 x i8]* %temp_filepath, metadata !1233, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.declare(metadata i8** %dirpath, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.declare(metadata i32* %fix, metadata !1240, metadata !DIExpression()), !dbg !1241
  store i32 0, i32* %fix, align 4, !dbg !1241
  %0 = load i32, i32* %argc.addr, align 4, !dbg !1242
  %cmp = icmp slt i32 %0, 2, !dbg !1244
  br i1 %cmp, label %if.then, label %if.else, !dbg !1245

if.then:                                          ; preds = %entry
  br label %invalid_args, !dbg !1246

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4, !dbg !1248
  %cmp1 = icmp eq i32 %1, 2, !dbg !1250
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !1251

if.then2:                                         ; preds = %if.else
  %2 = load i8**, i8*** %argv.addr, align 8, !dbg !1252
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1, !dbg !1252
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !1252
  store i8* %3, i8** %filepath, align 8, !dbg !1254
  br label %if.end33, !dbg !1255

if.else3:                                         ; preds = %if.else
  %4 = load i32, i32* %argc.addr, align 4, !dbg !1256
  %cmp4 = icmp eq i32 %4, 3, !dbg !1258
  br i1 %cmp4, label %if.then5, label %if.else10, !dbg !1259

if.then5:                                         ; preds = %if.else3
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !1260
  %arrayidx6 = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !1260
  %6 = load i8*, i8** %arrayidx6, align 8, !dbg !1260
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i64 0, i64 0)) #8, !dbg !1263
  %tobool = icmp ne i32 %call, 0, !dbg !1263
  br i1 %tobool, label %if.else9, label %if.then7, !dbg !1264

if.then7:                                         ; preds = %if.then5
  %7 = load i8**, i8*** %argv.addr, align 8, !dbg !1265
  %arrayidx8 = getelementptr inbounds i8*, i8** %7, i64 2, !dbg !1265
  %8 = load i8*, i8** %arrayidx8, align 8, !dbg !1265
  store i8* %8, i8** %filepath, align 8, !dbg !1267
  store i32 1, i32* %fix, align 4, !dbg !1268
  br label %if.end, !dbg !1269

if.else9:                                         ; preds = %if.then5
  br label %invalid_args, !dbg !1270

if.end:                                           ; preds = %if.then7
  br label %if.end32, !dbg !1272

if.else10:                                        ; preds = %if.else3
  %9 = load i32, i32* %argc.addr, align 4, !dbg !1273
  %cmp11 = icmp eq i32 %9, 4, !dbg !1275
  br i1 %cmp11, label %if.then12, label %if.else30, !dbg !1276

if.then12:                                        ; preds = %if.else10
  %10 = load i8**, i8*** %argv.addr, align 8, !dbg !1277
  %arrayidx13 = getelementptr inbounds i8*, i8** %10, i64 1, !dbg !1277
  %11 = load i8*, i8** %arrayidx13, align 8, !dbg !1277
  %call14 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0)) #8, !dbg !1280
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1280
  br i1 %tobool15, label %if.else28, label %if.then16, !dbg !1281

if.then16:                                        ; preds = %if.then12
  call void @llvm.dbg.declare(metadata i8** %endptr, metadata !1282, metadata !DIExpression()), !dbg !1284
  %call17 = call i32* @__errno_location() #11, !dbg !1285
  store i32 0, i32* %call17, align 4, !dbg !1286
  %12 = load i8**, i8*** %argv.addr, align 8, !dbg !1287
  %arrayidx18 = getelementptr inbounds i8*, i8** %12, i64 2, !dbg !1287
  %13 = load i8*, i8** %arrayidx18, align 8, !dbg !1287
  %call19 = call i64 @strtol(i8* %13, i8** %endptr, i32 10) #9, !dbg !1288
  store i64 %call19, i64* @to_timestamp, align 8, !dbg !1289
  %call20 = call i32* @__errno_location() #11, !dbg !1290
  %14 = load i32, i32* %call20, align 4, !dbg !1290
  %cmp21 = icmp ne i32 %14, 0, !dbg !1292
  br i1 %cmp21, label %if.then24, label %lor.lhs.false, !dbg !1293

lor.lhs.false:                                    ; preds = %if.then16
  %15 = load i8*, i8** %endptr, align 8, !dbg !1294
  %16 = load i8, i8* %15, align 1, !dbg !1295
  %conv = sext i8 %16 to i32, !dbg !1295
  %cmp22 = icmp ne i32 %conv, 0, !dbg !1296
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !1297

if.then24:                                        ; preds = %lor.lhs.false, %if.then16
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i64 0, i64 0)), !dbg !1298
  call void @exit(i32 1) #10, !dbg !1300
  unreachable, !dbg !1300

if.end26:                                         ; preds = %lor.lhs.false
  %17 = load i8**, i8*** %argv.addr, align 8, !dbg !1301
  %arrayidx27 = getelementptr inbounds i8*, i8** %17, i64 3, !dbg !1301
  %18 = load i8*, i8** %arrayidx27, align 8, !dbg !1301
  store i8* %18, i8** %filepath, align 8, !dbg !1302
  br label %if.end29, !dbg !1303

if.else28:                                        ; preds = %if.then12
  br label %invalid_args, !dbg !1304

if.end29:                                         ; preds = %if.end26
  br label %if.end31, !dbg !1306

if.else30:                                        ; preds = %if.else10
  br label %invalid_args, !dbg !1307

if.end31:                                         ; preds = %if.end29
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then2
  br label %if.end34

if.end34:                                         ; preds = %if.end33
  %arraydecay = getelementptr inbounds [4097 x i8], [4097 x i8]* %temp_filepath, i64 0, i64 0, !dbg !1309
  %19 = load i8*, i8** %filepath, align 8, !dbg !1310
  %20 = load i8*, i8** %filepath, align 8, !dbg !1311
  %call35 = call i64 @strlen(i8* %20) #8, !dbg !1312
  %add = add i64 %call35, 1, !dbg !1313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 1 %19, i64 %add, i1 false), !dbg !1309
  %arraydecay36 = getelementptr inbounds [4097 x i8], [4097 x i8]* %temp_filepath, i64 0, i64 0, !dbg !1314
  %call37 = call i8* @dirname(i8* %arraydecay36) #9, !dbg !1315
  store i8* %call37, i8** %dirpath, align 8, !dbg !1316
  call void @llvm.dbg.declare(metadata i32* %type, metadata !1317, metadata !DIExpression()), !dbg !1318
  %21 = load i8*, i8** %filepath, align 8, !dbg !1319
  %call38 = call i32 @getInputFileType(i8* %21), !dbg !1320
  store i32 %call38, i32* %type, align 4, !dbg !1318
  %22 = load i32, i32* %type, align 4, !dbg !1321
  switch i32 %22, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb39
    i32 1, label %sw.bb40
  ], !dbg !1322

sw.bb:                                            ; preds = %if.end34
  %23 = load i8*, i8** %dirpath, align 8, !dbg !1323
  %24 = load i8*, i8** %filepath, align 8, !dbg !1325
  %25 = load i32, i32* %fix, align 4, !dbg !1326
  call void @checkMultiPartAof(i8* %23, i8* %24, i32 %25), !dbg !1327
  br label %sw.epilog, !dbg !1328

sw.bb39:                                          ; preds = %if.end34
  %26 = load i8*, i8** %filepath, align 8, !dbg !1329
  %27 = load i32, i32* %fix, align 4, !dbg !1330
  call void @checkOldStyleAof(i8* %26, i32 %27, i32 0), !dbg !1331
  br label %sw.epilog, !dbg !1332

sw.bb40:                                          ; preds = %if.end34
  %28 = load i8*, i8** %filepath, align 8, !dbg !1333
  %29 = load i32, i32* %fix, align 4, !dbg !1334
  call void @checkOldStyleAof(i8* %28, i32 %29, i32 1), !dbg !1335
  br label %sw.epilog, !dbg !1336

sw.epilog:                                        ; preds = %if.end34, %sw.bb40, %sw.bb39, %sw.bb
  call void @exit(i32 0) #10, !dbg !1337
  unreachable, !dbg !1337

invalid_args:                                     ; preds = %if.else30, %if.else28, %if.else9, %if.then
  call void @llvm.dbg.label(metadata !1338), !dbg !1339
  %30 = load i8**, i8*** %argv.addr, align 8, !dbg !1340
  %arrayidx41 = getelementptr inbounds i8*, i8** %30, i64 0, !dbg !1340
  %31 = load i8*, i8** %arrayidx41, align 8, !dbg !1340
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.60, i64 0, i64 0), i8* %31), !dbg !1341
  call void @exit(i32 1) #10, !dbg !1342
  unreachable, !dbg !1342
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local i8* @dirname(i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error", scope: !2, file: !3, line: 58, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "redis-check-aof.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 42, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "AOF_RESP", value: 0)
!9 = !DIEnumerator(name: "AOF_RDB_PREAMBLE", value: 1)
!10 = !DIEnumerator(name: "AOF_MULTI_PART", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 1408, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "./server.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "AOF_FILE_TYPE_BASE", value: 98)
!15 = !DIEnumerator(name: "AOF_FILE_TYPE_HIST", value: 104)
!16 = !DIEnumerator(name: "AOF_FILE_TYPE_INCR", value: 105)
!17 = !{!18, !19, !20, !22, !23}
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "aofInfo", file: !12, line: 1418, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 1414, size: 192, elements: !26)
!26 = !{!27, !30, !31}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "file_name", scope: !25, file: !12, line: 1415, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !29, line: 43, baseType: !20)
!29 = !DIFile(filename: "./sds.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "file_seq", scope: !25, file: !12, line: 1416, baseType: !18, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "file_type", scope: !25, file: !12, line: 1417, baseType: !32, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "aof_file_type", file: !12, line: 1412, baseType: !11)
!33 = !{!0, !34, !40, !42}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "epos", scope: !2, file: !3, line: 59, type: !36, isLocal: true, isDefinition: true)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !37, line: 58, baseType: !38)
!37 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !39, line: 153, baseType: !22)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "line", scope: !2, file: !3, line: 60, type: !18, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "to_timestamp", scope: !2, file: !3, line: 61, type: !44, isLocal: true, isDefinition: true)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !45, line: 10, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !39, line: 160, baseType: !22)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8352, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 1044)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!56 = distinct !DISubprogram(name: "consumeNewline", scope: !3, file: !3, line: 63, type: !57, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !20}
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !{}
!61 = !DILocalVariable(name: "buf", arg: 1, scope: !56, file: !3, line: 63, type: !20)
!62 = !DILocation(line: 63, column: 26, scope: !56)
!63 = !DILocation(line: 64, column: 17, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !3, line: 64, column: 9)
!65 = !DILocation(line: 64, column: 9, scope: !64)
!66 = !DILocation(line: 64, column: 31, scope: !64)
!67 = !DILocation(line: 64, column: 9, scope: !56)
!68 = !DILocalVariable(name: "__buf", scope: !69, file: !3, line: 65, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 65, column: 9)
!70 = distinct !DILexicalBlock(scope: !64, file: !3, line: 64, column: 37)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1024)
!74 = !DILocation(line: 65, column: 9, scope: !69)
!75 = !DILocation(line: 66, column: 9, scope: !70)
!76 = !DILocation(line: 68, column: 10, scope: !56)
!77 = !DILocation(line: 69, column: 5, scope: !56)
!78 = !DILocation(line: 70, column: 1, scope: !56)
!79 = distinct !DISubprogram(name: "readLong", scope: !3, file: !3, line: 72, type: !80, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!80 = !DISubroutineType(types: !81)
!81 = !{!59, !82, !21, !138}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !109, !111, !113, !117, !120, !121, !124, !127, !128, !129, !133, !134}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !59, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !20, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !20, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !20, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !20, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !20, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !20, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !20, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !20, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !20, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !20, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !20, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !59, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !59, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !39, line: 152, baseType: !22)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !110, size: 16, offset: 1024)
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 89, baseType: !38, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !85, file: !86, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !86, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !85, file: !86, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !86, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !85, file: !86, line: 93, baseType: !104, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !19, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !130, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 46, baseType: !132)
!131 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!132 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !59, size: 32, offset: 1536)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !135, size: 160, offset: 1568)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 20)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!139 = !DILocalVariable(name: "fp", arg: 1, scope: !79, file: !3, line: 72, type: !82)
!140 = !DILocation(line: 72, column: 20, scope: !79)
!141 = !DILocalVariable(name: "prefix", arg: 2, scope: !79, file: !3, line: 72, type: !21)
!142 = !DILocation(line: 72, column: 29, scope: !79)
!143 = !DILocalVariable(name: "target", arg: 3, scope: !79, file: !3, line: 72, type: !138)
!144 = !DILocation(line: 72, column: 43, scope: !79)
!145 = !DILocalVariable(name: "buf", scope: !79, file: !3, line: 73, type: !146)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 128)
!149 = !DILocation(line: 73, column: 10, scope: !79)
!150 = !DILocalVariable(name: "eptr", scope: !79, file: !3, line: 73, type: !20)
!151 = !DILocation(line: 73, column: 21, scope: !79)
!152 = !DILocation(line: 74, column: 19, scope: !79)
!153 = !DILocation(line: 74, column: 12, scope: !79)
!154 = !DILocation(line: 74, column: 10, scope: !79)
!155 = !DILocation(line: 75, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !79, file: !3, line: 75, column: 9)
!157 = !DILocation(line: 75, column: 31, scope: !156)
!158 = !DILocation(line: 75, column: 9, scope: !156)
!159 = !DILocation(line: 75, column: 35, scope: !156)
!160 = !DILocation(line: 75, column: 9, scope: !79)
!161 = !DILocation(line: 76, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !156, file: !3, line: 75, column: 44)
!163 = !DILocation(line: 78, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !79, file: !3, line: 78, column: 9)
!165 = !DILocation(line: 78, column: 19, scope: !164)
!166 = !DILocation(line: 78, column: 16, scope: !164)
!167 = !DILocation(line: 78, column: 9, scope: !79)
!168 = !DILocalVariable(name: "__buf", scope: !169, file: !3, line: 79, type: !71)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 79, column: 9)
!170 = distinct !DILexicalBlock(scope: !164, file: !3, line: 78, column: 27)
!171 = !DILocation(line: 79, column: 9, scope: !169)
!172 = !DILocation(line: 80, column: 9, scope: !170)
!173 = !DILocation(line: 82, column: 22, scope: !79)
!174 = !DILocation(line: 82, column: 25, scope: !79)
!175 = !DILocation(line: 82, column: 15, scope: !79)
!176 = !DILocation(line: 82, column: 6, scope: !79)
!177 = !DILocation(line: 82, column: 13, scope: !79)
!178 = !DILocation(line: 83, column: 27, scope: !79)
!179 = !DILocation(line: 83, column: 12, scope: !79)
!180 = !DILocation(line: 83, column: 5, scope: !79)
!181 = !DILocation(line: 84, column: 1, scope: !79)
!182 = distinct !DISubprogram(name: "readBytes", scope: !3, file: !3, line: 86, type: !183, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!183 = !DISubroutineType(types: !184)
!184 = !{!59, !82, !20, !22}
!185 = !DILocalVariable(name: "fp", arg: 1, scope: !182, file: !3, line: 86, type: !82)
!186 = !DILocation(line: 86, column: 21, scope: !182)
!187 = !DILocalVariable(name: "target", arg: 2, scope: !182, file: !3, line: 86, type: !20)
!188 = !DILocation(line: 86, column: 31, scope: !182)
!189 = !DILocalVariable(name: "length", arg: 3, scope: !182, file: !3, line: 86, type: !22)
!190 = !DILocation(line: 86, column: 44, scope: !182)
!191 = !DILocalVariable(name: "real", scope: !182, file: !3, line: 87, type: !22)
!192 = !DILocation(line: 87, column: 10, scope: !182)
!193 = !DILocation(line: 88, column: 19, scope: !182)
!194 = !DILocation(line: 88, column: 12, scope: !182)
!195 = !DILocation(line: 88, column: 10, scope: !182)
!196 = !DILocation(line: 89, column: 18, scope: !182)
!197 = !DILocation(line: 89, column: 27, scope: !182)
!198 = !DILocation(line: 89, column: 34, scope: !182)
!199 = !DILocation(line: 89, column: 12, scope: !182)
!200 = !DILocation(line: 89, column: 10, scope: !182)
!201 = !DILocation(line: 90, column: 9, scope: !202)
!202 = distinct !DILexicalBlock(scope: !182, file: !3, line: 90, column: 9)
!203 = !DILocation(line: 90, column: 17, scope: !202)
!204 = !DILocation(line: 90, column: 14, scope: !202)
!205 = !DILocation(line: 90, column: 9, scope: !182)
!206 = !DILocalVariable(name: "__buf", scope: !207, file: !3, line: 91, type: !71)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 91, column: 9)
!208 = distinct !DILexicalBlock(scope: !202, file: !3, line: 90, column: 25)
!209 = !DILocation(line: 91, column: 9, scope: !207)
!210 = !DILocation(line: 92, column: 9, scope: !208)
!211 = !DILocation(line: 94, column: 5, scope: !182)
!212 = !DILocation(line: 95, column: 1, scope: !182)
!213 = distinct !DISubprogram(name: "readString", scope: !3, file: !3, line: 97, type: !214, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!214 = !DISubroutineType(types: !215)
!215 = !{!59, !82, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!217 = !DILocalVariable(name: "fp", arg: 1, scope: !213, file: !3, line: 97, type: !82)
!218 = !DILocation(line: 97, column: 22, scope: !213)
!219 = !DILocalVariable(name: "target", arg: 2, scope: !213, file: !3, line: 97, type: !216)
!220 = !DILocation(line: 97, column: 33, scope: !213)
!221 = !DILocalVariable(name: "len", scope: !213, file: !3, line: 98, type: !22)
!222 = !DILocation(line: 98, column: 10, scope: !213)
!223 = !DILocation(line: 99, column: 6, scope: !213)
!224 = !DILocation(line: 99, column: 13, scope: !213)
!225 = !DILocation(line: 100, column: 19, scope: !226)
!226 = distinct !DILexicalBlock(scope: !213, file: !3, line: 100, column: 9)
!227 = !DILocation(line: 100, column: 10, scope: !226)
!228 = !DILocation(line: 100, column: 9, scope: !213)
!229 = !DILocation(line: 101, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 100, column: 33)
!231 = !DILocation(line: 104, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !213, file: !3, line: 104, column: 9)
!233 = !DILocation(line: 104, column: 13, scope: !232)
!234 = !DILocation(line: 104, column: 17, scope: !232)
!235 = !DILocation(line: 104, column: 20, scope: !232)
!236 = !DILocation(line: 104, column: 24, scope: !232)
!237 = !DILocation(line: 104, column: 9, scope: !213)
!238 = !DILocalVariable(name: "__buf", scope: !239, file: !3, line: 105, type: !71)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 105, column: 9)
!240 = distinct !DILexicalBlock(scope: !232, file: !3, line: 104, column: 40)
!241 = !DILocation(line: 105, column: 9, scope: !239)
!242 = !DILocation(line: 106, column: 9, scope: !240)
!243 = !DILocation(line: 110, column: 9, scope: !213)
!244 = !DILocation(line: 111, column: 30, scope: !213)
!245 = !DILocation(line: 111, column: 22, scope: !213)
!246 = !DILocation(line: 111, column: 6, scope: !213)
!247 = !DILocation(line: 111, column: 13, scope: !213)
!248 = !DILocation(line: 112, column: 20, scope: !249)
!249 = distinct !DILexicalBlock(scope: !213, file: !3, line: 112, column: 9)
!250 = !DILocation(line: 112, column: 24, scope: !249)
!251 = !DILocation(line: 112, column: 23, scope: !249)
!252 = !DILocation(line: 112, column: 31, scope: !249)
!253 = !DILocation(line: 112, column: 10, scope: !249)
!254 = !DILocation(line: 112, column: 9, scope: !213)
!255 = !DILocation(line: 113, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !249, file: !3, line: 112, column: 37)
!257 = !DILocation(line: 113, column: 15, scope: !256)
!258 = !DILocation(line: 113, column: 9, scope: !256)
!259 = !DILocation(line: 114, column: 10, scope: !256)
!260 = !DILocation(line: 114, column: 17, scope: !256)
!261 = !DILocation(line: 115, column: 9, scope: !256)
!262 = !DILocation(line: 117, column: 26, scope: !263)
!263 = distinct !DILexicalBlock(scope: !213, file: !3, line: 117, column: 9)
!264 = !DILocation(line: 117, column: 25, scope: !263)
!265 = !DILocation(line: 117, column: 33, scope: !263)
!266 = !DILocation(line: 117, column: 32, scope: !263)
!267 = !DILocation(line: 117, column: 36, scope: !263)
!268 = !DILocation(line: 117, column: 10, scope: !263)
!269 = !DILocation(line: 117, column: 9, scope: !213)
!270 = !DILocation(line: 118, column: 16, scope: !271)
!271 = distinct !DILexicalBlock(scope: !263, file: !3, line: 117, column: 41)
!272 = !DILocation(line: 118, column: 15, scope: !271)
!273 = !DILocation(line: 118, column: 9, scope: !271)
!274 = !DILocation(line: 119, column: 10, scope: !271)
!275 = !DILocation(line: 119, column: 17, scope: !271)
!276 = !DILocation(line: 120, column: 9, scope: !271)
!277 = !DILocation(line: 122, column: 7, scope: !213)
!278 = !DILocation(line: 122, column: 6, scope: !213)
!279 = !DILocation(line: 122, column: 15, scope: !213)
!280 = !DILocation(line: 122, column: 18, scope: !213)
!281 = !DILocation(line: 122, column: 5, scope: !213)
!282 = !DILocation(line: 122, column: 22, scope: !213)
!283 = !DILocation(line: 123, column: 5, scope: !213)
!284 = !DILocation(line: 124, column: 1, scope: !213)
!285 = distinct !DISubprogram(name: "readArgc", scope: !3, file: !3, line: 126, type: !286, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!286 = !DISubroutineType(types: !287)
!287 = !{!59, !82, !138}
!288 = !DILocalVariable(name: "fp", arg: 1, scope: !285, file: !3, line: 126, type: !82)
!289 = !DILocation(line: 126, column: 20, scope: !285)
!290 = !DILocalVariable(name: "target", arg: 2, scope: !285, file: !3, line: 126, type: !138)
!291 = !DILocation(line: 126, column: 30, scope: !285)
!292 = !DILocation(line: 127, column: 21, scope: !285)
!293 = !DILocation(line: 127, column: 28, scope: !285)
!294 = !DILocation(line: 127, column: 12, scope: !285)
!295 = !DILocation(line: 127, column: 5, scope: !285)
!296 = distinct !DISubprogram(name: "processRESP", scope: !3, file: !3, line: 137, type: !297, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!297 = !DISubroutineType(types: !298)
!298 = !{!59, !82, !20, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!300 = !DILocalVariable(name: "fp", arg: 1, scope: !296, file: !3, line: 137, type: !82)
!301 = !DILocation(line: 137, column: 23, scope: !296)
!302 = !DILocalVariable(name: "filename", arg: 2, scope: !296, file: !3, line: 137, type: !20)
!303 = !DILocation(line: 137, column: 33, scope: !296)
!304 = !DILocalVariable(name: "out_multi", arg: 3, scope: !296, file: !3, line: 137, type: !299)
!305 = !DILocation(line: 137, column: 48, scope: !296)
!306 = !DILocalVariable(name: "argc", scope: !296, file: !3, line: 138, type: !22)
!307 = !DILocation(line: 138, column: 10, scope: !296)
!308 = !DILocalVariable(name: "str", scope: !296, file: !3, line: 139, type: !20)
!309 = !DILocation(line: 139, column: 11, scope: !296)
!310 = !DILocation(line: 141, column: 19, scope: !311)
!311 = distinct !DILexicalBlock(scope: !296, file: !3, line: 141, column: 9)
!312 = !DILocation(line: 141, column: 10, scope: !311)
!313 = !DILocation(line: 141, column: 9, scope: !296)
!314 = !DILocation(line: 141, column: 31, scope: !311)
!315 = !DILocalVariable(name: "i", scope: !316, file: !3, line: 143, type: !59)
!316 = distinct !DILexicalBlock(scope: !296, file: !3, line: 143, column: 5)
!317 = !DILocation(line: 143, column: 14, scope: !316)
!318 = !DILocation(line: 143, column: 10, scope: !316)
!319 = !DILocation(line: 143, column: 21, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 143, column: 5)
!321 = !DILocation(line: 143, column: 25, scope: !320)
!322 = !DILocation(line: 143, column: 23, scope: !320)
!323 = !DILocation(line: 143, column: 5, scope: !316)
!324 = !DILocation(line: 144, column: 25, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 144, column: 13)
!326 = distinct !DILexicalBlock(scope: !320, file: !3, line: 143, column: 36)
!327 = !DILocation(line: 144, column: 14, scope: !325)
!328 = !DILocation(line: 144, column: 13, scope: !326)
!329 = !DILocation(line: 144, column: 36, scope: !325)
!330 = !DILocation(line: 145, column: 13, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !3, line: 145, column: 13)
!332 = !DILocation(line: 145, column: 15, scope: !331)
!333 = !DILocation(line: 145, column: 13, scope: !326)
!334 = !DILocation(line: 146, column: 28, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 146, column: 17)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 145, column: 21)
!337 = !DILocation(line: 146, column: 17, scope: !335)
!338 = !DILocation(line: 146, column: 42, scope: !335)
!339 = !DILocation(line: 146, column: 17, scope: !336)
!340 = !DILocation(line: 147, column: 23, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 147, column: 21)
!342 = distinct !DILexicalBlock(scope: !335, file: !3, line: 146, column: 48)
!343 = !DILocation(line: 147, column: 33, scope: !341)
!344 = !DILocation(line: 147, column: 21, scope: !342)
!345 = !DILocalVariable(name: "__buf", scope: !346, file: !3, line: 148, type: !71)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 148, column: 21)
!347 = distinct !DILexicalBlock(scope: !341, file: !3, line: 147, column: 37)
!348 = !DILocation(line: 148, column: 21, scope: !346)
!349 = !DILocation(line: 149, column: 27, scope: !347)
!350 = !DILocation(line: 149, column: 21, scope: !347)
!351 = !DILocation(line: 150, column: 21, scope: !347)
!352 = !DILocation(line: 152, column: 13, scope: !342)
!353 = !DILocation(line: 152, column: 35, scope: !354)
!354 = distinct !DILexicalBlock(scope: !335, file: !3, line: 152, column: 24)
!355 = !DILocation(line: 152, column: 24, scope: !354)
!356 = !DILocation(line: 152, column: 48, scope: !354)
!357 = !DILocation(line: 152, column: 24, scope: !335)
!358 = !DILocation(line: 153, column: 25, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 153, column: 21)
!360 = distinct !DILexicalBlock(scope: !354, file: !3, line: 152, column: 54)
!361 = !DILocation(line: 153, column: 21, scope: !359)
!362 = !DILocation(line: 153, column: 21, scope: !360)
!363 = !DILocalVariable(name: "__buf", scope: !364, file: !3, line: 154, type: !71)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 154, column: 21)
!365 = distinct !DILexicalBlock(scope: !359, file: !3, line: 153, column: 37)
!366 = !DILocation(line: 154, column: 21, scope: !364)
!367 = !DILocation(line: 155, column: 27, scope: !365)
!368 = !DILocation(line: 155, column: 21, scope: !365)
!369 = !DILocation(line: 156, column: 21, scope: !365)
!370 = !DILocation(line: 158, column: 13, scope: !360)
!371 = !DILocation(line: 159, column: 9, scope: !336)
!372 = !DILocation(line: 160, column: 15, scope: !326)
!373 = !DILocation(line: 160, column: 9, scope: !326)
!374 = !DILocation(line: 161, column: 5, scope: !326)
!375 = !DILocation(line: 143, column: 32, scope: !320)
!376 = !DILocation(line: 143, column: 5, scope: !320)
!377 = distinct !{!377, !323, !378, !379}
!378 = !DILocation(line: 161, column: 5, scope: !316)
!379 = !{!"llvm.loop.mustprogress"}
!380 = !DILocation(line: 163, column: 5, scope: !296)
!381 = !DILocation(line: 164, column: 1, scope: !296)
!382 = distinct !DISubprogram(name: "processAnnotations", scope: !3, file: !3, line: 175, type: !383, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!383 = !DISubroutineType(types: !384)
!384 = !{!59, !82, !20, !59}
!385 = !DILocalVariable(name: "fp", arg: 1, scope: !382, file: !3, line: 175, type: !82)
!386 = !DILocation(line: 175, column: 30, scope: !382)
!387 = !DILocalVariable(name: "filename", arg: 2, scope: !382, file: !3, line: 175, type: !20)
!388 = !DILocation(line: 175, column: 40, scope: !382)
!389 = !DILocalVariable(name: "last_file", arg: 3, scope: !382, file: !3, line: 175, type: !59)
!390 = !DILocation(line: 175, column: 54, scope: !382)
!391 = !DILocalVariable(name: "buf", scope: !382, file: !3, line: 176, type: !71)
!392 = !DILocation(line: 176, column: 10, scope: !382)
!393 = !DILocation(line: 178, column: 19, scope: !382)
!394 = !DILocation(line: 178, column: 12, scope: !382)
!395 = !DILocation(line: 178, column: 10, scope: !382)
!396 = !DILocation(line: 179, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !382, file: !3, line: 179, column: 9)
!398 = !DILocation(line: 179, column: 33, scope: !397)
!399 = !DILocation(line: 179, column: 9, scope: !397)
!400 = !DILocation(line: 179, column: 37, scope: !397)
!401 = !DILocation(line: 179, column: 9, scope: !382)
!402 = !DILocation(line: 180, column: 73, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !3, line: 179, column: 46)
!404 = !DILocation(line: 180, column: 9, scope: !403)
!405 = !DILocation(line: 181, column: 9, scope: !403)
!406 = !DILocation(line: 184, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !382, file: !3, line: 184, column: 9)
!408 = !DILocation(line: 184, column: 22, scope: !407)
!409 = !DILocation(line: 184, column: 33, scope: !407)
!410 = !DILocation(line: 184, column: 25, scope: !407)
!411 = !DILocation(line: 184, column: 49, scope: !407)
!412 = !DILocation(line: 184, column: 9, scope: !382)
!413 = !DILocalVariable(name: "endptr", scope: !414, file: !3, line: 185, type: !20)
!414 = distinct !DILexicalBlock(scope: !407, file: !3, line: 184, column: 55)
!415 = !DILocation(line: 185, column: 15, scope: !414)
!416 = !DILocation(line: 186, column: 9, scope: !414)
!417 = !DILocation(line: 186, column: 15, scope: !414)
!418 = !DILocalVariable(name: "ts", scope: !414, file: !3, line: 187, type: !44)
!419 = !DILocation(line: 187, column: 16, scope: !414)
!420 = !DILocation(line: 187, column: 28, scope: !414)
!421 = !DILocation(line: 187, column: 31, scope: !414)
!422 = !DILocation(line: 187, column: 21, scope: !414)
!423 = !DILocation(line: 188, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !414, file: !3, line: 188, column: 13)
!425 = !DILocation(line: 188, column: 19, scope: !424)
!426 = !DILocation(line: 188, column: 24, scope: !424)
!427 = !DILocation(line: 188, column: 28, scope: !424)
!428 = !DILocation(line: 188, column: 27, scope: !424)
!429 = !DILocation(line: 188, column: 35, scope: !424)
!430 = !DILocation(line: 188, column: 13, scope: !414)
!431 = !DILocation(line: 189, column: 13, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !3, line: 188, column: 44)
!433 = !DILocation(line: 190, column: 13, scope: !432)
!434 = !DILocation(line: 192, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !414, file: !3, line: 192, column: 13)
!436 = !DILocation(line: 192, column: 19, scope: !435)
!437 = !DILocation(line: 192, column: 16, scope: !435)
!438 = !DILocation(line: 192, column: 13, scope: !414)
!439 = !DILocation(line: 192, column: 33, scope: !435)
!440 = !DILocation(line: 193, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !414, file: !3, line: 193, column: 13)
!442 = !DILocation(line: 193, column: 18, scope: !441)
!443 = !DILocation(line: 193, column: 13, scope: !414)
!444 = !DILocation(line: 195, column: 38, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 193, column: 24)
!446 = !DILocation(line: 195, column: 48, scope: !445)
!447 = !DILocation(line: 194, column: 13, scope: !445)
!448 = !DILocation(line: 196, column: 13, scope: !445)
!449 = !DILocation(line: 198, column: 14, scope: !450)
!450 = distinct !DILexicalBlock(scope: !414, file: !3, line: 198, column: 13)
!451 = !DILocation(line: 198, column: 13, scope: !414)
!452 = !DILocation(line: 200, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !3, line: 198, column: 25)
!454 = !DILocation(line: 200, column: 27, scope: !453)
!455 = !DILocation(line: 200, column: 51, scope: !453)
!456 = !DILocation(line: 199, column: 13, scope: !453)
!457 = !DILocation(line: 201, column: 13, scope: !453)
!458 = !DILocation(line: 203, column: 13, scope: !453)
!459 = !DILocation(line: 206, column: 30, scope: !460)
!460 = distinct !DILexicalBlock(scope: !414, file: !3, line: 206, column: 13)
!461 = !DILocation(line: 206, column: 23, scope: !460)
!462 = !DILocation(line: 206, column: 35, scope: !460)
!463 = !DILocation(line: 206, column: 13, scope: !460)
!464 = !DILocation(line: 206, column: 41, scope: !460)
!465 = !DILocation(line: 206, column: 13, scope: !414)
!466 = !DILocation(line: 208, column: 21, scope: !467)
!467 = distinct !DILexicalBlock(scope: !460, file: !3, line: 206, column: 48)
!468 = !DILocation(line: 208, column: 31, scope: !467)
!469 = !DILocation(line: 207, column: 13, scope: !467)
!470 = !DILocation(line: 209, column: 13, scope: !467)
!471 = !DILocation(line: 211, column: 13, scope: !472)
!472 = distinct !DILexicalBlock(scope: !460, file: !3, line: 210, column: 16)
!473 = !DILocation(line: 214, column: 5, scope: !382)
!474 = !DILocation(line: 215, column: 1, scope: !382)
!475 = distinct !DISubprogram(name: "checkSingleAof", scope: !3, file: !3, line: 222, type: !476, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!476 = !DISubroutineType(types: !477)
!477 = !{!59, !20, !20, !59, !59, !59}
!478 = !DILocalVariable(name: "aof_filename", arg: 1, scope: !475, file: !3, line: 222, type: !20)
!479 = !DILocation(line: 222, column: 26, scope: !475)
!480 = !DILocalVariable(name: "aof_filepath", arg: 2, scope: !475, file: !3, line: 222, type: !20)
!481 = !DILocation(line: 222, column: 46, scope: !475)
!482 = !DILocalVariable(name: "last_file", arg: 3, scope: !475, file: !3, line: 222, type: !59)
!483 = !DILocation(line: 222, column: 64, scope: !475)
!484 = !DILocalVariable(name: "fix", arg: 4, scope: !475, file: !3, line: 222, type: !59)
!485 = !DILocation(line: 222, column: 79, scope: !475)
!486 = !DILocalVariable(name: "preamble", arg: 5, scope: !475, file: !3, line: 222, type: !59)
!487 = !DILocation(line: 222, column: 88, scope: !475)
!488 = !DILocalVariable(name: "pos", scope: !475, file: !3, line: 223, type: !36)
!489 = !DILocation(line: 223, column: 11, scope: !475)
!490 = !DILocalVariable(name: "diff", scope: !475, file: !3, line: 223, type: !36)
!491 = !DILocation(line: 223, column: 20, scope: !475)
!492 = !DILocalVariable(name: "multi", scope: !475, file: !3, line: 224, type: !59)
!493 = !DILocation(line: 224, column: 9, scope: !475)
!494 = !DILocalVariable(name: "buf", scope: !475, file: !3, line: 225, type: !495)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 2)
!498 = !DILocation(line: 225, column: 10, scope: !475)
!499 = !DILocalVariable(name: "fp", scope: !475, file: !3, line: 227, type: !82)
!500 = !DILocation(line: 227, column: 11, scope: !475)
!501 = !DILocation(line: 227, column: 22, scope: !475)
!502 = !DILocation(line: 227, column: 16, scope: !475)
!503 = !DILocation(line: 228, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !475, file: !3, line: 228, column: 9)
!505 = !DILocation(line: 228, column: 12, scope: !504)
!506 = !DILocation(line: 228, column: 9, scope: !475)
!507 = !DILocation(line: 229, column: 58, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !3, line: 228, column: 21)
!509 = !DILocation(line: 229, column: 81, scope: !508)
!510 = !DILocation(line: 229, column: 72, scope: !508)
!511 = !DILocation(line: 229, column: 9, scope: !508)
!512 = !DILocation(line: 230, column: 9, scope: !508)
!513 = !DILocalVariable(name: "sb", scope: !475, file: !3, line: 233, type: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !515, line: 26, size: 1152, elements: !516)
!515 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "")
!516 = !{!517, !519, !521, !523, !525, !527, !529, !530, !531, !532, !534, !536, !543, !544, !545}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !514, file: !515, line: 31, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !39, line: 145, baseType: !132)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !514, file: !515, line: 36, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !39, line: 148, baseType: !132)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !514, file: !515, line: 44, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !39, line: 151, baseType: !132)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !514, file: !515, line: 45, baseType: !524, size: 32, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !39, line: 150, baseType: !6)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !514, file: !515, line: 47, baseType: !526, size: 32, offset: 224)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !39, line: 146, baseType: !6)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !514, file: !515, line: 48, baseType: !528, size: 32, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !39, line: 147, baseType: !6)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !514, file: !515, line: 50, baseType: !59, size: 32, offset: 288)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !514, file: !515, line: 52, baseType: !518, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !514, file: !515, line: 57, baseType: !108, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !514, file: !515, line: 61, baseType: !533, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !39, line: 175, baseType: !22)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !514, file: !515, line: 63, baseType: !535, size: 64, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !39, line: 180, baseType: !22)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !514, file: !515, line: 74, baseType: !537, size: 128, offset: 576)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !538, line: 11, size: 128, elements: !539)
!538 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !537, file: !538, line: 16, baseType: !46, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !537, file: !538, line: 21, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !39, line: 197, baseType: !22)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !514, file: !515, line: 75, baseType: !537, size: 128, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !514, file: !515, line: 76, baseType: !537, size: 128, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !514, file: !515, line: 89, baseType: !546, size: 192, offset: 960)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 192, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 3)
!549 = !DILocation(line: 233, column: 23, scope: !475)
!550 = !DILocation(line: 234, column: 28, scope: !551)
!551 = distinct !DILexicalBlock(scope: !475, file: !3, line: 234, column: 9)
!552 = !DILocation(line: 234, column: 21, scope: !551)
!553 = !DILocation(line: 234, column: 9, scope: !551)
!554 = !DILocation(line: 234, column: 37, scope: !551)
!555 = !DILocation(line: 234, column: 9, scope: !475)
!556 = !DILocation(line: 235, column: 55, scope: !557)
!557 = distinct !DILexicalBlock(scope: !551, file: !3, line: 234, column: 44)
!558 = !DILocation(line: 235, column: 9, scope: !557)
!559 = !DILocation(line: 236, column: 9, scope: !557)
!560 = !DILocalVariable(name: "size", scope: !475, file: !3, line: 239, type: !36)
!561 = !DILocation(line: 239, column: 11, scope: !475)
!562 = !DILocation(line: 239, column: 21, scope: !475)
!563 = !DILocation(line: 240, column: 9, scope: !564)
!564 = distinct !DILexicalBlock(scope: !475, file: !3, line: 240, column: 9)
!565 = !DILocation(line: 240, column: 14, scope: !564)
!566 = !DILocation(line: 240, column: 9, scope: !475)
!567 = !DILocation(line: 241, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 240, column: 20)
!569 = !DILocation(line: 244, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !475, file: !3, line: 244, column: 9)
!571 = !DILocation(line: 244, column: 9, scope: !475)
!572 = !DILocalVariable(name: "argv", scope: !573, file: !3, line: 245, type: !574)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 244, column: 19)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !496)
!575 = !DILocation(line: 245, column: 15, scope: !573)
!576 = !DILocation(line: 245, column: 25, scope: !573)
!577 = !DILocation(line: 245, column: 32, scope: !573)
!578 = !DILocation(line: 246, column: 37, scope: !579)
!579 = distinct !DILexicalBlock(scope: !573, file: !3, line: 246, column: 13)
!580 = !DILocation(line: 246, column: 43, scope: !579)
!581 = !DILocation(line: 246, column: 13, scope: !579)
!582 = !DILocation(line: 246, column: 47, scope: !579)
!583 = !DILocation(line: 246, column: 13, scope: !573)
!584 = !DILocation(line: 247, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 246, column: 57)
!586 = !DILocation(line: 248, column: 13, scope: !585)
!587 = !DILocation(line: 250, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !579, file: !3, line: 249, column: 16)
!589 = !DILocation(line: 252, column: 5, scope: !573)
!590 = !DILocation(line: 254, column: 5, scope: !475)
!591 = !DILocation(line: 255, column: 14, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 255, column: 13)
!593 = distinct !DILexicalBlock(scope: !475, file: !3, line: 254, column: 14)
!594 = !DILocation(line: 255, column: 13, scope: !593)
!595 = !DILocation(line: 255, column: 34, scope: !592)
!596 = !DILocation(line: 255, column: 27, scope: !592)
!597 = !DILocation(line: 255, column: 25, scope: !592)
!598 = !DILocation(line: 255, column: 21, scope: !592)
!599 = !DILocation(line: 256, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !3, line: 256, column: 13)
!601 = !DILocation(line: 256, column: 37, scope: !600)
!602 = !DILocation(line: 256, column: 13, scope: !600)
!603 = !DILocation(line: 256, column: 41, scope: !600)
!604 = !DILocation(line: 256, column: 13, scope: !593)
!605 = !DILocation(line: 257, column: 22, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 257, column: 17)
!607 = distinct !DILexicalBlock(scope: !600, file: !3, line: 256, column: 50)
!608 = !DILocation(line: 257, column: 17, scope: !606)
!609 = !DILocation(line: 257, column: 17, scope: !607)
!610 = !DILocation(line: 258, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !3, line: 257, column: 27)
!612 = !DILocation(line: 260, column: 65, scope: !607)
!613 = !DILocation(line: 260, column: 13, scope: !607)
!614 = !DILocation(line: 261, column: 13, scope: !607)
!615 = !DILocation(line: 264, column: 19, scope: !616)
!616 = distinct !DILexicalBlock(scope: !593, file: !3, line: 264, column: 13)
!617 = !DILocation(line: 264, column: 13, scope: !616)
!618 = !DILocation(line: 264, column: 37, scope: !616)
!619 = !DILocation(line: 264, column: 13, scope: !593)
!620 = !DILocation(line: 265, column: 53, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 264, column: 44)
!622 = !DILocation(line: 265, column: 76, scope: !621)
!623 = !DILocation(line: 265, column: 67, scope: !621)
!624 = !DILocation(line: 265, column: 13, scope: !621)
!625 = !DILocation(line: 266, column: 13, scope: !621)
!626 = !DILocation(line: 269, column: 13, scope: !627)
!627 = distinct !DILexicalBlock(scope: !593, file: !3, line: 269, column: 13)
!628 = !DILocation(line: 269, column: 20, scope: !627)
!629 = !DILocation(line: 269, column: 13, scope: !593)
!630 = !DILocation(line: 270, column: 37, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 270, column: 17)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 269, column: 28)
!633 = !DILocation(line: 270, column: 41, scope: !631)
!634 = !DILocation(line: 270, column: 55, scope: !631)
!635 = !DILocation(line: 270, column: 18, scope: !631)
!636 = !DILocation(line: 270, column: 17, scope: !632)
!637 = !DILocation(line: 271, column: 24, scope: !638)
!638 = distinct !DILexicalBlock(scope: !631, file: !3, line: 270, column: 67)
!639 = !DILocation(line: 271, column: 17, scope: !638)
!640 = !DILocation(line: 272, column: 17, scope: !638)
!641 = !DILocation(line: 274, column: 9, scope: !632)
!642 = !DILocation(line: 274, column: 20, scope: !643)
!643 = distinct !DILexicalBlock(scope: !627, file: !3, line: 274, column: 20)
!644 = !DILocation(line: 274, column: 27, scope: !643)
!645 = !DILocation(line: 274, column: 20, scope: !627)
!646 = !DILocation(line: 275, column: 30, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 275, column: 17)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 274, column: 34)
!649 = !DILocation(line: 275, column: 34, scope: !647)
!650 = !DILocation(line: 275, column: 18, scope: !647)
!651 = !DILocation(line: 275, column: 17, scope: !648)
!652 = !DILocation(line: 275, column: 57, scope: !647)
!653 = !DILocation(line: 276, column: 9, scope: !648)
!654 = !DILocation(line: 277, column: 45, scope: !655)
!655 = distinct !DILexicalBlock(scope: !643, file: !3, line: 276, column: 16)
!656 = !DILocation(line: 277, column: 13, scope: !655)
!657 = !DILocation(line: 278, column: 13, scope: !655)
!658 = distinct !{!658, !590, !659}
!659 = !DILocation(line: 280, column: 5, scope: !475)
!660 = !DILocation(line: 282, column: 14, scope: !661)
!661 = distinct !DILexicalBlock(scope: !475, file: !3, line: 282, column: 9)
!662 = !DILocation(line: 282, column: 9, scope: !661)
!663 = !DILocation(line: 282, column: 18, scope: !661)
!664 = !DILocation(line: 282, column: 21, scope: !661)
!665 = !DILocation(line: 282, column: 27, scope: !661)
!666 = !DILocation(line: 282, column: 30, scope: !661)
!667 = !DILocation(line: 282, column: 44, scope: !661)
!668 = !DILocation(line: 282, column: 9, scope: !475)
!669 = !DILocalVariable(name: "__buf", scope: !670, file: !3, line: 283, type: !71)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 283, column: 9)
!671 = distinct !DILexicalBlock(scope: !661, file: !3, line: 282, column: 50)
!672 = !DILocation(line: 283, column: 9, scope: !670)
!673 = !DILocation(line: 284, column: 5, scope: !671)
!674 = !DILocation(line: 286, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !475, file: !3, line: 286, column: 9)
!676 = !DILocation(line: 286, column: 23, scope: !675)
!677 = !DILocation(line: 286, column: 9, scope: !475)
!678 = !DILocation(line: 287, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !3, line: 286, column: 28)
!680 = !DILocation(line: 288, column: 5, scope: !679)
!681 = !DILocation(line: 290, column: 12, scope: !475)
!682 = !DILocation(line: 290, column: 17, scope: !475)
!683 = !DILocation(line: 290, column: 16, scope: !475)
!684 = !DILocation(line: 290, column: 10, scope: !475)
!685 = !DILocation(line: 293, column: 9, scope: !686)
!686 = distinct !DILexicalBlock(scope: !475, file: !3, line: 293, column: 9)
!687 = !DILocation(line: 293, column: 14, scope: !686)
!688 = !DILocation(line: 293, column: 19, scope: !686)
!689 = !DILocation(line: 293, column: 22, scope: !686)
!690 = !DILocation(line: 293, column: 9, scope: !475)
!691 = !DILocation(line: 294, column: 65, scope: !692)
!692 = distinct !DILexicalBlock(scope: !686, file: !3, line: 293, column: 36)
!693 = !DILocation(line: 294, column: 79, scope: !692)
!694 = !DILocation(line: 294, column: 9, scope: !692)
!695 = !DILocation(line: 295, column: 16, scope: !692)
!696 = !DILocation(line: 295, column: 9, scope: !692)
!697 = !DILocation(line: 296, column: 9, scope: !692)
!698 = !DILocation(line: 300, column: 9, scope: !475)
!699 = !DILocation(line: 300, column: 35, scope: !475)
!700 = !DILocation(line: 300, column: 53, scope: !475)
!701 = !DILocation(line: 300, column: 58, scope: !475)
!702 = !DILocation(line: 300, column: 76, scope: !475)
!703 = !DILocation(line: 299, column: 5, scope: !475)
!704 = !DILocation(line: 301, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !475, file: !3, line: 301, column: 9)
!706 = !DILocation(line: 301, column: 14, scope: !705)
!707 = !DILocation(line: 301, column: 9, scope: !475)
!708 = !DILocation(line: 302, column: 13, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 302, column: 13)
!710 = distinct !DILexicalBlock(scope: !705, file: !3, line: 301, column: 19)
!711 = !DILocation(line: 302, column: 13, scope: !710)
!712 = !DILocation(line: 303, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 303, column: 17)
!714 = distinct !DILexicalBlock(scope: !709, file: !3, line: 302, column: 18)
!715 = !DILocation(line: 303, column: 17, scope: !714)
!716 = !DILocation(line: 304, column: 87, scope: !717)
!717 = distinct !DILexicalBlock(scope: !713, file: !3, line: 303, column: 29)
!718 = !DILocation(line: 304, column: 17, scope: !717)
!719 = !DILocation(line: 305, column: 17, scope: !717)
!720 = !DILocalVariable(name: "buf", scope: !714, file: !3, line: 308, type: !495)
!721 = !DILocation(line: 308, column: 18, scope: !714)
!722 = !DILocation(line: 310, column: 17, scope: !714)
!723 = !DILocation(line: 310, column: 42, scope: !714)
!724 = !DILocation(line: 310, column: 59, scope: !714)
!725 = !DILocation(line: 310, column: 76, scope: !714)
!726 = !DILocation(line: 309, column: 13, scope: !714)
!727 = !DILocation(line: 311, column: 13, scope: !714)
!728 = !DILocation(line: 312, column: 23, scope: !729)
!729 = distinct !DILexicalBlock(scope: !714, file: !3, line: 312, column: 17)
!730 = !DILocation(line: 312, column: 41, scope: !729)
!731 = !DILocation(line: 312, column: 17, scope: !729)
!732 = !DILocation(line: 312, column: 48, scope: !729)
!733 = !DILocation(line: 312, column: 56, scope: !729)
!734 = !DILocation(line: 312, column: 71, scope: !729)
!735 = !DILocation(line: 312, column: 59, scope: !729)
!736 = !DILocation(line: 312, column: 84, scope: !729)
!737 = !DILocation(line: 312, column: 17, scope: !714)
!738 = !DILocation(line: 313, column: 17, scope: !739)
!739 = distinct !DILexicalBlock(scope: !729, file: !3, line: 312, column: 90)
!740 = !DILocation(line: 314, column: 17, scope: !739)
!741 = !DILocation(line: 316, column: 34, scope: !742)
!742 = distinct !DILexicalBlock(scope: !714, file: !3, line: 316, column: 17)
!743 = !DILocation(line: 316, column: 27, scope: !742)
!744 = !DILocation(line: 316, column: 39, scope: !742)
!745 = !DILocation(line: 316, column: 17, scope: !742)
!746 = !DILocation(line: 316, column: 44, scope: !742)
!747 = !DILocation(line: 316, column: 17, scope: !714)
!748 = !DILocation(line: 317, column: 55, scope: !749)
!749 = distinct !DILexicalBlock(scope: !742, file: !3, line: 316, column: 51)
!750 = !DILocation(line: 317, column: 17, scope: !749)
!751 = !DILocation(line: 318, column: 17, scope: !749)
!752 = !DILocation(line: 320, column: 24, scope: !753)
!753 = distinct !DILexicalBlock(scope: !742, file: !3, line: 319, column: 20)
!754 = !DILocation(line: 320, column: 17, scope: !753)
!755 = !DILocation(line: 321, column: 17, scope: !753)
!756 = !DILocation(line: 324, column: 85, scope: !757)
!757 = distinct !DILexicalBlock(scope: !709, file: !3, line: 323, column: 16)
!758 = !DILocation(line: 324, column: 13, scope: !757)
!759 = !DILocation(line: 325, column: 13, scope: !757)
!760 = !DILocation(line: 328, column: 12, scope: !475)
!761 = !DILocation(line: 328, column: 5, scope: !475)
!762 = !DILocation(line: 329, column: 5, scope: !475)
!763 = !DILocation(line: 330, column: 1, scope: !475)
!764 = distinct !DISubprogram(name: "fileIsRDB", scope: !3, file: !3, line: 336, type: !57, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!765 = !DILocalVariable(name: "filepath", arg: 1, scope: !764, file: !3, line: 336, type: !20)
!766 = !DILocation(line: 336, column: 21, scope: !764)
!767 = !DILocalVariable(name: "fp", scope: !764, file: !3, line: 337, type: !82)
!768 = !DILocation(line: 337, column: 11, scope: !764)
!769 = !DILocation(line: 337, column: 22, scope: !764)
!770 = !DILocation(line: 337, column: 16, scope: !764)
!771 = !DILocation(line: 338, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !3, line: 338, column: 9)
!773 = !DILocation(line: 338, column: 12, scope: !772)
!774 = !DILocation(line: 338, column: 9, scope: !764)
!775 = !DILocation(line: 339, column: 45, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !3, line: 338, column: 21)
!777 = !DILocation(line: 339, column: 64, scope: !776)
!778 = !DILocation(line: 339, column: 55, scope: !776)
!779 = !DILocation(line: 339, column: 9, scope: !776)
!780 = !DILocation(line: 340, column: 9, scope: !776)
!781 = !DILocalVariable(name: "sb", scope: !764, file: !3, line: 343, type: !514)
!782 = !DILocation(line: 343, column: 23, scope: !764)
!783 = !DILocation(line: 344, column: 28, scope: !784)
!784 = distinct !DILexicalBlock(scope: !764, file: !3, line: 344, column: 9)
!785 = !DILocation(line: 344, column: 21, scope: !784)
!786 = !DILocation(line: 344, column: 9, scope: !784)
!787 = !DILocation(line: 344, column: 38, scope: !784)
!788 = !DILocation(line: 344, column: 9, scope: !764)
!789 = !DILocation(line: 345, column: 42, scope: !790)
!790 = distinct !DILexicalBlock(scope: !784, file: !3, line: 344, column: 45)
!791 = !DILocation(line: 345, column: 9, scope: !790)
!792 = !DILocation(line: 346, column: 9, scope: !790)
!793 = !DILocalVariable(name: "size", scope: !764, file: !3, line: 349, type: !36)
!794 = !DILocation(line: 349, column: 11, scope: !764)
!795 = !DILocation(line: 349, column: 21, scope: !764)
!796 = !DILocation(line: 350, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !764, file: !3, line: 350, column: 9)
!798 = !DILocation(line: 350, column: 14, scope: !797)
!799 = !DILocation(line: 350, column: 9, scope: !764)
!800 = !DILocation(line: 351, column: 16, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !3, line: 350, column: 20)
!802 = !DILocation(line: 351, column: 9, scope: !801)
!803 = !DILocation(line: 352, column: 9, scope: !801)
!804 = !DILocation(line: 355, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !764, file: !3, line: 355, column: 9)
!806 = !DILocation(line: 355, column: 14, scope: !805)
!807 = !DILocation(line: 355, column: 9, scope: !764)
!808 = !DILocalVariable(name: "sig", scope: !809, file: !3, line: 356, type: !810)
!809 = distinct !DILexicalBlock(scope: !805, file: !3, line: 355, column: 20)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 40, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 5)
!813 = !DILocation(line: 356, column: 14, scope: !809)
!814 = !DILocalVariable(name: "rdb_file", scope: !809, file: !3, line: 357, type: !59)
!815 = !DILocation(line: 357, column: 13, scope: !809)
!816 = !DILocation(line: 357, column: 30, scope: !809)
!817 = !DILocation(line: 357, column: 51, scope: !809)
!818 = !DILocation(line: 357, column: 24, scope: !809)
!819 = !DILocation(line: 357, column: 55, scope: !809)
!820 = !DILocation(line: 357, column: 60, scope: !809)
!821 = !DILocation(line: 358, column: 36, scope: !809)
!822 = !DILocation(line: 358, column: 29, scope: !809)
!823 = !DILocation(line: 358, column: 63, scope: !809)
!824 = !DILocation(line: 0, scope: !809)
!825 = !DILocation(line: 359, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !809, file: !3, line: 359, column: 13)
!827 = !DILocation(line: 359, column: 13, scope: !809)
!828 = !DILocation(line: 360, column: 20, scope: !829)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 359, column: 23)
!830 = !DILocation(line: 360, column: 13, scope: !829)
!831 = !DILocation(line: 361, column: 13, scope: !829)
!832 = !DILocation(line: 363, column: 5, scope: !809)
!833 = !DILocation(line: 365, column: 12, scope: !764)
!834 = !DILocation(line: 365, column: 5, scope: !764)
!835 = !DILocation(line: 366, column: 5, scope: !764)
!836 = !DILocation(line: 367, column: 1, scope: !764)
!837 = distinct !DISubprogram(name: "fileIsManifest", scope: !3, file: !3, line: 371, type: !57, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!838 = !DILocalVariable(name: "filepath", arg: 1, scope: !837, file: !3, line: 371, type: !20)
!839 = !DILocation(line: 371, column: 26, scope: !837)
!840 = !DILocalVariable(name: "is_manifest", scope: !837, file: !3, line: 372, type: !59)
!841 = !DILocation(line: 372, column: 9, scope: !837)
!842 = !DILocalVariable(name: "fp", scope: !837, file: !3, line: 373, type: !82)
!843 = !DILocation(line: 373, column: 11, scope: !837)
!844 = !DILocation(line: 373, column: 22, scope: !837)
!845 = !DILocation(line: 373, column: 16, scope: !837)
!846 = !DILocation(line: 374, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !3, line: 374, column: 9)
!848 = !DILocation(line: 374, column: 12, scope: !847)
!849 = !DILocation(line: 374, column: 9, scope: !837)
!850 = !DILocation(line: 375, column: 45, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !3, line: 374, column: 21)
!852 = !DILocation(line: 375, column: 64, scope: !851)
!853 = !DILocation(line: 375, column: 55, scope: !851)
!854 = !DILocation(line: 375, column: 9, scope: !851)
!855 = !DILocation(line: 376, column: 9, scope: !851)
!856 = !DILocalVariable(name: "sb", scope: !837, file: !3, line: 379, type: !514)
!857 = !DILocation(line: 379, column: 23, scope: !837)
!858 = !DILocation(line: 380, column: 28, scope: !859)
!859 = distinct !DILexicalBlock(scope: !837, file: !3, line: 380, column: 9)
!860 = !DILocation(line: 380, column: 21, scope: !859)
!861 = !DILocation(line: 380, column: 9, scope: !859)
!862 = !DILocation(line: 380, column: 38, scope: !859)
!863 = !DILocation(line: 380, column: 9, scope: !837)
!864 = !DILocation(line: 381, column: 42, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !3, line: 380, column: 45)
!866 = !DILocation(line: 381, column: 9, scope: !865)
!867 = !DILocation(line: 382, column: 9, scope: !865)
!868 = !DILocalVariable(name: "size", scope: !837, file: !3, line: 385, type: !36)
!869 = !DILocation(line: 385, column: 11, scope: !837)
!870 = !DILocation(line: 385, column: 21, scope: !837)
!871 = !DILocation(line: 386, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !837, file: !3, line: 386, column: 9)
!873 = !DILocation(line: 386, column: 14, scope: !872)
!874 = !DILocation(line: 386, column: 9, scope: !837)
!875 = !DILocation(line: 387, column: 16, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 386, column: 20)
!877 = !DILocation(line: 387, column: 9, scope: !876)
!878 = !DILocation(line: 388, column: 9, scope: !876)
!879 = !DILocalVariable(name: "buf", scope: !837, file: !3, line: 391, type: !880)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8200, elements: !881)
!881 = !{!882}
!882 = !DISubrange(count: 1025)
!883 = !DILocation(line: 391, column: 10, scope: !837)
!884 = !DILocation(line: 392, column: 5, scope: !837)
!885 = !DILocation(line: 393, column: 19, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 393, column: 13)
!887 = distinct !DILexicalBlock(scope: !837, file: !3, line: 392, column: 15)
!888 = !DILocation(line: 393, column: 45, scope: !886)
!889 = !DILocation(line: 393, column: 13, scope: !886)
!890 = !DILocation(line: 393, column: 49, scope: !886)
!891 = !DILocation(line: 393, column: 13, scope: !887)
!892 = !DILocation(line: 394, column: 22, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 394, column: 17)
!894 = distinct !DILexicalBlock(scope: !886, file: !3, line: 393, column: 58)
!895 = !DILocation(line: 394, column: 17, scope: !893)
!896 = !DILocation(line: 394, column: 17, scope: !894)
!897 = !DILocation(line: 395, column: 17, scope: !898)
!898 = distinct !DILexicalBlock(scope: !893, file: !3, line: 394, column: 27)
!899 = !DILocation(line: 397, column: 50, scope: !900)
!900 = distinct !DILexicalBlock(scope: !893, file: !3, line: 396, column: 20)
!901 = !DILocation(line: 397, column: 17, scope: !900)
!902 = !DILocation(line: 398, column: 17, scope: !900)
!903 = !DILocation(line: 403, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !887, file: !3, line: 403, column: 13)
!905 = !DILocation(line: 403, column: 20, scope: !904)
!906 = !DILocation(line: 403, column: 13, scope: !887)
!907 = !DILocation(line: 404, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 403, column: 28)
!909 = distinct !{!909, !884, !910}
!910 = !DILocation(line: 408, column: 5, scope: !837)
!911 = !DILocation(line: 405, column: 28, scope: !912)
!912 = distinct !DILexicalBlock(scope: !904, file: !3, line: 405, column: 20)
!913 = !DILocation(line: 405, column: 21, scope: !912)
!914 = !DILocation(line: 405, column: 20, scope: !904)
!915 = !DILocation(line: 406, column: 25, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 405, column: 58)
!917 = !DILocation(line: 407, column: 9, scope: !916)
!918 = !DILocation(line: 410, column: 12, scope: !837)
!919 = !DILocation(line: 410, column: 5, scope: !837)
!920 = !DILocation(line: 411, column: 12, scope: !837)
!921 = !DILocation(line: 411, column: 5, scope: !837)
!922 = !DILocation(line: 412, column: 1, scope: !837)
!923 = distinct !DISubprogram(name: "getInputFileType", scope: !3, file: !3, line: 422, type: !924, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!924 = !DISubroutineType(types: !925)
!925 = !{!926, !20}
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_file_type", file: !3, line: 46, baseType: !5)
!927 = !DILocalVariable(name: "filepath", arg: 1, scope: !923, file: !3, line: 422, type: !20)
!928 = !DILocation(line: 422, column: 40, scope: !923)
!929 = !DILocation(line: 423, column: 24, scope: !930)
!930 = distinct !DILexicalBlock(scope: !923, file: !3, line: 423, column: 9)
!931 = !DILocation(line: 423, column: 9, scope: !930)
!932 = !DILocation(line: 423, column: 9, scope: !923)
!933 = !DILocation(line: 424, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 423, column: 35)
!935 = !DILocation(line: 425, column: 26, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 425, column: 16)
!937 = !DILocation(line: 425, column: 16, scope: !936)
!938 = !DILocation(line: 425, column: 16, scope: !930)
!939 = !DILocation(line: 426, column: 9, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !3, line: 425, column: 37)
!941 = !DILocation(line: 428, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !3, line: 427, column: 12)
!943 = !DILocation(line: 430, column: 1, scope: !923)
!944 = distinct !DISubprogram(name: "checkMultiPartAof", scope: !3, file: !3, line: 443, type: !945, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !20, !20, !59}
!947 = !DILocalVariable(name: "dirpath", arg: 1, scope: !944, file: !3, line: 443, type: !20)
!948 = !DILocation(line: 443, column: 30, scope: !944)
!949 = !DILocalVariable(name: "manifest_filepath", arg: 2, scope: !944, file: !3, line: 443, type: !20)
!950 = !DILocation(line: 443, column: 45, scope: !944)
!951 = !DILocalVariable(name: "fix", arg: 3, scope: !944, file: !3, line: 443, type: !59)
!952 = !DILocation(line: 443, column: 68, scope: !944)
!953 = !DILocalVariable(name: "total_num", scope: !944, file: !3, line: 444, type: !59)
!954 = !DILocation(line: 444, column: 9, scope: !944)
!955 = !DILocalVariable(name: "aof_num", scope: !944, file: !3, line: 444, type: !59)
!956 = !DILocation(line: 444, column: 24, scope: !944)
!957 = !DILocalVariable(name: "last_file", scope: !944, file: !3, line: 444, type: !59)
!958 = !DILocation(line: 444, column: 37, scope: !944)
!959 = !DILocalVariable(name: "ret", scope: !944, file: !3, line: 445, type: !59)
!960 = !DILocation(line: 445, column: 9, scope: !944)
!961 = !DILocation(line: 447, column: 5, scope: !944)
!962 = !DILocalVariable(name: "am", scope: !944, file: !3, line: 448, type: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "aofManifest", file: !12, line: 1430, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 1420, size: 384, elements: !966)
!966 = !{!967, !968, !997, !998, !999, !1000}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "base_aof_info", scope: !965, file: !12, line: 1421, baseType: !23, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "incr_aof_list", scope: !965, file: !12, line: 1422, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !971, line: 54, baseType: !972)
!971 = !DIFile(filename: "./adlist.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !971, line: 47, size: 384, elements: !973)
!973 = !{!974, !983, !984, !988, !992, !996}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !972, file: !971, line: 48, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !971, line: 40, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !971, line: 36, size: 192, elements: !978)
!978 = !{!979, !981, !982}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !977, file: !971, line: 37, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !977, file: !971, line: 38, baseType: !980, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !977, file: !971, line: 39, baseType: !19, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !972, file: !971, line: 49, baseType: !975, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !972, file: !971, line: 50, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!19, !19}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !972, file: !971, line: 51, baseType: !989, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !19}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !972, file: !971, line: 52, baseType: !993, size: 64, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!59, !19, !19}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !972, file: !971, line: 53, baseType: !132, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "history_aof_list", scope: !965, file: !12, line: 1423, baseType: !969, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "curr_base_file_seq", scope: !965, file: !12, line: 1426, baseType: !18, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "curr_incr_file_seq", scope: !965, file: !12, line: 1427, baseType: !18, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !965, file: !12, line: 1428, baseType: !59, size: 32, offset: 320)
!1001 = !DILocation(line: 448, column: 18, scope: !944)
!1002 = !DILocation(line: 448, column: 47, scope: !944)
!1003 = !DILocation(line: 448, column: 23, scope: !944)
!1004 = !DILocation(line: 450, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !944, file: !3, line: 450, column: 9)
!1006 = !DILocation(line: 450, column: 13, scope: !1005)
!1007 = !DILocation(line: 450, column: 9, scope: !944)
!1008 = !DILocation(line: 450, column: 37, scope: !1005)
!1009 = !DILocation(line: 450, column: 28, scope: !1005)
!1010 = !DILocation(line: 451, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !944, file: !3, line: 451, column: 9)
!1012 = !DILocation(line: 451, column: 13, scope: !1011)
!1013 = !DILocation(line: 451, column: 9, scope: !944)
!1014 = !DILocation(line: 451, column: 41, scope: !1011)
!1015 = !DILocation(line: 451, column: 38, scope: !1011)
!1016 = !DILocation(line: 451, column: 28, scope: !1011)
!1017 = !DILocation(line: 453, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !944, file: !3, line: 453, column: 9)
!1019 = !DILocation(line: 453, column: 13, scope: !1018)
!1020 = !DILocation(line: 453, column: 9, scope: !944)
!1021 = !DILocalVariable(name: "aof_filename", scope: !1022, file: !3, line: 454, type: !28)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 453, column: 28)
!1023 = !DILocation(line: 454, column: 13, scope: !1022)
!1024 = !DILocation(line: 454, column: 28, scope: !1022)
!1025 = !DILocation(line: 454, column: 32, scope: !1022)
!1026 = !DILocation(line: 454, column: 47, scope: !1022)
!1027 = !DILocalVariable(name: "aof_filepath", scope: !1022, file: !3, line: 455, type: !28)
!1028 = !DILocation(line: 455, column: 13, scope: !1022)
!1029 = !DILocation(line: 455, column: 37, scope: !1022)
!1030 = !DILocation(line: 455, column: 46, scope: !1022)
!1031 = !DILocation(line: 455, column: 28, scope: !1022)
!1032 = !DILocation(line: 456, column: 21, scope: !1022)
!1033 = !DILocation(line: 456, column: 34, scope: !1022)
!1034 = !DILocation(line: 456, column: 31, scope: !1022)
!1035 = !DILocation(line: 456, column: 19, scope: !1022)
!1036 = !DILocalVariable(name: "aof_preable", scope: !1022, file: !3, line: 457, type: !59)
!1037 = !DILocation(line: 457, column: 13, scope: !1022)
!1038 = !DILocation(line: 457, column: 37, scope: !1022)
!1039 = !DILocation(line: 457, column: 27, scope: !1022)
!1040 = !DILocation(line: 459, column: 58, scope: !1022)
!1041 = !DILocation(line: 459, column: 9, scope: !1022)
!1042 = !DILocation(line: 460, column: 30, scope: !1022)
!1043 = !DILocation(line: 460, column: 44, scope: !1022)
!1044 = !DILocation(line: 460, column: 58, scope: !1022)
!1045 = !DILocation(line: 460, column: 69, scope: !1022)
!1046 = !DILocation(line: 460, column: 74, scope: !1022)
!1047 = !DILocation(line: 460, column: 15, scope: !1022)
!1048 = !DILocation(line: 460, column: 13, scope: !1022)
!1049 = !DILocation(line: 461, column: 13, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 461, column: 13)
!1051 = !DILocation(line: 461, column: 17, scope: !1050)
!1052 = !DILocation(line: 461, column: 13, scope: !1022)
!1053 = !DILocation(line: 462, column: 46, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 461, column: 34)
!1055 = !DILocation(line: 462, column: 13, scope: !1054)
!1056 = !DILocation(line: 463, column: 9, scope: !1054)
!1057 = !DILocation(line: 463, column: 20, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 463, column: 20)
!1059 = !DILocation(line: 463, column: 24, scope: !1058)
!1060 = !DILocation(line: 463, column: 20, scope: !1050)
!1061 = !DILocation(line: 464, column: 46, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 463, column: 44)
!1063 = !DILocation(line: 464, column: 13, scope: !1062)
!1064 = !DILocation(line: 465, column: 9, scope: !1062)
!1065 = !DILocation(line: 465, column: 20, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 465, column: 20)
!1067 = !DILocation(line: 465, column: 24, scope: !1066)
!1068 = !DILocation(line: 465, column: 20, scope: !1058)
!1069 = !DILocation(line: 467, column: 17, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 465, column: 58)
!1071 = !DILocation(line: 467, column: 31, scope: !1070)
!1072 = !DILocation(line: 466, column: 13, scope: !1070)
!1073 = !DILocation(line: 468, column: 9, scope: !1070)
!1074 = !DILocation(line: 468, column: 20, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 468, column: 20)
!1076 = !DILocation(line: 468, column: 24, scope: !1075)
!1077 = !DILocation(line: 468, column: 20, scope: !1066)
!1078 = !DILocation(line: 469, column: 55, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 468, column: 48)
!1080 = !DILocation(line: 469, column: 13, scope: !1079)
!1081 = !DILocation(line: 470, column: 9, scope: !1079)
!1082 = !DILocation(line: 471, column: 17, scope: !1022)
!1083 = !DILocation(line: 471, column: 9, scope: !1022)
!1084 = !DILocation(line: 472, column: 5, scope: !1022)
!1085 = !DILocation(line: 474, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !944, file: !3, line: 474, column: 9)
!1087 = !DILocation(line: 474, column: 9, scope: !944)
!1088 = !DILocalVariable(name: "ln", scope: !1089, file: !3, line: 475, type: !975)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 474, column: 40)
!1090 = !DILocation(line: 475, column: 19, scope: !1089)
!1091 = !DILocalVariable(name: "li", scope: !1089, file: !3, line: 476, type: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !971, line: 45, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !971, line: 42, size: 128, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !971, line: 43, baseType: !975, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1093, file: !971, line: 44, baseType: !59, size: 32, offset: 64)
!1097 = !DILocation(line: 476, column: 18, scope: !1089)
!1098 = !DILocation(line: 478, column: 9, scope: !1089)
!1099 = !DILocation(line: 479, column: 20, scope: !1089)
!1100 = !DILocation(line: 479, column: 24, scope: !1089)
!1101 = !DILocation(line: 479, column: 9, scope: !1089)
!1102 = !DILocation(line: 480, column: 9, scope: !1089)
!1103 = !DILocation(line: 480, column: 22, scope: !1089)
!1104 = !DILocation(line: 480, column: 20, scope: !1089)
!1105 = !DILocation(line: 480, column: 37, scope: !1089)
!1106 = !DILocalVariable(name: "ai", scope: !1107, file: !3, line: 481, type: !23)
!1107 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 480, column: 46)
!1108 = !DILocation(line: 481, column: 22, scope: !1107)
!1109 = !DILocation(line: 481, column: 37, scope: !1107)
!1110 = !DILocation(line: 481, column: 41, scope: !1107)
!1111 = !DILocation(line: 481, column: 27, scope: !1107)
!1112 = !DILocalVariable(name: "aof_filename", scope: !1107, file: !3, line: 482, type: !28)
!1113 = !DILocation(line: 482, column: 17, scope: !1107)
!1114 = !DILocation(line: 482, column: 39, scope: !1107)
!1115 = !DILocation(line: 482, column: 43, scope: !1107)
!1116 = !DILocalVariable(name: "aof_filepath", scope: !1107, file: !3, line: 483, type: !28)
!1117 = !DILocation(line: 483, column: 17, scope: !1107)
!1118 = !DILocation(line: 483, column: 41, scope: !1107)
!1119 = !DILocation(line: 483, column: 50, scope: !1107)
!1120 = !DILocation(line: 483, column: 32, scope: !1107)
!1121 = !DILocation(line: 484, column: 25, scope: !1107)
!1122 = !DILocation(line: 484, column: 38, scope: !1107)
!1123 = !DILocation(line: 484, column: 35, scope: !1107)
!1124 = !DILocation(line: 484, column: 23, scope: !1107)
!1125 = !DILocation(line: 485, column: 34, scope: !1107)
!1126 = !DILocation(line: 485, column: 48, scope: !1107)
!1127 = !DILocation(line: 485, column: 62, scope: !1107)
!1128 = !DILocation(line: 485, column: 73, scope: !1107)
!1129 = !DILocation(line: 485, column: 19, scope: !1107)
!1130 = !DILocation(line: 485, column: 17, scope: !1107)
!1131 = !DILocation(line: 486, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 486, column: 17)
!1133 = !DILocation(line: 486, column: 21, scope: !1132)
!1134 = !DILocation(line: 486, column: 17, scope: !1107)
!1135 = !DILocation(line: 487, column: 50, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 486, column: 38)
!1137 = !DILocation(line: 487, column: 17, scope: !1136)
!1138 = !DILocation(line: 488, column: 13, scope: !1136)
!1139 = !DILocation(line: 488, column: 24, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 488, column: 24)
!1141 = !DILocation(line: 488, column: 28, scope: !1140)
!1142 = !DILocation(line: 488, column: 24, scope: !1132)
!1143 = !DILocation(line: 489, column: 50, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 488, column: 48)
!1145 = !DILocation(line: 489, column: 17, scope: !1144)
!1146 = !DILocation(line: 490, column: 13, scope: !1144)
!1147 = !DILocation(line: 490, column: 24, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 490, column: 24)
!1149 = !DILocation(line: 490, column: 28, scope: !1148)
!1150 = !DILocation(line: 490, column: 24, scope: !1140)
!1151 = !DILocation(line: 492, column: 21, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 490, column: 62)
!1153 = !DILocation(line: 492, column: 35, scope: !1152)
!1154 = !DILocation(line: 491, column: 17, scope: !1152)
!1155 = !DILocation(line: 493, column: 13, scope: !1152)
!1156 = !DILocation(line: 493, column: 24, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 493, column: 24)
!1158 = !DILocation(line: 493, column: 28, scope: !1157)
!1159 = !DILocation(line: 493, column: 24, scope: !1148)
!1160 = !DILocation(line: 494, column: 59, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 493, column: 52)
!1162 = !DILocation(line: 494, column: 17, scope: !1161)
!1163 = !DILocation(line: 495, column: 13, scope: !1161)
!1164 = !DILocation(line: 496, column: 21, scope: !1107)
!1165 = !DILocation(line: 496, column: 13, scope: !1107)
!1166 = distinct !{!1166, !1102, !1167, !379}
!1167 = !DILocation(line: 497, column: 9, scope: !1089)
!1168 = !DILocation(line: 498, column: 5, scope: !1089)
!1169 = !DILocation(line: 500, column: 21, scope: !944)
!1170 = !DILocation(line: 500, column: 5, scope: !944)
!1171 = !DILocation(line: 501, column: 5, scope: !944)
!1172 = !DILocation(line: 502, column: 1, scope: !944)
!1173 = distinct !DISubprogram(name: "checkOldStyleAof", scope: !3, file: !3, line: 507, type: !1174, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !20, !59, !59}
!1176 = !DILocalVariable(name: "filepath", arg: 1, scope: !1173, file: !3, line: 507, type: !20)
!1177 = !DILocation(line: 507, column: 29, scope: !1173)
!1178 = !DILocalVariable(name: "fix", arg: 2, scope: !1173, file: !3, line: 507, type: !59)
!1179 = !DILocation(line: 507, column: 43, scope: !1173)
!1180 = !DILocalVariable(name: "preamble", arg: 3, scope: !1173, file: !3, line: 507, type: !59)
!1181 = !DILocation(line: 507, column: 52, scope: !1173)
!1182 = !DILocation(line: 508, column: 5, scope: !1173)
!1183 = !DILocalVariable(name: "ret", scope: !1173, file: !3, line: 509, type: !59)
!1184 = !DILocation(line: 509, column: 9, scope: !1173)
!1185 = !DILocation(line: 509, column: 30, scope: !1173)
!1186 = !DILocation(line: 509, column: 40, scope: !1173)
!1187 = !DILocation(line: 509, column: 53, scope: !1173)
!1188 = !DILocation(line: 509, column: 58, scope: !1173)
!1189 = !DILocation(line: 509, column: 15, scope: !1173)
!1190 = !DILocation(line: 510, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 510, column: 9)
!1192 = !DILocation(line: 510, column: 13, scope: !1191)
!1193 = !DILocation(line: 510, column: 9, scope: !1173)
!1194 = !DILocation(line: 511, column: 37, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 510, column: 30)
!1196 = !DILocation(line: 511, column: 9, scope: !1195)
!1197 = !DILocation(line: 512, column: 5, scope: !1195)
!1198 = !DILocation(line: 512, column: 16, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 512, column: 16)
!1200 = !DILocation(line: 512, column: 20, scope: !1199)
!1201 = !DILocation(line: 512, column: 16, scope: !1191)
!1202 = !DILocation(line: 513, column: 37, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 512, column: 40)
!1204 = !DILocation(line: 513, column: 9, scope: !1203)
!1205 = !DILocation(line: 514, column: 5, scope: !1203)
!1206 = !DILocation(line: 514, column: 16, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 514, column: 16)
!1208 = !DILocation(line: 514, column: 20, scope: !1207)
!1209 = !DILocation(line: 514, column: 16, scope: !1199)
!1210 = !DILocation(line: 516, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 514, column: 54)
!1212 = !DILocation(line: 516, column: 23, scope: !1211)
!1213 = !DILocation(line: 515, column: 9, scope: !1211)
!1214 = !DILocation(line: 517, column: 5, scope: !1211)
!1215 = !DILocation(line: 517, column: 16, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 517, column: 16)
!1217 = !DILocation(line: 517, column: 20, scope: !1216)
!1218 = !DILocation(line: 517, column: 16, scope: !1207)
!1219 = !DILocation(line: 518, column: 51, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 517, column: 44)
!1221 = !DILocation(line: 518, column: 9, scope: !1220)
!1222 = !DILocation(line: 519, column: 5, scope: !1220)
!1223 = !DILocation(line: 520, column: 1, scope: !1173)
!1224 = distinct !DISubprogram(name: "redis_check_aof_main", scope: !3, file: !3, line: 522, type: !1225, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !60)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!59, !59, !216}
!1227 = !DILocalVariable(name: "argc", arg: 1, scope: !1224, file: !3, line: 522, type: !59)
!1228 = !DILocation(line: 522, column: 30, scope: !1224)
!1229 = !DILocalVariable(name: "argv", arg: 2, scope: !1224, file: !3, line: 522, type: !216)
!1230 = !DILocation(line: 522, column: 43, scope: !1224)
!1231 = !DILocalVariable(name: "filepath", scope: !1224, file: !3, line: 523, type: !20)
!1232 = !DILocation(line: 523, column: 11, scope: !1224)
!1233 = !DILocalVariable(name: "temp_filepath", scope: !1224, file: !3, line: 524, type: !1234)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32776, elements: !1235)
!1235 = !{!1236}
!1236 = !DISubrange(count: 4097)
!1237 = !DILocation(line: 524, column: 10, scope: !1224)
!1238 = !DILocalVariable(name: "dirpath", scope: !1224, file: !3, line: 525, type: !20)
!1239 = !DILocation(line: 525, column: 11, scope: !1224)
!1240 = !DILocalVariable(name: "fix", scope: !1224, file: !3, line: 526, type: !59)
!1241 = !DILocation(line: 526, column: 9, scope: !1224)
!1242 = !DILocation(line: 528, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 528, column: 9)
!1244 = !DILocation(line: 528, column: 14, scope: !1243)
!1245 = !DILocation(line: 528, column: 9, scope: !1224)
!1246 = !DILocation(line: 529, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 528, column: 19)
!1248 = !DILocation(line: 530, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 530, column: 16)
!1250 = !DILocation(line: 530, column: 21, scope: !1249)
!1251 = !DILocation(line: 530, column: 16, scope: !1243)
!1252 = !DILocation(line: 531, column: 20, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 530, column: 27)
!1254 = !DILocation(line: 531, column: 18, scope: !1253)
!1255 = !DILocation(line: 532, column: 5, scope: !1253)
!1256 = !DILocation(line: 532, column: 16, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 532, column: 16)
!1258 = !DILocation(line: 532, column: 21, scope: !1257)
!1259 = !DILocation(line: 532, column: 16, scope: !1249)
!1260 = !DILocation(line: 533, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 533, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 532, column: 27)
!1263 = !DILocation(line: 533, column: 14, scope: !1261)
!1264 = !DILocation(line: 533, column: 13, scope: !1262)
!1265 = !DILocation(line: 534, column: 24, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 533, column: 40)
!1267 = !DILocation(line: 534, column: 22, scope: !1266)
!1268 = !DILocation(line: 535, column: 17, scope: !1266)
!1269 = !DILocation(line: 536, column: 9, scope: !1266)
!1270 = !DILocation(line: 537, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 536, column: 16)
!1272 = !DILocation(line: 539, column: 5, scope: !1262)
!1273 = !DILocation(line: 539, column: 16, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 539, column: 16)
!1275 = !DILocation(line: 539, column: 21, scope: !1274)
!1276 = !DILocation(line: 539, column: 16, scope: !1257)
!1277 = !DILocation(line: 540, column: 21, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 540, column: 13)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 539, column: 27)
!1280 = !DILocation(line: 540, column: 14, scope: !1278)
!1281 = !DILocation(line: 540, column: 13, scope: !1279)
!1282 = !DILocalVariable(name: "endptr", scope: !1283, file: !3, line: 541, type: !20)
!1283 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 540, column: 58)
!1284 = !DILocation(line: 541, column: 19, scope: !1283)
!1285 = !DILocation(line: 542, column: 13, scope: !1283)
!1286 = !DILocation(line: 542, column: 19, scope: !1283)
!1287 = !DILocation(line: 543, column: 35, scope: !1283)
!1288 = !DILocation(line: 543, column: 28, scope: !1283)
!1289 = !DILocation(line: 543, column: 26, scope: !1283)
!1290 = !DILocation(line: 544, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 544, column: 17)
!1292 = !DILocation(line: 544, column: 23, scope: !1291)
!1293 = !DILocation(line: 544, column: 28, scope: !1291)
!1294 = !DILocation(line: 544, column: 32, scope: !1291)
!1295 = !DILocation(line: 544, column: 31, scope: !1291)
!1296 = !DILocation(line: 544, column: 39, scope: !1291)
!1297 = !DILocation(line: 544, column: 17, scope: !1283)
!1298 = !DILocation(line: 545, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 544, column: 48)
!1300 = !DILocation(line: 546, column: 17, scope: !1299)
!1301 = !DILocation(line: 548, column: 24, scope: !1283)
!1302 = !DILocation(line: 548, column: 22, scope: !1283)
!1303 = !DILocation(line: 549, column: 9, scope: !1283)
!1304 = !DILocation(line: 550, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 549, column: 16)
!1306 = !DILocation(line: 552, column: 5, scope: !1279)
!1307 = !DILocation(line: 553, column: 9, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 552, column: 12)
!1309 = !DILocation(line: 557, column: 5, scope: !1224)
!1310 = !DILocation(line: 557, column: 27, scope: !1224)
!1311 = !DILocation(line: 557, column: 44, scope: !1224)
!1312 = !DILocation(line: 557, column: 37, scope: !1224)
!1313 = !DILocation(line: 557, column: 54, scope: !1224)
!1314 = !DILocation(line: 558, column: 23, scope: !1224)
!1315 = !DILocation(line: 558, column: 15, scope: !1224)
!1316 = !DILocation(line: 558, column: 13, scope: !1224)
!1317 = !DILocalVariable(name: "type", scope: !1224, file: !3, line: 561, type: !926)
!1318 = !DILocation(line: 561, column: 21, scope: !1224)
!1319 = !DILocation(line: 561, column: 45, scope: !1224)
!1320 = !DILocation(line: 561, column: 28, scope: !1224)
!1321 = !DILocation(line: 562, column: 13, scope: !1224)
!1322 = !DILocation(line: 562, column: 5, scope: !1224)
!1323 = !DILocation(line: 564, column: 27, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 562, column: 19)
!1325 = !DILocation(line: 564, column: 36, scope: !1324)
!1326 = !DILocation(line: 564, column: 46, scope: !1324)
!1327 = !DILocation(line: 564, column: 9, scope: !1324)
!1328 = !DILocation(line: 565, column: 9, scope: !1324)
!1329 = !DILocation(line: 567, column: 26, scope: !1324)
!1330 = !DILocation(line: 567, column: 36, scope: !1324)
!1331 = !DILocation(line: 567, column: 9, scope: !1324)
!1332 = !DILocation(line: 568, column: 9, scope: !1324)
!1333 = !DILocation(line: 570, column: 26, scope: !1324)
!1334 = !DILocation(line: 570, column: 36, scope: !1324)
!1335 = !DILocation(line: 570, column: 9, scope: !1324)
!1336 = !DILocation(line: 571, column: 9, scope: !1324)
!1337 = !DILocation(line: 574, column: 5, scope: !1224)
!1338 = !DILabel(scope: !1224, name: "invalid_args", file: !3, line: 576)
!1339 = !DILocation(line: 576, column: 1, scope: !1224)
!1340 = !DILocation(line: 578, column: 9, scope: !1224)
!1341 = !DILocation(line: 577, column: 5, scope: !1224)
!1342 = !DILocation(line: 579, column: 5, scope: !1224)
