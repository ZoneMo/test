.class final Lcom/tencent/mapapi/map/ai;
.super Lcom/tencent/mapapi/map/ag;
.source "SourceFile"


# instance fields
.field private Wn:Lcom/tencent/mapapi/map/GeoPoint;

.field protected Wo:Lcom/tencent/mapapi/map/ah;

.field private Wp:Landroid/os/Message;

.field private Wq:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/ah;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ag;-><init>()V

    .line 362
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    .line 363
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 364
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wp:Landroid/os/Message;

    .line 365
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wq:Ljava/lang/Runnable;

    .line 369
    iput-object p1, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 370
    return-void
.end method


# virtual methods
.method final md()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    .line 428
    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 429
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mX()Lcom/tencent/mapapi/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/MapView;->mo()Lcom/tencent/mapapi/map/f;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/f;->a(Lcom/tencent/mapapi/map/GeoPoint;)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wo:Lcom/tencent/mapapi/map/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wq:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wq:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v2, p0, Lcom/tencent/mapapi/map/ai;->Wq:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wp:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wp:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/ai;->Wp:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-object v2, p0, Lcom/tencent/mapapi/map/ai;->Wp:Landroid/os/Message;

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/ai;->md()V

    .line 399
    :cond_2
    return-void
.end method

.method public final u(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lcom/tencent/mapapi/map/GeoPoint;

    invoke-direct {v0, p1, p2}, Lcom/tencent/mapapi/map/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    .line 393
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/GeoPoint;->be(I)V

    .line 391
    iget-object v0, p0, Lcom/tencent/mapapi/map/ai;->Wn:Lcom/tencent/mapapi/map/GeoPoint;

    invoke-virtual {v0, p2}, Lcom/tencent/mapapi/map/GeoPoint;->bd(I)V

    goto :goto_0
.end method
