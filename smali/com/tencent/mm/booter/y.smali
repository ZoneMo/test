.class final Lcom/tencent/mm/booter/y;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic cav:Lcom/tencent/mm/booter/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/w;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 762
    const-string v0, "MicroMsg.MMNotification"

    const-string v1, "play sound handler, try to stop notify mediaplayer"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->e(Lcom/tencent/mm/booter/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->f(Lcom/tencent/mm/booter/w;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->f(Lcom/tencent/mm/booter/w;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->f(Lcom/tencent/mm/booter/w;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 766
    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->f(Lcom/tencent/mm/booter/w;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 767
    iget-object v0, p0, Lcom/tencent/mm/booter/y;->cav:Lcom/tencent/mm/booter/w;

    invoke-static {v0}, Lcom/tencent/mm/booter/w;->g(Lcom/tencent/mm/booter/w;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    const-string v1, "MicroMsg.MMNotification"

    const-string v2, "Exception in playSoundHander %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
