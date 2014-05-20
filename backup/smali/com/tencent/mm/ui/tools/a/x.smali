.class final Lcom/tencent/mm/ui/tools/a/x;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hqA:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/x;->hqA:Ljava/lang/ref/ReferenceQueue;

    .line 366
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/x;->handler:Landroid/os/Handler;

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/a/x;->setDaemon(Z)V

    .line 368
    const-string v0, "MonetrefQueue"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/a/x;->setName(Ljava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 373
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 376
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/x;->hqA:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/a/b;

    .line 377
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/x;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/x;->handler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/a/b;->hpT:Lcom/tencent/mm/ui/tools/a/a;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 387
    :goto_1
    return-void

    .line 380
    :catch_1
    move-exception v0

    .line 381
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/x;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/mm/ui/tools/a/y;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/a/y;-><init>(Lcom/tencent/mm/ui/tools/a/x;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method final shutdown()V
    .locals 0

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/a/x;->interrupt()V

    .line 394
    return-void
.end method
