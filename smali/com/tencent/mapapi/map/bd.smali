.class final Lcom/tencent/mapapi/map/bd;
.super Lcom/tencent/mapapi/map/ay;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/mapapi/map/ay;-><init>(Lcom/tencent/mapapi/map/bh;Landroid/graphics/Bitmap;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final mL()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/mapapi/map/bd;->Vl:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v0

    .line 55
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mapapi/map/bd;->WE:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x5

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public final me()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/mapapi/map/bd;->WE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bd;->WE:Landroid/graphics/Bitmap;

    .line 64
    :cond_0
    return-void
.end method
