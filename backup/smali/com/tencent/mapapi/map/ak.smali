.class final Lcom/tencent/mapapi/map/ak;
.super Lcom/tencent/mapapi/map/aj;
.source "SourceFile"


# instance fields
.field private Uc:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/ah;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/tencent/mapapi/map/aj;-><init>(Lcom/tencent/mapapi/map/ah;)V

    .line 333
    iput v0, p0, Lcom/tencent/mapapi/map/ak;->b:I

    .line 334
    iput v0, p0, Lcom/tencent/mapapi/map/ak;->Uc:I

    .line 339
    return-void
.end method


# virtual methods
.method final lX()V
    .locals 4

    .prologue
    .line 344
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/tencent/mapapi/map/ak;->b:I

    iget v2, p0, Lcom/tencent/mapapi/map/ak;->Uc:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 345
    iget-object v1, p0, Lcom/tencent/mapapi/map/ak;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v1}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mapapi/map/MapView;->mp()Lcom/tencent/mapapi/map/o;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mapapi/map/ak;->b:I

    iget v3, p0, Lcom/tencent/mapapi/map/ak;->Uc:I

    invoke-interface {v1, v2, v3}, Lcom/tencent/mapapi/map/o;->s(II)Lcom/tencent/mapapi/map/GeoPoint;

    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/tencent/mapapi/map/ak;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v2}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    invoke-virtual {v2, v0}, Lcom/tencent/mapapi/map/bo;->a(Landroid/graphics/Point;)V

    .line 348
    iget-object v0, p0, Lcom/tencent/mapapi/map/ak;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/bm;->g(Lcom/tencent/mapapi/map/GeoPoint;)V

    .line 349
    iget-object v0, p0, Lcom/tencent/mapapi/map/ak;->Wo:Lcom/tencent/mapapi/map/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/ak;->md()V

    .line 351
    return-void
.end method

.method public final u(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput p1, p0, Lcom/tencent/mapapi/map/ak;->b:I

    .line 356
    iput p2, p0, Lcom/tencent/mapapi/map/ak;->Uc:I

    .line 357
    return-void
.end method
