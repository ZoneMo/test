.class Lcom/tencent/mm/ui/tools/a/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field hrg:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/mm/ui/tools/a/af;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/ag;->hrg:Ljava/lang/ref/WeakReference;

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    .line 126
    const-class v1, Lcom/tencent/mm/ui/tools/a/ag;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/ag;->hrg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/af;

    .line 128
    if-eqz v0, :cond_0

    .line 129
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 131
    :pswitch_0
    iget-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hqY:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hqY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 134
    :pswitch_1
    :try_start_1
    iget-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hqZ:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hqZ:J

    goto :goto_0

    .line 137
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    iget v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hre:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hre:I

    iget-wide v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hra:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hra:J

    iget v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hre:I

    iget-wide v3, v0, Lcom/tencent/mm/ui/tools/a/af;->hra:J

    int-to-long v5, v2

    div-long v2, v3, v5

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hrc:J

    goto :goto_0

    .line 140
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    iget v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hrf:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hrf:I

    iget-wide v4, v0, Lcom/tencent/mm/ui/tools/a/af;->hrb:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hrb:J

    iget v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hre:I

    iget-wide v3, v0, Lcom/tencent/mm/ui/tools/a/af;->hrb:J

    int-to-long v5, v2

    div-long v2, v3, v5

    iput-wide v2, v0, Lcom/tencent/mm/ui/tools/a/af;->hrd:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
