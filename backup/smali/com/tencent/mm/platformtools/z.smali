.class final Lcom/tencent/mm/platformtools/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/bw;


# instance fields
.field private cGK:Lcom/tencent/mm/platformtools/s;

.field public ckx:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/platformtools/s;)V
    .locals 2
    .parameter

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    .line 384
    invoke-static {p1}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/s;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "from sdcard, picture strategy here must be validity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    .line 388
    return-void
.end method


# virtual methods
.method public final ve()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 394
    iget-object v2, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v2}, Lcom/tencent/mm/platformtools/s;->Fr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/x;->hN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    .line 395
    iget-object v2, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 396
    sget-object v2, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    iget-object v3, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    iget-object v4, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/s;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    .line 398
    :cond_0
    const-string v2, "MicroMsg.MMPictureLogic"

    const-string v3, "get url[%s] from[%s] result[%B]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v5}, Lcom/tencent/mm/platformtools/s;->Fs()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v5}, Lcom/tencent/mm/platformtools/s;->Fr()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    return v1
.end method

.method public final vf()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 407
    iget-object v0, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 408
    const-string v0, "MicroMsg.MMPictureLogic"

    const-string v1, "can not find bitmap on sdCard, url=%s, try to download it"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v3}, Lcom/tencent/mm/platformtools/s;->Fs()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/x;)Lcom/tencent/mm/sdk/platformtools/bu;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/x;)Lcom/tencent/mm/sdk/platformtools/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/bu;->azH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    new-instance v1, Lcom/tencent/mm/sdk/platformtools/bu;

    const-string v2, "readerapp-pic-logic-download"

    const/4 v3, 0x3

    invoke-direct {v1, v5, v2, v3}, Lcom/tencent/mm/sdk/platformtools/bu;-><init>(ILjava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/x;Lcom/tencent/mm/sdk/platformtools/bu;)Lcom/tencent/mm/sdk/platformtools/bu;

    .line 413
    :cond_1
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/x;)Lcom/tencent/mm/sdk/platformtools/bu;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/platformtools/y;

    iget-object v2, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-direct {v1, v2}, Lcom/tencent/mm/platformtools/y;-><init>(Lcom/tencent/mm/platformtools/s;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/bu;->c(Lcom/tencent/mm/sdk/platformtools/bw;)I

    .line 418
    :goto_0
    return v4

    .line 415
    :cond_2
    sget-object v0, Lcom/tencent/mm/platformtools/x;->cGC:Lcom/tencent/mm/platformtools/x;

    iget-object v1, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v1}, Lcom/tencent/mm/platformtools/s;->Fs()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/platformtools/z;->cGK:Lcom/tencent/mm/platformtools/s;

    invoke-interface {v2}, Lcom/tencent/mm/platformtools/s;->Ft()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/platformtools/x;->a(Lcom/tencent/mm/platformtools/x;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/z;->ckx:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
