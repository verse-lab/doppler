; ModuleID = 'geohash.c'
source_filename = "geohash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GeoHashRange = type { double, double }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@interleave64.B = internal constant [5 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895], align 16, !dbg !0
@interleave64.S = internal constant [5 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16], align 16, !dbg !19
@deinterleave64.B = internal constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16, !dbg !25
@deinterleave64.S = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16], align 16, !dbg !34

; Function Attrs: noinline nounwind uwtable
define dso_local void @geohashGetCoordRange(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range) #0 !dbg !44 {
entry:
  %long_range.addr = alloca %struct.GeoHashRange*, align 8
  %lat_range.addr = alloca %struct.GeoHashRange*, align 8
  store %struct.GeoHashRange* %long_range, %struct.GeoHashRange** %long_range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange** %long_range.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store %struct.GeoHashRange* %lat_range, %struct.GeoHashRange** %lat_range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange** %lat_range.addr, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !59
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %0, i32 0, i32 1, !dbg !60
  store double 1.800000e+02, double* %max, align 8, !dbg !61
  %1 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !62
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %1, i32 0, i32 0, !dbg !63
  store double -1.800000e+02, double* %min, align 8, !dbg !64
  %2 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !65
  %max1 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %2, i32 0, i32 1, !dbg !66
  store double 0x40554345B1A57F00, double* %max1, align 8, !dbg !67
  %3 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !68
  %min2 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %3, i32 0, i32 0, !dbg !69
  store double 0xC0554345B1A57F00, double* %min2, align 8, !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashEncode(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range, double %longitude, double %latitude, i8 zeroext %step, %struct.GeoHashBits* %hash) #0 !dbg !72 {
entry:
  %retval = alloca i32, align 4
  %long_range.addr = alloca %struct.GeoHashRange*, align 8
  %lat_range.addr = alloca %struct.GeoHashRange*, align 8
  %longitude.addr = alloca double, align 8
  %latitude.addr = alloca double, align 8
  %step.addr = alloca i8, align 1
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  %lat_offset = alloca double, align 8
  %long_offset = alloca double, align 8
  store %struct.GeoHashRange* %long_range, %struct.GeoHashRange** %long_range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange** %long_range.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store %struct.GeoHashRange* %lat_range, %struct.GeoHashRange** %lat_range.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange** %lat_range.addr, metadata !89, metadata !DIExpression()), !dbg !90
  store double %longitude, double* %longitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %longitude.addr, metadata !91, metadata !DIExpression()), !dbg !92
  store double %latitude, double* %latitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %latitude.addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i8 %step, i8* %step.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %step.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !99
  %cmp = icmp eq %struct.GeoHashBits* %0, null, !dbg !101
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !102

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* %step.addr, align 1, !dbg !103
  %conv = zext i8 %1 to i32, !dbg !103
  %cmp1 = icmp sgt i32 %conv, 32, !dbg !104
  br i1 %cmp1, label %if.then, label %lor.lhs.false3, !dbg !105

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load i8, i8* %step.addr, align 1, !dbg !106
  %conv4 = zext i8 %2 to i32, !dbg !106
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !107
  br i1 %cmp5, label %if.then, label %lor.lhs.false7, !dbg !108

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %3 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !109
  %cmp8 = icmp eq %struct.GeoHashRange* %3, null, !dbg !109
  br i1 %cmp8, label %if.then, label %lor.lhs.false10, !dbg !109

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %4 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !109
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %4, i32 0, i32 1, !dbg !109
  %5 = load double, double* %max, align 8, !dbg !109
  %tobool = fcmp une double %5, 0.000000e+00, !dbg !109
  br i1 %tobool, label %lor.lhs.false12, label %land.lhs.true, !dbg !109

land.lhs.true:                                    ; preds = %lor.lhs.false10
  %6 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !109
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i32 0, i32 0, !dbg !109
  %7 = load double, double* %min, align 8, !dbg !109
  %tobool11 = fcmp une double %7, 0.000000e+00, !dbg !109
  br i1 %tobool11, label %lor.lhs.false12, label %if.then, !dbg !110

lor.lhs.false12:                                  ; preds = %land.lhs.true, %lor.lhs.false10
  %8 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !111
  %cmp13 = icmp eq %struct.GeoHashRange* %8, null, !dbg !111
  br i1 %cmp13, label %if.then, label %lor.lhs.false15, !dbg !111

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %9 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !111
  %max16 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %9, i32 0, i32 1, !dbg !111
  %10 = load double, double* %max16, align 8, !dbg !111
  %tobool17 = fcmp une double %10, 0.000000e+00, !dbg !111
  br i1 %tobool17, label %if.end, label %land.lhs.true18, !dbg !111

land.lhs.true18:                                  ; preds = %lor.lhs.false15
  %11 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !111
  %min19 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %11, i32 0, i32 0, !dbg !111
  %12 = load double, double* %min19, align 8, !dbg !111
  %tobool20 = fcmp une double %12, 0.000000e+00, !dbg !111
  br i1 %tobool20, label %if.end, label %if.then, !dbg !112

if.then:                                          ; preds = %land.lhs.true18, %lor.lhs.false12, %land.lhs.true, %lor.lhs.false7, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !113
  br label %return, !dbg !113

if.end:                                           ; preds = %land.lhs.true18, %lor.lhs.false15
  %13 = load double, double* %longitude.addr, align 8, !dbg !114
  %cmp21 = fcmp ogt double %13, 1.800000e+02, !dbg !116
  br i1 %cmp21, label %if.then32, label %lor.lhs.false23, !dbg !117

lor.lhs.false23:                                  ; preds = %if.end
  %14 = load double, double* %longitude.addr, align 8, !dbg !118
  %cmp24 = fcmp olt double %14, -1.800000e+02, !dbg !119
  br i1 %cmp24, label %if.then32, label %lor.lhs.false26, !dbg !120

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %15 = load double, double* %latitude.addr, align 8, !dbg !121
  %cmp27 = fcmp ogt double %15, 0x40554345B1A57F00, !dbg !122
  br i1 %cmp27, label %if.then32, label %lor.lhs.false29, !dbg !123

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %16 = load double, double* %latitude.addr, align 8, !dbg !124
  %cmp30 = fcmp olt double %16, 0xC0554345B1A57F00, !dbg !125
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !126

if.then32:                                        ; preds = %lor.lhs.false29, %lor.lhs.false26, %lor.lhs.false23, %if.end
  store i32 0, i32* %retval, align 4, !dbg !127
  br label %return, !dbg !127

if.end33:                                         ; preds = %lor.lhs.false29
  %17 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !128
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %17, i32 0, i32 0, !dbg !129
  store i64 0, i64* %bits, align 8, !dbg !130
  %18 = load i8, i8* %step.addr, align 1, !dbg !131
  %19 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !132
  %step34 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %19, i32 0, i32 1, !dbg !133
  store i8 %18, i8* %step34, align 8, !dbg !134
  %20 = load double, double* %latitude.addr, align 8, !dbg !135
  %21 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !137
  %min35 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %21, i32 0, i32 0, !dbg !138
  %22 = load double, double* %min35, align 8, !dbg !138
  %cmp36 = fcmp olt double %20, %22, !dbg !139
  br i1 %cmp36, label %if.then50, label %lor.lhs.false38, !dbg !140

lor.lhs.false38:                                  ; preds = %if.end33
  %23 = load double, double* %latitude.addr, align 8, !dbg !141
  %24 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !142
  %max39 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %24, i32 0, i32 1, !dbg !143
  %25 = load double, double* %max39, align 8, !dbg !143
  %cmp40 = fcmp ogt double %23, %25, !dbg !144
  br i1 %cmp40, label %if.then50, label %lor.lhs.false42, !dbg !145

lor.lhs.false42:                                  ; preds = %lor.lhs.false38
  %26 = load double, double* %longitude.addr, align 8, !dbg !146
  %27 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !147
  %min43 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %27, i32 0, i32 0, !dbg !148
  %28 = load double, double* %min43, align 8, !dbg !148
  %cmp44 = fcmp olt double %26, %28, !dbg !149
  br i1 %cmp44, label %if.then50, label %lor.lhs.false46, !dbg !150

lor.lhs.false46:                                  ; preds = %lor.lhs.false42
  %29 = load double, double* %longitude.addr, align 8, !dbg !151
  %30 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !152
  %max47 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %30, i32 0, i32 1, !dbg !153
  %31 = load double, double* %max47, align 8, !dbg !153
  %cmp48 = fcmp ogt double %29, %31, !dbg !154
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !155

if.then50:                                        ; preds = %lor.lhs.false46, %lor.lhs.false42, %lor.lhs.false38, %if.end33
  store i32 0, i32* %retval, align 4, !dbg !156
  br label %return, !dbg !156

if.end51:                                         ; preds = %lor.lhs.false46
  call void @llvm.dbg.declare(metadata double* %lat_offset, metadata !158, metadata !DIExpression()), !dbg !159
  %32 = load double, double* %latitude.addr, align 8, !dbg !160
  %33 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !161
  %min52 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %33, i32 0, i32 0, !dbg !162
  %34 = load double, double* %min52, align 8, !dbg !162
  %sub = fsub double %32, %34, !dbg !163
  %35 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !164
  %max53 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %35, i32 0, i32 1, !dbg !165
  %36 = load double, double* %max53, align 8, !dbg !165
  %37 = load %struct.GeoHashRange*, %struct.GeoHashRange** %lat_range.addr, align 8, !dbg !166
  %min54 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %37, i32 0, i32 0, !dbg !167
  %38 = load double, double* %min54, align 8, !dbg !167
  %sub55 = fsub double %36, %38, !dbg !168
  %div = fdiv double %sub, %sub55, !dbg !169
  store double %div, double* %lat_offset, align 8, !dbg !159
  call void @llvm.dbg.declare(metadata double* %long_offset, metadata !170, metadata !DIExpression()), !dbg !171
  %39 = load double, double* %longitude.addr, align 8, !dbg !172
  %40 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !173
  %min56 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %40, i32 0, i32 0, !dbg !174
  %41 = load double, double* %min56, align 8, !dbg !174
  %sub57 = fsub double %39, %41, !dbg !175
  %42 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !176
  %max58 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %42, i32 0, i32 1, !dbg !177
  %43 = load double, double* %max58, align 8, !dbg !177
  %44 = load %struct.GeoHashRange*, %struct.GeoHashRange** %long_range.addr, align 8, !dbg !178
  %min59 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %44, i32 0, i32 0, !dbg !179
  %45 = load double, double* %min59, align 8, !dbg !179
  %sub60 = fsub double %43, %45, !dbg !180
  %div61 = fdiv double %sub57, %sub60, !dbg !181
  store double %div61, double* %long_offset, align 8, !dbg !171
  %46 = load i8, i8* %step.addr, align 1, !dbg !182
  %conv62 = zext i8 %46 to i32, !dbg !182
  %sh_prom = zext i32 %conv62 to i64, !dbg !183
  %shl = shl i64 1, %sh_prom, !dbg !183
  %conv63 = uitofp i64 %shl to double, !dbg !184
  %47 = load double, double* %lat_offset, align 8, !dbg !185
  %mul = fmul double %47, %conv63, !dbg !185
  store double %mul, double* %lat_offset, align 8, !dbg !185
  %48 = load i8, i8* %step.addr, align 1, !dbg !186
  %conv64 = zext i8 %48 to i32, !dbg !186
  %sh_prom65 = zext i32 %conv64 to i64, !dbg !187
  %shl66 = shl i64 1, %sh_prom65, !dbg !187
  %conv67 = uitofp i64 %shl66 to double, !dbg !188
  %49 = load double, double* %long_offset, align 8, !dbg !189
  %mul68 = fmul double %49, %conv67, !dbg !189
  store double %mul68, double* %long_offset, align 8, !dbg !189
  %50 = load double, double* %lat_offset, align 8, !dbg !190
  %conv69 = fptoui double %50 to i32, !dbg !190
  %51 = load double, double* %long_offset, align 8, !dbg !191
  %conv70 = fptoui double %51 to i32, !dbg !191
  %call = call i64 @interleave64(i32 %conv69, i32 %conv70), !dbg !192
  %52 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !193
  %bits71 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %52, i32 0, i32 0, !dbg !194
  store i64 %call, i64* %bits71, align 8, !dbg !195
  store i32 1, i32* %retval, align 4, !dbg !196
  br label %return, !dbg !196

return:                                           ; preds = %if.end51, %if.then50, %if.then32, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !197
  ret i32 %53, !dbg !197
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @interleave64(i32 %xlo, i32 %ylo) #0 !dbg !2 {
entry:
  %xlo.addr = alloca i32, align 4
  %ylo.addr = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i32 %xlo, i32* %xlo.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xlo.addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %ylo, i32* %ylo.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ylo.addr, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i64* %x, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load i32, i32* %xlo.addr, align 4, !dbg !204
  %conv = zext i32 %0 to i64, !dbg !204
  store i64 %conv, i64* %x, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i64* %y, metadata !205, metadata !DIExpression()), !dbg !206
  %1 = load i32, i32* %ylo.addr, align 4, !dbg !207
  %conv1 = zext i32 %1 to i64, !dbg !207
  store i64 %conv1, i64* %y, align 8, !dbg !206
  %2 = load i64, i64* %x, align 8, !dbg !208
  %3 = load i64, i64* %x, align 8, !dbg !209
  %4 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 4), align 16, !dbg !210
  %sh_prom = zext i32 %4 to i64, !dbg !211
  %shl = shl i64 %3, %sh_prom, !dbg !211
  %or = or i64 %2, %shl, !dbg !212
  %5 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 4), align 16, !dbg !213
  %and = and i64 %or, %5, !dbg !214
  store i64 %and, i64* %x, align 8, !dbg !215
  %6 = load i64, i64* %y, align 8, !dbg !216
  %7 = load i64, i64* %y, align 8, !dbg !217
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 4), align 16, !dbg !218
  %sh_prom2 = zext i32 %8 to i64, !dbg !219
  %shl3 = shl i64 %7, %sh_prom2, !dbg !219
  %or4 = or i64 %6, %shl3, !dbg !220
  %9 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 4), align 16, !dbg !221
  %and5 = and i64 %or4, %9, !dbg !222
  store i64 %and5, i64* %y, align 8, !dbg !223
  %10 = load i64, i64* %x, align 8, !dbg !224
  %11 = load i64, i64* %x, align 8, !dbg !225
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 3), align 4, !dbg !226
  %sh_prom6 = zext i32 %12 to i64, !dbg !227
  %shl7 = shl i64 %11, %sh_prom6, !dbg !227
  %or8 = or i64 %10, %shl7, !dbg !228
  %13 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 3), align 8, !dbg !229
  %and9 = and i64 %or8, %13, !dbg !230
  store i64 %and9, i64* %x, align 8, !dbg !231
  %14 = load i64, i64* %y, align 8, !dbg !232
  %15 = load i64, i64* %y, align 8, !dbg !233
  %16 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 3), align 4, !dbg !234
  %sh_prom10 = zext i32 %16 to i64, !dbg !235
  %shl11 = shl i64 %15, %sh_prom10, !dbg !235
  %or12 = or i64 %14, %shl11, !dbg !236
  %17 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 3), align 8, !dbg !237
  %and13 = and i64 %or12, %17, !dbg !238
  store i64 %and13, i64* %y, align 8, !dbg !239
  %18 = load i64, i64* %x, align 8, !dbg !240
  %19 = load i64, i64* %x, align 8, !dbg !241
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 2), align 8, !dbg !242
  %sh_prom14 = zext i32 %20 to i64, !dbg !243
  %shl15 = shl i64 %19, %sh_prom14, !dbg !243
  %or16 = or i64 %18, %shl15, !dbg !244
  %21 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 2), align 16, !dbg !245
  %and17 = and i64 %or16, %21, !dbg !246
  store i64 %and17, i64* %x, align 8, !dbg !247
  %22 = load i64, i64* %y, align 8, !dbg !248
  %23 = load i64, i64* %y, align 8, !dbg !249
  %24 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 2), align 8, !dbg !250
  %sh_prom18 = zext i32 %24 to i64, !dbg !251
  %shl19 = shl i64 %23, %sh_prom18, !dbg !251
  %or20 = or i64 %22, %shl19, !dbg !252
  %25 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 2), align 16, !dbg !253
  %and21 = and i64 %or20, %25, !dbg !254
  store i64 %and21, i64* %y, align 8, !dbg !255
  %26 = load i64, i64* %x, align 8, !dbg !256
  %27 = load i64, i64* %x, align 8, !dbg !257
  %28 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 1), align 4, !dbg !258
  %sh_prom22 = zext i32 %28 to i64, !dbg !259
  %shl23 = shl i64 %27, %sh_prom22, !dbg !259
  %or24 = or i64 %26, %shl23, !dbg !260
  %29 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 1), align 8, !dbg !261
  %and25 = and i64 %or24, %29, !dbg !262
  store i64 %and25, i64* %x, align 8, !dbg !263
  %30 = load i64, i64* %y, align 8, !dbg !264
  %31 = load i64, i64* %y, align 8, !dbg !265
  %32 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 1), align 4, !dbg !266
  %sh_prom26 = zext i32 %32 to i64, !dbg !267
  %shl27 = shl i64 %31, %sh_prom26, !dbg !267
  %or28 = or i64 %30, %shl27, !dbg !268
  %33 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 1), align 8, !dbg !269
  %and29 = and i64 %or28, %33, !dbg !270
  store i64 %and29, i64* %y, align 8, !dbg !271
  %34 = load i64, i64* %x, align 8, !dbg !272
  %35 = load i64, i64* %x, align 8, !dbg !273
  %36 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 0), align 16, !dbg !274
  %sh_prom30 = zext i32 %36 to i64, !dbg !275
  %shl31 = shl i64 %35, %sh_prom30, !dbg !275
  %or32 = or i64 %34, %shl31, !dbg !276
  %37 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 0), align 16, !dbg !277
  %and33 = and i64 %or32, %37, !dbg !278
  store i64 %and33, i64* %x, align 8, !dbg !279
  %38 = load i64, i64* %y, align 8, !dbg !280
  %39 = load i64, i64* %y, align 8, !dbg !281
  %40 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @interleave64.S, i64 0, i64 0), align 16, !dbg !282
  %sh_prom34 = zext i32 %40 to i64, !dbg !283
  %shl35 = shl i64 %39, %sh_prom34, !dbg !283
  %or36 = or i64 %38, %shl35, !dbg !284
  %41 = load i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @interleave64.B, i64 0, i64 0), align 16, !dbg !285
  %and37 = and i64 %or36, %41, !dbg !286
  store i64 %and37, i64* %y, align 8, !dbg !287
  %42 = load i64, i64* %x, align 8, !dbg !288
  %43 = load i64, i64* %y, align 8, !dbg !289
  %shl38 = shl i64 %43, 1, !dbg !290
  %or39 = or i64 %42, %shl38, !dbg !291
  ret i64 %or39, !dbg !292
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashEncodeType(double %longitude, double %latitude, i8 zeroext %step, %struct.GeoHashBits* %hash) #0 !dbg !293 {
entry:
  %longitude.addr = alloca double, align 8
  %latitude.addr = alloca double, align 8
  %step.addr = alloca i8, align 1
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  %r = alloca [2 x %struct.GeoHashRange], align 16
  store double %longitude, double* %longitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %longitude.addr, metadata !296, metadata !DIExpression()), !dbg !297
  store double %latitude, double* %latitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %latitude.addr, metadata !298, metadata !DIExpression()), !dbg !299
  store i8 %step, i8* %step.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %step.addr, metadata !300, metadata !DIExpression()), !dbg !301
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata [2 x %struct.GeoHashRange]* %r, metadata !304, metadata !DIExpression()), !dbg !308
  %0 = bitcast [2 x %struct.GeoHashRange]* %r to i8*, !dbg !308
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false), !dbg !308
  %arrayidx = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !309
  %arrayidx1 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !310
  call void @geohashGetCoordRange(%struct.GeoHashRange* %arrayidx, %struct.GeoHashRange* %arrayidx1), !dbg !311
  %arrayidx2 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !312
  %arrayidx3 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !313
  %1 = load double, double* %longitude.addr, align 8, !dbg !314
  %2 = load double, double* %latitude.addr, align 8, !dbg !315
  %3 = load i8, i8* %step.addr, align 1, !dbg !316
  %4 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !317
  %call = call i32 @geohashEncode(%struct.GeoHashRange* %arrayidx2, %struct.GeoHashRange* %arrayidx3, double %1, double %2, i8 zeroext %3, %struct.GeoHashBits* %4), !dbg !318
  ret i32 %call, !dbg !319
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashEncodeWGS84(double %longitude, double %latitude, i8 zeroext %step, %struct.GeoHashBits* %hash) #0 !dbg !320 {
entry:
  %longitude.addr = alloca double, align 8
  %latitude.addr = alloca double, align 8
  %step.addr = alloca i8, align 1
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  store double %longitude, double* %longitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %longitude.addr, metadata !321, metadata !DIExpression()), !dbg !322
  store double %latitude, double* %latitude.addr, align 8
  call void @llvm.dbg.declare(metadata double* %latitude.addr, metadata !323, metadata !DIExpression()), !dbg !324
  store i8 %step, i8* %step.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %step.addr, metadata !325, metadata !DIExpression()), !dbg !326
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = load double, double* %longitude.addr, align 8, !dbg !329
  %1 = load double, double* %latitude.addr, align 8, !dbg !330
  %2 = load i8, i8* %step.addr, align 1, !dbg !331
  %3 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !332
  %call = call i32 @geohashEncodeType(double %0, double %1, i8 zeroext %2, %struct.GeoHashBits* %3), !dbg !333
  ret i32 %call, !dbg !334
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecode(double %long_range.coerce0, double %long_range.coerce1, double %lat_range.coerce0, double %lat_range.coerce1, i64 %hash.coerce0, i8 %hash.coerce1, %struct.GeoHashArea* %area) #0 !dbg !335 {
entry:
  %retval = alloca i32, align 4
  %long_range = alloca %struct.GeoHashRange, align 8
  %lat_range = alloca %struct.GeoHashRange, align 8
  %hash = alloca %struct.GeoHashBits, align 8
  %area.addr = alloca %struct.GeoHashArea*, align 8
  %step13 = alloca i8, align 1
  %hash_sep = alloca i64, align 8
  %lat_scale = alloca double, align 8
  %long_scale = alloca double, align 8
  %ilato = alloca i32, align 4
  %ilono = alloca i32, align 4
  %0 = bitcast %struct.GeoHashRange* %long_range to { double, double }*
  %1 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 0
  store double %long_range.coerce0, double* %1, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %0, i32 0, i32 1
  store double %long_range.coerce1, double* %2, align 8
  %3 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*
  %4 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  store double %lat_range.coerce0, double* %4, align 8
  %5 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %lat_range.coerce1, double* %5, align 8
  %6 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 0
  store i64 %hash.coerce0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %6, i32 0, i32 1
  store i8 %hash.coerce1, i8* %8, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %long_range, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %lat_range, metadata !348, metadata !DIExpression()), !dbg !349
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !350, metadata !DIExpression()), !dbg !351
  store %struct.GeoHashArea* %area, %struct.GeoHashArea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea** %area.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !354
  %9 = load i64, i64* %bits, align 8, !dbg !354
  %tobool = icmp ne i64 %9, 0, !dbg !354
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !354

land.lhs.true:                                    ; preds = %entry
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 1, !dbg !354
  %10 = load i8, i8* %step, align 8, !dbg !354
  %tobool1 = icmp ne i8 %10, 0, !dbg !354
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !356

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %11 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !357
  %cmp = icmp eq %struct.GeoHashArea* null, %11, !dbg !358
  br i1 %cmp, label %if.then, label %lor.lhs.false2, !dbg !359

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 1, !dbg !360
  %12 = load double, double* %max, align 8, !dbg !360
  %tobool3 = fcmp une double %12, 0.000000e+00, !dbg !360
  br i1 %tobool3, label %lor.lhs.false6, label %land.lhs.true4, !dbg !360

land.lhs.true4:                                   ; preds = %lor.lhs.false2
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 0, !dbg !360
  %13 = load double, double* %min, align 8, !dbg !360
  %tobool5 = fcmp une double %13, 0.000000e+00, !dbg !360
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !361

lor.lhs.false6:                                   ; preds = %land.lhs.true4, %lor.lhs.false2
  %max7 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 1, !dbg !362
  %14 = load double, double* %max7, align 8, !dbg !362
  %tobool8 = fcmp une double %14, 0.000000e+00, !dbg !362
  br i1 %tobool8, label %if.end, label %land.lhs.true9, !dbg !362

land.lhs.true9:                                   ; preds = %lor.lhs.false6
  %min10 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 0, !dbg !362
  %15 = load double, double* %min10, align 8, !dbg !362
  %tobool11 = fcmp une double %15, 0.000000e+00, !dbg !362
  br i1 %tobool11, label %if.end, label %if.then, !dbg !363

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true4, %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !364
  br label %return, !dbg !364

if.end:                                           ; preds = %land.lhs.true9, %lor.lhs.false6
  %16 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !366
  %hash12 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %16, i32 0, i32 0, !dbg !367
  %17 = bitcast %struct.GeoHashBits* %hash12 to i8*, !dbg !368
  %18 = bitcast %struct.GeoHashBits* %hash to i8*, !dbg !368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false), !dbg !368
  call void @llvm.dbg.declare(metadata i8* %step13, metadata !369, metadata !DIExpression()), !dbg !370
  %step14 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 1, !dbg !371
  %19 = load i8, i8* %step14, align 8, !dbg !371
  store i8 %19, i8* %step13, align 1, !dbg !370
  call void @llvm.dbg.declare(metadata i64* %hash_sep, metadata !372, metadata !DIExpression()), !dbg !373
  %bits15 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !374
  %20 = load i64, i64* %bits15, align 8, !dbg !374
  %call = call i64 @deinterleave64(i64 %20), !dbg !375
  store i64 %call, i64* %hash_sep, align 8, !dbg !373
  call void @llvm.dbg.declare(metadata double* %lat_scale, metadata !376, metadata !DIExpression()), !dbg !377
  %max16 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 1, !dbg !378
  %21 = load double, double* %max16, align 8, !dbg !378
  %min17 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 0, !dbg !379
  %22 = load double, double* %min17, align 8, !dbg !379
  %sub = fsub double %21, %22, !dbg !380
  store double %sub, double* %lat_scale, align 8, !dbg !377
  call void @llvm.dbg.declare(metadata double* %long_scale, metadata !381, metadata !DIExpression()), !dbg !382
  %max18 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 1, !dbg !383
  %23 = load double, double* %max18, align 8, !dbg !383
  %min19 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 0, !dbg !384
  %24 = load double, double* %min19, align 8, !dbg !384
  %sub20 = fsub double %23, %24, !dbg !385
  store double %sub20, double* %long_scale, align 8, !dbg !382
  call void @llvm.dbg.declare(metadata i32* %ilato, metadata !386, metadata !DIExpression()), !dbg !387
  %25 = load i64, i64* %hash_sep, align 8, !dbg !388
  %conv = trunc i64 %25 to i32, !dbg !388
  store i32 %conv, i32* %ilato, align 4, !dbg !387
  call void @llvm.dbg.declare(metadata i32* %ilono, metadata !389, metadata !DIExpression()), !dbg !390
  %26 = load i64, i64* %hash_sep, align 8, !dbg !391
  %shr = lshr i64 %26, 32, !dbg !392
  %conv21 = trunc i64 %shr to i32, !dbg !391
  store i32 %conv21, i32* %ilono, align 4, !dbg !390
  %min22 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 0, !dbg !393
  %27 = load double, double* %min22, align 8, !dbg !393
  %28 = load i32, i32* %ilato, align 4, !dbg !394
  %conv23 = uitofp i32 %28 to double, !dbg !394
  %mul = fmul double %conv23, 1.000000e+00, !dbg !395
  %29 = load i8, i8* %step13, align 1, !dbg !396
  %conv24 = zext i8 %29 to i32, !dbg !396
  %sh_prom = zext i32 %conv24 to i64, !dbg !397
  %shl = shl i64 1, %sh_prom, !dbg !397
  %conv25 = uitofp i64 %shl to double, !dbg !398
  %div = fdiv double %mul, %conv25, !dbg !399
  %30 = load double, double* %lat_scale, align 8, !dbg !400
  %mul26 = fmul double %div, %30, !dbg !401
  %add = fadd double %27, %mul26, !dbg !402
  %31 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !403
  %latitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %31, i32 0, i32 2, !dbg !404
  %min27 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude, i32 0, i32 0, !dbg !405
  store double %add, double* %min27, align 8, !dbg !406
  %min28 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %lat_range, i32 0, i32 0, !dbg !407
  %32 = load double, double* %min28, align 8, !dbg !407
  %33 = load i32, i32* %ilato, align 4, !dbg !408
  %add29 = add i32 %33, 1, !dbg !409
  %conv30 = uitofp i32 %add29 to double, !dbg !410
  %mul31 = fmul double %conv30, 1.000000e+00, !dbg !411
  %34 = load i8, i8* %step13, align 1, !dbg !412
  %conv32 = zext i8 %34 to i32, !dbg !412
  %sh_prom33 = zext i32 %conv32 to i64, !dbg !413
  %shl34 = shl i64 1, %sh_prom33, !dbg !413
  %conv35 = uitofp i64 %shl34 to double, !dbg !414
  %div36 = fdiv double %mul31, %conv35, !dbg !415
  %35 = load double, double* %lat_scale, align 8, !dbg !416
  %mul37 = fmul double %div36, %35, !dbg !417
  %add38 = fadd double %32, %mul37, !dbg !418
  %36 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !419
  %latitude39 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %36, i32 0, i32 2, !dbg !420
  %max40 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude39, i32 0, i32 1, !dbg !421
  store double %add38, double* %max40, align 8, !dbg !422
  %min41 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 0, !dbg !423
  %37 = load double, double* %min41, align 8, !dbg !423
  %38 = load i32, i32* %ilono, align 4, !dbg !424
  %conv42 = uitofp i32 %38 to double, !dbg !424
  %mul43 = fmul double %conv42, 1.000000e+00, !dbg !425
  %39 = load i8, i8* %step13, align 1, !dbg !426
  %conv44 = zext i8 %39 to i32, !dbg !426
  %sh_prom45 = zext i32 %conv44 to i64, !dbg !427
  %shl46 = shl i64 1, %sh_prom45, !dbg !427
  %conv47 = uitofp i64 %shl46 to double, !dbg !428
  %div48 = fdiv double %mul43, %conv47, !dbg !429
  %40 = load double, double* %long_scale, align 8, !dbg !430
  %mul49 = fmul double %div48, %40, !dbg !431
  %add50 = fadd double %37, %mul49, !dbg !432
  %41 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !433
  %longitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %41, i32 0, i32 1, !dbg !434
  %min51 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude, i32 0, i32 0, !dbg !435
  store double %add50, double* %min51, align 8, !dbg !436
  %min52 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %long_range, i32 0, i32 0, !dbg !437
  %42 = load double, double* %min52, align 8, !dbg !437
  %43 = load i32, i32* %ilono, align 4, !dbg !438
  %add53 = add i32 %43, 1, !dbg !439
  %conv54 = uitofp i32 %add53 to double, !dbg !440
  %mul55 = fmul double %conv54, 1.000000e+00, !dbg !441
  %44 = load i8, i8* %step13, align 1, !dbg !442
  %conv56 = zext i8 %44 to i32, !dbg !442
  %sh_prom57 = zext i32 %conv56 to i64, !dbg !443
  %shl58 = shl i64 1, %sh_prom57, !dbg !443
  %conv59 = uitofp i64 %shl58 to double, !dbg !444
  %div60 = fdiv double %mul55, %conv59, !dbg !445
  %45 = load double, double* %long_scale, align 8, !dbg !446
  %mul61 = fmul double %div60, %45, !dbg !447
  %add62 = fadd double %42, %mul61, !dbg !448
  %46 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !449
  %longitude63 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %46, i32 0, i32 1, !dbg !450
  %max64 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude63, i32 0, i32 1, !dbg !451
  store double %add62, double* %max64, align 8, !dbg !452
  store i32 1, i32* %retval, align 4, !dbg !453
  br label %return, !dbg !453

return:                                           ; preds = %if.end, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !454
  ret i32 %47, !dbg !454
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @deinterleave64(i64 %interleaved) #0 !dbg !27 {
entry:
  %interleaved.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %interleaved, i64* %interleaved.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %interleaved.addr, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i64* %x, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i64, i64* %interleaved.addr, align 8, !dbg !459
  store i64 %0, i64* %x, align 8, !dbg !458
  call void @llvm.dbg.declare(metadata i64* %y, metadata !460, metadata !DIExpression()), !dbg !461
  %1 = load i64, i64* %interleaved.addr, align 8, !dbg !462
  %shr = lshr i64 %1, 1, !dbg !463
  store i64 %shr, i64* %y, align 8, !dbg !461
  %2 = load i64, i64* %x, align 8, !dbg !464
  %3 = load i64, i64* %x, align 8, !dbg !465
  %4 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 0), align 16, !dbg !466
  %sh_prom = zext i32 %4 to i64, !dbg !467
  %shr1 = lshr i64 %3, %sh_prom, !dbg !467
  %or = or i64 %2, %shr1, !dbg !468
  %5 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 0), align 16, !dbg !469
  %and = and i64 %or, %5, !dbg !470
  store i64 %and, i64* %x, align 8, !dbg !471
  %6 = load i64, i64* %y, align 8, !dbg !472
  %7 = load i64, i64* %y, align 8, !dbg !473
  %8 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 0), align 16, !dbg !474
  %sh_prom2 = zext i32 %8 to i64, !dbg !475
  %shr3 = lshr i64 %7, %sh_prom2, !dbg !475
  %or4 = or i64 %6, %shr3, !dbg !476
  %9 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 0), align 16, !dbg !477
  %and5 = and i64 %or4, %9, !dbg !478
  store i64 %and5, i64* %y, align 8, !dbg !479
  %10 = load i64, i64* %x, align 8, !dbg !480
  %11 = load i64, i64* %x, align 8, !dbg !481
  %12 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 1), align 4, !dbg !482
  %sh_prom6 = zext i32 %12 to i64, !dbg !483
  %shr7 = lshr i64 %11, %sh_prom6, !dbg !483
  %or8 = or i64 %10, %shr7, !dbg !484
  %13 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 1), align 8, !dbg !485
  %and9 = and i64 %or8, %13, !dbg !486
  store i64 %and9, i64* %x, align 8, !dbg !487
  %14 = load i64, i64* %y, align 8, !dbg !488
  %15 = load i64, i64* %y, align 8, !dbg !489
  %16 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 1), align 4, !dbg !490
  %sh_prom10 = zext i32 %16 to i64, !dbg !491
  %shr11 = lshr i64 %15, %sh_prom10, !dbg !491
  %or12 = or i64 %14, %shr11, !dbg !492
  %17 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 1), align 8, !dbg !493
  %and13 = and i64 %or12, %17, !dbg !494
  store i64 %and13, i64* %y, align 8, !dbg !495
  %18 = load i64, i64* %x, align 8, !dbg !496
  %19 = load i64, i64* %x, align 8, !dbg !497
  %20 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 2), align 8, !dbg !498
  %sh_prom14 = zext i32 %20 to i64, !dbg !499
  %shr15 = lshr i64 %19, %sh_prom14, !dbg !499
  %or16 = or i64 %18, %shr15, !dbg !500
  %21 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 2), align 16, !dbg !501
  %and17 = and i64 %or16, %21, !dbg !502
  store i64 %and17, i64* %x, align 8, !dbg !503
  %22 = load i64, i64* %y, align 8, !dbg !504
  %23 = load i64, i64* %y, align 8, !dbg !505
  %24 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 2), align 8, !dbg !506
  %sh_prom18 = zext i32 %24 to i64, !dbg !507
  %shr19 = lshr i64 %23, %sh_prom18, !dbg !507
  %or20 = or i64 %22, %shr19, !dbg !508
  %25 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 2), align 16, !dbg !509
  %and21 = and i64 %or20, %25, !dbg !510
  store i64 %and21, i64* %y, align 8, !dbg !511
  %26 = load i64, i64* %x, align 8, !dbg !512
  %27 = load i64, i64* %x, align 8, !dbg !513
  %28 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 3), align 4, !dbg !514
  %sh_prom22 = zext i32 %28 to i64, !dbg !515
  %shr23 = lshr i64 %27, %sh_prom22, !dbg !515
  %or24 = or i64 %26, %shr23, !dbg !516
  %29 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 3), align 8, !dbg !517
  %and25 = and i64 %or24, %29, !dbg !518
  store i64 %and25, i64* %x, align 8, !dbg !519
  %30 = load i64, i64* %y, align 8, !dbg !520
  %31 = load i64, i64* %y, align 8, !dbg !521
  %32 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 3), align 4, !dbg !522
  %sh_prom26 = zext i32 %32 to i64, !dbg !523
  %shr27 = lshr i64 %31, %sh_prom26, !dbg !523
  %or28 = or i64 %30, %shr27, !dbg !524
  %33 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 3), align 8, !dbg !525
  %and29 = and i64 %or28, %33, !dbg !526
  store i64 %and29, i64* %y, align 8, !dbg !527
  %34 = load i64, i64* %x, align 8, !dbg !528
  %35 = load i64, i64* %x, align 8, !dbg !529
  %36 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 4), align 16, !dbg !530
  %sh_prom30 = zext i32 %36 to i64, !dbg !531
  %shr31 = lshr i64 %35, %sh_prom30, !dbg !531
  %or32 = or i64 %34, %shr31, !dbg !532
  %37 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 4), align 16, !dbg !533
  %and33 = and i64 %or32, %37, !dbg !534
  store i64 %and33, i64* %x, align 8, !dbg !535
  %38 = load i64, i64* %y, align 8, !dbg !536
  %39 = load i64, i64* %y, align 8, !dbg !537
  %40 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 4), align 16, !dbg !538
  %sh_prom34 = zext i32 %40 to i64, !dbg !539
  %shr35 = lshr i64 %39, %sh_prom34, !dbg !539
  %or36 = or i64 %38, %shr35, !dbg !540
  %41 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 4), align 16, !dbg !541
  %and37 = and i64 %or36, %41, !dbg !542
  store i64 %and37, i64* %y, align 8, !dbg !543
  %42 = load i64, i64* %x, align 8, !dbg !544
  %43 = load i64, i64* %x, align 8, !dbg !545
  %44 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 5), align 4, !dbg !546
  %sh_prom38 = zext i32 %44 to i64, !dbg !547
  %shr39 = lshr i64 %43, %sh_prom38, !dbg !547
  %or40 = or i64 %42, %shr39, !dbg !548
  %45 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 5), align 8, !dbg !549
  %and41 = and i64 %or40, %45, !dbg !550
  store i64 %and41, i64* %x, align 8, !dbg !551
  %46 = load i64, i64* %y, align 8, !dbg !552
  %47 = load i64, i64* %y, align 8, !dbg !553
  %48 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @deinterleave64.S, i64 0, i64 5), align 4, !dbg !554
  %sh_prom42 = zext i32 %48 to i64, !dbg !555
  %shr43 = lshr i64 %47, %sh_prom42, !dbg !555
  %or44 = or i64 %46, %shr43, !dbg !556
  %49 = load i64, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @deinterleave64.B, i64 0, i64 5), align 8, !dbg !557
  %and45 = and i64 %or44, %49, !dbg !558
  store i64 %and45, i64* %y, align 8, !dbg !559
  %50 = load i64, i64* %x, align 8, !dbg !560
  %51 = load i64, i64* %y, align 8, !dbg !561
  %shl = shl i64 %51, 32, !dbg !562
  %or46 = or i64 %50, %shl, !dbg !563
  ret i64 %or46, !dbg !564
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecodeType(i64 %hash.coerce0, i8 %hash.coerce1, %struct.GeoHashArea* %area) #0 !dbg !565 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %area.addr = alloca %struct.GeoHashArea*, align 8
  %r = alloca [2 x %struct.GeoHashRange], align 16
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !568, metadata !DIExpression()), !dbg !569
  store %struct.GeoHashArea* %area, %struct.GeoHashArea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea** %area.addr, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata [2 x %struct.GeoHashRange]* %r, metadata !572, metadata !DIExpression()), !dbg !573
  %3 = bitcast [2 x %struct.GeoHashRange]* %r to i8*, !dbg !573
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 32, i1 false), !dbg !573
  %arrayidx = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !574
  %arrayidx1 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !575
  call void @geohashGetCoordRange(%struct.GeoHashRange* %arrayidx, %struct.GeoHashRange* %arrayidx1), !dbg !576
  %arrayidx2 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 0, !dbg !577
  %arrayidx3 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %r, i64 0, i64 1, !dbg !578
  %4 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !579
  %5 = bitcast %struct.GeoHashRange* %arrayidx2 to { double, double }*, !dbg !580
  %6 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0, !dbg !580
  %7 = load double, double* %6, align 16, !dbg !580
  %8 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1, !dbg !580
  %9 = load double, double* %8, align 8, !dbg !580
  %10 = bitcast %struct.GeoHashRange* %arrayidx3 to { double, double }*, !dbg !580
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0, !dbg !580
  %12 = load double, double* %11, align 16, !dbg !580
  %13 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1, !dbg !580
  %14 = load double, double* %13, align 8, !dbg !580
  %15 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !580
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %15, i32 0, i32 0, !dbg !580
  %17 = load i64, i64* %16, align 8, !dbg !580
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %15, i32 0, i32 1, !dbg !580
  %19 = load i8, i8* %18, align 8, !dbg !580
  %call = call i32 @geohashDecode(double %7, double %9, double %12, double %14, i64 %17, i8 %19, %struct.GeoHashArea* %4), !dbg !580
  ret i32 %call, !dbg !581
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecodeWGS84(i64 %hash.coerce0, i8 %hash.coerce1, %struct.GeoHashArea* %area) #0 !dbg !582 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %area.addr = alloca %struct.GeoHashArea*, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !583, metadata !DIExpression()), !dbg !584
  store %struct.GeoHashArea* %area, %struct.GeoHashArea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea** %area.addr, metadata !585, metadata !DIExpression()), !dbg !586
  %3 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !587
  %4 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !588
  %5 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %4, i32 0, i32 0, !dbg !588
  %6 = load i64, i64* %5, align 8, !dbg !588
  %7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %4, i32 0, i32 1, !dbg !588
  %8 = load i8, i8* %7, align 8, !dbg !588
  %call = call i32 @geohashDecodeType(i64 %6, i8 %8, %struct.GeoHashArea* %3), !dbg !588
  ret i32 %call, !dbg !589
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecodeAreaToLongLat(%struct.GeoHashArea* %area, double* %xy) #0 !dbg !590 {
entry:
  %retval = alloca i32, align 4
  %area.addr = alloca %struct.GeoHashArea*, align 8
  %xy.addr = alloca double*, align 8
  store %struct.GeoHashArea* %area, %struct.GeoHashArea** %area.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea** %area.addr, metadata !596, metadata !DIExpression()), !dbg !597
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load double*, double** %xy.addr, align 8, !dbg !600
  %tobool = icmp ne double* %0, null, !dbg !600
  br i1 %tobool, label %if.end, label %if.then, !dbg !602

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !603
  br label %return, !dbg !603

if.end:                                           ; preds = %entry
  %1 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !604
  %longitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %1, i32 0, i32 1, !dbg !605
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude, i32 0, i32 0, !dbg !606
  %2 = load double, double* %min, align 8, !dbg !606
  %3 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !607
  %longitude1 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %3, i32 0, i32 1, !dbg !608
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude1, i32 0, i32 1, !dbg !609
  %4 = load double, double* %max, align 8, !dbg !609
  %add = fadd double %2, %4, !dbg !610
  %div = fdiv double %add, 2.000000e+00, !dbg !611
  %5 = load double*, double** %xy.addr, align 8, !dbg !612
  %arrayidx = getelementptr inbounds double, double* %5, i64 0, !dbg !612
  store double %div, double* %arrayidx, align 8, !dbg !613
  %6 = load double*, double** %xy.addr, align 8, !dbg !614
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 0, !dbg !614
  %7 = load double, double* %arrayidx2, align 8, !dbg !614
  %cmp = fcmp ogt double %7, 1.800000e+02, !dbg !616
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !617

if.then3:                                         ; preds = %if.end
  %8 = load double*, double** %xy.addr, align 8, !dbg !618
  %arrayidx4 = getelementptr inbounds double, double* %8, i64 0, !dbg !618
  store double 1.800000e+02, double* %arrayidx4, align 8, !dbg !619
  br label %if.end5, !dbg !618

if.end5:                                          ; preds = %if.then3, %if.end
  %9 = load double*, double** %xy.addr, align 8, !dbg !620
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 0, !dbg !620
  %10 = load double, double* %arrayidx6, align 8, !dbg !620
  %cmp7 = fcmp olt double %10, -1.800000e+02, !dbg !622
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !623

if.then8:                                         ; preds = %if.end5
  %11 = load double*, double** %xy.addr, align 8, !dbg !624
  %arrayidx9 = getelementptr inbounds double, double* %11, i64 0, !dbg !624
  store double -1.800000e+02, double* %arrayidx9, align 8, !dbg !625
  br label %if.end10, !dbg !624

if.end10:                                         ; preds = %if.then8, %if.end5
  %12 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !626
  %latitude = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %12, i32 0, i32 2, !dbg !627
  %min11 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude, i32 0, i32 0, !dbg !628
  %13 = load double, double* %min11, align 8, !dbg !628
  %14 = load %struct.GeoHashArea*, %struct.GeoHashArea** %area.addr, align 8, !dbg !629
  %latitude12 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %14, i32 0, i32 2, !dbg !630
  %max13 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude12, i32 0, i32 1, !dbg !631
  %15 = load double, double* %max13, align 8, !dbg !631
  %add14 = fadd double %13, %15, !dbg !632
  %div15 = fdiv double %add14, 2.000000e+00, !dbg !633
  %16 = load double*, double** %xy.addr, align 8, !dbg !634
  %arrayidx16 = getelementptr inbounds double, double* %16, i64 1, !dbg !634
  store double %div15, double* %arrayidx16, align 8, !dbg !635
  %17 = load double*, double** %xy.addr, align 8, !dbg !636
  %arrayidx17 = getelementptr inbounds double, double* %17, i64 1, !dbg !636
  %18 = load double, double* %arrayidx17, align 8, !dbg !636
  %cmp18 = fcmp ogt double %18, 0x40554345B1A57F00, !dbg !638
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !639

if.then19:                                        ; preds = %if.end10
  %19 = load double*, double** %xy.addr, align 8, !dbg !640
  %arrayidx20 = getelementptr inbounds double, double* %19, i64 1, !dbg !640
  store double 0x40554345B1A57F00, double* %arrayidx20, align 8, !dbg !641
  br label %if.end21, !dbg !640

if.end21:                                         ; preds = %if.then19, %if.end10
  %20 = load double*, double** %xy.addr, align 8, !dbg !642
  %arrayidx22 = getelementptr inbounds double, double* %20, i64 1, !dbg !642
  %21 = load double, double* %arrayidx22, align 8, !dbg !642
  %cmp23 = fcmp olt double %21, 0xC0554345B1A57F00, !dbg !644
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !645

if.then24:                                        ; preds = %if.end21
  %22 = load double*, double** %xy.addr, align 8, !dbg !646
  %arrayidx25 = getelementptr inbounds double, double* %22, i64 1, !dbg !646
  store double 0xC0554345B1A57F00, double* %arrayidx25, align 8, !dbg !647
  br label %if.end26, !dbg !646

if.end26:                                         ; preds = %if.then24, %if.end21
  store i32 1, i32* %retval, align 4, !dbg !648
  br label %return, !dbg !648

return:                                           ; preds = %if.end26, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !649
  ret i32 %23, !dbg !649
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecodeToLongLatType(i64 %hash.coerce0, i8 %hash.coerce1, double* %xy) #0 !dbg !650 {
entry:
  %retval = alloca i32, align 4
  %hash = alloca %struct.GeoHashBits, align 8
  %xy.addr = alloca double*, align 8
  %area = alloca %struct.GeoHashArea, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !653, metadata !DIExpression()), !dbg !654
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !655, metadata !DIExpression()), !dbg !656
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %area, metadata !657, metadata !DIExpression()), !dbg !658
  %3 = bitcast %struct.GeoHashArea* %area to i8*, !dbg !658
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 48, i1 false), !dbg !658
  %4 = load double*, double** %xy.addr, align 8, !dbg !659
  %tobool = icmp ne double* %4, null, !dbg !659
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !661

lor.lhs.false:                                    ; preds = %entry
  %5 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !662
  %6 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %5, i32 0, i32 0, !dbg !662
  %7 = load i64, i64* %6, align 8, !dbg !662
  %8 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %5, i32 0, i32 1, !dbg !662
  %9 = load i8, i8* %8, align 8, !dbg !662
  %call = call i32 @geohashDecodeType(i64 %7, i8 %9, %struct.GeoHashArea* %area), !dbg !662
  %tobool1 = icmp ne i32 %call, 0, !dbg !662
  br i1 %tobool1, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !664
  br label %return, !dbg !664

if.end:                                           ; preds = %lor.lhs.false
  %10 = load double*, double** %xy.addr, align 8, !dbg !665
  %call2 = call i32 @geohashDecodeAreaToLongLat(%struct.GeoHashArea* %area, double* %10), !dbg !666
  store i32 %call2, i32* %retval, align 4, !dbg !667
  br label %return, !dbg !667

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !668
  ret i32 %11, !dbg !668
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashDecodeToLongLatWGS84(i64 %hash.coerce0, i8 %hash.coerce1, double* %xy) #0 !dbg !669 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %xy.addr = alloca double*, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !670, metadata !DIExpression()), !dbg !671
  store double* %xy, double** %xy.addr, align 8
  call void @llvm.dbg.declare(metadata double** %xy.addr, metadata !672, metadata !DIExpression()), !dbg !673
  %3 = load double*, double** %xy.addr, align 8, !dbg !674
  %4 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !675
  %5 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %4, i32 0, i32 0, !dbg !675
  %6 = load i64, i64* %5, align 8, !dbg !675
  %7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %4, i32 0, i32 1, !dbg !675
  %8 = load i8, i8* %7, align 8, !dbg !675
  %call = call i32 @geohashDecodeToLongLatType(i64 %6, i8 %8, double* %3), !dbg !675
  ret i32 %call, !dbg !676
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @geohashNeighbors(%struct.GeoHashBits* %hash, %struct.GeoHashNeighbors* %neighbors) #0 !dbg !677 {
entry:
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  %neighbors.addr = alloca %struct.GeoHashNeighbors*, align 8
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !693, metadata !DIExpression()), !dbg !694
  store %struct.GeoHashNeighbors* %neighbors, %struct.GeoHashNeighbors** %neighbors.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashNeighbors** %neighbors.addr, metadata !695, metadata !DIExpression()), !dbg !696
  %0 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !697
  %east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %0, i32 0, i32 1, !dbg !698
  %1 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !699
  %2 = bitcast %struct.GeoHashBits* %east to i8*, !dbg !700
  %3 = bitcast %struct.GeoHashBits* %1 to i8*, !dbg !700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 16, i1 false), !dbg !700
  %4 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !701
  %west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %4, i32 0, i32 2, !dbg !702
  %5 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !703
  %6 = bitcast %struct.GeoHashBits* %west to i8*, !dbg !704
  %7 = bitcast %struct.GeoHashBits* %5 to i8*, !dbg !704
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false), !dbg !704
  %8 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !705
  %north = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i32 0, i32 0, !dbg !706
  %9 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !707
  %10 = bitcast %struct.GeoHashBits* %north to i8*, !dbg !708
  %11 = bitcast %struct.GeoHashBits* %9 to i8*, !dbg !708
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false), !dbg !708
  %12 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !709
  %south = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %12, i32 0, i32 3, !dbg !710
  %13 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !711
  %14 = bitcast %struct.GeoHashBits* %south to i8*, !dbg !712
  %15 = bitcast %struct.GeoHashBits* %13 to i8*, !dbg !712
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false), !dbg !712
  %16 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !713
  %south_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %16, i32 0, i32 5, !dbg !714
  %17 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !715
  %18 = bitcast %struct.GeoHashBits* %south_east to i8*, !dbg !716
  %19 = bitcast %struct.GeoHashBits* %17 to i8*, !dbg !716
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false), !dbg !716
  %20 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !717
  %south_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %20, i32 0, i32 7, !dbg !718
  %21 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !719
  %22 = bitcast %struct.GeoHashBits* %south_west to i8*, !dbg !720
  %23 = bitcast %struct.GeoHashBits* %21 to i8*, !dbg !720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false), !dbg !720
  %24 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !721
  %north_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %24, i32 0, i32 4, !dbg !722
  %25 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !723
  %26 = bitcast %struct.GeoHashBits* %north_east to i8*, !dbg !724
  %27 = bitcast %struct.GeoHashBits* %25 to i8*, !dbg !724
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false), !dbg !724
  %28 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !725
  %north_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %28, i32 0, i32 6, !dbg !726
  %29 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !727
  %30 = bitcast %struct.GeoHashBits* %north_west to i8*, !dbg !728
  %31 = bitcast %struct.GeoHashBits* %29 to i8*, !dbg !728
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false), !dbg !728
  %32 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !729
  %east1 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %32, i32 0, i32 1, !dbg !730
  call void @geohash_move_x(%struct.GeoHashBits* %east1, i8 signext 1), !dbg !731
  %33 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !732
  %east2 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %33, i32 0, i32 1, !dbg !733
  call void @geohash_move_y(%struct.GeoHashBits* %east2, i8 signext 0), !dbg !734
  %34 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !735
  %west3 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %34, i32 0, i32 2, !dbg !736
  call void @geohash_move_x(%struct.GeoHashBits* %west3, i8 signext -1), !dbg !737
  %35 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !738
  %west4 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %35, i32 0, i32 2, !dbg !739
  call void @geohash_move_y(%struct.GeoHashBits* %west4, i8 signext 0), !dbg !740
  %36 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !741
  %south5 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %36, i32 0, i32 3, !dbg !742
  call void @geohash_move_x(%struct.GeoHashBits* %south5, i8 signext 0), !dbg !743
  %37 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !744
  %south6 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %37, i32 0, i32 3, !dbg !745
  call void @geohash_move_y(%struct.GeoHashBits* %south6, i8 signext -1), !dbg !746
  %38 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !747
  %north7 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %38, i32 0, i32 0, !dbg !748
  call void @geohash_move_x(%struct.GeoHashBits* %north7, i8 signext 0), !dbg !749
  %39 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !750
  %north8 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %39, i32 0, i32 0, !dbg !751
  call void @geohash_move_y(%struct.GeoHashBits* %north8, i8 signext 1), !dbg !752
  %40 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !753
  %north_west9 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %40, i32 0, i32 6, !dbg !754
  call void @geohash_move_x(%struct.GeoHashBits* %north_west9, i8 signext -1), !dbg !755
  %41 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !756
  %north_west10 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %41, i32 0, i32 6, !dbg !757
  call void @geohash_move_y(%struct.GeoHashBits* %north_west10, i8 signext 1), !dbg !758
  %42 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !759
  %north_east11 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %42, i32 0, i32 4, !dbg !760
  call void @geohash_move_x(%struct.GeoHashBits* %north_east11, i8 signext 1), !dbg !761
  %43 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !762
  %north_east12 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %43, i32 0, i32 4, !dbg !763
  call void @geohash_move_y(%struct.GeoHashBits* %north_east12, i8 signext 1), !dbg !764
  %44 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !765
  %south_east13 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %44, i32 0, i32 5, !dbg !766
  call void @geohash_move_x(%struct.GeoHashBits* %south_east13, i8 signext 1), !dbg !767
  %45 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !768
  %south_east14 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %45, i32 0, i32 5, !dbg !769
  call void @geohash_move_y(%struct.GeoHashBits* %south_east14, i8 signext -1), !dbg !770
  %46 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !771
  %south_west15 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %46, i32 0, i32 7, !dbg !772
  call void @geohash_move_x(%struct.GeoHashBits* %south_west15, i8 signext -1), !dbg !773
  %47 = load %struct.GeoHashNeighbors*, %struct.GeoHashNeighbors** %neighbors.addr, align 8, !dbg !774
  %south_west16 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %47, i32 0, i32 7, !dbg !775
  call void @geohash_move_y(%struct.GeoHashBits* %south_west16, i8 signext -1), !dbg !776
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind uwtable
define internal void @geohash_move_x(%struct.GeoHashBits* %hash, i8 signext %d) #0 !dbg !778 {
entry:
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  %d.addr = alloca i8, align 1
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %zz = alloca i64, align 8
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !785, metadata !DIExpression()), !dbg !786
  store i8 %d, i8* %d.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %d.addr, metadata !787, metadata !DIExpression()), !dbg !788
  %0 = load i8, i8* %d.addr, align 1, !dbg !789
  %conv = sext i8 %0 to i32, !dbg !789
  %cmp = icmp eq i32 %conv, 0, !dbg !791
  br i1 %cmp, label %if.then, label %if.end, !dbg !792

if.then:                                          ; preds = %entry
  br label %return, !dbg !793

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %x, metadata !794, metadata !DIExpression()), !dbg !795
  %1 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !796
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %1, i32 0, i32 0, !dbg !797
  %2 = load i64, i64* %bits, align 8, !dbg !797
  %and = and i64 %2, -6148914691236517206, !dbg !798
  store i64 %and, i64* %x, align 8, !dbg !795
  call void @llvm.dbg.declare(metadata i64* %y, metadata !799, metadata !DIExpression()), !dbg !800
  %3 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !801
  %bits2 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %3, i32 0, i32 0, !dbg !802
  %4 = load i64, i64* %bits2, align 8, !dbg !802
  %and3 = and i64 %4, 6148914691236517205, !dbg !803
  store i64 %and3, i64* %y, align 8, !dbg !800
  call void @llvm.dbg.declare(metadata i64* %zz, metadata !804, metadata !DIExpression()), !dbg !805
  %5 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !806
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %5, i32 0, i32 1, !dbg !807
  %6 = load i8, i8* %step, align 8, !dbg !807
  %conv4 = zext i8 %6 to i32, !dbg !806
  %mul = mul nsw i32 %conv4, 2, !dbg !808
  %sub = sub nsw i32 64, %mul, !dbg !809
  %sh_prom = zext i32 %sub to i64, !dbg !810
  %shr = lshr i64 6148914691236517205, %sh_prom, !dbg !810
  store i64 %shr, i64* %zz, align 8, !dbg !805
  %7 = load i8, i8* %d.addr, align 1, !dbg !811
  %conv5 = sext i8 %7 to i32, !dbg !811
  %cmp6 = icmp sgt i32 %conv5, 0, !dbg !813
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !814

if.then8:                                         ; preds = %if.end
  %8 = load i64, i64* %x, align 8, !dbg !815
  %9 = load i64, i64* %zz, align 8, !dbg !817
  %add = add i64 %9, 1, !dbg !818
  %add9 = add i64 %8, %add, !dbg !819
  store i64 %add9, i64* %x, align 8, !dbg !820
  br label %if.end12, !dbg !821

if.else:                                          ; preds = %if.end
  %10 = load i64, i64* %x, align 8, !dbg !822
  %11 = load i64, i64* %zz, align 8, !dbg !824
  %or = or i64 %10, %11, !dbg !825
  store i64 %or, i64* %x, align 8, !dbg !826
  %12 = load i64, i64* %x, align 8, !dbg !827
  %13 = load i64, i64* %zz, align 8, !dbg !828
  %add10 = add i64 %13, 1, !dbg !829
  %sub11 = sub i64 %12, %add10, !dbg !830
  store i64 %sub11, i64* %x, align 8, !dbg !831
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %14 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !832
  %step13 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %14, i32 0, i32 1, !dbg !833
  %15 = load i8, i8* %step13, align 8, !dbg !833
  %conv14 = zext i8 %15 to i32, !dbg !832
  %mul15 = mul nsw i32 %conv14, 2, !dbg !834
  %sub16 = sub nsw i32 64, %mul15, !dbg !835
  %sh_prom17 = zext i32 %sub16 to i64, !dbg !836
  %shr18 = lshr i64 -6148914691236517206, %sh_prom17, !dbg !836
  %16 = load i64, i64* %x, align 8, !dbg !837
  %and19 = and i64 %16, %shr18, !dbg !837
  store i64 %and19, i64* %x, align 8, !dbg !837
  %17 = load i64, i64* %x, align 8, !dbg !838
  %18 = load i64, i64* %y, align 8, !dbg !839
  %or20 = or i64 %17, %18, !dbg !840
  %19 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !841
  %bits21 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %19, i32 0, i32 0, !dbg !842
  store i64 %or20, i64* %bits21, align 8, !dbg !843
  br label %return, !dbg !844

return:                                           ; preds = %if.end12, %if.then
  ret void, !dbg !844
}

; Function Attrs: noinline nounwind uwtable
define internal void @geohash_move_y(%struct.GeoHashBits* %hash, i8 signext %d) #0 !dbg !845 {
entry:
  %hash.addr = alloca %struct.GeoHashBits*, align 8
  %d.addr = alloca i8, align 1
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %zz = alloca i64, align 8
  store %struct.GeoHashBits* %hash, %struct.GeoHashBits** %hash.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits** %hash.addr, metadata !846, metadata !DIExpression()), !dbg !847
  store i8 %d, i8* %d.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %d.addr, metadata !848, metadata !DIExpression()), !dbg !849
  %0 = load i8, i8* %d.addr, align 1, !dbg !850
  %conv = sext i8 %0 to i32, !dbg !850
  %cmp = icmp eq i32 %conv, 0, !dbg !852
  br i1 %cmp, label %if.then, label %if.end, !dbg !853

if.then:                                          ; preds = %entry
  br label %return, !dbg !854

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %x, metadata !855, metadata !DIExpression()), !dbg !856
  %1 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !857
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %1, i32 0, i32 0, !dbg !858
  %2 = load i64, i64* %bits, align 8, !dbg !858
  %and = and i64 %2, -6148914691236517206, !dbg !859
  store i64 %and, i64* %x, align 8, !dbg !856
  call void @llvm.dbg.declare(metadata i64* %y, metadata !860, metadata !DIExpression()), !dbg !861
  %3 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !862
  %bits2 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %3, i32 0, i32 0, !dbg !863
  %4 = load i64, i64* %bits2, align 8, !dbg !863
  %and3 = and i64 %4, 6148914691236517205, !dbg !864
  store i64 %and3, i64* %y, align 8, !dbg !861
  call void @llvm.dbg.declare(metadata i64* %zz, metadata !865, metadata !DIExpression()), !dbg !866
  %5 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !867
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %5, i32 0, i32 1, !dbg !868
  %6 = load i8, i8* %step, align 8, !dbg !868
  %conv4 = zext i8 %6 to i32, !dbg !867
  %mul = mul nsw i32 %conv4, 2, !dbg !869
  %sub = sub nsw i32 64, %mul, !dbg !870
  %sh_prom = zext i32 %sub to i64, !dbg !871
  %shr = lshr i64 -6148914691236517206, %sh_prom, !dbg !871
  store i64 %shr, i64* %zz, align 8, !dbg !866
  %7 = load i8, i8* %d.addr, align 1, !dbg !872
  %conv5 = sext i8 %7 to i32, !dbg !872
  %cmp6 = icmp sgt i32 %conv5, 0, !dbg !874
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !875

if.then8:                                         ; preds = %if.end
  %8 = load i64, i64* %y, align 8, !dbg !876
  %9 = load i64, i64* %zz, align 8, !dbg !878
  %add = add i64 %9, 1, !dbg !879
  %add9 = add i64 %8, %add, !dbg !880
  store i64 %add9, i64* %y, align 8, !dbg !881
  br label %if.end12, !dbg !882

if.else:                                          ; preds = %if.end
  %10 = load i64, i64* %y, align 8, !dbg !883
  %11 = load i64, i64* %zz, align 8, !dbg !885
  %or = or i64 %10, %11, !dbg !886
  store i64 %or, i64* %y, align 8, !dbg !887
  %12 = load i64, i64* %y, align 8, !dbg !888
  %13 = load i64, i64* %zz, align 8, !dbg !889
  %add10 = add i64 %13, 1, !dbg !890
  %sub11 = sub i64 %12, %add10, !dbg !891
  store i64 %sub11, i64* %y, align 8, !dbg !892
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %14 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !893
  %step13 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %14, i32 0, i32 1, !dbg !894
  %15 = load i8, i8* %step13, align 8, !dbg !894
  %conv14 = zext i8 %15 to i32, !dbg !893
  %mul15 = mul nsw i32 %conv14, 2, !dbg !895
  %sub16 = sub nsw i32 64, %mul15, !dbg !896
  %sh_prom17 = zext i32 %sub16 to i64, !dbg !897
  %shr18 = lshr i64 6148914691236517205, %sh_prom17, !dbg !897
  %16 = load i64, i64* %y, align 8, !dbg !898
  %and19 = and i64 %16, %shr18, !dbg !898
  store i64 %and19, i64* %y, align 8, !dbg !898
  %17 = load i64, i64* %x, align 8, !dbg !899
  %18 = load i64, i64* %y, align 8, !dbg !900
  %or20 = or i64 %17, %18, !dbg !901
  %19 = load %struct.GeoHashBits*, %struct.GeoHashBits** %hash.addr, align 8, !dbg !902
  %bits21 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %19, i32 0, i32 0, !dbg !903
  store i64 %or20, i64* %bits21, align 8, !dbg !904
  br label %return, !dbg !905

return:                                           ; preds = %if.end12, %if.then
  ret void, !dbg !905
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "B", scope: !2, file: !3, line: 53, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "interleave64", scope: !3, file: !3, line: 52, type: !4, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !15)
!3 = !DIFile(filename: "geohash.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !11}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 27, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !9, line: 45, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 26, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 42, baseType: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !16, globals: !18, splitDebugInlining: false, nameTableKind: None)
!15 = !{}
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0, !19, !25, !34}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "S", scope: !2, file: !3, line: 56, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !23)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!23 = !{!24}
!24 = !DISubrange(count: 5)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "B", scope: !27, file: !3, line: 83, type: !30, isLocal: true, isDefinition: true)
!27 = distinct !DISubprogram(name: "deinterleave64", scope: !3, file: !3, line: 82, type: !28, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !15)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !6}
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "S", scope: !27, file: !3, line: 86, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, elements: !32)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 320, elements: !23)
!38 = !{i32 7, !"Dwarf Version", i32 4}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!44 = distinct !DISubprogram(name: "geohashGetCoordRange", scope: !3, file: !3, line: 112, type: !45, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !49, line: 73, baseType: !50)
!49 = !DIFile(filename: "./geohash.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 70, size: 128, elements: !51)
!51 = !{!52, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !50, file: !49, line: 71, baseType: !53, size: 64)
!53 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !50, file: !49, line: 72, baseType: !53, size: 64, offset: 64)
!55 = !DILocalVariable(name: "long_range", arg: 1, scope: !44, file: !3, line: 112, type: !47)
!56 = !DILocation(line: 112, column: 41, scope: !44)
!57 = !DILocalVariable(name: "lat_range", arg: 2, scope: !44, file: !3, line: 112, type: !47)
!58 = !DILocation(line: 112, column: 67, scope: !44)
!59 = !DILocation(line: 115, column: 5, scope: !44)
!60 = !DILocation(line: 115, column: 17, scope: !44)
!61 = !DILocation(line: 115, column: 21, scope: !44)
!62 = !DILocation(line: 116, column: 5, scope: !44)
!63 = !DILocation(line: 116, column: 17, scope: !44)
!64 = !DILocation(line: 116, column: 21, scope: !44)
!65 = !DILocation(line: 117, column: 5, scope: !44)
!66 = !DILocation(line: 117, column: 16, scope: !44)
!67 = !DILocation(line: 117, column: 20, scope: !44)
!68 = !DILocation(line: 118, column: 5, scope: !44)
!69 = !DILocation(line: 118, column: 16, scope: !44)
!70 = !DILocation(line: 118, column: 20, scope: !44)
!71 = !DILocation(line: 119, column: 1, scope: !44)
!72 = distinct !DISubprogram(name: "geohashEncode", scope: !3, file: !3, line: 121, type: !73, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !76, !76, !53, !53, !78, !81}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 24, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 38, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !49, line: 68, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 65, size: 128, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !83, file: !49, line: 66, baseType: !6, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !83, file: !49, line: 67, baseType: !78, size: 8, offset: 64)
!87 = !DILocalVariable(name: "long_range", arg: 1, scope: !72, file: !3, line: 121, type: !76)
!88 = !DILocation(line: 121, column: 39, scope: !72)
!89 = !DILocalVariable(name: "lat_range", arg: 2, scope: !72, file: !3, line: 121, type: !76)
!90 = !DILocation(line: 121, column: 71, scope: !72)
!91 = !DILocalVariable(name: "longitude", arg: 3, scope: !72, file: !3, line: 122, type: !53)
!92 = !DILocation(line: 122, column: 26, scope: !72)
!93 = !DILocalVariable(name: "latitude", arg: 4, scope: !72, file: !3, line: 122, type: !53)
!94 = !DILocation(line: 122, column: 44, scope: !72)
!95 = !DILocalVariable(name: "step", arg: 5, scope: !72, file: !3, line: 122, type: !78)
!96 = !DILocation(line: 122, column: 62, scope: !72)
!97 = !DILocalVariable(name: "hash", arg: 6, scope: !72, file: !3, line: 123, type: !81)
!98 = !DILocation(line: 123, column: 32, scope: !72)
!99 = !DILocation(line: 125, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !72, file: !3, line: 125, column: 9)
!101 = !DILocation(line: 125, column: 14, scope: !100)
!102 = !DILocation(line: 125, column: 22, scope: !100)
!103 = !DILocation(line: 125, column: 25, scope: !100)
!104 = !DILocation(line: 125, column: 30, scope: !100)
!105 = !DILocation(line: 125, column: 35, scope: !100)
!106 = !DILocation(line: 125, column: 38, scope: !100)
!107 = !DILocation(line: 125, column: 43, scope: !100)
!108 = !DILocation(line: 125, column: 48, scope: !100)
!109 = !DILocation(line: 126, column: 9, scope: !100)
!110 = !DILocation(line: 126, column: 33, scope: !100)
!111 = !DILocation(line: 126, column: 36, scope: !100)
!112 = !DILocation(line: 125, column: 9, scope: !72)
!113 = !DILocation(line: 126, column: 62, scope: !100)
!114 = !DILocation(line: 130, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !72, file: !3, line: 130, column: 9)
!116 = !DILocation(line: 130, column: 19, scope: !115)
!117 = !DILocation(line: 130, column: 34, scope: !115)
!118 = !DILocation(line: 130, column: 37, scope: !115)
!119 = !DILocation(line: 130, column: 47, scope: !115)
!120 = !DILocation(line: 130, column: 62, scope: !115)
!121 = !DILocation(line: 131, column: 9, scope: !115)
!122 = !DILocation(line: 131, column: 18, scope: !115)
!123 = !DILocation(line: 131, column: 32, scope: !115)
!124 = !DILocation(line: 131, column: 35, scope: !115)
!125 = !DILocation(line: 131, column: 44, scope: !115)
!126 = !DILocation(line: 130, column: 9, scope: !72)
!127 = !DILocation(line: 131, column: 59, scope: !115)
!128 = !DILocation(line: 133, column: 5, scope: !72)
!129 = !DILocation(line: 133, column: 11, scope: !72)
!130 = !DILocation(line: 133, column: 16, scope: !72)
!131 = !DILocation(line: 134, column: 18, scope: !72)
!132 = !DILocation(line: 134, column: 5, scope: !72)
!133 = !DILocation(line: 134, column: 11, scope: !72)
!134 = !DILocation(line: 134, column: 16, scope: !72)
!135 = !DILocation(line: 136, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !72, file: !3, line: 136, column: 9)
!137 = !DILocation(line: 136, column: 20, scope: !136)
!138 = !DILocation(line: 136, column: 31, scope: !136)
!139 = !DILocation(line: 136, column: 18, scope: !136)
!140 = !DILocation(line: 136, column: 35, scope: !136)
!141 = !DILocation(line: 136, column: 38, scope: !136)
!142 = !DILocation(line: 136, column: 49, scope: !136)
!143 = !DILocation(line: 136, column: 60, scope: !136)
!144 = !DILocation(line: 136, column: 47, scope: !136)
!145 = !DILocation(line: 136, column: 64, scope: !136)
!146 = !DILocation(line: 137, column: 9, scope: !136)
!147 = !DILocation(line: 137, column: 21, scope: !136)
!148 = !DILocation(line: 137, column: 33, scope: !136)
!149 = !DILocation(line: 137, column: 19, scope: !136)
!150 = !DILocation(line: 137, column: 37, scope: !136)
!151 = !DILocation(line: 137, column: 40, scope: !136)
!152 = !DILocation(line: 137, column: 52, scope: !136)
!153 = !DILocation(line: 137, column: 64, scope: !136)
!154 = !DILocation(line: 137, column: 50, scope: !136)
!155 = !DILocation(line: 136, column: 9, scope: !72)
!156 = !DILocation(line: 138, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !136, file: !3, line: 137, column: 69)
!158 = !DILocalVariable(name: "lat_offset", scope: !72, file: !3, line: 141, type: !53)
!159 = !DILocation(line: 141, column: 12, scope: !72)
!160 = !DILocation(line: 142, column: 10, scope: !72)
!161 = !DILocation(line: 142, column: 21, scope: !72)
!162 = !DILocation(line: 142, column: 32, scope: !72)
!163 = !DILocation(line: 142, column: 19, scope: !72)
!164 = !DILocation(line: 142, column: 40, scope: !72)
!165 = !DILocation(line: 142, column: 51, scope: !72)
!166 = !DILocation(line: 142, column: 57, scope: !72)
!167 = !DILocation(line: 142, column: 68, scope: !72)
!168 = !DILocation(line: 142, column: 55, scope: !72)
!169 = !DILocation(line: 142, column: 37, scope: !72)
!170 = !DILocalVariable(name: "long_offset", scope: !72, file: !3, line: 143, type: !53)
!171 = !DILocation(line: 143, column: 12, scope: !72)
!172 = !DILocation(line: 144, column: 10, scope: !72)
!173 = !DILocation(line: 144, column: 22, scope: !72)
!174 = !DILocation(line: 144, column: 34, scope: !72)
!175 = !DILocation(line: 144, column: 20, scope: !72)
!176 = !DILocation(line: 144, column: 42, scope: !72)
!177 = !DILocation(line: 144, column: 54, scope: !72)
!178 = !DILocation(line: 144, column: 60, scope: !72)
!179 = !DILocation(line: 144, column: 72, scope: !72)
!180 = !DILocation(line: 144, column: 58, scope: !72)
!181 = !DILocation(line: 144, column: 39, scope: !72)
!182 = !DILocation(line: 147, column: 28, scope: !72)
!183 = !DILocation(line: 147, column: 25, scope: !72)
!184 = !DILocation(line: 147, column: 19, scope: !72)
!185 = !DILocation(line: 147, column: 16, scope: !72)
!186 = !DILocation(line: 148, column: 29, scope: !72)
!187 = !DILocation(line: 148, column: 26, scope: !72)
!188 = !DILocation(line: 148, column: 20, scope: !72)
!189 = !DILocation(line: 148, column: 17, scope: !72)
!190 = !DILocation(line: 149, column: 31, scope: !72)
!191 = !DILocation(line: 149, column: 43, scope: !72)
!192 = !DILocation(line: 149, column: 18, scope: !72)
!193 = !DILocation(line: 149, column: 5, scope: !72)
!194 = !DILocation(line: 149, column: 11, scope: !72)
!195 = !DILocation(line: 149, column: 16, scope: !72)
!196 = !DILocation(line: 150, column: 5, scope: !72)
!197 = !DILocation(line: 151, column: 1, scope: !72)
!198 = !DILocalVariable(name: "xlo", arg: 1, scope: !2, file: !3, line: 52, type: !11)
!199 = !DILocation(line: 52, column: 46, scope: !2)
!200 = !DILocalVariable(name: "ylo", arg: 2, scope: !2, file: !3, line: 52, type: !11)
!201 = !DILocation(line: 52, column: 60, scope: !2)
!202 = !DILocalVariable(name: "x", scope: !2, file: !3, line: 58, type: !6)
!203 = !DILocation(line: 58, column: 14, scope: !2)
!204 = !DILocation(line: 58, column: 18, scope: !2)
!205 = !DILocalVariable(name: "y", scope: !2, file: !3, line: 59, type: !6)
!206 = !DILocation(line: 59, column: 14, scope: !2)
!207 = !DILocation(line: 59, column: 18, scope: !2)
!208 = !DILocation(line: 61, column: 10, scope: !2)
!209 = !DILocation(line: 61, column: 15, scope: !2)
!210 = !DILocation(line: 61, column: 20, scope: !2)
!211 = !DILocation(line: 61, column: 17, scope: !2)
!212 = !DILocation(line: 61, column: 12, scope: !2)
!213 = !DILocation(line: 61, column: 29, scope: !2)
!214 = !DILocation(line: 61, column: 27, scope: !2)
!215 = !DILocation(line: 61, column: 7, scope: !2)
!216 = !DILocation(line: 62, column: 10, scope: !2)
!217 = !DILocation(line: 62, column: 15, scope: !2)
!218 = !DILocation(line: 62, column: 20, scope: !2)
!219 = !DILocation(line: 62, column: 17, scope: !2)
!220 = !DILocation(line: 62, column: 12, scope: !2)
!221 = !DILocation(line: 62, column: 29, scope: !2)
!222 = !DILocation(line: 62, column: 27, scope: !2)
!223 = !DILocation(line: 62, column: 7, scope: !2)
!224 = !DILocation(line: 64, column: 10, scope: !2)
!225 = !DILocation(line: 64, column: 15, scope: !2)
!226 = !DILocation(line: 64, column: 20, scope: !2)
!227 = !DILocation(line: 64, column: 17, scope: !2)
!228 = !DILocation(line: 64, column: 12, scope: !2)
!229 = !DILocation(line: 64, column: 29, scope: !2)
!230 = !DILocation(line: 64, column: 27, scope: !2)
!231 = !DILocation(line: 64, column: 7, scope: !2)
!232 = !DILocation(line: 65, column: 10, scope: !2)
!233 = !DILocation(line: 65, column: 15, scope: !2)
!234 = !DILocation(line: 65, column: 20, scope: !2)
!235 = !DILocation(line: 65, column: 17, scope: !2)
!236 = !DILocation(line: 65, column: 12, scope: !2)
!237 = !DILocation(line: 65, column: 29, scope: !2)
!238 = !DILocation(line: 65, column: 27, scope: !2)
!239 = !DILocation(line: 65, column: 7, scope: !2)
!240 = !DILocation(line: 67, column: 10, scope: !2)
!241 = !DILocation(line: 67, column: 15, scope: !2)
!242 = !DILocation(line: 67, column: 20, scope: !2)
!243 = !DILocation(line: 67, column: 17, scope: !2)
!244 = !DILocation(line: 67, column: 12, scope: !2)
!245 = !DILocation(line: 67, column: 29, scope: !2)
!246 = !DILocation(line: 67, column: 27, scope: !2)
!247 = !DILocation(line: 67, column: 7, scope: !2)
!248 = !DILocation(line: 68, column: 10, scope: !2)
!249 = !DILocation(line: 68, column: 15, scope: !2)
!250 = !DILocation(line: 68, column: 20, scope: !2)
!251 = !DILocation(line: 68, column: 17, scope: !2)
!252 = !DILocation(line: 68, column: 12, scope: !2)
!253 = !DILocation(line: 68, column: 29, scope: !2)
!254 = !DILocation(line: 68, column: 27, scope: !2)
!255 = !DILocation(line: 68, column: 7, scope: !2)
!256 = !DILocation(line: 70, column: 10, scope: !2)
!257 = !DILocation(line: 70, column: 15, scope: !2)
!258 = !DILocation(line: 70, column: 20, scope: !2)
!259 = !DILocation(line: 70, column: 17, scope: !2)
!260 = !DILocation(line: 70, column: 12, scope: !2)
!261 = !DILocation(line: 70, column: 29, scope: !2)
!262 = !DILocation(line: 70, column: 27, scope: !2)
!263 = !DILocation(line: 70, column: 7, scope: !2)
!264 = !DILocation(line: 71, column: 10, scope: !2)
!265 = !DILocation(line: 71, column: 15, scope: !2)
!266 = !DILocation(line: 71, column: 20, scope: !2)
!267 = !DILocation(line: 71, column: 17, scope: !2)
!268 = !DILocation(line: 71, column: 12, scope: !2)
!269 = !DILocation(line: 71, column: 29, scope: !2)
!270 = !DILocation(line: 71, column: 27, scope: !2)
!271 = !DILocation(line: 71, column: 7, scope: !2)
!272 = !DILocation(line: 73, column: 10, scope: !2)
!273 = !DILocation(line: 73, column: 15, scope: !2)
!274 = !DILocation(line: 73, column: 20, scope: !2)
!275 = !DILocation(line: 73, column: 17, scope: !2)
!276 = !DILocation(line: 73, column: 12, scope: !2)
!277 = !DILocation(line: 73, column: 29, scope: !2)
!278 = !DILocation(line: 73, column: 27, scope: !2)
!279 = !DILocation(line: 73, column: 7, scope: !2)
!280 = !DILocation(line: 74, column: 10, scope: !2)
!281 = !DILocation(line: 74, column: 15, scope: !2)
!282 = !DILocation(line: 74, column: 20, scope: !2)
!283 = !DILocation(line: 74, column: 17, scope: !2)
!284 = !DILocation(line: 74, column: 12, scope: !2)
!285 = !DILocation(line: 74, column: 29, scope: !2)
!286 = !DILocation(line: 74, column: 27, scope: !2)
!287 = !DILocation(line: 74, column: 7, scope: !2)
!288 = !DILocation(line: 76, column: 12, scope: !2)
!289 = !DILocation(line: 76, column: 17, scope: !2)
!290 = !DILocation(line: 76, column: 19, scope: !2)
!291 = !DILocation(line: 76, column: 14, scope: !2)
!292 = !DILocation(line: 76, column: 5, scope: !2)
!293 = distinct !DISubprogram(name: "geohashEncodeType", scope: !3, file: !3, line: 153, type: !294, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!294 = !DISubroutineType(types: !295)
!295 = !{!75, !53, !53, !78, !81}
!296 = !DILocalVariable(name: "longitude", arg: 1, scope: !293, file: !3, line: 153, type: !53)
!297 = !DILocation(line: 153, column: 30, scope: !293)
!298 = !DILocalVariable(name: "latitude", arg: 2, scope: !293, file: !3, line: 153, type: !53)
!299 = !DILocation(line: 153, column: 48, scope: !293)
!300 = !DILocalVariable(name: "step", arg: 3, scope: !293, file: !3, line: 153, type: !78)
!301 = !DILocation(line: 153, column: 66, scope: !293)
!302 = !DILocalVariable(name: "hash", arg: 4, scope: !293, file: !3, line: 153, type: !81)
!303 = !DILocation(line: 153, column: 85, scope: !293)
!304 = !DILocalVariable(name: "r", scope: !293, file: !3, line: 154, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 2)
!308 = !DILocation(line: 154, column: 18, scope: !293)
!309 = !DILocation(line: 155, column: 27, scope: !293)
!310 = !DILocation(line: 155, column: 34, scope: !293)
!311 = !DILocation(line: 155, column: 5, scope: !293)
!312 = !DILocation(line: 156, column: 27, scope: !293)
!313 = !DILocation(line: 156, column: 34, scope: !293)
!314 = !DILocation(line: 156, column: 40, scope: !293)
!315 = !DILocation(line: 156, column: 51, scope: !293)
!316 = !DILocation(line: 156, column: 61, scope: !293)
!317 = !DILocation(line: 156, column: 67, scope: !293)
!318 = !DILocation(line: 156, column: 12, scope: !293)
!319 = !DILocation(line: 156, column: 5, scope: !293)
!320 = distinct !DISubprogram(name: "geohashEncodeWGS84", scope: !3, file: !3, line: 159, type: !294, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!321 = !DILocalVariable(name: "longitude", arg: 1, scope: !320, file: !3, line: 159, type: !53)
!322 = !DILocation(line: 159, column: 31, scope: !320)
!323 = !DILocalVariable(name: "latitude", arg: 2, scope: !320, file: !3, line: 159, type: !53)
!324 = !DILocation(line: 159, column: 49, scope: !320)
!325 = !DILocalVariable(name: "step", arg: 3, scope: !320, file: !3, line: 159, type: !78)
!326 = !DILocation(line: 159, column: 67, scope: !320)
!327 = !DILocalVariable(name: "hash", arg: 4, scope: !320, file: !3, line: 160, type: !81)
!328 = !DILocation(line: 160, column: 37, scope: !320)
!329 = !DILocation(line: 161, column: 30, scope: !320)
!330 = !DILocation(line: 161, column: 41, scope: !320)
!331 = !DILocation(line: 161, column: 51, scope: !320)
!332 = !DILocation(line: 161, column: 57, scope: !320)
!333 = !DILocation(line: 161, column: 12, scope: !320)
!334 = !DILocation(line: 161, column: 5, scope: !320)
!335 = distinct !DISubprogram(name: "geohashDecode", scope: !3, file: !3, line: 164, type: !336, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!336 = !DISubroutineType(types: !337)
!337 = !{!75, !77, !77, !338, !339}
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !49, line: 79, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 75, size: 384, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !341, file: !49, line: 76, baseType: !82, size: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !341, file: !49, line: 77, baseType: !48, size: 128, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !341, file: !49, line: 78, baseType: !48, size: 128, offset: 256)
!346 = !DILocalVariable(name: "long_range", arg: 1, scope: !335, file: !3, line: 164, type: !77)
!347 = !DILocation(line: 164, column: 38, scope: !335)
!348 = !DILocalVariable(name: "lat_range", arg: 2, scope: !335, file: !3, line: 164, type: !77)
!349 = !DILocation(line: 164, column: 69, scope: !335)
!350 = !DILocalVariable(name: "hash", arg: 3, scope: !335, file: !3, line: 165, type: !338)
!351 = !DILocation(line: 165, column: 38, scope: !335)
!352 = !DILocalVariable(name: "area", arg: 4, scope: !335, file: !3, line: 165, type: !339)
!353 = !DILocation(line: 165, column: 57, scope: !335)
!354 = !DILocation(line: 166, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !335, file: !3, line: 166, column: 9)
!356 = !DILocation(line: 166, column: 26, scope: !355)
!357 = !DILocation(line: 166, column: 37, scope: !355)
!358 = !DILocation(line: 166, column: 34, scope: !355)
!359 = !DILocation(line: 166, column: 42, scope: !355)
!360 = !DILocation(line: 166, column: 45, scope: !355)
!361 = !DILocation(line: 166, column: 68, scope: !355)
!362 = !DILocation(line: 167, column: 9, scope: !355)
!363 = !DILocation(line: 166, column: 9, scope: !335)
!364 = !DILocation(line: 168, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !355, file: !3, line: 167, column: 34)
!366 = !DILocation(line: 171, column: 5, scope: !335)
!367 = !DILocation(line: 171, column: 11, scope: !335)
!368 = !DILocation(line: 171, column: 18, scope: !335)
!369 = !DILocalVariable(name: "step", scope: !335, file: !3, line: 172, type: !78)
!370 = !DILocation(line: 172, column: 13, scope: !335)
!371 = !DILocation(line: 172, column: 25, scope: !335)
!372 = !DILocalVariable(name: "hash_sep", scope: !335, file: !3, line: 173, type: !6)
!373 = !DILocation(line: 173, column: 14, scope: !335)
!374 = !DILocation(line: 173, column: 45, scope: !335)
!375 = !DILocation(line: 173, column: 25, scope: !335)
!376 = !DILocalVariable(name: "lat_scale", scope: !335, file: !3, line: 175, type: !53)
!377 = !DILocation(line: 175, column: 12, scope: !335)
!378 = !DILocation(line: 175, column: 34, scope: !335)
!379 = !DILocation(line: 175, column: 50, scope: !335)
!380 = !DILocation(line: 175, column: 38, scope: !335)
!381 = !DILocalVariable(name: "long_scale", scope: !335, file: !3, line: 176, type: !53)
!382 = !DILocation(line: 176, column: 12, scope: !335)
!383 = !DILocation(line: 176, column: 36, scope: !335)
!384 = !DILocation(line: 176, column: 53, scope: !335)
!385 = !DILocation(line: 176, column: 40, scope: !335)
!386 = !DILocalVariable(name: "ilato", scope: !335, file: !3, line: 178, type: !11)
!387 = !DILocation(line: 178, column: 14, scope: !335)
!388 = !DILocation(line: 178, column: 22, scope: !335)
!389 = !DILocalVariable(name: "ilono", scope: !335, file: !3, line: 179, type: !11)
!390 = !DILocation(line: 179, column: 14, scope: !335)
!391 = !DILocation(line: 179, column: 22, scope: !335)
!392 = !DILocation(line: 179, column: 31, scope: !335)
!393 = !DILocation(line: 185, column: 19, scope: !335)
!394 = !DILocation(line: 185, column: 26, scope: !335)
!395 = !DILocation(line: 185, column: 32, scope: !335)
!396 = !DILocation(line: 185, column: 49, scope: !335)
!397 = !DILocation(line: 185, column: 46, scope: !335)
!398 = !DILocation(line: 185, column: 40, scope: !335)
!399 = !DILocation(line: 185, column: 38, scope: !335)
!400 = !DILocation(line: 185, column: 58, scope: !335)
!401 = !DILocation(line: 185, column: 56, scope: !335)
!402 = !DILocation(line: 185, column: 23, scope: !335)
!403 = !DILocation(line: 184, column: 5, scope: !335)
!404 = !DILocation(line: 184, column: 11, scope: !335)
!405 = !DILocation(line: 184, column: 20, scope: !335)
!406 = !DILocation(line: 184, column: 24, scope: !335)
!407 = !DILocation(line: 187, column: 19, scope: !335)
!408 = !DILocation(line: 187, column: 27, scope: !335)
!409 = !DILocation(line: 187, column: 33, scope: !335)
!410 = !DILocation(line: 187, column: 26, scope: !335)
!411 = !DILocation(line: 187, column: 38, scope: !335)
!412 = !DILocation(line: 187, column: 55, scope: !335)
!413 = !DILocation(line: 187, column: 52, scope: !335)
!414 = !DILocation(line: 187, column: 46, scope: !335)
!415 = !DILocation(line: 187, column: 44, scope: !335)
!416 = !DILocation(line: 187, column: 64, scope: !335)
!417 = !DILocation(line: 187, column: 62, scope: !335)
!418 = !DILocation(line: 187, column: 23, scope: !335)
!419 = !DILocation(line: 186, column: 5, scope: !335)
!420 = !DILocation(line: 186, column: 11, scope: !335)
!421 = !DILocation(line: 186, column: 20, scope: !335)
!422 = !DILocation(line: 186, column: 24, scope: !335)
!423 = !DILocation(line: 189, column: 20, scope: !335)
!424 = !DILocation(line: 189, column: 27, scope: !335)
!425 = !DILocation(line: 189, column: 33, scope: !335)
!426 = !DILocation(line: 189, column: 50, scope: !335)
!427 = !DILocation(line: 189, column: 47, scope: !335)
!428 = !DILocation(line: 189, column: 41, scope: !335)
!429 = !DILocation(line: 189, column: 39, scope: !335)
!430 = !DILocation(line: 189, column: 59, scope: !335)
!431 = !DILocation(line: 189, column: 57, scope: !335)
!432 = !DILocation(line: 189, column: 24, scope: !335)
!433 = !DILocation(line: 188, column: 5, scope: !335)
!434 = !DILocation(line: 188, column: 11, scope: !335)
!435 = !DILocation(line: 188, column: 21, scope: !335)
!436 = !DILocation(line: 188, column: 25, scope: !335)
!437 = !DILocation(line: 191, column: 20, scope: !335)
!438 = !DILocation(line: 191, column: 28, scope: !335)
!439 = !DILocation(line: 191, column: 34, scope: !335)
!440 = !DILocation(line: 191, column: 27, scope: !335)
!441 = !DILocation(line: 191, column: 39, scope: !335)
!442 = !DILocation(line: 191, column: 56, scope: !335)
!443 = !DILocation(line: 191, column: 53, scope: !335)
!444 = !DILocation(line: 191, column: 47, scope: !335)
!445 = !DILocation(line: 191, column: 45, scope: !335)
!446 = !DILocation(line: 191, column: 65, scope: !335)
!447 = !DILocation(line: 191, column: 63, scope: !335)
!448 = !DILocation(line: 191, column: 24, scope: !335)
!449 = !DILocation(line: 190, column: 5, scope: !335)
!450 = !DILocation(line: 190, column: 11, scope: !335)
!451 = !DILocation(line: 190, column: 21, scope: !335)
!452 = !DILocation(line: 190, column: 25, scope: !335)
!453 = !DILocation(line: 193, column: 5, scope: !335)
!454 = !DILocation(line: 194, column: 1, scope: !335)
!455 = !DILocalVariable(name: "interleaved", arg: 1, scope: !27, file: !3, line: 82, type: !6)
!456 = !DILocation(line: 82, column: 48, scope: !27)
!457 = !DILocalVariable(name: "x", scope: !27, file: !3, line: 88, type: !6)
!458 = !DILocation(line: 88, column: 14, scope: !27)
!459 = !DILocation(line: 88, column: 18, scope: !27)
!460 = !DILocalVariable(name: "y", scope: !27, file: !3, line: 89, type: !6)
!461 = !DILocation(line: 89, column: 14, scope: !27)
!462 = !DILocation(line: 89, column: 18, scope: !27)
!463 = !DILocation(line: 89, column: 30, scope: !27)
!464 = !DILocation(line: 91, column: 10, scope: !27)
!465 = !DILocation(line: 91, column: 15, scope: !27)
!466 = !DILocation(line: 91, column: 20, scope: !27)
!467 = !DILocation(line: 91, column: 17, scope: !27)
!468 = !DILocation(line: 91, column: 12, scope: !27)
!469 = !DILocation(line: 91, column: 29, scope: !27)
!470 = !DILocation(line: 91, column: 27, scope: !27)
!471 = !DILocation(line: 91, column: 7, scope: !27)
!472 = !DILocation(line: 92, column: 10, scope: !27)
!473 = !DILocation(line: 92, column: 15, scope: !27)
!474 = !DILocation(line: 92, column: 20, scope: !27)
!475 = !DILocation(line: 92, column: 17, scope: !27)
!476 = !DILocation(line: 92, column: 12, scope: !27)
!477 = !DILocation(line: 92, column: 29, scope: !27)
!478 = !DILocation(line: 92, column: 27, scope: !27)
!479 = !DILocation(line: 92, column: 7, scope: !27)
!480 = !DILocation(line: 94, column: 10, scope: !27)
!481 = !DILocation(line: 94, column: 15, scope: !27)
!482 = !DILocation(line: 94, column: 20, scope: !27)
!483 = !DILocation(line: 94, column: 17, scope: !27)
!484 = !DILocation(line: 94, column: 12, scope: !27)
!485 = !DILocation(line: 94, column: 29, scope: !27)
!486 = !DILocation(line: 94, column: 27, scope: !27)
!487 = !DILocation(line: 94, column: 7, scope: !27)
!488 = !DILocation(line: 95, column: 10, scope: !27)
!489 = !DILocation(line: 95, column: 15, scope: !27)
!490 = !DILocation(line: 95, column: 20, scope: !27)
!491 = !DILocation(line: 95, column: 17, scope: !27)
!492 = !DILocation(line: 95, column: 12, scope: !27)
!493 = !DILocation(line: 95, column: 29, scope: !27)
!494 = !DILocation(line: 95, column: 27, scope: !27)
!495 = !DILocation(line: 95, column: 7, scope: !27)
!496 = !DILocation(line: 97, column: 10, scope: !27)
!497 = !DILocation(line: 97, column: 15, scope: !27)
!498 = !DILocation(line: 97, column: 20, scope: !27)
!499 = !DILocation(line: 97, column: 17, scope: !27)
!500 = !DILocation(line: 97, column: 12, scope: !27)
!501 = !DILocation(line: 97, column: 29, scope: !27)
!502 = !DILocation(line: 97, column: 27, scope: !27)
!503 = !DILocation(line: 97, column: 7, scope: !27)
!504 = !DILocation(line: 98, column: 10, scope: !27)
!505 = !DILocation(line: 98, column: 15, scope: !27)
!506 = !DILocation(line: 98, column: 20, scope: !27)
!507 = !DILocation(line: 98, column: 17, scope: !27)
!508 = !DILocation(line: 98, column: 12, scope: !27)
!509 = !DILocation(line: 98, column: 29, scope: !27)
!510 = !DILocation(line: 98, column: 27, scope: !27)
!511 = !DILocation(line: 98, column: 7, scope: !27)
!512 = !DILocation(line: 100, column: 10, scope: !27)
!513 = !DILocation(line: 100, column: 15, scope: !27)
!514 = !DILocation(line: 100, column: 20, scope: !27)
!515 = !DILocation(line: 100, column: 17, scope: !27)
!516 = !DILocation(line: 100, column: 12, scope: !27)
!517 = !DILocation(line: 100, column: 29, scope: !27)
!518 = !DILocation(line: 100, column: 27, scope: !27)
!519 = !DILocation(line: 100, column: 7, scope: !27)
!520 = !DILocation(line: 101, column: 10, scope: !27)
!521 = !DILocation(line: 101, column: 15, scope: !27)
!522 = !DILocation(line: 101, column: 20, scope: !27)
!523 = !DILocation(line: 101, column: 17, scope: !27)
!524 = !DILocation(line: 101, column: 12, scope: !27)
!525 = !DILocation(line: 101, column: 29, scope: !27)
!526 = !DILocation(line: 101, column: 27, scope: !27)
!527 = !DILocation(line: 101, column: 7, scope: !27)
!528 = !DILocation(line: 103, column: 10, scope: !27)
!529 = !DILocation(line: 103, column: 15, scope: !27)
!530 = !DILocation(line: 103, column: 20, scope: !27)
!531 = !DILocation(line: 103, column: 17, scope: !27)
!532 = !DILocation(line: 103, column: 12, scope: !27)
!533 = !DILocation(line: 103, column: 29, scope: !27)
!534 = !DILocation(line: 103, column: 27, scope: !27)
!535 = !DILocation(line: 103, column: 7, scope: !27)
!536 = !DILocation(line: 104, column: 10, scope: !27)
!537 = !DILocation(line: 104, column: 15, scope: !27)
!538 = !DILocation(line: 104, column: 20, scope: !27)
!539 = !DILocation(line: 104, column: 17, scope: !27)
!540 = !DILocation(line: 104, column: 12, scope: !27)
!541 = !DILocation(line: 104, column: 29, scope: !27)
!542 = !DILocation(line: 104, column: 27, scope: !27)
!543 = !DILocation(line: 104, column: 7, scope: !27)
!544 = !DILocation(line: 106, column: 10, scope: !27)
!545 = !DILocation(line: 106, column: 15, scope: !27)
!546 = !DILocation(line: 106, column: 20, scope: !27)
!547 = !DILocation(line: 106, column: 17, scope: !27)
!548 = !DILocation(line: 106, column: 12, scope: !27)
!549 = !DILocation(line: 106, column: 29, scope: !27)
!550 = !DILocation(line: 106, column: 27, scope: !27)
!551 = !DILocation(line: 106, column: 7, scope: !27)
!552 = !DILocation(line: 107, column: 10, scope: !27)
!553 = !DILocation(line: 107, column: 15, scope: !27)
!554 = !DILocation(line: 107, column: 20, scope: !27)
!555 = !DILocation(line: 107, column: 17, scope: !27)
!556 = !DILocation(line: 107, column: 12, scope: !27)
!557 = !DILocation(line: 107, column: 29, scope: !27)
!558 = !DILocation(line: 107, column: 27, scope: !27)
!559 = !DILocation(line: 107, column: 7, scope: !27)
!560 = !DILocation(line: 109, column: 12, scope: !27)
!561 = !DILocation(line: 109, column: 17, scope: !27)
!562 = !DILocation(line: 109, column: 19, scope: !27)
!563 = !DILocation(line: 109, column: 14, scope: !27)
!564 = !DILocation(line: 109, column: 5, scope: !27)
!565 = distinct !DISubprogram(name: "geohashDecodeType", scope: !3, file: !3, line: 196, type: !566, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!566 = !DISubroutineType(types: !567)
!567 = !{!75, !338, !339}
!568 = !DILocalVariable(name: "hash", arg: 1, scope: !565, file: !3, line: 196, type: !338)
!569 = !DILocation(line: 196, column: 41, scope: !565)
!570 = !DILocalVariable(name: "area", arg: 2, scope: !565, file: !3, line: 196, type: !339)
!571 = !DILocation(line: 196, column: 60, scope: !565)
!572 = !DILocalVariable(name: "r", scope: !565, file: !3, line: 197, type: !305)
!573 = !DILocation(line: 197, column: 18, scope: !565)
!574 = !DILocation(line: 198, column: 27, scope: !565)
!575 = !DILocation(line: 198, column: 34, scope: !565)
!576 = !DILocation(line: 198, column: 5, scope: !565)
!577 = !DILocation(line: 199, column: 26, scope: !565)
!578 = !DILocation(line: 199, column: 32, scope: !565)
!579 = !DILocation(line: 199, column: 44, scope: !565)
!580 = !DILocation(line: 199, column: 12, scope: !565)
!581 = !DILocation(line: 199, column: 5, scope: !565)
!582 = distinct !DISubprogram(name: "geohashDecodeWGS84", scope: !3, file: !3, line: 202, type: !566, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!583 = !DILocalVariable(name: "hash", arg: 1, scope: !582, file: !3, line: 202, type: !338)
!584 = !DILocation(line: 202, column: 42, scope: !582)
!585 = !DILocalVariable(name: "area", arg: 2, scope: !582, file: !3, line: 202, type: !339)
!586 = !DILocation(line: 202, column: 61, scope: !582)
!587 = !DILocation(line: 203, column: 36, scope: !582)
!588 = !DILocation(line: 203, column: 12, scope: !582)
!589 = !DILocation(line: 203, column: 5, scope: !582)
!590 = distinct !DISubprogram(name: "geohashDecodeAreaToLongLat", scope: !3, file: !3, line: 206, type: !591, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!591 = !DISubroutineType(types: !592)
!592 = !{!75, !593, !595}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!596 = !DILocalVariable(name: "area", arg: 1, scope: !590, file: !3, line: 206, type: !593)
!597 = !DILocation(line: 206, column: 51, scope: !590)
!598 = !DILocalVariable(name: "xy", arg: 2, scope: !590, file: !3, line: 206, type: !595)
!599 = !DILocation(line: 206, column: 65, scope: !590)
!600 = !DILocation(line: 207, column: 10, scope: !601)
!601 = distinct !DILexicalBlock(scope: !590, file: !3, line: 207, column: 9)
!602 = !DILocation(line: 207, column: 9, scope: !590)
!603 = !DILocation(line: 207, column: 14, scope: !601)
!604 = !DILocation(line: 208, column: 14, scope: !590)
!605 = !DILocation(line: 208, column: 20, scope: !590)
!606 = !DILocation(line: 208, column: 30, scope: !590)
!607 = !DILocation(line: 208, column: 36, scope: !590)
!608 = !DILocation(line: 208, column: 42, scope: !590)
!609 = !DILocation(line: 208, column: 52, scope: !590)
!610 = !DILocation(line: 208, column: 34, scope: !590)
!611 = !DILocation(line: 208, column: 57, scope: !590)
!612 = !DILocation(line: 208, column: 5, scope: !590)
!613 = !DILocation(line: 208, column: 11, scope: !590)
!614 = !DILocation(line: 209, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !590, file: !3, line: 209, column: 9)
!616 = !DILocation(line: 209, column: 15, scope: !615)
!617 = !DILocation(line: 209, column: 9, scope: !590)
!618 = !DILocation(line: 209, column: 31, scope: !615)
!619 = !DILocation(line: 209, column: 37, scope: !615)
!620 = !DILocation(line: 210, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !590, file: !3, line: 210, column: 9)
!622 = !DILocation(line: 210, column: 15, scope: !621)
!623 = !DILocation(line: 210, column: 9, scope: !590)
!624 = !DILocation(line: 210, column: 31, scope: !621)
!625 = !DILocation(line: 210, column: 37, scope: !621)
!626 = !DILocation(line: 211, column: 14, scope: !590)
!627 = !DILocation(line: 211, column: 20, scope: !590)
!628 = !DILocation(line: 211, column: 29, scope: !590)
!629 = !DILocation(line: 211, column: 35, scope: !590)
!630 = !DILocation(line: 211, column: 41, scope: !590)
!631 = !DILocation(line: 211, column: 50, scope: !590)
!632 = !DILocation(line: 211, column: 33, scope: !590)
!633 = !DILocation(line: 211, column: 55, scope: !590)
!634 = !DILocation(line: 211, column: 5, scope: !590)
!635 = !DILocation(line: 211, column: 11, scope: !590)
!636 = !DILocation(line: 212, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !590, file: !3, line: 212, column: 9)
!638 = !DILocation(line: 212, column: 15, scope: !637)
!639 = !DILocation(line: 212, column: 9, scope: !590)
!640 = !DILocation(line: 212, column: 30, scope: !637)
!641 = !DILocation(line: 212, column: 36, scope: !637)
!642 = !DILocation(line: 213, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !590, file: !3, line: 213, column: 9)
!644 = !DILocation(line: 213, column: 15, scope: !643)
!645 = !DILocation(line: 213, column: 9, scope: !590)
!646 = !DILocation(line: 213, column: 30, scope: !643)
!647 = !DILocation(line: 213, column: 36, scope: !643)
!648 = !DILocation(line: 214, column: 5, scope: !590)
!649 = !DILocation(line: 215, column: 1, scope: !590)
!650 = distinct !DISubprogram(name: "geohashDecodeToLongLatType", scope: !3, file: !3, line: 217, type: !651, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!651 = !DISubroutineType(types: !652)
!652 = !{!75, !338, !595}
!653 = !DILocalVariable(name: "hash", arg: 1, scope: !650, file: !3, line: 217, type: !338)
!654 = !DILocation(line: 217, column: 50, scope: !650)
!655 = !DILocalVariable(name: "xy", arg: 2, scope: !650, file: !3, line: 217, type: !595)
!656 = !DILocation(line: 217, column: 64, scope: !650)
!657 = !DILocalVariable(name: "area", scope: !650, file: !3, line: 218, type: !340)
!658 = !DILocation(line: 218, column: 17, scope: !650)
!659 = !DILocation(line: 219, column: 10, scope: !660)
!660 = distinct !DILexicalBlock(scope: !650, file: !3, line: 219, column: 9)
!661 = !DILocation(line: 219, column: 13, scope: !660)
!662 = !DILocation(line: 219, column: 17, scope: !660)
!663 = !DILocation(line: 219, column: 9, scope: !650)
!664 = !DILocation(line: 220, column: 9, scope: !660)
!665 = !DILocation(line: 221, column: 46, scope: !650)
!666 = !DILocation(line: 221, column: 12, scope: !650)
!667 = !DILocation(line: 221, column: 5, scope: !650)
!668 = !DILocation(line: 222, column: 1, scope: !650)
!669 = distinct !DISubprogram(name: "geohashDecodeToLongLatWGS84", scope: !3, file: !3, line: 224, type: !651, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!670 = !DILocalVariable(name: "hash", arg: 1, scope: !669, file: !3, line: 224, type: !338)
!671 = !DILocation(line: 224, column: 51, scope: !669)
!672 = !DILocalVariable(name: "xy", arg: 2, scope: !669, file: !3, line: 224, type: !595)
!673 = !DILocation(line: 224, column: 65, scope: !669)
!674 = !DILocation(line: 225, column: 45, scope: !669)
!675 = !DILocation(line: 225, column: 12, scope: !669)
!676 = !DILocation(line: 225, column: 5, scope: !669)
!677 = distinct !DISubprogram(name: "geohashNeighbors", scope: !3, file: !3, line: 266, type: !678, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !15)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !680, !681}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !49, line: 90, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 81, size: 1024, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !683, file: !49, line: 82, baseType: !82, size: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !683, file: !49, line: 83, baseType: !82, size: 128, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !683, file: !49, line: 84, baseType: !82, size: 128, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !683, file: !49, line: 85, baseType: !82, size: 128, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !683, file: !49, line: 86, baseType: !82, size: 128, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !683, file: !49, line: 87, baseType: !82, size: 128, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !683, file: !49, line: 88, baseType: !82, size: 128, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !683, file: !49, line: 89, baseType: !82, size: 128, offset: 896)
!693 = !DILocalVariable(name: "hash", arg: 1, scope: !677, file: !3, line: 266, type: !680)
!694 = !DILocation(line: 266, column: 42, scope: !677)
!695 = !DILocalVariable(name: "neighbors", arg: 2, scope: !677, file: !3, line: 266, type: !681)
!696 = !DILocation(line: 266, column: 66, scope: !677)
!697 = !DILocation(line: 267, column: 5, scope: !677)
!698 = !DILocation(line: 267, column: 16, scope: !677)
!699 = !DILocation(line: 267, column: 24, scope: !677)
!700 = !DILocation(line: 267, column: 23, scope: !677)
!701 = !DILocation(line: 268, column: 5, scope: !677)
!702 = !DILocation(line: 268, column: 16, scope: !677)
!703 = !DILocation(line: 268, column: 24, scope: !677)
!704 = !DILocation(line: 268, column: 23, scope: !677)
!705 = !DILocation(line: 269, column: 5, scope: !677)
!706 = !DILocation(line: 269, column: 16, scope: !677)
!707 = !DILocation(line: 269, column: 25, scope: !677)
!708 = !DILocation(line: 269, column: 24, scope: !677)
!709 = !DILocation(line: 270, column: 5, scope: !677)
!710 = !DILocation(line: 270, column: 16, scope: !677)
!711 = !DILocation(line: 270, column: 25, scope: !677)
!712 = !DILocation(line: 270, column: 24, scope: !677)
!713 = !DILocation(line: 271, column: 5, scope: !677)
!714 = !DILocation(line: 271, column: 16, scope: !677)
!715 = !DILocation(line: 271, column: 30, scope: !677)
!716 = !DILocation(line: 271, column: 29, scope: !677)
!717 = !DILocation(line: 272, column: 5, scope: !677)
!718 = !DILocation(line: 272, column: 16, scope: !677)
!719 = !DILocation(line: 272, column: 30, scope: !677)
!720 = !DILocation(line: 272, column: 29, scope: !677)
!721 = !DILocation(line: 273, column: 5, scope: !677)
!722 = !DILocation(line: 273, column: 16, scope: !677)
!723 = !DILocation(line: 273, column: 30, scope: !677)
!724 = !DILocation(line: 273, column: 29, scope: !677)
!725 = !DILocation(line: 274, column: 5, scope: !677)
!726 = !DILocation(line: 274, column: 16, scope: !677)
!727 = !DILocation(line: 274, column: 30, scope: !677)
!728 = !DILocation(line: 274, column: 29, scope: !677)
!729 = !DILocation(line: 276, column: 21, scope: !677)
!730 = !DILocation(line: 276, column: 32, scope: !677)
!731 = !DILocation(line: 276, column: 5, scope: !677)
!732 = !DILocation(line: 277, column: 21, scope: !677)
!733 = !DILocation(line: 277, column: 32, scope: !677)
!734 = !DILocation(line: 277, column: 5, scope: !677)
!735 = !DILocation(line: 279, column: 21, scope: !677)
!736 = !DILocation(line: 279, column: 32, scope: !677)
!737 = !DILocation(line: 279, column: 5, scope: !677)
!738 = !DILocation(line: 280, column: 21, scope: !677)
!739 = !DILocation(line: 280, column: 32, scope: !677)
!740 = !DILocation(line: 280, column: 5, scope: !677)
!741 = !DILocation(line: 282, column: 21, scope: !677)
!742 = !DILocation(line: 282, column: 32, scope: !677)
!743 = !DILocation(line: 282, column: 5, scope: !677)
!744 = !DILocation(line: 283, column: 21, scope: !677)
!745 = !DILocation(line: 283, column: 32, scope: !677)
!746 = !DILocation(line: 283, column: 5, scope: !677)
!747 = !DILocation(line: 285, column: 21, scope: !677)
!748 = !DILocation(line: 285, column: 32, scope: !677)
!749 = !DILocation(line: 285, column: 5, scope: !677)
!750 = !DILocation(line: 286, column: 21, scope: !677)
!751 = !DILocation(line: 286, column: 32, scope: !677)
!752 = !DILocation(line: 286, column: 5, scope: !677)
!753 = !DILocation(line: 288, column: 21, scope: !677)
!754 = !DILocation(line: 288, column: 32, scope: !677)
!755 = !DILocation(line: 288, column: 5, scope: !677)
!756 = !DILocation(line: 289, column: 21, scope: !677)
!757 = !DILocation(line: 289, column: 32, scope: !677)
!758 = !DILocation(line: 289, column: 5, scope: !677)
!759 = !DILocation(line: 291, column: 21, scope: !677)
!760 = !DILocation(line: 291, column: 32, scope: !677)
!761 = !DILocation(line: 291, column: 5, scope: !677)
!762 = !DILocation(line: 292, column: 21, scope: !677)
!763 = !DILocation(line: 292, column: 32, scope: !677)
!764 = !DILocation(line: 292, column: 5, scope: !677)
!765 = !DILocation(line: 294, column: 21, scope: !677)
!766 = !DILocation(line: 294, column: 32, scope: !677)
!767 = !DILocation(line: 294, column: 5, scope: !677)
!768 = !DILocation(line: 295, column: 21, scope: !677)
!769 = !DILocation(line: 295, column: 32, scope: !677)
!770 = !DILocation(line: 295, column: 5, scope: !677)
!771 = !DILocation(line: 297, column: 21, scope: !677)
!772 = !DILocation(line: 297, column: 32, scope: !677)
!773 = !DILocation(line: 297, column: 5, scope: !677)
!774 = !DILocation(line: 298, column: 21, scope: !677)
!775 = !DILocation(line: 298, column: 32, scope: !677)
!776 = !DILocation(line: 298, column: 5, scope: !677)
!777 = !DILocation(line: 299, column: 1, scope: !677)
!778 = distinct !DISubprogram(name: "geohash_move_x", scope: !3, file: !3, line: 228, type: !779, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !15)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !81, !781}
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !782, line: 24, baseType: !783)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !9, line: 37, baseType: !784)
!784 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!785 = !DILocalVariable(name: "hash", arg: 1, scope: !778, file: !3, line: 228, type: !81)
!786 = !DILocation(line: 228, column: 41, scope: !778)
!787 = !DILocalVariable(name: "d", arg: 2, scope: !778, file: !3, line: 228, type: !781)
!788 = !DILocation(line: 228, column: 54, scope: !778)
!789 = !DILocation(line: 229, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !778, file: !3, line: 229, column: 9)
!791 = !DILocation(line: 229, column: 11, scope: !790)
!792 = !DILocation(line: 229, column: 9, scope: !778)
!793 = !DILocation(line: 230, column: 9, scope: !790)
!794 = !DILocalVariable(name: "x", scope: !778, file: !3, line: 232, type: !6)
!795 = !DILocation(line: 232, column: 14, scope: !778)
!796 = !DILocation(line: 232, column: 18, scope: !778)
!797 = !DILocation(line: 232, column: 24, scope: !778)
!798 = !DILocation(line: 232, column: 29, scope: !778)
!799 = !DILocalVariable(name: "y", scope: !778, file: !3, line: 233, type: !6)
!800 = !DILocation(line: 233, column: 14, scope: !778)
!801 = !DILocation(line: 233, column: 18, scope: !778)
!802 = !DILocation(line: 233, column: 24, scope: !778)
!803 = !DILocation(line: 233, column: 29, scope: !778)
!804 = !DILocalVariable(name: "zz", scope: !778, file: !3, line: 235, type: !6)
!805 = !DILocation(line: 235, column: 14, scope: !778)
!806 = !DILocation(line: 235, column: 50, scope: !778)
!807 = !DILocation(line: 235, column: 56, scope: !778)
!808 = !DILocation(line: 235, column: 61, scope: !778)
!809 = !DILocation(line: 235, column: 48, scope: !778)
!810 = !DILocation(line: 235, column: 41, scope: !778)
!811 = !DILocation(line: 237, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !778, file: !3, line: 237, column: 9)
!813 = !DILocation(line: 237, column: 11, scope: !812)
!814 = !DILocation(line: 237, column: 9, scope: !778)
!815 = !DILocation(line: 238, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !3, line: 237, column: 16)
!817 = !DILocation(line: 238, column: 18, scope: !816)
!818 = !DILocation(line: 238, column: 21, scope: !816)
!819 = !DILocation(line: 238, column: 15, scope: !816)
!820 = !DILocation(line: 238, column: 11, scope: !816)
!821 = !DILocation(line: 239, column: 5, scope: !816)
!822 = !DILocation(line: 240, column: 13, scope: !823)
!823 = distinct !DILexicalBlock(scope: !812, file: !3, line: 239, column: 12)
!824 = !DILocation(line: 240, column: 17, scope: !823)
!825 = !DILocation(line: 240, column: 15, scope: !823)
!826 = !DILocation(line: 240, column: 11, scope: !823)
!827 = !DILocation(line: 241, column: 13, scope: !823)
!828 = !DILocation(line: 241, column: 18, scope: !823)
!829 = !DILocation(line: 241, column: 21, scope: !823)
!830 = !DILocation(line: 241, column: 15, scope: !823)
!831 = !DILocation(line: 241, column: 11, scope: !823)
!832 = !DILocation(line: 244, column: 42, scope: !778)
!833 = !DILocation(line: 244, column: 48, scope: !778)
!834 = !DILocation(line: 244, column: 53, scope: !778)
!835 = !DILocation(line: 244, column: 40, scope: !778)
!836 = !DILocation(line: 244, column: 33, scope: !778)
!837 = !DILocation(line: 244, column: 7, scope: !778)
!838 = !DILocation(line: 245, column: 19, scope: !778)
!839 = !DILocation(line: 245, column: 23, scope: !778)
!840 = !DILocation(line: 245, column: 21, scope: !778)
!841 = !DILocation(line: 245, column: 5, scope: !778)
!842 = !DILocation(line: 245, column: 11, scope: !778)
!843 = !DILocation(line: 245, column: 16, scope: !778)
!844 = !DILocation(line: 246, column: 1, scope: !778)
!845 = distinct !DISubprogram(name: "geohash_move_y", scope: !3, file: !3, line: 248, type: !779, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !15)
!846 = !DILocalVariable(name: "hash", arg: 1, scope: !845, file: !3, line: 248, type: !81)
!847 = !DILocation(line: 248, column: 41, scope: !845)
!848 = !DILocalVariable(name: "d", arg: 2, scope: !845, file: !3, line: 248, type: !781)
!849 = !DILocation(line: 248, column: 54, scope: !845)
!850 = !DILocation(line: 249, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !845, file: !3, line: 249, column: 9)
!852 = !DILocation(line: 249, column: 11, scope: !851)
!853 = !DILocation(line: 249, column: 9, scope: !845)
!854 = !DILocation(line: 250, column: 9, scope: !851)
!855 = !DILocalVariable(name: "x", scope: !845, file: !3, line: 252, type: !6)
!856 = !DILocation(line: 252, column: 14, scope: !845)
!857 = !DILocation(line: 252, column: 18, scope: !845)
!858 = !DILocation(line: 252, column: 24, scope: !845)
!859 = !DILocation(line: 252, column: 29, scope: !845)
!860 = !DILocalVariable(name: "y", scope: !845, file: !3, line: 253, type: !6)
!861 = !DILocation(line: 253, column: 14, scope: !845)
!862 = !DILocation(line: 253, column: 18, scope: !845)
!863 = !DILocation(line: 253, column: 24, scope: !845)
!864 = !DILocation(line: 253, column: 29, scope: !845)
!865 = !DILocalVariable(name: "zz", scope: !845, file: !3, line: 255, type: !6)
!866 = !DILocation(line: 255, column: 14, scope: !845)
!867 = !DILocation(line: 255, column: 50, scope: !845)
!868 = !DILocation(line: 255, column: 56, scope: !845)
!869 = !DILocation(line: 255, column: 61, scope: !845)
!870 = !DILocation(line: 255, column: 48, scope: !845)
!871 = !DILocation(line: 255, column: 41, scope: !845)
!872 = !DILocation(line: 256, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !845, file: !3, line: 256, column: 9)
!874 = !DILocation(line: 256, column: 11, scope: !873)
!875 = !DILocation(line: 256, column: 9, scope: !845)
!876 = !DILocation(line: 257, column: 13, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !3, line: 256, column: 16)
!878 = !DILocation(line: 257, column: 18, scope: !877)
!879 = !DILocation(line: 257, column: 21, scope: !877)
!880 = !DILocation(line: 257, column: 15, scope: !877)
!881 = !DILocation(line: 257, column: 11, scope: !877)
!882 = !DILocation(line: 258, column: 5, scope: !877)
!883 = !DILocation(line: 259, column: 13, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !3, line: 258, column: 12)
!885 = !DILocation(line: 259, column: 17, scope: !884)
!886 = !DILocation(line: 259, column: 15, scope: !884)
!887 = !DILocation(line: 259, column: 11, scope: !884)
!888 = !DILocation(line: 260, column: 13, scope: !884)
!889 = !DILocation(line: 260, column: 18, scope: !884)
!890 = !DILocation(line: 260, column: 21, scope: !884)
!891 = !DILocation(line: 260, column: 15, scope: !884)
!892 = !DILocation(line: 260, column: 11, scope: !884)
!893 = !DILocation(line: 262, column: 42, scope: !845)
!894 = !DILocation(line: 262, column: 48, scope: !845)
!895 = !DILocation(line: 262, column: 53, scope: !845)
!896 = !DILocation(line: 262, column: 40, scope: !845)
!897 = !DILocation(line: 262, column: 33, scope: !845)
!898 = !DILocation(line: 262, column: 7, scope: !845)
!899 = !DILocation(line: 263, column: 19, scope: !845)
!900 = !DILocation(line: 263, column: 23, scope: !845)
!901 = !DILocation(line: 263, column: 21, scope: !845)
!902 = !DILocation(line: 263, column: 5, scope: !845)
!903 = !DILocation(line: 263, column: 11, scope: !845)
!904 = !DILocation(line: 263, column: 16, scope: !845)
!905 = !DILocation(line: 264, column: 1, scope: !845)
