.class final Lcom/tencent/mapapi/map/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mapapi/map/o;


# instance fields
.field final synthetic Vl:Lcom/tencent/mapapi/map/bh;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mapapi/map/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mapapi/map/bo;->b(Lcom/tencent/mapapi/map/GeoPoint;I)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    mul-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p2, :cond_0

    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v2
.end method

.method public final metersToEquatorPixels(F)F
    .locals 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v0

    .line 236
    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bo;->XB:[F

    iget-object v2, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v2}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mT()I

    move-result v3

    sub-int/2addr v2, v3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final s(II)Lcom/tencent/mapapi/map/GeoPoint;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bo;->mY()Landroid/graphics/Point;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v1

    .line 224
    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    .line 225
    div-float/2addr v2, v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 227
    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    .line 228
    div-float v1, v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    .line 230
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 231
    iget-object v0, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v2, p0, Lcom/tencent/mapapi/map/bn;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget v2, v2, Lcom/tencent/mapapi/map/bo;->Um:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapapi/map/bo;->a(Landroid/graphics/PointF;I)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v0

    return-object v0
.end method
