.class Lcom/tencent/mapapi/map/ad;
.super Lcom/tencent/mapapi/map/ba;
.source "SourceFile"


# instance fields
.field protected Wd:Lcom/tencent/mapapi/map/an;

.field protected We:Lcom/tencent/mapapi/map/bc;

.field protected Wf:Ljava/util/List;

.field protected Wg:Ljava/util/List;

.field protected Wh:Ljava/util/List;

.field protected Wi:Ljava/util/List;

.field Wj:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ba;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    .line 30
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->We:Lcom/tencent/mapapi/map/bc;

    .line 35
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    return-void
.end method

.method protected static a(Ljava/util/List;Lcom/tencent/mapapi/map/aa;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 286
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 290
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 291
    if-lez v3, :cond_0

    move v2, v1

    .line 297
    :goto_1
    if-ge v2, v3, :cond_3

    .line 299
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 300
    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    .line 310
    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected static b(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 568
    if-nez p0, :cond_1

    .line 583
    :cond_0
    return-void

    .line 572
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 573
    :goto_0
    if-ge v1, v3, :cond_0

    .line 576
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 577
    if-eqz v0, :cond_2

    .line 579
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 581
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(Lcom/tencent/mapapi/map/aa;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    if-nez v2, :cond_0

    .line 507
    monitor-exit v1

    .line 513
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 513
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private mC()Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 397
    .line 398
    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v4

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    if-nez v1, :cond_0

    .line 402
    monitor-exit v4

    .line 456
    :goto_0
    return-object v0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 405
    if-gtz v1, :cond_1

    .line 406
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 409
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 410
    iget v0, p0, Lcom/tencent/mapapi/map/ad;->r:I

    .line 411
    if-le v1, v0, :cond_2

    move v1, v0

    .line 412
    :cond_2
    :goto_1
    if-ge v3, v1, :cond_4

    .line 414
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 416
    if-eqz v0, :cond_3

    .line 418
    iget-boolean v5, p0, Lcom/tencent/mapapi/map/ad;->WM:Z

    iput-boolean v5, v0, Lcom/tencent/mapapi/map/aa;->UN:Z

    .line 446
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v5, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 451
    if-lez v0, :cond_5

    .line 452
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ad;->mD()V

    .line 454
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 456
    goto :goto_0
.end method

.method private mD()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mapapi/map/be;->bb(I)V

    .line 487
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 123
    if-gtz v3, :cond_1

    .line 158
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 132
    if-eqz v0, :cond_3

    .line 133
    iget-object v2, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 136
    if-nez v2, :cond_2

    .line 140
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/ad;->a(Lcom/tencent/mapapi/map/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    iget-object v2, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 152
    :cond_2
    if-eqz v2, :cond_3

    .line 153
    iget v4, v0, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v0, v0, Lcom/tencent/mapapi/map/ac;->Wa:F

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final a(Lcom/tencent/mapapi/map/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WX:Lcom/tencent/mapapi/map/bi;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bi;->mB()V

    .line 281
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mapapi/map/aa;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v2, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    if-nez v0, :cond_0

    .line 353
    monitor-exit v2

    .line 388
    :goto_0
    return-void

    .line 355
    :cond_0
    if-eqz p2, :cond_2

    .line 361
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 362
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    .line 364
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 365
    if-eqz v0, :cond_1

    .line 367
    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/tencent/mapapi/map/ad;->a(Ljava/util/List;Lcom/tencent/mapapi/map/aa;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 371
    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 375
    :cond_2
    if-eqz p1, :cond_3

    .line 380
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/tencent/mapapi/map/ad;->a(Ljava/util/List;Lcom/tencent/mapapi/map/aa;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ad;->mD()V

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final a(Lcom/tencent/mapapi/map/ac;)V
    .locals 5
    .parameter

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 207
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    if-lez v2, :cond_0

    .line 184
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 187
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 188
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1}, Lcom/tencent/mapapi/map/aa;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {p1}, Lcom/tencent/mapapi/map/ac;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mapapi/map/an;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 198
    iget-object v3, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 201
    add-int/lit8 v0, v1, -0x1

    .line 202
    add-int/lit8 v1, v2, -0x1

    .line 204
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method protected a(Ljava/util/ArrayList;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 526
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mapapi/map/ad;->b(Ljava/util/List;)V

    .line 531
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 532
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    .line 533
    iget v2, p0, Lcom/tencent/mapapi/map/ad;->VL:I

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/tencent/mapapi/map/ad;->VM:I

    if-lt v0, v2, :cond_0

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 538
    iget-object v2, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v2, v2, Lcom/tencent/mapapi/map/bh;->WZ:Lcom/tencent/mapapi/map/bo;

    iget-object v3, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v3, v3, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v3}, Lcom/tencent/mapapi/map/bm;->mU()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v4, v4, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v4}, Lcom/tencent/mapapi/map/bm;->mE()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v5, v5, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v5}, Lcom/tencent/mapapi/map/bm;->mR()F

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/tencent/mapapi/map/bo;->a(IIIF)Ljava/util/ArrayList;

    move-result-object p1

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v0, v0, Lcom/tencent/mapapi/map/bh;->WW:Lcom/tencent/mapapi/map/bm;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/bm;->mV()I

    move-result v0

    if-nez p1, :cond_4

    move-object v0, v1

    .line 548
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 550
    iget-boolean v2, p0, Lcom/tencent/mapapi/map/ad;->WI:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 552
    invoke-virtual {p0, v1}, Lcom/tencent/mapapi/map/ad;->c(Ljava/util/List;)V

    .line 560
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 561
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 544
    :cond_4
    iget-boolean v2, p0, Lcom/tencent/mapapi/map/ad;->Vw:Z

    if-nez v2, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/tencent/mapapi/map/ad;->VL:I

    if-gt v0, v2, :cond_6

    iget v2, p0, Lcom/tencent/mapapi/map/ad;->VM:I

    if-ge v0, v2, :cond_7

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_8

    move-object v0, v1

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_b

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ab;

    if-eqz v0, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/tencent/mapapi/map/an;->ao(Ljava/lang/String;)Lcom/tencent/mapapi/map/ap;

    move-result-object v5

    new-instance v6, Lcom/tencent/mapapi/map/ac;

    iget v7, v0, Lcom/tencent/mapapi/map/ab;->a:I

    iget v8, v0, Lcom/tencent/mapapi/map/ab;->b:I

    iget v9, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v6, v7, v8, v9}, Lcom/tencent/mapapi/map/ac;-><init>(III)V

    iget v7, v0, Lcom/tencent/mapapi/map/ab;->VZ:F

    iput v7, v6, Lcom/tencent/mapapi/map/ac;->VZ:F

    iget v7, v0, Lcom/tencent/mapapi/map/ab;->Wa:F

    iput v7, v6, Lcom/tencent/mapapi/map/ac;->Wa:F

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/tencent/mapapi/map/ap;->Wu:Landroid/graphics/Bitmap;

    iput-object v5, v6, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    :cond_9
    iget-object v5, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_a

    iget-object v5, v6, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    if-nez v5, :cond_a

    new-instance v5, Lcom/tencent/mapapi/map/aa;

    iget v6, v0, Lcom/tencent/mapapi/map/ab;->a:I

    iget v7, v0, Lcom/tencent/mapapi/map/ab;->b:I

    iget v0, v0, Lcom/tencent/mapapi/map/ab;->Uc:I

    invoke-direct {v5, v6, v7, v0}, Lcom/tencent/mapapi/map/aa;-><init>(III)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_1

    .line 557
    :cond_c
    invoke-virtual {p0, v0}, Lcom/tencent/mapapi/map/ad;->c(Ljava/util/List;)V

    goto/16 :goto_2
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    return-void
.end method

.method protected final c(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mapapi/map/ad;->b(Landroid/graphics/Canvas;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/tencent/mapapi/map/ad;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final c(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 316
    iget-object v2, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v2

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    if-nez v0, :cond_0

    .line 319
    monitor-exit v2

    .line 346
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 324
    if-nez p1, :cond_1

    .line 325
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 329
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 332
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 333
    if-eqz v0, :cond_2

    .line 335
    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/tencent/mapapi/map/ad;->a(Ljava/util/List;Lcom/tencent/mapapi/map/aa;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 339
    iget-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 343
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ad;->mD()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    if-ne p0, p1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/tencent/mapapi/map/ad;

    if-nez v0, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/tencent/mapapi/map/ad;

    .line 60
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->WG:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/mapapi/map/ad;->WG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tencent/mapapi/map/ad;->p:I

    return v0
.end method

.method protected final kY()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 216
    iget-boolean v0, p0, Lcom/tencent/mapapi/map/ad;->WF:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mapapi/map/ad;->mC()Ljava/util/ArrayList;

    move-result-object v4

    .line 220
    if-eqz v4, :cond_0

    .line 224
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 225
    if-lez v5, :cond_0

    .line 228
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    iget-boolean v0, v0, Lcom/tencent/mapapi/map/aa;->UN:Z

    .line 230
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->WN:Lcom/tencent/mapapi/map/ae;

    if-eqz v1, :cond_5

    .line 231
    new-instance v1, Lcom/tencent/mapapi/map/y;

    iget-object v6, p0, Lcom/tencent/mapapi/map/ad;->Vm:Lcom/tencent/mapapi/map/bh;

    iget-object v6, v6, Lcom/tencent/mapapi/map/bh;->WY:Lcom/tencent/mapapi/map/bl;

    invoke-virtual {v6}, Lcom/tencent/mapapi/map/bl;->mP()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/tencent/mapapi/map/y;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 233
    iput-boolean v0, v1, Lcom/tencent/mapapi/map/y;->VX:Z

    .line 234
    invoke-virtual {v1, p0}, Lcom/tencent/mapapi/map/y;->a(Lcom/tencent/mapapi/map/ad;)V

    .line 235
    invoke-virtual {v1}, Lcom/tencent/mapapi/map/y;->mH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 236
    if-nez v0, :cond_2

    .line 238
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 240
    :cond_2
    invoke-virtual {v1, v2}, Lcom/tencent/mapapi/map/y;->a(Lcom/tencent/mapapi/map/ad;)V

    move-object v1, v0

    .line 245
    :goto_1
    if-ge v3, v5, :cond_4

    .line 247
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/aa;

    .line 248
    if-eqz v0, :cond_3

    .line 250
    invoke-direct {p0, v0}, Lcom/tencent/mapapi/map/ad;->b(Lcom/tencent/mapapi/map/aa;)Z

    .line 245
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 254
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0, v2, v4}, Lcom/tencent/mapapi/map/ad;->a(Lcom/tencent/mapapi/map/aa;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method protected lX()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    iget-object v0, v0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ao;->lX()V

    .line 676
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 680
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 681
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 682
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 688
    :goto_0
    if-ge v1, v3, :cond_1

    .line 690
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 691
    if-eqz v0, :cond_0

    .line 693
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 695
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 698
    :cond_1
    return-void
.end method

.method protected mB()V
    .locals 1

    .prologue
    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    .line 657
    return-void
.end method

.method protected mE()I
    .locals 1

    .prologue
    .line 662
    const/16 v0, 0xa

    return v0
.end method

.method protected mF()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method

.method protected md()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mapapi/map/ad;->WF:Z

    .line 89
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wd:Lcom/tencent/mapapi/map/an;

    iget-object v0, v0, Lcom/tencent/mapapi/map/an;->Ws:Lcom/tencent/mapapi/map/ao;

    invoke-virtual {v0}, Lcom/tencent/mapapi/map/ao;->lX()V

    .line 92
    iget-object v1, p0, Lcom/tencent/mapapi/map/ad;->Wj:[B

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wh:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wg:Ljava/util/List;

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    .line 106
    :goto_0
    if-ge v1, v3, :cond_1

    .line 108
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mapapi/map/ac;

    .line 109
    if-eqz v0, :cond_0

    .line 111
    iput-object v4, v0, Lcom/tencent/mapapi/map/ac;->Wb:Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 115
    :cond_1
    iput-object v4, p0, Lcom/tencent/mapapi/map/ad;->Wf:Ljava/util/List;

    .line 117
    :cond_2
    return-void
.end method

.method protected me()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/mapapi/map/ad;->WG:Ljava/lang/String;

    return-object v0
.end method
