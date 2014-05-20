.class final Lcom/tencent/mm/pluginsdk/module/media/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/am;


# instance fields
.field final synthetic fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->c(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->aqz()Lcom/tencent/mm/pluginsdk/module/media/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjI:Lcom/tencent/mm/pluginsdk/module/media/LyricView;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/pluginsdk/module/media/LyricView;->f(JJ)V

    goto :goto_0
.end method

.method public final onFinish()V
    .locals 2

    .prologue
    .line 426
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback finish"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqK()V

    .line 428
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 402
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/q;->fjV:Lcom/tencent/mm/pluginsdk/module/media/q;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->acp()Lcom/tencent/mm/pluginsdk/module/media/q;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->b(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->ahf:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    sget-object v1, Lcom/tencent/mm/pluginsdk/module/media/p;->fjR:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqK()V

    .line 412
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->b(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->b(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aiZ:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    sget-object v1, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 398
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback start"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->b(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/tencent/mm/h;->aiZ:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    sget-object v1, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 449
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/model/al;->oA()Lcom/tencent/mm/protocal/a/or;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->c(Lcom/tencent/mm/protocal/a/or;)V

    .line 451
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->d(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    .line 453
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->e(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V

    .line 454
    return-void
.end method

.method public final onStop()V
    .locals 2

    .prologue
    .line 439
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback stop"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqK()V

    .line 441
    return-void
.end method

.method public final pB()V
    .locals 2

    .prologue
    .line 432
    const-string v0, "MicroMsg.MusicPlayerUI"

    const-string v1, "player callback error"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/n;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqK()V

    .line 434
    return-void
.end method
