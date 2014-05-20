.class final Lcom/tencent/mapapi/map/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Wu:Landroid/graphics/Bitmap;

.field protected Ww:Landroid/graphics/Canvas;

.field protected Wx:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    .line 52
    iput-object v0, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    .line 56
    iput-object p1, p0, Lcom/tencent/mapapi/map/as;->Wx:Landroid/graphics/Bitmap$Config;

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mapapi/map/at;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 81
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Lcom/tencent/mapapi/map/at;->a(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 83
    return-void
.end method

.method public final mI()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final u(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    .line 67
    iget-object v0, p0, Lcom/tencent/mapapi/map/as;->Wx:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tencent/mapapi/map/as;->Wu:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/as;->Ww:Landroid/graphics/Canvas;

    .line 69
    return-void
.end method
