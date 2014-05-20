.class final Lcom/tencent/mm/plugin/search/model/ae;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private ehJ:I

.field private ehK:I

.field private ehL:Ljava/util/concurrent/PriorityBlockingQueue;

.field private volatile ehM:Z

.field private ehN:Lcom/tencent/mm/plugin/search/model/af;

.field private ehO:Z

.field private ehP:Ljava/lang/Runnable;

.field final synthetic ehQ:Lcom/tencent/mm/plugin/search/model/y;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/search/model/y;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 281
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehQ:Lcom/tencent/mm/plugin/search/model/y;

    .line 282
    const-string v0, "SearchDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 272
    iput v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehJ:I

    .line 273
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I

    .line 274
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 275
    iput-boolean v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehM:Z

    .line 283
    return-void
.end method

.method private declared-synchronized hK(I)V
    .locals 2
    .parameter

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehJ:I

    const/4 v1, -0x8

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 300
    :cond_0
    :goto_0
    iput p1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 292
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehO:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 297
    :goto_1
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehJ:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 293
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/plugin/search/model/af;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/search/model/af;->aaT()V

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehN:Lcom/tencent/mm/plugin/search/model/af;

    if-ne v0, p1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->interrupt()V

    .line 322
    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/search/model/af;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehM:Z

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/search/model/af;->getPriority()I

    move-result v0

    .line 309
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I

    .line 310
    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/search/model/ae;->hK(I)V

    .line 312
    if-ge v0, v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->interrupt()V

    goto :goto_0
.end method

.method public final declared-synchronized bk(Z)V
    .locals 3
    .parameter

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehO:Z

    .line 333
    iget v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehK:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehO:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 338
    :goto_1
    iget v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehJ:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 341
    :cond_1
    const-string v1, "MicroMsg.SearchDaemon"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "*** Switch priority: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehO:Z

    if-eqz v0, :cond_3

    const-string v0, "foreground"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :cond_3
    :try_start_2
    const-string v0, "background"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final j(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehP:Ljava/lang/Runnable;

    .line 346
    return-void
.end method

.method public final declared-synchronized quit()V
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehM:Z

    .line 326
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/search/model/ae;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 9

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehJ:I

    .line 353
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 354
    const-wide/16 v3, -0x1

    .line 358
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 361
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehM:Z

    if-eqz v1, :cond_1

    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/search/model/af;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    if-nez v1, :cond_2

    .line 366
    const v2, 0x7fffffff

    :try_start_1
    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/search/model/ae;->hK(I)V

    .line 367
    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/mm/plugin/search/model/af;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 368
    if-eqz v1, :cond_0

    :cond_2
    move-object v5, v1

    .line 372
    :try_start_2
    iput-object v5, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehN:Lcom/tencent/mm/plugin/search/model/af;

    .line 373
    invoke-virtual {v5}, Lcom/tencent/mm/plugin/search/model/af;->getPriority()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/search/model/ae;->hK(I)V

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v1

    .line 378
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 379
    invoke-virtual {v5}, Lcom/tencent/mm/plugin/search/model/af;->execute()Z

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 385
    const-string v3, "MicroMsg.SearchDaemon"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] done, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 390
    :catch_0
    move-exception v3

    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/search/model/af;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 391
    iget-object v4, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehL:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->put(Ljava/lang/Object;)V

    .line 393
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    .line 395
    const-string v4, "MicroMsg.SearchDaemon"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] interruputed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :catch_1
    move-exception v1

    move-object v5, v2

    .line 400
    :goto_2
    const-string v2, "MicroMsg.SearchDaemon"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed with exception.\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehP:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/ae;->ehP:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 398
    :catch_2
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    .line 390
    :catch_4
    move-exception v1

    move-wide v7, v3

    move-object v3, v2

    move-wide v1, v7

    goto :goto_1

    :catch_5
    move-exception v2

    move-wide v7, v3

    move-object v3, v1

    move-wide v1, v7

    goto :goto_1

    :catch_6
    move-exception v1

    move-wide v1, v3

    move-object v3, v5

    goto/16 :goto_1
.end method
