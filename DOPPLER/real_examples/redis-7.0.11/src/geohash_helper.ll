; ModuleID = 'geohash_helper.c'
source_filename = "geohash_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GeoShape = type { i32, [2 x double], double, [4 x double], %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { double, double }
%struct.GeoHashRadius = type { %struct.GeoHashBits, %struct.GeoHashArea, %struct.GeoHashNeighbors }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashRange = type { double, double }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@DEG_TO_RAD = dso_local constant double 0x3F91DF46A2529D39, align 8, !dbg !0
@EARTH_RADIUS_IN_METERS = dso_local constant double 0x41584F6F63E51090, align 8, !dbg !6
@MERCATOR_MAX = dso_local constant double 0x41731C05E5EB851F, align 8, !dbg !10
@MERCATOR_MIN = dso_local constant double 0xC1731C05E5EB851F, align 8, !dbg !12

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @geohashEstimateStepsByRadius(double %range_meters, double %lat) #0 !dbg !20 {
entry:
  %retval = alloca i8, align 1
  %range_meters.addr = alloca double, align 8
  %lat.addr = alloca double, align 8
  %step = alloca i32, align 4
  store double %range_meters, double* %range_meters.addr, align 8
  call void @llvm.dbg.declare(metadata double* %range_meters.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store double %lat, double* %lat.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lat.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load double, double* %range_meters.addr, align 8, !dbg !32
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !34
  br i1 %cmp, label %if.then, label %if.end, !dbg !35

if.then:                                          ; preds = %entry
  store i8 26, i8* %retval, align 1, !dbg !36
  br label %return, !dbg !36

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %step, metadata !37, metadata !DIExpression()), !dbg !39
  store i32 1, i32* %step, align 4, !dbg !39
  br label %while.cond, !dbg !40

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load double, double* %range_meters.addr, align 8, !dbg !41
  %cmp1 = fcmp olt double %1, 0x41731C05E5EB851F, !dbg !42
  br i1 %cmp1, label %while.body, label %while.end, !dbg !40

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %range_meters.addr, align 8, !dbg !43
  %mul = fmul double %2, 2.000000e+00, !dbg !43
  store double %mul, double* %range_meters.addr, align 8, !dbg !43
  %3 = load i32, i32* %step, align 4, !dbg !45
  %inc = add nsw i32 %3, 1, !dbg !45
  store i32 %inc, i32* %step, align 4, !dbg !45
  br label %while.cond, !dbg !40, !llvm.loop !46

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %step, align 4, !dbg !49
  %sub = sub nsw i32 %4, 2, !dbg !49
  store i32 %sub, i32* %step, align 4, !dbg !49
  %5 = load double, double* %lat.addr, align 8, !dbg !50
  %cmp2 = fcmp ogt double %5, 6.600000e+01, !dbg !52
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !53

lor.lhs.false:                                    ; preds = %while.end
  %6 = load double, double* %lat.addr, align 8, !dbg !54
  %cmp3 = fcmp olt double %6, -6.600000e+01, !dbg !55
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !56

if.then4:                                         ; preds = %lor.lhs.false, %while.end
  %7 = load i32, i32* %step, align 4, !dbg !57
  %dec = add nsw i32 %7, -1, !dbg !57
  store i32 %dec, i32* %step, align 4, !dbg !57
  %8 = load double, double* %lat.addr, align 8, !dbg !59
  %cmp5 = fcmp ogt double %8, 8.000000e+01, !dbg !61
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6, !dbg !62

lor.lhs.false6:                                   ; preds = %if.then4
  %9 = load double, double* %lat.addr, align 8, !dbg !63
  %cmp7 = fcmp olt double %9, -8.000000e+01, !dbg !64
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !65

if.then8:                                         ; preds = %lor.lhs.false6, %if.then4
  %10 = load i32, i32* %step, align 4, !dbg !66
  %dec9 = add nsw i32 %10, -1, !dbg !66
  store i32 %dec9, i32* %step, align 4, !dbg !66
  br label %if.end10, !dbg !67

if.end10:                                         ; preds = %if.then8, %lor.lhs.false6
  br label %if.end11, !dbg !68

if.end11:                                         ; preds = %if.end10, %lor.lhs.false
  %11 = load i32, i32* %step, align 4, !dbg !69
  %cmp12 = icmp slt i32 %11, 1, !dbg !71
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !72

if.then13:                                        ; preds = %if.end11
  store i32 1, i32* %step, align 4, !dbg !73
  br label %if.end14, !dbg !74

if.end14:                                         ; preds = %if.then13, %if.end11
  %12 = load i32, i32* %step, align 4, !dbg !75
  %cmp15 = icmp sgt i32 %12, 26, !dbg !77
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !78

if.then16:                                        ; preds = %if.end14
  store i32 26, i32* %step, align 4, !dbg !79
  br label %if.end17, !dbg !80

if.end17:                                         ; preds = %if.then16, %if.end14
  %13 = load i32, i32* %step, align 4, !dbg !81
  %conv = trunc i32 %13 to i8, !dbg !81
  store i8 %conv, i8* %retval, align 1, !dbg !82
  br label %return, !dbg !82

return:                                           ; preds = %if.end17, %if.then
  %14 = load i8, i8* %retval, align 1, !dbg !83
  ret i8 %14, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashBoundingBox(%struct.GeoShape* %shape, double* %bounds) #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %shape.addr = alloca %struct.GeoShape*, align 8
  %bounds.addr = alloca double*, align 8
  %longitude = alloca double, align 8
  %latitude = alloca double, align 8
  %height = alloca double, align 8
  %width = alloca double, align 8
  %lat_delta = alloca double, align 8
  %long_delta_top = alloca double, align 8
  %long_delta_bottom = alloca double, align 8
  %southern_hemisphere = alloca i32, align 4
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !112, metadata !DIExpression()), !dbg !113
  store double* %bounds, double** %bounds.addr, align 8
  call void @llvm.dbg.declare(metadata double** %bounds.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load double*, double** %bounds.addr, align 8, !dbg !116
  %tobool = icmp ne double* %0, null, !dbg !116
  br i1 %tobool, label %if.end, label %if.then, !dbg !118

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %longitude, metadata !120, metadata !DIExpression()), !dbg !121
  %1 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !122
  %xy = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %1, i32 0, i32 1, !dbg !123
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !122
  %2 = load double, double* %arrayidx, align 8, !dbg !122
  store double %2, double* %longitude, align 8, !dbg !121
  call void @llvm.dbg.declare(metadata double* %latitude, metadata !124, metadata !DIExpression()), !dbg !125
  %3 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !126
  %xy1 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %3, i32 0, i32 1, !dbg !127
  %arrayidx2 = getelementptr inbounds [2 x double], [2 x double]* %xy1, i64 0, i64 1, !dbg !126
  %4 = load double, double* %arrayidx2, align 8, !dbg !126
  store double %4, double* %latitude, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata double* %height, metadata !128, metadata !DIExpression()), !dbg !129
  %5 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !130
  %conversion = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %5, i32 0, i32 2, !dbg !131
  %6 = load double, double* %conversion, align 8, !dbg !131
  %7 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !132
  %type = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %7, i32 0, i32 0, !dbg !133
  %8 = load i32, i32* %type, align 8, !dbg !133
  %cmp = icmp eq i32 %8, 1, !dbg !134
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %if.end
  %9 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !135
  %t = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %9, i32 0, i32 4, !dbg !136
  %radius = bitcast %union.anon* %t to double*, !dbg !137
  %10 = load double, double* %radius, align 8, !dbg !137
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %if.end
  %11 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !138
  %t3 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %11, i32 0, i32 4, !dbg !139
  %r = bitcast %union.anon* %t3 to %struct.anon*, !dbg !140
  %height4 = getelementptr inbounds %struct.anon, %struct.anon* %r, i32 0, i32 0, !dbg !141
  %12 = load double, double* %height4, align 8, !dbg !141
  %div = fdiv double %12, 2.000000e+00, !dbg !142
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %10, %cond.true ], [ %div, %cond.false ], !dbg !132
  %mul = fmul double %6, %cond, !dbg !143
  store double %mul, double* %height, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata double* %width, metadata !144, metadata !DIExpression()), !dbg !145
  %13 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !146
  %conversion5 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %13, i32 0, i32 2, !dbg !147
  %14 = load double, double* %conversion5, align 8, !dbg !147
  %15 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !148
  %type6 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %15, i32 0, i32 0, !dbg !149
  %16 = load i32, i32* %type6, align 8, !dbg !149
  %cmp7 = icmp eq i32 %16, 1, !dbg !150
  br i1 %cmp7, label %cond.true8, label %cond.false11, !dbg !148

cond.true8:                                       ; preds = %cond.end
  %17 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !151
  %t9 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %17, i32 0, i32 4, !dbg !152
  %radius10 = bitcast %union.anon* %t9 to double*, !dbg !153
  %18 = load double, double* %radius10, align 8, !dbg !153
  br label %cond.end16, !dbg !148

cond.false11:                                     ; preds = %cond.end
  %19 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !154
  %t12 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %19, i32 0, i32 4, !dbg !155
  %r13 = bitcast %union.anon* %t12 to %struct.anon*, !dbg !156
  %width14 = getelementptr inbounds %struct.anon, %struct.anon* %r13, i32 0, i32 1, !dbg !157
  %20 = load double, double* %width14, align 8, !dbg !157
  %div15 = fdiv double %20, 2.000000e+00, !dbg !158
  br label %cond.end16, !dbg !148

cond.end16:                                       ; preds = %cond.false11, %cond.true8
  %cond17 = phi double [ %18, %cond.true8 ], [ %div15, %cond.false11 ], !dbg !148
  %mul18 = fmul double %14, %cond17, !dbg !159
  store double %mul18, double* %width, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata double* %lat_delta, metadata !160, metadata !DIExpression()), !dbg !161
  %21 = load double, double* %height, align 8, !dbg !162
  %div19 = fdiv double %21, 0x41584F6F63E51090, !dbg !163
  %call = call double @rad_deg(double %div19), !dbg !164
  store double %call, double* %lat_delta, align 8, !dbg !161
  call void @llvm.dbg.declare(metadata double* %long_delta_top, metadata !165, metadata !DIExpression()), !dbg !166
  %22 = load double, double* %width, align 8, !dbg !167
  %div20 = fdiv double %22, 0x41584F6F63E51090, !dbg !168
  %23 = load double, double* %latitude, align 8, !dbg !169
  %24 = load double, double* %lat_delta, align 8, !dbg !170
  %add = fadd double %23, %24, !dbg !171
  %call21 = call double @deg_rad(double %add), !dbg !172
  %call22 = call double @cos(double %call21) #5, !dbg !173
  %div23 = fdiv double %div20, %call22, !dbg !174
  %call24 = call double @rad_deg(double %div23), !dbg !175
  store double %call24, double* %long_delta_top, align 8, !dbg !166
  call void @llvm.dbg.declare(metadata double* %long_delta_bottom, metadata !176, metadata !DIExpression()), !dbg !177
  %25 = load double, double* %width, align 8, !dbg !178
  %div25 = fdiv double %25, 0x41584F6F63E51090, !dbg !179
  %26 = load double, double* %latitude, align 8, !dbg !180
  %27 = load double, double* %lat_delta, align 8, !dbg !181
  %sub = fsub double %26, %27, !dbg !182
  %call26 = call double @deg_rad(double %sub), !dbg !183
  %call27 = call double @cos(double %call26) #5, !dbg !184
  %div28 = fdiv double %div25, %call27, !dbg !185
  %call29 = call double @rad_deg(double %div28), !dbg !186
  store double %call29, double* %long_delta_bottom, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata i32* %southern_hemisphere, metadata !187, metadata !DIExpression()), !dbg !188
  %28 = load double, double* %latitude, align 8, !dbg !189
  %cmp30 = fcmp olt double %28, 0.000000e+00, !dbg !190
  %29 = zext i1 %cmp30 to i64, !dbg !189
  %cond31 = select i1 %cmp30, i32 1, i32 0, !dbg !189
  store i32 %cond31, i32* %southern_hemisphere, align 4, !dbg !188
  %30 = load i32, i32* %southern_hemisphere, align 4, !dbg !191
  %tobool32 = icmp ne i32 %30, 0, !dbg !191
  br i1 %tobool32, label %cond.true33, label %cond.false35, !dbg !191

cond.true33:                                      ; preds = %cond.end16
  %31 = load double, double* %longitude, align 8, !dbg !192
  %32 = load double, double* %long_delta_bottom, align 8, !dbg !193
  %sub34 = fsub double %31, %32, !dbg !194
  br label %cond.end37, !dbg !191

cond.false35:                                     ; preds = %cond.end16
  %33 = load double, double* %longitude, align 8, !dbg !195
  %34 = load double, double* %long_delta_top, align 8, !dbg !196
  %sub36 = fsub double %33, %34, !dbg !197
  br label %cond.end37, !dbg !191

cond.end37:                                       ; preds = %cond.false35, %cond.true33
  %cond38 = phi double [ %sub34, %cond.true33 ], [ %sub36, %cond.false35 ], !dbg !191
  %35 = load double*, double** %bounds.addr, align 8, !dbg !198
  %arrayidx39 = getelementptr inbounds double, double* %35, i64 0, !dbg !198
  store double %cond38, double* %arrayidx39, align 8, !dbg !199
  %36 = load i32, i32* %southern_hemisphere, align 4, !dbg !200
  %tobool40 = icmp ne i32 %36, 0, !dbg !200
  br i1 %tobool40, label %cond.true41, label %cond.false43, !dbg !200

cond.true41:                                      ; preds = %cond.end37
  %37 = load double, double* %longitude, align 8, !dbg !201
  %38 = load double, double* %long_delta_bottom, align 8, !dbg !202
  %add42 = fadd double %37, %38, !dbg !203
  br label %cond.end45, !dbg !200

cond.false43:                                     ; preds = %cond.end37
  %39 = load double, double* %longitude, align 8, !dbg !204
  %40 = load double, double* %long_delta_top, align 8, !dbg !205
  %add44 = fadd double %39, %40, !dbg !206
  br label %cond.end45, !dbg !200

cond.end45:                                       ; preds = %cond.false43, %cond.true41
  %cond46 = phi double [ %add42, %cond.true41 ], [ %add44, %cond.false43 ], !dbg !200
  %41 = load double*, double** %bounds.addr, align 8, !dbg !207
  %arrayidx47 = getelementptr inbounds double, double* %41, i64 2, !dbg !207
  store double %cond46, double* %arrayidx47, align 8, !dbg !208
  %42 = load double, double* %latitude, align 8, !dbg !209
  %43 = load double, double* %lat_delta, align 8, !dbg !210
  %sub48 = fsub double %42, %43, !dbg !211
  %44 = load double*, double** %bounds.addr, align 8, !dbg !212
  %arrayidx49 = getelementptr inbounds double, double* %44, i64 1, !dbg !212
  store double %sub48, double* %arrayidx49, align 8, !dbg !213
  %45 = load double, double* %latitude, align 8, !dbg !214
  %46 = load double, double* %lat_delta, align 8, !dbg !215
  %add50 = fadd double %45, %46, !dbg !216
  %47 = load double*, double** %bounds.addr, align 8, !dbg !217
  %arrayidx51 = getelementptr inbounds double, double* %47, i64 3, !dbg !217
  store double %add50, double* %arrayidx51, align 8, !dbg !218
  store i32 1, i32* %retval, align 4, !dbg !219
  br label %return, !dbg !219

return:                                           ; preds = %cond.end45, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !220
  ret i32 %48, !dbg !220
}

; Function Attrs: noinline nounwind uwtable
define internal double @rad_deg(double %ang) #0 !dbg !221 {
entry:
  %ang.addr = alloca double, align 8
  store double %ang, double* %ang.addr, align 8
  call void @llvm.dbg.declare(metadata double* %ang.addr, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load double, double* %ang.addr, align 8, !dbg !226
  %div = fdiv double %0, 0x3F91DF46A2529D39, !dbg !227
  ret double %div, !dbg !228
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: noinline nounwind uwtable
define internal double @deg_rad(double %ang) #0 !dbg !229 {
entry:
  %ang.addr = alloca double, align 8
  store double %ang, double* %ang.addr, align 8
  call void @llvm.dbg.declare(metadata double* %ang.addr, metadata !230, metadata !DIExpression()), !dbg !231
  %0 = load double, double* %ang.addr, align 8, !dbg !232
  %mul = fmul double %0, 0x3F91DF46A2529D39, !dbg !233
  ret double %mul, !dbg !234
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @geohashCalculateAreasByShapeWGS84(%struct.GeoHashRadius* noalias sret(%struct.GeoHashRadius) align 8 %agg.result, %struct.GeoShape* %shape) #0 !dbg !235 {
entry:
  %shape.addr = alloca %struct.GeoShape*, align 8
  %long_range = alloca %struct.GeoHashRange, align 8
  %lat_range = alloca %struct.GeoHashRange, align 8
  %hash = alloca %struct.GeoHashBits, align 8
  %neighbors = alloca %struct.GeoHashNeighbors, align 8
  %area = alloca %struct.GeoHashArea, align 8
  %min_lon = alloca double, align 8
  %max_lon = alloca double, align 8
  %min_lat = alloca double, align 8
  %max_lat = alloca double, align 8
  %steps = alloca i32, align 4
  %longitude = alloca double, align 8
  %latitude = alloca double, align 8
  %radius_meters = alloca double, align 8
  %decrease_step = alloca i32, align 4
  %north = alloca %struct.GeoHashArea, align 8
  %south = alloca %struct.GeoHashArea, align 8
  %east = alloca %struct.GeoHashArea, align 8
  %west = alloca %struct.GeoHashArea, align 8
  store %struct.GeoShape* %shape, %struct.GeoShape** %shape.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoShape** %shape.addr, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %long_range, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata %struct.GeoHashRange* %lat_range, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata %struct.GeoHashRadius* %agg.result, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata %struct.GeoHashNeighbors* %neighbors, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %area, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata double* %min_lon, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata double* %max_lon, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata double* %min_lat, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata double* %max_lat, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %steps, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !299
  %1 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !300
  %bounds = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %1, i32 0, i32 3, !dbg !301
  %arraydecay = getelementptr inbounds [4 x double], [4 x double]* %bounds, i64 0, i64 0, !dbg !300
  %call = call i32 @geohashBoundingBox(%struct.GeoShape* %0, double* %arraydecay), !dbg !302
  %2 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !303
  %bounds1 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %2, i32 0, i32 3, !dbg !304
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %bounds1, i64 0, i64 0, !dbg !303
  %3 = load double, double* %arrayidx, align 8, !dbg !303
  store double %3, double* %min_lon, align 8, !dbg !305
  %4 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !306
  %bounds2 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %4, i32 0, i32 3, !dbg !307
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %bounds2, i64 0, i64 1, !dbg !306
  %5 = load double, double* %arrayidx3, align 8, !dbg !306
  store double %5, double* %min_lat, align 8, !dbg !308
  %6 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !309
  %bounds4 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %6, i32 0, i32 3, !dbg !310
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %bounds4, i64 0, i64 2, !dbg !309
  %7 = load double, double* %arrayidx5, align 8, !dbg !309
  store double %7, double* %max_lon, align 8, !dbg !311
  %8 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !312
  %bounds6 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %8, i32 0, i32 3, !dbg !313
  %arrayidx7 = getelementptr inbounds [4 x double], [4 x double]* %bounds6, i64 0, i64 3, !dbg !312
  %9 = load double, double* %arrayidx7, align 8, !dbg !312
  store double %9, double* %max_lat, align 8, !dbg !314
  call void @llvm.dbg.declare(metadata double* %longitude, metadata !315, metadata !DIExpression()), !dbg !316
  %10 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !317
  %xy = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %10, i32 0, i32 1, !dbg !318
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %xy, i64 0, i64 0, !dbg !317
  %11 = load double, double* %arrayidx8, align 8, !dbg !317
  store double %11, double* %longitude, align 8, !dbg !316
  call void @llvm.dbg.declare(metadata double* %latitude, metadata !319, metadata !DIExpression()), !dbg !320
  %12 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !321
  %xy9 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %12, i32 0, i32 1, !dbg !322
  %arrayidx10 = getelementptr inbounds [2 x double], [2 x double]* %xy9, i64 0, i64 1, !dbg !321
  %13 = load double, double* %arrayidx10, align 8, !dbg !321
  store double %13, double* %latitude, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata double* %radius_meters, metadata !323, metadata !DIExpression()), !dbg !324
  %14 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !325
  %type = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %14, i32 0, i32 0, !dbg !326
  %15 = load i32, i32* %type, align 8, !dbg !326
  %cmp = icmp eq i32 %15, 1, !dbg !327
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !325

cond.true:                                        ; preds = %entry
  %16 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !328
  %t = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %16, i32 0, i32 4, !dbg !329
  %radius = bitcast %union.anon* %t to double*, !dbg !330
  %17 = load double, double* %radius, align 8, !dbg !330
  br label %cond.end, !dbg !325

cond.false:                                       ; preds = %entry
  %18 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !331
  %t11 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %18, i32 0, i32 4, !dbg !332
  %r = bitcast %union.anon* %t11 to %struct.anon*, !dbg !333
  %width = getelementptr inbounds %struct.anon, %struct.anon* %r, i32 0, i32 1, !dbg !334
  %19 = load double, double* %width, align 8, !dbg !334
  %div = fdiv double %19, 2.000000e+00, !dbg !335
  %20 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !336
  %t12 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %20, i32 0, i32 4, !dbg !337
  %r13 = bitcast %union.anon* %t12 to %struct.anon*, !dbg !338
  %width14 = getelementptr inbounds %struct.anon, %struct.anon* %r13, i32 0, i32 1, !dbg !339
  %21 = load double, double* %width14, align 8, !dbg !339
  %div15 = fdiv double %21, 2.000000e+00, !dbg !340
  %mul = fmul double %div, %div15, !dbg !341
  %22 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !342
  %t16 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %22, i32 0, i32 4, !dbg !343
  %r17 = bitcast %union.anon* %t16 to %struct.anon*, !dbg !344
  %height = getelementptr inbounds %struct.anon, %struct.anon* %r17, i32 0, i32 0, !dbg !345
  %23 = load double, double* %height, align 8, !dbg !345
  %div18 = fdiv double %23, 2.000000e+00, !dbg !346
  %24 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !347
  %t19 = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %24, i32 0, i32 4, !dbg !348
  %r20 = bitcast %union.anon* %t19 to %struct.anon*, !dbg !349
  %height21 = getelementptr inbounds %struct.anon, %struct.anon* %r20, i32 0, i32 0, !dbg !350
  %25 = load double, double* %height21, align 8, !dbg !350
  %div22 = fdiv double %25, 2.000000e+00, !dbg !351
  %mul23 = fmul double %div18, %div22, !dbg !352
  %add = fadd double %mul, %mul23, !dbg !353
  %call24 = call double @sqrt(double %add) #5, !dbg !354
  br label %cond.end, !dbg !325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %17, %cond.true ], [ %call24, %cond.false ], !dbg !325
  store double %cond, double* %radius_meters, align 8, !dbg !324
  %26 = load %struct.GeoShape*, %struct.GeoShape** %shape.addr, align 8, !dbg !355
  %conversion = getelementptr inbounds %struct.GeoShape, %struct.GeoShape* %26, i32 0, i32 2, !dbg !356
  %27 = load double, double* %conversion, align 8, !dbg !356
  %28 = load double, double* %radius_meters, align 8, !dbg !357
  %mul25 = fmul double %28, %27, !dbg !357
  store double %mul25, double* %radius_meters, align 8, !dbg !357
  %29 = load double, double* %radius_meters, align 8, !dbg !358
  %30 = load double, double* %latitude, align 8, !dbg !359
  %call26 = call zeroext i8 @geohashEstimateStepsByRadius(double %29, double %30), !dbg !360
  %conv = zext i8 %call26 to i32, !dbg !360
  store i32 %conv, i32* %steps, align 4, !dbg !361
  call void @geohashGetCoordRange(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range), !dbg !362
  %31 = load double, double* %longitude, align 8, !dbg !363
  %32 = load double, double* %latitude, align 8, !dbg !364
  %33 = load i32, i32* %steps, align 4, !dbg !365
  %conv27 = trunc i32 %33 to i8, !dbg !365
  %call28 = call i32 @geohashEncode(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range, double %31, double %32, i8 zeroext %conv27, %struct.GeoHashBits* %hash), !dbg !366
  call void @geohashNeighbors(%struct.GeoHashBits* %hash, %struct.GeoHashNeighbors* %neighbors), !dbg !367
  %34 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !368
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0, !dbg !368
  %36 = load double, double* %35, align 8, !dbg !368
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1, !dbg !368
  %38 = load double, double* %37, align 8, !dbg !368
  %39 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !368
  %40 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 0, !dbg !368
  %41 = load double, double* %40, align 8, !dbg !368
  %42 = getelementptr inbounds { double, double }, { double, double }* %39, i32 0, i32 1, !dbg !368
  %43 = load double, double* %42, align 8, !dbg !368
  %44 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !368
  %45 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %44, i32 0, i32 0, !dbg !368
  %46 = load i64, i64* %45, align 8, !dbg !368
  %47 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %44, i32 0, i32 1, !dbg !368
  %48 = load i8, i8* %47, align 8, !dbg !368
  %call29 = call i32 @geohashDecode(double %36, double %38, double %41, double %43, i64 %46, i8 %48, %struct.GeoHashArea* %area), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %decrease_step, metadata !369, metadata !DIExpression()), !dbg !370
  store i32 0, i32* %decrease_step, align 4, !dbg !370
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %north, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %south, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %east, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata %struct.GeoHashArea* %west, metadata !378, metadata !DIExpression()), !dbg !379
  %north30 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 0, !dbg !380
  %49 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !381
  %50 = getelementptr inbounds { double, double }, { double, double }* %49, i32 0, i32 0, !dbg !381
  %51 = load double, double* %50, align 8, !dbg !381
  %52 = getelementptr inbounds { double, double }, { double, double }* %49, i32 0, i32 1, !dbg !381
  %53 = load double, double* %52, align 8, !dbg !381
  %54 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !381
  %55 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 0, !dbg !381
  %56 = load double, double* %55, align 8, !dbg !381
  %57 = getelementptr inbounds { double, double }, { double, double }* %54, i32 0, i32 1, !dbg !381
  %58 = load double, double* %57, align 8, !dbg !381
  %59 = bitcast %struct.GeoHashBits* %north30 to { i64, i8 }*, !dbg !381
  %60 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %59, i32 0, i32 0, !dbg !381
  %61 = load i64, i64* %60, align 8, !dbg !381
  %62 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %59, i32 0, i32 1, !dbg !381
  %63 = load i8, i8* %62, align 8, !dbg !381
  %call31 = call i32 @geohashDecode(double %51, double %53, double %56, double %58, i64 %61, i8 %63, %struct.GeoHashArea* %north), !dbg !381
  %south32 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 3, !dbg !382
  %64 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !383
  %65 = getelementptr inbounds { double, double }, { double, double }* %64, i32 0, i32 0, !dbg !383
  %66 = load double, double* %65, align 8, !dbg !383
  %67 = getelementptr inbounds { double, double }, { double, double }* %64, i32 0, i32 1, !dbg !383
  %68 = load double, double* %67, align 8, !dbg !383
  %69 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !383
  %70 = getelementptr inbounds { double, double }, { double, double }* %69, i32 0, i32 0, !dbg !383
  %71 = load double, double* %70, align 8, !dbg !383
  %72 = getelementptr inbounds { double, double }, { double, double }* %69, i32 0, i32 1, !dbg !383
  %73 = load double, double* %72, align 8, !dbg !383
  %74 = bitcast %struct.GeoHashBits* %south32 to { i64, i8 }*, !dbg !383
  %75 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %74, i32 0, i32 0, !dbg !383
  %76 = load i64, i64* %75, align 8, !dbg !383
  %77 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %74, i32 0, i32 1, !dbg !383
  %78 = load i8, i8* %77, align 8, !dbg !383
  %call33 = call i32 @geohashDecode(double %66, double %68, double %71, double %73, i64 %76, i8 %78, %struct.GeoHashArea* %south), !dbg !383
  %east34 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 1, !dbg !384
  %79 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !385
  %80 = getelementptr inbounds { double, double }, { double, double }* %79, i32 0, i32 0, !dbg !385
  %81 = load double, double* %80, align 8, !dbg !385
  %82 = getelementptr inbounds { double, double }, { double, double }* %79, i32 0, i32 1, !dbg !385
  %83 = load double, double* %82, align 8, !dbg !385
  %84 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !385
  %85 = getelementptr inbounds { double, double }, { double, double }* %84, i32 0, i32 0, !dbg !385
  %86 = load double, double* %85, align 8, !dbg !385
  %87 = getelementptr inbounds { double, double }, { double, double }* %84, i32 0, i32 1, !dbg !385
  %88 = load double, double* %87, align 8, !dbg !385
  %89 = bitcast %struct.GeoHashBits* %east34 to { i64, i8 }*, !dbg !385
  %90 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %89, i32 0, i32 0, !dbg !385
  %91 = load i64, i64* %90, align 8, !dbg !385
  %92 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %89, i32 0, i32 1, !dbg !385
  %93 = load i8, i8* %92, align 8, !dbg !385
  %call35 = call i32 @geohashDecode(double %81, double %83, double %86, double %88, i64 %91, i8 %93, %struct.GeoHashArea* %east), !dbg !385
  %west36 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 2, !dbg !386
  %94 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !387
  %95 = getelementptr inbounds { double, double }, { double, double }* %94, i32 0, i32 0, !dbg !387
  %96 = load double, double* %95, align 8, !dbg !387
  %97 = getelementptr inbounds { double, double }, { double, double }* %94, i32 0, i32 1, !dbg !387
  %98 = load double, double* %97, align 8, !dbg !387
  %99 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !387
  %100 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 0, !dbg !387
  %101 = load double, double* %100, align 8, !dbg !387
  %102 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 1, !dbg !387
  %103 = load double, double* %102, align 8, !dbg !387
  %104 = bitcast %struct.GeoHashBits* %west36 to { i64, i8 }*, !dbg !387
  %105 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %104, i32 0, i32 0, !dbg !387
  %106 = load i64, i64* %105, align 8, !dbg !387
  %107 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %104, i32 0, i32 1, !dbg !387
  %108 = load i8, i8* %107, align 8, !dbg !387
  %call37 = call i32 @geohashDecode(double %96, double %98, double %101, double %103, i64 %106, i8 %108, %struct.GeoHashArea* %west), !dbg !387
  %latitude38 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %north, i32 0, i32 2, !dbg !388
  %max = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude38, i32 0, i32 1, !dbg !390
  %109 = load double, double* %max, align 8, !dbg !390
  %110 = load double, double* %max_lat, align 8, !dbg !391
  %cmp39 = fcmp olt double %109, %110, !dbg !392
  br i1 %cmp39, label %if.then, label %if.end, !dbg !393

if.then:                                          ; preds = %cond.end
  store i32 1, i32* %decrease_step, align 4, !dbg !394
  br label %if.end, !dbg !395

if.end:                                           ; preds = %if.then, %cond.end
  %latitude41 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %south, i32 0, i32 2, !dbg !396
  %min = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude41, i32 0, i32 0, !dbg !398
  %111 = load double, double* %min, align 8, !dbg !398
  %112 = load double, double* %min_lat, align 8, !dbg !399
  %cmp42 = fcmp ogt double %111, %112, !dbg !400
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !401

if.then44:                                        ; preds = %if.end
  store i32 1, i32* %decrease_step, align 4, !dbg !402
  br label %if.end45, !dbg !403

if.end45:                                         ; preds = %if.then44, %if.end
  %longitude46 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %east, i32 0, i32 1, !dbg !404
  %max47 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude46, i32 0, i32 1, !dbg !406
  %113 = load double, double* %max47, align 8, !dbg !406
  %114 = load double, double* %max_lon, align 8, !dbg !407
  %cmp48 = fcmp olt double %113, %114, !dbg !408
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !409

if.then50:                                        ; preds = %if.end45
  store i32 1, i32* %decrease_step, align 4, !dbg !410
  br label %if.end51, !dbg !411

if.end51:                                         ; preds = %if.then50, %if.end45
  %longitude52 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %west, i32 0, i32 1, !dbg !412
  %min53 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude52, i32 0, i32 0, !dbg !414
  %115 = load double, double* %min53, align 8, !dbg !414
  %116 = load double, double* %min_lon, align 8, !dbg !415
  %cmp54 = fcmp ogt double %115, %116, !dbg !416
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !417

if.then56:                                        ; preds = %if.end51
  store i32 1, i32* %decrease_step, align 4, !dbg !418
  br label %if.end57, !dbg !419

if.end57:                                         ; preds = %if.then56, %if.end51
  %117 = load i32, i32* %steps, align 4, !dbg !420
  %cmp58 = icmp sgt i32 %117, 1, !dbg !422
  br i1 %cmp58, label %land.lhs.true, label %if.end64, !dbg !423

land.lhs.true:                                    ; preds = %if.end57
  %118 = load i32, i32* %decrease_step, align 4, !dbg !424
  %tobool = icmp ne i32 %118, 0, !dbg !424
  br i1 %tobool, label %if.then60, label %if.end64, !dbg !425

if.then60:                                        ; preds = %land.lhs.true
  %119 = load i32, i32* %steps, align 4, !dbg !426
  %dec = add nsw i32 %119, -1, !dbg !426
  store i32 %dec, i32* %steps, align 4, !dbg !426
  %120 = load double, double* %longitude, align 8, !dbg !428
  %121 = load double, double* %latitude, align 8, !dbg !429
  %122 = load i32, i32* %steps, align 4, !dbg !430
  %conv61 = trunc i32 %122 to i8, !dbg !430
  %call62 = call i32 @geohashEncode(%struct.GeoHashRange* %long_range, %struct.GeoHashRange* %lat_range, double %120, double %121, i8 zeroext %conv61, %struct.GeoHashBits* %hash), !dbg !431
  call void @geohashNeighbors(%struct.GeoHashBits* %hash, %struct.GeoHashNeighbors* %neighbors), !dbg !432
  %123 = bitcast %struct.GeoHashRange* %long_range to { double, double }*, !dbg !433
  %124 = getelementptr inbounds { double, double }, { double, double }* %123, i32 0, i32 0, !dbg !433
  %125 = load double, double* %124, align 8, !dbg !433
  %126 = getelementptr inbounds { double, double }, { double, double }* %123, i32 0, i32 1, !dbg !433
  %127 = load double, double* %126, align 8, !dbg !433
  %128 = bitcast %struct.GeoHashRange* %lat_range to { double, double }*, !dbg !433
  %129 = getelementptr inbounds { double, double }, { double, double }* %128, i32 0, i32 0, !dbg !433
  %130 = load double, double* %129, align 8, !dbg !433
  %131 = getelementptr inbounds { double, double }, { double, double }* %128, i32 0, i32 1, !dbg !433
  %132 = load double, double* %131, align 8, !dbg !433
  %133 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*, !dbg !433
  %134 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %133, i32 0, i32 0, !dbg !433
  %135 = load i64, i64* %134, align 8, !dbg !433
  %136 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %133, i32 0, i32 1, !dbg !433
  %137 = load i8, i8* %136, align 8, !dbg !433
  %call63 = call i32 @geohashDecode(double %125, double %127, double %130, double %132, i64 %135, i8 %137, %struct.GeoHashArea* %area), !dbg !433
  br label %if.end64, !dbg !434

if.end64:                                         ; preds = %if.then60, %land.lhs.true, %if.end57
  %138 = load i32, i32* %steps, align 4, !dbg !435
  %cmp65 = icmp sge i32 %138, 2, !dbg !437
  br i1 %cmp65, label %if.then67, label %if.end134, !dbg !438

if.then67:                                        ; preds = %if.end64
  %latitude68 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %area, i32 0, i32 2, !dbg !439
  %min69 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude68, i32 0, i32 0, !dbg !442
  %139 = load double, double* %min69, align 8, !dbg !442
  %140 = load double, double* %min_lat, align 8, !dbg !443
  %cmp70 = fcmp olt double %139, %140, !dbg !444
  br i1 %cmp70, label %if.then72, label %if.end81, !dbg !445

if.then72:                                        ; preds = %if.then67
  %south73 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 3, !dbg !446
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south73, i32 0, i32 1, !dbg !446
  store i8 0, i8* %step, align 8, !dbg !446
  %south74 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 3, !dbg !446
  %bits = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south74, i32 0, i32 0, !dbg !446
  store i64 0, i64* %bits, align 8, !dbg !446
  %south_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 7, !dbg !448
  %step75 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_west, i32 0, i32 1, !dbg !448
  store i8 0, i8* %step75, align 8, !dbg !448
  %south_west76 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 7, !dbg !448
  %bits77 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_west76, i32 0, i32 0, !dbg !448
  store i64 0, i64* %bits77, align 8, !dbg !448
  %south_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 5, !dbg !449
  %step78 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_east, i32 0, i32 1, !dbg !449
  store i8 0, i8* %step78, align 8, !dbg !449
  %south_east79 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 5, !dbg !449
  %bits80 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_east79, i32 0, i32 0, !dbg !449
  store i64 0, i64* %bits80, align 8, !dbg !449
  br label %if.end81, !dbg !450

if.end81:                                         ; preds = %if.then72, %if.then67
  %latitude82 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %area, i32 0, i32 2, !dbg !451
  %max83 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %latitude82, i32 0, i32 1, !dbg !453
  %141 = load double, double* %max83, align 8, !dbg !453
  %142 = load double, double* %max_lat, align 8, !dbg !454
  %cmp84 = fcmp ogt double %141, %142, !dbg !455
  br i1 %cmp84, label %if.then86, label %if.end97, !dbg !456

if.then86:                                        ; preds = %if.end81
  %north87 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 0, !dbg !457
  %step88 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north87, i32 0, i32 1, !dbg !457
  store i8 0, i8* %step88, align 8, !dbg !457
  %north89 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 0, !dbg !457
  %bits90 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north89, i32 0, i32 0, !dbg !457
  store i64 0, i64* %bits90, align 8, !dbg !457
  %north_east = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 4, !dbg !459
  %step91 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_east, i32 0, i32 1, !dbg !459
  store i8 0, i8* %step91, align 8, !dbg !459
  %north_east92 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 4, !dbg !459
  %bits93 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_east92, i32 0, i32 0, !dbg !459
  store i64 0, i64* %bits93, align 8, !dbg !459
  %north_west = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 6, !dbg !460
  %step94 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_west, i32 0, i32 1, !dbg !460
  store i8 0, i8* %step94, align 8, !dbg !460
  %north_west95 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 6, !dbg !460
  %bits96 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_west95, i32 0, i32 0, !dbg !460
  store i64 0, i64* %bits96, align 8, !dbg !460
  br label %if.end97, !dbg !461

if.end97:                                         ; preds = %if.then86, %if.end81
  %longitude98 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %area, i32 0, i32 1, !dbg !462
  %min99 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude98, i32 0, i32 0, !dbg !464
  %143 = load double, double* %min99, align 8, !dbg !464
  %144 = load double, double* %min_lon, align 8, !dbg !465
  %cmp100 = fcmp olt double %143, %144, !dbg !466
  br i1 %cmp100, label %if.then102, label %if.end115, !dbg !467

if.then102:                                       ; preds = %if.end97
  %west103 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 2, !dbg !468
  %step104 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %west103, i32 0, i32 1, !dbg !468
  store i8 0, i8* %step104, align 8, !dbg !468
  %west105 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 2, !dbg !468
  %bits106 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %west105, i32 0, i32 0, !dbg !468
  store i64 0, i64* %bits106, align 8, !dbg !468
  %south_west107 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 7, !dbg !470
  %step108 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_west107, i32 0, i32 1, !dbg !470
  store i8 0, i8* %step108, align 8, !dbg !470
  %south_west109 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 7, !dbg !470
  %bits110 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_west109, i32 0, i32 0, !dbg !470
  store i64 0, i64* %bits110, align 8, !dbg !470
  %north_west111 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 6, !dbg !471
  %step112 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_west111, i32 0, i32 1, !dbg !471
  store i8 0, i8* %step112, align 8, !dbg !471
  %north_west113 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 6, !dbg !471
  %bits114 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_west113, i32 0, i32 0, !dbg !471
  store i64 0, i64* %bits114, align 8, !dbg !471
  br label %if.end115, !dbg !472

if.end115:                                        ; preds = %if.then102, %if.end97
  %longitude116 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %area, i32 0, i32 1, !dbg !473
  %max117 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %longitude116, i32 0, i32 1, !dbg !475
  %145 = load double, double* %max117, align 8, !dbg !475
  %146 = load double, double* %max_lon, align 8, !dbg !476
  %cmp118 = fcmp ogt double %145, %146, !dbg !477
  br i1 %cmp118, label %if.then120, label %if.end133, !dbg !478

if.then120:                                       ; preds = %if.end115
  %east121 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 1, !dbg !479
  %step122 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %east121, i32 0, i32 1, !dbg !479
  store i8 0, i8* %step122, align 8, !dbg !479
  %east123 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 1, !dbg !479
  %bits124 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %east123, i32 0, i32 0, !dbg !479
  store i64 0, i64* %bits124, align 8, !dbg !479
  %south_east125 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 5, !dbg !481
  %step126 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_east125, i32 0, i32 1, !dbg !481
  store i8 0, i8* %step126, align 8, !dbg !481
  %south_east127 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 5, !dbg !481
  %bits128 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %south_east127, i32 0, i32 0, !dbg !481
  store i64 0, i64* %bits128, align 8, !dbg !481
  %north_east129 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 4, !dbg !482
  %step130 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_east129, i32 0, i32 1, !dbg !482
  store i8 0, i8* %step130, align 8, !dbg !482
  %north_east131 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %neighbors, i32 0, i32 4, !dbg !482
  %bits132 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %north_east131, i32 0, i32 0, !dbg !482
  store i64 0, i64* %bits132, align 8, !dbg !482
  br label %if.end133, !dbg !483

if.end133:                                        ; preds = %if.then120, %if.end115
  br label %if.end134, !dbg !484

if.end134:                                        ; preds = %if.end133, %if.end64
  %hash135 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %agg.result, i32 0, i32 0, !dbg !485
  %147 = bitcast %struct.GeoHashBits* %hash135 to i8*, !dbg !486
  %148 = bitcast %struct.GeoHashBits* %hash to i8*, !dbg !486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false), !dbg !486
  %neighbors136 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %agg.result, i32 0, i32 2, !dbg !487
  %149 = bitcast %struct.GeoHashNeighbors* %neighbors136 to i8*, !dbg !488
  %150 = bitcast %struct.GeoHashNeighbors* %neighbors to i8*, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 128, i1 false), !dbg !488
  %area137 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %agg.result, i32 0, i32 1, !dbg !489
  %151 = bitcast %struct.GeoHashArea* %area137 to i8*, !dbg !490
  %152 = bitcast %struct.GeoHashArea* %area to i8*, !dbg !490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 48, i1 false), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local void @geohashGetCoordRange(%struct.GeoHashRange*, %struct.GeoHashRange*) #3

declare dso_local i32 @geohashEncode(%struct.GeoHashRange*, %struct.GeoHashRange*, double, double, i8 zeroext, %struct.GeoHashBits*) #3

declare dso_local void @geohashNeighbors(%struct.GeoHashBits*, %struct.GeoHashNeighbors*) #3

declare dso_local i32 @geohashDecode(double, double, double, double, i64, i8, %struct.GeoHashArea*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @geohashAlign52Bits(i64 %hash.coerce0, i8 %hash.coerce1) #0 !dbg !492 {
entry:
  %hash = alloca %struct.GeoHashBits, align 8
  %bits = alloca i64, align 8
  %0 = bitcast %struct.GeoHashBits* %hash to { i64, i8 }*
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  store i64 %hash.coerce0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %hash.coerce1, i8* %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GeoHashBits* %hash, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata i64* %bits, metadata !499, metadata !DIExpression()), !dbg !500
  %bits1 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 0, !dbg !501
  %3 = load i64, i64* %bits1, align 8, !dbg !501
  store i64 %3, i64* %bits, align 8, !dbg !500
  %step = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %hash, i32 0, i32 1, !dbg !502
  %4 = load i8, i8* %step, align 8, !dbg !502
  %conv = zext i8 %4 to i32, !dbg !503
  %mul = mul nsw i32 %conv, 2, !dbg !504
  %sub = sub nsw i32 52, %mul, !dbg !505
  %5 = load i64, i64* %bits, align 8, !dbg !506
  %sh_prom = zext i32 %sub to i64, !dbg !506
  %shl = shl i64 %5, %sh_prom, !dbg !506
  store i64 %shl, i64* %bits, align 8, !dbg !506
  %6 = load i64, i64* %bits, align 8, !dbg !507
  ret i64 %6, !dbg !508
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @geohashGetLatDistance(double %lat1d, double %lat2d) #0 !dbg !509 {
entry:
  %lat1d.addr = alloca double, align 8
  %lat2d.addr = alloca double, align 8
  store double %lat1d, double* %lat1d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lat1d.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store double %lat2d, double* %lat2d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lat2d.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load double, double* %lat2d.addr, align 8, !dbg !516
  %call = call double @deg_rad(double %0), !dbg !517
  %1 = load double, double* %lat1d.addr, align 8, !dbg !518
  %call1 = call double @deg_rad(double %1), !dbg !519
  %sub = fsub double %call, %call1, !dbg !520
  %2 = call double @llvm.fabs.f64(double %sub), !dbg !521
  %mul = fmul double 0x41584F6F63E51090, %2, !dbg !522
  ret double %mul, !dbg !523
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @geohashGetDistance(double %lon1d, double %lat1d, double %lon2d, double %lat2d) #0 !dbg !524 {
entry:
  %retval = alloca double, align 8
  %lon1d.addr = alloca double, align 8
  %lat1d.addr = alloca double, align 8
  %lon2d.addr = alloca double, align 8
  %lat2d.addr = alloca double, align 8
  %lat1r = alloca double, align 8
  %lon1r = alloca double, align 8
  %lat2r = alloca double, align 8
  %lon2r = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %a = alloca double, align 8
  store double %lon1d, double* %lon1d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lon1d.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store double %lat1d, double* %lat1d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lat1d.addr, metadata !529, metadata !DIExpression()), !dbg !530
  store double %lon2d, double* %lon2d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lon2d.addr, metadata !531, metadata !DIExpression()), !dbg !532
  store double %lat2d, double* %lat2d.addr, align 8
  call void @llvm.dbg.declare(metadata double* %lat2d.addr, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata double* %lat1r, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata double* %lon1r, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata double* %lat2r, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata double* %lon2r, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata double* %u, metadata !543, metadata !DIExpression()), !dbg !544
  call void @llvm.dbg.declare(metadata double* %v, metadata !545, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata double* %a, metadata !547, metadata !DIExpression()), !dbg !548
  %0 = load double, double* %lon1d.addr, align 8, !dbg !549
  %call = call double @deg_rad(double %0), !dbg !550
  store double %call, double* %lon1r, align 8, !dbg !551
  %1 = load double, double* %lon2d.addr, align 8, !dbg !552
  %call1 = call double @deg_rad(double %1), !dbg !553
  store double %call1, double* %lon2r, align 8, !dbg !554
  %2 = load double, double* %lon2r, align 8, !dbg !555
  %3 = load double, double* %lon1r, align 8, !dbg !556
  %sub = fsub double %2, %3, !dbg !557
  %div = fdiv double %sub, 2.000000e+00, !dbg !558
  %call2 = call double @sin(double %div) #5, !dbg !559
  store double %call2, double* %v, align 8, !dbg !560
  %4 = load double, double* %v, align 8, !dbg !561
  %cmp = fcmp oeq double %4, 0.000000e+00, !dbg !563
  br i1 %cmp, label %if.then, label %if.end, !dbg !564

if.then:                                          ; preds = %entry
  %5 = load double, double* %lat1d.addr, align 8, !dbg !565
  %6 = load double, double* %lat2d.addr, align 8, !dbg !566
  %call3 = call double @geohashGetLatDistance(double %5, double %6), !dbg !567
  store double %call3, double* %retval, align 8, !dbg !568
  br label %return, !dbg !568

if.end:                                           ; preds = %entry
  %7 = load double, double* %lat1d.addr, align 8, !dbg !569
  %call4 = call double @deg_rad(double %7), !dbg !570
  store double %call4, double* %lat1r, align 8, !dbg !571
  %8 = load double, double* %lat2d.addr, align 8, !dbg !572
  %call5 = call double @deg_rad(double %8), !dbg !573
  store double %call5, double* %lat2r, align 8, !dbg !574
  %9 = load double, double* %lat2r, align 8, !dbg !575
  %10 = load double, double* %lat1r, align 8, !dbg !576
  %sub6 = fsub double %9, %10, !dbg !577
  %div7 = fdiv double %sub6, 2.000000e+00, !dbg !578
  %call8 = call double @sin(double %div7) #5, !dbg !579
  store double %call8, double* %u, align 8, !dbg !580
  %11 = load double, double* %u, align 8, !dbg !581
  %12 = load double, double* %u, align 8, !dbg !582
  %mul = fmul double %11, %12, !dbg !583
  %13 = load double, double* %lat1r, align 8, !dbg !584
  %call9 = call double @cos(double %13) #5, !dbg !585
  %14 = load double, double* %lat2r, align 8, !dbg !586
  %call10 = call double @cos(double %14) #5, !dbg !587
  %mul11 = fmul double %call9, %call10, !dbg !588
  %15 = load double, double* %v, align 8, !dbg !589
  %mul12 = fmul double %mul11, %15, !dbg !590
  %16 = load double, double* %v, align 8, !dbg !591
  %mul13 = fmul double %mul12, %16, !dbg !592
  %add = fadd double %mul, %mul13, !dbg !593
  store double %add, double* %a, align 8, !dbg !594
  %17 = load double, double* %a, align 8, !dbg !595
  %call14 = call double @sqrt(double %17) #5, !dbg !596
  %call15 = call double @asin(double %call14) #5, !dbg !597
  %mul16 = fmul double 0x41684F6F63E51090, %call15, !dbg !598
  store double %mul16, double* %retval, align 8, !dbg !599
  br label %return, !dbg !599

return:                                           ; preds = %if.end, %if.then
  %18 = load double, double* %retval, align 8, !dbg !600
  ret double %18, !dbg !600
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @asin(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashGetDistanceIfInRadius(double %x1, double %y1, double %x2, double %y2, double %radius, double* %distance) #0 !dbg !601 {
entry:
  %retval = alloca i32, align 4
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %distance.addr = alloca double*, align 8
  store double %x1, double* %x1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x1.addr, metadata !604, metadata !DIExpression()), !dbg !605
  store double %y1, double* %y1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y1.addr, metadata !606, metadata !DIExpression()), !dbg !607
  store double %x2, double* %x2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x2.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store double %y2, double* %y2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y2.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store double %radius, double* %radius.addr, align 8
  call void @llvm.dbg.declare(metadata double* %radius.addr, metadata !612, metadata !DIExpression()), !dbg !613
  store double* %distance, double** %distance.addr, align 8
  call void @llvm.dbg.declare(metadata double** %distance.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load double, double* %x1.addr, align 8, !dbg !616
  %1 = load double, double* %y1.addr, align 8, !dbg !617
  %2 = load double, double* %x2.addr, align 8, !dbg !618
  %3 = load double, double* %y2.addr, align 8, !dbg !619
  %call = call double @geohashGetDistance(double %0, double %1, double %2, double %3), !dbg !620
  %4 = load double*, double** %distance.addr, align 8, !dbg !621
  store double %call, double* %4, align 8, !dbg !622
  %5 = load double*, double** %distance.addr, align 8, !dbg !623
  %6 = load double, double* %5, align 8, !dbg !625
  %7 = load double, double* %radius.addr, align 8, !dbg !626
  %cmp = fcmp ogt double %6, %7, !dbg !627
  br i1 %cmp, label %if.then, label %if.end, !dbg !628

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !629
  br label %return, !dbg !629

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !630
  br label %return, !dbg !630

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !631
  ret i32 %8, !dbg !631
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double %x1, double %y1, double %x2, double %y2, double %radius, double* %distance) #0 !dbg !632 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %radius.addr = alloca double, align 8
  %distance.addr = alloca double*, align 8
  store double %x1, double* %x1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x1.addr, metadata !633, metadata !DIExpression()), !dbg !634
  store double %y1, double* %y1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y1.addr, metadata !635, metadata !DIExpression()), !dbg !636
  store double %x2, double* %x2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x2.addr, metadata !637, metadata !DIExpression()), !dbg !638
  store double %y2, double* %y2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y2.addr, metadata !639, metadata !DIExpression()), !dbg !640
  store double %radius, double* %radius.addr, align 8
  call void @llvm.dbg.declare(metadata double* %radius.addr, metadata !641, metadata !DIExpression()), !dbg !642
  store double* %distance, double** %distance.addr, align 8
  call void @llvm.dbg.declare(metadata double** %distance.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = load double, double* %x1.addr, align 8, !dbg !645
  %1 = load double, double* %y1.addr, align 8, !dbg !646
  %2 = load double, double* %x2.addr, align 8, !dbg !647
  %3 = load double, double* %y2.addr, align 8, !dbg !648
  %4 = load double, double* %radius.addr, align 8, !dbg !649
  %5 = load double*, double** %distance.addr, align 8, !dbg !650
  %call = call i32 @geohashGetDistanceIfInRadius(double %0, double %1, double %2, double %3, double %4, double* %5), !dbg !651
  ret i32 %call, !dbg !652
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @geohashGetDistanceIfInRectangle(double %width_m, double %height_m, double %x1, double %y1, double %x2, double %y2, double* %distance) #0 !dbg !653 {
entry:
  %retval = alloca i32, align 4
  %width_m.addr = alloca double, align 8
  %height_m.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %distance.addr = alloca double*, align 8
  %lat_distance = alloca double, align 8
  %lon_distance = alloca double, align 8
  store double %width_m, double* %width_m.addr, align 8
  call void @llvm.dbg.declare(metadata double* %width_m.addr, metadata !656, metadata !DIExpression()), !dbg !657
  store double %height_m, double* %height_m.addr, align 8
  call void @llvm.dbg.declare(metadata double* %height_m.addr, metadata !658, metadata !DIExpression()), !dbg !659
  store double %x1, double* %x1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x1.addr, metadata !660, metadata !DIExpression()), !dbg !661
  store double %y1, double* %y1.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y1.addr, metadata !662, metadata !DIExpression()), !dbg !663
  store double %x2, double* %x2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x2.addr, metadata !664, metadata !DIExpression()), !dbg !665
  store double %y2, double* %y2.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y2.addr, metadata !666, metadata !DIExpression()), !dbg !667
  store double* %distance, double** %distance.addr, align 8
  call void @llvm.dbg.declare(metadata double** %distance.addr, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata double* %lat_distance, metadata !670, metadata !DIExpression()), !dbg !671
  %0 = load double, double* %y2.addr, align 8, !dbg !672
  %1 = load double, double* %y1.addr, align 8, !dbg !673
  %call = call double @geohashGetLatDistance(double %0, double %1), !dbg !674
  store double %call, double* %lat_distance, align 8, !dbg !671
  %2 = load double, double* %lat_distance, align 8, !dbg !675
  %3 = load double, double* %height_m.addr, align 8, !dbg !677
  %div = fdiv double %3, 2.000000e+00, !dbg !678
  %cmp = fcmp ogt double %2, %div, !dbg !679
  br i1 %cmp, label %if.then, label %if.end, !dbg !680

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !681
  br label %return, !dbg !681

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %lon_distance, metadata !683, metadata !DIExpression()), !dbg !684
  %4 = load double, double* %x2.addr, align 8, !dbg !685
  %5 = load double, double* %y2.addr, align 8, !dbg !686
  %6 = load double, double* %x1.addr, align 8, !dbg !687
  %7 = load double, double* %y2.addr, align 8, !dbg !688
  %call1 = call double @geohashGetDistance(double %4, double %5, double %6, double %7), !dbg !689
  store double %call1, double* %lon_distance, align 8, !dbg !684
  %8 = load double, double* %lon_distance, align 8, !dbg !690
  %9 = load double, double* %width_m.addr, align 8, !dbg !692
  %div2 = fdiv double %9, 2.000000e+00, !dbg !693
  %cmp3 = fcmp ogt double %8, %div2, !dbg !694
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !695

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !696
  br label %return, !dbg !696

if.end5:                                          ; preds = %if.end
  %10 = load double, double* %x1.addr, align 8, !dbg !698
  %11 = load double, double* %y1.addr, align 8, !dbg !699
  %12 = load double, double* %x2.addr, align 8, !dbg !700
  %13 = load double, double* %y2.addr, align 8, !dbg !701
  %call6 = call double @geohashGetDistance(double %10, double %11, double %12, double %13), !dbg !702
  %14 = load double*, double** %distance.addr, align 8, !dbg !703
  store double %call6, double* %14, align 8, !dbg !704
  store i32 1, i32* %retval, align 4, !dbg !705
  br label %return, !dbg !705

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !706
  ret i32 %15, !dbg !706
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DEG_TO_RAD", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 13.0.1-2ubuntu2.2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "geohash_helper.c", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!4 = !{}
!5 = !{!0, !6, !10, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "EARTH_RADIUS_IN_METERS", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "MERCATOR_MAX", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "MERCATOR_MIN", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 13.0.1-2ubuntu2.2"}
!20 = distinct !DISubprogram(name: "geohashEstimateStepsByRadius", scope: !3, file: !3, line: 62, type: !21, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !9, !9}
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !26, line: 38, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DILocalVariable(name: "range_meters", arg: 1, scope: !20, file: !3, line: 62, type: !9)
!29 = !DILocation(line: 62, column: 45, scope: !20)
!30 = !DILocalVariable(name: "lat", arg: 2, scope: !20, file: !3, line: 62, type: !9)
!31 = !DILocation(line: 62, column: 66, scope: !20)
!32 = !DILocation(line: 63, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !20, file: !3, line: 63, column: 9)
!34 = !DILocation(line: 63, column: 22, scope: !33)
!35 = !DILocation(line: 63, column: 9, scope: !20)
!36 = !DILocation(line: 63, column: 28, scope: !33)
!37 = !DILocalVariable(name: "step", scope: !20, file: !3, line: 64, type: !38)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocation(line: 64, column: 9, scope: !20)
!40 = !DILocation(line: 65, column: 5, scope: !20)
!41 = !DILocation(line: 65, column: 12, scope: !20)
!42 = !DILocation(line: 65, column: 25, scope: !20)
!43 = !DILocation(line: 66, column: 22, scope: !44)
!44 = distinct !DILexicalBlock(scope: !20, file: !3, line: 65, column: 41)
!45 = !DILocation(line: 67, column: 13, scope: !44)
!46 = distinct !{!46, !40, !47, !48}
!47 = !DILocation(line: 68, column: 5, scope: !20)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 69, column: 10, scope: !20)
!50 = !DILocation(line: 74, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !20, file: !3, line: 74, column: 9)
!52 = !DILocation(line: 74, column: 13, scope: !51)
!53 = !DILocation(line: 74, column: 18, scope: !51)
!54 = !DILocation(line: 74, column: 21, scope: !51)
!55 = !DILocation(line: 74, column: 25, scope: !51)
!56 = !DILocation(line: 74, column: 9, scope: !20)
!57 = !DILocation(line: 75, column: 13, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !3, line: 74, column: 32)
!59 = !DILocation(line: 76, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !58, file: !3, line: 76, column: 13)
!61 = !DILocation(line: 76, column: 17, scope: !60)
!62 = !DILocation(line: 76, column: 22, scope: !60)
!63 = !DILocation(line: 76, column: 25, scope: !60)
!64 = !DILocation(line: 76, column: 29, scope: !60)
!65 = !DILocation(line: 76, column: 13, scope: !58)
!66 = !DILocation(line: 76, column: 40, scope: !60)
!67 = !DILocation(line: 76, column: 36, scope: !60)
!68 = !DILocation(line: 77, column: 5, scope: !58)
!69 = !DILocation(line: 80, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !20, file: !3, line: 80, column: 9)
!71 = !DILocation(line: 80, column: 14, scope: !70)
!72 = !DILocation(line: 80, column: 9, scope: !20)
!73 = !DILocation(line: 80, column: 24, scope: !70)
!74 = !DILocation(line: 80, column: 19, scope: !70)
!75 = !DILocation(line: 81, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !20, file: !3, line: 81, column: 9)
!77 = !DILocation(line: 81, column: 14, scope: !76)
!78 = !DILocation(line: 81, column: 9, scope: !20)
!79 = !DILocation(line: 81, column: 25, scope: !76)
!80 = !DILocation(line: 81, column: 20, scope: !76)
!81 = !DILocation(line: 82, column: 12, scope: !20)
!82 = !DILocation(line: 82, column: 5, scope: !20)
!83 = !DILocation(line: 83, column: 1, scope: !20)
!84 = distinct !DISubprogram(name: "geohashBoundingBox", scope: !3, file: !3, line: 98, type: !85, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!85 = !DISubroutineType(types: !86)
!86 = !{!38, !87, !111}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoShape", file: !89, line: 109, baseType: !90)
!89 = !DIFile(filename: "./geohash.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 94, size: 640, elements: !91)
!91 = !{!92, !93, !97, !98, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !89, line: 95, baseType: !38, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "xy", scope: !90, file: !89, line: 96, baseType: !94, size: 128, offset: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 2)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "conversion", scope: !90, file: !89, line: 97, baseType: !9, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !90, file: !89, line: 98, baseType: !99, size: 256, offset: 256)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !90, file: !89, line: 108, baseType: !103, size: 128, offset: 512)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !89, line: 100, size: 128, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !103, file: !89, line: 102, baseType: !9, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !103, file: !89, line: 107, baseType: !107, size: 128)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !89, line: 104, size: 128, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !107, file: !89, line: 105, baseType: !9, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !107, file: !89, line: 106, baseType: !9, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!112 = !DILocalVariable(name: "shape", arg: 1, scope: !84, file: !3, line: 98, type: !87)
!113 = !DILocation(line: 98, column: 34, scope: !84)
!114 = !DILocalVariable(name: "bounds", arg: 2, scope: !84, file: !3, line: 98, type: !111)
!115 = !DILocation(line: 98, column: 49, scope: !84)
!116 = !DILocation(line: 99, column: 10, scope: !117)
!117 = distinct !DILexicalBlock(scope: !84, file: !3, line: 99, column: 9)
!118 = !DILocation(line: 99, column: 9, scope: !84)
!119 = !DILocation(line: 99, column: 18, scope: !117)
!120 = !DILocalVariable(name: "longitude", scope: !84, file: !3, line: 100, type: !9)
!121 = !DILocation(line: 100, column: 12, scope: !84)
!122 = !DILocation(line: 100, column: 24, scope: !84)
!123 = !DILocation(line: 100, column: 31, scope: !84)
!124 = !DILocalVariable(name: "latitude", scope: !84, file: !3, line: 101, type: !9)
!125 = !DILocation(line: 101, column: 12, scope: !84)
!126 = !DILocation(line: 101, column: 23, scope: !84)
!127 = !DILocation(line: 101, column: 30, scope: !84)
!128 = !DILocalVariable(name: "height", scope: !84, file: !3, line: 102, type: !9)
!129 = !DILocation(line: 102, column: 12, scope: !84)
!130 = !DILocation(line: 102, column: 21, scope: !84)
!131 = !DILocation(line: 102, column: 28, scope: !84)
!132 = !DILocation(line: 102, column: 42, scope: !84)
!133 = !DILocation(line: 102, column: 49, scope: !84)
!134 = !DILocation(line: 102, column: 54, scope: !84)
!135 = !DILocation(line: 102, column: 73, scope: !84)
!136 = !DILocation(line: 102, column: 80, scope: !84)
!137 = !DILocation(line: 102, column: 82, scope: !84)
!138 = !DILocation(line: 102, column: 91, scope: !84)
!139 = !DILocation(line: 102, column: 98, scope: !84)
!140 = !DILocation(line: 102, column: 100, scope: !84)
!141 = !DILocation(line: 102, column: 102, scope: !84)
!142 = !DILocation(line: 102, column: 108, scope: !84)
!143 = !DILocation(line: 102, column: 39, scope: !84)
!144 = !DILocalVariable(name: "width", scope: !84, file: !3, line: 103, type: !9)
!145 = !DILocation(line: 103, column: 12, scope: !84)
!146 = !DILocation(line: 103, column: 20, scope: !84)
!147 = !DILocation(line: 103, column: 27, scope: !84)
!148 = !DILocation(line: 103, column: 41, scope: !84)
!149 = !DILocation(line: 103, column: 48, scope: !84)
!150 = !DILocation(line: 103, column: 53, scope: !84)
!151 = !DILocation(line: 103, column: 72, scope: !84)
!152 = !DILocation(line: 103, column: 79, scope: !84)
!153 = !DILocation(line: 103, column: 81, scope: !84)
!154 = !DILocation(line: 103, column: 90, scope: !84)
!155 = !DILocation(line: 103, column: 97, scope: !84)
!156 = !DILocation(line: 103, column: 99, scope: !84)
!157 = !DILocation(line: 103, column: 101, scope: !84)
!158 = !DILocation(line: 103, column: 106, scope: !84)
!159 = !DILocation(line: 103, column: 38, scope: !84)
!160 = !DILocalVariable(name: "lat_delta", scope: !84, file: !3, line: 105, type: !8)
!161 = !DILocation(line: 105, column: 18, scope: !84)
!162 = !DILocation(line: 105, column: 38, scope: !84)
!163 = !DILocation(line: 105, column: 44, scope: !84)
!164 = !DILocation(line: 105, column: 30, scope: !84)
!165 = !DILocalVariable(name: "long_delta_top", scope: !84, file: !3, line: 106, type: !8)
!166 = !DILocation(line: 106, column: 18, scope: !84)
!167 = !DILocation(line: 106, column: 43, scope: !84)
!168 = !DILocation(line: 106, column: 48, scope: !84)
!169 = !DILocation(line: 106, column: 84, scope: !84)
!170 = !DILocation(line: 106, column: 93, scope: !84)
!171 = !DILocation(line: 106, column: 92, scope: !84)
!172 = !DILocation(line: 106, column: 76, scope: !84)
!173 = !DILocation(line: 106, column: 72, scope: !84)
!174 = !DILocation(line: 106, column: 71, scope: !84)
!175 = !DILocation(line: 106, column: 35, scope: !84)
!176 = !DILocalVariable(name: "long_delta_bottom", scope: !84, file: !3, line: 107, type: !8)
!177 = !DILocation(line: 107, column: 18, scope: !84)
!178 = !DILocation(line: 107, column: 46, scope: !84)
!179 = !DILocation(line: 107, column: 51, scope: !84)
!180 = !DILocation(line: 107, column: 87, scope: !84)
!181 = !DILocation(line: 107, column: 96, scope: !84)
!182 = !DILocation(line: 107, column: 95, scope: !84)
!183 = !DILocation(line: 107, column: 79, scope: !84)
!184 = !DILocation(line: 107, column: 75, scope: !84)
!185 = !DILocation(line: 107, column: 74, scope: !84)
!186 = !DILocation(line: 107, column: 38, scope: !84)
!187 = !DILocalVariable(name: "southern_hemisphere", scope: !84, file: !3, line: 110, type: !38)
!188 = !DILocation(line: 110, column: 9, scope: !84)
!189 = !DILocation(line: 110, column: 31, scope: !84)
!190 = !DILocation(line: 110, column: 40, scope: !84)
!191 = !DILocation(line: 111, column: 17, scope: !84)
!192 = !DILocation(line: 111, column: 39, scope: !84)
!193 = !DILocation(line: 111, column: 49, scope: !84)
!194 = !DILocation(line: 111, column: 48, scope: !84)
!195 = !DILocation(line: 111, column: 69, scope: !84)
!196 = !DILocation(line: 111, column: 79, scope: !84)
!197 = !DILocation(line: 111, column: 78, scope: !84)
!198 = !DILocation(line: 111, column: 5, scope: !84)
!199 = !DILocation(line: 111, column: 15, scope: !84)
!200 = !DILocation(line: 112, column: 17, scope: !84)
!201 = !DILocation(line: 112, column: 39, scope: !84)
!202 = !DILocation(line: 112, column: 49, scope: !84)
!203 = !DILocation(line: 112, column: 48, scope: !84)
!204 = !DILocation(line: 112, column: 69, scope: !84)
!205 = !DILocation(line: 112, column: 79, scope: !84)
!206 = !DILocation(line: 112, column: 78, scope: !84)
!207 = !DILocation(line: 112, column: 5, scope: !84)
!208 = !DILocation(line: 112, column: 15, scope: !84)
!209 = !DILocation(line: 113, column: 17, scope: !84)
!210 = !DILocation(line: 113, column: 28, scope: !84)
!211 = !DILocation(line: 113, column: 26, scope: !84)
!212 = !DILocation(line: 113, column: 5, scope: !84)
!213 = !DILocation(line: 113, column: 15, scope: !84)
!214 = !DILocation(line: 114, column: 17, scope: !84)
!215 = !DILocation(line: 114, column: 28, scope: !84)
!216 = !DILocation(line: 114, column: 26, scope: !84)
!217 = !DILocation(line: 114, column: 5, scope: !84)
!218 = !DILocation(line: 114, column: 15, scope: !84)
!219 = !DILocation(line: 115, column: 5, scope: !84)
!220 = !DILocation(line: 116, column: 1, scope: !84)
!221 = distinct !DISubprogram(name: "rad_deg", scope: !3, file: !3, line: 58, type: !222, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!222 = !DISubroutineType(types: !223)
!223 = !{!9, !9}
!224 = !DILocalVariable(name: "ang", arg: 1, scope: !221, file: !3, line: 58, type: !9)
!225 = !DILocation(line: 58, column: 37, scope: !221)
!226 = !DILocation(line: 58, column: 51, scope: !221)
!227 = !DILocation(line: 58, column: 55, scope: !221)
!228 = !DILocation(line: 58, column: 44, scope: !221)
!229 = distinct !DISubprogram(name: "deg_rad", scope: !3, file: !3, line: 57, type: !222, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!230 = !DILocalVariable(name: "ang", arg: 1, scope: !229, file: !3, line: 57, type: !9)
!231 = !DILocation(line: 57, column: 37, scope: !229)
!232 = !DILocation(line: 57, column: 51, scope: !229)
!233 = !DILocation(line: 57, column: 55, scope: !229)
!234 = !DILocation(line: 57, column: 44, scope: !229)
!235 = distinct !DISubprogram(name: "geohashCalculateAreasByShapeWGS84", scope: !3, file: !3, line: 121, type: !236, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !87}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !239, line: 48, baseType: !240)
!239 = !DIFile(filename: "./geohash_helper.h", directory: "/home/verse/DOPExploit/MyDOP/big_benchmarks/redis-7.0.11/src")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 44, size: 1536, elements: !241)
!241 = !{!242, !251, !263}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !240, file: !239, line: 45, baseType: !243, size: 128)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !89, line: 68, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 65, size: 128, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !244, file: !89, line: 66, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !24, line: 27, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !26, line: 45, baseType: !249)
!249 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !244, file: !89, line: 67, baseType: !23, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !240, file: !239, line: 46, baseType: !252, size: 384, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !89, line: 79, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 75, size: 384, elements: !254)
!254 = !{!255, !256, !262}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !253, file: !89, line: 76, baseType: !243, size: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !253, file: !89, line: 77, baseType: !257, size: 128, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !89, line: 73, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 70, size: 128, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !258, file: !89, line: 71, baseType: !9, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !258, file: !89, line: 72, baseType: !9, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !253, file: !89, line: 78, baseType: !257, size: 128, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !240, file: !239, line: 47, baseType: !264, size: 1024, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !89, line: 90, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 81, size: 1024, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !265, file: !89, line: 82, baseType: !243, size: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !265, file: !89, line: 83, baseType: !243, size: 128, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !265, file: !89, line: 84, baseType: !243, size: 128, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !265, file: !89, line: 85, baseType: !243, size: 128, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !265, file: !89, line: 86, baseType: !243, size: 128, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !265, file: !89, line: 87, baseType: !243, size: 128, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !265, file: !89, line: 88, baseType: !243, size: 128, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !265, file: !89, line: 89, baseType: !243, size: 128, offset: 896)
!275 = !DILocalVariable(name: "shape", arg: 1, scope: !235, file: !3, line: 121, type: !87)
!276 = !DILocation(line: 121, column: 59, scope: !235)
!277 = !DILocalVariable(name: "long_range", scope: !235, file: !3, line: 122, type: !257)
!278 = !DILocation(line: 122, column: 18, scope: !235)
!279 = !DILocalVariable(name: "lat_range", scope: !235, file: !3, line: 122, type: !257)
!280 = !DILocation(line: 122, column: 30, scope: !235)
!281 = !DILocalVariable(name: "radius", scope: !235, file: !3, line: 123, type: !238)
!282 = !DILocation(line: 123, column: 19, scope: !235)
!283 = !DILocalVariable(name: "hash", scope: !235, file: !3, line: 124, type: !243)
!284 = !DILocation(line: 124, column: 17, scope: !235)
!285 = !DILocalVariable(name: "neighbors", scope: !235, file: !3, line: 125, type: !264)
!286 = !DILocation(line: 125, column: 22, scope: !235)
!287 = !DILocalVariable(name: "area", scope: !235, file: !3, line: 126, type: !252)
!288 = !DILocation(line: 126, column: 17, scope: !235)
!289 = !DILocalVariable(name: "min_lon", scope: !235, file: !3, line: 127, type: !9)
!290 = !DILocation(line: 127, column: 12, scope: !235)
!291 = !DILocalVariable(name: "max_lon", scope: !235, file: !3, line: 127, type: !9)
!292 = !DILocation(line: 127, column: 21, scope: !235)
!293 = !DILocalVariable(name: "min_lat", scope: !235, file: !3, line: 127, type: !9)
!294 = !DILocation(line: 127, column: 30, scope: !235)
!295 = !DILocalVariable(name: "max_lat", scope: !235, file: !3, line: 127, type: !9)
!296 = !DILocation(line: 127, column: 39, scope: !235)
!297 = !DILocalVariable(name: "steps", scope: !235, file: !3, line: 128, type: !38)
!298 = !DILocation(line: 128, column: 9, scope: !235)
!299 = !DILocation(line: 130, column: 24, scope: !235)
!300 = !DILocation(line: 130, column: 31, scope: !235)
!301 = !DILocation(line: 130, column: 38, scope: !235)
!302 = !DILocation(line: 130, column: 5, scope: !235)
!303 = !DILocation(line: 131, column: 15, scope: !235)
!304 = !DILocation(line: 131, column: 22, scope: !235)
!305 = !DILocation(line: 131, column: 13, scope: !235)
!306 = !DILocation(line: 132, column: 15, scope: !235)
!307 = !DILocation(line: 132, column: 22, scope: !235)
!308 = !DILocation(line: 132, column: 13, scope: !235)
!309 = !DILocation(line: 133, column: 15, scope: !235)
!310 = !DILocation(line: 133, column: 22, scope: !235)
!311 = !DILocation(line: 133, column: 13, scope: !235)
!312 = !DILocation(line: 134, column: 15, scope: !235)
!313 = !DILocation(line: 134, column: 22, scope: !235)
!314 = !DILocation(line: 134, column: 13, scope: !235)
!315 = !DILocalVariable(name: "longitude", scope: !235, file: !3, line: 136, type: !9)
!316 = !DILocation(line: 136, column: 12, scope: !235)
!317 = !DILocation(line: 136, column: 24, scope: !235)
!318 = !DILocation(line: 136, column: 31, scope: !235)
!319 = !DILocalVariable(name: "latitude", scope: !235, file: !3, line: 137, type: !9)
!320 = !DILocation(line: 137, column: 12, scope: !235)
!321 = !DILocation(line: 137, column: 23, scope: !235)
!322 = !DILocation(line: 137, column: 30, scope: !235)
!323 = !DILocalVariable(name: "radius_meters", scope: !235, file: !3, line: 142, type: !9)
!324 = !DILocation(line: 142, column: 12, scope: !235)
!325 = !DILocation(line: 142, column: 28, scope: !235)
!326 = !DILocation(line: 142, column: 35, scope: !235)
!327 = !DILocation(line: 142, column: 40, scope: !235)
!328 = !DILocation(line: 142, column: 59, scope: !235)
!329 = !DILocation(line: 142, column: 66, scope: !235)
!330 = !DILocation(line: 142, column: 68, scope: !235)
!331 = !DILocation(line: 143, column: 19, scope: !235)
!332 = !DILocation(line: 143, column: 26, scope: !235)
!333 = !DILocation(line: 143, column: 28, scope: !235)
!334 = !DILocation(line: 143, column: 30, scope: !235)
!335 = !DILocation(line: 143, column: 35, scope: !235)
!336 = !DILocation(line: 143, column: 40, scope: !235)
!337 = !DILocation(line: 143, column: 47, scope: !235)
!338 = !DILocation(line: 143, column: 49, scope: !235)
!339 = !DILocation(line: 143, column: 51, scope: !235)
!340 = !DILocation(line: 143, column: 56, scope: !235)
!341 = !DILocation(line: 143, column: 38, scope: !235)
!342 = !DILocation(line: 143, column: 63, scope: !235)
!343 = !DILocation(line: 143, column: 70, scope: !235)
!344 = !DILocation(line: 143, column: 72, scope: !235)
!345 = !DILocation(line: 143, column: 74, scope: !235)
!346 = !DILocation(line: 143, column: 80, scope: !235)
!347 = !DILocation(line: 143, column: 85, scope: !235)
!348 = !DILocation(line: 143, column: 92, scope: !235)
!349 = !DILocation(line: 143, column: 94, scope: !235)
!350 = !DILocation(line: 143, column: 96, scope: !235)
!351 = !DILocation(line: 143, column: 102, scope: !235)
!352 = !DILocation(line: 143, column: 83, scope: !235)
!353 = !DILocation(line: 143, column: 60, scope: !235)
!354 = !DILocation(line: 143, column: 13, scope: !235)
!355 = !DILocation(line: 144, column: 22, scope: !235)
!356 = !DILocation(line: 144, column: 29, scope: !235)
!357 = !DILocation(line: 144, column: 19, scope: !235)
!358 = !DILocation(line: 146, column: 42, scope: !235)
!359 = !DILocation(line: 146, column: 56, scope: !235)
!360 = !DILocation(line: 146, column: 13, scope: !235)
!361 = !DILocation(line: 146, column: 11, scope: !235)
!362 = !DILocation(line: 148, column: 5, scope: !235)
!363 = !DILocation(line: 149, column: 42, scope: !235)
!364 = !DILocation(line: 149, column: 52, scope: !235)
!365 = !DILocation(line: 149, column: 61, scope: !235)
!366 = !DILocation(line: 149, column: 5, scope: !235)
!367 = !DILocation(line: 150, column: 5, scope: !235)
!368 = !DILocation(line: 151, column: 5, scope: !235)
!369 = !DILocalVariable(name: "decrease_step", scope: !235, file: !3, line: 158, type: !38)
!370 = !DILocation(line: 158, column: 9, scope: !235)
!371 = !DILocalVariable(name: "north", scope: !372, file: !3, line: 160, type: !252)
!372 = distinct !DILexicalBlock(scope: !235, file: !3, line: 159, column: 5)
!373 = !DILocation(line: 160, column: 21, scope: !372)
!374 = !DILocalVariable(name: "south", scope: !372, file: !3, line: 160, type: !252)
!375 = !DILocation(line: 160, column: 28, scope: !372)
!376 = !DILocalVariable(name: "east", scope: !372, file: !3, line: 160, type: !252)
!377 = !DILocation(line: 160, column: 35, scope: !372)
!378 = !DILocalVariable(name: "west", scope: !372, file: !3, line: 160, type: !252)
!379 = !DILocation(line: 160, column: 41, scope: !372)
!380 = !DILocation(line: 162, column: 56, scope: !372)
!381 = !DILocation(line: 162, column: 9, scope: !372)
!382 = !DILocation(line: 163, column: 56, scope: !372)
!383 = !DILocation(line: 163, column: 9, scope: !372)
!384 = !DILocation(line: 164, column: 56, scope: !372)
!385 = !DILocation(line: 164, column: 9, scope: !372)
!386 = !DILocation(line: 165, column: 56, scope: !372)
!387 = !DILocation(line: 165, column: 9, scope: !372)
!388 = !DILocation(line: 167, column: 19, scope: !389)
!389 = distinct !DILexicalBlock(scope: !372, file: !3, line: 167, column: 13)
!390 = !DILocation(line: 167, column: 28, scope: !389)
!391 = !DILocation(line: 167, column: 34, scope: !389)
!392 = !DILocation(line: 167, column: 32, scope: !389)
!393 = !DILocation(line: 167, column: 13, scope: !372)
!394 = !DILocation(line: 168, column: 27, scope: !389)
!395 = !DILocation(line: 168, column: 13, scope: !389)
!396 = !DILocation(line: 169, column: 19, scope: !397)
!397 = distinct !DILexicalBlock(scope: !372, file: !3, line: 169, column: 13)
!398 = !DILocation(line: 169, column: 28, scope: !397)
!399 = !DILocation(line: 169, column: 34, scope: !397)
!400 = !DILocation(line: 169, column: 32, scope: !397)
!401 = !DILocation(line: 169, column: 13, scope: !372)
!402 = !DILocation(line: 170, column: 27, scope: !397)
!403 = !DILocation(line: 170, column: 13, scope: !397)
!404 = !DILocation(line: 171, column: 18, scope: !405)
!405 = distinct !DILexicalBlock(scope: !372, file: !3, line: 171, column: 13)
!406 = !DILocation(line: 171, column: 28, scope: !405)
!407 = !DILocation(line: 171, column: 34, scope: !405)
!408 = !DILocation(line: 171, column: 32, scope: !405)
!409 = !DILocation(line: 171, column: 13, scope: !372)
!410 = !DILocation(line: 172, column: 27, scope: !405)
!411 = !DILocation(line: 172, column: 13, scope: !405)
!412 = !DILocation(line: 173, column: 18, scope: !413)
!413 = distinct !DILexicalBlock(scope: !372, file: !3, line: 173, column: 13)
!414 = !DILocation(line: 173, column: 28, scope: !413)
!415 = !DILocation(line: 173, column: 34, scope: !413)
!416 = !DILocation(line: 173, column: 32, scope: !413)
!417 = !DILocation(line: 173, column: 13, scope: !372)
!418 = !DILocation(line: 174, column: 27, scope: !413)
!419 = !DILocation(line: 174, column: 13, scope: !413)
!420 = !DILocation(line: 177, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !235, file: !3, line: 177, column: 9)
!422 = !DILocation(line: 177, column: 15, scope: !421)
!423 = !DILocation(line: 177, column: 19, scope: !421)
!424 = !DILocation(line: 177, column: 22, scope: !421)
!425 = !DILocation(line: 177, column: 9, scope: !235)
!426 = !DILocation(line: 178, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !421, file: !3, line: 177, column: 37)
!428 = !DILocation(line: 179, column: 46, scope: !427)
!429 = !DILocation(line: 179, column: 56, scope: !427)
!430 = !DILocation(line: 179, column: 65, scope: !427)
!431 = !DILocation(line: 179, column: 9, scope: !427)
!432 = !DILocation(line: 180, column: 9, scope: !427)
!433 = !DILocation(line: 181, column: 9, scope: !427)
!434 = !DILocation(line: 182, column: 5, scope: !427)
!435 = !DILocation(line: 185, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !235, file: !3, line: 185, column: 9)
!437 = !DILocation(line: 185, column: 15, scope: !436)
!438 = !DILocation(line: 185, column: 9, scope: !235)
!439 = !DILocation(line: 186, column: 18, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 186, column: 13)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 185, column: 21)
!442 = !DILocation(line: 186, column: 27, scope: !440)
!443 = !DILocation(line: 186, column: 33, scope: !440)
!444 = !DILocation(line: 186, column: 31, scope: !440)
!445 = !DILocation(line: 186, column: 13, scope: !441)
!446 = !DILocation(line: 187, column: 13, scope: !447)
!447 = distinct !DILexicalBlock(scope: !440, file: !3, line: 186, column: 42)
!448 = !DILocation(line: 188, column: 13, scope: !447)
!449 = !DILocation(line: 189, column: 13, scope: !447)
!450 = !DILocation(line: 190, column: 9, scope: !447)
!451 = !DILocation(line: 191, column: 18, scope: !452)
!452 = distinct !DILexicalBlock(scope: !441, file: !3, line: 191, column: 13)
!453 = !DILocation(line: 191, column: 27, scope: !452)
!454 = !DILocation(line: 191, column: 33, scope: !452)
!455 = !DILocation(line: 191, column: 31, scope: !452)
!456 = !DILocation(line: 191, column: 13, scope: !441)
!457 = !DILocation(line: 192, column: 13, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !3, line: 191, column: 42)
!459 = !DILocation(line: 193, column: 13, scope: !458)
!460 = !DILocation(line: 194, column: 13, scope: !458)
!461 = !DILocation(line: 195, column: 9, scope: !458)
!462 = !DILocation(line: 196, column: 18, scope: !463)
!463 = distinct !DILexicalBlock(scope: !441, file: !3, line: 196, column: 13)
!464 = !DILocation(line: 196, column: 28, scope: !463)
!465 = !DILocation(line: 196, column: 34, scope: !463)
!466 = !DILocation(line: 196, column: 32, scope: !463)
!467 = !DILocation(line: 196, column: 13, scope: !441)
!468 = !DILocation(line: 197, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !3, line: 196, column: 43)
!470 = !DILocation(line: 198, column: 13, scope: !469)
!471 = !DILocation(line: 199, column: 13, scope: !469)
!472 = !DILocation(line: 200, column: 9, scope: !469)
!473 = !DILocation(line: 201, column: 18, scope: !474)
!474 = distinct !DILexicalBlock(scope: !441, file: !3, line: 201, column: 13)
!475 = !DILocation(line: 201, column: 28, scope: !474)
!476 = !DILocation(line: 201, column: 34, scope: !474)
!477 = !DILocation(line: 201, column: 32, scope: !474)
!478 = !DILocation(line: 201, column: 13, scope: !441)
!479 = !DILocation(line: 202, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !3, line: 201, column: 43)
!481 = !DILocation(line: 203, column: 13, scope: !480)
!482 = !DILocation(line: 204, column: 13, scope: !480)
!483 = !DILocation(line: 205, column: 9, scope: !480)
!484 = !DILocation(line: 206, column: 5, scope: !441)
!485 = !DILocation(line: 207, column: 12, scope: !235)
!486 = !DILocation(line: 207, column: 19, scope: !235)
!487 = !DILocation(line: 208, column: 12, scope: !235)
!488 = !DILocation(line: 208, column: 24, scope: !235)
!489 = !DILocation(line: 209, column: 12, scope: !235)
!490 = !DILocation(line: 209, column: 19, scope: !235)
!491 = !DILocation(line: 210, column: 5, scope: !235)
!492 = distinct !DISubprogram(name: "geohashAlign52Bits", scope: !3, file: !3, line: 213, type: !493, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !239, line: 41, baseType: !247)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!497 = !DILocalVariable(name: "hash", arg: 1, scope: !492, file: !3, line: 213, type: !496)
!498 = !DILocation(line: 213, column: 55, scope: !492)
!499 = !DILocalVariable(name: "bits", scope: !492, file: !3, line: 214, type: !247)
!500 = !DILocation(line: 214, column: 14, scope: !492)
!501 = !DILocation(line: 214, column: 26, scope: !492)
!502 = !DILocation(line: 215, column: 25, scope: !492)
!503 = !DILocation(line: 215, column: 20, scope: !492)
!504 = !DILocation(line: 215, column: 30, scope: !492)
!505 = !DILocation(line: 215, column: 18, scope: !492)
!506 = !DILocation(line: 215, column: 10, scope: !492)
!507 = !DILocation(line: 216, column: 12, scope: !492)
!508 = !DILocation(line: 216, column: 5, scope: !492)
!509 = distinct !DISubprogram(name: "geohashGetLatDistance", scope: !3, file: !3, line: 224, type: !510, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!510 = !DISubroutineType(types: !511)
!511 = !{!9, !9, !9}
!512 = !DILocalVariable(name: "lat1d", arg: 1, scope: !509, file: !3, line: 224, type: !9)
!513 = !DILocation(line: 224, column: 37, scope: !509)
!514 = !DILocalVariable(name: "lat2d", arg: 2, scope: !509, file: !3, line: 224, type: !9)
!515 = !DILocation(line: 224, column: 51, scope: !509)
!516 = !DILocation(line: 225, column: 50, scope: !509)
!517 = !DILocation(line: 225, column: 42, scope: !509)
!518 = !DILocation(line: 225, column: 67, scope: !509)
!519 = !DILocation(line: 225, column: 59, scope: !509)
!520 = !DILocation(line: 225, column: 57, scope: !509)
!521 = !DILocation(line: 225, column: 37, scope: !509)
!522 = !DILocation(line: 225, column: 35, scope: !509)
!523 = !DILocation(line: 225, column: 5, scope: !509)
!524 = distinct !DISubprogram(name: "geohashGetDistance", scope: !3, file: !3, line: 229, type: !525, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!525 = !DISubroutineType(types: !526)
!526 = !{!9, !9, !9, !9, !9}
!527 = !DILocalVariable(name: "lon1d", arg: 1, scope: !524, file: !3, line: 229, type: !9)
!528 = !DILocation(line: 229, column: 34, scope: !524)
!529 = !DILocalVariable(name: "lat1d", arg: 2, scope: !524, file: !3, line: 229, type: !9)
!530 = !DILocation(line: 229, column: 48, scope: !524)
!531 = !DILocalVariable(name: "lon2d", arg: 3, scope: !524, file: !3, line: 229, type: !9)
!532 = !DILocation(line: 229, column: 62, scope: !524)
!533 = !DILocalVariable(name: "lat2d", arg: 4, scope: !524, file: !3, line: 229, type: !9)
!534 = !DILocation(line: 229, column: 76, scope: !524)
!535 = !DILocalVariable(name: "lat1r", scope: !524, file: !3, line: 230, type: !9)
!536 = !DILocation(line: 230, column: 12, scope: !524)
!537 = !DILocalVariable(name: "lon1r", scope: !524, file: !3, line: 230, type: !9)
!538 = !DILocation(line: 230, column: 19, scope: !524)
!539 = !DILocalVariable(name: "lat2r", scope: !524, file: !3, line: 230, type: !9)
!540 = !DILocation(line: 230, column: 26, scope: !524)
!541 = !DILocalVariable(name: "lon2r", scope: !524, file: !3, line: 230, type: !9)
!542 = !DILocation(line: 230, column: 33, scope: !524)
!543 = !DILocalVariable(name: "u", scope: !524, file: !3, line: 230, type: !9)
!544 = !DILocation(line: 230, column: 40, scope: !524)
!545 = !DILocalVariable(name: "v", scope: !524, file: !3, line: 230, type: !9)
!546 = !DILocation(line: 230, column: 43, scope: !524)
!547 = !DILocalVariable(name: "a", scope: !524, file: !3, line: 230, type: !9)
!548 = !DILocation(line: 230, column: 46, scope: !524)
!549 = !DILocation(line: 231, column: 21, scope: !524)
!550 = !DILocation(line: 231, column: 13, scope: !524)
!551 = !DILocation(line: 231, column: 11, scope: !524)
!552 = !DILocation(line: 232, column: 21, scope: !524)
!553 = !DILocation(line: 232, column: 13, scope: !524)
!554 = !DILocation(line: 232, column: 11, scope: !524)
!555 = !DILocation(line: 233, column: 14, scope: !524)
!556 = !DILocation(line: 233, column: 22, scope: !524)
!557 = !DILocation(line: 233, column: 20, scope: !524)
!558 = !DILocation(line: 233, column: 29, scope: !524)
!559 = !DILocation(line: 233, column: 9, scope: !524)
!560 = !DILocation(line: 233, column: 7, scope: !524)
!561 = !DILocation(line: 235, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !524, file: !3, line: 235, column: 9)
!563 = !DILocation(line: 235, column: 11, scope: !562)
!564 = !DILocation(line: 235, column: 9, scope: !524)
!565 = !DILocation(line: 236, column: 38, scope: !562)
!566 = !DILocation(line: 236, column: 45, scope: !562)
!567 = !DILocation(line: 236, column: 16, scope: !562)
!568 = !DILocation(line: 236, column: 9, scope: !562)
!569 = !DILocation(line: 237, column: 21, scope: !524)
!570 = !DILocation(line: 237, column: 13, scope: !524)
!571 = !DILocation(line: 237, column: 11, scope: !524)
!572 = !DILocation(line: 238, column: 21, scope: !524)
!573 = !DILocation(line: 238, column: 13, scope: !524)
!574 = !DILocation(line: 238, column: 11, scope: !524)
!575 = !DILocation(line: 239, column: 14, scope: !524)
!576 = !DILocation(line: 239, column: 22, scope: !524)
!577 = !DILocation(line: 239, column: 20, scope: !524)
!578 = !DILocation(line: 239, column: 29, scope: !524)
!579 = !DILocation(line: 239, column: 9, scope: !524)
!580 = !DILocation(line: 239, column: 7, scope: !524)
!581 = !DILocation(line: 240, column: 9, scope: !524)
!582 = !DILocation(line: 240, column: 13, scope: !524)
!583 = !DILocation(line: 240, column: 11, scope: !524)
!584 = !DILocation(line: 240, column: 21, scope: !524)
!585 = !DILocation(line: 240, column: 17, scope: !524)
!586 = !DILocation(line: 240, column: 34, scope: !524)
!587 = !DILocation(line: 240, column: 30, scope: !524)
!588 = !DILocation(line: 240, column: 28, scope: !524)
!589 = !DILocation(line: 240, column: 43, scope: !524)
!590 = !DILocation(line: 240, column: 41, scope: !524)
!591 = !DILocation(line: 240, column: 47, scope: !524)
!592 = !DILocation(line: 240, column: 45, scope: !524)
!593 = !DILocation(line: 240, column: 15, scope: !524)
!594 = !DILocation(line: 240, column: 7, scope: !524)
!595 = !DILocation(line: 241, column: 53, scope: !524)
!596 = !DILocation(line: 241, column: 48, scope: !524)
!597 = !DILocation(line: 241, column: 43, scope: !524)
!598 = !DILocation(line: 241, column: 41, scope: !524)
!599 = !DILocation(line: 241, column: 5, scope: !524)
!600 = !DILocation(line: 242, column: 1, scope: !524)
!601 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadius", scope: !3, file: !3, line: 244, type: !602, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!602 = !DISubroutineType(types: !603)
!603 = !{!38, !9, !9, !9, !9, !9, !111}
!604 = !DILocalVariable(name: "x1", arg: 1, scope: !601, file: !3, line: 244, type: !9)
!605 = !DILocation(line: 244, column: 41, scope: !601)
!606 = !DILocalVariable(name: "y1", arg: 2, scope: !601, file: !3, line: 244, type: !9)
!607 = !DILocation(line: 244, column: 52, scope: !601)
!608 = !DILocalVariable(name: "x2", arg: 3, scope: !601, file: !3, line: 245, type: !9)
!609 = !DILocation(line: 245, column: 41, scope: !601)
!610 = !DILocalVariable(name: "y2", arg: 4, scope: !601, file: !3, line: 245, type: !9)
!611 = !DILocation(line: 245, column: 52, scope: !601)
!612 = !DILocalVariable(name: "radius", arg: 5, scope: !601, file: !3, line: 245, type: !9)
!613 = !DILocation(line: 245, column: 63, scope: !601)
!614 = !DILocalVariable(name: "distance", arg: 6, scope: !601, file: !3, line: 246, type: !111)
!615 = !DILocation(line: 246, column: 42, scope: !601)
!616 = !DILocation(line: 247, column: 36, scope: !601)
!617 = !DILocation(line: 247, column: 40, scope: !601)
!618 = !DILocation(line: 247, column: 44, scope: !601)
!619 = !DILocation(line: 247, column: 48, scope: !601)
!620 = !DILocation(line: 247, column: 17, scope: !601)
!621 = !DILocation(line: 247, column: 6, scope: !601)
!622 = !DILocation(line: 247, column: 15, scope: !601)
!623 = !DILocation(line: 248, column: 10, scope: !624)
!624 = distinct !DILexicalBlock(scope: !601, file: !3, line: 248, column: 9)
!625 = !DILocation(line: 248, column: 9, scope: !624)
!626 = !DILocation(line: 248, column: 21, scope: !624)
!627 = !DILocation(line: 248, column: 19, scope: !624)
!628 = !DILocation(line: 248, column: 9, scope: !601)
!629 = !DILocation(line: 248, column: 29, scope: !624)
!630 = !DILocation(line: 249, column: 5, scope: !601)
!631 = !DILocation(line: 250, column: 1, scope: !601)
!632 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadiusWGS84", scope: !3, file: !3, line: 252, type: !602, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!633 = !DILocalVariable(name: "x1", arg: 1, scope: !632, file: !3, line: 252, type: !9)
!634 = !DILocation(line: 252, column: 46, scope: !632)
!635 = !DILocalVariable(name: "y1", arg: 2, scope: !632, file: !3, line: 252, type: !9)
!636 = !DILocation(line: 252, column: 57, scope: !632)
!637 = !DILocalVariable(name: "x2", arg: 3, scope: !632, file: !3, line: 252, type: !9)
!638 = !DILocation(line: 252, column: 68, scope: !632)
!639 = !DILocalVariable(name: "y2", arg: 4, scope: !632, file: !3, line: 253, type: !9)
!640 = !DILocation(line: 253, column: 46, scope: !632)
!641 = !DILocalVariable(name: "radius", arg: 5, scope: !632, file: !3, line: 253, type: !9)
!642 = !DILocation(line: 253, column: 57, scope: !632)
!643 = !DILocalVariable(name: "distance", arg: 6, scope: !632, file: !3, line: 254, type: !111)
!644 = !DILocation(line: 254, column: 47, scope: !632)
!645 = !DILocation(line: 255, column: 41, scope: !632)
!646 = !DILocation(line: 255, column: 45, scope: !632)
!647 = !DILocation(line: 255, column: 49, scope: !632)
!648 = !DILocation(line: 255, column: 53, scope: !632)
!649 = !DILocation(line: 255, column: 57, scope: !632)
!650 = !DILocation(line: 255, column: 65, scope: !632)
!651 = !DILocation(line: 255, column: 12, scope: !632)
!652 = !DILocation(line: 255, column: 5, scope: !632)
!653 = distinct !DISubprogram(name: "geohashGetDistanceIfInRectangle", scope: !3, file: !3, line: 266, type: !654, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!654 = !DISubroutineType(types: !655)
!655 = !{!38, !9, !9, !9, !9, !9, !9, !111}
!656 = !DILocalVariable(name: "width_m", arg: 1, scope: !653, file: !3, line: 266, type: !9)
!657 = !DILocation(line: 266, column: 44, scope: !653)
!658 = !DILocalVariable(name: "height_m", arg: 2, scope: !653, file: !3, line: 266, type: !9)
!659 = !DILocation(line: 266, column: 60, scope: !653)
!660 = !DILocalVariable(name: "x1", arg: 3, scope: !653, file: !3, line: 266, type: !9)
!661 = !DILocation(line: 266, column: 77, scope: !653)
!662 = !DILocalVariable(name: "y1", arg: 4, scope: !653, file: !3, line: 266, type: !9)
!663 = !DILocation(line: 266, column: 88, scope: !653)
!664 = !DILocalVariable(name: "x2", arg: 5, scope: !653, file: !3, line: 267, type: !9)
!665 = !DILocation(line: 267, column: 44, scope: !653)
!666 = !DILocalVariable(name: "y2", arg: 6, scope: !653, file: !3, line: 267, type: !9)
!667 = !DILocation(line: 267, column: 55, scope: !653)
!668 = !DILocalVariable(name: "distance", arg: 7, scope: !653, file: !3, line: 267, type: !111)
!669 = !DILocation(line: 267, column: 67, scope: !653)
!670 = !DILocalVariable(name: "lat_distance", scope: !653, file: !3, line: 270, type: !9)
!671 = !DILocation(line: 270, column: 12, scope: !653)
!672 = !DILocation(line: 270, column: 49, scope: !653)
!673 = !DILocation(line: 270, column: 53, scope: !653)
!674 = !DILocation(line: 270, column: 27, scope: !653)
!675 = !DILocation(line: 271, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !653, file: !3, line: 271, column: 9)
!677 = !DILocation(line: 271, column: 24, scope: !676)
!678 = !DILocation(line: 271, column: 32, scope: !676)
!679 = !DILocation(line: 271, column: 22, scope: !676)
!680 = !DILocation(line: 271, column: 9, scope: !653)
!681 = !DILocation(line: 272, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !676, file: !3, line: 271, column: 36)
!683 = !DILocalVariable(name: "lon_distance", scope: !653, file: !3, line: 274, type: !9)
!684 = !DILocation(line: 274, column: 12, scope: !653)
!685 = !DILocation(line: 274, column: 46, scope: !653)
!686 = !DILocation(line: 274, column: 50, scope: !653)
!687 = !DILocation(line: 274, column: 54, scope: !653)
!688 = !DILocation(line: 274, column: 58, scope: !653)
!689 = !DILocation(line: 274, column: 27, scope: !653)
!690 = !DILocation(line: 275, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !653, file: !3, line: 275, column: 9)
!692 = !DILocation(line: 275, column: 24, scope: !691)
!693 = !DILocation(line: 275, column: 31, scope: !691)
!694 = !DILocation(line: 275, column: 22, scope: !691)
!695 = !DILocation(line: 275, column: 9, scope: !653)
!696 = !DILocation(line: 276, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 275, column: 35)
!698 = !DILocation(line: 278, column: 36, scope: !653)
!699 = !DILocation(line: 278, column: 40, scope: !653)
!700 = !DILocation(line: 278, column: 44, scope: !653)
!701 = !DILocation(line: 278, column: 48, scope: !653)
!702 = !DILocation(line: 278, column: 17, scope: !653)
!703 = !DILocation(line: 278, column: 6, scope: !653)
!704 = !DILocation(line: 278, column: 15, scope: !653)
!705 = !DILocation(line: 279, column: 5, scope: !653)
!706 = !DILocation(line: 280, column: 1, scope: !653)
