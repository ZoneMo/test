.class final Lcom/tencent/mm/booter/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic bZX:Lcom/tencent/mm/booter/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/k;)V
    .locals 0
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 988
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "completed currentPoint: %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v3}, Lcom/tencent/mm/booter/k;->l(Lcom/tencent/mm/booter/k;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 996
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->m(Lcom/tencent/mm/booter/k;)Landroid/media/MediaPlayer;

    .line 998
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->n(Lcom/tencent/mm/booter/k;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->oG()Lcom/tencent/mm/model/al;

    .line 1002
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->d(Lcom/tencent/mm/booter/k;)Lcom/tencent/mm/sdk/platformtools/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->b(Lcom/tencent/mm/booter/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->c(Lcom/tencent/mm/booter/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/am;

    .line 1007
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v3}, Lcom/tencent/mm/booter/k;->n(Lcom/tencent/mm/booter/k;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1008
    const-string v3, "MicroMsg.DownloadPlayer"

    const-string v4, "on finish call back: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    invoke-interface {v0}, Lcom/tencent/mm/model/am;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->o(Lcom/tencent/mm/booter/k;)Z

    .line 1017
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->p(Lcom/tencent/mm/booter/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-static {v0}, Lcom/tencent/mm/booter/k;->n(Lcom/tencent/mm/booter/k;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1018
    const-string v0, "MicroMsg.DownloadPlayer"

    const-string v1, "NEXT MUSIC PLAY."

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/tencent/mm/booter/n;->bZX:Lcom/tencent/mm/booter/k;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/k;->oI()Lcom/tencent/mm/model/al;

    goto/16 :goto_0
.end method
