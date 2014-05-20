.class final Lcom/tencent/mm/booter/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/compatible/g/c;


# instance fields
.field final synthetic bZX:Lcom/tencent/mm/booter/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/k;)V
    .locals 0
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bq(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 924
    packed-switch p1, :pswitch_data_0

    .line 972
    :pswitch_0
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "UNKNOW_AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 926
    :pswitch_1
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->i(Lcom/tencent/mm/booter/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->resume()V

    .line 931
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/booter/k;Z)Z

    goto :goto_0

    .line 936
    :pswitch_2
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->j(Lcom/tencent/mm/booter/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "startBySelfPlayer"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->k(Lcom/tencent/mm/booter/k;)Z

    goto :goto_0

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0, v2}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/booter/k;Z)Z

    .line 945
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "mediaPlayer pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->pause()V

    goto :goto_0

    .line 954
    :pswitch_3
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0, v2}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/booter/k;Z)Z

    .line 958
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->pause()V

    goto/16 :goto_0

    .line 963
    :pswitch_4
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0, v2}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/booter/k;Z)Z

    .line 967
    iget-object v0, p0, Lcom/tencent/mm/booter/m;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->pause()V

    goto/16 :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
