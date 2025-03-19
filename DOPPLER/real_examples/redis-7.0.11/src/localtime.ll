; ModuleID = 'localtime.c'
source_filename = "localtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@__const.nolocks_localtime.mdays = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @nolocks_localtime(%struct.tm* %tmp, i64 %t, i64 %tz, i32 %dst) #0 !dbg !9 {
entry:
  %tmp.addr = alloca %struct.tm*, align 8
  %t.addr = alloca i64, align 8
  %tz.addr = alloca i64, align 8
  %dst.addr = alloca i32, align 4
  %secs_min = alloca i64, align 8
  %secs_hour = alloca i64, align 8
  %secs_day = alloca i64, align 8
  %days = alloca i64, align 8
  %seconds = alloca i64, align 8
  %days_this_year = alloca i64, align 8
  %mdays = alloca [12 x i32], align 16
  store %struct.tm* %tmp, %struct.tm** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tm** %tmp.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i64 %t, i64* %t.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %t.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i64 %tz, i64* %tz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %tz.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 %dst, i32* %dst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dst.addr, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i64* %secs_min, metadata !44, metadata !DIExpression()), !dbg !46
  store i64 60, i64* %secs_min, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i64* %secs_hour, metadata !47, metadata !DIExpression()), !dbg !48
  store i64 3600, i64* %secs_hour, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i64* %secs_day, metadata !49, metadata !DIExpression()), !dbg !50
  store i64 86400, i64* %secs_day, align 8, !dbg !50
  %0 = load i64, i64* %tz.addr, align 8, !dbg !51
  %1 = load i64, i64* %t.addr, align 8, !dbg !52
  %sub = sub nsw i64 %1, %0, !dbg !52
  store i64 %sub, i64* %t.addr, align 8, !dbg !52
  %2 = load i32, i32* %dst.addr, align 4, !dbg !53
  %mul = mul nsw i32 3600, %2, !dbg !54
  %conv = sext i32 %mul to i64, !dbg !55
  %3 = load i64, i64* %t.addr, align 8, !dbg !56
  %add = add nsw i64 %3, %conv, !dbg !56
  store i64 %add, i64* %t.addr, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i64* %days, metadata !57, metadata !DIExpression()), !dbg !58
  %4 = load i64, i64* %t.addr, align 8, !dbg !59
  %div = sdiv i64 %4, 86400, !dbg !60
  store i64 %div, i64* %days, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i64* %seconds, metadata !61, metadata !DIExpression()), !dbg !62
  %5 = load i64, i64* %t.addr, align 8, !dbg !63
  %rem = srem i64 %5, 86400, !dbg !64
  store i64 %rem, i64* %seconds, align 8, !dbg !62
  %6 = load i32, i32* %dst.addr, align 4, !dbg !65
  %7 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !66
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 8, !dbg !67
  store i32 %6, i32* %tm_isdst, align 8, !dbg !68
  %8 = load i64, i64* %seconds, align 8, !dbg !69
  %div1 = sdiv i64 %8, 3600, !dbg !70
  %conv2 = trunc i64 %div1 to i32, !dbg !69
  %9 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !71
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2, !dbg !72
  store i32 %conv2, i32* %tm_hour, align 8, !dbg !73
  %10 = load i64, i64* %seconds, align 8, !dbg !74
  %rem3 = srem i64 %10, 3600, !dbg !75
  %div4 = sdiv i64 %rem3, 60, !dbg !76
  %conv5 = trunc i64 %div4 to i32, !dbg !77
  %11 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !78
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1, !dbg !79
  store i32 %conv5, i32* %tm_min, align 4, !dbg !80
  %12 = load i64, i64* %seconds, align 8, !dbg !81
  %rem6 = srem i64 %12, 3600, !dbg !82
  %rem7 = srem i64 %rem6, 60, !dbg !83
  %conv8 = trunc i64 %rem7 to i32, !dbg !84
  %13 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !85
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0, !dbg !86
  store i32 %conv8, i32* %tm_sec, align 8, !dbg !87
  %14 = load i64, i64* %days, align 8, !dbg !88
  %add9 = add nsw i64 %14, 4, !dbg !89
  %rem10 = srem i64 %add9, 7, !dbg !90
  %conv11 = trunc i64 %rem10 to i32, !dbg !91
  %15 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !92
  %tm_wday = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 6, !dbg !93
  store i32 %conv11, i32* %tm_wday, align 8, !dbg !94
  %16 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !95
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 5, !dbg !96
  store i32 1970, i32* %tm_year, align 4, !dbg !97
  br label %while.body, !dbg !98

while.body:                                       ; preds = %entry, %if.end
  call void @llvm.dbg.declare(metadata i64* %days_this_year, metadata !99, metadata !DIExpression()), !dbg !101
  %17 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !102
  %tm_year12 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5, !dbg !103
  %18 = load i32, i32* %tm_year12, align 4, !dbg !103
  %conv13 = sext i32 %18 to i64, !dbg !102
  %call = call i32 @is_leap_year(i64 %conv13), !dbg !104
  %add14 = add nsw i32 365, %call, !dbg !105
  %conv15 = sext i32 %add14 to i64, !dbg !106
  store i64 %conv15, i64* %days_this_year, align 8, !dbg !101
  %19 = load i64, i64* %days_this_year, align 8, !dbg !107
  %20 = load i64, i64* %days, align 8, !dbg !109
  %cmp = icmp sgt i64 %19, %20, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !112

if.end:                                           ; preds = %while.body
  %21 = load i64, i64* %days_this_year, align 8, !dbg !113
  %22 = load i64, i64* %days, align 8, !dbg !114
  %sub17 = sub nsw i64 %22, %21, !dbg !114
  store i64 %sub17, i64* %days, align 8, !dbg !114
  %23 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !115
  %tm_year18 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5, !dbg !116
  %24 = load i32, i32* %tm_year18, align 4, !dbg !117
  %inc = add nsw i32 %24, 1, !dbg !117
  store i32 %inc, i32* %tm_year18, align 4, !dbg !117
  br label %while.body, !dbg !98, !llvm.loop !118

while.end:                                        ; preds = %if.then
  %25 = load i64, i64* %days, align 8, !dbg !120
  %conv19 = trunc i64 %25 to i32, !dbg !120
  %26 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !121
  %tm_yday = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 7, !dbg !122
  store i32 %conv19, i32* %tm_yday, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata [12 x i32]* %mdays, metadata !124, metadata !DIExpression()), !dbg !128
  %27 = bitcast [12 x i32]* %mdays to i8*, !dbg !128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([12 x i32]* @__const.nolocks_localtime.mdays to i8*), i64 48, i1 false), !dbg !128
  %28 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !129
  %tm_year20 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 5, !dbg !130
  %29 = load i32, i32* %tm_year20, align 4, !dbg !130
  %conv21 = sext i32 %29 to i64, !dbg !129
  %call22 = call i32 @is_leap_year(i64 %conv21), !dbg !131
  %arrayidx = getelementptr inbounds [12 x i32], [12 x i32]* %mdays, i64 0, i64 1, !dbg !132
  %30 = load i32, i32* %arrayidx, align 4, !dbg !133
  %add23 = add nsw i32 %30, %call22, !dbg !133
  store i32 %add23, i32* %arrayidx, align 4, !dbg !133
  %31 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !134
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 4, !dbg !135
  store i32 0, i32* %tm_mon, align 8, !dbg !136
  br label %while.cond, !dbg !137

while.cond:                                       ; preds = %while.body29, %while.end
  %32 = load i64, i64* %days, align 8, !dbg !138
  %33 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !139
  %tm_mon24 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 4, !dbg !140
  %34 = load i32, i32* %tm_mon24, align 8, !dbg !140
  %idxprom = sext i32 %34 to i64, !dbg !141
  %arrayidx25 = getelementptr inbounds [12 x i32], [12 x i32]* %mdays, i64 0, i64 %idxprom, !dbg !141
  %35 = load i32, i32* %arrayidx25, align 4, !dbg !141
  %conv26 = sext i32 %35 to i64, !dbg !141
  %cmp27 = icmp sge i64 %32, %conv26, !dbg !142
  br i1 %cmp27, label %while.body29, label %while.end37, !dbg !137

while.body29:                                     ; preds = %while.cond
  %36 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !143
  %tm_mon30 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 4, !dbg !145
  %37 = load i32, i32* %tm_mon30, align 8, !dbg !145
  %idxprom31 = sext i32 %37 to i64, !dbg !146
  %arrayidx32 = getelementptr inbounds [12 x i32], [12 x i32]* %mdays, i64 0, i64 %idxprom31, !dbg !146
  %38 = load i32, i32* %arrayidx32, align 4, !dbg !146
  %conv33 = sext i32 %38 to i64, !dbg !146
  %39 = load i64, i64* %days, align 8, !dbg !147
  %sub34 = sub nsw i64 %39, %conv33, !dbg !147
  store i64 %sub34, i64* %days, align 8, !dbg !147
  %40 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !148
  %tm_mon35 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 4, !dbg !149
  %41 = load i32, i32* %tm_mon35, align 8, !dbg !150
  %inc36 = add nsw i32 %41, 1, !dbg !150
  store i32 %inc36, i32* %tm_mon35, align 8, !dbg !150
  br label %while.cond, !dbg !137, !llvm.loop !151

while.end37:                                      ; preds = %while.cond
  %42 = load i64, i64* %days, align 8, !dbg !154
  %add38 = add nsw i64 %42, 1, !dbg !155
  %conv39 = trunc i64 %add38 to i32, !dbg !154
  %43 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !156
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 3, !dbg !157
  store i32 %conv39, i32* %tm_mday, align 4, !dbg !158
  %44 = load %struct.tm*, %struct.tm** %tmp.addr, align 8, !dbg !159
  %tm_year40 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 5, !dbg !160
  %45 = load i32, i32* %tm_year40, align 4, !dbg !161
  %sub41 = sub nsw i32 %45, 1900, !dbg !161
  store i32 %sub41, i32* %tm_year40, align 4, !dbg !161
  ret void, !dbg !162
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_leap_year(i64 %year) #0 !dbg !163 {
entry:
  %retval = alloca i32, align 4
  %year.addr = alloca i64, align 8
  store i64 %year, i64* %year.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %year.addr, metadata !166, metadata !DIExpression()), !dbg !167
  %0 = load i64, i64* %year.addr, align 8, !dbg !168
  %rem = srem i64 %0, 4, !dbg !170
  %tobool = icmp ne i64 %rem, 0, !dbg !170
  br i1 %tobool, label %if.then, label %if.else, !dbg !171

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !172
  br label %return, !dbg !172

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %year.addr, align 8, !dbg !173
  %rem1 = srem i64 %1, 100, !dbg !175
  %tobool2 = icmp ne i64 %rem1, 0, !dbg !175
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !176

if.then3:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4, !dbg !177
  br label %return, !dbg !177

if.else4:                                         ; preds = %if.else
  %2 = load i64, i64* %year.addr, align 8, !dbg !178
  %rem5 = srem i64 %2, 400, !dbg !180
  %tobool6 = icmp ne i64 %rem5, 0, !dbg !180
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !181

if.then7:                                         ; preds = %if.else4
  store i32 0, i32* %retval, align 4, !dbg !182
  br label %return, !dbg !182

if.else8:                                         ; preds = %if.else4
  store i32 1, i32* %retval, align 4, !dbg !183
  br label %return, !dbg !183

return:                                           ; preds = %if.else8, %if.then7, %if.then3, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !184
  ret i32 %3, !dbg !184
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "localtime.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!9 = distinct !DISubprogram(name: "nolocks_localtime", scope: !1, file: !1, line: 59, type: !10, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !32, !32, !17}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !14, line: 7, size: 448, elements: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h", directory: "")
!15 = !{!16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !13, file: !14, line: 9, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !13, file: !14, line: 10, baseType: !17, size: 32, offset: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !13, file: !14, line: 11, baseType: !17, size: 32, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !13, file: !14, line: 12, baseType: !17, size: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !13, file: !14, line: 13, baseType: !17, size: 32, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !13, file: !14, line: 14, baseType: !17, size: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !13, file: !14, line: 15, baseType: !17, size: 32, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !13, file: !14, line: 16, baseType: !17, size: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !13, file: !14, line: 17, baseType: !17, size: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !13, file: !14, line: 23, baseType: !27, size: 64, offset: 320)
!27 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !13, file: !14, line: 24, baseType: !29, size: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !33, line: 10, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !35, line: 160, baseType: !27)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!36 = !DILocalVariable(name: "tmp", arg: 1, scope: !9, file: !1, line: 59, type: !12)
!37 = !DILocation(line: 59, column: 35, scope: !9)
!38 = !DILocalVariable(name: "t", arg: 2, scope: !9, file: !1, line: 59, type: !32)
!39 = !DILocation(line: 59, column: 47, scope: !9)
!40 = !DILocalVariable(name: "tz", arg: 3, scope: !9, file: !1, line: 59, type: !32)
!41 = !DILocation(line: 59, column: 57, scope: !9)
!42 = !DILocalVariable(name: "dst", arg: 4, scope: !9, file: !1, line: 59, type: !17)
!43 = !DILocation(line: 59, column: 65, scope: !9)
!44 = !DILocalVariable(name: "secs_min", scope: !9, file: !1, line: 60, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!46 = !DILocation(line: 60, column: 18, scope: !9)
!47 = !DILocalVariable(name: "secs_hour", scope: !9, file: !1, line: 61, type: !45)
!48 = !DILocation(line: 61, column: 18, scope: !9)
!49 = !DILocalVariable(name: "secs_day", scope: !9, file: !1, line: 62, type: !45)
!50 = !DILocation(line: 62, column: 18, scope: !9)
!51 = !DILocation(line: 64, column: 10, scope: !9)
!52 = !DILocation(line: 64, column: 7, scope: !9)
!53 = !DILocation(line: 65, column: 15, scope: !9)
!54 = !DILocation(line: 65, column: 14, scope: !9)
!55 = !DILocation(line: 65, column: 10, scope: !9)
!56 = !DILocation(line: 65, column: 7, scope: !9)
!57 = !DILocalVariable(name: "days", scope: !9, file: !1, line: 66, type: !32)
!58 = !DILocation(line: 66, column: 12, scope: !9)
!59 = !DILocation(line: 66, column: 19, scope: !9)
!60 = !DILocation(line: 66, column: 21, scope: !9)
!61 = !DILocalVariable(name: "seconds", scope: !9, file: !1, line: 67, type: !32)
!62 = !DILocation(line: 67, column: 12, scope: !9)
!63 = !DILocation(line: 67, column: 22, scope: !9)
!64 = !DILocation(line: 67, column: 24, scope: !9)
!65 = !DILocation(line: 69, column: 21, scope: !9)
!66 = !DILocation(line: 69, column: 5, scope: !9)
!67 = !DILocation(line: 69, column: 10, scope: !9)
!68 = !DILocation(line: 69, column: 19, scope: !9)
!69 = !DILocation(line: 70, column: 20, scope: !9)
!70 = !DILocation(line: 70, column: 28, scope: !9)
!71 = !DILocation(line: 70, column: 5, scope: !9)
!72 = !DILocation(line: 70, column: 10, scope: !9)
!73 = !DILocation(line: 70, column: 18, scope: !9)
!74 = !DILocation(line: 71, column: 20, scope: !9)
!75 = !DILocation(line: 71, column: 28, scope: !9)
!76 = !DILocation(line: 71, column: 41, scope: !9)
!77 = !DILocation(line: 71, column: 19, scope: !9)
!78 = !DILocation(line: 71, column: 5, scope: !9)
!79 = !DILocation(line: 71, column: 10, scope: !9)
!80 = !DILocation(line: 71, column: 17, scope: !9)
!81 = !DILocation(line: 72, column: 20, scope: !9)
!82 = !DILocation(line: 72, column: 28, scope: !9)
!83 = !DILocation(line: 72, column: 41, scope: !9)
!84 = !DILocation(line: 72, column: 19, scope: !9)
!85 = !DILocation(line: 72, column: 5, scope: !9)
!86 = !DILocation(line: 72, column: 10, scope: !9)
!87 = !DILocation(line: 72, column: 17, scope: !9)
!88 = !DILocation(line: 77, column: 21, scope: !9)
!89 = !DILocation(line: 77, column: 25, scope: !9)
!90 = !DILocation(line: 77, column: 28, scope: !9)
!91 = !DILocation(line: 77, column: 20, scope: !9)
!92 = !DILocation(line: 77, column: 5, scope: !9)
!93 = !DILocation(line: 77, column: 10, scope: !9)
!94 = !DILocation(line: 77, column: 18, scope: !9)
!95 = !DILocation(line: 80, column: 5, scope: !9)
!96 = !DILocation(line: 80, column: 10, scope: !9)
!97 = !DILocation(line: 80, column: 18, scope: !9)
!98 = !DILocation(line: 81, column: 5, scope: !9)
!99 = !DILocalVariable(name: "days_this_year", scope: !100, file: !1, line: 83, type: !32)
!100 = distinct !DILexicalBlock(scope: !9, file: !1, line: 81, column: 14)
!101 = !DILocation(line: 83, column: 16, scope: !100)
!102 = !DILocation(line: 83, column: 52, scope: !100)
!103 = !DILocation(line: 83, column: 57, scope: !100)
!104 = !DILocation(line: 83, column: 39, scope: !100)
!105 = !DILocation(line: 83, column: 37, scope: !100)
!106 = !DILocation(line: 83, column: 33, scope: !100)
!107 = !DILocation(line: 84, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 84, column: 13)
!109 = !DILocation(line: 84, column: 30, scope: !108)
!110 = !DILocation(line: 84, column: 28, scope: !108)
!111 = !DILocation(line: 84, column: 13, scope: !100)
!112 = !DILocation(line: 84, column: 36, scope: !108)
!113 = !DILocation(line: 85, column: 17, scope: !100)
!114 = !DILocation(line: 85, column: 14, scope: !100)
!115 = !DILocation(line: 86, column: 9, scope: !100)
!116 = !DILocation(line: 86, column: 14, scope: !100)
!117 = !DILocation(line: 86, column: 21, scope: !100)
!118 = distinct !{!118, !98, !119}
!119 = !DILocation(line: 87, column: 5, scope: !9)
!120 = !DILocation(line: 88, column: 20, scope: !9)
!121 = !DILocation(line: 88, column: 5, scope: !9)
!122 = !DILocation(line: 88, column: 10, scope: !9)
!123 = !DILocation(line: 88, column: 18, scope: !9)
!124 = !DILocalVariable(name: "mdays", scope: !9, file: !1, line: 93, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 384, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 12)
!128 = !DILocation(line: 93, column: 9, scope: !9)
!129 = !DILocation(line: 94, column: 30, scope: !9)
!130 = !DILocation(line: 94, column: 35, scope: !9)
!131 = !DILocation(line: 94, column: 17, scope: !9)
!132 = !DILocation(line: 94, column: 5, scope: !9)
!133 = !DILocation(line: 94, column: 14, scope: !9)
!134 = !DILocation(line: 96, column: 5, scope: !9)
!135 = !DILocation(line: 96, column: 10, scope: !9)
!136 = !DILocation(line: 96, column: 17, scope: !9)
!137 = !DILocation(line: 97, column: 5, scope: !9)
!138 = !DILocation(line: 97, column: 11, scope: !9)
!139 = !DILocation(line: 97, column: 25, scope: !9)
!140 = !DILocation(line: 97, column: 30, scope: !9)
!141 = !DILocation(line: 97, column: 19, scope: !9)
!142 = !DILocation(line: 97, column: 16, scope: !9)
!143 = !DILocation(line: 98, column: 23, scope: !144)
!144 = distinct !DILexicalBlock(scope: !9, file: !1, line: 97, column: 39)
!145 = !DILocation(line: 98, column: 28, scope: !144)
!146 = !DILocation(line: 98, column: 17, scope: !144)
!147 = !DILocation(line: 98, column: 14, scope: !144)
!148 = !DILocation(line: 99, column: 9, scope: !144)
!149 = !DILocation(line: 99, column: 14, scope: !144)
!150 = !DILocation(line: 99, column: 20, scope: !144)
!151 = distinct !{!151, !137, !152, !153}
!152 = !DILocation(line: 100, column: 5, scope: !9)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 102, column: 20, scope: !9)
!155 = !DILocation(line: 102, column: 24, scope: !9)
!156 = !DILocation(line: 102, column: 5, scope: !9)
!157 = !DILocation(line: 102, column: 10, scope: !9)
!158 = !DILocation(line: 102, column: 18, scope: !9)
!159 = !DILocation(line: 103, column: 5, scope: !9)
!160 = !DILocation(line: 103, column: 10, scope: !9)
!161 = !DILocation(line: 103, column: 18, scope: !9)
!162 = !DILocation(line: 104, column: 1, scope: !9)
!163 = distinct !DISubprogram(name: "is_leap_year", scope: !1, file: !1, line: 52, type: !164, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DISubroutineType(types: !165)
!165 = !{!17, !32}
!166 = !DILocalVariable(name: "year", arg: 1, scope: !163, file: !1, line: 52, type: !32)
!167 = !DILocation(line: 52, column: 32, scope: !163)
!168 = !DILocation(line: 53, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !1, line: 53, column: 9)
!170 = !DILocation(line: 53, column: 14, scope: !169)
!171 = !DILocation(line: 53, column: 9, scope: !163)
!172 = !DILocation(line: 53, column: 19, scope: !169)
!173 = !DILocation(line: 54, column: 14, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !1, line: 54, column: 14)
!175 = !DILocation(line: 54, column: 19, scope: !174)
!176 = !DILocation(line: 54, column: 14, scope: !169)
!177 = !DILocation(line: 54, column: 26, scope: !174)
!178 = !DILocation(line: 55, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 55, column: 14)
!180 = !DILocation(line: 55, column: 19, scope: !179)
!181 = !DILocation(line: 55, column: 14, scope: !174)
!182 = !DILocation(line: 55, column: 26, scope: !179)
!183 = !DILocation(line: 56, column: 10, scope: !179)
!184 = !DILocation(line: 57, column: 1, scope: !163)
