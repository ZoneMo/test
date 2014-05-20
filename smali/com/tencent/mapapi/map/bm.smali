.class public final Lcom/tencent/mapapi/map/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/k;


# instance fields
.field TW:Z

.field public UN:Z

.field Uk:Z

.field private VM:I

.field private Xo:Lcom/tencent/mapapi/map/MapView;

.field private Xp:Ljava/util/ArrayList;

.field private Xq:D

.field private final Xr:F

.field private final Xs:F

.field private Xt:F

.field private Xu:F

.field Xv:Lcom/tencent/mapapi/map/GeoPoint;

.field Xw:Lcom/tencent/mapapi/map/GeoPoint;

.field final synthetic Xx:Lcom/tencent/mapapi/map/bh;

.field c:Z

.field private k:I


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;Lcom/tencent/mapapi/map/MapView;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1141
    iput-object p1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput v2, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    .line 1122
    iput v2, p0, Lcom/tencent/mapapi/map/bm;->k:I

    .line 1124
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bm;->TW:Z

    .line 1125
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bm;->Uk:Z

    .line 1127
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    .line 1128
    const v0, 0x3f19999a

    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xr:F

    .line 1129
    const v0, 0x3f99999a

    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xs:F

    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/bm;->c:Z

    .line 1132
    iput v3, p0, Lcom/tencent/mapapi/map/bm;->Xt:F

    .line 1133
    iput v3, p0, Lcom/tencent/mapapi/map/bm;->Xu:F

    .line 1135
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bm;->UN:Z

    .line 1138
    iput-object v4, p0, Lcom/tencent/mapapi/map/bm;->Xv:Lcom/tencent/mapapi/map/GeoPoint;

    .line 1139
    iput-object v4, p0, Lcom/tencent/mapapi/map/bm;->Xw:Lcom/tencent/mapapi/map/GeoPoint;

    .line 1142
    iput-object p2, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xp:Ljava/util/ArrayList;

    .line 1144
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/bm;)Lcom/tencent/mapapi/map/MapView;
    .locals 1
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    return-object v0
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 2
    .parameter

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1269
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1271
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mB()V

    .line 1272
    return-void
.end method

.method private a(Landroid/view/View;IIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 1403
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 1404
    if-ne p2, v1, :cond_4

    .line 1405
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 1410
    :cond_0
    :goto_0
    if-ne p3, v1, :cond_5

    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 1415
    :cond_1
    :goto_1
    and-int/lit8 v0, p6, 0x7

    .line 1418
    and-int/lit8 v1, p6, 0x70

    .line 1420
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 1421
    sub-int/2addr p4, p2

    .line 1426
    :cond_2
    :goto_2
    const/16 v0, 0x50

    if-ne v1, v0, :cond_7

    .line 1427
    sub-int/2addr p5, p3

    .line 1432
    :cond_3
    :goto_3
    add-int v0, p4, p2

    add-int v1, p5, p3

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1433
    return-void

    .line 1406
    :cond_4
    if-ne p2, v2, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 1412
    :cond_5
    if-ne p3, v2, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->getMeasuredHeight()I

    move-result p3

    goto :goto_1

    .line 1422
    :cond_6
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1423
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    goto :goto_2

    .line 1428
    :cond_7
    const/16 v0, 0x10

    if-ne v1, v0, :cond_3

    .line 1429
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr p5, v0

    goto :goto_3
.end method


# virtual methods
.method final F(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1148
    iput-boolean p1, p0, Lcom/tencent/mapapi/map/bm;->c:Z

    .line 1149
    if-nez p1, :cond_0

    .line 1151
    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xt:F

    .line 1152
    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xu:F

    .line 1154
    :cond_0
    return-void
.end method

.method public final G(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/bp;

    .line 1353
    invoke-interface {v0, p1}, Lcom/tencent/mapapi/map/bp;->G(Z)V

    goto :goto_0

    .line 1356
    :cond_0
    return-void
.end method

.method public final a(D)V
    .locals 10
    .parameter

    .prologue
    .line 1191
    iget-wide v0, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    mul-double v1, p1, v0

    .line 1192
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    .line 1193
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v3

    .line 1194
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v4

    .line 1196
    const-wide v5, 0x3ff3333340000000L

    cmpl-double v5, v1, v5

    if-lez v5, :cond_0

    .line 1197
    :goto_0
    const-wide v5, 0x3ff3333340000000L

    cmpl-double v5, v1, v5

    if-lez v5, :cond_1

    if-ge v0, v3, :cond_1

    .line 1198
    const-wide/high16 v5, 0x4000

    div-double/2addr v1, v5

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    const-wide v5, 0x3fe3333340000000L

    cmpg-double v5, v1, v5

    if-gez v5, :cond_1

    .line 1202
    :goto_1
    const-wide v5, 0x3fe3333340000000L

    cmpg-double v5, v1, v5

    if-gez v5, :cond_1

    if-le v0, v4, :cond_1

    .line 1203
    const-wide/high16 v5, 0x4000

    mul-double/2addr v1, v5

    .line 1204
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    .line 1207
    if-ne v2, v3, :cond_2

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v0, v5

    if-lez v3, :cond_2

    .line 1208
    const-wide/high16 v0, 0x3ff0

    .line 1210
    :cond_2
    if-ne v2, v4, :cond_3

    const-wide/high16 v3, 0x3ff0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_3

    .line 1211
    const-wide/high16 v0, 0x3ff0

    .line 1213
    :cond_3
    iput-wide v0, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    .line 1214
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    .line 1215
    if-eq v2, v0, :cond_4

    .line 1217
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/bm;->bb(I)V

    .line 1225
    :goto_2
    return-void

    .line 1222
    :cond_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->invalidate()V

    .line 1223
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->Xa:Lcom/tencent/mapapi/map/k;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/k;->mu()V

    goto :goto_2
.end method

.method final a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/GeoPoint;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v8, 0x4000

    .line 1437
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->k:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mapapi/map/bm;->k:I

    if-nez v0, :cond_3

    .line 1444
    :cond_2
    iput-object p1, p0, Lcom/tencent/mapapi/map/bm;->Xv:Lcom/tencent/mapapi/map/GeoPoint;

    .line 1445
    iput-object p2, p0, Lcom/tencent/mapapi/map/bm;->Xw:Lcom/tencent/mapapi/map/GeoPoint;

    goto :goto_0

    .line 1449
    :cond_3
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v0

    .line 1450
    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v1

    .line 1451
    iget-object v2, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v2, p2, v0}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v2

    .line 1453
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    .line 1454
    cmpg-float v3, v0, v4

    if-gez v3, :cond_4

    .line 1456
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1458
    :cond_4
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v1

    .line 1459
    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    .line 1461
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1464
    :cond_5
    iget-wide v2, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    double-to-float v2, v2

    .line 1465
    mul-float/2addr v0, v2

    .line 1466
    mul-float/2addr v1, v2

    .line 1468
    iget v2, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    .line 1469
    iget v3, p0, Lcom/tencent/mapapi/map/bm;->k:I

    .line 1470
    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 1471
    int-to-float v0, v3

    div-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 1473
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 1474
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1475
    if-eqz v0, :cond_0

    .line 1479
    const/4 v1, 0x1

    if-ne p3, v1, :cond_6

    .line 1481
    new-instance v1, Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {p2}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {p2}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    .line 1482
    iget-object v2, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/MapView;->mo()Lcom/tencent/mapapi/map/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mapapi/map/f;->b(Lcom/tencent/mapapi/map/GeoPoint;)V

    .line 1484
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v1

    sub-int v0, v1, v0

    .line 1485
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v1

    .line 1486
    if-eq v1, v0, :cond_0

    .line 1491
    if-le v0, v1, :cond_7

    .line 1493
    sub-int/2addr v0, v1

    .line 1494
    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    iget-object v1, v1, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/ah;->bk(I)Z

    goto/16 :goto_0

    .line 1498
    :cond_7
    sub-int v0, v1, v0

    .line 1499
    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    iget-object v1, v1, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    invoke-virtual {v1, v0}, Lcom/tencent/mapapi/map/ah;->bl(I)Z

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/mapapi/map/bp;)V
    .locals 1
    .parameter

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    return-void
.end method

.method public final b(Lcom/tencent/mapapi/map/bp;)V
    .locals 1
    .parameter

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1348
    return-void
.end method

.method public final bb(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1228
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v0, v0, Lcom/tencent/mapapi/map/bo;->Um:I

    if-eq p1, v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v0, v0, Lcom/tencent/mapapi/map/bo;->Um:I

    if-le p1, v0, :cond_0

    .line 1231
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/bm;->F(Z)V

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mO()V

    .line 1234
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iput p1, v0, Lcom/tencent/mapapi/map/bo;->Um:I

    .line 1235
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->md()V

    .line 1236
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->ms()V

    .line 1237
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0, v1, v1}, Lcom/tencent/mapapi/map/MapView;->c(ZZ)V

    .line 1239
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bi;->Ua:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ba;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ba;->mF()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1241
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 1242
    return-void
.end method

.method public final f(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 2
    .parameter

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1282
    :goto_0
    return-void

    .line 1278
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/bm;->F(Z)V

    .line 1279
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v1, v1, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    .line 1280
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bm;->a(Landroid/graphics/PointF;)V

    .line 1281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    goto :goto_0
.end method

.method public final g(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 2
    .parameter

    .prologue
    .line 1285
    if-nez p1, :cond_0

    .line 1292
    :goto_0
    return-void

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v1, v1, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    .line 1290
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bm;->a(Landroid/graphics/PointF;)V

    .line 1291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    goto :goto_0
.end method

.method public final h(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 2
    .parameter

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mW()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    .line 1296
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/tencent/mapapi/map/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v1, v1, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {v0, p1, v1}, Lcom/tencent/mapapi/map/bo;->a(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    .line 1298
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/bm;->a(Landroid/graphics/PointF;)V

    .line 1299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 1301
    :cond_0
    return-void
.end method

.method final lX()V
    .locals 2

    .prologue
    .line 1181
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    .line 1182
    return-void
.end method

.method final m(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1158
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/bm;->c:Z

    if-ne v0, v2, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->Xt:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xt:F

    .line 1163
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->Xu:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/tencent/mapapi/map/bm;->Xu:F

    .line 1165
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->Xt:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1166
    iget v1, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    if-lt v0, v1, :cond_2

    .line 1168
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bm;->c:Z

    goto :goto_0

    .line 1171
    :cond_2
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->Xu:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1172
    iget v1, p0, Lcom/tencent/mapapi/map/bm;->k:I

    if-lt v0, v1, :cond_0

    .line 1174
    iput-boolean v2, p0, Lcom/tencent/mapapi/map/bm;->c:Z

    goto :goto_0
.end method

.method public final mE()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->k:I

    return v0
.end method

.method public final mR()F
    .locals 2

    .prologue
    .line 1186
    iget-wide v0, p0, Lcom/tencent/mapapi/map/bm;->Xq:D

    double-to-float v0, v0

    return v0
.end method

.method public final mS()I
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v0, v0, Lcom/tencent/mapapi/map/bo;->Ud:I

    return v0
.end method

.method public final mT()I
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v0, v0, Lcom/tencent/mapapi/map/bo;->Uc:I

    return v0
.end method

.method public final mU()I
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    return v0
.end method

.method public final mV()I
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v0, v0, Lcom/tencent/mapapi/map/bo;->Um:I

    return v0
.end method

.method public final mW()Lcom/tencent/mapapi/map/GeoPoint;
    .locals 3

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v2, v2, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapapi/map/bo;->b(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    .line 1339
    return-object v0
.end method

.method public final mX()Lcom/tencent/mapapi/map/MapView;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    return-object v0
.end method

.method public final mu()V
    .locals 9

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->getChildCount()I

    move-result v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v8, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0, v7}, Lcom/tencent/mapapi/map/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;

    iget v2, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->mode:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WV:Lcom/tencent/mapapi/map/bn;

    iget-object v3, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->VA:Lcom/tencent/mapapi/map/GeoPoint;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mapapi/map/bn;->a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v3, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget v3, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Point;->y:I

    iget v2, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->width:I

    iget v3, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->height:I

    iget v4, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mapapi/map/bm;->a(Landroid/view/View;IIIII)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->width:I

    iget v3, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->height:I

    iget v4, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->x:I

    iget v5, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->y:I

    iget v6, v0, Lcom/tencent/mapapi/map/MapView$LayoutParams;->alignment:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mapapi/map/bm;->a(Landroid/view/View;IIIII)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/bm;->Xx:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bm;->Xo:Lcom/tencent/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->me()V

    .line 1513
    :cond_3
    return-void
.end method

.method public final u(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1259
    iget v0, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/mapapi/map/bm;->k:I

    if-eq p2, v0, :cond_1

    .line 1260
    :cond_0
    iput p1, p0, Lcom/tencent/mapapi/map/bm;->VM:I

    .line 1261
    iput p2, p0, Lcom/tencent/mapapi/map/bm;->k:I

    .line 1262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    .line 1264
    :cond_1
    return-void
.end method
