.class abstract Lcom/tencent/mapapi/map/ay;
.super Lcom/tencent/mapapi/map/az;
.source "SourceFile"


# instance fields
.field protected Vl:Lcom/tencent/mapapi/map/bh;

.field protected WE:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tencent/mapapi/map/az;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tencent/mapapi/map/ay;->Vl:Lcom/tencent/mapapi/map/bh;

    .line 21
    iput-object p2, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method private mM()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/ay;->mL()Landroid/graphics/Point;

    move-result-object v1

    .line 29
    iget-object v0, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/tencent/mapapi/map/MapView;ZJ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ay;->WE:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/tencent/mapapi/map/ay;->mM()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/tencent/mapapi/map/ay;->mM()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract mL()Landroid/graphics/Point;
.end method
