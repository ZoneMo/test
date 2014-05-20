.class Lcom/tencent/mapapi/map/aj;
.super Lcom/tencent/mapapi/map/ag;
.source "SourceFile"


# instance fields
.field private TP:D

.field protected Wo:Lcom/tencent/mapapi/map/ah;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/ah;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ag;-><init>()V

    .line 297
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mapapi/map/aj;->TP:D

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 302
    iput-object p1, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 303
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/aj;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/tencent/mapapi/map/aj;->TP:D

    return-wide p1
.end method


# virtual methods
.method lX()V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ah;->a(Lcom/tencent/mapapi/map/ah;)Lcom/tencent/mapapi/map/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    iget-wide v1, p0, Lcom/tencent/mapapi/map/aj;->TP:D

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mapapi/map/bm;->a(D)V

    .line 319
    iget-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/ah;->F(Z)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    goto :goto_0
.end method

.method final md()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/aj;->Wo:Lcom/tencent/mapapi/map/ah;

    .line 327
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/aj;->lX()V

    .line 309
    return-void
.end method
