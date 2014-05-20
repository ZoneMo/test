.class final Lcom/tencent/mapapi/map/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Uc:I

.field public Ud:I

.field public Um:I

.field WW:Lcom/tencent/mapapi/map/bm;

.field private XA:Lcom/tencent/mapapi/map/GeoPoint;

.field XB:[F

.field XC:[D

.field XD:[D

.field XE:[D

.field public Xy:Landroid/graphics/PointF;

.field private Xz:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bm;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    .line 24
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->WW:Lcom/tencent/mapapi/map/bm;

    .line 25
    new-instance v0, Lcom/tencent/mapapi/map/GeoPoint;

    const v1, 0x260f56c

    const v2, 0x6f015d9

    invoke-direct {v0, v1, v2}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    .line 29
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mapapi/map/bo;->Um:I

    .line 32
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->XB:[F

    .line 33
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    .line 34
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->XD:[D

    .line 35
    iput-object v3, p0, Lcom/tencent/mapapi/map/bo;->XE:[D

    .line 38
    iput-object p1, p0, Lcom/tencent/mapapi/map/bo;->WW:Lcom/tencent/mapapi/map/bm;

    .line 39
    return-void
.end method

.method private kY()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->XA:Lcom/tencent/mapapi/map/GeoPoint;

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    .line 78
    return-void
.end method

.method private static v(II)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 189
    if-gez p1, :cond_1

    .line 191
    add-int/2addr p1, p0

    .line 197
    :cond_0
    :goto_0
    return p1

    .line 193
    :cond_1
    if-lt p1, p0, :cond_0

    .line 195
    sub-int/2addr p1, p0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x412e848000000000L

    const-wide/high16 v8, 0x3ff0

    .line 98
    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, -0x401000d1b71758e2L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide v2, 0x3fefff2e48e8a71eL

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v3, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v3, p2, v3

    aget-wide v2, v2, v3

    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v4, v6

    iget-object v6, p0, Lcom/tencent/mapapi/map/bo;->XD:[D

    iget v7, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v7, p2, v7

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 106
    iget-object v4, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v5, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v5, p2, v5

    aget-wide v4, v4, v5

    add-double v6, v8, v0

    sub-double v0, v8, v0

    div-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-object v6, p0, Lcom/tencent/mapapi/map/bo;->XE:[D

    iget v7, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v7, p2, v7

    aget-wide v6, v6, v7

    mul-double/2addr v0, v6

    const-wide/high16 v6, 0x3fe0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 108
    new-instance v4, Landroid/graphics/PointF;

    double-to-float v2, v2

    double-to-float v0, v0

    invoke-direct {v4, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v4
.end method

.method public final a(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 114
    invoke-virtual {p0, v0, p2}, Lcom/tencent/mapapi/map/bo;->b(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public final a(IIIF)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v9, v1

    .line 254
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x4380

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 257
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x4380

    rem-float/2addr v2, v3

    sub-float v11, v1, v2

    .line 259
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x4380

    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x4380

    rem-float/2addr v3, v4

    sub-float/2addr v2, v3

    sub-float v12, v1, v2

    .line 270
    move/from16 v0, p2

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    move/from16 v0, p4

    float-to-double v5, v0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    div-double v3, v1, v3

    .line 271
    float-to-double v1, v11

    add-double/2addr v1, v3

    .line 272
    const-wide/16 v5, 0x0

    cmpg-double v5, v1, v5

    if-gez v5, :cond_5

    .line 274
    const-wide/16 v1, 0x0

    move-wide v7, v1

    .line 276
    :goto_0
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    sub-float/2addr v1, v11

    const/high16 v2, 0x4380

    sub-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v3

    .line 277
    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_4

    .line 279
    const-wide/16 v1, 0x0

    move-wide v5, v1

    .line 282
    :goto_1
    move/from16 v0, p3

    int-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    move/from16 v0, p4

    float-to-double v13, v0

    div-double/2addr v3, v13

    const-wide/high16 v13, 0x3ff0

    sub-double/2addr v3, v13

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000

    div-double v13, v1, v3

    .line 283
    float-to-double v1, v12

    add-double/2addr v1, v13

    .line 284
    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    .line 286
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .line 289
    :goto_2
    move/from16 v0, p3

    int-to-float v1, v0

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    sub-float/2addr v1, v12

    const/high16 v2, 0x4380

    sub-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v13

    .line 290
    const-wide/16 v13, 0x0

    cmpg-double v13, v1, v13

    if-gez v13, :cond_0

    .line 292
    const-wide/16 v1, 0x0

    .line 295
    :cond_0
    const-wide/high16 v13, 0x4070

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 296
    const-wide/high16 v13, 0x4070

    div-double/2addr v5, v13

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 297
    const-wide/high16 v13, 0x4070

    div-double/2addr v3, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 298
    const-wide/high16 v13, 0x4070

    div-double/2addr v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v4, v1

    .line 300
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 301
    const-wide/high16 v1, 0x4000

    add-int/lit8 v8, p1, 0x1

    int-to-double v13, v8

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v8, v1

    .line 305
    neg-int v1, v7

    move v2, v1

    :goto_3
    if-gt v2, v5, :cond_2

    .line 307
    neg-int v1, v4

    :goto_4
    if-gt v1, v3, :cond_1

    .line 309
    add-int v7, v9, v2

    invoke-static {v8, v7}, Lcom/tencent/mapapi/map/bo;->v(II)I

    move-result v7

    .line 310
    add-int v13, v10, v1

    invoke-static {v8, v13}, Lcom/tencent/mapapi/map/bo;->v(II)I

    move-result v13

    .line 311
    new-instance v14, Lcom/tencent/mapapi/map/ab;

    move/from16 v0, p1

    invoke-direct {v14, v7, v13, v0}, Lcom/tencent/mapapi/map/ab;-><init>(III)V

    .line 312
    mul-int/lit16 v7, v2, 0x100

    int-to-float v7, v7

    add-float/2addr v7, v11

    iput v7, v14, Lcom/tencent/mapapi/map/ab;->VZ:F

    .line 313
    mul-int/lit16 v7, v1, 0x100

    int-to-float v7, v7

    sub-float v7, v12, v7

    iput v7, v14, Lcom/tencent/mapapi/map/ab;->Wa:F

    .line 314
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 305
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 318
    :cond_2
    return-object v6

    :cond_3
    move-wide v3, v1

    goto :goto_2

    :cond_4
    move-wide v5, v1

    goto/16 :goto_1

    :cond_5
    move-wide v7, v1

    goto/16 :goto_0
.end method

.method public final a(Landroid/graphics/Point;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 87
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 88
    return-void
.end method

.method public final b(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    sub-float v0, v3, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method final b(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide v10, 0x412e848000000000L

    const-wide/high16 v8, 0x3ff0

    .line 125
    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v3, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v3, p2, v3

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->XD:[D

    iget v3, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v3, p2, v3

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    .line 126
    const-wide v2, 0x4005bf0a8b145769L

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-double v4, v4

    iget-object v6, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v7, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v7, p2, v7

    aget-wide v6, v6, v7

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0

    div-double/2addr v4, v6

    iget-object v6, p0, Lcom/tencent/mapapi/map/bo;->XE:[D

    iget v7, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v7, p2, v7

    aget-wide v6, v6, v7

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 128
    const-wide/high16 v4, 0x4000

    add-double/2addr v2, v8

    div-double v2, v4, v2

    sub-double v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    .line 129
    new-instance v4, Lcom/tencent/mapapi/map/GeoPoint;

    mul-double/2addr v2, v10

    double-to-int v2, v2

    mul-double/2addr v0, v10

    double-to-int v0, v0

    invoke-direct {v4, v2, v0}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    return-object v4
.end method

.method public final h(III)Ljava/util/ArrayList;
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->XA:Lcom/tencent/mapapi/map/GeoPoint;

    move/from16 v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v1

    .line 325
    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 326
    iget v2, v1, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x4380

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 327
    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v5, v1, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x4380

    rem-float/2addr v5, v6

    sub-float v5, v2, v5

    .line 329
    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v6, 0x4380

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x4380

    rem-float/2addr v1, v7

    sub-float v1, v6, v1

    sub-float v6, v2, v1

    .line 332
    const/high16 v1, 0x4380

    div-float v1, v5, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 333
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v7, 0x3f80

    mul-float/2addr v2, v7

    sub-float/2addr v2, v5

    const/high16 v7, 0x4380

    sub-float/2addr v2, v7

    const/high16 v7, 0x4380

    div-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 336
    const/high16 v2, 0x4380

    div-float v2, v6, v2

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 337
    move/from16 v0, p3

    int-to-float v2, v0

    const/high16 v9, 0x3f80

    mul-float/2addr v2, v9

    sub-float/2addr v2, v6

    const/high16 v9, 0x4380

    sub-float/2addr v2, v9

    const/high16 v9, 0x4380

    div-float/2addr v2, v9

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 370
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 371
    const-wide/high16 v11, 0x4000

    add-int/lit8 v2, p1, 0x1

    int-to-double v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    .line 377
    neg-int v1, v1

    move v2, v1

    :goto_0
    if-gt v2, v7, :cond_1

    .line 379
    neg-int v1, v9

    :goto_1
    if-gt v1, v8, :cond_0

    .line 381
    add-int v12, v3, v2

    invoke-static {v11, v12}, Lcom/tencent/mapapi/map/bo;->v(II)I

    move-result v12

    .line 382
    add-int v13, v4, v1

    invoke-static {v11, v13}, Lcom/tencent/mapapi/map/bo;->v(II)I

    move-result v13

    .line 383
    new-instance v14, Lcom/tencent/mapapi/map/ac;

    move/from16 v0, p1

    invoke-direct {v14, v12, v13, v0}, Lcom/tencent/mapapi/map/ac;-><init>(III)V

    .line 389
    mul-int/lit16 v12, v2, 0x100

    int-to-float v12, v12

    add-float/2addr v12, v5

    iput v12, v14, Lcom/tencent/mapapi/map/ab;->VZ:F

    .line 390
    mul-int/lit16 v12, v1, 0x100

    int-to-float v12, v12

    sub-float v12, v6, v12

    iput v12, v14, Lcom/tencent/mapapi/map/ab;->Wa:F

    .line 391
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 394
    :cond_1
    return-object v10
.end method

.method public final lX()V
    .locals 9

    .prologue
    const-wide/high16 v7, 0x4000

    .line 46
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    .line 49
    iget v0, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XB:[F

    .line 50
    iget v0, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    .line 51
    iget v0, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XD:[D

    .line 52
    iget v0, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XE:[D

    .line 55
    iget v0, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    :goto_0
    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Ud:I

    if-gt v0, v1, :cond_0

    .line 57
    add-int/lit8 v1, v0, 0x1

    int-to-double v1, v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4070

    mul-double/2addr v1, v3

    .line 58
    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->XB:[F

    iget v4, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v4, v0, v4

    const-wide v5, 0x41831c0da0000000L

    div-double v5, v1, v5

    double-to-float v5, v5

    aput v5, v3, v4

    .line 59
    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v4, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v4, v0, v4

    div-double v5, v1, v7

    aput-wide v5, v3, v4

    .line 60
    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->XD:[D

    iget v4, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v4, v0, v4

    const-wide v5, 0x4076800000000000L

    div-double v5, v1, v5

    aput-wide v5, v3, v4

    .line 61
    iget-object v3, p0, Lcom/tencent/mapapi/map/bo;->XE:[D

    iget v4, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int v4, v0, v4

    const-wide v5, 0x401921fb54442d18L

    div-double/2addr v1, v5

    aput-wide v1, v3, v4

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mapapi/map/bo;->kY()V

    .line 64
    return-void
.end method

.method public final mB()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->XC:[D

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Um:I

    iget v2, p0, Lcom/tencent/mapapi/map/bo;->Uc:I

    sub-int/2addr v1, v2

    aget-wide v0, v0, v1

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 140
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 148
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 156
    :cond_1
    :goto_1
    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, v1, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public final mO()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, p0, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mapapi/map/bo;->b(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bo;->XA:Lcom/tencent/mapapi/map/GeoPoint;

    .line 171
    return-void
.end method

.method public final mY()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tencent/mapapi/map/bo;->Xz:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 93
    return-object v0
.end method

.method final mZ()Lcom/tencent/mapapi/map/GeoPoint;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mapapi/map/bo;->XA:Lcom/tencent/mapapi/map/GeoPoint;

    return-object v0
.end method

.method public final md()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/tencent/mapapi/map/bo;->kY()V

    .line 69
    return-void
.end method
