.class final Lcom/tencent/mapapi/map/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected Uk:Z

.field protected VR:Ljava/util/concurrent/Semaphore;

.field VS:[Ljava/lang/Thread;

.field VT:Lcom/tencent/mapapi/map/x;

.field private VU:Ljava/lang/Runnable;

.field protected volatile c:Z


# direct methods
.method public constructor <init>(ILcom/tencent/mapapi/map/x;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    .line 370
    iput-boolean v4, p0, Lcom/tencent/mapapi/map/v;->Uk:Z

    .line 371
    iput-boolean v4, p0, Lcom/tencent/mapapi/map/v;->c:Z

    .line 372
    iput-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    .line 373
    iput-object v2, p0, Lcom/tencent/mapapi/map/v;->VT:Lcom/tencent/mapapi/map/x;

    .line 387
    new-instance v1, Lcom/tencent/mapapi/map/w;

    invoke-direct {v1, p0}, Lcom/tencent/mapapi/map/w;-><init>(Lcom/tencent/mapapi/map/v;)V

    iput-object v1, p0, Lcom/tencent/mapapi/map/v;->VU:Ljava/lang/Runnable;

    .line 376
    if-gtz p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    new-array v1, p1, [Ljava/lang/Thread;

    iput-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    .line 380
    :goto_1
    if-ge v0, p1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/tencent/mapapi/map/v;->VU:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v2, v1, v0

    .line 382
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_1
    iput-object p2, p0, Lcom/tencent/mapapi/map/v;->VT:Lcom/tencent/mapapi/map/x;

    goto :goto_0
.end method

.method private mB()V
    .locals 2

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/v;->Uk:Z

    .line 459
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 460
    return-void
.end method


# virtual methods
.method protected final bb(I)V
    .locals 2
    .parameter

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/v;->Uk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    .line 472
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/Semaphore;->release(I)V

    goto :goto_0
.end method

.method public final lX()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 412
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    array-length v1, v0

    .line 403
    if-eqz v1, :cond_0

    .line 406
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 406
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final md()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 415
    iput-boolean v0, p0, Lcom/tencent/mapapi/map/v;->c:Z

    .line 416
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mapapi/map/v;->mB()V

    .line 420
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    array-length v1, v1

    .line 421
    if-eqz v1, :cond_0

    .line 424
    :goto_1
    if-ge v0, v1, :cond_2

    .line 425
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aput-object v3, v2, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    iput-object v3, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    .line 428
    iput-object v3, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    goto :goto_0
.end method

.method public final me()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/tencent/mapapi/map/v;->c:Z

    .line 433
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mapapi/map/v;->mB()V

    .line 437
    iget-object v1, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    array-length v1, v1

    .line 438
    if-eqz v1, :cond_0

    .line 441
    :goto_1
    if-ge v0, v1, :cond_3

    .line 442
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 443
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_2
    iget-object v2, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    aput-object v3, v2, v0

    .line 441
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 453
    :cond_3
    iput-object v3, p0, Lcom/tencent/mapapi/map/v;->VS:[Ljava/lang/Thread;

    .line 454
    iput-object v3, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method final ms()V
    .locals 1

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 482
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VR:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VT:Lcom/tencent/mapapi/map/x;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/tencent/mapapi/map/v;->VT:Lcom/tencent/mapapi/map/x;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/x;->lX()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
