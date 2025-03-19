; ModuleID = 'siphash.c'
source_filename = "siphash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @siptlw(i32 %c) #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i32, i32* %c.addr, align 4, !dbg !22
  %cmp = icmp sge i32 %0, 65, !dbg !24
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !25

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !dbg !26
  %cmp1 = icmp sle i32 %1, 90, !dbg !27
  br i1 %cmp1, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %c.addr, align 4, !dbg !29
  %add = add nsw i32 %2, 32, !dbg !31
  store i32 %add, i32* %retval, align 4, !dbg !32
  br label %return, !dbg !32

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %c.addr, align 4, !dbg !33
  store i32 %3, i32* %retval, align 4, !dbg !35
  br label %return, !dbg !35

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !36
  ret i32 %4, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @siphash(i8* %in, i64 %inlen, i8* %k) #0 !dbg !37 {
entry:
  %in.addr = alloca i8*, align 8
  %inlen.addr = alloca i64, align 8
  %k.addr = alloca i8*, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %k0 = alloca i64, align 8
  %k1 = alloca i64, align 8
  %m = alloca i64, align 8
  %end = alloca i8*, align 8
  %left = alloca i32, align 4
  %b = alloca i64, align 8
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i64 %inlen, i64* %inlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i64* %v0, metadata !54, metadata !DIExpression()), !dbg !55
  store i64 8317987319222330741, i64* %v0, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i64* %v1, metadata !56, metadata !DIExpression()), !dbg !57
  store i64 7237128888997146477, i64* %v1, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %v2, metadata !58, metadata !DIExpression()), !dbg !59
  store i64 7816392313619706465, i64* %v2, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i64* %v3, metadata !60, metadata !DIExpression()), !dbg !61
  store i64 8387220255154660723, i64* %v3, align 8, !dbg !61
  call void @llvm.dbg.declare(metadata i64* %k0, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i8*, i8** %k.addr, align 8, !dbg !64
  %1 = bitcast i8* %0 to i64*, !dbg !64
  %2 = load i64, i64* %1, align 8, !dbg !64
  store i64 %2, i64* %k0, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %k1, metadata !65, metadata !DIExpression()), !dbg !66
  %3 = load i8*, i8** %k.addr, align 8, !dbg !67
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8, !dbg !67
  %4 = bitcast i8* %add.ptr to i64*, !dbg !67
  %5 = load i64, i64* %4, align 8, !dbg !67
  store i64 %5, i64* %k1, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %m, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %end, metadata !70, metadata !DIExpression()), !dbg !71
  %6 = load i8*, i8** %in.addr, align 8, !dbg !72
  %7 = load i64, i64* %inlen.addr, align 8, !dbg !73
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !74
  %8 = load i64, i64* %inlen.addr, align 8, !dbg !75
  %rem = urem i64 %8, 8, !dbg !76
  %idx.neg = sub i64 0, %rem, !dbg !77
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 %idx.neg, !dbg !77
  store i8* %add.ptr2, i8** %end, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %left, metadata !78, metadata !DIExpression()), !dbg !80
  %9 = load i64, i64* %inlen.addr, align 8, !dbg !81
  %and = and i64 %9, 7, !dbg !82
  %conv = trunc i64 %and to i32, !dbg !81
  store i32 %conv, i32* %left, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i64* %b, metadata !83, metadata !DIExpression()), !dbg !84
  %10 = load i64, i64* %inlen.addr, align 8, !dbg !85
  %shl = shl i64 %10, 56, !dbg !86
  store i64 %shl, i64* %b, align 8, !dbg !84
  %11 = load i64, i64* %k1, align 8, !dbg !87
  %12 = load i64, i64* %v3, align 8, !dbg !88
  %xor = xor i64 %12, %11, !dbg !88
  store i64 %xor, i64* %v3, align 8, !dbg !88
  %13 = load i64, i64* %k0, align 8, !dbg !89
  %14 = load i64, i64* %v2, align 8, !dbg !90
  %xor3 = xor i64 %14, %13, !dbg !90
  store i64 %xor3, i64* %v2, align 8, !dbg !90
  %15 = load i64, i64* %k1, align 8, !dbg !91
  %16 = load i64, i64* %v1, align 8, !dbg !92
  %xor4 = xor i64 %16, %15, !dbg !92
  store i64 %xor4, i64* %v1, align 8, !dbg !92
  %17 = load i64, i64* %k0, align 8, !dbg !93
  %18 = load i64, i64* %v0, align 8, !dbg !94
  %xor5 = xor i64 %18, %17, !dbg !94
  store i64 %xor5, i64* %v0, align 8, !dbg !94
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i8*, i8** %in.addr, align 8, !dbg !96
  %20 = load i8*, i8** %end, align 8, !dbg !99
  %cmp = icmp ne i8* %19, %20, !dbg !100
  br i1 %cmp, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %in.addr, align 8, !dbg !102
  %22 = bitcast i8* %21 to i64*, !dbg !102
  %23 = load i64, i64* %22, align 8, !dbg !102
  store i64 %23, i64* %m, align 8, !dbg !104
  %24 = load i64, i64* %m, align 8, !dbg !105
  %25 = load i64, i64* %v3, align 8, !dbg !106
  %xor7 = xor i64 %25, %24, !dbg !106
  store i64 %xor7, i64* %v3, align 8, !dbg !106
  br label %do.body, !dbg !107

do.body:                                          ; preds = %for.body
  %26 = load i64, i64* %v1, align 8, !dbg !108
  %27 = load i64, i64* %v0, align 8, !dbg !108
  %add = add i64 %27, %26, !dbg !108
  store i64 %add, i64* %v0, align 8, !dbg !108
  %28 = load i64, i64* %v1, align 8, !dbg !108
  %shl8 = shl i64 %28, 13, !dbg !108
  %29 = load i64, i64* %v1, align 8, !dbg !108
  %shr = lshr i64 %29, 51, !dbg !108
  %or = or i64 %shl8, %shr, !dbg !108
  store i64 %or, i64* %v1, align 8, !dbg !108
  %30 = load i64, i64* %v0, align 8, !dbg !108
  %31 = load i64, i64* %v1, align 8, !dbg !108
  %xor9 = xor i64 %31, %30, !dbg !108
  store i64 %xor9, i64* %v1, align 8, !dbg !108
  %32 = load i64, i64* %v0, align 8, !dbg !108
  %shl10 = shl i64 %32, 32, !dbg !108
  %33 = load i64, i64* %v0, align 8, !dbg !108
  %shr11 = lshr i64 %33, 32, !dbg !108
  %or12 = or i64 %shl10, %shr11, !dbg !108
  store i64 %or12, i64* %v0, align 8, !dbg !108
  %34 = load i64, i64* %v3, align 8, !dbg !108
  %35 = load i64, i64* %v2, align 8, !dbg !108
  %add13 = add i64 %35, %34, !dbg !108
  store i64 %add13, i64* %v2, align 8, !dbg !108
  %36 = load i64, i64* %v3, align 8, !dbg !108
  %shl14 = shl i64 %36, 16, !dbg !108
  %37 = load i64, i64* %v3, align 8, !dbg !108
  %shr15 = lshr i64 %37, 48, !dbg !108
  %or16 = or i64 %shl14, %shr15, !dbg !108
  store i64 %or16, i64* %v3, align 8, !dbg !108
  %38 = load i64, i64* %v2, align 8, !dbg !108
  %39 = load i64, i64* %v3, align 8, !dbg !108
  %xor17 = xor i64 %39, %38, !dbg !108
  store i64 %xor17, i64* %v3, align 8, !dbg !108
  %40 = load i64, i64* %v3, align 8, !dbg !108
  %41 = load i64, i64* %v0, align 8, !dbg !108
  %add18 = add i64 %41, %40, !dbg !108
  store i64 %add18, i64* %v0, align 8, !dbg !108
  %42 = load i64, i64* %v3, align 8, !dbg !108
  %shl19 = shl i64 %42, 21, !dbg !108
  %43 = load i64, i64* %v3, align 8, !dbg !108
  %shr20 = lshr i64 %43, 43, !dbg !108
  %or21 = or i64 %shl19, %shr20, !dbg !108
  store i64 %or21, i64* %v3, align 8, !dbg !108
  %44 = load i64, i64* %v0, align 8, !dbg !108
  %45 = load i64, i64* %v3, align 8, !dbg !108
  %xor22 = xor i64 %45, %44, !dbg !108
  store i64 %xor22, i64* %v3, align 8, !dbg !108
  %46 = load i64, i64* %v1, align 8, !dbg !108
  %47 = load i64, i64* %v2, align 8, !dbg !108
  %add23 = add i64 %47, %46, !dbg !108
  store i64 %add23, i64* %v2, align 8, !dbg !108
  %48 = load i64, i64* %v1, align 8, !dbg !108
  %shl24 = shl i64 %48, 17, !dbg !108
  %49 = load i64, i64* %v1, align 8, !dbg !108
  %shr25 = lshr i64 %49, 47, !dbg !108
  %or26 = or i64 %shl24, %shr25, !dbg !108
  store i64 %or26, i64* %v1, align 8, !dbg !108
  %50 = load i64, i64* %v2, align 8, !dbg !108
  %51 = load i64, i64* %v1, align 8, !dbg !108
  %xor27 = xor i64 %51, %50, !dbg !108
  store i64 %xor27, i64* %v1, align 8, !dbg !108
  %52 = load i64, i64* %v2, align 8, !dbg !108
  %shl28 = shl i64 %52, 32, !dbg !108
  %53 = load i64, i64* %v2, align 8, !dbg !108
  %shr29 = lshr i64 %53, 32, !dbg !108
  %or30 = or i64 %shl28, %shr29, !dbg !108
  store i64 %or30, i64* %v2, align 8, !dbg !108
  br label %do.end, !dbg !108

do.end:                                           ; preds = %do.body
  %54 = load i64, i64* %m, align 8, !dbg !110
  %55 = load i64, i64* %v0, align 8, !dbg !111
  %xor31 = xor i64 %55, %54, !dbg !111
  store i64 %xor31, i64* %v0, align 8, !dbg !111
  br label %for.inc, !dbg !112

for.inc:                                          ; preds = %do.end
  %56 = load i8*, i8** %in.addr, align 8, !dbg !113
  %add.ptr32 = getelementptr inbounds i8, i8* %56, i64 8, !dbg !113
  store i8* %add.ptr32, i8** %in.addr, align 8, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end:                                          ; preds = %for.cond
  %57 = load i32, i32* %left, align 4, !dbg !118
  switch i32 %57, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb36
    i32 5, label %sw.bb41
    i32 4, label %sw.bb46
    i32 3, label %sw.bb51
    i32 2, label %sw.bb56
    i32 1, label %sw.bb61
    i32 0, label %sw.bb65
  ], !dbg !119

sw.bb:                                            ; preds = %for.end
  %58 = load i8*, i8** %in.addr, align 8, !dbg !120
  %arrayidx = getelementptr inbounds i8, i8* %58, i64 6, !dbg !120
  %59 = load i8, i8* %arrayidx, align 1, !dbg !120
  %conv33 = zext i8 %59 to i64, !dbg !122
  %shl34 = shl i64 %conv33, 48, !dbg !123
  %60 = load i64, i64* %b, align 8, !dbg !124
  %or35 = or i64 %60, %shl34, !dbg !124
  store i64 %or35, i64* %b, align 8, !dbg !124
  br label %sw.bb36, !dbg !125

sw.bb36:                                          ; preds = %for.end, %sw.bb
  %61 = load i8*, i8** %in.addr, align 8, !dbg !126
  %arrayidx37 = getelementptr inbounds i8, i8* %61, i64 5, !dbg !126
  %62 = load i8, i8* %arrayidx37, align 1, !dbg !126
  %conv38 = zext i8 %62 to i64, !dbg !127
  %shl39 = shl i64 %conv38, 40, !dbg !128
  %63 = load i64, i64* %b, align 8, !dbg !129
  %or40 = or i64 %63, %shl39, !dbg !129
  store i64 %or40, i64* %b, align 8, !dbg !129
  br label %sw.bb41, !dbg !130

sw.bb41:                                          ; preds = %for.end, %sw.bb36
  %64 = load i8*, i8** %in.addr, align 8, !dbg !131
  %arrayidx42 = getelementptr inbounds i8, i8* %64, i64 4, !dbg !131
  %65 = load i8, i8* %arrayidx42, align 1, !dbg !131
  %conv43 = zext i8 %65 to i64, !dbg !132
  %shl44 = shl i64 %conv43, 32, !dbg !133
  %66 = load i64, i64* %b, align 8, !dbg !134
  %or45 = or i64 %66, %shl44, !dbg !134
  store i64 %or45, i64* %b, align 8, !dbg !134
  br label %sw.bb46, !dbg !135

sw.bb46:                                          ; preds = %for.end, %sw.bb41
  %67 = load i8*, i8** %in.addr, align 8, !dbg !136
  %arrayidx47 = getelementptr inbounds i8, i8* %67, i64 3, !dbg !136
  %68 = load i8, i8* %arrayidx47, align 1, !dbg !136
  %conv48 = zext i8 %68 to i64, !dbg !137
  %shl49 = shl i64 %conv48, 24, !dbg !138
  %69 = load i64, i64* %b, align 8, !dbg !139
  %or50 = or i64 %69, %shl49, !dbg !139
  store i64 %or50, i64* %b, align 8, !dbg !139
  br label %sw.bb51, !dbg !140

sw.bb51:                                          ; preds = %for.end, %sw.bb46
  %70 = load i8*, i8** %in.addr, align 8, !dbg !141
  %arrayidx52 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !141
  %71 = load i8, i8* %arrayidx52, align 1, !dbg !141
  %conv53 = zext i8 %71 to i64, !dbg !142
  %shl54 = shl i64 %conv53, 16, !dbg !143
  %72 = load i64, i64* %b, align 8, !dbg !144
  %or55 = or i64 %72, %shl54, !dbg !144
  store i64 %or55, i64* %b, align 8, !dbg !144
  br label %sw.bb56, !dbg !145

sw.bb56:                                          ; preds = %for.end, %sw.bb51
  %73 = load i8*, i8** %in.addr, align 8, !dbg !146
  %arrayidx57 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !146
  %74 = load i8, i8* %arrayidx57, align 1, !dbg !146
  %conv58 = zext i8 %74 to i64, !dbg !147
  %shl59 = shl i64 %conv58, 8, !dbg !148
  %75 = load i64, i64* %b, align 8, !dbg !149
  %or60 = or i64 %75, %shl59, !dbg !149
  store i64 %or60, i64* %b, align 8, !dbg !149
  br label %sw.bb61, !dbg !150

sw.bb61:                                          ; preds = %for.end, %sw.bb56
  %76 = load i8*, i8** %in.addr, align 8, !dbg !151
  %arrayidx62 = getelementptr inbounds i8, i8* %76, i64 0, !dbg !151
  %77 = load i8, i8* %arrayidx62, align 1, !dbg !151
  %conv63 = zext i8 %77 to i64, !dbg !152
  %78 = load i64, i64* %b, align 8, !dbg !153
  %or64 = or i64 %78, %conv63, !dbg !153
  store i64 %or64, i64* %b, align 8, !dbg !153
  br label %sw.epilog, !dbg !154

sw.bb65:                                          ; preds = %for.end
  br label %sw.epilog, !dbg !155

sw.epilog:                                        ; preds = %for.end, %sw.bb65, %sw.bb61
  %79 = load i64, i64* %b, align 8, !dbg !156
  %80 = load i64, i64* %v3, align 8, !dbg !157
  %xor66 = xor i64 %80, %79, !dbg !157
  store i64 %xor66, i64* %v3, align 8, !dbg !157
  br label %do.body67, !dbg !158

do.body67:                                        ; preds = %sw.epilog
  %81 = load i64, i64* %v1, align 8, !dbg !159
  %82 = load i64, i64* %v0, align 8, !dbg !159
  %add68 = add i64 %82, %81, !dbg !159
  store i64 %add68, i64* %v0, align 8, !dbg !159
  %83 = load i64, i64* %v1, align 8, !dbg !159
  %shl69 = shl i64 %83, 13, !dbg !159
  %84 = load i64, i64* %v1, align 8, !dbg !159
  %shr70 = lshr i64 %84, 51, !dbg !159
  %or71 = or i64 %shl69, %shr70, !dbg !159
  store i64 %or71, i64* %v1, align 8, !dbg !159
  %85 = load i64, i64* %v0, align 8, !dbg !159
  %86 = load i64, i64* %v1, align 8, !dbg !159
  %xor72 = xor i64 %86, %85, !dbg !159
  store i64 %xor72, i64* %v1, align 8, !dbg !159
  %87 = load i64, i64* %v0, align 8, !dbg !159
  %shl73 = shl i64 %87, 32, !dbg !159
  %88 = load i64, i64* %v0, align 8, !dbg !159
  %shr74 = lshr i64 %88, 32, !dbg !159
  %or75 = or i64 %shl73, %shr74, !dbg !159
  store i64 %or75, i64* %v0, align 8, !dbg !159
  %89 = load i64, i64* %v3, align 8, !dbg !159
  %90 = load i64, i64* %v2, align 8, !dbg !159
  %add76 = add i64 %90, %89, !dbg !159
  store i64 %add76, i64* %v2, align 8, !dbg !159
  %91 = load i64, i64* %v3, align 8, !dbg !159
  %shl77 = shl i64 %91, 16, !dbg !159
  %92 = load i64, i64* %v3, align 8, !dbg !159
  %shr78 = lshr i64 %92, 48, !dbg !159
  %or79 = or i64 %shl77, %shr78, !dbg !159
  store i64 %or79, i64* %v3, align 8, !dbg !159
  %93 = load i64, i64* %v2, align 8, !dbg !159
  %94 = load i64, i64* %v3, align 8, !dbg !159
  %xor80 = xor i64 %94, %93, !dbg !159
  store i64 %xor80, i64* %v3, align 8, !dbg !159
  %95 = load i64, i64* %v3, align 8, !dbg !159
  %96 = load i64, i64* %v0, align 8, !dbg !159
  %add81 = add i64 %96, %95, !dbg !159
  store i64 %add81, i64* %v0, align 8, !dbg !159
  %97 = load i64, i64* %v3, align 8, !dbg !159
  %shl82 = shl i64 %97, 21, !dbg !159
  %98 = load i64, i64* %v3, align 8, !dbg !159
  %shr83 = lshr i64 %98, 43, !dbg !159
  %or84 = or i64 %shl82, %shr83, !dbg !159
  store i64 %or84, i64* %v3, align 8, !dbg !159
  %99 = load i64, i64* %v0, align 8, !dbg !159
  %100 = load i64, i64* %v3, align 8, !dbg !159
  %xor85 = xor i64 %100, %99, !dbg !159
  store i64 %xor85, i64* %v3, align 8, !dbg !159
  %101 = load i64, i64* %v1, align 8, !dbg !159
  %102 = load i64, i64* %v2, align 8, !dbg !159
  %add86 = add i64 %102, %101, !dbg !159
  store i64 %add86, i64* %v2, align 8, !dbg !159
  %103 = load i64, i64* %v1, align 8, !dbg !159
  %shl87 = shl i64 %103, 17, !dbg !159
  %104 = load i64, i64* %v1, align 8, !dbg !159
  %shr88 = lshr i64 %104, 47, !dbg !159
  %or89 = or i64 %shl87, %shr88, !dbg !159
  store i64 %or89, i64* %v1, align 8, !dbg !159
  %105 = load i64, i64* %v2, align 8, !dbg !159
  %106 = load i64, i64* %v1, align 8, !dbg !159
  %xor90 = xor i64 %106, %105, !dbg !159
  store i64 %xor90, i64* %v1, align 8, !dbg !159
  %107 = load i64, i64* %v2, align 8, !dbg !159
  %shl91 = shl i64 %107, 32, !dbg !159
  %108 = load i64, i64* %v2, align 8, !dbg !159
  %shr92 = lshr i64 %108, 32, !dbg !159
  %or93 = or i64 %shl91, %shr92, !dbg !159
  store i64 %or93, i64* %v2, align 8, !dbg !159
  br label %do.end94, !dbg !159

do.end94:                                         ; preds = %do.body67
  %109 = load i64, i64* %b, align 8, !dbg !161
  %110 = load i64, i64* %v0, align 8, !dbg !162
  %xor95 = xor i64 %110, %109, !dbg !162
  store i64 %xor95, i64* %v0, align 8, !dbg !162
  %111 = load i64, i64* %v2, align 8, !dbg !163
  %xor96 = xor i64 %111, 255, !dbg !163
  store i64 %xor96, i64* %v2, align 8, !dbg !163
  br label %do.body97, !dbg !164

do.body97:                                        ; preds = %do.end94
  %112 = load i64, i64* %v1, align 8, !dbg !165
  %113 = load i64, i64* %v0, align 8, !dbg !165
  %add98 = add i64 %113, %112, !dbg !165
  store i64 %add98, i64* %v0, align 8, !dbg !165
  %114 = load i64, i64* %v1, align 8, !dbg !165
  %shl99 = shl i64 %114, 13, !dbg !165
  %115 = load i64, i64* %v1, align 8, !dbg !165
  %shr100 = lshr i64 %115, 51, !dbg !165
  %or101 = or i64 %shl99, %shr100, !dbg !165
  store i64 %or101, i64* %v1, align 8, !dbg !165
  %116 = load i64, i64* %v0, align 8, !dbg !165
  %117 = load i64, i64* %v1, align 8, !dbg !165
  %xor102 = xor i64 %117, %116, !dbg !165
  store i64 %xor102, i64* %v1, align 8, !dbg !165
  %118 = load i64, i64* %v0, align 8, !dbg !165
  %shl103 = shl i64 %118, 32, !dbg !165
  %119 = load i64, i64* %v0, align 8, !dbg !165
  %shr104 = lshr i64 %119, 32, !dbg !165
  %or105 = or i64 %shl103, %shr104, !dbg !165
  store i64 %or105, i64* %v0, align 8, !dbg !165
  %120 = load i64, i64* %v3, align 8, !dbg !165
  %121 = load i64, i64* %v2, align 8, !dbg !165
  %add106 = add i64 %121, %120, !dbg !165
  store i64 %add106, i64* %v2, align 8, !dbg !165
  %122 = load i64, i64* %v3, align 8, !dbg !165
  %shl107 = shl i64 %122, 16, !dbg !165
  %123 = load i64, i64* %v3, align 8, !dbg !165
  %shr108 = lshr i64 %123, 48, !dbg !165
  %or109 = or i64 %shl107, %shr108, !dbg !165
  store i64 %or109, i64* %v3, align 8, !dbg !165
  %124 = load i64, i64* %v2, align 8, !dbg !165
  %125 = load i64, i64* %v3, align 8, !dbg !165
  %xor110 = xor i64 %125, %124, !dbg !165
  store i64 %xor110, i64* %v3, align 8, !dbg !165
  %126 = load i64, i64* %v3, align 8, !dbg !165
  %127 = load i64, i64* %v0, align 8, !dbg !165
  %add111 = add i64 %127, %126, !dbg !165
  store i64 %add111, i64* %v0, align 8, !dbg !165
  %128 = load i64, i64* %v3, align 8, !dbg !165
  %shl112 = shl i64 %128, 21, !dbg !165
  %129 = load i64, i64* %v3, align 8, !dbg !165
  %shr113 = lshr i64 %129, 43, !dbg !165
  %or114 = or i64 %shl112, %shr113, !dbg !165
  store i64 %or114, i64* %v3, align 8, !dbg !165
  %130 = load i64, i64* %v0, align 8, !dbg !165
  %131 = load i64, i64* %v3, align 8, !dbg !165
  %xor115 = xor i64 %131, %130, !dbg !165
  store i64 %xor115, i64* %v3, align 8, !dbg !165
  %132 = load i64, i64* %v1, align 8, !dbg !165
  %133 = load i64, i64* %v2, align 8, !dbg !165
  %add116 = add i64 %133, %132, !dbg !165
  store i64 %add116, i64* %v2, align 8, !dbg !165
  %134 = load i64, i64* %v1, align 8, !dbg !165
  %shl117 = shl i64 %134, 17, !dbg !165
  %135 = load i64, i64* %v1, align 8, !dbg !165
  %shr118 = lshr i64 %135, 47, !dbg !165
  %or119 = or i64 %shl117, %shr118, !dbg !165
  store i64 %or119, i64* %v1, align 8, !dbg !165
  %136 = load i64, i64* %v2, align 8, !dbg !165
  %137 = load i64, i64* %v1, align 8, !dbg !165
  %xor120 = xor i64 %137, %136, !dbg !165
  store i64 %xor120, i64* %v1, align 8, !dbg !165
  %138 = load i64, i64* %v2, align 8, !dbg !165
  %shl121 = shl i64 %138, 32, !dbg !165
  %139 = load i64, i64* %v2, align 8, !dbg !165
  %shr122 = lshr i64 %139, 32, !dbg !165
  %or123 = or i64 %shl121, %shr122, !dbg !165
  store i64 %or123, i64* %v2, align 8, !dbg !165
  br label %do.end124, !dbg !165

do.end124:                                        ; preds = %do.body97
  br label %do.body125, !dbg !167

do.body125:                                       ; preds = %do.end124
  %140 = load i64, i64* %v1, align 8, !dbg !168
  %141 = load i64, i64* %v0, align 8, !dbg !168
  %add126 = add i64 %141, %140, !dbg !168
  store i64 %add126, i64* %v0, align 8, !dbg !168
  %142 = load i64, i64* %v1, align 8, !dbg !168
  %shl127 = shl i64 %142, 13, !dbg !168
  %143 = load i64, i64* %v1, align 8, !dbg !168
  %shr128 = lshr i64 %143, 51, !dbg !168
  %or129 = or i64 %shl127, %shr128, !dbg !168
  store i64 %or129, i64* %v1, align 8, !dbg !168
  %144 = load i64, i64* %v0, align 8, !dbg !168
  %145 = load i64, i64* %v1, align 8, !dbg !168
  %xor130 = xor i64 %145, %144, !dbg !168
  store i64 %xor130, i64* %v1, align 8, !dbg !168
  %146 = load i64, i64* %v0, align 8, !dbg !168
  %shl131 = shl i64 %146, 32, !dbg !168
  %147 = load i64, i64* %v0, align 8, !dbg !168
  %shr132 = lshr i64 %147, 32, !dbg !168
  %or133 = or i64 %shl131, %shr132, !dbg !168
  store i64 %or133, i64* %v0, align 8, !dbg !168
  %148 = load i64, i64* %v3, align 8, !dbg !168
  %149 = load i64, i64* %v2, align 8, !dbg !168
  %add134 = add i64 %149, %148, !dbg !168
  store i64 %add134, i64* %v2, align 8, !dbg !168
  %150 = load i64, i64* %v3, align 8, !dbg !168
  %shl135 = shl i64 %150, 16, !dbg !168
  %151 = load i64, i64* %v3, align 8, !dbg !168
  %shr136 = lshr i64 %151, 48, !dbg !168
  %or137 = or i64 %shl135, %shr136, !dbg !168
  store i64 %or137, i64* %v3, align 8, !dbg !168
  %152 = load i64, i64* %v2, align 8, !dbg !168
  %153 = load i64, i64* %v3, align 8, !dbg !168
  %xor138 = xor i64 %153, %152, !dbg !168
  store i64 %xor138, i64* %v3, align 8, !dbg !168
  %154 = load i64, i64* %v3, align 8, !dbg !168
  %155 = load i64, i64* %v0, align 8, !dbg !168
  %add139 = add i64 %155, %154, !dbg !168
  store i64 %add139, i64* %v0, align 8, !dbg !168
  %156 = load i64, i64* %v3, align 8, !dbg !168
  %shl140 = shl i64 %156, 21, !dbg !168
  %157 = load i64, i64* %v3, align 8, !dbg !168
  %shr141 = lshr i64 %157, 43, !dbg !168
  %or142 = or i64 %shl140, %shr141, !dbg !168
  store i64 %or142, i64* %v3, align 8, !dbg !168
  %158 = load i64, i64* %v0, align 8, !dbg !168
  %159 = load i64, i64* %v3, align 8, !dbg !168
  %xor143 = xor i64 %159, %158, !dbg !168
  store i64 %xor143, i64* %v3, align 8, !dbg !168
  %160 = load i64, i64* %v1, align 8, !dbg !168
  %161 = load i64, i64* %v2, align 8, !dbg !168
  %add144 = add i64 %161, %160, !dbg !168
  store i64 %add144, i64* %v2, align 8, !dbg !168
  %162 = load i64, i64* %v1, align 8, !dbg !168
  %shl145 = shl i64 %162, 17, !dbg !168
  %163 = load i64, i64* %v1, align 8, !dbg !168
  %shr146 = lshr i64 %163, 47, !dbg !168
  %or147 = or i64 %shl145, %shr146, !dbg !168
  store i64 %or147, i64* %v1, align 8, !dbg !168
  %164 = load i64, i64* %v2, align 8, !dbg !168
  %165 = load i64, i64* %v1, align 8, !dbg !168
  %xor148 = xor i64 %165, %164, !dbg !168
  store i64 %xor148, i64* %v1, align 8, !dbg !168
  %166 = load i64, i64* %v2, align 8, !dbg !168
  %shl149 = shl i64 %166, 32, !dbg !168
  %167 = load i64, i64* %v2, align 8, !dbg !168
  %shr150 = lshr i64 %167, 32, !dbg !168
  %or151 = or i64 %shl149, %shr150, !dbg !168
  store i64 %or151, i64* %v2, align 8, !dbg !168
  br label %do.end152, !dbg !168

do.end152:                                        ; preds = %do.body125
  %168 = load i64, i64* %v0, align 8, !dbg !170
  %169 = load i64, i64* %v1, align 8, !dbg !171
  %xor153 = xor i64 %168, %169, !dbg !172
  %170 = load i64, i64* %v2, align 8, !dbg !173
  %xor154 = xor i64 %xor153, %170, !dbg !174
  %171 = load i64, i64* %v3, align 8, !dbg !175
  %xor155 = xor i64 %xor154, %171, !dbg !176
  store i64 %xor155, i64* %b, align 8, !dbg !177
  %172 = load i64, i64* %b, align 8, !dbg !178
  ret i64 %172, !dbg !179
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @siphash_nocase(i8* %in, i64 %inlen, i8* %k) #0 !dbg !180 {
entry:
  %in.addr = alloca i8*, align 8
  %inlen.addr = alloca i64, align 8
  %k.addr = alloca i8*, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v3 = alloca i64, align 8
  %k0 = alloca i64, align 8
  %k1 = alloca i64, align 8
  %m = alloca i64, align 8
  %end = alloca i8*, align 8
  %left = alloca i32, align 4
  %b = alloca i64, align 8
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %inlen, i64* %inlen.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !183, metadata !DIExpression()), !dbg !184
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i64* %v0, metadata !187, metadata !DIExpression()), !dbg !188
  store i64 8317987319222330741, i64* %v0, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i64* %v1, metadata !189, metadata !DIExpression()), !dbg !190
  store i64 7237128888997146477, i64* %v1, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i64* %v2, metadata !191, metadata !DIExpression()), !dbg !192
  store i64 7816392313619706465, i64* %v2, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i64* %v3, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 8387220255154660723, i64* %v3, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata i64* %k0, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load i8*, i8** %k.addr, align 8, !dbg !197
  %1 = bitcast i8* %0 to i64*, !dbg !197
  %2 = load i64, i64* %1, align 8, !dbg !197
  store i64 %2, i64* %k0, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i64* %k1, metadata !198, metadata !DIExpression()), !dbg !199
  %3 = load i8*, i8** %k.addr, align 8, !dbg !200
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 8, !dbg !200
  %4 = bitcast i8* %add.ptr to i64*, !dbg !200
  %5 = load i64, i64* %4, align 8, !dbg !200
  store i64 %5, i64* %k1, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i64* %m, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i8** %end, metadata !203, metadata !DIExpression()), !dbg !204
  %6 = load i8*, i8** %in.addr, align 8, !dbg !205
  %7 = load i64, i64* %inlen.addr, align 8, !dbg !206
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !207
  %8 = load i64, i64* %inlen.addr, align 8, !dbg !208
  %rem = urem i64 %8, 8, !dbg !209
  %idx.neg = sub i64 0, %rem, !dbg !210
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr1, i64 %idx.neg, !dbg !210
  store i8* %add.ptr2, i8** %end, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata i32* %left, metadata !211, metadata !DIExpression()), !dbg !212
  %9 = load i64, i64* %inlen.addr, align 8, !dbg !213
  %and = and i64 %9, 7, !dbg !214
  %conv = trunc i64 %and to i32, !dbg !213
  store i32 %conv, i32* %left, align 4, !dbg !212
  call void @llvm.dbg.declare(metadata i64* %b, metadata !215, metadata !DIExpression()), !dbg !216
  %10 = load i64, i64* %inlen.addr, align 8, !dbg !217
  %shl = shl i64 %10, 56, !dbg !218
  store i64 %shl, i64* %b, align 8, !dbg !216
  %11 = load i64, i64* %k1, align 8, !dbg !219
  %12 = load i64, i64* %v3, align 8, !dbg !220
  %xor = xor i64 %12, %11, !dbg !220
  store i64 %xor, i64* %v3, align 8, !dbg !220
  %13 = load i64, i64* %k0, align 8, !dbg !221
  %14 = load i64, i64* %v2, align 8, !dbg !222
  %xor3 = xor i64 %14, %13, !dbg !222
  store i64 %xor3, i64* %v2, align 8, !dbg !222
  %15 = load i64, i64* %k1, align 8, !dbg !223
  %16 = load i64, i64* %v1, align 8, !dbg !224
  %xor4 = xor i64 %16, %15, !dbg !224
  store i64 %xor4, i64* %v1, align 8, !dbg !224
  %17 = load i64, i64* %k0, align 8, !dbg !225
  %18 = load i64, i64* %v0, align 8, !dbg !226
  %xor5 = xor i64 %18, %17, !dbg !226
  store i64 %xor5, i64* %v0, align 8, !dbg !226
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i8*, i8** %in.addr, align 8, !dbg !228
  %20 = load i8*, i8** %end, align 8, !dbg !231
  %cmp = icmp ne i8* %19, %20, !dbg !232
  br i1 %cmp, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %for.cond
  %21 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 0, !dbg !234
  %22 = load i8, i8* %arrayidx, align 1, !dbg !234
  %conv7 = zext i8 %22 to i32, !dbg !234
  %call = call i32 @siptlw(i32 %conv7), !dbg !234
  %conv8 = sext i32 %call to i64, !dbg !234
  %23 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx9 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !234
  %24 = load i8, i8* %arrayidx9, align 1, !dbg !234
  %conv10 = zext i8 %24 to i32, !dbg !234
  %call11 = call i32 @siptlw(i32 %conv10), !dbg !234
  %conv12 = sext i32 %call11 to i64, !dbg !234
  %shl13 = shl i64 %conv12, 8, !dbg !234
  %or = or i64 %conv8, %shl13, !dbg !234
  %25 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !234
  %26 = load i8, i8* %arrayidx14, align 1, !dbg !234
  %conv15 = zext i8 %26 to i32, !dbg !234
  %call16 = call i32 @siptlw(i32 %conv15), !dbg !234
  %conv17 = sext i32 %call16 to i64, !dbg !234
  %shl18 = shl i64 %conv17, 16, !dbg !234
  %or19 = or i64 %or, %shl18, !dbg !234
  %27 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx20 = getelementptr inbounds i8, i8* %27, i64 3, !dbg !234
  %28 = load i8, i8* %arrayidx20, align 1, !dbg !234
  %conv21 = zext i8 %28 to i32, !dbg !234
  %call22 = call i32 @siptlw(i32 %conv21), !dbg !234
  %conv23 = sext i32 %call22 to i64, !dbg !234
  %shl24 = shl i64 %conv23, 24, !dbg !234
  %or25 = or i64 %or19, %shl24, !dbg !234
  %29 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx26 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !234
  %30 = load i8, i8* %arrayidx26, align 1, !dbg !234
  %conv27 = zext i8 %30 to i32, !dbg !234
  %call28 = call i32 @siptlw(i32 %conv27), !dbg !234
  %conv29 = sext i32 %call28 to i64, !dbg !234
  %shl30 = shl i64 %conv29, 32, !dbg !234
  %or31 = or i64 %or25, %shl30, !dbg !234
  %31 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 5, !dbg !234
  %32 = load i8, i8* %arrayidx32, align 1, !dbg !234
  %conv33 = zext i8 %32 to i32, !dbg !234
  %call34 = call i32 @siptlw(i32 %conv33), !dbg !234
  %conv35 = sext i32 %call34 to i64, !dbg !234
  %shl36 = shl i64 %conv35, 40, !dbg !234
  %or37 = or i64 %or31, %shl36, !dbg !234
  %33 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 6, !dbg !234
  %34 = load i8, i8* %arrayidx38, align 1, !dbg !234
  %conv39 = zext i8 %34 to i32, !dbg !234
  %call40 = call i32 @siptlw(i32 %conv39), !dbg !234
  %conv41 = sext i32 %call40 to i64, !dbg !234
  %shl42 = shl i64 %conv41, 48, !dbg !234
  %or43 = or i64 %or37, %shl42, !dbg !234
  %35 = load i8*, i8** %in.addr, align 8, !dbg !234
  %arrayidx44 = getelementptr inbounds i8, i8* %35, i64 7, !dbg !234
  %36 = load i8, i8* %arrayidx44, align 1, !dbg !234
  %conv45 = zext i8 %36 to i32, !dbg !234
  %call46 = call i32 @siptlw(i32 %conv45), !dbg !234
  %conv47 = sext i32 %call46 to i64, !dbg !234
  %shl48 = shl i64 %conv47, 56, !dbg !234
  %or49 = or i64 %or43, %shl48, !dbg !234
  store i64 %or49, i64* %m, align 8, !dbg !236
  %37 = load i64, i64* %m, align 8, !dbg !237
  %38 = load i64, i64* %v3, align 8, !dbg !238
  %xor50 = xor i64 %38, %37, !dbg !238
  store i64 %xor50, i64* %v3, align 8, !dbg !238
  br label %do.body, !dbg !239

do.body:                                          ; preds = %for.body
  %39 = load i64, i64* %v1, align 8, !dbg !240
  %40 = load i64, i64* %v0, align 8, !dbg !240
  %add = add i64 %40, %39, !dbg !240
  store i64 %add, i64* %v0, align 8, !dbg !240
  %41 = load i64, i64* %v1, align 8, !dbg !240
  %shl51 = shl i64 %41, 13, !dbg !240
  %42 = load i64, i64* %v1, align 8, !dbg !240
  %shr = lshr i64 %42, 51, !dbg !240
  %or52 = or i64 %shl51, %shr, !dbg !240
  store i64 %or52, i64* %v1, align 8, !dbg !240
  %43 = load i64, i64* %v0, align 8, !dbg !240
  %44 = load i64, i64* %v1, align 8, !dbg !240
  %xor53 = xor i64 %44, %43, !dbg !240
  store i64 %xor53, i64* %v1, align 8, !dbg !240
  %45 = load i64, i64* %v0, align 8, !dbg !240
  %shl54 = shl i64 %45, 32, !dbg !240
  %46 = load i64, i64* %v0, align 8, !dbg !240
  %shr55 = lshr i64 %46, 32, !dbg !240
  %or56 = or i64 %shl54, %shr55, !dbg !240
  store i64 %or56, i64* %v0, align 8, !dbg !240
  %47 = load i64, i64* %v3, align 8, !dbg !240
  %48 = load i64, i64* %v2, align 8, !dbg !240
  %add57 = add i64 %48, %47, !dbg !240
  store i64 %add57, i64* %v2, align 8, !dbg !240
  %49 = load i64, i64* %v3, align 8, !dbg !240
  %shl58 = shl i64 %49, 16, !dbg !240
  %50 = load i64, i64* %v3, align 8, !dbg !240
  %shr59 = lshr i64 %50, 48, !dbg !240
  %or60 = or i64 %shl58, %shr59, !dbg !240
  store i64 %or60, i64* %v3, align 8, !dbg !240
  %51 = load i64, i64* %v2, align 8, !dbg !240
  %52 = load i64, i64* %v3, align 8, !dbg !240
  %xor61 = xor i64 %52, %51, !dbg !240
  store i64 %xor61, i64* %v3, align 8, !dbg !240
  %53 = load i64, i64* %v3, align 8, !dbg !240
  %54 = load i64, i64* %v0, align 8, !dbg !240
  %add62 = add i64 %54, %53, !dbg !240
  store i64 %add62, i64* %v0, align 8, !dbg !240
  %55 = load i64, i64* %v3, align 8, !dbg !240
  %shl63 = shl i64 %55, 21, !dbg !240
  %56 = load i64, i64* %v3, align 8, !dbg !240
  %shr64 = lshr i64 %56, 43, !dbg !240
  %or65 = or i64 %shl63, %shr64, !dbg !240
  store i64 %or65, i64* %v3, align 8, !dbg !240
  %57 = load i64, i64* %v0, align 8, !dbg !240
  %58 = load i64, i64* %v3, align 8, !dbg !240
  %xor66 = xor i64 %58, %57, !dbg !240
  store i64 %xor66, i64* %v3, align 8, !dbg !240
  %59 = load i64, i64* %v1, align 8, !dbg !240
  %60 = load i64, i64* %v2, align 8, !dbg !240
  %add67 = add i64 %60, %59, !dbg !240
  store i64 %add67, i64* %v2, align 8, !dbg !240
  %61 = load i64, i64* %v1, align 8, !dbg !240
  %shl68 = shl i64 %61, 17, !dbg !240
  %62 = load i64, i64* %v1, align 8, !dbg !240
  %shr69 = lshr i64 %62, 47, !dbg !240
  %or70 = or i64 %shl68, %shr69, !dbg !240
  store i64 %or70, i64* %v1, align 8, !dbg !240
  %63 = load i64, i64* %v2, align 8, !dbg !240
  %64 = load i64, i64* %v1, align 8, !dbg !240
  %xor71 = xor i64 %64, %63, !dbg !240
  store i64 %xor71, i64* %v1, align 8, !dbg !240
  %65 = load i64, i64* %v2, align 8, !dbg !240
  %shl72 = shl i64 %65, 32, !dbg !240
  %66 = load i64, i64* %v2, align 8, !dbg !240
  %shr73 = lshr i64 %66, 32, !dbg !240
  %or74 = or i64 %shl72, %shr73, !dbg !240
  store i64 %or74, i64* %v2, align 8, !dbg !240
  br label %do.end, !dbg !240

do.end:                                           ; preds = %do.body
  %67 = load i64, i64* %m, align 8, !dbg !242
  %68 = load i64, i64* %v0, align 8, !dbg !243
  %xor75 = xor i64 %68, %67, !dbg !243
  store i64 %xor75, i64* %v0, align 8, !dbg !243
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %do.end
  %69 = load i8*, i8** %in.addr, align 8, !dbg !245
  %add.ptr76 = getelementptr inbounds i8, i8* %69, i64 8, !dbg !245
  store i8* %add.ptr76, i8** %in.addr, align 8, !dbg !245
  br label %for.cond, !dbg !246, !llvm.loop !247

for.end:                                          ; preds = %for.cond
  %70 = load i32, i32* %left, align 4, !dbg !249
  switch i32 %70, label %sw.epilog [
    i32 7, label %sw.bb
    i32 6, label %sw.bb83
    i32 5, label %sw.bb90
    i32 4, label %sw.bb97
    i32 3, label %sw.bb104
    i32 2, label %sw.bb111
    i32 1, label %sw.bb118
    i32 0, label %sw.bb124
  ], !dbg !250

sw.bb:                                            ; preds = %for.end
  %71 = load i8*, i8** %in.addr, align 8, !dbg !251
  %arrayidx77 = getelementptr inbounds i8, i8* %71, i64 6, !dbg !251
  %72 = load i8, i8* %arrayidx77, align 1, !dbg !251
  %conv78 = zext i8 %72 to i32, !dbg !251
  %call79 = call i32 @siptlw(i32 %conv78), !dbg !253
  %conv80 = sext i32 %call79 to i64, !dbg !254
  %shl81 = shl i64 %conv80, 48, !dbg !255
  %73 = load i64, i64* %b, align 8, !dbg !256
  %or82 = or i64 %73, %shl81, !dbg !256
  store i64 %or82, i64* %b, align 8, !dbg !256
  br label %sw.bb83, !dbg !257

sw.bb83:                                          ; preds = %for.end, %sw.bb
  %74 = load i8*, i8** %in.addr, align 8, !dbg !258
  %arrayidx84 = getelementptr inbounds i8, i8* %74, i64 5, !dbg !258
  %75 = load i8, i8* %arrayidx84, align 1, !dbg !258
  %conv85 = zext i8 %75 to i32, !dbg !258
  %call86 = call i32 @siptlw(i32 %conv85), !dbg !259
  %conv87 = sext i32 %call86 to i64, !dbg !260
  %shl88 = shl i64 %conv87, 40, !dbg !261
  %76 = load i64, i64* %b, align 8, !dbg !262
  %or89 = or i64 %76, %shl88, !dbg !262
  store i64 %or89, i64* %b, align 8, !dbg !262
  br label %sw.bb90, !dbg !263

sw.bb90:                                          ; preds = %for.end, %sw.bb83
  %77 = load i8*, i8** %in.addr, align 8, !dbg !264
  %arrayidx91 = getelementptr inbounds i8, i8* %77, i64 4, !dbg !264
  %78 = load i8, i8* %arrayidx91, align 1, !dbg !264
  %conv92 = zext i8 %78 to i32, !dbg !264
  %call93 = call i32 @siptlw(i32 %conv92), !dbg !265
  %conv94 = sext i32 %call93 to i64, !dbg !266
  %shl95 = shl i64 %conv94, 32, !dbg !267
  %79 = load i64, i64* %b, align 8, !dbg !268
  %or96 = or i64 %79, %shl95, !dbg !268
  store i64 %or96, i64* %b, align 8, !dbg !268
  br label %sw.bb97, !dbg !269

sw.bb97:                                          ; preds = %for.end, %sw.bb90
  %80 = load i8*, i8** %in.addr, align 8, !dbg !270
  %arrayidx98 = getelementptr inbounds i8, i8* %80, i64 3, !dbg !270
  %81 = load i8, i8* %arrayidx98, align 1, !dbg !270
  %conv99 = zext i8 %81 to i32, !dbg !270
  %call100 = call i32 @siptlw(i32 %conv99), !dbg !271
  %conv101 = sext i32 %call100 to i64, !dbg !272
  %shl102 = shl i64 %conv101, 24, !dbg !273
  %82 = load i64, i64* %b, align 8, !dbg !274
  %or103 = or i64 %82, %shl102, !dbg !274
  store i64 %or103, i64* %b, align 8, !dbg !274
  br label %sw.bb104, !dbg !275

sw.bb104:                                         ; preds = %for.end, %sw.bb97
  %83 = load i8*, i8** %in.addr, align 8, !dbg !276
  %arrayidx105 = getelementptr inbounds i8, i8* %83, i64 2, !dbg !276
  %84 = load i8, i8* %arrayidx105, align 1, !dbg !276
  %conv106 = zext i8 %84 to i32, !dbg !276
  %call107 = call i32 @siptlw(i32 %conv106), !dbg !277
  %conv108 = sext i32 %call107 to i64, !dbg !278
  %shl109 = shl i64 %conv108, 16, !dbg !279
  %85 = load i64, i64* %b, align 8, !dbg !280
  %or110 = or i64 %85, %shl109, !dbg !280
  store i64 %or110, i64* %b, align 8, !dbg !280
  br label %sw.bb111, !dbg !281

sw.bb111:                                         ; preds = %for.end, %sw.bb104
  %86 = load i8*, i8** %in.addr, align 8, !dbg !282
  %arrayidx112 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !282
  %87 = load i8, i8* %arrayidx112, align 1, !dbg !282
  %conv113 = zext i8 %87 to i32, !dbg !282
  %call114 = call i32 @siptlw(i32 %conv113), !dbg !283
  %conv115 = sext i32 %call114 to i64, !dbg !284
  %shl116 = shl i64 %conv115, 8, !dbg !285
  %88 = load i64, i64* %b, align 8, !dbg !286
  %or117 = or i64 %88, %shl116, !dbg !286
  store i64 %or117, i64* %b, align 8, !dbg !286
  br label %sw.bb118, !dbg !287

sw.bb118:                                         ; preds = %for.end, %sw.bb111
  %89 = load i8*, i8** %in.addr, align 8, !dbg !288
  %arrayidx119 = getelementptr inbounds i8, i8* %89, i64 0, !dbg !288
  %90 = load i8, i8* %arrayidx119, align 1, !dbg !288
  %conv120 = zext i8 %90 to i32, !dbg !288
  %call121 = call i32 @siptlw(i32 %conv120), !dbg !289
  %conv122 = sext i32 %call121 to i64, !dbg !290
  %91 = load i64, i64* %b, align 8, !dbg !291
  %or123 = or i64 %91, %conv122, !dbg !291
  store i64 %or123, i64* %b, align 8, !dbg !291
  br label %sw.epilog, !dbg !292

sw.bb124:                                         ; preds = %for.end
  br label %sw.epilog, !dbg !293

sw.epilog:                                        ; preds = %for.end, %sw.bb124, %sw.bb118
  %92 = load i64, i64* %b, align 8, !dbg !294
  %93 = load i64, i64* %v3, align 8, !dbg !295
  %xor125 = xor i64 %93, %92, !dbg !295
  store i64 %xor125, i64* %v3, align 8, !dbg !295
  br label %do.body126, !dbg !296

do.body126:                                       ; preds = %sw.epilog
  %94 = load i64, i64* %v1, align 8, !dbg !297
  %95 = load i64, i64* %v0, align 8, !dbg !297
  %add127 = add i64 %95, %94, !dbg !297
  store i64 %add127, i64* %v0, align 8, !dbg !297
  %96 = load i64, i64* %v1, align 8, !dbg !297
  %shl128 = shl i64 %96, 13, !dbg !297
  %97 = load i64, i64* %v1, align 8, !dbg !297
  %shr129 = lshr i64 %97, 51, !dbg !297
  %or130 = or i64 %shl128, %shr129, !dbg !297
  store i64 %or130, i64* %v1, align 8, !dbg !297
  %98 = load i64, i64* %v0, align 8, !dbg !297
  %99 = load i64, i64* %v1, align 8, !dbg !297
  %xor131 = xor i64 %99, %98, !dbg !297
  store i64 %xor131, i64* %v1, align 8, !dbg !297
  %100 = load i64, i64* %v0, align 8, !dbg !297
  %shl132 = shl i64 %100, 32, !dbg !297
  %101 = load i64, i64* %v0, align 8, !dbg !297
  %shr133 = lshr i64 %101, 32, !dbg !297
  %or134 = or i64 %shl132, %shr133, !dbg !297
  store i64 %or134, i64* %v0, align 8, !dbg !297
  %102 = load i64, i64* %v3, align 8, !dbg !297
  %103 = load i64, i64* %v2, align 8, !dbg !297
  %add135 = add i64 %103, %102, !dbg !297
  store i64 %add135, i64* %v2, align 8, !dbg !297
  %104 = load i64, i64* %v3, align 8, !dbg !297
  %shl136 = shl i64 %104, 16, !dbg !297
  %105 = load i64, i64* %v3, align 8, !dbg !297
  %shr137 = lshr i64 %105, 48, !dbg !297
  %or138 = or i64 %shl136, %shr137, !dbg !297
  store i64 %or138, i64* %v3, align 8, !dbg !297
  %106 = load i64, i64* %v2, align 8, !dbg !297
  %107 = load i64, i64* %v3, align 8, !dbg !297
  %xor139 = xor i64 %107, %106, !dbg !297
  store i64 %xor139, i64* %v3, align 8, !dbg !297
  %108 = load i64, i64* %v3, align 8, !dbg !297
  %109 = load i64, i64* %v0, align 8, !dbg !297
  %add140 = add i64 %109, %108, !dbg !297
  store i64 %add140, i64* %v0, align 8, !dbg !297
  %110 = load i64, i64* %v3, align 8, !dbg !297
  %shl141 = shl i64 %110, 21, !dbg !297
  %111 = load i64, i64* %v3, align 8, !dbg !297
  %shr142 = lshr i64 %111, 43, !dbg !297
  %or143 = or i64 %shl141, %shr142, !dbg !297
  store i64 %or143, i64* %v3, align 8, !dbg !297
  %112 = load i64, i64* %v0, align 8, !dbg !297
  %113 = load i64, i64* %v3, align 8, !dbg !297
  %xor144 = xor i64 %113, %112, !dbg !297
  store i64 %xor144, i64* %v3, align 8, !dbg !297
  %114 = load i64, i64* %v1, align 8, !dbg !297
  %115 = load i64, i64* %v2, align 8, !dbg !297
  %add145 = add i64 %115, %114, !dbg !297
  store i64 %add145, i64* %v2, align 8, !dbg !297
  %116 = load i64, i64* %v1, align 8, !dbg !297
  %shl146 = shl i64 %116, 17, !dbg !297
  %117 = load i64, i64* %v1, align 8, !dbg !297
  %shr147 = lshr i64 %117, 47, !dbg !297
  %or148 = or i64 %shl146, %shr147, !dbg !297
  store i64 %or148, i64* %v1, align 8, !dbg !297
  %118 = load i64, i64* %v2, align 8, !dbg !297
  %119 = load i64, i64* %v1, align 8, !dbg !297
  %xor149 = xor i64 %119, %118, !dbg !297
  store i64 %xor149, i64* %v1, align 8, !dbg !297
  %120 = load i64, i64* %v2, align 8, !dbg !297
  %shl150 = shl i64 %120, 32, !dbg !297
  %121 = load i64, i64* %v2, align 8, !dbg !297
  %shr151 = lshr i64 %121, 32, !dbg !297
  %or152 = or i64 %shl150, %shr151, !dbg !297
  store i64 %or152, i64* %v2, align 8, !dbg !297
  br label %do.end153, !dbg !297

do.end153:                                        ; preds = %do.body126
  %122 = load i64, i64* %b, align 8, !dbg !299
  %123 = load i64, i64* %v0, align 8, !dbg !300
  %xor154 = xor i64 %123, %122, !dbg !300
  store i64 %xor154, i64* %v0, align 8, !dbg !300
  %124 = load i64, i64* %v2, align 8, !dbg !301
  %xor155 = xor i64 %124, 255, !dbg !301
  store i64 %xor155, i64* %v2, align 8, !dbg !301
  br label %do.body156, !dbg !302

do.body156:                                       ; preds = %do.end153
  %125 = load i64, i64* %v1, align 8, !dbg !303
  %126 = load i64, i64* %v0, align 8, !dbg !303
  %add157 = add i64 %126, %125, !dbg !303
  store i64 %add157, i64* %v0, align 8, !dbg !303
  %127 = load i64, i64* %v1, align 8, !dbg !303
  %shl158 = shl i64 %127, 13, !dbg !303
  %128 = load i64, i64* %v1, align 8, !dbg !303
  %shr159 = lshr i64 %128, 51, !dbg !303
  %or160 = or i64 %shl158, %shr159, !dbg !303
  store i64 %or160, i64* %v1, align 8, !dbg !303
  %129 = load i64, i64* %v0, align 8, !dbg !303
  %130 = load i64, i64* %v1, align 8, !dbg !303
  %xor161 = xor i64 %130, %129, !dbg !303
  store i64 %xor161, i64* %v1, align 8, !dbg !303
  %131 = load i64, i64* %v0, align 8, !dbg !303
  %shl162 = shl i64 %131, 32, !dbg !303
  %132 = load i64, i64* %v0, align 8, !dbg !303
  %shr163 = lshr i64 %132, 32, !dbg !303
  %or164 = or i64 %shl162, %shr163, !dbg !303
  store i64 %or164, i64* %v0, align 8, !dbg !303
  %133 = load i64, i64* %v3, align 8, !dbg !303
  %134 = load i64, i64* %v2, align 8, !dbg !303
  %add165 = add i64 %134, %133, !dbg !303
  store i64 %add165, i64* %v2, align 8, !dbg !303
  %135 = load i64, i64* %v3, align 8, !dbg !303
  %shl166 = shl i64 %135, 16, !dbg !303
  %136 = load i64, i64* %v3, align 8, !dbg !303
  %shr167 = lshr i64 %136, 48, !dbg !303
  %or168 = or i64 %shl166, %shr167, !dbg !303
  store i64 %or168, i64* %v3, align 8, !dbg !303
  %137 = load i64, i64* %v2, align 8, !dbg !303
  %138 = load i64, i64* %v3, align 8, !dbg !303
  %xor169 = xor i64 %138, %137, !dbg !303
  store i64 %xor169, i64* %v3, align 8, !dbg !303
  %139 = load i64, i64* %v3, align 8, !dbg !303
  %140 = load i64, i64* %v0, align 8, !dbg !303
  %add170 = add i64 %140, %139, !dbg !303
  store i64 %add170, i64* %v0, align 8, !dbg !303
  %141 = load i64, i64* %v3, align 8, !dbg !303
  %shl171 = shl i64 %141, 21, !dbg !303
  %142 = load i64, i64* %v3, align 8, !dbg !303
  %shr172 = lshr i64 %142, 43, !dbg !303
  %or173 = or i64 %shl171, %shr172, !dbg !303
  store i64 %or173, i64* %v3, align 8, !dbg !303
  %143 = load i64, i64* %v0, align 8, !dbg !303
  %144 = load i64, i64* %v3, align 8, !dbg !303
  %xor174 = xor i64 %144, %143, !dbg !303
  store i64 %xor174, i64* %v3, align 8, !dbg !303
  %145 = load i64, i64* %v1, align 8, !dbg !303
  %146 = load i64, i64* %v2, align 8, !dbg !303
  %add175 = add i64 %146, %145, !dbg !303
  store i64 %add175, i64* %v2, align 8, !dbg !303
  %147 = load i64, i64* %v1, align 8, !dbg !303
  %shl176 = shl i64 %147, 17, !dbg !303
  %148 = load i64, i64* %v1, align 8, !dbg !303
  %shr177 = lshr i64 %148, 47, !dbg !303
  %or178 = or i64 %shl176, %shr177, !dbg !303
  store i64 %or178, i64* %v1, align 8, !dbg !303
  %149 = load i64, i64* %v2, align 8, !dbg !303
  %150 = load i64, i64* %v1, align 8, !dbg !303
  %xor179 = xor i64 %150, %149, !dbg !303
  store i64 %xor179, i64* %v1, align 8, !dbg !303
  %151 = load i64, i64* %v2, align 8, !dbg !303
  %shl180 = shl i64 %151, 32, !dbg !303
  %152 = load i64, i64* %v2, align 8, !dbg !303
  %shr181 = lshr i64 %152, 32, !dbg !303
  %or182 = or i64 %shl180, %shr181, !dbg !303
  store i64 %or182, i64* %v2, align 8, !dbg !303
  br label %do.end183, !dbg !303

do.end183:                                        ; preds = %do.body156
  br label %do.body184, !dbg !305

do.body184:                                       ; preds = %do.end183
  %153 = load i64, i64* %v1, align 8, !dbg !306
  %154 = load i64, i64* %v0, align 8, !dbg !306
  %add185 = add i64 %154, %153, !dbg !306
  store i64 %add185, i64* %v0, align 8, !dbg !306
  %155 = load i64, i64* %v1, align 8, !dbg !306
  %shl186 = shl i64 %155, 13, !dbg !306
  %156 = load i64, i64* %v1, align 8, !dbg !306
  %shr187 = lshr i64 %156, 51, !dbg !306
  %or188 = or i64 %shl186, %shr187, !dbg !306
  store i64 %or188, i64* %v1, align 8, !dbg !306
  %157 = load i64, i64* %v0, align 8, !dbg !306
  %158 = load i64, i64* %v1, align 8, !dbg !306
  %xor189 = xor i64 %158, %157, !dbg !306
  store i64 %xor189, i64* %v1, align 8, !dbg !306
  %159 = load i64, i64* %v0, align 8, !dbg !306
  %shl190 = shl i64 %159, 32, !dbg !306
  %160 = load i64, i64* %v0, align 8, !dbg !306
  %shr191 = lshr i64 %160, 32, !dbg !306
  %or192 = or i64 %shl190, %shr191, !dbg !306
  store i64 %or192, i64* %v0, align 8, !dbg !306
  %161 = load i64, i64* %v3, align 8, !dbg !306
  %162 = load i64, i64* %v2, align 8, !dbg !306
  %add193 = add i64 %162, %161, !dbg !306
  store i64 %add193, i64* %v2, align 8, !dbg !306
  %163 = load i64, i64* %v3, align 8, !dbg !306
  %shl194 = shl i64 %163, 16, !dbg !306
  %164 = load i64, i64* %v3, align 8, !dbg !306
  %shr195 = lshr i64 %164, 48, !dbg !306
  %or196 = or i64 %shl194, %shr195, !dbg !306
  store i64 %or196, i64* %v3, align 8, !dbg !306
  %165 = load i64, i64* %v2, align 8, !dbg !306
  %166 = load i64, i64* %v3, align 8, !dbg !306
  %xor197 = xor i64 %166, %165, !dbg !306
  store i64 %xor197, i64* %v3, align 8, !dbg !306
  %167 = load i64, i64* %v3, align 8, !dbg !306
  %168 = load i64, i64* %v0, align 8, !dbg !306
  %add198 = add i64 %168, %167, !dbg !306
  store i64 %add198, i64* %v0, align 8, !dbg !306
  %169 = load i64, i64* %v3, align 8, !dbg !306
  %shl199 = shl i64 %169, 21, !dbg !306
  %170 = load i64, i64* %v3, align 8, !dbg !306
  %shr200 = lshr i64 %170, 43, !dbg !306
  %or201 = or i64 %shl199, %shr200, !dbg !306
  store i64 %or201, i64* %v3, align 8, !dbg !306
  %171 = load i64, i64* %v0, align 8, !dbg !306
  %172 = load i64, i64* %v3, align 8, !dbg !306
  %xor202 = xor i64 %172, %171, !dbg !306
  store i64 %xor202, i64* %v3, align 8, !dbg !306
  %173 = load i64, i64* %v1, align 8, !dbg !306
  %174 = load i64, i64* %v2, align 8, !dbg !306
  %add203 = add i64 %174, %173, !dbg !306
  store i64 %add203, i64* %v2, align 8, !dbg !306
  %175 = load i64, i64* %v1, align 8, !dbg !306
  %shl204 = shl i64 %175, 17, !dbg !306
  %176 = load i64, i64* %v1, align 8, !dbg !306
  %shr205 = lshr i64 %176, 47, !dbg !306
  %or206 = or i64 %shl204, %shr205, !dbg !306
  store i64 %or206, i64* %v1, align 8, !dbg !306
  %177 = load i64, i64* %v2, align 8, !dbg !306
  %178 = load i64, i64* %v1, align 8, !dbg !306
  %xor207 = xor i64 %178, %177, !dbg !306
  store i64 %xor207, i64* %v1, align 8, !dbg !306
  %179 = load i64, i64* %v2, align 8, !dbg !306
  %shl208 = shl i64 %179, 32, !dbg !306
  %180 = load i64, i64* %v2, align 8, !dbg !306
  %shr209 = lshr i64 %180, 32, !dbg !306
  %or210 = or i64 %shl208, %shr209, !dbg !306
  store i64 %or210, i64* %v2, align 8, !dbg !306
  br label %do.end211, !dbg !306

do.end211:                                        ; preds = %do.body184
  %181 = load i64, i64* %v0, align 8, !dbg !308
  %182 = load i64, i64* %v1, align 8, !dbg !309
  %xor212 = xor i64 %181, %182, !dbg !310
  %183 = load i64, i64* %v2, align 8, !dbg !311
  %xor213 = xor i64 %xor212, %183, !dbg !312
  %184 = load i64, i64* %v3, align 8, !dbg !313
  %xor214 = xor i64 %xor213, %184, !dbg !314
  store i64 %xor214, i64* %b, align 8, !dbg !315
  %185 = load i64, i64* %b, align 8, !dbg !316
  ret i64 %185, !dbg !317
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "siphash.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 45, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!16 = distinct !DISubprogram(name: "siptlw", scope: !1, file: !1, line: 50, type: !17, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DILocalVariable(name: "c", arg: 1, scope: !16, file: !1, line: 50, type: !19)
!21 = !DILocation(line: 50, column: 16, scope: !16)
!22 = !DILocation(line: 51, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !16, file: !1, line: 51, column: 9)
!24 = !DILocation(line: 51, column: 11, scope: !23)
!25 = !DILocation(line: 51, column: 18, scope: !23)
!26 = !DILocation(line: 51, column: 21, scope: !23)
!27 = !DILocation(line: 51, column: 23, scope: !23)
!28 = !DILocation(line: 51, column: 9, scope: !16)
!29 = !DILocation(line: 52, column: 16, scope: !30)
!30 = distinct !DILexicalBlock(scope: !23, file: !1, line: 51, column: 31)
!31 = !DILocation(line: 52, column: 17, scope: !30)
!32 = !DILocation(line: 52, column: 9, scope: !30)
!33 = !DILocation(line: 54, column: 16, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !1, line: 53, column: 12)
!35 = !DILocation(line: 54, column: 9, scope: !34)
!36 = !DILocation(line: 56, column: 1, scope: !16)
!37 = distinct !DISubprogram(name: "siphash", scope: !1, file: !1, line: 127, type: !38, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!5, !40, !45, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 38, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 46, baseType: !9)
!47 = !DIFile(filename: "/usr/lib/llvm-13/lib/clang/13.0.1/include/stddef.h", directory: "")
!48 = !DILocalVariable(name: "in", arg: 1, scope: !37, file: !1, line: 127, type: !40)
!49 = !DILocation(line: 127, column: 33, scope: !37)
!50 = !DILocalVariable(name: "inlen", arg: 2, scope: !37, file: !1, line: 127, type: !45)
!51 = !DILocation(line: 127, column: 50, scope: !37)
!52 = !DILocalVariable(name: "k", arg: 3, scope: !37, file: !1, line: 127, type: !40)
!53 = !DILocation(line: 127, column: 72, scope: !37)
!54 = !DILocalVariable(name: "v0", scope: !37, file: !1, line: 132, type: !5)
!55 = !DILocation(line: 132, column: 14, scope: !37)
!56 = !DILocalVariable(name: "v1", scope: !37, file: !1, line: 133, type: !5)
!57 = !DILocation(line: 133, column: 14, scope: !37)
!58 = !DILocalVariable(name: "v2", scope: !37, file: !1, line: 134, type: !5)
!59 = !DILocation(line: 134, column: 14, scope: !37)
!60 = !DILocalVariable(name: "v3", scope: !37, file: !1, line: 135, type: !5)
!61 = !DILocation(line: 135, column: 14, scope: !37)
!62 = !DILocalVariable(name: "k0", scope: !37, file: !1, line: 136, type: !5)
!63 = !DILocation(line: 136, column: 14, scope: !37)
!64 = !DILocation(line: 136, column: 19, scope: !37)
!65 = !DILocalVariable(name: "k1", scope: !37, file: !1, line: 137, type: !5)
!66 = !DILocation(line: 137, column: 14, scope: !37)
!67 = !DILocation(line: 137, column: 19, scope: !37)
!68 = !DILocalVariable(name: "m", scope: !37, file: !1, line: 138, type: !5)
!69 = !DILocation(line: 138, column: 14, scope: !37)
!70 = !DILocalVariable(name: "end", scope: !37, file: !1, line: 139, type: !40)
!71 = !DILocation(line: 139, column: 20, scope: !37)
!72 = !DILocation(line: 139, column: 26, scope: !37)
!73 = !DILocation(line: 139, column: 31, scope: !37)
!74 = !DILocation(line: 139, column: 29, scope: !37)
!75 = !DILocation(line: 139, column: 40, scope: !37)
!76 = !DILocation(line: 139, column: 46, scope: !37)
!77 = !DILocation(line: 139, column: 37, scope: !37)
!78 = !DILocalVariable(name: "left", scope: !37, file: !1, line: 140, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!80 = !DILocation(line: 140, column: 15, scope: !37)
!81 = !DILocation(line: 140, column: 22, scope: !37)
!82 = !DILocation(line: 140, column: 28, scope: !37)
!83 = !DILocalVariable(name: "b", scope: !37, file: !1, line: 141, type: !5)
!84 = !DILocation(line: 141, column: 14, scope: !37)
!85 = !DILocation(line: 141, column: 29, scope: !37)
!86 = !DILocation(line: 141, column: 36, scope: !37)
!87 = !DILocation(line: 142, column: 11, scope: !37)
!88 = !DILocation(line: 142, column: 8, scope: !37)
!89 = !DILocation(line: 143, column: 11, scope: !37)
!90 = !DILocation(line: 143, column: 8, scope: !37)
!91 = !DILocation(line: 144, column: 11, scope: !37)
!92 = !DILocation(line: 144, column: 8, scope: !37)
!93 = !DILocation(line: 145, column: 11, scope: !37)
!94 = !DILocation(line: 145, column: 8, scope: !37)
!95 = !DILocation(line: 147, column: 5, scope: !37)
!96 = !DILocation(line: 147, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 147, column: 5)
!98 = distinct !DILexicalBlock(scope: !37, file: !1, line: 147, column: 5)
!99 = !DILocation(line: 147, column: 18, scope: !97)
!100 = !DILocation(line: 147, column: 15, scope: !97)
!101 = !DILocation(line: 147, column: 5, scope: !98)
!102 = !DILocation(line: 148, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 147, column: 32)
!104 = !DILocation(line: 148, column: 11, scope: !103)
!105 = !DILocation(line: 149, column: 15, scope: !103)
!106 = !DILocation(line: 149, column: 12, scope: !103)
!107 = !DILocation(line: 151, column: 9, scope: !103)
!108 = !DILocation(line: 151, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 151, column: 9)
!110 = !DILocation(line: 153, column: 15, scope: !103)
!111 = !DILocation(line: 153, column: 12, scope: !103)
!112 = !DILocation(line: 154, column: 5, scope: !103)
!113 = !DILocation(line: 147, column: 26, scope: !97)
!114 = !DILocation(line: 147, column: 5, scope: !97)
!115 = distinct !{!115, !101, !116, !117}
!116 = !DILocation(line: 154, column: 5, scope: !98)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 156, column: 13, scope: !37)
!119 = !DILocation(line: 156, column: 5, scope: !37)
!120 = !DILocation(line: 157, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !37, file: !1, line: 156, column: 19)
!122 = !DILocation(line: 157, column: 19, scope: !121)
!123 = !DILocation(line: 157, column: 36, scope: !121)
!124 = !DILocation(line: 157, column: 15, scope: !121)
!125 = !DILocation(line: 157, column: 13, scope: !121)
!126 = !DILocation(line: 158, column: 29, scope: !121)
!127 = !DILocation(line: 158, column: 19, scope: !121)
!128 = !DILocation(line: 158, column: 36, scope: !121)
!129 = !DILocation(line: 158, column: 15, scope: !121)
!130 = !DILocation(line: 158, column: 13, scope: !121)
!131 = !DILocation(line: 159, column: 29, scope: !121)
!132 = !DILocation(line: 159, column: 19, scope: !121)
!133 = !DILocation(line: 159, column: 36, scope: !121)
!134 = !DILocation(line: 159, column: 15, scope: !121)
!135 = !DILocation(line: 159, column: 13, scope: !121)
!136 = !DILocation(line: 160, column: 29, scope: !121)
!137 = !DILocation(line: 160, column: 19, scope: !121)
!138 = !DILocation(line: 160, column: 36, scope: !121)
!139 = !DILocation(line: 160, column: 15, scope: !121)
!140 = !DILocation(line: 160, column: 13, scope: !121)
!141 = !DILocation(line: 161, column: 29, scope: !121)
!142 = !DILocation(line: 161, column: 19, scope: !121)
!143 = !DILocation(line: 161, column: 36, scope: !121)
!144 = !DILocation(line: 161, column: 15, scope: !121)
!145 = !DILocation(line: 161, column: 13, scope: !121)
!146 = !DILocation(line: 162, column: 29, scope: !121)
!147 = !DILocation(line: 162, column: 19, scope: !121)
!148 = !DILocation(line: 162, column: 36, scope: !121)
!149 = !DILocation(line: 162, column: 15, scope: !121)
!150 = !DILocation(line: 162, column: 13, scope: !121)
!151 = !DILocation(line: 163, column: 29, scope: !121)
!152 = !DILocation(line: 163, column: 19, scope: !121)
!153 = !DILocation(line: 163, column: 15, scope: !121)
!154 = !DILocation(line: 163, column: 37, scope: !121)
!155 = !DILocation(line: 164, column: 13, scope: !121)
!156 = !DILocation(line: 167, column: 11, scope: !37)
!157 = !DILocation(line: 167, column: 8, scope: !37)
!158 = !DILocation(line: 169, column: 5, scope: !37)
!159 = !DILocation(line: 169, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !37, file: !1, line: 169, column: 5)
!161 = !DILocation(line: 171, column: 11, scope: !37)
!162 = !DILocation(line: 171, column: 8, scope: !37)
!163 = !DILocation(line: 172, column: 8, scope: !37)
!164 = !DILocation(line: 174, column: 5, scope: !37)
!165 = !DILocation(line: 174, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !37, file: !1, line: 174, column: 5)
!167 = !DILocation(line: 175, column: 5, scope: !37)
!168 = !DILocation(line: 175, column: 5, scope: !169)
!169 = distinct !DILexicalBlock(scope: !37, file: !1, line: 175, column: 5)
!170 = !DILocation(line: 177, column: 9, scope: !37)
!171 = !DILocation(line: 177, column: 14, scope: !37)
!172 = !DILocation(line: 177, column: 12, scope: !37)
!173 = !DILocation(line: 177, column: 19, scope: !37)
!174 = !DILocation(line: 177, column: 17, scope: !37)
!175 = !DILocation(line: 177, column: 24, scope: !37)
!176 = !DILocation(line: 177, column: 22, scope: !37)
!177 = !DILocation(line: 177, column: 7, scope: !37)
!178 = !DILocation(line: 182, column: 12, scope: !37)
!179 = !DILocation(line: 182, column: 5, scope: !37)
!180 = distinct !DISubprogram(name: "siphash_nocase", scope: !1, file: !1, line: 187, type: !38, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!181 = !DILocalVariable(name: "in", arg: 1, scope: !180, file: !1, line: 187, type: !40)
!182 = !DILocation(line: 187, column: 40, scope: !180)
!183 = !DILocalVariable(name: "inlen", arg: 2, scope: !180, file: !1, line: 187, type: !45)
!184 = !DILocation(line: 187, column: 57, scope: !180)
!185 = !DILocalVariable(name: "k", arg: 3, scope: !180, file: !1, line: 187, type: !40)
!186 = !DILocation(line: 187, column: 79, scope: !180)
!187 = !DILocalVariable(name: "v0", scope: !180, file: !1, line: 193, type: !5)
!188 = !DILocation(line: 193, column: 14, scope: !180)
!189 = !DILocalVariable(name: "v1", scope: !180, file: !1, line: 194, type: !5)
!190 = !DILocation(line: 194, column: 14, scope: !180)
!191 = !DILocalVariable(name: "v2", scope: !180, file: !1, line: 195, type: !5)
!192 = !DILocation(line: 195, column: 14, scope: !180)
!193 = !DILocalVariable(name: "v3", scope: !180, file: !1, line: 196, type: !5)
!194 = !DILocation(line: 196, column: 14, scope: !180)
!195 = !DILocalVariable(name: "k0", scope: !180, file: !1, line: 197, type: !5)
!196 = !DILocation(line: 197, column: 14, scope: !180)
!197 = !DILocation(line: 197, column: 19, scope: !180)
!198 = !DILocalVariable(name: "k1", scope: !180, file: !1, line: 198, type: !5)
!199 = !DILocation(line: 198, column: 14, scope: !180)
!200 = !DILocation(line: 198, column: 19, scope: !180)
!201 = !DILocalVariable(name: "m", scope: !180, file: !1, line: 199, type: !5)
!202 = !DILocation(line: 199, column: 14, scope: !180)
!203 = !DILocalVariable(name: "end", scope: !180, file: !1, line: 200, type: !40)
!204 = !DILocation(line: 200, column: 20, scope: !180)
!205 = !DILocation(line: 200, column: 26, scope: !180)
!206 = !DILocation(line: 200, column: 31, scope: !180)
!207 = !DILocation(line: 200, column: 29, scope: !180)
!208 = !DILocation(line: 200, column: 40, scope: !180)
!209 = !DILocation(line: 200, column: 46, scope: !180)
!210 = !DILocation(line: 200, column: 37, scope: !180)
!211 = !DILocalVariable(name: "left", scope: !180, file: !1, line: 201, type: !79)
!212 = !DILocation(line: 201, column: 15, scope: !180)
!213 = !DILocation(line: 201, column: 22, scope: !180)
!214 = !DILocation(line: 201, column: 28, scope: !180)
!215 = !DILocalVariable(name: "b", scope: !180, file: !1, line: 202, type: !5)
!216 = !DILocation(line: 202, column: 14, scope: !180)
!217 = !DILocation(line: 202, column: 29, scope: !180)
!218 = !DILocation(line: 202, column: 36, scope: !180)
!219 = !DILocation(line: 203, column: 11, scope: !180)
!220 = !DILocation(line: 203, column: 8, scope: !180)
!221 = !DILocation(line: 204, column: 11, scope: !180)
!222 = !DILocation(line: 204, column: 8, scope: !180)
!223 = !DILocation(line: 205, column: 11, scope: !180)
!224 = !DILocation(line: 205, column: 8, scope: !180)
!225 = !DILocation(line: 206, column: 11, scope: !180)
!226 = !DILocation(line: 206, column: 8, scope: !180)
!227 = !DILocation(line: 208, column: 5, scope: !180)
!228 = !DILocation(line: 208, column: 12, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 208, column: 5)
!230 = distinct !DILexicalBlock(scope: !180, file: !1, line: 208, column: 5)
!231 = !DILocation(line: 208, column: 18, scope: !229)
!232 = !DILocation(line: 208, column: 15, scope: !229)
!233 = !DILocation(line: 208, column: 5, scope: !230)
!234 = !DILocation(line: 209, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !1, line: 208, column: 32)
!236 = !DILocation(line: 209, column: 11, scope: !235)
!237 = !DILocation(line: 210, column: 15, scope: !235)
!238 = !DILocation(line: 210, column: 12, scope: !235)
!239 = !DILocation(line: 212, column: 9, scope: !235)
!240 = !DILocation(line: 212, column: 9, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !1, line: 212, column: 9)
!242 = !DILocation(line: 214, column: 15, scope: !235)
!243 = !DILocation(line: 214, column: 12, scope: !235)
!244 = !DILocation(line: 215, column: 5, scope: !235)
!245 = !DILocation(line: 208, column: 26, scope: !229)
!246 = !DILocation(line: 208, column: 5, scope: !229)
!247 = distinct !{!247, !233, !248, !117}
!248 = !DILocation(line: 215, column: 5, scope: !230)
!249 = !DILocation(line: 217, column: 13, scope: !180)
!250 = !DILocation(line: 217, column: 5, scope: !180)
!251 = !DILocation(line: 218, column: 36, scope: !252)
!252 = distinct !DILexicalBlock(scope: !180, file: !1, line: 217, column: 19)
!253 = !DILocation(line: 218, column: 29, scope: !252)
!254 = !DILocation(line: 218, column: 19, scope: !252)
!255 = !DILocation(line: 218, column: 44, scope: !252)
!256 = !DILocation(line: 218, column: 15, scope: !252)
!257 = !DILocation(line: 218, column: 13, scope: !252)
!258 = !DILocation(line: 219, column: 36, scope: !252)
!259 = !DILocation(line: 219, column: 29, scope: !252)
!260 = !DILocation(line: 219, column: 19, scope: !252)
!261 = !DILocation(line: 219, column: 44, scope: !252)
!262 = !DILocation(line: 219, column: 15, scope: !252)
!263 = !DILocation(line: 219, column: 13, scope: !252)
!264 = !DILocation(line: 220, column: 36, scope: !252)
!265 = !DILocation(line: 220, column: 29, scope: !252)
!266 = !DILocation(line: 220, column: 19, scope: !252)
!267 = !DILocation(line: 220, column: 44, scope: !252)
!268 = !DILocation(line: 220, column: 15, scope: !252)
!269 = !DILocation(line: 220, column: 13, scope: !252)
!270 = !DILocation(line: 221, column: 36, scope: !252)
!271 = !DILocation(line: 221, column: 29, scope: !252)
!272 = !DILocation(line: 221, column: 19, scope: !252)
!273 = !DILocation(line: 221, column: 44, scope: !252)
!274 = !DILocation(line: 221, column: 15, scope: !252)
!275 = !DILocation(line: 221, column: 13, scope: !252)
!276 = !DILocation(line: 222, column: 36, scope: !252)
!277 = !DILocation(line: 222, column: 29, scope: !252)
!278 = !DILocation(line: 222, column: 19, scope: !252)
!279 = !DILocation(line: 222, column: 44, scope: !252)
!280 = !DILocation(line: 222, column: 15, scope: !252)
!281 = !DILocation(line: 222, column: 13, scope: !252)
!282 = !DILocation(line: 223, column: 36, scope: !252)
!283 = !DILocation(line: 223, column: 29, scope: !252)
!284 = !DILocation(line: 223, column: 19, scope: !252)
!285 = !DILocation(line: 223, column: 44, scope: !252)
!286 = !DILocation(line: 223, column: 15, scope: !252)
!287 = !DILocation(line: 223, column: 13, scope: !252)
!288 = !DILocation(line: 224, column: 36, scope: !252)
!289 = !DILocation(line: 224, column: 29, scope: !252)
!290 = !DILocation(line: 224, column: 19, scope: !252)
!291 = !DILocation(line: 224, column: 15, scope: !252)
!292 = !DILocation(line: 224, column: 45, scope: !252)
!293 = !DILocation(line: 225, column: 13, scope: !252)
!294 = !DILocation(line: 228, column: 11, scope: !180)
!295 = !DILocation(line: 228, column: 8, scope: !180)
!296 = !DILocation(line: 230, column: 5, scope: !180)
!297 = !DILocation(line: 230, column: 5, scope: !298)
!298 = distinct !DILexicalBlock(scope: !180, file: !1, line: 230, column: 5)
!299 = !DILocation(line: 232, column: 11, scope: !180)
!300 = !DILocation(line: 232, column: 8, scope: !180)
!301 = !DILocation(line: 233, column: 8, scope: !180)
!302 = !DILocation(line: 235, column: 5, scope: !180)
!303 = !DILocation(line: 235, column: 5, scope: !304)
!304 = distinct !DILexicalBlock(scope: !180, file: !1, line: 235, column: 5)
!305 = !DILocation(line: 236, column: 5, scope: !180)
!306 = !DILocation(line: 236, column: 5, scope: !307)
!307 = distinct !DILexicalBlock(scope: !180, file: !1, line: 236, column: 5)
!308 = !DILocation(line: 238, column: 9, scope: !180)
!309 = !DILocation(line: 238, column: 14, scope: !180)
!310 = !DILocation(line: 238, column: 12, scope: !180)
!311 = !DILocation(line: 238, column: 19, scope: !180)
!312 = !DILocation(line: 238, column: 17, scope: !180)
!313 = !DILocation(line: 238, column: 24, scope: !180)
!314 = !DILocation(line: 238, column: 22, scope: !180)
!315 = !DILocation(line: 238, column: 7, scope: !180)
!316 = !DILocation(line: 243, column: 12, scope: !180)
!317 = !DILocation(line: 243, column: 5, scope: !180)
