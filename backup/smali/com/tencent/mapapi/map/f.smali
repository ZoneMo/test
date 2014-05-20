.class public final Lcom/tencent/mapapi/map/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Vl:Lcom/tencent/mapapi/map/bh;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    if-nez p1, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/bm;->f(Lcom/tencent/mapapi/map/GeoPoint;)V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mapapi/map/GeoPoint;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/MapView;->Vq:Lcom/tencent/mapapi/map/ah;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/ah;->e(Lcom/tencent/mapapi/map/GeoPoint;)V

    .line 87
    return-void
.end method

.method public final l(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/bm;->m(FF)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    neg-float v1, p1

    neg-float v2, p2

    iget-object v3, v0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float v1, v4, v1

    iput v1, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/tencent/mapapi/map/bo;->Xy:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mB()V

    .line 125
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->G(Z)V

    goto :goto_0
.end method

.method public final setZoom(I)I
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result p1

    :cond_0
    iget-object v1, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result v1

    if-le p1, v1, :cond_1

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mS()I

    move-result p1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->lX()V

    .line 40
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/bm;->bb(I)V

    .line 41
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->F(Z)V

    .line 42
    return p1
.end method

.method public final zoomToSpan(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 135
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mW()Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 144
    div-int/lit8 v1, p1, 0x2

    .line 145
    div-int/lit8 v2, p2, 0x2

    .line 146
    new-instance v3, Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v3, v4, v5}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    .line 147
    new-instance v4, Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLatitudeE6()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/GeoPoint;->getLongitudeE6()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {v4, v1, v0}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mapapi/map/f;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lcom/tencent/mapapi/map/bm;->a(Lcom/tencent/mapapi/map/GeoPoint;Lcom/tencent/mapapi/map/GeoPoint;Z)V

    goto :goto_0
.end method
